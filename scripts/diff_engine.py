#!/usr/bin/env python3
"""
Differential Testing Engine v2
Compares Spike (reference) vs Ibex/Verilator (DUT) execution traces.
Handles different memory maps by aligning on instruction sequence position.
"""

import re
import sys
import json
import argparse
from dataclasses import dataclass, field
from typing import Optional

@dataclass
class TraceEntry:
    seq:         int       # sequence number (0-based, after filtering)
    pc:          str       # program counter as hex string
    insn_hex:    str       # raw instruction hex
    disasm:      str       # decoded mnemonic
    rd:          str = ""  # destination register name  e.g. "x3"
    rd_val:      str = ""  # destination register value e.g. "0x0000001e"
    is_trap:     bool = False
    source_line: int = 0

# ──────────────────────────────────────────────
# Spike parser
# Format: core   0: 0xPC (0xINSN) mnemonic ...
# Trap:   core   0: exception trap_NAME, epc 0xPC
# ──────────────────────────────────────────────
SPIKE_INSN_RE = re.compile(
    r'core\s+\d+:\s+(0x[0-9a-fA-F]+)\s+\(([^)]+)\)\s+(.*)'
)
SPIKE_TRAP_RE = re.compile(
    r'core\s+\d+:\s+exception\s+(\S+),\s+epc\s+(0x[0-9a-fA-F]+)'
)
# Spike ROM lives at 0x1000–0x1010 (5 instructions). Skip them.
SPIKE_ROM_MAX_PC = 0x2000

def parse_spike_trace(filepath: str) -> list:
    entries = []
    seq = 0
    trap_pending = False
    with open(filepath, 'r') as f:
        for lineno, line in enumerate(f, 1):
            line = line.rstrip()

            # Check for trap line
            tm = SPIKE_TRAP_RE.search(line)
            if tm:
                # Mark last entry as trapping
                if entries:
                    entries[-1].is_trap = True
                continue

            m = SPIKE_INSN_RE.match(line)
            if not m:
                continue
            pc_int = int(m.group(1), 16)
            # Skip Spike's internal ROM boot sequence
            if pc_int < SPIKE_ROM_MAX_PC:
                continue
            entries.append(TraceEntry(
                seq=seq,
                pc=m.group(1),
                insn_hex=m.group(2).strip(),
                disasm=m.group(3).strip(),
                source_line=lineno
            ))
            seq += 1
    return entries

# ──────────────────────────────────────────────
# Ibex/Verilator parser
# Format (tab-separated):
#   Time  Cycle  PC  Insn  Decoded instruction  Register and memory contents
# First line is a header — skip it.
# We also skip the boot jump at 0x100080 (_vector_start: j _start)
# ──────────────────────────────────────────────
IBEX_VECTOR_PC = "00100080"  # boot trampoline — skip this

def parse_ibex_trace(filepath: str) -> list:
    entries = []
    seq = 0
    with open(filepath, 'r') as f:
        for lineno, line in enumerate(f, 1):
            line = line.rstrip()
            if lineno == 1:          # header line
                continue
            parts = line.split('\t')
            if len(parts) < 4:
                continue
            # columns: Time, Cycle, PC, Insn, Decoded, RegContents
            pc      = parts[2].strip()
            insn    = parts[3].strip()
            disasm  = parts[4].strip() if len(parts) > 4 else ""
            reginfo = parts[5].strip() if len(parts) > 5 else ""

            # Skip the vector trampoline
            if pc == IBEX_VECTOR_PC:
                continue

            # Extract destination register write if present
            # Format examples:  x3=0x0000001e   x4:0x80000000  x4=0x7fffffff
            rd, rd_val = "", ""
            writes = re.findall(r'(x\d+)=(\S+)', reginfo)
            if writes:
                rd, rd_val = writes[-1]   # last write = destination

            entries.append(TraceEntry(
                seq=seq,
                pc=pc,
                insn_hex=insn,
                disasm=disasm,
                rd=rd,
                rd_val=rd_val,
                source_line=lineno
            ))
            seq += 1
    return entries

# ──────────────────────────────────────────────
# Mismatch classifier
# This is the research contribution — taxonomy of CPU bug types
# ──────────────────────────────────────────────
def classify_mismatch(ref: TraceEntry, dut: TraceEntry, step: int) -> dict:
    """
    Classify the type of divergence between reference and DUT.
    Returns a dict with type, severity, and explanation.
    """
    # Normalize instruction hex for comparison
    # Spike uses full 32-bit even for compressed; Ibex uses 16-bit for compressed
    ref_insn = ref.insn_hex.replace('0x','').zfill(8).lower()
    dut_insn = dut.insn_hex.replace('0x','').zfill(8).lower()

    # Extract mnemonic (first word of disasm)
    ref_mnemonic = ref.disasm.split()[0] if ref.disasm else ""
    dut_mnemonic = dut.disasm.split()[0] if dut.disasm else ""

    # Case 1: DUT trapped where reference didn't
    if dut.is_trap and not ref.is_trap:
        return {
            "type": "SPURIOUS_TRAP",
            "severity": "HIGH",
            "explanation": f"DUT raised trap at step {step}, reference executed normally"
        }

    # Case 2: Reference trapped (e.g. MMIO fault in Spike) — expected divergence
    if ref.is_trap and not dut.is_trap:
        return {
            "type": "EXPECTED_DIVERGENCE_MMIO",
            "severity": "INFO",
            "explanation": f"Reference trapped (likely MMIO address invalid in Spike), DUT continued"
        }

    # Case 3: Different instruction fetched at same sequence position
    # Pseudoinstruction aliases — same encoding, different mnemonic
    PSEUDO_MAP = {
        "li":   "addi",   # li rd,imm  == addi rd,x0,imm
        "mv":   "addi",   # mv rd,rs   == addi rd,rs,0
        "nop":  "addi",   # nop        == addi x0,x0,0
        "not":  "xori",
        "neg":  "sub",
        "j":    "jal",    # j offset   == jal x0,offset
        "jr":   "jalr",
        "ret":  "jalr",
        "call": "jal",
        "c.nop":"c.addi",
        "c.li": "c.addi", # sometimes disassembled differently
    }

    # Normalize both mnemonics through the pseudoinstruction map
    ref_norm = PSEUDO_MAP.get(ref_mnemonic, ref_mnemonic)
    dut_norm = PSEUDO_MAP.get(dut_mnemonic, dut_mnemonic)

    # Case 3: Different instruction fetched at same sequence position
    if ref_norm != dut_norm:
        return {
            "type": "FETCH_OR_DECODE_BUG",
            "severity": "HIGH",
            "explanation": f"Ref decoded '{ref_mnemonic}'(norm:'{ref_norm}') but DUT decoded '{dut_mnemonic}'(norm:'{dut_norm}')"
        }

    # Case 4: Same instruction but different result
    if dut.rd and ref.rd and dut.rd == ref.rd and dut.rd_val != ref.rd_val:
        return {
            "type": "EXECUTION_RESULT_BUG",
            "severity": "CRITICAL",
            "explanation": f"Both executed '{ref_mnemonic}', ref {ref.rd}={ref.rd_val} but DUT {dut.rd}={dut.rd_val}"
        }

    # Case 5: Instruction hex mismatch (compressed vs full encoding difference)
    if ref_insn[-4:] != dut_insn[-4:]:
        return {
            "type": "ENCODING_MISMATCH",
            "severity": "LOW",
            "explanation": f"Instruction encoding differs: ref={ref.insn_hex} dut={dut.insn_hex} (may be compressed vs full)"
        }

    return {
        "type": "UNKNOWN_MISMATCH",
        "severity": "MEDIUM",
        "explanation": "Traces differ but classification unclear"
    }

# ──────────────────────────────────────────────
# Core comparison engine
# ──────────────────────────────────────────────
def normalize_insn_hex(h: str) -> str:
    """
    Normalize instruction hex for comparison.
    Compressed (16-bit) instructions: Ibex logs 4 hex chars, Spike logs 8.
    We compare only the lower 16 bits for compressed insns (top bit of lower
    half == 0b11 means 32-bit, otherwise 16-bit compressed).
    """
    h = h.replace('0x', '').strip().lower().zfill(8)
    # If lower 2 bits are NOT 11, it is a compressed (16-bit) instruction
    val = int(h, 16)
    if (val & 0x3) != 0x3:
        return h[-4:]   # compare only lower 16 bits
    return h            # full 32-bit comparison

def compare_traces(ref_trace: list, dut_trace: list, max_steps: int) -> dict:
    results = {
        "total_steps_compared": 0,
        "ref_length": len(ref_trace),
        "dut_length": len(dut_trace),
        "mismatches": [],
        "status": "PASS"
    }

    steps = min(len(ref_trace), len(dut_trace), max_steps)
    results["total_steps_compared"] = steps

    for i in range(steps):
        ref = ref_trace[i]
        dut = dut_trace[i]

        # PRIMARY comparison: instruction hex (most reliable)
        ref_norm = normalize_insn_hex(ref.insn_hex)
        dut_norm = normalize_insn_hex(dut.insn_hex)

        # Handle reference trap (MMIO etc) — INFO level, don't fail
        if ref.is_trap:
            results["mismatches"].append({
                "step": i,
                "severity": "INFO",
                "type": "EXPECTED_DIVERGENCE_MMIO",
                "explanation": "Spike trapped (MMIO invalid in reference env), DUT continued normally",
                "ref_pc": ref.pc,
                "dut_pc": dut.pc,
                "ref_disasm": ref.disasm,
                "dut_disasm": dut.disasm,
            })
            continue

        # Handle DUT trap where reference didn't
        if dut.is_trap and not ref.is_trap:
            results["mismatches"].append({
                "step": i,
                "severity": "HIGH",
                "type": "SPURIOUS_TRAP",
                "explanation": f"DUT trapped at step {i}, reference executed normally",
                "ref_pc": ref.pc,
                "dut_pc": dut.pc,
                "ref_disasm": ref.disasm,
                "dut_disasm": dut.disasm,
            })
            results["status"] = "FAIL"
            break

        # Instruction hex matches — PASS for this step
        if ref_norm == dut_norm:
            continue

        # Hex mismatch — classify it
        classification = classify_mismatch(ref, dut, i)

        results["mismatches"].append({
            "step": i,
            **classification,
            "ref_pc":     ref.pc,
            "dut_pc":     dut.pc,
            "ref_insn":   ref.insn_hex,
            "dut_insn":   dut.insn_hex,
            "ref_norm":   ref_norm,
            "dut_norm":   dut_norm,
            "ref_disasm": ref.disasm,
            "dut_disasm": dut.disasm,
        })
        results["status"] = "FAIL"
        break

    return results

# ──────────────────────────────────────────────
# Report generator
# ──────────────────────────────────────────────
def generate_report(results: dict, output_path: str):
    import os
    os.makedirs(os.path.dirname(output_path) if os.path.dirname(output_path) else ".", exist_ok=True)

    # JSON
    json_path = output_path + ".json"
    with open(json_path, 'w') as f:
        json.dump(results, f, indent=2)
    print(f"[+] JSON report: {json_path}")

    # HTML
    html_path = output_path + ".html"
    status_color = "#2a9d2a" if results["status"] == "PASS" else "#d32f2f"
    severity_colors = {
        "CRITICAL": "#d32f2f",
        "HIGH":     "#e65100",
        "MEDIUM":   "#f57c00",
        "LOW":      "#0288d1",
        "INFO":     "#555555",
    }
    rows = ""
    for m in results["mismatches"]:
        sc = severity_colors.get(m.get("severity",""), "#333")
        rows += f"""<tr>
          <td>{m['step']}</td>
          <td style='color:{sc};font-weight:bold'>{m.get('severity','')}</td>
          <td style='color:{sc}'>{m['type']}</td>
          <td>{m.get('ref_pc','')}</td>
          <td>{m.get('dut_pc','')}</td>
          <td>{m.get('ref_disasm','')}</td>
          <td>{m.get('dut_disasm','')}</td>
          <td style='font-size:11px;color:#555'>{m.get('explanation','')}</td>
        </tr>"""

    html = f"""<!DOCTYPE html>
<html><head><title>DTF Report</title>
<style>
  body{{font-family:monospace;margin:2em;background:#fafafa}}
  h2{{color:#222}}
  .status{{font-size:1.4em;font-weight:bold;color:{status_color}}}
  .stats{{background:#fff;border:1px solid #ddd;padding:1em;margin:1em 0;display:inline-block}}
  table{{border-collapse:collapse;width:100%;background:#fff}}
  th{{background:#263238;color:#fff;padding:8px 12px;text-align:left}}
  td{{border:1px solid #ddd;padding:6px 10px;font-size:13px}}
  tr:nth-child(even){{background:#f5f5f5}}
</style></head><body>
<h2>Differential Testing Framework — Execution Report</h2>
<div class="stats">
  <span class="status">{results['status']}</span><br><br>
  Steps compared : <b>{results['total_steps_compared']}</b><br>
  Ref trace len  : <b>{results['ref_length']}</b><br>
  DUT trace len  : <b>{results['dut_length']}</b><br>
  Mismatches     : <b>{len(results['mismatches'])}</b>
</div>
<table>
<tr>
  <th>Step</th><th>Severity</th><th>Type</th>
  <th>Ref PC</th><th>DUT PC</th>
  <th>Ref disasm</th><th>DUT disasm</th><th>Explanation</th>
</tr>
{rows if rows else '<tr><td colspan=8 style="text-align:center;color:green">No mismatches found</td></tr>'}
</table>
</body></html>"""

    with open(html_path, 'w') as f:
        f.write(html)
    print(f"[+] HTML report: {html_path}")

# ──────────────────────────────────────────────
# Main
# ──────────────────────────────────────────────
def main():
    parser = argparse.ArgumentParser(description="DTF Differential Analysis Engine v2")
    parser.add_argument("--ref",   required=True, help="Spike trace log")
    parser.add_argument("--dut",   required=True, help="Ibex/DUT trace log")
    parser.add_argument("--out",   default="reports/report", help="Output path (no extension)")
    parser.add_argument("--steps", type=int, default=500, help="Max steps to compare")
    args = parser.parse_args()

    print(f"[*] Parsing Spike trace : {args.ref}")
    ref_trace = parse_spike_trace(args.ref)
    print(f"    {len(ref_trace)} instructions (ROM boot skipped)")

    print(f"[*] Parsing Ibex trace  : {args.dut}")
    dut_trace = parse_ibex_trace(args.dut)
    print(f"    {len(dut_trace)} instructions (vector trampoline skipped)")

    print(f"[*] Comparing (max {args.steps} steps)...")
    results = compare_traces(ref_trace, dut_trace, args.steps)

    if results["status"] == "PASS":
        print(f"[+] PASS — {results['total_steps_compared']} steps match")
    else:
        print(f"[!] FAIL — mismatches found:")
        for m in results["mismatches"]:
            if m.get("severity") != "INFO":
                print(f"    Step {m['step']} [{m['severity']}] {m['type']}")
                print(f"      {m.get('explanation','')}")
                print(f"      Ref: PC={m.get('ref_pc','')}  {m.get('ref_disasm','')}")
                print(f"      DUT: PC={m.get('dut_pc','')}  {m.get('dut_disasm','')}")

    # Always print INFO-level notes
    info = [m for m in results["mismatches"] if m.get("severity") == "INFO"]
    if info:
        print(f"[i] {len(info)} expected divergence(s) (MMIO/environment differences):")
        for m in info:
            print(f"    Step {m['step']}: {m.get('explanation','')}")

    generate_report(results, args.out)

if __name__ == "__main__":
    main()

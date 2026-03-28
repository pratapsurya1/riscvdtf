# DTF — Differential Testing Framework for RISC-V CPUs

DTF compares execution traces from two RISC-V simulators instruction-by-instruction to detect CPU implementation bugs:

- **Spike** (ISA simulator) — golden reference, boots at `0x80000000`
- **Ibex/Verilator** (RTL simulator) — device under test (DUT), boots at `0x100080`

Random assembly programs are compiled for both targets, run through both simulators, and the resulting execution traces are compared step-by-step. Any divergence in instruction fetch, decode, or register write is classified and reported.

```
  gen_tests.py ──► .S files ──► GCC ──► Spike ELF ──► spike -l ──► spike_trace.log ──┐
                                    └──► Ibex ELF  ──► Verilator  ──► dut_trace.log  ──┤
                                                                                        ▼
                                                                              diff_engine.py
                                                                                        │
                                                                              reports/*.json + *.html
```

## Results

| Campaign | Seeds | Tests | PASS | FAIL |
|----------|-------|------:|-----:|-----:|
| Milestone | test_add | 1 | 1 | 0 |
| Batch 1 | 1000–1019 | 20 | 20 | 0 |
| Batch 2 | 2000–2099 | 100 | 100 | 0 |
| **Total** | | **121** | **121** | **0** |

Each test compares 58 committed instructions per program. The one INFO-level divergence per test is expected: Spike traps on the MMIO write to `0x20000` (unmapped in the ISA sim environment), while Ibex handles it normally via its memory map.

## Repository layout

```
scripts/
  diff_engine.py        — trace parser, comparator, and HTML/JSON report generator
  gen_tests.py          — random RV32IMC assembly program generator
  run_campaign.sh       — end-to-end automation: generate → compile → simulate → diff

tests/
  link.ld               — linker script for Spike target  (origin 0x80000000)
  link_ibex.ld          — linker script for Ibex target   (vectors at 0x100080)
  inputs/               — generated .S source files and compiled ELFs
  outputs/              — Spike and Ibex trace logs (gitignored)

reports/
  campaign_summary.md   — full results table (121 tests)
  test_gen_*.json/html  — per-test reports

CONTEXT.md              — architecture notes, Spike command reference, known issues
```

## Dependencies

| Tool | Version | Purpose |
|------|---------|---------|
| `riscv32-unknown-elf-gcc` | 15.x | Cross-compiler for Spike and Ibex ELFs |
| `spike` | HEAD | RISC-V ISA simulator (golden reference) |
| `Vibex_simple_system` | HEAD | Verilated Ibex RTL simulator (DUT) |
| Python | 3.8+ | `diff_engine.py`, `gen_tests.py` |

The pre-built toolchain, Spike, and Verilated Ibex binary are expected at:

```
tools/riscv/bin/riscv32-unknown-elf-gcc
tools/spike/bin/spike
riscv-core/ibex/build/lowrisc_ibex_ibex_simple_system_0/sim-verilator/Vibex_simple_system
```

These paths are hardcoded in `scripts/run_campaign.sh`. Edit the variables at the top of that script to point at your local installs.

## Running a campaign

### Quick start — reproduce Batch 2 (seeds 2000–2099)

```bash
bash scripts/run_campaign.sh
```

This runs all five steps automatically: generate, compile, Ibex sim, Spike sim, diff.

### Manual step-by-step

**1. Generate assembly programs**

```bash
python3 scripts/gen_tests.py --count=20 --seed=1000 --insns=50 --outdir=tests/inputs
```

Options: `--count` number of tests, `--seed` starting seed, `--insns` random instructions per test.

**2. Compile for both targets**

```bash
GCC=tools/riscv/bin/riscv32-unknown-elf-gcc

$GCC -march=rv32imc -mabi=ilp32 -static -nostdlib -nostartfiles \
     -T tests/link.ld -o tests/inputs/test_gen_1000_spike.elf tests/inputs/test_gen_1000.S

$GCC -march=rv32imc -mabi=ilp32 -static -nostdlib -nostartfiles \
     -T tests/link_ibex.ld -o tests/inputs/test_gen_1000_ibex.elf tests/inputs/test_gen_1000.S
```

**3. Run Ibex/Verilator** (writes `trace_core_00000000.log` to the working directory)

```bash
IBEX=riscv-core/ibex/build/lowrisc_ibex_ibex_simple_system_0/sim-verilator/Vibex_simple_system

mkdir -p /tmp/ibex_run && cd /tmp/ibex_run
$IBEX --meminit=ram,/path/to/test_gen_1000_ibex.elf --term-after-cycles=50000 > /dev/null 2>&1
cp trace_core_00000000.log tests/outputs/test_gen_1000_dut.log
```

**4. Run Spike** (stop at the `tval` line to avoid the infinite fault loop)

```bash
SPIKE=tools/spike/bin/spike

$SPIKE -l --isa=rv32imc_zicsr tests/inputs/test_gen_1000_spike.elf 2>&1 | python3 -c "
import sys
for line in sys.stdin:
    print(line, end='')
    if line.strip().startswith('core') and 'tval' in line:
        break
" > tests/outputs/test_gen_1000_spike.log
```

**5. Run the diff engine**

```bash
python3 scripts/diff_engine.py \
  --ref tests/outputs/test_gen_1000_spike.log \
  --dut tests/outputs/test_gen_1000_dut.log \
  --out reports/test_gen_1000 \
  --steps 500
```

Output: `reports/test_gen_1000.json` and `reports/test_gen_1000.html`.

## Understanding the reports

Each report contains:

| Field | Meaning |
|-------|---------|
| `status` | `PASS` — no real mismatches; `FAIL` — divergence detected |
| `total_steps_compared` | Number of instructions compared |
| `mismatches` | List of divergence events |

### Mismatch severity levels

| Severity | Type | Meaning |
|----------|------|---------|
| `INFO` | `EXPECTED_DIVERGENCE_MMIO` | Spike trapped on MMIO write; expected, not a bug |
| `LOW` | `ENCODING_MISMATCH` | Same instruction, different encoding (compressed vs full) |
| `MEDIUM` | `UNKNOWN_MISMATCH` | Traces differ but cause unclear |
| `HIGH` | `FETCH_OR_DECODE_BUG` | Different instruction at same sequence position |
| `HIGH` | `SPURIOUS_TRAP` | DUT raised trap where reference did not |
| `CRITICAL` | `EXECUTION_RESULT_BUG` | Same instruction, different register result |

Only `LOW` and above cause `status: FAIL`. `INFO` divergences are always expected and do not fail the test.

### Regenerating the summary table

```bash
python3 - << 'EOF'
import json, glob, os
files = sorted(glob.glob("reports/*.json"))
pass_count = sum(1 for f in files if json.load(open(f))["status"] == "PASS")
print(f"{pass_count}/{len(files)} PASS")
EOF
```

# DTF Project Context

## Architecture
- Spike (ISA sim) = golden reference, boots at 0x80000000
- Ibex/Verilator (RTL sim) = DUT, boots at 0x100080 (hardcoded reset vector)
- Python diff engine compares traces by instruction sequence position

## Key files
- scripts/diff_engine.py — trace parser and comparator
- scripts/gen_tests.py — random RISC-V test generator
- tests/link.ld — linker script for Spike (origin 0x80000000)
- tests/link_ibex.ld — linker script for Ibex (vectors at 0x100080, code after)

## Spike trace generation
Run spike with `-l` flag to get the required trace format, stopping at the
`tval` line to avoid the infinite instruction-access-fault loop:

```bash
spike -l --isa=rv32imc_zicsr <test_spike.elf> 2>&1 | python3 -c "
import sys
for line in sys.stdin:
    print(line, end='')
    if line.strip().startswith('core') and 'tval' in line:
        break
" > spike_trace.log
```

Spike naturally terminates the program by trapping on the `sw t0, 0(t1)`
MMIO write to 0x20000 (`trap_store_access_fault`), then loops indefinitely
on instruction-access-fault at 0x0. Stopping at `tval` captures all real
instructions cleanly.

## Ibex trace format
Time  Cycle  PC        Insn      Decoded           RegContents
20    6      00100080  00a0006f  jal x0,10008a     x0=0x00000000
22    7      0010008a  50fd      c.li x1,-1        x1=0xffffffff

## Spike trace format
core   0: 0x80000000 (0x000050fd) c.li    ra, -1

## IBEX_VECTOR_MIN_PC = 0x10008a
The diff engine skips Ibex instructions with PC < 0x10008a. This skips
only the vector table (jal at 0x100080 + 3 nops at 0x100084-0x100088)
and keeps _start at 0x10008a as the first compared instruction.
Setting this to 0x100090 (the prior broken value) skipped the first two
real program instructions, causing step-0 misalignment with Spike.

## Campaign results
- seeds 1000-1019: 20/20 PASS (58 steps each, 1 INFO MMIO divergence each)
- seeds 2000-2099: 100/100 PASS (58 steps each, 1 INFO MMIO divergence each)

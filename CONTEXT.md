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

## Current problem
IBEX_VECTOR_MIN_PC threshold in diff_engine.py needs to skip only the
vector jump at 0x100080 (4 bytes) and NOT skip actual program instructions.
_start is at 0x10008a. First real instruction is c.li x1,-1 at 0x10008a.
Threshold should be exactly 0x10008a or use label-based skipping.

## Ibex trace format
Time  Cycle  PC        Insn      Decoded           RegContents
20    6      00100080  00a0006f  jal x0,10008a     x0=0x00000000
22    7      0010008a  50fd      c.li x1,-1        x1=0xffffffff

## Spike trace format  
core   0: 0x80000000 (0x000050fd) c.li    ra, -1

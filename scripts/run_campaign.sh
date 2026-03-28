#!/bin/bash
set -e

GCC=/root/dtf/tools/riscv/bin/riscv32-unknown-elf-gcc
SPIKE=/root/dtf/tools/spike/bin/spike
IBEX=/root/dtf/riscv-core/ibex/build/lowrisc_ibex_ibex_simple_system_0/sim-verilator/Vibex_simple_system
DTFDIR=/root/dtf

cd $DTFDIR

echo "=== Step 1: Generate .S files (seeds 2000-2099) ==="
python3 scripts/gen_tests.py --count=100 --seed=2000 --insns=50 --outdir=tests/inputs
echo ""

echo "=== Step 2: Compile for Spike and Ibex ==="
for i in $(seq 2000 2099); do
  src="tests/inputs/test_gen_${i}.S"
  spike_elf="tests/inputs/test_gen_${i}_spike.elf"
  ibex_elf="tests/inputs/test_gen_${i}_ibex.elf"

  $GCC -march=rv32imc -mabi=ilp32 -static -nostdlib -nostartfiles \
       -T tests/link.ld -o $spike_elf $src
  $GCC -march=rv32imc -mabi=ilp32 -static -nostdlib -nostartfiles \
       -T tests/link_ibex.ld -o $ibex_elf $src
done
echo "Compiled 100 Spike + 100 Ibex ELFs"
echo ""

echo "=== Step 3: Run Ibex/Verilator to generate DUT traces ==="
IBEX_TMPDIR=$(mktemp -d)
for i in $(seq 2000 2099); do
  ibex_elf="$DTFDIR/tests/inputs/test_gen_${i}_ibex.elf"
  dut_log="$DTFDIR/tests/outputs/test_gen_${i}_dut.log"

  # Run from temp dir (simulator writes trace_core_00000000.log to CWD)
  (cd $IBEX_TMPDIR && \
   $IBEX --meminit=ram,$ibex_elf --term-after-cycles=50000 \
         > /dev/null 2>&1)
  cp $IBEX_TMPDIR/trace_core_00000000.log $dut_log
done
rm -rf $IBEX_TMPDIR
echo "Generated 100 DUT traces"
echo ""

echo "=== Step 4: Run Spike to generate reference traces ==="
for i in $(seq 2000 2099); do
  spike_elf="tests/inputs/test_gen_${i}_spike.elf"
  spike_log="tests/outputs/test_gen_${i}_spike.log"

  timeout 30 $SPIKE -l --isa=rv32imc_zicsr $spike_elf 2>&1 | \
    python3 -c "
import sys
for line in sys.stdin:
    print(line, end='')
    if line.strip().startswith('core') and 'tval' in line:
        break
" > $spike_log
done
echo "Generated 100 Spike traces"
echo ""

echo "=== Step 5: Run diff engine on all 100 tests ==="
PASS=0
FAIL=0
FAILS=""
for i in $(seq 2000 2099); do
  result=$(python3 scripts/diff_engine.py \
    --ref tests/outputs/test_gen_${i}_spike.log \
    --dut tests/outputs/test_gen_${i}_dut.log \
    --out reports/test_gen_${i} \
    --steps 500 2>&1 | grep -E "^\[\+\] (PASS|FAIL)" | head -1)
  if echo "$result" | grep -q "PASS"; then
    PASS=$((PASS+1))
  else
    FAIL=$((FAIL+1))
    FAILS="$FAILS test_gen_$i"
  fi
done

echo ""
echo "=============================="
echo "  CAMPAIGN RESULTS"
echo "=============================="
echo "  PASS: $PASS / 100"
echo "  FAIL: $FAIL / 100"
if [ -n "$FAILS" ]; then
  echo "  Failed tests:$FAILS"
fi
echo "=============================="

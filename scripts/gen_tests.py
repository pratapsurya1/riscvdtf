#!/usr/bin/env python3
import random, os, argparse

REGS = [f"x{i}" for i in range(1, 30)]  # x30 reserved as scratch base pointer

SCRATCH_REG  = "x30"
SCRATCH_ADDR = 0x100500   # fixed absolute address, valid in both Spike and Ibex ELFs
SCRATCH_SIZE = 64

def rand_reg():
    return random.choice(REGS)

def rand_imm():
    if random.random() < 0.3:
        return random.choice([-1, 0, 1, 2047, -2048, 255])
    return random.randint(-2048, 2047)

def gen_r_type():
    op = random.choice(["add","sub","and","or","xor","slt","sltu"])
    return f"    {op} {rand_reg()}, {rand_reg()}, {rand_reg()}"

def gen_m_type():
    op = random.choice(["mul","mulh","mulhu","mulhsu"])
    return f"    {op} {rand_reg()}, {rand_reg()}, {rand_reg()}"

def gen_i_type():
    op = random.choice(["addi","andi","ori","xori","slti","sltiu"])
    return f"    {op} {rand_reg()}, {rand_reg()}, {rand_imm()}"

def gen_shift():
    op = random.choice(["slli","srli","srai"])
    return f"    {op} {rand_reg()}, {rand_reg()}, {random.randint(0,31)}"

def gen_load_store():
    """Generate a safe load or store using x30 as the scratch base (0x100500).
    Offsets are kept within [0, SCRATCH_SIZE). lw/sw use word-aligned offsets.
    x30 is never used as rd to avoid clobbering the base pointer."""
    op = random.choice(["lw", "sw", "lb", "sb"])
    if op == "lw":
        rd     = rand_reg()
        offset = random.randint(0, (SCRATCH_SIZE // 4) - 1) * 4  # 0,4,...,60
        return f"    lw {rd}, {offset}({SCRATCH_REG})"
    elif op == "sw":
        rs     = rand_reg()
        offset = random.randint(0, (SCRATCH_SIZE // 4) - 1) * 4
        return f"    sw {rs}, {offset}({SCRATCH_REG})"
    elif op == "lb":
        rd     = rand_reg()
        offset = random.randint(0, SCRATCH_SIZE - 1)
        return f"    lb {rd}, {offset}({SCRATCH_REG})"
    else:  # sb
        rs     = rand_reg()
        offset = random.randint(0, SCRATCH_SIZE - 1)
        return f"    sb {rs}, {offset}({SCRATCH_REG})"

def gen_program(n_insns, seed):
    random.seed(seed)
    lines = [
        f"# Auto-generated test seed={seed}",
        "# Vector section at 0x100000 (Ibex reset vector)",
        ".section .vectors, \"ax\"",
        ".globl _vector_start",
        "_vector_start:",
        "    j _start",
        "    nop",
        "    nop",
        "    nop",
        "# Code section at 0x100010",
        ".section .text, \"ax\"",
        ".globl _start",
        "_start:",
    ]
    # Initialise known register values
    for reg, val in zip(["x1","x2","x3","x4"], [-1, 0x7FFFFFFF, 1, -0x80000000]):
        lines.append(f"    li {reg}, {val}")
    # Initialise x30 with the fixed scratch base address (same encoding in both ELFs)
    lines.append(f"    lui  {SCRATCH_REG}, 0x{SCRATCH_ADDR >> 12:x}")
    lines.append(f"    addi {SCRATCH_REG}, {SCRATCH_REG}, 0x{SCRATCH_ADDR & 0xfff:x}")
    generators = [gen_r_type, gen_i_type, gen_shift, gen_m_type, gen_load_store]
    weights    = [0.30,        0.25,        0.13,       0.17,       0.15]
    for _ in range(n_insns):
        lines.append(random.choices(generators, weights=weights)[0]())
    lines += [
        "_exit:",
        "    li   t0, 1",
        "    lui  t1, 0x20",
        "    sw   t0, 0(t1)",
        "    li   t0, 1",
        "    la   t1, tohost",
        "    sw   t0, 0(t1)",
        "_loop:",
        "    j    _loop",
        ".section .data",
        ".align 4",
        ".globl tohost",
        "tohost:   .word 0",
        ".globl fromhost",
        "fromhost: .word 0",
        "# Scratch buffer for load/store at fixed address 0x100500",
        ".section .scratch, \"aw\"",
        ".align 4",
        ".globl scratch_buf",
        f"scratch_buf: .space {SCRATCH_SIZE}",
    ]
    return "\n".join(lines) + "\n"

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--count",  type=int, default=10)
    parser.add_argument("--insns",  type=int, default=50)
    parser.add_argument("--outdir", default="tests/inputs")
    parser.add_argument("--seed",   type=int, default=42)
    args = parser.parse_args()
    os.makedirs(args.outdir, exist_ok=True)
    for i in range(args.count):
        seed = args.seed + i
        prog = gen_program(args.insns, seed)
        path = os.path.join(args.outdir, f"test_gen_{seed:04d}.S")
        with open(path, 'w') as f:
            f.write(prog)
        print(f"[+] Generated {path}")

if __name__ == "__main__":
    main()

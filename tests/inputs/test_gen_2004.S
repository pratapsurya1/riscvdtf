# Auto-generated test seed=2004
# Vector section at 0x100000 (Ibex reset vector)
.section .vectors, "ax"
.globl _vector_start
_vector_start:
    j _start
    nop
    nop
    nop
# Code section at 0x100010
.section .text, "ax"
.globl _start
_start:
    li x1, -1
    li x2, 2147483647
    li x3, 1
    li x4, -2147483648
    slti x7, x31, -783
    mulh x5, x17, x2
    mulhu x29, x28, x14
    and x2, x10, x21
    addi x12, x13, -1121
    mulh x4, x20, x29
    add x9, x27, x20
    srai x18, x2, 19
    srli x3, x11, 12
    slti x4, x18, -1287
    mul x15, x3, x26
    sltu x30, x15, x27
    andi x28, x16, 1764
    and x4, x16, x9
    mulh x25, x22, x13
    xori x20, x23, 1479
    addi x7, x11, 988
    slli x14, x3, 4
    sltu x5, x29, x25
    addi x25, x25, -2048
    xori x8, x29, 2047
    xori x13, x23, -514
    slt x26, x1, x26
    sub x30, x19, x21
    sltu x27, x29, x26
    sub x19, x29, x7
    ori x30, x16, 1143
    srli x16, x6, 17
    add x1, x11, x11
    mulh x1, x28, x15
    sub x7, x1, x20
    andi x23, x16, 116
    sltiu x6, x22, 1293
    sub x20, x6, x6
    and x4, x30, x9
    srai x11, x2, 27
    srai x24, x14, 29
    mul x24, x12, x13
    slti x20, x8, 1
    or x30, x22, x22
    srai x15, x31, 24
    slti x14, x12, -1
    srli x13, x29, 25
    slti x8, x3, 1158
    or x31, x3, x18
    addi x28, x22, -1870
    andi x15, x25, -1449
    and x20, x30, x11
    andi x4, x8, -1222
    mul x14, x19, x21
_exit:
    li   t0, 1
    lui  t1, 0x20
    sw   t0, 0(t1)
    li   t0, 1
    la   t1, tohost
    sw   t0, 0(t1)
_loop:
    j    _loop
.section .data
.align 4
.globl tohost
tohost:   .word 0
.globl fromhost
fromhost: .word 0

# Auto-generated test seed=2042
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
    srai x28, x8, 9
    sltu x30, x23, x14
    slt x23, x3, x8
    mulhsu x30, x17, x28
    srli x28, x17, 17
    ori x5, x30, 2047
    mulhsu x17, x22, x4
    slt x2, x27, x18
    or x7, x17, x12
    slti x16, x17, 2047
    mul x7, x15, x11
    slti x29, x19, 1187
    add x19, x31, x20
    xori x28, x27, -1
    srli x3, x26, 31
    slti x20, x30, 1591
    addi x10, x26, -2018
    ori x26, x16, 520
    or x10, x27, x20
    mulhu x27, x16, x19
    srai x1, x2, 11
    slt x17, x2, x28
    srai x8, x16, 21
    ori x16, x13, 62
    mulhu x29, x29, x21
    ori x29, x3, -1
    srai x29, x9, 11
    mulh x16, x1, x17
    mul x30, x22, x15
    add x5, x8, x27
    srai x21, x1, 26
    andi x16, x17, -155
    mulhu x20, x31, x23
    andi x31, x13, 1534
    slti x14, x17, 1
    slti x28, x14, 1810
    slti x13, x9, 2047
    slli x19, x22, 5
    andi x4, x24, -155
    xori x27, x20, 1038
    sltu x16, x10, x31
    mul x14, x6, x8
    andi x23, x30, 2047
    or x12, x6, x14
    xori x3, x6, -1492
    slli x15, x12, 2
    slti x10, x4, 0
    srai x26, x28, 2
    sltu x17, x16, x3
    addi x4, x24, 965
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

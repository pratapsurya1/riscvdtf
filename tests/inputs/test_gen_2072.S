# Auto-generated test seed=2072
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
    sltu x13, x17, x20
    slti x16, x21, 1794
    srli x21, x14, 31
    sltu x11, x19, x28
    srli x21, x29, 23
    and x25, x23, x28
    xori x29, x28, 807
    xori x22, x13, -1086
    mulh x11, x21, x23
    mulhsu x10, x5, x25
    mul x10, x22, x7
    srai x2, x15, 6
    slt x3, x6, x6
    slt x15, x1, x13
    slli x16, x23, 26
    ori x18, x11, 1
    mulh x10, x14, x2
    xor x14, x17, x26
    andi x10, x2, -415
    slt x24, x27, x17
    srai x26, x10, 26
    sltu x4, x8, x13
    srli x8, x13, 9
    mulh x12, x21, x11
    andi x14, x30, -259
    sltu x16, x8, x13
    srai x15, x2, 16
    mulhsu x1, x3, x10
    andi x21, x25, 1
    sltiu x25, x24, -332
    mulhsu x25, x20, x26
    mulh x21, x21, x9
    sltiu x3, x10, 1447
    and x15, x9, x23
    ori x30, x1, 646
    xori x15, x14, -2048
    sltu x4, x20, x22
    xor x16, x26, x18
    slt x22, x12, x5
    sub x4, x26, x26
    srai x11, x4, 0
    srai x13, x4, 2
    andi x31, x27, -90
    or x14, x12, x27
    slt x1, x4, x4
    or x21, x31, x29
    xori x15, x2, -1811
    addi x5, x9, 2047
    xori x7, x24, 587
    sltu x5, x28, x17
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

# Auto-generated test seed=2005
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
    addi x16, x7, 1494
    or x31, x27, x11
    addi x9, x4, -2025
    andi x13, x8, 2047
    mulhsu x2, x4, x13
    slli x11, x31, 0
    ori x28, x27, 134
    sltiu x16, x4, 1613
    mulh x29, x26, x16
    and x24, x8, x27
    xor x7, x15, x5
    andi x28, x7, -600
    slt x22, x11, x12
    addi x24, x26, -969
    addi x14, x28, 255
    andi x14, x8, -2048
    xor x4, x5, x25
    srli x31, x22, 2
    slti x26, x6, 505
    ori x25, x7, -132
    sltiu x27, x18, 700
    srai x3, x9, 15
    srai x26, x11, 14
    addi x29, x11, -1669
    add x29, x19, x3
    slti x22, x2, 1381
    mulhsu x27, x14, x1
    and x14, x17, x4
    srli x20, x29, 11
    sltiu x10, x3, -471
    mulhsu x16, x7, x28
    mul x9, x10, x26
    sub x4, x16, x8
    and x25, x1, x22
    mul x11, x24, x18
    sub x5, x3, x19
    slti x2, x15, 217
    sub x3, x19, x8
    mul x30, x20, x14
    ori x31, x4, -2048
    xori x11, x24, 33
    mulhu x6, x6, x3
    srli x20, x2, 19
    mulhsu x4, x26, x8
    mulhsu x4, x4, x21
    sltiu x18, x8, 1489
    ori x20, x13, 999
    mul x2, x29, x12
    mulh x25, x16, x25
    andi x24, x19, -1
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

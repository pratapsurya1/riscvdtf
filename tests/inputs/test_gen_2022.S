# Auto-generated test seed=2022
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
    xori x18, x10, 1330
    srli x26, x1, 27
    slt x15, x18, x27
    addi x27, x24, -1724
    mulhu x10, x13, x31
    or x9, x15, x6
    sub x22, x16, x14
    add x22, x4, x18
    xori x9, x30, -2048
    xori x30, x9, -2019
    addi x23, x24, 255
    mulhu x18, x14, x10
    add x19, x6, x31
    srli x13, x25, 28
    slli x23, x9, 27
    slli x7, x29, 8
    mulhsu x5, x13, x4
    slt x30, x20, x2
    andi x26, x24, 923
    xor x23, x28, x27
    and x21, x17, x30
    or x22, x13, x14
    mulh x18, x25, x15
    sltiu x5, x5, 1738
    addi x8, x9, 96
    and x30, x29, x24
    and x6, x5, x7
    ori x7, x1, -1
    sltiu x9, x13, 255
    srai x13, x25, 3
    xori x27, x22, 0
    mulhu x27, x11, x28
    ori x26, x15, 0
    srai x22, x30, 13
    mulhu x29, x8, x14
    addi x1, x16, -354
    sub x10, x31, x17
    and x11, x16, x23
    sltiu x11, x23, 1
    mul x29, x17, x17
    add x14, x26, x1
    srai x12, x2, 13
    slli x7, x28, 30
    slt x4, x13, x31
    slli x1, x24, 29
    slli x22, x7, 11
    mulhsu x2, x29, x9
    andi x27, x1, 1
    and x11, x8, x14
    and x2, x28, x22
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

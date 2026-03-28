# Auto-generated test seed=2016
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
    srli x29, x18, 16
    mul x27, x10, x5
    or x30, x16, x4
    sub x11, x7, x12
    sub x16, x15, x30
    slli x24, x21, 15
    sltu x27, x25, x22
    xor x29, x7, x14
    slt x13, x3, x10
    slli x6, x17, 2
    andi x28, x31, -151
    xori x31, x17, 2047
    srli x22, x25, 23
    and x23, x2, x20
    srai x2, x19, 31
    ori x8, x18, -1561
    mul x19, x7, x10
    slti x31, x7, 858
    sltiu x12, x11, -1992
    mulhu x13, x27, x4
    and x5, x5, x20
    xori x4, x7, 255
    mul x12, x21, x10
    mulh x25, x31, x6
    mulhsu x25, x22, x6
    sub x25, x14, x7
    ori x1, x11, -716
    mulhsu x11, x22, x31
    mulh x16, x24, x24
    mulh x9, x1, x6
    or x15, x30, x4
    or x25, x15, x29
    or x1, x9, x21
    slti x19, x8, 490
    or x22, x26, x3
    slt x13, x21, x6
    mulhsu x12, x3, x17
    slt x15, x13, x3
    andi x19, x8, 1
    srli x19, x15, 2
    sltiu x13, x29, 0
    or x18, x21, x2
    slti x11, x19, 1419
    sltiu x5, x22, 0
    andi x5, x15, 2047
    or x8, x10, x27
    mulhsu x18, x20, x20
    addi x3, x3, 255
    mul x13, x31, x13
    srai x24, x12, 25
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

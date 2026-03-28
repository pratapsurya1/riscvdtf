# Auto-generated test seed=2044
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
    mulhu x4, x17, x24
    mulhsu x17, x2, x4
    mulhsu x3, x17, x30
    sltiu x7, x18, -501
    sltiu x21, x29, 1566
    mulh x13, x20, x1
    mulhu x12, x2, x27
    mulhsu x2, x17, x21
    and x12, x28, x17
    mul x13, x31, x11
    mul x16, x4, x18
    sltu x31, x3, x13
    mulhsu x8, x6, x6
    mulh x2, x17, x27
    add x7, x28, x14
    xori x29, x16, 255
    mulhu x19, x2, x1
    sltiu x22, x12, -2032
    and x22, x24, x12
    or x6, x26, x27
    mulhu x28, x27, x13
    slti x7, x6, -1079
    add x4, x20, x27
    sltu x26, x13, x4
    sub x3, x7, x17
    xor x15, x16, x28
    srli x12, x10, 20
    ori x16, x20, 724
    addi x20, x18, 407
    slli x5, x16, 5
    srai x11, x9, 5
    mulhsu x5, x3, x1
    slti x7, x17, -2048
    xor x18, x5, x27
    and x29, x22, x12
    sltiu x3, x4, -1886
    mul x11, x3, x13
    slli x30, x21, 14
    mulh x11, x15, x29
    mul x21, x2, x21
    xori x19, x24, 59
    mulh x23, x6, x12
    mulhsu x17, x8, x28
    sltiu x8, x30, -288
    slt x10, x1, x12
    mulhsu x17, x18, x25
    xori x23, x11, -259
    add x31, x29, x16
    slt x9, x3, x16
    slli x3, x3, 15
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

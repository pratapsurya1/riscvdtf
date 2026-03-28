# Auto-generated test seed=2055
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
    sub x15, x4, x3
    andi x26, x5, 1870
    slt x3, x31, x2
    sltiu x23, x4, -1
    mulhsu x6, x6, x17
    sltiu x28, x2, 0
    sltu x24, x13, x16
    andi x24, x8, 747
    xor x11, x27, x29
    sub x7, x14, x22
    sltiu x16, x17, 288
    sltiu x1, x30, -952
    slt x21, x29, x5
    sltiu x11, x6, -2012
    addi x19, x10, -2048
    slli x7, x30, 27
    mulhsu x20, x23, x23
    mul x30, x30, x25
    sltu x7, x15, x26
    srli x15, x27, 4
    srai x4, x14, 18
    sltu x14, x27, x30
    add x11, x4, x11
    srai x12, x20, 4
    addi x29, x20, 4
    and x1, x13, x16
    and x4, x7, x28
    addi x4, x8, -427
    xori x21, x5, -901
    or x23, x9, x17
    sltu x15, x8, x8
    xori x7, x10, 1086
    xori x19, x23, 1
    mulhu x12, x3, x7
    mul x6, x10, x12
    srli x5, x23, 29
    mulhsu x1, x18, x29
    slli x19, x15, 15
    xor x6, x9, x16
    mulhsu x6, x27, x22
    and x23, x27, x31
    mulh x10, x4, x4
    slli x23, x29, 26
    mulhsu x5, x5, x25
    mulhsu x16, x19, x21
    slli x6, x22, 0
    addi x18, x18, 255
    mulhsu x29, x3, x16
    and x7, x8, x21
    ori x6, x23, -1379
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

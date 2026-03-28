# Auto-generated test seed=2019
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
    mulh x31, x16, x6
    sub x27, x21, x11
    mulhu x14, x20, x8
    mulhsu x15, x3, x28
    srai x2, x12, 23
    sltu x7, x23, x16
    addi x18, x6, 2047
    sub x31, x4, x2
    mul x3, x30, x13
    slt x15, x20, x14
    or x6, x27, x20
    sltu x7, x24, x10
    slli x19, x10, 12
    sub x10, x7, x24
    ori x1, x6, -1450
    add x31, x23, x17
    mulhsu x25, x21, x6
    srai x15, x12, 11
    sltiu x8, x17, 540
    or x9, x9, x16
    and x2, x14, x12
    andi x24, x6, -2048
    ori x30, x18, 381
    add x14, x26, x23
    sltiu x23, x3, -989
    xor x21, x12, x12
    sub x23, x4, x18
    andi x3, x22, 55
    mulhsu x21, x2, x4
    slt x20, x10, x15
    xor x16, x2, x12
    mulhu x8, x11, x29
    slli x23, x7, 30
    mulhsu x1, x6, x3
    and x13, x9, x21
    mul x3, x27, x18
    xor x28, x10, x8
    mulhu x14, x8, x25
    and x21, x21, x3
    xor x28, x15, x21
    ori x9, x7, -2048
    mul x21, x17, x21
    mulhsu x25, x4, x14
    srli x8, x20, 18
    add x12, x28, x27
    and x4, x6, x28
    xor x22, x25, x22
    srli x30, x4, 30
    mulhsu x18, x19, x10
    slti x19, x11, 1528
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

# Auto-generated test seed=1002
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
    xori x29, x8, 1
    sltiu x19, x20, 2047
    andi x8, x26, -1
    sltiu x5, x25, 506
    sltiu x26, x30, -1393
    mulhsu x20, x10, x23
    slli x14, x23, 5
    xori x11, x31, -780
    addi x31, x16, -2048
    add x30, x4, x3
    slli x16, x2, 31
    add x2, x7, x6
    slli x27, x19, 5
    sub x1, x8, x26
    or x30, x11, x21
    andi x10, x29, -2048
    mul x20, x14, x5
    and x19, x31, x24
    add x18, x13, x11
    srai x30, x27, 2
    xor x27, x14, x3
    slti x21, x4, 430
    sub x19, x13, x31
    ori x27, x23, 432
    xori x24, x8, 79
    mul x13, x23, x29
    slt x24, x21, x28
    xor x10, x13, x22
    srai x1, x22, 21
    mulh x16, x3, x11
    mul x8, x6, x20
    mulh x12, x13, x9
    sub x1, x20, x31
    srli x4, x22, 18
    mul x17, x2, x4
    slt x8, x11, x27
    mulhu x14, x8, x19
    xori x24, x1, 517
    xor x25, x4, x30
    mulhu x20, x5, x18
    xori x3, x15, -643
    or x5, x31, x23
    and x19, x10, x6
    srli x8, x1, 0
    mulhsu x15, x12, x16
    sub x26, x3, x22
    mulhu x9, x28, x3
    srli x27, x23, 3
    sltiu x17, x31, -1349
    ori x29, x10, 2047
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

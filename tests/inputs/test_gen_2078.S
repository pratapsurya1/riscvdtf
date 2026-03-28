# Auto-generated test seed=2078
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
    mulh x2, x16, x12
    srai x27, x12, 22
    srai x12, x18, 22
    add x22, x16, x19
    and x27, x11, x27
    sub x29, x5, x13
    and x16, x7, x29
    mulhu x2, x9, x28
    srli x8, x4, 25
    mul x15, x8, x23
    xori x20, x13, -24
    xor x21, x3, x21
    slt x19, x22, x17
    slli x20, x18, 6
    mulhu x21, x18, x4
    add x24, x26, x21
    xori x25, x18, 1050
    sub x15, x29, x19
    mulhu x4, x8, x25
    xor x2, x4, x2
    mulhsu x30, x16, x17
    xori x30, x19, 135
    mulhsu x11, x30, x17
    mulhsu x10, x15, x23
    mulhu x19, x28, x3
    sub x18, x8, x4
    xor x5, x9, x23
    srli x31, x18, 25
    slt x2, x19, x1
    xor x14, x22, x21
    mulhsu x12, x11, x1
    slli x20, x15, 12
    sub x19, x22, x1
    slt x26, x17, x30
    sub x16, x26, x20
    mulhu x18, x6, x2
    addi x10, x19, -1
    andi x2, x6, 1638
    xor x30, x5, x8
    ori x27, x28, 599
    and x29, x7, x14
    ori x1, x14, -766
    slt x10, x1, x31
    sub x30, x17, x27
    slt x23, x18, x15
    mulhu x7, x22, x23
    sub x17, x25, x29
    sub x10, x3, x1
    add x25, x12, x15
    xor x14, x8, x10
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

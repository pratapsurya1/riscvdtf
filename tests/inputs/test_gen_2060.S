# Auto-generated test seed=2060
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
    ori x12, x3, -1997
    addi x22, x13, 1939
    slli x20, x14, 16
    srli x17, x18, 11
    mulhu x9, x9, x25
    xori x22, x2, 1699
    xori x25, x9, 255
    xori x3, x29, 363
    mulh x23, x18, x22
    addi x13, x18, 1262
    srai x26, x4, 0
    sltu x28, x31, x16
    sub x10, x16, x10
    add x24, x8, x27
    sltiu x13, x16, -735
    and x7, x16, x8
    srli x24, x11, 17
    sub x23, x11, x18
    ori x31, x15, 12
    srli x19, x8, 0
    add x24, x28, x28
    addi x23, x2, 1443
    sub x27, x13, x27
    sltu x28, x13, x28
    srai x29, x8, 28
    mul x27, x28, x2
    slt x3, x16, x3
    slt x11, x13, x24
    mulhsu x16, x8, x15
    sltu x11, x10, x1
    addi x30, x10, -1075
    and x8, x3, x15
    slli x30, x26, 30
    and x2, x2, x18
    slt x27, x19, x20
    and x10, x15, x5
    xor x13, x27, x3
    sltu x28, x12, x29
    addi x30, x19, -543
    and x10, x28, x15
    xor x16, x28, x23
    srli x29, x12, 30
    or x19, x17, x19
    xori x30, x29, 255
    ori x20, x4, 631
    slti x3, x30, 0
    sub x29, x6, x28
    srai x15, x28, 1
    sub x18, x22, x4
    srli x14, x6, 10
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

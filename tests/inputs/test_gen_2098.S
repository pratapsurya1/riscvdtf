# Auto-generated test seed=2098
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
    slt x20, x19, x18
    sub x23, x13, x18
    add x20, x4, x7
    xori x24, x4, -654
    addi x16, x31, 490
    sub x23, x20, x8
    addi x1, x9, 1
    or x6, x18, x27
    slli x19, x24, 12
    sltiu x19, x9, -1298
    srli x17, x2, 19
    xori x19, x16, -1526
    mulh x10, x5, x25
    sltu x11, x14, x10
    and x1, x11, x9
    srli x30, x7, 24
    xori x15, x21, 1
    or x1, x15, x9
    mul x8, x14, x22
    sltiu x19, x8, 1877
    xori x22, x3, -2048
    sltiu x31, x24, 751
    mulh x20, x23, x21
    sltu x8, x15, x26
    mul x2, x17, x14
    srli x24, x21, 14
    andi x15, x20, -625
    slti x16, x5, 0
    xori x28, x3, -480
    srli x1, x5, 21
    xor x9, x19, x13
    mulh x10, x11, x12
    mulh x29, x24, x17
    addi x10, x4, -1
    srli x2, x29, 23
    slt x29, x15, x27
    andi x1, x17, 99
    sub x5, x19, x29
    mul x30, x25, x12
    andi x11, x13, -1619
    mul x27, x8, x21
    andi x4, x7, -919
    mulh x18, x12, x6
    or x17, x28, x28
    andi x11, x15, -265
    slti x10, x4, 342
    mul x8, x19, x8
    slti x18, x23, 0
    xor x19, x7, x18
    ori x23, x23, -1
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

# Auto-generated test seed=2092
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
    srai x22, x21, 27
    ori x17, x11, -1
    addi x18, x6, -866
    mul x12, x25, x11
    slt x14, x15, x3
    slli x17, x10, 5
    add x16, x23, x9
    srai x18, x11, 6
    addi x22, x17, 1584
    mul x26, x7, x3
    addi x18, x17, 1236
    xori x23, x23, 1508
    andi x26, x27, -149
    slli x6, x4, 13
    or x15, x8, x12
    slti x17, x30, -1
    addi x8, x2, -2048
    xor x20, x20, x30
    mul x22, x6, x21
    andi x21, x13, 619
    mul x10, x29, x14
    ori x24, x1, 255
    mulh x28, x26, x10
    srai x1, x7, 31
    srai x22, x9, 26
    mulhsu x10, x1, x7
    and x22, x21, x7
    mulhu x31, x31, x1
    srai x7, x8, 28
    and x16, x27, x20
    xor x20, x22, x8
    sub x10, x23, x15
    srai x12, x10, 13
    mulhsu x26, x2, x5
    ori x21, x27, 543
    srai x8, x4, 13
    mulh x21, x1, x9
    slti x5, x28, 0
    or x16, x15, x12
    slli x11, x27, 26
    xor x17, x2, x10
    mul x5, x27, x24
    sltiu x14, x15, 255
    slti x16, x30, -2048
    xor x19, x27, x8
    slt x14, x23, x10
    or x18, x10, x30
    andi x15, x22, 1
    srli x19, x6, 17
    sltu x12, x24, x11
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

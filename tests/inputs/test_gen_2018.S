# Auto-generated test seed=2018
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
    addi x13, x21, 393
    xor x18, x8, x8
    sltu x3, x14, x21
    xori x25, x21, -1862
    sub x8, x7, x31
    slti x20, x11, -462
    xori x10, x10, 2047
    sub x12, x11, x28
    sltiu x15, x11, 1
    addi x4, x5, -104
    sub x1, x27, x26
    srai x21, x23, 2
    slli x11, x27, 24
    sltiu x14, x11, -358
    mulh x9, x1, x2
    mulh x10, x29, x29
    slti x12, x27, 1
    sltu x18, x21, x6
    slt x8, x23, x7
    andi x11, x2, -1408
    slli x26, x14, 21
    or x31, x11, x10
    ori x26, x1, 1526
    sltiu x16, x20, -516
    mulhu x9, x18, x1
    slti x7, x10, 255
    slt x23, x10, x13
    sub x7, x21, x13
    mulh x30, x28, x21
    slti x2, x15, -753
    or x8, x23, x18
    or x22, x9, x20
    sub x1, x8, x11
    mul x1, x25, x31
    slti x28, x2, 1345
    ori x24, x12, 1
    slli x17, x3, 14
    srai x14, x23, 15
    mulhu x7, x2, x11
    sltu x2, x22, x31
    mul x8, x30, x13
    slti x31, x24, 1264
    addi x10, x2, -225
    srai x24, x13, 22
    sltu x31, x18, x5
    mul x13, x19, x18
    andi x12, x12, 0
    slt x1, x25, x26
    addi x30, x29, -1370
    srai x26, x10, 30
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

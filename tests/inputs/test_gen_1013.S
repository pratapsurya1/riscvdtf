# Auto-generated test seed=1013
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
    mulhu x23, x27, x24
    srai x6, x19, 1
    addi x13, x8, -2037
    addi x20, x15, -1477
    and x24, x25, x22
    and x11, x21, x31
    slli x4, x22, 9
    xori x4, x30, -572
    slt x21, x22, x10
    xor x7, x29, x1
    slt x25, x17, x12
    xori x27, x17, 1
    or x26, x16, x14
    and x10, x6, x11
    slt x12, x1, x8
    xori x5, x14, -581
    slti x11, x10, 336
    slli x25, x21, 23
    mulhu x23, x4, x30
    sltiu x9, x24, -358
    or x15, x6, x11
    xori x30, x21, -1792
    slli x21, x9, 13
    or x10, x30, x18
    add x2, x8, x22
    sltiu x2, x8, -1
    sltiu x25, x30, 160
    srai x20, x16, 28
    ori x22, x26, 1
    sltu x3, x24, x22
    slt x22, x25, x11
    slt x14, x19, x17
    srai x3, x16, 16
    mul x15, x6, x30
    sub x3, x15, x30
    ori x17, x28, 1
    xori x5, x6, -1432
    mulh x21, x13, x25
    xor x5, x27, x17
    srai x12, x20, 1
    ori x30, x14, 1183
    mulhsu x2, x19, x31
    slli x12, x1, 30
    ori x26, x16, -977
    mulh x9, x2, x16
    srai x19, x10, 22
    sub x28, x19, x6
    addi x7, x31, -911
    mulhsu x16, x28, x17
    sltiu x28, x28, 1293
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

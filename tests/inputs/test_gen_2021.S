# Auto-generated test seed=2021
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
    mulhu x8, x29, x21
    or x16, x19, x3
    and x16, x3, x30
    mulh x27, x2, x24
    slt x18, x10, x2
    sltiu x15, x4, 255
    ori x17, x11, 1191
    slli x8, x15, 28
    sltiu x18, x8, 268
    mulhu x1, x1, x18
    slli x7, x25, 10
    mulh x13, x14, x19
    srai x27, x9, 3
    add x6, x29, x19
    andi x19, x5, 1466
    ori x14, x6, -944
    sltiu x16, x30, 1
    xor x10, x12, x21
    xor x31, x3, x14
    add x24, x29, x4
    sub x26, x12, x7
    add x1, x11, x24
    add x18, x25, x29
    slt x31, x1, x18
    sltiu x14, x6, -1142
    or x11, x2, x20
    xori x12, x18, -2048
    mulhu x11, x6, x26
    ori x17, x13, 1
    sub x1, x20, x16
    slti x15, x22, 255
    mulh x2, x11, x17
    and x6, x23, x12
    add x12, x9, x30
    or x19, x3, x10
    xor x16, x2, x8
    srli x24, x24, 7
    sltiu x5, x9, -1105
    ori x24, x28, -1704
    srli x25, x16, 18
    xori x28, x10, 1142
    sub x27, x13, x18
    srli x12, x9, 17
    addi x28, x9, 7
    addi x24, x1, -86
    ori x24, x21, 1656
    slti x26, x8, 0
    xor x9, x16, x27
    srai x9, x25, 26
    mulhsu x25, x23, x19
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

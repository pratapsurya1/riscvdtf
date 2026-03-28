# Auto-generated test seed=2058
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
    add x23, x28, x24
    andi x11, x5, 2047
    or x16, x8, x14
    srai x9, x22, 0
    ori x23, x27, 0
    mulhu x28, x3, x22
    xor x19, x13, x12
    or x4, x5, x10
    mulhu x13, x7, x20
    slt x7, x29, x29
    slt x16, x9, x26
    mulhsu x30, x24, x10
    mulhsu x29, x28, x11
    or x11, x18, x7
    or x11, x3, x7
    ori x17, x23, 0
    and x2, x19, x25
    srai x22, x5, 19
    slti x23, x19, -2048
    srai x2, x22, 26
    andi x27, x25, 817
    ori x26, x25, -1615
    srai x19, x19, 30
    srai x21, x1, 31
    mulhu x28, x6, x17
    mulh x29, x16, x5
    mulh x19, x17, x17
    sltu x15, x2, x14
    srai x2, x26, 10
    sltu x8, x4, x12
    sltiu x20, x25, -42
    srai x13, x1, 22
    ori x12, x14, -1556
    srai x5, x19, 25
    mulhu x8, x1, x10
    mulh x20, x25, x20
    slti x8, x19, 0
    addi x10, x3, -2048
    srli x26, x15, 9
    mulhsu x15, x15, x6
    srai x9, x31, 29
    sltiu x9, x13, 255
    sub x2, x5, x19
    mul x22, x13, x22
    addi x18, x18, -1228
    add x30, x13, x13
    mulh x17, x8, x9
    xor x16, x11, x9
    mulhsu x14, x11, x4
    xor x17, x6, x13
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

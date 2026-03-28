# Auto-generated test seed=2080
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
    or x25, x19, x16
    or x19, x20, x15
    srai x8, x5, 18
    or x14, x7, x19
    sltiu x9, x5, 1
    andi x10, x30, -1
    srai x30, x23, 20
    slli x8, x14, 30
    andi x30, x22, 573
    mulhu x22, x6, x26
    sltu x25, x26, x23
    xori x6, x29, 1596
    ori x3, x26, -2048
    ori x29, x10, 255
    sltiu x25, x19, -1123
    sub x22, x19, x15
    mulh x3, x14, x28
    sltiu x1, x3, -49
    xor x11, x25, x5
    and x8, x14, x30
    sltu x6, x4, x1
    sub x28, x31, x28
    slti x6, x12, -1955
    xori x15, x20, 1
    sltu x31, x1, x22
    slt x28, x14, x6
    or x2, x8, x10
    mulhsu x4, x19, x28
    sub x13, x7, x23
    slli x2, x17, 6
    srli x12, x2, 31
    srli x1, x6, 23
    xori x21, x31, 0
    slti x30, x19, -1266
    andi x26, x25, -998
    srai x16, x9, 16
    andi x29, x23, 416
    andi x20, x31, -639
    mul x15, x11, x5
    slli x14, x13, 14
    mulhsu x19, x24, x19
    addi x13, x13, 659
    slti x13, x4, -2048
    andi x24, x13, -835
    and x1, x9, x13
    slti x3, x8, -404
    xor x19, x11, x28
    srai x16, x7, 28
    andi x29, x16, -1161
    sltu x8, x26, x28
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

# Auto-generated test seed=2051
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
    xor x15, x11, x3
    xor x14, x5, x24
    mulhu x4, x15, x17
    xor x23, x11, x31
    ori x30, x15, 1116
    xori x29, x2, -1857
    andi x1, x11, 1870
    mulhsu x4, x18, x11
    mulhsu x7, x29, x31
    and x22, x19, x16
    addi x16, x18, 1701
    mulhsu x13, x1, x23
    ori x22, x14, -589
    ori x17, x28, 1703
    slli x10, x25, 11
    mul x13, x28, x29
    slli x23, x30, 26
    srli x14, x16, 8
    sltu x21, x16, x2
    addi x10, x13, 1
    mulh x16, x9, x31
    xori x28, x23, 466
    slli x31, x9, 17
    ori x24, x8, -2048
    and x24, x4, x11
    srai x1, x16, 15
    andi x7, x31, -651
    and x8, x14, x29
    mulhsu x22, x14, x29
    xori x30, x20, 1
    ori x14, x16, -2048
    or x15, x26, x27
    mulh x10, x28, x7
    slli x14, x9, 29
    or x21, x17, x8
    and x14, x16, x1
    srai x11, x18, 31
    mulhu x9, x22, x11
    and x10, x8, x27
    srli x28, x19, 11
    sltiu x29, x14, 1
    slt x19, x6, x6
    mul x20, x14, x19
    andi x27, x17, 1642
    srli x16, x6, 0
    sltiu x19, x12, -1730
    addi x29, x31, -1881
    slli x17, x5, 16
    slti x3, x13, -1085
    srli x4, x24, 16
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

# Auto-generated test seed=2061
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
    ori x16, x4, 1289
    slli x16, x7, 4
    andi x8, x9, -2000
    and x8, x27, x25
    mulh x11, x7, x30
    sltu x25, x17, x11
    or x28, x29, x20
    addi x11, x5, -1415
    mulh x26, x8, x26
    ori x23, x28, 0
    addi x11, x17, 1055
    sltiu x26, x16, 1808
    sub x19, x13, x26
    sltu x10, x12, x8
    srai x10, x4, 8
    xori x1, x21, -1078
    xor x29, x10, x24
    ori x21, x3, -139
    mulhsu x11, x30, x6
    mulh x28, x2, x31
    xori x18, x12, -150
    xori x23, x21, 100
    xori x17, x10, -1664
    and x2, x7, x20
    srai x7, x6, 29
    xor x17, x13, x12
    andi x28, x25, -1922
    slt x4, x11, x3
    and x8, x14, x23
    ori x6, x13, -1
    mulh x4, x8, x9
    mulh x13, x2, x12
    slli x26, x23, 26
    add x25, x12, x9
    srai x15, x4, 2
    add x6, x31, x5
    ori x28, x22, -1185
    srai x14, x26, 0
    sltu x9, x21, x6
    ori x25, x29, 1710
    and x10, x3, x29
    mulh x8, x1, x20
    sltu x11, x14, x26
    srai x3, x9, 2
    slti x7, x16, -1087
    xori x12, x16, 2047
    andi x23, x15, 255
    sltiu x23, x11, 1621
    xor x9, x26, x24
    xor x27, x21, x15
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

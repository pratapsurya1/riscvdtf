# Auto-generated test seed=2083
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
    mul x1, x31, x9
    and x2, x23, x6
    sltu x26, x25, x15
    slli x28, x31, 31
    sltu x8, x15, x15
    andi x28, x18, 1296
    slt x14, x22, x26
    mulhsu x6, x16, x14
    sltu x7, x22, x16
    sub x17, x23, x27
    slti x29, x20, 286
    slli x11, x18, 27
    or x27, x23, x7
    xori x7, x11, 807
    or x22, x16, x12
    xor x12, x19, x10
    xor x2, x25, x4
    add x30, x13, x18
    slli x26, x26, 1
    ori x1, x21, 0
    sub x12, x13, x10
    add x19, x29, x6
    ori x25, x12, 961
    mulhu x7, x4, x7
    sltiu x5, x16, 1064
    sltiu x2, x29, 1749
    mulh x5, x26, x29
    or x28, x12, x17
    xor x8, x7, x29
    slli x29, x12, 11
    sltu x28, x14, x4
    srli x21, x27, 22
    slti x18, x29, 1841
    slli x10, x13, 7
    mul x31, x10, x8
    slti x23, x11, 749
    srli x13, x7, 6
    mulhu x28, x18, x4
    and x27, x19, x25
    srli x1, x7, 20
    mulhsu x13, x14, x20
    slti x20, x12, 1882
    slti x18, x1, 255
    mulhsu x9, x31, x15
    sltu x16, x23, x26
    mulh x29, x9, x16
    slli x15, x4, 12
    sub x22, x20, x10
    slli x22, x26, 14
    slli x28, x1, 23
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

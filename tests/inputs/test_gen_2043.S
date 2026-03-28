# Auto-generated test seed=2043
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
    slti x8, x22, 1392
    or x9, x30, x26
    sltiu x15, x12, 249
    mul x29, x15, x9
    or x2, x3, x26
    slli x18, x11, 14
    slti x19, x3, 2047
    mul x11, x24, x8
    xor x11, x25, x11
    ori x5, x10, -1
    mulh x13, x22, x19
    srai x9, x29, 19
    add x31, x28, x31
    srai x9, x14, 3
    xori x31, x9, 1
    srli x20, x7, 24
    or x30, x29, x19
    slt x30, x23, x25
    ori x18, x3, -1715
    sltiu x15, x16, -143
    mul x6, x25, x7
    slti x17, x10, -951
    ori x31, x5, -663
    mulhsu x2, x6, x8
    srai x21, x6, 1
    mulhsu x31, x2, x22
    xor x18, x12, x29
    srli x22, x18, 11
    sltiu x21, x5, 255
    xor x27, x26, x5
    mulhsu x23, x13, x14
    slti x15, x6, 255
    mul x10, x2, x21
    mulh x28, x26, x26
    slli x9, x14, 11
    mulhsu x13, x30, x17
    mulhsu x26, x3, x2
    ori x19, x21, 255
    andi x28, x5, 810
    slti x2, x29, 0
    mul x4, x1, x25
    mulhsu x18, x17, x2
    srai x18, x31, 11
    addi x10, x1, -1
    mulhu x7, x7, x3
    mulhu x26, x7, x14
    slli x7, x29, 3
    slli x10, x29, 11
    srai x2, x21, 15
    andi x16, x1, -760
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

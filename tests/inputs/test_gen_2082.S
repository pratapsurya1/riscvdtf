# Auto-generated test seed=2082
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
    slli x31, x14, 1
    mulhu x9, x7, x25
    slt x12, x4, x3
    srli x27, x5, 4
    mulhsu x4, x21, x23
    slli x7, x9, 29
    slti x5, x21, -1848
    srli x21, x19, 14
    ori x14, x1, -266
    add x30, x17, x25
    or x4, x11, x13
    mulh x6, x20, x27
    sltu x20, x16, x19
    srli x21, x5, 21
    addi x13, x23, 438
    srli x14, x4, 13
    slli x27, x5, 2
    ori x17, x9, 255
    sltiu x17, x2, -1516
    xor x6, x31, x24
    mulhu x17, x8, x11
    or x22, x3, x1
    or x6, x12, x17
    sltiu x21, x7, 942
    slli x7, x19, 28
    and x15, x17, x22
    sltu x11, x22, x2
    add x16, x20, x6
    srai x9, x29, 7
    slti x21, x11, -1025
    ori x14, x3, 0
    srai x2, x28, 11
    or x13, x28, x18
    mulh x16, x6, x21
    xor x11, x19, x19
    srai x24, x7, 15
    andi x31, x10, 210
    slli x2, x12, 7
    xor x16, x27, x7
    slti x18, x27, 0
    mul x21, x27, x5
    slli x14, x11, 19
    slt x26, x27, x30
    mulh x27, x20, x13
    srli x22, x7, 21
    mul x28, x17, x3
    or x26, x24, x19
    ori x20, x19, -2048
    add x7, x22, x22
    andi x16, x17, 255
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

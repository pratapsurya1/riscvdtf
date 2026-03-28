# Auto-generated test seed=2029
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
    srli x30, x6, 11
    mulhsu x17, x25, x17
    and x30, x24, x17
    mulhsu x26, x15, x13
    mulh x9, x21, x1
    addi x16, x6, -2048
    sltu x19, x4, x23
    ori x18, x22, 347
    addi x31, x4, 1
    ori x29, x31, 556
    slli x3, x16, 2
    addi x15, x3, -766
    mulhu x28, x16, x18
    addi x23, x1, 1
    and x7, x10, x13
    srli x27, x24, 30
    slli x26, x20, 6
    xor x20, x22, x8
    mulhsu x16, x29, x27
    srai x25, x28, 5
    xor x15, x24, x3
    mulhu x22, x17, x27
    srai x10, x27, 30
    slli x6, x18, 5
    ori x3, x10, 0
    mulhsu x4, x25, x30
    ori x29, x21, 243
    and x28, x1, x28
    slti x7, x26, 1017
    sltiu x5, x28, 553
    srai x6, x14, 18
    srai x22, x7, 19
    addi x17, x13, 531
    mulh x5, x21, x20
    or x3, x28, x16
    or x27, x1, x5
    addi x23, x30, 1
    mulhu x13, x10, x19
    slti x16, x16, 113
    addi x20, x3, -1201
    srai x29, x29, 0
    sltiu x8, x13, 275
    mulhsu x2, x2, x15
    srai x24, x14, 28
    mulh x29, x28, x7
    sltu x15, x20, x17
    xori x21, x19, -2048
    slti x1, x29, -1752
    mulhsu x6, x9, x24
    or x11, x4, x6
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

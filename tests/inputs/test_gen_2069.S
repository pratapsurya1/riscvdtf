# Auto-generated test seed=2069
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
    ori x18, x28, 178
    mul x19, x8, x11
    slti x23, x26, -1
    or x9, x31, x16
    sltu x18, x29, x7
    sltiu x5, x9, 255
    mulh x20, x14, x25
    srli x10, x13, 3
    and x3, x6, x30
    add x26, x25, x4
    sub x9, x11, x3
    mul x13, x8, x4
    ori x2, x1, -800
    addi x11, x17, 0
    mul x23, x11, x31
    srli x12, x10, 3
    add x29, x16, x20
    mulhsu x4, x16, x9
    mulh x12, x25, x21
    mulh x4, x2, x19
    xori x23, x7, 0
    mulh x18, x23, x23
    xor x30, x4, x9
    slli x27, x16, 12
    slt x18, x13, x8
    addi x2, x21, -1309
    slt x29, x20, x15
    xori x5, x28, -2048
    mul x28, x5, x10
    and x12, x29, x8
    slt x10, x25, x14
    mulhu x28, x26, x19
    xori x16, x10, 1663
    addi x23, x5, 33
    xori x19, x28, -766
    and x24, x12, x21
    addi x7, x17, 1497
    add x3, x21, x25
    srli x13, x3, 24
    sltiu x22, x5, 806
    slt x10, x9, x17
    or x10, x29, x27
    slli x1, x27, 3
    mulh x10, x16, x23
    or x9, x20, x14
    xori x12, x12, 470
    slli x9, x18, 29
    slti x1, x8, 1707
    sub x2, x30, x4
    sub x8, x12, x16
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

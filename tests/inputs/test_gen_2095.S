# Auto-generated test seed=2095
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
    xori x31, x29, -1
    sltiu x24, x22, 386
    xori x14, x15, -15
    sltiu x25, x21, 0
    srai x29, x9, 16
    sltu x28, x29, x12
    and x21, x10, x21
    sltu x10, x12, x17
    or x1, x5, x17
    mulh x24, x7, x9
    xori x10, x2, -1343
    sltu x16, x11, x2
    xor x3, x26, x9
    srai x6, x4, 20
    sltu x15, x22, x17
    mulhu x19, x20, x22
    or x11, x23, x10
    mulh x11, x19, x29
    slt x14, x8, x8
    sltiu x26, x14, 563
    sltu x26, x1, x26
    andi x3, x26, -1164
    andi x5, x12, 2047
    mulhsu x24, x5, x12
    sltiu x9, x4, -1998
    mulh x24, x4, x22
    and x7, x13, x8
    ori x13, x14, 373
    slt x24, x10, x24
    addi x11, x2, 1
    ori x20, x21, 0
    mulhu x23, x4, x25
    or x22, x21, x8
    sub x18, x20, x5
    sub x25, x1, x24
    addi x4, x19, -1793
    mul x5, x27, x12
    andi x11, x31, -1084
    slti x1, x27, 1205
    mulhsu x6, x24, x4
    mulhu x10, x14, x22
    sltu x17, x6, x16
    mulhu x31, x6, x7
    sltiu x25, x16, -1768
    mulhu x27, x16, x29
    srli x20, x1, 2
    sub x8, x10, x4
    or x18, x28, x24
    addi x17, x28, -18
    slti x13, x13, 0
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

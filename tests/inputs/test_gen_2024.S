# Auto-generated test seed=2024
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
    sltiu x19, x10, 255
    sltiu x25, x9, 2034
    slti x24, x20, 487
    ori x17, x3, -358
    srai x15, x30, 9
    xori x2, x25, 1364
    sltiu x24, x5, 1149
    sltu x7, x11, x14
    slti x7, x29, -172
    slt x8, x25, x1
    mulhu x28, x17, x11
    srai x26, x23, 26
    ori x28, x21, -159
    or x12, x5, x7
    slti x27, x21, 2047
    ori x31, x23, 1760
    mulh x11, x30, x7
    addi x4, x31, -2013
    mulhsu x23, x8, x12
    sub x26, x10, x8
    srai x9, x16, 27
    srli x7, x27, 4
    and x5, x19, x22
    srai x4, x16, 13
    mulhsu x6, x17, x28
    and x25, x23, x29
    srai x29, x30, 24
    mul x4, x8, x2
    andi x30, x21, -1329
    mulh x8, x16, x19
    slli x6, x3, 8
    slti x18, x26, -1801
    slti x6, x18, -2045
    add x6, x2, x4
    slti x22, x20, -346
    xori x6, x16, 1670
    sltiu x26, x27, -2048
    mulhsu x20, x23, x5
    mulh x10, x13, x7
    srli x15, x22, 0
    slt x1, x25, x8
    srli x22, x2, 13
    slti x16, x18, 1487
    xor x11, x18, x29
    mulhu x22, x24, x6
    add x27, x26, x28
    andi x6, x1, 470
    mulhu x16, x6, x12
    mulhsu x31, x16, x20
    add x25, x4, x4
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

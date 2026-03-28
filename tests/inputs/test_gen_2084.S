# Auto-generated test seed=2084
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
    slti x11, x11, -317
    addi x4, x6, -800
    sltiu x19, x18, 390
    sltu x12, x21, x10
    srai x8, x27, 24
    mulhu x7, x17, x28
    srai x16, x3, 29
    and x12, x6, x29
    slli x20, x6, 22
    xor x11, x23, x5
    sltiu x8, x17, 1
    add x23, x17, x22
    srli x9, x10, 25
    xori x30, x26, -1405
    sltiu x7, x24, 2047
    mul x13, x16, x5
    srli x23, x15, 23
    mulhu x7, x24, x9
    xori x12, x6, -1548
    or x9, x20, x20
    srai x9, x14, 26
    srai x22, x7, 4
    mulhu x21, x18, x1
    xori x25, x11, 1015
    andi x7, x8, -1
    add x29, x9, x8
    mul x8, x20, x27
    xor x19, x15, x8
    ori x16, x13, -226
    slti x30, x14, 1841
    add x22, x26, x17
    mul x23, x4, x3
    and x15, x16, x17
    sub x3, x4, x27
    slli x4, x6, 22
    slt x4, x13, x19
    andi x21, x12, -897
    srai x20, x8, 18
    sltu x7, x23, x12
    and x17, x6, x23
    slti x18, x20, 1310
    mulhsu x18, x25, x21
    sub x15, x30, x2
    mul x9, x1, x1
    mulhsu x29, x30, x9
    srli x25, x31, 21
    or x5, x19, x24
    mul x3, x9, x26
    andi x7, x1, -477
    srli x18, x27, 4
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

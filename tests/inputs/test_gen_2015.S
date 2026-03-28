# Auto-generated test seed=2015
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
    srai x21, x2, 8
    srai x3, x26, 26
    slli x23, x28, 27
    slli x19, x21, 7
    mul x20, x22, x29
    mulhsu x29, x13, x4
    sltiu x10, x29, 0
    slt x4, x22, x16
    andi x3, x31, 1
    sltiu x29, x20, 2047
    mul x22, x4, x29
    srai x1, x22, 10
    slti x14, x26, -1750
    srli x24, x10, 8
    sltiu x26, x27, 1159
    sltiu x24, x13, 2047
    or x23, x24, x1
    sltu x9, x2, x22
    slt x7, x8, x15
    ori x30, x27, 1655
    xor x18, x2, x14
    srai x26, x24, 4
    srai x12, x23, 7
    or x13, x1, x9
    and x1, x10, x13
    srai x7, x24, 6
    xori x18, x29, 1
    mulhu x25, x18, x2
    srli x18, x3, 20
    ori x24, x18, -1
    ori x30, x1, 1173
    xor x25, x11, x25
    mulhu x22, x15, x1
    srai x3, x24, 23
    andi x11, x29, -1557
    slli x7, x20, 6
    addi x11, x10, 303
    addi x11, x14, 1447
    mul x24, x14, x23
    ori x19, x7, 2047
    slti x9, x6, -1
    xori x29, x1, -1971
    addi x2, x12, -1986
    andi x1, x4, 0
    andi x26, x9, 951
    or x29, x9, x9
    slti x8, x21, -2048
    ori x29, x29, 1122
    and x29, x31, x13
    slt x6, x29, x22
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

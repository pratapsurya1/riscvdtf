# Auto-generated test seed=2046
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
    sltiu x11, x14, -1045
    ori x28, x21, -1981
    sub x1, x26, x13
    slti x11, x11, -2022
    mul x8, x1, x4
    xor x19, x4, x15
    add x31, x18, x24
    or x14, x16, x18
    or x20, x15, x21
    slt x21, x16, x29
    sltiu x7, x20, 181
    xor x3, x18, x20
    xori x7, x16, 269
    addi x23, x21, 923
    sub x30, x3, x13
    mul x13, x12, x5
    addi x21, x24, -473
    sltiu x7, x26, -1610
    add x21, x14, x23
    mulh x1, x20, x24
    addi x12, x21, -2038
    andi x23, x26, -903
    srai x3, x29, 7
    slti x3, x30, 2047
    mul x28, x17, x13
    mulh x1, x30, x28
    mulh x2, x11, x14
    mulh x11, x1, x10
    slti x4, x8, 1
    slli x7, x16, 16
    ori x12, x26, -1
    mulhsu x22, x20, x14
    slli x20, x27, 1
    xori x26, x29, 249
    andi x4, x13, 1
    sltu x28, x26, x19
    sltiu x31, x2, -503
    add x14, x17, x23
    srli x7, x24, 8
    ori x10, x31, -1719
    slli x4, x13, 21
    ori x22, x21, -1924
    mulh x10, x2, x9
    ori x27, x2, -1715
    slt x5, x8, x20
    mulh x5, x25, x24
    sltiu x20, x20, -1175
    slti x13, x22, 157
    sub x7, x23, x1
    srli x19, x18, 13
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

# Auto-generated test seed=1003
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
    ori x8, x24, 1665
    sltiu x11, x3, 1649
    ori x28, x11, -1778
    sltiu x18, x18, 0
    srai x1, x5, 25
    xor x8, x23, x29
    slli x9, x13, 8
    mulhu x13, x14, x30
    sltu x9, x15, x27
    srai x5, x28, 8
    slti x28, x9, 2047
    and x15, x21, x12
    xor x28, x14, x13
    add x23, x14, x6
    slti x8, x3, 1436
    mulhu x24, x23, x29
    slti x29, x5, 1728
    and x30, x21, x6
    xor x13, x26, x23
    sltiu x20, x1, 2047
    ori x22, x14, 1364
    mulhu x3, x27, x19
    xor x11, x2, x2
    xori x29, x2, -2048
    slli x13, x19, 4
    add x16, x11, x9
    add x22, x3, x13
    and x5, x26, x13
    or x10, x3, x26
    mulh x16, x4, x13
    xor x11, x9, x8
    sltu x2, x8, x16
    mulhu x8, x23, x31
    mulh x21, x24, x6
    mul x8, x26, x8
    and x28, x18, x25
    andi x31, x1, 1412
    sltu x3, x5, x13
    xor x7, x23, x11
    sltiu x11, x6, 1530
    slti x24, x2, -1
    slti x26, x23, -1894
    slt x12, x30, x7
    sltiu x7, x26, 0
    sltu x19, x29, x28
    xori x15, x31, -2048
    and x25, x10, x18
    mulhsu x25, x26, x28
    sltiu x24, x4, 647
    mul x29, x29, x27
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

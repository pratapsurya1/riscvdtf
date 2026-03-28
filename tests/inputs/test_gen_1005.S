# Auto-generated test seed=1005
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
    xori x18, x14, 413
    sltiu x6, x16, 1
    andi x26, x2, -1687
    add x11, x16, x4
    add x10, x21, x4
    mulh x28, x25, x20
    mulhu x31, x28, x29
    srai x2, x9, 19
    mulhu x14, x20, x16
    ori x17, x27, -1
    mul x12, x20, x13
    sltu x12, x27, x19
    or x18, x22, x27
    slli x2, x17, 0
    addi x7, x5, -90
    mulhsu x27, x7, x31
    sub x6, x10, x21
    xori x12, x16, -1782
    slti x8, x3, 882
    sltu x17, x7, x13
    sltiu x19, x31, -431
    ori x22, x2, 1505
    mul x19, x25, x11
    add x4, x24, x22
    srai x5, x15, 24
    sltu x7, x16, x12
    ori x31, x22, 496
    mulh x3, x25, x17
    srai x25, x5, 11
    ori x9, x30, -1715
    mulhu x15, x21, x23
    slli x5, x9, 29
    srai x11, x14, 14
    slti x17, x27, -267
    xori x27, x21, -2048
    slt x3, x13, x2
    mulhsu x12, x15, x25
    slti x11, x22, 399
    slt x22, x4, x3
    mul x19, x14, x11
    mulh x12, x19, x9
    andi x6, x13, 1
    xori x23, x11, -1855
    sltiu x13, x27, -915
    srai x31, x15, 13
    sltiu x15, x13, -752
    add x24, x17, x20
    sltiu x12, x25, 1396
    mulhu x7, x22, x24
    mulhu x8, x14, x16
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

# Auto-generated test seed=2017
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
    and x26, x11, x17
    add x28, x17, x15
    addi x8, x29, -63
    add x28, x9, x8
    slli x28, x7, 8
    sub x23, x17, x27
    mulhsu x18, x28, x27
    ori x31, x25, 255
    mulhsu x17, x26, x17
    ori x3, x21, -2048
    slt x20, x8, x24
    sltiu x18, x24, 2047
    sub x18, x7, x12
    sltiu x12, x26, -1476
    sltiu x31, x3, 508
    mulh x11, x5, x4
    xor x19, x19, x24
    mulh x27, x2, x20
    slti x23, x5, -646
    mulhsu x30, x24, x12
    add x24, x22, x25
    slli x16, x15, 24
    sltiu x5, x3, 33
    andi x10, x31, 1893
    srai x15, x30, 18
    mul x31, x4, x4
    sltu x24, x9, x24
    srli x9, x8, 8
    slti x6, x15, 255
    slli x14, x20, 22
    or x6, x12, x20
    slli x1, x18, 12
    sltiu x27, x6, -231
    sltu x18, x23, x7
    sltiu x31, x14, 52
    mulhsu x26, x2, x16
    mulhsu x22, x11, x26
    add x24, x9, x9
    ori x21, x7, -1744
    ori x3, x10, -1513
    sub x2, x20, x30
    or x16, x27, x1
    and x15, x19, x19
    slti x26, x12, 788
    mulhsu x10, x31, x12
    slli x1, x20, 4
    srai x30, x19, 0
    and x1, x13, x6
    slli x16, x19, 13
    mulhsu x5, x17, x10
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

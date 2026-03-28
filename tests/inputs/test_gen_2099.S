# Auto-generated test seed=2099
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
    mulh x13, x9, x4
    sub x13, x17, x7
    ori x14, x2, 241
    mulhsu x21, x30, x17
    mulhu x3, x13, x12
    sltiu x16, x19, 2047
    slli x8, x23, 4
    slli x30, x4, 11
    andi x31, x18, 2047
    sltu x31, x9, x2
    andi x8, x17, 2047
    andi x29, x21, 688
    mulhu x11, x23, x26
    mul x10, x4, x7
    addi x13, x23, 2047
    sltu x17, x19, x8
    and x3, x9, x23
    mulh x4, x19, x27
    sltiu x24, x19, 619
    add x28, x11, x26
    mulhu x12, x24, x13
    mulhu x7, x23, x16
    xori x8, x31, 714
    slt x19, x8, x10
    addi x24, x19, 461
    addi x1, x18, -475
    add x8, x27, x27
    mulhsu x20, x7, x18
    xori x25, x28, -1690
    mulhu x26, x5, x22
    mulhu x20, x1, x21
    srli x2, x5, 1
    and x5, x15, x26
    addi x29, x9, -1335
    srli x21, x7, 1
    slt x23, x15, x11
    mulhu x8, x22, x30
    or x24, x22, x6
    sub x12, x3, x2
    mulhu x23, x28, x10
    mul x21, x6, x27
    srai x23, x7, 8
    mul x31, x26, x5
    and x17, x20, x24
    ori x7, x18, 2026
    mulhu x19, x3, x12
    and x27, x29, x31
    mul x5, x21, x11
    add x27, x15, x14
    mulh x15, x20, x3
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

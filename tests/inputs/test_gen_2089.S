# Auto-generated test seed=2089
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
    mulhsu x27, x4, x17
    mul x22, x19, x18
    addi x9, x26, -461
    add x7, x12, x19
    slti x15, x23, 1527
    slli x4, x20, 8
    slt x11, x14, x1
    sltu x12, x16, x3
    srli x20, x21, 20
    and x8, x4, x28
    srai x3, x21, 12
    ori x29, x27, 0
    ori x21, x30, 482
    ori x8, x31, -723
    or x9, x10, x19
    slti x24, x3, -592
    or x1, x4, x13
    and x30, x19, x23
    addi x25, x17, -712
    addi x20, x10, -1164
    add x4, x14, x1
    xori x8, x22, 462
    slli x1, x10, 27
    mulh x17, x26, x26
    addi x19, x18, 1972
    sub x6, x15, x5
    xori x29, x28, -1731
    addi x28, x6, 1306
    or x4, x9, x26
    slt x31, x18, x20
    slli x7, x29, 24
    sltu x28, x16, x22
    slt x14, x17, x3
    mulh x24, x17, x28
    mulhsu x6, x22, x6
    sltiu x3, x10, -1523
    mul x21, x20, x16
    mulh x14, x13, x23
    andi x8, x4, 879
    add x25, x22, x14
    slt x30, x7, x9
    mulhsu x15, x6, x17
    add x28, x8, x3
    mulh x21, x15, x27
    srli x24, x4, 29
    add x7, x16, x6
    xori x15, x6, 1170
    andi x8, x27, 526
    sub x25, x9, x21
    andi x6, x5, -221
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

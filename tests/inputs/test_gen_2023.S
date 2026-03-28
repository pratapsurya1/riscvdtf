# Auto-generated test seed=2023
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
    xori x28, x13, 714
    addi x21, x10, 419
    sub x21, x1, x7
    slti x5, x23, -1730
    or x29, x15, x18
    add x3, x18, x31
    addi x26, x4, -1174
    addi x5, x13, -384
    andi x18, x7, 160
    mul x19, x24, x2
    andi x30, x10, 2047
    ori x9, x11, 0
    slt x15, x3, x24
    andi x5, x17, -1085
    sub x31, x27, x31
    sub x23, x7, x6
    ori x14, x17, 1427
    srli x23, x14, 5
    srai x28, x28, 20
    slli x31, x3, 31
    mulhsu x3, x31, x19
    andi x1, x14, -403
    addi x7, x4, -1476
    slli x9, x7, 2
    or x29, x12, x13
    xor x11, x23, x9
    slli x23, x28, 22
    slti x4, x9, 0
    ori x10, x5, -2048
    sltu x8, x28, x5
    sltiu x28, x28, 1
    addi x20, x20, 1
    mulhsu x24, x27, x9
    slli x31, x19, 13
    or x6, x22, x3
    mulhsu x5, x14, x19
    slt x22, x12, x22
    sub x22, x4, x2
    srli x3, x13, 28
    andi x29, x7, -1
    addi x11, x12, 1442
    slti x18, x30, 2047
    mulhsu x13, x25, x19
    sub x4, x19, x30
    slt x27, x25, x24
    andi x15, x9, 1587
    mul x17, x21, x23
    srli x26, x1, 7
    slt x27, x1, x18
    slt x18, x8, x20
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

# Auto-generated test seed=2020
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
    andi x22, x25, 1576
    xori x18, x6, 1702
    slli x14, x22, 13
    xori x15, x4, -724
    slti x18, x24, -1714
    ori x30, x28, -2048
    slli x20, x9, 9
    xor x10, x15, x8
    slt x21, x15, x8
    slti x28, x17, -78
    srai x27, x29, 18
    mulh x24, x14, x13
    ori x6, x23, 813
    addi x30, x8, -1679
    andi x2, x31, 1697
    mul x14, x21, x26
    mulhsu x28, x26, x26
    or x3, x7, x11
    xor x16, x20, x28
    mulhsu x31, x13, x22
    mul x11, x4, x27
    mulhsu x18, x12, x8
    addi x13, x26, 225
    slti x15, x12, -2048
    slt x14, x1, x1
    slti x13, x1, -1495
    and x17, x17, x15
    sub x28, x25, x14
    add x15, x23, x12
    xor x24, x8, x23
    srai x18, x20, 18
    xori x18, x19, -203
    srli x3, x19, 28
    slti x27, x28, 426
    srai x30, x31, 27
    ori x31, x26, -269
    or x15, x9, x29
    ori x25, x16, 1
    sltiu x27, x11, 1840
    andi x19, x11, 1339
    srli x20, x27, 17
    ori x30, x1, 255
    xori x17, x1, -547
    sltu x28, x11, x15
    slt x22, x17, x29
    mulhsu x26, x12, x31
    mulhsu x25, x24, x7
    srai x29, x11, 16
    and x16, x4, x27
    slti x14, x6, 1293
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

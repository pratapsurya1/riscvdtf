# Auto-generated test seed=2085
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
    slt x8, x24, x7
    add x20, x22, x6
    mul x20, x27, x29
    sub x21, x6, x4
    or x3, x10, x20
    slt x31, x23, x24
    xor x17, x17, x7
    ori x30, x8, 0
    add x18, x24, x26
    xori x22, x12, 1212
    add x7, x6, x20
    addi x16, x18, -310
    slti x31, x10, -2048
    addi x14, x15, 1273
    sub x5, x16, x22
    slt x20, x7, x1
    mulhsu x26, x11, x18
    mulh x29, x18, x6
    add x24, x9, x27
    sub x3, x18, x6
    addi x22, x16, -1602
    and x14, x12, x16
    srli x11, x11, 3
    slli x12, x21, 7
    srai x12, x3, 2
    sltu x22, x29, x17
    mulhsu x30, x13, x23
    addi x26, x7, -670
    mulh x22, x7, x29
    srli x17, x22, 24
    sltu x27, x9, x23
    or x19, x7, x20
    mul x16, x3, x26
    srai x23, x7, 1
    srai x26, x30, 27
    mul x8, x4, x8
    srai x24, x9, 26
    mulh x11, x29, x31
    add x8, x23, x19
    sltiu x24, x22, 255
    xor x22, x8, x12
    slti x12, x8, 0
    add x26, x19, x14
    andi x29, x10, -1983
    andi x2, x19, -29
    or x3, x4, x25
    sub x1, x10, x13
    xor x9, x1, x16
    ori x4, x24, 2047
    slt x17, x4, x24
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

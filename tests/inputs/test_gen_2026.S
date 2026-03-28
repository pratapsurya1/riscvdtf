# Auto-generated test seed=2026
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
    xor x31, x17, x21
    mul x29, x8, x29
    slti x14, x26, 1973
    srai x15, x8, 0
    addi x10, x27, -1
    mulhsu x22, x11, x7
    ori x30, x12, -1423
    slli x18, x18, 18
    sub x29, x21, x23
    srli x1, x28, 23
    xori x3, x13, 2035
    mulhsu x17, x26, x25
    mulhsu x13, x30, x17
    or x19, x30, x16
    addi x19, x8, -1648
    mul x23, x20, x14
    xori x29, x8, -1049
    xori x22, x16, 8
    sltiu x10, x18, 1875
    mulhsu x14, x7, x10
    mul x2, x5, x21
    mulhsu x26, x17, x30
    andi x9, x23, 2024
    mul x27, x10, x11
    addi x15, x23, 72
    andi x31, x14, 1877
    mulhu x29, x16, x12
    slt x28, x14, x5
    addi x3, x1, -1368
    andi x8, x4, 151
    srai x12, x5, 0
    xor x19, x25, x30
    mulhsu x23, x24, x31
    sub x16, x19, x5
    mulhu x3, x14, x22
    sub x26, x26, x30
    slti x14, x13, -437
    addi x13, x29, 1
    addi x1, x17, 439
    addi x16, x31, -650
    xor x7, x14, x20
    xor x8, x22, x23
    or x2, x7, x21
    mul x21, x18, x30
    mulhsu x28, x25, x21
    slt x22, x29, x1
    xor x7, x26, x29
    andi x6, x22, 1146
    xor x14, x28, x3
    andi x12, x6, 2047
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

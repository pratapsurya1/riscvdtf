# Auto-generated test seed=2081
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
    sltiu x2, x26, 1510
    slt x27, x14, x7
    slt x12, x30, x6
    slt x10, x31, x25
    mulhsu x29, x13, x10
    ori x26, x20, 2047
    srli x17, x4, 1
    xori x27, x19, 1
    mulh x21, x2, x2
    sltiu x17, x9, 771
    xor x30, x28, x22
    xor x6, x29, x2
    mulhu x23, x23, x25
    xor x12, x7, x30
    slti x16, x7, -682
    sub x2, x20, x18
    sltiu x6, x11, 1
    andi x9, x31, -381
    addi x18, x29, -440
    srli x30, x25, 27
    add x20, x12, x25
    sltiu x27, x31, 39
    srli x23, x12, 19
    srli x2, x30, 27
    mul x23, x20, x26
    add x14, x30, x22
    mulhsu x5, x23, x24
    add x3, x5, x26
    slli x8, x24, 4
    sltu x20, x15, x16
    sltu x31, x20, x5
    andi x13, x17, -424
    andi x23, x2, -1468
    sltiu x22, x4, 0
    or x8, x22, x12
    xor x2, x21, x16
    andi x5, x5, 1652
    sub x19, x27, x13
    or x7, x3, x14
    mul x30, x11, x28
    mulhu x13, x19, x2
    sltu x10, x12, x7
    ori x21, x5, -1897
    or x1, x20, x7
    or x29, x8, x2
    mulhu x1, x1, x30
    srli x16, x17, 27
    mulhsu x17, x1, x10
    sltu x24, x11, x14
    xori x10, x2, 255
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

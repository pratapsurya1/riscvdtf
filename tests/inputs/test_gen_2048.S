# Auto-generated test seed=2048
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
    xor x13, x24, x17
    srli x24, x8, 21
    mul x26, x29, x4
    addi x5, x3, -338
    mulh x27, x7, x20
    sltiu x10, x15, -1031
    mulh x15, x8, x1
    sltiu x19, x20, 567
    xor x6, x30, x13
    mul x30, x3, x1
    sub x23, x3, x21
    srai x30, x8, 1
    slti x30, x16, 2047
    add x31, x18, x16
    add x31, x24, x24
    slli x14, x9, 23
    srai x3, x17, 24
    slti x17, x3, 266
    mulh x25, x28, x25
    sub x7, x8, x27
    slti x21, x23, -1
    addi x19, x30, 1
    mulhu x1, x11, x11
    or x24, x27, x4
    xori x22, x31, 255
    xor x10, x29, x4
    slti x28, x4, 1
    mulhsu x2, x4, x9
    add x9, x5, x20
    sltu x11, x4, x1
    mul x27, x7, x24
    andi x5, x25, 1
    sltu x28, x4, x14
    xori x31, x10, -1
    slli x21, x10, 12
    ori x25, x22, -193
    mulhsu x12, x26, x8
    xori x1, x19, 1
    mul x26, x3, x23
    mulhsu x1, x24, x9
    or x3, x28, x26
    sltu x11, x28, x17
    mulhsu x7, x19, x1
    mul x15, x18, x10
    mulhu x31, x17, x10
    slt x18, x3, x6
    sltu x19, x11, x16
    sltu x20, x8, x24
    andi x26, x21, 1549
    mulhu x5, x9, x24
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

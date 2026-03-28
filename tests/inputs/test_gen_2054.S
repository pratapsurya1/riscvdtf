# Auto-generated test seed=2054
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
    add x12, x23, x10
    andi x7, x12, -107
    slti x6, x1, 1323
    slt x27, x17, x6
    or x24, x26, x2
    mul x18, x5, x16
    sltu x5, x18, x4
    sltiu x28, x14, 177
    srli x6, x31, 30
    sltu x4, x20, x30
    mulh x30, x10, x26
    addi x30, x14, -1549
    slt x24, x16, x3
    add x2, x12, x25
    xori x8, x19, 2047
    slli x8, x18, 21
    addi x3, x11, -2048
    xor x16, x12, x17
    or x24, x25, x28
    and x4, x12, x7
    ori x3, x15, 44
    add x27, x15, x5
    and x14, x30, x17
    xori x9, x15, -1652
    mulhu x6, x19, x8
    mulh x24, x5, x9
    mulhsu x5, x4, x25
    srli x18, x25, 16
    mulhsu x16, x1, x11
    xor x28, x22, x16
    ori x19, x16, 2047
    add x16, x21, x16
    slt x9, x6, x7
    mulh x19, x29, x20
    ori x7, x19, -1198
    sltiu x16, x8, -143
    sub x29, x9, x6
    slt x2, x6, x29
    slti x26, x21, 698
    xor x27, x4, x22
    mulhu x21, x13, x21
    srli x18, x23, 16
    ori x19, x19, 255
    add x10, x27, x22
    ori x26, x14, 1279
    mul x27, x4, x11
    sltiu x4, x26, 1067
    xori x11, x20, -1814
    and x6, x4, x20
    add x26, x27, x29
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

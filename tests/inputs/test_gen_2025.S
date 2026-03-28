# Auto-generated test seed=2025
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
    sltiu x27, x16, -2045
    xori x19, x8, 2047
    add x25, x7, x13
    add x20, x1, x18
    andi x25, x7, 0
    mulhsu x30, x15, x12
    addi x20, x4, -343
    xor x2, x4, x26
    and x3, x19, x15
    srli x27, x31, 11
    mulhu x17, x15, x18
    srli x13, x23, 4
    srai x14, x21, 1
    srai x27, x8, 22
    xor x20, x10, x6
    mulhu x10, x12, x3
    sltiu x27, x9, -833
    slt x20, x18, x26
    slti x19, x5, 1095
    mulh x10, x19, x1
    slti x14, x22, 0
    sub x21, x15, x28
    andi x9, x17, -2048
    andi x31, x6, -94
    srli x22, x30, 8
    srli x24, x12, 9
    andi x20, x25, -538
    xor x5, x8, x22
    sltiu x26, x28, -179
    sltu x12, x24, x23
    mulhu x12, x17, x16
    add x30, x5, x10
    srli x20, x14, 26
    add x25, x21, x31
    sltu x29, x20, x5
    add x11, x8, x24
    slt x6, x23, x17
    addi x6, x9, -1557
    mul x30, x19, x4
    mulhu x25, x10, x8
    srai x9, x7, 3
    srai x19, x14, 18
    sltiu x11, x7, 1711
    sltiu x22, x2, 1769
    sltiu x29, x23, 1155
    ori x14, x2, 310
    add x30, x30, x30
    xori x18, x12, 27
    slt x12, x30, x25
    andi x18, x23, 469
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

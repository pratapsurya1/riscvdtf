# Auto-generated test seed=2070
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
    addi x3, x25, -1306
    andi x26, x3, 0
    or x17, x3, x22
    ori x1, x29, -2048
    ori x16, x8, 1239
    srli x4, x26, 22
    andi x11, x25, 1377
    mul x3, x16, x17
    slti x27, x20, 564
    mulhsu x26, x14, x16
    srai x27, x24, 16
    sub x26, x3, x29
    or x17, x16, x30
    slti x16, x28, 1511
    add x13, x23, x11
    add x13, x31, x29
    srli x26, x30, 31
    xori x17, x11, -31
    sub x4, x13, x25
    slt x28, x27, x14
    addi x23, x24, 659
    sltiu x13, x9, 161
    srai x23, x13, 24
    xori x12, x4, 1784
    or x6, x15, x9
    addi x4, x8, -198
    srli x5, x4, 5
    andi x4, x24, 1
    addi x7, x31, 983
    mulhu x31, x11, x12
    slli x1, x2, 19
    add x30, x10, x23
    slt x21, x27, x23
    or x29, x7, x13
    slti x6, x6, -1469
    andi x15, x8, -1449
    xor x16, x27, x7
    sltu x13, x16, x26
    sub x30, x31, x3
    or x10, x27, x24
    andi x28, x30, -473
    xori x11, x28, 2047
    slt x14, x5, x2
    ori x11, x1, 1289
    mulh x15, x22, x25
    mul x13, x24, x7
    xor x1, x23, x28
    ori x5, x11, -703
    addi x9, x9, -1369
    andi x17, x22, -674
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

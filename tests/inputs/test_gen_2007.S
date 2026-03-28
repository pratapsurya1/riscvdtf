# Auto-generated test seed=2007
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
    slt x25, x28, x3
    mulhu x6, x18, x23
    slt x3, x2, x16
    ori x19, x10, -1
    srli x22, x23, 21
    xori x16, x7, 0
    mulhsu x7, x31, x16
    slti x30, x2, -1
    mulh x30, x5, x26
    xor x13, x31, x20
    mulh x30, x4, x15
    xori x22, x29, -1
    srli x26, x12, 12
    sltiu x14, x30, -1604
    mulh x8, x20, x27
    mulh x5, x13, x19
    srli x30, x7, 6
    sltiu x25, x12, 2047
    and x10, x8, x16
    ori x19, x11, 1203
    sltu x12, x1, x28
    srli x4, x28, 20
    mulh x4, x16, x7
    sltu x17, x13, x8
    and x13, x31, x13
    srai x13, x7, 17
    addi x17, x12, 1363
    sub x27, x11, x5
    add x23, x27, x11
    sub x13, x17, x6
    slti x31, x20, 306
    srai x1, x23, 14
    xor x5, x12, x7
    addi x28, x19, -1324
    mulh x10, x21, x6
    addi x21, x6, 63
    and x3, x26, x22
    xori x8, x10, -256
    sub x16, x9, x8
    xori x19, x1, -2048
    srli x25, x8, 8
    ori x21, x11, -336
    andi x27, x28, 1
    sltiu x15, x1, -2048
    sltu x21, x13, x21
    srai x8, x27, 24
    srai x29, x28, 25
    sltiu x6, x4, 255
    sltu x13, x19, x1
    srli x25, x12, 8
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

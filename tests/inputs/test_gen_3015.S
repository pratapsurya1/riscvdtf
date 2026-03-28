# Auto-generated test seed=3015
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
    lui  x30, 0x100
    addi x30, x30, 0x500
    mulhu x2, x2, x28
    sltiu x13, x16, 1976
    srai x10, x9, 31
    mul x14, x19, x3
    or x20, x28, x1
    andi x23, x13, 1
    ori x10, x6, 1571
    sltiu x19, x16, -497
    add x1, x16, x4
    sub x16, x17, x7
    ori x7, x5, -1
    srli x22, x10, 9
    sw x20, 60(x30)
    sltiu x26, x13, -1981
    and x20, x7, x19
    slt x20, x1, x28
    addi x22, x13, 1628
    and x21, x10, x24
    or x4, x27, x25
    add x29, x15, x23
    sub x2, x14, x22
    xor x27, x25, x22
    srai x7, x29, 7
    or x26, x19, x28
    srai x25, x12, 22
    sltu x15, x17, x7
    xor x12, x9, x10
    srli x1, x27, 30
    slli x24, x26, 8
    ori x3, x28, 1450
    andi x15, x4, -1311
    sub x6, x20, x1
    slt x8, x11, x27
    sltiu x21, x16, -1450
    mul x3, x6, x19
    sb x7, 20(x30)
    lb x9, 22(x30)
    mulhsu x7, x3, x6
    slli x20, x24, 0
    srai x8, x15, 26
    add x2, x12, x26
    mulh x8, x8, x24
    sb x6, 29(x30)
    sltu x13, x15, x19
    mulhu x17, x15, x28
    srai x12, x26, 1
    or x2, x8, x24
    mulh x7, x12, x5
    sub x5, x21, x12
    lb x16, 1(x30)
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
# Scratch buffer for load/store at fixed address 0x100500
.section .scratch, "aw"
.align 4
.globl scratch_buf
scratch_buf: .space 64

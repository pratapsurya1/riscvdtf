# Auto-generated test seed=3007
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
    srli x17, x16, 27
    add x12, x15, x15
    ori x16, x1, 255
    xori x5, x14, 369
    sw x19, 56(x30)
    add x18, x13, x26
    mul x17, x20, x11
    mul x17, x9, x3
    sw x24, 16(x30)
    andi x8, x2, 1244
    lb x23, 24(x30)
    xor x7, x27, x11
    addi x22, x9, 1954
    xor x6, x13, x23
    sub x20, x7, x27
    srai x7, x27, 10
    xor x9, x14, x6
    addi x9, x16, 839
    slt x20, x23, x24
    slti x16, x10, 188
    slli x4, x9, 18
    and x25, x22, x17
    ori x2, x23, -2013
    mulh x25, x22, x1
    lb x14, 1(x30)
    lw x27, 28(x30)
    sb x5, 11(x30)
    slti x13, x10, 255
    lb x2, 26(x30)
    xori x14, x26, -330
    xori x21, x14, 448
    srai x11, x9, 23
    slti x24, x27, 1629
    mulhsu x1, x21, x18
    mul x10, x5, x28
    ori x21, x15, 1
    mulhu x3, x26, x23
    sb x25, 40(x30)
    sw x4, 20(x30)
    mulh x12, x27, x12
    mulhsu x1, x11, x27
    sub x11, x3, x24
    ori x10, x27, 222
    slti x28, x28, -2048
    sltu x25, x18, x26
    sb x6, 33(x30)
    sw x6, 36(x30)
    add x16, x10, x7
    sub x25, x25, x20
    sb x22, 52(x30)
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

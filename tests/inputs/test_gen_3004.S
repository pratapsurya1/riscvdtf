# Auto-generated test seed=3004
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
    andi x23, x3, -1808
    mul x2, x19, x12
    sub x26, x13, x16
    mul x22, x28, x11
    srai x1, x22, 22
    slt x9, x23, x12
    mulhu x28, x4, x27
    mulh x12, x11, x5
    mulhsu x24, x1, x25
    and x20, x15, x4
    sb x12, 24(x30)
    sltiu x27, x17, 1585
    mulhu x29, x9, x3
    or x22, x10, x16
    sb x3, 57(x30)
    add x27, x19, x29
    sltu x18, x29, x9
    mulhu x29, x16, x10
    lw x26, 56(x30)
    mulhu x15, x14, x25
    mulhsu x21, x11, x25
    and x28, x4, x12
    mulhsu x14, x1, x28
    xor x17, x9, x3
    sub x14, x7, x21
    mulhu x14, x28, x16
    slt x9, x18, x21
    lb x8, 43(x30)
    sw x16, 44(x30)
    mulh x12, x9, x29
    add x18, x7, x29
    add x28, x8, x12
    slli x6, x1, 28
    sw x18, 4(x30)
    srli x20, x20, 18
    or x25, x12, x13
    lw x17, 48(x30)
    sub x26, x23, x15
    sub x1, x13, x12
    slt x19, x8, x2
    sb x22, 47(x30)
    mulhsu x24, x11, x14
    and x10, x12, x15
    and x21, x19, x8
    sltu x23, x6, x8
    addi x15, x10, 4
    xor x17, x7, x17
    sltiu x18, x26, 1
    srli x18, x27, 9
    xor x28, x20, x7
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

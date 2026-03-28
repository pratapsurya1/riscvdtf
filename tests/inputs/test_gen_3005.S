# Auto-generated test seed=3005
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
    mulhsu x11, x16, x7
    slt x1, x23, x18
    addi x29, x23, -1695
    mulhsu x27, x15, x7
    mulhsu x6, x11, x9
    sltu x22, x5, x3
    slt x15, x16, x27
    sb x17, 13(x30)
    srli x10, x21, 17
    xor x16, x4, x19
    slt x23, x21, x6
    slt x28, x10, x15
    slt x7, x28, x24
    andi x27, x12, -574
    mulhu x6, x22, x20
    addi x27, x14, 1739
    lw x16, 48(x30)
    mulhu x28, x8, x9
    lw x26, 24(x30)
    sw x13, 36(x30)
    or x25, x16, x4
    xor x14, x11, x11
    sb x9, 33(x30)
    or x6, x2, x24
    lb x26, 6(x30)
    slt x16, x5, x8
    sltu x16, x22, x20
    mulh x20, x12, x18
    sub x3, x28, x21
    lb x8, 57(x30)
    and x21, x4, x20
    sub x4, x27, x15
    sw x8, 20(x30)
    sltu x28, x27, x7
    andi x8, x15, 2041
    andi x9, x6, 263
    sltu x21, x16, x27
    and x28, x10, x3
    or x10, x29, x10
    slt x21, x11, x12
    and x22, x18, x6
    mul x21, x19, x16
    slt x20, x24, x24
    srli x8, x17, 9
    sltu x2, x22, x21
    sub x24, x7, x25
    srli x19, x6, 17
    sltu x1, x14, x22
    sb x14, 39(x30)
    xor x18, x27, x2
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

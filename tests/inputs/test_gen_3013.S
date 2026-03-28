# Auto-generated test seed=3013
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
    mulhsu x23, x2, x28
    sub x23, x5, x5
    srai x6, x18, 25
    sb x3, 21(x30)
    ori x28, x13, -1820
    and x7, x14, x29
    andi x14, x12, -1275
    sb x17, 9(x30)
    sw x28, 48(x30)
    xor x1, x12, x7
    sw x11, 16(x30)
    mulh x26, x2, x25
    sltu x16, x20, x17
    xor x8, x26, x9
    sw x11, 48(x30)
    lw x5, 20(x30)
    or x2, x29, x11
    sub x2, x9, x1
    srli x19, x7, 8
    mulhu x7, x20, x29
    andi x1, x12, -1240
    sltiu x1, x19, 1394
    addi x15, x20, 0
    lb x2, 38(x30)
    srai x3, x29, 9
    slti x4, x20, 386
    xor x6, x2, x24
    mul x27, x15, x28
    or x18, x13, x11
    lw x17, 52(x30)
    lw x8, 16(x30)
    or x7, x26, x6
    mulh x26, x19, x13
    mul x27, x28, x29
    ori x27, x7, -295
    sub x2, x10, x7
    slli x9, x4, 20
    slli x5, x6, 0
    or x19, x6, x20
    srai x27, x9, 1
    ori x10, x5, 848
    mulh x16, x20, x20
    sltu x12, x21, x13
    srai x29, x7, 12
    addi x20, x1, 1105
    slti x19, x5, 1
    srai x6, x15, 2
    andi x24, x22, -2048
    mulhsu x11, x25, x16
    addi x23, x12, 645
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

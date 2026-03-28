# Auto-generated test seed=3006
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
    mul x19, x10, x17
    andi x25, x23, 775
    addi x11, x29, 955
    or x9, x29, x21
    srli x27, x27, 8
    mulhu x5, x27, x2
    sb x29, 44(x30)
    xori x4, x25, -1
    srli x9, x5, 25
    xor x4, x10, x16
    sw x3, 8(x30)
    andi x3, x13, -1
    xori x26, x13, 635
    srli x4, x6, 16
    slti x7, x28, 1404
    sw x27, 4(x30)
    srli x18, x1, 22
    lw x10, 4(x30)
    slti x21, x23, 1787
    srli x18, x20, 8
    lb x7, 2(x30)
    xori x3, x29, -304
    addi x24, x1, -2048
    xor x20, x22, x14
    xor x21, x14, x25
    mulhu x20, x5, x17
    xori x23, x17, 344
    mulhsu x8, x18, x21
    slli x3, x11, 11
    sw x27, 40(x30)
    srai x8, x9, 3
    slt x26, x16, x1
    sw x28, 52(x30)
    lw x14, 20(x30)
    or x9, x11, x17
    add x29, x1, x2
    lb x7, 15(x30)
    mulh x2, x14, x14
    mulh x23, x12, x22
    and x23, x27, x4
    srai x8, x18, 21
    addi x4, x2, 1345
    sw x4, 8(x30)
    sltu x23, x5, x8
    ori x27, x29, 0
    addi x18, x29, -357
    sub x15, x2, x3
    sltu x25, x25, x12
    add x25, x7, x28
    xor x3, x6, x4
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

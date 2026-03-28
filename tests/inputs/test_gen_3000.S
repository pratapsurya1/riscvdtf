# Auto-generated test seed=3000
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
    srli x3, x9, 19
    slt x24, x15, x10
    xor x22, x7, x23
    sltu x26, x24, x17
    slti x21, x14, 939
    sw x25, 48(x30)
    sltiu x25, x11, 605
    sw x28, 8(x30)
    sb x15, 15(x30)
    xor x19, x3, x21
    mulhsu x6, x15, x26
    sltiu x28, x7, 383
    lw x3, 24(x30)
    xor x6, x29, x11
    srai x8, x5, 20
    sltu x8, x18, x1
    srai x14, x3, 12
    slli x5, x10, 1
    slli x5, x10, 26
    mulhu x5, x27, x1
    mul x17, x1, x5
    mulhsu x1, x28, x12
    lb x22, 19(x30)
    xor x18, x15, x16
    srli x15, x24, 25
    xor x3, x22, x4
    addi x6, x24, 1488
    xor x13, x5, x29
    lw x29, 24(x30)
    xor x16, x13, x9
    srai x25, x5, 16
    sltiu x24, x12, 2033
    srai x6, x7, 20
    srli x23, x28, 3
    addi x14, x21, -630
    lw x18, 60(x30)
    andi x29, x12, 563
    mulhu x29, x20, x8
    lw x27, 24(x30)
    and x11, x15, x22
    mulh x23, x1, x28
    or x21, x15, x4
    ori x11, x26, 1174
    srai x23, x9, 9
    srai x18, x18, 25
    mulhsu x15, x24, x11
    mulhsu x29, x1, x1
    slti x11, x12, 88
    ori x20, x9, 1092
    slti x5, x7, -16
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

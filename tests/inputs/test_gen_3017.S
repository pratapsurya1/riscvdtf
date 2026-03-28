# Auto-generated test seed=3017
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
    slli x17, x26, 1
    slti x26, x24, 926
    lb x12, 42(x30)
    mul x16, x11, x14
    add x22, x9, x18
    and x15, x29, x9
    xor x2, x12, x15
    srli x20, x24, 27
    sub x13, x18, x19
    sub x9, x26, x22
    sub x5, x20, x17
    slli x29, x28, 2
    lb x21, 41(x30)
    sltiu x26, x28, 255
    add x18, x20, x16
    mulhu x29, x26, x18
    sub x8, x23, x28
    sltiu x13, x24, -777
    slt x5, x4, x20
    andi x20, x6, 255
    srli x14, x9, 0
    ori x21, x19, 99
    add x6, x5, x21
    or x13, x1, x8
    and x25, x19, x2
    mulh x27, x3, x28
    sb x23, 11(x30)
    add x16, x27, x9
    mulhsu x21, x5, x7
    lb x3, 0(x30)
    lb x12, 23(x30)
    lw x4, 36(x30)
    xori x9, x3, 1008
    add x2, x14, x3
    slti x6, x15, -2026
    mul x6, x24, x19
    sltu x7, x13, x28
    andi x25, x22, 255
    slli x25, x27, 10
    lw x29, 56(x30)
    and x17, x28, x4
    srai x17, x17, 15
    ori x15, x20, 2047
    mulhu x19, x14, x25
    andi x9, x27, -1117
    mulh x10, x18, x4
    mulhsu x19, x2, x21
    or x10, x8, x3
    srli x3, x15, 28
    mulh x12, x1, x22
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

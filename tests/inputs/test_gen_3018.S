# Auto-generated test seed=3018
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
    ori x24, x25, 0
    sub x2, x12, x1
    sltiu x3, x24, -1103
    add x12, x22, x15
    or x26, x8, x12
    sltu x10, x9, x25
    ori x19, x19, -1025
    andi x27, x14, -1
    xor x10, x17, x27
    xor x25, x26, x22
    mul x23, x11, x16
    lw x1, 44(x30)
    and x8, x15, x23
    mulhsu x4, x11, x1
    xor x16, x12, x14
    mulhu x5, x25, x3
    xori x1, x19, 843
    sub x25, x10, x21
    lw x2, 4(x30)
    and x5, x17, x18
    sub x4, x26, x29
    mulhsu x7, x21, x3
    xori x4, x4, 0
    andi x4, x19, -1941
    mulhu x29, x28, x8
    mulhsu x28, x14, x1
    srai x9, x8, 29
    sub x29, x20, x14
    srai x2, x18, 12
    andi x23, x25, -1073
    sltiu x4, x23, 1813
    srai x17, x25, 19
    slli x19, x22, 14
    lw x21, 28(x30)
    addi x14, x8, 1286
    sub x19, x29, x16
    sltu x12, x19, x27
    ori x13, x23, 476
    or x7, x4, x28
    andi x21, x9, -1
    sb x9, 58(x30)
    mulh x5, x25, x29
    xor x5, x17, x3
    or x3, x17, x9
    sw x3, 8(x30)
    lw x12, 12(x30)
    slli x5, x20, 13
    xori x11, x6, 1
    sltiu x16, x28, 1732
    xori x6, x17, -998
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

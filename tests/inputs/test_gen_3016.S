# Auto-generated test seed=3016
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
    mulhu x28, x2, x14
    sub x20, x13, x10
    slti x11, x4, -1012
    andi x6, x16, 2047
    sltu x8, x18, x6
    sw x21, 20(x30)
    mul x9, x6, x26
    or x9, x23, x25
    sub x19, x15, x16
    slti x22, x19, 845
    xor x28, x24, x3
    or x2, x4, x28
    mul x16, x2, x16
    mul x16, x6, x19
    mulhu x14, x18, x5
    xori x23, x13, 649
    sw x29, 4(x30)
    sub x19, x16, x5
    mulhsu x20, x11, x5
    xori x3, x22, -1
    xori x2, x12, 2047
    mul x14, x17, x4
    srai x10, x11, 20
    add x3, x9, x18
    lw x4, 36(x30)
    sub x16, x15, x23
    andi x8, x2, 769
    addi x19, x14, 1725
    slti x5, x6, -335
    mul x2, x25, x6
    addi x19, x4, 509
    mul x8, x27, x12
    mulhu x2, x7, x22
    add x26, x3, x29
    sb x11, 60(x30)
    add x20, x26, x18
    mulhsu x1, x24, x6
    xori x1, x13, -1
    srli x28, x10, 8
    sub x5, x17, x2
    ori x21, x13, -2048
    addi x5, x1, 1
    addi x4, x28, 372
    mulhsu x19, x5, x17
    xor x16, x19, x22
    mul x27, x18, x23
    slli x7, x11, 19
    sltu x14, x24, x14
    sb x5, 4(x30)
    xor x6, x17, x10
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

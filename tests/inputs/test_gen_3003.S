# Auto-generated test seed=3003
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
    srai x8, x22, 17
    srai x2, x12, 22
    sub x22, x18, x5
    sltu x26, x23, x5
    add x12, x24, x28
    slti x1, x26, -1680
    sub x16, x18, x17
    mulh x5, x7, x15
    slli x11, x20, 19
    add x4, x26, x21
    add x21, x15, x28
    mulhu x4, x5, x5
    ori x1, x12, -1950
    xori x29, x5, -1292
    xori x19, x3, -1763
    mulh x17, x21, x8
    lb x15, 6(x30)
    mulhsu x10, x22, x24
    srai x9, x27, 12
    mulhu x7, x9, x24
    sltu x7, x20, x27
    andi x12, x25, 2047
    slti x13, x25, -817
    sltiu x6, x3, 138
    mulhsu x28, x11, x14
    addi x27, x13, -1826
    mul x14, x11, x8
    xor x1, x28, x16
    xor x22, x3, x26
    xor x28, x10, x11
    and x17, x28, x16
    xor x5, x20, x29
    lw x17, 40(x30)
    sltu x1, x26, x29
    srai x27, x9, 7
    addi x7, x19, 2047
    lb x16, 13(x30)
    sltu x29, x9, x28
    srli x18, x19, 28
    and x22, x2, x21
    sub x15, x13, x5
    slt x14, x26, x12
    mulh x6, x10, x8
    mulhsu x22, x24, x21
    addi x15, x22, -2048
    mulh x11, x6, x14
    add x19, x9, x10
    mulhu x27, x12, x24
    mulhsu x18, x16, x13
    or x21, x29, x19
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

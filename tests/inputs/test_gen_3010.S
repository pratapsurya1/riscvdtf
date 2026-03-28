# Auto-generated test seed=3010
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
    srai x12, x23, 23
    lw x5, 52(x30)
    sltiu x13, x22, -65
    or x13, x9, x16
    slli x5, x14, 1
    slt x25, x1, x8
    slli x19, x13, 10
    srli x19, x24, 7
    andi x4, x22, 221
    lw x25, 52(x30)
    sb x19, 57(x30)
    sw x8, 20(x30)
    xori x20, x21, 71
    and x29, x15, x2
    xor x3, x8, x10
    lw x9, 32(x30)
    slti x4, x14, 1933
    mulhu x24, x12, x9
    sub x17, x16, x27
    slli x27, x15, 17
    ori x8, x9, 533
    ori x24, x1, 1
    sw x9, 48(x30)
    or x7, x2, x7
    sltu x1, x28, x6
    sub x11, x10, x21
    mulh x19, x29, x2
    andi x27, x19, 1061
    slt x23, x17, x3
    mulh x6, x9, x3
    addi x26, x10, 255
    xori x6, x3, -1862
    srai x27, x28, 20
    srai x22, x10, 3
    xor x29, x12, x18
    xori x23, x26, 2040
    srai x10, x28, 1
    sub x3, x23, x25
    sub x5, x15, x26
    slti x18, x6, -215
    sw x15, 4(x30)
    slt x26, x12, x5
    and x8, x2, x11
    srli x21, x18, 14
    andi x21, x13, 1777
    and x13, x8, x2
    sb x1, 47(x30)
    sb x3, 35(x30)
    lb x21, 51(x30)
    mulhu x4, x26, x11
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

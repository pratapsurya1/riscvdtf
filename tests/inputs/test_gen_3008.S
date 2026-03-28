# Auto-generated test seed=3008
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
    add x6, x14, x3
    slt x12, x3, x3
    lb x27, 18(x30)
    srai x15, x14, 7
    lw x28, 4(x30)
    srli x22, x6, 30
    lb x6, 8(x30)
    and x5, x11, x22
    mulh x3, x15, x7
    lb x21, 5(x30)
    sltiu x21, x16, -253
    slt x17, x16, x5
    mulh x26, x27, x14
    or x8, x18, x7
    andi x20, x15, 1739
    slli x1, x4, 17
    sltu x3, x25, x24
    slt x3, x23, x14
    mulhsu x11, x8, x1
    slli x25, x6, 27
    sw x13, 12(x30)
    slti x9, x13, 2047
    slti x19, x10, 1
    srai x6, x12, 19
    lb x4, 27(x30)
    srai x10, x7, 29
    xor x9, x19, x1
    sltu x18, x20, x19
    lb x20, 55(x30)
    slt x19, x26, x2
    add x26, x27, x4
    sb x10, 16(x30)
    sub x15, x15, x9
    srai x15, x28, 1
    srli x6, x3, 21
    sb x2, 6(x30)
    sub x7, x17, x12
    andi x29, x9, -1607
    add x7, x3, x20
    sw x16, 36(x30)
    slti x7, x16, -1097
    and x18, x24, x25
    sub x4, x6, x18
    srai x28, x11, 27
    sub x28, x6, x11
    sb x8, 59(x30)
    srai x16, x5, 21
    sub x3, x12, x10
    add x24, x21, x25
    srai x11, x1, 22
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

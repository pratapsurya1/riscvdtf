# Auto-generated test seed=3014
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
    xor x8, x24, x29
    slt x13, x16, x1
    andi x10, x5, 0
    xori x13, x25, 1842
    mul x21, x21, x17
    sltu x24, x23, x3
    srli x8, x23, 25
    sw x1, 28(x30)
    or x19, x26, x18
    mulh x23, x24, x19
    or x4, x28, x29
    mulhsu x3, x3, x29
    sw x4, 48(x30)
    andi x21, x21, 1555
    sb x18, 57(x30)
    slt x10, x9, x19
    and x23, x19, x7
    xori x16, x1, 255
    sw x17, 56(x30)
    and x11, x22, x5
    sw x29, 20(x30)
    or x5, x8, x26
    lw x1, 44(x30)
    srli x25, x7, 15
    srli x14, x16, 7
    addi x13, x11, 1263
    slt x19, x11, x22
    slt x10, x17, x11
    xori x15, x9, -1469
    ori x13, x28, -1
    and x5, x9, x22
    slli x6, x28, 19
    addi x28, x6, 0
    slli x12, x4, 19
    srai x6, x25, 6
    srai x13, x18, 16
    add x18, x16, x4
    xor x13, x8, x28
    xori x7, x15, -1767
    sb x6, 9(x30)
    and x4, x13, x13
    andi x13, x12, 1533
    sltiu x7, x23, 0
    addi x17, x21, 2047
    xor x21, x23, x23
    mulhu x27, x29, x26
    lw x1, 4(x30)
    sb x6, 52(x30)
    slti x29, x15, 756
    xor x2, x24, x29
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

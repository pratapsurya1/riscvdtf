# Auto-generated test seed=3011
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
    slt x23, x17, x6
    sw x3, 32(x30)
    slti x10, x29, -1
    or x8, x7, x4
    slti x23, x27, 516
    xor x14, x26, x21
    mulhsu x23, x16, x15
    mul x6, x27, x23
    slli x18, x27, 9
    sub x24, x16, x14
    and x7, x14, x24
    sw x28, 32(x30)
    lb x26, 28(x30)
    lb x21, 4(x30)
    sltu x13, x23, x17
    or x8, x8, x11
    mulhsu x1, x19, x2
    mul x29, x12, x27
    sb x10, 51(x30)
    sltu x8, x13, x5
    add x10, x16, x2
    sltiu x24, x12, 1405
    mulhsu x12, x14, x4
    mulh x25, x22, x3
    slt x17, x20, x17
    sltu x8, x19, x27
    xor x6, x4, x4
    sltiu x17, x10, 826
    srli x3, x16, 6
    sb x8, 45(x30)
    add x3, x10, x22
    sub x28, x1, x18
    add x5, x9, x10
    and x21, x23, x13
    sub x19, x16, x28
    slli x3, x1, 21
    sb x15, 14(x30)
    slli x20, x21, 19
    mulh x23, x4, x7
    and x26, x6, x25
    slti x3, x20, -1798
    slli x12, x3, 30
    slti x20, x19, 603
    slli x10, x11, 16
    xor x14, x4, x17
    sw x15, 16(x30)
    xor x29, x27, x27
    lb x24, 44(x30)
    srli x20, x13, 10
    srai x4, x3, 11
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

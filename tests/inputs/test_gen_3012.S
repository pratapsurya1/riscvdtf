# Auto-generated test seed=3012
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
    sltu x16, x7, x24
    mul x10, x27, x27
    sltu x7, x4, x23
    srai x7, x27, 17
    sb x27, 51(x30)
    srai x28, x15, 30
    slti x24, x14, 1772
    andi x3, x6, -2048
    andi x2, x13, 279
    ori x27, x26, -1
    ori x21, x4, -98
    slt x9, x28, x9
    mulhsu x7, x25, x18
    mulhu x20, x19, x20
    slti x20, x23, -1825
    sw x9, 48(x30)
    sltiu x26, x13, -968
    mul x7, x27, x4
    slli x16, x26, 17
    or x3, x7, x13
    addi x13, x21, -1677
    mul x7, x15, x14
    mul x11, x5, x18
    mulh x11, x4, x27
    lw x6, 8(x30)
    sw x10, 52(x30)
    lw x1, 24(x30)
    lb x6, 23(x30)
    sltu x28, x17, x11
    andi x23, x6, 23
    slti x28, x11, -1522
    and x10, x8, x25
    addi x28, x3, -1929
    add x9, x20, x1
    lw x10, 24(x30)
    mulh x22, x23, x12
    ori x5, x12, 53
    sltiu x5, x17, 0
    slli x3, x26, 25
    srai x1, x18, 2
    lw x19, 44(x30)
    xor x26, x20, x18
    srli x1, x26, 23
    xor x25, x29, x20
    slli x21, x15, 20
    sb x17, 11(x30)
    or x19, x7, x5
    mulh x15, x29, x1
    mulh x26, x5, x11
    addi x10, x10, 998
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

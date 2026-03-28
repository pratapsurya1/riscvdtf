# Auto-generated test seed=3001
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
    or x5, x12, x26
    and x12, x22, x11
    xori x26, x20, -315
    lw x26, 0(x30)
    andi x9, x14, 1646
    ori x29, x16, 1
    mulh x12, x14, x20
    add x19, x10, x14
    mulh x25, x28, x13
    lb x26, 18(x30)
    srli x6, x23, 23
    slt x18, x21, x6
    sltiu x1, x5, -48
    and x9, x8, x26
    sw x10, 48(x30)
    andi x18, x12, -200
    ori x12, x11, 1
    srai x12, x20, 11
    xori x8, x12, -1310
    slli x24, x23, 3
    ori x6, x1, -903
    sltiu x10, x16, -1817
    mulh x28, x6, x18
    lw x2, 28(x30)
    lw x8, 24(x30)
    slli x1, x13, 8
    sw x7, 32(x30)
    xor x7, x24, x4
    lw x9, 8(x30)
    lw x24, 40(x30)
    mulh x22, x15, x4
    ori x13, x19, -1287
    xor x7, x21, x28
    andi x17, x4, -387
    add x20, x29, x2
    sltu x10, x26, x24
    sltiu x14, x23, 1266
    andi x28, x21, -2048
    sltiu x25, x13, -1968
    mul x4, x8, x23
    xori x1, x10, -1
    addi x5, x9, -2048
    xor x18, x17, x14
    srai x3, x4, 0
    sw x23, 60(x30)
    lb x1, 43(x30)
    sltiu x19, x13, 1322
    xori x26, x17, -219
    slti x19, x19, -2048
    xori x8, x22, 1999
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

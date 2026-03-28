# Auto-generated test seed=3002
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
    slt x27, x13, x1
    or x24, x19, x15
    mul x6, x11, x1
    srli x14, x4, 25
    andi x4, x4, 1474
    mulhu x17, x21, x29
    and x8, x27, x14
    or x2, x19, x3
    add x19, x27, x6
    add x24, x15, x28
    mul x12, x27, x6
    lb x29, 19(x30)
    lw x11, 12(x30)
    mul x3, x5, x1
    slti x15, x27, 0
    sw x19, 44(x30)
    sw x12, 4(x30)
    xor x19, x10, x23
    lw x20, 12(x30)
    ori x19, x24, 1
    addi x12, x21, 314
    ori x27, x2, -2048
    sub x22, x5, x6
    xor x6, x19, x19
    xori x26, x26, -395
    mul x12, x22, x5
    slli x25, x14, 0
    srai x24, x13, 28
    sub x24, x12, x27
    lw x8, 40(x30)
    slti x15, x21, 1660
    sb x15, 48(x30)
    slt x15, x14, x28
    or x22, x29, x20
    sltiu x15, x10, 1641
    ori x4, x6, 1572
    or x16, x22, x4
    sw x28, 24(x30)
    add x6, x26, x17
    sw x15, 36(x30)
    sub x6, x24, x27
    mulhsu x6, x13, x27
    mulhsu x22, x2, x4
    xori x19, x13, -2048
    sltu x27, x25, x17
    and x11, x23, x20
    ori x19, x5, 1470
    sltu x5, x19, x10
    xori x24, x20, -2048
    mulhu x21, x15, x17
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

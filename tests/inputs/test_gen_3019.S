# Auto-generated test seed=3019
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
    andi x21, x27, -1438
    sltiu x11, x2, -1164
    mulhsu x29, x9, x18
    sub x25, x27, x17
    or x9, x21, x28
    mulhu x22, x18, x27
    ori x1, x2, -1406
    xor x3, x8, x12
    mul x22, x29, x21
    ori x22, x4, -1
    slti x11, x2, 255
    slti x27, x25, -1
    sub x26, x7, x27
    lw x18, 12(x30)
    sb x29, 40(x30)
    srli x19, x18, 14
    ori x25, x25, 255
    xor x19, x9, x22
    andi x9, x15, 679
    sltu x12, x18, x2
    sltiu x21, x25, -676
    sltu x2, x1, x7
    ori x14, x2, -2048
    lb x23, 5(x30)
    sub x14, x15, x7
    slli x21, x17, 20
    mul x2, x18, x4
    xor x21, x20, x9
    slti x29, x12, 149
    mulhsu x1, x18, x5
    mulhu x19, x5, x13
    mulhu x18, x15, x1
    mulhsu x13, x25, x25
    lb x11, 38(x30)
    ori x16, x22, 1898
    xor x22, x16, x23
    mulhsu x29, x20, x25
    ori x27, x8, 745
    sltu x13, x17, x26
    slt x3, x8, x11
    slt x2, x28, x16
    sltu x20, x12, x26
    mulhu x5, x7, x20
    slti x2, x19, 2047
    mulhu x26, x20, x23
    srli x7, x18, 17
    sb x10, 50(x30)
    ori x13, x14, 1
    addi x24, x1, 2047
    or x16, x6, x23
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

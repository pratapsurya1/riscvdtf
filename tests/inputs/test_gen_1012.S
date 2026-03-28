# Auto-generated test seed=1012
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
    sub x13, x7, x20
    and x21, x28, x14
    andi x21, x5, -1994
    addi x16, x20, 1145
    ori x27, x6, 2047
    mulh x16, x21, x27
    andi x4, x24, -1
    mulhu x29, x23, x30
    add x8, x26, x17
    sltu x7, x8, x30
    slli x25, x6, 15
    slti x22, x27, 1271
    ori x26, x22, -798
    addi x23, x6, 255
    sub x8, x2, x23
    sltu x2, x9, x29
    xor x25, x11, x20
    mul x31, x22, x17
    addi x19, x13, 529
    andi x24, x10, 418
    sub x24, x17, x10
    srai x8, x29, 25
    sub x6, x12, x12
    mulhu x5, x21, x16
    slt x23, x6, x19
    srai x16, x31, 28
    and x23, x22, x14
    andi x21, x11, 255
    add x28, x22, x28
    mulhu x24, x11, x25
    slli x29, x23, 9
    ori x14, x16, 455
    ori x16, x6, 68
    slt x9, x31, x30
    add x26, x2, x31
    sub x2, x9, x15
    mulhu x1, x1, x1
    srli x7, x14, 20
    add x13, x4, x19
    xor x26, x12, x13
    slti x30, x31, 1
    xor x19, x18, x24
    sltiu x8, x9, 2047
    mulhsu x6, x25, x29
    mulhu x18, x28, x21
    slt x8, x2, x15
    addi x26, x23, -821
    xor x30, x10, x20
    sub x24, x26, x25
    ori x31, x22, -2048
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

# Auto-generated test seed=1008
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
    xori x11, x3, -1209
    slt x23, x27, x5
    mul x19, x12, x22
    sltu x28, x11, x9
    sub x18, x2, x7
    add x8, x13, x12
    add x5, x26, x8
    andi x30, x27, 255
    ori x25, x29, 1
    slti x11, x22, 944
    xori x25, x12, -2048
    sub x10, x2, x8
    ori x15, x25, 1970
    slti x21, x30, 255
    slli x18, x25, 30
    add x5, x2, x17
    or x31, x21, x12
    sltu x17, x10, x22
    sub x25, x27, x11
    add x1, x12, x21
    srai x28, x5, 0
    andi x5, x27, 1515
    srai x18, x19, 16
    slt x22, x11, x9
    slli x16, x26, 15
    andi x27, x13, 1610
    andi x17, x14, 1
    slt x9, x16, x28
    add x12, x30, x1
    sltiu x1, x26, -844
    srai x24, x27, 0
    mulhsu x26, x27, x20
    slli x29, x15, 27
    add x24, x30, x3
    and x11, x9, x20
    xori x8, x11, -1837
    or x18, x27, x4
    slti x4, x10, -2048
    add x17, x29, x13
    xor x10, x25, x24
    and x9, x10, x9
    sltu x2, x5, x17
    mulh x20, x12, x30
    mul x7, x2, x16
    srai x1, x8, 19
    slli x1, x29, 6
    sub x2, x9, x1
    or x11, x16, x3
    sub x15, x7, x19
    or x29, x22, x8
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

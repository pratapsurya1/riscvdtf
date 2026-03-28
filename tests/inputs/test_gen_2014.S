# Auto-generated test seed=2014
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
    or x7, x30, x11
    mulhsu x14, x23, x16
    or x12, x5, x28
    srai x15, x6, 30
    add x3, x5, x8
    sltiu x9, x21, 1223
    slli x6, x25, 18
    srli x23, x13, 17
    addi x21, x4, -1896
    add x27, x18, x21
    slt x10, x11, x18
    sub x4, x7, x8
    addi x1, x27, -1
    slli x2, x26, 22
    sub x14, x28, x29
    mulhsu x23, x2, x22
    mulh x13, x18, x13
    xori x9, x26, 859
    and x12, x2, x29
    slli x9, x12, 16
    xori x29, x15, -1899
    slti x23, x27, 1142
    add x14, x12, x1
    srai x14, x9, 9
    andi x12, x5, 255
    sub x30, x7, x3
    and x7, x1, x29
    and x18, x24, x5
    add x22, x23, x6
    mulh x9, x11, x9
    sub x29, x23, x21
    slli x15, x10, 19
    or x15, x11, x25
    slt x10, x12, x26
    mulhsu x23, x16, x5
    slti x26, x4, 146
    and x27, x2, x11
    sltiu x20, x11, -1066
    and x10, x25, x6
    or x3, x5, x27
    sltiu x25, x11, 1308
    sltu x14, x7, x31
    and x10, x31, x2
    slli x9, x12, 0
    srai x15, x24, 20
    sltiu x1, x14, 1
    mulh x18, x12, x31
    sltiu x19, x5, -399
    sltu x29, x19, x19
    mulhsu x30, x29, x17
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

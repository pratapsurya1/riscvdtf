# Auto-generated test seed=1000
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
    srai x25, x4, 25
    xori x6, x18, 1535
    slt x8, x12, x22
    andi x22, x22, 1704
    slt x24, x16, x5
    sltiu x23, x14, -402
    sltu x18, x15, x23
    mulh x18, x6, x29
    slli x9, x6, 18
    and x27, x1, x21
    mulhu x17, x25, x25
    andi x30, x10, -180
    xor x16, x29, x28
    or x15, x12, x16
    xori x11, x31, -1951
    or x21, x23, x3
    sltu x26, x1, x30
    mulh x7, x29, x5
    slti x28, x11, 713
    sltu x23, x16, x22
    sltu x13, x25, x3
    mulh x10, x29, x10
    srli x26, x11, 0
    slti x23, x6, 2047
    mulhsu x13, x13, x17
    mulhu x31, x29, x2
    sub x7, x4, x11
    sub x4, x3, x5
    andi x18, x11, 0
    andi x5, x25, 950
    andi x3, x16, 0
    xor x1, x20, x1
    sub x25, x25, x20
    xori x8, x16, 1
    mulhsu x23, x25, x30
    sltu x2, x15, x24
    sltiu x13, x3, 1912
    mulh x1, x14, x4
    mulhu x7, x11, x27
    sub x1, x8, x30
    srai x20, x5, 2
    xori x5, x28, -798
    srai x13, x25, 27
    xor x28, x8, x11
    and x13, x30, x11
    mulhsu x14, x20, x7
    and x24, x21, x14
    sltu x9, x27, x5
    xori x30, x6, 111
    mulhu x18, x3, x12
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

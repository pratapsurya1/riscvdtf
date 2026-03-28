# Auto-generated test seed=2096
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
    add x21, x31, x21
    srli x10, x27, 27
    srai x7, x8, 20
    srli x25, x21, 3
    mulh x7, x22, x14
    sub x5, x21, x19
    srai x31, x18, 12
    or x6, x20, x5
    srli x17, x13, 4
    mulh x7, x31, x26
    mulh x9, x4, x10
    srai x15, x29, 17
    add x12, x5, x17
    mulhu x24, x24, x2
    slti x31, x30, -1245
    mulhu x9, x12, x12
    sltu x24, x3, x7
    mulhu x7, x9, x13
    srai x14, x17, 14
    mulhu x9, x29, x31
    sub x11, x18, x28
    and x25, x29, x6
    ori x7, x20, 1295
    slti x10, x10, 0
    slti x21, x7, -1469
    ori x9, x20, 733
    addi x26, x23, 1232
    and x13, x3, x28
    or x25, x16, x23
    or x10, x8, x24
    mulhsu x2, x21, x19
    ori x20, x16, 255
    add x9, x29, x29
    srai x15, x23, 14
    and x26, x19, x18
    xori x14, x9, -681
    xor x24, x27, x22
    mulhu x14, x8, x24
    andi x24, x8, -571
    xori x29, x14, -520
    or x8, x3, x8
    mulhsu x13, x2, x30
    mulh x1, x5, x30
    or x26, x1, x11
    add x23, x21, x6
    mulhu x5, x19, x10
    slli x11, x14, 31
    slt x10, x13, x2
    xori x2, x26, -913
    ori x8, x7, 320
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

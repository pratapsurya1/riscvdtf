# Auto-generated test seed=2032
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
    mulhsu x4, x26, x15
    slt x6, x19, x19
    srli x2, x26, 13
    andi x6, x21, -71
    srai x14, x9, 13
    sub x18, x9, x21
    add x12, x11, x15
    mulh x11, x7, x25
    xori x5, x22, -855
    mulhu x9, x1, x25
    sltiu x19, x17, -2010
    slli x27, x25, 7
    sltu x7, x19, x5
    mulh x8, x24, x29
    andi x18, x12, 1549
    slti x17, x17, 0
    mulhsu x10, x1, x20
    srai x22, x25, 2
    mulhu x20, x19, x8
    srai x10, x6, 4
    andi x13, x30, -1393
    srli x25, x13, 1
    xori x17, x22, 1033
    mulh x5, x31, x24
    xor x20, x5, x28
    and x25, x12, x26
    srai x19, x8, 9
    andi x8, x9, -935
    mulhu x14, x8, x22
    slt x2, x31, x14
    and x13, x4, x15
    sub x17, x22, x10
    slli x11, x24, 15
    ori x20, x23, 0
    srai x18, x7, 13
    sltu x17, x16, x23
    ori x9, x17, 1253
    and x1, x2, x28
    mulhu x1, x14, x1
    ori x10, x10, 255
    xor x19, x31, x10
    andi x20, x10, 1683
    andi x15, x30, -2048
    mulhu x12, x23, x3
    add x12, x26, x12
    sltu x16, x26, x31
    srli x15, x24, 2
    addi x13, x17, -1
    addi x31, x27, -930
    slt x4, x25, x13
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

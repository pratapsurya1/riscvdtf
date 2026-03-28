# Auto-generated test seed=2012
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
    and x7, x11, x19
    sltu x29, x20, x31
    mulhu x16, x4, x9
    mulh x30, x16, x10
    mulhsu x21, x19, x19
    mulhu x18, x12, x19
    xor x1, x28, x7
    srli x1, x2, 26
    or x7, x12, x5
    xori x4, x19, 255
    mulhsu x17, x17, x11
    slli x27, x19, 26
    mulhu x25, x2, x15
    mulhsu x23, x28, x23
    srai x5, x5, 28
    or x16, x1, x5
    xor x31, x11, x30
    slli x1, x18, 2
    sltiu x24, x4, 1305
    slt x18, x23, x1
    slt x12, x22, x8
    slti x8, x10, -885
    slli x11, x30, 25
    srai x23, x3, 25
    add x30, x10, x30
    addi x5, x27, 159
    srai x26, x3, 2
    xori x23, x22, 255
    or x26, x23, x5
    sltiu x29, x23, 1098
    slti x27, x15, -24
    andi x16, x19, 1469
    mulh x14, x6, x12
    or x24, x8, x31
    and x26, x25, x15
    mulhsu x17, x3, x31
    add x17, x31, x10
    slt x12, x7, x5
    sub x6, x30, x20
    mulh x14, x23, x22
    slli x1, x21, 29
    add x16, x20, x2
    slt x18, x6, x1
    mulhsu x1, x6, x2
    add x7, x9, x12
    sltu x10, x24, x26
    sltu x21, x29, x31
    mulhsu x5, x24, x16
    xori x27, x31, 255
    mulhu x1, x17, x3
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

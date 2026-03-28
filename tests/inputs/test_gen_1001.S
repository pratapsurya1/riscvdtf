# Auto-generated test seed=1001
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
    slli x25, x25, 12
    mul x18, x29, x13
    srli x24, x12, 25
    slli x20, x29, 3
    slt x24, x30, x16
    srai x20, x24, 12
    mulh x1, x19, x29
    or x22, x5, x4
    mulhu x14, x19, x30
    xor x26, x13, x3
    sub x13, x2, x5
    mulh x1, x14, x19
    mulhu x7, x28, x30
    slli x18, x15, 13
    addi x12, x14, -1
    srai x28, x7, 2
    andi x17, x19, -1873
    srli x2, x21, 8
    slt x16, x29, x21
    mulhu x27, x4, x28
    mulh x25, x4, x16
    xor x17, x29, x12
    xor x11, x17, x11
    xori x9, x26, 656
    ori x17, x28, -265
    mulhu x5, x17, x6
    sub x26, x31, x9
    ori x3, x4, -1
    mul x28, x24, x8
    slli x7, x17, 29
    slti x28, x4, -328
    mul x22, x28, x26
    or x8, x7, x23
    srai x15, x5, 8
    ori x9, x24, 1622
    mul x30, x26, x16
    and x29, x14, x31
    slli x30, x6, 27
    mulhsu x17, x9, x30
    mulh x29, x4, x29
    mulhu x24, x31, x29
    slti x16, x16, 0
    sub x9, x1, x29
    slt x28, x28, x1
    mulhsu x10, x30, x20
    add x18, x1, x29
    slt x23, x30, x15
    and x20, x6, x8
    and x29, x24, x24
    xori x4, x20, 2047
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

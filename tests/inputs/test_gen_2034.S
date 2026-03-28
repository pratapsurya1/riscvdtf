# Auto-generated test seed=2034
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
    and x17, x26, x19
    add x29, x10, x1
    add x25, x12, x31
    sltu x8, x2, x6
    addi x7, x30, 2047
    ori x13, x1, -1805
    or x10, x6, x25
    mul x1, x27, x7
    xor x20, x28, x4
    add x20, x11, x24
    srai x7, x10, 15
    or x21, x10, x6
    srai x10, x20, 3
    and x1, x7, x22
    or x21, x22, x2
    mul x21, x18, x18
    slti x18, x29, 365
    sltiu x6, x27, -1
    mul x13, x1, x26
    mul x23, x8, x12
    sltu x13, x12, x3
    sub x8, x20, x24
    mulhu x20, x29, x18
    xor x4, x21, x20
    srli x31, x15, 25
    mulhsu x18, x2, x31
    andi x10, x19, -1845
    xori x1, x6, 224
    srai x28, x29, 3
    sltu x25, x26, x21
    mul x10, x1, x17
    add x19, x3, x1
    mulhu x12, x26, x7
    xor x12, x2, x1
    xori x6, x27, -1
    andi x11, x18, 255
    xori x11, x1, 1307
    sub x29, x24, x3
    xor x20, x2, x27
    andi x5, x10, -1562
    mulh x5, x19, x17
    sub x16, x4, x26
    xor x18, x25, x8
    xor x29, x15, x25
    sltiu x16, x29, 255
    add x14, x2, x3
    slti x15, x29, -188
    sltiu x15, x12, 1
    slt x7, x22, x16
    slt x15, x23, x13
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

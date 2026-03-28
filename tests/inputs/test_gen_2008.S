# Auto-generated test seed=2008
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
    mulhsu x4, x2, x25
    srli x12, x30, 9
    mulhsu x8, x8, x23
    srai x12, x19, 10
    or x6, x19, x26
    slti x20, x20, 1303
    mulhsu x9, x21, x2
    mulhu x26, x1, x28
    mulhsu x19, x1, x5
    addi x14, x18, -1751
    slti x26, x10, 0
    mulhu x13, x2, x14
    slli x28, x3, 14
    mulhu x21, x28, x25
    and x28, x22, x1
    sltu x15, x28, x2
    ori x13, x7, -234
    sub x1, x12, x24
    mul x28, x14, x1
    mul x22, x3, x16
    mulhu x1, x8, x8
    sltu x18, x26, x19
    andi x14, x11, -1575
    slt x16, x4, x25
    srai x14, x13, 11
    slli x14, x11, 15
    mulh x7, x16, x29
    sub x10, x22, x28
    sltiu x10, x4, 814
    ori x28, x6, 1938
    xor x31, x13, x10
    srai x10, x22, 31
    xor x14, x12, x23
    xor x14, x25, x27
    and x22, x28, x28
    add x20, x17, x7
    sub x9, x5, x21
    mulh x27, x19, x28
    sltiu x20, x10, 1699
    srli x27, x10, 20
    srli x3, x22, 21
    srai x15, x26, 15
    mul x19, x21, x31
    srai x3, x12, 19
    mulh x15, x7, x22
    slti x16, x23, 1519
    slli x11, x11, 15
    add x29, x14, x15
    sltiu x22, x26, 920
    mulhsu x31, x28, x24
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

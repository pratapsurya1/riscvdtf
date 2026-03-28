# Auto-generated test seed=2039
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
    mulhsu x23, x1, x23
    srli x10, x20, 20
    slti x24, x25, 2047
    mulh x10, x5, x19
    add x18, x13, x29
    srai x14, x2, 13
    and x27, x24, x12
    mul x29, x20, x20
    xori x31, x21, 1217
    slt x13, x22, x8
    or x12, x31, x21
    sltu x31, x29, x16
    sub x19, x19, x5
    srli x20, x11, 4
    sub x26, x10, x17
    xor x13, x24, x7
    mulhsu x10, x12, x9
    sltu x19, x27, x20
    andi x29, x6, 255
    mul x31, x5, x9
    sltu x17, x5, x15
    sltu x12, x24, x28
    addi x19, x1, -1239
    slti x8, x19, 2047
    xor x12, x31, x19
    and x10, x2, x18
    sltu x31, x17, x31
    slli x25, x14, 28
    ori x30, x11, 255
    or x1, x25, x14
    mulh x1, x13, x28
    slti x30, x14, -1452
    srai x17, x3, 10
    and x9, x30, x4
    mulhu x23, x5, x15
    slt x3, x17, x1
    srai x30, x9, 30
    add x28, x26, x31
    sub x14, x17, x11
    xor x15, x9, x28
    mul x31, x26, x19
    mulh x6, x30, x27
    srai x17, x2, 6
    xor x31, x28, x30
    addi x25, x24, 255
    sltu x6, x22, x15
    slti x21, x3, 1174
    sub x27, x7, x24
    slt x31, x15, x11
    andi x30, x28, -445
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

# Auto-generated test seed=2091
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
    add x5, x3, x28
    andi x5, x9, 417
    xori x5, x31, 2047
    addi x11, x12, -1276
    mulhsu x13, x5, x12
    srai x30, x10, 26
    addi x4, x7, -310
    or x1, x14, x7
    slti x27, x26, 2047
    sltu x14, x18, x23
    xori x26, x15, 1606
    xor x4, x26, x22
    mulh x26, x2, x28
    ori x10, x22, -1466
    mulhu x18, x14, x8
    addi x18, x10, 0
    srai x22, x6, 29
    or x12, x15, x14
    slti x1, x13, -1
    and x16, x26, x19
    and x31, x19, x20
    slti x20, x28, 1312
    mulhsu x30, x31, x1
    mul x23, x30, x16
    addi x22, x9, 2047
    andi x31, x25, 285
    mul x31, x19, x28
    slli x26, x12, 25
    slli x9, x9, 31
    addi x4, x25, 77
    slli x23, x25, 16
    andi x26, x27, 331
    add x13, x3, x5
    mulhu x21, x6, x13
    mulh x21, x29, x7
    andi x10, x21, -1971
    sub x29, x26, x18
    mul x2, x5, x29
    add x7, x16, x26
    mulhu x17, x13, x22
    slt x11, x26, x30
    and x31, x7, x17
    add x15, x4, x8
    or x6, x28, x16
    slti x2, x22, 255
    ori x29, x8, 335
    slt x24, x22, x17
    or x7, x24, x31
    mulhu x21, x30, x8
    slti x3, x18, -1779
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

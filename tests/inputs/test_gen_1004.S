# Auto-generated test seed=1004
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
    sltiu x20, x18, -510
    slli x11, x21, 3
    srai x28, x26, 9
    mulhu x3, x17, x8
    slli x23, x1, 8
    sltu x17, x11, x14
    add x14, x4, x16
    mul x28, x10, x18
    add x28, x29, x23
    xori x2, x23, 1949
    mulhsu x26, x23, x13
    andi x15, x5, 0
    slli x15, x5, 22
    slti x11, x5, 1142
    mulhsu x14, x21, x8
    mulhsu x26, x14, x19
    or x16, x14, x8
    slt x24, x8, x5
    xori x18, x2, 1
    add x23, x3, x13
    mulhsu x28, x11, x25
    mulhsu x5, x12, x31
    mul x4, x22, x11
    ori x28, x17, 255
    xor x22, x16, x20
    slli x14, x24, 15
    mulhu x14, x19, x19
    slt x2, x1, x7
    slt x17, x4, x10
    slti x24, x25, -73
    slt x9, x8, x27
    sub x29, x9, x18
    add x1, x11, x7
    or x27, x3, x29
    sub x27, x8, x1
    ori x15, x21, -1204
    sltiu x9, x18, -100
    addi x19, x18, 428
    sltiu x20, x12, 1567
    slt x8, x8, x25
    xori x15, x1, -1331
    and x30, x12, x1
    mulh x4, x13, x10
    srai x5, x13, 28
    sltiu x5, x23, 1363
    mulh x31, x10, x6
    andi x24, x31, 2024
    slt x22, x7, x30
    andi x10, x13, -567
    mulhu x14, x10, x31
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

# Auto-generated test seed=1014
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
    andi x9, x2, -628
    slti x16, x9, 1368
    addi x1, x28, -2048
    slli x17, x29, 9
    ori x17, x25, -525
    mul x25, x9, x15
    ori x17, x14, 1
    mulh x30, x19, x8
    addi x25, x7, -241
    add x24, x24, x24
    xori x4, x16, -1
    xori x26, x22, -288
    sltiu x29, x1, 316
    mulhsu x19, x5, x12
    sub x4, x25, x15
    and x1, x24, x11
    mul x6, x24, x17
    addi x24, x6, 1391
    and x8, x4, x1
    addi x2, x10, -1033
    srli x16, x5, 3
    sub x10, x8, x14
    andi x16, x7, -80
    sltiu x29, x7, 345
    sltu x11, x23, x7
    slt x30, x13, x13
    mulhsu x29, x20, x4
    mulhsu x8, x10, x31
    slti x30, x16, 0
    sub x1, x26, x13
    addi x28, x26, 1945
    mul x18, x9, x11
    slti x31, x25, -788
    sub x14, x6, x22
    and x2, x30, x10
    slti x27, x19, -333
    mulh x31, x22, x4
    mulh x2, x23, x11
    xori x29, x28, -730
    and x14, x9, x12
    srli x16, x17, 27
    sub x21, x4, x14
    addi x15, x13, -1169
    sltiu x21, x27, -245
    mul x4, x5, x25
    and x3, x18, x20
    sltu x4, x12, x14
    mul x1, x4, x14
    xori x4, x20, 336
    add x6, x21, x24
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

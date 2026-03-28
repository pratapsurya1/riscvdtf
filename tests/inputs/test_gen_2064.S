# Auto-generated test seed=2064
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
    srai x24, x3, 29
    slti x11, x25, 1713
    sub x10, x9, x18
    slli x11, x12, 1
    add x11, x19, x2
    mulhsu x30, x20, x16
    sltiu x24, x4, 53
    srli x31, x20, 20
    mulhsu x8, x25, x19
    xori x3, x29, 1527
    addi x2, x14, -1885
    addi x21, x29, 1985
    mulhu x27, x1, x9
    add x11, x8, x12
    add x28, x25, x18
    or x11, x7, x29
    slt x30, x31, x12
    slt x21, x28, x31
    mul x8, x21, x8
    xor x25, x23, x12
    slli x9, x27, 23
    slli x14, x20, 10
    sub x11, x26, x22
    slt x12, x14, x9
    sltiu x2, x23, -974
    sub x2, x5, x11
    andi x1, x15, 269
    slli x26, x10, 10
    slt x14, x14, x15
    mulh x30, x19, x13
    sltu x3, x6, x26
    srai x30, x10, 4
    and x31, x9, x30
    mulh x31, x19, x30
    srai x18, x7, 19
    sub x14, x29, x5
    mulh x16, x18, x14
    add x3, x2, x14
    mulhsu x7, x5, x29
    slt x7, x8, x2
    mulhsu x28, x31, x20
    mulhu x21, x18, x20
    sltiu x6, x9, 1
    slt x7, x27, x25
    add x15, x28, x7
    ori x26, x7, 2047
    xori x18, x31, -1
    srli x7, x30, 12
    sub x20, x12, x18
    srli x16, x13, 14
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

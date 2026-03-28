# Auto-generated test seed=2071
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
    sltu x5, x19, x8
    add x17, x16, x22
    sltu x31, x4, x28
    and x30, x5, x15
    sub x21, x28, x11
    ori x31, x11, -133
    add x16, x10, x1
    ori x13, x13, -694
    srai x22, x27, 28
    addi x7, x9, 2047
    or x26, x29, x17
    ori x17, x2, 0
    sub x11, x27, x24
    xori x5, x28, 2047
    mul x12, x9, x27
    slti x14, x9, -2048
    srai x24, x7, 26
    mulhsu x11, x23, x17
    add x5, x22, x1
    slt x21, x18, x1
    ori x8, x29, 0
    add x22, x20, x25
    srli x14, x27, 13
    sltiu x18, x22, 676
    slt x5, x1, x13
    mul x29, x28, x29
    mulhu x10, x22, x14
    slti x30, x25, -1
    add x18, x11, x29
    mul x6, x2, x22
    mulh x12, x15, x31
    and x13, x30, x10
    andi x18, x9, -860
    sltiu x26, x3, 676
    sub x4, x7, x13
    mulhu x26, x18, x19
    ori x21, x18, -1
    srli x16, x6, 26
    andi x20, x18, -1
    slt x4, x20, x29
    mulhsu x27, x13, x24
    slti x15, x9, -1134
    andi x17, x6, -1505
    xori x7, x29, -328
    srai x15, x21, 19
    or x20, x6, x10
    or x2, x3, x7
    addi x26, x16, -535
    or x9, x2, x21
    mulhsu x27, x15, x14
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

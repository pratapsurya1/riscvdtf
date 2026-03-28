# Auto-generated test seed=2094
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
    add x13, x29, x23
    mulh x19, x12, x24
    mul x12, x25, x25
    mulhsu x30, x8, x27
    sltiu x28, x28, -1756
    mulhu x23, x30, x20
    srai x29, x29, 31
    sub x11, x9, x21
    srai x27, x16, 9
    xor x29, x29, x3
    srai x12, x1, 16
    mulh x23, x13, x22
    mul x14, x2, x24
    mulhu x25, x15, x9
    and x21, x20, x10
    srli x28, x5, 7
    slt x22, x14, x16
    sltiu x10, x27, -1760
    mul x1, x19, x19
    mulhu x21, x13, x5
    mulh x25, x22, x31
    srli x11, x5, 26
    and x23, x14, x19
    mul x6, x17, x31
    xori x1, x4, 1034
    sub x5, x13, x22
    sltu x20, x5, x19
    or x11, x31, x2
    xori x4, x1, 1510
    srai x24, x1, 2
    ori x26, x13, 1720
    xori x6, x28, -70
    xor x17, x19, x31
    andi x31, x26, 93
    and x15, x15, x24
    sltu x12, x25, x14
    xor x5, x10, x18
    srli x27, x20, 16
    mulhsu x9, x5, x24
    andi x29, x25, 2047
    sltiu x27, x15, -902
    sltiu x25, x6, 1414
    addi x17, x27, 1600
    sltu x29, x1, x23
    xori x6, x15, -898
    sltiu x12, x25, -1205
    slt x11, x28, x16
    mulhsu x8, x10, x17
    mul x13, x16, x20
    slt x3, x21, x27
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

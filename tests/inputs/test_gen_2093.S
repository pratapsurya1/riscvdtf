# Auto-generated test seed=2093
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
    slti x12, x1, 1234
    srai x29, x11, 10
    mulh x18, x18, x16
    slti x27, x1, -2048
    slt x18, x2, x25
    and x1, x23, x29
    ori x28, x30, 1611
    srai x8, x27, 17
    xori x19, x23, 1236
    sub x7, x8, x4
    mul x15, x10, x10
    sltu x7, x5, x27
    or x14, x24, x21
    sltiu x11, x11, -1
    mulh x24, x10, x20
    srai x26, x18, 13
    sltiu x2, x16, -1418
    mulh x9, x31, x23
    xori x8, x10, 1059
    xori x7, x18, 1
    and x29, x30, x2
    srai x4, x30, 10
    srai x30, x25, 14
    mulhsu x21, x27, x3
    addi x9, x10, -773
    slt x11, x25, x28
    srai x23, x28, 7
    mul x19, x2, x1
    ori x3, x25, 1366
    and x23, x30, x2
    slt x15, x10, x9
    slli x17, x29, 3
    sltiu x21, x7, -351
    andi x3, x3, 1630
    xor x19, x11, x12
    and x2, x16, x2
    andi x19, x28, -1141
    andi x25, x5, -1122
    mulhsu x21, x17, x18
    addi x11, x24, 1895
    slli x16, x8, 11
    and x24, x15, x30
    slli x15, x25, 16
    and x4, x1, x19
    and x15, x23, x13
    slti x21, x16, 2043
    mulhsu x23, x7, x21
    xori x9, x28, 911
    sltu x18, x18, x17
    addi x31, x27, -853
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

# Auto-generated test seed=1007
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
    mulh x29, x10, x24
    slli x8, x17, 3
    slti x2, x15, -1781
    sltu x7, x8, x30
    slli x4, x22, 3
    mulhsu x10, x10, x8
    ori x19, x11, -1
    sltu x15, x4, x15
    xori x9, x28, 1
    mulhsu x6, x31, x7
    or x15, x20, x26
    mulhsu x7, x4, x8
    and x12, x1, x6
    sltiu x9, x23, 1123
    mulhu x28, x4, x27
    srai x9, x2, 14
    xor x21, x8, x31
    addi x18, x4, 1236
    sub x19, x20, x3
    slt x19, x27, x7
    mul x28, x18, x16
    or x28, x9, x11
    srli x22, x6, 8
    sltu x24, x31, x8
    slli x23, x28, 28
    ori x2, x13, 1434
    slli x25, x23, 8
    xori x5, x29, -1
    xor x19, x19, x18
    slti x7, x19, 1075
    srli x5, x9, 15
    mul x6, x3, x9
    addi x31, x8, -286
    and x24, x15, x2
    xor x2, x23, x31
    mulh x15, x2, x10
    srai x25, x24, 20
    add x10, x31, x4
    srli x11, x2, 18
    ori x26, x11, 1
    mul x25, x28, x6
    sltu x13, x24, x26
    slli x7, x16, 7
    slt x12, x21, x23
    xor x7, x12, x2
    xori x13, x12, 1213
    slt x30, x1, x20
    andi x27, x20, 0
    xori x31, x8, 2047
    slt x29, x22, x1
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

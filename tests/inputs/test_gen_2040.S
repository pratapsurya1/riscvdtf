# Auto-generated test seed=2040
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
    slti x11, x19, 1920
    mulhu x6, x26, x6
    slt x8, x25, x15
    sltu x12, x12, x12
    sltu x30, x11, x6
    slli x1, x21, 16
    ori x15, x6, 255
    sub x29, x27, x8
    slti x21, x3, 0
    mulhu x10, x7, x31
    and x20, x31, x30
    mulhsu x1, x17, x2
    slti x19, x22, -1170
    slt x31, x15, x18
    add x28, x2, x24
    and x7, x25, x14
    add x25, x11, x1
    slli x10, x7, 17
    sltiu x16, x16, 2047
    xori x15, x25, -795
    ori x2, x6, -333
    sltiu x29, x6, 255
    slt x25, x11, x27
    xor x27, x24, x29
    sub x9, x28, x15
    ori x16, x30, -1558
    slli x15, x15, 8
    andi x17, x17, 1134
    xor x14, x29, x6
    xor x29, x27, x20
    or x14, x28, x15
    mul x23, x5, x22
    and x4, x23, x27
    srai x11, x3, 20
    xor x31, x22, x15
    sub x20, x10, x7
    slti x6, x3, -513
    srli x8, x9, 1
    sltu x18, x4, x5
    sltiu x30, x4, 1770
    ori x5, x15, 255
    xor x8, x20, x12
    mulhsu x27, x31, x20
    slti x19, x22, 504
    srli x13, x21, 11
    add x27, x30, x15
    andi x10, x17, -1771
    mulhsu x12, x13, x27
    mulh x18, x16, x30
    ori x7, x25, -1314
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

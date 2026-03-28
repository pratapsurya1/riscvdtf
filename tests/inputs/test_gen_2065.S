# Auto-generated test seed=2065
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
    ori x3, x7, -1381
    or x6, x27, x10
    ori x20, x17, -2048
    andi x11, x25, -2048
    mulh x30, x18, x29
    sltiu x22, x15, 1
    srai x26, x26, 6
    xor x3, x30, x3
    xori x10, x19, -877
    sltiu x2, x11, -379
    xor x15, x5, x26
    and x23, x18, x13
    andi x11, x26, -850
    sltiu x10, x28, -1215
    slt x8, x10, x17
    srli x24, x23, 29
    and x27, x19, x19
    mulh x26, x4, x28
    mul x8, x13, x29
    sub x1, x16, x26
    slti x1, x29, 1202
    andi x31, x4, -231
    xor x22, x25, x20
    addi x5, x27, -1403
    or x18, x28, x29
    addi x20, x30, -145
    slli x30, x6, 21
    slt x17, x8, x12
    addi x27, x23, 694
    and x31, x28, x27
    mulh x13, x21, x7
    sltiu x9, x4, 1548
    srli x2, x28, 31
    srai x19, x7, 5
    mul x6, x14, x15
    xor x2, x8, x31
    slt x23, x19, x15
    sltiu x29, x21, -719
    mul x1, x28, x12
    sltiu x27, x27, -97
    sub x8, x27, x6
    mul x30, x18, x15
    xor x12, x26, x28
    xori x28, x23, 1666
    slt x1, x11, x30
    xori x31, x28, -426
    mulh x15, x19, x6
    sltiu x4, x24, -547
    or x10, x30, x29
    mulhu x9, x5, x21
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

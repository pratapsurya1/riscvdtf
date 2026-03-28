# Auto-generated test seed=2035
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
    mulh x31, x3, x2
    ori x24, x20, 1000
    mul x19, x7, x11
    addi x30, x25, -638
    add x10, x22, x24
    ori x25, x4, 1409
    mulhu x7, x27, x28
    and x24, x24, x12
    slti x1, x20, 0
    or x17, x5, x21
    xor x24, x7, x6
    sltiu x23, x2, 1
    andi x19, x28, 326
    sub x25, x10, x25
    mulh x25, x3, x25
    slti x9, x8, 1
    slti x23, x14, 255
    sltu x24, x29, x14
    andi x1, x21, 833
    xor x17, x9, x9
    slt x9, x10, x29
    srli x21, x14, 26
    xori x13, x28, 882
    or x12, x21, x31
    add x2, x29, x20
    srai x18, x18, 4
    sub x9, x27, x30
    slti x13, x30, 1204
    mulhsu x13, x14, x5
    sub x1, x14, x1
    mulh x31, x8, x28
    addi x13, x2, 1105
    mulhsu x23, x12, x30
    mulhsu x15, x31, x24
    ori x11, x9, -1
    and x4, x25, x2
    sltiu x23, x7, 1252
    mulhsu x8, x5, x28
    addi x31, x3, -408
    sltu x3, x23, x7
    srai x24, x25, 7
    srai x28, x24, 10
    slli x23, x14, 31
    addi x6, x27, -1409
    mulhu x13, x23, x28
    or x27, x19, x10
    mulhu x15, x11, x5
    sltiu x12, x4, 255
    slt x30, x27, x1
    sltiu x31, x24, 1
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

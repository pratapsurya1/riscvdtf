# Auto-generated test seed=1011
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
    addi x14, x6, 1217
    srli x31, x17, 16
    or x22, x10, x27
    srli x30, x20, 7
    addi x14, x27, 1863
    mulhsu x27, x27, x27
    add x22, x9, x17
    sltiu x24, x4, 2047
    sltu x16, x31, x25
    slt x24, x3, x5
    ori x10, x6, 255
    addi x6, x6, -1019
    sub x2, x7, x9
    ori x19, x7, 255
    or x30, x3, x8
    and x6, x5, x6
    xori x24, x10, -868
    or x1, x25, x16
    add x25, x24, x21
    mulh x9, x7, x24
    xor x19, x18, x14
    xor x26, x7, x8
    slt x11, x30, x15
    xori x17, x27, 2047
    andi x2, x5, 583
    or x8, x3, x12
    ori x11, x4, -2048
    slti x17, x11, -1498
    mulhu x10, x5, x21
    xori x19, x4, 1343
    slli x29, x23, 11
    srli x24, x17, 23
    xor x11, x9, x26
    andi x21, x20, -2019
    slli x18, x25, 14
    mulhsu x9, x18, x10
    mulhu x4, x2, x23
    sltu x14, x22, x15
    mulhu x13, x14, x6
    mulhu x5, x17, x22
    srai x1, x2, 7
    andi x2, x9, 1962
    or x31, x25, x9
    add x4, x1, x9
    srli x15, x26, 5
    ori x28, x31, -1517
    sltiu x22, x4, 255
    or x25, x19, x25
    mulhsu x25, x10, x16
    addi x13, x1, -2048
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

# Auto-generated test seed=2056
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
    mulhu x23, x17, x14
    slt x4, x26, x1
    andi x3, x24, -1975
    mulhsu x25, x30, x14
    mul x30, x23, x25
    and x9, x10, x16
    xori x20, x8, 0
    add x22, x2, x22
    and x4, x3, x25
    srli x2, x6, 7
    sub x5, x27, x23
    sltiu x10, x2, 255
    srli x1, x26, 9
    xor x10, x7, x11
    addi x15, x3, -2014
    mulhu x21, x30, x21
    ori x6, x6, -310
    srli x3, x16, 26
    sub x16, x10, x30
    xori x4, x14, 943
    or x7, x20, x5
    andi x1, x7, 255
    sltu x25, x31, x8
    xor x23, x10, x31
    mulhu x4, x11, x26
    srai x15, x12, 2
    or x29, x14, x12
    xor x20, x17, x25
    xor x17, x1, x1
    add x16, x3, x19
    mulh x5, x21, x17
    and x29, x15, x2
    or x19, x27, x12
    ori x26, x27, 1584
    and x26, x27, x23
    mulh x16, x22, x29
    and x12, x20, x21
    sltiu x11, x14, 1069
    mul x4, x8, x12
    mulhsu x25, x28, x22
    sub x6, x12, x10
    slt x21, x19, x18
    or x29, x8, x16
    slt x25, x1, x5
    ori x27, x12, -539
    slli x3, x18, 24
    slli x5, x13, 10
    mulhu x9, x13, x23
    addi x23, x18, -1
    addi x6, x26, 2047
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

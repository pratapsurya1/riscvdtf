# Auto-generated test seed=2031
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
    srli x12, x25, 17
    srli x19, x7, 14
    xori x3, x18, 255
    ori x7, x19, 1380
    xori x9, x24, 1
    sub x12, x30, x24
    xori x8, x31, -1
    slt x19, x26, x8
    slti x17, x13, -2042
    slti x2, x29, -1697
    xor x19, x28, x10
    and x28, x7, x7
    mulhsu x27, x3, x22
    sltiu x27, x30, -1588
    srai x25, x28, 8
    mulhsu x7, x4, x28
    slli x22, x4, 21
    srli x12, x4, 23
    or x5, x1, x21
    sub x21, x1, x27
    mulh x19, x30, x29
    srai x4, x15, 26
    srai x8, x19, 16
    mulhsu x21, x23, x12
    slli x25, x13, 0
    sltu x21, x12, x13
    mulhu x6, x12, x3
    addi x6, x10, 225
    mulh x7, x14, x10
    and x4, x24, x12
    mulhsu x24, x16, x7
    slti x20, x31, -2048
    mulhu x24, x22, x24
    slti x9, x13, -1248
    srli x26, x10, 18
    sltiu x31, x13, -1042
    sub x11, x5, x4
    mulhsu x1, x10, x31
    mulhu x3, x16, x12
    mulhu x23, x15, x27
    mul x13, x19, x21
    and x14, x26, x27
    xor x17, x11, x20
    sltiu x16, x27, -1009
    sltiu x20, x22, 1
    andi x20, x4, 1895
    mulhu x10, x24, x7
    sltu x4, x27, x15
    slti x11, x24, -1736
    mulhu x10, x24, x17
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

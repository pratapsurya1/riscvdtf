# Auto-generated test seed=2076
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
    add x26, x20, x24
    srai x11, x17, 10
    sltiu x3, x2, -1493
    mulhsu x23, x6, x20
    srli x28, x17, 0
    slti x11, x17, 255
    slt x22, x11, x27
    srai x3, x5, 16
    mulhsu x28, x17, x28
    mulhu x6, x6, x19
    sltu x6, x20, x22
    and x11, x2, x25
    slti x29, x16, 1
    sltiu x18, x21, 946
    sltu x10, x5, x30
    and x23, x4, x4
    sub x4, x3, x4
    or x2, x23, x12
    slti x21, x13, -66
    slti x6, x14, 1099
    slti x6, x29, 1
    mul x13, x7, x13
    mulhsu x1, x5, x13
    mulhsu x10, x30, x21
    ori x4, x19, -991
    and x22, x21, x11
    mulhu x16, x24, x12
    srai x24, x9, 6
    mulhu x20, x11, x24
    mulhsu x8, x2, x22
    add x20, x18, x8
    mulhu x29, x29, x5
    srai x29, x13, 10
    slli x29, x14, 24
    andi x23, x24, -11
    srai x16, x10, 20
    slti x31, x25, -1
    add x17, x30, x3
    add x8, x19, x24
    sltiu x15, x23, -728
    or x3, x30, x25
    mul x16, x2, x8
    andi x11, x22, 1
    sltu x13, x26, x2
    or x4, x15, x28
    sltiu x20, x22, -11
    mulhu x9, x1, x24
    slli x12, x6, 30
    srai x18, x24, 24
    or x19, x5, x13
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

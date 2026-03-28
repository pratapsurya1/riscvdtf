# Auto-generated test seed=2077
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
    add x27, x1, x10
    addi x13, x13, 576
    mulhu x16, x6, x26
    andi x22, x2, 1835
    andi x21, x14, 947
    ori x13, x26, -490
    slt x22, x27, x1
    slti x10, x26, -1125
    and x8, x9, x5
    srli x8, x13, 23
    andi x1, x13, 0
    srai x11, x25, 9
    add x18, x27, x12
    and x13, x21, x23
    and x11, x3, x23
    addi x16, x10, -1
    mul x27, x7, x22
    slli x15, x25, 25
    add x17, x4, x9
    mulhu x15, x14, x28
    mul x27, x6, x5
    sltiu x27, x16, -2048
    and x12, x11, x18
    or x25, x21, x5
    mul x25, x23, x17
    srli x1, x14, 4
    or x16, x26, x10
    xor x7, x7, x5
    addi x21, x8, 2006
    srli x12, x7, 23
    andi x25, x15, -1298
    slt x9, x28, x12
    mulhu x26, x30, x6
    sltiu x19, x11, 1085
    or x13, x9, x30
    and x18, x21, x9
    mul x13, x18, x1
    sltiu x12, x14, -772
    xori x24, x1, -112
    sltu x20, x20, x10
    andi x26, x3, -1844
    mulh x23, x19, x28
    slti x19, x23, 1659
    slt x1, x29, x19
    ori x26, x2, -937
    xori x12, x25, -237
    mul x20, x23, x10
    or x3, x28, x11
    sltu x28, x9, x12
    and x19, x11, x8
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

# Auto-generated test seed=2088
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
    sltiu x25, x29, 2047
    add x27, x25, x28
    mulh x28, x1, x28
    mul x5, x4, x13
    or x7, x4, x25
    srai x25, x18, 24
    andi x21, x13, -177
    srli x17, x22, 16
    sub x20, x4, x26
    xor x14, x22, x30
    mulhsu x30, x11, x18
    sltu x7, x30, x6
    xori x30, x14, 917
    xor x5, x6, x15
    sltu x23, x13, x9
    sltu x9, x17, x28
    xor x7, x18, x14
    mul x24, x29, x3
    srli x26, x1, 3
    xori x6, x3, -1310
    or x20, x30, x14
    xor x16, x1, x25
    sltiu x17, x1, 1996
    mulhu x7, x16, x4
    andi x19, x14, -1954
    mulhsu x7, x12, x28
    sub x19, x6, x7
    andi x15, x25, 1336
    slti x22, x17, 1846
    andi x11, x4, -1
    mulhu x20, x5, x19
    mulh x23, x10, x10
    mulhu x20, x25, x14
    mulh x12, x26, x6
    mulhsu x9, x17, x11
    slti x27, x17, 2047
    xor x18, x25, x14
    add x21, x27, x25
    slli x23, x30, 3
    and x11, x22, x15
    or x5, x12, x13
    srli x3, x2, 4
    sltiu x16, x17, 1
    sltu x8, x22, x18
    mulh x21, x13, x15
    mulhsu x18, x1, x19
    add x11, x3, x15
    slt x15, x24, x22
    addi x26, x18, -2048
    mulhu x7, x16, x13
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

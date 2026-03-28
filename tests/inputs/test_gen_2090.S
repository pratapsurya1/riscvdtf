# Auto-generated test seed=2090
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
    xor x12, x16, x18
    sub x27, x13, x3
    sub x31, x16, x23
    srai x11, x6, 24
    srai x14, x12, 30
    andi x17, x27, -1792
    or x26, x27, x12
    mulh x17, x13, x1
    sub x20, x1, x8
    and x22, x26, x14
    mulhu x5, x20, x16
    mulh x19, x4, x17
    sltiu x25, x31, 1965
    addi x27, x17, 2047
    or x15, x29, x6
    add x10, x15, x24
    and x19, x14, x29
    mulh x22, x4, x26
    and x28, x2, x22
    xori x15, x16, -1132
    sltu x28, x16, x1
    andi x29, x11, -1941
    and x2, x30, x29
    addi x2, x7, 0
    mulhsu x26, x22, x10
    xori x26, x31, 1
    slt x6, x7, x20
    srai x6, x10, 7
    ori x14, x25, 1986
    and x15, x10, x4
    slti x10, x11, -1644
    mulhsu x7, x17, x21
    add x24, x6, x19
    sltiu x20, x26, 2047
    addi x17, x8, 0
    sltiu x15, x14, -514
    srai x1, x9, 24
    addi x4, x14, 2047
    mulhsu x4, x14, x18
    and x11, x18, x8
    slt x13, x10, x9
    or x12, x13, x10
    slti x4, x28, -550
    add x17, x4, x2
    mul x18, x14, x6
    mulhsu x25, x7, x23
    xor x23, x29, x17
    and x5, x2, x4
    mulh x10, x17, x25
    mul x11, x1, x23
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

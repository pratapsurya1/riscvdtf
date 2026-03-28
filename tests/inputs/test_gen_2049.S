# Auto-generated test seed=2049
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
    addi x22, x19, 1499
    mul x4, x14, x12
    sltiu x20, x27, -592
    andi x15, x23, -1856
    xor x2, x10, x1
    srai x30, x29, 23
    addi x20, x7, 92
    xor x29, x12, x3
    sub x7, x21, x19
    mulhsu x21, x18, x10
    add x1, x21, x19
    mulhsu x13, x7, x25
    add x28, x16, x13
    or x17, x11, x17
    sltiu x3, x28, 0
    slt x6, x8, x5
    or x20, x26, x17
    slti x18, x1, -158
    mul x9, x7, x7
    sltiu x15, x31, -613
    mulhsu x29, x30, x29
    xori x6, x1, 1865
    mulhsu x3, x24, x29
    sltiu x4, x14, -1
    srai x30, x10, 3
    slti x4, x7, -2048
    ori x12, x19, 2047
    slli x10, x8, 24
    slt x18, x20, x29
    slt x13, x4, x1
    mul x22, x18, x30
    slli x23, x31, 8
    ori x5, x17, -1961
    srai x24, x8, 25
    ori x3, x12, 2037
    add x22, x9, x24
    mulhu x14, x27, x12
    srli x10, x18, 19
    addi x5, x15, 1
    andi x28, x9, -964
    mulh x28, x27, x29
    mulhsu x9, x20, x5
    mulhsu x18, x26, x18
    slti x20, x21, -2048
    or x23, x4, x24
    mulhu x9, x16, x4
    and x6, x4, x8
    andi x28, x20, 986
    ori x10, x19, 861
    slli x1, x25, 31
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

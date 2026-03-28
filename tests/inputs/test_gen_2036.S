# Auto-generated test seed=2036
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
    mul x20, x19, x19
    mul x5, x18, x1
    addi x19, x1, 1471
    mul x16, x26, x3
    andi x28, x5, -2048
    or x14, x3, x5
    mulhsu x19, x6, x10
    or x1, x1, x21
    xori x16, x10, -1621
    slti x26, x12, 1480
    ori x1, x19, 1951
    ori x10, x6, -1081
    and x25, x7, x31
    sltu x14, x18, x1
    srai x21, x4, 1
    sub x28, x3, x22
    mulhu x23, x13, x31
    or x7, x8, x3
    xor x24, x12, x4
    and x9, x5, x1
    srli x15, x20, 11
    srai x5, x28, 5
    sltu x28, x26, x15
    mul x18, x24, x31
    or x4, x18, x17
    srai x30, x14, 18
    xor x21, x4, x20
    or x26, x27, x31
    xor x2, x21, x30
    xor x3, x7, x24
    addi x29, x12, 1842
    sub x16, x2, x29
    add x19, x16, x13
    sub x10, x27, x7
    srai x22, x6, 29
    slli x16, x13, 1
    or x22, x8, x8
    addi x20, x6, -1
    mulhsu x27, x16, x14
    slt x19, x4, x4
    sub x5, x9, x24
    xor x2, x22, x7
    slli x4, x19, 23
    srli x19, x9, 11
    mul x2, x12, x21
    andi x14, x22, -2048
    slt x12, x30, x17
    xor x29, x12, x25
    xori x11, x21, -928
    slti x23, x15, -1249
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

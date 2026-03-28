# Auto-generated test seed=2045
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
    mulhsu x2, x28, x19
    addi x10, x13, 0
    srli x21, x7, 30
    slti x3, x17, 532
    andi x13, x29, -1060
    andi x31, x22, -1786
    xor x23, x7, x9
    sltu x7, x24, x20
    or x26, x12, x5
    add x5, x9, x14
    andi x8, x18, -712
    mulhu x15, x2, x9
    andi x8, x7, -2012
    slti x14, x10, -865
    add x25, x11, x5
    slli x2, x3, 18
    and x28, x31, x10
    mulhsu x13, x19, x6
    mulhu x14, x27, x13
    or x13, x22, x29
    sltiu x30, x20, 1
    and x21, x13, x16
    srai x13, x27, 17
    slt x31, x12, x26
    srai x9, x29, 21
    addi x8, x19, 255
    or x12, x9, x4
    mulhsu x9, x16, x19
    addi x23, x14, -1892
    xori x28, x3, 366
    slli x21, x13, 7
    slt x13, x14, x28
    andi x26, x3, 621
    srli x9, x25, 3
    add x8, x6, x18
    mulhsu x23, x22, x21
    xor x31, x12, x28
    or x14, x7, x22
    add x17, x21, x5
    or x31, x13, x10
    slti x11, x28, 704
    or x1, x14, x10
    sltu x29, x12, x8
    sltiu x22, x10, -1090
    and x27, x5, x1
    slli x21, x31, 18
    ori x15, x30, 2047
    or x31, x14, x7
    srli x10, x13, 15
    srli x2, x14, 10
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

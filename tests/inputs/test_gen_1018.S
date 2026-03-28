# Auto-generated test seed=1018
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
    xori x23, x4, 548
    sltu x6, x29, x17
    srli x7, x26, 7
    mulhsu x25, x18, x22
    xor x13, x2, x19
    mulhsu x31, x5, x20
    ori x30, x4, 1
    ori x16, x16, 1
    mulh x29, x2, x30
    sub x25, x6, x19
    andi x1, x3, -353
    sub x1, x5, x10
    slli x16, x7, 2
    sltiu x16, x10, -904
    slt x24, x24, x15
    add x31, x24, x26
    mulhsu x7, x3, x29
    srai x11, x9, 26
    slti x7, x12, -1
    slli x10, x22, 31
    srai x3, x4, 4
    sltu x17, x13, x9
    addi x15, x20, -288
    mulh x9, x31, x24
    slti x9, x28, -1080
    or x12, x24, x14
    srli x3, x28, 1
    xori x1, x5, 1651
    mulh x24, x1, x27
    xori x28, x4, -2042
    mulhu x22, x6, x22
    andi x17, x25, -1
    srai x12, x28, 13
    xor x19, x24, x18
    addi x3, x8, 255
    and x3, x5, x17
    addi x16, x14, -1232
    srli x3, x2, 9
    sub x16, x9, x2
    srai x2, x16, 21
    ori x21, x9, -995
    slli x25, x16, 21
    or x24, x10, x7
    sltu x28, x2, x3
    sltiu x15, x18, 173
    srai x17, x27, 10
    addi x4, x25, -92
    andi x1, x31, 997
    xori x15, x14, 464
    ori x16, x26, 1891
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

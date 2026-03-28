# Auto-generated test seed=2074
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
    slli x28, x26, 14
    slt x19, x29, x12
    mulh x7, x20, x1
    addi x10, x18, -1408
    andi x26, x5, -1
    mulhsu x4, x10, x29
    mulhu x16, x19, x26
    and x7, x1, x8
    mulhu x9, x19, x17
    sltu x29, x7, x30
    srai x3, x11, 10
    slti x8, x20, 255
    andi x25, x4, 1735
    mul x28, x13, x10
    slli x23, x16, 4
    srli x22, x26, 12
    srli x24, x20, 5
    addi x26, x15, 1376
    sub x25, x4, x25
    and x20, x26, x26
    xori x25, x22, 926
    xor x2, x10, x14
    sub x18, x6, x20
    srai x6, x23, 1
    and x31, x19, x22
    xori x18, x3, 255
    slt x3, x7, x9
    ori x18, x10, -1123
    ori x8, x19, 2047
    xor x22, x11, x30
    mulhsu x10, x31, x3
    mulh x22, x31, x7
    slt x23, x6, x25
    andi x28, x30, 1
    srai x10, x18, 8
    mulhu x24, x18, x19
    srli x19, x4, 23
    slti x20, x17, 55
    srli x24, x24, 17
    slli x22, x3, 1
    mul x19, x15, x1
    xori x31, x20, 255
    andi x30, x1, 1
    addi x25, x14, 1046
    xori x19, x13, 1295
    slli x31, x17, 22
    mulhu x29, x25, x24
    srai x12, x11, 4
    srai x18, x26, 7
    or x24, x2, x7
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

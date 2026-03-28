# Auto-generated test seed=2086
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
    sltiu x31, x9, -357
    slti x3, x27, -564
    slt x31, x11, x17
    andi x11, x14, 255
    sub x31, x2, x5
    xori x8, x9, -972
    xori x13, x27, 701
    srli x4, x14, 1
    slti x21, x31, -1138
    mulhsu x22, x13, x3
    add x21, x1, x7
    srai x17, x10, 7
    slli x12, x22, 3
    ori x16, x6, -1301
    mulhu x11, x24, x29
    mulh x22, x7, x12
    xori x3, x12, 1055
    mul x2, x9, x15
    and x6, x5, x9
    xori x3, x25, -875
    sltiu x28, x21, 521
    xori x1, x31, 90
    slti x31, x14, -2048
    ori x27, x6, 1293
    mulh x16, x27, x25
    sltu x18, x9, x8
    srai x3, x17, 6
    or x6, x4, x19
    srai x6, x16, 27
    addi x2, x21, 286
    add x5, x3, x24
    mul x27, x8, x25
    add x20, x26, x11
    slli x19, x15, 30
    slt x10, x27, x19
    srli x26, x6, 11
    srli x30, x5, 6
    addi x13, x20, 1562
    slti x15, x16, -1
    slt x9, x16, x3
    mul x25, x5, x22
    mulh x5, x16, x30
    mulhsu x23, x22, x18
    add x20, x5, x17
    sltu x14, x28, x11
    mulhu x7, x28, x22
    sltiu x27, x3, 664
    sltu x11, x24, x1
    srai x6, x2, 23
    xor x8, x17, x15
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

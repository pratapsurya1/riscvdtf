# Auto-generated test seed=2097
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
    sltu x13, x3, x29
    sub x12, x7, x6
    slti x26, x1, 1665
    xori x25, x4, 82
    sltiu x2, x28, 0
    sub x22, x27, x14
    or x1, x29, x10
    mulh x11, x25, x27
    xori x2, x7, 255
    or x12, x7, x7
    slt x7, x23, x1
    addi x9, x23, -1376
    xori x27, x25, -1092
    sltiu x18, x3, 677
    sltiu x18, x17, 1149
    mulh x21, x11, x6
    ori x10, x28, 76
    or x25, x4, x17
    srli x6, x5, 3
    sltiu x17, x22, 929
    sltiu x30, x8, 547
    slli x20, x18, 20
    mulhsu x27, x19, x6
    sub x4, x17, x4
    mulhsu x8, x17, x9
    add x27, x23, x29
    srai x1, x11, 7
    andi x24, x25, 255
    addi x14, x17, 1316
    sltiu x20, x7, -1457
    mulhsu x22, x8, x20
    addi x11, x20, 255
    and x26, x2, x18
    slli x4, x10, 6
    andi x21, x7, 2047
    srli x19, x16, 5
    xori x5, x16, -45
    andi x28, x25, 34
    mulhu x13, x30, x13
    xor x1, x18, x9
    srai x20, x10, 4
    mul x2, x12, x27
    xor x16, x9, x12
    ori x9, x12, -1424
    xor x12, x12, x1
    or x7, x29, x30
    xor x23, x22, x15
    mulh x18, x8, x26
    srai x25, x8, 5
    mul x6, x20, x19
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

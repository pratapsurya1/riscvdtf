# Auto-generated test seed=1019
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
    sub x4, x25, x8
    slti x22, x8, 366
    srli x10, x9, 14
    sltu x21, x12, x14
    sltu x15, x10, x26
    xori x2, x27, 0
    andi x26, x17, 1304
    xori x23, x29, 255
    add x15, x13, x19
    mul x23, x24, x10
    or x7, x10, x21
    xori x7, x19, 0
    addi x19, x27, -1883
    or x20, x2, x3
    mulhsu x2, x2, x13
    srli x31, x12, 18
    sltiu x5, x16, -1854
    mulhsu x14, x15, x8
    sltiu x9, x11, 1968
    xor x22, x20, x1
    or x14, x23, x11
    slli x24, x19, 24
    mulhsu x8, x26, x4
    mul x9, x6, x24
    addi x12, x22, 1
    mulhsu x10, x8, x28
    addi x29, x1, -1507
    ori x28, x30, 215
    mulhsu x25, x13, x19
    slli x17, x15, 6
    srai x25, x30, 8
    addi x29, x22, -114
    sltiu x28, x9, 234
    mulhu x12, x15, x2
    slt x23, x5, x11
    sltu x24, x9, x26
    sltiu x21, x30, -1806
    mulhu x20, x13, x28
    andi x26, x13, 0
    sub x1, x15, x17
    slti x8, x5, -656
    sltu x29, x2, x9
    or x25, x5, x14
    sltiu x8, x4, 1844
    sltu x21, x8, x6
    srli x31, x29, 8
    andi x3, x10, 1134
    add x12, x30, x26
    slli x25, x9, 7
    srai x31, x30, 28
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

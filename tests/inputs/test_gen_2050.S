# Auto-generated test seed=2050
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
    andi x31, x13, 849
    mulhsu x12, x28, x26
    srai x21, x20, 23
    mulhu x30, x13, x3
    mulh x9, x30, x3
    mulhsu x14, x25, x31
    mulhu x2, x31, x9
    and x14, x14, x9
    or x25, x16, x9
    sltiu x3, x20, 1054
    xori x16, x8, 1541
    mulhu x21, x25, x18
    xor x12, x27, x30
    ori x4, x25, 255
    andi x24, x2, -1
    mulhsu x25, x27, x17
    add x23, x1, x2
    and x24, x7, x14
    add x2, x18, x18
    srli x26, x1, 12
    srai x29, x5, 20
    mul x22, x28, x10
    ori x15, x29, -2048
    mulhsu x18, x23, x19
    sltiu x20, x16, -420
    mulhu x13, x5, x15
    addi x31, x16, -1992
    and x15, x15, x7
    mulhsu x29, x22, x22
    mulh x12, x18, x25
    mulh x24, x10, x22
    andi x22, x7, -1
    addi x17, x27, 0
    add x23, x28, x8
    xori x6, x15, -1648
    and x28, x18, x25
    srli x14, x25, 3
    sub x14, x8, x18
    addi x29, x19, -533
    and x15, x8, x2
    andi x3, x5, 861
    mul x6, x23, x8
    mul x27, x11, x22
    mulh x5, x20, x25
    mulhu x11, x24, x29
    mulh x28, x2, x19
    ori x27, x15, -1411
    sltu x17, x22, x20
    slli x8, x31, 2
    add x7, x2, x5
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

# Auto-generated test seed=2047
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
    xori x5, x14, 2047
    mul x4, x10, x29
    mulh x14, x24, x3
    mul x15, x3, x12
    mulhsu x20, x13, x5
    xori x15, x29, 2047
    mulh x20, x27, x17
    xor x16, x17, x21
    mul x13, x25, x5
    sltu x25, x13, x14
    add x11, x21, x18
    sltu x6, x21, x31
    and x25, x29, x11
    mul x19, x9, x18
    srli x3, x13, 31
    slli x19, x4, 21
    mulhsu x3, x13, x11
    mulhsu x8, x23, x24
    mulhu x1, x17, x30
    mulhu x28, x16, x1
    sltiu x1, x12, 905
    slt x1, x2, x19
    mul x16, x31, x16
    and x27, x8, x2
    xori x17, x29, 1031
    srli x7, x10, 21
    sub x3, x2, x30
    mul x24, x19, x31
    ori x28, x5, -1
    xori x14, x31, -1249
    add x16, x25, x11
    or x24, x17, x10
    xori x20, x12, 1253
    slli x4, x5, 16
    srai x30, x25, 29
    addi x3, x11, 777
    slt x13, x4, x6
    srai x21, x23, 28
    srai x7, x27, 30
    mulhu x31, x18, x19
    slt x2, x3, x30
    addi x31, x12, 896
    or x23, x18, x20
    xori x22, x2, 1909
    mul x1, x9, x14
    and x1, x3, x6
    mul x26, x2, x18
    mulhsu x24, x7, x7
    add x16, x30, x2
    sltiu x15, x17, 0
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

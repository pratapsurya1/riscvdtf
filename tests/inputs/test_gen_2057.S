# Auto-generated test seed=2057
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
    mulhsu x9, x25, x20
    mulh x18, x4, x19
    sltiu x5, x1, 1
    sub x12, x6, x9
    mul x26, x20, x4
    srai x18, x14, 8
    mulhu x15, x30, x19
    ori x17, x19, 613
    ori x26, x12, -1
    mulhsu x9, x13, x31
    or x15, x31, x26
    xor x29, x17, x9
    sltu x23, x10, x17
    addi x22, x6, 1092
    slt x17, x24, x21
    slti x6, x26, 1127
    slti x18, x18, -972
    slti x9, x30, 114
    slli x23, x10, 7
    ori x15, x27, 502
    xor x12, x18, x30
    slli x26, x30, 31
    srli x21, x1, 4
    mul x8, x17, x24
    slli x11, x8, 11
    slti x22, x20, 0
    mulhu x17, x9, x21
    ori x28, x15, 0
    slli x10, x27, 12
    srli x21, x1, 15
    xor x15, x3, x23
    slli x10, x23, 24
    xori x12, x25, 1499
    mulhu x2, x22, x26
    ori x25, x26, -959
    xori x21, x10, 809
    slt x31, x31, x10
    srli x12, x23, 7
    sltu x7, x28, x10
    mulhu x29, x30, x8
    mulhu x22, x18, x8
    mulh x2, x22, x23
    ori x4, x26, 542
    mulh x26, x12, x11
    mulhsu x18, x22, x20
    addi x20, x27, 213
    sltiu x8, x11, -2048
    mulhsu x23, x23, x14
    mulhu x14, x18, x7
    srli x19, x16, 16
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

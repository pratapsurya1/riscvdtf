# Auto-generated test seed=2037
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
    xor x25, x28, x2
    sub x2, x13, x4
    mulhu x14, x25, x25
    mulh x26, x10, x17
    slti x23, x24, -1517
    mulh x16, x11, x13
    mulhsu x22, x6, x8
    ori x18, x15, 1258
    mulh x12, x25, x3
    sltu x16, x20, x26
    addi x26, x17, -2048
    slt x16, x14, x17
    or x4, x18, x27
    slt x30, x29, x4
    sltu x4, x3, x5
    slli x28, x2, 14
    or x23, x21, x7
    xori x23, x21, -1437
    xori x11, x24, 1
    srai x19, x18, 28
    srai x24, x24, 17
    sltu x22, x22, x21
    xori x13, x20, 1288
    add x20, x22, x13
    add x14, x23, x8
    sub x7, x24, x24
    and x4, x12, x2
    srai x8, x2, 14
    sub x21, x2, x17
    addi x18, x22, -1829
    mulh x17, x24, x25
    sub x2, x16, x7
    sltu x1, x23, x26
    slli x10, x12, 16
    xori x15, x9, 0
    or x13, x11, x27
    xor x7, x1, x30
    srli x21, x28, 8
    or x20, x31, x24
    xori x9, x15, -557
    addi x21, x27, -306
    and x24, x17, x26
    srli x21, x21, 22
    mulhu x8, x18, x9
    ori x28, x30, -1510
    xori x1, x4, 2047
    mulhsu x23, x26, x15
    mulh x26, x23, x21
    sltu x9, x25, x18
    slt x28, x20, x15
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

# Auto-generated test seed=2075
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
    mulhu x13, x16, x30
    andi x15, x25, -2048
    slli x17, x22, 12
    mulh x12, x27, x10
    andi x28, x14, 263
    and x14, x29, x23
    mulh x2, x27, x25
    and x15, x10, x21
    mulhu x17, x21, x17
    and x26, x15, x22
    sltiu x13, x29, 1441
    sltu x1, x12, x30
    and x23, x3, x11
    mulh x21, x26, x21
    slt x23, x14, x30
    srai x8, x18, 16
    xor x17, x5, x13
    srli x5, x12, 11
    mulhu x6, x3, x19
    sltu x19, x11, x1
    mulhu x18, x22, x5
    mul x1, x31, x12
    srai x14, x16, 30
    mulhu x6, x22, x26
    addi x4, x13, -1956
    slli x25, x10, 16
    mulhu x12, x14, x1
    or x10, x15, x29
    mulhu x20, x27, x24
    mulhu x5, x14, x13
    sltiu x23, x30, 862
    ori x21, x27, -898
    and x25, x28, x2
    sltu x8, x11, x25
    slt x15, x25, x15
    add x21, x31, x22
    sltiu x25, x20, 512
    slli x12, x2, 25
    sltiu x27, x4, -973
    slli x31, x15, 31
    sltiu x30, x3, -1
    addi x22, x24, 255
    mulhu x25, x8, x19
    slt x20, x29, x15
    sltu x13, x31, x11
    xor x27, x9, x18
    xor x16, x3, x1
    sltu x21, x4, x28
    sltu x12, x25, x5
    sltu x3, x10, x1
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

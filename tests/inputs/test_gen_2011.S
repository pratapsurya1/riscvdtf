# Auto-generated test seed=2011
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
    sltiu x8, x26, 378
    mulhu x1, x10, x30
    sub x23, x2, x30
    and x13, x31, x17
    mul x4, x22, x10
    mulhsu x20, x27, x6
    sltiu x29, x26, 418
    andi x28, x20, -1
    slti x28, x25, -2048
    or x18, x19, x13
    mulhsu x31, x13, x29
    add x16, x25, x23
    mulh x26, x23, x7
    srli x24, x26, 3
    sltiu x8, x30, -250
    xor x12, x26, x28
    srai x21, x8, 16
    slt x17, x27, x7
    srli x21, x26, 5
    ori x13, x31, -1366
    sltiu x16, x10, -781
    add x15, x19, x1
    sub x25, x8, x30
    xor x14, x29, x14
    mulh x6, x21, x31
    srai x13, x26, 2
    or x22, x29, x18
    sltu x8, x26, x22
    mulh x23, x21, x7
    addi x27, x5, 837
    xor x12, x20, x19
    add x18, x7, x1
    sltu x8, x26, x16
    srli x11, x29, 16
    sub x31, x25, x19
    sub x25, x4, x31
    mulhu x12, x26, x26
    slli x27, x18, 19
    sltiu x15, x2, 1329
    srli x30, x5, 24
    or x27, x3, x12
    srai x29, x14, 18
    add x17, x3, x24
    add x4, x2, x27
    sltu x14, x30, x29
    slt x28, x30, x20
    and x20, x18, x19
    xor x22, x1, x12
    or x17, x28, x17
    add x25, x25, x25
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

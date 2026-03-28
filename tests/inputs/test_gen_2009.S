# Auto-generated test seed=2009
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
    sltu x22, x20, x6
    sltiu x23, x11, 1
    andi x8, x7, -1565
    mul x16, x17, x31
    xori x21, x30, -153
    mulhsu x24, x4, x11
    mulh x15, x18, x19
    slli x21, x2, 0
    srai x14, x8, 25
    slt x4, x27, x29
    ori x20, x19, -299
    sltu x24, x30, x29
    srai x10, x6, 20
    addi x14, x1, 1567
    srai x13, x12, 18
    srli x22, x15, 24
    sltiu x8, x18, -1331
    mul x12, x18, x14
    xor x20, x9, x20
    addi x19, x19, 1
    slli x28, x22, 6
    slt x2, x18, x25
    mulhu x28, x2, x19
    srli x5, x3, 23
    xori x1, x12, -1876
    xor x6, x9, x20
    or x1, x24, x1
    srli x10, x16, 20
    add x17, x10, x12
    sltu x13, x14, x24
    srli x4, x29, 10
    andi x8, x1, 2001
    ori x17, x1, -829
    srli x15, x12, 29
    sltiu x15, x10, -1997
    or x15, x30, x5
    andi x11, x29, 0
    or x16, x20, x15
    srai x20, x26, 29
    slti x6, x14, 0
    and x14, x9, x29
    sub x18, x27, x18
    addi x13, x24, 408
    slti x5, x27, -104
    slli x3, x1, 25
    addi x8, x26, 1
    addi x14, x20, -1356
    add x25, x12, x14
    sub x23, x21, x15
    srli x6, x16, 7
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

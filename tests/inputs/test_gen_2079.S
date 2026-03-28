# Auto-generated test seed=2079
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
    andi x6, x31, -143
    mulh x30, x30, x3
    mulhu x2, x25, x14
    slli x8, x6, 29
    ori x15, x5, 0
    or x5, x15, x20
    xori x16, x16, 2047
    srai x15, x17, 27
    slti x26, x11, 255
    xor x20, x28, x10
    mul x13, x21, x1
    srli x15, x4, 3
    sub x10, x22, x5
    or x13, x8, x25
    andi x1, x28, -2048
    add x15, x2, x4
    addi x14, x9, 344
    andi x15, x4, -1638
    mulh x10, x26, x6
    and x24, x9, x26
    slli x9, x9, 6
    slti x13, x16, 255
    slli x22, x23, 14
    mul x29, x1, x31
    ori x17, x4, -225
    ori x3, x4, 385
    mulhu x8, x1, x2
    andi x3, x11, 288
    mulhsu x31, x19, x8
    mulh x4, x6, x27
    and x17, x15, x11
    srai x28, x16, 27
    mulhu x23, x28, x5
    sub x20, x1, x30
    add x4, x4, x14
    xori x22, x1, 1040
    slti x21, x19, 965
    add x2, x30, x11
    add x1, x20, x28
    sub x21, x5, x26
    and x18, x18, x27
    add x31, x6, x30
    slti x23, x16, 1418
    sub x8, x9, x7
    srli x8, x18, 28
    slt x8, x19, x3
    sub x12, x5, x21
    sub x2, x14, x16
    mulhu x19, x11, x2
    xor x7, x31, x20
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

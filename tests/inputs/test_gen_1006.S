# Auto-generated test seed=1006
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
    sub x15, x1, x7
    mulhu x22, x1, x25
    xor x29, x25, x10
    slti x3, x13, 471
    add x10, x24, x25
    slli x2, x9, 18
    mul x3, x20, x13
    mulhsu x13, x16, x12
    add x17, x25, x14
    mulh x23, x23, x15
    mulhu x18, x20, x17
    addi x27, x7, 1070
    sub x12, x3, x23
    mul x3, x17, x2
    ori x19, x12, -1
    addi x16, x15, -1400
    add x8, x27, x11
    mulhsu x6, x1, x13
    slti x8, x30, -1525
    addi x21, x28, -1957
    xor x19, x21, x16
    and x6, x3, x17
    slli x13, x31, 4
    sltu x1, x2, x17
    mulhsu x18, x21, x5
    xor x21, x12, x9
    or x28, x12, x1
    addi x6, x13, 521
    and x14, x7, x8
    xori x1, x31, 307
    or x15, x13, x5
    sub x16, x11, x24
    slt x16, x3, x4
    sltu x7, x6, x31
    addi x21, x19, -1735
    and x7, x18, x3
    and x7, x10, x15
    xori x15, x18, -1315
    ori x22, x5, 1757
    mul x16, x23, x3
    slli x21, x26, 28
    slti x21, x23, -874
    xor x17, x14, x15
    srli x14, x25, 9
    sltu x10, x23, x7
    addi x15, x28, 1650
    sub x21, x9, x4
    and x4, x30, x23
    add x20, x7, x22
    mulh x13, x27, x14
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

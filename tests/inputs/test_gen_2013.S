# Auto-generated test seed=2013
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
    addi x28, x13, 732
    srli x19, x17, 28
    slti x24, x19, 153
    mul x4, x13, x11
    sltu x8, x23, x15
    sltiu x10, x24, 469
    sub x3, x27, x26
    sltiu x19, x7, -2048
    or x15, x26, x11
    sltiu x12, x25, -1936
    slti x17, x6, 255
    slli x5, x29, 13
    add x30, x22, x14
    ori x5, x2, 1254
    mulhsu x23, x4, x9
    ori x9, x6, -2048
    slt x17, x17, x7
    sub x5, x1, x6
    slti x26, x28, -1940
    srli x25, x26, 11
    and x23, x19, x31
    mulhsu x29, x19, x12
    srai x8, x1, 23
    and x18, x15, x5
    andi x4, x25, 851
    sltu x21, x27, x4
    addi x17, x21, -1864
    mulh x10, x21, x18
    sltu x20, x25, x9
    mulh x12, x9, x11
    sub x26, x13, x13
    sltiu x24, x14, 1252
    mul x21, x7, x24
    slti x16, x27, 0
    addi x15, x20, 309
    slti x13, x5, -2048
    andi x25, x9, -356
    slt x6, x12, x2
    slt x27, x12, x25
    xor x15, x5, x28
    xori x8, x4, -574
    srli x28, x28, 13
    mulh x26, x6, x22
    ori x17, x24, 1
    or x30, x17, x25
    srai x3, x21, 17
    ori x31, x16, 1198
    addi x7, x10, -248
    slt x12, x15, x13
    and x3, x14, x2
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

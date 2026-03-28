# Auto-generated test seed=1010
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
    slli x18, x3, 26
    andi x5, x14, -375
    slt x17, x21, x17
    ori x19, x23, 2047
    sltiu x12, x17, -2048
    sltiu x10, x24, -834
    sub x26, x27, x29
    slli x14, x4, 1
    mul x3, x18, x2
    slti x19, x2, 0
    add x8, x22, x10
    andi x27, x17, 737
    slt x3, x22, x16
    xori x2, x12, -2048
    slt x28, x15, x28
    add x2, x13, x20
    ori x26, x27, 0
    or x28, x15, x29
    mul x10, x24, x4
    andi x22, x25, -2048
    sltiu x25, x1, -108
    sub x26, x7, x9
    ori x20, x18, 1
    addi x5, x15, 2047
    xori x24, x6, 255
    andi x27, x20, -2048
    mulh x3, x31, x31
    slt x23, x17, x23
    slti x10, x18, 1578
    andi x18, x29, 1961
    ori x28, x22, 1887
    xor x28, x27, x9
    add x29, x12, x26
    slli x3, x31, 29
    srli x4, x5, 19
    sltiu x10, x15, 1235
    srai x6, x17, 17
    mulhsu x8, x22, x5
    slti x3, x26, 2028
    xori x22, x31, -732
    addi x11, x24, -1410
    ori x14, x7, -25
    mulhu x25, x20, x15
    slt x25, x16, x5
    sub x17, x26, x7
    ori x17, x17, -1388
    mulh x20, x9, x22
    sub x2, x30, x29
    mulhsu x1, x20, x5
    srai x24, x18, 30
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

# Auto-generated test seed=2001
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
    ori x26, x2, -2048
    mul x19, x30, x24
    slli x20, x2, 16
    addi x21, x14, 0
    sltiu x28, x12, 1366
    mulhsu x13, x9, x22
    srli x15, x8, 30
    sltu x8, x27, x17
    sub x5, x31, x17
    sltu x15, x22, x30
    slt x1, x1, x14
    sltu x28, x22, x24
    slti x31, x13, 666
    xori x2, x25, 1
    srli x12, x6, 5
    mulhsu x3, x12, x22
    mulhu x8, x13, x7
    sub x28, x4, x7
    slt x17, x3, x25
    mulh x17, x8, x2
    srai x11, x19, 5
    slti x24, x12, -1922
    and x22, x28, x1
    ori x14, x29, -2048
    andi x26, x5, -1528
    andi x8, x25, 1828
    sub x15, x14, x5
    sltu x18, x31, x1
    mulhsu x11, x29, x9
    mulhu x30, x20, x6
    mulhsu x3, x24, x4
    slt x28, x3, x13
    addi x20, x31, 0
    srli x19, x29, 29
    mul x26, x12, x23
    addi x14, x4, 489
    xor x30, x9, x7
    xor x10, x24, x11
    sltu x18, x20, x15
    add x27, x12, x29
    srli x19, x18, 9
    sub x2, x14, x6
    mulhu x6, x9, x19
    mulhu x17, x1, x11
    addi x24, x16, -527
    addi x9, x27, -993
    slli x31, x20, 6
    srai x20, x29, 21
    mul x16, x17, x30
    and x21, x17, x13
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

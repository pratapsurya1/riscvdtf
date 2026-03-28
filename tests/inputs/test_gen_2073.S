# Auto-generated test seed=2073
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
    mul x1, x3, x7
    mulhu x14, x12, x6
    srli x1, x8, 18
    and x11, x11, x29
    and x12, x8, x1
    slti x22, x22, -1486
    andi x29, x9, -1037
    sltiu x30, x31, 1604
    add x6, x27, x29
    sub x9, x28, x24
    srai x15, x9, 1
    and x11, x19, x25
    xor x8, x11, x11
    xor x25, x6, x19
    sltu x8, x15, x3
    add x26, x15, x16
    mul x24, x10, x12
    ori x31, x30, 1
    xor x3, x30, x13
    ori x27, x8, -184
    add x29, x27, x28
    slt x15, x3, x17
    addi x22, x6, -1992
    ori x3, x6, 1150
    slti x31, x7, 774
    mul x7, x13, x23
    or x13, x11, x23
    andi x17, x28, -870
    srai x3, x15, 19
    xor x29, x16, x3
    slt x21, x20, x6
    slti x24, x25, -1131
    addi x13, x3, 1825
    ori x17, x8, 666
    sltu x19, x15, x25
    add x9, x28, x15
    or x31, x2, x16
    and x27, x1, x27
    andi x25, x7, 1565
    xor x17, x8, x15
    mulhu x26, x13, x6
    xori x15, x6, -1437
    mulhu x4, x30, x24
    mulhu x8, x25, x20
    slt x1, x19, x28
    addi x30, x15, -2048
    mul x4, x5, x13
    slti x21, x31, -1229
    xori x4, x18, -2048
    mulhu x7, x19, x3
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

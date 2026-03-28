# Auto-generated test seed=2053
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
    sltu x25, x9, x2
    slt x31, x28, x24
    mul x9, x16, x18
    addi x9, x7, -871
    sltu x10, x10, x5
    slli x4, x1, 19
    mul x20, x16, x19
    srai x7, x15, 4
    addi x27, x17, 1388
    slli x12, x27, 7
    slti x3, x7, -1045
    slti x24, x4, 349
    andi x29, x8, -1352
    mul x21, x23, x15
    srli x31, x8, 29
    or x4, x13, x16
    mul x9, x3, x27
    sltu x30, x11, x5
    mulhsu x20, x18, x26
    mulh x14, x5, x8
    sub x2, x25, x19
    sltiu x10, x15, -1179
    ori x14, x10, 542
    slli x30, x26, 7
    or x21, x22, x31
    mulhsu x19, x16, x25
    srli x6, x26, 17
    sltiu x28, x5, 0
    add x6, x18, x14
    slti x5, x31, 255
    mul x17, x15, x31
    andi x13, x16, 1008
    mulhsu x12, x29, x29
    xor x29, x4, x16
    srli x26, x30, 9
    xor x25, x14, x25
    mul x13, x27, x23
    sltiu x29, x13, 1118
    srai x20, x2, 6
    xori x7, x9, 1328
    add x13, x7, x26
    mulh x18, x30, x24
    mulh x7, x18, x16
    slti x22, x22, 890
    slti x24, x24, -819
    srli x10, x13, 16
    mulh x20, x16, x28
    slli x13, x14, 6
    slti x17, x26, 61
    slt x21, x24, x24
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

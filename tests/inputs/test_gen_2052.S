# Auto-generated test seed=2052
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
    mulhu x17, x13, x22
    addi x8, x3, -1256
    andi x17, x31, 1864
    slli x1, x11, 13
    xori x25, x19, -1
    and x21, x17, x14
    mul x29, x14, x26
    mulhu x13, x12, x31
    mulh x28, x16, x23
    mul x30, x14, x2
    xor x27, x14, x19
    srai x28, x16, 7
    mulhu x17, x28, x17
    sltu x5, x4, x5
    sub x14, x6, x2
    and x3, x19, x17
    mulhsu x21, x20, x14
    ori x12, x22, -1455
    andi x17, x12, 0
    sltu x16, x9, x7
    and x7, x24, x12
    add x22, x20, x6
    xor x20, x23, x17
    sltu x4, x27, x7
    slt x19, x10, x6
    sltiu x19, x13, -204
    mul x4, x13, x8
    srai x11, x18, 18
    and x17, x8, x30
    slti x16, x4, -946
    mulhsu x2, x30, x27
    srai x12, x7, 18
    mul x27, x13, x29
    xor x13, x29, x20
    add x17, x26, x25
    and x29, x7, x20
    xori x8, x10, -1311
    sub x24, x21, x24
    sltiu x7, x5, 735
    andi x5, x9, 1131
    ori x6, x29, 1
    and x5, x7, x19
    and x26, x29, x7
    mulhu x7, x31, x17
    sltiu x22, x4, -1
    mulh x22, x3, x23
    srai x16, x12, 9
    mul x16, x14, x16
    mulhu x23, x17, x19
    add x27, x1, x29
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

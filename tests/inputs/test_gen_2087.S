# Auto-generated test seed=2087
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
    sub x22, x15, x12
    andi x18, x3, -1989
    srli x12, x1, 6
    ori x23, x28, -1869
    mulhu x21, x27, x22
    xor x5, x3, x19
    or x8, x12, x29
    slt x30, x25, x14
    addi x27, x11, -1049
    add x11, x5, x13
    xori x9, x8, 16
    slti x26, x26, 248
    ori x7, x11, -1
    andi x24, x2, 1907
    andi x7, x31, 160
    sltu x21, x3, x8
    mul x7, x3, x9
    xor x16, x8, x13
    sltiu x26, x1, 331
    mulhsu x3, x11, x27
    and x25, x26, x13
    addi x3, x26, 0
    mul x10, x13, x22
    mulhu x14, x27, x11
    and x2, x16, x28
    sltiu x31, x20, -22
    sub x19, x21, x1
    srai x14, x31, 1
    sltu x19, x26, x20
    addi x22, x7, -1365
    or x25, x21, x20
    srai x22, x25, 23
    ori x5, x28, 1335
    sltu x22, x20, x9
    mulhsu x18, x30, x5
    mulhu x18, x21, x16
    mulhsu x1, x20, x10
    mulhsu x18, x12, x12
    and x17, x3, x30
    srai x4, x9, 12
    mulhu x24, x9, x9
    andi x9, x27, -965
    xori x12, x13, -1108
    slti x14, x28, 1036
    sltiu x30, x24, 682
    slt x20, x7, x30
    or x8, x15, x12
    ori x26, x22, 2047
    addi x25, x13, 2024
    mulhu x20, x10, x11
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

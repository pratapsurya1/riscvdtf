# Auto-generated test seed=1016
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
    xori x18, x12, -648
    sltiu x3, x12, -1762
    xori x19, x17, -645
    andi x4, x19, 1
    ori x12, x10, 1
    mul x21, x15, x6
    and x19, x11, x12
    slti x5, x10, 1035
    sub x18, x25, x28
    andi x25, x6, -2048
    add x10, x31, x26
    slti x15, x14, 0
    sltiu x24, x13, 255
    andi x16, x21, -1347
    mulhsu x16, x11, x31
    srli x28, x10, 31
    sltiu x28, x6, -29
    slti x26, x7, -162
    slt x16, x31, x25
    andi x5, x17, 1984
    mul x3, x4, x14
    srli x27, x22, 11
    andi x16, x26, 331
    mulh x10, x26, x29
    srli x26, x29, 20
    mulhu x25, x7, x20
    xor x25, x3, x8
    or x4, x13, x13
    srai x7, x17, 7
    xor x5, x3, x26
    mulhsu x6, x27, x15
    slt x2, x3, x12
    slli x24, x16, 23
    sltiu x13, x12, -1
    addi x9, x17, -2048
    slti x27, x19, -1651
    sltu x1, x15, x15
    sltu x20, x21, x4
    and x16, x16, x13
    xori x18, x1, 1878
    srai x4, x27, 23
    sltiu x19, x16, -1
    sltiu x28, x17, -791
    addi x15, x15, 1
    addi x6, x24, 2047
    addi x25, x29, 255
    srli x27, x30, 23
    mul x8, x28, x3
    mul x25, x4, x15
    slt x3, x13, x5
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

# Auto-generated test seed=2027
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
    or x3, x1, x21
    or x21, x29, x26
    sub x12, x20, x6
    slt x20, x3, x21
    srli x3, x9, 16
    andi x6, x24, 787
    mulhsu x15, x13, x6
    mulhsu x12, x30, x24
    srai x27, x4, 12
    mul x11, x16, x9
    ori x25, x14, -1314
    srli x19, x3, 5
    mulhsu x3, x16, x8
    add x10, x19, x21
    srai x3, x18, 1
    addi x20, x5, -1935
    add x21, x11, x21
    ori x17, x13, 1740
    sltu x13, x15, x6
    mulhu x8, x20, x1
    ori x21, x22, -799
    slt x22, x22, x8
    add x10, x16, x14
    and x15, x24, x5
    mulhsu x9, x31, x12
    xor x17, x14, x27
    slli x24, x7, 29
    sltu x27, x10, x28
    or x19, x10, x7
    sltu x19, x7, x20
    sltiu x10, x27, -1
    and x14, x3, x1
    sltiu x5, x1, -305
    sltu x9, x18, x13
    add x18, x31, x14
    add x27, x7, x30
    slti x11, x21, -1
    sltiu x11, x28, -949
    slli x1, x19, 28
    mulhu x7, x6, x25
    sub x15, x7, x23
    and x7, x4, x6
    andi x26, x23, 2019
    sub x30, x27, x17
    addi x28, x27, -883
    or x7, x21, x31
    slt x30, x19, x21
    xor x31, x3, x8
    mulhsu x26, x1, x28
    slt x19, x19, x10
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

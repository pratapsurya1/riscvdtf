# Auto-generated test seed=2041
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
    slt x19, x10, x27
    sub x3, x18, x5
    and x10, x4, x19
    xor x15, x27, x27
    sltu x20, x29, x19
    mulhu x29, x7, x17
    sub x9, x11, x18
    andi x26, x30, -146
    slt x7, x9, x11
    sub x21, x17, x8
    sltu x5, x7, x30
    add x3, x25, x30
    and x9, x17, x13
    sltiu x22, x15, 1
    srli x28, x29, 16
    andi x17, x3, -1
    sltiu x16, x14, 484
    ori x26, x1, -1486
    sltu x11, x22, x18
    sltiu x21, x14, 1
    slt x20, x19, x28
    slti x7, x30, -323
    sltu x23, x2, x31
    xori x4, x5, 0
    sltiu x15, x13, -2048
    slt x8, x10, x31
    and x18, x19, x9
    ori x5, x22, 684
    xori x14, x8, -1
    addi x19, x5, 0
    slli x25, x15, 26
    slli x26, x31, 2
    or x5, x3, x6
    slti x31, x7, -776
    mulhsu x31, x6, x28
    andi x27, x8, 1400
    mul x15, x15, x22
    xori x7, x28, 2047
    and x29, x13, x18
    mul x26, x30, x5
    xor x28, x10, x14
    xori x25, x10, -1443
    sub x11, x9, x4
    srai x13, x22, 27
    sltiu x26, x7, 1021
    mulh x5, x15, x11
    sub x8, x25, x2
    sltiu x1, x24, 2047
    mulhu x7, x15, x7
    sub x2, x11, x22
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

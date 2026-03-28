# Auto-generated test seed=2063
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
    mulh x6, x17, x27
    addi x30, x8, 2047
    sltu x30, x5, x8
    srli x28, x22, 19
    add x16, x14, x11
    xori x21, x24, -1504
    slti x7, x13, 774
    mulh x22, x19, x14
    or x16, x10, x8
    sltu x23, x30, x8
    srli x6, x13, 25
    xor x27, x4, x6
    slli x6, x9, 12
    xori x27, x5, -1971
    mulhsu x1, x19, x4
    or x1, x19, x18
    mulhsu x23, x27, x28
    add x21, x7, x16
    sub x6, x6, x28
    srli x10, x1, 8
    ori x12, x27, 1002
    andi x10, x25, -1
    mulhu x26, x21, x23
    and x11, x10, x28
    sub x17, x6, x24
    sub x12, x31, x27
    xor x18, x23, x3
    mulh x24, x4, x4
    mulhsu x9, x31, x30
    sltu x14, x31, x6
    slti x12, x20, -1539
    srli x10, x21, 31
    sltu x25, x20, x10
    and x10, x28, x19
    sltu x14, x21, x8
    xori x24, x11, 538
    slt x24, x31, x24
    mulh x8, x19, x11
    slti x28, x26, -1473
    mulhsu x22, x11, x26
    sltiu x18, x25, 578
    mul x12, x17, x21
    sltu x2, x17, x25
    mulh x19, x20, x31
    mulhu x12, x7, x17
    slt x15, x24, x19
    mulh x27, x19, x2
    slli x30, x1, 21
    sltiu x31, x29, 1199
    sub x18, x3, x23
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

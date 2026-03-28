# Auto-generated test seed=2028
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
    andi x23, x1, 97
    mul x7, x10, x20
    slti x1, x19, -1581
    mulh x1, x1, x10
    andi x10, x31, 1358
    mulhsu x3, x16, x25
    or x11, x25, x21
    xor x7, x18, x6
    ori x29, x1, 1913
    srai x16, x10, 14
    xori x6, x19, -251
    slli x24, x24, 31
    slti x7, x24, 64
    srli x25, x22, 23
    srai x28, x26, 17
    xori x28, x14, -2048
    sltiu x22, x13, -1506
    andi x10, x28, 255
    mulhsu x14, x8, x30
    sltu x24, x1, x15
    mul x3, x26, x23
    sltiu x24, x7, 695
    sub x17, x28, x7
    mulhsu x1, x1, x23
    sltu x20, x5, x2
    slt x9, x17, x23
    mulh x25, x16, x26
    sltu x6, x26, x26
    srli x2, x15, 19
    srai x29, x5, 23
    mulhu x30, x8, x2
    srli x23, x17, 11
    xori x30, x28, 288
    mul x13, x10, x1
    slti x20, x19, 1287
    srai x18, x12, 1
    slli x24, x12, 21
    slli x15, x18, 23
    sltu x18, x12, x25
    sub x1, x30, x14
    mulhsu x15, x19, x29
    srli x28, x29, 26
    srli x4, x28, 8
    add x6, x28, x15
    sltiu x15, x5, -18
    xor x31, x9, x21
    xor x20, x26, x16
    addi x12, x17, 1211
    and x2, x23, x27
    slti x22, x23, -716
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

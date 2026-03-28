# Auto-generated test seed=2067
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
    sub x19, x31, x2
    slti x8, x17, -19
    xor x16, x6, x21
    srli x21, x23, 7
    xor x15, x15, x21
    mul x8, x1, x19
    mul x2, x31, x2
    ori x14, x12, 255
    sltu x21, x10, x19
    slli x17, x11, 11
    xor x1, x1, x23
    slti x4, x21, 1856
    slti x25, x24, -454
    xor x3, x9, x20
    xor x26, x2, x5
    mulh x23, x31, x9
    mulh x29, x17, x14
    mul x4, x21, x26
    sltiu x19, x9, -589
    srli x20, x3, 0
    addi x19, x18, 853
    srli x20, x18, 17
    sltiu x6, x8, -1429
    srai x10, x14, 13
    mulhsu x15, x2, x8
    xor x23, x18, x31
    xor x17, x28, x28
    or x5, x22, x3
    ori x29, x13, 1
    andi x14, x5, 1624
    addi x13, x30, -2048
    and x26, x1, x28
    slti x22, x4, 255
    mul x5, x22, x10
    mul x26, x10, x19
    mulhu x9, x26, x23
    sltu x26, x30, x19
    ori x20, x27, 1182
    xori x29, x12, -1817
    or x1, x6, x28
    mulhu x24, x27, x18
    sub x6, x4, x15
    sltu x16, x30, x17
    andi x31, x22, 1718
    slt x17, x10, x21
    xor x26, x4, x6
    add x19, x16, x15
    srli x16, x4, 29
    or x2, x16, x31
    srli x16, x3, 11
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

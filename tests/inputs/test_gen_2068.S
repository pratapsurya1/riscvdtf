# Auto-generated test seed=2068
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
    srai x3, x26, 30
    mul x20, x15, x27
    sltiu x4, x24, -115
    andi x27, x4, 1862
    add x27, x12, x27
    slli x10, x24, 11
    mulhu x23, x18, x2
    ori x16, x12, 936
    and x7, x10, x9
    slli x11, x8, 12
    srai x29, x1, 15
    sub x25, x23, x15
    mul x20, x12, x31
    mulhu x5, x8, x18
    mul x12, x6, x17
    srai x12, x17, 22
    mul x11, x17, x4
    andi x22, x1, 1634
    addi x31, x13, -2048
    xori x4, x22, -1918
    slt x23, x11, x4
    or x3, x30, x31
    sltu x3, x20, x6
    sltu x19, x25, x30
    srli x7, x24, 18
    ori x27, x14, -1
    ori x11, x10, 255
    slli x23, x16, 1
    mulhsu x17, x13, x22
    srli x21, x30, 10
    or x3, x3, x16
    xor x23, x3, x24
    slt x14, x13, x24
    ori x6, x23, -548
    addi x3, x16, 1
    and x10, x3, x26
    addi x21, x11, 1859
    slti x29, x11, 1441
    and x22, x1, x1
    mulhsu x23, x2, x30
    slt x29, x1, x20
    add x21, x3, x24
    mulhu x1, x28, x22
    slti x21, x22, -1
    sltu x3, x27, x31
    srai x2, x20, 15
    sltu x24, x3, x29
    sub x5, x20, x18
    mul x29, x27, x24
    sltu x9, x19, x22
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

# Auto-generated test seed=1015
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
    and x29, x30, x31
    sltiu x26, x25, 240
    sltiu x27, x10, -1971
    sltiu x4, x28, 2011
    mulhu x21, x21, x24
    sub x10, x2, x8
    xori x19, x4, 2047
    or x28, x18, x19
    xor x7, x14, x31
    add x6, x30, x17
    mul x13, x13, x1
    sub x8, x2, x26
    mulhsu x30, x5, x3
    xori x16, x13, 767
    or x17, x20, x2
    srai x14, x8, 3
    mulhu x18, x5, x26
    xori x14, x24, -648
    sub x6, x9, x25
    xor x11, x26, x22
    mulh x24, x2, x21
    mulh x25, x22, x23
    ori x26, x15, -1918
    sub x1, x19, x10
    xor x23, x24, x16
    sub x22, x3, x31
    sltiu x22, x20, 1868
    slti x4, x30, 255
    xor x31, x30, x3
    srai x6, x24, 23
    mulhu x3, x9, x3
    srai x8, x19, 24
    srai x7, x24, 13
    addi x22, x18, 1
    sltu x10, x21, x22
    slti x2, x24, 0
    slti x9, x2, -355
    andi x24, x15, 652
    slti x6, x24, -793
    mulhu x21, x21, x30
    sltu x21, x25, x21
    slt x27, x24, x3
    ori x15, x8, 1
    slt x23, x24, x20
    sub x7, x31, x7
    ori x9, x18, -221
    add x25, x29, x16
    and x26, x2, x15
    addi x14, x17, 842
    add x11, x9, x31
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

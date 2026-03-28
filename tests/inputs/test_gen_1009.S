# Auto-generated test seed=1009
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
    or x3, x24, x17
    andi x17, x25, -98
    add x2, x7, x7
    sltiu x16, x6, -1248
    xori x1, x17, 849
    mulh x5, x23, x21
    andi x14, x1, 1667
    ori x9, x7, 733
    or x18, x9, x11
    sltu x5, x5, x25
    sltiu x29, x11, -1507
    sltu x28, x27, x8
    mulhsu x26, x10, x7
    slt x28, x9, x4
    ori x9, x5, -1851
    ori x25, x15, -901
    sub x13, x11, x25
    xori x8, x25, 1
    mulhu x3, x5, x18
    mulhsu x2, x2, x16
    or x18, x18, x2
    mulhsu x27, x16, x22
    add x23, x11, x26
    slli x30, x18, 30
    slt x20, x17, x23
    sltu x31, x11, x13
    mulhsu x28, x2, x7
    add x27, x24, x17
    sltu x23, x30, x19
    mul x28, x8, x27
    slt x28, x2, x17
    or x3, x26, x4
    andi x28, x15, -166
    and x11, x4, x21
    addi x4, x1, 255
    mulhu x1, x2, x4
    and x20, x16, x3
    or x15, x10, x9
    sltiu x9, x29, -1
    slli x21, x16, 18
    or x29, x20, x14
    xor x3, x29, x8
    sltiu x24, x19, -1
    sltu x13, x26, x5
    add x15, x23, x14
    sltu x26, x5, x10
    xori x30, x26, 2047
    slli x1, x7, 17
    or x13, x5, x14
    mulhsu x21, x7, x21
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

# Auto-generated test seed=2003
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
    xor x23, x8, x10
    or x26, x24, x26
    mul x23, x6, x11
    sltu x11, x13, x20
    or x31, x19, x15
    add x12, x21, x15
    ori x31, x14, 705
    slti x19, x21, 1
    add x4, x30, x5
    mulhu x8, x16, x17
    xor x7, x21, x2
    srli x23, x25, 4
    sltu x19, x16, x27
    sltiu x23, x29, -1161
    or x22, x28, x21
    xori x26, x3, -1667
    sltu x30, x3, x1
    srli x31, x5, 23
    xor x27, x12, x20
    mul x29, x24, x27
    andi x21, x6, -813
    add x1, x23, x24
    slt x17, x9, x14
    andi x31, x9, -413
    slti x4, x12, -824
    mulhsu x19, x9, x30
    and x15, x23, x8
    and x13, x29, x31
    xori x1, x24, 151
    srai x27, x29, 0
    sub x16, x19, x25
    xor x5, x10, x17
    srli x10, x16, 9
    sltu x15, x23, x14
    and x20, x21, x9
    mulhsu x1, x20, x5
    mulhu x2, x17, x6
    sub x31, x11, x12
    slli x26, x29, 2
    mulh x11, x18, x24
    and x23, x21, x21
    slli x24, x26, 27
    sltu x8, x5, x9
    sltiu x24, x1, 0
    slti x10, x26, 861
    srai x8, x23, 30
    mul x4, x7, x9
    mul x20, x22, x9
    slli x21, x14, 27
    andi x29, x25, 1234
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

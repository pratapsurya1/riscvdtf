# Auto-generated test seed=2002
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
    srai x11, x25, 7
    mulhu x20, x25, x1
    xor x10, x3, x2
    and x29, x12, x1
    andi x20, x13, 1205
    srli x18, x1, 16
    slti x28, x29, -1873
    mulhu x9, x30, x13
    slti x2, x4, 2047
    xori x26, x31, 0
    xor x2, x17, x22
    ori x5, x6, -2048
    ori x1, x8, 0
    ori x11, x11, 1409
    xor x5, x18, x24
    srai x20, x3, 0
    srai x30, x7, 2
    ori x30, x20, 1321
    srli x9, x19, 23
    add x27, x10, x21
    mulh x23, x5, x12
    andi x8, x31, 255
    sltiu x12, x10, 0
    sub x30, x13, x8
    mulh x19, x15, x12
    ori x26, x11, -1
    sub x25, x20, x12
    srli x23, x13, 31
    mulh x29, x24, x31
    xori x18, x5, -1478
    and x26, x28, x23
    or x21, x1, x21
    ori x19, x20, -1939
    and x10, x5, x12
    sub x9, x10, x23
    addi x19, x30, 1191
    mulhsu x29, x1, x16
    mulh x27, x2, x8
    sltu x24, x28, x12
    and x6, x5, x12
    or x7, x12, x26
    srai x26, x10, 0
    ori x21, x9, -1657
    slli x6, x20, 2
    sltu x1, x4, x15
    ori x28, x17, -1381
    slli x25, x15, 23
    slli x13, x27, 3
    sub x8, x21, x30
    sltiu x3, x13, 861
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

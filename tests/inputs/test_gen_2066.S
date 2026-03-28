# Auto-generated test seed=2066
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
    srli x7, x13, 3
    ori x19, x28, 2047
    slt x13, x8, x26
    slt x17, x20, x17
    xori x8, x23, 1938
    sub x4, x13, x14
    andi x6, x25, 1621
    mul x14, x1, x29
    ori x8, x19, -1
    mulhsu x4, x3, x14
    srai x10, x11, 1
    add x18, x19, x7
    mulhu x18, x27, x27
    xori x1, x10, -1134
    slli x19, x10, 19
    mulhu x6, x14, x16
    or x31, x4, x18
    slti x21, x16, 553
    add x22, x24, x22
    ori x6, x29, 1276
    or x27, x15, x19
    andi x26, x11, 982
    or x19, x6, x2
    mulh x10, x1, x25
    xori x4, x6, 0
    ori x6, x10, -976
    mulhu x29, x13, x4
    xor x29, x18, x3
    mulhu x19, x24, x8
    sltiu x29, x22, 1315
    or x21, x9, x12
    sltiu x30, x4, -1267
    add x25, x8, x23
    slt x9, x2, x30
    add x1, x24, x7
    sub x5, x29, x27
    and x10, x21, x24
    add x31, x4, x14
    srli x5, x15, 6
    andi x23, x12, 1
    andi x22, x11, -2048
    andi x5, x10, -1419
    slli x3, x10, 7
    xori x31, x31, 727
    xori x24, x28, -622
    xori x22, x4, -622
    mulh x18, x2, x4
    mulhsu x13, x28, x9
    andi x17, x27, 1565
    slti x7, x21, -1987
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

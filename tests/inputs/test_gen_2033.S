# Auto-generated test seed=2033
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
    addi x13, x19, -509
    mulhu x26, x23, x26
    xori x18, x18, 0
    andi x29, x15, 527
    mul x8, x30, x24
    xori x13, x12, -1
    mul x25, x31, x4
    add x25, x18, x9
    mulhu x27, x29, x25
    or x29, x27, x10
    sltiu x6, x30, -1222
    xori x24, x11, 2047
    sub x20, x6, x21
    add x16, x25, x2
    addi x20, x22, 255
    slli x8, x18, 18
    mulh x8, x30, x12
    mulh x13, x14, x20
    xori x13, x13, 0
    andi x10, x10, -24
    sltu x17, x31, x31
    addi x30, x9, -310
    mulhsu x4, x14, x30
    sub x18, x20, x29
    mulh x8, x21, x5
    xori x29, x17, 195
    add x24, x20, x16
    slli x26, x13, 18
    add x10, x5, x7
    slti x13, x6, -937
    slli x27, x24, 27
    mulhu x4, x29, x14
    add x21, x10, x24
    add x6, x20, x19
    sltiu x6, x15, -893
    slli x29, x10, 2
    addi x21, x10, 1591
    slli x16, x12, 29
    mulhu x11, x20, x8
    srai x19, x3, 22
    mulh x29, x25, x10
    sub x2, x8, x30
    srai x12, x14, 31
    xori x1, x6, -2048
    slti x6, x15, -1615
    mulhu x13, x6, x1
    srai x5, x26, 24
    slt x24, x7, x20
    slti x3, x9, -1333
    srli x31, x28, 2
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

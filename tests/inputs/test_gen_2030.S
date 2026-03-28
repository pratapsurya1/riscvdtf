# Auto-generated test seed=2030
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
    and x30, x17, x1
    xori x30, x14, -963
    srli x31, x3, 27
    xor x7, x15, x17
    mulhu x8, x17, x18
    andi x27, x8, -1200
    mulhsu x30, x16, x22
    slti x10, x11, 138
    ori x24, x28, -959
    or x18, x7, x22
    and x12, x2, x27
    sub x8, x7, x28
    add x18, x22, x25
    slli x2, x6, 6
    add x18, x27, x15
    xori x23, x29, -1894
    mulhsu x12, x31, x9
    sltu x24, x13, x24
    xori x2, x21, -263
    and x22, x21, x13
    srli x17, x14, 2
    or x11, x29, x14
    srai x25, x30, 20
    xor x10, x15, x25
    or x22, x25, x15
    srli x6, x1, 4
    mulhu x2, x24, x9
    mulhsu x6, x17, x30
    xor x6, x14, x16
    ori x12, x11, -1
    xori x28, x3, -1
    sub x13, x26, x17
    ori x31, x2, 1484
    slt x8, x10, x19
    mulhu x22, x7, x16
    slti x29, x3, -207
    mul x9, x6, x29
    srli x3, x27, 14
    ori x5, x22, 255
    or x15, x31, x1
    sltu x6, x13, x2
    sltu x31, x9, x5
    slti x21, x31, -1755
    slli x11, x8, 2
    xori x2, x12, 52
    and x20, x26, x1
    sltiu x8, x24, 1864
    xor x14, x20, x11
    and x15, x29, x28
    srli x7, x23, 18
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

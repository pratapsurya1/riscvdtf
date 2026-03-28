# Auto-generated test seed=2000
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
    xori x31, x25, 33
    slli x19, x21, 8
    srli x7, x27, 9
    slti x23, x11, 1421
    mul x7, x24, x26
    mul x20, x21, x19
    slli x31, x3, 2
    mulhsu x23, x29, x4
    sltiu x8, x17, 2047
    ori x17, x6, 2047
    addi x27, x2, 255
    mul x4, x2, x4
    or x8, x7, x7
    addi x4, x5, 480
    mulh x18, x26, x20
    sltu x18, x19, x17
    mulh x26, x8, x20
    and x2, x11, x27
    mulh x13, x10, x15
    xori x29, x24, 1232
    sub x2, x8, x27
    or x6, x18, x23
    ori x7, x20, 1904
    sltu x22, x29, x5
    sub x31, x19, x24
    srai x17, x13, 10
    srli x10, x13, 10
    sub x2, x7, x14
    mulhu x26, x2, x27
    addi x26, x3, 1
    srli x21, x27, 27
    andi x5, x12, -373
    slti x15, x8, -1101
    mulh x30, x20, x14
    slli x13, x11, 8
    addi x22, x18, -2048
    sltiu x29, x23, 0
    mulhsu x10, x15, x30
    addi x8, x1, 1872
    sltiu x27, x15, -1178
    mul x2, x3, x15
    mulhsu x27, x20, x22
    add x16, x18, x3
    and x17, x31, x3
    srli x16, x16, 4
    addi x18, x3, 0
    xor x20, x8, x27
    slli x11, x2, 9
    srli x11, x8, 21
    slti x13, x5, 590
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

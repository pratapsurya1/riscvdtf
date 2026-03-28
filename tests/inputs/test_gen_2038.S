# Auto-generated test seed=2038
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
    or x3, x4, x31
    slti x1, x29, 1
    add x11, x14, x17
    or x16, x25, x15
    mulhu x30, x3, x12
    srli x12, x23, 8
    srai x31, x10, 30
    addi x16, x12, -1
    slli x15, x23, 27
    srli x14, x19, 1
    or x27, x18, x15
    sltiu x10, x28, 2047
    slti x28, x18, 1565
    mulhsu x1, x7, x13
    mul x2, x20, x15
    xor x19, x6, x23
    addi x23, x18, 255
    slt x9, x24, x29
    addi x10, x26, 1645
    ori x28, x23, -1826
    sltiu x2, x11, 1
    slli x20, x22, 16
    xor x26, x1, x23
    sub x1, x4, x31
    sltu x19, x19, x3
    slli x30, x29, 28
    and x9, x2, x16
    mulhu x15, x15, x16
    srli x12, x4, 30
    mulhsu x20, x21, x31
    sltiu x27, x4, 1
    srai x22, x25, 17
    sltu x5, x31, x7
    xori x19, x16, 0
    slt x14, x5, x27
    andi x17, x10, 0
    ori x10, x17, 0
    sub x26, x6, x1
    mulh x4, x4, x7
    slli x25, x26, 7
    xor x27, x11, x1
    andi x25, x13, -598
    mulh x23, x16, x26
    andi x6, x17, 50
    sltu x3, x22, x19
    xori x11, x6, 255
    add x31, x28, x31
    or x3, x6, x18
    sltiu x21, x12, 1
    sltiu x12, x15, 2047
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

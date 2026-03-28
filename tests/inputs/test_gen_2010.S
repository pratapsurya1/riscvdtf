# Auto-generated test seed=2010
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
    or x15, x8, x21
    xori x28, x9, -292
    sltu x8, x9, x28
    xori x31, x16, 255
    andi x8, x19, 255
    sltiu x26, x30, -555
    xori x26, x10, -903
    or x1, x3, x19
    sltu x12, x5, x11
    slti x12, x12, 448
    add x26, x3, x19
    add x8, x18, x19
    mul x26, x10, x13
    add x11, x25, x31
    andi x7, x26, 742
    mulh x31, x2, x7
    slli x27, x15, 19
    mulhu x11, x5, x30
    and x14, x22, x27
    slt x10, x8, x18
    add x18, x6, x31
    andi x3, x17, 1
    andi x31, x22, 400
    sltu x27, x16, x30
    srai x29, x28, 29
    addi x25, x3, -280
    and x15, x19, x15
    srli x17, x12, 7
    addi x8, x5, -392
    mul x23, x9, x4
    andi x9, x20, 747
    slti x25, x18, -1325
    andi x22, x30, -1
    andi x9, x12, 255
    slti x13, x4, -2048
    add x16, x28, x26
    slt x9, x4, x10
    slti x3, x13, -1
    srli x28, x26, 19
    mul x18, x6, x27
    xor x15, x9, x19
    xor x24, x6, x7
    andi x8, x17, 854
    and x3, x5, x9
    slti x15, x14, 1
    mulh x1, x24, x17
    mulh x28, x15, x5
    addi x22, x8, 1777
    mulhsu x2, x3, x26
    slt x24, x15, x27
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

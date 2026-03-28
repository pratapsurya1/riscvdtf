# Auto-generated test seed=1017
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
    sltiu x14, x7, 845
    and x9, x25, x26
    mul x22, x10, x28
    slti x21, x14, 746
    slt x18, x15, x30
    add x21, x15, x9
    slti x30, x28, 2047
    sub x19, x5, x5
    xori x10, x4, 2047
    add x21, x18, x21
    sub x18, x4, x13
    and x13, x13, x30
    add x5, x16, x10
    xori x6, x17, -1777
    mulh x24, x12, x11
    srai x21, x20, 14
    ori x1, x14, 470
    sltu x5, x28, x7
    xori x5, x14, 926
    and x30, x17, x26
    sub x15, x25, x24
    sltu x20, x30, x18
    sltu x29, x4, x16
    slli x30, x13, 4
    srli x5, x28, 23
    mulhsu x24, x4, x4
    xor x8, x9, x18
    slt x2, x15, x6
    sltu x23, x30, x12
    or x4, x20, x30
    add x4, x2, x24
    sub x18, x23, x7
    mul x18, x20, x25
    mulhsu x15, x13, x30
    xori x2, x21, -1071
    sltu x13, x16, x20
    mulhsu x4, x24, x10
    add x3, x17, x10
    sltiu x31, x11, 1024
    xor x28, x25, x11
    sltiu x29, x29, -479
    sltiu x10, x11, -1635
    srai x28, x14, 5
    addi x14, x28, -1322
    srai x31, x10, 31
    xori x24, x20, -853
    mulh x31, x1, x5
    srai x27, x24, 20
    slt x6, x2, x20
    xor x4, x17, x28
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

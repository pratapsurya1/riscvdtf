# Auto-generated test seed=2006
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
    addi x21, x30, 255
    addi x21, x8, 1
    xor x31, x25, x15
    slt x3, x7, x13
    and x31, x10, x1
    xori x5, x26, 1313
    srli x22, x27, 12
    mul x16, x6, x18
    mul x22, x18, x15
    mulhsu x21, x30, x2
    add x15, x10, x14
    mul x15, x29, x19
    slli x27, x8, 12
    srli x11, x24, 29
    srli x17, x29, 12
    mul x23, x5, x2
    mul x17, x31, x20
    xori x24, x3, -1348
    slti x13, x17, 1007
    mulhu x22, x10, x19
    slt x17, x9, x2
    srli x4, x22, 11
    ori x29, x24, -1674
    sub x11, x30, x29
    srli x16, x22, 26
    sltu x7, x14, x15
    xori x13, x26, -745
    add x12, x3, x4
    sltiu x27, x2, 0
    slli x7, x4, 4
    sltu x9, x26, x6
    mul x29, x8, x6
    sltu x11, x19, x3
    addi x5, x28, -96
    mulhu x1, x16, x18
    and x22, x16, x15
    mul x26, x27, x10
    slt x30, x23, x23
    sltiu x22, x24, 1265
    mulhsu x3, x13, x10
    sltu x5, x23, x2
    xori x27, x20, -1
    slli x26, x9, 7
    sltiu x26, x29, 1701
    add x6, x23, x10
    slti x18, x18, 580
    sltu x6, x24, x2
    or x27, x14, x6
    mulhu x11, x16, x3
    xor x21, x31, x20
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

# Auto-generated test seed=2059
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
    xori x14, x9, -487
    sltu x29, x16, x20
    mul x6, x4, x23
    sub x8, x25, x10
    sub x6, x4, x7
    add x14, x29, x15
    mul x20, x27, x27
    add x18, x22, x25
    mulhsu x14, x18, x7
    or x5, x22, x24
    andi x21, x15, -1
    add x30, x8, x11
    slti x29, x14, 1725
    xor x6, x3, x14
    and x19, x5, x15
    mul x8, x17, x29
    and x7, x1, x15
    mulhu x7, x20, x9
    sltu x2, x27, x8
    slli x30, x17, 25
    or x23, x10, x13
    sltu x12, x7, x26
    sltiu x29, x20, -1
    andi x15, x26, -1577
    or x2, x15, x1
    andi x2, x29, -587
    and x13, x19, x13
    or x10, x3, x30
    sub x7, x18, x3
    or x28, x5, x30
    andi x31, x5, 546
    xor x1, x25, x1
    xori x12, x19, -1592
    slti x15, x19, 1901
    slt x26, x20, x27
    sltiu x18, x18, -1029
    mulhsu x21, x14, x29
    slti x13, x9, -155
    sub x15, x28, x19
    srli x31, x26, 22
    andi x22, x25, 242
    ori x24, x23, 1775
    and x6, x19, x24
    mul x4, x4, x19
    add x19, x25, x24
    sltiu x12, x21, 1
    and x20, x25, x4
    slti x20, x15, 661
    sltu x25, x24, x11
    xor x14, x31, x18
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

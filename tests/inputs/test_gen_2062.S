# Auto-generated test seed=2062
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
    mulhsu x17, x26, x24
    srai x15, x1, 21
    andi x15, x27, -1945
    slt x31, x15, x15
    mulh x17, x30, x7
    or x9, x5, x29
    mulhu x22, x4, x31
    xori x5, x6, 0
    sltu x20, x10, x20
    addi x6, x18, 674
    or x24, x9, x24
    addi x1, x30, 523
    xori x10, x29, 298
    addi x27, x8, -759
    mulhsu x22, x26, x15
    mulhsu x19, x4, x5
    mul x15, x2, x4
    sltiu x21, x5, -2048
    andi x8, x19, 1037
    slli x18, x8, 16
    mulh x28, x14, x9
    mulhu x14, x1, x18
    sltu x8, x17, x28
    srai x9, x4, 2
    mul x4, x3, x25
    srai x18, x17, 2
    srai x13, x20, 5
    xori x22, x29, 980
    mul x2, x12, x3
    xori x2, x5, -351
    andi x17, x6, 71
    mulhu x7, x23, x26
    and x30, x29, x20
    srli x18, x9, 30
    sltu x14, x12, x11
    srai x31, x17, 1
    add x27, x12, x10
    xor x8, x8, x19
    and x16, x8, x15
    mul x4, x13, x10
    and x9, x23, x15
    sub x22, x12, x27
    xor x19, x5, x7
    srai x16, x20, 1
    xor x19, x3, x17
    or x22, x8, x15
    andi x16, x15, -254
    add x11, x7, x8
    slti x19, x22, 122
    add x10, x8, x10
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

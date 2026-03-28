# Auto-generated test seed=3009
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
    lui  x30, 0x100
    addi x30, x30, 0x500
    ori x22, x21, 2047
    mulhsu x23, x29, x2
    and x1, x22, x28
    slt x8, x7, x14
    slli x23, x21, 31
    add x25, x24, x13
    xori x1, x26, -2048
    xori x14, x22, 1
    slt x16, x1, x15
    mulhu x2, x12, x29
    sltiu x4, x17, 1480
    lw x14, 20(x30)
    slt x28, x2, x11
    sltiu x18, x8, 725
    lw x18, 16(x30)
    and x24, x6, x14
    slti x20, x25, 255
    lb x15, 0(x30)
    add x27, x16, x2
    sltiu x14, x23, -1981
    and x23, x28, x16
    add x28, x3, x19
    or x13, x6, x26
    and x6, x4, x4
    sltu x12, x22, x17
    mulhu x13, x26, x25
    sw x7, 40(x30)
    addi x1, x7, 1208
    and x28, x9, x14
    mulhu x4, x21, x4
    sw x28, 0(x30)
    mulhu x14, x10, x10
    xori x29, x13, 2047
    srli x14, x3, 9
    xor x21, x26, x14
    sb x1, 51(x30)
    or x10, x5, x13
    mul x27, x10, x15
    srli x11, x20, 19
    and x3, x15, x14
    sltiu x16, x4, -2048
    sltiu x27, x7, -291
    add x17, x28, x12
    slti x5, x21, -1724
    sltu x23, x5, x2
    xori x20, x3, -1953
    addi x5, x18, -127
    srli x24, x4, 22
    add x2, x6, x8
    srai x8, x28, 18
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
# Scratch buffer for load/store at fixed address 0x100500
.section .scratch, "aw"
.align 4
.globl scratch_buf
scratch_buf: .space 64

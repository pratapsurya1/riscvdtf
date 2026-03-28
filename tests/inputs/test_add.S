.section .vectors, "ax"
.globl _vector_start
_vector_start:
    j _start

.section .text, "ax"
.globl _start
_start:
    li   x1, 10
    li   x2, 20
    add  x3, x1, x2

    li   x4, 0x7FFFFFFF
    add  x5, x4, x1

    li   x6, 0xFFFFFFFF
    add  x7, x6, x1

    nop
    nop

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

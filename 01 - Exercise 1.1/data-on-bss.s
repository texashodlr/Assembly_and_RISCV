.section .bss
x: .word 10
.section .text
set_x:
    la t1, x
    sw a0, (t1)
    ret

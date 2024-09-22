.section .text
set_x:
    la t1, x
    sw a0, (t1)
    ret
get_msg:
    la a0, msg
    ret
.section .data
x: .word 10
.section .rodata
msg: .string "Assembly rocks!"
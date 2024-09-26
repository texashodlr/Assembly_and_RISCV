	.file	"file2.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	exit
	.type	exit, @function
exit:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
 #APP
# 4 "file2.c" 1
	mv a0, a5           # return code
li a7, 93           # syscall exit (93) 
ecall
# 0 "" 2
 #NO_APP
	nop
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	exit, .-exit
	.align	2
	.globl	write
	.type	write, @function
write:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	lw	a3,-28(s0)
 #APP
# 15 "file2.c" 1
	mv a0, a5           # file descriptor
mv a1, a4           # buffer 
mv a2, a3           # size 
li a7, 64           # syscall write (64) 
ecall
# 0 "" 2
 #NO_APP
	nop
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	write, .-write
	.align	2
	.globl	_start
	.type	_start, @function
_start:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	call	main
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	exit
	.size	_start, .-_start
	.ident	"GCC: () 10.2.0"

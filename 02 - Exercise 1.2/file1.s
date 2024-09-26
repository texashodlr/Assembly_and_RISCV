	.file	"file1.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	2
.LC0:
	.string	"Hello World!\n"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a4,8(a5)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-24(s0)
	lhu	a5,12(a5)
	sh	a5,-20(s0)
	addi	a5,s0,-32
	li	a2,13
	mv	a1,a5
	li	a0,1
	call	write
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 10.2.0"

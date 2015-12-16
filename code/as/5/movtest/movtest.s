	.file	"movtest.c"
	.section	.rodata
.LC0:
	.string	"The Value is %d\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$64, %esp
	movl	$10, 16(%esp)
	movl	$15, 20(%esp)
	movl	$20, 24(%esp)
	movl	$25, 28(%esp)
	movl	$30, 32(%esp)
	movl	$35, 36(%esp)
	movl	$40, 40(%esp)
	movl	$45, 44(%esp)
	movl	$50, 48(%esp)
	movl	$55, 52(%esp)
	movl	$60, 56(%esp)
	movl	$0, 60(%esp)
	jmp	.L2
.L3:
	movl	60(%esp), %eax
	movl	16(%esp,%eax,4), %edx
	movl	$.LC0, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	addl	$1, 60(%esp)
.L2:
	cmpl	$10, 60(%esp)
	jle	.L3
	movl	$0, (%esp)
	call	exit
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.4 20100726 (Red Hat 4.4.4-13)"
	.section	.note.GNU-stack,"",@progbits

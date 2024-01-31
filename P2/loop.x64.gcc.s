	.file	"loop.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"./fasttime.h"
.LC1:
	.string	"r == 0"
	.text
	.p2align 4
	.type	gettime, @function
gettime:
.LFB39:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$1, %edi
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rsi
	call	clock_gettime@PLT
	testl	%eax, %eax
	jne	.L6
	movq	(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	24(%rsp), %rcx
	subq	%fs:40, %rcx
	jne	.L7
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx
	movl	$75, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L7:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE39:
	.size	gettime, .-gettime
	.section	.rodata.str1.1
.LC2:
	.string	"loop.c"
.LC3:
	.string	"argc == 2"
.LC4:
	.string	"IterMul > 0 && IterMul <=100"
.LC5:
	.string	"IterMul*I > 0"
.LC6:
	.string	"uint32_t"
.LC7:
	.string	"+"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC9:
	.string	"Elapsed execution time: %f sec; N: %d, I: %d, __OP__: %s, __TYPE__: %s\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$40, %rsp
	.cfi_def_cfa_offset 4192
	movq	%fs:40, %rdx
	movq	%rdx, 4120(%rsp)
	xorl	%edx, %edx
	movl	$0, 12(%rsp)
	cmpl	$2, %edi
	jne	.L18
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movq	%rax, %rbp
	leal	-1(%rax), %eax
	cmpl	$99, %eax
	ja	.L19
	testl	%ebp, %ebp
	jle	.L20
	leaq	16(%rsp), %rbx
	xorl	%eax, %eax
	movl	$512, %ecx
	xorl	%r15d, %r15d
	movq	%rbx, %rdi
	rep stosq
	call	gettime
	movq	%rdx, %r13
	imull	$100000, %ebp, %edx
	movq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L13:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L12:
	movl	$0, (%rbx,%rax)
	addq	$4, %rax
	cmpq	$4096, %rax
	jne	.L12
	addl	$1, %r15d
	cmpl	%edx, %r15d
	jne	.L13
	call	gettime
	leaq	12(%rsp), %rdi
	movq	%rdx, %rbp
	movq	%rax, %rbx
	call	rand_r@PLT
	subq	%r13, %rbp
	pxor	%xmm0, %xmm0
	subq	%r12, %rbx
	cvtsi2sdq	%rbp, %xmm0
	pxor	%xmm1, %xmm1
	cltd
	movl	%r15d, %ecx
	mulsd	.LC8(%rip), %xmm0
	cvtsi2sdq	%rbx, %xmm1
	shrl	$22, %edx
	leaq	.LC6(%rip), %r9
	addl	%edx, %eax
	leaq	.LC7(%rip), %r8
	movl	$1, %edi
	andl	$1023, %eax
	leaq	.LC9(%rip), %rsi
	subl	%edx, %eax
	movl	$1024, %edx
	cltq
	addsd	%xmm1, %xmm0
	movl	16(%rsp,%rax,4), %r14d
	movl	$1, %eax
	call	__printf_chk@PLT
	movq	4120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L21
	addq	$4136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r14d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L18:
	.cfi_restore_state
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx
	movl	$59, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__assert_fail@PLT
.L21:
	call	__stack_chk_fail@PLT
.L20:
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx
	movl	$62, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	__assert_fail@PLT
.L19:
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx
	movl	$61, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE42:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 8
__PRETTY_FUNCTION__.0:
	.string	"gettime"
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 5
__PRETTY_FUNCTION__.1:
	.string	"main"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	-400107883
	.long	1041313291
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

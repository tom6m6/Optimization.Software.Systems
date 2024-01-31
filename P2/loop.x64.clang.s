	.text
	.file	"loop.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function main
.LCPI0_0:
	.quad	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$12320, %rsp                    # imm = 0x3020
	.cfi_def_cfa_offset 12368
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$0, 12(%rsp)
	cmpl	$2, %edi
	jne	.LBB0_9
# %bb.1:
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %rbx
	addl	$-1, %eax
	cmpl	$100, %eax
	jae	.LBB0_10
# %bb.2:
	leaq	8224(%rsp), %rdi
	xorl	%ebp, %ebp
	movl	$4096, %edx                     # imm = 0x1000
	xorl	%esi, %esi
	callq	memset@PLT
	leaq	4128(%rsp), %rdi
	movl	$4096, %edx                     # imm = 0x1000
	xorl	%esi, %esi
	callq	memset@PLT
	leaq	32(%rsp), %rdi
	movl	$4096, %edx                     # imm = 0x1000
	xorl	%esi, %esi
	callq	memset@PLT
	leaq	16(%rsp), %rsi
	movl	$1, %edi
	callq	clock_gettime@PLT
	testl	%eax, %eax
	jne	.LBB0_11
# %bb.3:
	imull	$100000, %ebx, %ebx             # imm = 0x186A0
	movq	16(%rsp), %r15
	movq	24(%rsp), %r14
	.p2align	4, 0x90
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_5:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	4128(%rsp,%rax,4), %xmm0
	movdqa	4144(%rsp,%rax,4), %xmm1
	movdqa	4160(%rsp,%rax,4), %xmm2
	movdqa	4176(%rsp,%rax,4), %xmm3
	paddd	8224(%rsp,%rax,4), %xmm0
	paddd	8240(%rsp,%rax,4), %xmm1
	movdqa	%xmm0, 32(%rsp,%rax,4)
	movdqa	%xmm1, 48(%rsp,%rax,4)
	paddd	8256(%rsp,%rax,4), %xmm2
	paddd	8272(%rsp,%rax,4), %xmm3
	movdqa	%xmm2, 64(%rsp,%rax,4)
	movdqa	%xmm3, 80(%rsp,%rax,4)
	addq	$16, %rax
	cmpq	$1024, %rax                     # imm = 0x400
	jne	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	addl	$1, %ebp
	cmpl	%ebx, %ebp
	jne	.LBB0_4
# %bb.7:
	leaq	16(%rsp), %rsi
	movl	$1, %edi
	callq	clock_gettime@PLT
	testl	%eax, %eax
	jne	.LBB0_11
# %bb.8:
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	leaq	12(%rsp), %rdi
	callq	rand_r@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	1023(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$-1024, %ecx                    # imm = 0xFC00
	subl	%ecx, %eax
	subq	%r15, %rbp
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rbp, %xmm1
	cltq
	subq	%r14, %r12
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12, %xmm0
	movl	32(%rsp,%rax,4), %ebp
	mulsd	.LCPI0_0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rcx
	leaq	.L.str.6(%rip), %r8
	movl	$1024, %esi                     # imm = 0x400
	movl	%ebx, %edx
	movb	$1, %al
	callq	printf@PLT
	movl	%ebp, %eax
	addq	$12320, %rsp                    # imm = 0x3020
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_11:
	.cfi_def_cfa_offset 12368
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__.gettime(%rip), %rcx
	movl	$75, %edx
	callq	__assert_fail@PLT
.LBB0_9:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__.main(%rip), %rcx
	movl	$59, %edx
	callq	__assert_fail@PLT
.LBB0_10:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__.main(%rip), %rcx
	movl	$61, %edx
	callq	__assert_fail@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"argc == 2"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"loop.c"
	.size	.L.str.1, 7

	.type	.L__PRETTY_FUNCTION__.main,@object # @__PRETTY_FUNCTION__.main
.L__PRETTY_FUNCTION__.main:
	.asciz	"int main(int, char **)"
	.size	.L__PRETTY_FUNCTION__.main, 23

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"IterMul > 0 && IterMul <=100"
	.size	.L.str.2, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Elapsed execution time: %f sec; N: %d, I: %d, __OP__: %s, __TYPE__: %s\n"
	.size	.L.str.4, 72

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"+"
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"uint32_t"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"r == 0"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"././fasttime.h"
	.size	.L.str.8, 15

	.type	.L__PRETTY_FUNCTION__.gettime,@object # @__PRETTY_FUNCTION__.gettime
.L__PRETTY_FUNCTION__.gettime:
	.asciz	"fasttime_t gettime(void)"
	.size	.L__PRETTY_FUNCTION__.gettime, 25

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig

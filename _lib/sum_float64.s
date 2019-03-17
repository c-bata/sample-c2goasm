	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_sum_float64            ## -- Begin function sum_float64
	.p2align	4, 0x90
_sum_float64:                           ## @sum_float64
## %bb.0:
	push	rbp
	mov	rbp, rsp
	and	rsp, -8
	test	esi, esi
	jle	LBB0_1
## %bb.2:
	mov	r9d, esi
	cmp	esi, 15
	ja	LBB0_4
## %bb.3:
	vxorpd	xmm0, xmm0, xmm0
	xor	ecx, ecx
	jmp	LBB0_11
LBB0_1:
	vxorpd	xmm0, xmm0, xmm0
	jmp	LBB0_12
LBB0_4:
	mov	ecx, r9d
	and	ecx, -16
	lea	rsi, [rcx - 16]
	mov	rax, rsi
	shr	rax, 4
	inc	rax
	mov	r8d, eax
	and	r8d, 1
	test	rsi, rsi
	je	LBB0_5
## %bb.6:
	mov	esi, 1
	sub	rsi, rax
	lea	rax, [r8 + rsi - 1]
	vxorpd	xmm0, xmm0, xmm0
	xor	esi, esi
	vxorpd	xmm1, xmm1, xmm1
	vxorpd	xmm2, xmm2, xmm2
	vxorpd	xmm3, xmm3, xmm3
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rsi]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rsi + 32]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rsi + 64]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rsi + 96]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rsi + 128]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rsi + 160]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rsi + 192]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rsi + 224]
	add	rsi, 32
	add	rax, 2
	jne	LBB0_7
## %bb.8:
	test	r8, r8
	je	LBB0_10
LBB0_9:
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rsi + 96]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rsi + 64]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rsi + 32]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rsi]
LBB0_10:
	vaddpd	ymm0, ymm1, ymm0
	vaddpd	ymm0, ymm2, ymm0
	vaddpd	ymm0, ymm3, ymm0
	vextractf128	xmm1, ymm0, 1
	vaddpd	ymm0, ymm0, ymm1
	vhaddpd	ymm0, ymm0, ymm0
	cmp	rcx, r9
	je	LBB0_12
	.p2align	4, 0x90
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	vaddsd	xmm0, xmm0, qword ptr [rdi + 8*rcx]
	inc	rcx
	cmp	r9, rcx
	jne	LBB0_11
LBB0_12:
	vmovsd	qword ptr [rdx], xmm0
	mov	rsp, rbp
	pop	rbp
	vzeroupper
	ret
LBB0_5:
	vxorpd	xmm0, xmm0, xmm0
	xor	esi, esi
	vxorpd	xmm1, xmm1, xmm1
	vxorpd	xmm2, xmm2, xmm2
	vxorpd	xmm3, xmm3, xmm3
	test	r8, r8
	jne	LBB0_9
	jmp	LBB0_10
                                        ## -- End function

.subsections_via_symbols

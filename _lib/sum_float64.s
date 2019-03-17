	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
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
	mov	eax, esi
	cmp	esi, 15
	ja	LBB0_6
## %bb.3:
	vxorpd	xmm0, xmm0, xmm0
	xor	r9d, r9d
	jmp	LBB0_4
LBB0_1:
	vxorps	xmm0, xmm0, xmm0
	vmovsd	qword ptr [rdx], xmm0
	mov	rsp, rbp
	pop	rbp
	vzeroupper
	ret
LBB0_6:
	mov	r9d, eax
	and	r9d, -16
	lea	rcx, [r9 - 16]
	mov	rsi, rcx
	shr	rsi, 4
	lea	r8d, [rsi + 1]
	and	r8d, 1
	test	rcx, rcx
	je	LBB0_7
## %bb.8:
	lea	rcx, [r8 - 1]
	sub	rcx, rsi
	vxorpd	xmm0, xmm0, xmm0
	xor	esi, esi
	vxorpd	xmm1, xmm1, xmm1
	vxorpd	xmm2, xmm2, xmm2
	vxorpd	xmm3, xmm3, xmm3
	.p2align	4, 0x90
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rsi]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rsi + 32]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rsi + 64]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rsi + 96]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rsi + 128]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rsi + 160]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rsi + 192]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rsi + 224]
	add	rsi, 32
	add	rcx, 2
	jne	LBB0_9
## %bb.10:
	test	r8, r8
	je	LBB0_12
LBB0_11:
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rsi + 96]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rsi + 64]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rsi + 32]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rsi]
LBB0_12:
	vaddpd	ymm0, ymm1, ymm0
	vaddpd	ymm0, ymm2, ymm0
	vaddpd	ymm0, ymm3, ymm0
	vextractf128	xmm1, ymm0, 1
	vaddpd	ymm0, ymm0, ymm1
	vhaddpd	ymm0, ymm0, ymm0
	cmp	r9, rax
	je	LBB0_13
LBB0_4:
	lea	rcx, [rdi + 8*r9]
	sub	rax, r9
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	vaddsd	xmm0, xmm0, qword ptr [rcx]
	add	rcx, 8
	dec	rax
	jne	LBB0_5
LBB0_13:
	vmovsd	qword ptr [rdx], xmm0
	mov	rsp, rbp
	pop	rbp
	vzeroupper
	ret
LBB0_7:
	vxorpd	xmm0, xmm0, xmm0
	xor	esi, esi
	vxorpd	xmm1, xmm1, xmm1
	vxorpd	xmm2, xmm2, xmm2
	vxorpd	xmm3, xmm3, xmm3
	test	r8, r8
	jne	LBB0_11
	jmp	LBB0_12
                                        ## -- End function

.subsections_via_symbols

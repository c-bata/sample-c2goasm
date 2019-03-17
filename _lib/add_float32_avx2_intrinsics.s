	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_add_float32            ## -- Begin function add_float32
	.p2align	4, 0x90
_add_float32:                           ## @add_float32
## %bb.0:
	push	rbp
	mov	rbp, rsp
	and	rsp, -32
	sub	rsp, 288
	mov	qword ptr [rsp + 112], rdi
	mov	qword ptr [rsp + 104], rsi
	mov	qword ptr [rsp + 96], rdx
	mov	rdx, qword ptr [rsp + 112]
	mov	qword ptr [rsp + 120], rdx
	mov	rdx, qword ptr [rsp + 120]
	vmovups	ymm0, ymmword ptr [rdx]
	vmovaps	ymmword ptr [rsp + 64], ymm0
	mov	rdx, qword ptr [rsp + 104]
	mov	qword ptr [rsp + 264], rdx
	mov	rdx, qword ptr [rsp + 264]
	vmovups	ymm0, ymmword ptr [rdx]
	vmovaps	ymmword ptr [rsp + 32], ymm0
	vmovaps	ymm0, ymmword ptr [rsp + 64]
	vmovaps	ymm1, ymmword ptr [rsp + 32]
	vmovaps	ymmword ptr [rsp + 224], ymm0
	vmovaps	ymmword ptr [rsp + 192], ymm1
	vmovaps	ymm0, ymmword ptr [rsp + 224]
	vaddps	ymm0, ymm0, ymmword ptr [rsp + 192]
	vmovaps	ymmword ptr [rsp], ymm0
	mov	rdx, qword ptr [rsp + 96]
	vmovaps	ymm0, ymmword ptr [rsp]
	mov	qword ptr [rsp + 184], rdx
	vmovaps	ymmword ptr [rsp + 128], ymm0
	vmovaps	ymm0, ymmword ptr [rsp + 128]
	mov	rdx, qword ptr [rsp + 184]
	vmovups	ymmword ptr [rdx], ymm0
	mov	rsp, rbp
	pop	rbp
	vzeroupper
	ret
                                        ## -- End function

.subsections_via_symbols

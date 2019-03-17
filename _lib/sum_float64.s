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
	sub	rsp, 48
	vxorps	xmm0, xmm0, xmm0
	mov	qword ptr [rsp + 40], rdi
	mov	dword ptr [rsp + 36], esi
	mov	qword ptr [rsp + 24], rdx
	vmovsd	qword ptr [rsp + 16], xmm0
	mov	dword ptr [rsp + 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rsp + 12]
	cmp	eax, dword ptr [rsp + 36]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rsp + 40]
	movsxd	rcx, dword ptr [rsp + 12]
	vmovsd	xmm0, qword ptr [rax + 8*rcx] ## xmm0 = mem[0],zero
	vaddsd	xmm0, xmm0, qword ptr [rsp + 16]
	vmovsd	qword ptr [rsp + 16], xmm0
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rsp + 12]
	add	eax, 1
	mov	dword ptr [rsp + 12], eax
	jmp	LBB0_1
LBB0_4:
	vmovsd	xmm0, qword ptr [rsp + 16] ## xmm0 = mem[0],zero
	mov	rax, qword ptr [rsp + 24]
	vmovsd	qword ptr [rax], xmm0
	mov	rsp, rbp
	pop	rbp
	ret
                                        ## -- End function

.subsections_via_symbols

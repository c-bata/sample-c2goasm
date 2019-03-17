	.text
	.intel_syntax noprefix
	.file	"sum_float64.c"
	.globl	sum_float64             # -- Begin function sum_float64
	.p2align	4, 0x90
	.type	sum_float64,@function
sum_float64:                            # @sum_float64
# %bb.0:
	push	rbp
	mov	rbp, rsp
	and	rsp, -8
	test	esi, esi
	jle	.LBB0_1
# %bb.2:
	mov	eax, esi
	cmp	esi, 31
	ja	.LBB0_6
# %bb.3:
	vxorpd	xmm0, xmm0, xmm0
	xor	r8d, r8d
	jmp	.LBB0_4
.LBB0_1:
	vxorps	xmm0, xmm0, xmm0
	vmovsd	qword ptr [rdx], xmm0
	mov	rsp, rbp
	pop	rbp
	vzeroupper
	ret
.LBB0_6:
	mov	r8d, eax
	and	r8d, -32
	lea	rsi, [r8 - 32]
	mov	rcx, rsi
	shr	rcx, 5
	lea	r9d, [rcx + 1]
	and	r9d, 7
	cmp	rsi, 224
	jae	.LBB0_8
# %bb.7:
	vxorpd	xmm0, xmm0, xmm0
	xor	ecx, ecx
	vxorpd	xmm1, xmm1, xmm1
	vxorpd	xmm2, xmm2, xmm2
	vxorpd	xmm3, xmm3, xmm3
	vxorpd	xmm4, xmm4, xmm4
	vxorpd	xmm5, xmm5, xmm5
	vxorpd	xmm6, xmm6, xmm6
	vxorpd	xmm7, xmm7, xmm7
	test	r9, r9
	jne	.LBB0_11
	jmp	.LBB0_13
.LBB0_8:
	lea	rsi, [r9 - 1]
	sub	rsi, rcx
	vxorpd	xmm0, xmm0, xmm0
	xor	ecx, ecx
	vxorpd	xmm1, xmm1, xmm1
	vxorpd	xmm2, xmm2, xmm2
	vxorpd	xmm3, xmm3, xmm3
	vxorpd	xmm4, xmm4, xmm4
	vxorpd	xmm5, xmm5, xmm5
	vxorpd	xmm6, xmm6, xmm6
	vxorpd	xmm7, xmm7, xmm7
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	vaddpd	ymm7, ymm7, ymmword ptr [rdi + 8*rcx + 224]
	vaddpd	ymm6, ymm6, ymmword ptr [rdi + 8*rcx + 192]
	vaddpd	ymm5, ymm5, ymmword ptr [rdi + 8*rcx + 160]
	vaddpd	ymm4, ymm4, ymmword ptr [rdi + 8*rcx + 128]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rcx + 96]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rcx + 64]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rcx + 32]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rcx]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rcx + 256]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rcx + 288]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rcx + 320]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rcx + 352]
	vaddpd	ymm4, ymm4, ymmword ptr [rdi + 8*rcx + 384]
	vaddpd	ymm5, ymm5, ymmword ptr [rdi + 8*rcx + 416]
	vaddpd	ymm6, ymm6, ymmword ptr [rdi + 8*rcx + 448]
	vaddpd	ymm7, ymm7, ymmword ptr [rdi + 8*rcx + 480]
	vaddpd	ymm7, ymm7, ymmword ptr [rdi + 8*rcx + 736]
	vaddpd	ymm6, ymm6, ymmword ptr [rdi + 8*rcx + 704]
	vaddpd	ymm5, ymm5, ymmword ptr [rdi + 8*rcx + 672]
	vaddpd	ymm4, ymm4, ymmword ptr [rdi + 8*rcx + 640]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rcx + 608]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rcx + 576]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rcx + 544]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rcx + 512]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rcx + 768]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rcx + 800]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rcx + 832]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rcx + 864]
	vaddpd	ymm4, ymm4, ymmword ptr [rdi + 8*rcx + 896]
	vaddpd	ymm5, ymm5, ymmword ptr [rdi + 8*rcx + 928]
	vaddpd	ymm6, ymm6, ymmword ptr [rdi + 8*rcx + 960]
	vaddpd	ymm7, ymm7, ymmword ptr [rdi + 8*rcx + 992]
	vaddpd	ymm7, ymm7, ymmword ptr [rdi + 8*rcx + 1248]
	vaddpd	ymm6, ymm6, ymmword ptr [rdi + 8*rcx + 1216]
	vaddpd	ymm5, ymm5, ymmword ptr [rdi + 8*rcx + 1184]
	vaddpd	ymm4, ymm4, ymmword ptr [rdi + 8*rcx + 1152]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rcx + 1120]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rcx + 1088]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rcx + 1056]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rcx + 1024]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rcx + 1280]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rcx + 1312]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rcx + 1344]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rcx + 1376]
	vaddpd	ymm4, ymm4, ymmword ptr [rdi + 8*rcx + 1408]
	vaddpd	ymm5, ymm5, ymmword ptr [rdi + 8*rcx + 1440]
	vaddpd	ymm6, ymm6, ymmword ptr [rdi + 8*rcx + 1472]
	vaddpd	ymm7, ymm7, ymmword ptr [rdi + 8*rcx + 1504]
	vaddpd	ymm7, ymm7, ymmword ptr [rdi + 8*rcx + 1760]
	vaddpd	ymm6, ymm6, ymmword ptr [rdi + 8*rcx + 1728]
	vaddpd	ymm5, ymm5, ymmword ptr [rdi + 8*rcx + 1696]
	vaddpd	ymm4, ymm4, ymmword ptr [rdi + 8*rcx + 1664]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rcx + 1632]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rcx + 1600]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rcx + 1568]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rcx + 1536]
	vaddpd	ymm0, ymm0, ymmword ptr [rdi + 8*rcx + 1792]
	vaddpd	ymm1, ymm1, ymmword ptr [rdi + 8*rcx + 1824]
	vaddpd	ymm2, ymm2, ymmword ptr [rdi + 8*rcx + 1856]
	vaddpd	ymm3, ymm3, ymmword ptr [rdi + 8*rcx + 1888]
	vaddpd	ymm4, ymm4, ymmword ptr [rdi + 8*rcx + 1920]
	vaddpd	ymm5, ymm5, ymmword ptr [rdi + 8*rcx + 1952]
	vaddpd	ymm6, ymm6, ymmword ptr [rdi + 8*rcx + 1984]
	vaddpd	ymm7, ymm7, ymmword ptr [rdi + 8*rcx + 2016]
	add	rcx, 256
	add	rsi, 8
	jne	.LBB0_9
# %bb.10:
	test	r9, r9
	je	.LBB0_13
.LBB0_11:
	lea	rcx, [rdi + 8*rcx]
	neg	r9
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	vaddpd	ymm0, ymm0, ymmword ptr [rcx]
	vaddpd	ymm1, ymm1, ymmword ptr [rcx + 32]
	vaddpd	ymm2, ymm2, ymmword ptr [rcx + 64]
	vaddpd	ymm3, ymm3, ymmword ptr [rcx + 96]
	vaddpd	ymm4, ymm4, ymmword ptr [rcx + 128]
	vaddpd	ymm5, ymm5, ymmword ptr [rcx + 160]
	vaddpd	ymm6, ymm6, ymmword ptr [rcx + 192]
	vaddpd	ymm7, ymm7, ymmword ptr [rcx + 224]
	add	rcx, 256
	add	r9, 1
	jne	.LBB0_12
.LBB0_13:
	vaddpd	ymm2, ymm2, ymm6
	vaddpd	ymm0, ymm0, ymm4
	vaddpd	ymm0, ymm0, ymm2
	vaddpd	ymm2, ymm3, ymm7
	vaddpd	ymm1, ymm1, ymm5
	vaddpd	ymm1, ymm1, ymm2
	vaddpd	ymm0, ymm0, ymm1
	vextractf128	xmm1, ymm0, 1
	vaddpd	ymm0, ymm0, ymm1
	vhaddpd	ymm0, ymm0, ymm0
	cmp	r8, rax
	je	.LBB0_14
.LBB0_4:
	lea	rcx, [rdi + 8*r8]
	sub	rax, r8
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	vaddsd	xmm0, xmm0, qword ptr [rcx]
	add	rcx, 8
	add	rax, -1
	jne	.LBB0_5
.LBB0_14:
	vmovsd	qword ptr [rdx], xmm0
	mov	rsp, rbp
	pop	rbp
	vzeroupper
	ret
.Lfunc_end0:
	.size	sum_float64, .Lfunc_end0-sum_float64
                                        # -- End function

	.ident	"Apple LLVM version 10.0.0 (clang-1000.10.44.4)"
	.section	".note.GNU-stack","",@progbits

//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

TEXT ·__sum_float64(SB), $0-24

	MOVQ buf+0(FP), DI
	MOVQ len+8(FP), SI
	MOVQ res+16(FP), DX

	WORD $0xf685             // test    esi, esi
	JLE  LBB0_1
	WORD $0x8941; BYTE $0xf1 // mov    r9d, esi
	WORD $0xfe83; BYTE $0x0f // cmp    esi, 15
	JA   LBB0_4
	LONG $0xc057f9c5         // vxorpd    xmm0, xmm0, xmm0
	WORD $0xc931             // xor    ecx, ecx
	JMP  LBB0_11

LBB0_1:
	LONG $0xc057f9c5 // vxorpd    xmm0, xmm0, xmm0
	JMP  LBB0_12

LBB0_4:
	WORD $0x8944; BYTE $0xc9     // mov    ecx, r9d
	WORD $0xe183; BYTE $0xf0     // and    ecx, -16
	LONG $0xf0718d48             // lea    rsi, [rcx - 16]
	WORD $0x8948; BYTE $0xf0     // mov    rax, rsi
	LONG $0x04e8c148             // shr    rax, 4
	WORD $0xff48; BYTE $0xc0     // inc    rax
	WORD $0x8941; BYTE $0xc0     // mov    r8d, eax
	LONG $0x01e08341             // and    r8d, 1
	WORD $0x8548; BYTE $0xf6     // test    rsi, rsi
	JE   LBB0_5
	LONG $0x000001be; BYTE $0x00 // mov    esi, 1
	WORD $0x2948; BYTE $0xc6     // sub    rsi, rax
	LONG $0x30448d49; BYTE $0xff // lea    rax, [r8 + rsi - 1]
	LONG $0xc057f9c5             // vxorpd    xmm0, xmm0, xmm0
	WORD $0xf631                 // xor    esi, esi
	LONG $0xc957f1c5             // vxorpd    xmm1, xmm1, xmm1
	LONG $0xd257e9c5             // vxorpd    xmm2, xmm2, xmm2
	LONG $0xdb57e1c5             // vxorpd    xmm3, xmm3, xmm3

LBB0_7:
	LONG $0x0458fdc5; BYTE $0xf7         // vaddpd    ymm0, ymm0, yword [rdi + 8*rsi]
	LONG $0x4c58f5c5; WORD $0x20f7       // vaddpd    ymm1, ymm1, yword [rdi + 8*rsi + 32]
	LONG $0x5458edc5; WORD $0x40f7       // vaddpd    ymm2, ymm2, yword [rdi + 8*rsi + 64]
	LONG $0x5c58e5c5; WORD $0x60f7       // vaddpd    ymm3, ymm3, yword [rdi + 8*rsi + 96]
	QUAD $0x000080f78458fdc5; BYTE $0x00 // vaddpd    ymm0, ymm0, yword [rdi + 8*rsi + 128]
	QUAD $0x0000a0f78c58f5c5; BYTE $0x00 // vaddpd    ymm1, ymm1, yword [rdi + 8*rsi + 160]
	QUAD $0x0000c0f79458edc5; BYTE $0x00 // vaddpd    ymm2, ymm2, yword [rdi + 8*rsi + 192]
	QUAD $0x0000e0f79c58e5c5; BYTE $0x00 // vaddpd    ymm3, ymm3, yword [rdi + 8*rsi + 224]
	LONG $0x20c68348                     // add    rsi, 32
	LONG $0x02c08348                     // add    rax, 2
	JNE  LBB0_7
	WORD $0x854d; BYTE $0xc0             // test    r8, r8
	JE   LBB0_10

LBB0_9:
	LONG $0x5c58e5c5; WORD $0x60f7 // vaddpd    ymm3, ymm3, yword [rdi + 8*rsi + 96]
	LONG $0x5458edc5; WORD $0x40f7 // vaddpd    ymm2, ymm2, yword [rdi + 8*rsi + 64]
	LONG $0x4c58f5c5; WORD $0x20f7 // vaddpd    ymm1, ymm1, yword [rdi + 8*rsi + 32]
	LONG $0x0458fdc5; BYTE $0xf7   // vaddpd    ymm0, ymm0, yword [rdi + 8*rsi]

LBB0_10:
	LONG $0xc058f5c5               // vaddpd    ymm0, ymm1, ymm0
	LONG $0xc058edc5               // vaddpd    ymm0, ymm2, ymm0
	LONG $0xc058e5c5               // vaddpd    ymm0, ymm3, ymm0
	LONG $0x197de3c4; WORD $0x01c1 // vextractf128    xmm1, ymm0, 1
	LONG $0xc158fdc5               // vaddpd    ymm0, ymm0, ymm1
	LONG $0xc07cfdc5               // vhaddpd    ymm0, ymm0, ymm0
	WORD $0x394c; BYTE $0xc9       // cmp    rcx, r9
	JE   LBB0_12

LBB0_11:
	LONG $0x0458fbc5; BYTE $0xcf // vaddsd    xmm0, xmm0, qword [rdi + 8*rcx]
	WORD $0xff48; BYTE $0xc1     // inc    rcx
	WORD $0x3949; BYTE $0xc9     // cmp    r9, rcx
	JNE  LBB0_11

LBB0_12:
	LONG $0x0211fbc5 // vmovsd    qword [rdx], xmm0
	VZEROUPPER
	RET

LBB0_5:
	LONG $0xc057f9c5         // vxorpd    xmm0, xmm0, xmm0
	WORD $0xf631             // xor    esi, esi
	LONG $0xc957f1c5         // vxorpd    xmm1, xmm1, xmm1
	LONG $0xd257e9c5         // vxorpd    xmm2, xmm2, xmm2
	LONG $0xdb57e1c5         // vxorpd    xmm3, xmm3, xmm3
	WORD $0x854d; BYTE $0xc0 // test    r8, r8
	JNE  LBB0_9
	JMP  LBB0_10

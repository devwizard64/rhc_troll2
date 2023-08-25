.create "build/libultra/src/PR/gspFast3D.fifo.data.bin", 0

	.half 0, 0, 0, prg_init_start
	.half 0, 0, 0, prg_main_start
	.half 0, 0, 0, prg_ext_start
	.half 0, 0, 0, prg_ext_start
	.half 0, 0, 0, prg_ext_start
	.half 4090, -4090, 32767, 0
	.align 16
	.half 0, 1, 2, -1, 16384, 4, 1587, 512
	.half 0x7FFF, 0xFFF8, 0x0008, 0x0040, 0x0020, 0x8000, 0x01CC, 0xCCCC
	.half 1, -1, 1, 1, 1, -1, 1, 1
	.half 2, 2, 2, 2, 2, 2, 2, 2
	.half 1, 0, 0, 1, 0, 1, 0, 1
	.half 1, 0, 0, -1, 0, 1, 0, -1
	.half 0, 0, 1, -1, 0, 0, 1, 1
	.half light
	.half 0x7FFF, 0x571D, 0x3A0C
	.half 0x0001, 0x0002, 0x0100, 0x0200, 0x4000, 0x0040
	.half 0
	.half exit
	.word 0xFFFFFF
	.half case_DMA
	.half cmd_next
	.half case_IMM
	.half case_RDP
	.half cmd_next
	.half case_G_MTX
	.half cmd_next
	.half case_G_MOVEMEM
	.half case_G_VTX
	.half cmd_next
	.half case_G_DL
	.half cmd_next
	.half cmd_next
	.half cmd_next
	.half case_G_RDPHALF_CONT
	.half case_G_RDPHALF_2
	.half case_G_RDPHALF_1
	.half case_G_PERSPNORM
	.half cmd_next
	.half case_G_CLEARGEOMETRYMODE
	.half case_G_SETGEOMETRYMODE
	.half case_G_ENDDL
	.half case_G_SETOTHERMODE_L
	.half case_G_SETOTHERMODE_H
	.half case_G_TEXTURE
	.half case_G_MOVEWORD
	.half case_G_POPMTX
	.half case_G_CULLDL
	.half case_G_TRI1
	.half ProcClipI
	.half ProcClipO
	.half ProcClipFI
	.half ProcClipFO
	.half ProcClipDraw
	.half clip
	.half ProcClipNext
	.half cmd_next_sync
	.half 0
	.word 0
	.word 0
	.align 8
	.byte 0
	.align 2
	.half 0xFFFF
	.align 4
	.half 0
	.byte 0
	.byte 0
	.word 0xEF080CFF
	.word 0x00000000
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.half 0
	.half 0
	.word 0
	.word 0x80000040
	.word 0
	.word 0
	.half 0x4000
	.half 0x4000
	.half 0
	.half 0
	.word 0
	.half 0
	.half 0
	.half 0
	.half 0
	.align 8
	.word 0
	.word 0
	.half 0
	.align 4
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.align 16
	.half 0x8000, 0x0000, 0x8000, 0x0000
	.word 0, 0
	.half 0x0080, 0x0000, 0x0080, 0x0000
	.byte 127, 0, 0, 0
	.word 0
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.word 0, 0
	.word 0, 0
	.byte 0, 127, 0, 0
	.word 0
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.word 0, 0
	.word 0, 0, 0, 0, 0, 0
	.half -8191, 8191, 4, 0
	.word 0xFF000000, 0xFF000000
	.word 0, 0, 0, 0, 0, 0
	.word 0, 0, 0, 0, 0, 0, 0, 0
	.word 0, 0, 0, 0, 0, 0, 0, 0
	.asciz "RSP SW Version: 2.0D, 04-01-96"
	.ascii "SGI U64 GFX SW TEAM: S Anderson, S Carr, H Cheng, K Luster, "
	.ascii "R Moore, N Pooley, A Srinivasan"
	.byte 10, 0
	.word 0
	.half 0x320
	.half 0x1B0
	.half 0x1D0
	.half 0x1F0
	.half 0x210
	.half 0x230
	.half 0x250
	.half 0x270
	.half 0x290
	.half 0x2B0
	.half 0x2D0
	.half 0x138
	.half 0x3F0
	.half 0x400
	.half 0x410
	.half 0x3E0
	.half 0x12C
	.half 0x070
	.half 0x160
	.half 0x330
	.half 0x1F0
	.half 0x420
	.align 16
	.half 0, 0, 0, 0, 0, 0, 0, 0
	.half 256, 0, 255
	.word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
	.align 16
data_end:

.if 0x800-orga() > 0
.fill 0x800-orga()
.endif

.close

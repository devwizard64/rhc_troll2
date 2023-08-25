.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl obj_shape_802D2210
obj_shape_802D2210:
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sll     $t6, $a1, 4
	addu    $t7, $a0, $t6
	sh      $a2, 0x0000($t7)
	sll     $t8, $a1, 4
	addu    $t9, $a0, $t8
	sh      $a3, 0x0002($t9)
	lh      $t0, 0x0012($sp)
	sll     $t1, $a1, 4
	addu    $t2, $a0, $t1
	sh      $t0, 0x0004($t2)
	sll     $t3, $a1, 4
	addu    $t4, $a0, $t3
	sh      $0, 0x0006($t4)
	lh      $t5, 0x0016($sp)
	sll     $t6, $a1, 4
	addu    $t7, $a0, $t6
	sh      $t5, 0x0008($t7)
	lh      $t8, 0x001A($sp)
	sll     $t9, $a1, 4
	addu    $t1, $a0, $t9
	sh      $t8, 0x000A($t1)
	lbu     $t0, 0x001F($sp)
	sll     $t2, $a1, 4
	addu    $t3, $a0, $t2
	sb      $t0, 0x000C($t3)
	lbu     $t4, 0x0023($sp)
	sll     $t6, $a1, 4
	addu    $t5, $a0, $t6
	sb      $t4, 0x000D($t5)
	lbu     $t7, 0x0027($sp)
	sll     $t9, $a1, 4
	addu    $t8, $a0, $t9
	sb      $t7, 0x000E($t8)
	lbu     $t1, 0x002B($sp)
	sll     $t2, $a1, 4
	addu    $t0, $a0, $t2
	sb      $t1, 0x000F($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_shape_802D22C4
obj_shape_802D22C4:
	mtc1    $0, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f12
	c.le.d  $f6, $f4
	nop
	bc1f    .L802D231C
	nop
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f12
	add.d   $f16, $f8, $f10
	trunc.w.d $f18, $f16
	mfc1    $v0, $f18
	nop
	sll     $t7, $v0, 16
	move    $v0, $t7
	sra     $t8, $v0, 16
	jr      $ra
	move    $v0, $t8
	b       .L802D2350
	nop
.L802D231C:
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f12
	sub.d   $f8, $f4, $f6
	trunc.w.d $f10, $f8
	mfc1    $v0, $f10
	nop
	sll     $t0, $v0, 16
	move    $v0, $t0
	sra     $t1, $v0, 16
	jr      $ra
	move    $v0, $t1
.L802D2350:
	jr      $ra
	nop
	jr      $ra
	nop

.globl s_obj_shape_802D2360
s_obj_shape_802D2360:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802D2450
	nop
	jal     save_flag_get
	nop
	sw      $v0, 0x002C($sp)
	lui     $t7, %hi(hud+0x04)
	lh      $t7, %lo(hud+0x04)($t7)
	slti    $at, $t7, 0x000A
	bnez    $at, .L802D2450
	nop
	lw      $t8, 0x002C($sp)
	andi    $t9, $t8, 0x0002
	bnez    $t9, .L802D2450
	nop
	jal     gfx_alloc
	li      $a0, 0x0010
	sw      $v0, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	bnez    $t0, .L802D23E4
	nop
	b       .L802D2460
	move    $v0, $0
	b       .L802D23EC
	nop
.L802D23E4:
	lw      $t1, 0x0020($sp)
	sw      $t1, 0x0024($sp)
.L802D23EC:
	lw      $t2, 0x0034($sp)
	sw      $t2, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	lh      $t4, 0x0002($t3)
	andi    $t5, $t4, 0x00FF
	ori     $t6, $t5, 0x0500
	sh      $t6, 0x0002($t3)
	lw      $t7, 0x0024($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x0024($sp)
	sw      $t7, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x001C($sp)
	la.u    $t1, 0x0702A880
	la.l    $t1, 0x0702A880
	sw      $t1, 0x0004($t2)
	lw      $t4, 0x0024($sp)
	sw      $t4, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $t5, 0xB8000000
	sw      $t5, 0x0000($t6)
	lw      $t3, 0x0018($sp)
	sw      $0, 0x0004($t3)
.L802D2450:
	b       .L802D2460
	lw      $v0, 0x0020($sp)
	b       .L802D2460
	nop
.L802D2460:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl s_obj_shape_802D2470
s_obj_shape_802D2470:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	li      $at, 0x0001
	beq     $a0, $at, .L802D24BC
	nop
	lui     $at, %hi(obj_shape_803312F8)
	sh      $0, %lo(obj_shape_803312F8)($at)
	lui     $t6, %hi(draw_timer)
	lhu     $t6, %lo(draw_timer)($t6)
	lui     $at, %hi(obj_shape_803312F4)
	addiu   $t7, $t6, -0x0001
	sh      $t7, %lo(obj_shape_803312F4)($at)
	lui     $t8, %hi(draw_timer)
	lhu     $t8, %lo(draw_timer)($t8)
	lui     $at, %hi(obj_shape_803312F0)
	sh      $t8, %lo(obj_shape_803312F0)($at)
	lui     $at, %hi(obj_shape_803612F0)
	b       .L802D2508
	sb      $0, %lo(obj_shape_803612F0)($at)
.L802D24BC:
	lui     $t9, %hi(obj_shape_803312F0)
	lh      $t9, %lo(obj_shape_803312F0)($t9)
	lui     $at, %hi(obj_shape_803312F4)
	sh      $t9, %lo(obj_shape_803312F4)($at)
	lui     $t0, %hi(draw_timer)
	lhu     $t0, %lo(draw_timer)($t0)
	lui     $at, %hi(obj_shape_803312F0)
	sh      $t0, %lo(obj_shape_803312F0)($at)
	lui     $t1, %hi(obj_shape_803312F4)
	lui     $t2, %hi(obj_shape_803312F0)
	lh      $t2, %lo(obj_shape_803312F0)($t2)
	lh      $t1, %lo(obj_shape_803312F4)($t1)
	beq     $t1, $t2, .L802D2508
	nop
	lui     $t3, %hi(obj_shape_803312F8)
	lh      $t3, %lo(obj_shape_803312F8)($t3)
	lui     $at, %hi(obj_shape_803312F8)
	addiu   $t4, $t3, 0x0400
	sh      $t4, %lo(obj_shape_803312F8)($at)
.L802D2508:
	b       .L802D2518
	move    $v0, $0
	b       .L802D2518
	nop
.L802D2518:
	jr      $ra
	nop

.globl s_obj_shape_802D2520
s_obj_shape_802D2520:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0080($sp)
	sw      $a1, 0x0084($sp)
	sw      $a2, 0x0088($sp)
	lw      $t6, 0x0084($sp)
	sw      $t6, 0x0068($sp)
	la.u    $a0, 0x07019080
	jal     segment_to_virtual
	la.l    $a0, 0x07019080
	sw      $v0, 0x0064($sp)
	sw      $0, 0x0060($sp)
	sw      $0, 0x005C($sp)
	lw      $t7, 0x0080($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L802D28AC
	nop
	jal     gfx_alloc
	li      $a0, 0x0150
	sw      $v0, 0x006C($sp)
	jal     gfx_alloc
	li      $a0, 0x0038
	sw      $v0, 0x0060($sp)
	lw      $t8, 0x0060($sp)
	sw      $t8, 0x005C($sp)
	lw      $t9, 0x006C($sp)
	beqz    $t9, .L802D259C
	nop
	lw      $t0, 0x0060($sp)
	bnez    $t0, .L802D25A4
	nop
.L802D259C:
	b       .L802D28BC
	move    $v0, $0
.L802D25A4:
	lw      $t1, 0x0068($sp)
	lh      $t2, 0x0002($t1)
	andi    $t3, $t2, 0x00FF
	ori     $t4, $t3, 0x0100
	sh      $t4, 0x0002($t1)
	sh      $0, 0x007E($sp)
.L802D25BC:
	lh      $t5, 0x007E($sp)
	li      $at, 0x0003
	div     $0, $t5, $at
	mflo    $t6
	sh      $t6, 0x007C($sp)
	nop
	lh      $t7, 0x007E($sp)
	li      $at, 0x0003
	div     $0, $t7, $at
	mfhi    $t8
	sh      $t8, 0x007A($sp)
	nop
	lh      $t0, 0x007E($sp)
	lw      $t9, 0x0064($sp)
	sll     $t2, $t0, 2
	sll     $t3, $t2, 1
	addu    $t4, $t9, $t3
	lh      $t1, 0x0000($t4)
	sh      $t1, 0x0078($sp)
	lh      $t6, 0x007C($sp)
	lui     $t5, %hi(obj_shape_803312F8)
	lh      $t5, %lo(obj_shape_803312F8)($t5)
	lh      $t0, 0x007A($sp)
	sll     $t7, $t6, 12
	addu    $t8, $t5, $t7
	sll     $t2, $t0, 14
	addu    $t9, $t8, $t2
	andi    $t3, $t9, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t1, $t4, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x40340000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	jal     obj_shape_802D22C4
	cvt.s.d $f12, $f10
	sh      $v0, 0x0076($sp)
	lh      $t5, 0x007E($sp)
	lw      $t6, 0x0064($sp)
	sll     $t7, $t5, 2
	sll     $t0, $t7, 1
	addu    $t8, $t6, $t0
	lh      $t2, 0x0002($t8)
	sh      $t2, 0x0074($sp)
	lh      $t3, 0x007E($sp)
	lw      $t9, 0x0064($sp)
	sll     $t4, $t3, 2
	sll     $t1, $t4, 1
	addu    $t5, $t9, $t1
	lh      $t7, 0x0004($t5)
	sh      $t7, 0x0072($sp)
	lh      $t0, 0x007E($sp)
	lw      $t6, 0x0064($sp)
	sll     $t8, $t0, 2
	sll     $t2, $t8, 1
	addu    $t3, $t6, $t2
	lh      $t4, 0x0006($t3)
	sh      $t4, 0x0070($sp)
	lh      $t9, 0x0074($sp)
	lh      $t1, 0x0072($sp)
	lh      $t5, 0x0070($sp)
	li      $t7, 0x007F
	li      $t0, 0x00FF
	sw      $t0, 0x0028($sp)
	sw      $t7, 0x0020($sp)
	lw      $a0, 0x006C($sp)
	lh      $a1, 0x007E($sp)
	lh      $a2, 0x0078($sp)
	lh      $a3, 0x0076($sp)
	sw      $0, 0x001C($sp)
	sw      $0, 0x0024($sp)
	sw      $t9, 0x0010($sp)
	sw      $t1, 0x0014($sp)
	jal     obj_shape_802D2210
	sw      $t5, 0x0018($sp)
	lh      $t8, 0x007E($sp)
	addiu   $t6, $t8, 0x0001
	sll     $t2, $t6, 16
	sra     $t3, $t2, 16
	slti    $at, $t3, 0x0015
	bnez    $at, .L802D25BC
	sh      $t6, 0x007E($sp)
	lw      $t4, 0x005C($sp)
	addiu   $t9, $t4, 0x0008
	sw      $t9, 0x005C($sp)
	sw      $t4, 0x0054($sp)
	lw      $t5, 0x0054($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t5)
	lw      $t0, 0x0054($sp)
	la.u    $t7, 0x07019128
	la.l    $t7, 0x07019128
	sw      $t7, 0x0004($t0)
	lw      $t8, 0x005C($sp)
	addiu   $t6, $t8, 0x0008
	sw      $t6, 0x005C($sp)
	sw      $t8, 0x0050($sp)
	lw      $t3, 0x0050($sp)
	li.u    $t2, 0x04B000C0
	li.l    $t2, 0x04B000C0
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x006C($sp)
	lw      $t9, 0x0050($sp)
	sw      $t4, 0x0004($t9)
	lw      $t1, 0x005C($sp)
	addiu   $t5, $t1, 0x0008
	sw      $t5, 0x005C($sp)
	sw      $t1, 0x004C($sp)
	lw      $t0, 0x004C($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t0)
	lw      $t6, 0x004C($sp)
	la.u    $t8, 0x07019198
	la.l    $t8, 0x07019198
	sw      $t8, 0x0004($t6)
	lw      $t2, 0x005C($sp)
	addiu   $t3, $t2, 0x0008
	sw      $t3, 0x005C($sp)
	sw      $t2, 0x0048($sp)
	lw      $t9, 0x0048($sp)
	li.u    $t4, 0x04B000C0
	li.l    $t4, 0x04B000C0
	sw      $t4, 0x0000($t9)
	lw      $t1, 0x006C($sp)
	lw      $t7, 0x0048($sp)
	addiu   $t5, $t1, 0x0090
	sw      $t5, 0x0004($t7)
	lw      $t0, 0x005C($sp)
	addiu   $t8, $t0, 0x0008
	sw      $t8, 0x005C($sp)
	sw      $t0, 0x0044($sp)
	lw      $t2, 0x0044($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t2)
	lw      $t4, 0x0044($sp)
	la.u    $t3, 0x07019198
	la.l    $t3, 0x07019198
	sw      $t3, 0x0004($t4)
	lw      $t9, 0x005C($sp)
	addiu   $t1, $t9, 0x0008
	sw      $t1, 0x005C($sp)
	sw      $t9, 0x0040($sp)
	lw      $t7, 0x0040($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t7)
	lw      $t8, 0x0040($sp)
	la.u    $t0, 0x07019200
	la.l    $t0, 0x07019200
	sw      $t0, 0x0004($t8)
	lw      $t6, 0x005C($sp)
	sw      $t6, 0x003C($sp)
	lw      $t3, 0x003C($sp)
	li      $t2, 0xB8000000
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x003C($sp)
	sw      $0, 0x0004($t4)
	lui     $t9, %hi(shape_object)
	lw      $t9, %lo(shape_object)($t9)
	sw      $t9, 0x0058($sp)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lw      $t7, 0x0058($sp)
	lw      $t5, 0x0214($t1)
	bne     $t5, $t7, .L802D2870
	nop
	li      $t0, 0x0002
	lui     $at, %hi(obj_shape_803612F0)
	b       .L802D28AC
	sb      $t0, %lo(obj_shape_803612F0)($at)
.L802D2870:
	lw      $t8, 0x0058($sp)
	mtc1    $0, $f5
	mtc1    $0, $f4
	lwc1    $f16, 0x00B8($t8)
	cvt.d.s $f18, $f16
	c.eq.d  $f18, $f4
	nop
	bc1t    .L802D28A4
	nop
	li      $t6, 0x0001
	lui     $at, %hi(obj_shape_803612F0)
	b       .L802D28AC
	sb      $t6, %lo(obj_shape_803612F0)($at)
.L802D28A4:
	lui     $at, %hi(obj_shape_803612F0)
	sb      $0, %lo(obj_shape_803612F0)($at)
.L802D28AC:
	b       .L802D28BC
	lw      $v0, 0x0060($sp)
	b       .L802D28BC
	nop
.L802D28BC:
	lw      $ra, 0x0034($sp)
	addiu   $sp, $sp, 0x0080
	jr      $ra
	nop

.globl s_obj_shape_802D28CC
s_obj_shape_802D28CC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lw      $t6, 0x0034($sp)
	sw      $t6, 0x002C($sp)
	sw      $0, 0x0028($sp)
	sw      $0, 0x0024($sp)
	lw      $t7, 0x0030($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L802D299C
	nop
	jal     gfx_alloc
	li      $a0, 0x0018
	sw      $v0, 0x0028($sp)
	lw      $t8, 0x0028($sp)
	sw      $t8, 0x0024($sp)
	lw      $t9, 0x002C($sp)
	lh      $t0, 0x0002($t9)
	andi    $t1, $t0, 0x00FF
	ori     $t2, $t1, 0x0100
	sh      $t2, 0x0002($t9)
	lw      $t3, 0x0024($sp)
	addiu   $t4, $t3, 0x0008
	sw      $t4, 0x0024($sp)
	sw      $t3, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0020($sp)
	la.u    $t7, gfx_wipe_start
	la.l    $t7, gfx_wipe_start
	sw      $t7, 0x0004($t8)
	lw      $t0, 0x0024($sp)
	addiu   $t1, $t0, 0x0008
	sw      $t1, 0x0024($sp)
	sw      $t0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t9)
	lw      $t4, 0x001C($sp)
	la.u    $t3, 0x07026400
	la.l    $t3, 0x07026400
	sw      $t3, 0x0004($t4)
	lw      $t5, 0x0024($sp)
	sw      $t5, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0xB8000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	sw      $0, 0x0004($t8)
.L802D299C:
	b       .L802D29AC
	lw      $v0, 0x0028($sp)
	b       .L802D29AC
	nop
.L802D29AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl s_scroll_802D0080
s_scroll_802D0080:
	addiu   $sp, $sp, -0x0010
	sw      $a1, 0x0014($sp)
	sw      $a2, 0x0018($sp)
	la.u    $t7, scroll_803312E8
	la.l    $t7, scroll_803312E8
	lw      $at, 0x0000($t7)
	lw      $t0, 0x0004($t7)
	addiu   $t6, $sp, 0x0004
	sw      $at, 0x0000($t6)
	sw      $t0, 0x0004($t6)
	li      $at, 0x0001
	beq     $a0, $at, .L802D00C0
	nop
	lui     $at, %hi(scroll_80330F40)
	b       .L802D01C8
	sw      $0, %lo(scroll_80330F40)($at)
.L802D00C0:
	li      $at, 0x0001
	bne     $a0, $at, .L802D01C8
	nop
	lui     $t1, %hi(object_80361184)
	lw      $t1, %lo(object_80361184)($t1)
	beqz    $t1, .L802D01C8
	nop
	lui     $t2, %hi(scroll_80330F40)
	lw      $t2, %lo(scroll_80330F40)($t2)
	bnez    $t2, .L802D01C8
	nop
	lui     $at, %hi(scroll_80330F3C)
	lwc1    $f4, %lo(scroll_80330F3C)($at)
	lui     $at, %hi(scroll_80338160)
	ldc1    $f8, %lo(scroll_80338160)($at)
	cvt.d.s $f6, $f4
	c.le.d  $f6, $f8
	nop
	bc1f    .L802D011C
	nop
	li      $t3, 0x001F
	b       .L802D0158
	sh      $t3, 0x0002($sp)
.L802D011C:
	lui     $at, %hi(scroll_80330F3C)
	lwc1    $f10, %lo(scroll_80330F3C)($at)
	li      $at, 0x40990000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	c.le.d  $f18, $f16
	nop
	bc1f    .L802D0150
	nop
	li      $t4, 0x0B00
	b       .L802D0158
	sh      $t4, 0x0002($sp)
.L802D0150:
	li      $t5, 0x0400
	sh      $t5, 0x0002($sp)
.L802D0158:
	lui     $t9, %hi(object_80361184)
	lw      $t9, %lo(object_80361184)($t9)
	sw      $0, 0x000C($sp)
	lh      $t8, 0x0000($t9)
	blez    $t8, .L802D01BC
	nop
.L802D0170:
	lw      $t0, 0x000C($sp)
	lui     $t7, %hi(object_80361184)
	lw      $t7, %lo(object_80361184)($t7)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	lh      $t6, 0x0002($sp)
	sll     $t1, $t1, 1
	sll     $t2, $t1, 1
	addu    $t3, $t7, $t2
	sh      $t6, 0x000C($t3)
	lw      $t4, 0x000C($sp)
	lui     $t9, %hi(object_80361184)
	lw      $t9, %lo(object_80361184)($t9)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x000C($sp)
	lh      $t8, 0x0000($t9)
	slt     $at, $t5, $t8
	bnez    $at, .L802D0170
	nop
.L802D01BC:
	li      $t0, 0x0001
	lui     $at, %hi(scroll_80330F40)
	sw      $t0, %lo(scroll_80330F40)($at)
.L802D01C8:
	b       .L802D01D8
	move    $v0, $0
	b       .L802D01D8
	nop
.L802D01D8:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl s_scroll_802D01E0
s_scroll_802D01E0:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	li      $at, 0x0001
	beq     $a0, $at, .L802D021C
	nop
	lui     $t6, %hi(draw_timer)
	lhu     $t6, %lo(draw_timer)($t6)
	lui     $at, %hi(scroll_80330F34)
	addiu   $t7, $t6, -0x0001
	sh      $t7, %lo(scroll_80330F34)($at)
	lui     $t8, %hi(draw_timer)
	lhu     $t8, %lo(draw_timer)($t8)
	lui     $at, %hi(scroll_80330F30)
	b       .L802D023C
	sh      $t8, %lo(scroll_80330F30)($at)
.L802D021C:
	lui     $t9, %hi(scroll_80330F30)
	lh      $t9, %lo(scroll_80330F30)($t9)
	lui     $at, %hi(scroll_80330F34)
	sh      $t9, %lo(scroll_80330F34)($at)
	lui     $t0, %hi(draw_timer)
	lhu     $t0, %lo(draw_timer)($t0)
	lui     $at, %hi(scroll_80330F30)
	sh      $t0, %lo(scroll_80330F30)($at)
.L802D023C:
	b       .L802D024C
	move    $v0, $0
	b       .L802D024C
	nop
.L802D024C:
	jr      $ra
	nop

scroll_802D0254:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	lh      $t6, 0x0056($sp)
	lh      $t7, 0x005A($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f10, 0x005C($sp)
	addu    $t8, $t6, $t7
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x40400000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f16, $f10
	cvt.d.s $f6, $f4
	mul.d   $f18, $f8, $f16
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	li      $at, 0x40400000
	mtc1    $at, $f9
	mtc1    $0, $f8
	sub.d   $f10, $f18, $f4
	mul.d   $f16, $f8, $f10
	nop
	mul.d   $f18, $f6, $f16
	trunc.w.d $f4, $f18
	mfc1    $t3, $f4
	nop
	sh      $t3, 0x003E($sp)
	lh      $t4, 0x0056($sp)
	lh      $t5, 0x005A($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x005C($sp)
	addu    $t6, $t4, $t5
	andi    $t7, $t6, 0xFFFF
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x40400000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f18, $f16
	cvt.d.s $f10, $f8
	mul.d   $f4, $f6, $f18
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	li      $at, 0x40400000
	mtc1    $at, $f7
	mtc1    $0, $f6
	sub.d   $f16, $f4, $f8
	mul.d   $f18, $f6, $f16
	nop
	mul.d   $f4, $f10, $f18
	trunc.w.d $f8, $f4
	mfc1    $t1, $f8
	nop
	sh      $t1, 0x003C($sp)
	lui     $t2, %hi(scroll_80330F38)
	lb      $t2, %lo(scroll_80330F38)($t2)
	li      $at, 0x0001
	bne     $t2, $at, .L802D03C0
	nop
	lh      $t3, 0x0052($sp)
	lh      $t4, 0x003E($sp)
	lh      $t5, 0x003C($sp)
	lbu     $t8, 0x0063($sp)
	li      $t6, 0x00FF
	li      $t7, 0x00FF
	sw      $t7, 0x0020($sp)
	sw      $t6, 0x001C($sp)
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0044($sp)
	lh      $a2, 0x004A($sp)
	lh      $a3, 0x004E($sp)
	sw      $0, 0x0024($sp)
	sw      $t3, 0x0010($sp)
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	jal     obj_shape_802D2210
	sw      $t8, 0x0028($sp)
	b       .L802D046C
	nop
.L802D03C0:
	lui     $t9, %hi(scroll_80330F38)
	lb      $t9, %lo(scroll_80330F38)($t9)
	li      $at, 0x0002
	bne     $t9, $at, .L802D0420
	nop
	lh      $t0, 0x0052($sp)
	lh      $t1, 0x003E($sp)
	lh      $t2, 0x003C($sp)
	lbu     $t4, 0x0063($sp)
	li      $t3, 0x00FF
	sw      $t3, 0x001C($sp)
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0044($sp)
	lh      $a2, 0x004A($sp)
	lh      $a3, 0x004E($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x0024($sp)
	sw      $t0, 0x0010($sp)
	sw      $t1, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	jal     obj_shape_802D2210
	sw      $t4, 0x0028($sp)
	b       .L802D046C
	nop
.L802D0420:
	lh      $t5, 0x0052($sp)
	lh      $t6, 0x003E($sp)
	lh      $t7, 0x003C($sp)
	lbu     $t1, 0x0063($sp)
	li      $t8, 0x00FF
	li      $t9, 0x00FF
	li      $t0, 0x00FF
	sw      $t0, 0x0024($sp)
	sw      $t9, 0x0020($sp)
	sw      $t8, 0x001C($sp)
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0044($sp)
	lh      $a2, 0x004A($sp)
	lh      $a3, 0x004E($sp)
	sw      $t5, 0x0010($sp)
	sw      $t6, 0x0014($sp)
	sw      $t7, 0x0018($sp)
	jal     obj_shape_802D2210
	sw      $t1, 0x0028($sp)
.L802D046C:
	b       .L802D0474
	nop
.L802D0474:
	lw      $ra, 0x0034($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

scroll_802D0484:
	addiu   $sp, $sp, -0x0090
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0090($sp)
	sw      $a1, 0x0094($sp)
	lw      $t6, 0x0094($sp)
	lh      $t7, 0x0002($t6)
	sh      $t7, 0x008C($sp)
	lw      $t8, 0x0094($sp)
	lh      $t9, 0x0004($t8)
	sh      $t9, 0x008A($sp)
	lw      $t0, 0x0094($sp)
	lh      $t1, 0x0006($t0)
	sh      $t1, 0x0088($sp)
	lw      $t2, 0x0094($sp)
	lh      $t3, 0x0008($t2)
	sh      $t3, 0x0086($sp)
	lw      $t4, 0x0094($sp)
	lh      $t5, 0x000A($t4)
	sh      $t5, 0x0084($sp)
	lw      $t6, 0x0094($sp)
	lh      $t7, 0x000C($t6)
	sh      $t7, 0x0082($sp)
	lw      $t8, 0x0094($sp)
	lh      $t9, 0x000E($t8)
	sh      $t9, 0x0080($sp)
	lw      $t0, 0x0094($sp)
	lh      $t1, 0x0010($t0)
	sh      $t1, 0x007E($sp)
	lw      $t2, 0x0094($sp)
	lh      $t3, 0x0012($t2)
	sh      $t3, 0x007C($sp)
	lw      $t4, 0x0094($sp)
	lh      $t5, 0x0014($t4)
	sh      $t5, 0x007A($sp)
	lw      $t6, 0x0094($sp)
	lh      $t7, 0x0016($t6)
	sh      $t7, 0x0078($sp)
	lw      $t8, 0x0094($sp)
	lh      $t9, 0x0018($t8)
	sh      $t9, 0x0076($sp)
	lw      $t0, 0x0094($sp)
	lh      $t1, 0x001A($t0)
	sh      $t1, 0x0074($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0070($sp)
	lui     $t3, %hi(scroll_803612E0)
	lh      $t3, %lo(scroll_803612E0)($t3)
	lh      $t2, 0x0074($sp)
	bne     $t2, $t3, .L802D0560
	nop
	jal     gfx_alloc
	li      $a0, 0x0018
	b       .L802D056C
	sw      $v0, 0x006C($sp)
.L802D0560:
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x006C($sp)
.L802D056C:
	lw      $t4, 0x006C($sp)
	beqz    $t4, .L802D0584
	nop
	lw      $t5, 0x0070($sp)
	bnez    $t5, .L802D058C
	nop
.L802D0584:
	b       .L802D0A74
	move    $v0, $0
.L802D058C:
	lw      $t6, 0x006C($sp)
	sw      $t6, 0x0068($sp)
	lui     $t7, %hi(scroll_80330F30)
	lui     $t8, %hi(scroll_80330F34)
	lh      $t8, %lo(scroll_80330F34)($t8)
	lh      $t7, %lo(scroll_80330F30)($t7)
	beq     $t7, $t8, .L802D05C0
	nop
	lw      $t9, 0x0094($sp)
	lh      $t1, 0x008C($sp)
	lh      $t0, 0x0000($t9)
	addu    $t2, $t0, $t1
	sh      $t2, 0x0000($t9)
.L802D05C0:
	lw      $t3, 0x0094($sp)
	lh      $t4, 0x0000($t3)
	sh      $t4, 0x008E($sp)
	lh      $t5, 0x0078($sp)
	bnez    $t5, .L802D06EC
	nop
	lh      $t8, 0x008A($sp)
	lh      $t6, 0x0086($sp)
	lh      $t7, 0x008E($sp)
	mtc1    $t8, $f4
	lh      $t0, 0x0076($sp)
	lw      $a0, 0x0070($sp)
	cvt.s.w $f6, $f4
	move    $a1, $0
	lh      $a2, 0x0088($sp)
	lh      $a3, 0x0092($sp)
	sw      $0, 0x0018($sp)
	sw      $t6, 0x0010($sp)
	swc1    $f6, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	jal     scroll_802D0254
	sw      $t0, 0x0020($sp)
	lh      $t3, 0x008A($sp)
	lh      $t1, 0x0082($sp)
	lh      $t2, 0x008E($sp)
	mtc1    $t3, $f8
	lh      $t4, 0x0076($sp)
	li      $t9, 0x4000
	cvt.s.w $f10, $f8
	sw      $t9, 0x0018($sp)
	lw      $a0, 0x0070($sp)
	li      $a1, 0x0001
	lh      $a2, 0x0084($sp)
	lh      $a3, 0x0092($sp)
	swc1    $f10, 0x001C($sp)
	sw      $t1, 0x0010($sp)
	sw      $t2, 0x0014($sp)
	jal     scroll_802D0254
	sw      $t4, 0x0020($sp)
	lh      $t8, 0x008A($sp)
	lh      $t5, 0x007E($sp)
	lh      $t6, 0x008E($sp)
	mtc1    $t8, $f16
	lh      $t0, 0x0076($sp)
	li      $t7, -0x8000
	cvt.s.w $f18, $f16
	sw      $t7, 0x0018($sp)
	lw      $a0, 0x0070($sp)
	li      $a1, 0x0002
	lh      $a2, 0x0080($sp)
	lh      $a3, 0x0092($sp)
	swc1    $f18, 0x001C($sp)
	sw      $t5, 0x0010($sp)
	sw      $t6, 0x0014($sp)
	jal     scroll_802D0254
	sw      $t0, 0x0020($sp)
	lh      $t3, 0x008A($sp)
	lh      $t1, 0x007A($sp)
	lh      $t2, 0x008E($sp)
	mtc1    $t3, $f4
	lh      $t4, 0x0076($sp)
	li      $t9, -0x4000
	cvt.s.w $f6, $f4
	sw      $t9, 0x0018($sp)
	lw      $a0, 0x0070($sp)
	li      $a1, 0x0003
	lh      $a2, 0x007C($sp)
	lh      $a3, 0x0092($sp)
	swc1    $f6, 0x001C($sp)
	sw      $t1, 0x0010($sp)
	sw      $t2, 0x0014($sp)
	jal     scroll_802D0254
	sw      $t4, 0x0020($sp)
	b       .L802D07F8
	nop
.L802D06EC:
	lh      $t7, 0x008A($sp)
	lh      $t5, 0x0086($sp)
	lh      $t6, 0x008E($sp)
	mtc1    $t7, $f8
	lh      $t8, 0x0076($sp)
	lw      $a0, 0x0070($sp)
	cvt.s.w $f10, $f8
	move    $a1, $0
	lh      $a2, 0x0088($sp)
	lh      $a3, 0x0092($sp)
	sw      $0, 0x0018($sp)
	sw      $t5, 0x0010($sp)
	swc1    $f10, 0x001C($sp)
	sw      $t6, 0x0014($sp)
	jal     scroll_802D0254
	sw      $t8, 0x0020($sp)
	lh      $t9, 0x008A($sp)
	lh      $t0, 0x0082($sp)
	lh      $t1, 0x008E($sp)
	mtc1    $t9, $f16
	lh      $t3, 0x0076($sp)
	li      $t2, -0x4000
	cvt.s.w $f18, $f16
	sw      $t2, 0x0018($sp)
	lw      $a0, 0x0070($sp)
	li      $a1, 0x0001
	lh      $a2, 0x0084($sp)
	lh      $a3, 0x0092($sp)
	swc1    $f18, 0x001C($sp)
	sw      $t0, 0x0010($sp)
	sw      $t1, 0x0014($sp)
	jal     scroll_802D0254
	sw      $t3, 0x0020($sp)
	lh      $t7, 0x008A($sp)
	lh      $t4, 0x007E($sp)
	lh      $t5, 0x008E($sp)
	mtc1    $t7, $f4
	lh      $t8, 0x0076($sp)
	li      $t6, -0x8000
	cvt.s.w $f6, $f4
	sw      $t6, 0x0018($sp)
	lw      $a0, 0x0070($sp)
	li      $a1, 0x0002
	lh      $a2, 0x0080($sp)
	lh      $a3, 0x0092($sp)
	swc1    $f6, 0x001C($sp)
	sw      $t4, 0x0010($sp)
	sw      $t5, 0x0014($sp)
	jal     scroll_802D0254
	sw      $t8, 0x0020($sp)
	lh      $t9, 0x008A($sp)
	lh      $t0, 0x007A($sp)
	lh      $t1, 0x008E($sp)
	mtc1    $t9, $f8
	lh      $t3, 0x0076($sp)
	li      $t2, 0x4000
	cvt.s.w $f10, $f8
	sw      $t2, 0x0018($sp)
	lw      $a0, 0x0070($sp)
	li      $a1, 0x0003
	lh      $a2, 0x007C($sp)
	lh      $a3, 0x0092($sp)
	swc1    $f10, 0x001C($sp)
	sw      $t0, 0x0010($sp)
	sw      $t1, 0x0014($sp)
	jal     scroll_802D0254
	sw      $t3, 0x0020($sp)
.L802D07F8:
	lui     $t5, %hi(scroll_803612E0)
	lh      $t5, %lo(scroll_803612E0)($t5)
	lh      $t4, 0x0074($sp)
	beq     $t4, $t5, .L802D09E8
	nop
	lh      $t6, 0x0074($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802D0900
	nop
	b       .L802D0824
	nop
.L802D0824:
	lw      $t7, 0x0068($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x0068($sp)
	sw      $t7, 0x0064($sp)
	lw      $t1, 0x0064($sp)
	li      $t0, 0xFD700000
	sw      $t0, 0x0000($t1)
	lh      $t2, 0x0074($sp)
	lui     $t3, %hi(txt_scroll)
	lw      $t4, 0x0064($sp)
	sll     $t9, $t2, 2
	addu    $t3, $t3, $t9
	lw      $t3, %lo(txt_scroll)($t3)
	sw      $t3, 0x0004($t4)
	lw      $t5, 0x0068($sp)
	addiu   $t6, $t5, 0x0008
	sw      $t6, 0x0068($sp)
	sw      $t5, 0x0060($sp)
	lw      $t8, 0x0060($sp)
	li      $t7, 0xE8000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x0060($sp)
	sw      $0, 0x0004($t0)
	lw      $t1, 0x0068($sp)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x0068($sp)
	sw      $t1, 0x005C($sp)
	lw      $t3, 0x005C($sp)
	li      $t9, 0xF5700000
	sw      $t9, 0x0000($t3)
	lw      $t5, 0x005C($sp)
	li      $t4, 0x07000000
	sw      $t4, 0x0004($t5)
	lw      $t6, 0x0068($sp)
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x0068($sp)
	sw      $t6, 0x0058($sp)
	lw      $t0, 0x0058($sp)
	li      $t8, 0xE6000000
	sw      $t8, 0x0000($t0)
	lw      $t1, 0x0058($sp)
	sw      $0, 0x0004($t1)
	lw      $t2, 0x0068($sp)
	addiu   $t9, $t2, 0x0008
	sw      $t9, 0x0068($sp)
	sw      $t2, 0x0054($sp)
	lw      $t4, 0x0054($sp)
	li      $t3, 0xF3000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x0054($sp)
	li.u    $t5, 0x073FF100
	li.l    $t5, 0x073FF100
	sw      $t5, 0x0004($t6)
	b       .L802D09DC
	nop
.L802D0900:
	lw      $t7, 0x0068($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x0068($sp)
	sw      $t7, 0x0050($sp)
	lw      $t1, 0x0050($sp)
	li      $t0, 0xFD100000
	sw      $t0, 0x0000($t1)
	lh      $t2, 0x0074($sp)
	lui     $t3, %hi(txt_scroll)
	lw      $t4, 0x0050($sp)
	sll     $t9, $t2, 2
	addu    $t3, $t3, $t9
	lw      $t3, %lo(txt_scroll)($t3)
	sw      $t3, 0x0004($t4)
	lw      $t5, 0x0068($sp)
	addiu   $t6, $t5, 0x0008
	sw      $t6, 0x0068($sp)
	sw      $t5, 0x004C($sp)
	lw      $t8, 0x004C($sp)
	li      $t7, 0xE8000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x004C($sp)
	sw      $0, 0x0004($t0)
	lw      $t1, 0x0068($sp)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x0068($sp)
	sw      $t1, 0x0048($sp)
	lw      $t3, 0x0048($sp)
	li      $t9, 0xF5100000
	sw      $t9, 0x0000($t3)
	lw      $t5, 0x0048($sp)
	li      $t4, 0x07000000
	sw      $t4, 0x0004($t5)
	lw      $t6, 0x0068($sp)
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x0068($sp)
	sw      $t6, 0x0044($sp)
	lw      $t0, 0x0044($sp)
	li      $t8, 0xE6000000
	sw      $t8, 0x0000($t0)
	lw      $t1, 0x0044($sp)
	sw      $0, 0x0004($t1)
	lw      $t2, 0x0068($sp)
	addiu   $t9, $t2, 0x0008
	sw      $t9, 0x0068($sp)
	sw      $t2, 0x0040($sp)
	lw      $t4, 0x0040($sp)
	li      $t3, 0xF3000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x0040($sp)
	li.u    $t5, 0x073FF100
	li.l    $t5, 0x073FF100
	sw      $t5, 0x0004($t6)
	b       .L802D09DC
	nop
.L802D09DC:
	lh      $t7, 0x0074($sp)
	lui     $at, %hi(scroll_803612E0)
	sh      $t7, %lo(scroll_803612E0)($at)
.L802D09E8:
	lw      $t8, 0x0068($sp)
	addiu   $t0, $t8, 0x0008
	sw      $t0, 0x0068($sp)
	sw      $t8, 0x003C($sp)
	lw      $t2, 0x003C($sp)
	li.u    $t1, 0x04300040
	li.l    $t1, 0x04300040
	sw      $t1, 0x0000($t2)
	lw      $t9, 0x0070($sp)
	lw      $t4, 0x003C($sp)
	li      $at, 0x80000000
	addu    $t3, $t9, $at
	sw      $t3, 0x0004($t4)
	lw      $t5, 0x0068($sp)
	addiu   $t6, $t5, 0x0008
	sw      $t6, 0x0068($sp)
	sw      $t5, 0x0038($sp)
	lw      $t8, 0x0038($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t8)
	lw      $t1, 0x0038($sp)
	la.u    $t0, gfx_quad0
	la.l    $t0, gfx_quad0
	sw      $t0, 0x0004($t1)
	lw      $t2, 0x0068($sp)
	sw      $t2, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	li      $t9, 0xB8000000
	sw      $t9, 0x0000($t3)
	lw      $t4, 0x0034($sp)
	sw      $0, 0x0004($t4)
	b       .L802D0A74
	lw      $v0, 0x006C($sp)
	b       .L802D0A74
	nop
.L802D0A74:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0090
	jr      $ra
	nop

scroll_802D0A84:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x003C($sp)
	sw      $v0, 0x0034($sp)
	lw      $t6, 0x0034($sp)
	lh      $t7, 0x0000($t6)
	sh      $t7, 0x0032($sp)
	lh      $a0, 0x0032($sp)
	sll     $t8, $a0, 3
	move    $a0, $t8
	jal     gfx_alloc
	addiu   $a0, $a0, 0x0008
	sw      $v0, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	sw      $t9, 0x0028($sp)
	lw      $t0, 0x002C($sp)
	bnez    $t0, .L802D0AE0
	nop
	b       .L802D0BA0
	move    $v0, $0
.L802D0AE0:
	lh      $t1, 0x0032($sp)
	sw      $0, 0x0020($sp)
	blez    $t1, .L802D0B74
	nop
.L802D0AF0:
	lw      $t2, 0x0020($sp)
	lw      $t6, 0x0034($sp)
	lh      $a0, 0x003A($sp)
	sll     $t3, $t2, 3
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 1
	addiu   $t4, $t3, 0x0001
	sll     $t5, $t4, 1
	jal     scroll_802D0484
	addu    $a1, $t5, $t6
	sw      $v0, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	beqz    $t7, .L802D0B5C
	nop
	lw      $t8, 0x0028($sp)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x0028($sp)
	sw      $t8, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0024($sp)
	lw      $t4, 0x001C($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t4)
.L802D0B5C:
	lw      $t5, 0x0020($sp)
	lh      $t7, 0x0032($sp)
	addiu   $t6, $t5, 0x0001
	slt     $at, $t6, $t7
	bnez    $at, .L802D0AF0
	sw      $t6, 0x0020($sp)
.L802D0B74:
	lw      $t8, 0x0028($sp)
	sw      $t8, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	li      $t9, 0xB8000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0018($sp)
	sw      $0, 0x0004($t1)
	b       .L802D0BA0
	lw      $v0, 0x002C($sp)
	b       .L802D0BA0
	nop
.L802D0BA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

scroll_802D0BB0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	sw      $0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	lw      $t6, 0x001C($sp)
	li      $at, -0x0001
	sll     $t8, $t7, 3
	addu    $t9, $t6, $t8
	lh      $t0, 0x0000($t9)
	beq     $t0, $at, .L802D0C64
	nop
.L802D0BF4:
	lw      $t2, 0x0018($sp)
	lw      $t1, 0x001C($sp)
	lh      $t7, 0x0022($sp)
	sll     $t3, $t2, 3
	addu    $t4, $t1, $t3
	lh      $t5, 0x0000($t4)
	bne     $t5, $t7, .L802D0C38
	nop
	lw      $t8, 0x0018($sp)
	lw      $t6, 0x001C($sp)
	lh      $a0, 0x0026($sp)
	sll     $t9, $t8, 3
	addu    $t0, $t6, $t9
	jal     scroll_802D0A84
	lw      $a1, 0x0004($t0)
	b       .L802D0C74
	nop
.L802D0C38:
	lw      $t2, 0x0018($sp)
	addiu   $t1, $t2, 0x0001
	sw      $t1, 0x0018($sp)
	lw      $t4, 0x0018($sp)
	lw      $t3, 0x001C($sp)
	li      $at, -0x0001
	sll     $t5, $t4, 3
	addu    $t7, $t3, $t5
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, .L802D0BF4
	nop
.L802D0C64:
	b       .L802D0C74
	move    $v0, $0
	b       .L802D0C74
	nop
.L802D0C74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

scroll_802D0C84:
	addiu   $sp, $sp, -0x0008
	move    $a1, $a0
	sltiu   $at, $a1, 0x1103
	bnez    $at, .L802D0D44
	nop
	sltiu   $at, $a1, 0x1602
	bnez    $at, .L802D0CF4
	nop
	li      $at, 0x2202
	beq     $a1, $at, .L802D0EC8
	nop
	li      $at, 0x2301
	beq     $a1, $at, .L802D0ED4
	nop
	li      $at, 0x2302
	beq     $a1, $at, .L802D0EE0
	nop
	li      $at, 0x2401
	beq     $a1, $at, .L802D0EEC
	nop
	li      $at, 0x2601
	beq     $a1, $at, .L802D0EF8
	nop
	li      $at, 0x3601
	beq     $a1, $at, .L802D0F04
	nop
	b       .L802D0F10
	nop
.L802D0CF4:
	li      $at, 0x1201
	beq     $a1, $at, .L802D0E80
	nop
	li      $at, 0x1202
	beq     $a1, $at, .L802D0E98
	nop
	li      $at, 0x1205
	beq     $a1, $at, .L802D0E8C
	nop
	li      $at, 0x1301
	beq     $a1, $at, .L802D0EA4
	nop
	li      $at, 0x1302
	beq     $a1, $at, .L802D0EB0
	nop
	li      $at, 0x1601
	beq     $a1, $at, .L802D0EBC
	nop
	b       .L802D0F10
	nop
.L802D0D44:
	sltiu   $at, $a1, 0x0702
	bnez    $at, .L802D0DA0
	nop
	li      $at, 0x0702
	beq     $a1, $at, .L802D0E38
	nop
	li      $at, 0x0801
	beq     $a1, $at, .L802D0E44
	nop
	li      $at, 0x0851
	beq     $a1, $at, .L802D0E50
	nop
	li      $at, 0x1001
	beq     $a1, $at, .L802D0E5C
	nop
	li      $at, 0x1101
	beq     $a1, $at, .L802D0E68
	nop
	li      $at, 0x1102
	beq     $a1, $at, .L802D0E74
	nop
	b       .L802D0F10
	nop
.L802D0DA0:
.if 1
	li      $at, 0x0101
	beq     $a1, $at, .Lcase_0101
	nop
.endif
	li      $at, 0x0400
	beq     $a1, $at, .L802D0DF0
	nop
	li      $at, 0x0401
	beq     $a1, $at, .L802D0DFC
	nop
	li      $at, 0x0501
	beq     $a1, $at, .L802D0E08
	nop
	li      $at, 0x0600
	beq     $a1, $at, .L802D0E14
	nop
	li      $at, 0x0612
	beq     $a1, $at, .L802D0E20
	nop
	li      $at, 0x0701
	beq     $a1, $at, .L802D0E2C
	nop
	b       .L802D0F10
	nop
.if 1
.Lcase_0101:
	la.u    $v0, water_throwback
	b       .L802D0F20
	la.l    $v0, water_throwback
.endif
.L802D0DF0:
	la.u    $v0, 0x07026E24
	b       .L802D0F20
	la.l    $v0, 0x07026E24
.L802D0DFC:
	la.u    $v0, 0x07026E34
	b       .L802D0F20
	la.l    $v0, 0x07026E34
.L802D0E08:
	la.u    $v0, 0x07016708
	b       .L802D0F20
	la.l    $v0, 0x07016708
.L802D0E14:
	la.u    $v0, 0x070790F0
	b       .L802D0F20
	la.l    $v0, 0x070790F0
.L802D0E20:
	la.u    $v0, 0x07079100
	b       .L802D0F20
	la.l    $v0, 0x07079100
.L802D0E2C:
	la.u    $v0, 0x0702B900
	b       .L802D0F20
	la.l    $v0, 0x0702B900
.L802D0E38:
	la.u    $v0, 0x0702B950
	b       .L802D0F20
	la.l    $v0, 0x0702B950
.L802D0E44:
	la.u    $v0, 0x07012778
	b       .L802D0F20
	la.l    $v0, 0x07012778
.L802D0E50:
	la.u    $v0, 0x070127C8
	b       .L802D0F20
	la.l    $v0, 0x070127C8
.L802D0E5C:
	la.u    $v0, 0x0700FA70
	b       .L802D0F20
	la.l    $v0, 0x0700FA70
.L802D0E68:
	la.u    $v0, 0x07018748
	b       .L802D0F20
	la.l    $v0, 0x07018748
.L802D0E74:
	la.u    $v0, 0x07018778
	b       .L802D0F20
	la.l    $v0, 0x07018778
.L802D0E80:
	la.u    $v0, 0x0700D2CC
	b       .L802D0F20
	la.l    $v0, 0x0700D2CC
.L802D0E8C:
	la.u    $v0, 0x0700D304
	b       .L802D0F20
	la.l    $v0, 0x0700D304
.L802D0E98:
	la.u    $v0, 0x0701139C
	b       .L802D0F20
	la.l    $v0, 0x0701139C
.L802D0EA4:
	la.u    $v0, 0x0700E31C
	b       .L802D0F20
	la.l    $v0, 0x0700E31C
.L802D0EB0:
	la.u    $v0, 0x0700E39C
	b       .L802D0F20
	la.l    $v0, 0x0700E39C
.L802D0EBC:
	la.u    $v0, 0x07011738
	b       .L802D0F20
	la.l    $v0, 0x07011738
.L802D0EC8:
	la.u    $v0, 0x07028780
	b       .L802D0F20
	la.l    $v0, 0x07028780
.L802D0ED4:
	la.u    $v0, 0x0700FCB4
	b       .L802D0F20
	la.l    $v0, 0x0700FCB4
.L802D0EE0:
	la.u    $v0, 0x0700FD00
	b       .L802D0F20
	la.l    $v0, 0x0700FD00
.L802D0EEC:
	la.u    $v0, 0x07011E08
	b       .L802D0F20
	la.l    $v0, 0x07011E08
.L802D0EF8:
	la.u    $v0, 0x07006E6C
	b       .L802D0F20
	la.l    $v0, 0x07006E6C
.L802D0F04:
	la.u    $v0, 0x07017124
	b       .L802D0F20
	la.l    $v0, 0x07017124
.L802D0F10:
	b       .L802D0F20
	move    $v0, $0
	b       .L802D0F20
	nop
.L802D0F20:
	jr      $ra
	addiu   $sp, $sp, 0x0008

scroll_802D0F28:
	addiu   $sp, $sp, -0x0018
	move    $a2, $a0
	li      $at, 0x0702
	beq     $a2, $at, .L802D0F5C
	nop
	li      $at, 0x0851
	beq     $a2, $at, .L802D0F94
	nop
	li      $at, 0x1205
	beq     $a2, $at, .L802D0FCC
	nop
	b       .L802D1004
	nop
.L802D0F5C:
	lw      $t6, 0x0000($a1)
	sw      $t6, 0x0014($sp)
	lw      $t7, 0x0000($a1)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x0000($a1)
	lw      $t0, 0x0014($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0014($sp)
	la.u    $t1, gfx_scroll_ia
	la.l    $t1, gfx_scroll_ia
	sw      $t1, 0x0004($t2)
	b       .L802D103C
	nop
.L802D0F94:
	lw      $t3, 0x0000($a1)
	sw      $t3, 0x0010($sp)
	lw      $t4, 0x0000($a1)
	addiu   $t5, $t4, 0x0008
	sw      $t5, 0x0000($a1)
	lw      $t7, 0x0010($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0010($sp)
	la.u    $t8, gfx_scroll_ia
	la.l    $t8, gfx_scroll_ia
	sw      $t8, 0x0004($t9)
	b       .L802D103C
	nop
.L802D0FCC:
	lw      $t0, 0x0000($a1)
	sw      $t0, 0x000C($sp)
	lw      $t1, 0x0000($a1)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x0000($a1)
	lw      $t4, 0x000C($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x000C($sp)
	la.u    $t5, gfx_scroll_ia
	la.l    $t5, gfx_scroll_ia
	sw      $t5, 0x0004($t6)
	b       .L802D103C
	nop
.L802D1004:
	lw      $t7, 0x0000($a1)
	sw      $t7, 0x0008($sp)
	lw      $t8, 0x0000($a1)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x0000($a1)
	lw      $t1, 0x0008($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0008($sp)
	la.u    $t2, gfx_scroll_rgba
	la.l    $t2, gfx_scroll_rgba
	sw      $t2, 0x0004($t3)
	b       .L802D103C
	nop
.L802D103C:
	b       .L802D1044
	nop
.L802D1044:
	jr      $ra
	addiu   $sp, $sp, 0x0018

.globl s_scroll_802D104C
s_scroll_802D104C:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $0, 0x0044($sp)
	sw      $0, 0x0040($sp)
	lw      $t6, 0x0048($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802D1310
	nop
	lui     $at, %hi(scroll_80330F38)
	sb      $0, %lo(scroll_80330F38)($at)
	lui     $t7, %hi(object_80361184)
	lw      $t7, %lo(object_80361184)($t7)
	bnez    $t7, .L802D1098
	nop
	b       .L802D1320
	move    $v0, $0
.L802D1098:
	lui     $t8, %hi(object_80361184)
	lw      $t8, %lo(object_80361184)($t8)
	lh      $t9, 0x0000($t8)
	sh      $t9, 0x0032($sp)
	lh      $a0, 0x0032($sp)
	sll     $t0, $a0, 3
	move    $a0, $t0
	jal     gfx_alloc
	addiu   $a0, $a0, 0x0018
	sw      $v0, 0x0044($sp)
	lw      $t1, 0x0044($sp)
	bnez    $t1, .L802D10DC
	nop
	b       .L802D1320
	move    $v0, $0
	b       .L802D10E4
	nop
.L802D10DC:
	lw      $t2, 0x0044($sp)
	sw      $t2, 0x0040($sp)
.L802D10E4:
	lw      $t3, 0x004C($sp)
	sw      $t3, 0x0034($sp)
	lw      $t4, 0x0034($sp)
	li      $at, 0x1205
	lw      $t5, 0x0018($t4)
	bne     $t5, $at, .L802D1164
	nop
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lwc1    $f4, 0x0028($t6)
	li      $at, 0x40900000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    .L802D1134
	nop
	b       .L802D1320
	move    $v0, $0
.L802D1134:
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	li      $a1, 0x0002
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	andi    $t7, $v0, 0x0001
	beqz    $t7, .L802D115C
	nop
	b       .L802D1320
	move    $v0, $0
.L802D115C:
	b       .L802D11A8
	nop
.L802D1164:
	lw      $t8, 0x0034($sp)
	li      $at, 0x0702
	lw      $t9, 0x0018($t8)
	bne     $t9, $at, .L802D1188
	nop
	li      $t0, 0x0001
	lui     $at, %hi(scroll_80330F38)
	b       .L802D11A8
	sb      $t0, %lo(scroll_80330F38)($at)
.L802D1188:
	lw      $t1, 0x0034($sp)
	li      $at, 0x0851
	lw      $t2, 0x0018($t1)
	bne     $t2, $at, .L802D11A8
	nop
	li      $t3, 0x0002
	lui     $at, %hi(scroll_80330F38)
	sb      $t3, %lo(scroll_80330F38)($at)
.L802D11A8:
	lw      $t4, 0x0034($sp)
	jal     scroll_802D0C84
	lw      $a0, 0x0018($t4)
	sw      $v0, 0x0038($sp)
	lw      $t5, 0x0038($sp)
	bnez    $t5, .L802D11CC
	nop
	b       .L802D1320
	move    $v0, $0
.L802D11CC:
	lw      $t6, 0x0034($sp)
	lh      $t7, 0x0002($t6)
	andi    $t8, $t7, 0x00FF
	ori     $t9, $t8, 0x0700
	sh      $t9, 0x0002($t6)
	lw      $t0, 0x0034($sp)
	addiu   $a1, $sp, 0x0040
	jal     scroll_802D0F28
	lw      $a0, 0x0018($t0)
	li      $t1, -0x0001
	lui     $at, %hi(scroll_803612E0)
	sh      $t1, %lo(scroll_803612E0)($at)
	lh      $t2, 0x0032($sp)
	sw      $0, 0x0028($sp)
	blez    $t2, .L802D12C8
	nop
.L802D120C:
	lw      $t4, 0x0028($sp)
	lui     $t3, %hi(object_80361184)
	lw      $t3, %lo(object_80361184)($t3)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 1
	sll     $t7, $t5, 1
	addu    $t8, $t3, $t7
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x0030($sp)
	lw      $t0, 0x0028($sp)
	lui     $t6, %hi(object_80361184)
	lw      $t6, %lo(object_80361184)($t6)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 1
	sll     $t2, $t1, 1
	addu    $t4, $t6, $t2
	lh      $t5, 0x000C($t4)
	sh      $t5, 0x002E($sp)
	lh      $a0, 0x0030($sp)
	lh      $a1, 0x002E($sp)
	jal     scroll_802D0BB0
	lw      $a2, 0x0038($sp)
	sw      $v0, 0x003C($sp)
	lw      $t3, 0x003C($sp)
	beqz    $t3, .L802D12B0
	nop
	lw      $t7, 0x0040($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x0040($sp)
	sw      $t7, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x003C($sp)
	lw      $t2, 0x0024($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t6, $t1, $at
	sw      $t6, 0x0004($t2)
.L802D12B0:
	lw      $t4, 0x0028($sp)
	lh      $t3, 0x0032($sp)
	addiu   $t5, $t4, 0x0001
	slt     $at, $t5, $t3
	bnez    $at, .L802D120C
	sw      $t5, 0x0028($sp)
.L802D12C8:
	lw      $t7, 0x0040($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x0040($sp)
	sw      $t7, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t6, 0x0020($sp)
	la.u    $t1, gfx_scroll_end
	la.l    $t1, gfx_scroll_end
	sw      $t1, 0x0004($t6)
	lw      $t2, 0x0040($sp)
	sw      $t2, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li      $t4, 0xB8000000
	sw      $t4, 0x0000($t5)
	lw      $t3, 0x001C($sp)
	sw      $0, 0x0004($t3)
.L802D1310:
	b       .L802D1320
	lw      $v0, 0x0044($sp)
	b       .L802D1320
	nop
.L802D1320:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

scroll_802D1330:
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x0000($a0)
	sh      $t6, 0x0006($sp)
	sll     $t7, $a1, 1
	addu    $t8, $t7, $a0
	sw      $t8, 0x0000($sp)
	lui     $t9, %hi(scroll_80330F30)
	lui     $t0, %hi(scroll_80330F34)
	lh      $t0, %lo(scroll_80330F34)($t0)
	lh      $t9, %lo(scroll_80330F30)($t9)
	beq     $t9, $t0, .L802D13BC
	nop
	lw      $t1, 0x0000($sp)
	lh      $t3, 0x0006($sp)
	lh      $t2, 0x0000($t1)
	addu    $t4, $t2, $t3
	sh      $t4, 0x0000($t1)
	lw      $t5, 0x0000($sp)
	lh      $t6, 0x0000($t5)
	slti    $at, $t6, 0x0400
	bnez    $at, .L802D1398
	nop
	lw      $t7, 0x0000($sp)
	lh      $t8, 0x0000($t7)
	addiu   $t9, $t8, -0x0400
	sh      $t9, 0x0000($t7)
.L802D1398:
	lw      $t0, 0x0000($sp)
	lh      $t2, 0x0000($t0)
	slti    $at, $t2, -0x03FF
	beqz    $at, .L802D13BC
	nop
	lw      $t3, 0x0000($sp)
	lh      $t4, 0x0000($t3)
	addiu   $t1, $t4, 0x0400
	sh      $t1, 0x0000($t3)
.L802D13BC:
	b       .L802D13C4
	nop
.L802D13C4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

scroll_802D13CC:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x003C($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	sw      $a3, 0x0064($sp)
	sw      $s0, 0x0038($sp)
	lw      $t6, 0x005C($sp)
	lh      $t7, 0x0002($t6)
	sh      $t7, 0x0056($sp)
	lw      $t8, 0x005C($sp)
	lh      $t9, 0x0004($t8)
	sh      $t9, 0x0054($sp)
	lw      $t0, 0x005C($sp)
	lh      $t1, 0x0006($t0)
	sh      $t1, 0x0052($sp)
	lw      $t2, 0x0060($sp)
	lbu     $t3, 0x001F($t2)
	sb      $t3, 0x0051($sp)
	lb      $s0, 0x0067($sp)
	beqz    $s0, .L802D1438
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802D14C8
	nop
	b       .L802D1558
	nop
.L802D1438:
	lw      $t4, 0x0060($sp)
	lbu     $t5, 0x001C($t4)
	sb      $t5, 0x0050($sp)
	lw      $t6, 0x0060($sp)
	lbu     $t7, 0x001D($t6)
	sb      $t7, 0x004F($sp)
	lw      $t8, 0x0060($sp)
	lbu     $t9, 0x001E($t8)
	sb      $t9, 0x004E($sp)
	lw      $t0, 0x005C($sp)
	lh      $t1, 0x0008($t0)
	sh      $t1, 0x0048($sp)
	lw      $t2, 0x005C($sp)
	lh      $t3, 0x000A($t2)
	sh      $t3, 0x0046($sp)
	lh      $t4, 0x0052($sp)
	lh      $t5, 0x0048($sp)
	lh      $t6, 0x0046($sp)
	lbu     $t7, 0x0050($sp)
	lbu     $t8, 0x004F($sp)
	lbu     $t9, 0x004E($sp)
	lbu     $t0, 0x0051($sp)
	lw      $a0, 0x0058($sp)
	move    $a1, $0
	lh      $a2, 0x0056($sp)
	lh      $a3, 0x0054($sp)
	sw      $t4, 0x0010($sp)
	sw      $t5, 0x0014($sp)
	sw      $t6, 0x0018($sp)
	sw      $t7, 0x001C($sp)
	sw      $t8, 0x0020($sp)
	sw      $t9, 0x0024($sp)
	jal     obj_shape_802D2210
	sw      $t0, 0x0028($sp)
	b       .L802D1558
	nop
.L802D14C8:
	lw      $t1, 0x005C($sp)
	lh      $t2, 0x0008($t1)
	sb      $t2, 0x004D($sp)
	lw      $t3, 0x005C($sp)
	lh      $t4, 0x000A($t3)
	sb      $t4, 0x004C($sp)
	lw      $t5, 0x005C($sp)
	lh      $t6, 0x000C($t5)
	sb      $t6, 0x004B($sp)
	lw      $t7, 0x005C($sp)
	lh      $t8, 0x000E($t7)
	sh      $t8, 0x0048($sp)
	lw      $t9, 0x005C($sp)
	lh      $t0, 0x0010($t9)
	sh      $t0, 0x0046($sp)
	lh      $t1, 0x0052($sp)
	lh      $t2, 0x0048($sp)
	lh      $t3, 0x0046($sp)
	lb      $t4, 0x004D($sp)
	lb      $t5, 0x004C($sp)
	lb      $t6, 0x004B($sp)
	lbu     $t7, 0x0051($sp)
	lw      $a0, 0x0058($sp)
	move    $a1, $0
	lh      $a2, 0x0056($sp)
	lh      $a3, 0x0054($sp)
	sw      $t1, 0x0010($sp)
	sw      $t2, 0x0014($sp)
	sw      $t3, 0x0018($sp)
	sw      $t4, 0x001C($sp)
	sw      $t5, 0x0020($sp)
	sw      $t6, 0x0024($sp)
	jal     obj_shape_802D2210
	sw      $t7, 0x0028($sp)
	b       .L802D1558
	nop
.L802D1558:
	b       .L802D1560
	nop
.L802D1560:
	lw      $ra, 0x003C($sp)
	lw      $s0, 0x0038($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

scroll_802D1574:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x003C($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	sw      $a3, 0x006C($sp)
	sw      $s0, 0x0038($sp)
	lw      $t6, 0x006C($sp)
	lbu     $t7, 0x001F($t6)
	sb      $t7, 0x005F($sp)
	lb      $s0, 0x0073($sp)
	beqz    $s0, .L802D15BC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802D171C
	nop
	b       .L802D1898
	nop
.L802D15BC:
	lw      $t9, 0x0064($sp)
	lw      $t8, 0x0068($sp)
	sll     $t0, $t9, 2
	addu    $t0, $t0, $t9
	sll     $t1, $t0, 1
	addu    $t2, $t8, $t1
	lh      $t3, 0x0002($t2)
	sh      $t3, 0x005C($sp)
	lw      $t5, 0x0064($sp)
	lw      $t4, 0x0068($sp)
	sll     $t6, $t5, 2
	addu    $t6, $t6, $t5
	sll     $t7, $t6, 1
	addu    $t9, $t4, $t7
	lh      $t0, 0x0004($t9)
	sh      $t0, 0x005A($sp)
	lw      $t1, 0x0064($sp)
	lw      $t8, 0x0068($sp)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t3, $t2, 1
	addu    $t5, $t8, $t3
	lh      $t6, 0x0006($t5)
	sh      $t6, 0x0058($sp)
	lw      $t4, 0x0068($sp)
	lh      $t7, 0x0008($t4)
	sh      $t7, 0x0056($sp)
	lw      $t9, 0x0068($sp)
	lh      $t0, 0x000A($t9)
	sh      $t0, 0x0054($sp)
	lw      $t2, 0x0064($sp)
	lw      $t1, 0x0068($sp)
	sll     $t8, $t2, 2
	addu    $t8, $t8, $t2
	sll     $t3, $t8, 1
	addu    $t5, $t1, $t3
	lh      $t6, 0x0008($t5)
	sh      $t6, 0x004E($sp)
	lw      $t7, 0x0064($sp)
	lw      $t4, 0x0068($sp)
	sll     $t9, $t7, 2
	addu    $t9, $t9, $t7
	sll     $t0, $t9, 1
	addu    $t2, $t4, $t0
	lh      $t8, 0x000A($t2)
	sh      $t8, 0x004C($sp)
	lh      $t3, 0x004E($sp)
	lh      $t1, 0x0056($sp)
	sll     $t5, $t3, 5
	sll     $t6, $t5, 5
	addu    $t7, $t1, $t6
	sh      $t7, 0x0052($sp)
	lh      $t4, 0x004C($sp)
	lh      $t9, 0x0054($sp)
	sll     $t0, $t4, 5
	sll     $t2, $t0, 5
	addu    $t8, $t9, $t2
	sh      $t8, 0x0050($sp)
	lw      $t3, 0x006C($sp)
	lbu     $t5, 0x001C($t3)
	sb      $t5, 0x004B($sp)
	lw      $t1, 0x006C($sp)
	lbu     $t6, 0x001D($t1)
	sb      $t6, 0x004A($sp)
	lw      $t7, 0x006C($sp)
	lbu     $t4, 0x001E($t7)
	sb      $t4, 0x0049($sp)
	lh      $t0, 0x0058($sp)
	lh      $t9, 0x0052($sp)
	lh      $t2, 0x0050($sp)
	lbu     $t8, 0x004B($sp)
	lbu     $t3, 0x004A($sp)
	lbu     $t5, 0x0049($sp)
	lbu     $t1, 0x005F($sp)
	lw      $a0, 0x0060($sp)
	lw      $a1, 0x0064($sp)
	lh      $a2, 0x005C($sp)
	lh      $a3, 0x005A($sp)
	sw      $t0, 0x0010($sp)
	sw      $t9, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	sw      $t8, 0x001C($sp)
	sw      $t3, 0x0020($sp)
	sw      $t5, 0x0024($sp)
	jal     obj_shape_802D2210
	sw      $t1, 0x0028($sp)
	b       .L802D1898
	nop
.L802D171C:
	lw      $t7, 0x0064($sp)
	lw      $t6, 0x0068($sp)
	sll     $t4, $t7, 3
	sll     $t0, $t4, 1
	addu    $t9, $t6, $t0
	lh      $t2, 0x0002($t9)
	sh      $t2, 0x005C($sp)
	lw      $t3, 0x0064($sp)
	lw      $t8, 0x0068($sp)
	sll     $t5, $t3, 3
	sll     $t1, $t5, 1
	addu    $t7, $t8, $t1
	lh      $t4, 0x0004($t7)
	sh      $t4, 0x005A($sp)
	lw      $t0, 0x0064($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t0, 3
	sll     $t2, $t9, 1
	addu    $t3, $t6, $t2
	lh      $t5, 0x0006($t3)
	sh      $t5, 0x0058($sp)
	lw      $t8, 0x0068($sp)
	lh      $t1, 0x000E($t8)
	sh      $t1, 0x0056($sp)
	lw      $t7, 0x0068($sp)
	lh      $t4, 0x0010($t7)
	sh      $t4, 0x0054($sp)
	lw      $t9, 0x0064($sp)
	lw      $t0, 0x0068($sp)
	sll     $t6, $t9, 3
	sll     $t2, $t6, 1
	addu    $t3, $t0, $t2
	lh      $t5, 0x000E($t3)
	sh      $t5, 0x004E($sp)
	lw      $t1, 0x0064($sp)
	lw      $t8, 0x0068($sp)
	sll     $t7, $t1, 3
	sll     $t4, $t7, 1
	addu    $t9, $t8, $t4
	lh      $t6, 0x0010($t9)
	sh      $t6, 0x004C($sp)
	lh      $t2, 0x004E($sp)
	lh      $t0, 0x0056($sp)
	sll     $t3, $t2, 5
	sll     $t5, $t3, 5
	addu    $t1, $t0, $t5
	sh      $t1, 0x0052($sp)
	lh      $t8, 0x004C($sp)
	lh      $t7, 0x0054($sp)
	sll     $t4, $t8, 5
	sll     $t9, $t4, 5
	addu    $t6, $t7, $t9
	sh      $t6, 0x0050($sp)
	lw      $t3, 0x0064($sp)
	lw      $t2, 0x0068($sp)
	sll     $t0, $t3, 3
	sll     $t5, $t0, 1
	addu    $t1, $t2, $t5
	lh      $t8, 0x0008($t1)
	sb      $t8, 0x0048($sp)
	lw      $t7, 0x0064($sp)
	lw      $t4, 0x0068($sp)
	sll     $t9, $t7, 3
	sll     $t6, $t9, 1
	addu    $t3, $t4, $t6
	lh      $t0, 0x000A($t3)
	sb      $t0, 0x0047($sp)
	lw      $t5, 0x0064($sp)
	lw      $t2, 0x0068($sp)
	sll     $t1, $t5, 3
	sll     $t8, $t1, 1
	addu    $t7, $t2, $t8
	lh      $t9, 0x000C($t7)
	sb      $t9, 0x0046($sp)
	lh      $t4, 0x0058($sp)
	lh      $t6, 0x0052($sp)
	lh      $t3, 0x0050($sp)
	lb      $t0, 0x0048($sp)
	lb      $t5, 0x0047($sp)
	lb      $t1, 0x0046($sp)
	lbu     $t2, 0x005F($sp)
	lw      $a0, 0x0060($sp)
	lw      $a1, 0x0064($sp)
	lh      $a2, 0x005C($sp)
	lh      $a3, 0x005A($sp)
	sw      $t4, 0x0010($sp)
	sw      $t6, 0x0014($sp)
	sw      $t3, 0x0018($sp)
	sw      $t0, 0x001C($sp)
	sw      $t5, 0x0020($sp)
	sw      $t1, 0x0024($sp)
	jal     obj_shape_802D2210
	sw      $t2, 0x0028($sp)
	b       .L802D1898
	nop
.L802D1898:
	b       .L802D18A0
	nop
.L802D18A0:
	lw      $ra, 0x003C($sp)
	lw      $s0, 0x0038($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

scroll_802D18B4:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	lw      $t6, 0x005C($sp)
	lw      $a0, 0x0008($t6)
	sll     $t7, $a0, 4
	jal     gfx_alloc
	move    $a0, $t7
	sw      $v0, 0x0054($sp)
	jal     gfx_alloc
	li      $a0, 0x0058
	sw      $v0, 0x0050($sp)
	lw      $t8, 0x0050($sp)
	sw      $t8, 0x004C($sp)
	lw      $t9, 0x0054($sp)
	beqz    $t9, .L802D190C
	nop
	lw      $t0, 0x0050($sp)
	bnez    $t0, .L802D1914
	nop
.L802D190C:
	b       .L802D1B60
	move    $v0, $0
.L802D1914:
	lw      $a0, 0x0054($sp)
	lw      $a1, 0x0058($sp)
	lw      $a2, 0x005C($sp)
	jal     scroll_802D13CC
	lb      $a3, 0x0063($sp)
	lw      $t2, 0x005C($sp)
	li      $t1, 0x0001
	sw      $t1, 0x0048($sp)
	lw      $t3, 0x0008($t2)
	slti    $at, $t3, 0x0002
	bnez    $at, .L802D1980
	nop
.L802D1944:
	lb      $t4, 0x0063($sp)
	lw      $a0, 0x0054($sp)
	lw      $a1, 0x0048($sp)
	lw      $a2, 0x0058($sp)
	lw      $a3, 0x005C($sp)
	jal     scroll_802D1574
	sw      $t4, 0x0010($sp)
	lw      $t5, 0x0048($sp)
	lw      $t7, 0x005C($sp)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0048($sp)
	lw      $t8, 0x0008($t7)
	slt     $at, $t6, $t8
	bnez    $at, .L802D1944
	nop
.L802D1980:
	lw      $t9, 0x004C($sp)
	addiu   $t0, $t9, 0x0008
	sw      $t0, 0x004C($sp)
	sw      $t9, 0x0044($sp)
	lw      $t2, 0x0044($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x005C($sp)
	lw      $t5, 0x0044($sp)
	lw      $t4, 0x0010($t3)
	sw      $t4, 0x0004($t5)
	lw      $t7, 0x004C($sp)
	addiu   $t6, $t7, 0x0008
	sw      $t6, 0x004C($sp)
	sw      $t7, 0x0040($sp)
	lw      $t9, 0x0040($sp)
	li      $t8, 0xFD100000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x005C($sp)
	lui     $t3, %hi(txt_scroll)
	lw      $t4, 0x0040($sp)
	lw      $t1, 0x0004($t0)
	sll     $t2, $t1, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(txt_scroll)($t3)
	sw      $t3, 0x0004($t4)
	lw      $t5, 0x004C($sp)
	addiu   $t7, $t5, 0x0008
	sw      $t7, 0x004C($sp)
	sw      $t5, 0x003C($sp)
	lw      $t8, 0x003C($sp)
	li      $t6, 0xE8000000
	sw      $t6, 0x0000($t8)
	lw      $t9, 0x003C($sp)
	sw      $0, 0x0004($t9)
	lw      $t0, 0x004C($sp)
	addiu   $t1, $t0, 0x0008
	sw      $t1, 0x004C($sp)
	sw      $t0, 0x0038($sp)
	lw      $t3, 0x0038($sp)
	li      $t2, 0xF5100000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0038($sp)
	li      $t4, 0x07000000
	sw      $t4, 0x0004($t5)
	lw      $t7, 0x004C($sp)
	addiu   $t6, $t7, 0x0008
	sw      $t6, 0x004C($sp)
	sw      $t7, 0x0034($sp)
	lw      $t9, 0x0034($sp)
	li      $t8, 0xE6000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0034($sp)
	sw      $0, 0x0004($t0)
	lw      $t1, 0x004C($sp)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x004C($sp)
	sw      $t1, 0x0030($sp)
	lw      $t4, 0x0030($sp)
	li      $t3, 0xF3000000
	sw      $t3, 0x0000($t4)
	lw      $t7, 0x0030($sp)
	li.u    $t5, 0x073FF100
	li.l    $t5, 0x073FF100
	sw      $t5, 0x0004($t7)
	lw      $t6, 0x004C($sp)
	addiu   $t8, $t6, 0x0008
	sw      $t8, 0x004C($sp)
	sw      $t6, 0x002C($sp)
	lw      $t9, 0x005C($sp)
	li      $at, 0x04000000
	lw      $t0, 0x0008($t9)
	lw      $t9, 0x002C($sp)
	addiu   $t1, $t0, -0x0001
	sll     $t2, $t1, 4
	andi    $t3, $t2, 0x00FF
	sll     $t4, $t3, 16
	sll     $t7, $t0, 4
	andi    $t6, $t7, 0xFFFF
	or      $t5, $t4, $at
	or      $t8, $t5, $t6
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0054($sp)
	lw      $t3, 0x002C($sp)
	li      $at, 0x80000000
	addu    $t2, $t1, $at
	sw      $t2, 0x0004($t3)
	lw      $t4, 0x004C($sp)
	addiu   $t0, $t4, 0x0008
	sw      $t0, 0x004C($sp)
	sw      $t4, 0x0028($sp)
	lw      $t5, 0x0028($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t5)
	lw      $t6, 0x005C($sp)
	lw      $t9, 0x0028($sp)
	lw      $t8, 0x0018($t6)
	sw      $t8, 0x0004($t9)
	lw      $t1, 0x004C($sp)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x004C($sp)
	sw      $t1, 0x0024($sp)
	lw      $t4, 0x0024($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t4)
	lw      $t0, 0x005C($sp)
	lw      $t5, 0x0024($sp)
	lw      $t7, 0x0014($t0)
	sw      $t7, 0x0004($t5)
	lw      $t6, 0x004C($sp)
	sw      $t6, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	li      $t8, 0xB8000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0020($sp)
	sw      $0, 0x0004($t1)
	b       .L802D1B60
	lw      $v0, 0x0050($sp)
	b       .L802D1B60
	nop
.L802D1B60:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

.globl s_scroll_802D1B70
s_scroll_802D1B70:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802D1CBC
	nop
	sw      $0, 0x0024($sp)
	lw      $t7, 0x002C($sp)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lui     $t0, %hi(scroll_data_a+0x0C)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(scroll_data_a+0x0C)($t0)
	beqz    $t0, .L802D1CBC
	nop
.L802D1BC8:
	lw      $t1, 0x0024($sp)
	lw      $t4, 0x001C($sp)
	lui     $t3, %hi(scroll_data_a+0x00)
	sll     $t2, $t1, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(scroll_data_a+0x00)($t3)
	lw      $t5, 0x0018($t4)
	bne     $t3, $t5, .L802D1C8C
	nop
	lw      $t6, 0x0024($sp)
	lw      $t0, 0x001C($sp)
	lui     $t8, %hi(scroll_data_a+0x20)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(scroll_data_a+0x20)($t8)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t4, $t9, $t2
	sh      $t4, 0x0002($t0)
	lw      $t3, 0x0024($sp)
	lui     $a0, %hi(scroll_data_a+0x0C)
	sll     $t5, $t3, 3
	addu    $t5, $t5, $t3
	sll     $t5, $t5, 2
	addu    $a0, $a0, $t5
	jal     segment_to_virtual
	lw      $a0, %lo(scroll_data_a+0x0C)($a0)
	sw      $v0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     scroll_802D1330
	li      $a1, 0x0004
	lw      $t6, 0x0024($sp)
	la.u    $t8, scroll_data_a+0x00
	la.l    $t8, scroll_data_a+0x00
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $a1, $t7, $t8
	lw      $a0, 0x0020($sp)
	jal     scroll_802D18B4
	move    $a2, $0
	sw      $v0, 0x0018($sp)
	b       .L802D1CBC
	nop
.L802D1C8C:
	lw      $t1, 0x0024($sp)
	addiu   $t9, $t1, 0x0001
	sw      $t9, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	lui     $t0, %hi(scroll_data_a+0x0C)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 2
	addu    $t0, $t0, $t4
	lw      $t0, %lo(scroll_data_a+0x0C)($t0)
	bnez    $t0, .L802D1BC8
	nop
.L802D1CBC:
	b       .L802D1CCC
	lw      $v0, 0x0018($sp)
	b       .L802D1CCC
	nop
.L802D1CCC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl s_scroll_802D1CDC
s_scroll_802D1CDC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802D1E28
	nop
	sw      $0, 0x0024($sp)
	lw      $t7, 0x002C($sp)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lui     $t0, %hi(scroll_data_b+0x0C)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(scroll_data_b+0x0C)($t0)
	beqz    $t0, .L802D1E28
	nop
.L802D1D34:
	lw      $t1, 0x0024($sp)
	lw      $t4, 0x001C($sp)
	lui     $t3, %hi(scroll_data_b+0x00)
	sll     $t2, $t1, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(scroll_data_b+0x00)($t3)
	lw      $t5, 0x0018($t4)
	bne     $t3, $t5, .L802D1DF8
	nop
	lw      $t6, 0x0024($sp)
	lw      $t0, 0x001C($sp)
	lui     $t8, %hi(scroll_data_b+0x20)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(scroll_data_b+0x20)($t8)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t4, $t9, $t2
	sh      $t4, 0x0002($t0)
	lw      $t3, 0x0024($sp)
	lui     $a0, %hi(scroll_data_b+0x0C)
	sll     $t5, $t3, 3
	addu    $t5, $t5, $t3
	sll     $t5, $t5, 2
	addu    $a0, $a0, $t5
	jal     segment_to_virtual
	lw      $a0, %lo(scroll_data_b+0x0C)($a0)
	sw      $v0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     scroll_802D1330
	li      $a1, 0x0007
	lw      $t6, 0x0024($sp)
	la.u    $t8, scroll_data_b+0x00
	la.l    $t8, scroll_data_b+0x00
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $a1, $t7, $t8
	lw      $a0, 0x0020($sp)
	jal     scroll_802D18B4
	li      $a2, 0x0001
	sw      $v0, 0x0018($sp)
	b       .L802D1E28
	nop
.L802D1DF8:
	lw      $t1, 0x0024($sp)
	addiu   $t9, $t1, 0x0001
	sw      $t9, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	lui     $t0, %hi(scroll_data_b+0x0C)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 2
	addu    $t0, $t0, $t4
	lw      $t0, %lo(scroll_data_b+0x0C)($t0)
	bnez    $t0, .L802D1D34
	nop
.L802D1E28:
	b       .L802D1E38
	lw      $v0, 0x0018($sp)
	b       .L802D1E38
	nop
.L802D1E38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl s_scroll_802D1E48
s_scroll_802D1E48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802D1F88
	nop
	sw      $0, 0x0024($sp)
	lw      $t7, 0x002C($sp)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lui     $t0, %hi(scroll_data_b+0x0C)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(scroll_data_b+0x0C)($t0)
	beqz    $t0, .L802D1F88
	nop
.L802D1EA0:
	lw      $t1, 0x0024($sp)
	lw      $t4, 0x001C($sp)
	lui     $t3, %hi(scroll_data_b+0x00)
	sll     $t2, $t1, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(scroll_data_b+0x00)($t3)
	lw      $t5, 0x0018($t4)
	bne     $t3, $t5, .L802D1F58
	nop
	lw      $t6, 0x0024($sp)
	lw      $t0, 0x001C($sp)
	lui     $t8, %hi(scroll_data_b+0x20)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(scroll_data_b+0x20)($t8)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t4, $t9, $t2
	sh      $t4, 0x0002($t0)
	lw      $t3, 0x0024($sp)
	lui     $a0, %hi(scroll_data_b+0x0C)
	sll     $t5, $t3, 3
	addu    $t5, $t5, $t3
	sll     $t5, $t5, 2
	addu    $a0, $a0, $t5
	jal     segment_to_virtual
	lw      $a0, %lo(scroll_data_b+0x0C)($a0)
	sw      $v0, 0x0020($sp)
	lw      $t6, 0x0024($sp)
	la.u    $t8, scroll_data_b+0x00
	la.l    $t8, scroll_data_b+0x00
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $a1, $t7, $t8
	lw      $a0, 0x0020($sp)
	jal     scroll_802D18B4
	li      $a2, 0x0001
	sw      $v0, 0x0018($sp)
	b       .L802D1F88
	nop
.L802D1F58:
	lw      $t1, 0x0024($sp)
	addiu   $t9, $t1, 0x0001
	sw      $t9, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	lui     $t0, %hi(scroll_data_b+0x0C)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 2
	addu    $t0, $t0, $t4
	lw      $t0, %lo(scroll_data_b+0x0C)($t0)
	bnez    $t0, .L802D1EA0
	nop
.L802D1F88:
	b       .L802D1F98
	lw      $v0, 0x0018($sp)
	b       .L802D1F98
	nop
.L802D1F98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl s_scroll_802D1FA8
s_scroll_802D1FA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802D20E8
	nop
	sw      $0, 0x0024($sp)
	lw      $t7, 0x002C($sp)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lui     $t0, %hi(scroll_data_c+0x0C)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(scroll_data_c+0x0C)($t0)
	beqz    $t0, .L802D20E8
	nop
.L802D2000:
	lw      $t1, 0x0024($sp)
	lw      $t4, 0x001C($sp)
	lui     $t3, %hi(scroll_data_c+0x00)
	sll     $t2, $t1, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(scroll_data_c+0x00)($t3)
	lw      $t5, 0x0018($t4)
	bne     $t3, $t5, .L802D20B8
	nop
	lw      $t6, 0x0024($sp)
	lw      $t0, 0x001C($sp)
	lui     $t8, %hi(scroll_data_c+0x20)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(scroll_data_c+0x20)($t8)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t4, $t9, $t2
	sh      $t4, 0x0002($t0)
	lw      $t3, 0x0024($sp)
	lui     $a0, %hi(scroll_data_c+0x0C)
	sll     $t5, $t3, 3
	addu    $t5, $t5, $t3
	sll     $t5, $t5, 2
	addu    $a0, $a0, $t5
	jal     segment_to_virtual
	lw      $a0, %lo(scroll_data_c+0x0C)($a0)
	sw      $v0, 0x0020($sp)
	lw      $t6, 0x0024($sp)
	la.u    $t8, scroll_data_c+0x00
	la.l    $t8, scroll_data_c+0x00
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $a1, $t7, $t8
	lw      $a0, 0x0020($sp)
	jal     scroll_802D18B4
	li      $a2, 0x0001
	sw      $v0, 0x0018($sp)
	b       .L802D20E8
	nop
.L802D20B8:
	lw      $t1, 0x0024($sp)
	addiu   $t9, $t1, 0x0001
	sw      $t9, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	lui     $t0, %hi(scroll_data_c+0x0C)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 2
	addu    $t0, $t0, $t4
	lw      $t0, %lo(scroll_data_c+0x0C)($t0)
	bnez    $t0, .L802D2000
	nop
.L802D20E8:
	b       .L802D20F8
	lw      $v0, 0x0018($sp)
	b       .L802D20F8
	nop
.L802D20F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl s_scroll_802D2108
s_scroll_802D2108:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802D21E4
	nop
	lw      $t7, 0x0034($sp)
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x0801
	lw      $s0, 0x0018($t8)
	beq     $s0, $at, .L802D2178
	nop
	li      $at, 0x0802
	beq     $s0, $at, .L802D2190
	nop
	li      $at, 0x1400
	beq     $s0, $at, .L802D21A8
	nop
	li      $at, 0x1401
	beq     $s0, $at, .L802D21C0
	nop
	b       .L802D21D8
	nop
.L802D2178:
	la.u    $a0, 0x07004930
	jal     segment_to_virtual
	la.l    $a0, 0x07004930
	sw      $v0, 0x002C($sp)
	b       .L802D21D8
	nop
.L802D2190:
	la.u    $a0, 0x070049B4
	jal     segment_to_virtual
	la.l    $a0, 0x070049B4
	sw      $v0, 0x002C($sp)
	b       .L802D21D8
	nop
.L802D21A8:
	la.u    $a0, 0x07016840
	jal     segment_to_virtual
	la.l    $a0, 0x07016840
	sw      $v0, 0x002C($sp)
	b       .L802D21D8
	nop
.L802D21C0:
	la.u    $a0, 0x07016904
	jal     segment_to_virtual
	la.l    $a0, 0x07016904
	sw      $v0, 0x002C($sp)
	b       .L802D21D8
	nop
.L802D21D8:
	lw      $a0, 0x002C($sp)
	jal     scroll_802D1330
	li      $a1, 0x0007
.L802D21E4:
	b       .L802D21F4
	move    $v0, $0
	b       .L802D21F4
	nop
.L802D21F4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

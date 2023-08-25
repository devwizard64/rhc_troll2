.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

wipe_802CB5C0:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	addiu   $sp, $sp, -0x0008
	andi    $a1, $a1, 0x00FF
	sw      $0, 0x0004($sp)
	la.u    $t6, wipe_80330EC0
	la.l    $t6, wipe_80330EC0
	addu    $t7, $a0, $t6
	lbu     $t8, 0x0000($t7)
	addu    $t0, $a0, $t6
	addiu   $t9, $t8, 0x0001
	sb      $t9, 0x0000($t0)
	lui     $t1, %hi(wipe_80330EC0)
	addu    $t1, $t1, $a0
	lbu     $t1, %lo(wipe_80330EC0)($t1)
	bne     $t1, $a1, .L802CB628
	nop
	lui     $at, %hi(wipe_80330EC0)
	addu    $at, $at, $a0
	sb      $0, %lo(wipe_80330EC0)($at)
	sll     $t2, $a0, 1
	lui     $at, %hi(wipe_80330EC4)
	addu    $at, $at, $t2
	sh      $0, %lo(wipe_80330EC4)($at)
	li      $t3, 0x0001
	sw      $t3, 0x0004($sp)
.L802CB628:
	b       .L802CB638
	lw      $v0, 0x0004($sp)
	b       .L802CB638
	nop
.L802CB638:
	jr      $ra
	addiu   $sp, $sp, 0x0008

wipe_802CB640:
	sll     $a0, $a0, 24
	sll     $a1, $a1, 24
	sra     $a1, $a1, 24
	sra     $a0, $a0, 24
	addiu   $sp, $sp, -0x0008
	andi    $a2, $a2, 0x00FF
	move    $a3, $a0
	beqz    $a3, .L802CB678
	nop
	li      $at, 0x0001
	beq     $a3, $at, .L802CB774
	nop
	b       .L802CB87C
	nop
.L802CB678:
	lui     $t6, %hi(wipe_80330EC0)
	addu    $t6, $t6, $a1
	lbu     $t6, %lo(wipe_80330EC0)($t6)
	mtc1    $t6, $f4
	bgez    $t6, .L802CB6A0
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L802CB6A0:
	lui     $at, %hi(wipe_80338000)
	addiu   $t7, $a2, -0x0001
	mtc1    $t7, $f4
	ldc1    $f16, %lo(wipe_80338000)($at)
	cvt.d.s $f10, $f6
	cvt.s.w $f8, $f4
	mul.d   $f18, $f10, $f16
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	li      $t9, 0x0001
	cvt.d.s $f6, $f8
	div.d   $f10, $f18, $f6
	add.d   $f4, $f10, $f16
	cfc1    $t8, $31
	ctc1    $t9, $31
	nop
	cvt.w.d $f8, $f4
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	beqz    $t9, .L802CB750
	nop
	li      $at, 0x41E00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	li      $t9, 0x0001
	sub.d   $f8, $f4, $f8
	ctc1    $t9, $31
	nop
	cvt.w.d $f8, $f8
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	bnez    $t9, .L802CB748
	nop
	mfc1    $t9, $f8
	li      $at, 0x80000000
	b       .L802CB760
	or      $t9, $t9, $at
.L802CB748:
	b       .L802CB760
	li      $t9, -0x0001
.L802CB750:
	mfc1    $t9, $f8
	nop
	bltz    $t9, .L802CB748
	nop
.L802CB760:
	ctc1    $t8, $31
	sb      $t9, 0x0007($sp)
	nop
	b       .L802CB87C
	nop
.L802CB774:
	lui     $t0, %hi(wipe_80330EC0)
	addu    $t0, $t0, $a1
	lbu     $t0, %lo(wipe_80330EC0)($t0)
	mtc1    $t0, $f18
	bgez    $t0, .L802CB79C
	cvt.s.w $f6, $f18
	li      $at, 0x4F800000
	mtc1    $at, $f10
	nop
	add.s   $f6, $f6, $f10
.L802CB79C:
	addiu   $t1, $a2, -0x0001
	mtc1    $t1, $f16
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	cvt.s.w $f4, $f16
	mtc1    $0, $f10
	lui     $at, %hi(wipe_80338008)
	li      $t3, 0x0001
	div.s   $f8, $f6, $f4
	ldc1    $f6, %lo(wipe_80338008)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.s $f18, $f8
	mtc1    $0, $f8
	sub.d   $f16, $f10, $f18
	mul.d   $f4, $f16, $f6
	add.d   $f10, $f4, $f8
	cfc1    $t2, $31
	ctc1    $t3, $31
	nop
	cvt.w.d $f18, $f10
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	beqz    $t3, .L802CB858
	nop
	li      $at, 0x41E00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	li      $t3, 0x0001
	sub.d   $f18, $f10, $f18
	ctc1    $t3, $31
	nop
	cvt.w.d $f18, $f18
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	bnez    $t3, .L802CB850
	nop
	mfc1    $t3, $f18
	li      $at, 0x80000000
	b       .L802CB868
	or      $t3, $t3, $at
.L802CB850:
	b       .L802CB868
	li      $t3, -0x0001
.L802CB858:
	mfc1    $t3, $f18
	nop
	bltz    $t3, .L802CB850
	nop
.L802CB868:
	ctc1    $t2, $31
	sb      $t3, 0x0007($sp)
	nop
	b       .L802CB87C
	nop
.L802CB87C:
	b       .L802CB88C
	lbu     $v0, 0x0007($sp)
	b       .L802CB88C
	nop
.L802CB88C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

wipe_802CB894:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x003C($sp)
	lw      $t6, 0x0040($sp)
	lbu     $t7, 0x0000($t6)
	sb      $t7, 0x003B($sp)
	lw      $t8, 0x0040($sp)
	lbu     $t9, 0x0001($t8)
	sb      $t9, 0x003A($sp)
	lw      $t0, 0x0040($sp)
	lbu     $t1, 0x0002($t0)
	sb      $t1, 0x0039($sp)
	lw      $t2, 0x003C($sp)
	beqz    $t2, .L802CB9F8
	nop
	lbu     $t4, 0x003B($sp)
	lbu     $t5, 0x003A($sp)
	lbu     $t6, 0x0039($sp)
	lbu     $t7, 0x0047($sp)
	li      $t3, -0x0001
	sw      $t3, 0x0010($sp)
	lw      $a0, 0x003C($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $t4, 0x001C($sp)
	sw      $t5, 0x0020($sp)
	sw      $t6, 0x0024($sp)
	jal     obj_shape_802D2210
	sw      $t7, 0x0028($sp)
	lbu     $t9, 0x003B($sp)
	lbu     $t0, 0x003A($sp)
	lbu     $t1, 0x0039($sp)
	lbu     $t2, 0x0047($sp)
	li      $t8, -0x0001
	sw      $t8, 0x0010($sp)
	lw      $a0, 0x003C($sp)
	li      $a1, 0x0001
	li      $a2, 0x0140
	move    $a3, $0
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $t9, 0x001C($sp)
	sw      $t0, 0x0020($sp)
	sw      $t1, 0x0024($sp)
	jal     obj_shape_802D2210
	sw      $t2, 0x0028($sp)
	lbu     $t4, 0x003B($sp)
	lbu     $t5, 0x003A($sp)
	lbu     $t6, 0x0039($sp)
	lbu     $t7, 0x0047($sp)
	li      $t3, -0x0001
	sw      $t3, 0x0010($sp)
	lw      $a0, 0x003C($sp)
	li      $a1, 0x0002
	li      $a2, 0x0140
	li      $a3, 0x00F0
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $t4, 0x001C($sp)
	sw      $t5, 0x0020($sp)
	sw      $t6, 0x0024($sp)
	jal     obj_shape_802D2210
	sw      $t7, 0x0028($sp)
	lbu     $t9, 0x003B($sp)
	lbu     $t0, 0x003A($sp)
	lbu     $t1, 0x0039($sp)
	lbu     $t2, 0x0047($sp)
	li      $t8, -0x0001
	sw      $t8, 0x0010($sp)
	lw      $a0, 0x003C($sp)
	li      $a1, 0x0003
	move    $a2, $0
	li      $a3, 0x00F0
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $t9, 0x001C($sp)
	sw      $t0, 0x0020($sp)
	sw      $t1, 0x0024($sp)
	jal     obj_shape_802D2210
	sw      $t2, 0x0028($sp)
	b       .L802CB9F8
	nop
.L802CB9F8:
	b       .L802CBA08
	lw      $v0, 0x003C($sp)
	b       .L802CBA08
	nop
.L802CBA08:
	lw      $ra, 0x0034($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

wipe_802CBA18:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lw      $a0, 0x0040($sp)
	jal     wipe_802CB894
	lbu     $a1, 0x0047($sp)
	sw      $v0, 0x0034($sp)
	lw      $t6, 0x0034($sp)
	beqz    $t6, .L802CBB98
	nop
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0030($sp)
	la.u    $t1, gfx_wipe_start
	la.l    $t1, gfx_wipe_start
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	li.u    $t5, 0xFCFFFFFF
	li.l    $t5, 0xFCFFFFFF
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x002C($sp)
	li.u    $t7, 0xFFFE793C
	li.l    $t7, 0xFFFE793C
	sw      $t7, 0x0004($t8)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	li.u    $t1, 0xB900031D
	li.l    $t1, 0xB900031D
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x0028($sp)
	li.u    $t3, 0x005041C8
	li.l    $t3, 0x005041C8
	sw      $t3, 0x0004($t4)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li.u    $t7, 0x04300040
	li.l    $t7, 0x04300040
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0034($sp)
	lw      $t1, 0x0024($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t0, $t9, $at
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0020($sp)
	lw      $t5, 0x0020($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0020($sp)
	la.u    $t6, gfx_quad0
	la.l    $t6, gfx_quad0
	sw      $t6, 0x0004($t7)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x001C($sp)
	la.u    $t2, gfx_wipe_end
	la.l    $t2, gfx_wipe_end
	sw      $t2, 0x0004($t3)
.L802CBB98:
	lb      $a0, 0x003B($sp)
	jal     wipe_802CB5C0
	lbu     $a1, 0x003F($sp)
	b       .L802CBBB4
	nop
	b       .L802CBBB4
	nop
.L802CBBB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

wipe_802CBBC4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	li      $a0, 0x0001
	lb      $a1, 0x0023($sp)
	jal     wipe_802CB640
	lbu     $a2, 0x0027($sp)
	sb      $v0, 0x001F($sp)
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x0027($sp)
	lw      $a2, 0x0028($sp)
	jal     wipe_802CBA18
	lbu     $a3, 0x001F($sp)
	b       .L802CBC10
	nop
	b       .L802CBC10
	nop
.L802CBC10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wipe_802CBC20:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	move    $a0, $0
	lb      $a1, 0x0023($sp)
	jal     wipe_802CB640
	lbu     $a2, 0x0027($sp)
	sb      $v0, 0x001F($sp)
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x0027($sp)
	lw      $a2, 0x0028($sp)
	jal     wipe_802CBA18
	lbu     $a3, 0x001F($sp)
	b       .L802CBC6C
	nop
	b       .L802CBC6C
	nop
.L802CBC6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wipe_802CBC7C:
	sll     $a0, $a0, 24
	sll     $a1, $a1, 24
	sra     $a1, $a1, 24
	sra     $a0, $a0, 24
	addiu   $sp, $sp, -0x0010
	lh      $t6, 0x0006($a2)
	lh      $t7, 0x0004($a2)
	subu    $t8, $t6, $t7
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x000C($sp)
	lui     $t9, %hi(wipe_80330EC0)
	addu    $t9, $t9, $a0
	lbu     $t9, %lo(wipe_80330EC0)($t9)
	mtc1    $t9, $f8
	bgez    $t9, .L802CBCD4
	cvt.s.w $f10, $f8
	li      $at, 0x4F800000
	mtc1    $at, $f16
	nop
	add.s   $f10, $f10, $f16
.L802CBCD4:
	lwc1    $f18, 0x000C($sp)
	addiu   $t0, $a1, -0x0001
	mtc1    $t0, $f6
	mul.s   $f4, $f10, $f18
	cvt.s.w $f8, $f6
	div.s   $f16, $f4, $f8
	swc1    $f16, 0x0008($sp)
	lh      $t1, 0x0004($a2)
	lwc1    $f6, 0x0008($sp)
	mtc1    $t1, $f10
	nop
	cvt.s.w $f18, $f10
	add.s   $f4, $f18, $f6
	swc1    $f4, 0x0004($sp)
	lwc1    $f8, 0x0004($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f16, $f8
	add.d   $f18, $f16, $f10
	trunc.w.d $f6, $f18
	mfc1    $v0, $f6
	nop
	sll     $t3, $v0, 16
	move    $v0, $t3
	sra     $t4, $v0, 16
	b       .L802CBD4C
	move    $v0, $t4
	b       .L802CBD4C
	nop
.L802CBD4C:
	jr      $ra
	addiu   $sp, $sp, 0x0010

wipe_802CBD54:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lw      $t6, 0x0038($sp)
	lh      $t7, 0x0008($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x002C($sp)
	lw      $t8, 0x0038($sp)
	lh      $t9, 0x000A($t8)
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0028($sp)
	lw      $t0, 0x0038($sp)
	lh      $t1, 0x000C($t0)
	mtc1    $t1, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0024($sp)
	lw      $t2, 0x0038($sp)
	lh      $t3, 0x000E($t2)
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x0020($sp)
	sub.s   $f16, $f8, $f10
	sub.s   $f8, $f4, $f6
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f18, $f10
	swc1    $f0, 0x001C($sp)
	lb      $t4, 0x0033($sp)
	lui     $t5, %hi(wipe_80330EC0)
	addu    $t5, $t5, $t4
	lbu     $t5, %lo(wipe_80330EC0)($t5)
	mtc1    $t5, $f16
	bgez    $t5, .L802CBE24
	cvt.s.w $f4, $f16
	li      $at, 0x4F800000
	mtc1    $at, $f6
	nop
	add.s   $f4, $f4, $f6
.L802CBE24:
	lb      $t6, 0x0037($sp)
	lwc1    $f8, 0x001C($sp)
	addiu   $t7, $t6, -0x0001
	mtc1    $t7, $f10
	mul.s   $f18, $f4, $f8
	cvt.s.w $f16, $f10
	div.s   $f6, $f18, $f16
	swc1    $f6, 0x0018($sp)
	b       .L802CBE54
	lwc1    $f0, 0x0018($sp)
	b       .L802CBE54
	nop
.L802CBE54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

wipe_802CBE64:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x000C($t6)
	lh      $t8, 0x0008($t6)
	subu    $t9, $t7, $t8
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	lh      $t1, 0x000E($t0)
	lh      $t2, 0x000A($t0)
	subu    $t3, $t1, $t2
	mtc1    $t3, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0018($sp)
	lwc1    $f12, 0x001C($sp)
	jal     atan2
	lwc1    $f14, 0x0018($sp)
	andi    $t4, $v0, 0xFFFF
	b       .L802CBED0
	move    $v0, $t4
	b       .L802CBED0
	nop
.L802CBED0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wipe_802CBEE0:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	andi    $a2, $a2, 0xFFFF
	sra     $t6, $a2, 4
	lh      $t8, 0x0008($a0)
	sll     $t7, $t6, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f6, 0x000C($sp)
	mtc1    $t8, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x0004($sp)
	lwc1    $f4, 0x0004($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f6, $f4
	add.d   $f8, $f6, $f10
	trunc.w.d $f16, $f8
	mfc1    $v0, $f16
	nop
	sll     $t0, $v0, 16
	move    $v0, $t0
	sra     $t1, $v0, 16
	b       .L802CBF5C
	move    $v0, $t1
	b       .L802CBF5C
	nop
.L802CBF5C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

wipe_802CBF64:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	andi    $a2, $a2, 0xFFFF
	sra     $t6, $a2, 4
	lh      $t8, 0x000A($a0)
	sll     $t7, $t6, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f6, 0x000C($sp)
	mtc1    $t8, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x0004($sp)
	lwc1    $f4, 0x0004($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f6, $f4
	add.d   $f8, $f6, $f10
	trunc.w.d $f16, $f8
	mfc1    $v0, $f16
	nop
	sll     $t0, $v0, 16
	move    $v0, $t0
	sra     $t1, $v0, 16
	b       .L802CBFE0
	move    $v0, $t1
	b       .L802CBFE0
	nop
.L802CBFE0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

wipe_802CBFE8:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	sw      $a3, 0x005C($sp)
	lw      $t6, 0x005C($sp)
	lbu     $t7, 0x0000($t6)
	sb      $t7, 0x004F($sp)
	lw      $t8, 0x005C($sp)
	lbu     $t9, 0x0001($t8)
	sb      $t9, 0x004E($sp)
	lw      $t0, 0x005C($sp)
	lbu     $t1, 0x0002($t0)
	sb      $t1, 0x004D($sp)
	lb      $t2, 0x005B($sp)
	lui     $t4, %hi(wipe_80330EC4)
	sll     $t3, $t2, 1
	addu    $t4, $t4, $t3
	lhu     $t4, %lo(wipe_80330EC4)($t4)
	sh      $t4, 0x004A($sp)
	lh      $t5, 0x006A($sp)
	lhu     $t6, 0x004A($sp)
	lh      $t9, 0x006E($sp)
	mtc1    $t5, $f4
	sra     $t7, $t6, 4
	mtc1    $t9, $f18
	cvt.s.w $f6, $f4
	sll     $t8, $t7, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_cos)($at)
	cvt.s.w $f4, $f18
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	mul.s   $f10, $f6, $f8
	lwc1    $f16, %lo(math_sin)($at)
	lh      $t0, 0x0062($sp)
	mul.s   $f6, $f16, $f4
	mtc1    $t0, $f18
	nop
	cvt.s.w $f16, $f18
	sub.s   $f8, $f10, $f6
	add.s   $f4, $f8, $f16
	swc1    $f4, 0x0044($sp)
	lh      $t4, 0x006E($sp)
	lhu     $t1, 0x004A($sp)
	lh      $t5, 0x006A($sp)
	mtc1    $t4, $f6
	sra     $t2, $t1, 4
	mtc1    $t5, $f16
	cvt.s.w $f18, $f6
	sll     $t3, $t2, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	cvt.s.w $f4, $f16
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	mul.s   $f8, $f10, $f18
	lwc1    $f6, %lo(math_sin)($at)
	lh      $t6, 0x0066($sp)
	mul.s   $f10, $f4, $f6
	mtc1    $t6, $f16
	nop
	cvt.s.w $f4, $f16
	add.s   $f18, $f8, $f10
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0040($sp)
	jal     obj_shape_802D22C4
	lwc1    $f12, 0x0044($sp)
	sh      $v0, 0x003E($sp)
	jal     obj_shape_802D22C4
	lwc1    $f12, 0x0040($sp)
	sh      $v0, 0x003C($sp)
	lh      $t8, 0x0072($sp)
	lh      $t0, 0x0076($sp)
	lbu     $t2, 0x004F($sp)
	lbu     $t4, 0x004E($sp)
	lbu     $t5, 0x004D($sp)
	li      $t7, -0x0001
	li      $t3, 0x00FF
	sll     $t9, $t8, 5
	sll     $t1, $t0, 5
	sw      $t1, 0x0018($sp)
	sw      $t9, 0x0014($sp)
	sw      $t3, 0x0028($sp)
	sw      $t7, 0x0010($sp)
	lw      $a0, 0x0050($sp)
	lw      $a1, 0x0054($sp)
	lh      $a2, 0x003E($sp)
	lh      $a3, 0x003C($sp)
	sw      $t2, 0x001C($sp)
	sw      $t4, 0x0020($sp)
	jal     obj_shape_802D2210
	sw      $t5, 0x0024($sp)
	b       .L802CC170
	nop
.L802CC170:
	lw      $ra, 0x0034($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

wipe_802CC180:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	sw      $s0, 0x0030($sp)
	lb      $s0, 0x005B($sp)
	beqz    $s0, .L802CC1BC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802CC2C8
	nop
	b       .L802CC3CC
	nop
.L802CC1BC:
	lh      $t8, 0x0056($sp)
	lh      $t6, 0x004E($sp)
	lh      $t7, 0x0052($sp)
	li      $t0, -0x001F
	li      $t1, 0x003F
	subu    $t9, $0, $t8
	sw      $t9, 0x0018($sp)
	sw      $t9, 0x001C($sp)
	sw      $t1, 0x0024($sp)
	sw      $t0, 0x0020($sp)
	lw      $a0, 0x0040($sp)
	move    $a1, $0
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $t6, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t7, 0x0014($sp)
	lh      $t4, 0x0056($sp)
	lh      $t2, 0x004E($sp)
	lh      $t3, 0x0052($sp)
	li      $t6, 0x001F
	li      $t7, 0x003F
	subu    $t5, $0, $t4
	sw      $t5, 0x001C($sp)
	sw      $t7, 0x0024($sp)
	sw      $t6, 0x0020($sp)
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0001
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $t4, 0x0018($sp)
	sw      $t2, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t3, 0x0014($sp)
	lh      $t0, 0x0056($sp)
	lh      $t8, 0x004E($sp)
	lh      $t9, 0x0052($sp)
	li      $t1, 0x001F
	sw      $t1, 0x0020($sp)
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0002
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $0, 0x0024($sp)
	sw      $t0, 0x0018($sp)
	sw      $t0, 0x001C($sp)
	sw      $t8, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t9, 0x0014($sp)
	lh      $t4, 0x0056($sp)
	lh      $t2, 0x004E($sp)
	lh      $t3, 0x0052($sp)
	li      $t6, -0x001F
	subu    $t5, $0, $t4
	sw      $t5, 0x0018($sp)
	sw      $t6, 0x0020($sp)
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0003
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $0, 0x0024($sp)
	sw      $t4, 0x001C($sp)
	sw      $t2, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t3, 0x0014($sp)
	b       .L802CC3CC
	nop
.L802CC2C8:
	lh      $t9, 0x0056($sp)
	lh      $t7, 0x004E($sp)
	lh      $t8, 0x0052($sp)
	li      $t1, 0x003F
	subu    $t0, $0, $t9
	sw      $t0, 0x0018($sp)
	sw      $t0, 0x001C($sp)
	sw      $t1, 0x0024($sp)
	lw      $a0, 0x0040($sp)
	move    $a1, $0
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $0, 0x0020($sp)
	sw      $t7, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t8, 0x0014($sp)
	lh      $t5, 0x0056($sp)
	lh      $t2, 0x004E($sp)
	lh      $t3, 0x0052($sp)
	li      $t6, 0x003F
	li      $t7, 0x003F
	subu    $t4, $0, $t5
	sw      $t4, 0x001C($sp)
	sw      $t7, 0x0024($sp)
	sw      $t6, 0x0020($sp)
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0001
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $t5, 0x0018($sp)
	sw      $t2, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t3, 0x0014($sp)
	lh      $t0, 0x0056($sp)
	lh      $t8, 0x004E($sp)
	lh      $t9, 0x0052($sp)
	li      $t1, 0x003F
	sw      $t1, 0x0020($sp)
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0002
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $0, 0x0024($sp)
	sw      $t0, 0x0018($sp)
	sw      $t0, 0x001C($sp)
	sw      $t8, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t9, 0x0014($sp)
	lh      $t5, 0x0056($sp)
	lh      $t2, 0x004E($sp)
	lh      $t3, 0x0052($sp)
	subu    $t4, $0, $t5
	sw      $t4, 0x0018($sp)
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0003
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x0024($sp)
	sw      $t5, 0x001C($sp)
	sw      $t2, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t3, 0x0014($sp)
	b       .L802CC3CC
	nop
.L802CC3CC:
	lh      $t6, 0x004E($sp)
	lh      $t7, 0x0052($sp)
	li      $t8, -0x07D0
	li      $t9, -0x07D0
	sw      $t9, 0x001C($sp)
	sw      $t8, 0x0018($sp)
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0004
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x0024($sp)
	sw      $t6, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t7, 0x0014($sp)
	lh      $t0, 0x004E($sp)
	lh      $t1, 0x0052($sp)
	li      $t2, 0x07D0
	li      $t3, -0x07D0
	sw      $t3, 0x001C($sp)
	sw      $t2, 0x0018($sp)
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0005
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x0024($sp)
	sw      $t0, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t1, 0x0014($sp)
	lh      $t4, 0x004E($sp)
	lh      $t5, 0x0052($sp)
	li      $t6, 0x07D0
	li      $t7, 0x07D0
	sw      $t7, 0x001C($sp)
	sw      $t6, 0x0018($sp)
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0006
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x0024($sp)
	sw      $t4, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t5, 0x0014($sp)
	lh      $t8, 0x004E($sp)
	lh      $t9, 0x0052($sp)
	li      $t0, -0x07D0
	li      $t1, 0x07D0
	sw      $t1, 0x001C($sp)
	sw      $t0, 0x0018($sp)
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0007
	lb      $a2, 0x0047($sp)
	lw      $a3, 0x0048($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x0024($sp)
	sw      $t8, 0x0010($sp)
	jal     wipe_802CBFE8
	sw      $t9, 0x0014($sp)
	b       .L802CC4C4
	nop
.L802CC4C4:
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0030($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

wipe_802CC4D8:
	addiu   $sp, $sp, -0x00B8
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x00B8($sp)
	sw      $a1, 0x00BC($sp)
	sw      $a2, 0x00C0($sp)
	sw      $a3, 0x00C4($sp)
	sw      $s0, 0x0028($sp)
	lb      $a0, 0x00BB($sp)
	lb      $a1, 0x00BF($sp)
	jal     wipe_802CBD54
	lw      $a2, 0x00C0($sp)
	swc1    $f0, 0x00B4($sp)
	jal     wipe_802CBE64
	lw      $a0, 0x00C0($sp)
	sh      $v0, 0x00B2($sp)
	lw      $a0, 0x00C0($sp)
	lw      $a1, 0x00B4($sp)
	jal     wipe_802CBEE0
	lhu     $a2, 0x00B2($sp)
	sh      $v0, 0x00B0($sp)
	lw      $a0, 0x00C0($sp)
	lw      $a1, 0x00B4($sp)
	jal     wipe_802CBF64
	lhu     $a2, 0x00B2($sp)
	sh      $v0, 0x00AE($sp)
	lb      $a0, 0x00BB($sp)
	lb      $a1, 0x00BF($sp)
	jal     wipe_802CBC7C
	lw      $a2, 0x00C0($sp)
	sh      $v0, 0x00AC($sp)
	jal     gfx_alloc
	li      $a0, 0x0080
	sw      $v0, 0x00A8($sp)
	lw      $t6, 0x00A8($sp)
	beqz    $t6, .L802CCBB8
	nop
	lh      $t7, 0x00AE($sp)
	lh      $t8, 0x00AC($sp)
	lb      $t9, 0x00CB($sp)
	lw      $a0, 0x00A8($sp)
	lb      $a1, 0x00BB($sp)
	lw      $a2, 0x00C0($sp)
	lh      $a3, 0x00B0($sp)
	sw      $t7, 0x0010($sp)
	sw      $t8, 0x0014($sp)
	jal     wipe_802CC180
	sw      $t9, 0x0018($sp)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x00A4($sp)
	lw      $t3, 0x00A4($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x00A4($sp)
	la.u    $t4, gfx_wipe_start
	la.l    $t4, gfx_wipe_start
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x00A0($sp)
	lw      $t9, 0x00A0($sp)
	li.u    $t8, 0xFCFFFFFF
	li.l    $t8, 0xFCFFFFFF
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x00A0($sp)
	li.u    $t0, 0xFFFE793C
	li.l    $t0, 0xFFFE793C
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x009C($sp)
	lw      $t5, 0x009C($sp)
	li.u    $t4, 0xB900031D
	li.l    $t4, 0xB900031D
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x009C($sp)
	li.u    $t6, 0x00552048
	li.l    $t6, 0x00552048
	sw      $t6, 0x0004($t7)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0098($sp)
	lw      $t1, 0x0098($sp)
	li.u    $t0, 0x04700080
	li.l    $t0, 0x04700080
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x00A8($sp)
	lw      $t4, 0x0098($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t4)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0094($sp)
	lw      $t8, 0x0094($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x0094($sp)
	la.u    $t9, gfx_wipe_draw
	la.l    $t9, gfx_wipe_draw
	sw      $t9, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0090($sp)
	lw      $t4, 0x0090($sp)
	li      $t3, 0xE7000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0090($sp)
	sw      $0, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x008C($sp)
	lw      $t9, 0x008C($sp)
	li.u    $t8, 0xFC127E24
	li.l    $t8, 0xFC127E24
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x008C($sp)
	li      $t0, -0x0C07
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0088($sp)
	lw      $t5, 0x0088($sp)
	li.u    $t4, 0xB900031D
	li.l    $t4, 0xB900031D
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0088($sp)
	li.u    $t6, 0x005041C8
	li.l    $t6, 0x005041C8
	sw      $t6, 0x0004($t7)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0084($sp)
	lw      $t1, 0x0084($sp)
	li.u    $t0, 0xBA000C02
	li.l    $t0, 0xBA000C02
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0084($sp)
	li      $t2, 0x2000
	sw      $t2, 0x0004($t3)
	lb      $s0, 0x00CB($sp)
	beqz    $s0, .L802CC798
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802CC90C
	nop
	b       .L802CCA80
	nop
.L802CC798:
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0080($sp)
	lw      $t7, 0x0080($sp)
	li      $t6, 0xFD700000
	sw      $t6, 0x0000($t7)
	lb      $t8, 0x00C7($sp)
	lui     $t0, %hi(txt_wipe)
	lw      $t1, 0x0080($sp)
	sll     $t9, $t8, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(txt_wipe)($t0)
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x007C($sp)
	lw      $t5, 0x007C($sp)
	li      $t4, 0xF5700000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x007C($sp)
	li.u    $t6, 0x07058150
	li.l    $t6, 0x07058150
	sw      $t6, 0x0004($t7)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0078($sp)
	lw      $t1, 0x0078($sp)
	li      $t0, 0xE6000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0078($sp)
	sw      $0, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x0074($sp)
	lw      $t6, 0x0074($sp)
	li      $t5, 0xF3000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0074($sp)
	li.u    $t7, 0x073FF200
	li.l    $t7, 0x073FF200
	sw      $t7, 0x0004($t8)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0070($sp)
	lw      $t2, 0x0070($sp)
	li      $t1, 0xE7000000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x0070($sp)
	sw      $0, 0x0004($t3)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x006C($sp)
	lw      $t7, 0x006C($sp)
	li.u    $t6, 0xF5680800
	li.l    $t6, 0xF5680800
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x006C($sp)
	li.u    $t8, 0x00058150
	li.l    $t8, 0x00058150
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0068($sp)
	lw      $t3, 0x0068($sp)
	li      $t2, 0xF2000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0068($sp)
	li.u    $t4, 0x0007C0FC
	li.l    $t4, 0x0007C0FC
	sw      $t4, 0x0004($t5)
	b       .L802CCA80
	nop
.L802CC90C:
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0064($sp)
	lw      $t9, 0x0064($sp)
	li      $t8, 0xFD700000
	sw      $t8, 0x0000($t9)
	lb      $t0, 0x00C7($sp)
	lui     $t2, %hi(txt_wipe)
	lw      $t3, 0x0064($sp)
	sll     $t1, $t0, 2
	addu    $t2, $t2, $t1
	lw      $t2, %lo(txt_wipe)($t2)
	sw      $t2, 0x0004($t3)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0060($sp)
	lw      $t7, 0x0060($sp)
	li      $t6, 0xF5700000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0060($sp)
	li.u    $t8, 0x07098260
	li.l    $t8, 0x07098260
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x005C($sp)
	lw      $t3, 0x005C($sp)
	li      $t2, 0xE6000000
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x005C($sp)
	sw      $0, 0x0004($t4)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0058($sp)
	lw      $t8, 0x0058($sp)
	li      $t7, 0xF3000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x0058($sp)
	li.u    $t9, 0x077FF100
	li.l    $t9, 0x077FF100
	sw      $t9, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0054($sp)
	lw      $t4, 0x0054($sp)
	li      $t3, 0xE7000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0054($sp)
	sw      $0, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0050($sp)
	lw      $t9, 0x0050($sp)
	li.u    $t8, 0xF5681000
	li.l    $t8, 0xF5681000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0050($sp)
	li.u    $t0, 0x00098260
	li.l    $t0, 0x00098260
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x004C($sp)
	lw      $t5, 0x004C($sp)
	li      $t4, 0xF2000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x004C($sp)
	li.u    $t6, 0x000FC0FC
	li.l    $t6, 0x000FC0FC
	sw      $t6, 0x0004($t7)
	b       .L802CCA80
	nop
.L802CCA80:
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0048($sp)
	lw      $t1, 0x0048($sp)
	li.u    $t0, 0xBB000001
	li.l    $t0, 0xBB000001
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0048($sp)
	li      $t2, -0x0001
	sw      $t2, 0x0004($t3)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0044($sp)
	lw      $t7, 0x0044($sp)
	li.u    $t6, 0x04300040
	li.l    $t6, 0x04300040
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x00A8($sp)
	lw      $t0, 0x0044($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0040($sp)
	lw      $t4, 0x0040($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x0040($sp)
	la.u    $t5, gfx_quad0
	la.l    $t5, gfx_quad0
	sw      $t5, 0x0004($t6)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x003C($sp)
	lw      $t0, 0x003C($sp)
	li      $t9, 0xBB000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x003C($sp)
	li      $t1, -0x0001
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x0038($sp)
	lw      $t6, 0x0038($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0038($sp)
	la.u    $t7, gfx_wipe_end
	la.l    $t7, gfx_wipe_end
	sw      $t7, 0x0004($t8)
	lb      $t9, 0x00BB($sp)
	lw      $t4, 0x00C0($sp)
	la.u    $t1, wipe_80330EC4
	la.l    $t1, wipe_80330EC4
	sll     $t0, $t9, 1
	addu    $t2, $t0, $t1
	lhu     $t3, 0x0000($t2)
	lh      $t5, 0x0010($t4)
	addu    $t6, $t3, $t5
	b       .L802CCBB8
	sh      $t6, 0x0000($t2)
.L802CCBB8:
	lb      $a0, 0x00BB($sp)
	jal     wipe_802CB5C0
	lb      $a1, 0x00BF($sp)
	b       .L802CCBD4
	nop
	b       .L802CCBD4
	nop
.L802CCBD4:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x00B8
	jr      $ra
	nop

/* int wipe_802CCBE8(CHAR index, CHAR type, UCHAR frame, WIPE_ARG *arg) */
.globl wipe_802CCBE8
wipe_802CCBE8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lbu     $t6, 0x0027($sp)
	sltiu   $at, $t6, 0x0014
	beqz    $at, L802CCDB0
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(wipe_80338010)
	addu    $at, $at, $t6
	lw      $t6, %lo(wipe_80338010)($at)
	jr      $t6
	nop
.globl L802CCC28
L802CCC28:
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x002B($sp)
	jal     wipe_802CBBC4
	lw      $a2, 0x002C($sp)
	b       .L802CCDB8
	nop
	b       L802CCDB0
	nop
.globl L802CCC48
L802CCC48:
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x002B($sp)
	jal     wipe_802CBC20
	lw      $a2, 0x002C($sp)
	b       .L802CCDB8
	nop
	b       L802CCDB0
	nop
.globl L802CCC68
L802CCC68:
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x002B($sp)
	lw      $a2, 0x002C($sp)
	move    $a3, $0
	jal     wipe_802CC4D8
	sw      $0, 0x0010($sp)
	b       .L802CCDB8
	nop
	b       L802CCDB0
	nop
.globl L802CCC90
L802CCC90:
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x002B($sp)
	lw      $a2, 0x002C($sp)
	move    $a3, $0
	jal     wipe_802CC4D8
	sw      $0, 0x0010($sp)
	b       .L802CCDB8
	nop
	b       L802CCDB0
	nop
.globl L802CCCB8
L802CCCB8:
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x002B($sp)
	lw      $a2, 0x002C($sp)
	li      $a3, 0x0001
	jal     wipe_802CC4D8
	sw      $0, 0x0010($sp)
	b       .L802CCDB8
	nop
	b       L802CCDB0
	nop
.globl L802CCCE0
L802CCCE0:
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x002B($sp)
	lw      $a2, 0x002C($sp)
	li      $a3, 0x0001
	jal     wipe_802CC4D8
	sw      $0, 0x0010($sp)
	b       .L802CCDB8
	nop
	b       L802CCDB0
	nop
.globl L802CCD08
L802CCD08:
	li      $t7, 0x0001
	sw      $t7, 0x0010($sp)
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x002B($sp)
	lw      $a2, 0x002C($sp)
	jal     wipe_802CC4D8
	li      $a3, 0x0002
	b       .L802CCDB8
	nop
	b       L802CCDB0
	nop
.globl L802CCD34
L802CCD34:
	li      $t8, 0x0001
	sw      $t8, 0x0010($sp)
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x002B($sp)
	lw      $a2, 0x002C($sp)
	jal     wipe_802CC4D8
	li      $a3, 0x0002
	b       .L802CCDB8
	nop
	b       L802CCDB0
	nop
.globl L802CCD60
L802CCD60:
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x002B($sp)
	lw      $a2, 0x002C($sp)
	li      $a3, 0x0003
	jal     wipe_802CC4D8
	sw      $0, 0x0010($sp)
	b       .L802CCDB8
	nop
	b       L802CCDB0
	nop
.globl L802CCD88
L802CCD88:
	lb      $a0, 0x0023($sp)
	lbu     $a1, 0x002B($sp)
	lw      $a2, 0x002C($sp)
	li      $a3, 0x0003
	jal     wipe_802CC4D8
	sw      $0, 0x0010($sp)
	b       .L802CCDB8
	nop
	b       L802CCDB0
	nop
.globl L802CCDB0
L802CCDB0:
	b       .L802CCDB8
	nop
.L802CCDB8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wipe_802CCDC8:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x0034($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0084($sp)
	jal     gfx_alloc
	li      $a0, 0x0080
	sw      $v0, 0x0080($sp)
	lw      $t6, 0x0080($sp)
	sw      $t6, 0x007C($sp)
	lw      $t7, 0x0084($sp)
	beqz    $t7, .L802CD1C0
	nop
	lw      $t8, 0x0080($sp)
	beqz    $t8, .L802CD1C0
	nop
	li      $t9, -0x0001
	li      $t0, -0x0480
	li      $t1, 0x0720
	li      $t2, 0x00FF
	sw      $t2, 0x0028($sp)
	sw      $t1, 0x0018($sp)
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	lw      $a0, 0x0084($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_shape_802D2210
	sw      $0, 0x0024($sp)
	li      $t3, -0x0001
	li      $t4, 0x0480
	li      $t5, 0x0720
	li      $t6, 0x00FF
	sw      $t6, 0x0028($sp)
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	lw      $a0, 0x0084($sp)
	li      $a1, 0x0001
	li      $a2, 0x0140
	move    $a3, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_shape_802D2210
	sw      $0, 0x0024($sp)
	li      $t7, -0x0001
	li      $t8, 0x0480
	li      $t9, 0x00C0
	li      $t0, 0x00FF
	sw      $t0, 0x0028($sp)
	sw      $t9, 0x0018($sp)
	sw      $t8, 0x0014($sp)
	sw      $t7, 0x0010($sp)
	lw      $a0, 0x0084($sp)
	li      $a1, 0x0002
	li      $a2, 0x0140
	li      $a3, 0x00F0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_shape_802D2210
	sw      $0, 0x0024($sp)
	li      $t1, -0x0001
	li      $t2, -0x0480
	li      $t3, 0x00C0
	li      $t4, 0x00FF
	sw      $t4, 0x0028($sp)
	sw      $t3, 0x0018($sp)
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	lw      $a0, 0x0084($sp)
	li      $a1, 0x0003
	move    $a2, $0
	li      $a3, 0x00F0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_shape_802D2210
	sw      $0, 0x0024($sp)
	lw      $t5, 0x007C($sp)
	addiu   $t6, $t5, 0x0008
	sw      $t6, 0x007C($sp)
	sw      $t5, 0x0078($sp)
	lw      $t8, 0x0078($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x0078($sp)
	la.u    $t9, gfx_wipe_start
	la.l    $t9, gfx_wipe_start
	sw      $t9, 0x0004($t0)
	lw      $t1, 0x007C($sp)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x007C($sp)
	sw      $t1, 0x0074($sp)
	lw      $t4, 0x0074($sp)
	li.u    $t3, 0xFC127E24
	li.l    $t3, 0xFC127E24
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x0074($sp)
	li      $t5, -0x0C07
	sw      $t5, 0x0004($t6)
	lw      $t7, 0x007C($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x007C($sp)
	sw      $t7, 0x0070($sp)
	lw      $t0, 0x0070($sp)
	li.u    $t9, 0xBA000C02
	li.l    $t9, 0xBA000C02
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0070($sp)
	li      $t1, 0x2000
	sw      $t1, 0x0004($t2)
	lw      $t3, 0x007C($sp)
	addiu   $t4, $t3, 0x0008
	sw      $t4, 0x007C($sp)
	sw      $t3, 0x006C($sp)
	lw      $t6, 0x006C($sp)
	li      $t5, 0xFD700000
	sw      $t5, 0x0000($t6)
	la.u    $t7, txt_wipe
	la.l    $t7, txt_wipe
	lw      $t8, 0x0004($t7)
	lw      $t9, 0x006C($sp)
	sw      $t8, 0x0004($t9)
	lw      $t0, 0x007C($sp)
	addiu   $t1, $t0, 0x0008
	sw      $t1, 0x007C($sp)
	sw      $t0, 0x0068($sp)
	lw      $t3, 0x0068($sp)
	li      $t2, 0xF5700000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0068($sp)
	li.u    $t4, 0x07058150
	li.l    $t4, 0x07058150
	sw      $t4, 0x0004($t5)
	lw      $t6, 0x007C($sp)
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x007C($sp)
	sw      $t6, 0x0064($sp)
	lw      $t9, 0x0064($sp)
	li      $t8, 0xE6000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0064($sp)
	sw      $0, 0x0004($t0)
	lw      $t1, 0x007C($sp)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x007C($sp)
	sw      $t1, 0x0060($sp)
	lw      $t4, 0x0060($sp)
	li      $t3, 0xF3000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x0060($sp)
	li.u    $t5, 0x073FF200
	li.l    $t5, 0x073FF200
	sw      $t5, 0x0004($t6)
	lw      $t7, 0x007C($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x007C($sp)
	sw      $t7, 0x005C($sp)
	lw      $t0, 0x005C($sp)
	li      $t9, 0xE7000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x005C($sp)
	sw      $0, 0x0004($t1)
	lw      $t2, 0x007C($sp)
	addiu   $t3, $t2, 0x0008
	sw      $t3, 0x007C($sp)
	sw      $t2, 0x0058($sp)
	lw      $t5, 0x0058($sp)
	li.u    $t4, 0xF5680800
	li.l    $t4, 0xF5680800
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0058($sp)
	li.u    $t6, 0x00058150
	li.l    $t6, 0x00058150
	sw      $t6, 0x0004($t7)
	lw      $t8, 0x007C($sp)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x007C($sp)
	sw      $t8, 0x0054($sp)
	lw      $t1, 0x0054($sp)
	li      $t0, 0xF2000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0054($sp)
	li.u    $t2, 0x0007C0FC
	li.l    $t2, 0x0007C0FC
	sw      $t2, 0x0004($t3)
	lw      $t4, 0x007C($sp)
	addiu   $t5, $t4, 0x0008
	sw      $t5, 0x007C($sp)
	sw      $t4, 0x0050($sp)
	lw      $t7, 0x0050($sp)
	li.u    $t6, 0xBB000001
	li.l    $t6, 0xBB000001
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0050($sp)
	li      $t8, -0x0001
	sw      $t8, 0x0004($t9)
	lw      $t0, 0x007C($sp)
	addiu   $t1, $t0, 0x0008
	sw      $t1, 0x007C($sp)
	sw      $t0, 0x004C($sp)
	lw      $t3, 0x004C($sp)
	li.u    $t2, 0x04300040
	li.l    $t2, 0x04300040
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x0084($sp)
	lw      $t6, 0x004C($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t5, $t4, $at
	sw      $t5, 0x0004($t6)
	lw      $t7, 0x007C($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x007C($sp)
	sw      $t7, 0x0048($sp)
	lw      $t0, 0x0048($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0048($sp)
	la.u    $t1, gfx_quad0
	la.l    $t1, gfx_quad0
	sw      $t1, 0x0004($t2)
	lw      $t3, 0x007C($sp)
	addiu   $t4, $t3, 0x0008
	sw      $t4, 0x007C($sp)
	sw      $t3, 0x0044($sp)
	lw      $t6, 0x0044($sp)
	li      $t5, 0xBB000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0044($sp)
	li      $t7, -0x0001
	sw      $t7, 0x0004($t8)
	lw      $t9, 0x007C($sp)
	addiu   $t0, $t9, 0x0008
	sw      $t0, 0x007C($sp)
	sw      $t9, 0x0040($sp)
	lw      $t2, 0x0040($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x0040($sp)
	la.u    $t3, gfx_wipe_end
	la.l    $t3, gfx_wipe_end
	sw      $t3, 0x0004($t4)
	lw      $t5, 0x007C($sp)
	sw      $t5, 0x003C($sp)
	lw      $t7, 0x003C($sp)
	li      $t6, 0xB8000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x003C($sp)
	sw      $0, 0x0004($t8)
	b       .L802CD1C8
	nop
.L802CD1C0:
	b       .L802CD1D8
	move    $v0, $0
.L802CD1C8:
	b       .L802CD1D8
	lw      $v0, 0x0080($sp)
	b       .L802CD1D8
	nop
.L802CD1D8:
	lw      $ra, 0x0034($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

.globl s_wipe_802CD1E8
s_wipe_802CD1E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	sw      $t6, 0x001C($sp)
	sw      $0, 0x0018($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L802CD25C
	nop
	lui     $t8, %hi(scene)
	lw      $t8, %lo(scene)($t8)
	beqz    $t8, .L802CD25C
	nop
	lw      $t9, 0x0024($t8)
	li      $at, 0x000A
	lbu     $t0, 0x0000($t9)
	bne     $t0, $at, .L802CD25C
	nop
	lw      $t1, 0x001C($sp)
	lh      $t2, 0x0002($t1)
	andi    $t3, $t2, 0x00FF
	ori     $t4, $t3, 0x0500
	sh      $t4, 0x0002($t1)
	jal     wipe_802CCDC8
	nop
	sw      $v0, 0x0018($sp)
.L802CD25C:
	b       .L802CD26C
	lw      $v0, 0x0018($sp)
	b       .L802CD26C
	nop
.L802CD26C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

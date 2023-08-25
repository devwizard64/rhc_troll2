.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl object_b_802E3E50
object_b_802E3E50:
	lui     $at, %hi(object_b_80332618)
	sb      $0, %lo(object_b_80332618)($at)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E3E68:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $0, 0x0034($sp)
	lw      $t6, 0x0038($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802E3F48
	nop
	lui     $t7, %hi(shape_object)
	lw      $t7, %lo(shape_object)($t7)
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x003C($sp)
	sw      $t8, 0x0028($sp)
	lw      $t9, 0x003C($sp)
	sw      $t9, 0x0024($sp)
	lui     $t0, %hi(shape_hand)
	lw      $t0, %lo(shape_hand)($t0)
	beqz    $t0, .L802E3ECC
	nop
	lui     $t1, %hi(shape_hand)
	lw      $t1, %lo(shape_hand)($t1)
	lw      $t2, 0x001C($t1)
	sw      $t2, 0x002C($sp)
.L802E3ECC:
	jal     gfx_alloc
	li      $a0, 0x0018
	sw      $v0, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	sw      $t3, 0x0030($sp)
	lw      $t4, 0x0028($sp)
	lh      $t5, 0x0002($t4)
	andi    $t6, $t5, 0x00FF
	ori     $t7, $t6, 0x0500
	sh      $t7, 0x0002($t4)
	lw      $t8, 0x0030($sp)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x0030($sp)
	sw      $t8, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li      $t0, 0xFB000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x002C($sp)
	lw      $t7, 0x001C($sp)
	li      $at, -0x0100
	lw      $t3, 0x017C($t2)
	andi    $t5, $t3, 0x00FF
	or      $t6, $t5, $at
	sw      $t6, 0x0004($t7)
	lw      $t4, 0x0030($sp)
	sw      $t4, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	li      $t8, 0xB8000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0018($sp)
	sw      $0, 0x0004($t0)
.L802E3F48:
	b       .L802E3F58
	lw      $v0, 0x0034($sp)
	b       .L802E3F58
	nop
.L802E3F58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802E3F68:
	mtc1    $0, $f4
	nop
	c.lt.s  $f12, $f4
	nop
	bc1f    .L802E3F94
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f6
	nop
	mul.s   $f12, $f12, $f6
	nop
.L802E3F94:
	jr      $ra
	mov.s   $f0, $f12
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E3FAC:
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lwc1    $f4, 0x0010($sp)
	lwc1    $f8, 0x0008($sp)
	li      $at, 0x40000000
	mul.s   $f6, $f4, $f4
	lw      $t6, 0x0014($sp)
	mul.s   $f10, $f8, $f8
	sub.s   $f16, $f6, $f10
	mul.s   $f18, $f16, $f12
	add.s   $f16, $f10, $f6
	mul.s   $f6, $f8, $f4
	div.s   $f10, $f18, $f16
	mtc1    $at, $f18
	nop
	mul.s   $f8, $f18, $f14
	nop
	mul.s   $f4, $f8, $f6
	div.s   $f18, $f4, $f16
	sub.s   $f8, $f10, $f18
	swc1    $f8, 0x0000($t6)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f16, 0x0010($sp)
	li      $at, 0x40000000
	mul.s   $f4, $f6, $f6
	lw      $t7, 0x0018($sp)
	mul.s   $f10, $f16, $f16
	sub.s   $f18, $f4, $f10
	mul.s   $f8, $f18, $f14
	add.s   $f18, $f4, $f10
	mul.s   $f10, $f6, $f16
	div.s   $f4, $f8, $f18
	mtc1    $at, $f8
	nop
	mul.s   $f6, $f8, $f12
	nop
	mul.s   $f16, $f6, $f10
	div.s   $f8, $f16, $f18
	sub.s   $f6, $f4, $f8
	swc1    $f6, 0x0000($t7)
	b       .L802E4054
	nop
.L802E4054:
	jr      $ra
	nop

object_b_802E405C:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x0024($sp)
	sw      $a2, 0x0078($sp)
	sw      $a3, 0x007C($sp)
	swc1    $f12, 0x0070($sp)
	swc1    $f14, 0x0074($sp)
	lwc1    $f4, 0x0070($sp)
	swc1    $f4, 0x0048($sp)
	lwc1    $f6, 0x0074($sp)
	swc1    $f6, 0x004C($sp)
	lwc1    $f8, 0x0078($sp)
	swc1    $f8, 0x0050($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x01FC($t6)
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0054($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x01F8($t7)
	swc1    $f4, 0x0058($sp)
	jal     map_80380E8C
	addiu   $a0, $sp, 0x0048
	beqz    $v0, .L802E4184
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x0048($sp)
	swc1    $f6, 0x00A0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x004C($sp)
	swc1    $f8, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x0050($sp)
	swc1    $f10, 0x00A8($t0)
	addiu   $t1, $sp, 0x0048
	lw      $t2, 0x0018($t1)
	lwc1    $f16, 0x001C($t2)
	swc1    $f16, 0x0044($sp)
	addiu   $t3, $sp, 0x0048
	lw      $t4, 0x0018($t3)
	lwc1    $f18, 0x0020($t4)
	swc1    $f18, 0x0040($sp)
	addiu   $t5, $sp, 0x0048
	lw      $t6, 0x0018($t5)
	lwc1    $f4, 0x0024($t6)
	swc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x007C($sp)
	swc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0080($sp)
	swc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x003C($sp)
	addiu   $t7, $sp, 0x0030
	addiu   $t8, $sp, 0x002C
	sw      $t8, 0x0018($sp)
	sw      $t7, 0x0014($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x0034($sp)
	lw      $a2, 0x0044($sp)
	lw      $a3, 0x0040($sp)
	jal     object_b_802E3FAC
	swc1    $f10, 0x0010($sp)
	lwc1    $f12, 0x002C($sp)
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	b       .L802E4194
	move    $v0, $0
.L802E4184:
	b       .L802E4194
	li      $v0, 0x0001
	b       .L802E4194
	nop
.L802E4194:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

object_b_802E41A4:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	lw      $t6, 0x0048($sp)
	bnez    $t6, .L802E41FC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_b_803383D0)
	ldc1    $f8, %lo(object_b_803383D0)($at)
	lw      $t8, 0x00C8($t7)
	mtc1    $t8, $f4
	nop
	cvt.d.w $f6, $f4
	add.d   $f10, $f6, $f8
	trunc.w.d $f16, $f10
	swc1    $f16, 0x00C8($t7)
	b       .L802E42D0
	move    $v0, $0
.L802E41FC:
	lw      $t0, 0x0048($sp)
	lwc1    $f18, 0x001C($t0)
	swc1    $f18, 0x0044($sp)
	lw      $t1, 0x0048($sp)
	lwc1    $f4, 0x0020($t1)
	swc1    $f4, 0x0040($sp)
	lw      $t2, 0x0048($sp)
	lwc1    $f6, 0x0024($t2)
	swc1    $f6, 0x003C($sp)
	lwc1    $f8, 0x0040($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    .L802E42C0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f4, 0x00A4($t3)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L802E42C0
	nop
	lwc1    $f6, 0x0050($sp)
	swc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0054($sp)
	swc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x003C($sp)
	addiu   $t4, $sp, 0x0030
	addiu   $t5, $sp, 0x002C
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x0034($sp)
	lw      $a2, 0x0044($sp)
	lw      $a3, 0x0040($sp)
	jal     object_b_802E3FAC
	swc1    $f10, 0x0010($sp)
	lwc1    $f12, 0x002C($sp)
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00C8($t6)
	b       .L802E42D0
	move    $v0, $0
.L802E42C0:
	b       .L802E42D0
	li      $v0, 0x0001
	b       .L802E42D0
	nop
.L802E42D0:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

object_b_802E42E0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lui     $t6, %hi(object_b_80332610)
	lb      $t6, %lo(object_b_80332610)($t6)
	bnez    $t6, .L802E4310
	nop
	b       .L802E43D4
	nop
.L802E4310:
	lw      $t7, 0x0038($sp)
	lh      $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L802E432C
	nop
	b       .L802E43D4
	nop
.L802E432C:
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	bnez    $t0, .L802E434C
	nop
	b       .L802E43D4
	nop
.L802E434C:
	lw      $t1, 0x0038($sp)
	addiu   $t2, $sp, 0x002C
	lwc1    $f4, 0x00A0($t1)
	swc1    $f4, 0x0000($t2)
	lw      $t3, 0x0038($sp)
	addiu   $t4, $sp, 0x002C
	lwc1    $f6, 0x00DC($t3)
	lwc1    $f8, 0x00A4($t3)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0004($t4)
	lw      $t5, 0x0038($sp)
	addiu   $t6, $sp, 0x002C
	lwc1    $f16, 0x00A8($t5)
	swc1    $f16, 0x0008($t6)
	lwc1    $f18, 0x003C($sp)
	addiu   $t7, $sp, 0x0020
	swc1    $f18, 0x0000($t7)
	lwc1    $f4, 0x0040($sp)
	addiu   $t8, $sp, 0x0020
	swc1    $f4, 0x0004($t8)
	lwc1    $f6, 0x0044($sp)
	addiu   $t9, $sp, 0x0020
	swc1    $f6, 0x0008($t9)
	lw      $t0, 0x0038($sp)
	lw      $a0, 0x001C($sp)
	addiu   $a1, $sp, 0x0020
	addiu   $a2, $sp, 0x002C
	jal     mtxf_stand
	lw      $a3, 0x00D4($t0)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x0038($sp)
	sw      $t1, 0x0050($t2)
	b       .L802E43D4
	nop
.L802E43D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802E43E4:
	sw      $a1, 0x0004($sp)
	lwc1    $f4, 0x0004($sp)
	lui     $at, %hi(object_b_803383D8)
	ldc1    $f8, %lo(object_b_803383D8)($at)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    .L802E443C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803383E0)
	ldc1    $f18, %lo(object_b_803383E0)($at)
	lwc1    $f10, 0x0170($t6)
	cvt.d.s $f16, $f10
	c.lt.d  $f16, $f18
	nop
	bc1f    .L802E443C
	nop
	mtc1    $0, $f4
	b       .L802E444C
	swc1    $f4, 0x0000($a0)
.L802E443C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x0170($t7)
	swc1    $f6, 0x0000($a0)
.L802E444C:
	b       .L802E4454
	nop
.L802E4454:
	jr      $ra
	nop

object_b_802E445C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x001C($t6)
	swc1    $f4, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f6, 0x0020($t7)
	swc1    $f6, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f8, 0x0024($t8)
	swc1    $f8, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00B0($t9)
	lwc1    $f16, 0x00E4($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_b_803383E8)
	ldc1    $f8, %lo(object_b_803383E8)($at)
	lwc1    $f4, 0x00B0($t0)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    .L802E44F0
	nop
	li      $at, 0x42960000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t1)
.L802E44F0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_803383F0)
	ldc1    $f4, %lo(object_b_803383F0)($at)
	lwc1    $f16, 0x00B0($t2)
	cvt.d.s $f18, $f16
	c.lt.d  $f18, $f4
	nop
	bc1f    .L802E4530
	nop
	li      $at, 0xC2960000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t3)
.L802E4530:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, 0x00A4($t4)
	lwc1    $f10, 0x00B0($t4)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f18, 0x00A4($t5)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802E45D8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x002C($sp)
	swc1    $f6, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_b_803383F8)
	ldc1    $f16, %lo(object_b_803383F8)($at)
	lwc1    $f8, 0x00B0($t7)
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    .L802E45C4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B0($t8)
	div.s   $f6, $f18, $f4
	neg.s   $f8, $f6
	b       .L802E45D8
	swc1    $f8, 0x00B0($t8)
.L802E45C4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t9)
.L802E45D8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f16, 0x00A4($t0)
	trunc.w.s $f6, $f4
	trunc.w.s $f18, $f16
	mfc1    $t4, $f6
	mfc1    $t2, $f18
	nop
	slt     $at, $t2, $t4
	bnez    $at, .L802E47FC
	nop
	addiu   $t5, $t4, 0x0025
	slt     $at, $t2, $t5
	beqz    $at, .L802E47FC
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	jal     object_b_802E42E0
	lw      $a3, 0x001C($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f16, 0x001C($sp)
	lui     $t6, %hi(object)
	mul.s   $f10, $f8, $f8
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40000000
	mul.s   $f18, $f16, $f16
	lwc1    $f16, 0x0020($sp)
	add.s   $f4, $f10, $f18
	mul.s   $f6, $f8, $f4
	nop
	mul.s   $f8, $f16, $f16
	add.s   $f4, $f10, $f8
	lwc1    $f8, 0x00E4($t6)
	add.s   $f16, $f4, $f18
	mtc1    $at, $f18
	div.s   $f10, $f6, $f16
	lwc1    $f16, 0x0030($sp)
	mul.s   $f4, $f10, $f8
	nop
	mul.s   $f6, $f4, $f18
	add.s   $f10, $f16, $f6
	swc1    $f10, 0x0030($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f18, 0x001C($sp)
	lui     $t7, %hi(object)
	mul.s   $f4, $f8, $f8
	lwc1    $f8, 0x0020($sp)
	lw      $t7, %lo(object)($t7)
	mul.s   $f16, $f18, $f18
	li      $at, 0x40000000
	add.s   $f6, $f4, $f16
	mul.s   $f10, $f18, $f6
	nop
	mul.s   $f18, $f8, $f8
	add.s   $f6, $f4, $f18
	lwc1    $f18, 0x00E4($t7)
	add.s   $f8, $f6, $f16
	mtc1    $at, $f16
	div.s   $f4, $f10, $f8
	lwc1    $f8, 0x0034($sp)
	mul.s   $f6, $f4, $f18
	nop
	mul.s   $f10, $f6, $f16
	add.s   $f4, $f8, $f10
	swc1    $f4, 0x0034($sp)
	lwc1    $f18, 0x0030($sp)
	lui     $at, %hi(object_b_80338400)
	ldc1    $f16, %lo(object_b_80338400)($at)
	cvt.d.s $f6, $f18
	c.lt.d  $f6, $f16
	nop
	bc1f    .L802E472C
	nop
	lui     $at, %hi(object_b_80338408)
	ldc1    $f8, %lo(object_b_80338408)($at)
	c.lt.d  $f8, $f6
	nop
	bc1f    .L802E472C
	nop
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0030($sp)
.L802E472C:
	lwc1    $f4, 0x0034($sp)
	lui     $at, %hi(object_b_80338410)
	ldc1    $f16, %lo(object_b_80338410)($at)
	cvt.d.s $f18, $f4
	c.lt.d  $f18, $f16
	nop
	bc1f    .L802E4770
	nop
	lui     $at, %hi(object_b_80338418)
	ldc1    $f6, %lo(object_b_80338418)($at)
	c.lt.d  $f6, $f18
	nop
	bc1f    .L802E4770
	nop
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0034($sp)
.L802E4770:
	lwc1    $f10, 0x0030($sp)
	mtc1    $0, $f4
	nop
	c.eq.s  $f10, $f4
	nop
	bc1f    .L802E47A8
	nop
	lwc1    $f16, 0x0034($sp)
	mtc1    $0, $f18
	nop
	c.eq.s  $f16, $f18
	nop
	bc1t    .L802E47C0
	nop
.L802E47A8:
	lwc1    $f12, 0x0034($sp)
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00C8($t8)
.L802E47C0:
	addiu   $a0, $sp, 0x0018
	jal     object_b_802E43E4
	lw      $a1, 0x0020($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x0034($sp)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f4, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f4
	lwc1    $f16, 0x0018($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f18, $f0, $f16
	swc1    $f18, 0x00B8($t9)
.L802E47FC:
	b       .L802E4804
	nop
.L802E4804:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E4814:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x001C($t6)
	swc1    $f4, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f6, 0x0020($t7)
	swc1    $f6, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f8, 0x0024($t8)
	swc1    $f8, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0xBF800000
	mtc1    $at, $f16
	lwc1    $f10, 0x00E4($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	mul.s   $f18, $f10, $f16
	lwc1    $f6, 0x0174($t9)
	sub.s   $f8, $f4, $f6
	mul.s   $f10, $f18, $f8
	swc1    $f10, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x0018($sp)
	lwc1    $f16, 0x00B0($t0)
	sub.s   $f6, $f16, $f4
	swc1    $f6, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_80338420)
	ldc1    $f10, %lo(object_b_80338420)($at)
	lwc1    $f18, 0x00B0($t1)
	cvt.d.s $f8, $f18
	c.lt.d  $f10, $f8
	nop
	bc1f    .L802E48D8
	nop
	li      $at, 0x42960000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B0($t2)
.L802E48D8:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_b_80338428)
	ldc1    $f18, %lo(object_b_80338428)($at)
	lwc1    $f4, 0x00B0($t3)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f18
	nop
	bc1f    .L802E4918
	nop
	li      $at, 0xC2960000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t4)
.L802E4918:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x00A4($t5)
	lwc1    $f16, 0x00B0($t5)
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x00A4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f6, 0x00A4($t6)
	c.lt.s  $f6, $f18
	nop
	bc1f    .L802E49C0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x002C($sp)
	swc1    $f8, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_b_80338430)
	ldc1    $f4, %lo(object_b_80338430)($at)
	lwc1    $f10, 0x00B0($t8)
	cvt.d.s $f16, $f10
	c.lt.d  $f16, $f4
	nop
	bc1f    .L802E49AC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f6, 0x00B0($t9)
	div.s   $f8, $f6, $f18
	neg.s   $f10, $f8
	b       .L802E49C0
	swc1    $f10, 0x00B0($t9)
.L802E49AC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t0)
.L802E49C0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x40290000
	mtc1    $at, $f19
	lwc1    $f4, 0x00B8($t1)
	mtc1    $0, $f18
	cvt.d.s $f6, $f4
	c.lt.d  $f18, $f6
	nop
	bc1f    .L802E4A44
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0038($sp)
	lwc1    $f4, 0x00A4($t1)
	add.s   $f16, $f8, $f10
	c.lt.s  $f4, $f16
	nop
	bc1f    .L802E4A44
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f6
	nop
	sub.s   $f18, $f8, $f6
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802E4A44
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x00B0($t2)
	neg.s   $f16, $f10
	swc1    $f16, 0x00B0($t2)
.L802E4A44:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f8, 0x00A4($t3)
	trunc.w.s $f4, $f18
	trunc.w.s $f6, $f8
	mfc1    $t7, $f4
	mfc1    $t5, $f6
	nop
	slt     $at, $t5, $t7
	bnez    $at, .L802E4B48
	nop
	addiu   $t8, $t7, 0x0025
	slt     $at, $t5, $t8
	beqz    $at, .L802E4B48
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	jal     object_b_802E42E0
	lw      $a3, 0x001C($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x40000000
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f6, $f8, $f8
	lwc1    $f8, 0x0020($sp)
	add.s   $f18, $f16, $f6
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f10, $f8, $f8
	add.s   $f18, $f16, $f10
	lwc1    $f10, 0x0018($sp)
	add.s   $f8, $f18, $f6
	mtc1    $at, $f6
	div.s   $f16, $f4, $f8
	lwc1    $f8, 0x0030($sp)
	mul.s   $f18, $f16, $f10
	nop
	mul.s   $f4, $f18, $f6
	add.s   $f16, $f8, $f4
	swc1    $f16, 0x0030($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f6, 0x001C($sp)
	li      $at, 0x40000000
	mul.s   $f18, $f10, $f10
	lwc1    $f10, 0x0020($sp)
	mul.s   $f8, $f6, $f6
	add.s   $f4, $f18, $f8
	mul.s   $f16, $f6, $f4
	nop
	mul.s   $f6, $f10, $f10
	add.s   $f4, $f18, $f6
	lwc1    $f6, 0x0018($sp)
	add.s   $f10, $f4, $f8
	mtc1    $at, $f8
	div.s   $f18, $f16, $f10
	lwc1    $f10, 0x0034($sp)
	mul.s   $f4, $f18, $f6
	nop
	mul.s   $f16, $f4, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
.L802E4B48:
	lwc1    $f6, 0x0030($sp)
	lui     $at, %hi(object_b_80338438)
	ldc1    $f8, %lo(object_b_80338438)($at)
	cvt.d.s $f4, $f6
	c.lt.d  $f4, $f8
	nop
	bc1f    .L802E4B8C
	nop
	lui     $at, %hi(object_b_80338440)
	ldc1    $f10, %lo(object_b_80338440)($at)
	c.lt.d  $f10, $f4
	nop
	bc1f    .L802E4B8C
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0030($sp)
.L802E4B8C:
	lwc1    $f18, 0x0034($sp)
	lui     $at, %hi(object_b_80338448)
	ldc1    $f8, %lo(object_b_80338448)($at)
	cvt.d.s $f6, $f18
	c.lt.d  $f6, $f8
	nop
	bc1f    .L802E4BD0
	nop
	lui     $at, %hi(object_b_80338450)
	ldc1    $f4, %lo(object_b_80338450)($at)
	c.lt.d  $f4, $f6
	nop
	bc1f    .L802E4BD0
	nop
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0034($sp)
.L802E4BD0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_80338458)
	ldc1    $f8, %lo(object_b_80338458)($at)
	lwc1    $f16, 0x00B0($t9)
	cvt.d.s $f18, $f16
	c.lt.d  $f18, $f8
	nop
	bc1f    .L802E4C24
	nop
	lui     $at, %hi(object_b_80338460)
	ldc1    $f6, %lo(object_b_80338460)($at)
	c.lt.d  $f6, $f18
	nop
	bc1f    .L802E4C24
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t0)
.L802E4C24:
	lwc1    $f10, 0x0030($sp)
	mtc1    $0, $f16
	nop
	c.eq.s  $f10, $f16
	nop
	bc1f    .L802E4C5C
	nop
	lwc1    $f8, 0x0034($sp)
	mtc1    $0, $f18
	nop
	c.eq.s  $f8, $f18
	nop
	bc1t    .L802E4C74
	nop
.L802E4C5C:
	lwc1    $f12, 0x0034($sp)
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
.L802E4C74:
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x0034($sp)
	mul.s   $f4, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f4, $f16
	lui     $at, %hi(object_b_80338468)
	ldc1    $f18, %lo(object_b_80338468)($at)
	cvt.d.s $f8, $f0
	lui     $t2, %hi(object)
	mul.d   $f6, $f8, $f18
	lw      $t2, %lo(object)($t2)
	cvt.s.d $f10, $f6
	swc1    $f10, 0x00B8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_b_80338470)
	ldc1    $f8, %lo(object_b_80338470)($at)
	lwc1    $f4, 0x00B0($t3)
	cvt.d.s $f16, $f4
	mul.d   $f18, $f16, $f8
	cvt.s.d $f6, $f18
	swc1    $f6, 0x00B0($t3)
	b       .L802E4CDC
	nop
.L802E4CDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E4CEC:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f6, 0x00B8($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f16, 0x00B8($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0000($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0004($sp)
	lwc1    $f4, 0x00A0($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x0000($sp)
	lwc1    $f10, 0x00A8($t5)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t5)
	b       .L802E4D80
	nop
.L802E4D80:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E4D88:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t8, $t7, 0x001E
	mtc1    $t8, $f4
	lwc1    $f8, 0x00A4($t9)
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802E4E38
	nop
	addiu   $t0, $t7, -0x001E
	mtc1    $t0, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f16, $f8
	nop
	bc1f    .L802E4E38
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130034C4
	la.l    $a2, o_130034C4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A6
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0xC1A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B0($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802E4E38
	nop
	li.u    $a0, 0x50324081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50324081
.L802E4E38:
	lw      $t3, 0x0024($sp)
	lw      $t2, 0x0020($sp)
	addiu   $t4, $t3, 0x0032
	slt     $at, $t4, $t2
	beqz    $at, .L802E4E78
	nop
	lw      $t5, 0x001C($sp)
	andi    $t6, $t5, 0x001F
	bnez    $t6, .L802E4E78
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003484
	la.l    $a2, o_13003484
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A4
.L802E4E78:
	b       .L802E4E80
	nop
.L802E4E80:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802E4E90
object_b_802E4E90:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x003C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0038($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x0034($sp)
	lui     $at, %hi(object_b_80338478)
	lwc1    $f10, %lo(object_b_80338478)($at)
	swc1    $f10, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00CA($t9)
	lwc1    $f18, 0x00B8($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0028($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_cos)
	lhu     $t4, 0x00CA($t3)
	lwc1    $f8, 0x00B8($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($sp)
	sh      $0, 0x0022($sp)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f16, 0x003C($sp)
	add.s   $f8, $f4, $f6
	mfc1    $a3, $f18
	lwc1    $f14, 0x0038($sp)
	swc1    $f6, 0x0010($sp)
	mfc1    $a2, $f8
	jal     object_b_802E405C
	add.s   $f12, $f16, $f18
	bnez    $v0, .L802E4F70
	nop
	lh      $t7, 0x0022($sp)
	addiu   $t8, $t7, 0x0002
	sh      $t8, 0x0022($sp)
.L802E4F70:
	lwc1    $f4, 0x0034($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0028($sp)
	add.s   $f18, $f4, $f8
	la.u    $a3, object_b_80361450
	la.l    $a3, object_b_80361450
	lwc1    $f14, 0x0038($sp)
	mfc1    $a2, $f18
	jal     map_80381900
	add.s   $f12, $f10, $f16
	swc1    $f0, 0x0030($sp)
	lui     $a0, %hi(object_b_80361450)
	lw      $a0, %lo(object_b_80361450)($a0)
	lw      $a1, 0x0030($sp)
	lw      $a2, 0x0028($sp)
	jal     object_b_802E41A4
	lw      $a3, 0x0024($sp)
	li      $at, 0x0001
	bne     $v0, $at, .L802E504C
	nop
	lwc1    $f6, 0x003C($sp)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f4, 0x0024($sp)
	add.s   $f12, $f6, $f10
	jal     map_80381BA0
	add.s   $f14, $f16, $f4
	swc1    $f0, 0x002C($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f18, 0x0038($sp)
	c.lt.s  $f18, $f8
	nop
	bc1f    .L802E502C
	nop
	lwc1    $f6, 0x002C($sp)
	lui     $a0, %hi(object_b_80361450)
	lw      $a0, %lo(object_b_80361450)($a0)
	lw      $a1, 0x0030($sp)
	lw      $a2, 0x0028($sp)
	lw      $a3, 0x0024($sp)
	jal     object_b_802E4814
	swc1    $f6, 0x0010($sp)
	lh      $t0, 0x0022($sp)
	addiu   $t1, $t0, 0x0004
	b       .L802E5044
	sh      $t1, 0x0022($sp)
.L802E502C:
	lui     $a0, %hi(object_b_80361450)
	lw      $a0, %lo(object_b_80361450)($a0)
	lw      $a1, 0x0030($sp)
	lw      $a2, 0x0028($sp)
	jal     object_b_802E445C
	lw      $a3, 0x0024($sp)
.L802E5044:
	b       .L802E5060
	nop
.L802E504C:
	lh      $t2, 0x0022($sp)
	andi    $t9, $t2, 0x0002
	xori    $t4, $t9, 0x0002
	addu    $t5, $t2, $t4
	sh      $t5, 0x0022($sp)
.L802E5060:
	jal     object_b_802E4CEC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f10, 0x00A4($t6)
	trunc.w.s $f8, $f4
	trunc.w.s $f16, $f10
	mfc1    $t0, $f8
	mfc1    $t7, $f16
	nop
	bne     $t7, $t0, .L802E50A0
	nop
	lh      $t1, 0x0022($sp)
	addiu   $t9, $t1, 0x0001
	sh      $t9, 0x0022($sp)
.L802E50A0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x00B0($t2)
	trunc.w.s $f6, $f18
	mfc1    $t5, $f6
	nop
	bnez    $t5, .L802E50CC
	nop
	lh      $t6, 0x0022($sp)
	addiu   $t3, $t6, 0x0008
	sh      $t3, 0x0022($sp)
.L802E50CC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f4, 0x00A4($t7)
	trunc.w.s $f16, $f10
	trunc.w.s $f8, $f4
	mfc1    $a0, $f16
	mfc1    $a1, $f8
	jal     object_b_802E4D88
	nop
	b       .L802E5104
	lh      $v0, 0x0022($sp)
	b       .L802E5104
	nop
.L802E5104:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_b_802E5114:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	lui     $at, %hi(object_b_80332610)
	sb      $0, %lo(object_b_80332610)($at)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	li      $t6, 0x0001
	lui     $at, %hi(object_b_80332610)
	sb      $t6, %lo(object_b_80332610)($at)
	b       .L802E5150
	lh      $v0, 0x001E($sp)
	b       .L802E5150
	nop
.L802E5150:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E5160:
	lhu     $t6, 0x00CA($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x00B8($a0)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00AC($t9)
	lhu     $t0, 0x00CA($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x00B8($a0)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_cos)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00A0($a0)
	lwc1    $f6, 0x00AC($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($a0)
	lwc1    $f10, 0x00A4($a0)
	lwc1    $f16, 0x00B0($a0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($a0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x00A8($a0)
	lwc1    $f6, 0x00B4($t5)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E5208:
	addiu   $sp, $sp, -0x0010
	sw      $a2, 0x0018($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lwc1    $f4, 0x0020($t6)
	swc1    $f4, 0x000C($sp)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lwc1    $f6, 0x0024($t7)
	swc1    $f6, 0x0008($sp)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lwc1    $f8, 0x0028($t8)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f6, 0x0008($sp)
	multu   $a3, $a3
	sub.s   $f16, $f12, $f10
	sub.s   $f18, $f12, $f10
	sub.s   $f10, $f14, $f6
	mul.s   $f4, $f16, $f18
	sub.s   $f8, $f14, $f6
	lwc1    $f6, 0x0018($sp)
	mflo    $t9
	mul.s   $f16, $f8, $f10
	lwc1    $f8, 0x0004($sp)
	sub.s   $f10, $f6, $f8
	mtc1    $t9, $f6
	add.s   $f18, $f4, $f16
	mul.s   $f4, $f10, $f10
	cvt.s.w $f8, $f6
	add.s   $f16, $f18, $f4
	c.lt.s  $f16, $f8
	nop
	bc1f    .L802E52A0
	nop
	b       .L802E52B0
	li      $v0, 0x0001
.L802E52A0:
	b       .L802E52B0
	move    $v0, $0
	b       .L802E52B0
	nop
.L802E52B0:
	jr      $ra
	addiu   $sp, $sp, 0x0010

object_b_802E52B8:
	addiu   $sp, $sp, -0x0010
	sw      $a1, 0x0014($sp)
	sw      $a2, 0x0018($sp)
	sw      $a3, 0x001C($sp)
	lwc1    $f4, 0x00A0($a0)
	swc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x00A4($a0)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x00A8($a0)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0014($sp)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x0008($sp)
	sub.s   $f18, $f10, $f16
	lw      $t6, 0x0020($sp)
	sub.s   $f10, $f6, $f8
	mul.s   $f4, $f18, $f18
	lwc1    $f8, 0x0004($sp)
	multu   $t6, $t6
	mul.s   $f16, $f10, $f10
	lwc1    $f6, 0x001C($sp)
	sub.s   $f10, $f6, $f8
	add.s   $f18, $f4, $f16
	mul.s   $f4, $f10, $f10
	mflo    $t7
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f16, $f18, $f4
	c.lt.s  $f16, $f8
	nop
	bc1f    .L802E5348
	nop
	b       .L802E5358
	li      $v0, 0x0001
.L802E5348:
	b       .L802E5358
	move    $v0, $0
	b       .L802E5358
	nop
.L802E5358:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl object_b_802E5360
object_b_802E5360:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x001C($sp)
	lwc1    $f12, 0x0024($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x001C($sp)
	jal     object_b_802E5208
	lw      $a3, 0x002C($sp)
	li      $at, 0x0001
	bne     $v0, $at, .L802E53CC
	nop
	lw      $t9, 0x0028($sp)
	li      $at, -0x0011
	lh      $t0, 0x0002($t9)
	and     $t1, $t0, $at
	b       .L802E53DC
	sh      $t1, 0x0002($t9)
.L802E53CC:
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0010
	sh      $t4, 0x0002($t2)
.L802E53DC:
	b       .L802E53E4
	nop
.L802E53E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E53F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f16, 0x00A8($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f12, 0x0020($sp)
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x001E($sp)
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0030($sp)
	lw      $a2, 0x0034($sp)
	jal     object_b_802E5208
	lw      $a3, 0x0038($sp)
	li      $at, 0x0001
	bne     $v0, $at, .L802E5474
	nop
	b       .L802E54A0
	li      $v0, 0x0001
	b       .L802E5490
	nop
.L802E5474:
	lw      $t8, 0x0028($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0140
	jal     obj_lib_8029E530
	lw      $a0, 0x00C8($t8)
	lw      $t9, 0x0028($sp)
	sw      $v0, 0x00C8($t9)
.L802E5490:
	b       .L802E54A0
	move    $v0, $0
	b       .L802E54A0
	nop
.L802E54A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E54B0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	bnez    $t7, .L802E5564
	nop
	jal     o_script_80383CB4
	nop
	lw      $t8, 0x0038($sp)
	lw      $t0, 0x0028($sp)
	sll     $t9, $t8, 1
	mtc1    $t9, $f10
	mtc1    $t8, $f4
	cvt.s.w $f16, $f10
	lwc1    $f10, 0x002C($sp)
	cvt.s.w $f6, $f4
	mul.s   $f18, $f0, $f16
	sub.s   $f8, $f18, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0164($t0)
	jal     o_script_80383CB4
	nop
	lw      $t1, 0x0038($sp)
	lw      $t3, 0x0028($sp)
	sll     $t2, $t1, 1
	mtc1    $t2, $f4
	mtc1    $t1, $f8
	cvt.s.w $f18, $f4
	lwc1    $f4, 0x0034($sp)
	cvt.s.w $f10, $f8
	mul.s   $f6, $f0, $f18
	sub.s   $f16, $f6, $f10
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x016C($t3)
.L802E5564:
	lw      $t4, 0x0028($sp)
	lwc1    $f8, 0x0164($t4)
	lwc1    $f6, 0x00A0($t4)
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x0020($sp)
	lw      $t5, 0x0028($sp)
	lwc1    $f16, 0x016C($t5)
	lwc1    $f4, 0x00A8($t5)
	sub.s   $f18, $f16, $f4
	swc1    $f18, 0x001C($sp)
	lwc1    $f12, 0x001C($sp)
	jal     atan2
	lwc1    $f14, 0x0020($sp)
	sh      $v0, 0x0026($sp)
	lw      $t6, 0x0028($sp)
	lh      $a1, 0x0026($sp)
	li      $a2, 0x0140
	jal     obj_lib_8029E530
	lw      $a0, 0x00C8($t6)
	lw      $t7, 0x0028($sp)
	sw      $v0, 0x00C8($t7)
	b       .L802E55C0
	nop
.L802E55C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E55D0:
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	addiu   $sp, $sp, -0x0008
	andi    $t6, $a1, 0xFFFF
	andi    $t7, $a0, 0xFFFF
	subu    $t8, $t6, $t7
	sh      $t8, 0x0006($sp)
	lhu     $t5, 0x0006($sp)
	subu    $t9, $0, $a2
	andi    $t0, $t9, 0xFFFF
	la.u    $t3, math_sin
	la.l    $t3, math_sin
	sra     $t1, $t0, 4
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	sll     $t2, $t1, 2
	addu    $t4, $t2, $t3
	addu    $t8, $t7, $t3
	lwc1    $f6, 0x0000($t8)
	lwc1    $f4, 0x0000($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802E5684
	nop
	andi    $t9, $a2, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $t2, $t1, $t3
	lwc1    $f10, 0x0000($t2)
	lwc1    $f8, 0x0000($t8)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802E5684
	nop
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	mtc1    $0, $f18
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802E5684
	nop
	b       .L802E5694
	li      $v0, 0x0001
.L802E5684:
	b       .L802E5694
	move    $v0, $0
	b       .L802E5694
	nop
.L802E5694:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E569C:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	sw      $a3, 0x006C($sp)
	lwc1    $f4, 0x0064($sp)
	swc1    $f4, 0x0038($sp)
	lwc1    $f6, 0x0068($sp)
	swc1    $f6, 0x003C($sp)
	lwc1    $f8, 0x006C($sp)
	swc1    $f8, 0x0040($sp)
	li      $at, 0x41200000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0044($sp)
	lwc1    $f16, 0x0070($sp)
	swc1    $f16, 0x0048($sp)
	jal     map_80380E8C
	addiu   $a0, $sp, 0x0038
	beqz    $v0, .L802E5740
	nop
	lwc1    $f18, 0x0038($sp)
	lwc1    $f4, 0x0064($sp)
	lw      $t6, 0x0060($sp)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0000($t6)
	lwc1    $f8, 0x003C($sp)
	lwc1    $f10, 0x0068($sp)
	lw      $t7, 0x0060($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t7)
	lwc1    $f18, 0x0040($sp)
	lwc1    $f4, 0x006C($sp)
	lw      $t8, 0x0060($sp)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0008($t8)
	b       .L802E5750
	li      $v0, 0x0001
	b       .L802E5748
	nop
.L802E5740:
	b       .L802E5750
	move    $v0, $0
.L802E5748:
	b       .L802E5750
	nop
.L802E5750:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

object_b_802E5760:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lb      $t6, 0x0027($sp)
	sb      $0, 0x001B($sp)
	blez    $t6, .L802E580C
	nop
.L802E5780:
	la.u    $a2, o_13003068
	la.l    $a2, o_13003068
	lw      $a0, 0x0020($sp)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0074
	sw      $v0, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lw      $t7, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x00B8($t7)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42200000
	mtc1    $at, $f8
	li      $at, 0x41A00000
	mtc1    $at, $f16
	mul.s   $f10, $f0, $f8
	lw      $t8, 0x001C($sp)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t8)
	jal     rand
	nop
	lw      $t9, 0x001C($sp)
	sw      $v0, 0x00C8($t9)
	lb      $t0, 0x001B($sp)
	lb      $t4, 0x0027($sp)
	addiu   $t1, $t0, 0x0001
	sll     $t2, $t1, 24
	sra     $t3, $t2, 24
	slt     $at, $t3, $t4
	bnez    $at, .L802E5780
	sb      $t1, 0x001B($sp)
.L802E580C:
	b       .L802E5814
	nop
.L802E5814:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E5824:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	lw      $t6, 0x0154($a0)
	slt     $at, $t6, $a1
	beqz    $at, .L802E5844
	nop
	jr      $ra
	move    $v0, $0
.L802E5844:
	lw      $t7, 0x0154($a0)
	addiu   $t8, $a1, 0x0028
	slt     $at, $t7, $t8
	beqz    $at, .L802E5890
	nop
	lw      $t9, 0x0154($a0)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802E5878
	nop
	lh      $t1, 0x0002($a0)
	ori     $t2, $t1, 0x0010
	b       .L802E5888
	sh      $t2, 0x0002($a0)
.L802E5878:
	lh      $t3, 0x0002($a0)
	li      $at, -0x0011
	and     $t4, $t3, $at
	sh      $t4, 0x0002($a0)
.L802E5888:
	b       .L802E589C
	nop
.L802E5890:
	sh      $0, 0x0074($a0)
	jr      $ra
	li      $v0, 0x0001
.L802E589C:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E58B4:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_80361250)
	lh      $t6, %lo(object_80361250)($t6)
	bnez    $t6, .L802E5900
	nop
	lui     $t7, %hi(object_b_80332614)
	lh      $t7, %lo(object_b_80332614)($t7)
	bne     $a0, $t7, .L802E58F0
	nop
	b       .L802E5940
	li      $v0, 0x0001
	b       .L802E58F8
	nop
.L802E58F0:
	b       .L802E5940
	move    $v0, $0
.L802E58F8:
	b       .L802E5930
	nop
.L802E5900:
	lui     $t8, %hi(object_80361250)
	lh      $t8, %lo(object_80361250)($t8)
	bne     $a0, $t8, .L802E591C
	nop
	li      $t9, 0x0001
	b       .L802E5920
	sh      $t9, 0x0006($sp)
.L802E591C:
	sh      $0, 0x0006($sp)
.L802E5920:
	lui     $t0, %hi(object_80361250)
	lh      $t0, %lo(object_80361250)($t0)
	lui     $at, %hi(object_b_80332614)
	sh      $t0, %lo(object_b_80332614)($at)
.L802E5930:
	b       .L802E5940
	lb      $v0, 0x0007($sp)
	b       .L802E5940
	nop
.L802E5940:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E5948:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lwc1    $f4, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	trunc.w.s $f6, $f4
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	mfc1    $a3, $f6
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	li      $at, 0x0001
	bne     $v0, $at, .L802E59E8
	nop
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $a1, 0x001C($t9)
	li      $at, 0x8000
	li      $a2, 0x1000
	lw      $a0, 0x00D4($t8)
	jal     object_b_802E55D0
	addu    $a1, $a1, $at
	li      $at, 0x0001
	bne     $v0, $at, .L802E59E8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a2, 0x1000
	lw      $a0, 0x00C8($t0)
	jal     object_b_802E55D0
	lw      $a1, 0x0160($t0)
	li      $at, 0x0001
	beq     $v0, $at, .L802E59FC
	nop
.L802E59E8:
	lw      $t1, 0x0020($sp)
	li      $at, 0x0001
	lw      $t2, 0x0000($t1)
	bne     $t2, $at, .L802E5A60
	nop
.L802E59FC:
	lw      $t4, 0x0020($sp)
	li      $t3, 0x0001
	sw      $t3, 0x0000($t4)
	jal     pl_demo_80257640
	lw      $a0, 0x002C($sp)
	li      $at, 0x0002
	bne     $v0, $at, .L802E5A60
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	lh      $a2, 0x0026($sp)
	sh      $v0, 0x001E($sp)
	lh      $t5, 0x001E($sp)
	beqz    $t5, .L802E5A58
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	lw      $t6, 0x0020($sp)
	sw      $0, 0x0000($t6)
	b       .L802E5A70
	lh      $v0, 0x001E($sp)
.L802E5A58:
	b       .L802E5A70
	move    $v0, $0
.L802E5A60:
	b       .L802E5A70
	move    $v0, $0
	b       .L802E5A70
	nop
.L802E5A70:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E5A80:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	bnez    $a1, .L802E5A9C
	nop
	b       .L802E5B10
	nop
.L802E5A9C:
	andi    $t6, $a0, 0x0001
	li      $at, 0x0001
	bne     $t6, $at, .L802E5B08
	nop
	lh      $a2, 0x0000($a1)
	li      $at, 0x0001
	beq     $a2, $at, .L802E5AD0
	nop
	li      $at, 0x000A
	beq     $a2, $at, .L802E5AE8
	nop
	b       .L802E5B00
	nop
.L802E5AD0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0064
	sw      $t7, 0x014C($t8)
	b       .L802E5B08
	nop
.L802E5AE8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0065
	sw      $t9, 0x014C($t0)
	b       .L802E5B08
	nop
.L802E5B00:
	b       .L802E5B08
	nop
.L802E5B08:
	b       .L802E5B10
	nop
.L802E5B10:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E5B18:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001F
	bnez    $at, .L802E5B58
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0074($t8)
	b       .L802E5C58
	li      $v0, 0x0001
	b       .L802E5B74
	nop
.L802E5B58:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t9)
.L802E5B74:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	andi    $t2, $t1, 0x0007
	bnez    $t2, .L802E5C48
	nop
	li.u    $a0, 0x5118A081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x5118A081
	lui     $a0, %hi(object)
	la.u    $a2, o_13003558
	la.l    $a2, o_13003558
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0096
	sw      $v0, 0x0024($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f16
	mov.s   $f20, $f0
	lw      $t3, 0x0024($sp)
	mul.s   $f18, $f20, $f16
	lwc1    $f10, 0x00A0($t3)
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x00A0($t3)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f8
	mov.s   $f20, $f0
	lw      $t4, 0x0024($sp)
	mul.s   $f16, $f20, $f8
	lwc1    $f6, 0x00A4($t4)
	add.s   $f10, $f6, $f16
	swc1    $f10, 0x00A4($t4)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	lw      $t5, 0x0024($sp)
	mul.s   $f8, $f20, $f4
	lwc1    $f18, 0x00A8($t5)
	add.s   $f6, $f18, $f8
	swc1    $f6, 0x00A8($t5)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f16
	lw      $t6, 0x0024($sp)
	mul.s   $f10, $f0, $f16
	swc1    $f10, 0x00B8($t6)
.L802E5C48:
	b       .L802E5C58
	move    $v0, $0
	b       .L802E5C58
	nop
.L802E5C58:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E5C6C
object_b_802E5C6C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lb      $t6, 0x0033($sp)
	slti    $at, $t6, 0x000A
	bnez    $at, .L802E5C9C
	nop
	b       .L802E5CF4
	nop
.L802E5C9C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t9, o_13004348
	la.l    $t9, o_13004348
	li      $t8, 0x00DB
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	lb      $a0, 0x0033($sp)
	lh      $a1, 0x0036($sp)
	lh      $a2, 0x003A($sp)
	lh      $a3, 0x003E($sp)
	jal     obj_lib_8029EF64
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t0)
	b       .L802E5CF4
	nop
.L802E5CF4:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802E5D04:
	lui     $t6, %hi(object_b_8033261C)
	lb      $t6, %lo(object_b_8033261C)($t6)
	sll     $t7, $t6, 1
	addu    $t8, $a0, $t7
	lh      $t9, 0x0000($t8)
	bnez    $t9, .L802E5D30
	nop
	lui     $at, %hi(object_b_8033261C)
	sb      $0, %lo(object_b_8033261C)($at)
	jr      $ra
	li      $v0, 0x0001
.L802E5D30:
	lui     $t0, %hi(object_b_8033261C)
	lb      $t0, %lo(object_b_8033261C)($t0)
	lui     $t4, %hi(controller)
	lw      $t4, %lo(controller)($t4)
	sll     $t1, $t0, 1
	addu    $t2, $a0, $t1
	lh      $t3, 0x0000($t2)
	lhu     $t5, 0x0012($t4)
	and     $t6, $t3, $t5
	beqz    $t6, .L802E5D7C
	nop
	lui     $t7, %hi(object_b_8033261C)
	lb      $t7, %lo(object_b_8033261C)($t7)
	lui     $at, %hi(object_b_8033261C)
	addiu   $t8, $t7, 0x0001
	sb      $t8, %lo(object_b_8033261C)($at)
	lui     $at, %hi(object_b_80332620)
	b       .L802E5DBC
	sb      $0, %lo(object_b_80332620)($at)
.L802E5D7C:
	lui     $t9, %hi(object_b_80332620)
	lb      $t9, %lo(object_b_80332620)($t9)
	li      $at, 0x000A
	beq     $t9, $at, .L802E5DA4
	nop
	lui     $t0, %hi(controller)
	lw      $t0, %lo(controller)($t0)
	lhu     $t1, 0x0012($t0)
	beqz    $t1, .L802E5DBC
	nop
.L802E5DA4:
	lui     $at, %hi(object_b_8033261C)
	sb      $0, %lo(object_b_8033261C)($at)
	lui     $at, %hi(object_b_80332620)
	sb      $0, %lo(object_b_80332620)($at)
	jr      $ra
	move    $v0, $0
.L802E5DBC:
	lui     $t2, %hi(object_b_80332620)
	lb      $t2, %lo(object_b_80332620)($t2)
	lui     $at, %hi(object_b_80332620)
	addiu   $t4, $t2, 0x0001
	sb      $t4, %lo(object_b_80332620)($at)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E5DE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     object_b_802E4E90
	nop
	lw      $t6, 0x0018($sp)
	sh      $v0, 0x0000($t6)
	lw      $t7, 0x0018($sp)
	lui     $a1, %hi(object_b_80361450)
	lw      $a1, %lo(object_b_80361450)($a1)
	jal     object_b_802E5A80
	lh      $a0, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x0000($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802E5E4C
	nop
	andi    $t1, $t9, 0x0008
	bnez    $t1, .L802E5E4C
	nop
	li.u    $a0, 0x30364081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30364081
	b       .L802E5E5C
	li      $v0, 0x0001
.L802E5E4C:
	b       .L802E5E5C
	move    $v0, $0
	b       .L802E5E5C
	nop
.L802E5E5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E5E6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x001E
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	move    $a1, $0
	b       .L802E5E94
	nop
.L802E5E94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E5EA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0095
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
	b       .L802E5ED8
	nop
.L802E5ED8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E5EE8
object_b_802E5EE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x3FC00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332624
	la.l    $a1, object_b_80332624
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802E5F54
	nop
.L802E5F54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E5F64
object_b_802E5F64:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802E5FB0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802E6018
	nop
	li      $at, 0x0064
	beq     $s0, $at, .L802E6028
	nop
	li      $at, 0x0065
	beq     $s0, $at, .L802E603C
	nop
	b       .L802E6050
	nop
.L802E5FB0:
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x0026
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x000A
	beqz    $at, .L802E5FE0
	nop
	jal     obj_lib_802A05B4
	nop
	b       .L802E5FE8
	nop
.L802E5FE0:
	jal     obj_lib_802A05D4
	nop
.L802E5FE8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x012D
	bnez    $at, .L802E6010
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
.L802E6010:
	b       .L802E6050
	nop
.L802E6018:
	jal     object_b_802E5E6C
	nop
	b       .L802E6050
	nop
.L802E6028:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0074($t3)
	b       .L802E6050
	nop
.L802E603C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
	b       .L802E6050
	nop
.L802E6050:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0134($t5)
	andi    $t7, $t6, 0x8000
	beqz    $t7, .L802E607C
	nop
	jal     object_b_802E5EA4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
.L802E607C:
	b       .L802E6084
	nop
.L802E6084:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E6098
object_b_802E6098:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40A00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x3FC00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332634
	la.l    $a1, object_b_80332634
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802E6104
	nop
.L802E6104:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E6114
object_b_802E6114:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802E6148
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802E6184
	nop
	b       .L802E625C
	nop
.L802E6148:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x05DC
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, .L802E617C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L802E617C:
	b       .L802E625C
	nop
.L802E6184:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lh      $t0, 0x0026($sp)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L802E61E0
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t2)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t2)
	lh      $t3, 0x0026($sp)
	andi    $t4, $t3, 0x0008
	bnez    $t4, .L802E61D8
	nop
	li.u    $a0, 0x30364081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30364081
.L802E61D8:
	b       .L802E6204
	nop
.L802E61E0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_b_80338480)
	ldc1    $f18, %lo(object_b_80338480)($at)
	lwc1    $f10, 0x00B8($t5)
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x00B8($t5)
.L802E6204:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_80338488)
	ldc1    $f16, %lo(object_b_80338488)($at)
	lwc1    $f8, 0x00B8($t6)
	cvt.d.s $f10, $f8
	c.lt.d  $f16, $f10
	nop
	bc1f    .L802E6244
	nop
	li      $at, 0x42960000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t7)
.L802E6244:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x0258
	b       .L802E625C
	nop
.L802E625C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0134($t8)
	andi    $t0, $t9, 0x8000
	beqz    $t0, .L802E6288
	nop
	jal     object_b_802E5EA4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
.L802E6288:
	b       .L802E6290
	nop
.L802E6290:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E62A4
object_b_802E62A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338490)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338490)($at)
	swc1    $f6, 0x0170($t7)
	li      $at, 0x3FC00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332634
	la.l    $a1, object_b_80332634
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802E630C
	nop
.L802E630C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E631C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x41700000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x8000
	lw      $t8, 0x0160($t7)
	addu    $t9, $t8, $at
	sw      $t9, 0x00C8($t7)
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x001E
	beqz    $v0, .L802E6380
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41900000
	mtc1    $at, $f8
	lwc1    $f6, 0x00B0($t0)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B0($t0)
.L802E6380:
	lh      $t1, 0x001E($sp)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L802E63A0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
.L802E63A0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t5)
	lwc1    $f14, 0x00A4($t5)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t5)
	bnez    $v0, .L802E63D4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t8)
.L802E63D4:
	b       .L802E63DC
	nop
.L802E63DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E63EC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x001E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x01F4
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	li      $at, 0x0001
	bne     $v0, $at, .L802E6434
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
.L802E6434:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0097
	bnez    $at, .L802E645C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t2)
.L802E645C:
	b       .L802E6464
	nop
.L802E6464:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802E6474
object_b_802E6474:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	slti    $at, $s0, 0x0065
	bnez    $at, .L802E64AC
	nop
	li      $at, 0x0065
	beq     $s0, $at, .L802E65CC
	nop
	b       .L802E65E0
	nop
.L802E64AC:
	slti    $at, $s0, 0x0005
	bnez    $at, .L802E64CC
	nop
	li      $at, 0x0064
	beq     $s0, $at, .L802E65B8
	nop
	b       .L802E65E0
	nop
.L802E64CC:
	sltiu   $at, $s0, 0x0005
	beqz    $at, .L802E65E0
	nop
	sll     $t7, $s0, 2
	lui     $at, %hi(object_b_80338494)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338494)($at)
	jr      $t7
	nop
.globl L802E64F0
L802E64F0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a3, 0x01F4
	lwc1    $f12, 0x00A0($t8)
	lwc1    $f14, 0x00A4($t8)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t8)
	li      $at, 0x0001
	bne     $v0, $at, .L802E6528
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802E6528:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802E65E0
	nop
.globl L802E6540
L802E6540:
	jal     object_b_802E631C
	nop
	b       .L802E65E0
	nop
.globl L802E6550
L802E6550:
	jal     object_b_802E63EC
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802E65E0
	nop
.globl L802E6570
L802E6570:
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x0026
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x003D
	bnez    $at, .L802E65A0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	sw      $t3, 0x014C($t4)
.L802E65A0:
	b       .L802E65E0
	nop
.globl L802E65A8
L802E65A8:
	jal     object_b_802E5E6C
	nop
	b       .L802E65E0
	nop
.L802E65B8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
	b       .L802E65E0
	nop
.L802E65CC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
	b       .L802E65E0
	nop
.L802E65E0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x8000
	beqz    $t9, .L802E660C
	nop
	jal     object_b_802E5EA4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
.L802E660C:
	b       .L802E6614
	nop
.L802E6614:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E6628
object_b_802E6628:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L802E674C
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_803384A8)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_803384A8)($at)
	jr      $t7
	nop
.globl L802E6660
L802E6660:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802E6694
	nop
	jal     obj_lib_802A05B4
	nop
	li      $at, 0x42480000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t0)
.L802E6694:
	jal     object_b_802E4E90
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x000F
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, .L802E66CC
	nop
	jal     obj_lib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
.L802E66CC:
	b       .L802E674C
	nop
.globl L802E66D4
L802E66D4:
	jal     object_b_802E631C
	nop
	b       .L802E674C
	nop
.globl L802E66E4
L802E66E4:
	jal     object_b_802E63EC
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802E674C
	nop
.globl L802E6704
L802E6704:
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x001E
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x003D
	bnez    $at, .L802E6734
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0004
	sw      $t7, 0x014C($t8)
.L802E6734:
	b       .L802E674C
	nop
.globl L802E673C
L802E673C:
	jal     object_b_802E5E6C
	nop
	b       .L802E674C
	nop
.L802E674C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L802E6778
	nop
	jal     object_b_802E5EA4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
.L802E6778:
	b       .L802E6780
	nop
.L802E6780:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802E6790
object_b_802E6790:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x0040($t8)
	b       .L802E67CC
	nop
.L802E67CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E67DC
object_b_802E67DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003134
	la.l    $a2, o_13003134
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00C1
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x38BB
	sw      $t6, 0x00D4($t7)
	lw      $t9, 0x001C($sp)
	li      $t8, 0x157C
	sw      $t8, 0x00D0($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x2580
	sw      $t0, 0x00D8($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t2, 0x001C($sp)
	swc1    $f4, 0x002C($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t3, 0x001C($sp)
	swc1    $f6, 0x0030($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t4, 0x001C($sp)
	swc1    $f8, 0x0034($t4)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003134
	la.l    $a2, o_13003134
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00C1
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $t5, 0xA348
	sw      $t5, 0x00D4($t6)
	lw      $t8, 0x001C($sp)
	li      $t7, 0x17D6
	sw      $t7, 0x00D0($t8)
	lw      $t9, 0x001C($sp)
	sw      $0, 0x00D8($t9)
	lui     $at, %hi(object_b_803384BC)
	lwc1    $f10, %lo(object_b_803384BC)($at)
	lw      $t0, 0x001C($sp)
	swc1    $f10, 0x002C($t0)
	lui     $at, %hi(object_b_803384C0)
	lwc1    $f16, %lo(object_b_803384C0)($at)
	lw      $t1, 0x001C($sp)
	swc1    $f16, 0x0030($t1)
	lui     $at, %hi(object_b_803384C4)
	lwc1    $f18, %lo(object_b_803384C4)($at)
	lw      $t2, 0x001C($sp)
	swc1    $f18, 0x0034($t2)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f4
	lw      $t5, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t4, $f8
	nop
	sh      $t4, 0x0040($t5)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003134
	la.l    $a2, o_13003134
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00C1
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x9E34
	sw      $t6, 0x00D4($t7)
	lw      $t9, 0x001C($sp)
	li      $t8, 0x21FC
	sw      $t8, 0x00D0($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x1004
	sw      $t0, 0x00D8($t1)
	lui     $at, %hi(object_b_803384C8)
	lwc1    $f10, %lo(object_b_803384C8)($at)
	lw      $t2, 0x001C($sp)
	swc1    $f10, 0x002C($t2)
	lui     $at, %hi(object_b_803384CC)
	lwc1    $f16, %lo(object_b_803384CC)($at)
	lw      $t3, 0x001C($sp)
	swc1    $f16, 0x0030($t3)
	lui     $at, %hi(object_b_803384D0)
	lwc1    $f18, %lo(object_b_803384D0)($at)
	lw      $t4, 0x001C($sp)
	swc1    $f18, 0x0034($t4)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f4
	lw      $t7, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t6, $f8
	nop
	sh      $t6, 0x0040($t7)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003134
	la.l    $a2, o_13003134
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00C1
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $t8, 0xDF94
	sw      $t8, 0x00D4($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x251C
	sw      $t0, 0x00D0($t1)
	lw      $t2, 0x001C($sp)
	sw      $0, 0x00D8($t2)
	lui     $at, %hi(object_b_803384D4)
	lwc1    $f10, %lo(object_b_803384D4)($at)
	lw      $t3, 0x001C($sp)
	swc1    $f10, 0x002C($t3)
	lui     $at, %hi(object_b_803384D8)
	lwc1    $f16, %lo(object_b_803384D8)($at)
	lw      $t4, 0x001C($sp)
	swc1    $f16, 0x0030($t4)
	lui     $at, %hi(object_b_803384DC)
	lwc1    $f18, %lo(object_b_803384DC)($at)
	lw      $t5, 0x001C($sp)
	swc1    $f18, 0x0034($t5)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f4
	lw      $t8, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x0040($t8)
	b       .L802E6A1C
	nop
.L802E6A1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802E6A2C
object_b_802E6A2C:
	li      $at, 0x40200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_803384E0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_803384E0)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_803384E4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_803384E4)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0100
	sw      $t9, 0x0190($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E6A8C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 8
	andi    $t9, $t8, 0x0001
	bnez    $t9, .L802E6AE0
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5760
	li      $a1, 0x0001
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0100
	sw      $t0, 0x0188($t1)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_8029CE58
	li      $a1, 0x0001
.L802E6AE0:
	b       .L802E6AE8
	nop
.L802E6AE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E6AF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0005
	beqz    $at, .L802E6B60
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40140000
	mtc1    $at, $f11
	lw      $t9, 0x0154($t8)
	mtc1    $0, $f10
	li      $at, 0x3FF00000
	mtc1    $t9, $f4
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.s.w $f6, $f4
	cvt.d.s $f8, $f6
	div.d   $f16, $f8, $f10
	add.d   $f4, $f16, $f18
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f4
	b       .L802E6BBC
	nop
.L802E6B60:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003510
	la.l    $a2, o_13003510
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00CD
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x00DC($t0)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00DC($t0)
	jal     object_b_802E6A8C
	nop
	la.u    $a1, o_13003174
	la.l    $a1, o_13003174
	li      $a0, 0x00BC
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0074($t1)
.L802E6BBC:
	b       .L802E6BC4
	nop
.L802E6BC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E6BD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332644
	la.l    $a1, object_b_80332644
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802E6CB0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L802E6C78
	nop
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t3, 0x001C($t2)
	sw      $t3, 0x00C8($t4)
	li      $at, 0x41C80000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t5)
	li      $at, 0x41F00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
.L802E6C78:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x00800000
	lw      $t0, 0x0134($t9)
	and     $t1, $t0, $at
	beqz    $t1, .L802E6CA4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t3)
.L802E6CA4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
.L802E6CB0:
	lui     $a0, %hi(object)
	jal     obj_lib_802A513C
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, .L802E6CD8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
.L802E6CD8:
	b       .L802E6CE0
	nop
.L802E6CE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E6CF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x0022($sp)
	li      $at, 0x40A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0020($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t0, 0x0190
	lw      $a1, 0x0164($t9)
	lw      $a2, 0x0168($t9)
	lw      $a3, 0x016C($t9)
	sw      $t0, 0x0010($sp)
	jal     object_b_802E53F4
	move    $a0, $t9
	li      $at, 0x0001
	bne     $v0, $at, .L802E6DA0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a2, 0x2000
	lw      $a0, 0x00C8($t1)
	jal     object_b_802E55D0
	lw      $a1, 0x0160($t1)
	li      $at, 0x0001
	bne     $v0, $at, .L802E6DA0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x00F8($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802E6DA0:
	lui     $a1, %hi(object_b_80361450)
	lw      $a1, %lo(object_b_80361450)($a1)
	jal     object_b_802E5A80
	lh      $a0, 0x0020($sp)
	b       .L802E6DB8
	nop
.L802E6DB8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E6DC8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t9, %hi(object)
	lh      $t7, 0x0040($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x0040($t6)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0040($t9)
	sh      $t0, 0x001A($sp)
	li      $at, 0x41A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t1)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0018($sp)
	lh      $t2, 0x001A($sp)
	li      $at, 0x0005
	beq     $t2, $at, .L802E6E34
	nop
	li      $at, 0x0010
	bne     $t2, $at, .L802E6E40
	nop
.L802E6E34:
	li.u    $a0, 0x50270081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50270081
.L802E6E40:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     obj_lib_8029E714
	li      $a3, 0x0800
	lui     $a1, %hi(object_b_80361450)
	lw      $a1, %lo(object_b_80361450)($a1)
	jal     object_b_802E5A80
	lh      $a0, 0x0018($sp)
	b       .L802E6E74
	nop
.L802E6E74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E6E84:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lh      $t6, 0x001E($sp)
	li      $at, 0x0001
	andi    $t7, $t6, 0x0001
	bne     $t7, $at, .L802E6EC0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
.L802E6EC0:
	b       .L802E6EC8
	nop
.L802E6EC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E6ED8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802E6F3C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802E6F4C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802E6F5C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802E6F6C
	nop
	li      $at, 0x0064
	beq     $s0, $at, .L802E6F7C
	nop
	li      $at, 0x0065
	beq     $s0, $at, .L802E6FAC
	nop
	b       .L802E6FD4
	nop
.L802E6F3C:
	jal     object_b_802E6CF0
	nop
	b       .L802E6FD4
	nop
.L802E6F4C:
	jal     object_b_802E6E84
	nop
	b       .L802E6FD4
	nop
.L802E6F5C:
	jal     object_b_802E6DC8
	nop
	b       .L802E6FD4
	nop
.L802E6F6C:
	jal     object_b_802E6AF8
	nop
	b       .L802E6FD4
	nop
.L802E6F7C:
	jal     object_b_802E5B18
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802E6FA4
	nop
	la.u    $a1, o_13003174
	la.l    $a1, o_13003174
	li      $a0, 0x00BC
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
.L802E6FA4:
	b       .L802E6FD4
	nop
.L802E6FAC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
	la.u    $a1, o_13003174
	la.l    $a1, o_13003174
	li      $a0, 0x00BC
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	b       .L802E6FD4
	nop
.L802E6FD4:
	jal     object_b_802E6BD4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	slti    $at, $t9, 0x0097
	bnez    $at, .L802E7004
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
.L802E7004:
	b       .L802E700C
	nop
.L802E700C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E7020:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $s0, 0x014C($t6)
	beq     $s0, $at, .L802E7070
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802E7080
	nop
	li      $at, 0x0064
	beq     $s0, $at, .L802E7090
	nop
	li      $at, 0x0065
	beq     $s0, $at, .L802E70C0
	nop
	b       .L802E70E8
	nop
.L802E7070:
	jal     object_b_802E6E84
	nop
	b       .L802E70E8
	nop
.L802E7080:
	jal     object_b_802E6AF8
	nop
	b       .L802E70E8
	nop
.L802E7090:
	jal     object_b_802E5B18
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802E70B8
	nop
	la.u    $a1, o_13003174
	la.l    $a1, o_13003174
	li      $a0, 0x00BC
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
.L802E70B8:
	b       .L802E70E8
	nop
.L802E70C0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
	la.u    $a1, o_13003174
	la.l    $a1, o_13003174
	li      $a0, 0x00BC
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	b       .L802E70E8
	nop
.L802E70E8:
	jal     object_b_802E6BD4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	slti    $at, $t9, 0x0097
	bnez    $at, .L802E7118
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
.L802E7118:
	b       .L802E7120
	nop
.L802E7120:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E7134:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, .L802E7160
	nop
	jal     object_b_802E6ED8
	nop
	b       .L802E7168
	nop
.L802E7160:
	jal     object_b_802E7020
	nop
.L802E7168:
	b       .L802E7170
	nop
.L802E7170:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E7180:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0010
	sh      $t8, 0x0002($t6)
	jal     obj_lib_8029F464
	li      $a0, 0x0001
	lui     $a0, %hi(obj_mario)
	lw      $a0, %lo(obj_mario)($a0)
	li      $a1, 0x0000
	li      $a2, 0x42700000
	jal     obj_lib_8029F6E0
	li      $a3, 0x42C80000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00F8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00FC($t1)
	slti    $at, $t2, 0x0097
	bnez    $at, .L802E7208
	nop
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	lw      $t4, 0x0134($t3)
	ori     $t5, $t4, 0x0008
	sw      $t5, 0x0134($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
.L802E7208:
	b       .L802E7210
	nop
.L802E7210:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E7220:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A0474
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	b       .L802E7270
	nop
.L802E7270:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E7280:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F820
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0009
	lw      $t1, 0x008C($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x008C($t0)
	li      $at, 0x41C80000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t7)
	b       .L802E7314
	nop
.L802E7314:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E7324
object_b_802E7324:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0000($t6)
	bnez    $t7, .L802E7398
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	bnez    $t1, .L802E7390
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x00F0($t3)
	lw      $t5, 0x0018($sp)
	li      $t4, 0x0001
	sw      $t4, 0x0000($t5)
.L802E7390:
	b       .L802E7414
	nop
.L802E7398:
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0000($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0000($t6)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0000($t9)
	slti    $at, $t0, 0x0006
	bnez    $at, .L802E73C8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00F0($t1)
.L802E73C8:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0000($t2)
	slti    $at, $t3, 0x000B
	bnez    $at, .L802E73EC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x00F0($t5)
.L802E73EC:
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0000($t7)
	slti    $at, $t8, 0x0010
	bnez    $at, .L802E7414
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F0($t6)
	lw      $t9, 0x0018($sp)
	sw      $0, 0x0000($t9)
.L802E7414:
	b       .L802E741C
	nop
.L802E741C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E742C
object_b_802E742C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x0FA0
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	beqz    $v0, .L802E7584
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x0124($t7)
	beqz    $s0, .L802E749C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802E74AC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802E74BC
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802E74CC
	nop
	b       .L802E74DC
	nop
.L802E749C:
	jal     object_b_802E7134
	nop
	b       .L802E74DC
	nop
.L802E74AC:
	jal     object_b_802E7180
	nop
	b       .L802E74DC
	nop
.L802E74BC:
	jal     object_b_802E7280
	nop
	b       .L802E74DC
	nop
.L802E74CC:
	jal     object_b_802E7220
	nop
	b       .L802E74DC
	nop
.L802E74DC:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E7324
	addiu   $a0, $a0, 0x00F4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x00F8($t8)
	bne     $t9, $at, .L802E7584
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00FC($t0)
	slti    $at, $t1, 0x0079
	bnez    $at, .L802E7528
	nop
	li      $t2, 0x0001
	b       .L802E7530
	sb      $t2, 0x0027($sp)
.L802E7528:
	li      $t3, 0x0007
	sb      $t3, 0x0027($sp)
.L802E7530:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lb      $t6, 0x0027($sp)
	lw      $t5, 0x00FC($t4)
	and     $t7, $t5, $t6
	bnez    $t7, .L802E7564
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130031AC
	la.l    $a2, o_130031AC
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0096
.L802E7564:
	li.u    $a0, 0x60086001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60086001
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x00FC($t8)
.L802E7584:
	b       .L802E758C
	nop
.L802E758C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E75A0
object_b_802E75A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f6
	mov.s   $f20, $f0
	lui     $t6, %hi(object)
	mul.s   $f8, $f20, $f6
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	addiu   $t9, $t8, -0x0028
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00A0($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f10
	mov.s   $f20, $f0
	lui     $t0, %hi(object)
	mul.s   $f16, $f20, $f10
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00A4($t0)
	trunc.w.s $f4, $f16
	mfc1    $t2, $f4
	nop
	addiu   $t3, $t2, 0x003C
	mtc1    $t3, $f18
	nop
	cvt.s.w $f6, $f18
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x00A4($t0)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	lui     $t4, %hi(object)
	mul.s   $f18, $f20, $f4
	lw      $t4, %lo(object)($t4)
	lwc1    $f16, 0x00A8($t4)
	trunc.w.s $f8, $f18
	mfc1    $t7, $f8
	nop
	addiu   $t8, $t7, -0x0028
	mtc1    $t8, $f6
	nop
	cvt.s.w $f10, $f6
	add.s   $f4, $f16, $f10
	swc1    $f4, 0x00A8($t4)
	lui     $at, %hi(object_b_803384E8)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_b_803384E8)($at)
	b       .L802E7698
	nop
.L802E7698:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.if 0
.globl object_b_802E76AC
object_b_802E76AC:
	li      $at, 0x40200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_803384EC)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_803384EC)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_803384F0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_803384F0)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x4000
	sw      $t9, 0x0190($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E770C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x001A($sp)
	sh      $0, 0x0018($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A0($t8)
	swc1    $f4, 0x0108($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00A4($t9)
	swc1    $f6, 0x010C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00A8($t0)
	swc1    $f8, 0x0110($t0)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0018($sp)
	lh      $t1, 0x001A($sp)
	li      $at, 0x0005
	beq     $t1, $at, .L802E7780
	nop
	li      $at, 0x0010
	bne     $t1, $at, .L802E778C
	nop
.L802E7780:
	li.u    $a0, 0x50270081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50270081
.L802E778C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x447A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t2)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802E77D4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a2, 0x0140
	lw      $a0, 0x00C8($t3)
	jal     obj_lib_8029E530
	lw      $a1, 0x0160($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00C8($t4)
.L802E77D4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x8000
	lw      $t6, 0x0134($t5)
	bne     $t6, $at, .L802E77FC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
.L802E77FC:
	b       .L802E7804
	nop
.L802E7804:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E7814:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0100($t6)
	beqz    $s0, .L802E7868
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802E78DC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802E7924
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802E7960
	nop
	b       .L802E79C0
	nop
.L802E7868:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	lh      $a2, 0x0032($sp)
	sh      $v0, 0x002A($sp)
	lh      $t7, 0x002A($sp)
	beqz    $t7, .L802E78D4
	nop
	jal     save_cannon_set
	nop
	la.u    $a0, o_13003274
	jal     obj_lib_8029F95C
	la.l    $a0, o_13003274
	sw      $v0, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	beqz    $t8, .L802E78C4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	b       .L802E78D4
	sw      $t9, 0x0100($t0)
.L802E78C4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x0100($t2)
.L802E78D4:
	b       .L802E79C0
	nop
.L802E78DC:
	la.u    $a0, o_13003274
	jal     obj_lib_8029F95C
	la.l    $a0, o_13003274
	sw      $v0, 0x002C($sp)
	li      $a0, 0x0096
	jal     camera_8029000C
	lw      $a1, 0x002C($sp)
	sh      $v0, 0x0028($sp)
	lh      $t3, 0x0028($sp)
	li      $at, -0x0001
	bne     $t3, $at, .L802E791C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x0100($t5)
.L802E791C:
	b       .L802E79C0
	nop
.L802E7924:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	lh      $a2, 0x0036($sp)
	sh      $v0, 0x002A($sp)
	lh      $t6, 0x002A($sp)
	beqz    $t6, .L802E7958
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x0100($t8)
.L802E7958:
	b       .L802E79C0
	nop
.L802E7960:
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, -0x0021
	lh      $t0, 0x0074($t9)
	and     $t1, $t0, $at
	sh      $t1, 0x0074($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x00F8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x0100($t7)
	b       .L802E79C0
	nop
.L802E79C0:
	b       .L802E79C8
	nop
.L802E79C8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802E79DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_demo_80257640
	li      $a0, 0x0001
	li      $at, 0x0002
	bne     $v0, $at, .L802E7AE4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0020
	sh      $t8, 0x0074($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x00FC($t9)
	beqz    $s0, .L802E7A38
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802E7AA8
	nop
	b       .L802E7AE4
	nop
.L802E7A38:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a0, 0x00A2
	move    $a1, $t0
	jal     camera_8028FF04
	lw      $a2, 0x0144($t0)
	beqz    $v0, .L802E7AA0
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0021
	lh      $t2, 0x0074($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0074($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x00F8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802E7AA0:
	b       .L802E7AE4
	nop
.L802E7AA8:
	lui     $t6, %hi(course_index)
	lh      $t6, %lo(course_index)($t6)
	li      $at, 0x0001
	bne     $t6, $at, .L802E7AD0
	nop
	li      $a0, 0x0004
	jal     object_b_802E7814
	li      $a1, 0x0069
	b       .L802E7ADC
	nop
.L802E7AD0:
	li      $a0, 0x002F
	jal     object_b_802E7814
	li      $a1, 0x006A
.L802E7ADC:
	b       .L802E7AE4
	nop
.L802E7AE4:
	b       .L802E7AEC
	nop
.L802E7AEC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E7B00:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x001E($sp)
	lh      $t8, 0x001E($sp)
	li      $at, 0x0005
	beq     $t8, $at, .L802E7B34
	nop
	li      $at, 0x0010
	bne     $t8, $at, .L802E7B40
	nop
.L802E7B34:
	li.u    $a0, 0x50270081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50270081
.L802E7B40:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a2, 0x1000
	lw      $a0, 0x00C8($t9)
	jal     obj_lib_8029E530
	lw      $a1, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x0162($t1)
	lh      $t3, 0x00CA($t1)
	bne     $t2, $t3, .L802E7B8C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	sw      $t4, 0x014C($t5)
.L802E7B8C:
	li.u    $a0, 0x045BFF81
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x045BFF81
	b       .L802E7BA0
	nop
.L802E7BA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E7BB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802E7BF0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802E7C00
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802E7C10
	nop
	b       .L802E7C20
	nop
.L802E7BF0:
	jal     object_b_802E770C
	nop
	b       .L802E7C20
	nop
.L802E7C00:
	jal     object_b_802E7B00
	nop
	b       .L802E7C20
	nop
.L802E7C10:
	jal     object_b_802E79DC
	nop
	b       .L802E7C20
	nop
.L802E7C20:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802E7C38
	nop
.L802E7C38:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E7C4C
object_b_802E7C4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802E7BB0
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E7324
	addiu   $a0, $a0, 0x00F4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	b       .L802E7C80
	nop
.L802E7C80:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E7C90
object_b_802E7C90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     save_cannon_get
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802E7D34
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130004A8
	la.l    $a2, o_130004A8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0080
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x001C($sp)
	lw      $t7, 0x0144($t6)
	sw      $t7, 0x0144($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x001C($sp)
	lwc1    $f4, 0x0164($t9)
	swc1    $f4, 0x00A0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x001C($sp)
	lwc1    $f6, 0x0168($t1)
	swc1    $f6, 0x00A4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x001C($sp)
	lwc1    $f8, 0x016C($t3)
	swc1    $f8, 0x00A8($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
.L802E7D34:
	b       .L802E7D3C
	nop
.L802E7D3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E7D4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802E7D74
	nop
	li.u    $a0, 0x30478081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30478081
.L802E7D74:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x001E
	beqz    $at, .L802E7DD0
	nop
	li      $at, 0xBF000000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x00A4($t1)
	lwc1    $f8, 0x00B0($t1)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	b       .L802E7E3C
	swc1    $f16, 0x00AC($t2)
.L802E7DD0:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0050
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, .L802E7DF8
	nop
	jal     object_b_802E7C90
	nop
	b       .L802E7E44
	nop
.L802E7DF8:
	li      $at, 0x40800000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00AC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f8, 0x00AC($t7)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t7)
.L802E7E3C:
	b       .L802E7E44
	nop
.L802E7E44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E7E54
object_b_802E7E54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802E7E94
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802E7F00
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802E7F44
	nop
	b       .L802E7F54
	nop
.L802E7E94:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00AC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t8)
	li      $at, 0x457A0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x019C($t9)
	jal     save_cannon_get
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802E7EF8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802E7EF8:
	b       .L802E7F54
	nop
.L802E7F00:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x003C
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, .L802E7F28
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802E7F28:
	lui     $at, %hi(object_b_803384F4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, %lo(object_b_803384F4)($at)
	swc1    $f10, 0x019C($t6)
	b       .L802E7F54
	nop
.L802E7F44:
	jal     object_b_802E7D4C
	nop
	b       .L802E7F54
	nop
.L802E7F54:
	b       .L802E7F5C
	nop
.L802E7F5C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
.endif

.globl object_b_802E7F70
object_b_802E7F70:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	sw      $t7, 0x00F4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D8($t8)
	sw      $t9, 0x00F8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00D0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D8($t1)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E7FB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332654
	la.l    $a1, object_b_80332654
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802E7FDC
	nop
.L802E7FDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E7FEC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x00D2($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0034($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00D2($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0030($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x00DA($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f8, %lo(math_cos)($at)
	swc1    $f8, 0x002C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x00DA($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	swc1    $f10, 0x0028($sp)
	lwc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x0034($sp)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f8, 0x002C($sp)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x0030($sp)
	swc1    $f16, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	jal     object_b_802E42E0
	lw      $a3, 0x001C($sp)
	b       .L802E80CC
	nop
.L802E80CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802E80DC
object_b_802E80DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803384F8)
	lwc1    $f6, %lo(object_b_803384F8)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802E8264
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0011
	lh      $t8, 0x0002($t7)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t7)
	la.u    $t1, weather_lava_80361420
	la.l    $t1, weather_lava_80361420
	li      $t0, 0x003C
	sh      $t0, 0x000E($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t5, weather_lava_80361420
	la.l    $t5, weather_lava_80361420
	lwc1    $f8, 0x00A0($t2)
	trunc.w.s $f10, $f8
	mfc1    $t4, $f10
	nop
	sh      $t4, 0x0002($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t7, weather_lava_80361420
	la.l    $t7, weather_lava_80361420
	lwc1    $f16, 0x00A8($t6)
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sh      $t9, 0x0006($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $t3, weather_lava_80361420
	la.l    $t3, weather_lava_80361420
	lwc1    $f4, 0x00A0($t0)
	trunc.w.s $f6, $f4
	mfc1    $t2, $f6
	nop
	sh      $t2, 0x0008($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $t8, weather_lava_80361420
	la.l    $t8, weather_lava_80361420
	lwc1    $f8, 0x00A4($t4)
	trunc.w.s $f10, $f8
	mfc1    $t6, $f10
	nop
	sh      $t6, 0x000A($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t1, weather_lava_80361420
	la.l    $t1, weather_lava_80361420
	lwc1    $f16, 0x00A8($t9)
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	sh      $t0, 0x000C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t2)
	la.u    $t5, weather_lava_80361420
	la.l    $t5, weather_lava_80361420
	add.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t4, $f10
	nop
	sh      $t4, 0x0004($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t9, weather_lava_80361420
	la.l    $t9, weather_lava_80361420
	lw      $t8, 0x00F4($t6)
	sh      $t8, 0x0010($t9)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t1, weather_lava_80361420
	la.l    $t1, weather_lava_80361420
	lw      $t0, 0x00F8($t7)
	sh      $t0, 0x0012($t1)
	jal     object_b_802E7FEC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D4($t2)
	addiu   $t4, $t3, 0x1F40
	b       .L802E8284
	sw      $t4, 0x00D4($t2)
.L802E8264:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x0002($t5)
	ori     $t8, $t6, 0x0010
	sh      $t8, 0x0002($t5)
	la.u    $t9, weather_lava_80361420
	la.l    $t9, weather_lava_80361420
	sh      $0, 0x000E($t9)
.L802E8284:
	li.u    $a0, 0x40090001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40090001
	jal     object_b_802E7FB8
	nop
	b       .L802E82A0
	nop
.L802E82A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E82B0
object_b_802E82B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803384FC)
	lwc1    $f6, %lo(object_b_803384FC)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802E8358
	nop
	la.u    $t8, weather_lava_80361420
	la.l    $t8, weather_lava_80361420
	li      $t7, 0x003C
	sh      $t7, 0x000E($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t2, weather_lava_80361420
	la.l    $t2, weather_lava_80361420
	lwc1    $f8, 0x00A0($t9)
	trunc.w.s $f10, $f8
	mfc1    $t1, $f10
	nop
	sh      $t1, 0x0002($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $t6, weather_lava_80361420
	la.l    $t6, weather_lava_80361420
	lwc1    $f16, 0x00A4($t3)
	trunc.w.s $f18, $f16
	mfc1    $t5, $f18
	nop
	sh      $t5, 0x0004($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t0, weather_lava_80361420
	la.l    $t0, weather_lava_80361420
	lwc1    $f4, 0x00A8($t7)
	trunc.w.s $f6, $f4
	mfc1    $t9, $f6
	b       .L802E8364
	sh      $t9, 0x0006($t0)
.L802E8358:
	la.u    $t1, weather_lava_80361420
	la.l    $t1, weather_lava_80361420
	sh      $0, 0x000E($t1)
.L802E8364:
	li.u    $a0, 0x40090001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40090001
	b       .L802E8378
	nop
.L802E8378:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E8388
object_b_802E8388:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00E4($t9)
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0170($t0)
	li      $at, 0x3F800000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0174($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x0168($t2)
	swc1    $f4, 0x00FC($t2)
	lui     $at, %hi(object_b_80338500)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_b_80338500)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0002($t3)
	ori     $t5, $t4, 0x0010
	sh      $t5, 0x0002($t3)
	b       .L802E843C
	nop
.L802E843C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E844C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332664
	la.l    $a1, object_b_80332664
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802E84B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L802E84A8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0004
	sw      $t2, 0x014C($t3)
.L802E84A8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
.L802E84B4:
	b       .L802E84BC
	nop
.L802E84BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E84CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lwc1    $f4, 0x0024($t6)
	lwc1    $f6, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t8, _camera_bss+0x178
	la.l    $t8, _camera_bss+0x178
	lwc1    $f10, 0x002C($t8)
	lwc1    $f16, 0x00A8($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f12, 0x0020($sp)
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x001E($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x1000
	jal     obj_lib_8029E530
	lw      $a0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x001E
	beqz    $at, .L802E85AC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	lw      $t5, 0x0154($t4)
	lui     $at, %hi(object_b_80338508)
	ldc1    $f18, %lo(object_b_80338508)($at)
	mtc1    $t5, $f4
	lui     $at, %hi(object_b_80338510)
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	ldc1    $f6, %lo(object_b_80338510)($at)
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	add.d   $f8, $f4, $f6
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f8
	b       .L802E85BC
	nop
.L802E85AC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x00F0($t7)
.L802E85BC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x005B
	bnez    $at, .L802E8600
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00F8($t2)
.L802E8600:
	b       .L802E8608
	nop
.L802E8608:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E8618:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0160($t6)
	lw      $t7, 0x00C8($t6)
	addiu   $t9, $t8, -0x0400
	slt     $at, $t9, $t7
	beqz    $at, .L802E866C
	nop
	addiu   $t0, $t8, 0x0400
	slt     $at, $t7, $t0
	beqz    $at, .L802E866C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0154($t3)
.L802E866C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x00F4($t4)
	bne     $t5, $at, .L802E8740
	nop
	li      $at, 0x41700000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f16, $f8, $f10
	lwc1    $f6, 0x00FC($t9)
	c.lt.s  $f16, $f6
	nop
	bc1f    .L802E86F0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41200000
	mtc1    $at, $f4
	lwc1    $f18, 0x00FC($t7)
	sub.s   $f8, $f18, $f4
	b       .L802E8714
	swc1    $f8, 0x00FC($t7)
.L802E86F0:
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f10, 0x0024($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f16, $f10, $f6
	swc1    $f16, 0x00FC($t1)
.L802E8714:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x001F
	bnez    $at, .L802E8738
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F4($t4)
.L802E8738:
	b       .L802E87C4
	nop
.L802E8740:
	li      $at, 0x41200000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t5)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     obj_lib_8029E714
	li      $a3, 0x0400
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	li      $at, 0x437A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($t9)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f6, $f8, $f10
	lwc1    $f4, 0x00FC($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802E87C4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lwc1    $f16, 0x00FC($t8)
	add.s   $f8, $f16, $f18
	swc1    $f8, 0x00FC($t8)
.L802E87C4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	lw      $t0, 0x00F8($t7)
	lwc1    $f16, 0x00FC($t7)
	sll     $t1, $t0, 10
	andi    $t2, $t1, 0xFFFF
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f10, $f4
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x00A4($t7)
	jal     object_b_802E844C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a3, 0x05DC
	lwc1    $f12, 0x0164($t5)
	lwc1    $f14, 0x0168($t5)
	jal     object_b_802E5208
	lw      $a2, 0x016C($t5)
	bnez    $v0, .L802E8844
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t9)
.L802E8844:
	b       .L802E884C
	nop
.L802E884C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E885C:
	addiu   $sp, $sp, -0x0008
	li      $at, 0x41700000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0097
	bnez    $at, .L802E8910
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x0164($t9)
	swc1    $f6, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x0168($t0)
	swc1    $f8, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x016C($t1)
	swc1    $f10, 0x00A8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0010
	sh      $t4, 0x0002($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f18, 0x0168($t8)
	swc1    $f18, 0x00FC($t8)
.L802E8910:
	b       .L802E8918
	nop
.L802E8918:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E8920:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	addiu   $t8, $t7, 0x0002
	sh      $t8, 0x0040($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	jal     obj_lib_802A05B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x001F
	bnez    $at, .L802E897C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00F0($t2)
.L802E897C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x005B
	bnez    $at, .L802E89BC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x00F0($t7)
	jal     obj_lib_802A05D4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t6)
.L802E89BC:
	b       .L802E89C4
	nop
.L802E89C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E89D4
object_b_802E89D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L802E8AB0
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_80338518)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338518)($at)
	jr      $t7
	nop
.globl L802E8A0C
L802E8A0C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a3, 0x0320
	lwc1    $f12, 0x0164($t8)
	lwc1    $f14, 0x0168($t8)
	jal     object_b_802E5208
	lw      $a2, 0x016C($t8)
	li      $at, 0x0001
	bne     $v0, $at, .L802E8A5C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0011
	lh      $t2, 0x0002($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0002($t1)
.L802E8A5C:
	b       .L802E8AB0
	nop
.globl L802E8A64
L802E8A64:
	jal     object_b_802E84CC
	nop
	b       .L802E8AB0
	nop
.globl L802E8A74
L802E8A74:
	jal     object_b_802E8618
	nop
	li.u    $a0, 0x60034001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60034001
	b       .L802E8AB0
	nop
.globl L802E8A90
L802E8A90:
	jal     object_b_802E885C
	nop
	b       .L802E8AB0
	nop
.globl L802E8AA0
L802E8AA0:
	jal     object_b_802E8920
	nop
	b       .L802E8AB0
	nop
.L802E8AB0:
	jal     object_b_802E4E90
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x00F8($t4)
	b       .L802E8AD4
	nop
.L802E8AD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E8AE4
object_b_802E8AE4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00F0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $s0, 0x0144($t1)
	beqz    $s0, .L802E8B70
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802E8B90
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802E8BB0
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802E8BD0
	nop
	b       .L802E8BD8
	nop
.L802E8B70:
	li      $at, 0x43480000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F4($t2)
	b       .L802E8BD8
	nop
.L802E8B90:
	li      $at, 0x43960000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00F4($t3)
	b       .L802E8BD8
	nop
.L802E8BB0:
	li      $at, 0x43C80000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00F4($t4)
	b       .L802E8BD8
	nop
.L802E8BD0:
	b       .L802E8BD8
	nop
.L802E8BD8:
	jal     rand
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00C8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	b       .L802E8C04
	nop
.L802E8C04:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E8C18:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(obj_mario)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(obj_mario)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x0020($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	li      $at, 0x42F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x00A4($t9)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0030($sp)
	lui     $t0, %hi(obj_mario)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, %lo(obj_mario)($t0)
	lwc1    $f10, 0x00A8($t1)
	lwc1    $f8, 0x0028($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f6, 0x002C($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f8, $f6, $f6
	jal     sqrtf
	add.s   $f12, $f4, $f8
	lwc1    $f14, 0x0030($sp)
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     atan2
	neg.s   $f14, $f14
	sh      $v0, 0x002A($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0013
	jal     obj_lib_8029E714
	li      $a3, 0x1000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $a1, 0x002A($sp)
	li      $a2, 0x1000
	jal     obj_lib_8029E530
	lw      $a0, 0x00D0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00D0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lw      $t5, 0x00F8($t4)
	lwc1    $f6, 0x0168($t4)
	sll     $t6, $t5, 3
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	andi    $t7, $t6, 0xFFFF
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f4, $f18, $f6
	swc1    $f4, 0x00A4($t4)
	jal     object_b_802E844C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00F8($t0)
	b       .L802E8D84
	nop
.L802E8D84:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802E8D98:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f4, 0x00F4($t6)
	lwc1    $f10, 0x0164($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f18, 0x00F4($t0)
	lwc1    $f8, 0x016C($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A8($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lw      $t5, 0x00F8($t4)
	lwc1    $f6, 0x0168($t4)
	sll     $t7, $t5, 3
	addu    $t7, $t7, $t5
	sll     $t7, $t7, 2
	subu    $t7, $t7, $t5
	sll     $t7, $t7, 2
	subu    $t7, $t7, $t5
	sll     $t7, $t7, 4
	andi    $t8, $t7, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t6, $t9, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	addiu   $t3, $t2, 0x0400
	sw      $t3, 0x00C8($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x00C8($t0)
	addiu   $t7, $t5, 0x4000
	sw      $t7, 0x00D4($t0)
	jal     object_b_802E844C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	addiu   $t6, $t9, 0x0001
	sw      $t6, 0x00F8($t8)
	li.u    $a0, 0x60034001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60034001
	b       .L802E8EBC
	nop
.L802E8EBC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E8ECC
object_b_802E8ECC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $s0, 0x014C($t6)
	beq     $s0, $at, .L802E8F04
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L802E8F3C
	nop
	b       .L802E8F4C
	nop
.L802E8F04:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0003
	lw      $t8, 0x0144($t7)
	bne     $t8, $at, .L802E8F2C
	nop
	jal     object_b_802E8C18
	nop
	b       .L802E8F34
	nop
.L802E8F2C:
	jal     object_b_802E8D98
	nop
.L802E8F34:
	b       .L802E8F4C
	nop
.L802E8F3C:
	jal     object_b_802E8920
	nop
	b       .L802E8F4C
	nop
.L802E8F4C:
	b       .L802E8F54
	nop
.L802E8F54:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E8F68
object_b_802E8F68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F464
	li      $a0, 0x0001
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F4($t8)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40E00000
	mtc1    $at, $f10
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	sh      $t0, 0x0040($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x00A0($t2)
	swc1    $f4, 0x0164($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x00A4($t3)
	swc1    $f6, 0x0168($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, 0x00A8($t4)
	swc1    $f8, 0x016C($t4)
	b       .L802E9008
	nop
.L802E9008:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E9018:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x0022($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C4($t8)
	sh      $t9, 0x0020($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	sh      $t1, 0x001E($sp)
	lw      $t5, 0x0028($sp)
	lhu     $t2, 0x0022($sp)
	lui     $at, %hi(math_sin)
	mtc1    $t5, $f6
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	cvt.s.w $f8, $f6
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f10, $f4, $f8
	swc1    $f10, 0x00AC($t6)
	lw      $t0, 0x0028($sp)
	lhu     $t7, 0x0020($sp)
	lui     $at, %hi(math_sin)
	mtc1    $t0, $f18
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	cvt.s.w $f6, $f18
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_sin)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f4, $f16, $f6
	swc1    $f4, 0x00B0($t1)
	lw      $t5, 0x0028($sp)
	lhu     $t2, 0x0022($sp)
	lui     $at, %hi(math_cos)
	mtc1    $t5, $f10
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	cvt.s.w $f18, $f10
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_cos)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f16, $f8, $f18
	swc1    $f16, 0x00B4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x00AC($t7)
	add.s   $f10, $f6, $f4
	swc1    $f10, 0x00A0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	lwc1    $f18, 0x00B4($t8)
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0001
	lw      $t0, 0x014C($t9)
	bne     $t0, $at, .L802E91A8
	nop
	lh      $t1, 0x001E($sp)
	lui     $at, %hi(object_b_80338530)
	ldc1    $f10, %lo(object_b_80338530)($at)
	mtc1    $t1, $f6
	lui     $at, %hi(math_cos)
	lui     $t7, %hi(object)
	cvt.d.w $f4, $f6
	lw      $t7, %lo(object)($t7)
	mul.d   $f8, $f4, $f10
	trunc.w.d $f18, $f8
	mfc1    $t3, $f18
	lwc1    $f18, 0x00B0($t7)
	andi    $t4, $t3, 0xFFFF
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	li      $at, 0x40800000
	mtc1    $at, $f10
	mul.s   $f4, $f16, $f6
	lwc1    $f6, 0x00A4($t7)
	div.s   $f8, $f4, $f10
	add.s   $f16, $f18, $f8
	sub.s   $f4, $f6, $f16
	b       .L802E91C0
	swc1    $f4, 0x00A4($t7)
.L802E91A8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x00A4($t8)
	lwc1    $f18, 0x00B0($t8)
	sub.s   $f8, $f10, $f18
	swc1    $f8, 0x00A4($t8)
.L802E91C0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     map_803814B8
	lw      $a2, 0x00A8($t9)
	swc1    $f0, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f16, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	add.s   $f10, $f16, $f4
	lwc1    $f6, 0x00A4($t0)
	c.lt.s  $f6, $f10
	nop
	bc1f    .L802E9228
	nop
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f18, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x00A4($t1)
.L802E9228:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F4($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x00F4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	slti    $at, $t6, 0x0065
	bnez    $at, .L802E9260
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F4($t7)
.L802E9260:
	b       .L802E9268
	nop
.L802E9268:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E9278:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lw      $t8, 0x00F4($t7)
	lwc1    $f4, 0x00A0($t6)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	bgez    $t9, .L802E92B0
	sra     $t0, $t9, 2
	addiu   $at, $t9, 0x0003
	sra     $t0, $at, 2
.L802E92B0:
	mtc1    $t0, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A0($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lw      $t3, 0x00F4($t2)
	lwc1    $f16, 0x00A8($t1)
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	bgez    $t4, .L802E92F4
	sra     $t5, $t4, 2
	addiu   $at, $t4, 0x0003
	sra     $t5, $at, 2
.L802E92F4:
	mtc1    $t5, $f18
	nop
	cvt.s.w $f6, $f18
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x00A8($t1)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     obj_lib_8029E714
	li      $a3, 0x0300
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t9, 0x00F4($t8)
	lwc1    $f8, 0x00A0($t7)
	sll     $t0, $t9, 2
	addu    $t0, $t0, $t9
	bgez    $t0, .L802E9354
	sra     $t6, $t0, 2
	addiu   $at, $t0, 0x0003
	sra     $t6, $at, 2
.L802E9354:
	mtc1    $t6, $f10
	nop
	cvt.s.w $f18, $f10
	sub.s   $f16, $f8, $f18
	swc1    $f16, 0x00A0($t7)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lw      $t4, 0x00F4($t3)
	lwc1    $f6, 0x00A8($t2)
	sll     $t5, $t4, 2
	addu    $t5, $t5, $t4
	bgez    $t5, .L802E9398
	sra     $t1, $t5, 2
	addiu   $at, $t5, 0x0003
	sra     $t1, $at, 2
.L802E9398:
	mtc1    $t1, $f4
	nop
	cvt.s.w $f10, $f4
	sub.s   $f8, $f6, $f10
	swc1    $f8, 0x00A8($t2)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lw      $t0, 0x00F4($t9)
	lwc1    $f18, 0x00A4($t8)
	sll     $t6, $t0, 2
	addu    $t6, $t6, $t0
	addiu   $t7, $t6, 0x0100
	bgez    $t7, .L802E93E0
	sra     $t3, $t7, 2
	addiu   $at, $t7, 0x0003
	sra     $t3, $at, 2
.L802E93E0:
	mtc1    $t3, $f16
	nop
	cvt.s.w $f4, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A4($t8)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x000F
	jal     obj_lib_8029E714
	li      $a3, 0x0500
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lw      $t1, 0x00F4($t5)
	lwc1    $f10, 0x00A4($t4)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	addiu   $t9, $t2, 0x0100
	bgez    $t9, .L802E9444
	sra     $t0, $t9, 2
	addiu   $at, $t9, 0x0003
	sra     $t0, $at, 2
.L802E9444:
	mtc1    $t0, $f8
	nop
	cvt.s.w $f16, $f8
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t4)
	b       .L802E9460
	nop
.L802E9460:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E9470:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	beqz    $v0, .L802E94CC
	nop
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t0, 0x001C($t9)
	sw      $t0, 0x00C8($t1)
.L802E94CC:
	b       .L802E94D4
	nop
.L802E94D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E94E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802E9278
	nop
	jal     object_b_802E9018
	li      $a0, 0x0007
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x04B0
	lwc1    $f12, 0x0164($t6)
	lwc1    $f14, 0x0168($t6)
	jal     object_b_802E5208
	lw      $a2, 0x016C($t6)
	bnez    $v0, .L802E9530
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
.L802E9530:
	b       .L802E9538
	nop
.L802E9538:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E9548:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0168($t7)
	lwc1    $f16, 0x00A4($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f6, 0x00A8($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f12, 0x002C($sp)
	jal     atan2
	lwc1    $f14, 0x0034($sp)
	sh      $v0, 0x002A($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	lwc1    $f14, 0x0030($sp)
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     atan2
	neg.s   $f14, $f14
	sh      $v0, 0x0028($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $a1, 0x002A($sp)
	li      $a2, 0x0800
	jal     obj_lib_8029E530
	lw      $a0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $a1, 0x0028($sp)
	li      $a2, 0x0050
	jal     obj_lib_8029E530
	lw      $a0, 0x00C4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C4($t2)
	jal     object_b_802E9018
	li      $a0, 0x0007
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f4, 0x002C($sp)
	mul.s   $f8, $f6, $f6
	li      $at, 0x43100000
	mul.s   $f18, $f10, $f10
	add.s   $f16, $f8, $f18
	mul.s   $f6, $f4, $f4
	mtc1    $at, $f8
	add.s   $f10, $f16, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802E96AC
	nop
	jal     obj_lib_8029F464
	li      $a0, 0x0001
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x0164($t4)
	swc1    $f18, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x0168($t5)
	swc1    $f4, 0x00A4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x016C($t6)
	swc1    $f16, 0x00A8($t6)
.L802E96AC:
	b       .L802E96B4
	nop
.L802E96B4:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802E96C8
object_b_802E96C8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802E9708
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802E9718
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802E9728
	nop
	b       .L802E9738
	nop
.L802E9708:
	jal     object_b_802E9470
	nop
	b       .L802E9738
	nop
.L802E9718:
	jal     object_b_802E94E4
	nop
	b       .L802E9738
	nop
.L802E9728:
	jal     object_b_802E9548
	nop
	b       .L802E9738
	nop
.L802E9738:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802E9750
	nop
.L802E9750:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E9764
object_b_802E9764:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43160000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A8($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x016C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0002($t9)
	ori     $t1, $t0, 0x0010
	sh      $t1, 0x0002($t9)
	jal     obj_lib_802A05B4
	nop
	b       .L802E97EC
	nop
.L802E97EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E97FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x002C($sp)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f10, 0x00A0($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0024($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x00A4($t0)
	swc1    $f18, 0x0020($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x002C($sp)
	lhu     $t2, 0x00CA($t1)
	lwc1    $f8, 0x00A8($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f10, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x001C($sp)
	lui     $at, %hi(object_b_80338538)
	lwc1    $f14, %lo(object_b_80338538)($at)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x001C($sp)
	jal     map_803814B8
	lw      $a3, 0x0028($sp)
	swc1    $f0, 0x0018($sp)
	b       .L802E98B0
	lwc1    $f0, 0x0018($sp)
	b       .L802E98B0
	nop
.L802E98B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E98C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li.u    $a1, 0x43BB8000
	li.l    $a1, 0x43BB8000
	jal     object_b_802E97FC
	addiu   $a0, $sp, 0x001C
	swc1    $f0, 0x0018($sp)
	li      $at, 0x42960000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A4($t6)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802E9934
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_b_80338540)
	ldc1    $f4, %lo(object_b_80338540)($at)
	lw      $t8, 0x00C4($t7)
	mtc1    $t8, $f16
	nop
	cvt.d.w $f18, $f16
	sub.d   $f6, $f18, $f4
	trunc.w.d $f8, $f6
	swc1    $f8, 0x00C4($t7)
.L802E9934:
	addiu   $a0, $sp, 0x001C
	jal     object_b_802E97FC
	li      $a1, 0x43480000
	swc1    $f0, 0x0018($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x00A4($t0)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L802E999C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_80338548)
	ldc1    $f10, %lo(object_b_80338548)($at)
	lw      $t2, 0x00C4($t1)
	mtc1    $t2, $f6
	nop
	cvt.d.w $f8, $f6
	sub.d   $f16, $f8, $f10
	trunc.w.d $f18, $f16
	swc1    $f18, 0x00C4($t1)
.L802E999C:
	addiu   $a0, $sp, 0x001C
	jal     object_b_802E97FC
	li      $a1, 0x0000
	swc1    $f0, 0x0018($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A4($t4)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802E99F4
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0018($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t5)
.L802E99F4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_80338550)
	ldc1    $f10, %lo(object_b_80338550)($at)
	lw      $t8, 0x00C4($t6)
	mtc1    $t8, $f6
	nop
	cvt.d.w $f8, $f6
	c.lt.d  $f8, $f10
	nop
	bc1f    .L802E9A34
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t9, -0x5555
	sw      $t9, 0x00C4($t7)
.L802E9A34:
	b       .L802E9A3C
	nop
.L802E9A3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E9A4C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x002A($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C4($t8)
	sh      $t9, 0x0028($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0040($t0)
	sh      $t1, 0x0026($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x00A0($t2)
	swc1    $f4, 0x0020($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x00A8($t3)
	swc1    $f6, 0x001C($sp)
	lw      $t7, 0x0034($sp)
	lhu     $t4, 0x0028($sp)
	lui     $at, %hi(math_sin)
	mtc1    $t7, $f10
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	cvt.s.w $f16, $f10
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_sin)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f18, $f8, $f16
	swc1    $f18, 0x00B0($t8)
	lw      $t2, 0x0034($sp)
	lhu     $t9, 0x0028($sp)
	lui     $at, %hi(math_cos)
	mtc1    $t2, $f6
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	cvt.s.w $f10, $f6
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f10
	swc1    $f8, 0x0018($sp)
	lhu     $t3, 0x002A($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x0018($sp)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f16, %lo(math_sin)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f6, $f16, $f18
	swc1    $f6, 0x00AC($t6)
	lhu     $t7, 0x002A($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x0018($sp)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f8, $f4, $f10
	swc1    $f8, 0x00B4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x00A0($t1)
	lwc1    $f18, 0x00AC($t1)
	add.s   $f6, $f16, $f18
	swc1    $f6, 0x00A0($t1)
	lh      $t2, 0x0032($sp)
	bnez    $t2, .L802E9BF8
	nop
	lh      $t3, 0x0026($sp)
	lui     $at, %hi(object_b_80338558)
	ldc1    $f8, %lo(object_b_80338558)($at)
	mtc1    $t3, $f4
	lui     $at, %hi(math_cos)
	lui     $t9, %hi(object)
	cvt.d.w $f10, $f4
	lw      $t9, %lo(object)($t9)
	mul.d   $f16, $f10, $f8
	trunc.w.d $f18, $f16
	mfc1    $t5, $f18
	lwc1    $f18, 0x00B0($t9)
	andi    $t6, $t5, 0xFFFF
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x42480000
	mtc1    $at, $f4
	li      $at, 0x40800000
	mtc1    $at, $f8
	mul.s   $f10, $f6, $f4
	lwc1    $f4, 0x00A4($t9)
	div.s   $f16, $f10, $f8
	add.s   $f6, $f18, $f16
	sub.s   $f10, $f4, $f6
	b       .L802E9C64
	swc1    $f10, 0x00A4($t9)
.L802E9BF8:
	lh      $t0, 0x0026($sp)
	lui     $at, %hi(object_b_80338560)
	ldc1    $f16, %lo(object_b_80338560)($at)
	mtc1    $t0, $f8
	lui     $at, %hi(math_cos)
	lui     $t6, %hi(object)
	cvt.d.w $f18, $f8
	lw      $t6, %lo(object)($t6)
	mul.d   $f4, $f18, $f16
	trunc.w.d $f6, $f4
	mfc1    $t2, $f6
	lwc1    $f6, 0x00B0($t6)
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x42480000
	mtc1    $at, $f8
	li      $at, 0x40800000
	mtc1    $at, $f16
	mul.s   $f18, $f10, $f8
	lwc1    $f8, 0x00A4($t6)
	div.s   $f4, $f18, $f16
	add.s   $f10, $f6, $f4
	sub.s   $f18, $f8, $f10
	swc1    $f18, 0x00A4($t6)
.L802E9C64:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x00A8($t7)
	lwc1    $f6, 0x00B4($t7)
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x00A8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	addiu   $a3, $sp, 0x002C
	lwc1    $f12, 0x00A0($t8)
	lwc1    $f14, 0x00A4($t8)
	jal     map_803814B8
	lw      $a2, 0x00A8($t8)
	lw      $t9, 0x002C($sp)
	bnez    $t9, .L802E9CC4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x0020($sp)
	swc1    $f8, 0x00A0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x001C($sp)
	swc1    $f10, 0x00A8($t1)
.L802E9CC4:
	lh      $t2, 0x0026($sp)
	bnez    $t2, .L802E9CDC
	nop
	li.u    $a0, 0x300A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x300A0081
.L802E9CDC:
	b       .L802E9CE4
	nop
.L802E9CE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802E9CF4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(controller)
	lw      $t6, %lo(controller)($t6)
	lh      $t7, 0x0000($t6)
	sh      $t7, 0x0006($sp)
	lui     $t8, %hi(controller)
	lw      $t8, %lo(controller)($t8)
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x0004($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C4($t0)
	sh      $t1, 0x0002($sp)
	lh      $t2, 0x0006($sp)
	slti    $at, $t2, 0x000A
	beqz    $at, .L802E9D48
	nop
	slti    $at, $t2, -0x0009
	bnez    $at, .L802E9D48
	nop
	sh      $0, 0x0006($sp)
.L802E9D48:
	lh      $t3, 0x0004($sp)
	slti    $at, $t3, 0x000A
	beqz    $at, .L802E9D68
	nop
	slti    $at, $t3, -0x0009
	bnez    $at, .L802E9D68
	nop
	sh      $0, 0x0004($sp)
.L802E9D68:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t6, 0x0006($sp)
	lw      $t5, 0x00C8($t4)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	subu    $t8, $t5, $t7
	sw      $t8, 0x00C8($t4)
	b       .L802E9D90
	nop
.L802E9D90:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E9D98:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x0026($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C4($t8)
	sh      $t9, 0x0024($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0040($t0)
	sh      $t1, 0x0022($sp)
	lw      $t5, 0x0028($sp)
	lhu     $t2, 0x0024($sp)
	lui     $at, %hi(math_sin)
	mtc1    $t5, $f6
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	cvt.s.w $f8, $f6
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f10, $f4, $f8
	swc1    $f10, 0x00B0($t6)
	lw      $t0, 0x0028($sp)
	lhu     $t7, 0x0024($sp)
	lui     $at, %hi(math_cos)
	mtc1    $t0, $f18
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	cvt.s.w $f6, $f18
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_cos)($at)
	mul.s   $f4, $f16, $f6
	swc1    $f4, 0x001C($sp)
	lhu     $t1, 0x0026($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f10, 0x001C($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_sin)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f18, $f8, $f10
	swc1    $f18, 0x00AC($t4)
	lhu     $t5, 0x0026($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x001C($sp)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f4, $f16, $f6
	swc1    $f4, 0x00B4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x00A0($t9)
	lwc1    $f10, 0x00AC($t9)
	add.s   $f18, $f8, $f10
	swc1    $f18, 0x00A0($t9)
	lh      $t0, 0x0022($sp)
	lui     $at, %hi(object_b_80338568)
	ldc1    $f4, %lo(object_b_80338568)($at)
	mtc1    $t0, $f16
	lui     $at, %hi(math_cos)
	lui     $t6, %hi(object)
	cvt.d.w $f6, $f16
	lw      $t6, %lo(object)($t6)
	mul.d   $f8, $f6, $f4
	trunc.w.d $f10, $f8
	mfc1    $t2, $f10
	lwc1    $f10, 0x00B0($t6)
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x42480000
	mtc1    $at, $f16
	li      $at, 0x40800000
	mtc1    $at, $f4
	mul.s   $f6, $f18, $f16
	lwc1    $f16, 0x00A4($t6)
	div.s   $f8, $f6, $f4
	add.s   $f18, $f10, $f8
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00A8($t7)
	lwc1    $f10, 0x00B4($t7)
	add.s   $f8, $f4, $f10
	swc1    $f8, 0x00A8($t7)
	lh      $t8, 0x0022($sp)
	bnez    $t8, .L802E9F48
	nop
	li.u    $a0, 0x300A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x300A0081
.L802E9F48:
	b       .L802E9F50
	nop
.L802E9F50:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E9F60:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0050($sp)
	swc1    $f12, 0x0048($sp)
	swc1    $f14, 0x004C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x0024($sp)
	li      $at, 0x41200000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0028($sp)
	li      $at, 0x42480000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x002C($sp)
	jal     map_80380E8C
	addiu   $a0, $sp, 0x001C
	beqz    $v0, .L802EA018
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x001C($sp)
	swc1    $f18, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x0020($sp)
	swc1    $f4, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x0024($sp)
	swc1    $f6, 0x00A8($t1)
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lw      $t3, 0x0134($t2)
	ori     $t4, $t3, 0x0080
	sw      $t4, 0x0134($t2)
.L802EA018:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	addiu   $a3, $sp, 0x0044
	lwc1    $f12, 0x00A0($t5)
	lwc1    $f14, 0x00A4($t5)
	jal     map_803814B8
	lw      $a2, 0x00A8($t5)
	swc1    $f0, 0x0018($sp)
	lw      $t6, 0x0044($sp)
	bnez    $t6, .L802EA06C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x0048($sp)
	swc1    $f8, 0x00A0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x0050($sp)
	swc1    $f10, 0x00A8($t8)
	b       .L802EA134
	nop
.L802EA06C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	jal     object_b_802E3F68
	lwc1    $f12, 0x00A0($t9)
	li      $at, 0x45FA0000
	mtc1    $at, $f16
	nop
	c.lt.s  $f16, $f0
	nop
	bc1f    .L802EA0A8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x0048($sp)
	swc1    $f18, 0x00A0($t0)
.L802EA0A8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     object_b_802E3F68
	lwc1    $f12, 0x00A8($t1)
	li      $at, 0x45FA0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f0
	nop
	bc1f    .L802EA0E4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x0050($sp)
	swc1    $f6, 0x00A8($t3)
.L802EA0E4:
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0018($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f16, $f8, $f10
	lwc1    $f18, 0x00A4($t4)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802EA12C
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t2)
.L802EA12C:
	b       .L802EA134
	nop
.L802EA134:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

object_b_802EA144:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f10
	lwc1    $f16, 0x00A8($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f12, 0x0020($sp)
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0500
	jal     obj_lib_8029E530
	lw      $a0, 0x00C8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0xCE38
	sw      $t0, 0x00C4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x001D
	bnez    $at, .L802EA1FC
	nop
	li.u    $a0, 0x40108001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40108001
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sh      $t4, 0x0040($t5)
.L802EA1FC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_80338570)
	lwc1    $f6, %lo(object_b_80338570)($at)
	lwc1    $f4, 0x00A4($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802EA230
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
.L802EA230:
	li      $a0, 0x003C
	lw      $a1, 0x0028($sp)
	jal     object_b_802E9D98
	lw      $a2, 0x002C($sp)
	b       .L802EA248
	nop
.L802EA248:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EA258:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x002C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0028($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, .L802EA2C8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EA2DC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802EA36C
	nop
	b       .L802EA3C4
	nop
.L802EA2C8:
	lwc1    $f12, 0x002C($sp)
	jal     object_b_802EA144
	lwc1    $f14, 0x0024($sp)
	b       .L802EA3C4
	nop
.L802EA2DC:
	jal     object_b_802E9CF4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x071C
	sw      $t0, 0x00C4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_80338574)
	lwc1    $f16, %lo(object_b_80338574)($at)
	lwc1    $f10, 0x00A4($t2)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802EA354
	nop
	jal     obj_lib_802A4750
	li      $a0, 0x000A
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	li      $a2, 0x002D
	beqz    $v0, .L802EA354
	nop
	jal     obj_lib_802A4774
	li      $a0, 0x000A
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
.L802EA354:
	li      $a0, 0x0014
	lw      $a1, 0x002C($sp)
	jal     object_b_802E9D98
	lw      $a2, 0x0024($sp)
	b       .L802EA3C4
	nop
.L802EA36C:
	jal     object_b_802E9CF4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00C4($t5)
	li      $a0, 0x0014
	lw      $a1, 0x002C($sp)
	jal     object_b_802E9D98
	lw      $a2, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x003D
	bnez    $at, .L802EA3BC
	nop
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lw      $t9, 0x0134($t8)
	ori     $t0, $t9, 0x0080
	sw      $t0, 0x0134($t8)
.L802EA3BC:
	b       .L802EA3C4
	nop
.L802EA3C4:
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0028($sp)
	jal     object_b_802E9F60
	lw      $a2, 0x0024($sp)
	b       .L802EA3DC
	nop
.L802EA3DC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802EA3F0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0168($t7)
	lwc1    $f16, 0x00A4($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f6, 0x00A8($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f12, 0x002C($sp)
	jal     atan2
	lwc1    $f14, 0x0034($sp)
	sh      $v0, 0x002A($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	lwc1    $f14, 0x0030($sp)
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     atan2
	neg.s   $f14, $f14
	sh      $v0, 0x0028($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $a1, 0x002A($sp)
	li      $a2, 0x0140
	jal     obj_lib_8029E530
	lw      $a0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $a1, 0x0028($sp)
	li      $a2, 0x0140
	jal     obj_lib_8029E530
	lw      $a0, 0x00C4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C4($t2)
	b       .L802EA4D8
	nop
.L802EA4D8:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802EA4EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0134($t6)
	bne     $t7, $at, .L802EA524
	nop
	jal     object_b_802EA258
	nop
	jal     obj_lib_8029F464
	li      $a0, 0x0001
	b       .L802EA560
	nop
.L802EA524:
	jal     obj_lib_8029F464
	move    $a0, $0
	jal     object_b_802EA3F0
	nop
	jal     object_b_802E98C0
	nop
	move    $a0, $0
	jal     object_b_802E9A4C
	li      $a1, 0x000A
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0154($t9)
.L802EA560:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x07D0
	b       .L802EA578
	nop
.L802EA578:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EA588
object_b_802EA588:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x00F4($t6)
	beqz    $s0, .L802EA5C8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EA61C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802EA67C
	nop
	b       .L802EA68C
	nop
.L802EA5C8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x0032
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, .L802EA614
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0011
	lh      $t9, 0x0002($t8)
	and     $t0, $t9, $at
	sh      $t0, 0x0002($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x00F4($t2)
.L802EA614:
	b       .L802EA68C
	nop
.L802EA61C:
	jal     object_b_802EA4EC
	nop
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0002
	bne     $v0, $at, .L802EA674
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	li      $a2, 0x002C
	beqz    $v0, .L802EA674
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	jal     obj_lib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x00F4($t4)
.L802EA674:
	b       .L802EA68C
	nop
.L802EA67C:
	jal     object_b_802EA4EC
	nop
	b       .L802EA68C
	nop
.L802EA68C:
	b       .L802EA694
	nop
.L802EA694:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EA6A8
object_b_802EA6A8:
	li      $at, 0x40200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338578)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338578)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_8033857C)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_8033857C)($at)
	swc1    $f8, 0x0174($t8)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EA6F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F620
	nop
	jal     obj_lib_802A0474
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0124($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t8)
	b       .L802EA74C
	nop
.L802EA74C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EA75C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F820
	nop
	jal     obj_lib_8029F620
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0124($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0009
	lw      $t8, 0x008C($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x008C($t7)
	li      $at, 0x42200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t0)
	li      $at, 0x41A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t1)
	b       .L802EA7D0
	nop
.L802EA7D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EA7E0
object_b_802EA7E0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, .L802EA82C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EA83C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802EA84C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802EA85C
	nop
	b       .L802EA86C
	nop
.L802EA82C:
	jal     object_b_802E4E90
	nop
	b       .L802EA86C
	nop
.L802EA83C:
	jal     obj_lib_8029F66C
	nop
	b       .L802EA86C
	nop
.L802EA84C:
	jal     object_b_802EA75C
	nop
	b       .L802EA86C
	nop
.L802EA85C:
	jal     object_b_802EA6F8
	nop
	b       .L802EA86C
	nop
.L802EA86C:
	b       .L802EA874
	nop
.L802EA874:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EA888
object_b_802EA888:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f6
	mov.s   $f20, $f0
	lui     $t6, %hi(object)
	mul.s   $f8, $f20, $f6
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A0($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f18
	mov.s   $f20, $f0
	lui     $t7, %hi(object)
	mul.s   $f6, $f20, $f18
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x00A4($t7)
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x00A4($t7)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f10
	mov.s   $f20, $f0
	lui     $t8, %hi(object)
	mul.s   $f18, $f20, $f10
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x00A8($t8)
	b       .L802EA920
	nop
.L802EA920:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EA934
object_b_802EA934:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00A4($t7)
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0020($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802EA9F8
	nop
	lui     $t8, %hi(obj_list_free+0x60)
	lw      $t8, %lo(obj_list_free+0x60)($t8)
	beqz    $t8, .L802EA9EC
	nop
	lui     $a0, %hi(object)
	la.u    $a3, o_13002CB0
	la.l    $a3, o_13002CB0
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	jal     obj_lib_8029ED20
	li      $a2, 0x00A5
	sw      $v0, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0024($sp)
	lwc1    $f10, 0x00A0($t9)
	swc1    $f10, 0x00A0($t0)
	li      $at, 0x40A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x001C($sp)
	lw      $t1, 0x0024($sp)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0024($sp)
	lwc1    $f6, 0x00A8($t2)
	swc1    $f6, 0x00A8($t3)
.L802EA9EC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
.L802EA9F8:
	b       .L802EAA00
	nop
.L802EAA00:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EAA10
object_b_802EAA10:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00A4($t7)
	b       .L802EAA40
	nop
.L802EAA40:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EAA50
object_b_802EAA50:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	andi    $t8, $t7, 0x000F
	bnez    $t8, .L802EAA7C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
.L802EAA7C:
	b       .L802EAA84
	nop
.L802EAA84:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802EAA8C
object_b_802EAA8C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x802E2081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x802E2081
	jal     camera_8027F8B8
	li      $a0, 0x0001
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x00FF
	sw      $t6, 0x017C($t7)
	b       .L802EAAC0
	nop
.L802EAAC0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EAAD0
object_b_802EAAD0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0009
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802EAB84
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f12, 0x00A0($t8)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mov.s   $f20, $f0
	lwc1    $f4, 0x00A4($t9)
	c.lt.s  $f4, $f20
	nop
	bc1f    .L802EAB60
	nop
	sw      $0, 0x0024($sp)
.L802EAB2C:
	lui     $a0, %hi(object)
	la.u    $a2, o_130035B0
	la.l    $a2, o_130035B0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A4
	lw      $t0, 0x0024($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0028
	bnez    $at, .L802EAB2C
	sw      $t1, 0x0024($sp)
	b       .L802EAB78
	nop
.L802EAB60:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003558
	la.l    $a2, o_13003558
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0096
.L802EAB78:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
.L802EAB84:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x017C($t3)
	addiu   $t5, $t4, -0x000E
	sw      $t5, 0x017C($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41100000
	mtc1    $at, $f10
	lw      $t7, 0x0154($t6)
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mtc1    $t7, $f6
	mtc1    $0, $f4
	cvt.s.w $f8, $f6
	div.s   $f16, $f8, $f10
	cvt.d.s $f18, $f16
	add.d   $f6, $f18, $f4
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f6
	b       .L802EABDC
	nop
.L802EABDC:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EABF0
object_b_802EABF0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	li      $at, 0x41200000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	b       .L802EAC2C
	nop
.L802EAC2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EAC3C
object_b_802EAC3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x40000000
	li      $a2, 0x40000000
	jal     obj_lib_8029F3D0
	li      $a3, 0x3F800000
	jal     o_script_80383CB4
	nop
	li      $at, 0x45000000
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	addiu   $t8, $t7, 0x0800
	sw      $t8, 0x0104($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x45000000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	addiu   $t2, $t1, 0x0800
	sw      $t2, 0x0108($t3)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t5, $f8
	nop
	sw      $t5, 0x0154($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40800000
	mtc1    $at, $f10
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t8, $f18
	nop
	addiu   $t9, $t8, 0x0004
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00B0($t0)
	b       .L802EAD2C
	nop
.L802EAD2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EAD3C
object_b_802EAD3C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	lh      $t7, 0x0076($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lhu     $t9, 0x00FE($t8)
	mtc1    $0, $f4
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	cvt.d.s $f10, $f8
	li      $at, 0x40000000
	mul.d   $f18, $f10, $f16
	mtc1    $at, $f5
	nop
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x002C($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	lw      $t4, 0x0104($t2)
	addu    $t5, $t3, $t4
	sw      $t5, 0x00FC($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f18
	lhu     $t7, 0x0102($t6)
	mtc1    $0, $f6
	sra     $t9, $t7, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f19
	cvt.d.s $f16, $f10
	li      $at, 0x40000000
	mul.d   $f4, $f16, $f18
	mtc1    $at, $f7
	nop
	add.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0030($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t8, 0x0100($t1)
	lw      $t3, 0x0108($t1)
	addu    $t4, $t8, $t3
	sw      $t4, 0x0100($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f16, 0x00A4($t5)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802EAE90
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002D28
	la.l    $a2, o_13002D28
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A5
.L802EAE90:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x003D
	bnez    $at, .L802EAEB4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
.L802EAEB4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x00A4($t8)
	lwc1    $f16, 0x00B0($t8)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	addiu   $t1, $t4, 0x0001
	sw      $t1, 0x0154($t3)
	b       .L802EAEE8
	nop
.L802EAEE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EAEF8
object_b_802EAEF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00F8($t6)
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	trunc.w.s $f6, $f4
	lw      $a2, 0x00A8($t6)
	mfc1    $a3, $f6
	jal     object_b_802E5208
	nop
	bnez    $v0, .L802EAF6C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $a0, $t8
	lw      $a1, 0x00F4($t8)
	jal     obj_lib_8029EDCC
	lw      $a2, 0x00FC($t8)
	sw      $v0, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x001C($sp)
	lw      $t0, 0x0188($t9)
	sw      $t0, 0x0188($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
.L802EAF6C:
	b       .L802EAF74
	nop
.L802EAF74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EAF84:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a3, o_13003614
	la.l    $a3, o_13003614
	lwc1    $f4, 0x0164($t6)
	move    $a1, $0
	move    $a2, $0
	trunc.w.s $f6, $f4
	move    $a0, $t6
	mfc1    $t8, $f6
	nop
	sw      $t8, 0x0010($sp)
	lwc1    $f8, 0x0168($t6)
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sw      $t0, 0x0014($sp)
	lwc1    $f16, 0x016C($t6)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	trunc.w.s $f18, $f16
	sw      $0, 0x001C($sp)
	mfc1    $t2, $f18
	jal     obj_lib_8029E9AC
	sw      $t2, 0x0018($sp)
	sw      $v0, 0x0034($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0034($sp)
	lw      $t4, 0x0188($t3)
	sw      $t4, 0x0188($t5)
	lw      $t7, 0x0038($sp)
	lw      $t8, 0x0034($sp)
	sw      $t7, 0x00F4($t8)
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0034($sp)
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00F8($t0)
	lw      $t6, 0x003C($sp)
	lw      $t1, 0x0034($sp)
	sw      $t6, 0x00FC($t1)
	b       .L802EB04C
	nop
.L802EB04C:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802EB05C
object_b_802EB05C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A8($t7)
	swc1    $f6, 0x016C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0144($t8)
	li      $at, 0x40800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t9)
	lui     $at, %hi(object_b_80338580)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, %lo(object_b_80338580)($at)
	swc1    $f10, 0x0170($t0)
	lui     $at, %hi(object_b_80338584)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, %lo(object_b_80338584)($at)
	swc1    $f16, 0x0174($t1)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332674
	la.l    $a1, object_b_80332674
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802EB0F4
	nop
.L802EB0F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EB104
object_b_802EB104:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0144($t0)
	li      $at, 0x40A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t1)
	lui     $at, %hi(object_b_80338588)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, %lo(object_b_80338588)($at)
	swc1    $f16, 0x0170($t2)
	lui     $at, %hi(object_b_8033858C)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, %lo(object_b_8033858C)($at)
	swc1    $f18, 0x0174($t3)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332684
	la.l    $a1, object_b_80332684
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802EB1B0
	nop
.L802EB1B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EB1C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802EB270
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	bnez    $t0, .L802EB208
	nop
	li.u    $a0, 0x901C0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x901C0081
	b       .L802EB214
	nop
.L802EB208:
	li.u    $a0, 0x90570081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90570081
.L802EB214:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	lw      $t2, 0x0134($t1)
	and     $t3, $t2, $at
	sw      $t3, 0x0134($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0009
	lw      $t7, 0x008C($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x008C($t6)
	jal     obj_lib_8029F464
	li      $a0, 0x0003
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00C8($t9)
	sw      $t0, 0x0108($t9)
.L802EB270:
	b       .L802EB278
	nop
.L802EB278:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EB288:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x016C($t8)
	swc1    $f8, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x000A
	beqz    $at, .L802EB314
	nop
	li      $at, 0x40400000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t1)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     obj_lib_8029E714
	li      $a3, 0x1000
	b       .L802EB3A8
	nop
.L802EB314:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	bnez    $t3, .L802EB36C
	nop
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x001F
	bnez    $at, .L802EB364
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
.L802EB364:
	b       .L802EB3A8
	nop
.L802EB36C:
	li      $at, 0x41F00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0024
	bnez    $at, .L802EB3A8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0154($t1)
.L802EB3A8:
	lwc1    $f12, 0x0024($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x001C($sp)
	jal     object_b_802E5208
	li      $a3, 0x03E8
	bnez    $v0, .L802EB3D8
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
	jal     obj_lib_8029F464
	move    $a0, $0
.L802EB3D8:
	b       .L802EB3E0
	nop
.L802EB3E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EB3F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40240000
	mtc1    $at, $f9
	lwc1    $f4, 0x00B8($t6)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    .L802EB4B0
	nop
	lwc1    $f10, 0x00B0($t6)
	trunc.w.s $f16, $f10
	mfc1    $t8, $f16
	nop
	bnez    $t8, .L802EB4B0
	nop
	li      $at, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0104($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0104($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x008C($t3)
	ori     $t5, $t4, 0x0008
	sw      $t5, 0x008C($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x00C8($t6)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     obj_lib_8029E714
	li      $a3, 0x0500
	b       .L802EB4BC
	nop
.L802EB4B0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0040($t8)
.L802EB4BC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0012
	lw      $t1, 0x0104($t9)
	bne     $t1, $at, .L802EB4F8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0104($t4)
	jal     obj_lib_8029F464
	li      $a0, 0x0001
.L802EB4F8:
	b       .L802EB500
	nop
.L802EB500:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EB510:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802EB554
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0009
	lw      $t9, 0x008C($t8)
	and     $t0, $t9, $at
	sw      $t0, 0x008C($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x8000
	lw      $t2, 0x00C8($t1)
	addu    $t3, $t2, $at
	sw      $t3, 0x00C8($t1)
.L802EB554:
	li      $at, 0x40A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x000F
	lw      $t6, 0x0154($t5)
	bne     $t6, $at, .L802EB5B4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x00D4($t7)
	sw      $t9, 0x00C8($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x008C($t0)
	ori     $t2, $t8, 0x0008
	sw      $t2, 0x008C($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
.L802EB5B4:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EB5C4:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	andi    $t6, $a0, 0x0008
	bnez    $t6, .L802EB620
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0002
	lw      $t8, 0x014C($t7)
	beq     $t8, $at, .L802EB620
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00F8($t9)
	swc1    $f4, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0100($t0)
	swc1    $f6, 0x00A8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t2)
.L802EB620:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EB630:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x0026($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, .L802EB680
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EB6D4
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802EB6D4
	nop
	b       .L802EB728
	nop
.L802EB680:
	lh      $t9, 0x0026($sp)
	beqz    $t9, .L802EB698
	nop
	li      $at, 0x000C
	bne     $t9, $at, .L802EB6CC
	nop
.L802EB698:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	bnez    $t1, .L802EB6C0
	nop
	li.u    $a0, 0x501B3081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x501B3081
	b       .L802EB6CC
	nop
.L802EB6C0:
	li.u    $a0, 0x50366081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50366081
.L802EB6CC:
	b       .L802EB728
	nop
.L802EB6D4:
	lh      $t2, 0x0026($sp)
	beqz    $t2, .L802EB6EC
	nop
	li      $at, 0x0005
	bne     $t2, $at, .L802EB720
	nop
.L802EB6EC:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0144($t3)
	bnez    $t4, .L802EB714
	nop
	li.u    $a0, 0x501B3081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x501B3081
	b       .L802EB720
	nop
.L802EB714:
	li.u    $a0, 0x50366081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50366081
.L802EB720:
	b       .L802EB728
	nop
.L802EB728:
	b       .L802EB730
	nop
.L802EB730:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EB744:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	jal     object_b_802EB5C4
	lh      $a0, 0x001E($sp)
	jal     object_b_802EB630
	nop
	lui     $a1, %hi(object_b_80361450)
	lw      $a1, %lo(object_b_80361450)($a1)
	jal     object_b_802E5A80
	lh      $a0, 0x001E($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	andi    $t8, $t7, 0x0010
	beqz    $t8, .L802EB7C8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_80338590)
	lwc1    $f6, %lo(object_b_80338590)($at)
	lwc1    $f4, 0x00A4($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802EB7C8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0064
	sw      $t0, 0x014C($t1)
.L802EB7C8:
	b       .L802EB7D0
	nop
.L802EB7D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EB7E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003068
	la.l    $a2, o_13003068
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0074
	sw      $v0, 0x001C($sp)
	li.u    $a0, 0x38300081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x38300081
	li      $at, 0x41200000
	mtc1    $at, $f4
	lw      $t6, 0x001C($sp)
	swc1    $f4, 0x00B8($t6)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lw      $t7, 0x001C($sp)
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x439B0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t8)
	lw      $t9, 0x001C($sp)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t9)
	jal     o_script_80383CB4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x44800000
	mtc1    $at, $f18
	lw      $t1, 0x0108($t0)
	li      $at, 0x8000
	mul.s   $f4, $f0, $f18
	addu    $t2, $t1, $at
	mtc1    $t2, $f6
	lw      $t5, 0x001C($sp)
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	nop
	sw      $t4, 0x00C8($t5)
	b       .L802EB8A0
	nop
.L802EB8A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EB8B0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	jal     object_b_802E5B18
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802EB9B8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, .L802EB920
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x00F4($t8)
	bne     $t9, $at, .L802EB910
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lw      $t2, 0x0104($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0104($t1)
.L802EB910:
	jal     object_b_802EB7E0
	nop
	b       .L802EB9B8
	nop
.L802EB920:
	jal     obj_lib_802A37AC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0010
	lw      $t5, 0x00F4($t4)
	bne     $t5, $at, .L802EB964
	nop
	li      $at, 0x43020000
	mtc1    $at, $f12
	li      $at, 0x44C80000
	mtc1    $at, $f14
	li.u    $a2, 0xC5877800
	jal     object_b_802F2B88
	li.l    $a2, 0xC5877800
	b       .L802EB9B8
	nop
.L802EB964:
	mtc1    $0, $f12
	lui     $at, %hi(object_b_80338594)
	li.u    $a2, 0xC5D48000
	li.l    $a2, 0xC5D48000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(object_b_80338594)($at)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000C64
	li      $t6, 0x009A
	li      $t7, -0x15FF
	sw      $t7, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	la.l    $a3, o_13000C64
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x0010($sp)
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
.L802EB9B8:
	b       .L802EB9C0
	nop
.L802EB9C0:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_b_802EB9D0
object_b_802EB9D0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x0100($t8)
	jal     object_b_802EB1C0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, .L802EBA6C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EBADC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802EBAF4
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802EBB0C
	nop
	li      $at, 0x0064
	beq     $s0, $at, .L802EBB24
	nop
	li      $at, 0x0065
	beq     $s0, $at, .L802EBB34
	nop
	b       .L802EBB48
	nop
.L802EBA6C:
	li      $at, 0x40A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t2, 0x0320
	lw      $a1, 0x0164($t1)
	lw      $a2, 0x00A4($t1)
	lw      $a3, 0x016C($t1)
	sw      $t2, 0x0010($sp)
	jal     object_b_802E53F4
	move    $a0, $t1
	li      $at, 0x0001
	bne     $v0, $at, .L802EBACC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	jal     obj_lib_8029F464
	li      $a0, 0x0001
.L802EBACC:
	jal     object_b_802EB744
	nop
	b       .L802EBB48
	nop
.L802EBADC:
	jal     object_b_802EB288
	nop
	jal     object_b_802EB744
	nop
	b       .L802EBB48
	nop
.L802EBAF4:
	jal     object_b_802EB3F0
	nop
	jal     object_b_802EB744
	nop
	b       .L802EBB48
	nop
.L802EBB0C:
	jal     object_b_802EB510
	nop
	jal     object_b_802EB744
	nop
	b       .L802EBB48
	nop
.L802EBB24:
	jal     object_b_802EB8B0
	nop
	b       .L802EBB48
	nop
.L802EBB34:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
	b       .L802EBB48
	nop
.L802EBB48:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802EBB60
	nop
.L802EBB60:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802EBB74:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x003C($sp)
	lw      $t8, 0x0040($sp)
	lh      $t9, 0x0046($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_1300362C
	la.l    $a3, o_1300362C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x0056
	sw      $0, 0x001C($sp)
	sw      $0, 0x0024($sp)
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	jal     obj_lib_8029E9AC
	sw      $t9, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lw      $t1, 0x0034($sp)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t1)
	lw      $t2, 0x0034($sp)
	sw      $0, 0x0144($t2)
	b       .L802EBBF0
	nop
.L802EBBF0:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802EBC00
object_b_802EBC00:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x1166
	li      $a1, 0x0133
	li      $a2, -0x1532
	jal     object_b_802EBB74
	move    $a3, $0
	li      $a0, 0x0F00
	li      $a1, 0x0133
	li      $a2, -0x1799
	jal     object_b_802EBB74
	move    $a3, $0
	li      $a0, 0x0C9A
	li      $a1, 0x0133
	li      $a2, -0x1532
	jal     object_b_802EBB74
	move    $a3, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0010
	sh      $t8, 0x0002($t6)
	jal     obj_lib_802A05B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0004
	sw      $t9, 0x014C($t0)
	b       .L802EBC78
	nop
.L802EBC78:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EBC88:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802E5B18
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802EBCC8
	nop
	jal     obj_lib_802A37AC
	nop
	lui     $at, %hi(object_b_80338598)
	lwc1    $f12, %lo(object_b_80338598)($at)
	li      $at, 0x44160000
	mtc1    $at, $f14
	li.u    $a2, 0xC5ABE000
	jal     object_b_802F2B88
	li.l    $a2, 0xC5ABE000
.L802EBCC8:
	b       .L802EBCD0
	nop
.L802EBCD0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EBCE0
object_b_802EBCE0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x0100($t8)
	jal     object_b_802EB1C0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	slti    $at, $s0, 0x0065
	bnez    $at, .L802EBD50
	nop
	li      $at, 0x0065
	beq     $s0, $at, .L802EBF40
	nop
	b       .L802EBF54
	nop
.L802EBD50:
	slti    $at, $s0, 0x0006
	bnez    $at, .L802EBD70
	nop
	li      $at, 0x0064
	beq     $s0, $at, .L802EBF30
	nop
	b       .L802EBF54
	nop
.L802EBD70:
	sltiu   $at, $s0, 0x0006
	beqz    $at, .L802EBF54
	nop
	sll     $t0, $s0, 2
	lui     $at, %hi(object_b_8033859C)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_b_8033859C)($at)
	jr      $t0
	nop
.globl L802EBD94
L802EBD94:
	li      $at, 0x40A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t3, 0x03E8
	lw      $a1, 0x0164($t2)
	lw      $a2, 0x00A4($t2)
	lw      $a3, 0x016C($t2)
	sw      $t3, 0x0010($sp)
	jal     object_b_802E53F4
	move    $a0, $t2
	li      $at, 0x0001
	bne     $v0, $at, .L802EBDF4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	jal     obj_lib_8029F464
	li      $a0, 0x0001
.L802EBDF4:
	jal     object_b_802EB744
	nop
	b       .L802EBF54
	nop
.globl L802EBE04
L802EBE04:
	jal     object_b_802EB288
	nop
	jal     object_b_802EB744
	nop
	b       .L802EBF54
	nop
.globl L802EBE1C
L802EBE1C:
	jal     object_b_802EB3F0
	nop
	jal     object_b_802EB744
	nop
	b       .L802EBF54
	nop
.globl L802EBE34
L802EBE34:
	jal     object_b_802EB510
	nop
	jal     object_b_802EB744
	nop
	b       .L802EBF54
	nop
.globl L802EBE4C
L802EBE4C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0104($t6)
	bne     $t7, $at, .L802EBE94
	nop
	jal     Na_g_803220F0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x005B
	bnez    $at, .L802EBE94
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
.L802EBE94:
	b       .L802EBF54
	nop
.globl L802EBE9C
L802EBE9C:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x002E($sp)
	lh      $t2, 0x002E($sp)
	li      $at, 0x0009
	andi    $t3, $t2, 0x0009
	bne     $t3, $at, .L802EBEC8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
.L802EBEC8:
	lh      $t5, 0x002E($sp)
	li      $at, 0x0001
	bne     $t5, $at, .L802EBF08
	nop
	li.u    $a0, 0x500CA081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x500CA081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t6)
	lw      $a2, 0x00A4($t6)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t6)
	jal     obj_lib_802A37AC
	nop
.L802EBF08:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0011
	lh      $t8, 0x0002($t7)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t7)
	jal     obj_lib_802A05D4
	nop
	b       .L802EBF54
	nop
.L802EBF30:
	jal     object_b_802EBC88
	nop
	b       .L802EBF54
	nop
.L802EBF40:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
	b       .L802EBF54
	nop
.L802EBF54:
	b       .L802EBF5C
	nop
.L802EBF5C:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802EBF70:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0020($t7)
	lwc1    $f4, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x000C($sp)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	li      $at, 0x42A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x00A4($t9)
	sub.s   $f6, $f4, $f18
	swc1    $f6, 0x0008($sp)
	lui     $t0, %hi(object)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x0028($t1)
	lwc1    $f8, 0x00A8($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f8, 0x0008($sp)
	lwc1    $f18, 0x0100($t2)
	lwc1    $f10, 0x0104($t2)
	mul.s   $f6, $f4, $f18
	lwc1    $f18, 0x0108($t2)
	mul.s   $f16, $f8, $f10
	lwc1    $f8, 0x0004($sp)
	mul.s   $f10, $f18, $f8
	add.s   $f4, $f6, $f16
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x0000($sp)
	b       .L802EC028
	lwc1    $f0, 0x0000($sp)
	b       .L802EC028
	nop
.L802EC028:
	jr      $ra
	addiu   $sp, $sp, 0x0010

object_b_802EC030:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F464
	move    $a0, $0
	jal     o_script_80383CB4
	nop
	li      $at, 0x45800000
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	addiu   $t8, $t7, 0x1000
	sw      $t8, 0x00F4($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x45800000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	addiu   $t2, $t1, 0x1000
	sw      $t2, 0x00F8($t3)
	jal     o_script_80383CB4
	nop
	li      $at, 0x45800000
	mtc1    $at, $f4
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t5, $f8
	nop
	addiu   $t6, $t5, 0x1000
	sw      $t6, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x00DA($t8)
	lhu     $t2, 0x00D2($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0xBF800000
	mtc1    $at, $f4
	mul.s   $f18, $f10, $f16
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0100($t8)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $t0, math_cos
	la.l    $t0, math_cos
	lhu     $t6, 0x00DA($t5)
	lhu     $t2, 0x00D2($t5)
	sra     $t7, $t6, 4
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	sll     $t9, $t7, 2
	addu    $t1, $t9, $t0
	addu    $t8, $t4, $t0
	lwc1    $f10, 0x0000($t8)
	lwc1    $f8, 0x0000($t1)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0104($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00D2($t6)
	sra     $t9, $t7, 4
	sll     $t1, $t9, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	swc1    $f18, 0x0108($t6)
	jal     object_b_802EBF70
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	swc1    $f0, 0x010C($t2)
	b       .L802EC1A0
	nop
.L802EC1A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EC1B0
object_b_802EC1B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802EC030
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0046
	sw      $t6, 0x017C($t7)
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x8000
	sw      $t8, 0x00D0($t9)
	b       .L802EC1F0
	nop
.L802EC1F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EC200:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a1, 0x002C($sp)
	swc1    $f12, 0x0028($sp)
	jal     object_b_802EBF70
	nop
	swc1    $f0, 0x0024($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	li      $at, 0x42A00000
	mtc1    $at, $f6
	lwc1    $f10, 0x0028($sp)
	lwc1    $f4, 0x0024($t6)
	lui     $at, %hi(object_b_803385B8)
	ldc1    $f18, %lo(object_b_803385B8)($at)
	add.s   $f8, $f4, $f6
	li      $at, 0x405E0000
	mtc1    $at, $f7
	cvt.d.s $f16, $f10
	mtc1    $0, $f6
	add.d   $f4, $f16, $f18
	mfc1    $a2, $f8
	lui     $a0, %hi(object)
	lw      $a1, 0x0020($t6)
	mul.d   $f8, $f4, $f6
	lw      $a3, 0x0028($t6)
	lw      $a0, %lo(object)($a0)
	trunc.w.d $f10, $f8
	mfc1    $t8, $f10
	jal     object_b_802E52B8
	sw      $t8, 0x0010($sp)
	bnez    $v0, .L802EC29C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f16, 0x0024($sp)
	swc1    $f16, 0x010C($t9)
	b       .L802EC3C0
	nop
.L802EC29C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x0024($sp)
	mtc1    $0, $f8
	lwc1    $f18, 0x010C($t0)
	mul.s   $f6, $f18, $f4
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802EC3A8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	sw      $t2, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	beqz    $t3, .L802EC398
	nop
	lw      $t4, 0x002C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t5, 0x00F8($t4)
	lw      $t8, 0x0110($t7)
	addiu   $t6, $t5, 0x0001
	beq     $t6, $t8, .L802EC310
	nop
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x01AC($t9)
	bnez    $t0, .L802EC390
	nop
.L802EC310:
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x01AC($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x01AC($t1)
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x01AC($t4)
	slti    $at, $t5, 0x0006
	beqz    $at, .L802EC378
	nop
	lw      $t7, 0x0020($sp)
	move    $a1, $0
	li      $a2, -0x0028
	move    $a3, $0
	jal     object_b_802E5C6C
	lw      $a0, 0x01AC($t7)
	lw      $t6, 0x0020($sp)
	li.u    $at, 0x70302081
	li.l    $at, 0x70302081
	lbu     $a0, 0x01AF($t6)
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	addiu   $a0, $a0, -0x0001
	sll     $t8, $a0, 16
	move    $a0, $t8
	jal     Na_SE_play
	addu    $a0, $a0, $at
.L802EC378:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x002C($sp)
	lw      $t0, 0x0110($t9)
	b       .L802EC398
	sw      $t0, 0x00F8($t2)
.L802EC390:
	lw      $t3, 0x0020($sp)
	sw      $0, 0x01AC($t3)
.L802EC398:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t4)
.L802EC3A8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x0024($sp)
	swc1    $f10, 0x010C($t5)
	b       .L802EC3C0
	nop
.L802EC3C0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EC3D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	cvt.d.s $f16, $f12
	lhu     $t7, 0x00F6($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_b_803385C0)
	ldc1    $f8, %lo(object_b_803385C0)($at)
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x002C($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f10
	lhu     $t1, 0x00FA($t0)
	cvt.d.s $f18, $f12
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0030($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	cvt.d.s $f4, $f12
	lhu     $t5, 0x00FE($t4)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_sin)($at)
	lui     $at, %hi(object_b_803385C8)
	ldc1    $f16, %lo(object_b_803385C8)($at)
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0034($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x00F4($t9)
	addiu   $t1, $t6, 0x1700
	sw      $t1, 0x00F4($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F8($t2)
	addiu   $t0, $t3, 0x1700
	sw      $t0, 0x00F8($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x00FC($t5)
	addiu   $t8, $t7, 0x1700
	sw      $t8, 0x00FC($t5)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EC4E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803385D0)
	ldc1    $f10, %lo(object_b_803385D0)($at)
	lw      $t7, 0x0154($t6)
	lwc1    $f18, 0x01AC($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	cvt.d.s $f4, $f18
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	add.d   $f6, $f4, $f16
	cvt.s.d $f8, $f6
	swc1    $f8, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0015
	bnez    $at, .L802EC548
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
.L802EC548:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x017C($t1)
	addiu   $t3, $t2, -0x000A
	sw      $t3, 0x017C($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	bgez    $t5, .L802EC57C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x017C($t7)
.L802EC57C:
	jal     object_b_802EC3D0
	lwc1    $f12, 0x001C($sp)
	b       .L802EC58C
	nop
.L802EC58C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EC59C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803385D8)
	ldc1    $f10, %lo(object_b_803385D8)($at)
	lw      $t7, 0x0154($t6)
	li      $at, 0x40080000
	mtc1    $at, $f19
	mtc1    $t7, $f4
	mtc1    $0, $f18
	li      $at, 0x3FE00000
	cvt.s.w $f6, $f4
	mtc1    $at, $f7
	cvt.d.s $f8, $f6
	mtc1    $0, $f6
	div.d   $f16, $f8, $f10
	mul.d   $f4, $f16, $f18
	add.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0024($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0068($t0)
	sw      $t1, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x00E2
	bnez    $at, .L802EC65C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	addiu   $t6, $t5, -0x0002
	sw      $t6, 0x017C($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x017C($t7)
	slti    $at, $t8, 0x0003
	beqz    $at, .L802EC65C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
.L802EC65C:
	lwc1    $f12, 0x0024($sp)
	jal     object_b_802EC200
	lw      $a1, 0x001C($sp)
	jal     object_b_802EC3D0
	lwc1    $f12, 0x0024($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lwc1    $f16, 0x00A4($t0)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D4($t1)
	addiu   $t3, $t2, 0x0100
	sw      $t3, 0x00D4($t1)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x1388
	lw      $t5, 0x0020($sp)
	li      $at, 0x0004
	lw      $t6, 0x01AC($t5)
	bne     $t6, $at, .L802EC734
	nop
	lw      $t4, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x00F8($t4)
	lw      $t0, 0x0110($t9)
	addiu   $t8, $t7, 0x0001
	bne     $t8, $t0, .L802EC734
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lw      $t3, 0x0154($t2)
	sll     $t1, $t3, 12
	andi    $t5, $t1, 0xFFFF
	sra     $t6, $t5, 4
	sll     $t4, $t6, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	li      $at, 0x42480000
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x017C($t2)
.L802EC734:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x0024($sp)
	swc1    $f6, 0x01AC($t8)
	b       .L802EC74C
	nop
.L802EC74C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EC75C
object_b_802EC75C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802EC790
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EC7A0
	nop
	b       .L802EC7B0
	nop
.L802EC790:
	jal     object_b_802EC59C
	nop
	b       .L802EC7B0
	nop
.L802EC7A0:
	jal     object_b_802EC4E0
	nop
	b       .L802EC7B0
	nop
.L802EC7B0:
	b       .L802EC7B8
	nop
.L802EC7B8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EC7CC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130037E0
	la.l    $a2, o_130037E0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sw      $t6, 0x0068($t7)
	b       .L802EC808
	nop
.L802EC808:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EC818:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x012C
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L802EC854
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
.L802EC854:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	beqz    $t2, .L802EC898
	nop
	li      $at, 0x0032
	beq     $t2, $at, .L802EC898
	nop
	li      $at, 0x0096
	beq     $t2, $at, .L802EC898
	nop
	li      $at, 0x00C8
	beq     $t2, $at, .L802EC898
	nop
	li      $at, 0x00FA
	bne     $t2, $at, .L802EC8F0
	nop
.L802EC898:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003750
	la.l    $a2, o_13003750
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0068
	sw      $v0, 0x0018($sp)
	lw      $t3, 0x001C($sp)
	lw      $t5, 0x0018($sp)
	lw      $t4, 0x00F4($t3)
	sw      $t4, 0x0110($t5)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x00F4($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F4($t6)
	lw      $t9, 0x001C($sp)
	lw      $t0, 0x00F4($t9)
	slti    $at, $t0, 0x2711
	bnez    $at, .L802EC8F0
	nop
	lw      $t1, 0x001C($sp)
	sw      $0, 0x00F4($t1)
.L802EC8F0:
	b       .L802EC8F8
	nop
.L802EC8F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EC908
object_b_802EC908:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802EC93C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EC994
	nop
	b       .L802EC99C
	nop
.L802EC93C:
	jal     object_b_802EC818
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x01AC($t7)
	bne     $t8, $at, .L802EC98C
	nop
	jal     obj_lib_802A37AC
	nop
	lui     $at, %hi(object_b_803385E0)
	lwc1    $f12, %lo(object_b_803385E0)($at)
	li      $at, 0xC5480000
	mtc1    $at, $f14
	jal     object_b_802F2B88
	li      $a2, 0xC3FA0000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802EC98C:
	b       .L802EC99C
	nop
.L802EC994:
	b       .L802EC99C
	nop
.L802EC99C:
	b       .L802EC9A4
	nop
.L802EC9A4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EC9B8
object_b_802EC9B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802EC030
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0096
	sw      $t6, 0x017C($t7)
	b       .L802EC9E0
	nop
.L802EC9E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EC9F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lw      $t7, 0x0154($t6)
	lui     $at, %hi(object_b_803385E8)
	ldc1    $f18, %lo(object_b_803385E8)($at)
	mtc1    $t7, $f4
	lui     $at, %hi(object_b_803385F0)
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	ldc1    $f6, %lo(object_b_803385F0)($at)
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	add.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0024($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0068($t0)
	sw      $t1, 0x001C($sp)
	lwc1    $f16, 0x0024($sp)
	lui     $at, %hi(object_b_803385F8)
	ldc1    $f4, %lo(object_b_803385F8)($at)
	cvt.d.s $f18, $f16
	c.lt.d  $f4, $f18
	nop
	bc1f    .L802ECA84
	nop
	lui     $at, %hi(object_b_80338600)
	lwc1    $f6, %lo(object_b_80338600)($at)
	swc1    $f6, 0x0024($sp)
.L802ECA84:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0097
	bnez    $at, .L802ECAD4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	addiu   $t6, $t5, -0x0002
	sw      $t6, 0x017C($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x017C($t7)
	slti    $at, $t8, 0x0003
	beqz    $at, .L802ECAD4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
.L802ECAD4:
	lwc1    $f12, 0x0024($sp)
	jal     object_b_802EC200
	lw      $a1, 0x001C($sp)
	jal     object_b_802EC3D0
	lwc1    $f12, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x1388
	lw      $t0, 0x0020($sp)
	li      $at, 0x0004
	lw      $t1, 0x01AC($t0)
	bne     $t1, $at, .L802ECB7C
	nop
	lw      $t2, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t3, 0x00F8($t2)
	lw      $t4, 0x0110($t6)
	addiu   $t5, $t3, 0x0001
	bne     $t5, $t4, .L802ECB7C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	lw      $t8, 0x0154($t7)
	sll     $t9, $t8, 12
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f10
	li      $at, 0x42480000
	mtc1    $at, $f18
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t6, $f6
	nop
	sw      $t6, 0x017C($t7)
.L802ECB7C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x0024($sp)
	swc1    $f8, 0x01AC($t5)
	b       .L802ECB94
	nop
.L802ECB94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802ECBA4
object_b_802ECBA4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802ECBD8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802ECBE8
	nop
	b       .L802ECBF8
	nop
.L802ECBD8:
	jal     object_b_802EC9F0
	nop
	b       .L802ECBF8
	nop
.L802ECBE8:
	jal     object_b_802EC4E0
	nop
	b       .L802ECBF8
	nop
.L802ECBF8:
	b       .L802ECC00
	nop
.L802ECC00:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802ECC14
object_b_802ECC14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, .L802ECC7C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	lw      $t7, 0x0134($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x0134($t6)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003510
	la.l    $a2, o_13003510
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00CD
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
.L802ECC7C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x00200000
	lw      $t1, 0x0134($t0)
	and     $t2, $t1, $at
	beqz    $t2, .L802ECCE4
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300381C
	la.l    $a2, o_1300381C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0067
	li.u    $a0, 0x312F0081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x312F0081
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a0, 0x0003
	lw      $a1, 0x00A0($t3)
	lw      $a2, 0x00A4($t3)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
.L802ECCE4:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x1B58
	b       .L802ECCFC
	nop
.L802ECCFC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802ECD0C
object_b_802ECD0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41600000
	mtc1    $at, $f8
	lw      $t7, 0x0154($t6)
	li      $at, 0x40220000
	mtc1    $at, $f19
	mtc1    $t7, $f4
	mtc1    $0, $f18
	li      $at, 0x3FF00000
	cvt.s.w $f6, $f4
	mtc1    $at, $f7
	div.s   $f10, $f6, $f8
	mtc1    $0, $f6
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	add.d   $f8, $f4, $f6
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f8
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	andi    $t0, $t9, 0x0003
	bnez    $t0, .L802ECE34
	nop
	slti    $at, $t9, 0x0014
	beqz    $at, .L802ECE34
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003840
	la.l    $a2, o_13003840
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0066
	sw      $v0, 0x0024($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	mov.s   $f20, $f0
	li      $at, 0x43C80000
	mul.s   $f16, $f20, $f10
	mtc1    $at, $f18
	lw      $t1, 0x0024($sp)
	lwc1    $f6, 0x00A0($t1)
	sub.s   $f4, $f16, $f18
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x00A0($t1)
	jal     o_script_80383CB4
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	mov.s   $f20, $f0
	li      $at, 0x43C80000
	mul.s   $f16, $f20, $f10
	mtc1    $at, $f18
	lw      $t2, 0x0024($sp)
	lwc1    $f4, 0x00A8($t2)
	sub.s   $f6, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t2)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f16
	mov.s   $f20, $f0
	lw      $t3, 0x0024($sp)
	mul.s   $f18, $f20, $f16
	lwc1    $f10, 0x00B0($t3)
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x00B0($t3)
.L802ECE34:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	andi    $t6, $t5, 0x0001
	bnez    $t6, .L802ECE60
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F0($t7)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x00F0($t7)
.L802ECE60:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x001C
	lw      $t1, 0x0154($t9)
	bne     $t1, $at, .L802ECE84
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
.L802ECE84:
	b       .L802ECE8C
	nop
.L802ECE8C:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802ECEA0
object_b_802ECEA0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41600000
	mtc1    $at, $f8
	lw      $t7, 0x0154($t6)
	li      $at, 0x40220000
	mtc1    $at, $f19
	mtc1    $t7, $f4
	mtc1    $0, $f18
	li      $at, 0x3FF00000
	cvt.s.w $f6, $f4
	mtc1    $at, $f7
	div.s   $f10, $f6, $f8
	mtc1    $0, $f6
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	add.d   $f8, $f4, $f6
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f8
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	andi    $t0, $t9, 0x0001
	bnez    $t0, .L802ECF20
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F0($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x00F0($t1)
.L802ECF20:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	addiu   $t6, $t5, -0x000A
	sw      $t6, 0x017C($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x017C($t7)
	slti    $at, $t8, 0x000A
	beqz    $at, .L802ECF58
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x017C($t9)
.L802ECF58:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x00A4($t0)
	lwc1    $f16, 0x00B0($t0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x001C
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, .L802ECF94
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0074($t1)
.L802ECF94:
	b       .L802ECF9C
	nop
.L802ECF9C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802ECFAC
object_b_802ECFAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x0020($t6)
	swc1    $f4, 0x0164($t7)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	lwc1    $f6, 0x0024($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t9)
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x0028($t0)
	swc1    $f16, 0x016C($t1)
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t3, 0x001C($t2)
	li      $at, 0x8000
	addu    $t4, $t3, $at
	sw      $t4, 0x00C8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0064
	sw      $t6, 0x0108($t7)
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	li      $at, 0x001E
	beq     $t8, $at, .L802ED058
	nop
	li      $at, 0x0021
	bne     $t8, $at, .L802ED0AC
	nop
.L802ED058:
	lui     $t9, %hi(shape_table)
	lw      $t9, %lo(shape_table)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0330($t9)
	sw      $t0, 0x0014($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00D0($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0xC000
	sw      $t3, 0x00D8($t4)
	lui     $at, %hi(object_b_80338604)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_b_80338604)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	b       .L802ED0F4
	sw      $t5, 0x00F4($t6)
.L802ED0AC:
	lui     $t7, %hi(shape_table)
	lw      $t7, %lo(shape_table)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x01E8($t7)
	sw      $t8, 0x0014($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00D0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D8($t1)
	lui     $at, %hi(object_b_80338608)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_b_80338608)($at)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00F4($t2)
.L802ED0F4:
	b       .L802ED0FC
	nop
.L802ED0FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802ED10C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0108($t6)
	lhu     $t9, 0x00CA($t6)
	lwc1    $f16, 0x0164($t6)
	bgez    $t7, .L802ED138
	sra     $t8, $t7, 1
	addiu   $at, $t7, 0x0001
	sra     $t8, $at, 1
.L802ED138:
	mtc1    $t8, $f4
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	cvt.s.w $f6, $f4
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_sin)($at)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A0($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0108($t2)
	lhu     $t5, 0x00CA($t2)
	lwc1    $f16, 0x016C($t2)
	bgez    $t3, .L802ED184
	sra     $t4, $t3, 1
	addiu   $at, $t3, 0x0001
	sra     $t4, $at, 1
.L802ED184:
	mtc1    $t4, $f4
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	cvt.s.w $f6, $f4
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t2)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D4($t0)
	addiu   $t6, $t1, 0x1000
	sw      $t6, 0x00D4($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00C8($t3)
	addiu   $t5, $t4, 0x2000
	sw      $t5, 0x00C8($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0028
	lw      $t8, 0x0154($t7)
	bne     $t8, $at, .L802ED218
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t9)
.L802ED218:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t6, 0x0154($t1)
	slti    $at, $t6, 0x0023
	beqz    $at, .L802ED260
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003888
	la.l    $a2, o_13003888
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0095
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t4, 0x0108($t0)
	addiu   $t5, $t4, 0x0001
	b       .L802ED274
	sw      $t5, 0x0108($t0)
.L802ED260:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t7, 0x0108($t3)
	addiu   $t8, $t7, -0x0014
	sw      $t8, 0x0108($t3)
.L802ED274:
	b       .L802ED27C
	nop
.L802ED27C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802ED28C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x000A
	beqz    $at, .L802ED348
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	bnez    $t9, .L802ED2FC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x40240000
	mtc1    $at, $f11
	lw      $t1, 0x0154($t0)
	mtc1    $0, $f10
	mtc1    $t1, $f4
	nop
	cvt.s.w $f6, $f4
	cvt.d.s $f8, $f6
	div.d   $f16, $f8, $f10
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f16
	b       .L802ED330
	nop
.L802ED2FC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x403E0000
	mtc1    $at, $f9
	lw      $t3, 0x0154($t2)
	mtc1    $0, $f8
	mtc1    $t3, $f18
	nop
	cvt.s.w $f4, $f18
	cvt.d.s $f6, $f4
	div.d   $f10, $f6, $f8
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f10
.L802ED330:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D4($t4)
	addiu   $t6, $t5, 0x1000
	b       .L802ED360
	sw      $t6, 0x00D4($t4)
.L802ED348:
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t8, 0x001C($t7)
	sw      $t8, 0x00D4($t9)
.L802ED360:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x003B
	lw      $t1, 0x0154($t0)
	bne     $t1, $at, .L802ED384
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
.L802ED384:
	b       .L802ED38C
	nop
.L802ED38C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802ED39C
object_b_802ED39C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802ED3D0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802ED3E0
	nop
	b       .L802ED3F0
	nop
.L802ED3D0:
	jal     object_b_802ED10C
	nop
	b       .L802ED3F0
	nop
.L802ED3E0:
	jal     object_b_802ED28C
	nop
	b       .L802ED3F0
	nop
.L802ED3F0:
	b       .L802ED3F8
	nop
.L802ED3F8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802ED40C
object_b_802ED40C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41700000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x000C
	lw      $t8, 0x0154($t7)
	bne     $t8, $at, .L802ED44C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
.L802ED44C:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802ED45C
object_b_802ED45C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	li      $a1, 0x000A
	jal     object_a_802AAE8C
	li      $a2, 0x41F00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
	b       .L802ED488
	nop
.L802ED488:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802ED498
object_b_802ED498:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130038E8
	la.l    $a2, o_130038E8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0038
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x001C($sp)
	lw      $t7, 0x00C8($t6)
	sw      $t7, 0x00C8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lw      $t3, 0x001C($sp)
	lhu     $t0, 0x00CA($t9)
	lwc1    $f10, 0x00A0($t3)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x44200000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	lw      $t8, 0x001C($sp)
	lhu     $t5, 0x00CA($t4)
	lwc1    $f10, 0x00A8($t8)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x44200000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x00A8($t8)
	lui     $a0, %hi(object)
	la.u    $a2, o_130038E8
	la.l    $a2, o_130038E8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0038
	sw      $v0, 0x0018($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x0018($sp)
	li      $at, 0x8000
	lw      $t0, 0x00C8($t9)
	addu    $t1, $t0, $at
	sw      $t1, 0x00C8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_cos)
	lw      $t7, 0x0018($sp)
	lhu     $t4, 0x00CA($t3)
	lwc1    $f10, 0x00A0($t7)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0xC4200000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x00A0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t2, 0x0018($sp)
	lhu     $t9, 0x00CA($t8)
	lwc1    $f10, 0x00A8($t2)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0xC4200000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f8, $f16
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x00A8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0074($t3)
	b       .L802ED61C
	nop
.L802ED61C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802ED62C
object_b_802ED62C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, .L802ED66C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802ED688
	nop
	b       .L802ED6A4
	nop
.L802ED66C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D8($t8)
	addiu   $t0, $t9, 0x0100
	sw      $t0, 0x00D8($t8)
	b       .L802ED6A4
	nop
.L802ED688:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D8($t1)
	addiu   $t3, $t2, -0x0100
	sw      $t3, 0x00D8($t1)
	b       .L802ED6A4
	nop
.L802ED6A4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x00DA($t4)
	slti    $at, $t5, -0x1FFD
	beqz    $at, .L802ED70C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0xDFFF
	sw      $t6, 0x00D8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0033
	bnez    $at, .L802ED70C
	nop
	lw      $t8, 0x0024($sp)
	andi    $t2, $t8, 0x0007
	bnez    $t2, .L802ED70C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
	li.u    $a0, 0x30344081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30344081
.L802ED70C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t4, 0x00DA($t1)
	bltz    $t4, .L802ED770
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00D8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0033
	bnez    $at, .L802ED770
	nop
	lw      $t9, 0x0024($sp)
	andi    $t0, $t9, 0x0007
	bnez    $t0, .L802ED770
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t2)
	li.u    $a0, 0x30354081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30354081
.L802ED770:
	b       .L802ED778
	nop
.L802ED778:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802ED78C
object_b_802ED78C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, -0x4000
	sw      $t8, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00A0($t9)
	swc1    $f4, 0x0100($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mul.s   $f8, $f0, $f6
	trunc.w.s $f10, $f8
	mfc1    $t1, $f10
	nop
	sw      $t1, 0x0154($t2)
	b       .L802ED7EC
	nop
.L802ED7EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802ED7FC
object_b_802ED7FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802ED848
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802ED890
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802ED94C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802EDA04
	nop
	b       .L802EDAB0
	nop
.L802ED848:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0065
	bnez    $at, .L802ED888
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	li      $at, 0x41F00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t1)
.L802ED888:
	b       .L802EDAB0
	nop
.L802ED890:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_8033860C)
	lwc1    $f8, %lo(object_b_8033860C)($at)
	lwc1    $f6, 0x00A0($t2)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802ED8DC
	nop
	lui     $at, %hi(object_b_80338610)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, %lo(object_b_80338610)($at)
	swc1    $f10, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t4)
.L802ED8DC:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x402E0000
	mtc1    $at, $f7
	lw      $t6, 0x0154($t5)
	mtc1    $0, $f6
	mtc1    $t6, $f18
	nop
	cvt.d.w $f4, $f18
	c.eq.d  $f4, $f6
	nop
	bc1f    .L802ED944
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	li      $at, 0x42200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t9)
	li.u    $a0, 0x50130081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50130081
.L802ED944:
	b       .L802EDAB0
	nop
.L802ED94C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_b_80338614)
	lwc1    $f16, %lo(object_b_80338614)($at)
	lwc1    $f10, 0x00A0($t0)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802ED998
	nop
	lui     $at, %hi(object_b_80338618)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, %lo(object_b_80338618)($at)
	swc1    $f18, 0x00A0($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
.L802ED998:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x003C
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, .L802ED9FC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x8000
	lw      $t9, 0x00C8($t8)
	addu    $t0, $t9, $at
	sw      $t0, 0x00C8($t8)
	li.u    $a0, 0x50130081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50130081
.L802ED9FC:
	b       .L802EDAB0
	nop
.L802EDA04:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_8033861C)
	lwc1    $f10, %lo(object_b_8033861C)($at)
	lwc1    $f8, 0x00A0($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802EDA50
	nop
	lui     $at, %hi(object_b_80338620)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, %lo(object_b_80338620)($at)
	swc1    $f16, 0x00A0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
.L802EDA50:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x005A
	lw      $t5, 0x0154($t4)
	bne     $t5, $at, .L802EDAA8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	li      $at, 0x41C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x8000
	lw      $t8, 0x00C8($t0)
	addu    $t1, $t8, $at
	sw      $t1, 0x00C8($t0)
.L802EDAA8:
	b       .L802EDAB0
	nop
.L802EDAB0:
	b       .L802EDAB8
	nop
.L802EDAB8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EDACC
object_b_802EDACC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	addiu   $t8, $t7, 0x4000
	sw      $t8, 0x00C8($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t0, $f8
	nop
	sw      $t0, 0x0154($t1)
	b       .L802EDB1C
	nop
.L802EDB1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EDB2C
object_b_802EDB2C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802EDB78
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EDBC0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802EDC7C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802EDD34
	nop
	b       .L802EDDE0
	nop
.L802EDB78:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0065
	bnez    $at, .L802EDBB8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	li      $at, 0x41F00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t1)
.L802EDBB8:
	b       .L802EDDE0
	nop
.L802EDBC0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_80338624)
	lwc1    $f8, %lo(object_b_80338624)($at)
	lwc1    $f6, 0x00A0($t2)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802EDC0C
	nop
	lui     $at, %hi(object_b_80338628)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, %lo(object_b_80338628)($at)
	swc1    $f10, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t4)
.L802EDC0C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x402E0000
	mtc1    $at, $f7
	lw      $t6, 0x0154($t5)
	mtc1    $0, $f6
	mtc1    $t6, $f18
	nop
	cvt.d.w $f4, $f18
	c.eq.d  $f4, $f6
	nop
	bc1f    .L802EDC74
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	li      $at, 0x41200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t9)
	li.u    $a0, 0x50130081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50130081
.L802EDC74:
	b       .L802EDDE0
	nop
.L802EDC7C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_b_8033862C)
	lwc1    $f16, %lo(object_b_8033862C)($at)
	lwc1    $f10, 0x00A0($t0)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802EDCC8
	nop
	lui     $at, %hi(object_b_80338630)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, %lo(object_b_80338630)($at)
	swc1    $f18, 0x00A0($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
.L802EDCC8:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x003C
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, .L802EDD2C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x8000
	lw      $t9, 0x00C8($t8)
	addu    $t0, $t9, $at
	sw      $t0, 0x00C8($t8)
	li.u    $a0, 0x50130081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50130081
.L802EDD2C:
	b       .L802EDDE0
	nop
.L802EDD34:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_80338634)
	lwc1    $f10, %lo(object_b_80338634)($at)
	lwc1    $f8, 0x00A0($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802EDD80
	nop
	lui     $at, %hi(object_b_80338638)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, %lo(object_b_80338638)($at)
	swc1    $f16, 0x00A0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
.L802EDD80:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x005A
	lw      $t5, 0x0154($t4)
	bne     $t5, $at, .L802EDDD8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	li      $at, 0x41C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x8000
	lw      $t8, 0x00C8($t0)
	addu    $t1, $t8, $at
	sw      $t1, 0x00C8($t0)
.L802EDDD8:
	b       .L802EDDE0
	nop
.L802EDDE0:
	b       .L802EDDE8
	nop
.L802EDDE8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EDDFC
object_b_802EDDFC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, -0x4000
	sw      $t8, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A0($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x00A0($t0)
	swc1    $f10, 0x0164($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $s0, 0x0144($t1)
	beq     $s0, $at, .L802EDE80
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802EDEA0
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802EDEC0
	nop
	b       .L802EDEE0
	nop
.L802EDE80:
	li      $at, 0x41200000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00F4($t2)
	b       .L802EDEE0
	nop
.L802EDEA0:
	li      $at, 0x41700000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00F4($t3)
	b       .L802EDEE0
	nop
.L802EDEC0:
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F4($t4)
	b       .L802EDEE0
	nop
.L802EDEE0:
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f8, $f0, $f6
	trunc.w.s $f10, $f8
	mfc1    $t7, $f10
	nop
	sw      $t7, 0x0154($t8)
	b       .L802EDF14
	nop
.L802EDF14:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EDF28
object_b_802EDF28:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x014C($t6)
	beqz    $a0, .L802EDF60
	nop
	li      $at, 0x0001
	beq     $a0, $at, .L802EDFA0
	nop
	li      $at, 0x0002
	beq     $a0, $at, .L802EE060
	nop
	b       .L802EE114
	nop
.L802EDF60:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0065
	bnez    $at, .L802EDF98
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x00F4($t1)
	swc1    $f4, 0x00B8($t1)
.L802EDF98:
	b       .L802EE114
	nop
.L802EDFA0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	lwc1    $f16, 0x00F4($t2)
	lw      $t3, 0x0154($t2)
	div.s   $f18, $f10, $f16
	mtc1    $t3, $f6
	nop
	cvt.s.w $f8, $f6
	c.le.s  $f18, $f8
	nop
	bc1f    .L802EE008
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43FF0000
	mtc1    $at, $f10
	lwc1    $f6, 0x0164($t5)
	add.s   $f16, $f6, $f10
	swc1    $f16, 0x00A0($t5)
.L802EE008:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x003C
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802EE058
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00F4($t0)
	swc1    $f8, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x8000
	lw      $t3, 0x00C8($t1)
	addu    $t2, $t3, $at
	sw      $t2, 0x00C8($t1)
.L802EE058:
	b       .L802EE114
	nop
.L802EE060:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f10, 0x00F4($t4)
	lw      $t5, 0x0154($t4)
	div.s   $f16, $f6, $f10
	mtc1    $t5, $f18
	nop
	cvt.s.w $f4, $f18
	c.le.s  $f16, $f4
	nop
	bc1f    .L802EE0BC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f18, 0x0164($t7)
	swc1    $f18, 0x00A0($t7)
.L802EE0BC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x005A
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L802EE10C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t3)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00F4($t2)
	swc1    $f6, 0x00B8($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x8000
	lw      $t5, 0x00C8($t1)
	addu    $t4, $t5, $at
	sw      $t4, 0x00C8($t1)
.L802EE10C:
	b       .L802EE114
	nop
.L802EE114:
	b       .L802EE11C
	nop
.L802EE11C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802EE124
object_b_802EE124:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x017C($t9)
	b       .L802EE190
	nop
.L802EE190:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EE1A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332694
	la.l    $a1, object_b_80332694
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802EE250
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, .L802EE21C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x8000
	lw      $t3, 0x0160($t2)
	addu    $t4, $t3, $at
	sw      $t4, 0x00C8($t2)
	li      $at, 0x41F00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t5)
.L802EE21C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, .L802EE244
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0005
	sw      $t9, 0x014C($t0)
.L802EE244:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
.L802EE250:
	b       .L802EE258
	nop
.L802EE258:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EE268:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	addiu   $t0, $t9, -0x0001
	sltiu   $at, $t0, 0x0005
	beqz    $at, .L802EE454
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(object_b_8033863C)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_b_8033863C)($at)
	jr      $t0
	nop
.globl L802EE2B8
L802EE2B8:
	jal     obj_lib_8029F464
	li      $a0, 0x0001
	lh      $t1, 0x001E($sp)
	li      $at, 0x0005
	bne     $t1, $at, .L802EE300
	nop
	li      $at, 0x41A00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t2)
	li      $at, 0x42200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t3)
.L802EE300:
	jal     obj_lib_8029FF04
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802EE330
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x00F4($t5)
	li.u    $a0, 0x306D2081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x306D2081
.L802EE330:
	b       .L802EE454
	nop
.globl L802EE338
L802EE338:
	jal     obj_lib_8029F464
	li      $a0, 0x0002
	lb      $t6, 0x0023($sp)
	li      $at, 0x0001
	andi    $t7, $t6, 0x0001
	bne     $t7, $at, .L802EE388
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F4($t0)
.L802EE388:
	b       .L802EE454
	nop
.globl L802EE390
L802EE390:
	jal     obj_lib_8029F464
	li      $a0, 0x0003
	jal     obj_lib_8029FF04
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802EE3B8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00F4($t1)
.L802EE3B8:
	b       .L802EE454
	nop
.globl L802EE3C0
L802EE3C0:
	jal     obj_lib_8029F464
	li      $a0, 0x0004
	li      $at, 0x41200000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x003D
	bnez    $at, .L802EE424
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00F4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0040($t7)
.L802EE424:
	b       .L802EE454
	nop
.globl L802EE42C
L802EE42C:
	jal     obj_lib_8029F464
	li      $a0, 0x0004
	li      $at, 0x40A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	b       .L802EE454
	nop
.L802EE454:
	b       .L802EE45C
	nop
.L802EE45C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EE46C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t7, 0x00C8
	lw      $a1, 0x0164($t6)
	lw      $a2, 0x0168($t6)
	lw      $a3, 0x016C($t6)
	sw      $t7, 0x0010($sp)
	jal     object_b_802E54B0
	move    $a0, $t6
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lh      $t8, 0x0026($sp)
	li      $at, 0x0009
	andi    $t9, $t8, 0x0009
	bne     $t9, $at, .L802EE528
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	bnez    $t1, .L802EE528
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x40C00000
	mtc1    $at, $f4
	li      $at, 0x0001
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	bne     $t3, $at, .L802EE518
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0004
	sw      $t4, 0x00F4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	b       .L802EE528
	sw      $0, 0x0154($t6)
.L802EE518:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x00F4($t8)
.L802EE528:
	jal     object_b_802EE268
	lh      $a0, 0x0026($sp)
	jal     object_b_802EE1A0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a3, 0x0320
	lwc1    $f12, 0x0164($t9)
	lwc1    $f14, 0x0168($t9)
	jal     object_b_802E5208
	lw      $a2, 0x016C($t9)
	bnez    $v0, .L802EE580
	nop
	lh      $t0, 0x0026($sp)
	li      $at, 0x0009
	andi    $t1, $t0, 0x0009
	bne     $t1, $at, .L802EE580
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t3)
.L802EE580:
	b       .L802EE588
	nop
.L802EE588:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EE598:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x016C($t7)
	lwc1    $f16, 0x00A8($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f12, 0x0024($sp)
	jal     atan2
	lwc1    $f14, 0x0028($sp)
	sh      $v0, 0x0022($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $a1, 0x0022($sp)
	li      $a2, 0x0800
	jal     obj_lib_8029E530
	lw      $a0, 0x00C8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x002E($sp)
	lh      $t0, 0x002E($sp)
	li      $at, 0x0009
	andi    $t1, $t0, 0x0009
	bne     $t1, $at, .L802EE648
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F4($t2)
	bnez    $t3, .L802EE648
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0005
	sw      $t4, 0x00F4($t5)
.L802EE648:
	jal     object_b_802EE268
	lh      $a0, 0x002E($sp)
	jal     object_b_802EE1A0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t7, 0x0064
	lw      $a1, 0x0164($t6)
	lw      $a2, 0x0168($t6)
	lw      $a3, 0x016C($t6)
	sw      $t7, 0x0010($sp)
	jal     object_b_802E52B8
	move    $a0, $t6
	beqz    $v0, .L802EE6CC
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130039D4
	la.l    $a2, o_130039D4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0074
	li.u    $a0, 0x30762081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30762081
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F4($t0)
.L802EE6CC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a3, 0x0320
	lwc1    $f12, 0x0164($t1)
	lwc1    $f14, 0x0168($t1)
	jal     object_b_802E5208
	lw      $a2, 0x016C($t1)
	li      $at, 0x0001
	bne     $v0, $at, .L802EE710
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F4($t4)
.L802EE710:
	b       .L802EE718
	nop
.L802EE718:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802EE728:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x017C($t6)
	addiu   $t8, $t7, -0x0006
	sw      $t8, 0x017C($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x017C($t9)
	bgez    $t0, .L802EE768
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x017C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
.L802EE768:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EE778:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802EE7C8
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5760
	li      $a1, 0x0005
	li.u    $a0, 0x30713081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x30713081
	jal     obj_lib_802A37AC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0074($t8)
.L802EE7C8:
	b       .L802EE7D0
	nop
.L802EE7D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EE7E0
object_b_802EE7E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0006
	beqz    $at, .L802EE8DC
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_80338650)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338650)($at)
	jr      $t7
	nop
.globl L802EE818
L802EE818:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x017C($t8)
	addiu   $t0, $t9, 0x000C
	sw      $t0, 0x017C($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x017C($t1)
	slti    $at, $t2, 0x0100
	bnez    $at, .L802EE874
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x00FF
	sw      $t3, 0x017C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	sh      $0, 0x0074($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t9)
.L802EE874:
	b       .L802EE8DC
	nop
.globl L802EE87C
L802EE87C:
	jal     object_b_802EE46C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x0154($t0)
	slti    $at, $t8, 0x001F
	bnez    $at, .L802EE8A4
	nop
	jal     obj_lib_802A05D4
	nop
.L802EE8A4:
	b       .L802EE8DC
	nop
.globl L802EE8AC
L802EE8AC:
	jal     object_b_802EE598
	nop
	b       .L802EE8DC
	nop
.globl L802EE8BC
L802EE8BC:
	jal     object_b_802EE728
	nop
	b       .L802EE8DC
	nop
.globl L802EE8CC
L802EE8CC:
	jal     object_b_802EE778
	nop
	b       .L802EE8DC
	nop
.L802EE8DC:
	b       .L802EE8E4
	nop
.L802EE8E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EE8F4
object_b_802EE8F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_803326A4
	la.l    $a1, object_b_803326A4
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802EE93C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EE99C
	nop
	b       .L802EE9A4
	nop
.L802EE93C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x0190
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, .L802EE994
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130039A0
	la.l    $a2, o_130039A0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0066
	li.u    $a0, 0x30762081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30762081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L802EE994:
	b       .L802EE9A4
	nop
.L802EE99C:
	b       .L802EE9A4
	nop
.L802EE9A4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	b       .L802EE9B8
	nop
.L802EE9B8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EE9CC
object_b_802EE9CC:
	li      $at, 0x40B00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EEA24:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_803326B4
	la.l    $a1, object_b_803326B4
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802EEA64
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
.L802EEA64:
	b       .L802EEA6C
	nop
.L802EEA6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EEA7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	sltiu   $at, $t7, 0x0006 # 0x0005
	beqz    $at, .L802EEB4C
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_80338668)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338668)($at)
	jr      $t7
	nop
.globl L802EEAB4
L802EEAB4:
	la.u    $a0, path_07011530
	jal     segment_to_virtual
	la.l    $a0, path_07011530
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00FC($t8)
	b       .L802EEB4C
	nop
.globl L802EEAD4
L802EEAD4:
	la.u    $a0, 0x070170A0
	jal     segment_to_virtual
	la.l    $a0, 0x070170A0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00FC($t9)
	b       .L802EEB4C
	nop
.globl L802EEAF4
L802EEAF4:
	la.u    $a0, path_070115C4
	jal     segment_to_virtual
	la.l    $a0, path_070115C4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00FC($t0)
	b       .L802EEB4C
	nop
.globl L802EEB14
L802EEB14:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t1, object_b_803326C4
	la.l    $t1, object_b_803326C4
	sw      $t1, 0x00FC($t2)
	b       .L802EEB4C
	nop
.globl L802EEB30
L802EEB30:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $t3, object_b_80332718
	la.l    $t3, object_b_80332718
	sw      $t3, 0x00FC($t4)
	b       .L802EEB4C
	nop
.if 1
.globl Lpaththrowback
Lpaththrowback:
	la.u    $a0, path_ironball_throwback
	jal     segment_to_virtual
	la.l    $a0, path_ironball_throwback
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00FC($t5)
	b       .L802EEB4C
	nop
.endif
.L802EEB4C:
	b       .L802EEB54
	nop
.L802EEB54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EEB64:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
.if 1
	jal     ironball_checkjump
	nop
.endif
	jal     object_b_802EEA7C
	nop
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	jal     obj_lib_802A2C5C
	lw      $a0, 0x0018($sp)
	sw      $v0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x010C($t6)
	sw      $t7, 0x00F4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a2, 0x0400
	lw      $a0, 0x00C8($t8)
	jal     obj_lib_8029E530
	lw      $a1, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_b_80338680)
	ldc1    $f8, %lo(object_b_80338680)($at)
	lwc1    $f4, 0x00B8($t0)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    .L802EEC00
	nop
	li      $at, 0x428C0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t1)
.L802EEC00:
	jal     object_b_802EEA24
	nop
	lw      $t2, 0x0018($sp)
	li      $at, -0x0001
	bne     $t2, $at, .L802EEC60
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a3, 0x1B58
	lwc1    $f12, 0x00A0($t3)
	lwc1    $f14, 0x00A4($t3)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t3)
	beqz    $v0, .L802EEC54
	nop
	jal     obj_lib_802A37AC
	nop
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42B80000
.L802EEC54:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
.L802EEC60:
	lh      $t5, 0x001E($sp)
	andi    $t7, $t5, 0x0001
	beqz    $t7, .L802EECA0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x00B0($t6)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802EECA0
	nop
	li.u    $a0, 0x30400081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30400081
.L802EECA0:
	b       .L802EECA8
	nop
.L802EECA8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EECB8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802EEA7C
	nop
	jal     obj_lib_802A2C5C
	lw      $a0, 0x001C($sp)
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x010C($t6)
	sw      $t7, 0x00C8($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	sltiu   $at, $t9, 0x0006 # 0x0005
	beqz    $at, .L802EEDD8
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_b_80338688)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_b_80338688)($at)
	jr      $t9
	nop
.globl L802EED14
L802EED14:
	li      $at, 0x41A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t0)
	b       .L802EEDD8
	nop
.globl L802EED34
L802EED34:
	li      $at, 0x41200000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t1)
	b       .L802EEDD8
	nop
.globl L802EED54
L802EED54:
	li      $at, 0x41A00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t2)
	b       .L802EEDD8
	nop
.globl L802EED74
L802EED74:
	li      $at, 0x41C80000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t3)
	b       .L802EEDD8
	nop
.globl L802EED94
L802EED94:
	li      $at, 0x41200000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t4)
	lui     $at, %hi(object_b_8033869C)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_b_8033869C)($at)
	li      $at, 0x421C0000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00DC($t5)
	b       .L802EEDD8
	nop
.if 1
.globl Lvelfthrowback
Lvelfthrowback:
	li      $at, 0x41A00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	b       .L802EEDD8
	nop
.endif
.L802EEDD8:
	b       .L802EEDE0
	nop
.L802EEDE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EEDF0
object_b_802EEDF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802EEE24
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EEE44
	nop
	b       .L802EEE54
	nop
.L802EEE24:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	jal     object_b_802EECB8
	nop
	b       .L802EEE54
	nop
.L802EEE44:
	jal     object_b_802EEB64
	nop
	b       .L802EEE54
	nop
.L802EEE54:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0004
	lw      $t0, 0x0144($t9)
	beq     $t0, $at, .L802EEE88
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a0, 0x0004
	lw      $a1, 0x00A0($t1)
	lw      $a2, 0x00A4($t1)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t1)
.L802EEE88:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0FA0
	b       .L802EEEA0
	nop
.L802EEEA0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EEEB4
object_b_802EEEB4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0144($t6)
	beqz    $a0, .L802EEEEC
	nop
	li      $at, 0x0001
	beq     $a0, $at, .L802EEF20
	nop
	li      $at, 0x0002
	beq     $a0, $at, .L802EEF58
	nop
.if 1
	li      $at, 0x0005
	beq     $a0, $at, .Lcase_5
	nop
.endif
	b       .L802EEF8C
	nop
.L802EEEEC:
	lui     $at, %hi(object_b_803386A0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, %lo(object_b_803386A0)($at)
	swc1    $f4, 0x00F4($t7)
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t8)
	b       .L802EEF8C
	nop
.L802EEF20:
	li      $at, 0x45FA0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00F4($t9)
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F8($t0)
	b       .L802EEF8C
	nop
.L802EEF58:
	lui     $at, %hi(object_b_803386A4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, %lo(object_b_803386A4)($at)
	swc1    $f16, 0x00F4($t1)
	li      $at, 0x40000000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00F8($t2)
	b       .L802EEF8C
	nop
.if 1
.Lcase_5:
	li      $at, 0x45FA0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F4($t3)
	li      $at, 0x3F800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t4)
	b       .L802EEF8C
	nop
.endif
.L802EEF8C:
	b       .L802EEF94
	nop
.L802EEF94:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802EEF9C
object_b_802EEF9C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0100
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802EEFCC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
.L802EEFCC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t9)
	bnez    $v0, .L802EF018
	nop
	lui     $t0, %hi(object)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0024($t1)
	lwc1    $f4, 0x00A4($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802EF020
	nop
.L802EF018:
	b       .L802EF0D4
	nop
.L802EF020:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	lw      $t4, 0x0154($t2)
	and     $t5, $t3, $t4
	bnez    $t5, .L802EF0CC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x00F4($t6)
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	trunc.w.s $f10, $f8
	lw      $a2, 0x00A8($t6)
	mfc1    $a3, $f10
	jal     object_b_802E5208
	nop
	beqz    $v0, .L802EF0CC
	nop
	jal     o_script_80383CB4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mov.s   $f20, $f0
	lwc1    $f16, 0x00F8($t8)
	mul.s   $f18, $f16, $f20
	trunc.w.s $f4, $f18
	mfc1    $t0, $f4
	nop
	bnez    $t0, .L802EF0CC
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003A58
	la.l    $a2, o_13003A58
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00B4
	sw      $v0, 0x0024($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0024($sp)
	lw      $t2, 0x0144($t1)
	sw      $t2, 0x0144($t3)
.L802EF0CC:
	b       .L802EF0D4
	nop
.L802EF0D4:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EF0E8
object_b_802EF0E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0100
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802EF114
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
.L802EF114:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a3, 0x0320
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t9)
	bnez    $v0, .L802EF160
	nop
	lui     $t0, %hi(object)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0024($t1)
	lwc1    $f4, 0x00A4($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802EF168
	nop
.L802EF160:
	b       .L802EF20C
	nop
.L802EF168:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	andi    $t4, $t3, 0x003F
	bnez    $t4, .L802EF204
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a3, 0x2EE0
	lwc1    $f12, 0x00A0($t5)
	lwc1    $f14, 0x00A4($t5)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t5)
	beqz    $v0, .L802EF204
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x3FF80000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f0
	mul.d   $f16, $f8, $f10
	trunc.w.d $f18, $f16
	mfc1    $t7, $f18
	nop
	bnez    $t7, .L802EF204
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003A58
	la.l    $a2, o_13003A58
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00B4
	sw      $v0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x001C($sp)
	lw      $t9, 0x0144($t8)
	sw      $t9, 0x0144($t0)
.L802EF204:
	b       .L802EF20C
	nop
.L802EF20C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EF21C
object_b_802EF21C:
	li      $at, 0x41400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802EF274
object_b_802EF274:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001A($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     map_803814B8
	lw      $a2, 0x00A8($t6)
	lw      $t7, 0x001C($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0010($t7)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L802EF2F4
	nop
	lwc1    $f8, 0x0018($t7)
	mtc1    $0, $f10
	nop
	c.eq.s  $f8, $f10
	nop
	bc1f    .L802EF2F4
	nop
	li      $at, 0x41E00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t8)
.L802EF2F4:
	jal     object_b_802EEA24
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a0, 0x0004
	lw      $a1, 0x00A0($t9)
	lw      $a2, 0x00A4($t9)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t9)
	li.u    $a0, 0x400A0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400A0001
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802EF33C
	nop
.L802EF33C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EF34C
object_b_802EF34C:
	li      $at, 0x40B00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A0($t9)
	swc1    $f10, 0x0164($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, 0x00A4($t0)
	swc1    $f16, 0x0168($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, 0x00A8($t1)
	swc1    $f18, 0x016C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00C8($t3)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EF3F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	jal     object_b_802EEA24
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802EF45C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a0, 0x0004
	lw      $a1, 0x00A0($t7)
	lw      $a2, 0x00A4($t7)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t7)
	li.u    $a0, 0x400A0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400A0001
.L802EF45C:
	lh      $t8, 0x001E($sp)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L802EF484
	nop
	andi    $t0, $t8, 0x0009
	bnez    $t0, .L802EF484
	nop
	li.u    $a0, 0x30400081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30400081
.L802EF484:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a3, 0x1770
	lwc1    $f12, 0x00A0($t1)
	lwc1    $f14, 0x00A4($t1)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t1)
	bnez    $v0, .L802EF50C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0010
	sh      $t4, 0x0002($t2)
	jal     obj_lib_802A05B4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x0164($t5)
	swc1    $f8, 0x00A0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, 0x0168($t6)
	swc1    $f10, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x016C($t7)
	swc1    $f16, 0x00A8($t7)
	jal     object_b_802EF34C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t8)
.L802EF50C:
	b       .L802EF514
	nop
.L802EF514:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EF524
object_b_802EF524:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x40B00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, .L802EF57C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802EF5D8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802EF5E8
	nop
	b       .L802EF620
	nop
.L802EF57C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a3, 0x0BB8
	lwc1    $f12, 0x00A0($t8)
	lwc1    $f14, 0x00A4($t8)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t8)
	beqz    $v0, .L802EF5D0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0011
	lh      $t2, 0x0002($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0002($t1)
	jal     obj_lib_802A05D4
	nop
.L802EF5D0:
	b       .L802EF620
	nop
.L802EF5D8:
	jal     object_b_802EF3F4
	nop
	b       .L802EF620
	nop
.L802EF5E8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a3, 0x1388
	lwc1    $f12, 0x00A0($t4)
	lwc1    $f14, 0x00A4($t4)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t4)
	beqz    $v0, .L802EF618
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
.L802EF618:
	b       .L802EF620
	nop
.L802EF620:
	b       .L802EF628
	nop
.L802EF628:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EF63C
object_b_802EF63C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x00F4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D0($t8)
	sw      $t9, 0x00F8($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802EF66C
object_b_802EF66C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, .L802EF730
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t9, 0x0154($t8)
	lw      $t4, 0x00F4($t8)
	sll     $t0, $t9, 10
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x46000000
	mtc1    $at, $f6
	mtc1    $t4, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f8, $f16
	trunc.w.s $f4, $f18
	mfc1    $t6, $f4
	nop
	sw      $t6, 0x00D4($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lw      $t9, 0x0154($t7)
	lw      $t4, 0x00F8($t7)
	sll     $t0, $t9, 10
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x45000000
	mtc1    $at, $f10
	mtc1    $t4, $f16
	mul.s   $f8, $f6, $f10
	cvt.s.w $f18, $f16
	add.s   $f4, $f8, $f18
	trunc.w.s $f6, $f4
	mfc1    $t6, $f6
	b       .L802EF7D8
	sw      $t6, 0x00D0($t7)
.L802EF730:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t9, 0x0154($t8)
	lw      $t4, 0x00F4($t8)
	sll     $t0, $t9, 10
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x46000000
	mtc1    $at, $f16
	mtc1    $t4, $f18
	mul.s   $f8, $f10, $f16
	cvt.s.w $f4, $f18
	sub.s   $f6, $f4, $f8
	trunc.w.s $f10, $f6
	mfc1    $t6, $f10
	nop
	sw      $t6, 0x00D4($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lw      $t9, 0x0154($t7)
	lw      $t4, 0x00F8($t7)
	sll     $t0, $t9, 10
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x45000000
	mtc1    $at, $f18
	mtc1    $t4, $f8
	mul.s   $f4, $f16, $f18
	cvt.s.w $f6, $f8
	add.s   $f10, $f4, $f6
	trunc.w.s $f16, $f10
	mfc1    $t6, $f16
	nop
	sw      $t6, 0x00D0($t7)
.L802EF7D8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0040
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L802EF808
	nop
	li.u    $a0, 0x30750081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30750081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
.L802EF808:
	b       .L802EF810
	nop
.L802EF810:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EF820
object_b_802EF820:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A4($t6)
	swc1    $f4, 0x0168($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802EF858
object_b_802EF858:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0001
	lw      $t7, 0x00F4($t6)
	bne     $t7, $at, .L802EF8D4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0020
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L802EF8AC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       .L802EF8D4
	sw      $0, 0x0154($t1)
.L802EF8AC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0114($t3)
	b       .L802EFCC0
	nop
.L802EF8D4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t6, 0x000A
	lw      $t5, 0x00F4($t4)
	subu    $t7, $t6, $t5
	sw      $t7, 0x0018($sp)
	lw      $t8, 0x0018($sp)
	bgez    $t8, .L802EF904
	nop
	lw      $t9, 0x0018($sp)
	subu    $t0, $0, $t9
	sw      $t0, 0x0018($sp)
.L802EF904:
	lw      $t1, 0x0018($sp)
	addiu   $t2, $t1, -0x0006
	sw      $t2, 0x0018($sp)
	lw      $t3, 0x0018($sp)
	bgez    $t3, .L802EF920
	nop
	sw      $0, 0x0018($sp)
.L802EF920:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0018($sp)
	lw      $t6, 0x0154($t4)
	addiu   $t7, $t5, 0x0008
	bne     $t6, $t7, .L802EF9B8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x00F4($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0014
	lw      $t3, 0x00F4($t2)
	bne     $t3, $at, .L802EF9B8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	bnez    $t5, .L802EF99C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	b       .L802EF9A8
	sw      $t6, 0x00F8($t7)
.L802EF99C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
.L802EF9A8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, -0x0001
	sw      $t0, 0x00F4($t1)
.L802EF9B8:
	lw      $t9, 0x0018($sp)
	li      $at, 0x0004
	beq     $t9, $at, .L802EF9D4
	nop
	li      $at, 0x0003
	bne     $t9, $at, .L802EF9E0
	nop
.L802EF9D4:
	li      $t2, 0x0004
	b       .L802EFA1C
	sw      $t2, 0x0018($sp)
.L802EF9E0:
	lw      $t3, 0x0018($sp)
	li      $at, 0x0002
	beq     $t3, $at, .L802EF9FC
	nop
	li      $at, 0x0001
	bne     $t3, $at, .L802EFA08
	nop
.L802EF9FC:
	li      $t4, 0x0002
	b       .L802EFA1C
	sw      $t4, 0x0018($sp)
.L802EFA08:
	lw      $t5, 0x0018($sp)
	bnez    $t5, .L802EFA1C
	nop
	li      $t6, 0x0001
	sw      $t6, 0x0018($sp)
.L802EFA1C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x0018($sp)
	lw      $t8, 0x0154($t7)
	sll     $t1, $t0, 3
	slt     $at, $t8, $t1
	beqz    $at, .L802EFCB8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x00F8($t9)
	bnez    $t2, .L802EFAE0
	nop
	lw      $t3, 0x0018($sp)
	li      $t4, 0x0014
	lui     $t6, %hi(object)
	div     $0, $t4, $t3
	mflo    $t5
	mtc1    $t5, $f6
	lw      $t6, %lo(object)($t6)
	bnez    $t3, .L802EFA78
	nop
	break   7
.L802EFA78:
	li      $at, -0x0001
	bne     $t3, $at, .L802EFA90
	li      $at, 0x80000000
	bne     $t4, $at, .L802EFA90
	nop
	break   6
.L802EFA90:
	cvt.s.w $f8, $f6
	swc1    $f8, 0x00B4($t6)
	lw      $t7, 0x0018($sp)
	li      $t0, 0x0400
	lui     $t1, %hi(object)
	div     $0, $t0, $t7
	lw      $t1, %lo(object)($t1)
	mflo    $t8
	bnez    $t7, .L802EFABC
	nop
	break   7
.L802EFABC:
	li      $at, -0x0001
	bne     $t7, $at, .L802EFAD4
	li      $at, 0x80000000
	bne     $t0, $at, .L802EFAD4
	nop
	break   6
.L802EFAD4:
	sw      $t8, 0x0114($t1)
	b       .L802EFB68
	nop
.L802EFAE0:
	lw      $t9, 0x0018($sp)
	li      $t2, -0x0014
	lui     $t3, %hi(object)
	div     $0, $t2, $t9
	mflo    $t4
	mtc1    $t4, $f10
	lw      $t3, %lo(object)($t3)
	bnez    $t9, .L802EFB08
	nop
	break   7
.L802EFB08:
	li      $at, -0x0001
	bne     $t9, $at, .L802EFB20
	li      $at, 0x80000000
	bne     $t2, $at, .L802EFB20
	nop
	break   6
.L802EFB20:
	cvt.s.w $f16, $f10
	swc1    $f16, 0x00B4($t3)
	lw      $t5, 0x0018($sp)
	li      $t6, -0x0400
	lui     $t7, %hi(object)
	div     $0, $t6, $t5
	lw      $t7, %lo(object)($t7)
	mflo    $t0
	bnez    $t5, .L802EFB4C
	nop
	break   7
.L802EFB4C:
	li      $at, -0x0001
	bne     $t5, $at, .L802EFB64
	li      $at, 0x80000000
	bne     $t6, $at, .L802EFB64
	nop
	break   6
.L802EFB64:
	sw      $t0, 0x0114($t7)
.L802EFB68:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f18, 0x00A8($t8)
	lwc1    $f4, 0x00B4($t8)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C4($t1)
	lw      $t9, 0x0114($t1)
	addu    $t4, $t2, $t9
	sw      $t4, 0x00C4($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t6, 0x00C4($t3)
	andi    $t5, $t6, 0x1FFF
	mtc1    $t5, $f8
	jal     object_b_802E3F68
	cvt.s.w $f12, $f8
	li      $at, 0x44480000
	mtc1    $at, $f10
	nop
	c.lt.s  $f0, $f10
	nop
	bc1f    .L802EFBF0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x0114($t0)
	beqz    $t7, .L802EFBF0
	nop
	li.u    $a0, 0x80482081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x80482081
.L802EFBF0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f4
	lw      $t2, 0x00C4($t8)
	sll     $t9, $t2, 2
	andi    $t4, $t9, 0xFFFF
	sra     $t1, $t4, 4
	sll     $t3, $t1, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_sin)($at)
	li      $at, 0x40370000
	mtc1    $at, $f5
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x001C($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802EFC64
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($sp)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x001C($sp)
.L802EFC64:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x0168($t6)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t6)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x0018($sp)
	lw      $t0, 0x0154($t5)
	sll     $t2, $t8, 3
	addiu   $t7, $t0, 0x0001
	bne     $t7, $t2, .L802EFCB8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t9)
	lw      $a2, 0x00A4($t9)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t9)
.L802EFCB8:
	b       .L802EFCC0
	nop
.L802EFCC0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EFCD0
object_b_802EFCD0:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0144($t6)
	beqz    $a0, .L802EFD08
	nop
	li      $at, 0x0001
	beq     $a0, $at, .L802EFD10
	nop
	li      $at, 0x0002
	beq     $a0, $at, .L802EFD48
	nop
	b       .L802EFD7C
	nop
.L802EFD08:
	b       .L802EFD7C
	nop
.L802EFD10:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	addiu   $t0, $t9, 0x0032
	sw      $t0, 0x0154($t8)
	b       .L802EFD7C
	nop
.L802EFD48:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x44000000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
	b       .L802EFD7C
	nop
.L802EFD7C:
	b       .L802EFD84
	nop
.L802EFD84:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802EFD8C
object_b_802EFD8C:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x014C($t6)
	beqz    $a0, .L802EFDB8
	nop
	li      $at, 0x0001
	beq     $a0, $at, .L802EFDFC
	nop
	b       .L802EFE3C
	nop
.L802EFDB8:
	lui     $at, %hi(object_b_803386A8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, %lo(object_b_803386A8)($at)
	swc1    $f4, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0064
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L802EFDF4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802EFDF4:
	b       .L802EFE3C
	nop
.L802EFDFC:
	lui     $at, %hi(object_b_803386AC)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, %lo(object_b_803386AC)($at)
	swc1    $f6, 0x00B0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0064
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, .L802EFE34
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
.L802EFE34:
	b       .L802EFE3C
	nop
.L802EFE3C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x00A4($t6)
	lwc1    $f10, 0x00B0($t6)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t6)
	b       .L802EFE5C
	nop
.L802EFE5C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802EFE64
object_b_802EFE64:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
.L802EFE70:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003B98
	la.l    $a2, o_13003B98
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00E1
	sw      $v0, 0x0018($sp)
	lw      $t6, 0x001C($sp)
	li      $t8, 0x11F8
	lw      $t0, 0x0018($sp)
	sll     $t7, $t6, 3
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	subu    $t9, $t8, $t7
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00A4($t0)
	lw      $t1, 0x001C($sp)
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x000A
	bnez    $at, .L802EFE70
	sw      $t2, 0x001C($sp)
	b       .L802EFEE4
	nop
.L802EFEE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EFEF4
object_b_802EFEF4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x014C($t6)
	beqz    $a0, .L802EFF38
	nop
	li      $at, 0x0001
	beq     $a0, $at, .L802EFF6C
	nop
	li      $at, 0x0002
	beq     $a0, $at, .L802EFFE0
	nop
	li      $at, 0x0003
	beq     $a0, $at, .L802F0064
	nop
	b       .L802F00F4
	nop
.L802EFF38:
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, .L802EFF64
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802EFF64:
	b       .L802F00F4
	nop
.L802EFF6C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lw      $t3, 0x0154($t2)
	lwc1    $f10, 0x0168($t2)
	sll     $t4, $t3, 12
	andi    $t5, $t4, 0xFFFF
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	sub.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t2)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0008
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L802EFFD8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t1)
.L802EFFD8:
	b       .L802F00F4
	nop
.L802EFFE0:
	li      $at, 0xC1200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00A4($t4)
	lwc1    $f6, 0x00B0($t4)
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43000000
	mtc1    $at, $f16
	lwc1    $f8, 0x00A4($t5)
	c.lt.s  $f8, $f16
	nop
	bc1f    .L802F005C
	nop
	li      $at, 0x43000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00A4($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t2)
.L802F005C:
	b       .L802F00F4
	nop
.L802F0064:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t9, 0x0154($t8)
	sll     $t0, $t9, 12
	andi    $t1, $t0, 0xFFFF
	sra     $t3, $t1, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	li      $at, 0x43000000
	mtc1    $at, $f8
	mul.s   $f10, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t8)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x0008
	bnez    $at, .L802F00EC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B0($t7)
	li      $at, 0x43000000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00A4($t2)
.L802F00EC:
	b       .L802F00F4
	nop
.L802F00F4:
	b       .L802F00FC
	nop
.L802F00FC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802F0104
object_b_802F0104:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_b_803386B0)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_b_803386B0)($at)
	la.u    $a0, o_13003B60
	jal     obj_lib_8029F95C
	la.l    $a0, o_13003B60
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L802F0150
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x014C($t7)
	beqz    $t8, .L802F0150
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
.L802F0150:
	b       .L802F0158
	nop
.L802F0158:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F0168
object_b_802F0168:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13003C0C
	li      $t6, 0x06FD
	li      $t7, 0x0400
	li      $t8, 0x02FC
	sw      $t8, 0x0018($sp)
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a3, o_13003C0C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13003C0C
	li      $t9, 0x06FD
	li      $t0, 0x0380
	li      $t1, -0x0A13
	sw      $t1, 0x0018($sp)
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	la.l    $a3, o_13003C0C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13003C0C
	li      $t2, -0x16FB
	li      $t3, 0x0400
	li      $t4, -0x0A13
	sw      $t4, 0x0018($sp)
	sw      $t3, 0x0014($sp)
	sw      $t2, 0x0010($sp)
	la.l    $a3, o_13003C0C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13003C0C
	li      $t5, -0x16FB
	li      $t6, 0x0400
	li      $t7, 0x02FC
	sw      $t7, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	la.l    $a3, o_13003C0C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	b       .L802F0278
	nop
.L802F0278:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802F0288:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lw      $t7, 0x0154($t6)
	lwc1    $f10, 0x0164($t6)
	sll     $t8, $t7, 14
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42200000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x003C
	beqz    $at, .L802F0344
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	lw      $t5, 0x0154($t4)
	sll     $t7, $t5, 13
	andi    $t8, $t7, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f4
	nop
	mul.s   $f12, $f18, $f4
	jal     object_b_802E3F68
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x0168($t1)
	add.s   $f8, $f0, $f6
	b       .L802F03C8
	swc1    $f8, 0x00A4($t1)
.L802F0344:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t2, 0x0118($t6)
	addiu   $t3, $t2, 0x0100
	sw      $t3, 0x0118($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0118($t4)
	slti    $at, $t5, 0x1801
	bnez    $at, .L802F0398
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x1800
	sw      $t7, 0x0118($t8)
	li      $at, 0x40A00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t9)
.L802F0398:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D4($t0)
	lw      $t2, 0x0118($t0)
	addu    $t3, $t1, $t2
	sw      $t3, 0x00D4($t0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x00A4($t6)
	lwc1    $f18, 0x00B0($t6)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t6)
.L802F03C8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x005A
	beqz    $at, .L802F0460
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003BEC
	la.l    $a2, o_13003BEC
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x008A
	sw      $v0, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f6
	li      $at, 0x41A00000
	mtc1    $at, $f10
	mul.s   $f8, $f0, $f6
	lw      $t7, 0x001C($sp)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00B8($t7)
	jal     rand
	nop
	lw      $t8, 0x001C($sp)
	sw      $v0, 0x00C8($t8)
	lui     $at, %hi(object_b_803386B4)
	lwc1    $f18, %lo(object_b_803386B4)($at)
	lw      $t9, 0x001C($sp)
	swc1    $f18, 0x00F4($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	lw      $t1, 0x001C($sp)
	add.s   $f6, $f0, $f4
	swc1    $f6, 0x00E4($t1)
.L802F0460:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0096
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, .L802F0488
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t6)
.L802F0488:
	b       .L802F0490
	nop
.L802F0490:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F04A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li.u    $a2, 0x442C8000
	li.l    $a2, 0x442C8000
	move    $a0, $0
	jal     object_a_802AAE8C
	move    $a1, $0
	sh      $0, 0x001A($sp)
.L802F04C0:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003BEC
	la.l    $a2, o_13003BEC
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x008A
	sw      $v0, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	li      $at, 0x42A00000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lw      $t6, 0x001C($sp)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f16
	li      $at, 0x41A00000
	mtc1    $at, $f4
	mul.s   $f18, $f0, $f16
	lw      $t7, 0x001C($sp)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00B0($t7)
	jal     rand
	nop
	lw      $t8, 0x001C($sp)
	sw      $v0, 0x00C8($t8)
	li      $at, 0x40400000
	mtc1    $at, $f8
	lw      $t9, 0x001C($sp)
	swc1    $f8, 0x00F4($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f10
	li      $at, 0x40A00000
	mtc1    $at, $f18
	mul.s   $f16, $f0, $f10
	lw      $t0, 0x001C($sp)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00E4($t0)
	lh      $t1, 0x001A($sp)
	addiu   $t2, $t1, 0x0001
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	slti    $at, $t4, 0x001E
	bnez    $at, .L802F04C0
	sh      $t2, 0x001A($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
	b       .L802F05A4
	nop
.L802F05A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F05B4
object_b_802F05B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F05F4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F062C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F065C
	nop
	b       .L802F068C
	nop
.L802F05F4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0004
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, .L802F0624
	nop
	jal     Na_g_803220F0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802F0624:
	b       .L802F068C
	nop
.L802F062C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, .L802F064C
	nop
	li.u    $a0, 0x814BE081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x814BE081
.L802F064C:
	jal     object_b_802F0288
	nop
	b       .L802F068C
	nop
.L802F065C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	bnez    $t4, .L802F067C
	nop
	li.u    $a0, 0x814CF081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x814CF081
.L802F067C:
	jal     object_b_802F04A0
	nop
	b       .L802F068C
	nop
.L802F068C:
	b       .L802F0694
	nop
.L802F0694:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F06A8
object_b_802F06A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_b_803386B8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_803386B8)($at)
	swc1    $f4, 0x0170($t6)
	li      $at, 0x40000000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0174($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x00F0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t0)
	b       .L802F0704
	nop
.L802F0704:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F0714
object_b_802F0714:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802E4E90
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, 0x1000
	sw      $t8, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00D0($t9)
	addiu   $t1, $t0, 0x1000
	sw      $t1, 0x00D0($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x003C
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, .L802F0770
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
.L802F0770:
	b       .L802F0778
	nop
.L802F0778:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F0788
object_b_802F0788:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05D4
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, .L802F07DC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F4($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
.L802F07DC:
	b       .L802F07E4
	nop
.L802F07E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F07F4
object_b_802F07F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x40010001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40010001
	b       .L802F0810
	nop
.L802F0810:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F0820
object_b_802F0820:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x41030001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x41030001
	b       .L802F083C
	nop
.L802F083C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F084C
object_b_802F084C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41E00000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x0040($t8)
	b       .L802F0888
	nop
.L802F0888:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F0898
object_b_802F0898:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x6B0)
	lw      $t6, %lo(_camera_bss+0x6B0)($t6)
	li      $at, 0x0003
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, .L802F08C4
	nop
	b       .L802F093C
	nop
.L802F08C4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x0144($t8)
	beqz    $s0, .L802F08F8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F090C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F0920
	nop
	b       .L802F0934
	nop
.L802F08F8:
	li.u    $a0, 0x90524001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x90524001
	b       .L802F0934
	nop
.L802F090C:
	li.u    $a0, 0x80504001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x80504001
	b       .L802F0934
	nop
.L802F0920:
	li.u    $a0, 0x50514001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x50514001
	b       .L802F0934
	nop
.L802F0934:
	b       .L802F093C
	nop
.L802F093C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F0950
object_b_802F0950:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_camera_bss+0x6B0)
	lw      $t6, %lo(_camera_bss+0x6B0)($t6)
	li      $at, 0x0003
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, .L802F0978
	nop
	b       .L802F0994
	nop
.L802F0978:
	li.u    $a0, 0x60104001
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x60104001
	b       .L802F0994
	nop
.L802F0994:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F09A4
object_b_802F09A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_camera_bss+0x6B0)
	lw      $t6, %lo(_camera_bss+0x6B0)($t6)
	li      $at, 0x0003
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, .L802F09CC
	nop
	b       .L802F09E0
	nop
.L802F09CC:
	li.u    $a0, 0x400E0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400E0001
	b       .L802F09E0
	nop
.L802F09E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F09F0
object_b_802F09F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x0078
	bnez    $at, .L802F0A28
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
.L802F0A28:
	b       .L802F0A30
	nop
.L802F0A30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F0A40
object_b_802F0A40:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	li      $at, 0x41200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t9)
	lui     $at, %hi(object_b_803386BC)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, %lo(object_b_803386BC)($at)
	swc1    $f16, 0x0170($t0)
	li      $at, 0x40000000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0174($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	lui     $at, %hi(object_b_803386C0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, %lo(object_b_803386C0)($at)
	swc1    $f8, 0x00F4($t4)
	la.u    $a0, o_13003D0C
	jal     obj_lib_8029F95C
	la.l    $a0, o_13003D0C
	sw      $v0, 0x0034($sp)
	lw      $t5, 0x0034($sp)
	beqz    $t5, .L802F0B24
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0034($sp)
	sw      $t6, 0x0068($t7)
.L802F0B24:
	lui     $a0, %hi(object)
	la.u    $a3, o_13003D34
	li      $t8, -0x0192
	li      $t9, 0x01CD
	li      $t0, -0x0B52
	sw      $t0, 0x0018($sp)
	sw      $t9, 0x0014($sp)
	sw      $t8, 0x0010($sp)
	la.l    $a3, o_13003D34
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	b       .L802F0B6C
	nop
.L802F0B6C:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802F0B7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332764
	la.l    $a1, object_b_80332764
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802F0BBC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
.L802F0BBC:
	b       .L802F0BC4
	nop
.L802F0BC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F0BD4:
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	div.s   $f8, $f6, $f12
	lwc1    $f4, 0x00B8($t6)
	lw      $t1, 0x00D0($t6)
	mul.s   $f10, $f4, $f8
	trunc.w.s $f16, $f10
	mfc1    $t8, $f16
	nop
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	addu    $t2, $t1, $t0
	sw      $t2, 0x00D0($t6)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_b_803386C8)
	ldc1    $f4, %lo(object_b_803386C8)($at)
	lwc1    $f18, 0x00B8($t3)
	lwc1    $f10, 0x00F4($t3)
	cvt.d.s $f6, $f18
	cvt.d.s $f16, $f10
	mul.d   $f8, $f6, $f4
	add.d   $f18, $f16, $f8
	cvt.s.d $f6, $f18
	swc1    $f6, 0x00F4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	lwc1    $f4, 0x00F4($t4)
	mtc1    $0, $f16
	cvt.d.s $f10, $f4
	c.lt.d  $f16, $f10
	nop
	bc1f    .L802F0C84
	nop
	li      $at, 0x3F800000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00F4($t5)
.L802F0C84:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F0C94:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	la.u    $a0, 0x070165A8
	jal     segment_to_virtual
	la.l    $a0, 0x070165A8
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00FC($t6)
	jal     object_b_802E5114
	nop
	sh      $v0, 0x0026($sp)
	jal     obj_lib_802A2C5C
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x010C($t7)
	sw      $t8, 0x00F8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a2, 0x0400
	lw      $a0, 0x00C8($t9)
	jal     obj_lib_8029E530
	lw      $a1, 0x00F8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_803386D0)
	ldc1    $f8, %lo(object_b_803386D0)($at)
	lwc1    $f4, 0x00B8($t1)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    .L802F0D40
	nop
	li      $at, 0x428C0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t2)
.L802F0D40:
	lw      $t3, 0x0020($sp)
	li      $at, -0x0001
	bne     $t3, $at, .L802F0DD8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lhu     $t5, 0x0162($t4)
	lhu     $t6, 0x00CA($t4)
	subu    $t8, $t5, $t6
	sh      $t8, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a2, 0x2000
	lw      $a0, 0x00C8($t7)
	jal     object_b_802E55D0
	lw      $a1, 0x0160($t7)
	li      $at, 0x0001
	bne     $v0, $at, .L802F0DB8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0001
	lw      $t0, 0x01AC($t9)
	bne     $t0, $at, .L802F0DB8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	b       .L802F0DC8
	sw      $t2, 0x00F8($t1)
.L802F0DB8:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00C8($t3)
	sw      $t4, 0x00F8($t3)
.L802F0DC8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
.L802F0DD8:
	b       .L802F0DE0
	nop
.L802F0DE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F0DF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	jal     object_b_802E5114
	nop
	sh      $v0, 0x0026($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803386D8)
	ldc1    $f8, %lo(object_b_803386D8)($at)
	lwc1    $f4, 0x00B8($t6)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    .L802F0E44
	nop
	li      $at, 0x428C0000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t7)
.L802F0E44:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a2, 0x0400
	lw      $a0, 0x00C8($t8)
	jal     obj_lib_8029E530
	lw      $a1, 0x00F8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $a0, %hi(object)
	li.u    $a1, 0xC5843000
	li.u    $a3, 0x44E2A000
	li      $t0, 0x012C
	sw      $t0, 0x0010($sp)
	li.l    $a3, 0x44E2A000
	li.l    $a1, 0xC5843000
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E52B8
	li      $a2, 0xC4A80000
	beqz    $v0, .L802F0F58
	nop
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x428C0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_803386E0)
	lwc1    $f16, %lo(object_b_803386E0)($at)
	lui     $at, %hi(object_b_803386E4)
	lwc1    $f4, %lo(object_b_803386E4)($at)
	lwc1    $f18, 0x00A8($t1)
	lwc1    $f6, 0x00A0($t1)
	sub.s   $f12, $f16, $f18
	jal     atan2
	sub.s   $f14, $f4, $f6
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C8($t2)
	li      $at, 0x42A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t3)
	li      $at, 0x41700000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	lw      $t9, 0x0068($t8)
	sw      $t7, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lw      $t1, 0x0068($t0)
	swc1    $f16, 0x00B0($t1)
	li.u    $a0, 0x5064C081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x5064C081
.L802F0F58:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x00C8
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, .L802F0F90
	nop
	la.u    $a1, o_13003CE4
	la.l    $a1, o_13003CE4
	li      $a0, 0x00D2
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
.L802F0F90:
	b       .L802F0F98
	nop
.L802F0F98:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F0FA8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E5114
	nop
	sh      $v0, 0x001E($sp)
	lh      $t6, 0x001E($sp)
	li      $at, 0x0009
	andi    $t7, $t6, 0x0009
	bne     $t7, $at, .L802F0FE8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	sw      $t8, 0x014C($t9)
	jal     obj_lib_802A05B4
	nop
.L802F0FE8:
	lh      $t0, 0x001E($sp)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L802F1044
	nop
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x428C0000
	lui     $at, %hi(object_b_803386E8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, %lo(object_b_803386E8)($at)
	swc1    $f4, 0x00A0($t2)
	lui     $at, %hi(object_b_803386EC)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, %lo(object_b_803386EC)($at)
	swc1    $f6, 0x00A8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t4)
.L802F1044:
	b       .L802F104C
	nop
.L802F104C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F105C
object_b_802F105C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L802F11B0
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_803386F0)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_803386F0)($at)
	jr      $t7
	nop
.globl L802F1094
L802F1094:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a3, 0x0190
	lwc1    $f12, 0x00A0($t8)
	lwc1    $f14, 0x00A4($t8)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t8)
	li      $at, 0x0001
	bne     $v0, $at, .L802F1124
	nop
	jal     pl_demo_80257640
	li      $a0, 0x0001
	li      $at, 0x0002
	bne     $v0, $at, .L802F1124
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	li      $a2, 0x006E
	sh      $v0, 0x001E($sp)
	lh      $t9, 0x001E($sp)
	beqz    $t9, .L802F1124
	nop
	li      $at, 0x41200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
	jal     pl_demo_80257640
	move    $a0, $0
.L802F1124:
	b       .L802F11B0
	nop
.globl L802F112C
L802F112C:
	jal     object_b_802F0C94
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     object_b_802F0BD4
	lwc1    $f12, 0x00F4($t3)
	li.u    $a0, 0x400A0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400A0001
	b       .L802F11B0
	nop
.globl L802F1158
L802F1158:
	jal     object_b_802F0DF0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     object_b_802F0BD4
	lwc1    $f12, 0x00F4($t4)
	li.u    $a0, 0x400A0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400A0001
	b       .L802F11B0
	nop
.globl L802F1184
L802F1184:
	jal     object_b_802F0FA8
	nop
	b       .L802F11B0
	nop
.globl L802F1194
L802F1194:
	li      $at, 0x43520000
	mtc1    $at, $f12
	lui     $at, %hi(object_b_80338704)
	jal     obj_lib_802A390C
	lwc1    $f14, %lo(object_b_80338704)($at)
	b       .L802F11B0
	nop
.L802F11B0:
	jal     object_b_802F0B7C
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x1F40
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43340000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t6)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00DC($t6)
	b       .L802F11FC
	nop
.L802F11FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F120C
object_b_802F120C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	sb      $v0, 0x0037($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 24
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0036($sp)
	lui     $at, %hi(object_b_80338708)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_b_80338708)($at)
	li      $at, 0x40A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t0)
	lui     $at, %hi(object_b_8033870C)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, %lo(object_b_8033870C)($at)
	swc1    $f6, 0x0170($t1)
	li      $at, 0x40000000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t2)
	lb      $t4, 0x0036($sp)
	lbu     $t3, 0x0037($sp)
	li      $t5, 0x0001
	sllv    $t6, $t5, $t4
	and     $t7, $t3, $t6
	beqz    $t7, .L802F1358
	nop
	lui     $t8, %hi(level_index)
	lh      $t8, %lo(level_index)($t8)
	addiu   $t9, $t4, 0x0001
	beq     $t8, $t9, .L802F1358
	nop
	lui     $a0, %hi(object)
	la.u    $a3, o_13003D4C
	li      $t0, -0x1086
	li      $t1, -0x0540
	li      $t2, 0x0715
	sw      $t2, 0x0018($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a3, o_13003D4C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00D2
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $at, %hi(object_b_80338710)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, %lo(object_b_80338710)($at)
	swc1    $f10, 0x00A0($t5)
	lui     $at, %hi(object_b_80338714)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f16, %lo(object_b_80338714)($at)
	swc1    $f16, 0x00A4($t3)
	lui     $at, %hi(object_b_80338718)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f18, %lo(object_b_80338718)($at)
	swc1    $f18, 0x00A8($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t4)
.L802F1358:
	b       .L802F1360
	nop
.L802F1360:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802F1370
object_b_802F1370:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L802F14EC
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_8033871C)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_8033871C)($at)
	jr      $t7
	nop
.globl L802F13A8
L802F13A8:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x006D
	li      $a2, 0x43C80000
	li      $a3, 0x0001
	jal     object_b_802E5948
	addiu   $a0, $a0, 0x00F4
	beqz    $v0, .L802F13DC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L802F13DC:
	b       .L802F14EC
	nop
.globl L802F13E4
L802F13E4:
	b       .L802F14EC
	nop
.globl L802F13EC
L802F13EC:
	jal     object_b_802E5114
	nop
	sh      $v0, 0x001C($sp)
	lh      $t0, 0x001C($sp)
	andi    $t1, $t0, 0x0008
	beqz    $t1, .L802F1418
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t3)
.L802F1418:
	b       .L802F14EC
	nop
.globl L802F1420
L802F1420:
	jal     object_b_802E5114
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_b_80338730)
	lwc1    $f6, %lo(object_b_80338730)($at)
	lwc1    $f4, 0x00A4($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802F1484
	nop
	lui     $at, %hi(object_b_80338734)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, %lo(object_b_80338734)($at)
	swc1    $f8, 0x00A4($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	sw      $t6, 0x014C($t7)
	li.u    $a0, 0x5065D081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x5065D081
	jal     Na_g_803220F0
	nop
.L802F1484:
	b       .L802F14EC
	nop
.globl L802F148C
L802F148C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x006F
	li      $a2, 0x442F0000
	li      $a3, 0x0002
	jal     object_b_802E5948
	addiu   $a0, $a0, 0x00F4
	beqz    $v0, .L802F14E4
	nop
	jal     obj_lib_802A37AC
	nop
	lui     $at, %hi(object_b_80338738)
	lwc1    $f12, %lo(object_b_80338738)($at)
	li      $at, 0xC4800000
	mtc1    $at, $f14
	li.u    $a2, 0x44EC4000
	jal     object_b_802F2B88
	li.l    $a2, 0x44EC4000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L802F14E4:
	b       .L802F14EC
	nop
.L802F14EC:
	li      $at, 0x43340000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     obj_lib_802A390C
	nop
	b       .L802F150C
	nop
.L802F150C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F151C
object_b_802F151C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x0320
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	beqz    $v0, .L802F156C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0068($t7)
	lw      $t9, 0x01AC($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x01AC($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0074($t1)
.L802F156C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lh      $t4, 0x0074($t3)
	bnez    $t4, .L802F1590
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
.L802F1590:
	b       .L802F1598
	nop
.L802F1598:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F15A8
object_b_802F15A8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	li      $at, 0x41000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t9)
	lui     $at, %hi(object_b_8033873C)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, %lo(object_b_8033873C)($at)
	swc1    $f16, 0x0170($t0)
	li      $at, 0x40000000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0174($t1)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F162C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E5114
	nop
	sh      $v0, 0x001E($sp)
	lh      $t6, 0x001E($sp)
	li      $at, 0x0001
	andi    $t7, $t6, 0x0009
	bne     $t7, $at, .L802F168C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802F168C
	nop
	li.u    $a0, 0x30480081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30480081
	jal     obj_lib_802A37AC
	nop
.L802F168C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_80338740)
	ldc1    $f16, %lo(object_b_80338740)($at)
	lwc1    $f8, 0x00B8($t9)
	cvt.d.s $f10, $f8
	c.lt.d  $f16, $f10
	nop
	bc1f    .L802F16CC
	nop
	li      $at, 0x428C0000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t0)
.L802F16CC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0xC47A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802F16FC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
.L802F16FC:
	b       .L802F1704
	nop
.L802F1704:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F1714
object_b_802F1714:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	li      $at, 0x43870000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, .L802F1770
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F17A0
	nop
	b       .L802F17CC
	nop
.L802F1770:
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	b       .L802F17CC
	nop
.L802F17A0:
	jal     object_b_802F162C
	nop
	li      $at, 0x3FC00000
	mtc1    $at, $f12
	jal     object_b_802F0BD4
	nop
	li.u    $a0, 0x400A0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400A0001
	b       .L802F17CC
	nop
.L802F17CC:
	jal     object_b_802F0B7C
	nop
	b       .L802F17DC
	nop
.L802F17DC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F17F0
object_b_802F17F0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0100
	bnez    $at, .L802F181C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
.L802F181C:
	jal     object_b_802E58B4
	li      $a0, 0x0004
	beqz    $v0, .L802F1850
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a3, 0x05DC
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t9)
	beqz    $v0, .L802F1858
	nop
.L802F1850:
	b       .L802F1944
	nop
.L802F1858:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a3, 0x1770
	lwc1    $f12, 0x00A0($t0)
	lwc1    $f14, 0x00A4($t0)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t0)
	beqz    $v0, .L802F18E0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	andi    $t3, $t2, 0x003F
	bnez    $t3, .L802F18D8
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003D74
	la.l    $a2, o_13003D74
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0039
	sw      $v0, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x45800000
	mtc1    $at, $f4
	lw      $t6, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t5, $f8
	nop
	sw      $t5, 0x00C8($t6)
.L802F18D8:
	b       .L802F193C
	nop
.L802F18E0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	andi    $t9, $t8, 0x007F
	bnez    $t9, .L802F193C
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003D74
	la.l    $a2, o_13003D74
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0039
	sw      $v0, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x45800000
	mtc1    $at, $f10
	lw      $t2, 0x001C($sp)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	sw      $t1, 0x00C8($t2)
.L802F193C:
	b       .L802F1944
	nop
.L802F1944:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F1954:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332774
	la.l    $a1, object_b_80332774
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802F19A8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	b       .L802F19B8
	li      $v0, 0x0001
.L802F19A8:
	b       .L802F19B8
	move    $v0, $0
	b       .L802F19B8
	nop
.L802F19B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F19C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x012D
	bnez    $at, .L802F19F8
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x012C
.L802F19F8:
	b       .L802F1A00
	nop
.L802F1A00:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F1A10:
	lui     $t6, %hi(object_b_80361450)
	lw      $t6, %lo(object_b_80361450)($t6)
	bnez    $t6, .L802F1A28
	nop
	jr      $ra
	nop
.L802F1A28:
	lui     $t7, %hi(object_b_80361450)
	lw      $t7, %lo(object_b_80361450)($t7)
	lh      $t8, 0x0000($t7)
	addiu   $t9, $t8, -0x000A
	sltiu   $at, $t9, 0x0024
	beqz    $at, L802F1BA8
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_b_80338748)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_b_80338748)($at)
	jr      $t9
	nop
.globl L802F1A5C
L802F1A5C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
	b       L802F1BA8
	nop
.globl L802F1A70
L802F1A70:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000A
	sw      $t1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	b       L802F1BA8
	nop
.globl L802F1A9C
L802F1A9C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x000B
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object_b_80361450)
	lw      $t6, %lo(object_b_80361450)($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t7, 0x0002($t6)
	andi    $t8, $t7, 0x00FF
	sll     $t9, $t8, 8
	sw      $t9, 0x00C8($t0)
	lui     $t1, %hi(object_b_80361450)
	lw      $t1, %lo(object_b_80361450)($t1)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t2, 0x0002($t1)
	andi    $t3, $t2, 0xFF00
	sra     $t4, $t3, 8
	subu    $t5, $0, $t4
	sll     $t6, $t5, 1
	addiu   $t7, $t6, 0x0008
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x00B8($t8)
	b       L802F1BA8
	nop
.globl L802F1B0C
L802F1B0C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x000C
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t1)
	b       L802F1BA8
	nop
.globl L802F1B38
L802F1B38:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x000D
	sw      $t2, 0x014C($t3)
	lui     $t4, %hi(object_b_80361450)
	lw      $t4, %lo(object_b_80361450)($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t5, 0x0002($t4)
	andi    $t6, $t5, 0x00FF
	sll     $t7, $t6, 8
	sw      $t7, 0x00C8($t8)
	lui     $t9, %hi(object_b_80361450)
	lw      $t9, %lo(object_b_80361450)($t9)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t0, 0x0002($t9)
	andi    $t1, $t0, 0xFF00
	sra     $t2, $t1, 8
	subu    $t3, $0, $t2
	sll     $t4, $t3, 1
	addiu   $t5, $t4, 0x0008
	mtc1    $t5, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00B8($t6)
	b       L802F1BA8
	nop
.globl L802F1BA8
L802F1BA8:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F1BB8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x000A
	lw      $s0, 0x014C($t6)
	beq     $s0, $at, .L802F1C08
	nop
	li      $at, 0x000B
	beq     $s0, $at, .L802F1C54
	nop
	li      $at, 0x000C
	beq     $s0, $at, .L802F1CA0
	nop
	li      $at, 0x000D
	beq     $s0, $at, .L802F1CE8
	nop
	b       .L802F1D40
	nop
.L802F1C08:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x000A
	beqz    $at, .L802F1C4C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00DC($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00DC($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x2000
	sw      $t0, 0x00D0($t1)
.L802F1C4C:
	b       .L802F1D40
	nop
.L802F1C54:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x000A
	beqz    $at, .L802F1C88
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0xC0400000
	mtc1    $at, $f16
	lwc1    $f10, 0x00DC($t4)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00DC($t4)
.L802F1C88:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x2000
	sw      $t5, 0x00D0($t6)
	b       .L802F1D40
	nop
.L802F1CA0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00DC($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00DC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0015
	bnez    $at, .L802F1CE0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
.L802F1CE0:
	b       .L802F1D40
	nop
.L802F1CE8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0xC0C00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00DC($t1)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00DC($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0015
	bnez    $at, .L802F1D28
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
.L802F1D28:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x2000
	sw      $t5, 0x00D0($t6)
	b       .L802F1D40
	nop
.L802F1D40:
	jal     object_b_802F1A10
	nop
	b       .L802F1D50
	nop
.L802F1D50:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F1D64
object_b_802F1D64:
	lui     $at, %hi(object_b_803387D8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_803387D8)($at)
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_803387DC)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_803387DC)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_803387E0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_803387E0)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x00FF
	sw      $t9, 0x017C($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F1DC0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	addiu   $t8, $t7, 0x2000
	sw      $t8, 0x00F8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lhu     $t0, 0x00FA($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	lui     $at, %hi(object_b_803387E8)
	ldc1    $f8, %lo(object_b_803387E8)($at)
	cvt.d.s $f6, $f4
	lui     $at, %hi(object_b_803387F0)
	mul.d   $f10, $f6, $f8
	ldc1    $f16, %lo(object_b_803387F0)($at)
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0030($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x00010000
	lw      $t4, 0x00F8($t3)
	bne     $t4, $at, .L802F1E4C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00F8($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x00F4($t8)
.L802F1E4C:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F1E5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43000000
	mtc1    $at, $f6
	lw      $t7, 0x00D4($t6)
	lwc1    $f4, 0x00B8($t6)
	mtc1    $t7, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x00D4($t6)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lh      $t0, 0x001E($sp)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L802F1F04
	nop
	jal     object_b_802F1A10
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f10
	lwc1    $f6, 0x00B0($t2)
	c.eq.s  $f6, $f10
	nop
	bc1t    .L802F1F04
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x00F4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t5)
.L802F1F04:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, .L802F1F24
	nop
	jal     object_b_802F1DC0
	nop
.L802F1F24:
	b       .L802F1F2C
	nop
.L802F1F2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F1F3C
object_b_802F1F3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802F1F70
	nop
	b       .L802F1F60
	nop
.L802F1F60:
	jal     object_b_802F1E5C
	nop
	b       .L802F1F88
	nop
.L802F1F70:
	jal     object_b_802E4E90
	nop
	jal     object_b_802F1BB8
	nop
	b       .L802F1F88
	nop
.L802F1F88:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0015
	bnez    $at, .L802F1FA8
	nop
	jal     obj_lib_802A05D4
	nop
.L802F1FA8:
	jal     object_b_802F19C8
	nop
	jal     object_b_802F1954
	nop
	b       .L802F1FC0
	nop
.L802F1FC0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F1FD0
object_b_802F1FD0:
	lui     $at, %hi(object_b_803387F8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_803387F8)($at)
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_803387FC)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_803387FC)($at)
	swc1    $f6, 0x0170($t7)
	li      $at, 0x3FC00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x00FF
	sw      $t9, 0x017C($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F2030:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43000000
	mtc1    $at, $f6
	lw      $t7, 0x00D4($t6)
	lwc1    $f4, 0x00B8($t6)
	mtc1    $t7, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x00D4($t6)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lh      $t0, 0x001E($sp)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L802F2094
	nop
	jal     object_b_802F1A10
	nop
.L802F2094:
	b       .L802F209C
	nop
.L802F209C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F20AC
object_b_802F20AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802F20E0
	nop
	b       .L802F20D0
	nop
.L802F20D0:
	jal     object_b_802F2030
	nop
	b       .L802F20F8
	nop
.L802F20E0:
	jal     object_b_802E4E90
	nop
	jal     object_b_802F1BB8
	nop
	b       .L802F20F8
	nop
.L802F20F8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0015
	bnez    $at, .L802F2118
	nop
	jal     obj_lib_802A05D4
	nop
.L802F2118:
	jal     object_b_802F1954
	nop
	jal     object_b_802F19C8
	nop
	b       .L802F2130
	nop
.L802F2130:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F2140
object_b_802F2140:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_b_80338800)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_80338800)($at)
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338804)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338804)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_80338808)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338808)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x00FF
	sw      $t9, 0x017C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00A0($t1)
	lwc1    $f18, 0x00A4($t1)
	lwc1    $f6, 0x00A8($t1)
	trunc.w.s $f16, $f10
	trunc.w.s $f4, $f18
	mfc1    $a0, $f16
	trunc.w.s $f8, $f6
	mfc1    $a1, $f4
	mfc1    $a2, $f8
	jal     save_cap_set
	nop
	b       .L802F21D0
	nop
.L802F21D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F21E0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     save_flag_clr
	li      $a0, 0x00010000
	lui     $s0, %hi(course_index)
	lh      $s0, %lo(course_index)($s0)
	li      $at, 0x0008
	beq     $s0, $at, .L802F2228
	nop
	li      $at, 0x000A
	beq     $s0, $at, .L802F2238
	nop
	li      $at, 0x000C
	beq     $s0, $at, .L802F2248
	nop
	b       .L802F2258
	nop
.L802F2228:
	jal     save_flag_set
	li      $a0, 0x00020000
	b       .L802F2268
	nop
.L802F2238:
	jal     save_flag_set
	li      $a0, 0x00080000
	b       .L802F2268
	nop
.L802F2248:
	jal     save_flag_set
	li      $a0, 0x00040000
	b       .L802F2268
	nop
.L802F2258:
	jal     save_flag_set
	li      $a0, 0x00020000
	b       .L802F2268
	nop
.L802F2268:
	b       .L802F2270
	nop
.L802F2270:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F2284:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43000000
	mtc1    $at, $f6
	lw      $t7, 0x00D4($t6)
	lwc1    $f4, 0x00B8($t6)
	mtc1    $t7, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x00D4($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x42A00000
	mtc1    $at, $f10
	lw      $t1, 0x00D0($t0)
	lwc1    $f6, 0x00B8($t0)
	mtc1    $t1, $f8
	mul.s   $f16, $f6, $f10
	cvt.s.w $f18, $f8
	add.s   $f4, $f18, $f16
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sw      $t3, 0x00D0($t0)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lh      $t4, 0x001E($sp)
	andi    $t5, $t4, 0x0001
	beqz    $t5, .L802F2370
	nop
	jal     object_b_802F1A10
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f8
	lwc1    $f10, 0x00B0($t7)
	c.eq.s  $f10, $f8
	nop
	bc1t    .L802F2370
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x00F4($t9)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B0($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D0($t1)
.L802F2370:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x00F4($t2)
	bne     $t3, $at, .L802F2390
	nop
	jal     object_b_802F1DC0
	nop
.L802F2390:
	b       .L802F2398
	nop
.L802F2398:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F23A8
object_b_802F23A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802F23DC
	nop
	b       .L802F23CC
	nop
.L802F23CC:
	jal     object_b_802F2284
	nop
	b       .L802F23F4
	nop
.L802F23DC:
	jal     object_b_802E4E90
	nop
	jal     object_b_802F1BB8
	nop
	b       .L802F23F4
	nop
.L802F23F4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00B8($t8)
	trunc.w.s $f6, $f4
	mfc1    $t0, $f6
	nop
	beqz    $t0, .L802F2448
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x00A0($t1)
	lwc1    $f16, 0x00A4($t1)
	lwc1    $f4, 0x00A8($t1)
	trunc.w.s $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $a0, $f10
	trunc.w.s $f6, $f4
	mfc1    $a1, $f18
	mfc1    $a2, $f6
	jal     save_cap_set
	nop
.L802F2448:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x0074($t5)
	bnez    $t6, .L802F2464
	nop
	jal     object_b_802F21E0
	nop
.L802F2464:
	jal     object_b_802F1954
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802F2480
	nop
	jal     save_flag_clr
	li      $a0, 0x00010000
.L802F2480:
	b       .L802F2488
	nop
.L802F2488:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F2498
object_b_802F2498:
	lui     $at, %hi(object_b_8033880C)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_8033880C)($at)
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338810)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338810)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_80338814)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338814)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0096
	sw      $t9, 0x017C($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F24F4
object_b_802F24F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 24
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x001F($sp)
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	sb      $v0, 0x001E($sp)
	lb      $t1, 0x001F($sp)
	lbu     $t0, 0x001E($sp)
	li      $t2, 0x0001
	sllv    $t3, $t2, $t1
	and     $t4, $t0, $t3
	beqz    $t4, .L802F256C
	nop
	lui     $t5, %hi(shape_table)
	lw      $t5, %lo(shape_table)($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x01E4($t5)
	b       .L802F2584
	sw      $t6, 0x0014($t7)
.L802F256C:
	lui     $t8, %hi(shape_table)
	lw      $t8, %lo(shape_table)($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t9, 0x01E8($t8)
	sw      $t9, 0x0014($t2)
.L802F2584:
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332784
	la.l    $a1, object_b_80332784
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802F25A0
	nop
.L802F25A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F25B0
object_b_802F25B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, 0x0800
	sw      $t8, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L802F25FC
	nop
	lui     $a0, %hi(object)
	jal     obj_list_802CA028
	lw      $a0, %lo(object)($a0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
.L802F25FC:
	b       .L802F2604
	nop
.L802F2604:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F2614
object_b_802F2614:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x016C($t6)
	lwc1    $f6, 0x00A8($t6)
	lwc1    $f8, 0x0164($t6)
	lwc1    $f10, 0x00A0($t6)
	sub.s   $f12, $f4, $f6
	jal     atan2
	sub.s   $f14, $f8, $f10
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x016C($t8)
	lwc1    $f18, 0x00A8($t8)
	lwc1    $f8, 0x0164($t8)
	lwc1    $f10, 0x00A0($t8)
	sub.s   $f4, $f16, $f18
	sub.s   $f16, $f8, $f10
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f18, $f16, $f16
	jal     sqrtf
	add.s   $f12, $f6, $f18
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	swc1    $f0, 0x00F4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lwc1    $f4, 0x0168($t0)
	lwc1    $f8, 0x00A4($t0)
	sub.s   $f10, $f4, $f8
	div.s   $f6, $f10, $f16
	swc1    $f6, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lwc1    $f18, 0x00F4($t1)
	div.s   $f8, $f18, $f4
	swc1    $f8, 0x00B8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x00A4($t2)
	swc1    $f10, 0x00FC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0144($t3)
	beqz    $t4, .L802F2704
	nop
	lui     $t5, %hi(course_index)
	lh      $t5, %lo(course_index)($t5)
	li      $at, 0x0005
	bne     $t5, $at, .L802F271C
	nop
.L802F2704:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00AD
	b       .L802F272C
	nop
.L802F271C:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00B0
.L802F272C:
	jal     obj_lib_802A4750
	li      $a0, 0x000A
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0020
	sh      $t8, 0x0074($t6)
	jal     obj_lib_802A05B4
	nop
	b       .L802F2758
	nop
.L802F2758:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F2768
object_b_802F2768:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F27B4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F27F8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F28F0
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802F29F4
	nop
	b       .L802F2A84
	nop
.L802F27B4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00D4($t7)
	addiu   $t9, $t8, 0x1000
	sw      $t9, 0x00D4($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0015
	bnez    $at, .L802F27F0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
.L802F27F0:
	b       .L802F2A84
	nop
.L802F27F8:
	lui     $a0, %hi(object)
	jal     object_b_802E5160
	lw      $a0, %lo(object)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00FC($t4)
	lwc1    $f6, 0x00B0($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00FC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x001E
	lw      $t6, 0x0154($t5)
	lwc1    $f4, 0x00FC($t5)
	sll     $t8, $t6, 15
	div     $0, $t8, $at
	mflo    $t9
	andi    $t7, $t9, 0xFFFF
	sra     $t0, $t7, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A4($t5)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D4($t2)
	addiu   $t4, $t3, 0x1000
	sw      $t4, 0x00D4($t2)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	li.u    $a0, 0x40140011
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40140011
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x001E
	lw      $t8, 0x0154($t6)
	bne     $t8, $at, .L802F28E8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t0)
	jal     Na_g_80322168
	li      $a0, 0x0001
.L802F28E8:
	b       .L802F2A84
	nop
.L802F28F0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t5, 0x0154($t1)
	slti    $at, $t5, 0x0014
	beqz    $at, .L802F2930
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0014
	lw      $t4, 0x0154($t3)
	subu    $t6, $t2, $t4
	mtc1    $t6, $f10
	nop
	cvt.s.w $f16, $f10
	b       .L802F2948
	swc1    $f16, 0x00B0($t3)
.L802F2930:
	li      $at, 0xC1200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t8)
.L802F2948:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	lui     $a0, %hi(object)
	jal     object_b_802E5160
	lw      $a0, %lo(object)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	lw      $t7, 0x00D4($t9)
	sll     $t1, $t0, 4
	subu    $t5, $t7, $t1
	addiu   $t2, $t5, 0x1000
	sw      $t2, 0x00D4($t9)
	li.u    $a0, 0x40140011
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40140011
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00A4($t4)
	lwc1    $f6, 0x0168($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802F29EC
	nop
	li.u    $a0, 0x3057FF91
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x3057FF91
	jal     obj_lib_802A05D4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x0168($t6)
	swc1    $f8, 0x00A4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t8)
.L802F29EC:
	b       .L802F2A84
	nop
.L802F29F4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x00D4($t0)
	addiu   $t1, $t7, 0x0800
	sw      $t1, 0x00D4($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0014
	lw      $t2, 0x0154($t5)
	bne     $t2, $at, .L802F2A4C
	nop
	li      $t9, 0x0001
	lui     $at, %hi(_camera_bss+0x6A8)
	sw      $t9, %lo(_camera_bss+0x6A8)($at)
	jal     obj_lib_802A4774
	li      $a0, 0x000A
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0021
	lh      $t6, 0x0074($t4)
	and     $t3, $t6, $at
	sh      $t3, 0x0074($t4)
.L802F2A4C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0134($t8)
	andi    $t1, $t7, 0x8000
	beqz    $t1, .L802F2A7C
	nop
	lui     $a0, %hi(object)
	jal     obj_list_802CA028
	lw      $a0, %lo(object)($a0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
.L802F2A7C:
	b       .L802F2A84
	nop
.L802F2A84:
	b       .L802F2A8C
	nop
.L802F2A8C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F2AA0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a3, o_13003E64
	la.l    $a3, o_13003E64
	lwc1    $f4, 0x00A0($t6)
	move    $a1, $0
	li      $a2, 0x007A
	trunc.w.s $f6, $f4
	move    $a0, $t6
	mfc1    $t8, $f6
	nop
	sw      $t8, 0x0010($sp)
	lwc1    $f8, 0x00A4($t6)
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sw      $t0, 0x0014($sp)
	lwc1    $f16, 0x00A8($t6)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	trunc.w.s $f18, $f16
	sw      $0, 0x001C($sp)
	mfc1    $t2, $f18
	jal     obj_lib_8029E9AC
	sw      $t2, 0x0018($sp)
	sw      $v0, 0x0030($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0030($sp)
	lw      $t4, 0x0188($t3)
	sw      $t4, 0x0188($t5)
	lwc1    $f4, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	swc1    $f4, 0x0164($t7)
	lwc1    $f6, 0x0038($sp)
	lw      $t8, 0x0030($sp)
	swc1    $f6, 0x0168($t8)
	lwc1    $f8, 0x003C($sp)
	lw      $t9, 0x0030($sp)
	swc1    $f8, 0x016C($t9)
	lw      $t0, 0x0030($sp)
	sw      $0, 0x00D0($t0)
	lw      $t6, 0x0030($sp)
	sw      $0, 0x00D8($t6)
	b       .L802F2B78
	lw      $v0, 0x0030($sp)
	b       .L802F2B78
	nop
.L802F2B78:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_b_802F2B88
object_b_802F2B88:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     object_b_802F2AA0
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	sw      $0, 0x0144($t6)
	b       .L802F2BC4
	nop
.L802F2BC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F2BD4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     object_b_802F2AA0
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0144($t7)
	b       .L802F2C14
	nop
.L802F2C14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F2C24:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     object_b_802F2AA0
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0144($t7)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0190($t8)
	ori     $t0, $t9, 0x0400
	sw      $t0, 0x0190($t8)
	b       .L802F2C74
	nop
.L802F2C74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F2C84
object_b_802F2C84:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	lui     $t6, %hi(course_index)
	lh      $t6, %lo(course_index)($t6)
	li      $at, 0x0003
	beq     $t6, $at, .L802F2CB8
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300556C
	la.l    $a2, o_1300556C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0079
.L802F2CB8:
	la.u    $a0, o_redcoin
	jal     obj_lib_8029FBDC
	la.l    $a0, o_redcoin
	sh      $v0, 0x0036($sp)
	lh      $t7, 0x0036($sp)
	bnez    $t7, .L802F2D5C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a3, o_13003E3C
	la.l    $a3, o_13003E3C
	lwc1    $f4, 0x00A0($t8)
	move    $a1, $0
	li      $a2, 0x007A
	trunc.w.s $f6, $f4
	move    $a0, $t8
	mfc1    $t0, $f6
	nop
	sw      $t0, 0x0010($sp)
	lwc1    $f8, 0x00A4($t8)
	trunc.w.s $f10, $f8
	mfc1    $t2, $f10
	nop
	sw      $t2, 0x0014($sp)
	lwc1    $f16, 0x00A8($t8)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	trunc.w.s $f18, $f16
	sw      $0, 0x001C($sp)
	mfc1    $t4, $f18
	jal     obj_lib_8029E9AC
	sw      $t4, 0x0018($sp)
	sw      $v0, 0x0030($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0030($sp)
	lw      $t6, 0x0188($t5)
	sw      $t6, 0x0188($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
.L802F2D5C:
.if 0
	lh      $t0, 0x0036($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t1, 0x0008
	subu    $t2, $t1, $t0
	sw      $t2, 0x00F4($t8)
.endif
	b       .L802F2D7C
	nop
.L802F2D7C:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802F2D8C
object_b_802F2D8C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(message_803613FE)
	lw      $t7, 0x00F4($t6)
	sb      $t7, %lo(message_803613FE)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, .L802F2DD4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F2E04
	nop
	b       .L802F2E50
	nop
.L802F2DD4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0008
	lw      $t0, 0x00F4($t9)
	bne     $t0, $at, .L802F2DFC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
.L802F2DFC:
	b       .L802F2E50
	nop
.L802F2E04:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0003
	bnez    $at, .L802F2E48
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f12, 0x00A0($t5)
	lwc1    $f14, 0x00A4($t5)
	jal     object_b_802F2BD4
	lw      $a2, 0x00A8($t5)
	jal     obj_lib_802A37AC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
.L802F2E48:
	b       .L802F2E50
	nop
.L802F2E50:
	b       .L802F2E58
	nop
.L802F2E58:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.if 0
.globl o_redcoin_init
o_redcoin_init:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     map_80381900
	lw      $a2, 0x00A8($t6)
	swc1    $f0, 0x0020($sp)
	la.u    $a0, o_13003E8C
	jal     obj_lib_8029F95C
	la.l    $a0, o_13003E8C
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L802F2EC4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x001C($sp)
	b       .L802F2F00
	sw      $t8, 0x0068($t9)
.L802F2EC4:
	la.u    $a0, o_13003EE4
	jal     obj_lib_8029F95C
	la.l    $a0, o_13003EE4
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	beqz    $t0, .L802F2EF4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x001C($sp)
	b       .L802F2F00
	sw      $t1, 0x0068($t2)
.L802F2EF4:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0068($t3)
.L802F2F00:
	lui     $a0, %hi(object)
	la.u    $a1, obj_col_redcoin
	la.l    $a1, obj_col_redcoin
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802F2F1C
	nop
.L802F2F1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl o_redcoin_update
o_redcoin_update:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802F2FFC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	beqz    $t0, .L802F2FE8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	lw      $t3, 0x00F4($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x00F4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0008
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x00F4($t6)
	beq     $t7, $at, .L802F2FB4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $a1, $0
	move    $a2, $0
	lw      $t9, 0x0068($t8)
	move    $a3, $0
	jal     object_b_802E5C6C
	lw      $a0, 0x00F4($t9)
.L802F2FB4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $at, 0x78289081
	li.l    $at, 0x78289081
	lw      $t1, 0x0068($t0)
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	lbu     $a0, 0x00F7($t1)
	addiu   $a0, $a0, -0x0001
	sll     $t3, $a0, 16
	move    $a0, $t3
	jal     Na_SE_play
	addu    $a0, $a0, $at
.L802F2FE8:
	jal     object_b_802E5EA4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
.L802F2FFC:
	b       .L802F3004
	nop
.L802F3004:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop
.endif

.globl object_b_802F3014
object_b_802F3014:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	la.u    $a0, o_13003F1C
	jal     obj_lib_8029FBDC
	la.l    $a0, o_13003F1C
	sh      $v0, 0x0036($sp)
	lh      $t6, 0x0036($sp)
	bnez    $t6, .L802F30C0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a3, o_13003E3C
	la.l    $a3, o_13003E3C
	lwc1    $f4, 0x00A0($t7)
	move    $a1, $0
	li      $a2, 0x007A
	trunc.w.s $f6, $f4
	move    $a0, $t7
	mfc1    $t9, $f6
	nop
	sw      $t9, 0x0010($sp)
	lwc1    $f8, 0x00A4($t7)
	trunc.w.s $f10, $f8
	mfc1    $t1, $f10
	nop
	sw      $t1, 0x0014($sp)
	lwc1    $f16, 0x00A8($t7)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	trunc.w.s $f18, $f16
	sw      $0, 0x001C($sp)
	mfc1    $t3, $f18
	jal     obj_lib_8029E9AC
	sw      $t3, 0x0018($sp)
	sw      $v0, 0x0030($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0030($sp)
	lw      $t5, 0x0188($t4)
	sw      $t5, 0x0188($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0074($t8)
.L802F30C0:
	lh      $t9, 0x0036($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t0, 0x0005
	subu    $t1, $t0, $t9
	sw      $t1, 0x00F4($t7)
	b       .L802F30E0
	nop
.L802F30E0:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802F30F0
object_b_802F30F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F3124
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F3154
	nop
	b       .L802F31A0
	nop
.L802F3124:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, .L802F314C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802F314C:
	b       .L802F31A0
	nop
.L802F3154:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0003
	bnez    $at, .L802F3198
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f12, 0x00A0($t3)
	lwc1    $f14, 0x00A4($t3)
	jal     object_b_802F2BD4
	lw      $a2, 0x00A8($t3)
	jal     obj_lib_802A37AC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
.L802F3198:
	b       .L802F31A0
	nop
.L802F31A0:
	b       .L802F31A8
	nop
.L802F31A8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F31BC
object_b_802F31BC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, .L802F3274
	nop
	la.u    $a0, o_13003EFC
	jal     obj_lib_8029F95C
	la.l    $a0, o_13003EFC
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L802F3268
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F4($t7)
	lw      $t0, 0x001C($sp)
	li      $at, 0x0005
	lw      $t1, 0x00F4($t0)
	beq     $t1, $at, .L802F323C
	nop
	lw      $t2, 0x001C($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     object_b_802E5C6C
	lw      $a0, 0x00F4($t2)
.L802F323C:
	lw      $t3, 0x001C($sp)
	li.u    $at, 0x70302081
	li.l    $at, 0x70302081
	lbu     $a0, 0x00F7($t3)
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	addiu   $a0, $a0, -0x0001
	sll     $t4, $a0, 16
	move    $a0, $t4
	jal     Na_SE_play
	addu    $a0, $a0, $at
.L802F3268:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
.L802F3274:
	b       .L802F327C
	nop
.L802F327C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F328C
object_b_802F328C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(message_803613FE)
	lw      $t7, 0x00F4($t6)
	sb      $t7, %lo(message_803613FE)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, .L802F32D4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F3304
	nop
	b       .L802F3350
	nop
.L802F32D4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0008
	lw      $t0, 0x00F4($t9)
	bne     $t0, $at, .L802F32FC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
.L802F32FC:
	b       .L802F3350
	nop
.L802F3304:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0003
	bnez    $at, .L802F3348
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f12, 0x00A0($t5)
	lwc1    $f14, 0x00A4($t5)
	jal     object_b_802F2C24
	lw      $a2, 0x00A8($t5)
	jal     obj_lib_802A37AC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
.L802F3348:
	b       .L802F3350
	nop
.L802F3350:
	b       .L802F3358
	nop
.L802F3358:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F336C
object_b_802F336C:
	lui     $at, %hi(object_b_80338818)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_80338818)($at)
	swc1    $f4, 0x00F8($t6)
	lui     $at, %hi(object_b_8033881C)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_8033881C)($at)
	swc1    $f6, 0x00FC($t7)
	lui     $at, %hi(object_b_80338820)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338820)($at)
	swc1    $f8, 0x00F4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x226A
	sw      $t9, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00AC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00D0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0114($t5)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F341C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, .L802F3544
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lw      $t1, 0x00C8($t0)
	lwc1    $f6, 0x00A8($t0)
	lwc1    $f4, 0x0028($t9)
	subu    $t2, $0, $t1
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sub.s   $f8, $f4, $f6
	sll     $t5, $t4, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	lwc1    $f4, 0x00A0($t0)
	lwc1    $f18, 0x0020($t9)
	lui     $at, %hi(math_sin)
	mul.s   $f16, $f8, $f10
	sub.s   $f6, $f18, $f4
	addu    $at, $at, $t5
	lwc1    $f8, %lo(math_sin)($at)
	mul.s   $f10, $f8, $f6
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x0024($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f4
	nop
	bc1f    .L802F34D8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0114($t6)
	addiu   $t8, $t7, 0x0010
	b       .L802F34EC
	sw      $t8, 0x0114($t6)
.L802F34D8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0114($t1)
	addiu   $t3, $t2, -0x0010
	sw      $t3, 0x0114($t1)
.L802F34EC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t9, 0x0114($t4)
	slti    $at, $t9, 0x0201
	bnez    $at, .L802F3514
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t0, 0x0200
	sw      $t0, 0x0114($t5)
.L802F3514:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0114($t7)
	slti    $at, $t8, -0x0200
	beqz    $at, .L802F353C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t6, -0x0200
	sw      $t6, 0x0114($t2)
.L802F353C:
	b       .L802F368C
	nop
.L802F3544:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t1, 0x0064
	lw      $a1, 0x0164($t3)
	lw      $a2, 0x0168($t3)
	lw      $a3, 0x016C($t3)
	sw      $t1, 0x0010($sp)
	jal     object_b_802E52B8
	move    $a0, $t3
	beqz    $v0, .L802F35FC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t9, 0x0114($t4)
	beqz    $t9, .L802F35F4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x0114($t0)
	blez    $t5, .L802F35B0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0114($t7)
	addiu   $t6, $t8, -0x0010
	b       .L802F35C4
	sw      $t6, 0x0114($t7)
.L802F35B0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0114($t2)
	addiu   $t1, $t3, 0x0010
	sw      $t1, 0x0114($t2)
.L802F35C4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t9, 0x0114($t4)
	slti    $at, $t9, 0x0010
	beqz    $at, .L802F35F4
	nop
	slti    $at, $t9, -0x000F
	bnez    $at, .L802F35F4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0114($t0)
.L802F35F4:
	b       .L802F368C
	nop
.L802F35FC:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0100
	lw      $t8, 0x0114($t5)
	beq     $t8, $at, .L802F368C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0114($t6)
	slti    $at, $t7, 0x0101
	bnez    $at, .L802F3644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x0114($t3)
	addiu   $t2, $t1, -0x0010
	b       .L802F3658
	sw      $t2, 0x0114($t3)
.L802F3644:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t9, 0x0114($t4)
	addiu   $t0, $t9, 0x0010
	sw      $t0, 0x0114($t4)
.L802F3658:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x0114($t5)
	slti    $at, $t8, 0x0110
	beqz    $at, .L802F368C
	nop
	slti    $at, $t8, 0x00F1
	bnez    $at, .L802F368C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0100
	sw      $t6, 0x0114($t7)
.L802F368C:
	b       .L802F3694
	nop
.L802F3694:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F36A4
object_b_802F36A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A8($t7)
	swc1    $f6, 0x0018($sp)
	jal     object_b_802F341C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0114($t8)
	bgez    $t9, .L802F36F0
	sra     $t0, $t9, 6
	addiu   $at, $t9, 0x003F
	sra     $t0, $at, 6
.L802F36F0:
	mtc1    $t0, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00B8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00CA($t1)
	lwc1    $f18, 0x00B8($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00AC($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	lhu     $t6, 0x00CA($t5)
	lwc1    $f8, 0x00B8($t5)
	sra     $t7, $t6, 4
	sll     $t9, $t7, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B4($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, 0x00A0($t0)
	lwc1    $f18, 0x00AC($t0)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A8($t8)
	lwc1    $f8, 0x00B4($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A8($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x00A8($t2)
	lwc1    $f4, 0x00FC($t2)
	lwc1    $f10, 0x00A0($t2)
	lwc1    $f16, 0x00F4($t2)
	sub.s   $f6, $f18, $f4
	lwc1    $f18, 0x00F8($t2)
	sub.s   $f4, $f10, $f18
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f6, $f4, $f4
	add.s   $f10, $f8, $f6
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802F3828
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x001C($sp)
	swc1    $f4, 0x00A0($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x0018($sp)
	swc1    $f8, 0x00A8($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B4($t7)
.L802F3828:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t5, 0x00D0($t9)
	lw      $t0, 0x0114($t9)
	addu    $t8, $t5, $t0
	sw      $t8, 0x00D0($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D0($t2)
	andi    $t4, $t3, 0x1FFF
	mtc1    $t4, $f10
	jal     object_b_802E3F68
	cvt.s.w $f12, $f10
	li      $at, 0x44040000
	mtc1    $at, $f18
	nop
	c.lt.s  $f0, $f18
	nop
	bc1f    .L802F3898
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t6, 0x0114($t1)
	beqz    $t6, .L802F3898
	nop
	li.u    $a0, 0x32250081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x32250081
.L802F3898:
	b       .L802F38A0
	nop
.L802F38A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F38B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0114($t7)
	lwc1    $f18, 0x00F4($t7)
	mtc1    $t8, $f10
	nop
	cvt.s.w $f16, $f10
	add.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t0, $f6
	nop
	sw      $t0, 0x0114($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D0($t1)
	lw      $t3, 0x0114($t1)
	subu    $t4, $t2, $t3
	sw      $t4, 0x00D0($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D0($t5)
	slti    $at, $t6, -0x4000
	beqz    $at, .L802F399C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, -0x4000
	sw      $t8, 0x00D0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0114($t0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00F4($t7)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
	li.u    $a0, 0x30440081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30440081
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a0, 0x0003
	lw      $a1, 0x00A0($t4)
	lw      $a2, 0x00A4($t4)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t4)
.L802F399C:
	b       .L802F39A4
	nop
.L802F39A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F39B4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0090
	sw      $t6, 0x0114($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D0($t8)
	lw      $t0, 0x0114($t8)
	addu    $t1, $t9, $t0
	sw      $t1, 0x00D0($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D0($t2)
	blez    $t3, .L802F39FC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00D0($t4)
.L802F39FC:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x00C8
	lw      $t6, 0x0154($t5)
	bne     $t6, $at, .L802F3A20
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
.L802F3A20:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F3A30
object_b_802F3A30:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F3A7C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F3AC4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F3AD4
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802F3B6C
	nop
	b       .L802F3B7C
	nop
.L802F3A7C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, .L802F3ABC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
	li.u    $a0, 0x30430081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30430081
.L802F3ABC:
	b       .L802F3B7C
	nop
.L802F3AC4:
	jal     object_b_802F38B0
	nop
	b       .L802F3B7C
	nop
.L802F3AD4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0008
	beqz    $at, .L802F3B30
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lw      $t3, 0x0154($t2)
	lwc1    $f10, 0x0168($t2)
	sll     $t4, $t3, 12
	andi    $t5, $t4, 0xFFFF
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t2)
.L802F3B30:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0032
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L802F3B64
	nop
	li.u    $a0, 0x30450081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30450081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
.L802F3B64:
	b       .L802F3B7C
	nop
.L802F3B6C:
	jal     object_b_802F39B4
	nop
	b       .L802F3B7C
	nop
.L802F3B7C:
	b       .L802F3B84
	nop
.L802F3B84:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F3B98
object_b_802F3B98:
	li      $at, 0x45A00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t6)
	li      $at, 0x45BC0000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00FC($t7)
	li      $at, 0x49800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00F4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x3FFF
	sw      $t9, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00AC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00D0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0114($t5)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F3C54:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, .L802F3CB0
	nop
	li.u    $a0, 0x3058FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x3058FF81
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lb      $t7, 0x00AD($t6)
	addiu   $t8, $t7, 0x0001
	sb      $t8, 0x00AD($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
.L802F3CB0:
	b       .L802F3CB8
	nop
.L802F3CB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F3CC8
object_b_802F3CC8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x4000
	sw      $t6, 0x00C4($t7)
	li      $at, 0x40400000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t8)
	li      $at, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t9)
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F3D30
object_b_802F3D30:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802F3CC8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, .L802F3D80
	nop
	jal     save_flag_get
	nop
	andi    $t8, $v0, 0x0050
	bnez    $t8, .L802F3D78
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
.L802F3D78:
	b       .L802F3DB8
	nop
.L802F3D80:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t1, 0x0144($t0)
	bne     $t1, $at, .L802F3DB8
	nop
	jal     save_flag_get
	nop
	andi    $t2, $v0, 0x00A0
	bnez    $t2, .L802F3DB8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0074($t3)
.L802F3DB8:
	b       .L802F3DC0
	nop
.L802F3DC0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F3DD0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0005
	beqz    $at, .L802F3E00
	nop
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	b       .L802F3E98
	swc1    $f4, 0x00B0($t8)
.L802F3E00:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, -0x1000
	sw      $t9, 0x0114($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C4($t1)
	lw      $t3, 0x0114($t1)
	addu    $t4, $t2, $t3
	sw      $t4, 0x00C4($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	lhu     $t6, 0x00C6($t5)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	li      $at, 0x40000000
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00C6($t9)
	sra     $t2, $t0, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	neg.s   $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t9)
.L802F3E98:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F3EA8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(obj_mario)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(obj_mario)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x0020($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	li      $at, 0x42F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x00A4($t9)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0030($sp)
	lui     $t0, %hi(obj_mario)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, %lo(obj_mario)($t0)
	lwc1    $f10, 0x00A8($t1)
	lwc1    $f8, 0x0028($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f6, 0x002C($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f8, $f6, $f6
	jal     sqrtf
	add.s   $f12, $f4, $f8
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	sh      $v0, 0x002A($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     obj_lib_8029E714
	li      $a3, 0x1000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $a1, 0x002A($sp)
	li      $a2, 0x1000
	jal     obj_lib_8029E530
	lw      $a0, 0x00C4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00C4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x00C6($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x00C6($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	nop
	mul.s   $f8, $f6, $f4
	swc1    $f8, 0x00B8($t8)
	jal     object_b_802F3C54
	nop
	b       .L802F4008
	nop
.L802F4008:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802F401C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x41000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x8000
	lw      $t8, 0x0160($t7)
	addu    $t9, $t8, $at
	sw      $t9, 0x00C8($t7)
	jal     object_b_802F3C54
	nop
	lh      $t0, 0x001A($sp)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L802F4080
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
.L802F4080:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a3, 0x0BB8
	lwc1    $f12, 0x00A0($t4)
	lwc1    $f14, 0x00A4($t4)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t4)
	bnez    $v0, .L802F40B4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
.L802F40B4:
	b       .L802F40BC
	nop
.L802F40BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F40CC
object_b_802F40CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     object_b_802E4E90
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F4114
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F41C4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F41FC
	nop
	b       .L802F421C
	nop
.L802F4114:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0012
	bnez    $at, .L802F4144
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
.L802F4144:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, .L802F416C
	nop
	li.u    $a0, 0x8063D081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x8063D081
.L802F416C:
	jal     object_b_802F3DD0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0025
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, .L802F41BC
	nop
	jal     obj_lib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	li      $at, 0x40000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t5)
.L802F41BC:
	b       .L802F421C
	nop
.L802F41C4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x012D
	bnez    $at, .L802F41EC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
.L802F41EC:
	jal     object_b_802F3C54
	nop
	b       .L802F421C
	nop
.L802F41FC:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x001E
	jal     object_b_802F3C54
	nop
	b       .L802F421C
	nop
.L802F421C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802F4234
	nop
.L802F4234:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F4248
object_b_802F4248:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F4294
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F4344
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F436C
	nop
	b       .L802F438C
	nop
.L802F4294:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0012
	bnez    $at, .L802F42C4
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
.L802F42C4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, .L802F42EC
	nop
	li.u    $a0, 0x8063D081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x8063D081
.L802F42EC:
	jal     object_b_802F3DD0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0025
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, .L802F433C
	nop
	jal     obj_lib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	li      $at, 0x41000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t5)
.L802F433C:
	b       .L802F438C
	nop
.L802F4344:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	jal     object_b_802F401C
	lh      $a0, 0x0026($sp)
	b       .L802F438C
	nop
.L802F436C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x001E
	jal     object_b_802F3C54
	nop
	b       .L802F438C
	nop
.L802F438C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802F43A4
	nop
.L802F43A4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F43B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lh      $t6, 0x001E($sp)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L802F440C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	b       .L802F4430
	swc1    $f10, 0x00B0($t9)
.L802F440C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_b_80338828)
	ldc1    $f4, %lo(object_b_80338828)($at)
	lwc1    $f16, 0x00B8($t0)
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x00B8($t0)
.L802F4430:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x40440000
	mtc1    $at, $f19
	lwc1    $f10, 0x00B8($t1)
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	c.lt.d  $f18, $f16
	nop
	bc1f    .L802F4474
	nop
	li      $at, 0x42200000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t2)
.L802F4474:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a3, 0x1388
	lwc1    $f12, 0x00A0($t3)
	lwc1    $f14, 0x00A4($t3)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t3)
	bnez    $v0, .L802F44A8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802F44A8:
	b       .L802F44B0
	nop
.L802F44B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F44C0
object_b_802F44C0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F4500
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F454C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F455C
	nop
	b       .L802F457C
	nop
.L802F4500:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, .L802F4544
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L802F4544:
	b       .L802F457C
	nop
.L802F454C:
	jal     object_b_802F43B8
	nop
	b       .L802F457C
	nop
.L802F455C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x001E
	jal     object_b_802F3C54
	nop
	b       .L802F457C
	nop
.L802F457C:
	jal     object_b_802F3C54
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	b       .L802F45A4
	nop
.L802F45A4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F45B8
object_b_802F45B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802F3C54
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802F45E0
	nop
.L802F45E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F45F0
object_b_802F45F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F4630
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F4684
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F46B8
	nop
	b       .L802F46E4
	nop
.L802F4630:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, .L802F467C
	nop
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802F467C:
	b       .L802F46E4
	nop
.L802F4684:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	jal     object_b_802F401C
	lh      $a0, 0x0026($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	b       .L802F46E4
	nop
.L802F46B8:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	jal     object_b_802F3C54
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x001E
	b       .L802F46E4
	nop
.L802F46E4:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       .L802F46FC
	nop
.L802F46FC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F4710
object_b_802F4710:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F475C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F47E4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F4818
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802F4844
	nop
	b       .L802F48D8
	nop
.L802F475C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0002($t7)
	ori     $t9, $t8, 0x0010
	sh      $t9, 0x0002($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	lw      $t2, 0x00F4($t0)
	bne     $t1, $t2, .L802F47DC
	nop
	li      $at, 0x42200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t8, 0x0002($t6)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t6)
	li.u    $a0, 0x8063D081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x8063D081
.L802F47DC:
	b       .L802F48D8
	nop
.L802F47E4:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	jal     object_b_802F401C
	lh      $a0, 0x0026($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	b       .L802F48D8
	nop
.L802F4818:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	jal     object_b_802F3C54
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x001E
	b       .L802F48D8
	nop
.L802F4844:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x0154($t7)
	slti    $at, $t0, 0x0012
	bnez    $at, .L802F4880
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
.L802F4880:
	jal     object_b_802F3DD0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0025
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, .L802F48D0
	nop
	jal     obj_lib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	li      $at, 0x41000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t5)
.L802F48D0:
	b       .L802F48D8
	nop
.L802F48D8:
	b       .L802F48E0
	nop
.L802F48E0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F48F4
object_b_802F48F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, .L802F4954
	nop
	la.u    $a0, o_130040EC
	jal     obj_lib_8029F95C
	la.l    $a0, o_130040EC
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L802F4948
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F4($t7)
.L802F4948:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
.L802F4954:
	b       .L802F495C
	nop
.L802F495C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F496C
object_b_802F496C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F49AC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F4A34
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802F4A50
	nop
	b       .L802F4AE4
	nop
.L802F49AC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0002($t7)
	ori     $t9, $t8, 0x0010
	sh      $t9, 0x0002($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	lw      $t2, 0x00F4($t0)
	bne     $t1, $t2, .L802F4A2C
	nop
	li      $at, 0x42200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t8, 0x0002($t6)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t6)
	li.u    $a0, 0x8063D081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x8063D081
.L802F4A2C:
	b       .L802F4AE4
	nop
.L802F4A34:
	jal     object_b_802F3EA8
	nop
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	b       .L802F4AE4
	nop
.L802F4A50:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x0154($t7)
	slti    $at, $t0, 0x0012
	bnez    $at, .L802F4A8C
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
.L802F4A8C:
	jal     object_b_802F3DD0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0025
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, .L802F4ADC
	nop
	jal     obj_lib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	li      $at, 0x41200000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t5)
.L802F4ADC:
	b       .L802F4AE4
	nop
.L802F4AE4:
	b       .L802F4AEC
	nop
.L802F4AEC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F4B00
object_b_802F4B00:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, .L802F4B60
	nop
	la.u    $a0, o_13004148
	jal     obj_lib_8029F95C
	la.l    $a0, o_13004148
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L802F4B54
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F4($t7)
.L802F4B54:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
.L802F4B60:
	b       .L802F4B68
	nop
.L802F4B68:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F4B78
object_b_802F4B78:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x02BC
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	beqz    $v0, .L802F4C50
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t9, o_13004148
	la.l    $t9, o_13004148
	li      $t8, 0x00D4
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	li      $a0, 0x0002
	move    $a1, $0
	li      $a2, 0x0032
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t7, 0x0010($sp)
	sb      $0, 0x002F($sp)
.L802F4BDC:
	lb      $a2, 0x002F($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	subu    $at, $0, $a2
	sll     $t0, $at, 2
	subu    $t0, $t0, $at
	sll     $t0, $t0, 3
	addu    $t0, $t0, $at
	la.u    $t2, o_13004180
	la.l    $t2, o_13004180
	sll     $t0, $t0, 3
	move    $a2, $t0
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a3, $0
	sw      $0, 0x0014($sp)
	jal     obj_lib_8029EF64
	sw      $t1, 0x0010($sp)
	lb      $t3, 0x002F($sp)
	addiu   $t4, $t3, 0x0001
	sll     $t5, $t4, 24
	sra     $t6, $t5, 24
	slti    $at, $t6, 0x0002
	bnez    $at, .L802F4BDC
	sb      $t4, 0x002F($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
.L802F4C50:
	b       .L802F4C58
	nop
.L802F4C58:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802F4C68:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x013C($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x013C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x42240000
	mtc1    $at, $f16
	lwc1    $f10, 0x013C($t7)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802F4CD0
	nop
	li      $at, 0x42240000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x013C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
.L802F4CD0:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F4CE0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t8, %hi(object_b_803327A4)
	lb      $t8, %lo(object_b_803327A4)($t8)
	lw      $t7, 0x0144($t6)
	bne     $t7, $t8, .L802F4D04
	nop
	jr      $ra
	nop
.L802F4D04:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x013C($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x013C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x424C0000
	mtc1    $at, $f16
	lwc1    $f10, 0x013C($t0)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802F4D68
	nop
	li      $at, 0x424C0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x013C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
.L802F4D68:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F4D78
object_b_802F4D78:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F4DB8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F4E2C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F4E3C
	nop
	b       .L802F4E4C
	nop
.L802F4DB8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x001E
	beqz    $at, .L802F4DD8
	nop
	b       .L802F4E4C
	nop
.L802F4DD8:
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0214($t9)
	bne     $t0, $t1, .L802F4E24
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_803327A4)
	lw      $t3, 0x0144($t2)
	sb      $t3, %lo(object_b_803327A4)($at)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	li.u    $a0, 0x303E0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x303E0081
.L802F4E24:
	b       .L802F4E4C
	nop
.L802F4E2C:
	jal     object_b_802F4C68
	nop
	b       .L802F4E4C
	nop
.L802F4E3C:
	jal     object_b_802F4CE0
	nop
	b       .L802F4E4C
	nop
.L802F4E4C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x00AC($t7)
	swc1    $f4, 0x00AC($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lwc1    $f6, 0x00B4($t9)
	swc1    $f6, 0x00B4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lh      $t2, 0x0074($t1)
	bnez    $t2, .L802F4E98
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0074($t3)
.L802F4E98:
	b       .L802F4EA0
	nop
.L802F4EA0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F4EB4
object_b_802F4EB4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130041F0
	li      $t6, 0x0033
	li      $t7, 0x00CC
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a2, o_130041F0
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0037
	move    $a3, $0
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lw      $t9, 0x0034($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0144($t9)
	lui     $a0, %hi(object)
	la.u    $a2, o_130041F0
	li      $t0, 0x0033
	li      $t1, -0x00CC
	li      $t2, -0x8000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a2, o_130041F0
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0037
	move    $a3, $0
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lw      $t4, 0x0034($sp)
	li      $t3, 0x0002
	sw      $t3, 0x0144($t4)
	lui     $a0, %hi(object)
	la.u    $a2, o_130041F0
	li      $t5, 0x0033
	li      $t6, 0x4000
	sw      $t6, 0x001C($sp)
	sw      $t5, 0x0010($sp)
	la.l    $a2, o_130041F0
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0037
	li      $a3, 0x00CC
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lw      $t8, 0x0034($sp)
	li      $t7, 0x0003
	sw      $t7, 0x0144($t8)
	lui     $a0, %hi(object)
	la.u    $a2, o_130041F0
	li      $t9, 0x0033
	li      $t0, -0x4000
	sw      $t0, 0x001C($sp)
	sw      $t9, 0x0010($sp)
	la.l    $a2, o_130041F0
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0037
	li      $a3, -0x00CC
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	li      $t1, 0x0004
	sw      $t1, 0x0144($t2)
	lui     $at, %hi(object_b_803327A4)
	sb      $0, %lo(object_b_803327A4)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00A4($t3)
	swc1    $f4, 0x00FC($t3)
	b       .L802F5000
	nop
.L802F5000:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802F5010:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lb      $t6, 0x001B($sp)
	sw      $t6, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
	li      $t9, 0x0005
	lui     $at, %hi(object_b_803327A4)
	sb      $t9, %lo(object_b_803327A4)($at)
	li.u    $a0, 0x30404081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30404081
	b       .L802F5058
	nop
.L802F5058:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F5068:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0001
	lb      $t7, 0x0001($t6)
	beq     $t7, $at, .L802F50B4
	nop
	lb      $t8, 0x0000($t6)
	li      $at, 0x0001
	bne     $t8, $at, .L802F50C4
	nop
	lb      $t9, 0x0002($t6)
	li      $at, 0x0001
	bne     $t9, $at, .L802F50C4
	nop
.L802F50B4:
	jal     object_b_802F5010
	lb      $a0, 0x001B($sp)
	b       .L802F525C
	nop
.L802F50C4:
	lw      $t0, 0x001C($sp)
	li      $at, 0x0001
	lb      $t1, 0x0000($t0)
	bne     $t1, $at, .L802F5190
	nop
	lb      $t2, 0x001B($sp)
	li      $at, 0x0001
	beq     $t2, $at, .L802F50F4
	nop
	li      $at, 0x0002
	bne     $t2, $at, .L802F5110
	nop
.L802F50F4:
	lw      $t3, 0x0020($sp)
	lwc1    $f4, 0x0008($t3)
	trunc.w.s $f6, $f4
	mfc1    $t5, $f6
	nop
	bnez    $t5, .L802F5148
	nop
.L802F5110:
	lb      $t7, 0x001B($sp)
	li      $at, 0x0003
	beq     $t7, $at, .L802F512C
	nop
	li      $at, 0x0004
	bne     $t7, $at, .L802F5158
	nop
.L802F512C:
	lw      $t8, 0x0020($sp)
	lwc1    $f8, 0x0000($t8)
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	beqz    $t9, .L802F5158
	nop
.L802F5148:
	jal     object_b_802F5010
	lb      $a0, 0x001B($sp)
	b       .L802F5190
	nop
.L802F5158:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0020($sp)
	lwc1    $f16, 0x00A0($t0)
	lwc1    $f18, 0x0000($t1)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0020($sp)
	lwc1    $f6, 0x00A8($t2)
	lwc1    $f8, 0x0008($t3)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A8($t2)
.L802F5190:
	lw      $t4, 0x001C($sp)
	li      $at, 0x0001
	lb      $t5, 0x0002($t4)
	bne     $t5, $at, .L802F525C
	nop
	lb      $t7, 0x001B($sp)
	li      $at, 0x0001
	beq     $t7, $at, .L802F51C0
	nop
	li      $at, 0x0002
	bne     $t7, $at, .L802F51DC
	nop
.L802F51C0:
	lw      $t8, 0x0028($sp)
	lwc1    $f16, 0x0008($t8)
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	bnez    $t9, .L802F5214
	nop
.L802F51DC:
	lb      $t1, 0x001B($sp)
	li      $at, 0x0003
	beq     $t1, $at, .L802F51F8
	nop
	li      $at, 0x0004
	bne     $t1, $at, .L802F5224
	nop
.L802F51F8:
	lw      $t0, 0x0028($sp)
	lwc1    $f4, 0x0000($t0)
	trunc.w.s $f6, $f4
	mfc1    $t2, $f6
	nop
	beqz    $t2, .L802F5224
	nop
.L802F5214:
	jal     object_b_802F5010
	lb      $a0, 0x001B($sp)
	b       .L802F525C
	nop
.L802F5224:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f8, 0x00A0($t4)
	lwc1    $f10, 0x0000($t5)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0028($sp)
	lwc1    $f18, 0x00A8($t7)
	lwc1    $f4, 0x0008($t8)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t7)
.L802F525C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x0190
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	bnez    $v0, .L802F52A8
	nop
	li      $t9, 0x0006
	lui     $at, %hi(object_b_803327A4)
	sb      $t9, %lo(object_b_803327A4)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t1, 0x0001
	sw      $t1, 0x0100($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0154($t3)
.L802F52A8:
	b       .L802F52B0
	nop
.L802F52B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F52C0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x00F8($t6)
	beq     $t7, $at, .L802F52E4
	nop
	li      $at, 0x0002
	bne     $t7, $at, .L802F5380
	nop
.L802F52E4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lw      $t9, 0x0154($t8)
	sll     $t0, $t9, 12
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_b_80338830)
	ldc1    $f8, %lo(object_b_80338830)($at)
	cvt.d.s $f6, $f4
	li      $at, 0x40240000
	mul.d   $f10, $f6, $f8
	mtc1    $at, $f17
	nop
	mul.d   $f18, $f10, $f16
	trunc.w.d $f4, $f18
	swc1    $f4, 0x00D0($t8)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lw      $t6, 0x0154($t5)
	lwc1    $f16, 0x00FC($t5)
	sll     $t7, $t6, 13
	andi    $t9, $t7, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	b       .L802F5418
	swc1    $f18, 0x00A4($t5)
.L802F5380:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lw      $t3, 0x0154($t2)
	sll     $t4, $t3, 12
	andi    $t8, $t4, 0xFFFF
	sra     $t6, $t8, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_b_80338838)
	ldc1    $f8, %lo(object_b_80338838)($at)
	cvt.d.s $f6, $f4
	li      $at, 0x40240000
	mul.d   $f10, $f6, $f8
	mtc1    $at, $f17
	nop
	mul.d   $f18, $f10, $f16
	trunc.w.d $f4, $f18
	swc1    $f4, 0x00D8($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lw      $t1, 0x0154($t0)
	lwc1    $f16, 0x00FC($t0)
	sll     $t5, $t1, 13
	andi    $t3, $t5, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t8, $t4, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t0)
.L802F5418:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0020
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802F546C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_803327A4)
	lw      $t2, 0x00F8($t9)
	sb      $t2, %lo(object_b_803327A4)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D0($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00D8($t5)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00FC($t3)
	swc1    $f4, 0x00A4($t3)
.L802F546C:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F547C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_mario)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(obj_mario)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x0020($t6)
	sub.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	sh      $t9, 0x001E($sp)
	lui     $t0, %hi(obj_mario)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, %lo(obj_mario)($t0)
	lwc1    $f18, 0x00A8($t1)
	lwc1    $f16, 0x0028($t0)
	sub.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x001C($sp)
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0214($t4)
	beq     $t5, $t6, .L802F5518
	nop
	la.u    $a0, o_130041F0
	jal     obj_lib_8029F95C
	la.l    $a0, o_130041F0
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t8, 0x0214($t7)
	bne     $v0, $t8, .L802F558C
	nop
.L802F5518:
	lh      $t9, 0x001C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sll     $t0, $t9, 2
	sw      $t0, 0x00D0($t1)
	lh      $t2, 0x001E($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	subu    $t3, $0, $t2
	sll     $t4, $t3, 2
	sw      $t4, 0x00D8($t5)
	lui     $t6, %hi(object_b_803327A4)
	lb      $t6, %lo(object_b_803327A4)($t6)
	li      $at, 0x0006
	bne     $t6, $at, .L802F5584
	nop
	lui     $at, %hi(object_b_803327A4)
	sb      $0, %lo(object_b_803327A4)($at)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0011
	lh      $t9, 0x0002($t8)
	and     $t0, $t9, $at
	sh      $t0, 0x0002($t8)
.L802F5584:
	b       .L802F558C
	nop
.L802F558C:
	b       .L802F5594
	nop
.L802F5594:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F55A4
object_b_802F55A4:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x011C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0114($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00AC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B4($t9)
	lui     $t0, %hi(object_b_803327A4)
	lbu     $t0, %lo(object_b_803327A4)($t0)
	sltiu   $at, $t0, 0x0007
	beqz    $at, .L802F5C5C
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(object_b_80338840)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_b_80338840)($at)
	jr      $t0
	nop
.globl L802F5618
L802F5618:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D0($t1)
	bgez    $t2, .L802F5634
	sra     $t3, $t2, 1
	addiu   $at, $t2, 0x0001
	sra     $t3, $at, 1
.L802F5634:
	sw      $t3, 0x00D0($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	bgez    $t5, .L802F5654
	sra     $t6, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t6, $at, 1
.L802F5654:
	sw      $t6, 0x00D8($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t8, 0x0100($t7)
	bne     $t8, $at, .L802F5698
	nop
	lw      $t9, 0x0154($t7)
	slti    $at, $t9, 0x001F
	bnez    $at, .L802F5698
	nop
	li      $t0, 0x0006
	lui     $at, %hi(object_b_803327A4)
	sb      $t0, %lo(object_b_803327A4)($at)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0154($t2)
.L802F5698:
	b       .L802F5C5C
	nop
.globl L802F56A0
L802F56A0:
	li      $at, 0x41200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B4($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_80338860)
	ldc1    $f18, %lo(object_b_80338860)($at)
	lwc1    $f10, 0x00A0($t1)
	lwc1    $f8, 0x00A8($t1)
	lui     $at, %hi(object_b_80338868)
	cvt.d.s $f16, $f10
	cvt.d.s $f10, $f8
	add.d   $f4, $f16, $f18
	ldc1    $f16, %lo(object_b_80338868)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t1)
	add.d   $f18, $f10, $f16
	addiu   $a0, $sp, 0x0048
	cvt.s.d $f6, $f4
	cvt.s.d $f4, $f18
	mfc1    $a1, $f6
	mtc1    $at, $f6
	mfc1    $a3, $f4
	jal     object_b_802E569C
	swc1    $f6, 0x0010($sp)
	addiu   $t5, $sp, 0x0054
	sb      $v0, 0x0000($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_80338870)
	ldc1    $f16, %lo(object_b_80338870)($at)
	lwc1    $f8, 0x00A8($t6)
	li      $at, 0x42480000
	mtc1    $at, $f6
	cvt.d.s $f10, $f8
	lw      $a1, 0x00A0($t6)
	add.d   $f18, $f10, $f16
	lw      $a2, 0x00A4($t6)
	addiu   $a0, $sp, 0x003C
	swc1    $f6, 0x0010($sp)
	cvt.s.d $f4, $f18
	mfc1    $a3, $f4
	jal     object_b_802E569C
	nop
	addiu   $t4, $sp, 0x0054
	sb      $v0, 0x0001($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_b_80338878)
	ldc1    $f16, %lo(object_b_80338878)($at)
	lwc1    $f8, 0x00A0($t8)
	lwc1    $f6, 0x00A8($t8)
	lui     $at, %hi(object_b_80338880)
	cvt.d.s $f10, $f8
	cvt.d.s $f8, $f6
	sub.d   $f18, $f10, $f16
	ldc1    $f10, %lo(object_b_80338880)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t8)
	add.d   $f16, $f8, $f10
	addiu   $a0, $sp, 0x0030
	cvt.s.d $f4, $f18
	cvt.s.d $f18, $f16
	mfc1    $a1, $f4
	mtc1    $at, $f4
	mfc1    $a3, $f18
	jal     object_b_802E569C
	swc1    $f4, 0x0010($sp)
	addiu   $t7, $sp, 0x0054
	sb      $v0, 0x0002($t7)
	addiu   $t9, $sp, 0x0030
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0002
	addiu   $a1, $sp, 0x0054
	addiu   $a2, $sp, 0x0048
	jal     object_b_802F5068
	addiu   $a3, $sp, 0x003C
	b       .L802F5C5C
	nop
.globl L802F57E8
L802F57E8:
	li      $at, 0xC1200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_80338888)
	ldc1    $f16, %lo(object_b_80338888)($at)
	lwc1    $f8, 0x00A0($t2)
	lwc1    $f6, 0x00A8($t2)
	lui     $at, %hi(object_b_80338890)
	cvt.d.s $f10, $f8
	cvt.d.s $f8, $f6
	add.d   $f18, $f10, $f16
	ldc1    $f10, %lo(object_b_80338890)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t2)
	sub.d   $f16, $f8, $f10
	addiu   $a0, $sp, 0x0048
	cvt.s.d $f4, $f18
	cvt.s.d $f18, $f16
	mfc1    $a1, $f4
	mtc1    $at, $f4
	mfc1    $a3, $f18
	jal     object_b_802E569C
	swc1    $f4, 0x0010($sp)
	addiu   $t3, $sp, 0x0054
	sb      $v0, 0x0000($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_80338898)
	ldc1    $f10, %lo(object_b_80338898)($at)
	lwc1    $f6, 0x00A8($t1)
	li      $at, 0x42480000
	mtc1    $at, $f4
	cvt.d.s $f8, $f6
	lw      $a1, 0x00A0($t1)
	sub.d   $f16, $f8, $f10
	lw      $a2, 0x00A4($t1)
	addiu   $a0, $sp, 0x003C
	swc1    $f4, 0x0010($sp)
	cvt.s.d $f18, $f16
	mfc1    $a3, $f18
	jal     object_b_802E569C
	nop
	addiu   $t5, $sp, 0x0054
	sb      $v0, 0x0001($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803388A0)
	ldc1    $f10, %lo(object_b_803388A0)($at)
	lwc1    $f6, 0x00A0($t6)
	lwc1    $f4, 0x00A8($t6)
	lui     $at, %hi(object_b_803388A8)
	cvt.d.s $f8, $f6
	cvt.d.s $f6, $f4
	sub.d   $f16, $f8, $f10
	ldc1    $f8, %lo(object_b_803388A8)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t6)
	sub.d   $f10, $f6, $f8
	addiu   $a0, $sp, 0x0030
	cvt.s.d $f18, $f16
	cvt.s.d $f16, $f10
	mfc1    $a1, $f18
	mtc1    $at, $f18
	mfc1    $a3, $f16
	jal     object_b_802E569C
	swc1    $f18, 0x0010($sp)
	addiu   $t4, $sp, 0x0054
	sb      $v0, 0x0002($t4)
	addiu   $t8, $sp, 0x0030
	sw      $t8, 0x0010($sp)
	li      $a0, 0x0001
	addiu   $a1, $sp, 0x0054
	addiu   $a2, $sp, 0x0048
	jal     object_b_802F5068
	addiu   $a3, $sp, 0x003C
	b       .L802F5C5C
	nop
.globl L802F5930
L802F5930:
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00AC($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_803388B0)
	ldc1    $f10, %lo(object_b_803388B0)($at)
	lwc1    $f6, 0x00A0($t9)
	lwc1    $f4, 0x00A8($t9)
	lui     $at, %hi(object_b_803388B8)
	cvt.d.s $f8, $f6
	cvt.d.s $f6, $f4
	add.d   $f16, $f8, $f10
	ldc1    $f8, %lo(object_b_803388B8)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t9)
	add.d   $f10, $f6, $f8
	addiu   $a0, $sp, 0x0048
	cvt.s.d $f18, $f16
	cvt.s.d $f16, $f10
	mfc1    $a1, $f18
	mtc1    $at, $f18
	mfc1    $a3, $f16
	jal     object_b_802E569C
	swc1    $f18, 0x0010($sp)
	addiu   $t0, $sp, 0x0054
	sb      $v0, 0x0000($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_803388C0)
	ldc1    $f8, %lo(object_b_803388C0)($at)
	lwc1    $f4, 0x00A0($t2)
	li      $at, 0x42480000
	mtc1    $at, $f18
	cvt.d.s $f6, $f4
	lw      $a2, 0x00A4($t2)
	add.d   $f10, $f6, $f8
	lw      $a3, 0x00A8($t2)
	addiu   $a0, $sp, 0x003C
	swc1    $f18, 0x0010($sp)
	cvt.s.d $f16, $f10
	mfc1    $a1, $f16
	jal     object_b_802E569C
	nop
	addiu   $t3, $sp, 0x0054
	sb      $v0, 0x0001($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_803388C8)
	ldc1    $f8, %lo(object_b_803388C8)($at)
	lwc1    $f4, 0x00A0($t1)
	lwc1    $f18, 0x00A8($t1)
	lui     $at, %hi(object_b_803388D0)
	cvt.d.s $f6, $f4
	cvt.d.s $f4, $f18
	add.d   $f10, $f6, $f8
	ldc1    $f6, %lo(object_b_803388D0)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t1)
	sub.d   $f8, $f4, $f6
	addiu   $a0, $sp, 0x0030
	cvt.s.d $f16, $f10
	cvt.s.d $f10, $f8
	mfc1    $a1, $f16
	mtc1    $at, $f16
	mfc1    $a3, $f10
	jal     object_b_802E569C
	swc1    $f16, 0x0010($sp)
	addiu   $t5, $sp, 0x0054
	sb      $v0, 0x0002($t5)
	addiu   $t6, $sp, 0x0030
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0004
	addiu   $a1, $sp, 0x0054
	addiu   $a2, $sp, 0x0048
	jal     object_b_802F5068
	addiu   $a3, $sp, 0x003C
	b       .L802F5C5C
	nop
.globl L802F5A78
L802F5A78:
	li      $at, 0xC1200000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00AC($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_b_803388D8)
	ldc1    $f8, %lo(object_b_803388D8)($at)
	lwc1    $f4, 0x00A0($t8)
	lwc1    $f18, 0x00A8($t8)
	lui     $at, %hi(object_b_803388E0)
	cvt.d.s $f6, $f4
	cvt.d.s $f4, $f18
	sub.d   $f10, $f6, $f8
	ldc1    $f6, %lo(object_b_803388E0)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t8)
	add.d   $f8, $f4, $f6
	addiu   $a0, $sp, 0x0048
	cvt.s.d $f16, $f10
	cvt.s.d $f10, $f8
	mfc1    $a1, $f16
	mtc1    $at, $f16
	mfc1    $a3, $f10
	jal     object_b_802E569C
	swc1    $f16, 0x0010($sp)
	addiu   $t7, $sp, 0x0054
	sb      $v0, 0x0000($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_803388E8)
	ldc1    $f6, %lo(object_b_803388E8)($at)
	lwc1    $f18, 0x00A0($t9)
	li      $at, 0x42480000
	mtc1    $at, $f16
	cvt.d.s $f4, $f18
	lw      $a2, 0x00A4($t9)
	sub.d   $f8, $f4, $f6
	lw      $a3, 0x00A8($t9)
	addiu   $a0, $sp, 0x003C
	swc1    $f16, 0x0010($sp)
	cvt.s.d $f10, $f8
	mfc1    $a1, $f10
	jal     object_b_802E569C
	nop
	addiu   $t0, $sp, 0x0054
	sb      $v0, 0x0001($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_803388F0)
	ldc1    $f6, %lo(object_b_803388F0)($at)
	lwc1    $f18, 0x00A0($t2)
	lwc1    $f16, 0x00A8($t2)
	lui     $at, %hi(object_b_803388F8)
	cvt.d.s $f4, $f18
	cvt.d.s $f18, $f16
	sub.d   $f8, $f4, $f6
	ldc1    $f4, %lo(object_b_803388F8)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t2)
	sub.d   $f6, $f18, $f4
	addiu   $a0, $sp, 0x0030
	cvt.s.d $f10, $f8
	cvt.s.d $f8, $f6
	mfc1    $a1, $f10
	mtc1    $at, $f10
	mfc1    $a3, $f8
	jal     object_b_802E569C
	swc1    $f10, 0x0010($sp)
	addiu   $t3, $sp, 0x0054
	sb      $v0, 0x0002($t3)
	addiu   $t1, $sp, 0x0030
	sw      $t1, 0x0010($sp)
	li      $a0, 0x0003
	addiu   $a1, $sp, 0x0054
	addiu   $a2, $sp, 0x0048
	jal     object_b_802F5068
	addiu   $a3, $sp, 0x003C
	b       .L802F5C5C
	nop
.globl L802F5BC0
L802F5BC0:
	jal     object_b_802F52C0
	nop
	b       .L802F5CC4
	nop
	b       .L802F5C5C
	nop
.globl L802F5BD8
L802F5BD8:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x0096
	beqz    $v0, .L802F5C54
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $a3, o_130041BC
	la.l    $a3, o_130041BC
	lwc1    $f16, 0x0164($t5)
	move    $a1, $0
	li      $a2, 0x0036
	trunc.w.s $f18, $f16
	move    $a0, $t5
	mfc1    $t4, $f18
	nop
	sw      $t4, 0x0010($sp)
	lwc1    $f4, 0x0168($t5)
	trunc.w.s $f6, $f4
	mfc1    $t7, $f6
	nop
	sw      $t7, 0x0014($sp)
	lwc1    $f8, 0x016C($t5)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	trunc.w.s $f10, $f8
	sw      $0, 0x001C($sp)
	mfc1    $t0, $f10
	jal     obj_lib_8029E9AC
	sw      $t0, 0x0018($sp)
.L802F5C54:
	b       .L802F5C5C
	nop
.L802F5C5C:
	jal     object_b_802F547C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, 0x00A0($t2)
	lwc1    $f18, 0x00AC($t2)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x00A8($t3)
	lwc1    $f8, 0x00B4($t3)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A8($t3)
	lui     $t1, %hi(object_b_803327A4)
	lb      $t1, %lo(object_b_803327A4)($t1)
	beqz    $t1, .L802F5CBC
	nop
	li      $at, 0x0006
	beq     $t1, $at, .L802F5CBC
	nop
	li.u    $a0, 0x40080001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40080001
.L802F5CBC:
	b       .L802F5CC4
	nop
.L802F5CC4:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

.globl object_b_802F5CD4
object_b_802F5CD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338900)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338900)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_80338904)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338904)($at)
	swc1    $f8, 0x0174($t8)
	lui     $at, %hi(object_b_80338908)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_b_80338908)($at)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_803327A8
	la.l    $a1, object_b_803327A8
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00F0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x0074($t1)
	ori     $t3, $t2, 0x0200
	sh      $t3, 0x0074($t1)
	b       .L802F5D68
	nop
.L802F5D68:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F5D78:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003588
	la.l    $a2, o_13003588
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0096
	sw      $v0, 0x0024($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f6
	mov.s   $f20, $f0
	lw      $t6, 0x0024($sp)
	mul.s   $f8, $f20, $f6
	lwc1    $f4, 0x00A0($t6)
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	addiu   $t9, $t8, -0x0028
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00A0($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f10
	mov.s   $f20, $f0
	lw      $t0, 0x0024($sp)
	mul.s   $f16, $f20, $f10
	lwc1    $f8, 0x00A8($t0)
	trunc.w.s $f4, $f16
	mfc1    $t2, $f4
	nop
	addiu   $t3, $t2, -0x0028
	mtc1    $t3, $f18
	nop
	cvt.s.w $f6, $f18
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x00A8($t0)
	b       .L802F5E30
	nop
.L802F5E30:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F5E44:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lui     $a0, %hi(object)
	jal     obj_lib_802A513C
	lw      $a0, %lo(object)($a0)
	lh      $t6, 0x001E($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802F5E80
	nop
	li.u    $a0, 0x32240081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x32240081
.L802F5E80:
	lh      $t7, 0x001E($sp)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L802F5EC8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802F5EC8
	nop
	li.u    $a0, 0x40130001
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x40130001
	jal     object_b_802F5D78
	nop
.L802F5EC8:
	lh      $t0, 0x001E($sp)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L802F5F20
	nop
	jal     obj_lib_802A37AC
	nop
	li.u    $a2, 0x3F333333
	li.l    $a2, 0x3F333333
	li      $a0, 0x0014
	li      $a1, 0x008A
	jal     object_a_802AE0CC
	li      $a3, 0x0003
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5760
	li      $a1, 0x0003
	li.u    $a0, 0x3041C081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x3041C081
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
.L802F5F20:
	lui     $a1, %hi(object_b_80361450)
	lw      $a1, %lo(object_b_80361450)($a1)
	jal     object_b_802E5A80
	lh      $a0, 0x001E($sp)
	b       .L802F5F38
	nop
.L802F5F38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F5F48:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00FC($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00FC($t9)
	slti    $at, $t0, 0x032B
	bnez    $at, .L802F5FC4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00FC($t1)
	andi    $t3, $t2, 0x0001
	beqz    $t3, .L802F5FAC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x0002($t4)
	ori     $t7, $t5, 0x0010
	b       .L802F5FC4
	sh      $t7, 0x0002($t4)
.L802F5FAC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0011
	lh      $t6, 0x0002($t8)
	and     $t9, $t6, $at
	sh      $t9, 0x0002($t8)
.L802F5FC4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00FC($t0)
	slti    $at, $t1, 0x0385
	bnez    $at, .L802F5FFC
	nop
	la.u    $a1, o_13004218
	la.l    $a1, o_13004218
	li      $a0, 0x0082
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
.L802F5FFC:
	b       .L802F6004
	nop
.L802F6004:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F6014:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F6054
	nop
	li      $at, 0x0064
	beq     $s0, $at, .L802F6064
	nop
	li      $at, 0x0065
	beq     $s0, $at, .L802F6074
	nop
	b       .L802F609C
	nop
.L802F6054:
	jal     object_b_802F5E44
	nop
	b       .L802F609C
	nop
.L802F6064:
	jal     object_b_802E5B18
	nop
	b       .L802F609C
	nop
.L802F6074:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
	la.u    $a1, o_13004218
	la.l    $a1, o_13004218
	li      $a0, 0x0082
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	b       .L802F609C
	nop
.L802F609C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x00F4($t8)
	bne     $t9, $at, .L802F60BC
	nop
	jal     object_b_802F5F48
	nop
.L802F60BC:
	b       .L802F60C4
	nop
.L802F60C4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F60D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05D4
	nop
	jal     obj_lib_8029F620
	nop
	jal     obj_lib_802A0474
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00FC($t2)
	b       .L802F6140
	nop
.L802F6140:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F6150:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05D4
	nop
	jal     obj_lib_8029F820
	nop
	jal     obj_lib_8029F620
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0009
	lw      $t1, 0x008C($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x008C($t0)
	li      $at, 0x42200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00FC($t8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0201
	lh      $t9, 0x0074($t6)
	and     $t1, $t9, $at
	sh      $t1, 0x0074($t6)
	b       .L802F6218
	nop
.L802F6218:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F6228
object_b_802F6228:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, .L802F6274
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F6284
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F629C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802F62AC
	nop
	b       .L802F62BC
	nop
.L802F6274:
	jal     object_b_802F6014
	nop
	b       .L802F62BC
	nop
.L802F6284:
	jal     obj_lib_8029F66C
	nop
	jal     obj_lib_802A05B4
	nop
	b       .L802F62BC
	nop
.L802F629C:
	jal     object_b_802F6150
	nop
	b       .L802F62BC
	nop
.L802F62AC:
	jal     object_b_802F60D8
	nop
	b       .L802F62BC
	nop
.L802F62BC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	b       .L802F62D0
	nop
.L802F62D0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F62E4
object_b_802F62E4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F6318
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F6384
	nop
	b       .L802F642C
	nop
.L802F6318:
	li      $at, 0xC2200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00AC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A0($t8)
	lwc1    $f8, 0x00AC($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0076
	bnez    $at, .L802F6370
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
.L802F6370:
	li.u    $a0, 0x40188001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40188001
	b       .L802F642C
	nop
.L802F6384:
	li      $at, 0xC0A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00AC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x00A0($t4)
	lwc1    $f4, 0x00AC($t4)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A0($t4)
	li      $at, 0xC1200000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, 0x00A4($t6)
	lwc1    $f16, 0x00B0($t6)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x016C($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0033
	bnez    $at, .L802F6424
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
.L802F6424:
	b       .L802F642C
	nop
.L802F642C:
	b       .L802F6434
	nop
.L802F6434:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F6448
object_b_802F6448:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x1770
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	beqz    $v0, .L802F64A8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x0024($t8)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802F64B0
	nop
.L802F64A8:
	b       .L802F6578
	nop
.L802F64B0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0040
	lw      $t0, 0x0154($t9)
	beq     $t0, $at, .L802F64F8
	nop
	li      $at, 0x0080
	beq     $t0, $at, .L802F64F8
	nop
	li      $at, 0x00C0
	beq     $t0, $at, .L802F64F8
	nop
	li      $at, 0x00E0
	beq     $t0, $at, .L802F64F8
	nop
	li      $at, 0x0100
	bne     $t0, $at, .L802F6514
	nop
.L802F64F8:
	lui     $a0, %hi(object)
	la.u    $a2, o_13004244
	la.l    $a2, o_13004244
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0036
	sw      $v0, 0x001C($sp)
.L802F6514:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0100
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, .L802F654C
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	lw      $t3, 0x001C($sp)
	swc1    $f16, 0x002C($t3)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lw      $t4, 0x001C($sp)
	swc1    $f18, 0x0030($t4)
.L802F654C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x0100
	bnez    $at, .L802F6570
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
.L802F6570:
	b       .L802F6578
	nop
.L802F6578:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F6588:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     map_80381900
	lw      $a2, 0x00A8($t7)
	swc1    $f0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x00FC($t8)
	add.s   $f10, $f6, $f8
	c.lt.s  $f10, $f4
	nop
	bc1f    .L802F661C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00F4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f16, 0x00FC($t0)
	b       .L802F664C
	add.s   $f0, $f16, $f18
	b       .L802F6644
	nop
.L802F661C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f6, 0x00FC($t3)
	b       .L802F664C
	add.s   $f0, $f6, $f8
.L802F6644:
	b       .L802F664C
	nop
.L802F664C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F665C:
	addiu   $sp, $sp, -0x0008
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lw      $t8, 0x00C8($t7)
	lwc1    $f6, 0x00A8($t7)
	lwc1    $f4, 0x0028($t6)
	subu    $t9, $0, $t8
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sub.s   $f8, $f4, $f6
	sll     $t2, $t1, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f4, 0x00A0($t7)
	lwc1    $f18, 0x0020($t6)
	lui     $at, %hi(math_cos)
	mul.s   $f16, $f10, $f8
	sub.s   $f6, $f18, $f4
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f8, $f6, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t4, $f4
	nop
	sh      $t4, 0x0006($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t5, %hi(obj_mario)
	lw      $t5, %lo(obj_mario)($t5)
	lw      $t9, 0x00C8($t8)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f6, 0x0028($t5)
	subu    $t0, $0, $t9
	andi    $t1, $t0, 0xFFFF
	sra     $t6, $t1, 4
	sub.s   $f16, $f6, $f10
	sll     $t7, $t6, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f8, %lo(math_cos)($at)
	lwc1    $f6, 0x00A0($t8)
	lwc1    $f4, 0x0020($t5)
	lui     $at, %hi(math_sin)
	mul.s   $f18, $f16, $f8
	sub.s   $f10, $f4, $f6
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f8, $f16, $f10
	sub.s   $f4, $f18, $f8
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x0004($sp)
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t4)
	bne     $t9, $t0, .L802F6834
	nop
	lh      $t1, 0x0004($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sll     $t6, $t1, 1
	sw      $t6, 0x00D0($t5)
	lh      $t8, 0x0006($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	subu    $t7, $0, $t8
	sll     $t2, $t7, 1
	sw      $t2, 0x00D8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f16, 0x00B0($t4)
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x00B0($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	lwc1    $f8, 0x00B0($t9)
	c.lt.s  $f8, $f4
	nop
	bc1f    .L802F67D8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t0)
.L802F67D8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x00F8($t1)
	lwc1    $f10, 0x00B0($t1)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00F8($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42B40000
	mtc1    $at, $f4
	lwc1    $f8, 0x00F8($t6)
	c.lt.s  $f4, $f8
	nop
	bc1f    .L802F682C
	nop
	li      $at, 0x42B40000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t5)
.L802F682C:
	b       .L802F68E8
	nop
.L802F6834:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x00D0($t8)
	bgez    $t7, .L802F6850
	sra     $t2, $t7, 1
	addiu   $at, $t7, 0x0001
	sra     $t2, $at, 1
.L802F6850:
	sw      $t2, 0x00D0($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D8($t3)
	bgez    $t4, .L802F6870
	sra     $t9, $t4, 1
	addiu   $at, $t4, 0x0001
	sra     $t9, $at, 1
.L802F6870:
	sw      $t9, 0x00D8($t3)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x40140000
	mtc1    $at, $f19
	lwc1    $f16, 0x00F8($t0)
	mtc1    $0, $f18
	cvt.d.s $f10, $f16
	sub.d   $f8, $f10, $f18
	cvt.s.d $f4, $f8
	swc1    $f4, 0x00F8($t0)
	li      $at, 0x41200000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f10
	lwc1    $f16, 0x00F8($t6)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802F68E8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00F8($t5)
.L802F68E8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	lw      $t2, 0x0100($t7)
	lwc1    $f16, 0x0168($t7)
	sll     $t8, $t2, 11
	andi    $t4, $t8, 0xFFFF
	sra     $t9, $t4, 4
	sll     $t3, $t9, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f4
	li      $at, 0x42800000
	mtc1    $at, $f10
	mul.s   $f6, $f8, $f4
	lwc1    $f8, 0x00F8($t7)
	sub.s   $f18, $f16, $f10
	sub.s   $f4, $f18, $f8
	add.s   $f16, $f6, $f4
	swc1    $f16, 0x00A4($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0100($t0)
	addiu   $t6, $t1, 0x0001
	sw      $t6, 0x0100($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0020
	lw      $t2, 0x0100($t5)
	bne     $t2, $at, .L802F6974
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0100($t8)
.L802F6974:
	b       .L802F697C
	nop
.L802F697C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802F6984
object_b_802F6984:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     object_b_802F6588
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x0168($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F4($t7)
	bnez    $t8, .L802F69C8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L802F69D8
	sw      $0, 0x014C($t9)
.L802F69C8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802F69D8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $s0, 0x014C($t2)
	beqz    $s0, .L802F6A00
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F6A10
	nop
	b       .L802F6A28
	nop
.L802F6A00:
	jal     object_b_802F665C
	nop
	b       .L802F6A28
	nop
.L802F6A10:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x0168($t3)
	swc1    $f4, 0x00A4($t3)
	b       .L802F6A28
	nop
.L802F6A28:
	b       .L802F6A30
	nop
.L802F6A30:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F6A44:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sb      $0, 0x001F($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, -0x4000
	sw      $t8, 0x00C8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t9)
	li      $at, 0x41400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x00F4($t1)
	lwc1    $f10, 0x00B8($t1)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43C00000
	mtc1    $at, $f4
	lwc1    $f18, 0x00F4($t2)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L802F6B00
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	li      $at, 0x43C00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00F4($t4)
	li      $t5, 0x0001
	sb      $t5, 0x001F($sp)
.L802F6B00:
	lui     $a0, %hi(object)
	jal     object_b_802E5160
	lw      $a0, %lo(object)($a0)
	b       .L802F6B1C
	lb      $v0, 0x001F($sp)
	b       .L802F6B1C
	nop
.L802F6B1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F6B2C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sb      $0, 0x001F($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, 0x4000
	sw      $t8, 0x00C8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t9)
	li      $at, 0x41400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x00F4($t1)
	lwc1    $f10, 0x00B8($t1)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	lwc1    $f18, 0x00F4($t2)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802F6BE0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00F4($t4)
	li      $t5, 0x0001
	sb      $t5, 0x001F($sp)
.L802F6BE0:
	lui     $a0, %hi(object)
	jal     object_b_802E5160
	lw      $a0, %lo(object)($a0)
	b       .L802F6BFC
	lb      $v0, 0x001F($sp)
	b       .L802F6BFC
	nop
.L802F6BFC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F6C0C
object_b_802F6C0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F6C4C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F6C98
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F6CC4
	nop
	b       .L802F6D04
	nop
.L802F6C4C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x003D
	bnez    $at, .L802F6C90
	nop
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0214($t9)
	bne     $t0, $t1, .L802F6C90
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
.L802F6C90:
	b       .L802F6D04
	nop
.L802F6C98:
	jal     object_b_802F6A44
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802F6CBC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802F6CBC:
	b       .L802F6D04
	nop
.L802F6CC4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x003D
	bnez    $at, .L802F6CFC
	nop
	jal     object_b_802F6B2C
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802F6CFC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802F6CFC:
	b       .L802F6D04
	nop
.L802F6D04:
	b       .L802F6D0C
	nop
.L802F6D0C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F6D20
object_b_802F6D20:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	sw      $t7, 0x00F0($t6)
	li      $at, 0x41D00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F6D58
object_b_802F6D58:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x00B0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x00B0($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0xC1A80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802F6DD0
	nop
	li      $at, 0x41600000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t9)
.L802F6DD0:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0023
	lw      $t1, 0x0154($t0)
	bne     $t1, $at, .L802F6E28
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0095
	sw      $v0, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t2)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0074($t3)
.L802F6E28:
	b       .L802F6E30
	nop
.L802F6E30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F6E40
object_b_802F6E40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130037E0
	la.l    $a2, o_130037E0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sw      $t6, 0x0068($t7)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_803327FC
	la.l    $a1, object_b_803327FC
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	li      $at, 0x40200000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	b       .L802F6EA0
	nop
.L802F6EA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F6EB0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x001E($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t8, object_b_803327B8
	la.l    $t8, object_b_803327B8
	sw      $t8, 0x00FC($t9)
	jal     obj_lib_802A2C5C
	lw      $a0, 0x0018($sp)
	sw      $v0, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x010C($t0)
	sw      $t1, 0x00F8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0108($t2)
	sw      $t3, 0x00F4($t2)
	li      $at, 0x41200000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a2, 0x0080
	lw      $a0, 0x00C8($t5)
	jal     obj_lib_8029E530
	lw      $a1, 0x00F8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00C8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a2, 0x0080
	lw      $a0, 0x00C4($t7)
	jal     obj_lib_8029E530
	lw      $a1, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00C4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t1, 0x00CA($t9)
	lh      $t0, 0x00FA($t9)
	beq     $t1, $t0, .L802F6FDC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x00CC($t3)
	addiu   $t4, $t2, -0x005B
	sw      $t4, 0x00CC($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_b_80338910)
	ldc1    $f10, %lo(object_b_80338910)($at)
	lw      $t6, 0x00CC($t5)
	mtc1    $t6, $f6
	nop
	cvt.d.w $f8, $f6
	c.lt.d  $f8, $f10
	nop
	bc1f    .L802F6FD4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, -0x1555
	sw      $t7, 0x00CC($t8)
.L802F6FD4:
	b       .L802F7030
	nop
.L802F6FDC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x00CC($t9)
	addiu   $t0, $t1, 0x005B
	sw      $t0, 0x00CC($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_80338918)
	ldc1    $f4, %lo(object_b_80338918)($at)
	lw      $t4, 0x00CC($t2)
	mtc1    $t4, $f16
	nop
	cvt.d.w $f18, $f16
	c.lt.d  $f4, $f18
	nop
	bc1f    .L802F7030
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x1555
	sw      $t3, 0x00CC($t5)
.L802F7030:
	jal     obj_lib_802A31E0
	nop
	lh      $t6, 0x001E($sp)
	bnez    $t6, .L802F7050
	nop
	li.u    $a0, 0x30090081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30090081
.L802F7050:
	b       .L802F7058
	nop
.L802F7058:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F7068:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x012C
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L802F70A4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
.L802F70A4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	beqz    $t2, .L802F70E8
	nop
	li      $at, 0x0032
	beq     $t2, $at, .L802F70E8
	nop
	li      $at, 0x0096
	beq     $t2, $at, .L802F70E8
	nop
	li      $at, 0x00C8
	beq     $t2, $at, .L802F70E8
	nop
	li      $at, 0x00FA
	bne     $t2, $at, .L802F724C
	nop
.L802F70E8:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003798
	la.l    $a2, o_13003798
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0068
	sw      $v0, 0x0018($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0018($sp)
	lw      $t4, 0x00C8($t3)
	sw      $t4, 0x00D4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0018($sp)
	lw      $t7, 0x00C4($t6)
	addiu   $t8, $t7, 0x4000
	sw      $t8, 0x00D0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x8000
	lw      $t6, 0x0018($sp)
	lw      $t1, 0x00C8($t0)
	lwc1    $f10, 0x00A0($t0)
	addu    $t2, $t1, $at
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	lw      $t2, 0x0018($sp)
	lhu     $t8, 0x00C6($t7)
	lwc1    $f8, 0x00A4($t7)
	sra     $t9, $t8, 4
	sll     $t1, $t9, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f4
	li      $at, 0x41200000
	mtc1    $at, $f10
	mul.s   $f6, $f18, $f4
	add.s   $f16, $f8, $f10
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x00A4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x8000
	lw      $t9, 0x0018($sp)
	lw      $t4, 0x00C8($t3)
	lwc1    $f6, 0x00A8($t3)
	addu    $t5, $t4, $at
	andi    $t0, $t5, 0xFFFF
	sra     $t6, $t0, 4
	sll     $t8, $t6, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f4, $f8
	add.s   $f16, $f10, $f6
	swc1    $f16, 0x00A8($t9)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x0018($sp)
	lw      $t7, 0x00F4($t1)
	sw      $t7, 0x0110($t2)
	lw      $t4, 0x001C($sp)
	lw      $t5, 0x00F4($t4)
	addiu   $t0, $t5, 0x0001
	sw      $t0, 0x00F4($t4)
	lw      $t6, 0x001C($sp)
	lw      $t8, 0x00F4($t6)
	slti    $at, $t8, 0x2711
	bnez    $at, .L802F724C
	nop
	lw      $t3, 0x001C($sp)
	sw      $0, 0x00F4($t3)
.L802F724C:
	b       .L802F7254
	nop
.L802F7254:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F7264
object_b_802F7264:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F7298
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F72F8
	nop
	b       .L802F7308
	nop
.L802F7298:
	jal     object_b_802F6EB0
	nop
	jal     object_b_802F7068
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x01AC($t7)
	bne     $t8, $at, .L802F72F0
	nop
	jal     obj_lib_802A37AC
	nop
	lui     $at, %hi(object_b_80338920)
	lwc1    $f12, %lo(object_b_80338920)($at)
	li      $at, 0xC5610000
	mtc1    $at, $f14
	jal     object_b_802F2B88
	li      $a2, 0x42F00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802F72F0:
	b       .L802F7308
	nop
.L802F72F8:
	jal     object_b_802F6EB0
	nop
	b       .L802F7308
	nop
.L802F7308:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0134($t1)
	andi    $t3, $t2, 0x8000
	beqz    $t3, .L802F732C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
.L802F732C:
	b       .L802F7334
	nop
.L802F7334:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F7348
object_b_802F7348:
	li      $at, 0x3F000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338924)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338924)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_80338928)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338928)($at)
	swc1    $f8, 0x0174($t8)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F7398:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $0, 0x002C($sp)
.L802F73A4:
	lw      $t6, 0x002C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sll     $a2, $t6, 2
	subu    $a2, $a2, $t6
	sll     $a2, $a2, 3
	la.u    $t8, o_130043C4
	addu    $a2, $a2, $t6
	sll     $a2, $a2, 4
	la.l    $t8, o_130043C4
	sw      $t8, 0x0018($sp)
	addiu   $a2, $a2, 0x012C
	move    $a1, $0
	move    $a3, $0
	sw      $0, 0x0014($sp)
	move    $a0, $t6
	jal     obj_lib_8029EF64
	sw      $t7, 0x0010($sp)
	lw      $t9, 0x002C($sp)
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x0004
	bnez    $at, .L802F73A4
	sw      $t0, 0x002C($sp)
	b       .L802F7408
	nop
.L802F7408:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802F7418:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x001C($t6)
	lwc1    $f10, 0x0020($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x001C($sp)
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x001C($t0)
	lwc1    $f10, 0x0028($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x0018($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f16, 0x0018($sp)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f18, 0x00A8($t4)
	lwc1    $f10, 0x00A0($t4)
	sub.s   $f12, $f16, $f18
	jal     atan2
	sub.s   $f14, $f4, $f10
	b       .L802F74CC
	nop
	b       .L802F74CC
	nop
.L802F74CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F74DC
object_b_802F74DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F751C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F7594
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F75FC
	nop
	b       .L802F7744
	nop
.L802F751C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x0514
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, .L802F758C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0160($t8)
	sw      $t9, 0x00C8($t8)
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t0)
	jal     object_b_802F7398
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
	li.u    $a0, 0x30560081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30560081
.L802F758C:
	b       .L802F7744
	nop
.L802F7594:
	jal     object_b_802E5114
	nop
	jal     object_b_802F7418
	nop
	sh      $v0, 0x0026($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $a1, 0x0026($sp)
	li      $a2, 0x0400
	jal     obj_lib_8029E530
	lw      $a0, 0x00D4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00D4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x000B
	bnez    $at, .L802F75F4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t9)
.L802F75F4:
	b       .L802F7744
	nop
.L802F75FC:
	jal     object_b_802E5114
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40800000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00F4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0114($t0)
	lwc1    $f4, 0x00F4($t0)
	mtc1    $t1, $f16
	nop
	cvt.s.w $f18, $f16
	add.s   $f6, $f18, $f4
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	sw      $t3, 0x0114($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D0($t4)
	lw      $t6, 0x0114($t4)
	addu    $t7, $t5, $t6
	sw      $t7, 0x00D0($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x00D0($t9)
	slti    $at, $t8, 0x3901
	bnez    $at, .L802F773C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00D6($t1)
	lwc1    $f4, 0x00A0($t1)
	sra     $t3, $t2, 4
	sll     $t0, $t3, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00A0($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	lhu     $t6, 0x00D6($t5)
	lwc1    $f4, 0x00A8($t5)
	sra     $t7, $t6, 4
	sll     $t4, $t7, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x00A8($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a0, 0x0002
	lw      $a1, 0x00A0($t9)
	lw      $a2, 0x00A4($t9)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t9)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42B80000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0074($t8)
	li.u    $a0, 0x30440081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x30440081
.L802F773C:
	b       .L802F7744
	nop
.L802F7744:
	b       .L802F774C
	nop
.L802F774C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F7760
object_b_802F7760:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00D0($t7)
	sw      $t8, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x00D4($t0)
	sw      $t1, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lwc1    $f4, 0x00A0($t3)
	swc1    $f4, 0x0024($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0068($t4)
	lwc1    $f6, 0x00A4($t5)
	swc1    $f6, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lwc1    $f8, 0x00A8($t7)
	swc1    $f8, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 4
	addiu   $t1, $t0, 0x012C
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0018($sp)
	lhu     $t2, 0x002A($sp)
	lhu     $t7, 0x002E($sp)
	la.u    $t5, math_sin
	la.l    $t5, math_sin
	sra     $t3, $t2, 4
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	sll     $t4, $t3, 2
	addu    $t6, $t4, $t5
	addu    $t0, $t9, $t5
	lwc1    $f4, 0x0000($t0)
	lwc1    $f18, 0x0000($t6)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f16, 0x0024($sp)
	mul.s   $f6, $f18, $f4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A0($t1)
	lhu     $t2, 0x002E($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x0018($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f10, 0x0020($sp)
	lui     $t6, %hi(object)
	mul.s   $f8, $f4, $f6
	lw      $t6, %lo(object)($t6)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t6)
	lhu     $t7, 0x002A($sp)
	lhu     $t5, 0x002E($sp)
	lui     $at, %hi(math_cos)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f18, %lo(math_cos)($at)
	sra     $t0, $t5, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f16, 0x001C($sp)
	mul.s   $f6, $f18, $f4
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t2)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_8033280C
	la.l    $a1, object_b_8033280C
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0068($t3)
	lh      $t6, 0x0074($t4)
	bnez    $t6, .L802F790C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
.L802F790C:
	b       .L802F7914
	nop
.L802F7914:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_b_802F7924
object_b_802F7924:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lw      $t7, 0x0154($t6)
	lwc1    $f10, 0x0168($t6)
	sll     $t8, $t7, 10
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F7978
object_b_802F7978:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0100
	sw      $t6, 0x011C($t7)
	jal     obj_lib_802A4120
	nop
	b       .L802F79A0
	nop
.L802F79A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F79B0
object_b_802F79B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	blez    $t7, .L802F79E4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x011C($t8)
	addiu   $t0, $t9, -0x0008
	b       .L802F79F8
	sw      $t0, 0x011C($t8)
.L802F79E4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x011C($t1)
	addiu   $t3, $t2, 0x0008
	sw      $t3, 0x011C($t1)
.L802F79F8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	lw      $t6, 0x011C($t4)
	addu    $t7, $t5, $t6
	sw      $t7, 0x00D8($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0010
	lw      $t0, 0x011C($t9)
	beq     $t0, $at, .L802F7A34
	nop
	li      $at, -0x0010
	bne     $t0, $at, .L802F7A40
	nop
.L802F7A34:
	li.u    $a0, 0x30170081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30170081
.L802F7A40:
	b       .L802F7A48
	nop
.L802F7A48:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F7A58
object_b_802F7A58:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0068($t7)
	sw      $t8, 0x0034($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, .L802F7AB8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F7AEC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F7C10
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802F7C40
	nop
	b       .L802F7C80
	nop
.L802F7AB8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x0068($t0)
	lw      $t2, 0x014C($t1)
	bne     $t2, $at, .L802F7AE4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
.L802F7AE4:
	b       .L802F7C80
	nop
.L802F7AEC:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	bnez    $t6, .L802F7B7C
	nop
	lw      $t7, 0x0034($sp)
	lw      $t8, 0x00FC($t7)
	bnez    $t8, .L802F7B64
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t1, o_130003BC
	la.l    $t1, o_130003BC
	li      $t0, 0x00A8
	sw      $t0, 0x0014($sp)
	sw      $t1, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0050
	li      $a3, 0x0078
	jal     obj_lib_8029EF64
	sw      $t9, 0x0010($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li.u    $a0, 0x31228081
	li.l    $a0, 0x31228081
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L802F7B7C
	nop
.L802F7B64:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li.u    $a0, 0x31208081
	li.l    $a0, 0x31208081
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802F7B7C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D0($t2)
	addiu   $t4, $t3, -0x0200
	sw      $t4, 0x00D0($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D0($t5)
	slti    $at, $t6, -0x4000
	beqz    $at, .L802F7C08
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, -0x4000
	sw      $t7, 0x00D0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0004
	lw      $t4, 0x0068($t3)
	lw      $t2, 0x0144($t4)
	beq     $t2, $at, .L802F7C08
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	move    $a1, $0
	li      $a2, -0x0028
	lw      $t6, 0x0068($t5)
	move    $a3, $0
	jal     object_b_802E5C6C
	lw      $a0, 0x0144($t6)
.L802F7C08:
	b       .L802F7C80
	nop
.L802F7C10:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0068($t7)
	lw      $t0, 0x014C($t8)
	bnez    $t0, .L802F7C38
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t9)
.L802F7C38:
	b       .L802F7C80
	nop
.L802F7C40:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D0($t3)
	addiu   $t2, $t4, 0x0800
	sw      $t2, 0x00D0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D0($t5)
	blez    $t6, .L802F7C80
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00D0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802F7C80:
	b       .L802F7C88
	nop
.L802F7C88:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802F7C9C
object_b_802F7C9C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t8, o_130044E0
	la.l    $t8, o_130044E0
	li      $t7, 0x0066
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0066
	li      $a3, -0x004D
	jal     obj_lib_8029EF64
	sw      $t6, 0x0010($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_8033281C
	la.l    $a1, object_b_8033281C
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802F7CF4
	nop
.L802F7CF4:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F7D04
object_b_802F7D04:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F7D44
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F7E68
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F7E98
	nop
	b       .L802F7EE0
	nop
.L802F7D44:
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a1, 0x001C($t8)
	li      $at, 0x8000
	li      $a2, 0x3000
	lw      $a0, 0x00C8($t7)
	jal     object_b_802E55D0
	addu    $a1, $a1, $at
	beqz    $v0, .L802F7E60
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a3, 0x0096
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t9)
	beqz    $v0, .L802F7E60
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lw      $t2, 0x00F8($t1)
	bnez    $t2, .L802F7E60
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0068($t3)
	lw      $t4, 0x0144($t3)
	lw      $t6, 0x00F4($t5)
	bne     $t4, $t6, .L802F7E0C
	nop
	li.u    $a0, 0x806AA081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x806AA081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0068($t7)
	lw      $t9, 0x00F4($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x00F4($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	b       .L802F7E60
	sw      $t1, 0x014C($t2)
.L802F7E0C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x0001
	lw      $t4, 0x0068($t5)
	sw      $t3, 0x00F4($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	lw      $t9, 0x0068($t7)
	sw      $t6, 0x00F8($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t8)
	jal     obj_lib_802A05D4
	nop
	li.u    $a0, 0x700E0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x700E0081
.L802F7E60:
	b       .L802F7EE0
	nop
.L802F7E68:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0068($t1)
	lw      $t5, 0x00F8($t2)
	bne     $t5, $at, .L802F7E90
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
.L802F7E90:
	b       .L802F7EE0
	nop
.L802F7E98:
	jal     obj_lib_802A05B4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a3, 0x01F4
	lwc1    $f12, 0x00A0($t4)
	lwc1    $f14, 0x00A4($t4)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t4)
	bnez    $v0, .L802F7EE0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0068($t7)
	sw      $0, 0x00F8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
.L802F7EE0:
	li      $at, 0x43160000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     obj_lib_802A390C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	b       .L802F7F08
	nop
.L802F7F08:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F7F1C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lw      $t6, 0x003C($sp)
	lw      $t7, 0x0040($sp)
	lw      $t8, 0x0044($sp)
	lh      $t9, 0x004A($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_130044B8
	la.l    $a3, o_130044B8
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x0065
	sw      $0, 0x001C($sp)
	sw      $0, 0x0024($sp)
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	jal     obj_lib_8029E9AC
	sw      $t9, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lb      $t0, 0x003B($sp)
	lw      $t1, 0x0034($sp)
	sw      $t0, 0x0144($t1)
	b       .L802F7F90
	nop
.L802F7F90:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802F7FA0
object_b_802F7FA0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	li      $a0, 0x0001
	li      $a1, 0x0190
	li      $a2, -0x015E
	li      $a3, -0x0A8C
	jal     object_b_802F7F1C
	sw      $0, 0x0010($sp)
	li      $t6, -0x6001
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0002
	li      $a1, 0x028A
	li      $a2, -0x015E
	jal     object_b_802F7F1C
	li      $a3, -0x03AC
	li      $t7, 0x5FFF
	sw      $t7, 0x0010($sp)
	li      $a0, 0x0003
	li      $a1, -0x0226
	li      $a2, -0x015E
	jal     object_b_802F7F1C
	li      $a3, -0x0302
	li      $a0, 0x0004
	li      $a1, 0x0064
	li      $a2, -0x015E
	li      $a3, -0x06A4
	jal     object_b_802F7F1C
	sw      $0, 0x0010($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x00F4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00FC($t0)
	b       .L802F8034
	nop
.L802F8034:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F8044
object_b_802F8044:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F8078
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F80C0
	nop
	b       .L802F813C
	nop
.L802F8078:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, .L802F80B8
	nop
	jal     Na_g_803220F0
	nop
	move    $a0, $0
	li      $a1, 0x007F
	jal     Na_g_803206BC
	li      $a2, 0x03E8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802F80B8:
	b       .L802F813C
	nop
.L802F80C0:
	lui     $t1, %hi(object_80361184)
	lw      $t1, %lo(object_80361184)($t1)
	beqz    $t1, .L802F8134
	nop
	lui     $t2, %hi(object_80361184)
	lw      $t2, %lo(object_80361184)($t2)
	lh      $t3, 0x000C($t2)
	addiu   $t4, $t3, -0x0005
	sh      $t4, 0x000C($t2)
	li.u    $a0, 0x41160001
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x41160001
	jal     camera_8027F8B8
	li      $a0, 0x0009
	lui     $t5, %hi(object_80361184)
	lw      $t5, %lo(object_80361184)($t5)
	lh      $t6, 0x000C($t5)
	slti    $at, $t6, -0x014F
	beqz    $at, .L802F8134
	nop
	lui     $t8, %hi(object_80361184)
	lw      $t8, %lo(object_80361184)($t8)
	li      $t7, -0x014F
	sh      $t7, 0x000C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
.L802F8134:
	b       .L802F813C
	nop
.L802F813C:
	b       .L802F8144
	nop
.L802F8144:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F8158
object_b_802F8158:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	li      $t6, 0x7FFF
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, -0x06A4
	li      $a2, -0x0AFC
	jal     object_b_802F7F1C
	li      $a3, -0x047E
	li      $t7, 0x7FFF
	sw      $t7, 0x0010($sp)
	li      $a0, 0x0002
	li      $a1, -0x047E
	li      $a2, -0x0AFC
	jal     object_b_802F7F1C
	li      $a3, -0x060E
	li      $t8, 0x7FFF
	sw      $t8, 0x0010($sp)
	li      $a0, 0x0003
	li      $a1, -0x0960
	li      $a2, -0x0AFC
	jal     object_b_802F7F1C
	li      $a3, -0x0708
	li      $t9, 0x7FFF
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0004
	li      $a1, -0x0708
	li      $a2, -0x0AFC
	jal     object_b_802F7F1C
	li      $a3, -0x0834
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x00FC($t3)
	b       .L802F81F8
	nop
.L802F81F8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F8208
object_b_802F8208:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F8248
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F8280
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F82D4
	nop
	b       .L802F82DC
	nop
.L802F8248:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, .L802F8278
	nop
	jal     Na_g_803220F0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802F8278:
	b       .L802F82DC
	nop
.L802F8280:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x003C
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, .L802F82CC
	nop
	jal     obj_lib_802A37AC
	nop
	li      $at, 0xC4E10000
	mtc1    $at, $f12
	lui     $at, %hi(object_b_8033892C)
	li.u    $a2, 0xC4D48000
	li.l    $a2, 0xC4D48000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(object_b_8033892C)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
.L802F82CC:
	b       .L802F82DC
	nop
.L802F82D4:
	b       .L802F82DC
	nop
.L802F82DC:
	b       .L802F82E4
	nop
.L802F82E4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F82F8
object_b_802F82F8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	li      $t6, -0x6001
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, -0x1194
	li      $a2, -0x13FF
	jal     object_b_802F7F1C
	li      $a3, 0x0514
	li      $t7, 0x1FFF
	sw      $t7, 0x0010($sp)
	li      $a0, 0x0002
	li      $a1, -0x0708
	li      $a2, -0x13FF
	jal     object_b_802F7F1C
	li      $a3, 0x041A
	li      $t8, 0x238E
	sw      $t8, 0x0010($sp)
	li      $a0, 0x0003
	li      $a1, -0x1194
	li      $a2, -0x13FF
	jal     object_b_802F7F1C
	li      $a3, -0x044C
	li      $t9, 0x3E93
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0004
	li      $a1, -0x0960
	li      $a2, -0x11FF
	jal     object_b_802F7F1C
	li      $a3, 0x007D
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00FC($t2)
	b       .L802F8394
	nop
.L802F8394:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F83A4
object_b_802F83A4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802F83E4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F841C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F846C
	nop
	b       .L802F8474
	nop
.L802F83E4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, .L802F8414
	nop
	jal     Na_g_803220F0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802F8414:
	b       .L802F8474
	nop
.L802F841C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x003C
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, .L802F8464
	nop
	jal     obj_lib_802A37AC
	nop
	lui     $at, %hi(object_b_80338930)
	lwc1    $f12, %lo(object_b_80338930)($at)
	li      $at, 0xC57A0000
	mtc1    $at, $f14
	jal     object_b_802F2B88
	li      $a2, 0xC4AF0000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
.L802F8464:
	b       .L802F8474
	nop
.L802F846C:
	b       .L802F8474
	nop
.L802F8474:
	b       .L802F847C
	nop
.L802F847C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F8490
object_b_802F8490:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	li      $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	sb      $v0, 0x001F($sp)
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x000F
	bnez    $at, .L802F8508
	nop
	lbu     $t6, 0x001F($sp)
	andi    $t7, $t6, 0x0008
	bnez    $t7, .L802F8508
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0144($t8)
	li      $at, 0x42200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	b       .L802F8570
	swc1    $f4, 0x01AC($t9)
.L802F8508:
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x0032
	bnez    $at, .L802F8564
	nop
	lbu     $t0, 0x001F($sp)
	andi    $t1, $t0, 0x0010
	bnez    $t1, .L802F8564
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x0144($t3)
	li      $at, 0x42340000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	b       .L802F8570
	swc1    $f6, 0x01AC($t4)
.L802F8564:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
.L802F8570:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0010
	sw      $t6, 0x0190($t7)
	li      $at, 0x41700000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t8)
	lui     $at, %hi(object_b_80338934)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, %lo(object_b_80338934)($at)
	swc1    $f10, 0x0170($t9)
	lui     $at, %hi(object_b_80338938)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, %lo(object_b_80338938)($at)
	swc1    $f16, 0x0174($t0)
	jal     obj_lib_8029F464
	move    $a0, $0
	b       .L802F85D0
	nop
.L802F85D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F85E0:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	li      $t6, -0x0001
	sh      $t6, 0x0036($sp)
	lui     $at, %hi(object_b_8033893C)
	lwc1    $f4, %lo(object_b_8033893C)($at)
	swc1    $f4, 0x0030($sp)
	la.u    $a0, 0x07079068
	jal     segment_to_virtual
	la.l    $a0, 0x07079068
	sw      $v0, 0x0028($sp)
	sb      $0, 0x003F($sp)
.L802F8610:
	lb      $t8, 0x003F($sp)
	lw      $t7, 0x0028($sp)
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	jal     segment_to_virtual
	lw      $a0, 0x0000($t0)
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	lh      $t2, 0x0002($t1)
	sh      $t2, 0x003C($sp)
	lw      $t3, 0x0024($sp)
	lh      $t4, 0x0004($t3)
	sh      $t4, 0x003A($sp)
	lw      $t5, 0x0024($sp)
	lh      $t6, 0x0006($t5)
	sh      $t6, 0x0038($sp)
	lh      $t8, 0x003C($sp)
	lh      $t7, 0x003A($sp)
	lh      $t9, 0x0038($sp)
	mtc1    $t8, $f6
	mtc1    $t7, $f8
	mtc1    $t9, $f10
	cvt.s.w $f6, $f6
	lui     $a0, %hi(object)
	li      $t0, 0x0320
	sw      $t0, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	cvt.s.w $f8, $f8
	mfc1    $a1, $f6
	cvt.s.w $f10, $f10
	mfc1    $a2, $f8
	mfc1    $a3, $f10
	jal     object_b_802E52B8
	nop
	beqz    $v0, .L802F870C
	nop
	lh      $t1, 0x0038($sp)
	lh      $t3, 0x003C($sp)
	lui     $t2, %hi(obj_mario)
	mtc1    $t1, $f16
	lw      $t2, %lo(obj_mario)($t2)
	mtc1    $t3, $f10
	cvt.s.w $f18, $f16
	lwc1    $f4, 0x0028($t2)
	cvt.s.w $f16, $f10
	sub.s   $f6, $f18, $f4
	lwc1    $f18, 0x0020($t2)
	sub.s   $f4, $f16, $f18
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f6, $f4, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x002C($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802F870C
	nop
	lb      $t4, 0x003F($sp)
	sh      $t4, 0x0036($sp)
	lwc1    $f4, 0x002C($sp)
	swc1    $f4, 0x0030($sp)
.L802F870C:
	lb      $t5, 0x003F($sp)
	addiu   $t6, $t5, 0x0001
	sll     $t8, $t6, 24
	sra     $t7, $t8, 24
	slti    $at, $t7, 0x000A
	bnez    $at, .L802F8610
	sb      $t6, 0x003F($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t9, 0x0036($sp)
	sw      $t9, 0x00F8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       .L802F8750
	lh      $v0, 0x00FA($t1)
	b       .L802F8750
	nop
.L802F8750:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_b_802F8760:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x01F4
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, .L802F87F0
	nop
	jal     object_b_802F85E0
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L802F87D8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	b       .L802F87F0
	sw      $t8, 0x014C($t9)
.L802F87D8:
	jal     obj_lib_8029F464
	li      $a0, 0x0001
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802F87F0:
	b       .L802F87F8
	nop
.L802F87F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F8808:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sh      $0, 0x0026($sp)
	la.u    $a0, 0x07079068
	jal     segment_to_virtual
	la.l    $a0, 0x07079068
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	lw      $t8, 0x00F8($t7)
	sll     $t9, $t8, 2
	addu    $t0, $t6, $t9
	jal     segment_to_virtual
	lw      $a0, 0x0000($t0)
	sw      $v0, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0018($sp)
	sw      $t1, 0x00FC($t2)
	jal     obj_lib_802A2C5C
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x0020($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x01AC($t3)
	swc1    $f4, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x010C($t4)
	sw      $t5, 0x00C8($t4)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lw      $t7, 0x0020($sp)
	li      $at, -0x0001
	bne     $t7, $at, .L802F88B4
	nop
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802F88B4:
	jal     obj_lib_8029FF04
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802F8904
	nop
	lh      $t6, 0x0026($sp)
	andi    $t9, $t6, 0x0004
	beqz    $t9, .L802F8904
	nop
	li.u    $a0, 0x506C0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x506C0081
	lui     $a0, %hi(object)
	la.u    $a2, o_13002D7C
	la.l    $a2, o_13002D7C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	b       .L802F8924
	nop
.L802F8904:
	jal     obj_lib_8029FF04
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802F8924
	nop
	li.u    $a0, 0x506A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x506A0081
.L802F8924:
	b       .L802F892C
	nop
.L802F892C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F893C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029FF04
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L802F8970
	nop
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	sw      $t6, 0x014C($t7)
.L802F8970:
	b       .L802F8978
	nop
.L802F8978:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F8988:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0040($t6)
	lh      $t7, 0x001E($sp)
	li      $at, 0x0001
	andi    $t8, $t7, 0x0001
	bne     $t8, $at, .L802F8A1C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x008C($t1)
	ori     $t3, $t2, 0x0008
	sw      $t3, 0x008C($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D4($t4)
	sw      $t5, 0x00C8($t4)
	lh      $t6, 0x001E($sp)
	andi    $t7, $t6, 0x0004
	beqz    $t7, .L802F8A1C
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002D7C
	la.l    $a2, o_13002D7C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
.L802F8A1C:
	b       .L802F8A24
	nop
.L802F8A24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F8A34:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, .L802F8A9C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $a0, 0x0144($t9)
	jal     object_a_802AB558
	addiu   $a0, $a0, 0x0003
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x00F4($t1)
.L802F8A9C:
	b       .L802F8AA4
	nop
.L802F8AA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F8AB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L802F8B3C
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_80338940)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338940)($at)
	jr      $t7
	nop
.globl L802F8AEC
L802F8AEC:
	jal     object_b_802F8760
	nop
	b       .L802F8B3C
	nop
.globl L802F8AFC
L802F8AFC:
	jal     object_b_802F8808
	nop
	b       .L802F8B3C
	nop
.globl L802F8B0C
L802F8B0C:
	jal     object_b_802F893C
	nop
	b       .L802F8B3C
	nop
.globl L802F8B1C
L802F8B1C:
	jal     object_b_802F8988
	nop
	b       .L802F8B3C
	nop
.globl L802F8B2C
L802F8B2C:
	jal     object_b_802F8A34
	nop
	b       .L802F8B3C
	nop
.L802F8B3C:
	b       .L802F8B44
	nop
.L802F8B44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F8B54:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0010
	sh      $t8, 0x0002($t6)
	jal     obj_lib_8029F464
	li      $a0, 0x0004
	lui     $a0, %hi(obj_mario)
	lw      $a0, %lo(obj_mario)($a0)
	li      $a1, 0x0000
	li      $a2, 0x42700000
	jal     obj_lib_8029F6E0
	li      $a3, 0x42C80000
	jal     obj_lib_802A05B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	bnez    $t0, .L802F8C5C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0144($t1)
	bnez    $t2, .L802F8BCC
	nop
	li      $t3, 0x0054
	b       .L802F8BD4
	sh      $t3, 0x001E($sp)
.L802F8BCC:
	li      $t4, 0x00A2
	sh      $t4, 0x001E($sp)
.L802F8BD4:
	jal     pl_demo_80257640
	li      $a0, 0x0001
	li      $at, 0x0002
	bne     $v0, $at, .L802F8C5C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t7, 0x0074($t5)
	ori     $t8, $t7, 0x0020
	sh      $t8, 0x0074($t5)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	lh      $a2, 0x001E($sp)
	beqz    $v0, .L802F8C5C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0190($t6)
	ori     $t0, $t9, 0x0040
	sw      $t0, 0x0190($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0021
	lh      $t2, 0x0074($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0074($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t4, 0x0001
	sw      $t4, 0x00F4($t7)
	jal     pl_demo_80257640
	move    $a0, $0
.L802F8C5C:
	b       .L802F8C64
	nop
.L802F8C64:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F8C74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A0474
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	jal     obj_lib_802A05D4
	nop
	li      $at, 0x40400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0004
	sw      $t1, 0x014C($t2)
	b       .L802F8CE8
	nop
.L802F8CE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F8CF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F820
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0009
	lw      $t1, 0x008C($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x008C($t0)
	jal     obj_lib_8029F464
	li      $a0, 0x0002
	jal     obj_lib_802A05D4
	nop
	li      $at, 0x41C80000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t7)
	b       .L802F8D9C
	nop
.L802F8D9C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F8DAC
object_b_802F8DAC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, .L802F8DF8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802F8E08
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802F8E18
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802F8E28
	nop
	b       .L802F8E38
	nop
.L802F8DF8:
	jal     object_b_802F8AB4
	nop
	b       .L802F8E38
	nop
.L802F8E08:
	jal     object_b_802F8B54
	nop
	b       .L802F8E38
	nop
.L802F8E18:
	jal     object_b_802F8CF8
	nop
	b       .L802F8E38
	nop
.L802F8E28:
	jal     object_b_802F8C74
	nop
	b       .L802F8E38
	nop
.L802F8E38:
	b       .L802F8E40
	nop
.L802F8E40:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F8E54
object_b_802F8E54:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338954)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338954)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_80338958)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338958)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x4000
	sw      $t9, 0x0190($t0)
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x0078
	bnez    $at, .L802F8EE4
	nop
	lui     $t1, %hi(object_b_80332618)
	lb      $t1, %lo(object_b_80332618)($t1)
	li      $at, 0x0001
	bne     $t1, $at, .L802F8EF0
	nop
.L802F8EE4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
.L802F8EF0:
	b       .L802F8EF8
	nop
.L802F8EF8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F8F08:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x0024($sp)
	li      $at, 0x41200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a2, 0x0500
	lw      $a0, 0x00C8($t9)
	jal     obj_lib_8029E530
	lw      $a1, 0x0100($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li.u    $a2, 0x45466000
	li      $t2, 0x00C8
	lw      $a1, 0x0164($t1)
	lw      $a3, 0x016C($t1)
	sw      $t2, 0x0010($sp)
	li.l    $a2, 0x45466000
	jal     object_b_802E52B8
	move    $a0, $t1
	beqz    $v0, .L802F8FA4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
.L802F8FA4:
	jal     obj_lib_8029F464
	li      $a0, 0x0001
	lh      $t4, 0x0024($sp)
	beqz    $t4, .L802F8FC4
	nop
	li      $at, 0x000F
	bne     $t4, $at, .L802F8FD0
	nop
.L802F8FC4:
	li.u    $a0, 0x306E2081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x306E2081
.L802F8FD0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x8000
	lw      $t6, 0x0134($t5)
	bne     $t6, $at, .L802F8FF8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
.L802F8FF8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_8033895C)
	lwc1    $f8, %lo(object_b_8033895C)($at)
	lwc1    $f6, 0x00A4($t9)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802F903C
	nop
	la.u    $a1, o_13004538
	la.l    $a1, o_13004538
	li      $a0, 0x0055
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
.L802F903C:
	b       .L802F9044
	nop
.L802F9044:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F9054:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x005B
	bnez    $at, .L802F9184
	nop
	jal     o_script_80383CB4
	nop
	lui     $at, %hi(object_b_80338960)
	ldc1    $f6, %lo(object_b_80338960)($at)
	cvt.d.s $f4, $f0
	mul.d   $f8, $f4, $f6
	trunc.w.d $f10, $f8
	mfc1    $t1, $f10
	nop
	sh      $t1, 0x001E($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t4, 0x001E($sp)
	lw      $t3, 0x00FC($t2)
	bne     $t3, $t4, .L802F90D4
	nop
	b       .L802F922C
	nop
	b       .L802F90E4
	nop
.L802F90D4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t5, 0x001E($sp)
	sw      $t5, 0x00FC($t6)
.L802F90E4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t1, %hi(object_b_8033282C+2*0)
	lw      $t8, 0x00FC($t7)
	sll     $t9, $t8, 1
	sll     $t0, $t9, 1
	addu    $t1, $t1, $t0
	lh      $t1, %lo(object_b_8033282C+2*0)($t1)
	mtc1    $t1, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0164($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t6, %hi(object_b_8033282C+2*1)
	lw      $t3, 0x00FC($t2)
	sll     $t4, $t3, 1
	sll     $t5, $t4, 1
	addu    $t6, $t6, $t5
	lh      $t6, %lo(object_b_8033282C+2*1)($t6)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x016C($t2)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x016C($t8)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f16, 0x0164($t8)
	lwc1    $f18, 0x00A0($t8)
	sub.s   $f12, $f8, $f10
	jal     atan2
	sub.s   $f14, $f16, $f18
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0100($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802F9184:
	jal     obj_lib_8029F464
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x8000
	lw      $t3, 0x0134($t7)
	bne     $t3, $at, .L802F91B4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802F91B4:
	la.u    $t6, _camera_bss+0x00
	la.l    $t6, _camera_bss+0x00
	lh      $t2, 0x001E($t6)
	li      $at, 0x000B
	beq     $t2, $at, .L802F91D8
	nop
	li      $at, 0x000C
	bne     $t2, $at, .L802F9224
	nop
.L802F91D8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x000A
	sw      $t8, 0x014C($t9)
	lui     $at, %hi(object_b_80338968)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, %lo(object_b_80338968)($at)
	swc1    $f4, 0x00A0($t0)
	lui     $at, %hi(object_b_8033896C)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, %lo(object_b_8033896C)($at)
	swc1    $f6, 0x00A4($t1)
	lui     $at, %hi(object_b_80338970)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, %lo(object_b_80338970)($at)
	swc1    $f8, 0x00A8($t7)
.L802F9224:
	b       .L802F922C
	nop
.L802F922C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F923C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0162($t6)
	lh      $t8, 0x00CA($t6)
	bne     $t7, $t8, .L802F935C
	nop
	jal     obj_lib_8029F464
	move    $a0, $0
	jal     pl_demo_80257640
	li      $a0, 0x0001
	li      $at, 0x0002
	bne     $v0, $at, .L802F9354
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0074($t9)
	ori     $t1, $t0, 0x0020
	sh      $t1, 0x0074($t9)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	li      $a2, 0x00A1
	beqz    $v0, .L802F9354
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0021
	lh      $t3, 0x0074($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0074($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0134($t5)
	la.u    $t6, object_b_8033282C+2*0
	la.l    $t6, object_b_8033282C+2*0
	lh      $t7, 0x0004($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0164($t8)
	la.u    $t0, object_b_8033282C+2*0
	la.l    $t0, object_b_8033282C+2*0
	lh      $t1, 0x0006($t0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x016C($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f16, 0x016C($t3)
	lwc1    $f18, 0x00A8($t3)
	lwc1    $f4, 0x0164($t3)
	lwc1    $f6, 0x00A0($t3)
	sub.s   $f12, $f16, $f18
	jal     atan2
	sub.s   $f14, $f4, $f6
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0100($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t2, 0x0005
	sw      $t2, 0x014C($t5)
.L802F9354:
	b       .L802F9390
	nop
.L802F935C:
	jal     obj_lib_8029F464
	li      $a0, 0x0001
	jal     Na_g_803220F0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a2, 0x0500
	lw      $a0, 0x00C8($t6)
	jal     obj_lib_8029E530
	lw      $a1, 0x0160($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C8($t7)
.L802F9390:
	b       .L802F9398
	nop
.L802F9398:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F93A8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x0026($sp)
	li      $at, 0x41200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     object_b_802E4E90
	nop
	jal     obj_lib_8029F464
	li      $a0, 0x0001
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, .L802F940C
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00AD
.L802F940C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a2, 0x0500
	lw      $a0, 0x00C8($t1)
	jal     obj_lib_8029E530
	lw      $a1, 0x0100($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li.u    $a2, 0x45466000
	li      $t4, 0x00C8
	lw      $a1, 0x0164($t3)
	lw      $a3, 0x016C($t3)
	sw      $t4, 0x0010($sp)
	li.l    $a2, 0x45466000
	jal     object_b_802E52B8
	move    $a0, $t3
	beqz    $v0, .L802F94C4
	nop
	jal     obj_lib_8029F464
	li      $a0, 0x0002
	li.u    $a0, 0x306F3081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x306F3081
	li      $at, 0x42480000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t5)
	li      $at, 0x42200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, -0x3FFF
	sw      $t7, 0x00C8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0004
	sw      $t9, 0x014C($t0)
.L802F94C4:
	lh      $t1, 0x0026($sp)
	beqz    $t1, .L802F94DC
	nop
	li      $at, 0x000F
	bne     $t1, $at, .L802F94E8
	nop
.L802F94DC:
	li.u    $a0, 0x306E2081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x306E2081
.L802F94E8:
	b       .L802F94F0
	nop
.L802F94F0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F9500:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029FEA4
	nop
	lui     $a0, %hi(object)
	jal     object_b_802E5160
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40000000
	mtc1    $at, $f9
	lwc1    $f4, 0x00B0($t6)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_b_80338974)
	lwc1    $f4, %lo(object_b_80338974)($at)
	lwc1    $f18, 0x00A4($t7)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802F9594
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	li      $t8, 0x0001
	lui     $at, %hi(_camera_bss+0x6A8)
	sw      $t8, %lo(_camera_bss+0x6A8)($at)
	li      $t9, 0x0001
	lui     $at, %hi(object_b_80332618)
	sb      $t9, %lo(object_b_80332618)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
.L802F9594:
	b       .L802F959C
	nop
.L802F959C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F95AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(hud+0x00)
	lh      $t7, %lo(hud+0x00)($t7)
	li      $at, 0x0064
	bne     $t7, $at, .L802F960C
	nop
	li.u    $a0, 0x3058FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x3058FF81
	li      $t8, 0x0001
	lui     $at, %hi(save_jump)
	sb      $t8, %lo(save_jump)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t0)
	b       .L802F964C
	nop
.L802F960C:
	lw      $t1, 0x001C($sp)
	andi    $t2, $t1, 0x0003
	bnez    $t2, .L802F9644
	nop
	li.u    $a0, 0x70150081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70150081
	lui     $t3, %hi(mario)
	lw      $t3, %lo(mario)($t3)
	lb      $t4, 0x00AD($t3)
	addiu   $t5, $t4, 0x0001
	sb      $t5, 0x00AD($t3)
.L802F9644:
	b       .L802F964C
	nop
.L802F964C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F965C
object_b_802F965C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x000B
	beqz    $at, L802F9704
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_80338978)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338978)($at)
	jr      $t7
	nop
.globl L802F9694
L802F9694:
	jal     object_b_802F9054
	nop
	b       L802F9704
	nop
.globl L802F96A4
L802F96A4:
	jal     object_b_802F8F08
	nop
	b       L802F9704
	nop
.globl L802F96B4
L802F96B4:
	jal     object_b_802F923C
	nop
	b       L802F9704
	nop
.globl L802F96C4
L802F96C4:
	jal     object_b_802F93A8
	nop
	b       L802F9704
	nop
.globl L802F96D4
L802F96D4:
	jal     object_b_802F9500
	nop
	b       L802F9704
	nop
.globl L802F96E4
L802F96E4:
	jal     object_b_802F95AC
	nop
	b       L802F9704
	nop
.globl L802F96F4
L802F96F4:
	jal     obj_lib_8029F464
	move    $a0, $0
	b       L802F9704
	nop
.globl L802F9704
L802F9704:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E7324
	addiu   $a0, $a0, 0x00F4
	b       .L802F971C
	nop
.L802F971C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

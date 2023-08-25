.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

shadow_802CD280:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	lui     $t6, %hi(shape_object)
	lw      $t6, %lo(shape_object)($t6)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0010($sp)
	lhu     $t8, 0x00D6($t7)
	lwc1    $f16, 0x0014($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t0
	mul.s   $f8, $f4, $f6
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x0000($a0)
	lw      $t1, 0x0004($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x0014($sp)
	lhu     $t2, 0x00D6($t1)
	lwc1    $f8, 0x0010($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	mul.s   $f16, $f6, $f10
	lwc1    $f18, %lo(math_sin)($at)
	mul.s   $f4, $f8, $f18
	add.s   $f6, $f16, $f4
	swc1    $f6, 0x0000($a1)
	b       .L802CD320
	nop
.L802CD320:
	jr      $ra
	addiu   $sp, $sp, 0x0008

shadow_802CD328:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lwc1    $f12, 0x0018($sp)
	jal     atan2
	lwc1    $f14, 0x001C($sp)
	mtc1    $v0, $f4
	lui     $at, %hi(shadow_80338060)
	ldc1    $f10, %lo(shadow_80338060)($at)
	cvt.s.w $f6, $f4
	lui     $at, %hi(shadow_80338068)
	ldc1    $f18, %lo(shadow_80338068)($at)
	cvt.d.s $f8, $f6
	div.d   $f16, $f8, $f10
	mul.d   $f4, $f16, $f18
	b       .L802CD378
	cvt.s.d $f0, $f4
	b       .L802CD378
	nop
.L802CD378:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

shadow_802CD388:
	addiu   $sp, $sp, -0x0008
	mtc1    $0, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f14
	c.le.d  $f4, $f6
	nop
	bc1f    .L802CD3B0
	nop
	b       .L802CD42C
	swc1    $f12, 0x0004($sp)
.L802CD3B0:
	lui     $at, %hi(shadow_80338070)
	ldc1    $f10, %lo(shadow_80338070)($at)
	cvt.d.s $f8, $f14
	c.le.d  $f10, $f8
	nop
	bc1f    .L802CD3EC
	nop
	li      $at, 0x3FE00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f12
	mul.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	b       .L802CD42C
	swc1    $f6, 0x0004($sp)
.L802CD3EC:
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f10, $f14
	lui     $at, %hi(shadow_80338078)
	mul.d   $f16, $f8, $f10
	ldc1    $f18, %lo(shadow_80338078)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f10, $f12
	div.d   $f4, $f16, $f18
	sub.d   $f8, $f6, $f4
	mul.d   $f16, $f10, $f8
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0004($sp)
.L802CD42C:
	b       .L802CD43C
	lwc1    $f0, 0x0004($sp)
	b       .L802CD43C
	nop
.L802CD43C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

shadow_802CD444:
	lui     $at, %hi(shadow_80338080)
	ldc1    $f6, %lo(shadow_80338080)($at)
	cvt.d.s $f4, $f14
	c.le.d  $f6, $f4
	nop
	bc1f    .L802CD474
	nop
	mtc1    $0, $f0
	jr      $ra
	nop
	b       .L802CD47C
	nop
.L802CD474:
	jr      $ra
	mov.s   $f0, $f12
.L802CD47C:
	jr      $ra
	nop
	jr      $ra
	nop

shadow_802CD48C:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	andi    $a0, $a0, 0x00FF
	slti    $at, $a0, 0x0079
	beqz    $at, .L802CD4B4
	nop
	b       .L802CD60C
	move    $v0, $a0
	b       .L802CD604
	nop
.L802CD4B4:
	lwc1    $f4, 0x000C($sp)
	mtc1    $0, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	c.le.d  $f6, $f8
	nop
	bc1f    .L802CD4E4
	nop
	b       .L802CD60C
	move    $v0, $a0
	b       .L802CD604
	nop
.L802CD4E4:
	lwc1    $f10, 0x000C($sp)
	lui     $at, %hi(shadow_80338088)
	ldc1    $f18, %lo(shadow_80338088)($at)
	cvt.d.s $f16, $f10
	c.le.d  $f18, $f16
	nop
	bc1f    .L802CD514
	nop
	b       .L802CD60C
	li      $v0, 0x0078
	b       .L802CD604
	nop
.L802CD514:
	li      $t6, 0x0078
	subu    $t7, $t6, $a0
	mtc1    $t7, $f4
	lwc1    $f8, 0x000C($sp)
	lui     $at, %hi(shadow_80338090)
	cvt.s.w $f6, $f4
	ldc1    $f18, %lo(shadow_80338090)($at)
	mul.s   $f10, $f6, $f8
	mtc1    $a0, $f6
	nop
	cvt.s.w $f8, $f6
	cvt.d.s $f16, $f10
	bgez    $a0, .L802CD55C
	div.d   $f4, $f16, $f18
	li      $at, 0x4F800000
	mtc1    $at, $f10
	nop
	add.s   $f8, $f8, $f10
.L802CD55C:
	cvt.d.s $f16, $f8
	add.d   $f18, $f4, $f16
	cvt.s.d $f6, $f18
	swc1    $f6, 0x0004($sp)
	cfc1    $t8, $31
	li      $v0, 0x0001
	ctc1    $v0, $31
	lwc1    $f10, 0x0004($sp)
	cvt.w.s $f8, $f10
	cfc1    $v0, $31
	nop
	andi    $at, $v0, 0x0004
	andi    $v0, $v0, 0x0078
	beqz    $v0, .L802CD5E4
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f8
	li      $v0, 0x0001
	sub.s   $f8, $f10, $f8
	ctc1    $v0, $31
	nop
	cvt.w.s $f8, $f8
	cfc1    $v0, $31
	nop
	andi    $at, $v0, 0x0004
	andi    $v0, $v0, 0x0078
	bnez    $v0, .L802CD5DC
	nop
	mfc1    $v0, $f8
	li      $at, 0x80000000
	b       .L802CD5F4
	or      $v0, $v0, $at
.L802CD5DC:
	b       .L802CD5F4
	li      $v0, -0x0001
.L802CD5E4:
	mfc1    $v0, $f8
	nop
	bltz    $v0, .L802CD5DC
	nop
.L802CD5F4:
	ctc1    $t8, $31
	andi    $t9, $v0, 0x00FF
	b       .L802CD60C
	move    $v0, $t9
.L802CD604:
	b       .L802CD60C
	nop
.L802CD60C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

shadow_802CD614:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lwc1    $f12, 0x0000($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x0008($t6)
	swc1    $f0, 0x001C($sp)
	lwc1    $f4, 0x001C($sp)
	lui     $at, %hi(shadow_80338098)
	ldc1    $f8, %lo(shadow_80338098)($at)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    .L802CD668
	nop
	mtc1    $0, $f0
	b       .L802CD6B4
	nop
	b       .L802CD6AC
	nop
.L802CD668:
	lw      $t7, 0x0020($sp)
	lwc1    $f16, 0x001C($sp)
	lwc1    $f10, 0x0004($t7)
	c.le.s  $f16, $f10
	nop
	bc1f    .L802CD6AC
	nop
	lwc1    $f18, 0x000C($t7)
	c.le.s  $f18, $f16
	nop
	bc1f    .L802CD6AC
	nop
	li      $t8, 0x0001
	lui     $at, %hi(shadow_803612B4)
	sb      $t8, %lo(shadow_803612B4)($at)
	b       .L802CD6B4
	lwc1    $f0, 0x001C($sp)
.L802CD6AC:
	b       .L802CD6B4
	nop
.L802CD6B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

shadow_802CD6C4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lwc1    $f4, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0030($sp)
	lw      $t7, 0x0028($sp)
	swc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0034($sp)
	lw      $t8, 0x0028($sp)
	swc1    $f8, 0x0008($t8)
	lw      $t9, 0x0028($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0000($t9)
	lwc1    $f14, 0x0004($t9)
	jal     map_803814B8
	lw      $a2, 0x0008($t9)
	lw      $t0, 0x0028($sp)
	swc1    $f0, 0x000C($t0)
	lui     $t1, %hi(object_80361184)
	lw      $t1, %lo(object_80361184)($t1)
	beqz    $t1, .L802CD73C
	nop
	jal     shadow_802CD614
	lw      $a0, 0x0028($sp)
	swc1    $f0, 0x0024($sp)
.L802CD73C:
	lui     $t2, %hi(shadow_803612B4)
	lb      $t2, %lo(shadow_803612B4)($t2)
	beqz    $t2, .L802CD794
	nop
	lwc1    $f10, 0x0024($sp)
	lw      $t3, 0x0028($sp)
	swc1    $f10, 0x000C($t3)
	mtc1    $0, $f16
	lw      $t4, 0x0028($sp)
	swc1    $f16, 0x0014($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t5, 0x0028($sp)
	swc1    $f18, 0x0018($t5)
	mtc1    $0, $f4
	lw      $t6, 0x0028($sp)
	swc1    $f4, 0x001C($t6)
	lwc1    $f6, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	neg.s   $f8, $f6
	b       .L802CD824
	swc1    $f8, 0x0020($t7)
.L802CD794:
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(shadow_803380A0)
	ldc1    $f18, %lo(shadow_803380A0)($at)
	lwc1    $f10, 0x000C($t8)
	cvt.d.s $f16, $f10
	c.lt.d  $f16, $f18
	nop
	bc1t    .L802CD7DC
	nop
	lw      $t9, 0x001C($sp)
	mtc1    $0, $f9
	mtc1    $0, $f8
	lwc1    $f4, 0x0014($t9)
	cvt.d.s $f6, $f4
	c.le.d  $f6, $f8
	nop
	bc1f    .L802CD7E4
	nop
.L802CD7DC:
	b       .L802CD928
	li      $v0, 0x0001
.L802CD7E4:
	lw      $t0, 0x001C($sp)
	lw      $t1, 0x0028($sp)
	lwc1    $f10, 0x0010($t0)
	swc1    $f10, 0x0014($t1)
	lw      $t2, 0x001C($sp)
	lw      $t3, 0x0028($sp)
	lwc1    $f16, 0x0014($t2)
	swc1    $f16, 0x0018($t3)
	lw      $t4, 0x001C($sp)
	lw      $t5, 0x0028($sp)
	lwc1    $f18, 0x0018($t4)
	swc1    $f18, 0x001C($t5)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f4, 0x001C($t6)
	swc1    $f4, 0x0020($t7)
.L802CD824:
	lbu     $t8, 0x003F($sp)
	beqz    $t8, .L802CD858
	nop
	lw      $t9, 0x0028($sp)
	lwc1    $f6, 0x0030($sp)
	lbu     $a0, 0x003F($sp)
	lwc1    $f8, 0x000C($t9)
	sub.s   $f10, $f6, $f8
	mfc1    $a1, $f10
	jal     shadow_802CD48C
	nop
	lw      $t0, 0x0028($sp)
	sb      $v0, 0x002C($t0)
.L802CD858:
	lh      $t1, 0x003A($sp)
	lw      $t2, 0x0028($sp)
	lwc1    $f18, 0x0030($sp)
	mtc1    $t1, $f16
	lwc1    $f4, 0x000C($t2)
	cvt.s.w $f12, $f16
	jal     shadow_802CD388
	sub.s   $f14, $f18, $f4
	lw      $t3, 0x0028($sp)
	swc1    $f0, 0x0010($t3)
	lw      $t4, 0x0028($sp)
	lwc1    $f12, 0x001C($t4)
	jal     shadow_802CD328
	lwc1    $f14, 0x0014($t4)
	lw      $t5, 0x0028($sp)
	swc1    $f0, 0x0024($t5)
	lw      $t6, 0x0028($sp)
	lwc1    $f6, 0x0014($t6)
	lwc1    $f10, 0x001C($t6)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f16
	swc1    $f0, 0x0020($sp)
	lwc1    $f18, 0x0020($sp)
	mtc1    $0, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	c.eq.d  $f4, $f6
	nop
	bc1f    .L802CD8EC
	nop
	mtc1    $0, $f10
	lw      $t7, 0x0028($sp)
	b       .L802CD918
	swc1    $f10, 0x0028($t7)
.L802CD8EC:
	lw      $t8, 0x0028($sp)
	lwc1    $f12, 0x0020($sp)
	jal     shadow_802CD328
	lwc1    $f14, 0x0018($t8)
	lui     $at, %hi(shadow_803380A8)
	ldc1    $f8, %lo(shadow_803380A8)($at)
	cvt.d.s $f16, $f0
	lw      $t9, 0x0028($sp)
	sub.d   $f18, $f8, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0028($t9)
.L802CD918:
	b       .L802CD928
	move    $v0, $0
	b       .L802CD928
	nop
.L802CD928:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

shadow_802CD938:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	li      $at, 0x0003
	div     $0, $a0, $at
	mfhi    $t6
	sll     $t7, $t6, 4
	subu    $t7, $t7, $t6
	addiu   $t8, $t7, -0x000F
	sh      $t8, 0x0000($a1)
	li      $at, 0x0003
	div     $0, $a0, $at
	mflo    $t9
	sll     $t0, $t9, 4
	subu    $t0, $t0, $t9
	addiu   $t1, $t0, -0x000F
	sh      $t1, 0x0000($a2)
	jr      $ra
	nop
	jr      $ra
	nop

shadow_802CD988:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	bgez    $a0, .L802CD9A4
	andi    $t6, $a0, 0x0001
	beqz    $t6, .L802CD9A4
	nop
	addiu   $t6, $t6, -0x0002
.L802CD9A4:
	sll     $t7, $t6, 1
	sll     $t8, $t7, 4
	subu    $t8, $t8, $t7
	addiu   $t9, $t8, -0x000F
	sh      $t9, 0x0000($a1)
	bgez    $a0, .L802CD9C8
	sra     $t0, $a0, 1
	addiu   $at, $a0, 0x0001
	sra     $t0, $at, 1
.L802CD9C8:
	sll     $t1, $t0, 1
	sll     $t2, $t1, 4
	subu    $t2, $t2, $t1
	addiu   $t3, $t2, -0x000F
	sh      $t3, 0x0000($a2)
	jr      $ra
	nop
	jr      $ra
	nop

shadow_802CD9EC:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x003C($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	sw      $a3, 0x005C($sp)
	sw      $s0, 0x0038($sp)
	jal     obj_shape_802D22C4
	lwc1    $f12, 0x0058($sp)
	sh      $v0, 0x004E($sp)
	jal     obj_shape_802D22C4
	lwc1    $f12, 0x005C($sp)
	sh      $v0, 0x004C($sp)
	jal     obj_shape_802D22C4
	lwc1    $f12, 0x0060($sp)
	sh      $v0, 0x004A($sp)
	lb      $s0, 0x006B($sp)
	beqz    $s0, .L802CDA4C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802CDA64
	nop
	b       .L802CDA7C
	nop
.L802CDA4C:
	lb      $a0, 0x0057($sp)
	addiu   $a1, $sp, 0x0048
	jal     shadow_802CD938
	addiu   $a2, $sp, 0x0046
	b       .L802CDA7C
	nop
.L802CDA64:
	lb      $a0, 0x0057($sp)
	addiu   $a1, $sp, 0x0048
	jal     shadow_802CD988
	addiu   $a2, $sp, 0x0046
	b       .L802CDA7C
	nop
.L802CDA7C:
	lui     $t6, %hi(shadow_803612B0)
	lb      $t6, %lo(shadow_803612B0)($t6)
	beqz    $t6, .L802CDAB0
	nop
	lh      $t7, 0x004E($sp)
	addiu   $t8, $t7, 0x0005
	sh      $t8, 0x004E($sp)
	lh      $t9, 0x004C($sp)
	addiu   $t0, $t9, 0x0005
	sh      $t0, 0x004C($sp)
	lh      $t1, 0x004A($sp)
	addiu   $t2, $t1, 0x0005
	sh      $t2, 0x004A($sp)
.L802CDAB0:
	lh      $t4, 0x0048($sp)
	lh      $t6, 0x0046($sp)
	lh      $t3, 0x004A($sp)
	lbu     $t1, 0x0067($sp)
	li      $t8, 0x00FF
	li      $t9, 0x00FF
	li      $t0, 0x00FF
	sll     $t5, $t4, 5
	sll     $t7, $t6, 5
	sw      $t7, 0x0018($sp)
	sw      $t5, 0x0014($sp)
	sw      $t0, 0x0024($sp)
	sw      $t9, 0x0020($sp)
	sw      $t8, 0x001C($sp)
	lw      $a0, 0x0050($sp)
	lb      $a1, 0x0057($sp)
	lh      $a2, 0x004E($sp)
	lh      $a3, 0x004C($sp)
	sw      $t3, 0x0010($sp)
	jal     obj_shape_802D2210
	sw      $t1, 0x0028($sp)
	b       .L802CDB0C
	nop
.L802CDB0C:
	lw      $ra, 0x003C($sp)
	lw      $s0, 0x0038($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

shadow_802CDB20:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lwc1    $f4, 0x0014($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x0034($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f6, 0x0020($sp)
	mul.s   $f18, $f10, $f16
	add.s   $f4, $f8, $f18
	lwc1    $f8, 0x0018($sp)
	add.s   $f10, $f4, $f6
	neg.s   $f16, $f10
	b       .L802CDB6C
	div.s   $f0, $f16, $f8
	b       .L802CDB6C
	nop
.L802CDB6C:
	jr      $ra
	nop

shadow_802CDB74:
	sll     $a0, $a0, 24
	sll     $a1, $a1, 24
	sra     $a1, $a1, 24
	sra     $a0, $a0, 24
	li      $t6, 0x0003
	subu    $t7, $t6, $a1
	div     $0, $a0, $t7
	mfhi    $t8
	addiu   $t9, $t8, -0x0001
	sb      $t9, 0x0000($a2)
	bnez    $t7, .L802CDBA8
	nop
	break   7
.L802CDBA8:
	li      $at, -0x0001
	bne     $t7, $at, .L802CDBC0
	li      $at, 0x80000000
	bne     $a0, $at, .L802CDBC0
	nop
	break   6
.L802CDBC0:
	li      $t0, 0x0003
	subu    $t1, $t0, $a1
	div     $0, $a0, $t1
	mflo    $t2
	addiu   $t3, $t2, -0x0001
	sb      $t3, 0x0000($a3)
	bnez    $t1, .L802CDBE4
	nop
	break   7
.L802CDBE4:
	li      $at, -0x0001
	bne     $t1, $at, .L802CDBFC
	li      $at, 0x80000000
	bne     $a0, $at, .L802CDBFC
	nop
	break   6
.L802CDBFC:
	li      $at, 0x0001
	bne     $a1, $at, .L802CDC30
	nop
	lb      $t4, 0x0000($a2)
	bnez    $t4, .L802CDC1C
	nop
	li      $t5, 0x0001
	sb      $t5, 0x0000($a2)
.L802CDC1C:
	lb      $t6, 0x0000($a3)
	bnez    $t6, .L802CDC30
	nop
	li      $t7, 0x0001
	sb      $t7, 0x0000($a3)
.L802CDC30:
	jr      $ra
	nop
	jr      $ra
	nop

shadow_802CDC40:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x004C($sp)
	sw      $a0, 0x0070($sp)
	sw      $a1, 0x0074($sp)
	sw      $a2, 0x0078($sp)
	sw      $a3, 0x007C($sp)
	sw      $s0, 0x0048($sp)
	sdc1    $f20, 0x0040($sp)
	lwc1    $f4, 0x009C($sp)
	lui     $at, %hi(shadow_803380B0)
	ldc1    $f8, %lo(shadow_803380B0)($at)
	cvt.d.s $f6, $f4
	lui     $at, %hi(shadow_803380B8)
	mul.d   $f10, $f6, $f8
	ldc1    $f16, %lo(shadow_803380B8)($at)
	div.d   $f18, $f10, $f16
	jal     cosf
	cvt.s.d $f12, $f18
	lwc1    $f4, 0x0084($sp)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x006C($sp)
	lwc1    $f8, 0x0098($sp)
	lui     $at, %hi(shadow_803380C0)
	ldc1    $f16, %lo(shadow_803380C0)($at)
	cvt.d.s $f10, $f8
	lui     $at, %hi(shadow_803380C8)
	mul.d   $f18, $f10, $f16
	ldc1    $f4, %lo(shadow_803380C8)($at)
	div.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0068($sp)
	lb      $a0, 0x0073($sp)
	lb      $a1, 0x00B3($sp)
	addiu   $a2, $sp, 0x005F
	jal     shadow_802CDB74
	addiu   $a3, $sp, 0x005E
	lb      $t6, 0x005F($sp)
	lwc1    $f18, 0x0084($sp)
	li      $at, 0x40000000
	mtc1    $t6, $f10
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.s.w $f16, $f10
	mul.s   $f4, $f16, $f18
	cvt.d.s $f6, $f4
	div.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0064($sp)
	lb      $t7, 0x005E($sp)
	lwc1    $f6, 0x006C($sp)
	li      $at, 0x40000000
	mtc1    $t7, $f18
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.s.w $f4, $f18
	mul.s   $f8, $f4, $f6
	cvt.d.s $f10, $f8
	div.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0060($sp)
	jal     sinf
	lwc1    $f12, 0x0068($sp)
	mov.s   $f20, $f0
	jal     cosf
	lwc1    $f12, 0x0068($sp)
	lwc1    $f6, 0x0064($sp)
	lwc1    $f10, 0x0060($sp)
	lwc1    $f4, 0x0074($sp)
	mul.s   $f8, $f0, $f6
	lw      $t8, 0x00A4($sp)
	mul.s   $f16, $f10, $f20
	add.s   $f18, $f8, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0000($t8)
	jal     cosf
	lwc1    $f12, 0x0068($sp)
	mov.s   $f20, $f0
	jal     sinf
	lwc1    $f12, 0x0068($sp)
	lwc1    $f10, 0x0060($sp)
	lwc1    $f16, 0x0064($sp)
	lwc1    $f6, 0x007C($sp)
	mul.s   $f8, $f10, $f20
	lw      $t9, 0x00AC($sp)
	mul.s   $f18, $f0, $f16
	sub.s   $f4, $f8, $f18
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0000($t9)
	lui     $t0, %hi(shadow_803612B4)
	lb      $t0, %lo(shadow_803612B4)($t0)
	beqz    $t0, .L802CDDC0
	nop
	lwc1    $f16, 0x0080($sp)
	lw      $t1, 0x00A8($sp)
	b       .L802CDE78
	swc1    $f16, 0x0000($t1)
.L802CDDC0:
	lb      $s0, 0x00B3($sp)
	beqz    $s0, .L802CDDE0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802CDE0C
	nop
	b       .L802CDE78
	nop
.L802CDDE0:
	lw      $t2, 0x00A4($sp)
	lw      $t3, 0x00AC($sp)
	lwc1    $f14, 0x0078($sp)
	addiu   $a3, $sp, 0x0058
	lwc1    $f12, 0x0000($t2)
	jal     map_803814B8
	lw      $a2, 0x0000($t3)
	lw      $t4, 0x00A8($sp)
	swc1    $f0, 0x0000($t4)
	b       .L802CDE78
	nop
.L802CDE0C:
	addiu   $t5, $sp, 0x0074
	addiu   $t7, $t5, 0x0030
	move    $t8, $sp
.L802CDE18:
	lw      $at, 0x0000($t5)
	addiu   $t5, $t5, 0x000C
	addiu   $t8, $t8, 0x000C
	sw      $at, -0x000C($t8)
	lw      $at, -0x0008($t5)
	sw      $at, -0x0008($t8)
	lw      $at, -0x0004($t5)
	bne     $t5, $t7, .L802CDE18
	sw      $at, -0x0004($t8)
	lw      $t9, 0x00A4($sp)
	lw      $t0, 0x00AC($sp)
	lw      $a0, 0x0000($sp)
	lwc1    $f8, 0x0000($t9)
	lw      $a1, 0x0004($sp)
	lw      $a2, 0x0008($sp)
	swc1    $f8, 0x0030($sp)
	lwc1    $f18, 0x0000($t0)
	lw      $a3, 0x000C($sp)
	jal     shadow_802CDB20
	swc1    $f18, 0x0034($sp)
	lw      $t1, 0x00A8($sp)
	swc1    $f0, 0x0000($t1)
	b       .L802CDE78
	nop
.L802CDE78:
	b       .L802CDE80
	nop
.L802CDE80:
	lw      $ra, 0x004C($sp)
	ldc1    $f20, 0x0040($sp)
	lw      $s0, 0x0048($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0070

shadow_802CDE94:
	addiu   $sp, $sp, -0x0010
	sw      $a0, 0x0010($sp)
	sw      $a1, 0x0014($sp)
	sw      $a2, 0x0018($sp)
	sw      $a3, 0x001C($sp)
	lwc1    $f4, 0x0040($sp)
	lwc1    $f6, 0x0010($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x0044($sp)
	lwc1    $f16, 0x001C($sp)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($sp)
	lwc1    $f4, 0x0048($sp)
	lwc1    $f6, 0x0018($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f4, 0x0008($sp)
	lwc1    $f6, 0x0028($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f16, 0x0004($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x002C($sp)
	mul.s   $f6, $f16, $f4
	add.s   $f10, $f18, $f8
	add.s   $f18, $f10, $f6
	swc1    $f18, 0x0000($sp)
	lwc1    $f8, 0x0000($sp)
	trunc.w.s $f16, $f8
	mfc1    $v0, $f16
	nop
	sll     $t7, $v0, 16
	move    $v0, $t7
	sra     $t8, $v0, 16
	b       .L802CDF34
	move    $v0, $t8
	b       .L802CDF34
	nop
.L802CDF34:
	jr      $ra
	addiu   $sp, $sp, 0x0010

shadow_802CDF3C:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x004C($sp)
	sw      $a0, 0x0070($sp)
	sw      $a1, 0x0074($sp)
	sw      $a2, 0x0078($sp)
	sw      $a3, 0x007C($sp)
	lbu     $t6, 0x00A4($sp)
	sb      $t6, 0x0057($sp)
	lui     $t7, %hi(shadow_803612B4)
	lb      $t7, %lo(shadow_803612B4)($t7)
	beqz    $t7, .L802CDF74
	nop
	li      $t8, 0x00C8
	sb      $t8, 0x0057($sp)
.L802CDF74:
	addiu   $t9, $sp, 0x0078
	addiu   $t1, $t9, 0x0030
	lb      $a0, 0x0077($sp)
	move    $t2, $sp
.L802CDF84:
	lw      $at, 0x0000($t9)
	addiu   $t9, $t9, 0x000C
	addiu   $t2, $t2, 0x000C
	sw      $at, -0x0008($t2)
	lw      $at, -0x0008($t9)
	sw      $at, -0x0004($t2)
	lw      $at, -0x0004($t9)
	bne     $t9, $t1, .L802CDF84
	sw      $at, 0x0000($t2)
	lb      $t6, 0x00AB($sp)
	addiu   $t3, $sp, 0x006C
	addiu   $t4, $sp, 0x0068
	addiu   $t5, $sp, 0x0064
	sw      $t5, 0x003C($sp)
	sw      $t4, 0x0038($sp)
	sw      $t3, 0x0034($sp)
	lw      $a1, 0x0004($sp)
	lw      $a2, 0x0008($sp)
	lw      $a3, 0x000C($sp)
	jal     shadow_802CDC40
	sw      $t6, 0x0040($sp)
	lb      $t7, 0x00AB($sp)
	bnez    $t7, .L802CE0B4
	nop
	lui     $t8, %hi(shadow_803612B4)
	lb      $t8, %lo(shadow_803612B4)($t8)
	bnez    $t8, .L802CE0B4
	nop
	addiu   $t0, $sp, 0x0078
	addiu   $t9, $t0, 0x0030
	move    $t2, $sp
.L802CE000:
	lw      $at, 0x0000($t0)
	addiu   $t0, $t0, 0x000C
	addiu   $t2, $t2, 0x000C
	sw      $at, -0x000C($t2)
	lw      $at, -0x0008($t0)
	sw      $at, -0x0008($t2)
	lw      $at, -0x0004($t0)
	bne     $t0, $t9, .L802CE000
	sw      $at, -0x0004($t2)
	lwc1    $f4, 0x006C($sp)
	lwc1    $f6, 0x0068($sp)
	lwc1    $f8, 0x0064($sp)
	lw      $a0, 0x0000($sp)
	lw      $a1, 0x0004($sp)
	lw      $a2, 0x0008($sp)
	lw      $a3, 0x000C($sp)
	swc1    $f4, 0x0030($sp)
	swc1    $f6, 0x0034($sp)
	jal     shadow_802CDE94
	swc1    $f8, 0x0038($sp)
	beqz    $v0, .L802CE0B4
	nop
	addiu   $t3, $sp, 0x0078
	addiu   $t5, $t3, 0x0030
	move    $t6, $sp
.L802CE064:
	lw      $at, 0x0000($t3)
	addiu   $t3, $t3, 0x000C
	addiu   $t6, $t6, 0x000C
	sw      $at, -0x000C($t6)
	lw      $at, -0x0008($t3)
	sw      $at, -0x0008($t6)
	lw      $at, -0x0004($t3)
	bne     $t3, $t5, .L802CE064
	sw      $at, -0x0004($t6)
	lwc1    $f10, 0x006C($sp)
	lwc1    $f16, 0x0064($sp)
	lw      $a0, 0x0000($sp)
	lw      $a1, 0x0004($sp)
	lw      $a2, 0x0008($sp)
	lw      $a3, 0x000C($sp)
	swc1    $f10, 0x0030($sp)
	jal     shadow_802CDB20
	swc1    $f16, 0x0034($sp)
	swc1    $f0, 0x0068($sp)
	sb      $0, 0x0057($sp)
.L802CE0B4:
	lwc1    $f18, 0x006C($sp)
	lwc1    $f4, 0x0078($sp)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0060($sp)
	lwc1    $f8, 0x0068($sp)
	lwc1    $f10, 0x007C($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x005C($sp)
	lwc1    $f18, 0x0064($sp)
	lwc1    $f4, 0x0080($sp)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0058($sp)
	lwc1    $f8, 0x0058($sp)
	lbu     $t7, 0x0057($sp)
	lb      $t8, 0x00AB($sp)
	lw      $a0, 0x0070($sp)
	lb      $a1, 0x0077($sp)
	lw      $a2, 0x0060($sp)
	lw      $a3, 0x005C($sp)
	swc1    $f8, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	jal     shadow_802CD9EC
	sw      $t8, 0x0018($sp)
	b       .L802CE118
	nop
.L802CE118:
	lw      $ra, 0x004C($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

shadow_802CE128:
	sll     $a2, $a2, 24
	sll     $a3, $a3, 24
	sra     $a3, $a3, 24
	sra     $a2, $a2, 24
	addiu   $sp, $sp, -0x0028
	move    $t0, $a3
	li      $at, 0x000A
	beq     $t0, $at, .L802CE160
	nop
	li      $at, 0x0014
	beq     $t0, $at, .L802CE18C
	nop
	b       .L802CE1B8
	nop
.L802CE160:
	sw      $a0, 0x0024($sp)
	addiu   $a0, $a0, 0x0008
	lw      $t7, 0x0024($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0024($sp)
	la.u    $t8, gfx_shadow_circle
	la.l    $t8, gfx_shadow_circle
	sw      $t8, 0x0004($t9)
	b       .L802CE1B8
	nop
.L802CE18C:
	sw      $a0, 0x0020($sp)
	addiu   $a0, $a0, 0x0008
	lw      $t2, 0x0020($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x0020($sp)
	la.u    $t3, gfx_shadow_square
	la.l    $t3, gfx_shadow_square
	sw      $t3, 0x0004($t4)
	b       .L802CE1B8
	nop
.L802CE1B8:
	move    $t0, $a2
	beqz    $t0, .L802CE1D8
	nop
	li      $at, 0x0001
	beq     $t0, $at, .L802CE224
	nop
	b       .L802CE270
	nop
.L802CE1D8:
	sw      $a0, 0x001C($sp)
	addiu   $a0, $a0, 0x0008
	lw      $t6, 0x001C($sp)
	li.u    $t5, 0x04800090
	li.l    $t5, 0x04800090
	sw      $t5, 0x0000($t6)
	lw      $t7, 0x001C($sp)
	sw      $a1, 0x0004($t7)
	sw      $a0, 0x0018($sp)
	addiu   $a0, $a0, 0x0008
	lw      $t9, 0x0018($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t2, 0x0018($sp)
	la.u    $t1, gfx_shadow_9
	la.l    $t1, gfx_shadow_9
	sw      $t1, 0x0004($t2)
	b       .L802CE270
	nop
.L802CE224:
	sw      $a0, 0x0014($sp)
	addiu   $a0, $a0, 0x0008
	lw      $t4, 0x0014($sp)
	li.u    $t3, 0x04300040
	li.l    $t3, 0x04300040
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0014($sp)
	sw      $a1, 0x0004($t5)
	sw      $a0, 0x0010($sp)
	addiu   $a0, $a0, 0x0008
	lw      $t7, 0x0010($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0010($sp)
	la.u    $t8, gfx_shadow_4
	la.l    $t8, gfx_shadow_4
	sw      $t8, 0x0004($t9)
	b       .L802CE270
	nop
.L802CE270:
	sw      $a0, 0x000C($sp)
	addiu   $a0, $a0, 0x0008
	lw      $t2, 0x000C($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x000C($sp)
	la.u    $t3, gfx_shadow_end
	la.l    $t3, gfx_shadow_end
	sw      $t3, 0x0004($t4)
	sw      $a0, 0x0008($sp)
	lw      $t6, 0x0008($sp)
	li      $t5, 0xB8000000
	sw      $t5, 0x0000($t6)
	lw      $t7, 0x0008($sp)
	sw      $0, 0x0004($t7)
	b       .L802CE2B4
	nop
.L802CE2B4:
	jr      $ra
	addiu   $sp, $sp, 0x0028

shadow_802CE2BC:
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	andi    $a1, $a1, 0x00FF
	bltz    $a2, .L802CE2EC
	nop
	slt     $at, $a2, $a3
	beqz    $at, .L802CE2EC
	nop
	b       .L802CE3DC
	sb      $0, 0x002C($a0)
.L802CE2EC:
	lh      $t6, 0x0012($sp)
	slt     $at, $t6, $a2
	beqz    $at, .L802CE304
	nop
	b       .L802CE3DC
	sb      $a1, 0x002C($a0)
.L802CE304:
	mtc1    $a1, $f4
	bgez    $a1, .L802CE320
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L802CE320:
	subu    $t7, $a2, $a3
	mtc1    $t7, $f10
	lh      $t8, 0x0012($sp)
	li      $t1, 0x0001
	cvt.s.w $f16, $f10
	subu    $t9, $t8, $a3
	mtc1    $t9, $f4
	nop
	cvt.s.w $f8, $f4
	mul.s   $f18, $f6, $f16
	div.s   $f10, $f18, $f8
	cfc1    $t0, $31
	ctc1    $t1, $31
	nop
	cvt.w.s $f6, $f10
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	beqz    $t1, .L802CE3C0
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t1, 0x0001
	sub.s   $f6, $f10, $f6
	ctc1    $t1, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	bnez    $t1, .L802CE3B8
	nop
	mfc1    $t1, $f6
	li      $at, 0x80000000
	b       .L802CE3D0
	or      $t1, $t1, $at
.L802CE3B8:
	b       .L802CE3D0
	li      $t1, -0x0001
.L802CE3C0:
	mfc1    $t1, $f6
	nop
	bltz    $t1, .L802CE3B8
	nop
.L802CE3D0:
	ctc1    $t0, $31
	sb      $t1, 0x002C($a0)
	nop
.L802CE3DC:
	jr      $ra
	nop
	jr      $ra
	nop

shadow_802CE3EC:
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	andi    $a1, $a1, 0x00FF
	slt     $at, $a2, $a3
	bnez    $at, .L802CE510
	nop
	lh      $t6, 0x0012($sp)
	slt     $at, $t6, $a2
	bnez    $at, .L802CE510
	nop
	lh      $t8, 0x0012($sp)
	subu    $t7, $a2, $a3
	mtc1    $t7, $f4
	subu    $t9, $t8, $a3
	mtc1    $t9, $f8
	cvt.s.w $f6, $f4
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.s.w $f10, $f8
	div.s   $f16, $f6, $f10
	mtc1    $a1, $f6
	nop
	cvt.s.w $f10, $f6
	cvt.d.s $f18, $f16
	bgez    $a1, .L802CE470
	sub.d   $f8, $f4, $f18
	li      $at, 0x4F800000
	mtc1    $at, $f16
	nop
	add.s   $f10, $f10, $f16
.L802CE470:
	cvt.d.s $f4, $f10
	li      $t1, 0x0001
	mul.d   $f18, $f4, $f8
	cfc1    $t0, $31
	ctc1    $t1, $31
	nop
	cvt.w.d $f6, $f18
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	beqz    $t1, .L802CE4F4
	nop
	li      $at, 0x41E00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	li      $t1, 0x0001
	sub.d   $f6, $f18, $f6
	ctc1    $t1, $31
	nop
	cvt.w.d $f6, $f6
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	bnez    $t1, .L802CE4EC
	nop
	mfc1    $t1, $f6
	li      $at, 0x80000000
	b       .L802CE504
	or      $t1, $t1, $at
.L802CE4EC:
	b       .L802CE504
	li      $t1, -0x0001
.L802CE4F4:
	mfc1    $t1, $f6
	nop
	bltz    $t1, .L802CE4EC
	nop
.L802CE504:
	ctc1    $t0, $31
	b       .L802CE514
	sb      $t1, 0x002C($a0)
.L802CE510:
	sb      $0, 0x002C($a0)
.L802CE514:
	jr      $ra
	nop
	jr      $ra
	nop

shadow_802CE524:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0020($sp)
	lw      $s0, 0x0038($sp)
	beqz    $s0, .L802CE55C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802CE570
	nop
	b       .L802CE584
	nop
.L802CE55C:
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	sw      $t6, 0x0034($sp)
	b       .L802CE584
	nop
.L802CE570:
	lui     $t7, %hi(obj_luigi)
	lw      $t7, %lo(obj_luigi)($t7)
	sw      $t7, 0x0034($sp)
	b       .L802CE584
	nop
.L802CE584:
	lw      $t8, 0x0034($sp)
	lh      $t9, 0x0040($t8)
	sh      $t9, 0x0030($sp)
	lw      $t0, 0x0034($sp)
	lh      $s0, 0x0038($t0)
	beqz    $s0, .L802CE604
	nop
	li      $at, 0x001C
	beq     $s0, $at, .L802CE630
	nop
	li      $at, 0x0033
	beq     $s0, $at, .L802CE5CC
	nop
	li      $at, 0x0034
	beq     $s0, $at, .L802CE5D8
	nop
	b       .L802CE65C
	nop
.L802CE5CC:
	sb      $0, 0x0033($sp)
	b       .L802CE66C
	nop
.L802CE5D8:
	li      $t1, 0x000E
	sw      $t1, 0x0010($sp)
	lw      $a0, 0x0040($sp)
	lbu     $a1, 0x003F($sp)
	lh      $a2, 0x0030($sp)
	jal     shadow_802CE2BC
	li      $a3, 0x0005
	li      $t2, 0x0001
	sb      $t2, 0x0033($sp)
	b       .L802CE66C
	nop
.L802CE604:
	li      $t3, 0x0021
	sw      $t3, 0x0010($sp)
	lw      $a0, 0x0040($sp)
	lbu     $a1, 0x003F($sp)
	lh      $a2, 0x0030($sp)
	jal     shadow_802CE2BC
	li      $a3, 0x0015
	li      $t4, 0x0001
	sb      $t4, 0x0033($sp)
	b       .L802CE66C
	nop
.L802CE630:
	li      $t5, 0x0005
	sw      $t5, 0x0010($sp)
	lw      $a0, 0x0040($sp)
	lbu     $a1, 0x003F($sp)
	lh      $a2, 0x0030($sp)
	jal     shadow_802CE3EC
	move    $a3, $0
	li      $t6, 0x0001
	sb      $t6, 0x0033($sp)
	b       .L802CE66C
	nop
.L802CE65C:
	li      $t7, 0x0002
	sb      $t7, 0x0033($sp)
	b       .L802CE66C
	nop
.L802CE66C:
	b       .L802CE67C
	lb      $v0, 0x0033($sp)
	b       .L802CE67C
	nop
.L802CE67C:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

shadow_802CE690:
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x0013
	bne     $t6, $at, .L802CE734
	nop
	lui     $t7, %hi(shadow_803612B2)
	lh      $t7, %lo(shadow_803612B2)($t7)
	li      $at, 0x0001
	bne     $t7, $at, .L802CE734
	nop
	lwc1    $f4, 0x000C($a0)
	lui     $at, %hi(shadow_803380D0)
	ldc1    $f8, %lo(shadow_803380D0)($at)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    .L802CE6F4
	nop
	lui     $at, %hi(shadow_803380D8)
	lwc1    $f10, %lo(shadow_803380D8)($at)
	swc1    $f10, 0x000C($a0)
	li      $t8, 0x0001
	lui     $at, %hi(shadow_803612B4)
	b       .L802CE72C
	sb      $t8, %lo(shadow_803612B4)($at)
.L802CE6F4:
	lwc1    $f16, 0x000C($a0)
	lui     $at, %hi(shadow_803380E0)
	ldc1    $f4, %lo(shadow_803380E0)($at)
	cvt.d.s $f18, $f16
	c.lt.d  $f4, $f18
	nop
	bc1f    .L802CE72C
	nop
	lui     $at, %hi(shadow_803380E8)
	lwc1    $f6, %lo(shadow_803380E8)($at)
	swc1    $f6, 0x000C($a0)
	li      $t9, 0x0001
	lui     $at, %hi(shadow_803612B4)
	sb      $t9, %lo(shadow_803612B4)($at)
.L802CE72C:
	b       .L802CE78C
	nop
.L802CE734:
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	li      $at, 0x0016
	bne     $t0, $at, .L802CE78C
	nop
	lui     $t1, %hi(scene_index)
	lh      $t1, %lo(scene_index)($t1)
	li      $at, 0x0001
	bne     $t1, $at, .L802CE78C
	nop
	lui     $t2, %hi(shadow_803612B2)
	lh      $t2, %lo(shadow_803612B2)($t2)
	li      $at, 0x0001
	bne     $t2, $at, .L802CE78C
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x000C($a0)
	li      $t3, 0x0001
	lui     $at, %hi(shadow_803612B4)
	sb      $t3, %lo(shadow_803612B4)($at)
.L802CE78C:
	jr      $ra
	nop
	jr      $ra
	nop

shadow_802CE79C:
	addiu   $sp, $sp, -0x0098
	sw      $ra, 0x004C($sp)
	sw      $a2, 0x00A0($sp)
	sw      $a3, 0x00A4($sp)
	swc1    $f12, 0x0098($sp)
	swc1    $f14, 0x009C($sp)
	sw      $s0, 0x0048($sp)
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x000F
	bne     $t6, $at, .L802CE83C
	nop
	lui     $t7, %hi(shadow_803612B2)
	lh      $t7, %lo(shadow_803612B2)($t7)
	li      $at, 0x000A
	beq     $t7, $at, .L802CE83C
	nop
	lui     $s0, %hi(obj_shape_803612F0)
	lb      $s0, %lo(obj_shape_803612F0)($s0)
	li      $at, 0x0001
	beq     $s0, $at, .L802CE808
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802CE828
	nop
	b       .L802CE83C
	nop
.L802CE808:
	li      $t8, 0x0001
	lui     $at, %hi(shadow_803612B5)
	sb      $t8, %lo(shadow_803612B5)($at)
	li      $t9, 0x0001
	lui     $at, %hi(shadow_803612B0)
	sb      $t9, %lo(shadow_803612B0)($at)
	b       .L802CE83C
	nop
.L802CE828:
	li      $t0, 0x0001
	lui     $at, %hi(shadow_803612B5)
	sb      $t0, %lo(shadow_803612B5)($at)
	b       .L802CE83C
	nop
.L802CE83C:
	lw      $a0, 0x00AC($sp)
	lbu     $a1, 0x00AB($sp)
	jal     shadow_802CE524
	addiu   $a2, $sp, 0x0060
	move    $s0, $v0
	beqz    $s0, .L802CE878
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802CE888
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802CE8B4
	nop
	b       .L802CE8E4
	nop
.L802CE878:
	b       .L802CE9BC
	move    $v0, $0
	b       .L802CE8E4
	nop
.L802CE888:
	lh      $t1, 0x00A6($sp)
	addiu   $a0, $sp, 0x0060
	lw      $a1, 0x0098($sp)
	lw      $a2, 0x009C($sp)
	lw      $a3, 0x00A0($sp)
	sw      $0, 0x0014($sp)
	jal     shadow_802CD6C4
	sw      $t1, 0x0010($sp)
	sb      $v0, 0x005F($sp)
	b       .L802CE8E4
	nop
.L802CE8B4:
	lh      $t2, 0x00A6($sp)
	lbu     $t3, 0x00AB($sp)
	addiu   $a0, $sp, 0x0060
	lw      $a1, 0x0098($sp)
	lw      $a2, 0x009C($sp)
	lw      $a3, 0x00A0($sp)
	sw      $t2, 0x0010($sp)
	jal     shadow_802CD6C4
	sw      $t3, 0x0014($sp)
	sb      $v0, 0x005F($sp)
	b       .L802CE8E4
	nop
.L802CE8E4:
	lb      $t4, 0x005F($sp)
	beqz    $t4, .L802CE8F8
	nop
	b       .L802CE9BC
	move    $v0, $0
.L802CE8F8:
	jal     gfx_alloc
	li      $a0, 0x0090
	sw      $v0, 0x0094($sp)
	jal     gfx_alloc
	li      $a0, 0x0028
	sw      $v0, 0x0090($sp)
	lw      $t5, 0x0094($sp)
	beqz    $t5, .L802CE928
	nop
	lw      $t6, 0x0090($sp)
	bnez    $t6, .L802CE930
	nop
.L802CE928:
	b       .L802CE9BC
	move    $v0, $0
.L802CE930:
	jal     shadow_802CE690
	addiu   $a0, $sp, 0x0060
	sw      $0, 0x0058($sp)
.L802CE93C:
	addiu   $t7, $sp, 0x0060
	addiu   $t9, $t7, 0x0030
	lw      $a0, 0x0094($sp)
	lw      $a1, 0x0058($sp)
	move    $t0, $sp
.L802CE950:
	lw      $at, 0x0000($t7)
	addiu   $t7, $t7, 0x000C
	addiu   $t0, $t0, 0x000C
	sw      $at, -0x0004($t0)
	lw      $at, -0x0008($t7)
	sw      $at, 0x0000($t0)
	lw      $at, -0x0004($t7)
	bne     $t7, $t9, .L802CE950
	sw      $at, 0x0004($t0)
	sw      $0, 0x0038($sp)
	lw      $a2, 0x0008($sp)
	jal     shadow_802CDF3C
	lw      $a3, 0x000C($sp)
	lw      $t1, 0x0058($sp)
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x0009
	bnez    $at, .L802CE93C
	sw      $t2, 0x0058($sp)
	lw      $a0, 0x0090($sp)
	lw      $a1, 0x0094($sp)
	move    $a2, $0
	jal     shadow_802CE128
	li      $a3, 0x000A
	b       .L802CE9BC
	lw      $v0, 0x0090($sp)
	b       .L802CE9BC
	nop
.L802CE9BC:
	lw      $ra, 0x004C($sp)
	lw      $s0, 0x0048($sp)
	addiu   $sp, $sp, 0x0098
	jr      $ra
	nop

shadow_802CE9D0:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x0044($sp)
	sw      $a2, 0x0090($sp)
	sw      $a3, 0x0094($sp)
	swc1    $f12, 0x0088($sp)
	swc1    $f14, 0x008C($sp)
	lh      $t6, 0x0096($sp)
	lbu     $t7, 0x009B($sp)
	addiu   $a0, $sp, 0x0050
	lw      $a1, 0x0088($sp)
	lw      $a2, 0x008C($sp)
	lw      $a3, 0x0090($sp)
	sw      $t6, 0x0010($sp)
	jal     shadow_802CD6C4
	sw      $t7, 0x0014($sp)
	beqz    $v0, .L802CEA1C
	nop
	b       .L802CEAD8
	move    $v0, $0
.L802CEA1C:
	jal     gfx_alloc
	li      $a0, 0x0090
	sw      $v0, 0x0084($sp)
	jal     gfx_alloc
	li      $a0, 0x0028
	sw      $v0, 0x0080($sp)
	lw      $t8, 0x0084($sp)
	beqz    $t8, .L802CEA4C
	nop
	lw      $t9, 0x0080($sp)
	bnez    $t9, .L802CEA54
	nop
.L802CEA4C:
	b       .L802CEAD8
	move    $v0, $0
.L802CEA54:
	sw      $0, 0x004C($sp)
.L802CEA58:
	addiu   $t0, $sp, 0x0050
	addiu   $t2, $t0, 0x0030
	lw      $a0, 0x0084($sp)
	lw      $a1, 0x004C($sp)
	move    $t3, $sp
.L802CEA6C:
	lw      $at, 0x0000($t0)
	addiu   $t0, $t0, 0x000C
	addiu   $t3, $t3, 0x000C
	sw      $at, -0x0004($t3)
	lw      $at, -0x0008($t0)
	sw      $at, 0x0000($t3)
	lw      $at, -0x0004($t0)
	bne     $t0, $t2, .L802CEA6C
	sw      $at, 0x0004($t3)
	sw      $0, 0x0038($sp)
	lw      $a2, 0x0008($sp)
	jal     shadow_802CDF3C
	lw      $a3, 0x000C($sp)
	lw      $t4, 0x004C($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0009
	bnez    $at, .L802CEA58
	sw      $t5, 0x004C($sp)
	lw      $a0, 0x0080($sp)
	lw      $a1, 0x0084($sp)
	move    $a2, $0
	jal     shadow_802CE128
	li      $a3, 0x000A
	b       .L802CEAD8
	lw      $v0, 0x0080($sp)
	b       .L802CEAD8
	nop
.L802CEAD8:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

shadow_802CEAE8:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x0044($sp)
	sw      $a2, 0x0090($sp)
	sw      $a3, 0x0094($sp)
	swc1    $f12, 0x0088($sp)
	swc1    $f14, 0x008C($sp)
	lh      $t6, 0x0096($sp)
	lbu     $t7, 0x009B($sp)
	addiu   $a0, $sp, 0x0050
	lw      $a1, 0x0088($sp)
	lw      $a2, 0x008C($sp)
	lw      $a3, 0x0090($sp)
	sw      $t6, 0x0010($sp)
	jal     shadow_802CD6C4
	sw      $t7, 0x0014($sp)
	beqz    $v0, .L802CEB34
	nop
	b       .L802CEBF4
	move    $v0, $0
.L802CEB34:
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0084($sp)
	jal     gfx_alloc
	li      $a0, 0x0028
	sw      $v0, 0x0080($sp)
	lw      $t8, 0x0084($sp)
	beqz    $t8, .L802CEB64
	nop
	lw      $t9, 0x0080($sp)
	bnez    $t9, .L802CEB6C
	nop
.L802CEB64:
	b       .L802CEBF4
	move    $v0, $0
.L802CEB6C:
	sw      $0, 0x004C($sp)
.L802CEB70:
	addiu   $t0, $sp, 0x0050
	addiu   $t2, $t0, 0x0030
	lw      $a0, 0x0084($sp)
	lw      $a1, 0x004C($sp)
	move    $t3, $sp
.L802CEB84:
	lw      $at, 0x0000($t0)
	addiu   $t0, $t0, 0x000C
	addiu   $t3, $t3, 0x000C
	sw      $at, -0x0004($t3)
	lw      $at, -0x0008($t0)
	sw      $at, 0x0000($t3)
	lw      $at, -0x0004($t0)
	bne     $t0, $t2, .L802CEB84
	sw      $at, 0x0004($t3)
	li      $t4, 0x0001
	sw      $t4, 0x0038($sp)
	lw      $a2, 0x0008($sp)
	jal     shadow_802CDF3C
	lw      $a3, 0x000C($sp)
	lw      $t5, 0x004C($sp)
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0004
	bnez    $at, .L802CEB70
	sw      $t6, 0x004C($sp)
	lw      $a0, 0x0080($sp)
	lw      $a1, 0x0084($sp)
	li      $a2, 0x0001
	jal     shadow_802CE128
	li      $a3, 0x000A
	b       .L802CEBF4
	lw      $v0, 0x0080($sp)
	b       .L802CEBF4
	nop
.L802CEBF4:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

shadow_802CEC04:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	swc1    $f12, 0x0040($sp)
	swc1    $f14, 0x0044($sp)
	lwc1    $f12, 0x0040($sp)
	lwc1    $f14, 0x0044($sp)
	lw      $a2, 0x0048($sp)
	jal     map_803814B8
	addiu   $a3, $sp, 0x0034
	swc1    $f0, 0x002C($sp)
	lh      $t6, 0x004E($sp)
	bgez    $t6, .L802CEC48
	sra     $t7, $t6, 1
	addiu   $at, $t6, 0x0001
	sra     $t7, $at, 1
.L802CEC48:
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0028($sp)
	lwc1    $f8, 0x002C($sp)
	lui     $at, %hi(shadow_803380F0)
	ldc1    $f16, %lo(shadow_803380F0)($at)
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    .L802CEC88
	nop
	b       .L802CEDB0
	move    $v0, $0
	b       .L802CEC98
	nop
.L802CEC88:
	lwc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x0044($sp)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0030($sp)
.L802CEC98:
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x003C($sp)
	jal     gfx_alloc
	li      $a0, 0x0028
	sw      $v0, 0x0038($sp)
	lw      $t8, 0x003C($sp)
	beqz    $t8, .L802CECC8
	nop
	lw      $t9, 0x0038($sp)
	bnez    $t9, .L802CECD0
	nop
.L802CECC8:
	b       .L802CEDB0
	move    $v0, $0
.L802CECD0:
	lwc1    $f8, 0x0028($sp)
	lbu     $t0, 0x0053($sp)
	li      $t1, 0x0001
	neg.s   $f10, $f8
	sw      $t1, 0x0018($sp)
	mfc1    $a2, $f10
	swc1    $f10, 0x0010($sp)
	lw      $a0, 0x003C($sp)
	move    $a1, $0
	lw      $a3, 0x0030($sp)
	jal     shadow_802CD9EC
	sw      $t0, 0x0014($sp)
	lwc1    $f16, 0x0028($sp)
	lbu     $t2, 0x0053($sp)
	li      $t3, 0x0001
	neg.s   $f18, $f16
	mfc1    $a2, $f16
	swc1    $f18, 0x0010($sp)
	sw      $t3, 0x0018($sp)
	lw      $a0, 0x003C($sp)
	li      $a1, 0x0001
	lw      $a3, 0x0030($sp)
	jal     shadow_802CD9EC
	sw      $t2, 0x0014($sp)
	lwc1    $f4, 0x0028($sp)
	lbu     $t4, 0x0053($sp)
	li      $t5, 0x0001
	neg.s   $f6, $f4
	sw      $t5, 0x0018($sp)
	mfc1    $a2, $f6
	lw      $a0, 0x003C($sp)
	li      $a1, 0x0002
	lw      $a3, 0x0030($sp)
	swc1    $f4, 0x0010($sp)
	jal     shadow_802CD9EC
	sw      $t4, 0x0014($sp)
	lwc1    $f8, 0x0028($sp)
	lbu     $t6, 0x0053($sp)
	li      $t7, 0x0001
	mfc1    $a2, $f8
	sw      $t7, 0x0018($sp)
	lw      $a0, 0x003C($sp)
	li      $a1, 0x0003
	lw      $a3, 0x0030($sp)
	swc1    $f8, 0x0010($sp)
	jal     shadow_802CD9EC
	sw      $t6, 0x0014($sp)
	lw      $a0, 0x0038($sp)
	lw      $a1, 0x003C($sp)
	li      $a2, 0x0001
	jal     shadow_802CE128
	li      $a3, 0x000A
	b       .L802CEDB0
	lw      $v0, 0x0038($sp)
	b       .L802CEDB0
	nop
.L802CEDB0:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

shadow_802CEDC0:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a2, 0x0058($sp)
	sw      $a3, 0x005C($sp)
	swc1    $f12, 0x0050($sp)
	swc1    $f14, 0x0054($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x004C($sp)
	jal     gfx_alloc
	li      $a0, 0x0028
	sw      $v0, 0x0048($sp)
	lw      $t6, 0x004C($sp)
	beqz    $t6, .L802CEE08
	nop
	lw      $t7, 0x0048($sp)
	bnez    $t7, .L802CEE10
	nop
.L802CEE08:
	b       .L802CEF5C
	move    $v0, $0
.L802CEE10:
	lwc1    $f4, 0x0054($sp)
	lwc1    $f8, 0x0050($sp)
	addiu   $a0, $sp, 0x0040
	neg.s   $f6, $f4
	neg.s   $f10, $f8
	mfc1    $a2, $f6
	mfc1    $a3, $f10
	jal     shadow_802CD280
	addiu   $a1, $sp, 0x0044
	lwc1    $f16, 0x0054($sp)
	addiu   $a0, $sp, 0x0038
	addiu   $a1, $sp, 0x003C
	neg.s   $f18, $f16
	lw      $a3, 0x0050($sp)
	mfc1    $a2, $f18
	jal     shadow_802CD280
	nop
	lwc1    $f4, 0x0050($sp)
	addiu   $a0, $sp, 0x0030
	addiu   $a1, $sp, 0x0034
	neg.s   $f6, $f4
	lw      $a2, 0x0054($sp)
	mfc1    $a3, $f6
	jal     shadow_802CD280
	nop
	addiu   $a0, $sp, 0x0028
	addiu   $a1, $sp, 0x002C
	lw      $a2, 0x0054($sp)
	jal     shadow_802CD280
	lw      $a3, 0x0050($sp)
	lwc1    $f8, 0x0040($sp)
	lbu     $t8, 0x005F($sp)
	li      $t9, 0x0001
	sw      $t9, 0x0018($sp)
	lw      $a0, 0x004C($sp)
	move    $a1, $0
	lw      $a2, 0x0044($sp)
	lw      $a3, 0x0058($sp)
	swc1    $f8, 0x0010($sp)
	jal     shadow_802CD9EC
	sw      $t8, 0x0014($sp)
	lwc1    $f10, 0x0038($sp)
	lbu     $t0, 0x005F($sp)
	li      $t1, 0x0001
	sw      $t1, 0x0018($sp)
	lw      $a0, 0x004C($sp)
	li      $a1, 0x0001
	lw      $a2, 0x003C($sp)
	lw      $a3, 0x0058($sp)
	swc1    $f10, 0x0010($sp)
	jal     shadow_802CD9EC
	sw      $t0, 0x0014($sp)
	lwc1    $f16, 0x0030($sp)
	lbu     $t2, 0x005F($sp)
	li      $t3, 0x0001
	sw      $t3, 0x0018($sp)
	lw      $a0, 0x004C($sp)
	li      $a1, 0x0002
	lw      $a2, 0x0034($sp)
	lw      $a3, 0x0058($sp)
	swc1    $f16, 0x0010($sp)
	jal     shadow_802CD9EC
	sw      $t2, 0x0014($sp)
	lwc1    $f18, 0x0028($sp)
	lbu     $t4, 0x005F($sp)
	li      $t5, 0x0001
	sw      $t5, 0x0018($sp)
	lw      $a0, 0x004C($sp)
	li      $a1, 0x0003
	lw      $a2, 0x002C($sp)
	lw      $a3, 0x0058($sp)
	swc1    $f18, 0x0010($sp)
	jal     shadow_802CD9EC
	sw      $t4, 0x0014($sp)
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x004C($sp)
	li      $a2, 0x0001
	jal     shadow_802CE128
	li      $a3, 0x0014
	b       .L802CEF5C
	lw      $v0, 0x0048($sp)
	b       .L802CEF5C
	nop
.L802CEF5C:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

shadow_802CEF6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lwc1    $f12, 0x0020($sp)
	lwc1    $f14, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     map_803814B8
	addiu   $a3, $sp, 0x001C
	lw      $t6, 0x002C($sp)
	swc1    $f0, 0x0000($t6)
	lw      $t7, 0x002C($sp)
	lui     $at, %hi(shadow_803380F8)
	ldc1    $f8, %lo(shadow_803380F8)($at)
	lwc1    $f4, 0x0000($t7)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    .L802CEFD4
	nop
	b       .L802CF070
	li      $v0, 0x0001
	b       .L802CF060
	nop
.L802CEFD4:
	lwc1    $f12, 0x0020($sp)
	jal     map_80381BA0
	lwc1    $f14, 0x0028($sp)
	swc1    $f0, 0x0018($sp)
	lwc1    $f10, 0x0018($sp)
	lui     $at, %hi(shadow_80338100)
	ldc1    $f18, %lo(shadow_80338100)($at)
	cvt.d.s $f16, $f10
	c.lt.d  $f16, $f18
	nop
	bc1f    .L802CF00C
	nop
	b       .L802CF060
	nop
.L802CF00C:
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x0018($sp)
	c.le.s  $f6, $f4
	nop
	bc1f    .L802CF060
	nop
	lw      $t8, 0x002C($sp)
	lwc1    $f8, 0x0000($t8)
	c.le.s  $f8, $f6
	nop
	bc1f    .L802CF060
	nop
	li      $t9, 0x0001
	lui     $at, %hi(shadow_803612B4)
	sb      $t9, %lo(shadow_803612B4)($at)
	lwc1    $f10, 0x0018($sp)
	lw      $t0, 0x002C($sp)
	swc1    $f10, 0x0000($t0)
	lw      $t2, 0x0030($sp)
	li      $t1, 0x00C8
	sb      $t1, 0x0000($t2)
.L802CF060:
	b       .L802CF070
	move    $v0, $0
	b       .L802CF070
	nop
.L802CF070:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

shadow_802CF080:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f14, 0x003C($sp)
	sw      $s0, 0x0020($sp)
	addiu   $t6, $sp, 0x004B
	sw      $t6, 0x0010($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     shadow_802CEF6C
	addiu   $a3, $sp, 0x0034
	beqz    $v0, .L802CF0C8
	nop
	b       .L802CF1DC
	move    $v0, $0
.L802CF0C8:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0034($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lb      $s0, 0x004F($sp)
	li      $at, 0x000A
	beq     $s0, $at, .L802CF108
	nop
	li      $at, 0x000B
	beq     $s0, $at, .L802CF134
	nop
	li      $at, 0x000C
	beq     $s0, $at, .L802CF16C
	nop
	b       .L802CF1A4
	nop
.L802CF108:
	lh      $t7, 0x0046($sp)
	bgez    $t7, .L802CF11C
	sra     $t8, $t7, 1
	addiu   $at, $t7, 0x0001
	sra     $t8, $at, 1
.L802CF11C:
	mtc1    $t8, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x002C($sp)
	b       .L802CF1AC
	nop
.L802CF134:
	lh      $t9, 0x0046($sp)
	lwc1    $f14, 0x0030($sp)
	mtc1    $t9, $f18
	jal     shadow_802CD388
	cvt.s.w $f12, $f18
	li      $at, 0x40000000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f0
	div.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x002C($sp)
	b       .L802CF1AC
	nop
.L802CF16C:
	lh      $t0, 0x0046($sp)
	lwc1    $f14, 0x0030($sp)
	mtc1    $t0, $f16
	jal     shadow_802CD444
	cvt.s.w $f12, $f16
	li      $at, 0x40000000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f0
	div.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x002C($sp)
	b       .L802CF1AC
	nop
.L802CF1A4:
	b       .L802CF1DC
	move    $v0, $0
.L802CF1AC:
	lwc1    $f16, 0x0030($sp)
	lwc1    $f10, 0x002C($sp)
	lbu     $a3, 0x004B($sp)
	neg.s   $f18, $f16
	mov.s   $f12, $f10
	mfc1    $a2, $f18
	jal     shadow_802CEDC0
	mov.s   $f14, $f10
	b       .L802CF1DC
	nop
	b       .L802CF1DC
	nop
.L802CF1DC:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

shadow_802CF1F0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f14, 0x003C($sp)
	lb      $t6, 0x004F($sp)
	addiu   $t7, $t6, -0x0032
	sb      $t7, 0x0027($sp)
	addiu   $t8, $sp, 0x004B
	sw      $t8, 0x0010($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     shadow_802CEF6C
	addiu   $a3, $sp, 0x0034
	beqz    $v0, .L802CF240
	nop
	b       .L802CF33C
	move    $v0, $0
.L802CF240:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0034($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lb      $t9, 0x0027($sp)
	lui     $t1, %hi(shadow_rect_data+0x08)
	li      $at, 0x0001
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t1, $t0
	lb      $t1, %lo(shadow_rect_data+0x08)($t1)
	bne     $t1, $at, .L802CF2CC
	nop
	lb      $t2, 0x0027($sp)
	lui     $at, %hi(shadow_rect_data+0x00)
	lwc1    $f14, 0x0030($sp)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $at, $at, $t3
	jal     shadow_802CD388
	lwc1    $f12, %lo(shadow_rect_data+0x00)($at)
	swc1    $f0, 0x002C($sp)
	lb      $t4, 0x0027($sp)
	lui     $at, %hi(shadow_rect_data+0x04)
	lwc1    $f14, 0x0030($sp)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addu    $at, $at, $t5
	jal     shadow_802CD388
	lwc1    $f12, %lo(shadow_rect_data+0x04)($at)
	b       .L802CF30C
	swc1    $f0, 0x0028($sp)
.L802CF2CC:
	lb      $t6, 0x0027($sp)
	lui     $at, %hi(shadow_rect_data+0x00)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(shadow_rect_data+0x00)($at)
	swc1    $f10, 0x002C($sp)
	lb      $t8, 0x0027($sp)
	lui     $at, %hi(shadow_rect_data+0x04)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $at, $at, $t9
	lwc1    $f16, %lo(shadow_rect_data+0x04)($at)
	swc1    $f16, 0x0028($sp)
.L802CF30C:
	lwc1    $f18, 0x0030($sp)
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0028($sp)
	neg.s   $f4, $f18
	lbu     $a3, 0x004B($sp)
	mfc1    $a2, $f4
	jal     shadow_802CEDC0
	nop
	b       .L802CF33C
	nop
	b       .L802CF33C
	nop
.L802CF33C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* Gfx *shadow_802CF34C(
	float x,
	float y,
	float z,
	int size,
	int alpha,
	int type
) */
.globl shadow_802CF34C
shadow_802CF34C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f14, 0x003C($sp)
	sw      $s0, 0x0020($sp)
	sw      $0, 0x0034($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     map_80381900
	addiu   $a3, $sp, 0x0030
	lui     $at, %hi(shadow_803612B4)
	sb      $0, %lo(shadow_803612B4)($at)
	lui     $at, %hi(shadow_803612B5)
	sb      $0, %lo(shadow_803612B5)($at)
	lui     $at, %hi(shadow_803612B0)
	sb      $0, %lo(shadow_803612B0)($at)
	lw      $t6, 0x0030($sp)
	beqz    $t6, .L802CF3D4
	nop
	lw      $t7, 0x0030($sp)
	li      $at, 0x002E
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, .L802CF3C4
	nop
	li      $t9, 0x0001
	lui     $at, %hi(shadow_803612B5)
	sb      $t9, %lo(shadow_803612B5)($at)
.L802CF3C4:
	lw      $t0, 0x0030($sp)
	lui     $at, %hi(shadow_803612B2)
	lh      $t1, 0x0000($t0)
	sh      $t1, %lo(shadow_803612B2)($at)
.L802CF3D4:
	lb      $s0, 0x004F($sp)
	slti    $at, $s0, 0x000D
	bnez    $at, .L802CF3F8
	nop
	li      $at, 0x0063
	beq     $s0, $at, .L802CF524
	nop
	b       L802CF550
	nop
.L802CF3F8:
	sltiu   $at, $s0, 0x000D
	beqz    $at, L802CF550
	nop
	sll     $t2, $s0, 2
	lui     $at, %hi(shadow_80338108)
	addu    $at, $at, $t2
	lw      $t2, %lo(shadow_80338108)($at)
	jr      $t2
	nop
.globl L802CF41C
L802CF41C:
	lbu     $t3, 0x004B($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x0046($sp)
	jal     shadow_802CE9D0
	sw      $t3, 0x0010($sp)
	sw      $v0, 0x0034($sp)
	b       .L802CF580
	nop
.globl L802CF444
L802CF444:
	lbu     $t4, 0x004B($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x0046($sp)
	jal     shadow_802CEAE8
	sw      $t4, 0x0010($sp)
	sw      $v0, 0x0034($sp)
	b       .L802CF580
	nop
.globl L802CF46C
L802CF46C:
	lbu     $t5, 0x004B($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x0046($sp)
	jal     shadow_802CEC04
	sw      $t5, 0x0010($sp)
	sw      $v0, 0x0034($sp)
	b       .L802CF580
	nop
.globl L802CF494
L802CF494:
	lbu     $t6, 0x004B($sp)
	lb      $t7, 0x004F($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x0046($sp)
	sw      $t6, 0x0010($sp)
	jal     shadow_802CF080
	sw      $t7, 0x0014($sp)
	sw      $v0, 0x0034($sp)
	b       .L802CF580
	nop
.globl L802CF4C4
L802CF4C4:
	lbu     $t8, 0x004B($sp)
	lb      $t9, 0x004F($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x0046($sp)
	sw      $t8, 0x0010($sp)
	jal     shadow_802CF080
	sw      $t9, 0x0014($sp)
	sw      $v0, 0x0034($sp)
	b       .L802CF580
	nop
.globl L802CF4F4
L802CF4F4:
	lbu     $t0, 0x004B($sp)
	lb      $t1, 0x004F($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x0046($sp)
	sw      $t0, 0x0010($sp)
	jal     shadow_802CF080
	sw      $t1, 0x0014($sp)
	sw      $v0, 0x0034($sp)
	b       .L802CF580
	nop
.L802CF524:
	lbu     $t2, 0x004B($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x0046($sp)
	sw      $0, 0x0014($sp)
	jal     shadow_802CE79C
	sw      $t2, 0x0010($sp)
	sw      $v0, 0x0034($sp)
	b       .L802CF580
	nop
.globl L802CF550
L802CF550:
	lbu     $t3, 0x004B($sp)
	lb      $t4, 0x004F($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x0046($sp)
	sw      $t3, 0x0010($sp)
	jal     shadow_802CF1F0
	sw      $t4, 0x0014($sp)
	sw      $v0, 0x0034($sp)
	b       .L802CF580
	nop
.L802CF580:
	b       .L802CF590
	lw      $v0, 0x0034($sp)
	b       .L802CF590
	nop
.L802CF590:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

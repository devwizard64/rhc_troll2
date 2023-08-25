.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

background_802CF5B0:
	addiu   $sp, $sp, -0x0010
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	sw      $a1, 0x0014($sp)
	sll     $t6, $a0, 4
	lui     $t7, %hi(background_803612C0+0x00)
	addu    $t7, $t7, $t6
	lhu     $t7, %lo(background_803612C0+0x00)($t7)
	mtc1    $t7, $f4
	bgez    $t7, .L802CF5EC
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L802CF5EC:
	swc1    $f6, 0x000C($sp)
	lwc1    $f10, 0x000C($sp)
	lui     $at, %hi(background_80338140)
	ldc1    $f18, %lo(background_80338140)($at)
	lwc1    $f8, 0x0014($sp)
	cvt.d.s $f16, $f10
	li      $at, 0x40F00000
	mul.d   $f4, $f16, $f18
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f6, $f8
	mul.d   $f16, $f6, $f10
	div.d   $f18, $f4, $f16
	cvt.s.d $f8, $f18
	swc1    $f8, 0x0008($sp)
	lwc1    $f6, 0x0008($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f10, $f6
	add.d   $f16, $f10, $f4
	trunc.w.d $f18, $f16
	swc1    $f18, 0x0004($sp)
	lw      $t9, 0x0004($sp)
	slti    $at, $t9, 0x0501
	bnez    $at, .L802CF67C
	nop
	lw      $t0, 0x0004($sp)
	li      $at, 0x0500
	div     $0, $t0, $at
	mflo    $t1
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 8
	subu    $t3, $t0, $t2
	sw      $t3, 0x0004($sp)
.L802CF67C:
	lw      $t4, 0x0004($sp)
	li      $t5, 0x0500
	b       .L802CF694
	subu    $v0, $t5, $t4
	b       .L802CF694
	nop
.L802CF694:
	jr      $ra
	addiu   $sp, $sp, 0x0010

background_802CF69C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lb      $t6, 0x002B($sp)
	lui     $t8, %hi(background_803612C0+0x02)
	lui     $at, %hi(background_80338148)
	sll     $t7, $t6, 4
	addu    $t8, $t8, $t7
	lh      $t8, %lo(background_803612C0+0x02)($t8)
	ldc1    $f10, %lo(background_80338148)($at)
	lui     $at, %hi(background_80338150)
	mtc1    $t8, $f4
	ldc1    $f18, %lo(background_80338150)($at)
	cvt.s.w $f6, $f4
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	div.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0024($sp)
	li      $at, 0x43B40000
	mtc1    $at, $f8
	lwc1    $f10, 0x0024($sp)
	lui     $at, %hi(background_80338158)
	ldc1    $f4, %lo(background_80338158)($at)
	mul.s   $f16, $f8, $f10
	cvt.d.s $f18, $f16
	div.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0020($sp)
	jal     obj_shape_802D22C4
	lwc1    $f12, 0x0020($sp)
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	addiu   $t0, $t9, 0x0258
	sw      $t0, 0x0018($sp)
	lw      $t1, 0x0018($sp)
	slti    $at, $t1, 0x03C1
	bnez    $at, .L802CF744
	nop
	li      $t2, 0x03C0
	sw      $t2, 0x0018($sp)
.L802CF744:
	lw      $t3, 0x0018($sp)
	slti    $at, $t3, 0x00F0
	beqz    $at, .L802CF75C
	nop
	li      $t4, 0x00F0
	sw      $t4, 0x0018($sp)
.L802CF75C:
	b       .L802CF76C
	lw      $v0, 0x0018($sp)
	b       .L802CF76C
	nop
.L802CF76C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

background_802CF77C:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	addiu   $sp, $sp, -0x0008
	sll     $t6, $a0, 4
	lui     $t7, %hi(background_803612C0+0x04)
	addu    $t7, $t7, $t6
	lw      $t7, %lo(background_803612C0+0x04)($t7)
	li      $at, 0x00A0
	div     $0, $t7, $at
	mflo    $t8
	sw      $t8, 0x0004($sp)
	nop
	sll     $t9, $a0, 4
	lui     $t0, %hi(background_803612C0+0x08)
	addu    $t0, $t0, $t9
	lw      $t0, %lo(background_803612C0+0x08)($t0)
	li      $t1, 0x03C0
	li      $at, 0x0078
	subu    $t2, $t1, $t0
	div     $0, $t2, $at
	mflo    $t3
	sw      $t3, 0x0000($sp)
	nop
	lw      $t4, 0x0000($sp)
	lw      $t6, 0x0004($sp)
	sll     $t5, $t4, 2
	addu    $t5, $t5, $t4
	sll     $t5, $t5, 1
	b       .L802CF7FC
	addu    $v0, $t5, $t6
	b       .L802CF7FC
	nop
.L802CF7FC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

background_802CF804:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x003C($sp)
	lw      $t6, 0x0040($sp)
	li      $at, 0x000A
	div     $0, $t6, $at
	mfhi    $t7
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 5
	sh      $t8, 0x003A($sp)
	lw      $t9, 0x0040($sp)
	li      $at, 0x000A
	li      $t2, 0x03C0
	div     $0, $t9, $at
	mflo    $t0
	sll     $t1, $t0, 4
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	subu    $t3, $t2, $t1
	sh      $t3, 0x0038($sp)
	lw      $t4, 0x003C($sp)
	beqz    $t4, .L802CFA0C
	nop
	lb      $t6, 0x0047($sp)
	la.u    $t8, background_shade
	la.l    $t8, background_shade
	sll     $t7, $t6, 2
	li      $t5, -0x0001
	subu    $t7, $t7, $t6
	addu    $t9, $t7, $t8
	sw      $t5, 0x0010($sp)
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	lbu     $t0, 0x0000($t9)
	li      $t3, 0x00FF
	lw      $a0, 0x003C($sp)
	sw      $t0, 0x001C($sp)
	lbu     $t2, 0x0001($t9)
	move    $a1, $0
	lh      $a2, 0x003A($sp)
	sw      $t2, 0x0020($sp)
	lbu     $t1, 0x0002($t9)
	sw      $t3, 0x0028($sp)
	lh      $a3, 0x0038($sp)
	jal     obj_shape_802D2210
	sw      $t1, 0x0024($sp)
	lb      $t6, 0x0047($sp)
	la.u    $t8, background_shade
	la.l    $t8, background_shade
	sll     $t7, $t6, 2
	li      $t4, -0x0001
	li      $t5, 0x03E0
	subu    $t7, $t7, $t6
	addu    $t0, $t7, $t8
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0010($sp)
	sw      $0, 0x0014($sp)
	lbu     $t2, 0x0000($t0)
	lh      $a3, 0x0038($sp)
	li      $t3, 0x00FF
	sw      $t2, 0x001C($sp)
	lbu     $t9, 0x0001($t0)
	lw      $a0, 0x003C($sp)
	li      $a1, 0x0001
	sw      $t9, 0x0020($sp)
	lbu     $t1, 0x0002($t0)
	sw      $t3, 0x0028($sp)
	lh      $a2, 0x003A($sp)
	addiu   $a3, $a3, -0x0078
	jal     obj_shape_802D2210
	sw      $t1, 0x0024($sp)
	lb      $t7, 0x0047($sp)
	la.u    $t2, background_shade
	la.l    $t2, background_shade
	sll     $t8, $t7, 2
	li      $t4, -0x0001
	li      $t5, 0x03E0
	li      $t6, 0x03E0
	subu    $t8, $t8, $t7
	addu    $t9, $t8, $t2
	sw      $t6, 0x0018($sp)
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	lbu     $t0, 0x0000($t9)
	lh      $a2, 0x003A($sp)
	lh      $a3, 0x0038($sp)
	sw      $t0, 0x001C($sp)
	lbu     $t1, 0x0001($t9)
	li      $t4, 0x00FF
	lw      $a0, 0x003C($sp)
	sw      $t1, 0x0020($sp)
	lbu     $t3, 0x0002($t9)
	sw      $t4, 0x0028($sp)
	li      $a1, 0x0002
	addiu   $a2, $a2, 0x00A0
	addiu   $a3, $a3, -0x0078
	jal     obj_shape_802D2210
	sw      $t3, 0x0024($sp)
	lb      $t7, 0x0047($sp)
	la.u    $t2, background_shade
	la.l    $t2, background_shade
	sll     $t8, $t7, 2
	li      $t5, -0x0001
	li      $t6, 0x03E0
	subu    $t8, $t8, $t7
	addu    $t0, $t8, $t2
	sw      $t6, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	sw      $0, 0x0018($sp)
	lbu     $t1, 0x0000($t0)
	lh      $a2, 0x003A($sp)
	li      $t4, 0x00FF
	sw      $t1, 0x001C($sp)
	lbu     $t9, 0x0001($t0)
	lw      $a0, 0x003C($sp)
	li      $a1, 0x0003
	sw      $t9, 0x0020($sp)
	lbu     $t3, 0x0002($t0)
	sw      $t4, 0x0028($sp)
	lh      $a3, 0x0038($sp)
	addiu   $a2, $a2, 0x00A0
	jal     obj_shape_802D2210
	sw      $t3, 0x0024($sp)
	b       .L802CFA0C
	nop
.L802CFA0C:
	b       .L802CFA1C
	lw      $v0, 0x003C($sp)
	b       .L802CFA1C
	nop
.L802CFA1C:
	lw      $ra, 0x0034($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

background_802CFA2C:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	sw      $a3, 0x0064($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0054($sp)
.L802CFA4C:
	sw      $0, 0x0050($sp)
.L802CFA50:
	lb      $t6, 0x0063($sp)
	lw      $t9, 0x0054($sp)
	lui     $t8, %hi(background_803612C0+0x0C)
	sll     $t7, $t6, 4
	addu    $t8, $t8, $t7
	lw      $t8, %lo(background_803612C0+0x0C)($t8)
	sll     $t0, $t9, 2
	lw      $t2, 0x0050($sp)
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 1
	addu    $t1, $t8, $t0
	addu    $t3, $t1, $t2
	sw      $t3, 0x004C($sp)
	lb      $t4, 0x005F($sp)
	lui     $a0, %hi(background_data)
	sll     $t5, $t4, 2
	addu    $a0, $a0, $t5
	jal     segment_to_virtual
	lw      $a0, %lo(background_data)($a0)
	lw      $t6, 0x004C($sp)
	move    $s0, $v0
	sll     $t7, $t6, 2
	addu    $t9, $s0, $t7
	lw      $t8, 0x0000($t9)
	sw      $t8, 0x0048($sp)
	lw      $a0, 0x004C($sp)
	jal     background_802CF804
	lb      $a1, 0x0067($sp)
	sw      $v0, 0x0044($sp)
	lw      $t0, 0x0058($sp)
	lw      $t1, 0x0000($t0)
	sw      $t1, 0x0040($sp)
	lw      $t2, 0x0000($t0)
	addiu   $t3, $t2, 0x0008
	sw      $t3, 0x0000($t0)
	lw      $t5, 0x0040($sp)
	li      $t4, 0xFD100000
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x0048($sp)
	lw      $t7, 0x0040($sp)
	sw      $t6, 0x0004($t7)
	lw      $t9, 0x0058($sp)
	lw      $t8, 0x0000($t9)
	sw      $t8, 0x003C($sp)
	lw      $t1, 0x0000($t9)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x0000($t9)
	lw      $t0, 0x003C($sp)
	li      $t3, 0xE8000000
	sw      $t3, 0x0000($t0)
	lw      $t4, 0x003C($sp)
	sw      $0, 0x0004($t4)
	lw      $t5, 0x0058($sp)
	lw      $t6, 0x0000($t5)
	sw      $t6, 0x0038($sp)
	lw      $t7, 0x0000($t5)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x0000($t5)
	lw      $t2, 0x0038($sp)
	li      $t1, 0xF5100000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x0038($sp)
	li      $t9, 0x07000000
	sw      $t9, 0x0004($t3)
	lw      $t0, 0x0058($sp)
	lw      $t4, 0x0000($t0)
	sw      $t4, 0x0034($sp)
	lw      $t6, 0x0000($t0)
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x0000($t0)
	lw      $t5, 0x0034($sp)
	li      $t8, 0xE6000000
	sw      $t8, 0x0000($t5)
	lw      $t1, 0x0034($sp)
	sw      $0, 0x0004($t1)
	lw      $t2, 0x0058($sp)
	lw      $t9, 0x0000($t2)
	sw      $t9, 0x0030($sp)
	lw      $t3, 0x0000($t2)
	addiu   $t4, $t3, 0x0008
	sw      $t4, 0x0000($t2)
	lw      $t7, 0x0030($sp)
	li      $t6, 0xF3000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0030($sp)
	li.u    $t0, 0x073FF100
	li.l    $t0, 0x073FF100
	sw      $t0, 0x0004($t8)
	lw      $t5, 0x0058($sp)
	lw      $t1, 0x0000($t5)
	sw      $t1, 0x002C($sp)
	lw      $t9, 0x0000($t5)
	addiu   $t3, $t9, 0x0008
	sw      $t3, 0x0000($t5)
	lw      $t2, 0x002C($sp)
	li.u    $t4, 0x04300040
	li.l    $t4, 0x04300040
	sw      $t4, 0x0000($t2)
	lw      $t6, 0x0044($sp)
	lw      $t0, 0x002C($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t7, $t6, $at
	sw      $t7, 0x0004($t0)
	lw      $t8, 0x0058($sp)
	lw      $t1, 0x0000($t8)
	sw      $t1, 0x0028($sp)
	lw      $t9, 0x0000($t8)
	addiu   $t3, $t9, 0x0008
	sw      $t3, 0x0000($t8)
	lw      $t4, 0x0028($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t4)
	lw      $t6, 0x0028($sp)
	la.u    $t2, gfx_quad0
	la.l    $t2, gfx_quad0
	sw      $t2, 0x0004($t6)
	lw      $t7, 0x0050($sp)
	addiu   $t0, $t7, 0x0001
	slti    $at, $t0, 0x0003
	bnez    $at, .L802CFA50
	sw      $t0, 0x0050($sp)
	lw      $t1, 0x0054($sp)
	addiu   $t9, $t1, 0x0001
	slti    $at, $t9, 0x0003
	bnez    $at, .L802CFA4C
	sw      $t9, 0x0054($sp)
	b       .L802CFC54
	nop
.L802CFC54:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

background_802CFC68:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0040($sp)
	lb      $t6, 0x0043($sp)
	lui     $t8, %hi(background_803612C0+0x04)
	sll     $t7, $t6, 4
	addu    $t8, $t8, $t7
	lw      $t8, %lo(background_803612C0+0x04)($t8)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x003C($sp)
	lb      $t9, 0x0043($sp)
	lui     $t1, %hi(background_803612C0+0x04)
	sll     $t0, $t9, 4
	addu    $t1, $t1, $t0
	lw      $t1, %lo(background_803612C0+0x04)($t1)
	addiu   $t2, $t1, 0x0140
	mtc1    $t2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0038($sp)
	lb      $t3, 0x0043($sp)
	lui     $t5, %hi(background_803612C0+0x08)
	sll     $t4, $t3, 4
	addu    $t5, $t5, $t4
	lw      $t5, %lo(background_803612C0+0x08)($t5)
	addiu   $t6, $t5, -0x00F0
	mtc1    $t6, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0034($sp)
	lb      $t7, 0x0043($sp)
	lui     $t9, %hi(background_803612C0+0x08)
	sll     $t8, $t7, 4
	addu    $t9, $t9, $t8
	lw      $t9, %lo(background_803612C0+0x08)($t9)
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0030($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	beqz    $t0, .L802CFD68
	nop
	li      $at, 0x40400000
	mtc1    $at, $f16
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f8, 0x0030($sp)
	mtc1    $0, $f10
	lw      $a0, 0x002C($sp)
	lw      $a1, 0x003C($sp)
	lw      $a2, 0x0038($sp)
	lw      $a3, 0x0034($sp)
	swc1    $f16, 0x0018($sp)
	swc1    $f8, 0x0010($sp)
	swc1    $f18, 0x001C($sp)
	jal     guOrtho
	swc1    $f10, 0x0014($sp)
	b       .L802CFD68
	nop
.L802CFD68:
	b       .L802CFD78
	lw      $v0, 0x002C($sp)
	b       .L802CFD78
	nop
.L802CFD78:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

background_802CFD88:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	li      $t6, 0x0044
	sw      $t6, 0x003C($sp)
	lw      $a0, 0x003C($sp)
	sll     $t7, $a0, 3
	jal     gfx_alloc
	move    $a0, $t7
	sw      $v0, 0x0038($sp)
	lw      $t8, 0x0038($sp)
	sw      $t8, 0x0034($sp)
	lw      $t9, 0x0038($sp)
	bnez    $t9, .L802CFDDC
	nop
	b       .L802CFEE4
	move    $v0, $0
	b       .L802CFED4
	nop
.L802CFDDC:
	jal     background_802CFC68
	lb      $a0, 0x0043($sp)
	sw      $v0, 0x0030($sp)
	lw      $t0, 0x0034($sp)
	addiu   $t1, $t0, 0x0008
	sw      $t1, 0x0034($sp)
	sw      $t0, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x002C($sp)
	la.u    $t4, gfx_background_start
	la.l    $t4, gfx_background_start
	sw      $t4, 0x0004($t5)
	lw      $t6, 0x0034($sp)
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x0034($sp)
	sw      $t6, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li.u    $t8, 0x01010040
	li.l    $t8, 0x01010040
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0030($sp)
	lw      $t2, 0x0028($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t1, $t0, $at
	sw      $t1, 0x0004($t2)
	lw      $t3, 0x0034($sp)
	addiu   $t4, $t3, 0x0008
	sw      $t4, 0x0034($sp)
	sw      $t3, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0024($sp)
	la.u    $t7, gfx_background_tile
	la.l    $t7, gfx_background_tile
	sw      $t7, 0x0004($t8)
	addiu   $a0, $sp, 0x0034
	lb      $a1, 0x0047($sp)
	lb      $a2, 0x0043($sp)
	jal     background_802CFA2C
	lb      $a3, 0x004B($sp)
	lw      $t9, 0x0034($sp)
	addiu   $t0, $t9, 0x0008
	sw      $t0, 0x0034($sp)
	sw      $t9, 0x0020($sp)
	lw      $t2, 0x0020($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x0020($sp)
	la.u    $t3, gfx_background_end
	la.l    $t3, gfx_background_end
	sw      $t3, 0x0004($t4)
	lw      $t5, 0x0034($sp)
	sw      $t5, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0xB8000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x001C($sp)
	sw      $0, 0x0004($t8)
.L802CFED4:
	b       .L802CFEE4
	lw      $v0, 0x0038($sp)
	b       .L802CFEE4
	nop
.L802CFEE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl background_802CFEF4
background_802CFEF4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	sdc1    $f20, 0x0010($sp)
	lwc1    $f4, 0x0050($sp)
	lwc1    $f6, 0x0044($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x0054($sp)
	lwc1    $f16, 0x0048($sp)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lwc1    $f4, 0x0058($sp)
	lwc1    $f6, 0x004C($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	li      $t6, 0x0001
	sb      $t6, 0x002B($sp)
	lb      $t7, 0x003F($sp)
	li      $at, 0x0008
	bne     $t7, $at, .L802CFF7C
	nop
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	li      $a1, 0x0002
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	andi    $t8, $v0, 0x0001
	bnez    $t8, .L802CFF7C
	nop
	sb      $0, 0x002B($sp)
.L802CFF7C:
	li      $at, 0x42B40000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0040($sp)
	lwc1    $f12, 0x002C($sp)
	jal     atan2
	lwc1    $f14, 0x0034($sp)
	lb      $t9, 0x003B($sp)
	lui     $at, %hi(background_803612C0+0x00)
	sll     $t0, $t9, 4
	addu    $at, $at, $t0
	sh      $v0, %lo(background_803612C0+0x00)($at)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f4, 0x002C($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f6
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	lb      $t1, 0x003B($sp)
	lui     $at, %hi(background_803612C0+0x02)
	sll     $t2, $t1, 4
	addu    $at, $at, $t2
	sh      $v0, %lo(background_803612C0+0x02)($at)
	lb      $a0, 0x003B($sp)
	jal     background_802CF5B0
	lw      $a1, 0x0040($sp)
	lb      $t3, 0x003B($sp)
	lui     $at, %hi(background_803612C0+0x04)
	sll     $t4, $t3, 4
	addu    $at, $at, $t4
	sw      $v0, %lo(background_803612C0+0x04)($at)
	lb      $a0, 0x003B($sp)
	jal     background_802CF69C
	lw      $a1, 0x0040($sp)
	lb      $t5, 0x003B($sp)
	lui     $at, %hi(background_803612C0+0x08)
	sll     $t6, $t5, 4
	addu    $at, $at, $t6
	sw      $v0, %lo(background_803612C0+0x08)($at)
	jal     background_802CF77C
	lb      $a0, 0x003B($sp)
	lb      $t7, 0x003B($sp)
	lui     $at, %hi(background_803612C0+0x0C)
	sll     $t8, $t7, 4
	addu    $at, $at, $t8
	sw      $v0, %lo(background_803612C0+0x0C)($at)
	lb      $a0, 0x003B($sp)
	lb      $a1, 0x003F($sp)
	jal     background_802CFD88
	lb      $a2, 0x002B($sp)
	b       .L802D0068
	nop
	b       .L802D0068
	nop
.L802D0068:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

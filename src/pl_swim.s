.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_swim_80270110:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	move    $t9, $0
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0082
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.le.s  $f8, $f4
	nop
	bc1f    .L80270154
	nop
	li      $t9, 0x0001
.L80270154:
	sh      $t9, 0x001E($sp)
	lh      $t0, 0x001E($sp)
	beqz    $t0, .L802701A8
	nop
	lw      $t1, 0x0020($sp)
	lw      $t3, 0x0024($sp)
	lw      $t2, 0x0008($t1)
	or      $t4, $t2, $t3
	sw      $t4, 0x0008($t1)
	lui     $t6, %hi(pl_swim_8032DD30)
	lh      $t6, %lo(pl_swim_8032DD30)($t6)
	lh      $t5, 0x001E($sp)
	xor     $t7, $t5, $t6
	beqz    $t7, .L802701A8
	nop
	lw      $t8, 0x0020($sp)
	li.u    $a0, 0x04316081
	li.l    $a0, 0x04316081
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802701A8:
	lh      $t9, 0x001E($sp)
	lui     $at, %hi(pl_swim_8032DD30)
	sh      $t9, %lo(pl_swim_8032DD30)($at)
	b       .L802701BC
	nop
.L802701BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_802701CC:
	lw      $t6, 0x0004($a0)
	andi    $t7, $t6, 0x0004
	beqz    $t7, .L802701E4
	nop
	jr      $ra
	move    $v0, $0
.L802701E4:
	lh      $t8, 0x0076($a0)
	lwc1    $f8, 0x0040($a0)
	li      $at, 0x43C80000
	addiu   $t9, $t8, -0x0050
	mtc1    $t9, $f4
	mtc1    $at, $f16
	move    $v0, $0
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8027021C
	nop
	li      $v0, 0x0001
.L8027021C:
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

pl_swim_80270234:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L802702A0
	nop
	lw      $t9, 0x0020($sp)
	li      $at, 0x00020000
	lw      $t0, 0x000C($t9)
	and     $t1, $t0, $at
	beqz    $t1, .L80270288
	nop
	li      $at, 0xC0000000
	mtc1    $at, $f6
	b       .L80270298
	swc1    $f6, 0x001C($sp)
.L80270288:
	li      $at, 0xC1900000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x001C($sp)
.L80270298:
	b       .L802702E4
	nop
.L802702A0:
	jal     pl_swim_802701CC
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L802702C0
	nop
	li      $at, 0x3FA00000
	mtc1    $at, $f10
	b       .L802702E4
	swc1    $f10, 0x001C($sp)
.L802702C0:
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x000C($t2)
	andi    $t4, $t3, 0x0400
	bnez    $t4, .L802702E4
	nop
	li      $at, 0xC0000000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x001C($sp)
.L802702E4:
	b       .L802702F4
	lwc1    $f0, 0x001C($sp)
	b       .L802702F4
	nop
.L802702F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_80270304:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $a0, 0x0034($sp)
	li      $a1, 0x41200000
	jal     player_80251A48
	li      $a2, 0x42DC0000
	sw      $v0, 0x002C($sp)
	lw      $t6, 0x0034($sp)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x0000($t6)
	lwc1    $f14, 0x0004($t6)
	jal     map_80381900
	lw      $a2, 0x0008($t6)
	swc1    $f0, 0x001C($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80251AFC
	addiu   $a2, $sp, 0x0028
	swc1    $f0, 0x0020($sp)
	lw      $t7, 0x0024($sp)
	bnez    $t7, .L8027036C
	nop
	b       .L802704F0
	li      $v0, 0x0003
.L8027036C:
	lw      $t8, 0x0034($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f4, 0x0004($t8)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80270480
	nop
	lw      $t9, 0x0034($sp)
	lwc1    $f8, 0x0020($sp)
	li      $at, 0x43200000
	lwc1    $f10, 0x0004($t9)
	mtc1    $at, $f18
	sub.s   $f16, $f8, $f10
	c.le.s  $f18, $f16
	nop
	bc1f    .L802703FC
	nop
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0030($sp)
	sw      $t0, 0x0068($t1)
	lwc1    $f4, 0x001C($sp)
	lw      $t2, 0x0030($sp)
	swc1    $f4, 0x0070($t2)
	lw      $t3, 0x002C($sp)
	beqz    $t3, .L802703F4
	nop
	b       .L802704F0
	li      $v0, 0x0004
	b       .L802703FC
	nop
.L802703F4:
	b       .L802704F0
	move    $v0, $0
.L802703FC:
	lwc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x43200000
	mtc1    $at, $f16
	sub.s   $f10, $f6, $f8
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80270428
	nop
	b       .L802704F0
	li      $v0, 0x0003
.L80270428:
	li      $at, 0x43200000
	mtc1    $at, $f4
	lwc1    $f18, 0x0020($sp)
	lw      $t4, 0x0034($sp)
	lw      $a0, 0x0030($sp)
	sub.s   $f6, $f18, $f4
	lw      $a1, 0x0000($t4)
	lw      $a3, 0x0008($t4)
	addiu   $a0, $a0, 0x003C
	mfc1    $a2, $f6
	jal     vecf_set
	nop
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0030($sp)
	sw      $t5, 0x0068($t6)
	lwc1    $f8, 0x001C($sp)
	lw      $t7, 0x0030($sp)
	swc1    $f8, 0x0070($t7)
	b       .L802704F0
	li      $v0, 0x0002
	b       .L802704E8
	nop
.L80270480:
	lwc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x001C($sp)
	li      $at, 0x43200000
	mtc1    $at, $f4
	sub.s   $f18, $f10, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802704AC
	nop
	b       .L802704F0
	li      $v0, 0x0003
.L802704AC:
	lw      $t8, 0x0034($sp)
	lw      $a0, 0x0030($sp)
	lw      $a2, 0x001C($sp)
	lw      $a1, 0x0000($t8)
	lw      $a3, 0x0008($t8)
	jal     vecf_set
	addiu   $a0, $a0, 0x003C
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0030($sp)
	sw      $t9, 0x0068($t0)
	lwc1    $f6, 0x001C($sp)
	lw      $t1, 0x0030($sp)
	swc1    $f6, 0x0070($t1)
	b       .L802704F0
	li      $v0, 0x0001
.L802704E8:
	b       .L802704F0
	nop
.L802704F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_swim_80270500:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0040($sp)
	lw      $t6, 0x0048($sp)
	li      $at, 0x000E
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, .L802705DC
	nop
	lw      $t9, 0x0048($sp)
	lw      $t0, 0x0068($t9)
	lh      $t1, 0x0002($t0)
	sll     $t2, $t1, 8
	sh      $t2, 0x003E($sp)
	lw      $t3, 0x0048($sp)
	lui     $t8, %hi(pl_swim_8032DD38)
	lw      $t4, 0x0068($t3)
	lh      $t5, 0x0002($t4)
	sra     $t6, $t5, 8
	sll     $t7, $t6, 1
	addu    $t8, $t8, $t7
	lh      $t8, %lo(pl_swim_8032DD38)($t8)
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0038($sp)
	lhu     $t9, 0x003E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f10, 0x0038($sp)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_sin)($at)
	lw      $t2, 0x004C($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0000($t2)
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0000($t2)
	lhu     $t3, 0x003E($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0038($sp)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	lw      $t6, 0x004C($sp)
	mul.s   $f16, $f8, $f10
	lwc1    $f4, 0x0008($t6)
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x0008($t6)
.L802705DC:
	sw      $0, 0x0044($sp)
.L802705E0:
	lw      $t8, 0x0044($sp)
	lui     $t7, %hi(scene)
	lw      $t7, %lo(scene)($t7)
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	lw      $t1, 0x002C($t0)
	sw      $t1, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	beqz    $t2, .L802708EC
	nop
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0030($sp)
	lw      $t3, 0x0034($sp)
	lw      $t5, 0x0048($sp)
	lh      $t4, 0x0000($t3)
	lwc1    $f4, 0x003C($t5)
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	sub.s   $f16, $f10, $f4
	swc1    $f16, 0x002C($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0048($sp)
	lh      $t8, 0x0002($t6)
	lwc1    $f8, 0x0040($t7)
	mtc1    $t8, $f18
	nop
	cvt.s.w $f6, $f18
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($sp)
	lw      $t9, 0x0034($sp)
	lw      $t1, 0x0048($sp)
	lh      $t0, 0x0004($t9)
	lwc1    $f18, 0x0044($t1)
	mtc1    $t0, $f4
	nop
	cvt.s.w $f16, $f4
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x0024($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f4, 0x0024($sp)
	mul.s   $f10, $f8, $f8
	nop
	mul.s   $f16, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f10, $f16
	swc1    $f0, 0x0020($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f6, $f18, $f18
	nop
	mul.s   $f4, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f4
	swc1    $f0, 0x001C($sp)
	lwc1    $f12, 0x0020($sp)
	jal     atan2
	lwc1    $f14, 0x0028($sp)
	sh      $v0, 0x001A($sp)
	lwc1    $f12, 0x0024($sp)
	jal     atan2
	lwc1    $f14, 0x002C($sp)
	sh      $v0, 0x0018($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x001C($sp)
	li      $at, 0x4AFA0000
	mtc1    $at, $f8
	add.s   $f18, $f10, $f16
	lh      $t6, 0x0018($sp)
	div.s   $f6, $f8, $f18
	trunc.w.s $f4, $f6
	mfc1    $t3, $f4
	nop
	sll     $t4, $t3, 16
	sra     $t5, $t4, 16
	subu    $t8, $t6, $t5
	sh      $t8, 0x0018($sp)
	lw      $t7, 0x0034($sp)
	lh      $t9, 0x0006($t7)
	bltz    $t9, .L802707D0
	nop
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	li      $at, 0x0017
	bne     $t0, $at, .L80270764
	nop
	lui     $t1, %hi(scene_index)
	lh      $t1, %lo(scene_index)($t1)
	li      $at, 0x0002
	bne     $t1, $at, .L80270764
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0040($sp)
.L80270764:
	li      $at, 0x41D00000
	mtc1    $at, $f8
	lwc1    $f16, 0x001C($sp)
	c.le.s  $f8, $f16
	nop
	bc1f    .L802707C8
	nop
	lwc1    $f18, 0x0040($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802707C8
	nop
	lwc1    $f6, 0x001C($sp)
	lwc1    $f4, 0x0040($sp)
	lw      $t2, 0x0034($sp)
	li      $at, 0x3F800000
	div.s   $f10, $f6, $f4
	lh      $t3, 0x0006($t2)
	mtc1    $at, $f8
	mtc1    $t3, $f18
	nop
	cvt.s.w $f6, $f18
	sub.s   $f16, $f8, $f10
	mul.s   $f4, $f6, $f16
	swc1    $f4, 0x0030($sp)
.L802707C8:
	b       .L80270824
	nop
.L802707D0:
	li      $at, 0x44FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x001C($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80270824
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f18, 0x001C($sp)
	lw      $t4, 0x0034($sp)
	li      $at, 0x3F800000
	div.s   $f16, $f18, $f6
	lh      $t6, 0x0006($t4)
	mtc1    $at, $f4
	mtc1    $t6, $f10
	nop
	cvt.s.w $f18, $f10
	sub.s   $f8, $f4, $f16
	mul.s   $f6, $f18, $f8
	swc1    $f6, 0x0030($sp)
.L80270824:
	lhu     $t5, 0x001A($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0030($sp)
	sra     $t8, $t5, 4
	sll     $t7, $t8, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	lhu     $t9, 0x0018($sp)
	lui     $at, %hi(math_sin)
	mul.s   $f10, $f4, $f16
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	lw      $t2, 0x004C($sp)
	mul.s   $f8, $f10, $f18
	lwc1    $f6, 0x0000($t2)
	add.s   $f4, $f6, $f8
	swc1    $f4, 0x0000($t2)
	lhu     $t3, 0x001A($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0030($sp)
	sra     $t4, $t3, 4
	sll     $t6, $t4, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	lw      $t5, 0x004C($sp)
	mul.s   $f18, $f16, $f10
	lwc1    $f6, 0x0004($t5)
	add.s   $f8, $f6, $f18
	swc1    $f8, 0x0004($t5)
	lhu     $t8, 0x001A($sp)
	la.u    $t0, math_cos
	la.l    $t0, math_cos
	sra     $t7, $t8, 4
	sll     $t9, $t7, 2
	addu    $t1, $t9, $t0
	lwc1    $f16, 0x0000($t1)
	lwc1    $f4, 0x0030($sp)
	lhu     $t2, 0x0018($sp)
	lw      $t5, 0x004C($sp)
	mul.s   $f10, $f4, $f16
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $t6, $t4, $t0
	lwc1    $f6, 0x0000($t6)
	lwc1    $f8, 0x0008($t5)
	mul.s   $f18, $f10, $f6
	add.s   $f4, $f8, $f18
	swc1    $f4, 0x0008($t5)
.L802708EC:
	lw      $t8, 0x0044($sp)
	addiu   $t7, $t8, 0x0001
	slti    $at, $t7, 0x0002
	bnez    $at, .L802705E0
	sw      $t7, 0x0044($sp)
	b       .L80270908
	nop
.L80270908:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

pl_swim_80270918:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	lw      $t6, 0x0040($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $a1, 0x0040($sp)
	addiu   $a0, $sp, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0048
	lw      $t8, 0x0040($sp)
	lw      $t9, 0x000C($t8)
	andi    $t0, $t9, 0x2000
	beqz    $t0, .L80270960
	nop
	lw      $a0, 0x0040($sp)
	jal     pl_swim_80270500
	addiu   $a1, $sp, 0x0020
.L80270960:
	lw      $t2, 0x0040($sp)
	addiu   $t1, $sp, 0x0020
	lwc1    $f4, 0x0000($t1)
	lwc1    $f6, 0x003C($t2)
	addiu   $t3, $sp, 0x002C
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t3)
	lw      $t5, 0x0040($sp)
	addiu   $t4, $sp, 0x0020
	lwc1    $f10, 0x0004($t4)
	lwc1    $f16, 0x0040($t5)
	addiu   $t6, $sp, 0x002C
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t6)
	lw      $t8, 0x0040($sp)
	addiu   $t7, $sp, 0x0020
	lwc1    $f4, 0x0008($t7)
	lwc1    $f6, 0x0044($t8)
	addiu   $t9, $sp, 0x002C
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t9)
	lw      $t1, 0x0040($sp)
	addiu   $t0, $sp, 0x002C
	lwc1    $f10, 0x0004($t0)
	lh      $t2, 0x0076($t1)
	addiu   $t3, $t2, -0x0050
	mtc1    $t3, $f16
	nop
	cvt.s.w $f18, $f16
	c.lt.s  $f18, $f10
	nop
	bc1f    .L80270A10
	nop
	lw      $t4, 0x0040($sp)
	addiu   $t7, $sp, 0x002C
	lh      $t5, 0x0076($t4)
	addiu   $t6, $t5, -0x0050
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0004($t7)
	mtc1    $0, $f8
	lw      $t8, 0x0040($sp)
	swc1    $f8, 0x004C($t8)
.L80270A10:
	lw      $a0, 0x0040($sp)
	jal     pl_swim_80270304
	addiu   $a1, $sp, 0x002C
	sw      $v0, 0x0038($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0040($sp)
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $t9, 0x0040($sp)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x002C($t9)
	lh      $a2, 0x002E($t9)
	lh      $a3, 0x0030($t9)
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	subu    $a1, $0, $a1
	b       .L80270A64
	lw      $v0, 0x0038($sp)
	b       .L80270A64
	nop
.L80270A64:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

pl_swim_80270A74:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0088($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lh      $t8, 0x001A($t7)
	blez    $t8, .L80270ACC
	nop
	lw      $t9, 0x0004($sp)
	li      $at, 0x42700000
	mtc1    $at, $f4
	lhu     $t0, 0x001A($t9)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0024($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	nop
	mul.s   $f10, $f8, $f6
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0024($t9)
.L80270ACC:
	lw      $t3, 0x0004($sp)
	lh      $t4, 0x001A($t3)
	bgez    $t4, .L80270B04
	nop
	lw      $t5, 0x0004($sp)
	li      $at, 0x000A
	lh      $t6, 0x001A($t5)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 1
	div     $0, $t7, $at
	mflo    $t8
	sh      $t8, 0x001A($t5)
	nop
.L80270B04:
	lw      $t0, 0x0004($sp)
	lh      $t1, 0x001A($t0)
	blez    $t1, .L80270B3C
	nop
	lw      $t2, 0x0004($sp)
	lh      $t9, 0x001A($t2)
	sll     $t3, $t9, 2
	addu    $t3, $t3, $t9
	sll     $t3, $t3, 1
	bgez    $t3, .L80270B38
	sra     $t4, $t3, 3
	addiu   $at, $t3, 0x0007
	sra     $t4, $at, 3
.L80270B38:
	sh      $t4, 0x001A($t2)
.L80270B3C:
	b       .L80270B44
	nop
.L80270B44:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_swim_80270B4C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_swim_80270234
	lw      $a0, 0x0020($sp)
	swc1    $f0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	sh      $0, 0x0032($t6)
	lw      $t7, 0x0020($sp)
	sh      $0, 0x0034($t7)
	lw      $t8, 0x0020($sp)
	mtc1    $0, $f14
	li      $a2, 0x3F800000
	li      $a3, 0x3F800000
	jal     converge_f
	lwc1    $f12, 0x0054($t8)
	lw      $t9, 0x0020($sp)
	swc1    $f0, 0x0054($t9)
	lw      $t0, 0x0020($sp)
	lwc1    $f14, 0x001C($sp)
	li      $a2, 0x40000000
	li      $a3, 0x3F800000
	jal     converge_f
	lwc1    $f12, 0x004C($t0)
	lw      $t1, 0x0020($sp)
	swc1    $f0, 0x004C($t1)
	lw      $t2, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0200
	li      $a3, 0x0200
	jal     converge_i
	lh      $a0, 0x002C($t2)
	lw      $t3, 0x0020($sp)
	sh      $v0, 0x002C($t3)
	lw      $t4, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0100
	li      $a3, 0x0100
	jal     converge_i
	lh      $a0, 0x0030($t4)
	lw      $t5, 0x0020($sp)
	sh      $v0, 0x0030($t5)
	lw      $t6, 0x0020($sp)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x002C($t6)
	lwc1    $f4, 0x0054($t6)
	lhu     $t0, 0x002E($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_cos)($at)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	mul.s   $f8, $f4, $f6
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x0048($t6)
	lw      $t3, 0x0020($sp)
	la.u    $t8, math_cos
	la.l    $t8, math_cos
	lhu     $t4, 0x002C($t3)
	lwc1    $f18, 0x0054($t3)
	lhu     $t0, 0x002E($t3)
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	addu    $t9, $t7, $t8
	lwc1    $f4, 0x0000($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	mul.s   $f6, $f18, $f4
	addu    $t6, $t2, $t8
	lwc1    $f10, 0x0000($t6)
	mul.s   $f8, $f10, $f6
	swc1    $f8, 0x0050($t3)
	b       .L80270C84
	nop
.L80270C84:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_80270C94:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	jal     pl_swim_80270234
	lw      $a0, 0x0020($sp)
	swc1    $f0, 0x001C($sp)
	li      $at, 0x41E00000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0018($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, .L80270CEC
	nop
	lw      $t9, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t9)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t9)
.L80270CEC:
	lw      $t0, 0x0020($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x0054($t0)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80270D14
	nop
	mtc1    $0, $f4
	lw      $t1, 0x0020($sp)
	swc1    $f4, 0x0054($t1)
.L80270D14:
	lw      $t2, 0x0020($sp)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f6, 0x0054($t2)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80270D3C
	nop
	lwc1    $f10, 0x0018($sp)
	lw      $t3, 0x0020($sp)
	swc1    $f10, 0x0054($t3)
.L80270D3C:
	lw      $t4, 0x0020($sp)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f16, 0x0054($t4)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80270D70
	nop
	lw      $t5, 0x0020($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t5)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t5)
.L80270D70:
	lw      $t6, 0x0020($sp)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x002C($t6)
	lwc1    $f10, 0x0054($t6)
	lhu     $t0, 0x002E($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_cos)($at)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	mul.s   $f18, $f10, $f16
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f6, $f4, $f18
	swc1    $f6, 0x0048($t6)
	lw      $t3, 0x0020($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x001C($sp)
	lhu     $t4, 0x002C($t3)
	lwc1    $f10, 0x0054($t3)
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	addu    $at, $at, $t7
	lwc1    $f8, %lo(math_sin)($at)
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x004C($t3)
	lw      $t8, 0x0020($sp)
	la.u    $t2, math_cos
	la.l    $t2, math_cos
	lhu     $t9, 0x002C($t8)
	lwc1    $f6, 0x0054($t8)
	lhu     $t4, 0x002E($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $t6, $t1, $t2
	lwc1    $f8, 0x0000($t6)
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	mul.s   $f10, $f6, $f8
	addu    $t3, $t7, $t2
	lwc1    $f16, 0x0000($t3)
	mul.s   $f4, $f16, $f10
	swc1    $f4, 0x0050($t8)
	b       .L80270E30
	nop
.L80270E30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_80270E40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lw      $t7, 0x009C($t6)
	lwc1    $f4, 0x0004($t7)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	subu    $t2, $0, $t1
	sh      $t2, 0x001E($sp)
	lh      $t3, 0x001E($sp)
	blez    $t3, .L80270EFC
	nop
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x0034($t4)
	bgez    $t5, .L80270ED4
	nop
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0034($t6)
	addiu   $t8, $t7, 0x0040
	sh      $t8, 0x0034($t6)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x0034($t9)
	slti    $at, $t0, 0x0011
	bnez    $at, .L80270ECC
	nop
	lw      $t2, 0x0020($sp)
	li      $t1, 0x0010
	sh      $t1, 0x0034($t2)
.L80270ECC:
	b       .L80270EF4
	nop
.L80270ED4:
	lw      $t3, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0010
	li      $a3, 0x0020
	jal     converge_i
	lh      $a0, 0x0034($t3)
	lw      $t4, 0x0020($sp)
	sh      $v0, 0x0034($t4)
.L80270EF4:
	b       .L80270F98
	nop
.L80270EFC:
	lh      $t5, 0x001E($sp)
	bgez    $t5, .L80270F78
	nop
	lw      $t7, 0x0020($sp)
	lh      $t8, 0x0034($t7)
	blez    $t8, .L80270F50
	nop
	lw      $t6, 0x0020($sp)
	lh      $t9, 0x0034($t6)
	addiu   $t0, $t9, -0x0040
	sh      $t0, 0x0034($t6)
	lw      $t1, 0x0020($sp)
	lh      $t2, 0x0034($t1)
	slti    $at, $t2, -0x0010
	beqz    $at, .L80270F48
	nop
	lw      $t4, 0x0020($sp)
	li      $t3, -0x0010
	sh      $t3, 0x0034($t4)
.L80270F48:
	b       .L80270F70
	nop
.L80270F50:
	lw      $t5, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0020
	li      $a3, 0x0010
	jal     converge_i
	lh      $a0, 0x0034($t5)
	lw      $t7, 0x0020($sp)
	sh      $v0, 0x0034($t7)
.L80270F70:
	b       .L80270F98
	nop
.L80270F78:
	lw      $t8, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0040
	li      $a3, 0x0040
	jal     converge_i
	lh      $a0, 0x0034($t8)
	lw      $t9, 0x0020($sp)
	sh      $v0, 0x0034($t9)
.L80270F98:
	lw      $t0, 0x0020($sp)
	lh      $t6, 0x002E($t0)
	lh      $t1, 0x0034($t0)
	addu    $t2, $t6, $t1
	sh      $t2, 0x002E($t0)
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x0034($t3)
	subu    $t5, $0, $t4
	sll     $t7, $t5, 3
	sh      $t7, 0x0030($t3)
	b       .L80270FC8
	nop
.L80270FC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_80270FD8:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x009C($a0)
	li      $at, 0x437C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	subu    $t1, $0, $t0
	sh      $t1, 0x0006($sp)
	lh      $t2, 0x002C($a0)
	bgez    $t2, .L80271024
	nop
	li      $t3, 0x0100
	b       .L8027102C
	sh      $t3, 0x0004($sp)
.L80271024:
	li      $t4, 0x0200
	sh      $t4, 0x0004($sp)
.L8027102C:
	lh      $t5, 0x002C($a0)
	lh      $t6, 0x0006($sp)
	slt     $at, $t5, $t6
	beqz    $at, .L80271074
	nop
	lh      $t7, 0x002C($a0)
	lh      $t8, 0x0004($sp)
	addu    $t9, $t7, $t8
	sh      $t9, 0x002C($a0)
	lh      $t1, 0x0006($sp)
	lh      $t0, 0x002C($a0)
	slt     $at, $t1, $t0
	beqz    $at, .L8027106C
	nop
	lh      $t2, 0x0006($sp)
	sh      $t2, 0x002C($a0)
.L8027106C:
	b       .L802710B4
	nop
.L80271074:
	lh      $t3, 0x002C($a0)
	lh      $t4, 0x0006($sp)
	slt     $at, $t4, $t3
	beqz    $at, .L802710B4
	nop
	lh      $t5, 0x002C($a0)
	lh      $t6, 0x0004($sp)
	subu    $t7, $t5, $t6
	sh      $t7, 0x002C($a0)
	lh      $t9, 0x0006($sp)
	lh      $t8, 0x002C($a0)
	slt     $at, $t8, $t9
	beqz    $at, .L802710B4
	nop
	lh      $t0, 0x0006($sp)
	sh      $t0, 0x002C($a0)
.L802710B4:
	b       .L802710BC
	nop
.L802710BC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_swim_802710C4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0098($t6)
	addiu   $t8, $t7, 0x0012
	sw      $t8, 0x001C($sp)
	jal     pl_swim_80270E40
	lw      $a0, 0x0020($sp)
	jal     pl_swim_80270FD8
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_swim_80270C94
	li      $a1, 0x41800000
	jal     pl_swim_80270918
	lw      $a0, 0x0020($sp)
	jal     pl_swim_80270A74
	lw      $a0, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x002C($t9)
	blez    $t0, .L80271160
	nop
	lw      $t2, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	li      $a2, 0x0080
	lh      $a1, 0x002C($t2)
	li      $a3, 0x0200
	lh      $a0, 0x0000($t1)
	bgez    $a1, .L8027114C
	sra     $t3, $a1, 1
	addiu   $at, $a1, 0x0001
	sra     $t3, $at, 1
.L8027114C:
	jal     converge_i
	move    $a1, $t3
	lw      $t4, 0x001C($sp)
	b       .L80271180
	sh      $v0, 0x0000($t4)
.L80271160:
	lw      $t5, 0x001C($sp)
	move    $a1, $0
	li      $a2, 0x0200
	li      $a3, 0x0200
	jal     converge_i
	lh      $a0, 0x0000($t5)
	lw      $t6, 0x001C($sp)
	sh      $v0, 0x0000($t6)
.L80271180:
	lw      $t7, 0x0028($sp)
	bnez    $t7, .L802711A0
	nop
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	lw      $a1, 0x0024($sp)
	b       .L802711B0
	nop
.L802711A0:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     player_80250B04
	lw      $a2, 0x0028($sp)
.L802711B0:
	lw      $a0, 0x0020($sp)
	jal     pl_swim_80270110
	li      $a1, 0x0080
	b       .L802711C4
	nop
.L802711C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_802711D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li      $t6, 0x00010000
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L80271214
	nop
	lw      $a0, 0x0020($sp)
	li      $a1, 0x42F4
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L802712B0
	nop
.L80271214:
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x2000
	beqz    $t2, .L80271244
	nop
	li.u    $a1, 0x300024E1
	li.l    $a1, 0x300024E1
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802712B0
	nop
.L80271244:
	lw      $t3, 0x0020($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L80271274
	nop
	li.u    $a1, 0x300024D0
	li.l    $a1, 0x300024D0
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802712B0
	nop
.L80271274:
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x002C($t6)
	slti    $at, $t7, -0x1000
	beqz    $at, .L80271290
	nop
	li      $t8, 0x00030000
	sw      $t8, 0x001C($sp)
.L80271290:
	lw      $a0, 0x0020($sp)
	li      $a1, 0x00B2
	jal     pl_swim_802710C4
	lw      $a2, 0x001C($sp)
	b       .L802712B0
	move    $v0, $0
	b       .L802712B0
	nop
.L802712B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_802712C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L802712F8
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F5
	jal     player_80252CF4
	move    $a2, $0
	b       .L802713AC
	nop
.L802712F8:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, .L8027132C
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802713AC
	nop
.L8027132C:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x2000
	beqz    $t5, .L8027135C
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802713AC
	nop
.L8027135C:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L8027138C
	nop
	li.u    $a1, 0x300024D3
	li.l    $a1, 0x300024D3
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802713AC
	nop
.L8027138C:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x00A4
	jal     pl_swim_802710C4
	move    $a2, $0
	b       .L802713AC
	move    $v0, $0
	b       .L802713AC
	nop
.L802713AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_802713BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L802713F4
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F4
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L80271498
	nop
.L802713F4:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, .L80271424
	nop
	li.u    $a1, 0x300024E1
	li.l    $a1, 0x300024E1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80271498
	nop
.L80271424:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, .L80271454
	nop
	li.u    $a1, 0x300024D0
	li.l    $a1, 0x300024D0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80271498
	nop
.L80271454:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x00AD
	jal     pl_swim_802710C4
	move    $a2, $0
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80271488
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80271488:
	b       .L80271498
	move    $v0, $0
	b       .L80271498
	nop
.L80271498:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_802714A8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L802714E4
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F5
	jal     player_80252CF4
	move    $a2, $0
	b       .L802715D8
	nop
.L802714E4:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, .L80271518
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802715D8
	nop
.L80271518:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x2000
	beqz    $t5, .L80271548
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802715D8
	nop
.L80271548:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L80271578
	nop
	li.u    $a1, 0x300024D3
	li.l    $a1, 0x300024D3
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802715D8
	nop
.L80271578:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($t9)
	bnez    $t0, .L80271590
	nop
	b       .L80271594
	li      $s0, 0x00A2
.L80271590:
	li      $s0, 0x00A3
.L80271594:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     pl_swim_802710C4
	move    $a2, $0
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802715C8
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L802715C8:
	b       .L802715D8
	move    $v0, $0
	b       .L802715D8
	nop
.L802715D8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_802715EC:
	lui     $at, %hi(pl_swim_8033B340)
	sh      $0, %lo(pl_swim_8033B340)($at)
	li      $t6, 0x0800
	lui     $at, %hi(pl_swim_8033B342)
	sh      $t6, %lo(pl_swim_8033B342)($at)
	lh      $t7, 0x002C($a0)
	li      $at, 0x43800000
	mtc1    $at, $f8
	mtc1    $t7, $f4
	li      $at, 0x41A00000
	mtc1    $at, $f16
	cvt.s.w $f6, $f4
	lui     $at, %hi(pl_swim_8033B344)
	div.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, %lo(pl_swim_8033B344)($at)
	jr      $ra
	nop
	jr      $ra
	nop

pl_swim_8027163C:
	lui     $t6, %hi(pl_swim_8033B342)
	lh      $t6, %lo(pl_swim_8033B342)($t6)
	beqz    $t6, .L802716EC
	nop
	lh      $t7, 0x0076($a0)
	lwc1    $f4, 0x0040($a0)
	addiu   $t8, $t7, -0x0055
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f8, $f4
	nop
	bc1f    .L802716EC
	nop
	lh      $t9, 0x002C($a0)
	bltz    $t9, .L802716EC
	nop
	lui     $t0, %hi(pl_swim_8033B340)
	lui     $t1, %hi(pl_swim_8033B342)
	lh      $t1, %lo(pl_swim_8033B342)($t1)
	lh      $t0, %lo(pl_swim_8033B340)($t0)
	lui     $at, %hi(pl_swim_8033B340)
	addu    $t2, $t0, $t1
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	bltz    $t4, .L802716EC
	sh      $t2, %lo(pl_swim_8033B340)($at)
	lui     $t5, %hi(pl_swim_8033B340)
	lhu     $t5, %lo(pl_swim_8033B340)($t5)
	lui     $at, %hi(pl_swim_8033B344)
	lwc1    $f10, %lo(pl_swim_8033B344)($at)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_sin)($at)
	lw      $t8, 0x0088($a0)
	lw      $t9, 0x0088($a0)
	mul.s   $f18, $f10, $f16
	lwc1    $f6, 0x0024($t8)
	add.s   $f4, $f6, $f18
	swc1    $f4, 0x0024($t9)
	jr      $ra
	nop
.L802716EC:
	lui     $at, %hi(pl_swim_8033B342)
	sh      $0, %lo(pl_swim_8033B342)($at)
	jr      $ra
	nop
	jr      $ra
	nop

pl_swim_80271704:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0028($sp)
	jal     pl_swim_80270E40
	lw      $a0, 0x0030($sp)
	jal     pl_swim_80270FD8
	lw      $a0, 0x0030($sp)
	lh      $t8, 0x0036($sp)
	li      $at, 0x41200000
	mtc1    $at, $f8
	mtc1    $t8, $f4
	lw      $a0, 0x0030($sp)
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	mfc1    $a1, $f10
	jal     pl_swim_80270C94
	nop
	jal     pl_swim_80270918
	lw      $a0, 0x0030($sp)
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L80271794
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802717D4
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L80271800
	nop
	b       .L802718B8
	nop
.L80271794:
	lw      $a0, 0x0030($sp)
	jal     player_80252000
	li      $a1, -0x8000
	subu    $t9, $0, $v0
	sh      $t9, 0x002E($sp)
	lw      $t0, 0x0030($sp)
	lh      $t2, 0x002E($sp)
	lh      $t1, 0x002C($t0)
	slt     $at, $t1, $t2
	beqz    $at, .L802717CC
	nop
	lh      $t3, 0x002E($sp)
	lw      $t4, 0x0030($sp)
	sh      $t3, 0x002C($t4)
.L802717CC:
	b       .L802718B8
	nop
.L802717D4:
	lw      $t5, 0x0030($sp)
	lh      $t6, 0x002C($t5)
	slti    $at, $t6, -0x2FFF
	bnez    $at, .L802717F8
	nop
	lw      $t7, 0x0030($sp)
	lh      $t8, 0x002C($t7)
	addiu   $t9, $t8, -0x0100
	sh      $t9, 0x002C($t7)
.L802717F8:
	b       .L802718B8
	nop
.L80271800:
	lw      $t0, 0x0030($sp)
	mtc1    $0, $f18
	lw      $t1, 0x009C($t0)
	lwc1    $f16, 0x0008($t1)
	c.eq.s  $f16, $f18
	nop
	bc1f    .L802718B0
	nop
	lw      $t2, 0x0030($sp)
	mtc1    $0, $f8
	lh      $t3, 0x002C($t2)
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80271880
	nop
	lw      $t4, 0x0030($sp)
	lh      $t5, 0x002C($t4)
	addiu   $t6, $t5, 0x0200
	sh      $t6, 0x002C($t4)
	lw      $t8, 0x0030($sp)
	lh      $t9, 0x002C($t8)
	slti    $at, $t9, 0x3F01
	bnez    $at, .L80271878
	nop
	lw      $t0, 0x0030($sp)
	li      $t7, 0x3F00
	sh      $t7, 0x002C($t0)
.L80271878:
	b       .L802718B0
	nop
.L80271880:
	lw      $t1, 0x0030($sp)
	lh      $t2, 0x002C($t1)
	addiu   $t3, $t2, -0x0200
	sh      $t3, 0x002C($t1)
	lw      $t5, 0x0030($sp)
	lh      $t6, 0x002C($t5)
	slti    $at, $t6, -0x3F00
	beqz    $at, .L802718B0
	nop
	lw      $t8, 0x0030($sp)
	li      $t4, -0x3F00
	sh      $t4, 0x002C($t8)
.L802718B0:
	b       .L802718B8
	nop
.L802718B8:
	jal     pl_swim_80270A74
	lw      $a0, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	move    $a1, $0
	li      $a2, 0x0200
	lw      $t7, 0x0098($t9)
	li      $a3, 0x0200
	jal     converge_i
	lh      $a0, 0x0012($t7)
	lw      $t0, 0x0030($sp)
	lw      $t2, 0x0098($t0)
	sh      $v0, 0x0012($t2)
	jal     pl_swim_8027163C
	lw      $a0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     pl_swim_80270110
	li      $a1, 0x0400
	b       .L80271904
	nop
.L80271904:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_swim_80271918:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x0040($t7)
	sh      $t8, 0x001E($sp)
	lh      $t9, 0x001E($sp)
	beqz    $t9, .L8027194C
	nop
	li      $at, 0x000C
	bne     $t9, $at, .L80271964
	nop
.L8027194C:
	lw      $t0, 0x0020($sp)
	li.u    $a0, 0x04348081
	li.l    $a0, 0x04348081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80271964:
	b       .L8027196C
	nop
.L8027196C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_8027197C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0040($t6)
	add.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L80271A80
	nop
	lw      $t3, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	lh      $t4, 0x0076($t3)
	addiu   $t5, $t4, -0x0050
	slt     $at, $t2, $t5
	bnez    $at, .L80271A80
	nop
	lh      $t6, 0x002C($t3)
	bltz    $t6, .L80271A80
	nop
	lw      $t7, 0x009C($t3)
	li      $at, 0xC2700000
	mtc1    $at, $f18
	lwc1    $f16, 0x0008($t7)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80271A80
	nop
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0032
	li      $at, 0x42780000
	mtc1    $at, $f4
	lw      $t8, 0x0020($sp)
	swc1    $f4, 0x004C($t8)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x007C($t9)
	bnez    $t0, .L80271A64
	nop
	li.u    $a1, 0x01000889
	li.l    $a1, 0x01000889
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80271A90
	nop
	b       .L80271A80
	nop
.L80271A64:
	li.u    $a1, 0x010008A3
	li.l    $a1, 0x010008A3
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80271A90
	nop
.L80271A80:
	b       .L80271A90
	move    $v0, $0
	b       .L80271A90
	nop
.L80271A90:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_80271AA0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, .L80271ACC
	nop
	li      $t8, 0x00A0
	lui     $at, %hi(pl_swim_8032DD34)
	sh      $t8, %lo(pl_swim_8032DD34)($at)
.L80271ACC:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0004($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80271AF8
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F4
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L80271CF0
	nop
.L80271AF8:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x2000
	beqz    $t4, .L80271B28
	nop
	li.u    $a1, 0x300024E1
	li.l    $a1, 0x300024E1
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80271CF0
	nop
.L80271B28:
	lw      $t5, 0x0028($sp)
	li      $at, 0x000E
	lhu     $t6, 0x001A($t5)
	addiu   $t7, $t6, 0x0001
	sh      $t7, 0x001A($t5)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	bne     $t9, $at, .L80271B68
	nop
	li.u    $a1, 0x300024D2
	li.l    $a1, 0x300024D2
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80271CF0
	nop
.L80271B68:
	jal     pl_swim_8027197C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80271B80
	nop
	b       .L80271CF0
	li      $v0, 0x0001
.L80271B80:
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x001A($t0)
	slti    $at, $t1, 0x0006
	beqz    $at, .L80271BAC
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t2)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t2)
.L80271BAC:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x0009
	bnez    $at, .L80271BD8
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t6)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0054($t6)
.L80271BD8:
	lw      $t7, 0x0028($sp)
	lhu     $t5, 0x001A($t7)
	slti    $at, $t5, 0x0002
	bnez    $at, .L80271C6C
	nop
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x0006
	beqz    $at, .L80271C1C
	nop
	lhu     $t0, 0x0002($t8)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L80271C1C
	nop
	lw      $t3, 0x0028($sp)
	li      $t2, 0x0001
	sh      $t2, 0x0018($t3)
.L80271C1C:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0009
	lhu     $t6, 0x001A($t4)
	bne     $t6, $at, .L80271C6C
	nop
	lhu     $t7, 0x0018($t4)
	li      $at, 0x0001
	bne     $t7, $at, .L80271C6C
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80250C7C
	move    $a1, $0
	lw      $t5, 0x0028($sp)
	sh      $0, 0x0018($t5)
	lw      $t8, 0x0028($sp)
	li      $t9, 0x0001
	sh      $t9, 0x001A($t8)
	li      $t0, 0x00A0
	lui     $at, %hi(pl_swim_8032DD34)
	sh      $t0, %lo(pl_swim_8032DD34)($at)
.L80271C6C:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t2, 0x001A($t1)
	bne     $t2, $at, .L80271CC4
	nop
	lui     $t3, %hi(pl_swim_8032DD34)
	lh      $t3, %lo(pl_swim_8032DD34)($t3)
	li      $at, 0x00A0
	bne     $t3, $at, .L80271CA0
	nop
	li.u    $s0, 0x04338081
	b       .L80271CA8
	li.l    $s0, 0x04338081
.L80271CA0:
	li.u    $s0, 0x0447A081
	li.l    $s0, 0x0447A081
.L80271CA8:
	lw      $t6, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t6)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     pl_swim_802715EC
	lw      $a0, 0x0028($sp)
.L80271CC4:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00AA
	lui     $a1, %hi(pl_swim_8032DD34)
	lh      $a1, %lo(pl_swim_8032DD34)($a1)
	jal     pl_swim_80271704
	lw      $a0, 0x0028($sp)
	b       .L80271CF0
	move    $v0, $0
	b       .L80271CF0
	nop
.L80271CF0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80271D04:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L80271D3C
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F4
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L80271EA4
	nop
.L80271D3C:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, .L80271D6C
	nop
	li.u    $a1, 0x300024E1
	li.l    $a1, 0x300024E1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80271EA4
	nop
.L80271D6C:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x001A($t2)
	slti    $at, $t3, 0x000F
	bnez    $at, .L80271D9C
	nop
	li.u    $a1, 0x300022C2
	li.l    $a1, 0x300022C2
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80271EA4
	nop
.L80271D9C:
	jal     pl_swim_8027197C
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80271DB4
	nop
	b       .L80271EA4
	li      $v0, 0x0001
.L80271DB4:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0080
	beqz    $t6, .L80271E30
	nop
	lhu     $t7, 0x001A($t4)
	slti    $at, $t7, 0x0007
	bnez    $at, .L80271E30
	nop
	lw      $t8, 0x0018($sp)
	li      $at, 0x0007
	lhu     $t9, 0x001A($t8)
	bne     $t9, $at, .L80271E14
	nop
	lui     $t0, %hi(pl_swim_8032DD34)
	lh      $t0, %lo(pl_swim_8032DD34)($t0)
	slti    $at, $t0, 0x0118
	beqz    $at, .L80271E14
	nop
	lui     $t1, %hi(pl_swim_8032DD34)
	lh      $t1, %lo(pl_swim_8032DD34)($t1)
	lui     $at, %hi(pl_swim_8032DD34)
	addiu   $t2, $t1, 0x000A
	sh      $t2, %lo(pl_swim_8032DD34)($at)
.L80271E14:
	li.u    $a1, 0x300024D0
	li.l    $a1, 0x300024D0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L80271EA4
	nop
.L80271E30:
	lw      $t3, 0x0018($sp)
	lhu     $t5, 0x001A($t3)
	slti    $at, $t5, 0x0007
	bnez    $at, .L80271E50
	nop
	li      $t6, 0x00A0
	lui     $at, %hi(pl_swim_8032DD34)
	sh      $t6, %lo(pl_swim_8032DD34)($at)
.L80271E50:
	lw      $t4, 0x0018($sp)
	lhu     $t7, 0x001A($t4)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t4)
	lw      $t9, 0x0018($sp)
	li      $at, 0x3E800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t9)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00AB
	lui     $a1, %hi(pl_swim_8032DD34)
	lh      $a1, %lo(pl_swim_8032DD34)($a1)
	jal     pl_swim_80271704
	lw      $a0, 0x0018($sp)
	b       .L80271EA4
	move    $v0, $0
	b       .L80271EA4
	nop
.L80271EA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80271EB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L80271EEC
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F4
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L8027201C
	nop
.L80271EEC:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, .L80271F1C
	nop
	li.u    $a1, 0x300024E1
	li.l    $a1, 0x300024E1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027201C
	nop
.L80271F1C:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0080
	bnez    $t4, .L80271F84
	nop
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x001A($t5)
	bnez    $t6, .L80271F68
	nop
	lui     $t7, %hi(pl_swim_8032DD34)
	lh      $t7, %lo(pl_swim_8032DD34)($t7)
	slti    $at, $t7, 0x0118
	beqz    $at, .L80271F68
	nop
	lui     $t8, %hi(pl_swim_8032DD34)
	lh      $t8, %lo(pl_swim_8032DD34)($t8)
	lui     $at, %hi(pl_swim_8032DD34)
	addiu   $t9, $t8, 0x000A
	sh      $t9, %lo(pl_swim_8032DD34)($at)
.L80271F68:
	li.u    $a1, 0x300024D1
	li.l    $a1, 0x300024D1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027201C
	nop
.L80271F84:
	lw      $t0, 0x0018($sp)
	li      $at, 0x41400000
	mtc1    $at, $f14
	li.u    $a2, 0x3DCCCCCD
	li.u    $a3, 0x3E19999A
	li.l    $a3, 0x3E19999A
	li.l    $a2, 0x3DCCCCCD
	jal     converge_f
	lwc1    $f12, 0x0054($t0)
	lw      $t1, 0x0018($sp)
	swc1    $f0, 0x0054($t1)
	lw      $t3, 0x0018($sp)
	li      $t2, 0x0001
	sh      $t2, 0x001A($t3)
	li      $t4, 0x00A0
	lui     $at, %hi(pl_swim_8032DD34)
	sh      $t4, %lo(pl_swim_8032DD34)($at)
	lw      $t5, 0x0018($sp)
	li      $at, 0x41600000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t5)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80271FFC
	nop
	jal     pl_swim_80271918
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00AC
.L80271FFC:
	lui     $a1, %hi(pl_swim_8032DD34)
	lh      $a1, %lo(pl_swim_8032DD34)($a1)
	jal     pl_swim_80271704
	lw      $a0, 0x0018($sp)
	b       .L8027201C
	move    $v0, $0
	b       .L8027201C
	nop
.L8027201C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_8027202C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L80272064
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F5
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027225C
	nop
.L80272064:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, .L80272098
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8027225C
	nop
.L80272098:
	lw      $t3, 0x0018($sp)
	li      $at, 0x0011
	lhu     $t4, 0x001A($t3)
	addiu   $t5, $t4, 0x0001
	sh      $t5, 0x001A($t3)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, .L802720D8
	nop
	li.u    $a1, 0x300024D5
	li.l    $a1, 0x300024D5
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027225C
	nop
.L802720D8:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x2000
	beqz    $t0, .L80272108
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027225C
	nop
.L80272108:
	jal     pl_swim_8027197C
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80272120
	nop
	b       .L8027225C
	li      $v0, 0x0001
.L80272120:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x001A($t1)
	slti    $at, $t2, 0x0006
	beqz    $at, .L8027214C
	nop
	lw      $t4, 0x0018($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t4)
.L8027214C:
	lw      $t5, 0x0018($sp)
	lhu     $t3, 0x001A($t5)
	slti    $at, $t3, 0x0009
	bnez    $at, .L80272178
	nop
	lw      $t6, 0x0018($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t6)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0054($t6)
.L80272178:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x001A($t7)
	slti    $at, $t8, 0x0002
	bnez    $at, .L80272200
	nop
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x001A($t9)
	slti    $at, $t0, 0x0006
	beqz    $at, .L802721BC
	nop
	lhu     $t1, 0x0002($t9)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L802721BC
	nop
	lw      $t5, 0x0018($sp)
	li      $t4, 0x0001
	sh      $t4, 0x0018($t5)
.L802721BC:
	lw      $t3, 0x0018($sp)
	li      $at, 0x0009
	lhu     $t6, 0x001A($t3)
	bne     $t6, $at, .L80272200
	nop
	lhu     $t7, 0x0018($t3)
	li      $at, 0x0001
	bne     $t7, $at, .L80272200
	nop
	lw      $a0, 0x0018($sp)
	jal     player_80250C7C
	move    $a1, $0
	lw      $t8, 0x0018($sp)
	sh      $0, 0x0018($t8)
	lw      $t9, 0x0018($sp)
	li      $t0, 0x0001
	sh      $t0, 0x001A($t9)
.L80272200:
	lw      $t1, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t2, 0x001A($t1)
	bne     $t2, $at, .L80272234
	nop
	lw      $t4, 0x0018($sp)
	li.u    $a0, 0x04338081
	li.l    $a0, 0x04338081
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     pl_swim_802715EC
	lw      $a0, 0x0018($sp)
.L80272234:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x009F
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80271704
	li      $a1, 0x00A0
	b       .L8027225C
	move    $v0, $0
	b       .L8027225C
	nop
.L8027225C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_8027226C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L802722A4
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F5
	jal     player_80252CF4
	move    $a2, $0
	b       .L802723E0
	nop
.L802722A4:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, .L802722D8
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802723E0
	nop
.L802722D8:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x000F
	bnez    $at, .L80272308
	nop
	li.u    $a1, 0x300022C3
	li.l    $a1, 0x300022C3
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802723E0
	nop
.L80272308:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x2000
	beqz    $t7, .L80272338
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802723E0
	nop
.L80272338:
	jal     pl_swim_8027197C
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80272350
	nop
	b       .L802723E0
	li      $v0, 0x0001
.L80272350:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0080
	beqz    $t0, .L80272390
	nop
	lhu     $t1, 0x001A($t8)
	slti    $at, $t1, 0x0007
	bnez    $at, .L80272390
	nop
	li.u    $a1, 0x300024D3
	li.l    $a1, 0x300024D3
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802723E0
	nop
.L80272390:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x001A($t2)
	addiu   $t4, $t3, 0x0001
	sh      $t4, 0x001A($t2)
	lw      $t5, 0x0018($sp)
	li      $at, 0x3E800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t5)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t5)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00A0
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80271704
	li      $a1, 0x00A0
	b       .L802723E0
	move    $v0, $0
	b       .L802723E0
	nop
.L802723E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_802723F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L80272428
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F5
	jal     player_80252CF4
	move    $a2, $0
	b       .L80272538
	nop
.L80272428:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, .L8027245C
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80272538
	nop
.L8027245C:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x2000
	beqz    $t5, .L8027248C
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80272538
	nop
.L8027248C:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0080
	bnez    $t8, .L802724BC
	nop
	li.u    $a1, 0x300024D4
	li.l    $a1, 0x300024D4
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80272538
	nop
.L802724BC:
	lw      $t9, 0x0018($sp)
	li      $at, 0x41400000
	mtc1    $at, $f14
	li.u    $a2, 0x3DCCCCCD
	li.u    $a3, 0x3E19999A
	li.l    $a3, 0x3E19999A
	li.l    $a2, 0x3DCCCCCD
	jal     converge_f
	lwc1    $f12, 0x0054($t9)
	lw      $t0, 0x0018($sp)
	swc1    $f0, 0x0054($t0)
	lw      $t1, 0x0018($sp)
	li      $at, 0x41600000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8027251C
	nop
	jal     pl_swim_80271918
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00A1
.L8027251C:
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80271704
	li      $a1, 0x00A0
	b       .L80272538
	move    $v0, $0
	b       .L80272538
	nop
.L80272538:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80272548:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L8027258C
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80272668
	nop
.L8027258C:
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x2000
	beqz    $t2, .L802725BC
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80272668
	nop
.L802725BC:
	lw      $t3, 0x0028($sp)
	lhu     $s0, 0x001A($t3)
	lhu     $t5, 0x001A($t3)
	xori    $t4, $s0, 0x00F0
	sltiu   $t4, $t4, 0x0001
	move    $s0, $t4
	addiu   $t6, $t5, 0x0001
	beqz    $s0, .L80272614
	sh      $t6, 0x001A($t3)
	lw      $t8, 0x0028($sp)
	li      $t7, 0x00400000
	lw      $t9, 0x007C($t8)
	sw      $t7, 0x0134($t9)
	lw      $t0, 0x0028($sp)
	sw      $0, 0x007C($t0)
	jal     bgm_shell_stop
	nop
	li.u    $a1, 0x300024D2
	li.l    $a1, 0x300024D2
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80272614:
	lw      $t1, 0x0028($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f14
	li      $a2, 0x40000000
	li      $a3, 0x3F800000
	jal     converge_f
	lwc1    $f12, 0x0054($t1)
	lw      $t2, 0x0028($sp)
	swc1    $f0, 0x0054($t2)
	jal     pl_swim_80271918
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00A1
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80271704
	li      $a1, 0x012C
	b       .L80272668
	move    $v0, $0
	b       .L80272668
	nop
.L80272668:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_8027267C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0070($t7)
	andi    $t9, $t8, 0x0002
	beqz    $t9, .L80272754
	nop
	lw      $a0, 0x0030($sp)
	jal     collision_8024CBFC
	li      $a1, 0x0002
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x0030($sp)
	lwc1    $f4, 0x00A0($t0)
	lwc1    $f6, 0x003C($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lw      $t2, 0x002C($sp)
	lw      $t3, 0x0030($sp)
	lwc1    $f10, 0x00A8($t2)
	lwc1    $f16, 0x0044($t3)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f12, 0x0024($sp)
	jal     atan2
	lwc1    $f14, 0x0028($sp)
	lw      $t5, 0x0030($sp)
	sll     $s0, $v0, 16
	sra     $t4, $s0, 16
	lh      $t6, 0x002E($t5)
	move    $s0, $t4
	subu    $t7, $s0, $t6
	sh      $t7, 0x0022($sp)
	lh      $t8, 0x0022($sp)
	slti    $at, $t8, -0x2AAA
	bnez    $at, .L80272754
	nop
	slti    $at, $t8, 0x2AAB
	beqz    $at, .L80272754
	nop
	lw      $t9, 0x002C($sp)
	lw      $t0, 0x0030($sp)
	sw      $t9, 0x0080($t0)
	jal     collision_8024C66C
	lw      $a0, 0x0030($sp)
	lw      $t2, 0x0030($sp)
	li      $t1, 0x0001
	lw      $t3, 0x0098($t2)
	sb      $t1, 0x000A($t3)
	b       .L80272764
	li      $v0, 0x0001
.L80272754:
	b       .L80272764
	move    $v0, $0
	b       .L80272764
	nop
.L80272764:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_swim_80272778:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_swim_80270E40
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270FD8
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270C94
	li      $a1, 0x41800000
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270A74
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00B1
	li.u    $a1, 0x04338081
	li.l    $a1, 0x04338081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t6, 0x0028($sp)
	move    $a1, $0
	li      $a2, 0x0200
	lw      $t7, 0x0098($t6)
	li      $a3, 0x0200
	jal     converge_i
	lh      $a0, 0x0012($t7)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0098($t8)
	sh      $v0, 0x0012($t9)
	lw      $t0, 0x0028($sp)
	lhu     $s0, 0x001A($t0)
	lhu     $t2, 0x001A($t0)
	xori    $t1, $s0, 0x0005
	sltiu   $t1, $t1, 0x0001
	move    $s0, $t1
	addiu   $t3, $t2, 0x0001
	beqz    $s0, .L80272828
	sh      $t3, 0x001A($t0)
	jal     collision_8024C780
	lw      $a0, 0x0028($sp)
.L80272828:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8027284C
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8027284C:
	b       .L8027285C
	move    $v0, $0
	b       .L8027285C
	nop
.L8027285C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80272870:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x40E00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802728B8
	nop
	lw      $t7, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t7)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($t7)
.L802728B8:
	jal     pl_swim_80270E40
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270FD8
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270C94
	li      $a1, 0x41800000
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270A74
	lw      $a0, 0x0028($sp)
	lw      $t8, 0x0028($sp)
	move    $a1, $0
	li      $a2, 0x0200
	lw      $t9, 0x0098($t8)
	li      $a3, 0x0200
	jal     converge_i
	lh      $a0, 0x0012($t9)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0098($t0)
	sh      $v0, 0x0012($t1)
	li.u    $a1, 0x04338081
	li.l    $a1, 0x04338081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t2, 0x0028($sp)
	lhu     $s0, 0x0018($t2)
	beqz    $s0, .L80272950
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80272988
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802729C0
	nop
	b       .L80272A3C
	nop
.L80272950:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00B0
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80272980
	nop
	jal     pl_swim_8027267C
	lw      $a0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	addiu   $t3, $v0, 0x0001
	sh      $t3, 0x0018($t4)
.L80272980:
	b       .L80272A3C
	nop
.L80272988:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00AF
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802729B8
	nop
	li.u    $a1, 0x300022C2
	li.l    $a1, 0x300022C2
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L802729B8:
	b       .L80272A3C
	nop
.L802729C0:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00AE
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80272A34
	nop
	la.u    $a0, o_13000708
	jal     segment_to_virtual
	la.l    $a0, o_13000708
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x007C($t5)
	lw      $t7, 0x020C($t6)
	bne     $v0, $t7, .L80272A20
	nop
	jal     bgm_shell_play
	nop
	li.u    $a1, 0x300024D6
	li.l    $a1, 0x300024D6
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80272A34
	nop
.L80272A20:
	li.u    $a1, 0x300022C3
	li.l    $a1, 0x300022C3
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
.L80272A34:
	b       .L80272A3C
	nop
.L80272A3C:
	b       .L80272A4C
	move    $v0, $0
	b       .L80272A4C
	nop
.L80272A4C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80272A60:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_swim_80270B4C
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	lw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0098($t6)
	sh      $0, 0x0012($t7)
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80272B00
	nop
	lw      $t8, 0x0034($sp)
	blez    $t8, .L80272ACC
	nop
	lw      $t0, 0x0028($sp)
	li      $t9, 0x001E
	sh      $t9, 0x0026($t0)
.L80272ACC:
	lw      $t1, 0x0028($sp)
	lh      $t2, 0x00AE($t1)
	slti    $at, $t2, 0x0100
	bnez    $at, .L80272AE8
	nop
	b       .L80272AF0
	lw      $s0, 0x0030($sp)
.L80272AE8:
	li.u    $s0, 0x300032C7
	li.l    $s0, 0x300032C7
.L80272AF0:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80252CF4
	move    $a2, $0
.L80272B00:
	b       .L80272B08
	nop
.L80272B08:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80272B1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li.u    $a2, 0x380022C0
	li.l    $a2, 0x380022C0
	li      $a1, 0x009E
	move    $a0, $t6
	jal     pl_swim_80272A60
	lw      $a3, 0x001C($t6)
	b       .L80272B54
	move    $v0, $0
	b       .L80272B54
	nop
.L80272B54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80272B64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li.u    $a2, 0x380022C0
	li.l    $a2, 0x380022C0
	li      $a1, 0x00A8
	move    $a0, $t6
	jal     pl_swim_80272A60
	lw      $a3, 0x001C($t6)
	b       .L80272B9C
	move    $v0, $0
	b       .L80272B9C
	nop
.L80272B9C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80272BAC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x2410C081
	li.l    $a1, 0x2410C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t6, 0x0028($sp)
	li.u    $a0, 0x14160001
	li.l    $a0, 0x14160001
	lw      $a1, 0x0088($t6)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     camera_8027F590
	li      $a0, 0x000A
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x007A
	bnez    $v0, .L80272C24
	nop
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x001A($t7)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0004($t0)
	ori     $t2, $t1, 0x0040
	sw      $t2, 0x0004($t0)
.L80272C24:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x0006
	bnez    $at, .L80272C7C
	nop
	lw      $t6, 0x0028($sp)
	li      $t5, 0x001E
	sh      $t5, 0x0026($t6)
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x00AE($t8)
	slti    $at, $t9, 0x0100
	beqz    $at, .L80272C64
	nop
	li.u    $s0, 0x300032C7
	b       .L80272C6C
	li.l    $s0, 0x300032C7
.L80272C64:
	li.u    $s0, 0x380022C0
	li.l    $s0, 0x380022C0
.L80272C6C:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80252CF4
	move    $a2, $0
.L80272C7C:
	jal     pl_swim_80270B4C
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	lw      $t1, 0x0098($t7)
	sh      $0, 0x0012($t1)
	b       .L80272CA8
	move    $v0, $0
	b       .L80272CA8
	nop
.L80272CA8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80272CBC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $s0, 0x0018($t6)
	beqz    $s0, .L80272CF0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80272D30
	nop
	b       .L80272D78
	nop
.L80272CF0:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00A5
	lw      $t8, 0x0028($sp)
	li      $t7, 0x0002
	lw      $t9, 0x0098($t8)
	sb      $t7, 0x0005($t9)
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80272D28
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0001
	sh      $t0, 0x0018($t1)
.L80272D28:
	b       .L80272D78
	nop
.L80272D30:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00A6
	lw      $t3, 0x0028($sp)
	li      $t2, 0x0008
	lw      $t4, 0x0098($t3)
	sb      $t2, 0x0005($t4)
	lw      $t5, 0x0028($sp)
	li      $at, 0x001E
	lw      $t6, 0x0088($t5)
	lh      $t8, 0x0040($t6)
	bne     $t8, $at, .L80272D70
	nop
	lw      $a0, 0x0028($sp)
	jal     game_8024A9CC
	li      $a1, 0x0012
.L80272D70:
	b       .L80272D78
	nop
.L80272D78:
	li.u    $a1, 0x2423F081
	li.l    $a1, 0x2423F081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	jal     pl_swim_80270B4C
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	b       .L80272DAC
	move    $v0, $0
	b       .L80272DAC
	nop
.L80272DAC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80272DC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     pl_swim_80270B4C
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0008
	lw      $t8, 0x0098($t7)
	sb      $t6, 0x0005($t8)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00A7
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00A7
	li      $at, 0x0023
	bne     $v0, $at, .L80272E1C
	nop
	lw      $a0, 0x0018($sp)
	jal     game_8024A9CC
	li      $a1, 0x0012
.L80272E1C:
	b       .L80272E2C
	move    $v0, $0
	b       .L80272E2C
	nop
.L80272E2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80272E3C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x007C($t6)
	sltu    $t8, $0, $t7
	sw      $t8, 0x0020($sp)
	jal     pl_swim_802701CC
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80272E74
	nop
	mtc1    $0, $f4
	b       .L80272E84
	swc1    $f4, 0x001C($sp)
.L80272E74:
	li      $at, 0xC0A00000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x001C($sp)
.L80272E84:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0004($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80272EA8
	nop
	lw      $t2, 0x0020($sp)
	ori     $t3, $t2, 0x0004
	b       .L80272EDC
	sw      $t3, 0x0020($sp)
.L80272EA8:
	lw      $t4, 0x0028($sp)
	li      $at, 0x00080000
	lw      $t5, 0x0010($t4)
	and     $t6, $t5, $at
	bnez    $t6, .L80272ED0
	nop
	lhu     $t7, 0x0002($t4)
	andi    $t8, $t7, 0x0080
	beqz    $t8, .L80272EDC
	nop
.L80272ED0:
	lw      $t9, 0x0020($sp)
	ori     $t0, $t9, 0x0002
	sw      $t0, 0x0020($sp)
.L80272EDC:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x001A($t1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x001A($t1)
	jal     pl_swim_80270B4C
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0018($t5)
	bnez    $t6, .L80272F84
	nop
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x0430C081
	li.l    $a0, 0x0430C081
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0028($sp)
	lui     $at, %hi(pl_swim_80336E10)
	lwc1    $f18, %lo(pl_swim_80336E10)($at)
	lwc1    $f8, 0x00BC($t7)
	lwc1    $f10, 0x0040($t7)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80272F68
	nop
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x2411F081
	li.l    $a0, 0x2411F081
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80272F68:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0008($t9)
	ori     $t2, $t0, 0x0040
	sw      $t2, 0x0008($t9)
	lw      $t1, 0x0028($sp)
	li      $t3, 0x0001
	sh      $t3, 0x0018($t1)
.L80272F84:
	lw      $t5, 0x0024($sp)
	li      $at, 0x0001
	beq     $t5, $at, .L80272FC0
	nop
	lw      $t6, 0x0028($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f4, 0x004C($t6)
	c.le.s  $f6, $f4
	nop
	bc1t    .L80272FC0
	nop
	lhu     $t4, 0x001A($t6)
	slti    $at, $t4, 0x0015
	bnez    $at, .L80273090
	nop
.L80272FC0:
	lw      $t7, 0x0020($sp)
	sltiu   $at, $t7, 0x0006
	beqz    $at, .L80273088
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_swim_80336E14)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_swim_80336E14)($at)
	jr      $t7
	nop
.globl L80272FE8
L80272FE8:
	li.u    $a1, 0x300022C2
	li.l    $a1, 0x300022C2
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273088
	nop
.globl L80273004
L80273004:
	li.u    $a1, 0x300022C3
	li.l    $a1, 0x300022C3
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273088
	nop
.globl L80273020
L80273020:
	li.u    $a1, 0x300024D2
	li.l    $a1, 0x300024D2
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273088
	nop
.globl L8027303C
L8027303C:
	li.u    $a1, 0x300024D5
	li.l    $a1, 0x300024D5
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273088
	nop
.globl L80273058
L80273058:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F4
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273088
	nop
.globl L80273070
L80273070:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F5
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273088
	nop
.L80273088:
	lui     $at, %hi(pl_swim_8033B342)
	sh      $0, %lo(pl_swim_8033B342)($at)
.L80273090:
	lw      $t8, 0x0020($sp)
	sltiu   $at, $t8, 0x0006
	beqz    $at, .L80273130
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_swim_80336E2C)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_swim_80336E2C)($at)
	jr      $t8
	nop
.globl L802730B8
L802730B8:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00AD
	b       .L80273130
	nop
.globl L802730CC
L802730CC:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00A2
	b       .L80273130
	nop
.globl L802730E0
L802730E0:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00AC
	b       .L80273130
	nop
.globl L802730F4
L802730F4:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00A1
	b       .L80273130
	nop
.globl L80273108
L80273108:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0056
	b       .L80273130
	nop
.globl L8027311C
L8027311C:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0043
	b       .L80273130
	nop
.L80273130:
	lw      $t0, 0x0028($sp)
	lw      $t2, 0x0008($t0)
	ori     $t9, $t2, 0x0200
	sw      $t9, 0x0008($t0)
	b       .L80273150
	move    $v0, $0
	b       .L80273150
	nop
.L80273150:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80273160:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0048($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0034($sp)
	lw      $t8, 0x0048($sp)
	lw      $t9, 0x0080($t8)
	sw      $t9, 0x0030($sp)
	lw      $t0, 0x0048($sp)
	lw      $t1, 0x0030($sp)
	lwc1    $f4, 0x003C($t0)
	lwc1    $f6, 0x00A0($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t2, 0x0048($sp)
	lw      $t3, 0x0030($sp)
	lwc1    $f10, 0x0044($t2)
	lwc1    $f16, 0x00A8($t3)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	lw      $t4, 0x0034($sp)
	lw      $t5, 0x0048($sp)
	mtc1    $0, $f6
	lwc1    $f16, 0x0110($t4)
	lwc1    $f18, 0x004C($t5)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0110($t4)
	lw      $t6, 0x0034($sp)
	lwc1    $f8, 0x0110($t6)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80273264
	nop
	mtc1    $0, $f10
	lw      $t7, 0x0034($sp)
	swc1    $f10, 0x0110($t7)
	lui     $at, %hi(pl_swim_80336E44)
	lwc1    $f18, %lo(pl_swim_80336E44)($at)
	lwc1    $f16, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80273264
	nop
	lw      $t8, 0x0048($sp)
	lhu     $s0, 0x001A($t8)
	lhu     $t0, 0x001A($t8)
	xori    $t9, $s0, 0x0010
	sltiu   $t9, $t9, 0x0001
	move    $s0, $t9
	addiu   $t1, $t0, 0x0001
	beqz    $s0, .L80273264
	sh      $t1, 0x001A($t8)
	lw      $a0, 0x0048($sp)
	jal     game_8024A9CC
	li      $a1, 0x0012
.L80273264:
	li      $at, 0x41E00000
	mtc1    $at, $f8
	lwc1    $f4, 0x0024($sp)
	c.le.s  $f4, $f8
	nop
	bc1f    .L8027329C
	nop
	li      $at, 0x41800000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x003C($sp)
	li      $t2, 0x1800
	b       .L80273324
	sh      $t2, 0x003A($sp)
.L8027329C:
	li      $at, 0x43800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80273308
	nop
	li      $at, 0x42000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0024($sp)
	li      $at, 0x41400000
	mtc1    $at, $f6
	div.s   $f8, $f18, $f4
	sub.s   $f10, $f6, $f8
	sub.s   $f16, $f18, $f10
	swc1    $f16, 0x003C($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	li      $at, 0x45E00000
	mtc1    $at, $f18
	mul.s   $f8, $f4, $f6
	sub.s   $f10, $f18, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	b       .L80273324
	sh      $t5, 0x003A($sp)
.L80273308:
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	sub.s   $f18, $f4, $f6
	swc1    $f18, 0x003C($sp)
	li      $t4, 0x0800
	sh      $t4, 0x003A($sp)
.L80273324:
	li      $at, 0x41800000
	mtc1    $at, $f10
	lwc1    $f8, 0x003C($sp)
	li      $at, 0xC4200000
	mtc1    $at, $f4
	add.s   $f16, $f8, $f10
	lw      $t6, 0x0048($sp)
	div.s   $f6, $f4, $f16
	swc1    $f6, 0x004C($t6)
	lhu     $t7, 0x003A($sp)
	lui     $at, %hi(math_sin)
	sra     $t9, $t7, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f18, %lo(math_sin)($at)
	swc1    $f18, 0x0044($sp)
	lhu     $t1, 0x003A($sp)
	lui     $at, %hi(math_cos)
	sra     $t8, $t1, 4
	sll     $t2, $t8, 2
	addu    $at, $at, $t2
	lwc1    $f8, %lo(math_cos)($at)
	swc1    $f8, 0x0040($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f4
	nop
	bc1f    .L802733F0
	nop
	lw      $t3, 0x0048($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x003C($sp)
	lhu     $t5, 0x002E($t3)
	sra     $t4, $t5, 4
	sll     $t6, $t4, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f18, $f16, $f6
	swc1    $f18, 0x002C($sp)
	lw      $t7, 0x0048($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x003C($sp)
	lhu     $t9, 0x002E($t7)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_cos)($at)
	mul.s   $f4, $f8, $f10
	b       .L80273420
	swc1    $f4, 0x0028($sp)
.L802733F0:
	lwc1    $f16, 0x003C($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f8, 0x002C($sp)
	div.s   $f18, $f16, $f6
	mul.s   $f10, $f8, $f18
	swc1    $f10, 0x002C($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f8, 0x0028($sp)
	div.s   $f6, $f4, $f16
	mul.s   $f18, $f8, $f6
	swc1    $f18, 0x0028($sp)
.L80273420:
	lwc1    $f10, 0x002C($sp)
	lwc1    $f4, 0x0040($sp)
	lw      $t8, 0x0030($sp)
	lwc1    $f18, 0x0028($sp)
	mul.s   $f16, $f10, $f4
	lwc1    $f10, 0x0044($sp)
	lwc1    $f8, 0x00A0($t8)
	lw      $t2, 0x0048($sp)
	mul.s   $f4, $f18, $f10
	add.s   $f6, $f8, $f16
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x003C($t2)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0044($sp)
	lw      $t3, 0x0030($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f10, $f16, $f18
	lwc1    $f16, 0x0040($sp)
	lwc1    $f6, 0x00A8($t3)
	lw      $t5, 0x0048($sp)
	mul.s   $f18, $f8, $f16
	sub.s   $f4, $f6, $f10
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0044($t5)
	lw      $t4, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0048($sp)
	lwc1    $f10, 0x0110($t4)
	lwc1    $f8, 0x00A4($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0040($t7)
	lwc1    $f12, 0x0028($sp)
	jal     atan2
	lwc1    $f14, 0x002C($sp)
	lw      $t0, 0x0048($sp)
	li      $at, 0x8000
	addu    $t9, $v0, $at
	sh      $t9, 0x002E($t0)
	lw      $a0, 0x0048($sp)
	jal     player_802509B8
	li      $a1, 0x0056
	lw      $t1, 0x0048($sp)
	lw      $a0, 0x0088($t1)
	addiu   $a1, $t1, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t8, 0x0048($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t8)
	lh      $a2, 0x002E($t8)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	b       .L80273504
	move    $v0, $0
	b       .L80273504
	nop
.L80273504:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

pl_swim_80273518:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x00010000
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	bnez    $t8, .L80273558
	nop
	lw      $t9, 0x0028($sp)
	li      $at, 0x00010000
	lw      $t0, 0x0008($t9)
	or      $t1, $t0, $at
	sw      $t1, 0x0008($t9)
.L80273558:
	lw      $t2, 0x002C($sp)
	beqz    $t2, .L80273570
	nop
	li.u    $s0, 0x04519081
	b       .L80273578
	li.l    $s0, 0x04519081
.L80273570:
	li.u    $s0, 0x04509081
	li.l    $s0, 0x04509081
.L80273578:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251120
	li      $a2, 0x00010000
	b       .L80273590
	nop
.L80273590:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_802735A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_80250D38
	li      $a1, 0x000A
	bnez    $v0, .L802735D8
	nop
	lw      $a0, 0x0018($sp)
	jal     player_80250D38
	li      $a1, 0x0031
	beqz    $v0, .L80273600
	nop
.L802735D8:
	lw      $t6, 0x0018($sp)
	li.u    $a0, 0x04529081
	li.l    $a0, 0x04529081
	lw      $a1, 0x0088($t6)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0008($t7)
	ori     $t9, $t8, 0x0001
	sw      $t9, 0x0008($t7)
.L80273600:
	b       .L80273608
	nop
.L80273608:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80273618:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($t6)
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x0054($t7)
	c.le.s  $f10, $f16
	nop
	bc1f    .L80273674
	nop
	lw      $t8, 0x0020($sp)
	lui     $at, %hi(pl_swim_80336E48)
	lwc1    $f4, %lo(pl_swim_80336E48)($at)
	lwc1    $f18, 0x0054($t8)
	add.s   $f6, $f18, $f4
	b       .L802736F8
	swc1    $f6, 0x0054($t8)
.L80273674:
	lw      $t9, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x0054($t9)
	c.le.s  $f8, $f10
	nop
	bc1f    .L802736BC
	nop
	lw      $t0, 0x0020($sp)
	li      $at, 0x422C0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t0)
	lui     $at, %hi(pl_swim_80336E4C)
	lwc1    $f6, %lo(pl_swim_80336E4C)($at)
	div.s   $f4, $f16, $f18
	sub.s   $f8, $f6, $f4
	add.s   $f10, $f16, $f8
	b       .L802736F8
	swc1    $f10, 0x0054($t0)
.L802736BC:
	lw      $t1, 0x0020($sp)
	lui     $at, %hi(pl_swim_80336E50)
	lwc1    $f6, %lo(pl_swim_80336E50)($at)
	lw      $t2, 0x0068($t1)
	lwc1    $f18, 0x0020($t2)
	c.le.s  $f6, $f18
	nop
	bc1f    .L802736F8
	nop
	lw      $t3, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lwc1    $f4, 0x0054($t3)
	sub.s   $f8, $f4, $f16
	swc1    $f8, 0x0054($t3)
.L802736F8:
	lw      $t4, 0x0020($sp)
	li      $at, 0x42000000
	mtc1    $at, $f18
	lwc1    $f10, 0x0054($t4)
	c.lt.s  $f18, $f10
	nop
	bc1f    .L80273728
	nop
	li      $at, 0x42000000
	mtc1    $at, $f6
	lw      $t5, 0x0020($sp)
	swc1    $f6, 0x0054($t5)
.L80273728:
	lw      $t6, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0800
	lh      $t7, 0x0024($t6)
	lh      $t8, 0x002E($t6)
	li      $a3, 0x0800
	subu    $a0, $t7, $t8
	sll     $t9, $a0, 16
	move    $a0, $t9
	sra     $t0, $a0, 16
	jal     converge_i
	move    $a0, $t0
	lw      $t1, 0x0020($sp)
	lh      $t2, 0x0024($t1)
	subu    $t3, $t2, $v0
	sh      $t3, 0x002E($t1)
	lw      $t4, 0x0020($sp)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x002E($t4)
	lwc1    $f16, 0x0054($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f16
	swc1    $f8, 0x0058($t4)
	lw      $t8, 0x0020($sp)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x002E($t8)
	lwc1    $f18, 0x0054($t8)
	sra     $t0, $t9, 4
	sll     $t2, $t0, 2
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f6, $f10, $f18
	swc1    $f6, 0x005C($t8)
	lw      $t3, 0x0020($sp)
	lwc1    $f4, 0x0058($t3)
	swc1    $f4, 0x0048($t3)
	mtc1    $0, $f16
	lw      $t1, 0x0020($sp)
	swc1    $f16, 0x004C($t1)
	lw      $t5, 0x0020($sp)
	lwc1    $f8, 0x005C($t5)
	swc1    $f8, 0x0050($t5)
	b       .L802737E4
	nop
.L802737E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_802737F4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x0030($sp)
	lwc1    $f4, 0x004C($t6)
	lwc1    $f6, 0x0040($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t7, 0x0030($sp)
	lh      $t8, 0x0076($t7)
	addiu   $t9, $t8, -0x0064
	mtc1    $t9, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0028($sp)
	lw      $t0, 0x0030($sp)
	mtc1    $0, $f4
	lwc1    $f18, 0x004C($t0)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L80273870
	nop
	lwc1    $f6, 0x0040($t0)
	lwc1    $f8, 0x0028($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80273870
	nop
	b       .L80273A18
	li      $v0, 0x0001
.L80273870:
	lw      $t1, 0x0030($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0001
	beqz    $t3, .L8027391C
	nop
	lw      $t4, 0x0030($sp)
	lh      $t5, 0x0024($t4)
	lh      $t6, 0x002E($t4)
	subu    $t7, $t5, $t6
	sh      $t7, 0x0026($sp)
	lhu     $t8, 0x0026($sp)
	lui     $at, %hi(pl_swim_80336E54)
	lwc1    $f10, %lo(pl_swim_80336E54)($at)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t0
	lwc1    $f16, %lo(math_cos)($at)
	lw      $t1, 0x0030($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0054($t1)
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0054($t1)
	lhu     $t2, 0x0026($sp)
	lw      $t5, 0x0030($sp)
	li      $at, 0x44000000
	mtc1    $at, $f8
	sra     $t3, $t2, 4
	lh      $t6, 0x002E($t5)
	sll     $t4, $t3, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	mtc1    $t6, $f4
	mul.s   $f16, $f8, $f10
	cvt.s.w $f18, $f4
	add.s   $f6, $f18, $f16
	trunc.w.s $f8, $f6
	mfc1    $t8, $f8
	nop
	sh      $t8, 0x002E($t5)
	b       .L8027393C
	nop
.L8027391C:
	lw      $t9, 0x0030($sp)
	mtc1    $0, $f14
	li      $a2, 0x3E800000
	li      $a3, 0x3E800000
	jal     converge_f
	lwc1    $f12, 0x0054($t9)
	lw      $t0, 0x0030($sp)
	swc1    $f0, 0x0054($t0)
.L8027393C:
	lw      $t1, 0x0030($sp)
	li      $at, 0x41800000
	mtc1    $at, $f4
	lwc1    $f10, 0x0054($t1)
	c.lt.s  $f4, $f10
	nop
	bc1f    .L80273974
	nop
	lw      $t2, 0x0030($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lwc1    $f18, 0x0054($t2)
	sub.s   $f6, $f18, $f16
	swc1    $f6, 0x0054($t2)
.L80273974:
	lw      $t3, 0x0030($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0054($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802739A8
	nop
	lw      $t4, 0x0030($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f4, 0x0054($t4)
	add.s   $f16, $f4, $f18
	swc1    $f16, 0x0054($t4)
.L802739A8:
	lw      $t6, 0x0030($sp)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x002E($t6)
	lwc1    $f8, 0x0054($t6)
	sra     $t8, $t7, 4
	sll     $t5, $t8, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f20, $f6, $f8
	swc1    $f20, 0x0058($t6)
	lw      $t9, 0x0030($sp)
	swc1    $f20, 0x0048($t9)
	lw      $t0, 0x0030($sp)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x002E($t0)
	lwc1    $f4, 0x0054($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f20, $f10, $f4
	swc1    $f20, 0x005C($t0)
	lw      $t4, 0x0030($sp)
	swc1    $f20, 0x0050($t4)
	b       .L80273A18
	move    $v0, $0
	b       .L80273A18
	nop
.L80273A18:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_swim_80273A2C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, .L80273A6C
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273BC0
	nop
.L80273A6C:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L80273A98
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44F8
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273BC0
	nop
.L80273A98:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	beqz    $t4, .L80273AC4
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44F2
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273BC0
	nop
.L80273AC4:
	lw      $t5, 0x0028($sp)
	lhu     $s0, 0x0018($t5)
	beqz    $s0, .L80273AF4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80273B08
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80273B1C
	nop
	b       .L80273B30
	nop
.L80273AF4:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00C3
	b       .L80273B30
	nop
.L80273B08:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00C4
	b       .L80273B30
	nop
.L80273B1C:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00C5
	b       .L80273B30
	nop
.L80273B30:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80273B6C
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x0003
	lhu     $t7, 0x0018($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x0018($t6)
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0018($t9)
	bne     $t0, $at, .L80273B6C
	nop
	lw      $t1, 0x0028($sp)
	sh      $0, 0x0018($t1)
.L80273B6C:
	jal     pl_physics_802559B0
	lw      $a0, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0076($t2)
	lwc1    $f4, 0x0040($t2)
	addiu   $t4, $t3, -0x0096
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	c.le.s  $f8, $f4
	nop
	bc1f    .L80273BB0
	nop
	lw      $t5, 0x0028($sp)
	lw      $t7, 0x0008($t5)
	ori     $t8, $t7, 0x0080
	sw      $t8, 0x0008($t5)
.L80273BB0:
	b       .L80273BC0
	move    $v0, $0
	b       .L80273BC0
	nop
.L80273BC0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80273BD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80273C14
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80273CC0
	nop
.L80273C14:
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, .L80273C44
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273CC0
	nop
.L80273C44:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L80273C70
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F9
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273CC0
	nop
.L80273C70:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L80273C9C
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F3
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273CC0
	nop
.L80273C9C:
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x003F
	b       .L80273CC0
	move    $v0, $0
	b       .L80273CC0
	nop
.L80273CC0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80273CD0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, .L80273D10
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273E60
	nop
.L80273D10:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0010
	beqz    $t1, .L80273D40
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273E60
	nop
.L80273D40:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, .L80273D6C
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44F8
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273E60
	nop
.L80273D6C:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0020
	beqz    $t7, .L80273D9C
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80273E60
	nop
.L80273D9C:
	lw      $t8, 0x0028($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t8)
	li      $at, 0x47800000
	mtc1    $at, $f10
	div.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	slti    $at, $t0, 0x1000
	beqz    $at, .L80273DDC
	sw      $t0, 0x0024($sp)
	li      $t1, 0x1000
	sw      $t1, 0x0024($sp)
.L80273DDC:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0048
	jal     player_80250B04
	lw      $a2, 0x0024($sp)
	jal     pl_swim_802735A4
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80273618
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, .L80273E24
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80273E3C
	nop
	b       .L80273E50
	nop
.L80273E24:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F4
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L80273E50
	nop
.L80273E3C:
	mtc1    $0, $f4
	lw      $t2, 0x0028($sp)
	swc1    $f4, 0x0054($t2)
	b       .L80273E50
	nop
.L80273E50:
	b       .L80273E60
	move    $v0, $0
	b       .L80273E60
	nop
.L80273E60:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80273E74:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80273EB4
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44F2
	jal     player_80253178
	move    $a2, $0
	b       .L8027401C
	nop
.L80273EB4:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, .L80273EE4
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027401C
	nop
.L80273EE4:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L80273F10
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44F9
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027401C
	nop
.L80273F10:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, .L80273F40
	nop
	li.u    $a1, 0x080042F1
	li.l    $a1, 0x080042F1
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027401C
	nop
.L80273F40:
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(pl_swim_80336E58)
	lwc1    $f6, %lo(pl_swim_80336E58)($at)
	lwc1    $f4, 0x0020($t9)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t9)
	lw      $t0, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t0)
	li      $at, 0x47800000
	mtc1    $at, $f4
	div.s   $f18, $f10, $f16
	mul.s   $f6, $f18, $f4
	trunc.w.s $f8, $f6
	mfc1    $t2, $f8
	nop
	slti    $at, $t2, 0x1000
	beqz    $at, .L80273F98
	sw      $t2, 0x0024($sp)
	li      $t3, 0x1000
	sw      $t3, 0x0024($sp)
.L80273F98:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0017
	jal     player_80250B04
	lw      $a2, 0x0024($sp)
	jal     pl_swim_802735A4
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80273618
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, .L80273FE0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80273FF8
	nop
	b       .L8027400C
	nop
.L80273FE0:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F5
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L8027400C
	nop
.L80273FF8:
	mtc1    $0, $f10
	lw      $t4, 0x0028($sp)
	swc1    $f10, 0x0054($t4)
	b       .L8027400C
	nop
.L8027400C:
	b       .L8027401C
	move    $v0, $0
	b       .L8027401C
	nop
.L8027401C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80274030:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, .L80274070
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274120
	nop
.L80274070:
	jal     pl_swim_802737F4
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8027409C
	nop
	li.u    $a1, 0x01000889
	li.l    $a1, 0x01000889
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L80274120
	nop
.L8027409C:
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80273518
	move    $a1, $0
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x004D
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L802740E4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802740FC
	nop
	b       .L80274110
	nop
.L802740E4:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44FA
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274110
	nop
.L802740FC:
	mtc1    $0, $f4
	lw      $t9, 0x0028($sp)
	swc1    $f4, 0x0054($t9)
	b       .L80274110
	nop
.L80274110:
	b       .L80274120
	move    $v0, $0
	b       .L80274120
	nop
.L80274120:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80274134:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80274174
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F4
	jal     player_80253178
	move    $a2, $0
	b       .L80274254
	nop
.L80274174:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, .L802741A4
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274254
	nop
.L802741A4:
	jal     pl_swim_802737F4
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802741D0
	nop
	li.u    $a1, 0x010008A3
	li.l    $a1, 0x010008A3
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L80274254
	nop
.L802741D0:
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80273518
	move    $a1, $0
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0041
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L80274218
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80274230
	nop
	b       .L80274244
	nop
.L80274218:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44FB
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274244
	nop
.L80274230:
	mtc1    $0, $f4
	lw      $t3, 0x0028($sp)
	swc1    $f4, 0x0054($t3)
	b       .L80274244
	nop
.L80274244:
	b       .L80274254
	move    $v0, $0
	b       .L80274254
	nop
.L80274254:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80274268:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, .L802742A8
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274370
	nop
.L802742A8:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L8027430C
	nop
	lw      $t2, 0x0028($sp)
	lui     $at, %hi(math_sin)
	lh      $t3, 0x0024($t2)
	lh      $t4, 0x002E($t2)
	subu    $t5, $t3, $t4
	andi    $t6, $t5, 0xFFFF
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x44800000
	mtc1    $at, $f6
	mtc1    $t4, $f10
	mul.s   $f8, $f6, $f4
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f6, $f18
	mfc1    $t0, $f6
	nop
	sh      $t0, 0x002E($t2)
.L8027430C:
	lw      $t1, 0x0028($sp)
	lw      $t3, 0x001C($t1)
	bnez    $t3, .L80274324
	nop
	b       .L80274328
	li      $s0, 0x0056
.L80274324:
	li      $s0, 0x00A9
.L80274328:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	jal     pl_swim_80270B4C
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	andi    $t5, $v0, 0x0001
	beqz    $t5, .L80274360
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F6
	jal     player_80252CF4
	move    $a2, $0
.L80274360:
	b       .L80274370
	move    $v0, $0
	b       .L80274370
	nop
.L80274370:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80274384:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L802743C0
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F4
	jal     player_80253178
	move    $a2, $0
	b       .L8027449C
	nop
.L802743C0:
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, .L802743F0
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027449C
	nop
.L802743F0:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, .L80274454
	nop
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(math_sin)
	lh      $t7, 0x0024($t6)
	lh      $t8, 0x002E($t6)
	subu    $t9, $t7, $t8
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x44800000
	mtc1    $at, $f6
	mtc1    $t8, $f10
	mul.s   $f8, $f6, $f4
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f6, $f18
	mfc1    $t4, $f6
	nop
	sh      $t4, 0x002E($t6)
.L80274454:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0043
	jal     pl_swim_80270B4C
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0018($sp)
	andi    $t5, $v0, 0x0001
	beqz    $t5, .L8027448C
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F7
	jal     player_80252CF4
	move    $a2, $0
.L8027448C:
	b       .L8027449C
	move    $v0, $0
	b       .L8027449C
	nop
.L8027449C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_802744AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80273518
	li      $a1, 0x0001
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, .L802744F4
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274570
	nop
.L802744F4:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L80274520
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F2
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274570
	nop
.L80274520:
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x004E
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80274560
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274570
	nop
.L80274560:
	b       .L80274570
	move    $v0, $0
	b       .L80274570
	nop
.L80274570:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80274580:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80273518
	li      $a1, 0x0001
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L802745CC
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80274678
	nop
.L802745CC:
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, .L802745FC
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274678
	nop
.L802745FC:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, .L80274628
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F3
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274678
	nop
.L80274628:
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0040
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80274668
	nop
	li.u    $a1, 0x080042F1
	li.l    $a1, 0x080042F1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274678
	nop
.L80274668:
	b       .L80274678
	move    $v0, $0
	b       .L80274678
	nop
.L80274678:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80274688:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80273518
	li      $a1, 0x0001
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, .L802746D0
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027474C
	nop
.L802746D0:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L802746FC
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F2
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027474C
	nop
.L802746FC:
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0057
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8027473C
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027474C
	nop
.L8027473C:
	b       .L8027474C
	move    $v0, $0
	b       .L8027474C
	nop
.L8027474C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_8027475C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80273518
	li      $a1, 0x0001
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L802747A8
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80274854
	nop
.L802747A8:
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, .L802747D8
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274854
	nop
.L802747D8:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, .L80274804
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F3
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274854
	nop
.L80274804:
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0042
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80274844
	nop
	li.u    $a1, 0x080042F1
	li.l    $a1, 0x080042F1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80274854
	nop
.L80274844:
	b       .L80274854
	move    $v0, $0
	b       .L80274854
	nop
.L80274854:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80274864:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0050
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f8, $f4
	nop
	bc1f    .L8027493C
	nop
	lw      $t9, 0x0018($sp)
	lh      $t0, 0x0076($t9)
	lwc1    $f18, 0x0070($t9)
	addiu   $t1, $t0, -0x0050
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802748E8
	nop
	lw      $t2, 0x0018($sp)
	lh      $t3, 0x0076($t2)
	addiu   $t4, $t3, -0x0050
	mtc1    $t4, $f6
	nop
	cvt.s.w $f4, $f6
	b       .L8027493C
	swc1    $f4, 0x0040($t2)
.L802748E8:
	lw      $t5, 0x0018($sp)
	li.u    $at, 0x300024D6
	li.l    $at, 0x300024D6
	lw      $t6, 0x000C($t5)
	bne     $t6, $at, .L8027492C
	nop
	lw      $t7, 0x007C($t5)
	beqz    $t7, .L8027492C
	nop
	lw      $t0, 0x0018($sp)
	li      $t8, 0x00400000
	lw      $t1, 0x007C($t0)
	sw      $t8, 0x0134($t1)
	lw      $t9, 0x0018($sp)
	sw      $0, 0x007C($t9)
	jal     bgm_shell_stop
	nop
.L8027492C:
	jal     player_802533E4
	lw      $a0, 0x0018($sp)
	b       .L8027498C
	nop
.L8027493C:
	lw      $t3, 0x0018($sp)
	lh      $t4, 0x00AE($t3)
	slti    $at, $t4, 0x0100
	beqz    $at, .L8027497C
	nop
	lw      $t2, 0x000C($t3)
	li.u    $at, 0x00021000
	li.l    $at, 0x00021000
	and     $t6, $t2, $at
	bnez    $t6, .L8027497C
	nop
	li.u    $a1, 0x300032C4
	li.l    $a1, 0x300032C4
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8027497C:
	b       .L8027498C
	move    $v0, $0
	b       .L8027498C
	nop
.L8027498C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_swim_main
pl_swim_main:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_swim_80274864
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802749C4
	nop
	b       .L80274E98
	li      $v0, 0x0001
.L802749C4:
	mtc1    $0, $f4
	lw      $t6, 0x0028($sp)
	swc1    $f4, 0x00C0($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0098($t7)
	sh      $0, 0x0014($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0098($t9)
	sh      $0, 0x0016($t0)
	lw      $t1, 0x0028($sp)
	li.u    $at, 0x300022E3
	li.l    $at, 0x300022E3
	lw      $s0, 0x000C($t1)
	sltu    $at, $s0, $at
	bnez    $at, .L80274B24
	nop
	li.u    $at, 0x300222C7
	li.l    $at, 0x300222C7
	sltu    $at, $s0, $at
	bnez    $at, .L80274A60
	nop
	li.u    $at, 0x300222C8
	li.l    $at, 0x300222C8
	beq     $s0, $at, .L80274CA8
	nop
	li.u    $at, 0x300222E3
	li.l    $at, 0x300222E3
	beq     $s0, $at, .L80274D84
	nop
	li.u    $at, 0x380022C0
	li.l    $at, 0x380022C0
	beq     $s0, $at, .L80274C08
	nop
	li.u    $at, 0x380022C1
	li.l    $at, 0x380022C1
	beq     $s0, $at, .L80274C1C
	nop
	b       L80274E88
	nop
.L80274A60:
	li.u    $at, 0x300032C8
	li.l    $at, 0x300032C8
	sltu    $at, $s0, $at
	bnez    $at, .L80274A9C
	nop
	li.u    $at, 0x300222C5
	li.l    $at, 0x300222C5
	beq     $s0, $at, .L80274C6C
	nop
	li.u    $at, 0x300222C6
	li.l    $at, 0x300222C6
	beq     $s0, $at, .L80274C80
	nop
	b       L80274E88
	nop
.L80274A9C:
	li.u    $at, 0x300032C5
	li.l    $at, 0x300032C5
	sltu    $at, $s0, $at
	bnez    $at, .L80274AC8
	nop
	li.u    $at, 0x300032C7
	li.l    $at, 0x300032C7
	beq     $s0, $at, .L80274C94
	nop
	b       L80274E88
	nop
.L80274AC8:
	li.u    $at, 0x300024E2
	li.l    $at, 0x300024E2
	sltu    $at, $s0, $at
	bnez    $at, .L80274AF4
	nop
	li.u    $at, 0x300032C4
	li.l    $at, 0x300032C4
	beq     $s0, $at, .L80274C58
	nop
	b       L80274E88
	nop
.L80274AF4:
	li.u    $at, 0xCFFFDB30
	li.l    $at, 0xCFFFDB30
	addu    $t2, $s0, $at
	sltiu   $at, $t2, 0x0012
	beqz    $at, L80274E88
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(pl_swim_80336E5C)
	addu    $at, $at, $t2
	lw      $t2, %lo(pl_swim_80336E5C)($at)
	jr      $t2
	nop
.L80274B24:
	sltiu   $at, $s0, 0x44FC
	bnez    $at, .L80274B88
	nop
	li.u    $at, 0x080042F0
	li.l    $at, 0x080042F0
	beq     $s0, $at, .L80274D98
	nop
	li.u    $at, 0x080042F1
	li.l    $at, 0x080042F1
	beq     $s0, $at, .L80274E10
	nop
	li.u    $at, 0x300022C2
	li.l    $at, 0x300022C2
	beq     $s0, $at, .L80274C30
	nop
	li.u    $at, 0x300022C3
	li.l    $at, 0x300022C3
	beq     $s0, $at, .L80274C44
	nop
	li.u    $at, 0x300022E2
	li.l    $at, 0x300022E2
	beq     $s0, $at, .L80274D70
	nop
	b       L80274E88
	nop
.L80274B88:
	sltiu   $at, $s0, 0x42F7
	bnez    $at, .L80274BDC
	nop
	sltiu   $at, $s0, 0x42F8
	bnez    $at, .L80274BC8
	nop
	addiu   $t3, $s0, -0x44F2
	sltiu   $at, $t3, 0x000A
	beqz    $at, L80274E88
	nop
	sll     $t3, $t3, 2
	lui     $at, %hi(pl_swim_80336EA4)
	addu    $at, $at, $t3
	lw      $t3, %lo(pl_swim_80336EA4)($at)
	jr      $t3
	nop
.L80274BC8:
	li      $at, 0x42F7
	beq     $s0, $at, .L80274E4C
	nop
	b       L80274E88
	nop
.L80274BDC:
	li      $at, 0x42F4
	beq     $s0, $at, .L80274DC0
	nop
	li      $at, 0x42F5
	beq     $s0, $at, .L80274E38
	nop
	li      $at, 0x42F6
	beq     $s0, $at, .L80274DD4
	nop
	b       L80274E88
	nop
.L80274C08:
	jal     pl_swim_802711D4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274C1C:
	jal     pl_swim_802712C0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274C30:
	jal     pl_swim_802713BC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274C44:
	jal     pl_swim_802714A8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274C58:
	jal     pl_swim_80272CBC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274C6C:
	jal     pl_swim_80272B1C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274C80:
	jal     pl_swim_80272B64
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274C94:
	jal     pl_swim_80272DC0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274CA8:
	jal     pl_swim_80272BAC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274CBC
L80274CBC:
	jal     pl_swim_80271AA0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274CD0
L80274CD0:
	jal     pl_swim_80271D04
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274CE4
L80274CE4:
	jal     pl_swim_80271EB4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274CF8
L80274CF8:
	jal     pl_swim_8027202C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274D0C
L80274D0C:
	jal     pl_swim_8027226C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274D20
L80274D20:
	jal     pl_swim_802723F0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274D34
L80274D34:
	jal     pl_swim_80272548
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274D48
L80274D48:
	jal     pl_swim_80272778
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274D5C
L80274D5C:
	jal     pl_swim_80272870
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274D70:
	jal     pl_swim_80272E3C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274D84:
	jal     pl_swim_80273160
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274D98:
	jal     pl_swim_80273A2C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274DAC
L80274DAC:
	jal     pl_swim_80273CD0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274DC0:
	jal     pl_swim_80274268
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274DD4:
	jal     pl_swim_80274688
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274DE8
L80274DE8:
	jal     pl_swim_80274030
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274DFC
L80274DFC:
	jal     pl_swim_802744AC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274E10:
	jal     pl_swim_80273BD4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274E24
L80274E24:
	jal     pl_swim_80273E74
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274E38:
	jal     pl_swim_80274384
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.L80274E4C:
	jal     pl_swim_8027475C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274E60
L80274E60:
	jal     pl_swim_80274134
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274E74
L80274E74:
	jal     pl_swim_80274580
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274E88
L80274E88:
	b       .L80274E98
	lw      $v0, 0x0024($sp)
	b       .L80274E98
	nop
.L80274E98:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

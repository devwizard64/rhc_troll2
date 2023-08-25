.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

.globl pl_physics_80255080
pl_physics_80255080:
	mtc1    $0, $f0
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

.globl pl_physics_8025509C
pl_physics_8025509C:
	sw      $a0, 0x0000($sp)
	b       .L802550A8
	nop
.L802550A8:
	jr      $ra
	nop

.globl pl_physics_802550B0
pl_physics_802550B0:
	jr      $ra
	nop
	jr      $ra
	nop

.globl pl_physics_802550C0
pl_physics_802550C0:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x0008($a1)
	lwc1    $f6, 0x0008($a0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x000C($a1)
	lwc1    $f16, 0x000C($a0)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($sp)
	lwc1    $f4, 0x0010($a0)
	lwc1    $f6, 0x000C($sp)
	lwc1    $f10, 0x0008($sp)
	lwc1    $f16, 0x0014($a0)
	mul.s   $f8, $f4, $f6
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f4, $f8, $f18
	mul.s   $f16, $f6, $f6
	nop
	mul.s   $f8, $f10, $f10
	add.s   $f18, $f16, $f8
	div.s   $f6, $f4, $f18
	swc1    $f6, 0x0004($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f8, 0x0010($a1)
	lwc1    $f18, 0x0008($sp)
	neg.s   $f16, $f10
	lwc1    $f6, 0x0014($a1)
	mul.s   $f4, $f16, $f8
	nop
	mul.s   $f16, $f18, $f6
	sub.s   $f8, $f4, $f16
	mul.s   $f6, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f16, $f6, $f4
	div.s   $f10, $f8, $f16
	swc1    $f10, 0x0000($sp)
	lwc1    $f18, 0x0000($a1)
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x0000($sp)
	mul.s   $f4, $f18, $f6
	neg.s   $f18, $f8
	mul.s   $f16, $f4, $f8
	lwc1    $f8, 0x0010($a1)
	mul.s   $f6, $f10, $f18
	sub.s   $f4, $f16, $f6
	add.s   $f10, $f8, $f4
	swc1    $f10, 0x0010($a1)
	lwc1    $f18, 0x0000($a1)
	lwc1    $f16, 0x0004($sp)
	lwc1    $f8, 0x0008($sp)
	lwc1    $f10, 0x0000($sp)
	mul.s   $f6, $f18, $f16
	neg.s   $f18, $f8
	mul.s   $f4, $f6, $f8
	lwc1    $f8, 0x0014($a1)
	mul.s   $f16, $f10, $f18
	sub.s   $f6, $f4, $f16
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0014($a1)
	lwc1    $f18, 0x0004($sp)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f6, 0x0000($a0)
	neg.s   $f4, $f18
	lwc1    $f10, 0x0000($sp)
	mul.s   $f8, $f4, $f16
	neg.s   $f4, $f16
	lwc1    $f16, 0x0010($a0)
	mul.s   $f18, $f6, $f10
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0010($a0)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f10, 0x0000($a0)
	neg.s   $f8, $f4
	lwc1    $f18, 0x0000($sp)
	mul.s   $f16, $f8, $f6
	neg.s   $f8, $f6
	lwc1    $f6, 0x0014($a0)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f10, $f4, $f8
	add.s   $f18, $f16, $f10
	add.s   $f4, $f6, $f18
	swc1    $f4, 0x0014($a0)
	b       .L80255230
	nop
.L80255230:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl pl_physics_80255238
pl_physics_80255238:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lwc1    $f4, 0x000C($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80255284
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f10
	lwc1    $f8, 0x000C($sp)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x000C($sp)
	lh      $t6, 0x0012($sp)
	li      $at, 0x8000
	addu    $t7, $t6, $at
	sh      $t7, 0x0012($sp)
.L80255284:
	lwc1    $f18, 0x0018($sp)
	swc1    $f18, 0x0004($a0)
	lwc1    $f4, 0x0014($sp)
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x0008($a0)
	lwc1    $f8, 0x0008($sp)
	swc1    $f8, 0x000C($a0)
	lhu     $t8, 0x0012($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x000C($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0010($a0)
	lhu     $t1, 0x0012($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x000C($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0014($a0)
	b       .L802552F4
	nop
.L802552F4:
	jr      $ra
	nop

.globl pl_physics_802552FC
pl_physics_802552FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0060($t6)
	beqz    $t7, .L8025539C
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0060($t8)
	lwc1    $f12, 0x0024($t9)
	jal     atan2
	lwc1    $f14, 0x001C($t9)
	sh      $v0, 0x0026($sp)
	lw      $t0, 0x0028($sp)
	lh      $t2, 0x0026($sp)
	lh      $t1, 0x002E($t0)
	subu    $t3, $t1, $t2
	sll     $t4, $t3, 16
	sra     $t5, $t4, 16
	subu    $t6, $t2, $t5
	sh      $t6, 0x002E($t0)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L80255378
	nop
	li.u    $s0, 0x04428081
	b       .L80255380
	li.l    $s0, 0x04428081
.L80255378:
	li.u    $s0, 0x0445A081
	li.l    $s0, 0x0445A081
.L80255380:
	lw      $t1, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L802553B4
	nop
.L8025539C:
	lw      $t3, 0x0028($sp)
	li.u    $a0, 0x0444C081
	li.l    $a0, 0x0444C081
	lw      $a1, 0x0088($t3)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802553B4:
	lw      $t4, 0x002C($sp)
	beqz    $t4, .L802553E4
	nop
	lw      $t2, 0x0028($sp)
	lwc1    $f4, 0x0054($t2)
	move    $a0, $t2
	neg.s   $f6, $f4
	mfc1    $a1, $f6
	jal     player_80251708
	nop
	b       .L802553F8
	nop
.L802553E4:
	lw      $t5, 0x0028($sp)
	li      $at, 0x8000
	lh      $t6, 0x002E($t5)
	addu    $t0, $t6, $at
	sh      $t0, 0x002E($t5)
.L802553F8:
	b       .L80255400
	nop
.L80255400:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl pl_physics_80255414
pl_physics_80255414:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00010000
	lw      $t7, 0x000C($t6)
	and     $t8, $t7, $at
	beqz    $t8, .L8025544C
	nop
	mtc1    $0, $f4
	lw      $t9, 0x0018($sp)
	b       .L80255634
	swc1    $f4, 0x00C0($t9)
.L8025544C:
	lw      $t0, 0x0018($sp)
	lui     $at, %hi(pl_physics_80336670)
	lwc1    $f8, %lo(pl_physics_80336670)($at)
	lwc1    $f6, 0x00C0($t0)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8025547C
	nop
	lui     $at, %hi(pl_physics_80336674)
	lwc1    $f10, %lo(pl_physics_80336674)($at)
	lw      $t1, 0x0018($sp)
	swc1    $f10, 0x00C0($t1)
.L8025547C:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0068($t2)
	lh      $t4, 0x0000($t3)
	addiu   $t5, $t4, -0x0021
	sltiu   $at, $t5, 0x000D
	beqz    $at, L80255620
	nop
	sll     $t5, $t5, 2
	lui     $at, %hi(pl_physics_80336678)
	addu    $at, $at, $t5
	lw      $t5, %lo(pl_physics_80336678)($at)
	jr      $t5
	nop
.globl L802554B0
L802554B0:
	lw      $t6, 0x0018($sp)
	lwc1    $f18, 0x001C($sp)
	li      $at, 0x41200000
	lwc1    $f16, 0x00C0($t6)
	mtc1    $at, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00C0($t6)
	lw      $t7, 0x0018($sp)
	lwc1    $f6, 0x00C0($t7)
	c.le.s  $f8, $f6
	nop
	bc1f    .L802554F4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f10
	lw      $t8, 0x0018($sp)
	swc1    $f10, 0x00C0($t8)
.L802554F4:
	b       .L80255634
	nop
.globl L802554FC
L802554FC:
	lw      $t9, 0x0018($sp)
	lwc1    $f18, 0x001C($sp)
	li      $at, 0x41C80000
	lwc1    $f16, 0x00C0($t9)
	mtc1    $at, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00C0($t9)
	lw      $t0, 0x0018($sp)
	lwc1    $f6, 0x00C0($t0)
	c.le.s  $f8, $f6
	nop
	bc1f    .L80255540
	nop
	li      $at, 0x41C80000
	mtc1    $at, $f10
	lw      $t1, 0x0018($sp)
	swc1    $f10, 0x00C0($t1)
.L80255540:
	b       .L80255634
	nop
.globl L80255548
L80255548:
	lw      $t2, 0x0018($sp)
	lwc1    $f18, 0x001C($sp)
	li      $at, 0x42700000
	lwc1    $f16, 0x00C0($t2)
	mtc1    $at, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00C0($t2)
	lw      $t3, 0x0018($sp)
	lwc1    $f6, 0x00C0($t3)
	c.le.s  $f8, $f6
	nop
	bc1f    .L8025558C
	nop
	li      $at, 0x42700000
	mtc1    $at, $f10
	lw      $t4, 0x0018($sp)
	swc1    $f10, 0x00C0($t4)
.L8025558C:
	b       .L80255634
	nop
.globl L80255594
L80255594:
	lw      $t5, 0x0018($sp)
	lwc1    $f18, 0x001C($sp)
	li      $at, 0x43200000
	lwc1    $f16, 0x00C0($t5)
	mtc1    $at, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00C0($t5)
	lw      $t6, 0x0018($sp)
	lwc1    $f6, 0x00C0($t6)
	c.le.s  $f8, $f6
	nop
	bc1f    .L802555EC
	nop
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00021312
	li.l    $a1, 0x00021312
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80255644
	nop
.L802555EC:
	b       .L80255634
	nop
.globl L802555F4
L802555F4:
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00021312
	li.l    $a1, 0x00021312
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80255644
	nop
	b       .L80255634
	nop
.globl L80255620
L80255620:
	mtc1    $0, $f10
	lw      $t7, 0x0018($sp)
	swc1    $f10, 0x00C0($t7)
	b       .L80255634
	nop
.L80255634:
	b       .L80255644
	move    $v0, $0
	b       .L80255644
	nop
.L80255644:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_physics_80255654
pl_physics_80255654:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0074($t6)
	lh      $t8, 0x002E($t6)
	subu    $t9, $t7, $t8
	sh      $t9, 0x001E($sp)
	lh      $t0, 0x001E($sp)
	slti    $at, $t0, -0x3FFF
	bnez    $at, .L802556B8
	nop
	slti    $at, $t0, 0x4000
	beqz    $at, .L802556B8
	nop
	li      $at, 0x41800000
	mtc1    $at, $f4
	lw      $t1, 0x0020($sp)
	swc1    $f4, 0x0054($t1)
	lw      $t2, 0x0020($sp)
	lh      $t3, 0x0074($t2)
	b       .L802556DC
	sh      $t3, 0x002E($t2)
.L802556B8:
	li      $at, 0xC1800000
	mtc1    $at, $f6
	lw      $t4, 0x0020($sp)
	swc1    $f6, 0x0054($t4)
	lw      $t5, 0x0020($sp)
	li      $at, 0x8000
	lh      $t6, 0x0074($t5)
	addu    $t7, $t6, $at
	sh      $t7, 0x002E($t5)
.L802556DC:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     player_80252CF4
	lw      $a2, 0x0028($sp)
	b       .L802556FC
	nop
	b       .L802556FC
	nop
.L802556FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl pl_physics_8025570C
pl_physics_8025570C:
	addiu   $sp, $sp, -0x0010
	lw      $t6, 0x0068($a0)
	sw      $t6, 0x000C($sp)
	lw      $t7, 0x000C($sp)
	lh      $t8, 0x0000($t7)
	sw      $t8, 0x0008($sp)
	lw      $t9, 0x0008($sp)
	li      $at, 0x0024
	beq     $t9, $at, .L80255758
	nop
	li      $at, 0x0025
	beq     $t9, $at, .L80255758
	nop
	li      $at, 0x0027
	beq     $t9, $at, .L80255758
	nop
	li      $at, 0x002D
	bne     $t9, $at, .L802557F4
	nop
.L80255758:
	lw      $t0, 0x000C($sp)
	lh      $t1, 0x0002($t0)
	sll     $t2, $t1, 8
	sh      $t2, 0x0006($sp)
	lw      $t3, 0x000C($sp)
	lui     $t7, %hi(pl_physics_8032DAF0)
	lh      $t4, 0x0002($t3)
	sra     $t5, $t4, 8
	sll     $t6, $t5, 1
	addu    $t7, $t7, $t6
	lh      $t7, %lo(pl_physics_8032DAF0)($t7)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0000($sp)
	lhu     $t8, 0x0006($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0000($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f18, 0x0048($a0)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0048($a0)
	lhu     $t1, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x0000($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_cos)($at)
	lwc1    $f18, 0x0050($a0)
	mul.s   $f10, $f6, $f8
	add.s   $f16, $f18, $f10
	swc1    $f16, 0x0050($a0)
	b       .L80255804
	li      $v0, 0x0001
.L802557F4:
	b       .L80255804
	move    $v0, $0
	b       .L80255804
	nop
.L80255804:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl pl_physics_8025580C
pl_physics_8025580C:
	addiu   $sp, $sp, -0x0010
	lw      $t6, 0x0068($a0)
	sw      $t6, 0x000C($sp)
	lw      $t7, 0x000C($sp)
	li      $at, 0x002C
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, .L80255998
	nop
	lw      $t9, 0x000C($sp)
	lh      $t0, 0x0002($t9)
	sll     $t1, $t0, 8
	sh      $t1, 0x0006($sp)
	lw      $t2, 0x000C($a0)
	andi    $t3, $t2, 0x0400
	beqz    $t3, .L80255900
	nop
	lh      $t4, 0x002E($a0)
	lh      $t5, 0x0006($sp)
	subu    $t6, $t4, $t5
	sh      $t6, 0x0004($sp)
	lwc1    $f4, 0x0054($a0)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80255894
	nop
	lwc1    $f8, 0x0054($a0)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	neg.s   $f10, $f8
	mul.s   $f18, $f10, $f16
	b       .L802558A4
	swc1    $f18, 0x0008($sp)
.L80255894:
	li      $at, 0xC1000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0008($sp)
.L802558A4:
	lh      $t7, 0x0004($sp)
	slti    $at, $t7, -0x3FFF
	bnez    $at, .L802558D4
	nop
	slti    $at, $t7, 0x4000
	beqz    $at, .L802558D4
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0008($sp)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0008($sp)
.L802558D4:
	lhu     $t8, 0x0004($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0008($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0008($sp)
	b       .L80255938
	nop
.L80255900:
	lui     $t1, %hi(gfx_frame)
	lw      $t1, %lo(gfx_frame)($t1)
	andi    $t2, $t1, 0x0003
	mtc1    $t2, $f6
	bgez    $t2, .L80255928
	cvt.s.w $f8, $f6
	li      $at, 0x4F800000
	mtc1    $at, $f10
	nop
	add.s   $f8, $f8, $f10
.L80255928:
	lui     $at, %hi(pl_physics_803366AC)
	lwc1    $f16, %lo(pl_physics_803366AC)($at)
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x0008($sp)
.L80255938:
	lhu     $t3, 0x0006($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x0008($sp)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	lwc1    $f8, 0x0048($a0)
	mul.s   $f10, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0048($a0)
	lhu     $t6, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0008($sp)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f8, 0x0050($a0)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0050($a0)
	b       .L802559A8
	li      $v0, 0x0001
.L80255998:
	b       .L802559A8
	move    $v0, $0
	b       .L802559A8
	nop
.L802559A8:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl pl_physics_802559B0
pl_physics_802559B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0x0000
	mtc1    $0, $f4
	lw      $t8, 0x0020($sp)
	swc1    $f4, 0x004C($t8)
	lw      $t9, 0x0020($sp)
	lwc1    $f6, 0x0070($t9)
	swc1    $f6, 0x0040($t9)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0020($sp)
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $a0, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	move    $a1, $0
	move    $a3, $0
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	lh      $a2, 0x002E($t0)
	b       .L80255A24
	nop
.L80255A24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl pl_physics_80255A34
pl_physics_80255A34:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0028($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0024($sp)
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0x0000
	jal     pl_physics_8025570C
	lw      $a0, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	jal     pl_physics_8025580C
	lw      $a0, 0x0030($sp)
	lw      $t9, 0x002C($sp)
	move    $s0, $v0
	or      $t0, $t9, $s0
	sw      $t0, 0x002C($sp)
	lw      $t1, 0x002C($sp)
	beqz    $t1, .L80255AA4
	nop
	jal     pl_physics_80255D88
	lw      $a0, 0x0030($sp)
	b       .L80255AE0
	sw      $v0, 0x0024($sp)
.L80255AA4:
	lw      $t2, 0x0030($sp)
	lwc1    $f4, 0x0070($t2)
	swc1    $f4, 0x0040($t2)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0030($sp)
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $a0, 0x0028($sp)
	lw      $t3, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	lh      $a2, 0x002E($t3)
.L80255AE0:
	b       .L80255AF0
	lw      $v0, 0x0024($sp)
	b       .L80255AF0
	nop
.L80255AF0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_physics_80255B04:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0044($sp)
	li      $a1, 0x41F00000
	jal     player_80251A48
	li      $a2, 0x41C00000
	sw      $v0, 0x003C($sp)
	lw      $a0, 0x0044($sp)
	li      $a1, 0x42700000
	jal     player_80251A48
	li      $a2, 0x42480000
	sw      $v0, 0x0038($sp)
	lw      $t6, 0x0044($sp)
	addiu   $a3, $sp, 0x0030
	lwc1    $f12, 0x0000($t6)
	lwc1    $f14, 0x0004($t6)
	jal     map_80381900
	lw      $a2, 0x0008($t6)
	swc1    $f0, 0x0028($sp)
	lw      $a0, 0x0044($sp)
	lw      $a1, 0x0028($sp)
	jal     player_80251AFC
	addiu   $a2, $sp, 0x0034
	swc1    $f0, 0x002C($sp)
	lw      $t7, 0x0044($sp)
	lwc1    $f12, 0x0000($t7)
	jal     map_80381BA0
	lwc1    $f14, 0x0008($t7)
	swc1    $f0, 0x0024($sp)
	lw      $t8, 0x0038($sp)
	lw      $t9, 0x0040($sp)
	sw      $t8, 0x0060($t9)
	lw      $t0, 0x0030($sp)
	bnez    $t0, .L80255BA4
	nop
	b       .L80255D74
	li      $v0, 0x0002
.L80255BA4:
	lw      $t1, 0x0040($sp)
	li      $at, 0x00010000
	lw      $t2, 0x000C($t1)
	and     $t3, $t2, $at
	beqz    $t3, .L80255BF4
	nop
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80255BF4
	nop
	lwc1    $f8, 0x0024($sp)
	swc1    $f8, 0x0028($sp)
	la.u    $t4, pl_physics_8032DAF8
	la.l    $t4, pl_physics_8032DAF8
	sw      $t4, 0x0030($sp)
	lwc1    $f10, 0x0028($sp)
	lw      $t5, 0x0030($sp)
	swc1    $f10, 0x0028($t5)
.L80255BF4:
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lwc1    $f18, 0x0028($sp)
	lw      $t6, 0x0044($sp)
	add.s   $f6, $f18, $f4
	lwc1    $f16, 0x0004($t6)
	c.lt.s  $f6, $f16
	nop
	bc1f    .L80255C7C
	nop
	lw      $t7, 0x0044($sp)
	li      $at, 0x43200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($t7)
	lwc1    $f4, 0x002C($sp)
	add.s   $f18, $f8, $f10
	c.le.s  $f4, $f18
	nop
	bc1f    .L80255C4C
	nop
	b       .L80255D74
	li      $v0, 0x0002
.L80255C4C:
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0044($sp)
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0040($sp)
	sw      $t8, 0x0068($t9)
	lwc1    $f16, 0x0028($sp)
	lw      $t0, 0x0040($sp)
	swc1    $f16, 0x0070($t0)
	b       .L80255D74
	move    $v0, $0
.L80255C7C:
	li      $at, 0x43200000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($sp)
	lwc1    $f18, 0x002C($sp)
	add.s   $f10, $f6, $f8
	c.le.s  $f18, $f10
	nop
	bc1f    .L80255CA8
	nop
	b       .L80255D74
	li      $v0, 0x0002
.L80255CA8:
	lw      $t1, 0x0044($sp)
	lw      $a0, 0x0040($sp)
	lw      $a2, 0x0028($sp)
	lw      $a1, 0x0000($t1)
	lw      $a3, 0x0008($t1)
	jal     vecf_set
	addiu   $a0, $a0, 0x003C
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0040($sp)
	sw      $t2, 0x0068($t3)
	lwc1    $f4, 0x0028($sp)
	lw      $t4, 0x0040($sp)
	swc1    $f4, 0x0070($t4)
	lw      $t5, 0x0038($sp)
	beqz    $t5, .L80255D64
	nop
	lw      $t6, 0x0038($sp)
	lwc1    $f12, 0x0024($t6)
	jal     atan2
	lwc1    $f14, 0x001C($t6)
	lw      $t8, 0x0040($sp)
	sll     $s0, $v0, 16
	sra     $t7, $s0, 16
	lh      $t9, 0x002E($t8)
	move    $s0, $t7
	subu    $t0, $s0, $t9
	sh      $t0, 0x0022($sp)
	lh      $t1, 0x0022($sp)
	slti    $at, $t1, 0x2AAA
	bnez    $at, .L80255D38
	nop
	slti    $at, $t1, 0x5556
	beqz    $at, .L80255D38
	nop
	b       .L80255D74
	li      $v0, 0x0001
.L80255D38:
	lh      $t2, 0x0022($sp)
	slti    $at, $t2, -0x2AA9
	beqz    $at, .L80255D5C
	nop
	slti    $at, $t2, -0x5555
	bnez    $at, .L80255D5C
	nop
	b       .L80255D74
	li      $v0, 0x0001
.L80255D5C:
	b       .L80255D74
	li      $v0, 0x0003
.L80255D64:
	b       .L80255D74
	li      $v0, 0x0001
	b       .L80255D74
	nop
.L80255D74:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl pl_physics_80255D88
pl_physics_80255D88:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $0, 0x002C($sp)
.L80255D98:
	lw      $t6, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0048($t6)
	lw      $t7, 0x0068($t6)
	lwc1    $f18, 0x003C($t6)
	div.s   $f8, $f4, $f6
	lwc1    $f10, 0x0020($t7)
	addiu   $t8, $sp, 0x001C
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($t8)
	lw      $t9, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0050($t9)
	lw      $t0, 0x0068($t9)
	lwc1    $f4, 0x0044($t9)
	div.s   $f10, $f6, $f8
	lwc1    $f16, 0x0020($t0)
	addiu   $t1, $sp, 0x001C
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0008($t1)
	lw      $t2, 0x0030($sp)
	addiu   $t3, $sp, 0x001C
	lwc1    $f8, 0x0040($t2)
	swc1    $f8, 0x0004($t3)
	lw      $a0, 0x0030($sp)
	jal     pl_physics_80255B04
	addiu   $a1, $sp, 0x001C
	sw      $v0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	beqz    $t4, .L80255E30
	nop
	li      $at, 0x0002
	bne     $t4, $at, .L80255E38
	nop
.L80255E30:
	b       .L80255E4C
	nop
.L80255E38:
	lw      $t5, 0x002C($sp)
	addiu   $t7, $t5, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, .L80255D98
	sw      $t7, 0x002C($sp)
.L80255E4C:
	jal     player_802518A8
	lw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	sw      $v0, 0x0014($t6)
	lw      $t8, 0x0030($sp)
	lw      $a0, 0x0088($t8)
	addiu   $a1, $t8, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t0, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t0)
	lh      $a2, 0x002E($t0)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	lw      $t9, 0x0028($sp)
	li      $at, 0x0003
	bne     $t9, $at, .L80255EA4
	nop
	li      $t1, 0x0002
	sw      $t1, 0x0028($sp)
.L80255EA4:
	b       .L80255EB4
	lw      $v0, 0x0028($sp)
	b       .L80255EB4
	nop
.L80255EB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_physics_80255EC4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lw      $t6, 0x0030($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80255F00
	nop
	b       .L8025609C
	move    $v0, $0
.L80255F00:
	lw      $t7, 0x003C($sp)
	lw      $t8, 0x0038($sp)
	lwc1    $f8, 0x0000($t7)
	lwc1    $f10, 0x0000($t8)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x001C($sp)
	lw      $t9, 0x003C($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f18, 0x0008($t9)
	lwc1    $f4, 0x0008($t0)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0018($sp)
	lw      $t1, 0x0030($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f8, 0x0050($t1)
	lwc1    $f4, 0x0048($t1)
	mul.s   $f16, $f8, $f10
	mtc1    $0, $f10
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f16, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80255F6C
	nop
	b       .L8025609C
	move    $v0, $0
.L80255F6C:
	lw      $t2, 0x0034($sp)
	li      $at, 0x42700000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($t2)
	lw      $t3, 0x003C($sp)
	addiu   $t4, $sp, 0x0020
	mul.s   $f16, $f18, $f4
	lwc1    $f6, 0x0000($t3)
	sub.s   $f8, $f6, $f16
	swc1    $f8, 0x0000($t4)
	lw      $t5, 0x0034($sp)
	li      $at, 0x42700000
	mtc1    $at, $f18
	lwc1    $f10, 0x0024($t5)
	lw      $t6, 0x003C($sp)
	addiu   $t7, $sp, 0x0020
	mul.s   $f4, $f10, $f18
	lwc1    $f6, 0x0008($t6)
	sub.s   $f16, $f6, $f4
	swc1    $f16, 0x0008($t7)
	lw      $t9, 0x003C($sp)
	li      $at, 0x43200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($t9)
	addiu   $t8, $sp, 0x0020
	lwc1    $f12, 0x0000($t8)
	lw      $a2, 0x0008($t8)
	addiu   $a3, $sp, 0x002C
	jal     map_80381900
	add.s   $f14, $f8, $f10
	addiu   $t0, $sp, 0x0020
	swc1    $f0, 0x0004($t0)
	lw      $t2, 0x003C($sp)
	addiu   $t1, $sp, 0x0020
	lwc1    $f18, 0x0004($t1)
	lwc1    $f6, 0x0004($t2)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	sub.s   $f4, $f18, $f6
	c.le.s  $f4, $f16
	nop
	bc1f    .L80256020
	nop
	b       .L8025609C
	move    $v0, $0
.L80256020:
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0020
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t3, 0x002C($sp)
	lw      $t4, 0x0030($sp)
	sw      $t3, 0x0068($t4)
	addiu   $t5, $sp, 0x0020
	lwc1    $f8, 0x0004($t5)
	lw      $t6, 0x0030($sp)
	swc1    $f8, 0x0070($t6)
	lw      $t7, 0x002C($sp)
	lwc1    $f12, 0x0024($t7)
	jal     atan2
	lwc1    $f14, 0x001C($t7)
	lw      $t9, 0x0030($sp)
	sh      $v0, 0x0074($t9)
	lw      $t8, 0x0030($sp)
	sh      $0, 0x002C($t8)
	lw      $t0, 0x0034($sp)
	lwc1    $f12, 0x0024($t0)
	jal     atan2
	lwc1    $f14, 0x001C($t0)
	lw      $t2, 0x0030($sp)
	li      $at, 0x8000
	addu    $t1, $v0, $at
	sh      $t1, 0x002E($t2)
	b       .L8025609C
	li      $v0, 0x0001
	b       .L8025609C
	nop
.L8025609C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_physics_802560AC:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	sw      $s0, 0x0018($sp)
	addiu   $a0, $sp, 0x0040
	jal     vecf_cpy
	lw      $a1, 0x0054($sp)
	addiu   $a0, $sp, 0x0040
	li      $a1, 0x43160000
	jal     player_80251A48
	li      $a2, 0x42480000
	sw      $v0, 0x003C($sp)
	addiu   $a0, $sp, 0x0040
	li      $a1, 0x41F00000
	jal     player_80251A48
	li      $a2, 0x42480000
	sw      $v0, 0x0038($sp)
	addiu   $t6, $sp, 0x0040
	lwc1    $f12, 0x0000($t6)
	lwc1    $f14, 0x0004($t6)
	lw      $a2, 0x0008($t6)
	jal     map_80381900
	addiu   $a3, $sp, 0x0030
	swc1    $f0, 0x0028($sp)
	addiu   $a0, $sp, 0x0040
	lw      $a1, 0x0028($sp)
	jal     player_80251AFC
	addiu   $a2, $sp, 0x0034
	swc1    $f0, 0x002C($sp)
	addiu   $t7, $sp, 0x0040
	lwc1    $f12, 0x0000($t7)
	jal     map_80381BA0
	lwc1    $f14, 0x0008($t7)
	swc1    $f0, 0x0024($sp)
	lw      $t8, 0x0050($sp)
	sw      $0, 0x0060($t8)
	lw      $t9, 0x0030($sp)
	bnez    $t9, .L8025619C
	nop
	lw      $t1, 0x0050($sp)
	addiu   $t0, $sp, 0x0040
	lwc1    $f4, 0x0004($t0)
	lwc1    $f6, 0x0070($t1)
	c.le.s  $f4, $f6
	nop
	bc1f    .L80256184
	nop
	lw      $t2, 0x0050($sp)
	lwc1    $f8, 0x0070($t2)
	swc1    $f8, 0x0040($t2)
	b       .L802564CC
	li      $v0, 0x0001
.L80256184:
	addiu   $t3, $sp, 0x0040
	lwc1    $f10, 0x0004($t3)
	lw      $t4, 0x0050($sp)
	swc1    $f10, 0x0040($t4)
	b       .L802564CC
	li      $v0, 0x0002
.L8025619C:
	lw      $t5, 0x0050($sp)
	li      $at, 0x00010000
	lw      $t6, 0x000C($t5)
	and     $t7, $t6, $at
	beqz    $t7, .L802561EC
	nop
	lwc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802561EC
	nop
	lwc1    $f4, 0x0024($sp)
	swc1    $f4, 0x0028($sp)
	la.u    $t8, pl_physics_8032DAF8
	la.l    $t8, pl_physics_8032DAF8
	sw      $t8, 0x0030($sp)
	lwc1    $f6, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	swc1    $f6, 0x0028($t9)
.L802561EC:
	addiu   $t0, $sp, 0x0040
	lwc1    $f8, 0x0004($t0)
	lwc1    $f10, 0x0028($sp)
	c.le.s  $f8, $f10
	nop
	bc1f    .L80256278
	nop
	lwc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0028($sp)
	li      $at, 0x43200000
	mtc1    $at, $f6
	sub.s   $f4, $f16, $f18
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80256264
	nop
	addiu   $t1, $sp, 0x0040
	lwc1    $f8, 0x0000($t1)
	lw      $t2, 0x0050($sp)
	swc1    $f8, 0x003C($t2)
	addiu   $t3, $sp, 0x0040
	lwc1    $f10, 0x0008($t3)
	lw      $t4, 0x0050($sp)
	swc1    $f10, 0x0044($t4)
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0050($sp)
	sw      $t5, 0x0068($t6)
	lwc1    $f16, 0x0028($sp)
	lw      $t7, 0x0050($sp)
	swc1    $f16, 0x0070($t7)
.L80256264:
	lwc1    $f18, 0x0028($sp)
	lw      $t8, 0x0050($sp)
	swc1    $f18, 0x0040($t8)
	b       .L802564CC
	li      $v0, 0x0001
.L80256278:
	addiu   $t9, $sp, 0x0040
	li      $at, 0x43200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0004($t9)
	lwc1    $f10, 0x002C($sp)
	add.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80256354
	nop
	lw      $t0, 0x0050($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x004C($t0)
	c.le.s  $f18, $f16
	nop
	bc1f    .L80256308
	nop
	mtc1    $0, $f4
	lw      $t1, 0x0050($sp)
	swc1    $f4, 0x004C($t1)
	lw      $t2, 0x0058($sp)
	andi    $t3, $t2, 0x0002
	beqz    $t3, .L80256300
	nop
	lw      $t4, 0x0050($sp)
	lw      $t5, 0x0064($t4)
	beqz    $t5, .L80256300
	nop
	lh      $t6, 0x0000($t5)
	li      $at, 0x0005
	bne     $t6, $at, .L80256300
	nop
	b       .L802564CC
	li      $v0, 0x0004
.L80256300:
	b       .L802564CC
	move    $v0, $0
.L80256308:
	lw      $t8, 0x0050($sp)
	addiu   $t7, $sp, 0x0040
	lwc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0070($t8)
	c.le.s  $f6, $f8
	nop
	bc1f    .L8025633C
	nop
	lw      $t9, 0x0050($sp)
	lwc1    $f10, 0x0070($t9)
	swc1    $f10, 0x0040($t9)
	b       .L802564CC
	li      $v0, 0x0001
.L8025633C:
	addiu   $t0, $sp, 0x0040
	lwc1    $f16, 0x0004($t0)
	lw      $t1, 0x0050($sp)
	swc1    $f16, 0x0040($t1)
	b       .L802564CC
	li      $v0, 0x0002
.L80256354:
	lw      $t2, 0x0058($sp)
	andi    $t3, $t2, 0x0001
	beqz    $t3, .L802563D0
	nop
	lw      $t4, 0x003C($sp)
	bnez    $t4, .L802563D0
	nop
	lw      $t5, 0x0038($sp)
	beqz    $t5, .L802563D0
	nop
	lw      $a0, 0x0050($sp)
	lw      $a1, 0x0038($sp)
	lw      $a2, 0x0054($sp)
	jal     pl_physics_80255EC4
	addiu   $a3, $sp, 0x0040
	beqz    $v0, .L802563A0
	nop
	b       .L802564CC
	li      $v0, 0x0003
.L802563A0:
	lw      $a0, 0x0050($sp)
	addiu   $a1, $sp, 0x0040
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0050($sp)
	sw      $t6, 0x0068($t7)
	lwc1    $f18, 0x0028($sp)
	lw      $t8, 0x0050($sp)
	swc1    $f18, 0x0070($t8)
	b       .L802564CC
	move    $v0, $0
.L802563D0:
	lw      $a0, 0x0050($sp)
	addiu   $a1, $sp, 0x0040
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t9, 0x0030($sp)
	lw      $t0, 0x0050($sp)
	sw      $t9, 0x0068($t0)
	lwc1    $f4, 0x0028($sp)
	lw      $t1, 0x0050($sp)
	swc1    $f4, 0x0070($t1)
	lw      $t2, 0x003C($sp)
	bnez    $t2, .L80256410
	nop
	lw      $t3, 0x0038($sp)
	beqz    $t3, .L802564BC
	nop
.L80256410:
	lw      $t4, 0x003C($sp)
	beqz    $t4, .L80256428
	nop
	lw      $t5, 0x0050($sp)
	b       .L80256434
	sw      $t4, 0x0060($t5)
.L80256428:
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x0050($sp)
	sw      $t6, 0x0060($t7)
.L80256434:
	lw      $t8, 0x0050($sp)
	lw      $t9, 0x0060($t8)
	lwc1    $f12, 0x0024($t9)
	jal     atan2
	lwc1    $f14, 0x001C($t9)
	lw      $t1, 0x0050($sp)
	sll     $s0, $v0, 16
	sra     $t0, $s0, 16
	lh      $t2, 0x002E($t1)
	move    $s0, $t0
	subu    $t3, $s0, $t2
	sh      $t3, 0x004E($sp)
	lw      $t4, 0x0050($sp)
	li      $at, 0x0001
	lw      $t5, 0x0060($t4)
	lh      $t6, 0x0000($t5)
	bne     $t6, $at, .L80256484
	nop
	b       .L802564CC
	li      $v0, 0x0006
.L80256484:
	lh      $t7, 0x004E($sp)
	slti    $at, $t7, -0x6000
	bnez    $at, .L802564A0
	nop
	slti    $at, $t7, 0x6001
	bnez    $at, .L802564BC
	nop
.L802564A0:
	lw      $t8, 0x0050($sp)
	li      $at, 0x40000000
	lw      $t9, 0x0004($t8)
	or      $t0, $t9, $at
	sw      $t0, 0x0004($t8)
	b       .L802564CC
	li      $v0, 0x0002
.L802564BC:
	b       .L802564CC
	move    $v0, $0
	b       .L802564CC
	nop
.L802564CC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

pl_physics_802564E0:
	addiu   $sp, $sp, -0x0008
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0000($sp)
	lh      $t6, 0x0034($a0)
	slti    $at, $t6, 0x0401
	bnez    $at, .L80256524
	nop
	lh      $t7, 0x0034($a0)
	li      $at, 0x44800000
	mtc1    $at, $f6
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	div.s   $f16, $f6, $f10
	swc1    $f16, 0x0000($sp)
.L80256524:
	li      $at, 0xC2960000
	mtc1    $at, $f18
	lwc1    $f4, 0x0000($sp)
	mul.s   $f8, $f18, $f4
	swc1    $f8, 0x0004($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f10, 0x0000($sp)
	lwc1    $f18, 0x004C($a0)
	mul.s   $f16, $f6, $f10
	sub.s   $f4, $f18, $f16
	swc1    $f4, 0x004C($a0)
	lwc1    $f8, 0x004C($a0)
	lwc1    $f6, 0x0004($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80256574
	nop
	lwc1    $f10, 0x0004($sp)
	swc1    $f10, 0x004C($a0)
.L80256574:
	b       .L8025657C
	nop
.L8025657C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_physics_80256584:
	lw      $t6, 0x0004($a0)
	andi    $t7, $t6, 0x0100
	bnez    $t7, .L8025659C
	nop
	jr      $ra
	move    $v0, $0
.L8025659C:
	lw      $t8, 0x000C($a0)
	li.u    $at, 0x00021000
	li.l    $at, 0x00021000
	and     $t9, $t8, $at
	beqz    $t9, .L802565BC
	nop
	jr      $ra
	move    $v0, $0
.L802565BC:
	lhu     $t0, 0x0002($a0)
	andi    $t1, $t0, 0x0080
	bnez    $t1, .L80256604
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($a0)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80256604
	nop
	lw      $v0, 0x000C($a0)
	li      $at, 0x02000000
	and     $t2, $v0, $at
	move    $v0, $t2
	sltu    $t3, $0, $v0
	jr      $ra
	move    $v0, $t3
.L80256604:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

pl_physics_8025661C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, .L8025666C
	nop
	lwc1    $f4, 0x004C($t6)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8025666C
	nop
	jal     pl_physics_802564E0
	lw      $a0, 0x0018($sp)
	b       .L802569E0
	nop
.L8025666C:
	lw      $t8, 0x0018($sp)
	li.u    $at, 0x00880898
	li.l    $at, 0x00880898
	lw      $t9, 0x000C($t8)
	bne     $t9, $at, .L802566D4
	nop
	lw      $t0, 0x0018($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x004C($t0)
	lw      $t1, 0x0018($sp)
	li      $at, 0xC2960000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802566CC
	nop
	li      $at, 0xC2960000
	mtc1    $at, $f6
	lw      $t2, 0x0018($sp)
	swc1    $f6, 0x004C($t2)
.L802566CC:
	b       .L802569E0
	nop
.L802566D4:
	lw      $t3, 0x0018($sp)
	li.u    $at, 0x03000888
	li.l    $at, 0x03000888
	lw      $t4, 0x000C($t3)
	beq     $t4, $at, .L80256708
	nop
	li.u    $at, 0x018008AA
	li.l    $at, 0x018008AA
	beq     $t4, $at, .L80256708
	nop
	li      $at, 0x1535
	bne     $t4, $at, .L80256758
	nop
.L80256708:
	lw      $t5, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($t5)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x004C($t5)
	lw      $t7, 0x0018($sp)
	li      $at, 0xC2960000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t7)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80256750
	nop
	li      $at, 0xC2960000
	mtc1    $at, $f6
	lw      $t6, 0x0018($sp)
	swc1    $f6, 0x004C($t6)
.L80256750:
	b       .L802569E0
	nop
.L80256758:
	lw      $t8, 0x0018($sp)
	li.u    $at, 0x010208B7
	li.l    $at, 0x010208B7
	lw      $t9, 0x000C($t8)
	beq     $t9, $at, .L8025677C
	nop
	li      $at, 0x1904
	bne     $t9, $at, .L802567CC
	nop
.L8025677C:
	lw      $t0, 0x0018($sp)
	lui     $at, %hi(pl_physics_803366B0)
	lwc1    $f10, %lo(pl_physics_803366B0)($at)
	lwc1    $f8, 0x004C($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x004C($t0)
	lw      $t1, 0x0018($sp)
	li      $at, 0xC2820000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802567C4
	nop
	li      $at, 0xC2820000
	mtc1    $at, $f6
	lw      $t2, 0x0018($sp)
	swc1    $f6, 0x004C($t2)
.L802567C4:
	b       .L802569E0
	nop
.L802567CC:
	lw      $t3, 0x0018($sp)
	li.u    $at, 0x010208B8
	li.l    $at, 0x010208B8
	lw      $t4, 0x000C($t3)
	bne     $t4, $at, .L80256830
	nop
	lw      $t5, 0x0018($sp)
	lwc1    $f8, 0x004C($t5)
	lwc1    $f10, 0x00C4($t5)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x004C($t5)
	lw      $t7, 0x0018($sp)
	li      $at, 0xC2960000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t7)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80256828
	nop
	li      $at, 0xC2960000
	mtc1    $at, $f6
	lw      $t6, 0x0018($sp)
	swc1    $f6, 0x004C($t6)
.L80256828:
	b       .L802569E0
	nop
.L80256830:
	jal     pl_physics_80256584
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8025685C
	nop
	lw      $t8, 0x0018($sp)
	li      $at, 0x40800000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($t8)
	div.s   $f16, $f8, $f10
	b       .L802569E0
	swc1    $f16, 0x004C($t8)
.L8025685C:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x000C($t9)
	andi    $t1, $t0, 0x4000
	beqz    $t1, .L802568C0
	nop
	lw      $t2, 0x0018($sp)
	lui     $at, %hi(pl_physics_803366B4)
	lwc1    $f4, %lo(pl_physics_803366B4)($at)
	lwc1    $f18, 0x004C($t2)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x004C($t2)
	lw      $t3, 0x0018($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802568B8
	nop
	li      $at, 0xC1800000
	mtc1    $at, $f16
	lw      $t4, 0x0018($sp)
	swc1    $f16, 0x004C($t4)
.L802568B8:
	b       .L802569E0
	nop
.L802568C0:
	lw      $t5, 0x0018($sp)
	lw      $t7, 0x0004($t5)
	andi    $t6, $t7, 0x0008
	beqz    $t6, .L80256998
	nop
	lwc1    $f18, 0x004C($t5)
	mtc1    $0, $f4
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80256998
	nop
	lhu     $t8, 0x0002($t5)
	andi    $t9, $t8, 0x0080
	beqz    $t9, .L80256998
	nop
	lw      $t1, 0x0018($sp)
	li      $t0, 0x0001
	lw      $t2, 0x0098($t1)
	sb      $t0, 0x0007($t2)
	lw      $t3, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x004C($t3)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x004C($t3)
	lw      $t4, 0x0018($sp)
	li      $at, 0xC2160000
	mtc1    $at, $f18
	lwc1    $f16, 0x004C($t4)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80256990
	nop
	lw      $t7, 0x0018($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($t7)
	li      $at, 0xC2160000
	mtc1    $at, $f16
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($t7)
	lw      $t6, 0x0018($sp)
	lwc1    $f10, 0x004C($t6)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80256990
	nop
	li      $at, 0xC2160000
	mtc1    $at, $f18
	lw      $t5, 0x0018($sp)
	swc1    $f18, 0x004C($t5)
.L80256990:
	b       .L802569E0
	nop
.L80256998:
	lw      $t8, 0x0018($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($t8)
	lw      $t9, 0x0018($sp)
	li      $at, 0xC2960000
	mtc1    $at, $f16
	lwc1    $f10, 0x004C($t9)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802569E0
	nop
	li      $at, 0xC2960000
	mtc1    $at, $f18
	lw      $t1, 0x0018($sp)
	swc1    $f18, 0x004C($t1)
.L802569E0:
	b       .L802569E8
	nop
.L802569E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_physics_802569F8:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x000C($a0)
	li.u    $at, 0x008008A9
	li.l    $at, 0x008008A9
	beq     $t6, $at, .L80256B14
	nop
	lui     $at, %hi(pl_physics_803366B8)
	lwc1    $f6, %lo(pl_physics_803366B8)($at)
	lwc1    $f4, 0x0040($a0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($sp)
	lw      $t7, 0x0068($a0)
	li      $at, 0x0038
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, .L80256B14
	nop
	lui     $at, %hi(pl_physics_803366BC)
	lwc1    $f10, %lo(pl_physics_803366BC)($at)
	lwc1    $f16, 0x0000($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80256B14
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80256B14
	nop
	lwc1    $f4, 0x0000($sp)
	mtc1    $0, $f6
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    .L80256AB0
	nop
	li      $at, 0x43480000
	mtc1    $at, $f10
	lwc1    $f8, 0x0000($sp)
	lui     $at, %hi(pl_physics_803366C0)
	lwc1    $f18, %lo(pl_physics_803366C0)($at)
	add.s   $f16, $f8, $f10
	div.s   $f4, $f18, $f16
	b       .L80256AC0
	swc1    $f4, 0x0004($sp)
.L80256AB0:
	li      $at, 0x42480000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0004($sp)
.L80256AC0:
	lwc1    $f8, 0x004C($a0)
	lwc1    $f10, 0x0004($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80256B14
	nop
	li      $at, 0x41000000
	mtc1    $at, $f16
	lwc1    $f18, 0x0004($sp)
	lwc1    $f6, 0x004C($a0)
	div.s   $f4, $f18, $f16
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x004C($a0)
	lwc1    $f18, 0x0004($sp)
	lwc1    $f10, 0x004C($a0)
	c.lt.s  $f18, $f10
	nop
	bc1f    .L80256B14
	nop
	lwc1    $f16, 0x0004($sp)
	swc1    $f16, 0x004C($a0)
.L80256B14:
	b       .L80256B1C
	nop
.L80256B1C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl pl_physics_80256B24
pl_physics_80256B24:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	sw      $0, 0x0060($t6)
	sw      $0, 0x0020($sp)
.L80256B44:
	lw      $t7, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0048($t7)
	lwc1    $f10, 0x003C($t7)
	addiu   $t8, $sp, 0x0024
	div.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0000($t8)
	lw      $t9, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t9)
	lwc1    $f8, 0x0040($t9)
	addiu   $t0, $sp, 0x0024
	div.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0004($t0)
	lw      $t1, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0050($t1)
	lwc1    $f6, 0x0044($t1)
	addiu   $t2, $sp, 0x0024
	div.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t2)
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0024
	jal     pl_physics_802560AC
	lw      $a2, 0x0034($sp)
	sw      $v0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	beqz    $t3, .L80256BD8
	nop
	lw      $t4, 0x001C($sp)
	sw      $t4, 0x0018($sp)
.L80256BD8:
	lw      $t5, 0x001C($sp)
	li      $at, 0x0001
	beq     $t5, $at, .L80256C0C
	nop
	li      $at, 0x0003
	beq     $t5, $at, .L80256C0C
	nop
	li      $at, 0x0004
	beq     $t5, $at, .L80256C0C
	nop
	li      $at, 0x0006
	bne     $t5, $at, .L80256C14
	nop
.L80256C0C:
	b       .L80256C28
	nop
.L80256C14:
	lw      $t6, 0x0020($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, .L80256B44
	sw      $t7, 0x0020($sp)
.L80256C28:
	lw      $t8, 0x0030($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x004C($t8)
	c.le.s  $f16, $f10
	nop
	bc1f    .L80256C50
	nop
	lw      $t9, 0x0030($sp)
	lwc1    $f18, 0x0040($t9)
	swc1    $f18, 0x00BC($t9)
.L80256C50:
	jal     player_802518A8
	lw      $a0, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	sw      $v0, 0x0014($t0)
	lw      $t1, 0x0030($sp)
	li.u    $at, 0x10880899
	li.l    $at, 0x10880899
	lw      $t2, 0x000C($t1)
	beq     $t2, $at, .L80256C80
	nop
	jal     pl_physics_8025661C
	lw      $a0, 0x0030($sp)
.L80256C80:
	jal     pl_physics_802569F8
	lw      $a0, 0x0030($sp)
	lw      $t3, 0x0030($sp)
	lw      $a0, 0x0088($t3)
	addiu   $a1, $t3, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t4, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t4)
	lh      $a2, 0x002E($t4)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	b       .L80256CC8
	lw      $v0, 0x0018($sp)
	b       .L80256CC8
	nop
.L80256CC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_physics_80256CD8:
	lhu     $t6, 0x002C($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0054($a0)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	lhu     $t9, 0x002E($a0)
	lui     $at, %hi(math_sin)
	mul.s   $f8, $f4, $f6
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x0048($a0)
	lhu     $t2, 0x002C($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x0054($a0)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f18, %lo(math_sin)($at)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x004C($a0)
	lhu     $t5, 0x002C($a0)
	la.u    $t8, math_cos
	la.l    $t8, math_cos
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $t9, $t7, $t8
	lwc1    $f8, 0x0000($t9)
	lwc1    $f10, 0x0054($a0)
	lhu     $t0, 0x002E($a0)
	mul.s   $f16, $f10, $f8
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $t3, $t2, $t8
	lwc1    $f18, 0x0000($t3)
	mul.s   $f4, $f18, $f16
	swc1    $f4, 0x0050($a0)
	jr      $ra
	nop
	jr      $ra
	nop

pl_physics_80256D8C:
	addiu   $sp, $sp, -0x0008
	lhu     $t6, 0x002E($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x0054($a0)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f12, $f4, $f6
	swc1    $f12, 0x0058($a0)
	swc1    $f12, 0x0048($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x004C($a0)
	lhu     $t9, 0x002E($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0054($a0)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f12, $f10, $f16
	swc1    $f12, 0x005C($a0)
	swc1    $f12, 0x0050($a0)
	b       .L80256DF4
	nop
.L80256DF4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

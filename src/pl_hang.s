.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_hang_8025DD70:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, o_tree
	jal     segment_to_virtual
	la.l    $a0, o_tree
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0080($t6)
	lw      $t8, 0x020C($t7)
	bne     $v0, $t8, .L8025DE04
	nop
	lui     $t9, %hi(stage_index)
	lh      $t9, %lo(stage_index)($t9)
	li      $at, 0x0008
	bne     $t9, $at, .L8025DDC0
	nop
	li      $at, 0x437A0000
	mtc1    $at, $f4
	b       .L8025DDD0
	swc1    $f4, 0x001C($sp)
.L8025DDC0:
	li      $at, 0x42C80000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x001C($sp)
.L8025DDD0:
	lw      $t0, 0x0020($sp)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f8, 0x0040($t0)
	lwc1    $f10, 0x0070($t0)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    .L8025DE04
	nop
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0008($t1)
	ori     $t3, $t2, 0x2000
	sw      $t3, 0x0008($t1)
.L8025DE04:
	b       .L8025DE0C
	nop
.L8025DE0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_hang_8025DE1C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, o_tree
	jal     segment_to_virtual
	la.l    $a0, o_tree
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0080($t6)
	lw      $t8, 0x020C($t7)
	xor     $t9, $v0, $t8
	sltiu   $t9, $t9, 0x0001
	sw      $t9, 0x0024($sp)
	lw      $t0, 0x002C($sp)
	li      $at, 0x0001
	bne     $t0, $at, .L8025DEB4
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80250D38
	li      $a1, 0x0001
	beqz    $v0, .L8025DEAC
	nop
	lw      $t1, 0x0024($sp)
	beqz    $t1, .L8025DE90
	nop
	li.u    $s0, 0x043A8081
	b       .L8025DE98
	li.l    $s0, 0x043A8081
.L8025DE90:
	li.u    $s0, 0x04418081
	li.l    $s0, 0x04418081
.L8025DE98:
	lw      $t2, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8025DEAC:
	b       .L8025DEE8
	nop
.L8025DEB4:
	lw      $t3, 0x0024($sp)
	beqz    $t3, .L8025DECC
	nop
	li.u    $s0, 0x14128001
	b       .L8025DED4
	li.l    $s0, 0x14128001
.L8025DECC:
	li.u    $s0, 0x14110001
	li.l    $s0, 0x14110001
.L8025DED4:
	lw      $t4, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8025DEE8:
	b       .L8025DEF0
	nop
.L8025DEF0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_hang_8025DF04:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $s0, 0x0020($sp)
	sw      $0, 0x0034($sp)
	lw      $t6, 0x0058($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lw      $t7, 0x0080($t6)
	lwc1    $f4, 0x01FC($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lw      $t8, 0x0058($sp)
	lw      $t9, 0x0088($t8)
	sw      $t9, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f10, 0x0110($t0)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8025DF6C
	nop
	lwc1    $f18, 0x0030($sp)
	lw      $t1, 0x002C($sp)
	swc1    $f18, 0x0110($t1)
.L8025DF6C:
	lw      $t2, 0x0058($sp)
	lw      $t3, 0x0080($t2)
	lwc1    $f4, 0x00A0($t3)
	swc1    $f4, 0x003C($t2)
	lw      $t4, 0x0058($sp)
	lw      $t5, 0x0080($t4)
	lwc1    $f6, 0x00A8($t5)
	swc1    $f6, 0x0044($t4)
	lw      $t7, 0x0058($sp)
	lw      $t6, 0x002C($sp)
	lwc1    $f18, 0x005C($sp)
	lw      $t8, 0x0080($t7)
	lwc1    $f8, 0x0110($t6)
	lwc1    $f10, 0x00A4($t8)
	add.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0040($t7)
	lw      $t9, 0x0058($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	li      $a3, 0x42700000
	addiu   $a0, $t9, 0x003C
	addiu   $a1, $t9, 0x0040
	addiu   $a2, $t9, 0x0044
	jal     map_80380DE8
	swc1    $f6, 0x0010($sp)
	sw      $v0, 0x0038($sp)
	lw      $t0, 0x0058($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f8
	li      $a3, 0x41F00000
	addiu   $a0, $t0, 0x003C
	addiu   $a1, $t0, 0x0040
	addiu   $a2, $t0, 0x0044
	jal     map_80380DE8
	swc1    $f8, 0x0010($sp)
	lw      $t1, 0x0038($sp)
	move    $s0, $v0
	or      $t3, $t1, $s0
	sw      $t3, 0x0038($sp)
	lw      $t2, 0x0058($sp)
	addiu   $a2, $sp, 0x0044
	addiu   $a0, $t2, 0x003C
	jal     player_80251AFC
	lw      $a1, 0x0040($t2)
	swc1    $f0, 0x003C($sp)
	li      $at, 0x43200000
	mtc1    $at, $f18
	lwc1    $f16, 0x003C($sp)
	lw      $t5, 0x0058($sp)
	sub.s   $f4, $f16, $f18
	lwc1    $f10, 0x0040($t5)
	c.lt.s  $f4, $f10
	nop
	bc1f    .L8025E080
	nop
	li      $at, 0x43200000
	mtc1    $at, $f8
	lwc1    $f6, 0x003C($sp)
	lw      $t4, 0x0058($sp)
	sub.s   $f16, $f6, $f8
	swc1    $f16, 0x0040($t4)
	lw      $t6, 0x0058($sp)
	lw      $t7, 0x002C($sp)
	lw      $t8, 0x0080($t6)
	lwc1    $f18, 0x0040($t6)
	lwc1    $f10, 0x00A4($t8)
	sub.s   $f4, $f18, $f10
	swc1    $f4, 0x0110($t7)
.L8025E080:
	lw      $t9, 0x0058($sp)
	addiu   $a3, $sp, 0x0048
	lwc1    $f12, 0x003C($t9)
	lwc1    $f14, 0x0040($t9)
	jal     map_80381900
	lw      $a2, 0x0044($t9)
	swc1    $f0, 0x0040($sp)
	lw      $t0, 0x0058($sp)
	lwc1    $f8, 0x0040($sp)
	lwc1    $f6, 0x0040($t0)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8025E0E4
	nop
	lwc1    $f16, 0x0040($sp)
	lw      $t1, 0x0058($sp)
	swc1    $f16, 0x0040($t1)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0058($sp)
	jal     player_80252CF4
	move    $a2, $0
	li      $t3, 0x0001
	b       .L8025E1C4
	sw      $t3, 0x0034($sp)
.L8025E0E4:
	lw      $t5, 0x0058($sp)
	lw      $t2, 0x002C($sp)
	lw      $t4, 0x0080($t5)
	lwc1    $f18, 0x0110($t2)
	lwc1    $f10, 0x0208($t4)
	neg.s   $f4, $f10
	c.lt.s  $f18, $f4
	nop
	bc1f    .L8025E144
	nop
	lw      $t6, 0x0058($sp)
	lw      $t8, 0x0080($t6)
	lwc1    $f6, 0x00A4($t8)
	lwc1    $f8, 0x0208($t8)
	sub.s   $f16, $f6, $f8
	swc1    $f16, 0x0040($t6)
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0058($sp)
	jal     player_80252CF4
	move    $a2, $0
	li      $t7, 0x0002
	b       .L8025E1C4
	sw      $t7, 0x0034($sp)
.L8025E144:
	lw      $t9, 0x0038($sp)
	beqz    $t9, .L8025E1C4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0040($sp)
	lw      $t0, 0x0058($sp)
	add.s   $f6, $f18, $f4
	lwc1    $f10, 0x0040($t0)
	c.lt.s  $f6, $f10
	nop
	bc1f    .L8025E1A8
	nop
	li      $at, 0xC0000000
	mtc1    $at, $f8
	lw      $t1, 0x0058($sp)
	swc1    $f8, 0x0054($t1)
	li.u    $a1, 0x010208B6
	li.l    $a1, 0x010208B6
	lw      $a0, 0x0058($sp)
	jal     player_80252CF4
	move    $a2, $0
	li      $t3, 0x0002
	b       .L8025E1C4
	sw      $t3, 0x0034($sp)
.L8025E1A8:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0058($sp)
	jal     player_80252CF4
	move    $a2, $0
	li      $t2, 0x0001
	sw      $t2, 0x0034($sp)
.L8025E1C4:
	lw      $t5, 0x0058($sp)
	lw      $a0, 0x0088($t5)
	addiu   $a1, $t5, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t4, 0x0058($sp)
	lw      $t8, 0x0080($t4)
	lw      $a0, 0x0088($t4)
	lh      $a2, 0x002E($t4)
	lw      $a1, 0x00C4($t8)
	lw      $a3, 0x00CC($t8)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	b       .L8025E208
	lw      $v0, 0x0034($sp)
	b       .L8025E208
	nop
.L8025E208:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

pl_hang_8025E21C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x8000
	bnez    $t0, .L8025E258
	nop
	lh      $t1, 0x00AE($t8)
	slti    $at, $t1, 0x0100
	beqz    $at, .L8025E28C
	nop
.L8025E258:
	jal     pl_hang_8025DD70
	lw      $a0, 0x0028($sp)
	li      $at, 0xC0000000
	mtc1    $at, $f4
	lw      $t2, 0x0028($sp)
	swc1    $f4, 0x0054($t2)
	li.u    $a1, 0x010208B6
	li.l    $a1, 0x010208B6
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025E598
	nop
.L8025E28C:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L8025E2D8
	nop
	jal     pl_hang_8025DD70
	lw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x8000
	lh      $t7, 0x002E($t6)
	addu    $t9, $t7, $at
	sh      $t9, 0x002E($t6)
	li.u    $a1, 0x03000886
	li.l    $a1, 0x03000886
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025E598
	nop
.L8025E2D8:
	lw      $t0, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f8
	lw      $t8, 0x009C($t0)
	lwc1    $f6, 0x0008($t8)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8025E3C8
	nop
	lw      $t1, 0x0028($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lw      $t2, 0x0080($t1)
	lwc1    $f10, 0x01FC($t2)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lw      $t3, 0x0028($sp)
	li      $a0, 0x0013
	lw      $t4, 0x0080($t3)
	jal     virtual_to_segment
	lw      $a1, 0x020C($t4)
	sw      $v0, 0x001C($sp)
	lui     $at, %hi(pl_hang_80336940)
	lwc1    $f8, %lo(pl_hang_80336940)($at)
	lwc1    $f6, 0x0020($sp)
	lw      $t5, 0x0024($sp)
	sub.s   $f10, $f6, $f8
	lwc1    $f4, 0x0110($t5)
	c.lt.s  $f4, $f10
	nop
	bc1f    .L8025E374
	nop
	li.u    $a1, 0x00100343
	li.l    $a1, 0x00100343
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025E598
	nop
.L8025E374:
	lw      $t9, 0x001C($sp)
	la.u    $t7, o_13000118
	la.l    $t7, o_13000118
	beq     $t7, $t9, .L8025E3C8
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x42480000
	mtc1    $at, $f18
	lw      $t0, 0x009C($t6)
	lwc1    $f16, 0x0008($t0)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L8025E3C8
	nop
	li.u    $a1, 0x00100344
	li.l    $a1, 0x00100344
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025E598
	nop
.L8025E3C8:
	lw      $t8, 0x0028($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f8
	lw      $t1, 0x009C($t8)
	lwc1    $f6, 0x0008($t1)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8025E528
	nop
	lw      $t2, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	li      $at, 0x40000000
	lw      $t3, 0x009C($t2)
	lw      $t5, 0x010C($t4)
	mtc1    $at, $f10
	lwc1    $f4, 0x0008($t3)
	mtc1    $t5, $f18
	mul.s   $f16, $f4, $f10
	cvt.s.w $f6, $f18
	sub.s   $f8, $f6, $f16
	trunc.w.s $f4, $f8
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x010C($t4)
	lw      $t6, 0x0024($sp)
	lw      $t0, 0x010C($t6)
	slti    $at, $t0, 0x1001
	bnez    $at, .L8025E448
	nop
	lw      $t1, 0x0024($sp)
	li      $t8, 0x1000
	sw      $t8, 0x010C($t1)
.L8025E448:
	lw      $t2, 0x0028($sp)
	lw      $t5, 0x0024($sp)
	lh      $t3, 0x002E($t2)
	lw      $t7, 0x010C($t5)
	addu    $t9, $t3, $t7
	sh      $t9, 0x002E($t2)
	lw      $t4, 0x0024($sp)
	lw      $t6, 0x010C($t4)
	lwc1    $f10, 0x0110($t4)
	bgez    $t6, .L8025E47C
	sra     $t0, $t6, 8
	addiu   $at, $t6, 0x00FF
	sra     $t0, $at, 8
.L8025E47C:
	mtc1    $t0, $f18
	nop
	cvt.s.w $f6, $f18
	sub.s   $f16, $f10, $f6
	swc1    $f16, 0x0110($t4)
	la.u    $a0, o_tree
	jal     segment_to_virtual
	la.l    $a0, o_tree
	lw      $t8, 0x0028($sp)
	lw      $t1, 0x0080($t8)
	lw      $t5, 0x020C($t1)
	bne     $v0, $t5, .L8025E4E8
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lwc1    $f8, 0x0040($t3)
	lwc1    $f4, 0x0070($t3)
	sub.s   $f18, $f8, $f4
	c.lt.s  $f10, $f18
	nop
	bc1f    .L8025E4E8
	nop
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x0008($t7)
	ori     $t2, $t9, 0x2000
	sw      $t2, 0x0008($t7)
.L8025E4E8:
	lw      $a0, 0x0028($sp)
	jal     pl_hang_8025DE1C
	li      $a1, 0x0002
	lw      $t6, 0x0024($sp)
	li      $a0, 0x0001
	lw      $a1, 0x010C($t6)
	bgez    $a1, .L8025E510
	sra     $t0, $a1, 8
	addiu   $at, $a1, 0x00FF
	sra     $t0, $at, 8
.L8025E510:
	move    $a1, $t0
	sll     $t4, $a1, 1
	jal     Na_g_803218D8
	move    $a1, $t4
	b       .L8025E568
	nop
.L8025E528:
	lw      $t8, 0x0024($sp)
	sw      $0, 0x010C($t8)
	lw      $t1, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f16
	lw      $t5, 0x009C($t1)
	lh      $t3, 0x002E($t1)
	lwc1    $f6, 0x0004($t5)
	mtc1    $t3, $f4
	mul.s   $f8, $f6, $f16
	cvt.s.w $f18, $f4
	sub.s   $f10, $f18, $f8
	trunc.w.s $f6, $f10
	mfc1    $t2, $f6
	nop
	sh      $t2, 0x002E($t1)
.L8025E568:
	lw      $a0, 0x0028($sp)
	jal     pl_hang_8025DF04
	li      $a1, 0x0000
	bnez    $v0, .L8025E588
	nop
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x000D
.L8025E588:
	b       .L8025E598
	move    $v0, $0
	b       .L8025E598
	nop
.L8025E598:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_hang_8025E5A8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0090($t8)
	lw      $t0, 0x0024($t9)
	lh      $t1, 0x0002($t0)
	sh      $t1, 0x001E($sp)
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x00AE($t2)
	slti    $at, $t3, 0x0100
	beqz    $at, .L8025E61C
	nop
	jal     pl_hang_8025DD70
	lw      $a0, 0x0028($sp)
	li      $at, 0xC0000000
	mtc1    $at, $f4
	lw      $t4, 0x0028($sp)
	swc1    $f4, 0x0054($t4)
	li.u    $a1, 0x010208B6
	li.l    $a1, 0x010208B6
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025E794
	nop
.L8025E61C:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0002
	beqz    $t7, .L8025E668
	nop
	jal     pl_hang_8025DD70
	lw      $a0, 0x0028($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x8000
	lh      $t9, 0x002E($t8)
	addu    $t0, $t9, $at
	sh      $t0, 0x002E($t8)
	li.u    $a1, 0x03000886
	li.l    $a1, 0x03000886
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025E794
	nop
.L8025E668:
	lw      $t1, 0x0028($sp)
	li      $at, 0x41000000
	mtc1    $at, $f8
	lw      $t2, 0x009C($t1)
	lwc1    $f6, 0x0008($t2)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8025E6A8
	nop
	li.u    $a1, 0x08100340
	li.l    $a1, 0x08100340
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025E794
	nop
.L8025E6A8:
	lw      $t3, 0x0028($sp)
	li      $at, 0x41000000
	mtc1    $at, $f16
	lw      $t4, 0x009C($t3)
	lw      $t5, 0x0020($sp)
	lwc1    $f10, 0x0008($t4)
	lwc1    $f4, 0x0110($t5)
	div.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0110($t5)
	lw      $t6, 0x0020($sp)
	sw      $0, 0x010C($t6)
	lw      $t9, 0x0028($sp)
	lh      $t7, 0x001E($sp)
	move    $a1, $0
	lh      $t0, 0x002E($t9)
	li      $a2, 0x0400
	li      $a3, 0x0400
	subu    $a0, $t7, $t0
	sll     $t8, $a0, 16
	move    $a0, $t8
	sra     $t1, $a0, 16
	jal     converge_i
	move    $a0, $t1
	lh      $t2, 0x001E($sp)
	lw      $t4, 0x0028($sp)
	subu    $t3, $t2, $v0
	sh      $t3, 0x002E($t4)
	lw      $a0, 0x0028($sp)
	jal     pl_hang_8025DF04
	li      $a1, 0x0000
	bnez    $v0, .L8025E784
	nop
	lw      $t5, 0x0028($sp)
	li      $at, 0x40800000
	mtc1    $at, $f10
	lw      $t6, 0x009C($t5)
	li      $at, 0x47800000
	mtc1    $at, $f4
	lwc1    $f8, 0x0008($t6)
	div.s   $f16, $f8, $f10
	mul.s   $f18, $f16, $f4
	trunc.w.s $f6, $f18
	mfc1    $t7, $f6
	nop
	sw      $t7, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0005
	jal     player_80250B04
	lw      $a2, 0x0024($sp)
	jal     pl_hang_8025DD70
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_hang_8025DE1C
	li      $a1, 0x0001
.L8025E784:
	b       .L8025E794
	move    $v0, $0
	b       .L8025E794
	nop
.L8025E794:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_hang_8025E7A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x2408C081
	li.l    $a1, 0x2408C081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $a0, 0x0018($sp)
	jal     pl_hang_8025DF04
	li      $a1, 0x0000
	bnez    $v0, .L8025E810
	nop
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0006
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8025E808
	nop
	li.u    $a1, 0x08100340
	li.l    $a1, 0x08100340
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025E808:
	jal     pl_hang_8025DD70
	lw      $a0, 0x0018($sp)
.L8025E810:
	b       .L8025E820
	move    $v0, $0
	b       .L8025E820
	nop
.L8025E820:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hang_8025E830:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	li.u    $a1, 0x2408C081
	li.l    $a1, 0x2408C081
	lw      $a0, 0x0020($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t8, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	lh      $t9, 0x002E($t8)
	lw      $t1, 0x010C($t0)
	addu    $t2, $t9, $t1
	sh      $t2, 0x002E($t8)
	lw      $t3, 0x001C($sp)
	li      $at, 0x000A
	lw      $t4, 0x010C($t3)
	sll     $t5, $t4, 3
	div     $0, $t5, $at
	mflo    $t6
	sw      $t6, 0x010C($t3)
	nop
	lw      $a0, 0x0020($sp)
	jal     pl_hang_8025DF04
	li      $a1, 0x0000
	bnez    $v0, .L8025E910
	nop
	lw      $t7, 0x001C($sp)
	lw      $t0, 0x010C($t7)
	slti    $at, $t0, 0x0801
	bnez    $at, .L8025E8D0
	nop
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	li      $a1, 0x0007
	b       .L8025E908
	nop
.L8025E8D0:
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	li      $a1, 0x0008
	jal     player_80250940
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L8025E908
	nop
	lw      $t9, 0x001C($sp)
	sw      $0, 0x010C($t9)
	li.u    $a1, 0x08100340
	li.l    $a1, 0x08100340
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025E908:
	jal     pl_hang_8025DD70
	lw      $a0, 0x0020($sp)
.L8025E910:
	b       .L8025E920
	move    $v0, $0
	b       .L8025E920
	nop
.L8025E920:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_hang_8025E930:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	sw      $0, 0x010C($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($t9)
	bnez    $t0, .L8025E9A4
	nop
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x000B
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8025E99C
	nop
	li.u    $a1, 0x00100345
	li.l    $a1, 0x00100345
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025EA1C
	nop
.L8025E99C:
	b       .L8025E9E0
	nop
.L8025E9A4:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x000C
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0088($t1)
	lh      $t3, 0x0040($t2)
	bnez    $t3, .L8025E9E0
	nop
	li.u    $a1, 0x08100340
	li.l    $a1, 0x08100340
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025EA1C
	nop
.L8025E9E0:
	jal     player_802510DC
	lw      $a0, 0x0028($sp)
	sll     $s0, $v0, 16
	sra     $t4, $s0, 16
	move    $s0, $t4
	mtc1    $s0, $f4
	lw      $a0, 0x0028($sp)
	cvt.s.w $f4, $f4
	mfc1    $a1, $f4
	jal     pl_hang_8025DF04
	nop
	b       .L8025EA1C
	move    $v0, $0
	b       .L8025EA1C
	nop
.L8025EA1C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_hang_8025EA30:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, .L8025EA7C
	nop
	li.u    $a1, 0x0300088D
	li.l    $a1, 0x0300088D
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025EB3C
	nop
.L8025EA7C:
	lw      $t1, 0x0028($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f6
	lw      $t2, 0x009C($t1)
	lwc1    $f4, 0x0008($t2)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8025EABC
	nop
	li.u    $a1, 0x00100344
	li.l    $a1, 0x00100344
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L8025EB3C
	nop
.L8025EABC:
	lw      $t3, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f10
	lw      $t4, 0x009C($t3)
	lh      $t5, 0x002E($t3)
	lwc1    $f8, 0x0004($t4)
	mtc1    $t5, $f18
	mul.s   $f16, $f8, $f10
	cvt.s.w $f4, $f18
	sub.s   $f6, $f4, $f16
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x002E($t3)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0009
	jal     player_802510DC
	lw      $a0, 0x0028($sp)
	sll     $s0, $v0, 16
	sra     $t8, $s0, 16
	move    $s0, $t8
	mtc1    $s0, $f10
	lw      $a0, 0x0028($sp)
	cvt.s.w $f10, $f10
	mfc1    $a1, $f10
	jal     pl_hang_8025DF04
	nop
	b       .L8025EB3C
	move    $v0, $0
	b       .L8025EB3C
	nop
.L8025EB3C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_hang_8025EB50:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $a0, 0x0034($sp)
	li      $a1, 0x42480000
	jal     player_80251A48
	li      $a2, 0x42480000
	lw      $t6, 0x0030($sp)
	sw      $v0, 0x0060($t6)
	lw      $t7, 0x0034($sp)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x0000($t7)
	lwc1    $f14, 0x0004($t7)
	jal     map_80381900
	lw      $a2, 0x0008($t7)
	swc1    $f0, 0x001C($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80251AFC
	addiu   $a2, $sp, 0x0028
	swc1    $f0, 0x0020($sp)
	lw      $t8, 0x0024($sp)
	bnez    $t8, .L8025EBBC
	nop
	b       .L8025ECEC
	li      $v0, 0x0001
.L8025EBBC:
	lw      $t9, 0x0028($sp)
	bnez    $t9, .L8025EBD0
	nop
	b       .L8025ECEC
	li      $v0, 0x0002
.L8025EBD0:
	lwc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x001C($sp)
	li      $at, 0x43200000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.le.s  $f8, $f10
	nop
	bc1f    .L8025EBFC
	nop
	b       .L8025ECEC
	li      $v0, 0x0001
.L8025EBFC:
	lw      $t0, 0x0028($sp)
	li      $at, 0x0005
	lh      $t1, 0x0000($t0)
	beq     $t1, $at, .L8025EC18
	nop
	b       .L8025ECEC
	li      $v0, 0x0002
.L8025EC18:
	lw      $t2, 0x0034($sp)
	li      $at, 0x43200000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($t2)
	lwc1    $f6, 0x0020($sp)
	add.s   $f4, $f16, $f18
	sub.s   $f8, $f6, $f4
	swc1    $f8, 0x0018($sp)
	li      $at, 0xC1F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0018($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8025EC5C
	nop
	b       .L8025ECEC
	li      $v0, 0x0001
.L8025EC5C:
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f18, 0x0018($sp)
	c.lt.s  $f6, $f18
	nop
	bc1f    .L8025EC80
	nop
	b       .L8025ECEC
	li      $v0, 0x0002
.L8025EC80:
	lw      $t3, 0x0030($sp)
	li      $at, 0x43200000
	mtc1    $at, $f8
	lwc1    $f4, 0x006C($t3)
	lw      $t4, 0x0034($sp)
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x0004($t4)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0030($sp)
	sw      $t5, 0x0068($t6)
	lwc1    $f16, 0x001C($sp)
	lw      $t7, 0x0030($sp)
	swc1    $f16, 0x0070($t7)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	sw      $t8, 0x0064($t9)
	lwc1    $f18, 0x0020($sp)
	lw      $t0, 0x0030($sp)
	swc1    $f18, 0x006C($t0)
	b       .L8025ECEC
	move    $v0, $0
	b       .L8025ECEC
	nop
.L8025ECEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_hang_8025ECFC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x001C($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t6)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t6)
	lw      $t7, 0x0030($sp)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f16, 0x0054($t7)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L8025ED58
	nop
	lwc1    $f4, 0x001C($sp)
	lw      $t8, 0x0030($sp)
	swc1    $f4, 0x0054($t8)
.L8025ED58:
	lw      $t9, 0x0030($sp)
	move    $a1, $0
	li      $a2, 0x0800
	lh      $t0, 0x0024($t9)
	lh      $t1, 0x002E($t9)
	li      $a3, 0x0800
	subu    $a0, $t0, $t1
	sll     $t2, $a0, 16
	move    $a0, $t2
	sra     $t3, $a0, 16
	jal     converge_i
	move    $a0, $t3
	lw      $t4, 0x0030($sp)
	lh      $t5, 0x0024($t4)
	subu    $t6, $t5, $v0
	sh      $t6, 0x002E($t4)
	lw      $t7, 0x0030($sp)
	lh      $t8, 0x002E($t7)
	sh      $t8, 0x0038($t7)
	lw      $t9, 0x0030($sp)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x002E($t9)
	lwc1    $f8, 0x0054($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0058($t9)
	lw      $t3, 0x0030($sp)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x002E($t3)
	lwc1    $f18, 0x0054($t3)
	sra     $t6, $t5, 4
	sll     $t4, $t6, 2
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_cos)($at)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x005C($t3)
	lw      $t8, 0x0030($sp)
	lwc1    $f6, 0x0058($t8)
	swc1    $f6, 0x0048($t8)
	mtc1    $0, $f8
	lw      $t7, 0x0030($sp)
	swc1    $f8, 0x004C($t7)
	lw      $t0, 0x0030($sp)
	lwc1    $f10, 0x005C($t0)
	swc1    $f10, 0x0050($t0)
	lw      $t1, 0x0030($sp)
	addiu   $t9, $sp, 0x0020
	lw      $t2, 0x0064($t1)
	lwc1    $f16, 0x0048($t1)
	lwc1    $f6, 0x003C($t1)
	lwc1    $f18, 0x0020($t2)
	mul.s   $f4, $f16, $f18
	sub.s   $f8, $f6, $f4
	swc1    $f8, 0x0000($t9)
	lw      $t5, 0x0030($sp)
	addiu   $t4, $sp, 0x0020
	lw      $t6, 0x0064($t5)
	lwc1    $f10, 0x0050($t5)
	lwc1    $f6, 0x0044($t5)
	lwc1    $f16, 0x0020($t6)
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f6, $f18
	swc1    $f4, 0x0008($t4)
	lw      $t3, 0x0030($sp)
	addiu   $t8, $sp, 0x0020
	lwc1    $f8, 0x0040($t3)
	swc1    $f8, 0x0004($t8)
	lw      $a0, 0x0030($sp)
	jal     pl_hang_8025EB50
	addiu   $a1, $sp, 0x0020
	sw      $v0, 0x002C($sp)
	lw      $t7, 0x0030($sp)
	lw      $a0, 0x0088($t7)
	addiu   $a1, $t7, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t0, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t0)
	lh      $a2, 0x002E($t0)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	b       .L8025EEC0
	lw      $v0, 0x002C($sp)
	b       .L8025EEC0
	nop
.L8025EEC0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_hang_8025EED0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	mtc1    $0, $f4
	lw      $t6, 0x0018($sp)
	swc1    $f4, 0x0054($t6)
	mtc1    $0, $f6
	lw      $t7, 0x0018($sp)
	swc1    $f6, 0x0058($t7)
	mtc1    $0, $f8
	lw      $t8, 0x0018($sp)
	swc1    $f8, 0x005C($t8)
	lw      $t9, 0x0018($sp)
	li      $at, 0x43200000
	mtc1    $at, $f16
	lwc1    $f10, 0x006C($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0040($t9)
	lw      $a0, 0x0018($sp)
	la.u    $a1, vecf_0
	la.l    $a1, vecf_0
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0048
	lw      $t0, 0x0018($sp)
	lw      $a0, 0x0088($t0)
	addiu   $a1, $t0, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	b       .L8025EF48
	nop
.L8025EF48:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hang_8025EF58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L8025EFB4
	nop
	lhu     $t2, 0x001A($t9)
	slti    $at, $t2, 0x001F
	bnez    $at, .L8025EFB4
	nop
	li.u    $a1, 0x00200349
	li.l    $a1, 0x00200349
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F0A4
	nop
.L8025EFB4:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0080
	bnez    $t5, .L8025EFE4
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F0A4
	nop
.L8025EFE4:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t6, $t8, 0x8000
	beqz    $t6, .L8025F014
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F0A4
	nop
.L8025F014:
	lw      $t0, 0x0018($sp)
	li      $at, 0x0005
	lw      $t1, 0x0064($t0)
	lh      $t9, 0x0000($t1)
	beq     $t9, $at, .L8025F048
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F0A4
	nop
.L8025F048:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0035
	li.u    $a1, 0x042DA081
	li.l    $a1, 0x042DA081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	jal     pl_hang_8025EED0
	lw      $a0, 0x0018($sp)
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8025F094
	nop
	li.u    $a1, 0x00200349
	li.l    $a1, 0x00200349
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025F094:
	b       .L8025F0A4
	move    $v0, $0
	b       .L8025F0A4
	nop
.L8025F0A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hang_8025F0B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L8025F0F4
	nop
	lw      $t9, 0x0018($sp)
	li.u    $a1, 0x0020054A
	li.l    $a1, 0x0020054A
	move    $a0, $t9
	jal     player_80252CF4
	lw      $a2, 0x001C($t9)
	b       .L8025F1D4
	nop
.L8025F0F4:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0080
	bnez    $t2, .L8025F124
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F1D4
	nop
.L8025F124:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x8000
	beqz    $t5, .L8025F154
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F1D4
	nop
.L8025F154:
	lw      $t6, 0x0018($sp)
	li      $at, 0x0005
	lw      $t7, 0x0064($t6)
	lh      $t8, 0x0000($t7)
	beq     $t8, $at, .L8025F188
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F1D4
	nop
.L8025F188:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x001C($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L8025F1B0
	nop
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00C6
	b       .L8025F1BC
	nop
.L8025F1B0:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00C7
.L8025F1BC:
	jal     pl_hang_8025EED0
	lw      $a0, 0x0018($sp)
	b       .L8025F1D4
	move    $v0, $0
	b       .L8025F1D4
	nop
.L8025F1D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hang_8025F1E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0080
	bnez    $t8, .L8025F220
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F374
	nop
.L8025F220:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L8025F250
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F374
	nop
.L8025F250:
	lw      $t2, 0x0018($sp)
	li      $at, 0x0005
	lw      $t3, 0x0064($t2)
	lh      $t4, 0x0000($t3)
	beq     $t4, $at, .L8025F284
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F374
	nop
.L8025F284:
	lw      $t5, 0x0018($sp)
	lw      $t6, 0x001C($t5)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L8025F2AC
	nop
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x005C
	b       .L8025F2B8
	nop
.L8025F2AC:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x005D
.L8025F2B8:
	lw      $t8, 0x0018($sp)
	li      $at, 0x000C
	lw      $t9, 0x0088($t8)
	lh      $t0, 0x0040($t9)
	bne     $t0, $at, .L8025F2E8
	nop
	lw      $t1, 0x0018($sp)
	li.u    $a0, 0x042DA081
	li.l    $a0, 0x042DA081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8025F2E8:
	jal     player_8025097C
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8025F33C
	nop
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x001C($t2)
	xori    $t4, $t3, 0x0001
	sw      $t4, 0x001C($t2)
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0020
	beqz    $t7, .L8025F33C
	nop
	lw      $t8, 0x0018($sp)
	li.u    $a1, 0x00200349
	li.l    $a1, 0x00200349
	move    $a0, $t8
	jal     player_80252CF4
	lw      $a2, 0x001C($t8)
	b       .L8025F374
	nop
.L8025F33C:
	jal     pl_hang_8025ECFC
	lw      $a0, 0x0018($sp)
	li      $at, 0x0002
	bne     $v0, $at, .L8025F364
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025F364:
	b       .L8025F374
	move    $v0, $0
	b       .L8025F374
	nop
.L8025F374:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hang_8025F384:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	mtc1    $0, $f4
	lw      $t6, 0x0020($sp)
	swc1    $f4, 0x004C($t6)
	li      $at, 0xC1000000
	mtc1    $at, $f6
	lw      $t7, 0x0020($sp)
	swc1    $f6, 0x0054($t7)
	lw      $t8, 0x0020($sp)
	li      $at, 0x42700000
	mtc1    $at, $f8
	lhu     $t9, 0x002E($t8)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x003C($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f16, $f8, $f10
	sub.s   $f4, $f18, $f16
	swc1    $f4, 0x003C($t8)
	lw      $t2, 0x0020($sp)
	li      $at, 0x42700000
	mtc1    $at, $f6
	lhu     $t3, 0x002E($t2)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0044($t2)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f8, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	sub.s   $f16, $f18, $f10
	swc1    $f16, 0x0044($t2)
	lw      $t6, 0x0020($sp)
	addiu   $a3, $sp, 0x0018
	lwc1    $f12, 0x003C($t6)
	lwc1    $f14, 0x0040($t6)
	jal     map_80381900
	lw      $a2, 0x0044($t6)
	swc1    $f0, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x0040($t7)
	lwc1    $f4, 0x001C($sp)
	sub.s   $f18, $f6, $f8
	c.lt.s  $f4, $f18
	nop
	bc1f    .L8025F474
	nop
	lw      $t9, 0x0020($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x0040($t9)
	sub.s   $f6, $f10, $f16
	b       .L8025F480
	swc1    $f6, 0x0040($t9)
.L8025F474:
	lwc1    $f8, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	swc1    $f8, 0x0040($t0)
.L8025F480:
	li.u    $a1, 0x010208B6
	li.l    $a1, 0x010208B6
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F4A4
	nop
	b       .L8025F4A4
	nop
.L8025F4A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_hang_8025F4B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00C3
	lw      $t6, 0x0018($sp)
	li      $at, 0x41600000
	mtc1    $at, $f4
	lhu     $t7, 0x002E($t6)
	lui     $at, %hi(math_sin)
	lwc1    $f10, 0x003C($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x003C($t6)
	lw      $t0, 0x0018($sp)
	li      $at, 0x41600000
	mtc1    $at, $f18
	lhu     $t1, 0x002E($t0)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x0044($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x0044($t0)
	lw      $t4, 0x0018($sp)
	lw      $a0, 0x0088($t4)
	addiu   $a1, $t4, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	b       .L8025F550
	nop
.L8025F550:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hang_8025F560:
	addiu   $sp, $sp, -0x0008
	lhu     $t6, 0x001A($a0)
	slti    $at, $t6, 0x000E
	beqz    $at, .L8025F59C
	nop
	lhu     $t7, 0x001A($a0)
	mtc1    $t7, $f4
	bgez    $t7, .L8025F594
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L8025F594:
	b       .L8025F5AC
	swc1    $f6, 0x0004($sp)
.L8025F59C:
	li      $at, 0x41600000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0004($sp)
.L8025F5AC:
	lhu     $t8, 0x002E($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x0004($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f16, %lo(math_sin)($at)
	lwc1    $f8, 0x003C($a0)
	lw      $t1, 0x0094($a0)
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f4, $f8
	swc1    $f6, 0x0004($t1)
	lhu     $t2, 0x002E($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0004($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_cos)($at)
	lwc1    $f4, 0x0044($a0)
	lw      $t5, 0x0094($a0)
	mul.s   $f18, $f10, $f16
	add.s   $f8, $f18, $f4
	swc1    $f8, 0x000C($t5)
	lwc1    $f6, 0x0040($a0)
	lw      $t6, 0x0094($a0)
	swc1    $f6, 0x0008($t6)
	lhu     $t7, 0x001A($a0)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($a0)
	lw      $t9, 0x0004($a0)
	li      $at, 0x02000000
	or      $t0, $t9, $at
	sw      $t0, 0x0004($a0)
	b       .L8025F63C
	nop
.L8025F63C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_hang_8025F644:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	lw      $a1, 0x001C($sp)
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8025F6A8
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $t6, 0x0020($sp)
	li.u    $at, 0x0C400201
	li.l    $at, 0x0C400201
	bne     $t6, $at, .L8025F6A8
	nop
	jal     pl_hang_8025F4B4
	lw      $a0, 0x0018($sp)
.L8025F6A8:
	b       .L8025F6B0
	nop
.L8025F6B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hang_8025F6C0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lh      $t7, 0x0024($t6)
	lh      $t8, 0x002E($t6)
	subu    $t9, $t7, $t8
	sh      $t9, 0x002A($sp)
	lw      $t0, 0x0030($sp)
	li      $at, 0x43200000
	mtc1    $at, $f10
	lwc1    $f4, 0x006C($t0)
	lwc1    $f6, 0x0070($t0)
	move    $t1, $0
	sub.s   $f8, $f4, $f6
	c.le.s  $f10, $f8
	nop
	bc1f    .L8025F714
	nop
	li      $t1, 0x0001
.L8025F714:
	sw      $t1, 0x0024($sp)
	lw      $t2, 0x0030($sp)
	lhu     $t3, 0x001A($t2)
	slti    $at, $t3, 0x000A
	beqz    $at, .L8025F73C
	nop
	lw      $t4, 0x0030($sp)
	lhu     $t5, 0x001A($t4)
	addiu   $t6, $t5, 0x0001
	sh      $t6, 0x001A($t4)
.L8025F73C:
	lw      $t7, 0x0030($sp)
	lui     $at, %hi(pl_hang_80336944)
	lwc1    $f18, %lo(pl_hang_80336944)($at)
	lw      $t8, 0x0068($t7)
	lwc1    $f16, 0x0020($t8)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8025F770
	nop
	jal     pl_hang_8025F384
	lw      $a0, 0x0030($sp)
	b       .L8025F95C
	nop
.L8025F770:
	lw      $t9, 0x0030($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8004
	beqz    $t1, .L8025F794
	nop
	jal     pl_hang_8025F384
	lw      $a0, 0x0030($sp)
	b       .L8025F95C
	nop
.L8025F794:
	lw      $t2, 0x0030($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t5, $t3, 0x0002
	beqz    $t5, .L8025F7CC
	nop
	lw      $t6, 0x0024($sp)
	beqz    $t6, .L8025F7CC
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x054F
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F95C
	nop
.L8025F7CC:
	lw      $t4, 0x0030($sp)
	lhu     $t7, 0x0002($t4)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L8025F838
	nop
	lw      $t9, 0x0030($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L8025F828
	nop
	lw      $t3, 0x0030($sp)
	lw      $t5, 0x0004($t3)
	andi    $t6, $t5, 0x0010
	beqz    $t6, .L8025F814
	nop
	b       .L8025F818
	li      $s0, 0x000C
.L8025F814:
	li      $s0, 0x0012
.L8025F818:
	lw      $t4, 0x0030($sp)
	lbu     $t7, 0x00B2($t4)
	addu    $t8, $t7, $s0
	sb      $t8, 0x00B2($t4)
.L8025F828:
	jal     pl_hang_8025F384
	lw      $a0, 0x0030($sp)
	b       .L8025F95C
	nop
.L8025F838:
	lw      $t9, 0x0030($sp)
	li      $at, 0x000A
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, .L8025F8B4
	nop
	lhu     $t1, 0x0002($t9)
	andi    $t2, $t1, 0x0001
	beqz    $t2, .L8025F8B4
	nop
	lh      $t3, 0x002A($sp)
	slti    $at, $t3, -0x4000
	bnez    $at, .L8025F8A4
	nop
	slti    $at, $t3, 0x4001
	beqz    $at, .L8025F8A4
	nop
	lw      $t5, 0x0024($sp)
	beqz    $t5, .L8025F89C
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x054C
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F95C
	nop
.L8025F89C:
	b       .L8025F8B4
	nop
.L8025F8A4:
	jal     pl_hang_8025F384
	lw      $a0, 0x0030($sp)
	b       .L8025F95C
	nop
.L8025F8B4:
	lw      $a0, 0x0030($sp)
	li      $a1, -0x8000
	jal     player_80251F24
	li      $a2, 0x41F00000
	lw      $t6, 0x0030($sp)
	lwc1    $f4, 0x0040($t6)
	sub.s   $f6, $f4, $f0
	swc1    $f6, 0x002C($sp)
	lw      $t7, 0x0024($sp)
	beqz    $t7, .L8025F914
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lwc1    $f8, 0x002C($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8025F914
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x054F
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025F95C
	nop
.L8025F914:
	lw      $t8, 0x0030($sp)
	lw      $t4, 0x001C($t8)
	bnez    $t4, .L8025F938
	nop
	li.u    $a1, 0x2408C081
	li.l    $a1, 0x2408C081
	lw      $a0, 0x0030($sp)
	jal     player_80251120
	li      $a2, 0x00020000
.L8025F938:
	jal     pl_physics_802559B0
	lw      $a0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x0033
	b       .L8025F95C
	move    $v0, $0
	b       .L8025F95C
	nop
.L8025F95C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_hang_8025F970:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L8025F9A0
	nop
	jal     pl_hang_8025F384
	lw      $a0, 0x0018($sp)
	b       .L8025FA54
	nop
.L8025F9A0:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x001A($t9)
	slti    $at, $t0, 0x001C
	bnez    $at, .L8025F9DC
	nop
	lhu     $t1, 0x0002($t9)
	andi    $t2, $t1, 0x000F
	beqz    $t2, .L8025F9DC
	nop
	jal     pl_hang_8025F4B4
	lw      $a0, 0x0018($sp)
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       .L8025FA54
	nop
.L8025F9DC:
	lw      $t3, 0x0018($sp)
	li      $at, 0x000A
	lhu     $t4, 0x001A($t3)
	bne     $t4, $at, .L8025FA04
	nop
	li.u    $a1, 0x24098081
	li.l    $a1, 0x24098081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
.L8025FA04:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_hang_8025F644
	move    $a1, $0
	jal     pl_hang_8025F560
	lw      $a0, 0x0018($sp)
	lw      $t5, 0x0018($sp)
	li      $at, 0x0011
	lw      $t6, 0x0088($t5)
	lh      $t7, 0x0040($t6)
	bne     $t7, $at, .L8025FA44
	nop
	lw      $t0, 0x0018($sp)
	li      $t8, 0x054D
	sw      $t8, 0x000C($t0)
.L8025FA44:
	b       .L8025FA54
	move    $v0, $0
	b       .L8025FA54
	nop
.L8025FA54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hang_8025FA64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L8025FA94
	nop
	jal     pl_hang_8025F384
	lw      $a0, 0x0018($sp)
	b       .L8025FAD8
	nop
.L8025FA94:
	li.u    $a1, 0x2408C081
	li.l    $a1, 0x2408C081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	li.u    $a2, 0x0800034B
	li.l    $a2, 0x0800034B
	lw      $a0, 0x0018($sp)
	jal     pl_hang_8025F644
	li      $a1, 0x001C
	lw      $t0, 0x0018($sp)
	li      $t9, 0x0001
	sw      $t9, 0x001C($t0)
	b       .L8025FAD8
	move    $v0, $0
	b       .L8025FAD8
	nop
.L8025FAD8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hang_8025FAE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L8025FB18
	nop
	jal     pl_hang_8025F384
	lw      $a0, 0x0018($sp)
	b       .L8025FB80
	nop
.L8025FB18:
	li.u    $a1, 0x2413D081
	li.l    $a1, 0x2413D081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_hang_8025F644
	li      $a1, 0x0034
	lw      $t9, 0x0018($sp)
	li      $at, 0x0008
	lw      $t0, 0x0088($t9)
	lh      $t1, 0x0040($t0)
	bne     $t1, $at, .L8025FB68
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
.L8025FB68:
	jal     pl_hang_8025F560
	lw      $a0, 0x0018($sp)
	b       .L8025FB80
	move    $v0, $0
	b       .L8025FB80
	nop
.L8025FB80:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_hang_8025FB90:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L8025FC3C
	nop
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0088($t0)
	lw      $t2, 0x0134($t1)
	andi    $t3, $t2, 0x0040
	sltiu   $t4, $t3, 0x0001
	sw      $t4, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0080($t5)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x002E($t5)
	lw      $t8, 0x0028($sp)
	lw      $a1, 0x0088($t8)
	addiu   $a0, $t8, 0x003C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0020
	lw      $t9, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t9)
	c.le.s  $f6, $f4
	nop
	bc1f    .L8025FC1C
	nop
	li.u    $s0, 0x010208BD
	b       .L8025FC24
	li.l    $s0, 0x010208BD
.L8025FC1C:
	li.u    $s0, 0x010208BE
	li.l    $s0, 0x010208BE
.L8025FC24:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80252CF4
	lw      $a2, 0x0024($sp)
	b       .L8025FC58
	nop
.L8025FC3C:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0058
	b       .L8025FC58
	move    $v0, $0
	b       .L8025FC58
	nop
.L8025FC58:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_hang_8025FC6C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x0030($sp)
	lh      $t9, 0x002C($t8)
	sh      $t9, 0x002A($sp)
	lw      $t0, 0x0030($sp)
	lh      $t1, 0x002E($t0)
	sh      $t1, 0x0028($sp)
	lw      $t2, 0x0030($sp)
	lhu     $s0, 0x0018($t2)
	beqz    $s0, .L8025FCD0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8025FD8C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8025FDF4
	nop
	b       .L802600F4
	nop
.L8025FCD0:
	lw      $t3, 0x0030($sp)
	li      $at, -0x0002
	lw      $t4, 0x0088($t3)
	lh      $t5, 0x0002($t4)
	and     $t6, $t5, $at
	sh      $t6, 0x0002($t4)
	lw      $t8, 0x0030($sp)
	li      $t7, 0x8000
	lw      $t9, 0x0080($t8)
	sw      $t7, 0x0134($t9)
	lw      $t1, 0x0030($sp)
	li      $t0, 0x0001
	lw      $t2, 0x0094($t1)
	sh      $t0, 0x001E($t2)
	lw      $t3, 0x0030($sp)
	lw      $t5, 0x0080($t3)
	lw      $t6, 0x0094($t3)
	sw      $t5, 0x0020($t6)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0048
	lw      $t4, 0x0030($sp)
	lw      $t8, 0x0080($t4)
	lwc1    $f4, 0x00A0($t8)
	swc1    $f4, 0x003C($t4)
	lw      $t7, 0x0030($sp)
	li      $at, 0x43AF0000
	mtc1    $at, $f8
	lw      $t9, 0x0080($t7)
	lwc1    $f6, 0x00A4($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0040($t7)
	lw      $t1, 0x0030($sp)
	lw      $t0, 0x0080($t1)
	lwc1    $f16, 0x00A8($t0)
	swc1    $f16, 0x0044($t1)
	mtc1    $0, $f18
	lw      $t2, 0x0030($sp)
	swc1    $f18, 0x0054($t2)
	lw      $t5, 0x0030($sp)
	li      $t3, 0x0001
	sh      $t3, 0x0018($t5)
	b       .L802600F4
	nop
.L8025FD8C:
	lw      $t6, 0x0030($sp)
	li      $at, 0x0001
	lw      $t8, 0x0080($t6)
	lw      $t4, 0x014C($t8)
	bne     $t4, $at, .L8025FDEC
	nop
	lw      $t9, 0x0030($sp)
	lw      $t7, 0x0080($t9)
	lw      $t0, 0x00C4($t7)
	sh      $t0, 0x002C($t9)
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0080($t1)
	lw      $t3, 0x00C8($t2)
	sh      $t3, 0x002E($t1)
	lw      $t5, 0x0030($sp)
	lw      $t4, 0x002C($sp)
	lw      $t6, 0x0080($t5)
	lw      $t8, 0x00C8($t6)
	sw      $t8, 0x010C($t4)
	lw      $t7, 0x002C($sp)
	sw      $0, 0x0110($t7)
	lw      $t9, 0x0030($sp)
	li      $t0, 0x0002
	sh      $t0, 0x0018($t9)
.L8025FDEC:
	b       .L802600F4
	nop
.L8025FDF4:
	lw      $t2, 0x0030($sp)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lw      $t3, 0x009C($t2)
	lh      $t4, 0x002C($t2)
	lwc1    $f4, 0x0008($t3)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t5, $f10
	nop
	sll     $t6, $t5, 16
	sra     $t8, $t6, 16
	subu    $t7, $t4, $t8
	sh      $t7, 0x002C($t2)
	lw      $t0, 0x0030($sp)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lw      $t9, 0x009C($t0)
	lw      $t4, 0x002C($sp)
	lwc1    $f16, 0x0004($t9)
	lw      $t8, 0x0110($t4)
	mul.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	sll     $t5, $t1, 16
	sra     $t6, $t5, 16
	subu    $t7, $t8, $t6
	sw      $t7, 0x0110($t4)
	lw      $t2, 0x0030($sp)
	lh      $t0, 0x002C($t2)
	slti    $at, $t0, 0x38E4
	bnez    $at, .L8025FE88
	nop
	lw      $t3, 0x0030($sp)
	li      $t9, 0x38E3
	sh      $t9, 0x002C($t3)
.L8025FE88:
	lw      $t1, 0x0030($sp)
	lh      $t5, 0x002C($t1)
	bgez    $t5, .L8025FEA0
	nop
	lw      $t8, 0x0030($sp)
	sh      $0, 0x002C($t8)
.L8025FEA0:
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0110($t6)
	slti    $at, $t7, 0x4001
	bnez    $at, .L8025FEC0
	nop
	lw      $t2, 0x002C($sp)
	li      $t4, 0x4000
	sw      $t4, 0x0110($t2)
.L8025FEC0:
	lw      $t0, 0x002C($sp)
	lw      $t9, 0x0110($t0)
	slti    $at, $t9, -0x4000
	beqz    $at, .L8025FEE0
	nop
	lw      $t1, 0x002C($sp)
	li      $t3, -0x4000
	sw      $t3, 0x0110($t1)
.L8025FEE0:
	lw      $t5, 0x002C($sp)
	lw      $t4, 0x0030($sp)
	lw      $t8, 0x0110($t5)
	lw      $t6, 0x010C($t5)
	addu    $t7, $t8, $t6
	sh      $t7, 0x002E($t4)
	lw      $t2, 0x0030($sp)
	lhu     $t0, 0x0002($t2)
	andi    $t9, $t0, 0x0002
	beqz    $t9, .L802600B8
	nop
	lw      $t3, 0x0030($sp)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x002C($t3)
	sra     $t5, $t1, 4
	sll     $t8, $t5, 2
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($t3)
	lw      $t6, 0x0030($sp)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x002C($t6)
	sra     $t4, $t7, 4
	sll     $t2, $t4, 2
	addu    $at, $at, $t2
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x004C($t6)
	lw      $t0, 0x0030($sp)
	li      $at, 0x42F00000
	mtc1    $at, $f8
	lhu     $t9, 0x002C($t0)
	lui     $at, %hi(math_cos)
	lhu     $t8, 0x002E($t0)
	sra     $t1, $t9, 4
	sll     $t5, $t1, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	sra     $t3, $t8, 4
	sll     $t7, $t3, 2
	mul.s   $f16, $f8, $f10
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_sin)($at)
	lwc1    $f6, 0x003C($t0)
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x003C($t0)
	lw      $t4, 0x0030($sp)
	li      $at, 0x42F00000
	mtc1    $at, $f10
	lhu     $t2, 0x002C($t4)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x0040($t4)
	sra     $t6, $t2, 4
	sll     $t9, $t6, 2
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f18, $f10, $f16
	add.s   $f4, $f6, $f18
	swc1    $f4, 0x0040($t4)
	lw      $t1, 0x0030($sp)
	la.u    $t7, math_cos
	la.l    $t7, math_cos
	lhu     $t5, 0x002C($t1)
	li      $at, 0x42F00000
	mtc1    $at, $f8
	sra     $t8, $t5, 4
	sll     $t3, $t8, 2
	addu    $t0, $t3, $t7
	lwc1    $f10, 0x0000($t0)
	lhu     $t2, 0x002E($t1)
	lwc1    $f4, 0x0044($t1)
	mul.s   $f16, $f8, $f10
	sra     $t6, $t2, 4
	sll     $t9, $t6, 2
	addu    $t4, $t9, $t7
	lwc1    $f6, 0x0000($t4)
	mul.s   $f18, $f16, $f6
	add.s   $f8, $f4, $f18
	swc1    $f8, 0x0044($t1)
	lw      $t5, 0x0030($sp)
	li.u    $a0, 0x04568081
	li.l    $a0, 0x04568081
	lw      $a1, 0x0088($t5)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t8, 0x0030($sp)
	li.u    $a0, 0x501A5081
	li.l    $a0, 0x501A5081
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t3, 0x0030($sp)
	lw      $t0, 0x0088($t3)
	lh      $t2, 0x0002($t0)
	ori     $t6, $t2, 0x0001
	sh      $t6, 0x0002($t0)
	li.u    $a1, 0x00880898
	li.l    $a1, 0x00880898
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $t7, 0x0030($sp)
	li      $t9, 0x0002
	lw      $t4, 0x0080($t7)
	sw      $t9, 0x014C($t4)
	b       .L80260140
	move    $v0, $0
	b       .L802600F4
	nop
.L802600B8:
	lw      $t1, 0x0030($sp)
	lh      $t8, 0x002A($sp)
	lh      $t5, 0x002C($t1)
	bne     $t5, $t8, .L802600DC
	nop
	lh      $t3, 0x002E($t1)
	lh      $t2, 0x0028($sp)
	beq     $t3, $t2, .L802600F4
	nop
.L802600DC:
	lw      $t6, 0x0030($sp)
	li.u    $a0, 0x1D192001
	li.l    $a0, 0x1D192001
	lw      $a1, 0x0088($t6)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802600F4:
	lw      $t0, 0x0030($sp)
	lw      $a0, 0x0088($t0)
	addiu   $a1, $t0, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t7, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t7)
	lh      $a2, 0x002E($t7)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x0088
	b       .L80260140
	move    $v0, $0
	b       .L80260140
	nop
.L80260140:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_hang_80260154:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0060($sp)
	sw      $s0, 0x0020($sp)
	lw      $t6, 0x0060($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0040($sp)
	lw      $t8, 0x0060($sp)
	lw      $t9, 0x0080($t8)
	sw      $t9, 0x003C($sp)
	lw      $t0, 0x0060($sp)
	lh      $t1, 0x003A($t0)
	sh      $t1, 0x003A($sp)
	lw      $t2, 0x0060($sp)
	lw      $t3, 0x003C($sp)
	lui     $at, %hi(pl_hang_80336948)
	lwc1    $f4, 0x003C($t2)
	lwc1    $f6, 0x00A0($t3)
	lwc1    $f10, %lo(pl_hang_80336948)($at)
	sub.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0034($sp)
	lw      $t4, 0x0060($sp)
	lw      $t5, 0x003C($sp)
	lui     $at, %hi(pl_hang_8033694C)
	lwc1    $f18, 0x0044($t4)
	lwc1    $f4, 0x00A8($t5)
	lwc1    $f8, %lo(pl_hang_8033694C)($at)
	sub.s   $f6, $f18, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0030($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x42700000
	mtc1    $at, $f18
	lwc1    $f16, 0x004C($t6)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80260208
	nop
	lw      $t7, 0x0060($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($t7)
.L80260208:
	lw      $t8, 0x0040($sp)
	lw      $t9, 0x0060($sp)
	mtc1    $0, $f6
	lwc1    $f10, 0x0110($t8)
	lwc1    $f16, 0x004C($t9)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0110($t8)
	lw      $t0, 0x0040($sp)
	lwc1    $f4, 0x0110($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80260248
	nop
	mtc1    $0, $f8
	lw      $t1, 0x0040($sp)
	swc1    $f8, 0x0110($t1)
.L80260248:
	lw      $t2, 0x0040($sp)
	lw      $t3, 0x003C($sp)
	lwc1    $f10, 0x0110($t2)
	lwc1    $f16, 0x01FC($t3)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802602B4
	nop
	lw      $t4, 0x0060($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t4)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80260298
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lw      $t5, 0x0060($sp)
	swc1    $f6, 0x004C($t5)
.L80260298:
	li.u    $a1, 0x108008A4
	li.l    $a1, 0x108008A4
	lw      $a0, 0x0060($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L80260554
	nop
.L802602B4:
	lw      $t6, 0x0060($sp)
	lh      $t7, 0x0034($t6)
	slti    $at, $t7, 0x3000
	beqz    $at, .L802602D8
	nop
	lw      $t9, 0x0060($sp)
	lh      $t8, 0x0034($t9)
	addiu   $t0, $t8, 0x0100
	sh      $t0, 0x0034($t9)
.L802602D8:
	lw      $t1, 0x0040($sp)
	lw      $t2, 0x010C($t1)
	slti    $at, $t2, 0x1000
	beqz    $at, .L802602FC
	nop
	lw      $t3, 0x0040($sp)
	lw      $t4, 0x010C($t3)
	addiu   $t5, $t4, 0x0100
	sw      $t5, 0x010C($t3)
.L802602FC:
	lw      $t6, 0x0060($sp)
	lh      $t7, 0x003A($t6)
	lh      $t8, 0x0034($t6)
	addu    $t0, $t7, $t8
	sh      $t0, 0x003A($t6)
	lw      $t9, 0x0040($sp)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x010E($t9)
	sra     $t2, $t1, 4
	sll     $t4, $t2, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_sin)($at)
	swc1    $f8, 0x004C($sp)
	lw      $t5, 0x0040($sp)
	lui     $at, %hi(math_cos)
	lhu     $t3, 0x010E($t5)
	sra     $t7, $t3, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f10, %lo(math_cos)($at)
	swc1    $f10, 0x0048($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f18, 0x0048($sp)
	lw      $t0, 0x003C($sp)
	lwc1    $f10, 0x0030($sp)
	mul.s   $f4, $f16, $f18
	lwc1    $f16, 0x004C($sp)
	lwc1    $f6, 0x00A0($t0)
	addiu   $t6, $sp, 0x0050
	mul.s   $f18, $f10, $f16
	add.s   $f8, $f6, $f4
	add.s   $f6, $f8, $f18
	swc1    $f6, 0x0000($t6)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f10, 0x004C($sp)
	lw      $t9, 0x003C($sp)
	lwc1    $f6, 0x0030($sp)
	mul.s   $f16, $f4, $f10
	lwc1    $f4, 0x0048($sp)
	lwc1    $f8, 0x00A8($t9)
	addiu   $t1, $sp, 0x0050
	mul.s   $f10, $f6, $f4
	sub.s   $f18, $f8, $f16
	add.s   $f8, $f18, $f10
	swc1    $f8, 0x0008($t1)
	lw      $t2, 0x0040($sp)
	lw      $t4, 0x003C($sp)
	addiu   $t5, $sp, 0x0050
	lwc1    $f16, 0x0110($t2)
	lwc1    $f6, 0x00A4($t4)
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x0004($t5)
	li      $at, 0x42480000
	mtc1    $at, $f18
	addiu   $t3, $sp, 0x0050
	move    $a0, $t3
	addiu   $a1, $t3, 0x0004
	addiu   $a2, $t3, 0x0008
	li      $a3, 0x42700000
	jal     map_80380DE8
	swc1    $f18, 0x0010($sp)
	addiu   $t7, $sp, 0x0050
	lwc1    $f12, 0x0000($t7)
	lwc1    $f14, 0x0004($t7)
	lw      $a2, 0x0008($t7)
	jal     map_80381900
	addiu   $a3, $sp, 0x005C
	swc1    $f0, 0x0044($sp)
	lw      $t8, 0x005C($sp)
	beqz    $t8, .L80260448
	nop
	lw      $t0, 0x005C($sp)
	lw      $t6, 0x0060($sp)
	sw      $t0, 0x0068($t6)
	lwc1    $f10, 0x0044($sp)
	lw      $t9, 0x0060($sp)
	swc1    $f10, 0x0070($t9)
	lw      $a0, 0x0060($sp)
	addiu   $a1, $sp, 0x0050
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	b       .L80260488
	nop
.L80260448:
	lw      $t2, 0x0060($sp)
	addiu   $t1, $sp, 0x0050
	lwc1    $f8, 0x0004($t1)
	lwc1    $f16, 0x0070($t2)
	c.le.s  $f16, $f8
	nop
	bc1f    .L8026047C
	nop
	addiu   $t4, $sp, 0x0050
	lwc1    $f6, 0x0004($t4)
	lw      $t5, 0x0060($sp)
	b       .L80260488
	swc1    $f6, 0x0040($t5)
.L8026047C:
	lw      $t3, 0x0060($sp)
	lwc1    $f4, 0x0070($t3)
	swc1    $f4, 0x0040($t3)
.L80260488:
	lw      $t7, 0x0060($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t0, $t8, 0x0001
	sh      $t0, 0x001A($t7)
	lw      $t6, 0x0060($sp)
	lw      $t9, 0x001C($t6)
	bnez    $t9, .L802604B0
	nop
	b       .L802604B4
	li      $s0, 0x0095
.L802604B0:
	li      $s0, 0x0094
.L802604B4:
	lw      $a0, 0x0060($sp)
	jal     player_802509B8
	move    $a1, $s0
	jal     player_8025097C
	lw      $a0, 0x0060($sp)
	beqz    $v0, .L802604DC
	nop
	lw      $t2, 0x0060($sp)
	li      $t1, 0x0001
	sw      $t1, 0x001C($t2)
.L802604DC:
	lw      $t5, 0x0060($sp)
	lh      $t4, 0x003A($sp)
	lh      $t3, 0x003A($t5)
	slt     $at, $t3, $t4
	beqz    $at, .L8026050C
	nop
	lw      $t8, 0x0060($sp)
	li.u    $a0, 0x04388081
	li.l    $a0, 0x04388081
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026050C:
	lw      $t0, 0x0060($sp)
	lw      $a0, 0x0088($t0)
	addiu   $a1, $t0, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t7, 0x0060($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t7)
	lh      $t6, 0x002E($t7)
	lh      $t9, 0x003A($t7)
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	addu    $a2, $t6, $t9
	b       .L80260554
	move    $v0, $0
	b       .L80260554
	nop
.L80260554:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

pl_hang_80260568:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0064
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L802605B0
	nop
	jal     player_80253488
	lw      $a0, 0x0018($sp)
	b       .L802605C0
	nop
.L802605B0:
	b       .L802605C0
	move    $v0, $0
	b       .L802605C0
	nop
.L802605C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_hang_main
pl_hang_main:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_hang_80260568
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802605F8
	nop
	b       .L80260898
	li      $v0, 0x0001
.L802605F8:
	mtc1    $0, $f4
	lw      $t6, 0x0028($sp)
	swc1    $f4, 0x00C0($t6)
	lw      $t7, 0x0028($sp)
	li.u    $at, 0x00100346
	li.l    $at, 0x00100346
	lw      $s0, 0x000C($t7)
	sltu    $at, $s0, $at
	bnez    $at, .L80260688
	nop
	li.u    $at, 0x00200349
	li.l    $at, 0x00200349
	beq     $s0, $at, .L802607C0
	nop
	li.u    $at, 0x0020054A
	li.l    $at, 0x0020054A
	beq     $s0, $at, .L802607D4
	nop
	li.u    $at, 0x0800034B
	li.l    $at, 0x0800034B
	beq     $s0, $at, .L802607E8
	nop
	li.u    $at, 0x08100340
	li.l    $at, 0x08100340
	beq     $s0, $at, .L80260734
	nop
	li.u    $at, 0x08200348
	li.l    $at, 0x08200348
	beq     $s0, $at, .L802607AC
	nop
	li.u    $at, 0x10020372
	li.l    $at, 0x10020372
	beq     $s0, $at, .L80260874
	nop
	b       .L80260888
	nop
.L80260688:
	sltiu   $at, $s0, 0x0550
	bnez    $at, .L802606FC
	nop
	li.u    $at, 0x00020371
	li.l    $at, 0x00020371
	sltu    $at, $s0, $at
	bnez    $at, .L802606D8
	nop
	li.u    $at, 0xFFEFFCBF
	li.l    $at, 0xFFEFFCBF
	addu    $t8, $s0, $at
	sltiu   $at, $t8, 0x0005
	beqz    $at, .L80260888
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_hang_80336950)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_hang_80336950)($at)
	jr      $t8
	nop
.L802606D8:
	li      $at, 0x1371
	beq     $s0, $at, .L80260860
	nop
	li.u    $at, 0x00020370
	li.l    $at, 0x00020370
	beq     $s0, $at, .L8026084C
	nop
	b       .L80260888
	nop
.L802606FC:
	li      $at, 0x054C
	beq     $s0, $at, .L802607FC
	nop
	li      $at, 0x054D
	beq     $s0, $at, .L80260810
	nop
	li      $at, 0x054E
	beq     $s0, $at, .L80260824
	nop
	li      $at, 0x054F
	beq     $s0, $at, .L80260838
	nop
	b       .L80260888
	nop
.L80260734:
	jal     pl_hang_8025E21C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.globl L80260748
L80260748:
	jal     pl_hang_8025E7A4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.globl L8026075C
L8026075C:
	jal     pl_hang_8025E830
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.globl L80260770
L80260770:
	jal     pl_hang_8025E5A8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.globl L80260784
L80260784:
	jal     pl_hang_8025E930
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.globl L80260798
L80260798:
	jal     pl_hang_8025EA30
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L802607AC:
	jal     pl_hang_8025EF58
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L802607C0:
	jal     pl_hang_8025F0B4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L802607D4:
	jal     pl_hang_8025F1E4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L802607E8:
	jal     pl_hang_8025F6C0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L802607FC:
	jal     pl_hang_8025F970
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L80260810:
	jal     pl_hang_8025F970
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L80260824:
	jal     pl_hang_8025FA64
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L80260838:
	jal     pl_hang_8025FAE8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L8026084C:
	jal     pl_hang_8025FB90
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L80260860:
	jal     pl_hang_8025FC6C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L80260874:
	jal     pl_hang_80260154
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80260888
	nop
.L80260888:
	b       .L80260898
	lw      $v0, 0x0024($sp)
	b       .L80260898
	nop
.L80260898:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

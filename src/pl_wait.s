.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_wait_802608B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(pl_wait_80336970)
	lwc1    $f6, %lo(pl_wait_80336970)($at)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x0020($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80260904
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_physics_80255654
	move    $a2, $0
	b       .L80260A9C
	nop
.L80260904:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, .L80260934
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260A9C
	nop
.L80260934:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, .L80260964
	nop
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80260A9C
	nop
.L80260964:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0004
	beqz    $t6, .L80260994
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260A9C
	nop
.L80260994:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L802609C0
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260A9C
	nop
.L802609C0:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0010
	beqz    $t2, .L802609F0
	nop
	li.u    $a1, 0x0C000227
	li.l    $a1, 0x0C000227
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260A9C
	nop
.L802609F0:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, .L80260A2C
	nop
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0024($t6)
	sh      $t7, 0x002E($t6)
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260A9C
	nop
.L80260A2C:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x2000
	beqz    $t0, .L80260A5C
	nop
	li.u    $a1, 0x00800380
	li.l    $a1, 0x00800380
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260A9C
	nop
.L80260A5C:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x4000
	beqz    $t3, .L80260A8C
	nop
	li.u    $a1, 0x0C008221
	li.l    $a1, 0x0C008221
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260A9C
	nop
.L80260A8C:
	b       .L80260A9C
	move    $v0, $0
	b       .L80260A9C
	nop
.L80260A9C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80260AAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(pl_wait_80336974)
	lwc1    $f6, %lo(pl_wait_80336974)($at)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x0020($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80260AF8
	nop
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0018($sp)
	jal     pl_physics_80255654
	move    $a2, $0
	b       .L80260CA4
	nop
.L80260AF8:
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x007C($t8)
	lw      $t0, 0x0190($t9)
	andi    $t1, $t0, 0x0040
	beqz    $t1, .L80260B40
	nop
	lw      $t2, 0x0018($sp)
	li      $at, -0x0041
	lw      $t3, 0x007C($t2)
	lw      $t4, 0x0190($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x0190($t3)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0387
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260CA4
	nop
.L80260B40:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80260B70
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80260CA4
	nop
.L80260B70:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L80260BA0
	nop
	li.u    $a1, 0x030008A0
	li.l    $a1, 0x030008A0
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80260CA4
	nop
.L80260BA0:
	lw      $t2, 0x0018($sp)
	lhu     $t4, 0x0002($t2)
	andi    $t5, $t4, 0x0004
	beqz    $t5, .L80260BD0
	nop
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260CA4
	nop
.L80260BD0:
	lw      $t3, 0x0018($sp)
	lhu     $t6, 0x0002($t3)
	andi    $t7, $t6, 0x0008
	beqz    $t7, .L80260BFC
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0051
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260CA4
	nop
.L80260BFC:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L80260C34
	nop
	lw      $t1, 0x0018($sp)
	lh      $t2, 0x0024($t1)
	sh      $t2, 0x002E($t1)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0442
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260CA4
	nop
.L80260C34:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t3, $t5, 0x2000
	beqz    $t3, .L80260C64
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260CA4
	nop
.L80260C64:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, .L80260C94
	nop
	li.u    $a1, 0x0C008221
	li.l    $a1, 0x0C008221
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80260CA4
	nop
.L80260C94:
	b       .L80260CA4
	move    $v0, $0
	b       .L80260CA4
	nop
.L80260CA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80260CB4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80260D00
	nop
	li.u    $a1, 0x0002020D
	li.l    $a1, 0x0002020D
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260F80
	nop
.L80260D00:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0100
	beqz    $t9, .L80260D30
	nop
	li.u    $a1, 0x0C40020A
	li.l    $a1, 0x0C40020A
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260F80
	nop
.L80260D30:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x001C($t0)
	andi    $t2, $t1, 0x0001
	bnez    $t2, .L80260D70
	nop
	lh      $t3, 0x00AE($t0)
	slti    $at, $t3, 0x0300
	beqz    $at, .L80260D70
	nop
	li.u    $a1, 0x0C400205
	li.l    $a1, 0x0C400205
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260F80
	nop
.L80260D70:
	jal     pl_wait_802608B0
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80260D88
	nop
	b       .L80260F80
	li      $v0, 0x0001
.L80260D88:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0003
	lhu     $t5, 0x0018($t4)
	bne     $t5, $at, .L80260DF8
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x0002
	lw      $t7, 0x0090($t6)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0007
	bne     $t9, $at, .L80260DDC
	nop
	li.u    $a1, 0x0C40020B
	li.l    $a1, 0x0C40020B
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260F80
	nop
	b       .L80260DF8
	nop
.L80260DDC:
	li.u    $a1, 0x0C400202
	li.l    $a1, 0x0C400202
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80260F80
	nop
.L80260DF8:
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x001C($t1)
	andi    $t0, $t2, 0x0001
	beqz    $t0, .L80260E20
	nop
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x007E
	b       .L80260F68
	nop
.L80260E20:
	lw      $t3, 0x0028($sp)
	lhu     $s0, 0x0018($t3)
	beqz    $s0, .L80260E50
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80260E64
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80260E78
	nop
	b       .L80260E8C
	nop
.L80260E50:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00C3
	b       .L80260E8C
	nop
.L80260E64:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00C4
	b       .L80260E8C
	nop
.L80260E78:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00C5
	b       .L80260E8C
	nop
.L80260E8C:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80260F68
	nop
	lw      $t4, 0x0028($sp)
	li      $at, 0x0003
	lhu     $t5, 0x0018($t4)
	addiu   $t6, $t5, 0x0001
	sh      $t6, 0x0018($t4)
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x0018($t7)
	bne     $t8, $at, .L80260F68
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, -0x8000
	jal     player_80251F24
	li      $a2, 0x42700000
	lw      $t9, 0x0028($sp)
	lwc1    $f8, 0x0040($t9)
	sub.s   $f10, $f8, $f0
	swc1    $f10, 0x0024($sp)
	li      $at, 0xC1C00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1t    .L80260F30
	nop
	li      $at, 0x41C00000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f16
	nop
	bc1t    .L80260F30
	nop
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0068($t1)
	lb      $t0, 0x0004($t2)
	andi    $t3, $t0, 0x0001
	beqz    $t3, .L80260F3C
	nop
.L80260F30:
	lw      $t5, 0x0028($sp)
	b       .L80260F68
	sh      $0, 0x0018($t5)
.L80260F3C:
	lw      $t6, 0x0028($sp)
	lhu     $t4, 0x001A($t6)
	addiu   $t7, $t4, 0x0001
	sh      $t7, 0x001A($t6)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x000A
	beqz    $at, .L80260F68
	nop
	lw      $t1, 0x0028($sp)
	sh      $0, 0x0018($t1)
.L80260F68:
	jal     pl_physics_80255A34
	lw      $a0, 0x0028($sp)
	b       .L80260F80
	move    $v0, $0
	b       .L80260F80
	nop
.L80260F80:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_80260F94:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	lhu     $t7, 0x0018($t6)
	bne     $t7, $t8, .L80260FE8
	nop
	lw      $t9, 0x0088($t6)
	lw      $t1, 0x0020($sp)
	lh      $t0, 0x0040($t9)
	bne     $t0, $t1, .L80260FE8
	nop
	lw      $t2, 0x0018($sp)
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80260FE8:
	b       .L80260FF0
	nop
.L80260FF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261000:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_wait_802608B0
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80261028
	nop
	b       .L80261254
	li      $v0, 0x0001
.L80261028:
	lw      $t6, 0x0028($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80261064
	nop
	li.u    $a1, 0x0002020D
	li.l    $a1, 0x0002020D
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261254
	nop
.L80261064:
	lw      $t7, 0x0028($sp)
	li      $at, 0x0004
	lhu     $t8, 0x0018($t7)
	bne     $t8, $at, .L80261094
	nop
	li.u    $a1, 0x0C000203
	li.l    $a1, 0x0C000203
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261254
	nop
.L80261094:
	lw      $t9, 0x0028($sp)
	lhu     $s0, 0x0018($t9)
	beqz    $s0, .L802610D0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802610E8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80261100
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L80261128
	nop
	b       .L80261150
	nop
.L802610D0:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0081
	sw      $v0, 0x0024($sp)
	b       .L80261150
	nop
.L802610E8:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0082
	sw      $v0, 0x0024($sp)
	b       .L80261150
	nop
.L80261100:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0083
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0002
	lw      $t2, 0x0098($t1)
	sb      $t0, 0x0005($t2)
	b       .L80261150
	nop
.L80261128:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0084
	sw      $v0, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	li      $t3, 0x0002
	lw      $t5, 0x0098($t4)
	sb      $t3, 0x0005($t5)
	b       .L80261150
	nop
.L80261150:
	li.u    $a3, 0x043F8081
	li.l    $a3, 0x043F8081
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0001
	jal     pl_wait_80260F94
	li      $a2, 0x0029
	li.u    $a3, 0x043F8081
	li.l    $a3, 0x043F8081
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0001
	jal     pl_wait_80260F94
	li      $a2, 0x0031
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x04188081
	li.l    $at, 0x04188081
	lw      $a3, 0x0014($t6)
	li      $a1, 0x0003
	li      $a2, 0x000F
	move    $a0, $t6
	jal     pl_wait_80260F94
	addu    $a3, $a3, $at
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802611C4
	nop
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x0018($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x0018($t7)
.L802611C4:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t0, 0x0018($t1)
	bne     $t0, $at, .L80261200
	nop
	lw      $t2, 0x0024($sp)
	li      $at, -0x0001
	bne     $t2, $at, .L80261200
	nop
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x240D8081
	li.l    $a0, 0x240D8081
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80261200:
	lw      $t3, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t5, 0x0018($t3)
	bne     $t5, $at, .L8026123C
	nop
	lw      $t6, 0x0024($sp)
	li      $at, -0x0001
	bne     $t6, $at, .L8026123C
	nop
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x24378081
	li.l    $a0, 0x24378081
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026123C:
	jal     pl_physics_80255A34
	lw      $a0, 0x0028($sp)
	b       .L80261254
	move    $v0, $0
	b       .L80261254
	nop
.L80261254:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_80261268:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0xA41F
	beqz    $t8, .L802612AC
	nop
	lw      $t9, 0x0028($sp)
	li.u    $a1, 0x0C000204
	li.l    $a1, 0x0C000204
	move    $a0, $t9
	jal     player_80252CF4
	lhu     $a2, 0x0018($t9)
	b       .L802614E8
	nop
.L802612AC:
	lw      $t0, 0x0028($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802612EC
	nop
	lw      $t1, 0x0028($sp)
	li.u    $a1, 0x0C000204
	li.l    $a1, 0x0C000204
	move    $a0, $t1
	jal     player_80252CF4
	lhu     $a2, 0x0018($t1)
	b       .L802614E8
	nop
.L802612EC:
	lw      $a0, 0x0028($sp)
	li      $a1, -0x8000
	jal     player_80251F24
	li      $a2, 0x42700000
	lw      $t2, 0x0028($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f16
	lwc1    $f8, 0x0040($t2)
	sub.s   $f10, $f8, $f0
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80261340
	nop
	lw      $t3, 0x0028($sp)
	li.u    $a1, 0x0C000204
	li.l    $a1, 0x0C000204
	move    $a0, $t3
	jal     player_80252CF4
	lhu     $a2, 0x0018($t3)
	b       .L802614E8
	nop
.L80261340:
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0003
	lw      $t6, 0x0098($t5)
	sb      $t4, 0x0005($t6)
	jal     pl_physics_80255A34
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	lhu     $s0, 0x0018($t7)
	beqz    $s0, .L80261388
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8026145C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802614AC
	nop
	b       .L802614D8
	nop
.L80261388:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0085
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, -0x0001
	bne     $t8, $at, .L802613C0
	nop
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	bnez    $t0, .L802613C0
	nop
	jal     aud_mute_start
	li      $a0, 0x0002
.L802613C0:
	lw      $t1, 0x0024($sp)
	li      $at, 0x0002
	bne     $t1, $at, .L802613E8
	nop
	lw      $t2, 0x0028($sp)
	li.u    $a0, 0x240E8081
	li.l    $a0, 0x240E8081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802613E8:
	lw      $t3, 0x0024($sp)
	li      $at, 0x0014
	bne     $t3, $at, .L80261410
	nop
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x240F8081
	li.l    $a0, 0x240F8081
	lw      $a1, 0x0088($t5)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80261410:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80261454
	nop
	lw      $t4, 0x0028($sp)
	lhu     $t6, 0x001A($t4)
	addiu   $t7, $t6, 0x0001
	sh      $t7, 0x001A($t4)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x002E
	bnez    $at, .L80261454
	nop
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0018($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x0018($t0)
.L80261454:
	b       .L802614D8
	nop
.L8026145C:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0086
	li      $at, 0x0012
	bne     $v0, $at, .L80261484
	nop
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_80251574
	lw      $a0, 0x0028($sp)
.L80261484:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802614A4
	nop
	lw      $t3, 0x0028($sp)
	lhu     $t5, 0x0018($t3)
	addiu   $t6, $t5, 0x0001
	sh      $t6, 0x0018($t3)
.L802614A4:
	b       .L802614D8
	nop
.L802614AC:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0087
	sw      $v0, 0x0024($sp)
	li.u    $a1, 0x2435FF81
	li.l    $a1, 0x2435FF81
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	b       .L802614D8
	nop
.L802614D8:
	b       .L802614E8
	move    $v0, $0
	b       .L802614E8
	nop
.L802614E8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_802614FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x001A($t6)
	bnez    $t7, .L8026156C
	nop
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x240E8081
	li.l    $a0, 0x240E8081
	lw      $a1, 0x0088($t8)
	jal     Na_g_80321474
	addiu   $a1, $a1, 0x0054
	lw      $t9, 0x0028($sp)
	li.u    $a0, 0x240F8081
	li.l    $a0, 0x240F8081
	lw      $a1, 0x0088($t9)
	jal     Na_g_80321474
	addiu   $a1, $a1, 0x0054
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x2435FF81
	li.l    $a0, 0x2435FF81
	lw      $a1, 0x0088($t0)
	jal     Na_g_80321474
	addiu   $a1, $a1, 0x0054
	jal     aud_mute_end
	li      $a0, 0x0002
.L8026156C:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0400
	beqz    $t3, .L8026159C
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261678
	nop
.L8026159C:
	lw      $t4, 0x0028($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0004
	beqz    $t6, .L802615CC
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261678
	nop
.L802615CC:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L802615F8
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261678
	nop
.L802615F8:
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x001A($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x001A($t0)
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x0015
	bnez    $at, .L80261638
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261678
	nop
.L80261638:
	jal     pl_physics_80255A34
	lw      $a0, 0x0028($sp)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x001C($t5)
	bnez    $t6, .L80261658
	nop
	b       .L8026165C
	li      $s0, 0x00C8
.L80261658:
	li      $s0, 0x00C9
.L8026165C:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	b       .L80261678
	move    $v0, $0
	b       .L80261678
	nop
.L80261678:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_8026168C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L802616CC
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802618C4
	nop
.L802616CC:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L802616FC
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802618C4
	nop
.L802616FC:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0008
	beqz    $t4, .L80261728
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L802618C4
	nop
.L80261728:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0xA41F
	beqz    $t7, .L80261748
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0002
	sh      $t8, 0x0018($t9)
.L80261748:
	jal     pl_physics_80255A34
	lw      $a0, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	lhu     $s0, 0x0018($t0)
	beqz    $s0, .L80261780
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80261824
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026187C
	nop
	b       .L802618B4
	nop
.L80261780:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0019
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $at, 0x0031
	bne     $t1, $at, .L802617CC
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x00020000
	lw      $t3, 0x0008($t2)
	or      $t4, $t3, $at
	sw      $t4, 0x0008($t2)
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x24168081
	li.l    $a0, 0x24168081
	lw      $a1, 0x0088($t5)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802617CC:
	lw      $t6, 0x0024($sp)
	li      $at, 0x0007
	beq     $t6, $at, .L802617E8
	nop
	li      $at, 0x0051
	bne     $t6, $at, .L80261800
	nop
.L802617E8:
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x062C0081
	li.l    $a0, 0x062C0081
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80261800:
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8026181C
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
.L8026181C:
	b       .L802618B4
	nop
.L80261824:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x001B
	sw      $v0, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	li      $at, 0x0009
	beq     $t0, $at, .L8026185C
	nop
	li      $at, 0x0019
	beq     $t0, $at, .L8026185C
	nop
	li      $at, 0x002C
	bne     $t0, $at, .L80261874
	nop
.L8026185C:
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x062C0081
	li.l    $a0, 0x062C0081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80261874:
	b       .L802618B4
	nop
.L8026187C:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x001A
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802618AC
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L802618AC:
	b       .L802618B4
	nop
.L802618B4:
	b       .L802618C4
	move    $v0, $0
	b       .L802618C4
	nop
.L802618C4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_802618D8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_wait_802608B0
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L802618FC
	nop
	b       .L802619C0
	li      $v0, 0x0001
.L802618FC:
	jal     pl_physics_80255A34
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	li      $a1, 0x0030
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0019
	beq     $t6, $at, .L80261930
	nop
	li      $at, 0x0023
	bne     $t6, $at, .L80261948
	nop
.L80261930:
	lw      $t7, 0x0020($sp)
	li.u    $a0, 0x241D8081
	li.l    $a0, 0x241D8081
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80261948:
	lw      $t8, 0x001C($sp)
	li      $at, 0x0032
	beq     $t8, $at, .L80261964
	nop
	li      $at, 0x003A
	bne     $t8, $at, .L8026197C
	nop
.L80261964:
	lw      $t9, 0x0020($sp)
	li.u    $a0, 0x241C8081
	li.l    $a0, 0x241C8081
	lw      $a1, 0x0088($t9)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026197C:
	lw      $t0, 0x001C($sp)
	li      $at, 0x0047
	beq     $t0, $at, .L80261998
	nop
	li      $at, 0x0050
	bne     $t0, $at, .L802619B0
	nop
.L80261998:
	lw      $t1, 0x0020($sp)
	li.u    $a0, 0x241B8081
	li.l    $a0, 0x241B8081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802619B0:
	b       .L802619C0
	move    $v0, $0
	b       .L802619C0
	nop
.L802619C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_wait_802619D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, o_13001650
	jal     segment_to_virtual
	la.l    $a0, o_13001650
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	lw      $t8, 0x020C($t7)
	bne     $v0, $t8, .L80261A14
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x08AE
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261AC0
	nop
.L80261A14:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, .L80261A48
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80261AC0
	nop
.L80261A48:
	lw      $t3, 0x0018($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t3)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80261A84
	nop
	li.u    $a1, 0x0002020D
	li.l    $a1, 0x0002020D
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80261AC0
	nop
.L80261A84:
	jal     pl_wait_80260AAC
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80261A9C
	nop
	b       .L80261AC0
	li      $v0, 0x0001
.L80261A9C:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x003F
	b       .L80261AC0
	move    $v0, $0
	b       .L80261AC0
	nop
.L80261AC0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261AD0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80261B0C
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80261BE8
	nop
.L80261B0C:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80261B3C
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80261BE8
	nop
.L80261B3C:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0008
	beqz    $t4, .L80261B68
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80253178
	move    $a2, $0
	b       .L80261BE8
	nop
.L80261B68:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L80261B94
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0447
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261BE8
	nop
.L80261B94:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x2000
	beqz    $t0, .L80261BC4
	nop
	li.u    $a1, 0x80000589
	li.l    $a1, 0x80000589
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261BE8
	nop
.L80261BC4:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x007D
	b       .L80261BE8
	move    $v0, $0
	b       .L80261BE8
	nop
.L80261BE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261BF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80261C34
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261CDC
	nop
.L80261C34:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x000F
	beqz    $t1, .L80261C58
	nop
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       .L80261CDC
	nop
.L80261C58:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0010
	beqz    $t4, .L80261C88
	nop
	li.u    $a1, 0x0C000227
	li.l    $a1, 0x0C000227
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261CDC
	nop
.L80261C88:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x2000
	beqz    $t7, .L80261CB8
	nop
	li.u    $a1, 0x00800380
	li.l    $a1, 0x00800380
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261CDC
	nop
.L80261CB8:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x007E
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	b       .L80261CDC
	move    $v0, $0
	b       .L80261CDC
	nop
.L80261CDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261CEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80261D34
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261DA4
	nop
.L80261D34:
	jal     pl_wait_802608B0
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80261D4C
	nop
	b       .L80261DA4
	li      $v0, 0x0001
.L80261D4C:
	lw      $t7, 0x0018($sp)
	li      $at, 0x428C0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00C0($t7)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80261D80
	nop
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0076
	b       .L80261D8C
	nop
.L80261D80:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0077
.L80261D8C:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	b       .L80261DA4
	move    $v0, $0
	b       .L80261DA4
	nop
.L80261DA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261DB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80261DF0
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261F60
	nop
.L80261DF0:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L80261E20
	nop
	li.u    $a1, 0x01000883
	li.l    $a1, 0x01000883
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80261F60
	nop
.L80261E20:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0004
	beqz    $t4, .L80261E50
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261F60
	nop
.L80261E50:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, .L80261E7C
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261F60
	nop
.L80261E7C:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0010
	beqz    $t0, .L80261EAC
	nop
	li.u    $a1, 0x0C008222
	li.l    $a1, 0x0C008222
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261F60
	nop
.L80261EAC:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x4000
	bnez    $t3, .L80261EDC
	nop
	li.u    $a1, 0x0C008222
	li.l    $a1, 0x0C008222
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261F60
	nop
.L80261EDC:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0001
	beqz    $t6, .L80261F0C
	nop
	li.u    $a1, 0x0C008223
	li.l    $a1, 0x0C008223
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80261F60
	nop
.L80261F0C:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x2000
	beqz    $t9, .L80261F3C
	nop
	li.u    $a1, 0x00800380
	li.l    $a1, 0x00800380
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	li      $a2, 0x0009
	b       .L80261F60
	nop
.L80261F3C:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0098
	b       .L80261F60
	move    $v0, $0
	b       .L80261F60
	nop
.L80261F60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80261F70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80261FAC
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262070
	nop
.L80261FAC:
	lw      $t9, 0x0018($sp)
	lh      $t0, 0x00AE($t9)
	slti    $at, $t0, 0x0500
	bnez    $at, .L80261FDC
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262070
	nop
.L80261FDC:
	jal     pl_wait_802608B0
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80261FF4
	nop
	b       .L80262070
	li      $v0, 0x0001
.L80261FF4:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00BA
	li      $at, 0x0001
	bne     $v0, $at, .L80262048
	nop
	lui     $a0, %hi(_Na_bss+0x5F18)
	lw      $a0, %lo(_Na_bss+0x5F18)($a0)
	li      $at, 0x0003
	lw      $t3, 0x0018($sp)
	divu    $0, $a0, $at
	mfhi    $t1
	move    $a0, $t1
	lw      $a1, 0x0088($t3)
	sll     $t2, $a0, 16
	li.u    $at, 0x24188081
	li.l    $at, 0x24188081
	move    $a0, $t2
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80262048:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $t5, 0x0018($sp)
	li      $t4, 0x0002
	lw      $t6, 0x0098($t5)
	sb      $t4, 0x0005($t6)
	b       .L80262070
	move    $v0, $0
	b       .L80262070
	nop
.L80262070:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262080:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L802620C0
	nop
	li.u    $a1, 0x0C400205
	li.l    $a1, 0x0C400205
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026216C
	nop
.L802620C0:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, .L802620F0
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026216C
	nop
.L802620F0:
	lw      $t3, 0x0018($sp)
	lh      $t4, 0x00AE($t3)
	slti    $at, $t4, 0x0500
	bnez    $at, .L80262120
	nop
	li.u    $a1, 0x08000207
	li.l    $a1, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026216C
	nop
.L80262120:
	jal     pl_wait_80260AAC
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80262138
	nop
	b       .L8026216C
	li      $v0, 0x0001
.L80262138:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00BA
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $t5, 0x0002
	lw      $t7, 0x0098($t6)
	sb      $t5, 0x0005($t7)
	b       .L8026216C
	move    $v0, $0
	b       .L8026216C
	nop
.L8026216C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_8026217C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	lw      $a1, 0x001C($sp)
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L802621C4
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
.L802621C4:
	b       .L802621CC
	nop
.L802621CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802621DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80262218
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802622CC
	nop
.L80262218:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80262248
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802622CC
	nop
.L80262248:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x2000
	beqz    $t4, .L80262278
	nop
	li.u    $a1, 0x00800380
	li.l    $a1, 0x00800380
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802622CC
	nop
.L80262278:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0010
	bnez    $t7, .L802622A8
	nop
	andi    $t8, $t6, 0x000F
	beqz    $t8, .L802622A8
	nop
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       .L802622CC
	nop
.L802622A8:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_8026217C
	li      $a1, 0x0010
	b       .L802622CC
	move    $v0, $0
	b       .L802622CC
	nop
.L802622CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802622DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80262318
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262388
	nop
.L80262318:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x000F
	beqz    $t1, .L8026233C
	nop
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       .L80262388
	nop
.L8026233C:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_8026217C
	li      $a1, 0x008F
	lw      $t2, 0x0018($sp)
	li      $at, 0x0006
	lw      $t3, 0x0088($t2)
	lh      $t4, 0x0040($t3)
	bne     $t4, $at, .L80262378
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
.L80262378:
	b       .L80262388
	move    $v0, $0
	b       .L80262388
	nop
.L80262388:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262398:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L802623D8
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80262480
	nop
.L802623D8:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, .L80262408
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80262480
	nop
.L80262408:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x000F
	beqz    $t5, .L8026242C
	nop
	jal     player_80253300
	lw      $a0, 0x0018($sp)
	b       .L80262480
	nop
.L8026242C:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L8026245C
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262480
	nop
.L8026245C:
	li.u    $a2, 0x08000207
	li.l    $a2, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     pl_wait_8026217C
	li      $a1, 0x0046
	b       .L80262480
	move    $v0, $0
	b       .L80262480
	nop
.L80262480:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262490:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L802624CC
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80262520
	nop
.L802624CC:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L802624FC
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80262520
	nop
.L802624FC:
	li.u    $a2, 0x0C008220
	li.l    $a2, 0x0C008220
	lw      $a0, 0x0018($sp)
	jal     pl_wait_8026217C
	li      $a1, 0x008D
	b       .L80262520
	move    $v0, $0
	b       .L80262520
	nop
.L80262520:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262530:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L8026256C
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262640
	nop
.L8026256C:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L8026259C
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262640
	nop
.L8026259C:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, .L802625CC
	nop
	li.u    $a1, 0x01000883
	li.l    $a1, 0x01000883
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80262640
	nop
.L802625CC:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, .L802625F8
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262640
	nop
.L802625F8:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0097
	jal     player_8025097C
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80262630
	nop
	li.u    $a1, 0x0C008220
	li.l    $a1, 0x0C008220
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80262630:
	b       .L80262640
	move    $v0, $0
	b       .L80262640
	nop
.L80262640:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262650:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L8026268C
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262760
	nop
.L8026268C:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L802626BC
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262760
	nop
.L802626BC:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, .L802626EC
	nop
	li.u    $a1, 0x01000883
	li.l    $a1, 0x01000883
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80262760
	nop
.L802626EC:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, .L80262718
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262760
	nop
.L80262718:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0096
	jal     player_8025097C
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80262750
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80262750:
	b       .L80262760
	move    $v0, $0
	b       .L80262760
	nop
.L80262760:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262770:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0010
	beqz    $t8, .L802627AC
	nop
	li.u    $a1, 0x0C008222
	li.l    $a1, 0x0C008222
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262880
	nop
.L802627AC:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L802627DC
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262880
	nop
.L802627DC:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0400
	beqz    $t4, .L8026280C
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262880
	nop
.L8026280C:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, .L80262838
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262880
	nop
.L80262838:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x009B
	jal     player_8025097C
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80262870
	nop
	li.u    $a1, 0x04008448
	li.l    $a1, 0x04008448
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80262870:
	b       .L80262880
	move    $v0, $0
	b       .L80262880
	nop
.L80262880:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262890:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L802628CC
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262970
	nop
.L802628CC:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L802628FC
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262970
	nop
.L802628FC:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0008
	beqz    $t4, .L80262928
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262970
	nop
.L80262928:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x009A
	jal     player_8025097C
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80262960
	nop
	li.u    $a1, 0x0C008220
	li.l    $a1, 0x0C008220
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80262960:
	b       .L80262970
	move    $v0, $0
	b       .L80262970
	nop
.L80262970:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262980:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0010
	beqz    $t9, .L802629C4
	nop
	li.u    $a1, 0x00020338
	li.l    $a1, 0x00020338
	lw      $a0, 0x0020($sp)
	move    $a2, $0
	jal     player_802531C4
	li      $a3, 0x0004
	b       .L80262BB4
	nop
.L802629C4:
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x001A($t0)
	bnez    $t1, .L80262A0C
	nop
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0088($t2)
	lw      $t4, 0x0134($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L80262A0C
	nop
	li.u    $a1, 0x00020462
	li.l    $a1, 0x00020462
	lw      $a0, 0x0020($sp)
	move    $a2, $0
	jal     player_802531C4
	li      $a3, 0x000C
	b       .L80262BB4
	nop
.L80262A0C:
	lw      $t6, 0x0020($sp)
	li      $at, 0x0030
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0020($sp)
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, .L80262A4C
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262BB4
	nop
.L80262A4C:
	lw      $t1, 0x0020($sp)
	lhu     $t2, 0x001A($t1)
	bgez    $t2, .L80262A68
	andi    $t3, $t2, 0x000F
	beqz    $t3, .L80262A68
	nop
	addiu   $t3, $t3, -0x0010
.L80262A68:
	sll     $t4, $t3, 12
	sh      $t4, 0x001E($sp)
	lw      $t5, 0x0020($sp)
	li      $t6, 0x0006
	lhu     $t7, 0x001A($t5)
	bgez    $t7, .L80262A8C
	sra     $t8, $t7, 3
	addiu   $at, $t7, 0x0007
	sra     $t8, $at, 3
.L80262A8C:
	subu    $t9, $t6, $t8
	mtc1    $t9, $f4
	li      $at, 0x41000000
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	li      $at, 0x40800000
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0048
	lhu     $t0, 0x001E($sp)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f6
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80262B38
	nop
	lhu     $t3, 0x001E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f10, 0x0018($sp)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f8, %lo(math_sin)($at)
	lw      $t7, 0x0020($sp)
	mul.s   $f16, $f8, $f10
	lwc1    $f18, 0x0070($t7)
	add.s   $f4, $f16, $f18
	b       .L80262B68
	swc1    $f4, 0x0040($t7)
.L80262B38:
	lhu     $t6, 0x001E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0018($sp)
	sra     $t8, $t6, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t0, 0x0020($sp)
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x0070($t0)
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x0040($t0)
.L80262B68:
	lw      $t1, 0x0020($sp)
	lw      $a0, 0x0088($t1)
	addiu   $a1, $t1, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t2, 0x0020($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t2)
	lh      $a2, 0x002E($t2)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	li      $a1, 0x000E
	b       .L80262BB4
	move    $v0, $0
	b       .L80262BB4
	nop
.L80262BB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_wait_80262BC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	lw      $a1, 0x001C($sp)
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80262C14
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262C24
	nop
.L80262C14:
	b       .L80262C24
	move    $v0, $0
	b       .L80262C24
	nop
.L80262C24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262C34:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80262C74
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262D58
	nop
.L80262C74:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0010
	beqz    $t1, .L80262CA4
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262D58
	nop
.L80262CA4:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, .L80262CF4
	nop
	lw      $t5, 0x001C($sp)
	bnez    $t5, .L80262CDC
	nop
	jal     player_80252E5C
	lw      $a0, 0x0018($sp)
	b       .L80262D58
	nop
	b       .L80262CF4
	nop
.L80262CDC:
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80262D58
	nop
.L80262CF4:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x000F
	beqz    $t8, .L80262D18
	nop
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       .L80262D58
	nop
.L80262D18:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, .L80262D48
	nop
	li.u    $a1, 0x00800380
	li.l    $a1, 0x00800380
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80262D58
	nop
.L80262D48:
	b       .L80262D58
	move    $v0, $0
	b       .L80262D58
	nop
.L80262D58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262D68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262C34
	move    $a1, $0
	beqz    $v0, .L80262D90
	nop
	b       .L80262DB4
	li      $v0, 0x0001
.L80262D90:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x004E
	b       .L80262DB4
	move    $v0, $0
	b       .L80262DB4
	nop
.L80262DB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262DC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262C34
	move    $a1, $0
	beqz    $v0, .L80262DEC
	nop
	b       .L80262E10
	li      $v0, 0x0001
.L80262DEC:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x004B
	b       .L80262E10
	move    $v0, $0
	b       .L80262E10
	nop
.L80262E10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262E20:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262C34
	move    $a1, $0
	beqz    $v0, .L80262E48
	nop
	b       .L80262E84
	li      $v0, 0x0001
.L80262E48:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x00BE
	lw      $t6, 0x0018($sp)
	li      $at, 0x8000
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x001C($t7)
	addu    $t9, $t8, $at
	sh      $t9, 0x001C($t7)
	b       .L80262E84
	move    $v0, $0
	b       .L80262E84
	nop
.L80262E84:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262E94:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262C34
	move    $a1, $0
	beqz    $v0, .L80262EBC
	nop
	b       .L80262EE0
	li      $v0, 0x0001
.L80262EBC:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x0057
	b       .L80262EE0
	move    $v0, $0
	b       .L80262EE0
	nop
.L80262EE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262EF0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	jal     pl_wait_80262C34
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80262F1C
	nop
	b       .L80262F40
	li      $v0, 0x0001
.L80262F1C:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x00C0
	b       .L80262F40
	move    $v0, $0
	b       .L80262F40
	nop
.L80262F40:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262F50:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, .L80262F84
	nop
	lw      $t9, 0x0088($t6)
	lh      $t0, 0x0040($t9)
	slti    $at, $t0, 0x0006
	bnez    $at, .L80262F98
	nop
.L80262F84:
	lw      $t1, 0x0018($sp)
	li      $at, -0x0003
	lhu     $t2, 0x0002($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0002($t1)
.L80262F98:
	li.u    $a1, 0x01000883
	li.l    $a1, 0x01000883
	jal     pl_wait_80262C34
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80262FB8
	nop
	b       .L80262FDC
	li      $v0, 0x0001
.L80262FB8:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x00C0
	b       .L80262FDC
	move    $v0, $0
	b       .L80262FDC
	nop
.L80262FDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_80262FEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, -0x2011
	lhu     $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262C34
	move    $a1, $0
	beqz    $v0, .L80263028
	nop
	b       .L8026304C
	li      $v0, 0x0001
.L80263028:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x0028
	b       .L8026304C
	move    $v0, $0
	b       .L8026304C
	nop
.L8026304C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_8026305C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, -0x2001
	lhu     $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	jal     pl_wait_80262C34
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802630A0
	nop
	b       .L802630E4
	li      $v0, 0x0001
.L802630A0:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0110($t0)
	bnez    $t1, .L802630BC
	nop
	b       .L802630C0
	li      $s0, 0x0011
.L802630BC:
	li      $s0, 0x0012
.L802630C0:
	li.u    $a2, 0x0C008220
	li.l    $a2, 0x0C008220
	lw      $a0, 0x0028($sp)
	jal     pl_wait_80262BC4
	move    $a1, $s0
	b       .L802630E4
	move    $v0, $0
	b       .L802630E4
	nop
.L802630E4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_wait_802630F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80263138
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802631E0
	nop
.L80263138:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, .L80263168
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802631E0
	nop
.L80263168:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x000F
	beqz    $t5, .L8026318C
	nop
	jal     player_80253300
	lw      $a0, 0x0018($sp)
	b       .L802631E0
	nop
.L8026318C:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L802631BC
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802631E0
	nop
.L802631BC:
	li.u    $a2, 0x08000207
	li.l    $a2, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x0040
	b       .L802631E0
	move    $v0, $0
	b       .L802631E0
	nop
.L802631E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802631F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80263230
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802632D8
	nop
.L80263230:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, .L80263260
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802632D8
	nop
.L80263260:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x000F
	beqz    $t5, .L80263284
	nop
	jal     player_80253300
	lw      $a0, 0x0018($sp)
	b       .L802632D8
	nop
.L80263284:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L802632B4
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802632D8
	nop
.L802632B4:
	li.u    $a2, 0x08000207
	li.l    $a2, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x0042
	b       .L802632D8
	move    $v0, $0
	b       .L802632D8
	nop
.L802632D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802632E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80263324
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802633A4
	nop
.L80263324:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80263354
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802633A4
	nop
.L80263354:
	lw      $t2, 0x0018($sp)
	li      $at, 0x0004
	lhu     $t3, 0x001A($t2)
	addiu   $t4, $t3, 0x0001
	sh      $t4, 0x001A($t2)
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x001A($t5)
	bne     $t6, $at, .L80263380
	nop
	jal     collision_8024C780
	lw      $a0, 0x0018($sp)
.L80263380:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x0052
	b       .L802633A4
	move    $v0, $0
	b       .L802633A4
	nop
.L802633A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802633B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, .L802633FC
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802634FC
	nop
.L802633FC:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0004
	beqz    $t3, .L8026342C
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802634FC
	nop
.L8026342C:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0093
	lw      $t4, 0x0018($sp)
	lh      $t5, 0x0034($t4)
	blez    $t5, .L8026348C
	nop
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0034($t6)
	addiu   $t8, $t7, -0x0400
	sh      $t8, 0x0034($t6)
	lw      $t9, 0x0018($sp)
	lh      $t0, 0x0034($t9)
	bgez    $t0, .L80263478
	nop
	lw      $t1, 0x0018($sp)
	sh      $0, 0x0034($t1)
.L80263478:
	lw      $t2, 0x0018($sp)
	lh      $t3, 0x003A($t2)
	lh      $t4, 0x0034($t2)
	addu    $t5, $t3, $t4
	sh      $t5, 0x003A($t2)
.L8026348C:
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0088($t7)
	lh      $t9, 0x003A($t7)
	lh      $t6, 0x001C($t8)
	addu    $t0, $t6, $t9
	sh      $t0, 0x001C($t8)
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L802634EC
	nop
	lw      $t1, 0x0018($sp)
	lh      $t3, 0x0034($t1)
	bnez    $t3, .L802634EC
	nop
	lw      $t4, 0x0018($sp)
	lh      $t5, 0x002E($t4)
	lh      $t2, 0x003A($t4)
	addu    $t7, $t5, $t2
	sh      $t7, 0x002E($t4)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L802634EC:
	b       .L802634FC
	move    $v0, $0
	b       .L802634FC
	nop
.L802634FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_8026350C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, .L80263554
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802635D8
	nop
.L80263554:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0004
	beqz    $t3, .L80263584
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802635D8
	nop
.L80263584:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0008
	beqz    $t6, .L802635B4
	nop
	li.u    $a1, 0x00840452
	li.l    $a1, 0x00840452
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802635D8
	nop
.L802635B4:
	li.u    $a2, 0x0C00023E
	li.l    $a2, 0x0C00023E
	lw      $a0, 0x0018($sp)
	jal     pl_wait_80262BC4
	li      $a1, 0x003A
	b       .L802635D8
	move    $v0, $0
	b       .L802635D8
	nop
.L802635D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_wait_802635E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x040C
	sltu    $t9, $0, $t8
	sw      $t9, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0018($t0)
	bnez    $t1, .L80263648
	nop
	jal     aud_mute_start
	li      $a0, 0x0002
	lw      $t2, 0x0020($sp)
	li      $a1, 0x0006
	li      $a2, 0x0010
	lw      $t3, 0x0090($t2)
	jal     camera_80286188
	lw      $a0, 0x0024($t3)
	lw      $t5, 0x0020($sp)
	li      $t4, 0x0001
	b       .L802636A4
	sh      $t4, 0x0018($t5)
.L80263648:
	lw      $t6, 0x0020($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0010
	beqz    $t8, .L80263668
	nop
	lw      $t9, 0x001C($sp)
	beqz    $t9, .L802636A4
	nop
.L80263668:
	jal     aud_mute_end
	li      $a0, 0x0002
	lw      $t0, 0x0020($sp)
	li      $a1, -0x0001
	li      $a2, 0x0001
	lw      $t1, 0x0090($t0)
	jal     camera_80286188
	lw      $a0, 0x0024($t1)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80263774
	nop
.L802636A4:
	lw      $t2, 0x0020($sp)
	li      $at, 0x002F
	lw      $t3, 0x0068($t2)
	lh      $t4, 0x0000($t3)
	bne     $t4, $at, .L80263750
	nop
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x00FF # 0x000A
	bnez    $at, .L80263750
	nop
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0094($t5)
	lh      $t7, 0x0016($t6)
	sh      $t7, 0x001A($sp)
	lw      $t8, 0x0020($sp)
	li      $at, 0x0003
	lw      $t0, 0x0094($t8)
	lh      $t9, 0x002E($t8)
	lh      $t1, 0x0018($t0)
	sll     $t2, $t1, 2
	div     $0, $t2, $at
	mflo    $t3
	addu    $t4, $t9, $t3
	sh      $t4, 0x0018($sp)
	lh      $t5, 0x001A($sp)
	li      $at, -0x1800
	bne     $t5, $at, .L80263750
	nop
	lh      $t6, 0x0018($sp)
	slti    $at, $t6, -0x6FFF
	bnez    $at, .L80263744
	nop
	slti    $at, $t6, 0x7000
	bnez    $at, .L80263750
	nop
.L80263744:
	lw      $a0, 0x0020($sp)
	jal     game_8024A9CC
	li      $a1, 0x0001
.L80263750:
	jal     pl_physics_80255A34
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	li      $a1, 0x00C2
	b       .L80263774
	move    $v0, $0
	b       .L80263774
	nop
.L80263774:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_wait_80263784:
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
	bc1f    .L802637F0
	nop
	lw      $t9, 0x0018($sp)
	li      $at, 0x1325
	lw      $t0, 0x000C($t9)
	bne     $t0, $at, .L802637D8
	nop
	jal     game_8024983C
	move    $a0, $0
.L802637D8:
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	jal     player_80253488
	lw      $a0, 0x0018($sp)
	b       .L80263888
	nop
.L802637F0:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0040
	beqz    $t3, .L80263828
	nop
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00020339
	li.l    $a1, 0x00020339
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80263888
	nop
.L80263828:
	lw      $t4, 0x0018($sp)
	li.u    $at, 0x0002020E
	li.l    $at, 0x0002020E
	lw      $t5, 0x000C($t4)
	beq     $t5, $at, .L80263878
	nop
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x00AE($t6)
	slti    $at, $t7, 0x0100
	beqz    $at, .L80263878
	nop
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00021311
	li.l    $a1, 0x00021311
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80263888
	nop
.L80263878:
	b       .L80263888
	move    $v0, $0
	b       .L80263888
	nop
.L80263888:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_wait_main
pl_wait_main:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_wait_80263784
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802638C0
	nop
	b       .L80263E48
	li      $v0, 0x0001
.L802638C0:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80255414
	li      $a1, 0x3F000000
	beqz    $v0, .L802638DC
	nop
	b       .L80263E48
	li      $v0, 0x0001
.L802638DC:
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x08000440
	li.l    $at, 0x08000440
	lw      $s0, 0x000C($t6)
	sltu    $at, $s0, $at
	bnez    $at, .L80263A44
	nop
	li.u    $at, 0x0C008225
	li.l    $at, 0x0C008225
	sltu    $at, $s0, $at
	bnez    $at, .L80263994
	nop
	li.u    $at, 0x18800239
	li.l    $at, 0x18800239
	sltu    $at, $s0, $at
	bnez    $at, .L80263938
	nop
	li.u    $at, 0x80000A36
	li.l    $at, 0x80000A36
	beq     $s0, $at, .L80263D40
	nop
	b       L80263E08
	nop
.L80263938:
	li.u    $at, 0x0C40020C
	li.l    $at, 0x0C40020C
	sltu    $at, $s0, $at
	bnez    $at, .L80263964
	nop
	li.u    $at, 0x18800238
	li.l    $at, 0x18800238
	beq     $s0, $at, .L80263D68
	nop
	b       L80263E08
	nop
.L80263964:
	li.u    $at, 0xF3BFFDFF
	li.l    $at, 0xF3BFFDFF
	addu    $t7, $s0, $at
	sltiu   $at, $t7, 0x000B
	beqz    $at, L80263E08
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_wait_80336978)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_wait_80336978)($at)
	jr      $t7
	nop
.L80263994:
	li.u    $at, 0x0C000205
	li.l    $at, 0x0C000205
	sltu    $at, $s0, $at
	bnez    $at, .L80263A1C
	nop
	li.u    $at, 0x0C00023F
	li.l    $at, 0x0C00023F
	sltu    $at, $s0, $at
	bnez    $at, .L802639EC
	nop
	li.u    $at, 0xF3FF7DE0
	li.l    $at, 0xF3FF7DE0
	addu    $t8, $s0, $at
	sltiu   $at, $t8, 0x0005
	beqz    $at, L80263E08
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_wait_803369A4)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_wait_803369A4)($at)
	jr      $t8
	nop
.L802639EC:
	li.u    $at, 0xF3FFFDD9
	li.l    $at, 0xF3FFFDD9
	addu    $t9, $s0, $at
	sltiu   $at, $t9, 0x0018
	beqz    $at, L80263E08
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(pl_wait_803369B8)
	addu    $at, $at, $t9
	lw      $t9, %lo(pl_wait_803369B8)($at)
	jr      $t9
	nop
.L80263A1C:
	li.u    $at, 0x0C000203
	li.l    $at, 0x0C000203
	beq     $s0, $at, .L80263B60
	nop
	li.u    $at, 0x0C000204
	li.l    $at, 0x0C000204
	beq     $s0, $at, .L80263B74
	nop
	b       L80263E08
	nop
.L80263A44:
	li.u    $at, 0x08000207
	li.l    $at, 0x08000207
	sltu    $at, $s0, $at
	bnez    $at, .L80263AF0
	nop
	li.u    $at, 0x08000209
	li.l    $at, 0x08000209
	sltu    $at, $s0, $at
	bnez    $at, .L80263AC8
	nop
	li.u    $at, 0x0800023C
	li.l    $at, 0x0800023C
	sltu    $at, $s0, $at
	bnez    $at, .L80263A98
	nop
	li.u    $at, 0x0800043F
	li.l    $at, 0x0800043F
	beq     $s0, $at, .L80263DF4
	nop
	b       L80263E08
	nop
.L80263A98:
	li.u    $at, 0xF7FFFDDB
	li.l    $at, 0xF7FFFDDB
	addu    $t0, $s0, $at
	sltiu   $at, $t0, 0x0017
	beqz    $at, L80263E08
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(pl_wait_80336A18)
	addu    $at, $at, $t0
	lw      $t0, %lo(pl_wait_80336A18)($at)
	jr      $t0
	nop
.L80263AC8:
	li.u    $at, 0x08000207
	li.l    $at, 0x08000207
	beq     $s0, $at, .L80263BB0
	nop
	li.u    $at, 0x08000208
	li.l    $at, 0x08000208
	beq     $s0, $at, .L80263BC4
	nop
	b       L80263E08
	nop
.L80263AF0:
	li.u    $at, 0x0002020D
	li.l    $at, 0x0002020D
	beq     $s0, $at, .L80263BD8
	nop
	li.u    $at, 0x00020226
	li.l    $at, 0x00020226
	beq     $s0, $at, .L80263CA0
	nop
	li.u    $at, 0x0080023C
	li.l    $at, 0x0080023C
	beq     $s0, $at, .L80263DB8
	nop
	li.u    $at, 0x08000206
	li.l    $at, 0x08000206
	beq     $s0, $at, .L80263B9C
	nop
	b       L80263E08
	nop
.globl L80263B38
L80263B38:
	jal     pl_wait_80260CB4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263B4C
L80263B4C:
	jal     pl_wait_80261000
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263B60:
	jal     pl_wait_80261268
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263B74:
	jal     pl_wait_802614FC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263B88
L80263B88:
	jal     pl_wait_80261F70
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263B9C:
	jal     pl_wait_80262080
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263BB0:
	jal     pl_wait_802619D0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263BC4:
	jal     pl_wait_80261AD0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263BD8:
	jal     pl_wait_80261CEC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263BEC
L80263BEC:
	jal     pl_wait_80261BF8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C00
L80263C00:
	jal     pl_wait_802618D8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C14
L80263C14:
	jal     pl_wait_8026168C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C28
L80263C28:
	jal     pl_wait_80261DB4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C3C
L80263C3C:
	jal     pl_wait_80262530
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C50
L80263C50:
	jal     pl_wait_80262650
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C64
L80263C64:
	jal     pl_wait_80262770
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C78
L80263C78:
	jal     pl_wait_80262890
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263C8C
L80263C8C:
	jal     pl_wait_80262490
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263CA0:
	jal     pl_wait_80262980
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263CB4
L80263CB4:
	jal     pl_wait_802635E8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263CC8
L80263CC8:
	jal     pl_wait_80262D68
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263CDC
L80263CDC:
	jal     pl_wait_80262DC4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263CF0
L80263CF0:
	jal     pl_wait_80262E94
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D04
L80263D04:
	jal     pl_wait_80262E20
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D18
L80263D18:
	jal     pl_wait_802630F8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D2C
L80263D2C:
	jal     pl_wait_802631F0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263D40:
	jal     pl_wait_802632E8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D54
L80263D54:
	jal     pl_wait_80262FEC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263D68:
	jal     pl_wait_802633B4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D7C
L80263D7C:
	jal     pl_wait_80262EF0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263D90
L80263D90:
	jal     pl_wait_80262F50
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263DA4
L80263DA4:
	jal     pl_wait_8026305C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263DB8:
	jal     pl_wait_8026350C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263DCC
L80263DCC:
	jal     pl_wait_802621DC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263DE0
L80263DE0:
	jal     pl_wait_802622DC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.L80263DF4:
	jal     pl_wait_80262398
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80263E08
	nop
.globl L80263E08
L80263E08:
	lw      $t1, 0x0024($sp)
	bnez    $t1, .L80263E38
	nop
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0200
	beqz    $t4, .L80263E38
	nop
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0008($t5)
	ori     $t7, $t6, 0x0080
	sw      $t7, 0x0008($t5)
.L80263E38:
	b       .L80263E48
	lw      $v0, 0x0024($sp)
	b       .L80263E48
	nop
.L80263E48:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

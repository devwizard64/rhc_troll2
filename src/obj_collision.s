.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

obj_collision_802C8F40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	sw      $0, 0x001C($sp)
	lh      $t7, 0x0076($t6)
	blez    $t7, .L802C8FC4
	nop
.L802C8F60:
	la.u    $a0, str_obj_collision_on
	la.l    $a0, str_obj_collision_on
	jal     obj_debug_802CA5B8
	move    $a1, $0
	lw      $t9, 0x001C($sp)
	lw      $t8, 0x0028($sp)
	sll     $t0, $t9, 2
	addu    $t1, $t8, $t0
	lw      $t2, 0x0078($t1)
	sw      $t2, 0x0024($sp)
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lw      $t3, 0x0024($sp)
	beq     $t3, $t4, .L802C8FA4
	nop
	b       .L802C8FD4
	lw      $v0, 0x0024($sp)
.L802C8FA4:
	lw      $t5, 0x001C($sp)
	lw      $t7, 0x0028($sp)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x001C($sp)
	lh      $t9, 0x0076($t7)
	slt     $at, $t6, $t9
	bnez    $at, .L802C8F60
	nop
.L802C8FC4:
	b       .L802C8FD4
	move    $v0, $0
	b       .L802C8FD4
	nop
.L802C8FD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

obj_collision_802C8FE4:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	lw      $t6, 0x0040($sp)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0208($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x003C($sp)
	lw      $t7, 0x0044($sp)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x0208($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0038($sp)
	lw      $t8, 0x0040($sp)
	lw      $t9, 0x0044($sp)
	lwc1    $f4, 0x00A0($t8)
	lwc1    $f6, 0x00A0($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0038($sp)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lw      $t0, 0x0040($sp)
	lw      $t1, 0x0044($sp)
	lwc1    $f4, 0x00A8($t0)
	lwc1    $f6, 0x00A8($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t2, 0x0040($sp)
	lw      $t3, 0x0044($sp)
	lwc1    $f10, 0x01F8($t2)
	lwc1    $f16, 0x01F8($t3)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f8, 0x002C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	lwc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802C91D4
	nop
	lw      $t4, 0x0040($sp)
	lwc1    $f8, 0x003C($sp)
	lwc1    $f4, 0x01FC($t4)
	add.s   $f6, $f4, $f8
	swc1    $f6, 0x0020($sp)
	lw      $t5, 0x0044($sp)
	lwc1    $f16, 0x0038($sp)
	lwc1    $f10, 0x01FC($t5)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f8, 0x001C($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    .L802C90F4
	nop
	b       .L802C91DC
	move    $v0, $0
.L802C90F4:
	lwc1    $f6, 0x0020($sp)
	lwc1    $f10, 0x0038($sp)
	c.lt.s  $f6, $f10
	nop
	bc1f    .L802C9114
	nop
	b       .L802C91DC
	move    $v0, $0
.L802C9114:
	lw      $t6, 0x0040($sp)
	lh      $t7, 0x0076($t6)
	slti    $at, $t7, 0x0004
	bnez    $at, .L802C9130
	nop
	b       .L802C91DC
	move    $v0, $0
.L802C9130:
	lw      $t8, 0x0044($sp)
	lh      $t9, 0x0076($t8)
	slti    $at, $t9, 0x0004
	bnez    $at, .L802C914C
	nop
	b       .L802C91DC
	move    $v0, $0
.L802C914C:
	lw      $t1, 0x0040($sp)
	lw      $t0, 0x0044($sp)
	lh      $t2, 0x0076($t1)
	sll     $t3, $t2, 2
	addu    $t4, $t1, $t3
	sw      $t0, 0x0078($t4)
	lw      $t6, 0x0044($sp)
	lw      $t5, 0x0040($sp)
	lh      $t7, 0x0076($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	sw      $t5, 0x0078($t9)
	lw      $t2, 0x0040($sp)
	lw      $t3, 0x0044($sp)
	lw      $t1, 0x0070($t2)
	lw      $t0, 0x0130($t3)
	or      $t4, $t1, $t0
	sw      $t4, 0x0070($t2)
	lw      $t7, 0x0044($sp)
	lw      $t8, 0x0040($sp)
	lw      $t6, 0x0070($t7)
	lw      $t5, 0x0130($t8)
	or      $t9, $t6, $t5
	sw      $t9, 0x0070($t7)
	lw      $t3, 0x0040($sp)
	lh      $t1, 0x0076($t3)
	addiu   $t0, $t1, 0x0001
	sh      $t0, 0x0076($t3)
	lw      $t4, 0x0044($sp)
	lh      $t2, 0x0076($t4)
	addiu   $t8, $t2, 0x0001
	sh      $t8, 0x0076($t4)
	b       .L802C91DC
	li      $v0, 0x0001
.L802C91D4:
	b       .L802C91DC
	nop
.L802C91DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

obj_collision_802C91EC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	lw      $t6, 0x0040($sp)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0208($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x003C($sp)
	lw      $t7, 0x0044($sp)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x0208($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0038($sp)
	lw      $t8, 0x0040($sp)
	lw      $t9, 0x0044($sp)
	lwc1    $f4, 0x00A0($t8)
	lwc1    $f6, 0x00A0($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0038($sp)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lw      $t0, 0x0040($sp)
	lw      $t1, 0x0044($sp)
	lwc1    $f4, 0x00A8($t0)
	lwc1    $f6, 0x00A8($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t2, 0x0040($sp)
	lw      $t3, 0x0044($sp)
	lwc1    $f10, 0x0200($t2)
	lwc1    $f16, 0x0200($t3)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f8, 0x002C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	lui     $t5, %hi(obj_mario)
	lw      $t5, %lo(obj_mario)($t5)
	lw      $t4, 0x0040($sp)
	bne     $t4, $t5, .L802C92C0
	nop
	lw      $t6, 0x0044($sp)
	lw      $t7, 0x0190($t6)
	ori     $t8, $t7, 0x0002
	sw      $t8, 0x0190($t6)
.L802C92C0:
	lwc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802C9370
	nop
	lw      $t9, 0x0040($sp)
	lwc1    $f8, 0x003C($sp)
	lwc1    $f4, 0x01FC($t9)
	add.s   $f6, $f4, $f8
	swc1    $f6, 0x0020($sp)
	lw      $t0, 0x0044($sp)
	lwc1    $f16, 0x0038($sp)
	lwc1    $f10, 0x0204($t0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f8, 0x001C($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    .L802C9320
	nop
	b       .L802C9378
	move    $v0, $0
.L802C9320:
	lwc1    $f6, 0x0020($sp)
	lwc1    $f10, 0x0038($sp)
	c.lt.s  $f6, $f10
	nop
	bc1f    .L802C9340
	nop
	b       .L802C9378
	move    $v0, $0
.L802C9340:
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lw      $t1, 0x0040($sp)
	bne     $t1, $t2, .L802C9368
	nop
	lw      $t3, 0x0044($sp)
	li      $at, -0x0003
	lw      $t4, 0x0190($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x0190($t3)
.L802C9368:
	b       .L802C9378
	li      $v0, 0x0001
.L802C9370:
	b       .L802C9378
	nop
.L802C9378:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

obj_collision_802C9388:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0060($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	beq     $t7, $a0, .L802C93E8
	nop
.L802C93A0:
	lw      $t8, 0x0004($sp)
	sh      $0, 0x0076($t8)
	lw      $t9, 0x0004($sp)
	sw      $0, 0x0070($t9)
	lw      $t0, 0x0004($sp)
	lw      $t1, 0x009C($t0)
	blez    $t1, .L802C93D0
	nop
	lw      $t2, 0x0004($sp)
	lw      $t3, 0x009C($t2)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x009C($t2)
.L802C93D0:
	lw      $t5, 0x0004($sp)
	lw      $t6, 0x0060($t5)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	bne     $t7, $a0, .L802C93A0
	nop
.L802C93E8:
	b       .L802C93F0
	nop
.L802C93F0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_collision_802C93F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x009C($t6)
	bnez    $t7, .L802C9494
	nop
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	beq     $t8, $t9, .L802C9494
	nop
.L802C942C:
	lw      $t0, 0x001C($sp)
	lw      $t1, 0x009C($t0)
	bnez    $t1, .L802C9478
	nop
	lw      $a0, 0x0018($sp)
	jal     obj_collision_802C8FE4
	lw      $a1, 0x001C($sp)
	beqz    $v0, .L802C9478
	nop
	lw      $t2, 0x001C($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0200($t2)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L802C9478
	nop
	lw      $a0, 0x0018($sp)
	jal     obj_collision_802C91EC
	lw      $a1, 0x001C($sp)
.L802C9478:
	lw      $t3, 0x001C($sp)
	lw      $t4, 0x0060($t3)
	sw      $t4, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	bne     $t5, $t6, .L802C942C
	nop
.L802C9494:
	b       .L802C949C
	nop
.L802C949C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_collision_802C94AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_list)
	lw      $t6, %lo(obj_list)($t6)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0060($t7)
	sw      $t8, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x001C($sp)
	beq     $t9, $t0, .L802C959C
	nop
.L802C94DC:
	lw      $t1, 0x0018($sp)
	lw      $a2, 0x001C($sp)
	move    $a0, $t1
	jal     obj_collision_802C93F8
	lw      $a1, 0x0060($t1)
	lui     $t2, %hi(obj_list)
	lw      $t2, %lo(obj_list)($t2)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0470($t2)
	jal     obj_collision_802C93F8
	addiu   $a2, $t2, 0x0410
	lui     $t3, %hi(obj_list)
	lw      $t3, %lo(obj_list)($t3)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x02D0($t3)
	jal     obj_collision_802C93F8
	addiu   $a2, $t3, 0x0270
	lui     $t4, %hi(obj_list)
	lw      $t4, %lo(obj_list)($t4)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0200($t4)
	jal     obj_collision_802C93F8
	addiu   $a2, $t4, 0x01A0
	lui     $t5, %hi(obj_list)
	lw      $t5, %lo(obj_list)($t5)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0268($t5)
	jal     obj_collision_802C93F8
	addiu   $a2, $t5, 0x0208
	lui     $t6, %hi(obj_list)
	lw      $t6, %lo(obj_list)($t6)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0408($t6)
	jal     obj_collision_802C93F8
	addiu   $a2, $t6, 0x03A8
	lui     $t7, %hi(obj_list)
	lw      $t7, %lo(obj_list)($t7)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0130($t7)
	jal     obj_collision_802C93F8
	addiu   $a2, $t7, 0x00D0
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x001C($sp)
	bne     $t0, $t1, .L802C94DC
	nop
.L802C959C:
	b       .L802C95A4
	nop
.L802C95A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_collision_802C95B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_list)
	lw      $t6, %lo(obj_list)($t6)
	addiu   $t7, $t6, 0x0208
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x001C($sp)
	beq     $t0, $t1, .L802C9618
	nop
.L802C95E8:
	lw      $t2, 0x0018($sp)
	lw      $a2, 0x001C($sp)
	move    $a0, $t2
	jal     obj_collision_802C93F8
	lw      $a1, 0x0060($t2)
	lw      $t3, 0x0018($sp)
	lw      $t4, 0x0060($t3)
	sw      $t4, 0x0018($sp)
	lw      $t5, 0x0018($sp)
	lw      $t6, 0x001C($sp)
	bne     $t5, $t6, .L802C95E8
	nop
.L802C9618:
	b       .L802C9620
	nop
.L802C9620:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_collision_802C9630:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_list)
	lw      $t6, %lo(obj_list)($t6)
	addiu   $t7, $t6, 0x00D0
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x001C($sp)
	beq     $t0, $t1, .L802C970C
	nop
.L802C9664:
	lw      $t2, 0x0018($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t2)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C96F0
	nop
	lh      $t3, 0x0074($t2)
	andi    $t4, $t3, 0x0200
	bnez    $t4, .L802C96F0
	nop
	lw      $t5, 0x0018($sp)
	lw      $a2, 0x001C($sp)
	move    $a0, $t5
	jal     obj_collision_802C93F8
	lw      $a1, 0x0060($t5)
	lui     $t6, %hi(obj_list)
	lw      $t6, %lo(obj_list)($t6)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0200($t6)
	jal     obj_collision_802C93F8
	addiu   $a2, $t6, 0x01A0
	lui     $t7, %hi(obj_list)
	lw      $t7, %lo(obj_list)($t7)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0268($t7)
	jal     obj_collision_802C93F8
	addiu   $a2, $t7, 0x0208
	lui     $t8, %hi(obj_list)
	lw      $t8, %lo(obj_list)($t8)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0408($t8)
	jal     obj_collision_802C93F8
	addiu   $a2, $t8, 0x03A8
.L802C96F0:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0060($t9)
	sw      $t0, 0x0018($sp)
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x001C($sp)
	bne     $t1, $t2, .L802C9664
	nop
.L802C970C:
	b       .L802C9714
	nop
.L802C9714:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_collision_802C9724
obj_collision_802C9724:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(obj_list)
	lw      $a0, %lo(obj_list)($a0)
	jal     obj_collision_802C9388
	addiu   $a0, $a0, 0x0410
	lui     $a0, %hi(obj_list)
	jal     obj_collision_802C9388
	lw      $a0, %lo(obj_list)($a0)
	lui     $a0, %hi(obj_list)
	lw      $a0, %lo(obj_list)($a0)
	jal     obj_collision_802C9388
	addiu   $a0, $a0, 0x0208
	lui     $a0, %hi(obj_list)
	lw      $a0, %lo(obj_list)($a0)
	jal     obj_collision_802C9388
	addiu   $a0, $a0, 0x01A0
	lui     $a0, %hi(obj_list)
	lw      $a0, %lo(obj_list)($a0)
	jal     obj_collision_802C9388
	addiu   $a0, $a0, 0x0270
	lui     $a0, %hi(obj_list)
	lw      $a0, %lo(obj_list)($a0)
	jal     obj_collision_802C9388
	addiu   $a0, $a0, 0x03A8
	lui     $a0, %hi(obj_list)
	lw      $a0, %lo(obj_list)($a0)
	jal     obj_collision_802C9388
	addiu   $a0, $a0, 0x00D0
	jal     obj_collision_802C94AC
	nop
	jal     obj_collision_802C9630
	nop
	jal     obj_collision_802C95B4
	nop
	b       .L802C97B8
	nop
.L802C97B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

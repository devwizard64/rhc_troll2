.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

pl_walk_80263E60:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80252000
	move    $a1, $0
	sh      $v0, 0x001E($sp)
	lh      $t6, 0x001E($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x42200000
	mtc1    $t6, $f4
	lwc1    $f8, 0x0054($t7)
	mtc1    $at, $f16
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	div.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sh      $t9, 0x001E($sp)
	lh      $v0, 0x001E($sp)
	subu    $v0, $0, $v0
	sll     $t0, $v0, 16
	move    $v0, $t0
	sra     $t1, $v0, 16
	b       .L80263ED4
	move    $v0, $t1
	b       .L80263ED4
	nop
.L80263ED4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl pl_walk_80263EE4
pl_walk_80263EE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $a0, 0x0018($sp)
	jal     player_80250D38
	lh      $a1, 0x001E($sp)
	bnez    $v0, .L80263F20
	nop
	lw      $a0, 0x0018($sp)
	jal     player_80250D38
	lh      $a1, 0x0022($sp)
	beqz    $v0, .L8026400C
	nop
.L80263F20:
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L80263F84
	nop
	lw      $t9, 0x0018($sp)
	li      $at, 0x0092
	lw      $t0, 0x0088($t9)
	lh      $t1, 0x0038($t0)
	bne     $t1, $at, .L80263F68
	nop
	li.u    $a1, 0x042F9081
	li.l    $a1, 0x042F9081
	lw      $a0, 0x0018($sp)
	jal     player_80251310
	move    $a2, $0
	b       .L80263F7C
	nop
.L80263F68:
	li.u    $a1, 0x042A9081
	li.l    $a1, 0x042A9081
	lw      $a0, 0x0018($sp)
	jal     player_80251310
	move    $a2, $0
.L80263F7C:
	b       .L8026400C
	nop
.L80263F84:
	lw      $t2, 0x0018($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80263FC4
	nop
	lw      $t3, 0x0018($sp)
	li.u    $a0, 0x042E0081
	li.l    $a0, 0x042E0081
	lw      $a1, 0x0088($t3)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8026400C
	nop
.L80263FC4:
	lw      $t4, 0x0018($sp)
	li      $at, 0x0092
	lw      $t5, 0x0088($t4)
	lh      $t6, 0x0038($t5)
	bne     $t6, $at, .L80263FF8
	nop
	li.u    $a1, 0x06208081
	li.l    $a1, 0x06208081
	lw      $a0, 0x0018($sp)
	jal     player_80251310
	move    $a2, $0
	b       .L8026400C
	nop
.L80263FF8:
	li.u    $a1, 0x06108081
	li.l    $a1, 0x06108081
	lw      $a0, 0x0018($sp)
	jal     player_80251310
	move    $a2, $0
.L8026400C:
	b       .L80264014
	nop
.L80264014:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80264024:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lwc1    $f4, 0x0070($t6)
	swc1    $f4, 0x0040($t6)
	lw      $t7, 0x0018($sp)
	la.u    $t0, pl_walk_8033B2C0
	la.l    $t0, pl_walk_8033B2C0
	lhu     $t8, 0x0000($t7)
	li      $a3, 0x42200000
	addiu   $a1, $t7, 0x003C
	sll     $t9, $t8, 6
	addu    $a0, $t9, $t0
	jal     mtxf_ground
	lh      $a2, 0x002E($t7)
	lw      $t1, 0x0018($sp)
	la.u    $t4, pl_walk_8033B2C0
	la.l    $t4, pl_walk_8033B2C0
	lhu     $t2, 0x0000($t1)
	lw      $t6, 0x0088($t1)
	sll     $t3, $t2, 6
	addu    $t5, $t3, $t4
	sw      $t5, 0x0050($t6)
	b       .L8026408C
	nop
.L8026408C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_8026409C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0024($t6)
	sh      $t7, 0x002E($t6)
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     player_80252CF4
	lw      $a2, 0x0024($sp)
	b       .L802640EC
	nop
	b       .L802640EC
	nop
.L802640EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_802640FC:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0050($sp)
	lw      $t6, 0x0050($sp)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8026429C
	nop
	lw      $t7, 0x0050($sp)
	lwc1    $f8, 0x003C($t7)
	swc1    $f8, 0x0028($sp)
	lw      $t8, 0x0050($sp)
	lwc1    $f10, 0x0040($t8)
	swc1    $f10, 0x002C($sp)
	lw      $t9, 0x0050($sp)
	lwc1    $f16, 0x0044($t9)
	swc1    $f16, 0x0030($sp)
	li      $at, 0x41200000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0038($sp)
	li      $at, 0xC1200000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0034($sp)
	jal     map_80380E8C
	addiu   $a0, $sp, 0x0028
	beqz    $v0, .L8026429C
	nop
	lwc1    $f12, 0x0028($sp)
	lwc1    $f14, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	jal     map_80381900
	addiu   $a3, $sp, 0x0024
	swc1    $f0, 0x0020($sp)
	lw      $t0, 0x0024($sp)
	beqz    $t0, .L8026429C
	nop
	lwc1    $f6, 0x002C($sp)
	lwc1    $f8, 0x0020($sp)
	li      $at, 0x43200000
	mtc1    $at, $f16
	sub.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8026429C
	nop
	lh      $t1, 0x003E($sp)
	sll     $t2, $t1, 2
	addu    $t3, $sp, $t2
	lw      $t3, 0x003C($t3)
	sw      $t3, 0x001C($sp)
	lw      $t4, 0x001C($sp)
	lwc1    $f12, 0x0024($t4)
	jal     atan2
	lwc1    $f14, 0x001C($t4)
	sh      $v0, 0x001A($sp)
	lw      $t6, 0x0050($sp)
	lh      $t5, 0x001A($sp)
	lh      $t7, 0x002E($t6)
	subu    $t8, $t5, $t7
	sh      $t8, 0x0018($sp)
	lh      $t9, 0x0018($sp)
	slti    $at, $t9, -0x3FFF
	bnez    $at, .L8026429C
	nop
	slti    $at, $t9, 0x4000
	beqz    $at, .L8026429C
	nop
	lw      $t0, 0x001C($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($t0)
	lwc1    $f8, 0x0028($sp)
	lw      $t1, 0x0050($sp)
	mul.s   $f6, $f18, $f4
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x003C($t1)
	lw      $t2, 0x001C($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($t2)
	lwc1    $f8, 0x0030($sp)
	lw      $t3, 0x0050($sp)
	mul.s   $f4, $f16, $f18
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x0044($t3)
	lw      $t4, 0x0050($sp)
	sh      $0, 0x002C($t4)
	lh      $t6, 0x001A($sp)
	lw      $t7, 0x0050($sp)
	li      $at, 0x8000
	addu    $t5, $t6, $at
	sh      $t5, 0x002E($t7)
	lw      $a0, 0x0050($sp)
	li      $a1, 0x054E
	jal     player_80252CF4
	move    $a2, $0
	lw      $a0, 0x0050($sp)
	jal     player_802509B8
	li      $a1, 0x001C
.L8026429C:
	b       .L802642A4
	nop
.L802642A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

pl_walk_802642B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026430C
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_physics_802552FC
	li      $a1, 0x0001
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80264328
	nop
.L8026430C:
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80264328:
	b       .L80264330
	nop
.L80264330:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80264340:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L8026438C
	nop
	li.u    $a1, 0x03000894
	li.l    $a1, 0x03000894
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802643FC
	nop
	b       .L802643EC
	nop
.L8026438C:
	lw      $t9, 0x0018($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802643D0
	nop
	li.u    $a1, 0x01000882
	li.l    $a1, 0x01000882
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802643FC
	nop
	b       .L802643EC
	nop
.L802643D0:
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802643FC
	nop
.L802643EC:
	b       .L802643FC
	move    $v0, $0
	b       .L802643FC
	nop
.L802643FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_8026440C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	lwc1    $f12, 0x0024($t8)
	jal     atan2
	lwc1    $f14, 0x001C($t8)
	sh      $v0, 0x0022($sp)
	lw      $t9, 0x0024($sp)
	lwc1    $f4, 0x001C($t9)
	lwc1    $f8, 0x0024($t9)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x001C($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f16, 0x0020($t0)
	swc1    $f16, 0x0018($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x001C($sp)
	lhu     $t1, 0x0022($sp)
	lui     $at, %hi(math_sin)
	mul.s   $f8, $f18, $f4
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t4, 0x0030($sp)
	mul.s   $f10, $f8, $f6
	lwc1    $f16, 0x0058($t4)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0058($t4)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f8, 0x001C($sp)
	lhu     $t5, 0x0022($sp)
	lui     $at, %hi(math_cos)
	mul.s   $f6, $f4, $f8
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	lw      $t8, 0x0030($sp)
	mul.s   $f10, $f6, $f16
	lwc1    $f18, 0x005C($t8)
	add.s   $f4, $f18, $f10
	swc1    $f4, 0x005C($t8)
	lw      $t9, 0x0030($sp)
	lwc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0058($t9)
	mul.s   $f16, $f8, $f6
	swc1    $f16, 0x0058($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f18, 0x005C($t0)
	mul.s   $f4, $f18, $f10
	swc1    $f4, 0x005C($t0)
	lw      $t1, 0x0030($sp)
	lwc1    $f12, 0x005C($t1)
	jal     atan2
	lwc1    $f14, 0x0058($t1)
	lw      $t2, 0x0030($sp)
	sh      $v0, 0x0038($t2)
	lw      $t3, 0x0030($sp)
	lh      $t4, 0x002E($t3)
	lh      $t5, 0x0038($t3)
	subu    $t6, $t4, $t5
	sh      $t6, 0x002A($sp)
	lh      $t7, 0x002A($sp)
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	blez    $t8, .L80264570
	nop
	slti    $at, $t8, 0x4001
	beqz    $at, .L80264570
	nop
	lw      $t9, 0x002C($sp)
	addiu   $t0, $t9, -0x0200
	bgez    $t0, .L80264568
	sw      $t0, 0x002C($sp)
	sw      $0, 0x002C($sp)
.L80264568:
	b       .L80264624
	nop
.L80264570:
	lw      $t1, 0x002C($sp)
	slti    $at, $t1, -0x3FFF
	bnez    $at, .L802645A4
	nop
	bgez    $t1, .L802645A4
	nop
	lw      $t2, 0x002C($sp)
	addiu   $t3, $t2, 0x0200
	blez    $t3, .L8026459C
	sw      $t3, 0x002C($sp)
	sw      $0, 0x002C($sp)
.L8026459C:
	b       .L80264624
	nop
.L802645A4:
	lw      $t4, 0x002C($sp)
	slti    $at, $t4, 0x4001
	bnez    $at, .L802645EC
	nop
	li      $at, 0x8000
	slt     $at, $t4, $at
	beqz    $at, .L802645EC
	nop
	lw      $t5, 0x002C($sp)
	li      $at, 0x8001
	addiu   $t6, $t5, 0x0200
	slt     $at, $t6, $at
	bnez    $at, .L802645E4
	sw      $t6, 0x002C($sp)
	li      $t7, 0x8000
	sw      $t7, 0x002C($sp)
.L802645E4:
	b       .L80264624
	nop
.L802645EC:
	lw      $t8, 0x002C($sp)
	slti    $at, $t8, -0x7FFF
	bnez    $at, .L80264624
	nop
	slti    $at, $t8, -0x4000
	beqz    $at, .L80264624
	nop
	lw      $t9, 0x002C($sp)
	addiu   $t0, $t9, -0x0200
	slti    $at, $t0, -0x8000
	beqz    $at, .L80264624
	sw      $t0, 0x002C($sp)
	li      $t1, -0x8000
	sw      $t1, 0x002C($sp)
.L80264624:
	lw      $t2, 0x0030($sp)
	lw      $t4, 0x002C($sp)
	lh      $t3, 0x0038($t2)
	addu    $t5, $t3, $t4
	sh      $t5, 0x002E($t2)
	lw      $t6, 0x0030($sp)
	lwc1    $f8, 0x0058($t6)
	swc1    $f8, 0x0048($t6)
	mtc1    $0, $f6
	lw      $t7, 0x0030($sp)
	swc1    $f6, 0x004C($t7)
	lw      $t8, 0x0030($sp)
	lwc1    $f16, 0x005C($t8)
	swc1    $f16, 0x0050($t8)
	jal     pl_physics_8025570C
	lw      $a0, 0x0030($sp)
	jal     pl_physics_8025580C
	lw      $a0, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	lwc1    $f18, 0x0058($t9)
	lwc1    $f4, 0x005C($t9)
	mul.s   $f10, $f18, $f18
	nop
	mul.s   $f8, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f10, $f8
	lw      $t0, 0x0030($sp)
	swc1    $f0, 0x0054($t0)
	lw      $t1, 0x0030($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f6, 0x0054($t1)
	c.lt.s  $f16, $f6
	nop
	bc1f    .L802646F4
	nop
	lw      $t3, 0x0030($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lwc1    $f18, 0x0058($t3)
	lwc1    $f8, 0x0054($t3)
	mul.s   $f10, $f18, $f4
	div.s   $f6, $f10, $f8
	swc1    $f6, 0x0058($t3)
	lw      $t4, 0x0030($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f16, 0x005C($t4)
	lwc1    $f10, 0x0054($t4)
	mul.s   $f4, $f16, $f18
	div.s   $f8, $f4, $f10
	swc1    $f8, 0x005C($t4)
.L802646F4:
	lw      $t5, 0x002C($sp)
	slti    $at, $t5, -0x4000
	bnez    $at, .L80264710
	nop
	slti    $at, $t5, 0x4001
	bnez    $at, .L80264728
	nop
.L80264710:
	lw      $t2, 0x0030($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f16
	lwc1    $f6, 0x0054($t2)
	mul.s   $f18, $f6, $f16
	swc1    $f18, 0x0054($t2)
.L80264728:
	b       .L80264730
	nop
.L80264730:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_walk_80264740:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0034($sp)
	lw      $t6, 0x0048($sp)
	lh      $t7, 0x0024($t6)
	lh      $t8, 0x0038($t6)
	subu    $t9, $t7, $t8
	sh      $t9, 0x0032($sp)
	lhu     $t0, 0x0032($sp)
	lui     $at, %hi(math_cos)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x002C($sp)
	lhu     $t3, 0x0032($sp)
	lui     $at, %hi(math_sin)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0028($sp)
	lwc1    $f8, 0x002C($sp)
	mtc1    $0, $f10
	nop
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80264814
	nop
	lw      $t6, 0x0048($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x0054($t6)
	c.le.s  $f18, $f16
	nop
	bc1f    .L80264814
	nop
	lw      $t7, 0x0048($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f4
	lwc1    $f6, 0x0054($t7)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	li      $at, 0x3F000000
	mtc1    $at, $f18
	lwc1    $f6, 0x002C($sp)
	div.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	mul.s   $f8, $f6, $f4
	swc1    $f8, 0x002C($sp)
.L80264814:
	jal     player_8025177C
	lw      $a0, 0x0048($sp)
	move    $s0, $v0
	li      $at, 0x0013
	beq     $s0, $at, .L8026484C
	nop
	li      $at, 0x0014
	beq     $s0, $at, .L802648A0
	nop
	li      $at, 0x0015
	beq     $s0, $at, .L80264948
	nop
	b       .L802648F4
	nop
.L8026484C:
	li      $at, 0x41200000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0040($sp)
	lw      $t8, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f18, 0x0020($t8)
	lwc1    $f4, 0x002C($sp)
	lui     $at, %hi(pl_walk_80336A80)
	div.s   $f6, $f18, $f16
	lwc1    $f10, %lo(pl_walk_80336A80)($at)
	lui     $at, %hi(pl_walk_80336A84)
	lwc1    $f16, %lo(pl_walk_80336A84)($at)
	mul.s   $f8, $f6, $f4
	nop
	mul.s   $f18, $f8, $f10
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x0044($sp)
	b       .L8026499C
	nop
.L802648A0:
	li      $at, 0x41000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0040($sp)
	lw      $t9, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0020($t9)
	lwc1    $f16, 0x002C($sp)
	lui     $at, %hi(pl_walk_80336A88)
	div.s   $f18, $f8, $f10
	lwc1    $f4, %lo(pl_walk_80336A88)($at)
	lui     $at, %hi(pl_walk_80336A8C)
	lwc1    $f10, %lo(pl_walk_80336A8C)($at)
	mul.s   $f6, $f18, $f16
	nop
	mul.s   $f8, $f6, $f4
	add.s   $f18, $f8, $f10
	swc1    $f18, 0x0044($sp)
	b       .L8026499C
	nop
.L802648F4:
	li      $at, 0x40E00000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0040($sp)
	lw      $t0, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f4
	lwc1    $f6, 0x0020($t0)
	lwc1    $f10, 0x002C($sp)
	lui     $at, %hi(pl_walk_80336A90)
	div.s   $f8, $f6, $f4
	lwc1    $f16, %lo(pl_walk_80336A90)($at)
	lui     $at, %hi(pl_walk_80336A94)
	lwc1    $f4, %lo(pl_walk_80336A94)($at)
	mul.s   $f18, $f8, $f10
	nop
	mul.s   $f6, $f18, $f16
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0044($sp)
	b       .L8026499C
	nop
.L80264948:
	li      $at, 0x40A00000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0040($sp)
	lw      $t1, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f18, 0x0020($t1)
	lwc1    $f4, 0x002C($sp)
	lui     $at, %hi(pl_walk_80336A98)
	div.s   $f6, $f18, $f16
	lwc1    $f10, %lo(pl_walk_80336A98)($at)
	lui     $at, %hi(pl_walk_80336A9C)
	lwc1    $f16, %lo(pl_walk_80336A9C)($at)
	mul.s   $f8, $f6, $f4
	nop
	mul.s   $f18, $f8, $f10
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x0044($sp)
	b       .L8026499C
	nop
.L8026499C:
	lw      $t2, 0x0048($sp)
	lwc1    $f4, 0x0058($t2)
	lwc1    $f10, 0x005C($t2)
	mul.s   $f8, $f4, $f4
	nop
	mul.s   $f18, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f18
	swc1    $f0, 0x003C($sp)
	lw      $t3, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f16, 0x0020($t3)
	lwc1    $f10, 0x005C($t3)
	lwc1    $f18, 0x0028($sp)
	div.s   $f4, $f16, $f6
	lui     $at, %hi(pl_walk_80336AA0)
	lwc1    $f6, %lo(pl_walk_80336AA0)($at)
	mul.s   $f8, $f10, $f4
	lwc1    $f4, 0x0058($t3)
	mul.s   $f16, $f8, $f18
	nop
	mul.s   $f10, $f16, $f6
	add.s   $f8, $f4, $f10
	swc1    $f8, 0x0058($t3)
	lw      $t4, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f18, 0x0020($t4)
	lwc1    $f4, 0x0058($t4)
	lwc1    $f8, 0x0028($sp)
	div.s   $f6, $f18, $f16
	lui     $at, %hi(pl_walk_80336AA4)
	lwc1    $f16, %lo(pl_walk_80336AA4)($at)
	mul.s   $f10, $f4, $f6
	lwc1    $f6, 0x005C($t4)
	mul.s   $f18, $f10, $f8
	nop
	mul.s   $f4, $f18, $f16
	sub.s   $f10, $f6, $f4
	swc1    $f10, 0x005C($t4)
	lw      $t5, 0x0048($sp)
	lwc1    $f8, 0x0058($t5)
	lwc1    $f16, 0x005C($t5)
	mul.s   $f18, $f8, $f8
	nop
	mul.s   $f6, $f16, $f16
	jal     sqrtf
	add.s   $f12, $f18, $f6
	swc1    $f0, 0x0038($sp)
	lwc1    $f4, 0x003C($sp)
	mtc1    $0, $f10
	nop
	c.lt.s  $f10, $f4
	nop
	bc1f    .L80264AD4
	nop
	lwc1    $f8, 0x0038($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f16, $f8
	nop
	bc1f    .L80264AD4
	nop
	lw      $t6, 0x0048($sp)
	lwc1    $f6, 0x003C($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f18, 0x0058($t6)
	mul.s   $f4, $f18, $f6
	div.s   $f8, $f4, $f10
	swc1    $f8, 0x0058($t6)
	lw      $t7, 0x0048($sp)
	lwc1    $f18, 0x003C($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f16, 0x005C($t7)
	mul.s   $f6, $f16, $f18
	div.s   $f10, $f6, $f4
	swc1    $f10, 0x005C($t7)
.L80264AD4:
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x0040($sp)
	jal     pl_walk_8026440C
	lw      $a2, 0x0044($sp)
	jal     player_80251CFC
	lw      $a0, 0x0048($sp)
	bnez    $v0, .L80264B30
	nop
	lw      $t8, 0x0048($sp)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f8, 0x0054($t8)
	mul.s   $f16, $f8, $f8
	nop
	mul.s   $f6, $f18, $f18
	c.lt.s  $f16, $f6
	nop
	bc1f    .L80264B30
	nop
	lw      $a0, 0x0048($sp)
	jal     player_80251708
	li      $a1, 0x0000
	li      $t9, 0x0001
	sw      $t9, 0x0034($sp)
.L80264B30:
	b       .L80264B40
	lw      $v0, 0x0034($sp)
	b       .L80264B40
	nop
.L80264B40:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

pl_walk_80264B54:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x0030($sp)
	lw      $t8, 0x0030($sp)
	lwc1    $f4, 0x001C($t8)
	lwc1    $f8, 0x0024($t8)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	lwc1    $f16, 0x0020($t9)
	swc1    $f16, 0x0028($sp)
	lw      $t0, 0x0038($sp)
	lh      $t1, 0x0074($t0)
	lh      $t2, 0x002E($t0)
	subu    $t3, $t1, $t2
	sh      $t3, 0x0026($sp)
	jal     player_80251CFC
	lw      $a0, 0x0038($sp)
	beqz    $v0, .L80264CD4
	nop
	sh      $0, 0x0024($sp)
	lw      $t4, 0x0038($sp)
	li.u    $at, 0x00020464
	li.l    $at, 0x00020464
	lw      $t5, 0x000C($t4)
	beq     $t5, $at, .L80264BFC
	nop
	li.u    $at, 0x00020465
	li.l    $at, 0x00020465
	beq     $t5, $at, .L80264BFC
	nop
	jal     player_8025177C
	lw      $a0, 0x0038($sp)
	sh      $v0, 0x0024($sp)
.L80264BFC:
	lh      $s0, 0x0024($sp)
	li      $at, 0x0013
	beq     $s0, $at, .L80264C2C
	nop
	li      $at, 0x0014
	beq     $s0, $at, .L80264C40
	nop
	li      $at, 0x0015
	beq     $s0, $at, .L80264C68
	nop
	b       .L80264C54
	nop
.L80264C2C:
	lui     $at, %hi(pl_walk_80336AA8)
	lwc1    $f18, %lo(pl_walk_80336AA8)($at)
	swc1    $f18, 0x0034($sp)
	b       .L80264C7C
	nop
.L80264C40:
	lui     $at, %hi(pl_walk_80336AAC)
	lwc1    $f4, %lo(pl_walk_80336AAC)($at)
	swc1    $f4, 0x0034($sp)
	b       .L80264C7C
	nop
.L80264C54:
	lui     $at, %hi(pl_walk_80336AB0)
	lwc1    $f8, %lo(pl_walk_80336AB0)($at)
	swc1    $f8, 0x0034($sp)
	b       .L80264C7C
	nop
.L80264C68:
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0034($sp)
	b       .L80264C7C
	nop
.L80264C7C:
	lh      $t6, 0x0026($sp)
	slti    $at, $t6, -0x3FFF
	bnez    $at, .L80264CB8
	nop
	slti    $at, $t6, 0x4000
	beqz    $at, .L80264CB8
	nop
	lwc1    $f10, 0x0034($sp)
	lwc1    $f16, 0x002C($sp)
	lw      $t7, 0x0038($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0054($t7)
	add.s   $f8, $f4, $f18
	b       .L80264CD4
	swc1    $f8, 0x0054($t7)
.L80264CB8:
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x002C($sp)
	lw      $t8, 0x0038($sp)
	mul.s   $f16, $f6, $f10
	lwc1    $f4, 0x0054($t8)
	sub.s   $f18, $f4, $f16
	swc1    $f18, 0x0054($t8)
.L80264CD4:
	lw      $t9, 0x0038($sp)
	lh      $t0, 0x002E($t9)
	sh      $t0, 0x0038($t9)
	lw      $t1, 0x0038($sp)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x002E($t1)
	lwc1    $f6, 0x0054($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_sin)($at)
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x0058($t1)
	lw      $t5, 0x0038($sp)
	lui     $at, %hi(math_cos)
	lhu     $t6, 0x002E($t5)
	lwc1    $f16, 0x0054($t5)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f18, $f4, $f16
	swc1    $f18, 0x005C($t5)
	lw      $t0, 0x0038($sp)
	lwc1    $f8, 0x0058($t0)
	swc1    $f8, 0x0048($t0)
	mtc1    $0, $f6
	lw      $t9, 0x0038($sp)
	swc1    $f6, 0x004C($t9)
	lw      $t2, 0x0038($sp)
	lwc1    $f10, 0x005C($t2)
	swc1    $f10, 0x0050($t2)
	jal     pl_physics_8025570C
	lw      $a0, 0x0038($sp)
	jal     pl_physics_8025580C
	lw      $a0, 0x0038($sp)
	b       .L80264D6C
	nop
.L80264D6C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_walk_80264D80:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
	jal     pl_walk_80264B54
	lw      $a0, 0x0020($sp)
	jal     player_80251CFC
	lw      $a0, 0x0020($sp)
	bnez    $v0, .L80264DF8
	nop
	lw      $t6, 0x0020($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f4, 0x0054($t6)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t6)
	lw      $t7, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f10, 0x0054($t7)
	mul.s   $f16, $f10, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80264DF8
	nop
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0x0000
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
.L80264DF8:
	b       .L80264E08
	lw      $v0, 0x001C($sp)
	b       .L80264E08
	nop
.L80264E08:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80264E18:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0070($t6)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L80264E90
	nop
	lw      $t8, 0x0020($sp)
	lh      $t9, 0x0076($t8)
	mtc1    $t9, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0070($t8)
	lw      $t1, 0x0020($sp)
	la.u    $t0, pl_physics_8032DAF8
	la.l    $t0, pl_physics_8032DAF8
	sw      $t0, 0x0068($t1)
	lw      $t2, 0x0020($sp)
	lh      $t3, 0x0076($t2)
	lw      $t4, 0x0068($t2)
	mtc1    $t3, $f18
	nop
	cvt.s.w $f6, $f18
	swc1    $f6, 0x0028($t4)
.L80264E90:
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0068($t5)
	beqz    $t6, .L80264EC0
	nop
	lh      $t7, 0x0000($t6)
	li      $at, 0x0009
	bne     $t7, $at, .L80264EC0
	nop
	li      $at, 0x42400000
	mtc1    $at, $f4
	b       .L80264ED0
	swc1    $f4, 0x001C($sp)
.L80264EC0:
	li      $at, 0x42800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x001C($sp)
.L80264ED0:
	lw      $t9, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0020($t9)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80264F08
	nop
	lwc1    $f8, 0x001C($sp)
	swc1    $f8, 0x0018($sp)
.L80264F08:
	li      $at, 0x41C00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0018($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80264F34
	nop
	li      $at, 0x41C00000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0018($sp)
.L80264F34:
	lw      $t8, 0x0020($sp)
	mtc1    $0, $f4
	lwc1    $f6, 0x0054($t8)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80264F6C
	nop
	lw      $t0, 0x0020($sp)
	lui     $at, %hi(pl_walk_80336AB4)
	lwc1    $f10, %lo(pl_walk_80336AB4)($at)
	lwc1    $f8, 0x0054($t0)
	add.s   $f16, $f8, $f10
	b       .L80264FF0
	swc1    $f16, 0x0054($t0)
.L80264F6C:
	lw      $t1, 0x0020($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f18, 0x0054($t1)
	c.le.s  $f18, $f6
	nop
	bc1f    .L80264FB4
	nop
	lw      $t3, 0x0020($sp)
	li      $at, 0x42680000
	mtc1    $at, $f8
	lwc1    $f4, 0x0054($t3)
	lui     $at, %hi(pl_walk_80336AB8)
	lwc1    $f16, %lo(pl_walk_80336AB8)($at)
	div.s   $f10, $f4, $f8
	sub.s   $f18, $f16, $f10
	add.s   $f6, $f4, $f18
	b       .L80264FF0
	swc1    $f6, 0x0054($t3)
.L80264FB4:
	lw      $t2, 0x0020($sp)
	lui     $at, %hi(pl_walk_80336ABC)
	lwc1    $f16, %lo(pl_walk_80336ABC)($at)
	lw      $t4, 0x0068($t2)
	lwc1    $f8, 0x0020($t4)
	c.le.s  $f16, $f8
	nop
	bc1f    .L80264FF0
	nop
	lw      $t5, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f10, 0x0054($t5)
	sub.s   $f18, $f10, $f4
	swc1    $f18, 0x0054($t5)
.L80264FF0:
	lw      $t6, 0x0020($sp)
	li      $at, 0x42800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t6)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80265020
	nop
	li      $at, 0x42800000
	mtc1    $at, $f16
	lw      $t7, 0x0020($sp)
	swc1    $f16, 0x0054($t7)
.L80265020:
	lw      $t9, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0800
	lh      $t8, 0x0024($t9)
	lh      $t0, 0x002E($t9)
	li      $a3, 0x0800
	subu    $a0, $t8, $t0
	sll     $t1, $a0, 16
	move    $a0, $t1
	sra     $t3, $a0, 16
	jal     converge_i
	move    $a0, $t3
	lw      $t2, 0x0020($sp)
	lh      $t4, 0x0024($t2)
	subu    $t5, $t4, $v0
	sh      $t5, 0x002E($t2)
	jal     pl_walk_80264B54
	lw      $a0, 0x0020($sp)
	b       .L80265070
	nop
.L80265070:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80265080:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	sw      $0, 0x0030($sp)
	jal     player_8025177C
	lw      $a0, 0x0038($sp)
	move    $s0, $v0
	li      $at, 0x0013
	beq     $s0, $at, .L802650D4
	nop
	li      $at, 0x0014
	beq     $s0, $at, .L802650F0
	nop
	li      $at, 0x0015
	beq     $s0, $at, .L80265128
	nop
	b       .L8026510C
	nop
.L802650D4:
	lui     $at, %hi(pl_walk_80336AC0)
	lwc1    $f6, %lo(pl_walk_80336AC0)($at)
	lwc1    $f4, 0x003C($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	b       .L80265144
	nop
.L802650F0:
	lui     $at, %hi(pl_walk_80336AC4)
	lwc1    $f16, %lo(pl_walk_80336AC4)($at)
	lwc1    $f10, 0x003C($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	b       .L80265144
	nop
.L8026510C:
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x003C($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	b       .L80265144
	nop
.L80265128:
	li      $at, 0x40400000
	mtc1    $at, $f16
	lwc1    $f10, 0x003C($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	b       .L80265144
	nop
.L80265144:
	lwc1    $f4, 0x0034($sp)
	lw      $t6, 0x0038($sp)
	mtc1    $0, $f14
	mfc1    $a2, $f4
	mfc1    $a3, $f4
	jal     converge_f
	lwc1    $f12, 0x0054($t6)
	mtc1    $0, $f6
	mov.s   $f20, $f0
	lw      $t7, 0x0038($sp)
	c.eq.s  $f20, $f6
	swc1    $f20, 0x0054($t7)
	bc1f    .L80265184
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0030($sp)
.L80265184:
	jal     pl_walk_80264B54
	lw      $a0, 0x0038($sp)
	b       .L8026519C
	lw      $v0, 0x0030($sp)
	b       .L8026519C
	nop
.L8026519C:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

pl_walk_802651B0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sdc1    $f20, 0x0010($sp)
	sw      $0, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	mtc1    $0, $f14
	li      $a2, 0x3F800000
	li      $a3, 0x3F800000
	jal     converge_f
	lwc1    $f12, 0x0054($t6)
	mtc1    $0, $f4
	mov.s   $f20, $f0
	lw      $t7, 0x0028($sp)
	c.eq.s  $f20, $f4
	swc1    $f20, 0x0054($t7)
	bc1f    .L80265200
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0024($sp)
.L80265200:
	lw      $t9, 0x0028($sp)
	move    $a0, $t9
	jal     player_80251708
	lw      $a1, 0x0054($t9)
	jal     pl_physics_8025570C
	lw      $a0, 0x0028($sp)
	jal     pl_physics_8025580C
	lw      $a0, 0x0028($sp)
	b       .L80265230
	lw      $v0, 0x0024($sp)
	b       .L80265230
	nop
.L80265230:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80265244:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0068($t6)
	beqz    $t7, .L80265280
	nop
	lh      $t8, 0x0000($t7)
	li      $at, 0x0009
	bne     $t8, $at, .L80265280
	nop
	li      $at, 0x41C00000
	mtc1    $at, $f4
	b       .L80265290
	swc1    $f4, 0x001C($sp)
.L80265280:
	li      $at, 0x42000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x001C($sp)
.L80265290:
	lw      $t9, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x0020($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802652B4
	nop
	b       .L802652BC
	swc1    $f8, 0x0018($sp)
.L802652B4:
	lwc1    $f16, 0x001C($sp)
	swc1    $f16, 0x0018($sp)
.L802652BC:
	lw      $t0, 0x0020($sp)
	li      $at, 0x41200000
	mtc1    $at, $f4
	lwc1    $f18, 0x00C0($t0)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L8026530C
	nop
	lw      $t1, 0x0020($sp)
	li      $at, 0x40190000
	mtc1    $at, $f7
	lwc1    $f10, 0x00C0($t1)
	mtc1    $0, $f6
	lwc1    $f18, 0x0018($sp)
	cvt.d.s $f8, $f10
	div.d   $f16, $f6, $f8
	cvt.d.s $f4, $f18
	mul.d   $f10, $f4, $f16
	cvt.s.d $f6, $f10
	swc1    $f6, 0x0018($sp)
.L8026530C:
	lw      $t2, 0x0020($sp)
	mtc1    $0, $f18
	lwc1    $f8, 0x0054($t2)
	c.le.s  $f8, $f18
	nop
	bc1f    .L80265344
	nop
	lw      $t3, 0x0020($sp)
	lui     $at, %hi(pl_walk_80336AC8)
	lwc1    $f16, %lo(pl_walk_80336AC8)($at)
	lwc1    $f4, 0x0054($t3)
	add.s   $f10, $f4, $f16
	b       .L802653C8
	swc1    $f10, 0x0054($t3)
.L80265344:
	lw      $t4, 0x0020($sp)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f6, 0x0054($t4)
	c.le.s  $f6, $f8
	nop
	bc1f    .L8026538C
	nop
	lw      $t5, 0x0020($sp)
	li      $at, 0x422C0000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t5)
	lui     $at, %hi(pl_walk_80336ACC)
	lwc1    $f10, %lo(pl_walk_80336ACC)($at)
	div.s   $f16, $f18, $f4
	sub.s   $f6, $f10, $f16
	add.s   $f8, $f18, $f6
	b       .L802653C8
	swc1    $f8, 0x0054($t5)
.L8026538C:
	lw      $t6, 0x0020($sp)
	lui     $at, %hi(pl_walk_80336AD0)
	lwc1    $f10, %lo(pl_walk_80336AD0)($at)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x0020($t7)
	c.le.s  $f10, $f4
	nop
	bc1f    .L802653C8
	nop
	lw      $t8, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t8)
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x0054($t8)
.L802653C8:
	lw      $t9, 0x0020($sp)
	li      $at, 0x42400000
	mtc1    $at, $f4
	lwc1    $f8, 0x0054($t9)
	c.lt.s  $f4, $f8
	nop
	bc1f    .L802653F8
	nop
	li      $at, 0x42400000
	mtc1    $at, $f10
	lw      $t0, 0x0020($sp)
	swc1    $f10, 0x0054($t0)
.L802653F8:
	lw      $t1, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0800
	lh      $t2, 0x0024($t1)
	lh      $t3, 0x002E($t1)
	li      $a3, 0x0800
	subu    $a0, $t2, $t3
	sll     $t4, $a0, 16
	move    $a0, $t4
	sra     $t5, $a0, 16
	jal     converge_i
	move    $a0, $t5
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0024($t6)
	subu    $t8, $t7, $v0
	sh      $t8, 0x002E($t6)
	jal     pl_walk_80264B54
	lw      $a0, 0x0020($sp)
	b       .L80265448
	nop
.L80265448:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80265458:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L802654F4
	nop
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x0090($t9)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0007
	xori    $t3, $t2, 0x0006
	sltiu   $t3, $t3, 0x0001
	sw      $t3, 0x001C($sp)
	lw      $t4, 0x0020($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t4)
	move    $t5, $0
	c.le.s  $f4, $f6
	nop
	bc1f    .L802654BC
	nop
	li      $t5, 0x0001
.L802654BC:
	sw      $t5, 0x0018($sp)
	lw      $t6, 0x001C($sp)
	bnez    $t6, .L802654EC
	nop
	lw      $t7, 0x0018($sp)
	bnez    $t7, .L802654EC
	nop
	lw      $a0, 0x0020($sp)
	jal     player_80251B54
	move    $a1, $0
	beqz    $v0, .L802654F4
	nop
.L802654EC:
	b       .L80265504
	li      $v0, 0x0001
.L802654F4:
	b       .L80265504
	move    $v0, $0
	b       .L80265504
	nop
.L80265504:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80265514:
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x0024($a0)
	lh      $t7, 0x002E($a0)
	subu    $t8, $t6, $t7
	sh      $t8, 0x0006($sp)
	lh      $t9, 0x0006($sp)
	slti    $v0, $t9, -0x471C
	bnez    $v0, .L80265540
	nop
	li      $at, 0x471C
	slt     $v0, $at, $t9
.L80265540:
	b       .L80265550
	nop
	b       .L80265550
	nop
.L80265550:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_walk_80265558:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L80265600
	nop
	lw      $t9, 0x0020($sp)
	li      $at, 0x41E80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.le.s  $f6, $f4
	nop
	bc1f    .L802655E4
	nop
	lw      $t0, 0x009C($t9)
	li      $at, 0x42400000
	mtc1    $at, $f10
	lwc1    $f8, 0x000C($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802655E4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f16
	lw      $t1, 0x0020($sp)
	swc1    $f16, 0x004C($t1)
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L80265610
	nop
.L802655E4:
	li.u    $a1, 0x00800457
	li.l    $a1, 0x00800457
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80265610
	nop
.L80265600:
	b       .L80265610
	move    $v0, $0
	b       .L80265610
	nop
.L80265610:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80265620:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t7, 0x0018($t6)
	bne     $t7, $at, .L80265670
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x001C($t8)
	sh      $t9, 0x002E($t8)
	li.u    $a1, 0x0C400209
	li.l    $a1, 0x0C400209
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802656F0
	nop
.L80265670:
	lw      $t0, 0x0018($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t0)
	c.le.s  $f6, $f4
	nop
	bc1f    .L802656CC
	nop
	lw      $t1, 0x0068($t0)
	lui     $at, %hi(pl_walk_80336AD4)
	lwc1    $f10, %lo(pl_walk_80336AD4)($at)
	lwc1    $f8, 0x0020($t1)
	c.le.s  $f10, $f8
	nop
	bc1f    .L802656CC
	nop
	li.u    $a1, 0x04000445
	li.l    $a1, 0x04000445
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802656F0
	nop
.L802656CC:
	li.u    $a1, 0x0400044A
	li.l    $a1, 0x0400044A
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802656F0
	nop
	b       .L802656F0
	nop
.L802656F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80265700:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0030($sp)
	li      $t8, 0x0001
	sw      $t8, 0x002C($sp)
	sh      $0, 0x002A($sp)
	lw      $t9, 0x0038($sp)
	lwc1    $f4, 0x0020($t9)
	lwc1    $f6, 0x0054($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026574C
	nop
	b       .L80265758
	swc1    $f4, 0x0024($sp)
.L8026574C:
	lw      $t0, 0x0038($sp)
	lwc1    $f8, 0x0054($t0)
	swc1    $f8, 0x0024($sp)
.L80265758:
	li      $at, 0x40800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80265784
	nop
	li      $at, 0x40800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0024($sp)
.L80265784:
	lw      $t1, 0x0038($sp)
	li      $at, 0x42480000
	mtc1    $at, $f4
	lwc1    $f6, 0x00C0($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802657FC
	nop
	li      $at, 0x40800000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	li      $at, 0x47800000
	mtc1    $at, $f18
	div.s   $f16, $f8, $f10
	mul.s   $f6, $f16, $f18
	trunc.w.s $f4, $f6
	mfc1    $t3, $f4
	nop
	sw      $t3, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0078
	jal     player_80250B04
	lw      $a2, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0013
	jal     pl_walk_80263EE4
	li      $a2, 0x005D
	lw      $t4, 0x0038($sp)
	b       .L80265ACC
	sh      $0, 0x001A($t4)
.L802657FC:
	lw      $t5, 0x002C($sp)
	beqz    $t5, .L80265ACC
	nop
.L80265808:
	lw      $t6, 0x0038($sp)
	lhu     $s0, 0x001A($t6)
	beqz    $s0, .L80265844
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802658F8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80265980
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L80265A30
	nop
	b       .L80265AC0
	nop
.L80265844:
	li      $at, 0x41000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80265870
	nop
	lw      $t8, 0x0038($sp)
	li      $t7, 0x0002
	b       .L802658F0
	sh      $t7, 0x001A($t8)
.L80265870:
	li      $at, 0x40800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	li      $at, 0x47800000
	mtc1    $at, $f4
	div.s   $f6, $f16, $f18
	mul.s   $f8, $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	slti    $at, $t0, 0x1000
	beqz    $at, .L802658AC
	sw      $t0, 0x0034($sp)
	li      $t1, 0x1000
	sw      $t1, 0x0034($sp)
.L802658AC:
	lw      $a0, 0x0038($sp)
	li      $a1, 0x00CA
	jal     player_80250B04
	lw      $a2, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0007
	jal     pl_walk_80263EE4
	li      $a2, 0x0016
	lw      $a0, 0x0038($sp)
	jal     player_80250D38
	li      $a1, 0x0017
	beqz    $v0, .L802658EC
	nop
	lw      $t3, 0x0038($sp)
	li      $t2, 0x0002
	sh      $t2, 0x001A($t3)
.L802658EC:
	sw      $0, 0x002C($sp)
.L802658F0:
	b       .L80265AC0
	nop
.L802658F8:
	li      $at, 0x41000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80265924
	nop
	lw      $t5, 0x0038($sp)
	li      $t4, 0x0002
	b       .L80265978
	sh      $t4, 0x001A($t5)
.L80265924:
	li      $at, 0x47800000
	mtc1    $at, $f4
	lwc1    $f6, 0x0024($sp)
	mul.s   $f8, $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $t7, $f10
	nop
	slti    $at, $t7, 0x1000
	beqz    $at, .L80265954
	sw      $t7, 0x0034($sp)
	li      $t8, 0x1000
	sw      $t8, 0x0034($sp)
.L80265954:
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0092
	jal     player_80250B04
	lw      $a2, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x000E
	jal     pl_walk_80263EE4
	li      $a2, 0x0048
	sw      $0, 0x002C($sp)
.L80265978:
	b       .L80265AC0
	nop
.L80265980:
	li      $at, 0x40A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802659AC
	nop
	lw      $t0, 0x0038($sp)
	li      $t9, 0x0001
	b       .L80265A28
	sh      $t9, 0x001A($t0)
.L802659AC:
	li      $at, 0x41B00000
	mtc1    $at, $f4
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802659D8
	nop
	lw      $t2, 0x0038($sp)
	li      $t1, 0x0003
	b       .L80265A28
	sh      $t1, 0x001A($t2)
.L802659D8:
	li      $at, 0x40800000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	li      $at, 0x47800000
	mtc1    $at, $f18
	div.s   $f16, $f8, $f10
	mul.s   $f6, $f16, $f18
	trunc.w.s $f4, $f6
	mfc1    $t4, $f4
	nop
	sw      $t4, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0048
	jal     player_80250B04
	lw      $a2, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x000A
	jal     pl_walk_80263EE4
	li      $a2, 0x0031
	sw      $0, 0x002C($sp)
.L80265A28:
	b       .L80265AC0
	nop
.L80265A30:
	li      $at, 0x41900000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80265A5C
	nop
	lw      $t6, 0x0038($sp)
	li      $t5, 0x0002
	b       .L80265AB8
	sh      $t5, 0x001A($t6)
.L80265A5C:
	li      $at, 0x40800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	li      $at, 0x47800000
	mtc1    $at, $f4
	div.s   $f6, $f16, $f18
	mul.s   $f8, $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0072
	jal     player_80250B04
	lw      $a2, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0009
	jal     pl_walk_80263EE4
	li      $a2, 0x002D
	jal     pl_walk_80263E60
	lw      $a0, 0x0038($sp)
	sh      $v0, 0x002A($sp)
	sw      $0, 0x002C($sp)
.L80265AB8:
	b       .L80265AC0
	nop
.L80265AC0:
	lw      $t9, 0x002C($sp)
	bnez    $t9, .L80265808
	nop
.L80265ACC:
	lw      $t0, 0x0030($sp)
	lh      $a1, 0x002A($sp)
	li      $a2, 0x0800
	li      $a3, 0x0800
	jal     converge_i
	lw      $a0, 0x0110($t0)
	lw      $t3, 0x0030($sp)
	sll     $t1, $v0, 16
	sra     $t2, $t1, 16
	sw      $t2, 0x0110($t3)
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0110($t4)
	sh      $t5, 0x001A($t4)
	b       .L80265B08
	nop
.L80265B08:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_walk_80265B1C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0028($sp)
	lw      $t7, 0x0030($sp)
	lwc1    $f4, 0x0020($t7)
	lwc1    $f6, 0x0054($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80265B58
	nop
	b       .L80265B64
	swc1    $f4, 0x0024($sp)
.L80265B58:
	lw      $t8, 0x0030($sp)
	lwc1    $f8, 0x0054($t8)
	swc1    $f8, 0x0024($sp)
.L80265B64:
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80265B90
	nop
	li      $at, 0x40000000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0024($sp)
.L80265B90:
	lw      $t9, 0x0028($sp)
	beqz    $t9, .L80265D74
	nop
.L80265B9C:
	lw      $t0, 0x0030($sp)
	lhu     $s0, 0x001A($t0)
	beqz    $s0, .L80265BCC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80265C44
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80265CE4
	nop
	b       .L80265D68
	nop
.L80265BCC:
	li      $at, 0x40C00000
	mtc1    $at, $f4
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80265BF8
	nop
	lw      $t2, 0x0030($sp)
	li      $t1, 0x0001
	b       .L80265C3C
	sh      $t1, 0x001A($t2)
.L80265BF8:
	li      $at, 0x47800000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t4, $f18
	nop
	sw      $t4, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0018
	jal     player_80250B04
	lw      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000C
	jal     pl_walk_80263EE4
	li      $a2, 0x003E
	sw      $0, 0x0028($sp)
.L80265C3C:
	b       .L80265D68
	nop
.L80265C44:
	li      $at, 0x40400000
	mtc1    $at, $f4
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80265C6C
	nop
	lw      $t5, 0x0030($sp)
	b       .L80265CDC
	sh      $0, 0x001A($t5)
.L80265C6C:
	li      $at, 0x41300000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80265C98
	nop
	lw      $t7, 0x0030($sp)
	li      $t6, 0x0002
	b       .L80265CDC
	sh      $t6, 0x001A($t7)
.L80265C98:
	li      $at, 0x47800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	mul.s   $f6, $f16, $f18
	trunc.w.s $f4, $f6
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0016
	jal     player_80250B04
	lw      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000C
	jal     pl_walk_80263EE4
	li      $a2, 0x003E
	sw      $0, 0x0028($sp)
.L80265CDC:
	b       .L80265D68
	nop
.L80265CE4:
	li      $at, 0x41000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80265D10
	nop
	lw      $t1, 0x0030($sp)
	li      $t0, 0x0001
	b       .L80265D60
	sh      $t0, 0x001A($t1)
.L80265D10:
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	li      $at, 0x47800000
	mtc1    $at, $f4
	div.s   $f6, $f16, $f18
	mul.s   $f8, $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $t3, $f10
	nop
	sw      $t3, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0017
	jal     player_80250B04
	lw      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000A
	jal     pl_walk_80263EE4
	li      $a2, 0x0031
	sw      $0, 0x0028($sp)
.L80265D60:
	b       .L80265D68
	nop
.L80265D68:
	lw      $t4, 0x0028($sp)
	bnez    $t4, .L80265B9C
	nop
.L80265D74:
	b       .L80265D7C
	nop
.L80265D7C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_walk_80265D90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x47800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($t6)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x00BB
	jal     player_80250B04
	lw      $a2, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x001A
	jal     pl_walk_80263EE4
	li      $a2, 0x004F
	b       .L80265DE8
	nop
.L80265DE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80265DF8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0034($sp)
	lwc1    $f4, 0x003C($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0034($sp)
	lwc1    $f10, 0x0044($t8)
	lwc1    $f16, 0x0008($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f8, 0x0024($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0020($sp)
	li      $at, 0x47800000
	mtc1    $at, $f8
	mul.s   $f4, $f16, $f18
	nop
	mul.s   $f6, $f4, $f8
	trunc.w.s $f10, $f6
	mfc1    $t1, $f10
	nop
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x0030($sp)
	li      $at, 0x40C00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t2)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80265EB4
	nop
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0x40C00000
.L80265EB4:
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0060($t3)
	beqz    $t4, .L80265EF0
	nop
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0060($t5)
	lwc1    $f12, 0x0024($t6)
	jal     atan2
	lwc1    $f14, 0x001C($t6)
	sh      $v0, 0x002E($sp)
	lw      $t8, 0x0030($sp)
	lh      $t7, 0x002E($sp)
	lh      $t9, 0x002E($t8)
	subu    $t0, $t7, $t9
	sh      $t0, 0x002C($sp)
.L80265EF0:
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0060($t1)
	beqz    $t2, .L80265F1C
	nop
	lh      $t3, 0x002C($sp)
	slti    $at, $t3, -0x71C7
	bnez    $at, .L80265F1C
	nop
	slti    $at, $t3, 0x71C8
	bnez    $at, .L80265F54
	nop
.L80265F1C:
	lw      $t4, 0x0030($sp)
	li      $at, 0x80000000
	lw      $t5, 0x0004($t4)
	or      $t6, $t5, $at
	sw      $t6, 0x0004($t4)
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x006C
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0006
	jal     pl_walk_80263EE4
	li      $a2, 0x0012
	b       .L80266020
	nop
.L80265F54:
	lh      $t8, 0x002C($sp)
	bgez    $t8, .L80265F78
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0080
	jal     player_80250B04
	lw      $a2, 0x001C($sp)
	b       .L80265F88
	nop
.L80265F78:
	lw      $a0, 0x0030($sp)
	li      $a1, 0x007F
	jal     player_80250B04
	lw      $a2, 0x001C($sp)
.L80265F88:
	lw      $t7, 0x0030($sp)
	lw      $t9, 0x0088($t7)
	lh      $t0, 0x0040($t9)
	slti    $at, $t0, 0x0014
	beqz    $at, .L80265FD0
	nop
	lw      $t1, 0x0030($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t1)
	lw      $a1, 0x0088($t1)
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0008($t2)
	ori     $t5, $t3, 0x0001
	sw      $t5, 0x0008($t2)
.L80265FD0:
	lw      $t4, 0x0030($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t4)
	lh      $t8, 0x002E($sp)
	lw      $t9, 0x0030($sp)
	li      $at, 0x8000
	addu    $t7, $t8, $at
	sw      $t7, 0x001C($t9)
	lw      $t3, 0x0030($sp)
	lh      $t0, 0x002E($sp)
	li      $at, 0x8000
	lw      $t5, 0x0088($t3)
	addu    $t1, $t0, $at
	sh      $t1, 0x001C($t5)
	lw      $a0, 0x0030($sp)
	jal     player_80252000
	li      $a1, 0x4000
	lw      $t2, 0x0030($sp)
	lw      $t6, 0x0088($t2)
	sh      $v0, 0x001E($t6)
.L80266020:
	b       .L80266028
	nop
.L80266028:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_walk_80266038:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0098($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0088($t8)
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0088($t0)
	lh      $t2, 0x0038($t1)
	sh      $t2, 0x001E($sp)
	lh      $t3, 0x001E($sp)
	li      $at, 0x0048
	beq     $t3, $at, .L8026608C
	nop
	li      $at, 0x0072
	bne     $t3, $at, .L802661A4
	nop
.L8026608C:
	lw      $t4, 0x0028($sp)
	lh      $t6, 0x002E($sp)
	lh      $t5, 0x002E($t4)
	subu    $t7, $t5, $t6
	sh      $t7, 0x001C($sp)
	lh      $t8, 0x001C($sp)
	lw      $t9, 0x0028($sp)
	li      $at, 0x41400000
	mtc1    $t8, $f4
	lwc1    $f8, 0x0054($t9)
	mtc1    $at, $f16
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	div.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t1, $f4
	nop
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	subu    $t4, $0, $t3
	sh      $t4, 0x001A($sp)
	lw      $t5, 0x0028($sp)
	li      $at, 0x432A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t5)
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t7, $f16
	nop
	sh      $t7, 0x0018($sp)
	lh      $t8, 0x001A($sp)
	slti    $at, $t8, 0x1556
	bnez    $at, .L8026611C
	nop
	li      $t9, 0x1555
	sh      $t9, 0x001A($sp)
.L8026611C:
	lh      $t0, 0x001A($sp)
	slti    $at, $t0, -0x1555
	beqz    $at, .L80266134
	nop
	li      $t1, -0x1555
	sh      $t1, 0x001A($sp)
.L80266134:
	lh      $t2, 0x0018($sp)
	slti    $at, $t2, 0x1556
	bnez    $at, .L8026614C
	nop
	li      $t3, 0x1555
	sh      $t3, 0x0018($sp)
.L8026614C:
	lh      $t4, 0x0018($sp)
	bgez    $t4, .L8026615C
	nop
	sh      $0, 0x0018($sp)
.L8026615C:
	lw      $t5, 0x0024($sp)
	lh      $a1, 0x001A($sp)
	li      $a2, 0x0400
	li      $a3, 0x0400
	jal     converge_i
	lh      $a0, 0x0010($t5)
	lw      $t6, 0x0024($sp)
	sh      $v0, 0x0010($t6)
	lw      $t7, 0x0024($sp)
	lh      $a1, 0x0018($sp)
	li      $a2, 0x0400
	li      $a3, 0x0400
	jal     converge_i
	lh      $a0, 0x000C($t7)
	lw      $t8, 0x0024($sp)
	sh      $v0, 0x000C($t8)
	b       .L802661B4
	nop
.L802661A4:
	lw      $t9, 0x0024($sp)
	sh      $0, 0x0010($t9)
	lw      $t0, 0x0024($sp)
	sh      $0, 0x000C($t0)
.L802661B4:
	b       .L802661BC
	nop
.L802661BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_802661CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0098($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0088($t8)
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0028($sp)
	lh      $t2, 0x002E($sp)
	lh      $t1, 0x002E($t0)
	subu    $t3, $t1, $t2
	sh      $t3, 0x001E($sp)
	lh      $t4, 0x001E($sp)
	lw      $t5, 0x0028($sp)
	li      $at, 0x41400000
	mtc1    $t4, $f4
	lwc1    $f8, 0x0054($t5)
	mtc1    $at, $f16
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	div.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t7, $f4
	nop
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	subu    $t0, $0, $t9
	sh      $t0, 0x001C($sp)
	lw      $t1, 0x0028($sp)
	li      $at, 0x432A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t1)
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t3, $f16
	nop
	sh      $t3, 0x001A($sp)
	lh      $t4, 0x001C($sp)
	slti    $at, $t4, 0x1801
	bnez    $at, .L80266284
	nop
	li      $t5, 0x1800
	sh      $t5, 0x001C($sp)
.L80266284:
	lh      $t6, 0x001C($sp)
	slti    $at, $t6, -0x1800
	beqz    $at, .L8026629C
	nop
	li      $t7, -0x1800
	sh      $t7, 0x001C($sp)
.L8026629C:
	lh      $t8, 0x001A($sp)
	slti    $at, $t8, 0x1001
	bnez    $at, .L802662B4
	nop
	li      $t9, 0x1000
	sh      $t9, 0x001A($sp)
.L802662B4:
	lh      $t0, 0x001A($sp)
	bgez    $t0, .L802662C4
	nop
	sh      $0, 0x001A($sp)
.L802662C4:
	lw      $t1, 0x0024($sp)
	lh      $a1, 0x001C($sp)
	li      $a2, 0x0200
	li      $a3, 0x0200
	jal     converge_i
	lh      $a0, 0x0010($t1)
	lw      $t2, 0x0024($sp)
	sh      $v0, 0x0010($t2)
	lw      $t3, 0x0024($sp)
	lh      $a1, 0x001A($sp)
	li      $a2, 0x0200
	li      $a3, 0x0200
	jal     converge_i
	lh      $a0, 0x000C($t3)
	lw      $t4, 0x0024($sp)
	sh      $v0, 0x000C($t4)
	lw      $t5, 0x0024($sp)
	lh      $t6, 0x0010($t5)
	subu    $t7, $0, $t6
	sh      $t7, 0x0016($t5)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x0020($sp)
	lh      $t9, 0x0010($t8)
	sh      $t9, 0x001E($t0)
	lw      $t1, 0x0020($sp)
	li      $at, 0x42340000
	mtc1    $at, $f4
	lwc1    $f18, 0x0024($t1)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0024($t1)
	b       .L80266344
	nop
.L80266344:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80266354:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	lh      $t7, 0x002E($t6)
	sh      $t7, 0x002A($sp)
	jal     collision_8024C6C0
	lw      $a0, 0x0038($sp)
	jal     pl_walk_80265458
	lw      $a0, 0x0038($sp)
	beqz    $v0, .L802663A0
	nop
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L802665A0
	nop
.L802663A0:
	lw      $t8, 0x0038($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0010
	beqz    $t0, .L802663C4
	nop
	jal     pl_walk_80265620
	lw      $a0, 0x0038($sp)
	b       .L802665A0
	nop
.L802663C4:
	lw      $t1, 0x0038($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, .L802663E8
	nop
	jal     player_80252E5C
	lw      $a0, 0x0038($sp)
	b       .L802665A0
	nop
.L802663E8:
	jal     pl_walk_80265558
	lw      $a0, 0x0038($sp)
	beqz    $v0, .L80266400
	nop
	b       .L802665A0
	li      $v0, 0x0001
.L80266400:
	lw      $t4, 0x0038($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0020
	beqz    $t6, .L80266424
	nop
	jal     pl_walk_80265620
	lw      $a0, 0x0038($sp)
	b       .L802665A0
	nop
.L80266424:
	jal     pl_walk_80265514
	lw      $a0, 0x0038($sp)
	beqz    $v0, .L8026646C
	nop
	lw      $t7, 0x0038($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t7)
	c.le.s  $f6, $f4
	nop
	bc1f    .L8026646C
	nop
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0443
	jal     player_80252CF4
	move    $a2, $0
	b       .L802665A0
	nop
.L8026646C:
	lw      $t8, 0x0038($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x8000
	beqz    $t0, .L8026649C
	nop
	li.u    $a1, 0x04808459
	li.l    $a1, 0x04808459
	lw      $a0, 0x0038($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802665A0
	nop
.L8026649C:
	lw      $t1, 0x0038($sp)
	sh      $0, 0x0018($t1)
	lw      $a1, 0x0038($sp)
	addiu   $a0, $sp, 0x002C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	jal     pl_walk_80265244
	lw      $a0, 0x0038($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0038($sp)
	move    $s0, $v0
	beqz    $s0, .L802664F0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80266518
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80266560
	nop
	b       .L8026657C
	nop
.L802664F0:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0038($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $a0, 0x0038($sp)
	jal     player_802509B8
	li      $a1, 0x0056
	b       .L8026657C
	nop
.L80266518:
	jal     pl_walk_80265700
	lw      $a0, 0x0038($sp)
	lw      $t2, 0x0038($sp)
	li      $at, 0x41800000
	mtc1    $at, $f18
	lwc1    $f8, 0x0020($t2)
	lwc1    $f10, 0x0054($t2)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80266558
	nop
	lw      $t3, 0x0038($sp)
	lw      $t4, 0x0008($t3)
	ori     $t5, $t4, 0x0001
	sw      $t5, 0x0008($t3)
.L80266558:
	b       .L8026657C
	nop
.L80266560:
	lw      $a0, 0x0038($sp)
	jal     pl_walk_80265DF8
	addiu   $a1, $sp, 0x002C
	lw      $t6, 0x0038($sp)
	sh      $0, 0x001A($t6)
	b       .L8026657C
	nop
.L8026657C:
	jal     pl_walk_802640FC
	lw      $a0, 0x0038($sp)
	lw      $a0, 0x0038($sp)
	jal     pl_walk_80266038
	lh      $a1, 0x002A($sp)
	b       .L802665A0
	move    $v0, $0
	b       .L802665A0
	nop
.L802665A0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_walk_802665B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_walk_80265458
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802665EC
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266720
	nop
.L802665EC:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L80266628
	nop
	lhu     $t8, 0x0002($t6)
	andi    $t9, $t8, 0x0080
	beqz    $t9, .L80266628
	nop
	li.u    $a1, 0x018008AC
	li.l    $a1, 0x018008AC
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266720
	nop
.L80266628:
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0001
	sh      $t0, 0x0018($t1)
	jal     pl_grab_80274F10
	lw      $a0, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t2)
	c.le.s  $f6, $f4
	nop
	bc1f    .L8026666C
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_walk_80265080
	li      $a1, 0x3F000000
	b       .L802666B4
	nop
.L8026666C:
	lw      $t3, 0x0028($sp)
	li      $at, 0x41000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t3)
	mtc1    $0, $f4
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($t3)
	lw      $t4, 0x0028($sp)
	lwc1    $f18, 0x0054($t4)
	c.le.s  $f4, $f18
	nop
	bc1f    .L802666AC
	nop
	mtc1    $0, $f6
	lw      $t5, 0x0028($sp)
	swc1    $f6, 0x0054($t5)
.L802666AC:
	jal     pl_walk_80264B54
	lw      $a0, 0x0028($sp)
.L802666B4:
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, .L802666DC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802666F8
	nop
	b       .L80266710
	nop
.L802666DC:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266710
	nop
.L802666F8:
	lw      $t7, 0x0028($sp)
	lw      $t6, 0x0008($t7)
	ori     $t8, $t6, 0x0001
	sw      $t8, 0x0008($t7)
	b       .L80266710
	nop
.L80266710:
	b       .L80266720
	move    $v0, $0
	b       .L80266720
	nop
.L80266720:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80266734:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, o_13001650
	jal     segment_to_virtual
	la.l    $a0, o_13001650
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x007C($t6)
	lw      $t8, 0x020C($t7)
	bne     $v0, $t8, .L8026677C
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x08AE
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266988
	nop
.L8026677C:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, .L802667B0
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80266988
	nop
.L802667B0:
	jal     pl_walk_80265458
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802667D8
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0051
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266988
	nop
.L802667D8:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x2000
	beqz    $t5, .L80266808
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266988
	nop
.L80266808:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L80266838
	nop
	li.u    $a1, 0x030008A0
	li.l    $a1, 0x030008A0
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80266988
	nop
.L80266838:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0020
	beqz    $t1, .L80266864
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x044B
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266988
	nop
.L80266864:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x8000
	beqz    $t4, .L80266894
	nop
	li.u    $a1, 0x04808459
	li.l    $a1, 0x04808459
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80266988
	nop
.L80266894:
	lw      $t5, 0x0028($sp)
	lui     $at, %hi(pl_walk_80336AD8)
	lwc1    $f6, %lo(pl_walk_80336AD8)($at)
	lwc1    $f4, 0x0020($t5)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t5)
	jal     pl_walk_80265244
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, .L802668DC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802668F8
	nop
	b       .L8026692C
	nop
.L802668DC:
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026692C
	nop
.L802668F8:
	lw      $t6, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t6)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80266924
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41800000
.L80266924:
	b       .L8026692C
	nop
.L8026692C:
	jal     pl_walk_80265B1C
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	lui     $at, %hi(pl_walk_80336ADC)
	lwc1    $f4, %lo(pl_walk_80336ADC)($at)
	lwc1    $f18, 0x0020($t7)
	lwc1    $f8, 0x0054($t7)
	li      $at, 0x41200000
	mul.s   $f6, $f18, $f4
	mtc1    $at, $f16
	sub.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80266978
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0008($t8)
	ori     $t0, $t9, 0x0001
	sw      $t0, 0x0008($t8)
.L80266978:
	b       .L80266988
	move    $v0, $0
	b       .L80266988
	nop
.L80266988:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_8026699C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L802669DC
	nop
	li.u    $a1, 0x80000589
	li.l    $a1, 0x80000589
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266AE4
	nop
.L802669DC:
	jal     pl_walk_80265458
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80266A04
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     player_80253178
	move    $a2, $0
	b       .L80266AE4
	nop
.L80266A04:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0020
	beqz    $t1, .L80266A34
	nop
	li.u    $a1, 0x08000208
	li.l    $a1, 0x08000208
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266AE4
	nop
.L80266A34:
	lw      $t2, 0x0028($sp)
	lui     $at, %hi(pl_walk_80336AE0)
	lwc1    $f6, %lo(pl_walk_80336AE0)($at)
	lwc1    $f4, 0x0020($t2)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t2)
	jal     pl_walk_80265244
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, .L80266A7C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80266A98
	nop
	b       .L80266ACC
	nop
.L80266A7C:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80266ACC
	nop
.L80266A98:
	lw      $t3, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t3)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80266AC4
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41200000
.L80266AC4:
	b       .L80266ACC
	nop
.L80266ACC:
	jal     pl_walk_80265D90
	lw      $a0, 0x0028($sp)
	b       .L80266AE4
	move    $v0, $0
	b       .L80266AE4
	nop
.L80266AE4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80266AF8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L80266B34
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266D38
	nop
.L80266B34:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L80266B64
	nop
	li.u    $a1, 0x01000887
	li.l    $a1, 0x01000887
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80266D38
	nop
.L80266B64:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0020
	beqz    $t4, .L80266B94
	nop
	li.u    $a1, 0x04000445
	li.l    $a1, 0x04000445
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266D38
	nop
.L80266B94:
	jal     pl_walk_80265514
	lw      $a0, 0x0028($sp)
	bnez    $v0, .L80266BC0
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266D38
	nop
.L80266BC0:
	lw      $a0, 0x0028($sp)
	jal     pl_walk_80265080
	li      $a1, 0x40000000
	beqz    $v0, .L80266BF0
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x41000000
	li      $a2, 0x0444
	jal     pl_walk_8026409C
	move    $a3, $0
	b       .L80266D38
	nop
.L80266BF0:
	lw      $t5, 0x0028($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t5)
	lw      $a1, 0x0088($t5)
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, .L80266C40
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80266C5C
	nop
	b       .L80266C74
	nop
.L80266C40:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266C74
	nop
.L80266C5C:
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0008($t6)
	ori     $t8, $t7, 0x0001
	sw      $t8, 0x0008($t6)
	b       .L80266C74
	nop
.L80266C74:
	lw      $t9, 0x0028($sp)
	li      $at, 0x41900000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80266CA8
	nop
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00BC
	b       .L80266D28
	nop
.L80266CA8:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00BD
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80266D28
	nop
	lw      $t0, 0x0028($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0054($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80266D10
	nop
	lw      $t1, 0x0028($sp)
	li.u    $a2, 0x04000440
	li.l    $a2, 0x04000440
	lwc1    $f16, 0x0054($t1)
	move    $a3, $0
	move    $a0, $t1
	neg.s   $f18, $f16
	mfc1    $a1, $f18
	jal     pl_walk_8026409C
	nop
	b       .L80266D28
	nop
.L80266D10:
	li.u    $a2, 0x04000440
	li.l    $a2, 0x04000440
	lw      $a0, 0x0028($sp)
	li      $a1, 0x41000000
	jal     pl_walk_8026409C
	move    $a3, $0
.L80266D28:
	b       .L80266D38
	move    $v0, $0
	b       .L80266D38
	nop
.L80266D38:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80266D4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L80266D84
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266E38
	nop
.L80266D84:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L80266DB4
	nop
	li.u    $a1, 0x01000887
	li.l    $a1, 0x01000887
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80266E38
	nop
.L80266DB4:
	jal     pl_walk_80265244
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00BD
	jal     pl_physics_80255D88
	lw      $a0, 0x0018($sp)
	bnez    $v0, .L80266DEC
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80266DEC:
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80266E10
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80266E10:
	lw      $t2, 0x0018($sp)
	li      $at, 0x8000
	lw      $t3, 0x0088($t2)
	lh      $t4, 0x001C($t3)
	addu    $t5, $t4, $at
	sh      $t5, 0x001C($t3)
	b       .L80266E38
	move    $v0, $0
	b       .L80266E38
	nop
.L80266E38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80266E48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0010
	bnez    $t8, .L80266E88
	nop
	andi    $t9, $t7, 0x000F
	beqz    $t9, .L80266E88
	nop
	jal     player_80253218
	lw      $a0, 0x0028($sp)
	b       .L80266FB4
	nop
.L80266E88:
	lw      $a0, 0x0028($sp)
	jal     pl_walk_80265080
	li      $a1, 0x40000000
	beqz    $v0, .L80266EB8
	nop
	li.u    $a1, 0x0C00023D
	li.l    $a1, 0x0C00023D
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266FB4
	nop
.L80266EB8:
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x2000
	beqz    $t2, .L80266EE8
	nop
	li.u    $a1, 0x00800457
	li.l    $a1, 0x00800457
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266FB4
	nop
.L80266EE8:
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, .L80266F1C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80266F38
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80266F50
	nop
	b       .L80266F70
	nop
.L80266F1C:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80266F70
	nop
.L80266F38:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0008($t3)
	ori     $t5, $t4, 0x0001
	sw      $t5, 0x0008($t3)
	b       .L80266F70
	nop
.L80266F50:
	li.u    $a1, 0x00020462
	li.u    $a2, 0x0C00023D
	li.l    $a2, 0x0C00023D
	li.l    $a1, 0x00020462
	jal     pl_walk_802642B4
	lw      $a0, 0x0028($sp)
	b       .L80266F70
	nop
.L80266F70:
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t6)
	lw      $a1, 0x0088($t6)
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x000F
	b       .L80266FB4
	move    $v0, $0
	b       .L80266FB4
	nop
.L80266FB4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80266FC8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	jal     player_8025177C
	lw      $a0, 0x0030($sp)
	sh      $v0, 0x002A($sp)
	lw      $t6, 0x0030($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0010
	bnez    $t8, .L802670BC
	nop
	jal     pl_walk_80265458
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L80267020
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026722C
	nop
.L80267020:
	lw      $t9, 0x0030($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L80267044
	nop
	jal     player_80252E5C
	lw      $a0, 0x0030($sp)
	b       .L8026722C
	nop
.L80267044:
	jal     pl_walk_80265558
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L8026705C
	nop
	b       .L8026722C
	li      $v0, 0x0001
.L8026705C:
	lw      $t2, 0x0030($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	beqz    $t4, .L8026708C
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026722C
	nop
.L8026708C:
	lw      $t5, 0x0030($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x8000
	beqz    $t7, .L802670BC
	nop
	li.u    $a1, 0x04808459
	li.l    $a1, 0x04808459
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026722C
	nop
.L802670BC:
	jal     pl_walk_802651B0
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L802670E8
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026722C
	nop
.L802670E8:
	jal     pl_physics_80255D88
	lw      $a0, 0x0030($sp)
	move    $s0, $v0
	beqz    $s0, .L80267110
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026712C
	nop
	b       .L80267164
	nop
.L80267110:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267164
	nop
.L8026712C:
	lh      $t8, 0x002A($sp)
	li      $at, 0x0013
	bne     $t8, $at, .L80267150
	nop
	lw      $a0, 0x0030($sp)
	jal     pl_physics_802552FC
	li      $a1, 0x0001
	b       .L8026715C
	nop
.L80267150:
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0x0000
.L8026715C:
	b       .L80267164
	nop
.L80267164:
	lh      $t9, 0x002A($sp)
	li      $at, 0x0013
	bne     $t9, $at, .L802671BC
	nop
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x00C3
	lw      $t0, 0x0030($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t0)
	lw      $a1, 0x0088($t0)
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0008($t1)
	ori     $t3, $t2, 0x0001
	b       .L8026721C
	sw      $t3, 0x0008($t1)
.L802671BC:
	lw      $t4, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t4)
	li      $at, 0x47800000
	mtc1    $at, $f10
	div.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t6, $f18
	nop
	slti    $at, $t6, 0x1000
	beqz    $at, .L802671FC
	sw      $t6, 0x002C($sp)
	li      $t7, 0x1000
	sw      $t7, 0x002C($sp)
.L802671FC:
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0048
	jal     player_80250B04
	lw      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000A
	jal     pl_walk_80263EE4
	li      $a2, 0x0031
.L8026721C:
	b       .L8026722C
	move    $v0, $0
	b       .L8026722C
	nop
.L8026722C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_walk_80267240:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	jal     player_8025177C
	lw      $a0, 0x0030($sp)
	sh      $v0, 0x002A($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80267290
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0030($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802674F0
	nop
.L80267290:
	jal     pl_walk_80265458
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L802672B8
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0051
	jal     player_80252CF4
	move    $a2, $0
	b       .L802674F0
	nop
.L802672B8:
	lw      $t0, 0x0030($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x2000
	beqz    $t2, .L802672E8
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802674F0
	nop
.L802672E8:
	lw      $t3, 0x0030($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L80267318
	nop
	li.u    $a1, 0x030008A0
	li.l    $a1, 0x030008A0
	lw      $a0, 0x0030($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L802674F0
	nop
.L80267318:
	lw      $t6, 0x0030($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L80267348
	nop
	li.u    $a1, 0x04808459
	li.l    $a1, 0x04808459
	lw      $a0, 0x0030($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802674F0
	nop
.L80267348:
	lw      $t9, 0x0030($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L80267374
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0442
	jal     player_80252CF4
	move    $a2, $0
	b       .L802674F0
	nop
.L80267374:
	jal     pl_walk_802651B0
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L802673A0
	nop
	li.u    $a1, 0x08000207
	li.l    $a1, 0x08000207
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802674F0
	nop
.L802673A0:
	lw      $t2, 0x0030($sp)
	lui     $at, %hi(pl_walk_80336AE4)
	lwc1    $f6, %lo(pl_walk_80336AE4)($at)
	lwc1    $f4, 0x0020($t2)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t2)
	jal     pl_physics_80255D88
	lw      $a0, 0x0030($sp)
	move    $s0, $v0
	beqz    $s0, .L802673E0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802673FC
	nop
	b       .L80267434
	nop
.L802673E0:
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267434
	nop
.L802673FC:
	lh      $t3, 0x002A($sp)
	li      $at, 0x0013
	bne     $t3, $at, .L80267420
	nop
	lw      $a0, 0x0030($sp)
	jal     pl_physics_802552FC
	li      $a1, 0x0001
	b       .L8026742C
	nop
.L80267420:
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0x0000
.L8026742C:
	b       .L80267434
	nop
.L80267434:
	lh      $t4, 0x002A($sp)
	li      $at, 0x0013
	bne     $t4, $at, .L8026748C
	nop
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x003F
	lw      $t5, 0x0030($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t5)
	lw      $a1, 0x0088($t5)
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0008($t6)
	ori     $t8, $t7, 0x0001
	b       .L802674E0
	sw      $t8, 0x0008($t6)
.L8026748C:
	lw      $t9, 0x0030($sp)
	li      $at, 0x47800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t9)
	mul.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t1, $f4
	nop
	slti    $at, $t1, 0x1000
	beqz    $at, .L802674C0
	sw      $t1, 0x002C($sp)
	li      $t2, 0x1000
	sw      $t2, 0x002C($sp)
.L802674C0:
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0016
	jal     player_80250B04
	lw      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000C
	jal     pl_walk_80263EE4
	li      $a2, 0x003E
.L802674E0:
	b       .L802674F0
	move    $v0, $0
	b       .L802674F0
	nop
.L802674F0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_walk_80267504:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x002E($t6)
	sh      $t7, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, .L80267550
	nop
	li.u    $a1, 0x0281089A
	li.l    $a1, 0x0281089A
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267714
	nop
.L80267550:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x8000
	beqz    $t3, .L802675B4
	nop
	jal     collision_8024C618
	lw      $a0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80267598
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41C00000
.L80267598:
	li.u    $a1, 0x04808459
	li.l    $a1, 0x04808459
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267714
	nop
.L802675B4:
	jal     pl_walk_80264E18
	lw      $a0, 0x0028($sp)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x001C($t5)
	bnez    $t6, .L802675D4
	nop
	b       .L802675D8
	li      $s0, 0x006D
.L802675D4:
	li      $s0, 0x0047
.L802675D8:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, .L8026760C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80267628
	nop
	b       .L80267698
	nop
.L8026760C:
	li.u    $a1, 0x0081089B
	li.l    $a1, 0x0081089B
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267698
	nop
.L80267628:
	jal     collision_8024C618
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L80267650
	nop
	li.u    $s0, 0x04428081
	b       .L80267658
	li.l    $s0, 0x04428081
.L80267650:
	li.u    $s0, 0x0445A081
	li.l    $s0, 0x0445A081
.L80267658:
	lw      $t0, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0008($t1)
	ori     $t3, $t2, 0x0002
	sw      $t3, 0x0008($t1)
	li.u    $a1, 0x00020462
	li.l    $a1, 0x00020462
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267698
	nop
.L80267698:
	lw      $a0, 0x0028($sp)
	jal     pl_walk_802661CC
	lh      $a1, 0x0026($sp)
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	lw      $t5, 0x0068($t4)
	lh      $t6, 0x0000($t5)
	bne     $t6, $at, .L802676DC
	nop
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x14280001
	li.l    $a0, 0x14280001
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L802676FC
	nop
.L802676DC:
	lw      $t8, 0x0028($sp)
	li.u    $at, 0x14200001
	li.l    $at, 0x14200001
	lw      $a0, 0x0014($t8)
	lw      $a1, 0x0088($t8)
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802676FC:
	jal     player_80251274
	lw      $a0, 0x0028($sp)
	b       .L80267714
	move    $v0, $0
	b       .L80267714
	nop
.L80267714:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80267728:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_walk_80265458
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80267760
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267948
	nop
.L80267760:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0010
	beqz    $t8, .L80267790
	nop
	li.u    $a1, 0x0C008224
	li.l    $a1, 0x0C008224
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267948
	nop
.L80267790:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L802677C0
	nop
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80267948
	nop
.L802677C0:
	jal     pl_walk_80265558
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802677D8
	nop
	b       .L80267948
	li      $v0, 0x0001
.L802677D8:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0020
	beqz    $t4, .L80267808
	nop
	li.u    $a1, 0x0C008224
	li.l    $a1, 0x0C008224
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267948
	nop
.L80267808:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x4000
	bnez    $t7, .L80267838
	nop
	li.u    $a1, 0x0C008224
	li.l    $a1, 0x0C008224
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267948
	nop
.L80267838:
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(pl_walk_80336AE8)
	lwc1    $f6, %lo(pl_walk_80336AE8)($at)
	lwc1    $f4, 0x0020($t8)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t8)
	jal     pl_walk_80265244
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, .L8026788C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802678D4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802678A8
	nop
	b       .L802678E4
	nop
.L8026788C:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802678E4
	nop
.L802678A8:
	lw      $t9, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t9)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802678D4
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41200000
.L802678D4:
	jal     pl_walk_80264024
	lw      $a0, 0x0028($sp)
	b       .L802678E4
	nop
.L802678E4:
	lw      $t0, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0020($t0)
	li      $at, 0x47800000
	mtc1    $at, $f8
	mul.s   $f6, $f18, $f4
	nop
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t2, $f16
	nop
	sw      $t2, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0099
	jal     player_80250B04
	lw      $a2, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x001A
	jal     pl_walk_80263EE4
	li      $a2, 0x004F
	b       .L80267948
	move    $v0, $0
	b       .L80267948
	nop
.L80267948:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_8026795C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L80267998
	nop
	li.u    $a1, 0x010208B4
	li.l    $a1, 0x010208B4
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267C14
	nop
.L80267998:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0110($t0)
	addiu   $t2, $t1, 0x0002
	sw      $t2, 0x0110($t0)
	lw      $t3, 0x0018($sp)
	lw      $t4, 0x0088($t3)
	lw      $t5, 0x0110($t4)
	slti    $at, $t5, 0x00A1
	bnez    $at, .L802679E0
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267C14
	nop
.L802679E0:
	lw      $t6, 0x0018($sp)
	li      $at, 0x42480000
	mtc1    $at, $f16
	lh      $t7, 0x0076($t6)
	lwc1    $f8, 0x0070($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80267A48
	nop
	lw      $t8, 0x0018($sp)
	li.u    $a0, 0x30038081
	li.l    $a0, 0x30038081
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80267C14
	nop
.L80267A48:
	lw      $t9, 0x0018($sp)
	li      $at, 0x41000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t9)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80267A78
	nop
	li      $at, 0x41000000
	mtc1    $at, $f6
	lw      $t1, 0x0018($sp)
	swc1    $f6, 0x0054($t1)
.L80267A78:
	lw      $t2, 0x0018($sp)
	li      $at, 0x42400000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t2)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80267AA8
	nop
	li      $at, 0x42400000
	mtc1    $at, $f16
	lw      $t0, 0x0018($sp)
	swc1    $f16, 0x0054($t0)
.L80267AA8:
	lw      $t3, 0x0018($sp)
	li      $at, 0x42000000
	mtc1    $at, $f14
	li      $a2, 0x40800000
	li      $a3, 0x3F800000
	jal     converge_f
	lwc1    $f12, 0x0054($t3)
	lw      $t4, 0x0018($sp)
	swc1    $f0, 0x0054($t4)
	lw      $t5, 0x0018($sp)
	lhu     $t7, 0x0002($t5)
	andi    $t6, $t7, 0x0001
	beqz    $t6, .L80267B20
	nop
	lw      $t8, 0x0018($sp)
	move    $a1, $0
	li      $a2, 0x0600
	lh      $t9, 0x0024($t8)
	lh      $t1, 0x002E($t8)
	li      $a3, 0x0600
	subu    $a0, $t9, $t1
	sll     $t2, $a0, 16
	move    $a0, $t2
	sra     $t0, $a0, 16
	jal     converge_i
	move    $a0, $t0
	lw      $t3, 0x0018($sp)
	lh      $t4, 0x0024($t3)
	subu    $t5, $t4, $v0
	sh      $t5, 0x002E($t3)
.L80267B20:
	jal     pl_walk_80264B54
	lw      $a0, 0x0018($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0018($sp)
	bnez    $v0, .L80267B4C
	nop
	li.u    $a1, 0x010208B5
	li.l    $a1, 0x010208B5
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80267B4C:
	lw      $t7, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t7)
	li      $at, 0x47800000
	mtc1    $at, $f8
	div.s   $f6, $f18, $f4
	li      $a1, 0x0072
	move    $a0, $t7
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $a2, $f16
	jal     player_80250B04
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0009
	jal     pl_walk_80263EE4
	li      $a2, 0x002D
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0008($t8)
	ori     $t1, $t9, 0x0800
	sw      $t1, 0x0008($t8)
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x14100001
	li.l    $a0, 0x14100001
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t0, 0x0018($sp)
	lh      $t4, 0x00AE($t0)
	addiu   $t5, $t4, -0x000A
	sh      $t5, 0x00AE($t0)
	lw      $t3, 0x0018($sp)
	lh      $t7, 0x00AE($t3)
	slti    $at, $t7, 0x0100
	beqz    $at, .L80267BF4
	nop
	li.u    $a1, 0x00021311
	li.l    $a1, 0x00021311
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80267BF4:
	lw      $t9, 0x0018($sp)
	li      $t6, 0x0008
	lw      $t1, 0x0098($t9)
	sb      $t6, 0x0005($t1)
	b       .L80267C14
	move    $v0, $0
	b       .L80267C14
	nop
.L80267C14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80267C24:
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x0024($a0)
	lh      $t7, 0x002E($a0)
	subu    $t8, $t6, $t7
	sh      $t8, 0x0006($sp)
	lui     $at, %hi(pl_walk_80336AEC)
	lwc1    $f4, %lo(pl_walk_80336AEC)($at)
	lwc1    $f6, 0x0020($a0)
	li      $at, 0x42000000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	lhu     $t9, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lw      $t4, 0x0098($a0)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	div.s   $f16, $f8, $f10
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f4, $f18, $f16
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x000C($t4)
	lui     $at, %hi(pl_walk_80336AF0)
	lwc1    $f8, %lo(pl_walk_80336AF0)($at)
	lwc1    $f10, 0x0020($a0)
	li      $at, 0x42000000
	mtc1    $at, $f16
	mul.s   $f18, $f8, $f10
	lhu     $t5, 0x0006($sp)
	lui     $at, %hi(math_sin)
	lw      $t0, 0x0098($a0)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	div.s   $f4, $f18, $f16
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f6, $f4
	neg.s   $f10, $f8
	trunc.w.s $f18, $f10
	mfc1    $t9, $f18
	nop
	sh      $t9, 0x0010($t0)
	b       .L80267CDC
	nop
.L80267CDC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_walk_80267CE4:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lw      $a1, 0x0048($sp)
	addiu   $a0, $sp, 0x003C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $t6, 0x0048($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t6)
	lw      $a1, 0x0088($t6)
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0048($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0048($sp)
	move    $s0, $v0
	beqz    $s0, .L80267D70
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80267DDC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80267E08
	nop
	b       .L80267F88
	nop
.L80267D70:
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x0050($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $t7, 0x0048($sp)
	li      $at, 0xC2480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t7)
	c.lt.s  $f4, $f6
	nop
	bc1t    .L80267DBC
	nop
	li      $at, 0x42480000
	mtc1    $at, $f8
	nop
	c.lt.s  $f8, $f4
	nop
	bc1f    .L80267DD4
	nop
.L80267DBC:
	lw      $t8, 0x0048($sp)
	li.u    $a0, 0x24038081
	li.l    $a0, 0x24038081
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80267DD4:
	b       .L80267F88
	nop
.L80267DDC:
	lw      $a0, 0x0048($sp)
	jal     player_802509B8
	lw      $a1, 0x0054($sp)
	jal     pl_walk_80264024
	lw      $a0, 0x0048($sp)
	lw      $t9, 0x0048($sp)
	lw      $t0, 0x0008($t9)
	ori     $t1, $t0, 0x0001
	sw      $t1, 0x0008($t9)
	b       .L80267F88
	nop
.L80267E08:
	jal     player_80251BD4
	lw      $a0, 0x0048($sp)
	bnez    $v0, .L80267E64
	nop
	lw      $t2, 0x0048($sp)
	li      $at, 0x41800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t2)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80267E48
	nop
	lw      $t3, 0x0048($sp)
	lw      $t4, 0x0008($t3)
	ori     $t5, $t4, 0x0002
	sw      $t5, 0x0008($t3)
.L80267E48:
	li.u    $a1, 0x00020466
	li.l    $a1, 0x00020466
	lw      $a0, 0x0048($sp)
	jal     pl_walk_802642B4
	lw      $a2, 0x004C($sp)
	b       .L80267F78
	nop
.L80267E64:
	lw      $t6, 0x0048($sp)
	lw      $t7, 0x0060($t6)
	beqz    $t7, .L80267F78
	nop
	lw      $t8, 0x0048($sp)
	lw      $t0, 0x0060($t8)
	lwc1    $f12, 0x0024($t0)
	jal     atan2
	lwc1    $f14, 0x001C($t0)
	sh      $v0, 0x003A($sp)
	lw      $t1, 0x0048($sp)
	lwc1    $f18, 0x0058($t1)
	lwc1    $f8, 0x005C($t1)
	mul.s   $f6, $f18, $f18
	nop
	mul.s   $f4, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f4
	swc1    $f0, 0x0034($sp)
	lwc1    $f10, 0x0034($sp)
	lui     $at, %hi(pl_walk_80336AF8)
	ldc1    $f18, %lo(pl_walk_80336AF8)($at)
	cvt.d.s $f16, $f10
	li      $at, 0x40800000
	mul.d   $f8, $f16, $f18
	mtc1    $at, $f4
	cvt.s.d $f6, $f8
	c.lt.s  $f6, $f4
	swc1    $f6, 0x0034($sp)
	bc1f    .L80267EF0
	nop
	li      $at, 0x40800000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0034($sp)
.L80267EF0:
	lw      $t9, 0x0048($sp)
	lh      $t4, 0x003A($sp)
	li      $at, 0x8000
	lh      $t2, 0x0038($t9)
	subu    $t5, $t2, $t4
	sll     $t3, $t5, 16
	sra     $t6, $t3, 16
	subu    $t7, $t4, $t6
	addu    $t8, $t7, $at
	sh      $t8, 0x0038($t9)
	lw      $t0, 0x0048($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x0034($sp)
	lhu     $t1, 0x0038($t0)
	sra     $t2, $t1, 4
	sll     $t5, $t2, 2
	addu    $at, $at, $t5
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f20, $f16, $f18
	swc1    $f20, 0x0058($t0)
	lw      $t3, 0x0048($sp)
	swc1    $f20, 0x0048($t3)
	lw      $t4, 0x0048($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x0034($sp)
	lhu     $t6, 0x0038($t4)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_cos)($at)
	mul.s   $f20, $f8, $f6
	swc1    $f20, 0x005C($t4)
	lw      $t9, 0x0048($sp)
	swc1    $f20, 0x0050($t9)
.L80267F78:
	jal     pl_walk_80264024
	lw      $a0, 0x0048($sp)
	b       .L80267F88
	nop
.L80267F88:
	b       .L80267F90
	nop
.L80267F90:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

pl_walk_80267FA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0005
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, .L80268004
	nop
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, .L80267FFC
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80268064
	nop
.L80267FFC:
	b       .L80268014
	nop
.L80268004:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x001A($t1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x001A($t1)
.L80268014:
	lw      $a0, 0x0018($sp)
	jal     pl_walk_80264740
	li      $a1, 0x40800000
	beqz    $v0, .L80268040
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80268064
	nop
.L80268040:
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	lw      $a2, 0x0024($sp)
	jal     pl_walk_80267CE4
	lw      $a3, 0x0028($sp)
	b       .L80268064
	move    $v0, $0
	b       .L80268064
	nop
.L80268064:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80268074:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	li.u    $a1, 0x0C00023E
	li.u    $a2, 0x03000880
	li.u    $a3, 0x0300088E
	li      $t6, 0x0091
	sw      $t6, 0x0010($sp)
	li.l    $a3, 0x0300088E
	li.l    $a2, 0x03000880
	li.l    $a1, 0x0C00023E
	jal     pl_walk_80267FA4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	jal     pl_walk_80267C24
	lw      $a0, 0x0028($sp)
	b       .L802680C4
	lw      $v0, 0x0024($sp)
	b       .L802680C4
	nop
.L802680C4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_802680D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80268114
	nop
	li.u    $a1, 0x00840452
	li.l    $a1, 0x00840452
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80268158
	nop
.L80268114:
	li.u    $a1, 0x0800043F
	li.u    $a2, 0x030008A0
	li.u    $a3, 0x010008A2
	li      $t0, 0x0045
	sw      $t0, 0x0010($sp)
	li.l    $a3, 0x010008A2
	li.l    $a2, 0x030008A0
	li.l    $a1, 0x0800043F
	jal     pl_walk_80267FA4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	jal     pl_walk_80267C24
	lw      $a0, 0x0028($sp)
	b       .L80268158
	lw      $v0, 0x0024($sp)
	b       .L80268158
	nop
.L80268158:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80268168:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L802681A4
	nop
	li.u    $a1, 0x00840452
	li.l    $a1, 0x00840452
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80268328
	nop
.L802681A4:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	slti    $at, $t0, 0x001E
	beqz    $at, .L80268218
	nop
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x001A($t1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x001A($t1)
	lw      $t4, 0x0028($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0002
	beqz    $t6, .L80268218
	nop
	lw      $t7, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80268218
	nop
	li.u    $a1, 0x03000888
	li.l    $a1, 0x03000888
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80268328
	nop
.L80268218:
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x2000
	beqz    $t0, .L8026828C
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t2)
	c.le.s  $f10, $f8
	nop
	bc1f    .L80268270
	nop
	li.u    $a1, 0x018008AA
	li.l    $a1, 0x018008AA
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80268328
	nop
	b       .L8026828C
	nop
.L80268270:
	li.u    $a1, 0x00800457
	li.l    $a1, 0x00800457
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0009
	b       .L80268328
	nop
.L8026828C:
	lw      $t3, 0x0028($sp)
	lhu     $t1, 0x0002($t3)
	andi    $t4, $t1, 0x0002
	beqz    $t4, .L802682BC
	nop
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80268328
	nop
.L802682BC:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0010
	beqz    $t7, .L802682EC
	nop
	li.u    $a1, 0x04000445
	li.l    $a1, 0x04000445
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80268328
	nop
.L802682EC:
	li.u    $a1, 0x0C008220
	li.u    $a2, 0x03000880
	li.u    $a3, 0x0100088C
	li      $t8, 0x0097
	sw      $t8, 0x0010($sp)
	li.l    $a3, 0x0100088C
	li.l    $a2, 0x03000880
	li.l    $a1, 0x0C008220
	jal     pl_walk_80267FA4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       .L80268328
	lw      $v0, 0x0024($sp)
	b       .L80268328
	nop
.L80268328:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80268338:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L80268378
	nop
	li.u    $a1, 0x010008A6
	li.l    $a1, 0x010008A6
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       .L80268498
	nop
.L80268378:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x008C
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802683D0
	nop
	lw      $t9, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802683D0
	nop
	li.u    $a1, 0x08000225
	li.l    $a1, 0x08000225
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80268498
	nop
.L802683D0:
	lw      $a0, 0x0028($sp)
	jal     pl_walk_80264740
	li      $a1, 0x3F800000
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, .L80268404
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80268420
	nop
	b       .L80268458
	nop
.L80268404:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0002
	b       .L80268458
	nop
.L80268420:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802552FC
	li      $a1, 0x0001
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0008($t0)
	ori     $t2, $t1, 0x0002
	sw      $t2, 0x0008($t0)
	li.u    $a1, 0x00020462
	li.l    $a1, 0x00020462
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80268458
	nop
.L80268458:
	lw      $t3, 0x0028($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t3)
	lw      $a1, 0x0088($t3)
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0008($t4)
	ori     $t6, $t5, 0x0001
	sw      $t6, 0x0008($t4)
	b       .L80268498
	move    $v0, $0
	b       .L80268498
	nop
.L80268498:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_802684AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0005
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, .L8026854C
	nop
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0008
	bnez    $t0, .L80268544
	nop
	andi    $t1, $t9, 0x2002
	beqz    $t1, .L80268544
	nop
	lw      $t2, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t2)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80268524
	nop
	li.u    $s0, 0x010008A6
	b       .L8026852C
	li.l    $s0, 0x010008A6
.L80268524:
	li.u    $s0, 0x010008AD
	li.l    $s0, 0x010008AD
.L8026852C:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80253178
	move    $a2, $0
	b       .L802685AC
	nop
.L80268544:
	b       .L8026855C
	nop
.L8026854C:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	addiu   $t5, $t4, 0x0001
	sh      $t5, 0x001A($t3)
.L8026855C:
	lw      $a0, 0x0028($sp)
	jal     pl_walk_80264740
	li      $a1, 0x40800000
	beqz    $v0, .L80268588
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802685AC
	nop
.L80268588:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	jal     pl_walk_80267CE4
	lw      $a3, 0x0034($sp)
	b       .L802685AC
	move    $v0, $0
	b       .L802685AC
	nop
.L802685AC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_802685C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0386
	jal     pl_walk_802684AC
	li      $a3, 0x0089
	sw      $v0, 0x001C($sp)
	b       .L802685F8
	lw      $v0, 0x001C($sp)
	b       .L802685F8
	nop
.L802685F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80268608:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80268648
	nop
	li.u    $a1, 0x008C0453
	li.l    $a1, 0x008C0453
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80268674
	nop
.L80268648:
	li.u    $a2, 0x010008A1
	li.l    $a2, 0x010008A1
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0385
	jal     pl_walk_802684AC
	li      $a3, 0x0089
	sw      $v0, 0x001C($sp)
	b       .L80268674
	lw      $v0, 0x001C($sp)
	b       .L80268674
	nop
.L80268674:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80268684:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L802686FC
	nop
	andi    $t9, $t7, 0x2002
	beqz    $t9, .L802686FC
	nop
	lw      $t0, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802686DC
	nop
	li.u    $s0, 0x010008A6
	b       .L802686E4
	li.l    $s0, 0x010008A6
.L802686DC:
	li.u    $s0, 0x010008AD
	li.l    $s0, 0x010008AD
.L802686E4:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80252CF4
	move    $a2, $0
	b       .L802687A4
	nop
.L802686FC:
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_80251510
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_walk_80264740
	li      $a1, 0x41000000
	beqz    $v0, .L8026874C
	nop
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8026874C
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0386
	jal     player_80252CF4
	move    $a2, $0
.L8026874C:
	jal     collision_8024CC7C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8026877C
	nop
	jal     collision_8024C66C
	lw      $a0, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	li      $t1, 0x0001
	lw      $t3, 0x0098($t2)
	sb      $t1, 0x000A($t3)
	b       .L802687A4
	li      $v0, 0x0001
.L8026877C:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0386
	jal     pl_walk_80267CE4
	li      $a3, 0x0088
	b       .L802687A4
	move    $v0, $0
	b       .L802687A4
	nop
.L802687A4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_802687B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	beqz    $t6, .L802687EC
	nop
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_802515D8
	lw      $a0, 0x0020($sp)
.L802687EC:
	lw      $t7, 0x0030($sp)
	blez    $t7, .L80268814
	nop
	li.u    $a1, 0x240AFF81
	li.l    $a1, 0x240AFF81
	lw      $a0, 0x0020($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	b       .L80268828
	nop
.L80268814:
	li.u    $a1, 0x240BD081
	li.l    $a1, 0x240BD081
	lw      $a0, 0x0020($sp)
	jal     player_80251120
	li      $a2, 0x00020000
.L80268828:
	lw      $t8, 0x0020($sp)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80268858
	nop
	li      $at, 0x42000000
	mtc1    $at, $f8
	lw      $t9, 0x0020($sp)
	swc1    $f8, 0x0054($t9)
.L80268858:
	lw      $t0, 0x0020($sp)
	li      $at, 0xC2000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t0)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80268888
	nop
	li      $at, 0xC2000000
	mtc1    $at, $f18
	lw      $t1, 0x0020($sp)
	swc1    $f18, 0x0054($t1)
.L80268888:
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	lw      $a1, 0x0024($sp)
	sw      $v0, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	lw      $t3, 0x0028($sp)
	slt     $at, $t2, $t3
	beqz    $at, .L802688C4
	nop
	li.u    $a1, 0x3F666666
	li.l    $a1, 0x3F666666
	jal     pl_walk_80264D80
	lw      $a0, 0x0020($sp)
	b       .L80268908
	nop
.L802688C4:
	lw      $t4, 0x0020($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t4)
	c.le.s  $f6, $f4
	nop
	bc1f    .L802688F8
	nop
	li.u    $a1, 0x3DCCCCCD
	li.l    $a1, 0x3DCCCCCD
	jal     player_80251708
	lw      $a0, 0x0020($sp)
	b       .L80268908
	nop
.L802688F8:
	li.u    $a1, 0xBDCCCCCD
	li.l    $a1, 0xBDCCCCCD
	jal     player_80251708
	lw      $a0, 0x0020($sp)
.L80268908:
	jal     pl_physics_80255D88
	lw      $a0, 0x0020($sp)
	bnez    $v0, .L8026896C
	nop
	lw      $t5, 0x0020($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0054($t5)
	c.le.s  $f10, $f8
	nop
	bc1f    .L80268950
	nop
	li.u    $a1, 0x010208B1
	li.l    $a1, 0x010208B1
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	lw      $a2, 0x0030($sp)
	b       .L80268964
	nop
.L80268950:
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	lw      $a2, 0x0030($sp)
.L80268964:
	b       .L802689D8
	nop
.L8026896C:
	jal     player_80250940
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L802689D8
	nop
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x00AE($t6)
	slti    $at, $t7, 0x0100
	beqz    $at, .L802689AC
	nop
	li.u    $a1, 0x00021311
	li.l    $a1, 0x00021311
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802689D8
	nop
.L802689AC:
	lw      $t8, 0x0030($sp)
	blez    $t8, .L802689C4
	nop
	lw      $t0, 0x0020($sp)
	li      $t9, 0x001E
	sh      $t9, 0x0026($t0)
.L802689C4:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
.L802689D8:
	b       .L802689E8
	lw      $v0, 0x001C($sp)
	b       .L802689E8
	nop
.L802689E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_802689F8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $a1, 0x0001
	li      $a2, 0x002B
	lw      $t7, 0x001C($t6)
	li      $a3, 0x0001
	move    $a0, $t6
	jal     pl_walk_802687B8
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x002B
	bne     $t8, $at, .L80268A60
	nop
	lw      $t9, 0x0028($sp)
	lh      $t0, 0x00AE($t9)
	slti    $at, $t0, 0x0100
	beqz    $at, .L80268A60
	nop
	li.u    $a1, 0x00021316
	li.l    $a1, 0x00021316
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80268A60:
	lw      $t1, 0x0024($sp)
	li      $at, 0x0036
	bne     $t1, $at, .L80268A9C
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x192C
	lw      $t3, 0x0010($t2)
	bne     $t3, $at, .L80268A9C
	nop
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x24208081
	li.l    $a0, 0x24208081
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80268A9C:
	lw      $t5, 0x0024($sp)
	li      $at, 0x0045
	bne     $t5, $at, .L80268ABC
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_80251510
	lw      $a0, 0x0028($sp)
.L80268ABC:
	b       .L80268ACC
	move    $v0, $0
	b       .L80268ACC
	nop
.L80268ACC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80268ADC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $a1, 0x002C
	li      $a2, 0x0015
	lw      $t7, 0x001C($t6)
	li      $a3, 0x0001
	move    $a0, $t6
	jal     pl_walk_802687B8
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0017
	bne     $t8, $at, .L80268B44
	nop
	lw      $t9, 0x0028($sp)
	lh      $t0, 0x00AE($t9)
	slti    $at, $t0, 0x0100
	beqz    $at, .L80268B44
	nop
	li.u    $a1, 0x00021315
	li.l    $a1, 0x00021315
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80268B44:
	b       .L80268B54
	move    $v0, $0
	b       .L80268B54
	nop
.L80268B54:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80268B64:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $a1, 0x007B
	li      $a2, 0x0016
	lw      $t7, 0x001C($t6)
	li      $a3, 0x0001
	move    $a0, $t6
	jal     pl_walk_802687B8
	sw      $t7, 0x0010($sp)
	b       .L80268BA0
	move    $v0, $0
	b       .L80268BA0
	nop
.L80268BA0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80268BB0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $a1, 0x007C
	li      $a2, 0x0014
	lw      $t7, 0x001C($t6)
	li      $a3, 0x0001
	move    $a0, $t6
	jal     pl_walk_802687B8
	sw      $t7, 0x0010($sp)
	b       .L80268BEC
	move    $v0, $0
	b       .L80268BEC
	nop
.L80268BEC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80268BFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $a1, 0x0074
	li      $a2, 0x0064
	lw      $t7, 0x001C($t6)
	move    $a3, $0
	move    $a0, $t6
	jal     pl_walk_802687B8
	sw      $t7, 0x0010($sp)
	b       .L80268C38
	move    $v0, $0
	b       .L80268C38
	nop
.L80268C38:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80268C48:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $a1, 0x0075
	li      $a2, 0x0064
	lw      $t7, 0x001C($t6)
	move    $a3, $0
	move    $a0, $t6
	jal     pl_walk_802687B8
	sw      $t7, 0x0010($sp)
	b       .L80268C84
	move    $v0, $0
	b       .L80268C84
	nop
.L80268C84:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80268C94:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $a1, 0x008A
	li      $a2, 0x0020
	lw      $t7, 0x001C($t6)
	li      $a3, 0x0001
	move    $a0, $t6
	jal     pl_walk_802687B8
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0020
	bne     $t8, $at, .L80268CE4
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
.L80268CE4:
	b       .L80268CF4
	move    $v0, $0
	b       .L80268CF4
	nop
.L80268CF4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80268D04:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li.u    $a1, 0x3F666666
	li.l    $a1, 0x3F666666
	jal     pl_walk_80264D80
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_802515D8
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	li      $a1, 0x0001
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0036
	bne     $t6, $at, .L80268D68
	nop
	lw      $t7, 0x0020($sp)
	li.u    $a0, 0x24208081
	li.l    $a0, 0x24208081
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80268D68:
	lw      $t8, 0x001C($sp)
	li      $at, 0x0044
	bne     $t8, $at, .L80268D88
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0020($sp)
.L80268D88:
	jal     player_80250940
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L80268DAC
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80268DAC:
	b       .L80268DBC
	move    $v0, $0
	b       .L80268DBC
	nop
.L80268DBC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_walk_80268DCC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L80268E10
	nop
	li.u    $a1, 0x3F7AE148
	li.l    $a1, 0x3F7AE148
	jal     pl_walk_80264D80
	lw      $a0, 0x0028($sp)
	b       .L80268E50
	nop
.L80268E10:
	lw      $t9, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80268E44
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_walk_80265080
	li      $a1, 0x40000000
	b       .L80268E50
	nop
.L80268E44:
	mtc1    $0, $f8
	lw      $t0, 0x0028($sp)
	swc1    $f8, 0x004C($t0)
.L80268E50:
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lw      $s0, 0x0024($sp)
	beqz    $s0, .L80268E7C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80268E94
	nop
	b       .L80268EA8
	nop
.L80268E7C:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80268EA8
	nop
.L80268E94:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x006C
	b       .L80268EA8
	nop
.L80268EA8:
	lw      $t1, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t1)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80268ED8
	nop
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0008($t2)
	ori     $t4, $t3, 0x0001
	sw      $t4, 0x0008($t2)
.L80268ED8:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	lh      $a1, 0x002E($sp)
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_80251510
	lw      $a0, 0x0028($sp)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0068($t5)
	lh      $t7, 0x0000($t6)
	slti    $at, $t7, 0x0021
	bnez    $at, .L80268F54
	nop
	slti    $at, $t7, 0x0028
	beqz    $at, .L80268F54
	nop
	lw      $t8, 0x0028($sp)
	li      $t0, 0x0004
	li      $at, 0x40600000
	lhu     $t9, 0x001A($t8)
	mtc1    $at, $f6
	li      $at, 0x3F000000
	subu    $t1, $t0, $t9
	mtc1    $t1, $f18
	mtc1    $at, $f10
	cvt.s.w $f4, $f18
	lwc1    $f18, 0x00C0($t8)
	mul.s   $f8, $f4, $f6
	sub.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00C0($t8)
.L80268F54:
	b       .L80268F64
	lw      $v0, 0x0024($sp)
	b       .L80268F64
	nop
.L80268F64:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80268F78:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(pl_walk_80336B00)
	lwc1    $f6, %lo(pl_walk_80336B00)($at)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x0020($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80268FCC
	nop
	lw      $t8, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	jal     pl_physics_80255654
	lw      $a1, 0x0004($t8)
	b       .L802690F8
	nop
.L80268FCC:
	lw      $t9, 0x001C($sp)
	lw      $t1, 0x0018($sp)
	lh      $t0, 0x0002($t9)
	sb      $t0, 0x002B($t1)
	jal     pl_walk_80265458
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80269008
	nop
	lw      $t2, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	jal     player_80252CF4
	lw      $a1, 0x0014($t2)
	b       .L802690F8
	nop
.L80269008:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0010
	beqz    $t5, .L80269038
	nop
	lw      $t6, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	jal     player_80252CF4
	lw      $a1, 0x0008($t6)
	b       .L802690F8
	nop
.L80269038:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x001A($t7)
	lw      $t2, 0x001C($sp)
	lw      $t0, 0x0018($sp)
	lh      $t3, 0x0000($t2)
	lhu     $t1, 0x001A($t0)
	slt     $at, $t1, $t3
	bnez    $at, .L80269080
	nop
	lw      $t4, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	jal     player_80252CF4
	lw      $a1, 0x0008($t4)
	b       .L802690F8
	nop
.L80269080:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t8, $t6, 0x0002
	beqz    $t8, .L802690B8
	nop
	lw      $t9, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	lw      $a1, 0x000C($t9)
	lw      $t9, 0x0020($sp)
	jalr    $t9
	nop
	b       .L802690F8
	nop
.L802690B8:
	lw      $t7, 0x0018($sp)
	lhu     $t0, 0x0002($t7)
	andi    $t2, $t0, 0x0004
	beqz    $t2, .L802690E8
	nop
	lw      $t1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	jal     player_80252CF4
	lw      $a1, 0x0010($t1)
	b       .L802690F8
	nop
.L802690E8:
	b       .L802690F8
	move    $v0, $0
	b       .L802690F8
	nop
.L802690F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80269108:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, pl_walk_8032DC50
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_walk_8032DC50
	jal     pl_walk_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8026913C
	nop
	b       .L80269160
	li      $v0, 0x0001
.L8026913C:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_walk_80268DCC
	li      $a1, 0x004E
	b       .L80269160
	move    $v0, $0
	b       .L80269160
	nop
.L80269160:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80269170:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, pl_walk_8032DC68
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_walk_8032DC68
	jal     pl_walk_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L802691A4
	nop
	b       .L802691C8
	li      $v0, 0x0001
.L802691A4:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_walk_80268DCC
	li      $a1, 0x0057
	b       .L802691C8
	move    $v0, $0
	b       .L802691C8
	nop
.L802691C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_802691D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, pl_walk_8032DC80
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_walk_8032DC80
	jal     pl_walk_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8026920C
	nop
	b       .L80269254
	li      $v0, 0x0001
.L8026920C:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_walk_80268DCC
	li      $a1, 0x00BE
	li      $at, 0x0002
	beq     $v0, $at, .L80269244
	nop
	lw      $t6, 0x0018($sp)
	li      $at, 0x8000
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x001C($t7)
	addu    $t9, $t8, $at
	sh      $t9, 0x001C($t7)
.L80269244:
	b       .L80269254
	move    $v0, $0
	b       .L80269254
	nop
.L80269254:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80269264:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L802692A4
	nop
	li.u    $a1, 0x0C000230
	li.l    $a1, 0x0C000230
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802692F0
	nop
.L802692A4:
	la.u    $a1, pl_walk_8032DC98
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_walk_8032DC98
	jal     pl_walk_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L802692CC
	nop
	b       .L802692F0
	li      $v0, 0x0001
.L802692CC:
	li.u    $a2, 0x010008A1
	li.l    $a2, 0x010008A1
	lw      $a0, 0x0018($sp)
	jal     pl_walk_80268DCC
	li      $a1, 0x0040
	b       .L802692F0
	move    $v0, $0
	b       .L802692F0
	nop
.L802692F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80269300:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80269340
	nop
	li.u    $a1, 0x0C000232
	li.l    $a1, 0x0C000232
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026938C
	nop
.L80269340:
	la.u    $a1, pl_walk_8032DCB0
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_walk_8032DCB0
	jal     pl_walk_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80269368
	nop
	b       .L8026938C
	li      $v0, 0x0001
.L80269368:
	li.u    $a2, 0x010008A1
	li.l    $a2, 0x010008A1
	lw      $a0, 0x0018($sp)
	jal     pl_walk_80268DCC
	li      $a1, 0x0042
	b       .L8026938C
	move    $v0, $0
	b       .L8026938C
	nop
.L8026938C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_8026939C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x4000
	bnez    $t8, .L802693D4
	nop
	lw      $t9, 0x0028($sp)
	li      $at, -0x0003
	lhu     $t0, 0x0002($t9)
	and     $t1, $t0, $at
	sh      $t1, 0x0002($t9)
.L802693D4:
	la.u    $a1, pl_walk_8032DCC8
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_walk_8032DCC8
	jal     pl_walk_80268F78
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802693FC
	nop
	b       .L80269468
	li      $v0, 0x0001
.L802693FC:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	bnez    $t4, .L80269424
	nop
	li.u    $a1, 0x24138081
	li.l    $a1, 0x24138081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
.L80269424:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0088($t5)
	lw      $t7, 0x0110($t6)
	bnez    $t7, .L80269440
	nop
	b       .L80269444
	li      $s0, 0x0011
.L80269440:
	li      $s0, 0x0012
.L80269444:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_walk_80268DCC
	move    $a1, $s0
	b       .L80269468
	move    $v0, $0
	b       .L80269468
	nop
.L80269468:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_8026947C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, pl_walk_8032DCE0
	la.u    $a2, pl_walk_80264340
	la.l    $a2, pl_walk_80264340
	la.l    $a1, pl_walk_8032DCE0
	jal     pl_walk_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L802694B0
	nop
	b       .L802694D4
	li      $v0, 0x0001
.L802694B0:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_walk_80268DCC
	li      $a1, 0x004B
	b       .L802694D4
	move    $v0, $0
	b       .L802694D4
	nop
.L802694D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_802694E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, -0x0003
	lhu     $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	la.u    $a1, pl_walk_8032DCF8
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_walk_8032DCF8
	jal     pl_walk_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8026952C
	nop
	b       .L80269578
	li      $v0, 0x0001
.L8026952C:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	bnez    $t1, .L80269554
	nop
	li.u    $a1, 0x24118081
	li.l    $a1, 0x24118081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
.L80269554:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_walk_80268DCC
	li      $a1, 0x00C0
	b       .L80269578
	move    $v0, $0
	b       .L80269578
	nop
.L80269578:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80269588:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x4000
	bnez    $t8, .L802695BC
	nop
	lw      $t9, 0x0018($sp)
	li      $at, -0x0003
	lhu     $t0, 0x0002($t9)
	and     $t1, $t0, $at
	sh      $t1, 0x0002($t9)
.L802695BC:
	la.u    $a1, pl_walk_8032DD10
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_walk_8032DD10
	jal     pl_walk_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L802695E4
	nop
	b       .L80269630
	li      $v0, 0x0001
.L802695E4:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	bnez    $t4, .L8026960C
	nop
	li.u    $a1, 0x24118081
	li.l    $a1, 0x24118081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
.L8026960C:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_walk_80268DCC
	li      $a1, 0x00C0
	b       .L80269630
	move    $v0, $0
	b       .L80269630
	nop
.L80269630:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_walk_80269640:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $s0, 0x001A($t6)
	lhu     $t8, 0x001A($t6)
	slti    $t7, $s0, 0x0006
	move    $s0, $t7
	addiu   $t9, $t8, 0x0001
	beqz    $s0, .L802696FC
	sh      $t9, 0x001A($t6)
	lw      $t0, 0x0028($sp)
	li      $t2, 0x0007
	lui     $at, %hi(pl_walk_80336B04)
	lhu     $t1, 0x001A($t0)
	lwc1    $f8, %lo(pl_walk_80336B04)($at)
	lwc1    $f16, 0x00C0($t0)
	subu    $t3, $t2, $t1
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x00C0($t0)
	lw      $t4, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802696E0
	nop
	lui     $at, %hi(pl_walk_80336B08)
	lwc1    $f8, %lo(pl_walk_80336B08)($at)
	lw      $t5, 0x0028($sp)
	swc1    $f8, 0x00C0($t5)
.L802696E0:
	jal     player_8025118C
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	lw      $a1, 0x002C($sp)
	b       .L80269734
	nop
.L802696FC:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	slti    $at, $t8, 0x000D
	bnez    $at, .L80269728
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0034($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80269774
	nop
.L80269728:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	lw      $a1, 0x0030($sp)
.L80269734:
	li.u    $a1, 0x3F733333
	li.l    $a1, 0x3F733333
	jal     pl_walk_80264D80
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0028($sp)
	bnez    $v0, .L80269764
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0038($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80269764:
	b       .L80269774
	move    $v0, $0
	b       .L80269774
	nop
.L80269774:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80269788:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	li.u    $t6, 0x0100088C
	li.l    $t6, 0x0100088C
	li.u    $a3, 0x0C000230
	li.l    $a3, 0x0C000230
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x004D
	jal     pl_walk_80269640
	li      $a2, 0x004E
	sw      $v0, 0x0024($sp)
	b       .L802697CC
	lw      $v0, 0x0024($sp)
	b       .L802697CC
	nop
.L802697CC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_802697DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	li.u    $t6, 0x010008A1
	li.l    $t6, 0x010008A1
	li.u    $a3, 0x08000234
	li.l    $a3, 0x08000234
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0041
	jal     pl_walk_80269640
	li      $a2, 0x0040
	sw      $v0, 0x0024($sp)
	b       .L80269820
	lw      $v0, 0x0024($sp)
	b       .L80269820
	nop
.L80269820:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_walk_80269830:
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
	bc1f    .L80269878
	nop
	jal     player_80253488
	lw      $a0, 0x0018($sp)
	b       .L80269944
	nop
.L80269878:
	lw      $t9, 0x0018($sp)
	li      $at, 0x00020000
	lw      $t0, 0x000C($t9)
	and     $t1, $t0, $at
	bnez    $t1, .L802698BC
	nop
	lhu     $t2, 0x0002($t9)
	andi    $t3, $t2, 0x0400
	beqz    $t3, .L802698BC
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80269944
	nop
.L802698BC:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0040
	beqz    $t6, .L802698EC
	nop
	li.u    $a1, 0x00020339
	li.l    $a1, 0x00020339
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80269944
	nop
.L802698EC:
	lw      $t7, 0x0018($sp)
	li      $at, 0x00020000
	lw      $t8, 0x000C($t7)
	and     $t0, $t8, $at
	bnez    $t0, .L80269934
	nop
	lw      $t1, 0x0018($sp)
	lh      $t9, 0x00AE($t1)
	slti    $at, $t9, 0x0100
	beqz    $at, .L80269934
	nop
	li.u    $a1, 0x00021311
	li.l    $a1, 0x00021311
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80269944
	nop
.L80269934:
	b       .L80269944
	move    $v0, $0
	b       .L80269944
	nop
.L80269944:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_walk_main
pl_walk_main:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_walk_80269830
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8026997C
	nop
	b       .L80269F24
	li      $v0, 0x0001
.L8026997C:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80255414
	li      $a1, 0x3E800000
	beqz    $v0, .L80269998
	nop
	b       .L80269F24
	li      $v0, 0x0001
.L80269998:
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x008C0454
	li.l    $at, 0x008C0454
	lw      $s0, 0x000C($t6)
	sltu    $at, $s0, $at
	bnez    $at, .L80269AA8
	nop
	li.u    $at, 0x0400044B
	li.l    $at, 0x0400044B
	sltu    $at, $s0, $at
	bnez    $at, .L80269A60
	nop
	li.u    $at, 0x04008449
	li.l    $at, 0x04008449
	sltu    $at, $s0, $at
	bnez    $at, .L80269A04
	nop
	li.u    $at, 0x04808459
	li.l    $at, 0x04808459
	beq     $s0, $at, .L80269D2C
	nop
	li.u    $at, 0x20810446
	li.l    $at, 0x20810446
	beq     $s0, $at, .L80269C50
	nop
	b       L80269ED0
	nop
.L80269A04:
	li.u    $at, 0x0400047B
	li.l    $at, 0x0400047B
	sltu    $at, $s0, $at
	bnez    $at, .L80269A30
	nop
	li.u    $at, 0x04008448
	li.l    $at, 0x04008448
	beq     $s0, $at, .L80269C64
	nop
	b       L80269ED0
	nop
.L80269A30:
	li.u    $at, 0xFBFFFB90
	li.l    $at, 0xFBFFFB90
	addu    $t7, $s0, $at
	sltiu   $at, $t7, 0x000B
	beqz    $at, L80269ED0
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_walk_80336B0C)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_walk_80336B0C)($at)
	jr      $t7
	nop
.L80269A60:
	li.u    $at, 0x008C0455
	li.l    $at, 0x008C0455
	beq     $s0, $at, .L80269CF0
	nop
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	beq     $s0, $at, .L80269BD8
	nop
	li.u    $at, 0x04000445
	li.l    $at, 0x04000445
	beq     $s0, $at, .L80269C3C
	nop
	li.u    $at, 0x0400044A
	li.l    $at, 0x0400044A
	beq     $s0, $at, .L80269C8C
	nop
	b       L80269ED0
	nop
.L80269AA8:
	li.u    $at, 0x0080045B
	li.l    $at, 0x0080045B
	sltu    $at, $s0, $at
	bnez    $at, .L80269B04
	nop
	li.u    $at, 0x00840452
	li.l    $at, 0x00840452
	beq     $s0, $at, .L80269CB4
	nop
	li.u    $at, 0x00840454
	li.l    $at, 0x00840454
	beq     $s0, $at, .L80269CDC
	nop
	li.u    $at, 0x00880456
	li.l    $at, 0x00880456
	beq     $s0, $at, .L80269D04
	nop
	li.u    $at, 0x008C0453
	li.l    $at, 0x008C0453
	beq     $s0, $at, .L80269CC8
	nop
	b       L80269ED0
	nop
.L80269B04:
	li.u    $at, 0x00020468
	li.l    $at, 0x00020468
	sltu    $at, $s0, $at
	bnez    $at, .L80269B40
	nop
	li.u    $at, 0x00800457
	li.l    $at, 0x00800457
	beq     $s0, $at, .L80269D18
	nop
	li.u    $at, 0x0080045A
	li.l    $at, 0x0080045A
	beq     $s0, $at, .L80269D40
	nop
	b       L80269ED0
	nop
.L80269B40:
	sltiu   $at, $s0, 0x047A
	bnez    $at, .L80269B7C
	nop
	li.u    $at, 0xFFFDFBB7
	li.l    $at, 0xFFFDFBB7
	addu    $t8, $s0, $at
	sltiu   $at, $t8, 0x001F
	beqz    $at, L80269ED0
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_walk_80336B38)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_walk_80336B38)($at)
	jr      $t8
	nop
.L80269B7C:
	sltiu   $at, $s0, 0x044C
	bnez    $at, .L80269BB0
	nop
	addiu   $t9, $s0, -0x0474
	sltiu   $at, $t9, 0x0006
	beqz    $at, L80269ED0
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(pl_walk_80336BB4)
	addu    $at, $at, $t9
	lw      $t9, %lo(pl_walk_80336BB4)($at)
	jr      $t9
	nop
.L80269BB0:
	addiu   $t0, $s0, -0x0442
	sltiu   $at, $t0, 0x000A
	beqz    $at, L80269ED0
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(pl_walk_80336BCC)
	addu    $at, $at, $t0
	lw      $t0, %lo(pl_walk_80336BCC)($at)
	jr      $t0
	nop
.L80269BD8:
	jal     pl_walk_80266354
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269BEC
L80269BEC:
	jal     pl_walk_80266734
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269C00
L80269C00:
	jal     pl_walk_8026699C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269C14
L80269C14:
	jal     pl_walk_80266AF8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269C28
L80269C28:
	jal     pl_walk_80266D4C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269C3C:
	jal     pl_walk_80266E48
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269C50:
	jal     pl_walk_80267504
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269C64:
	jal     pl_walk_80267728
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269C78
L80269C78:
	jal     pl_walk_8026795C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269C8C:
	jal     pl_walk_80266FC8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269CA0
L80269CA0:
	jal     pl_walk_80267240
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269CB4:
	jal     pl_walk_80268074
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269CC8:
	jal     pl_walk_802685C0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269CDC:
	jal     pl_walk_802680D4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269CF0:
	jal     pl_walk_80268608
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269D04:
	jal     pl_walk_80268684
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269D18:
	jal     pl_walk_802665B4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269D2C:
	jal     pl_walk_80268168
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.L80269D40:
	jal     pl_walk_80268338
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269D54
L80269D54:
	jal     pl_walk_802689F8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269D68
L80269D68:
	jal     pl_walk_80268ADC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269D7C
L80269D7C:
	jal     pl_walk_80268B64
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269D90
L80269D90:
	jal     pl_walk_80268BB0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269DA4
L80269DA4:
	jal     pl_walk_80268BFC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269DB8
L80269DB8:
	jal     pl_walk_80268C48
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269DCC
L80269DCC:
	jal     pl_walk_80268C94
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269DE0
L80269DE0:
	jal     pl_walk_80268D04
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269DF4
L80269DF4:
	jal     pl_walk_80269108
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E08
L80269E08:
	jal     pl_walk_80269170
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E1C
L80269E1C:
	jal     pl_walk_8026947C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E30
L80269E30:
	jal     pl_walk_802691D8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E44
L80269E44:
	jal     pl_walk_80269264
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E58
L80269E58:
	jal     pl_walk_80269300
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E6C
L80269E6C:
	jal     pl_walk_802694E4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E80
L80269E80:
	jal     pl_walk_80269588
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E94
L80269E94:
	jal     pl_walk_80269788
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269EA8
L80269EA8:
	jal     pl_walk_802697DC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269EBC
L80269EBC:
	jal     pl_walk_8026939C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269ED0
L80269ED0:
	lw      $t1, 0x0024($sp)
	bnez    $t1, .L80269F14
	nop
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0200
	beqz    $t4, .L80269F14
	nop
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0008($t5)
	ori     $t7, $t6, 0x0400
	sw      $t7, 0x0008($t5)
	lw      $t8, 0x0028($sp)
	li      $at, -0x0002
	lw      $t9, 0x0008($t8)
	and     $t0, $t9, $at
	sw      $t0, 0x0008($t8)
.L80269F14:
	b       .L80269F24
	lw      $v0, 0x0024($sp)
	b       .L80269F24
	nop
.L80269F24:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

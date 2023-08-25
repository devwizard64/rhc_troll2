.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_jump_80269F40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x0040($t7)
	sw      $t8, 0x001C($sp)
	lh      $t9, 0x0026($sp)
	lw      $t0, 0x001C($sp)
	beq     $t9, $t0, .L80269F90
	nop
	lh      $t1, 0x002A($sp)
	beq     $t1, $t0, .L80269F90
	nop
	lh      $t2, 0x002E($sp)
	bne     $t2, $t0, .L80269FA8
	nop
.L80269F90:
	lw      $t3, 0x0020($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t3)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80269FA8:
	b       .L80269FB0
	nop
.L80269FB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_80269FC0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	li      $at, 0x00020000
	and     $t9, $t8, $at
	bnez    $t9, .L8026A078
	nop
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	beq     $t8, $at, .L8026A078
	nop
	li.u    $at, 0x10880899
	li.l    $at, 0x10880899
	beq     $t8, $at, .L8026A078
	nop
	lw      $t0, 0x0020($sp)
	li      $at, 0x00040000
	lw      $t1, 0x0004($t0)
	and     $t2, $t1, $at
	bnez    $t2, .L8026A078
	nop
	lw      $t3, 0x0020($sp)
	lui     $at, %hi(pl_jump_80336C00)
	lwc1    $f10, %lo(pl_jump_80336C00)($at)
	lwc1    $f4, 0x00BC($t3)
	lwc1    $f6, 0x0040($t3)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8026A078
	nop
	lw      $t4, 0x0020($sp)
	li.u    $a0, 0x2410C081
	li.l    $a0, 0x2410C081
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t5, 0x0020($sp)
	li      $at, 0x00040000
	lw      $t6, 0x0004($t5)
	or      $t7, $t6, $at
	sw      $t7, 0x0004($t5)
.L8026A078:
	b       .L8026A080
	nop
.L8026A080:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026A090:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, .L8026A100
	nop
	li      $at, 0xC1E00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.le.s  $f4, $f6
	nop
	bc1t    .L8026A0E4
	nop
	li      $at, 0x41E00000
	mtc1    $at, $f8
	nop
	c.le.s  $f8, $f4
	nop
	bc1f    .L8026A100
	nop
.L8026A0E4:
	li.u    $a1, 0x24308081
	li.l    $a1, 0x24308081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	b       .L8026A114
	nop
.L8026A100:
	li.u    $a1, 0x24058081
	li.l    $a1, 0x24058081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
.L8026A114:
	b       .L8026A11C
	nop
.L8026A11C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026A12C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0060($t6)
	lwc1    $f12, 0x0024($t7)
	jal     atan2
	lwc1    $f14, 0x001C($t7)
	lw      $t8, 0x0028($sp)
	sh      $v0, 0x002E($t8)
	lw      $t9, 0x0028($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8026A188
	nop
	li      $at, 0x41C00000
	mtc1    $at, $f8
	lw      $t0, 0x0028($sp)
	swc1    $f8, 0x0054($t0)
.L8026A188:
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0004($t1)
	andi    $t3, $t2, 0x0004
	bnez    $t3, .L8026A1CC
	nop
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0004($t4)
	andi    $t6, $t5, 0x0010
	beqz    $t6, .L8026A1B8
	nop
	b       .L8026A1BC
	li      $s0, 0x000C
.L8026A1B8:
	li      $s0, 0x0012
.L8026A1BC:
	lw      $t7, 0x0028($sp)
	lbu     $t8, 0x00B2($t7)
	addu    $t9, $t8, $s0
	sb      $t9, 0x00B2($t7)
.L8026A1CC:
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x2414A081
	li.l    $a0, 0x2414A081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     player_802521A0
	lw      $a0, 0x0028($sp)
	li.u    $a1, 0x010208B7
	li.l    $a1, 0x010208B7
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	li      $a2, 0x0001
	b       .L8026A210
	nop
	b       .L8026A210
	nop
.L8026A210:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026A224:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lwc1    $f4, 0x00BC($t6)
	lwc1    $f6, 0x0040($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t7, 0x0030($sp)
	li.u    $at, 0x008008A9
	li.l    $at, 0x008008A9
	lhu     $t8, 0x0018($t7)
	bne     $t8, $at, .L8026A274
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	b       .L8026A280
	swc1    $f10, 0x0028($sp)
.L8026A274:
	lui     $at, %hi(pl_jump_80336C04)
	lwc1    $f16, %lo(pl_jump_80336C04)($at)
	swc1    $f16, 0x0028($sp)
.L8026A280:
	lw      $t9, 0x0030($sp)
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	lw      $t0, 0x000C($t9)
	beq     $t0, $at, .L8026A3DC
	nop
	lw      $t1, 0x0068($t9)
	li      $at, 0x0001
	lh      $t2, 0x0000($t1)
	beq     $t2, $at, .L8026A3DC
	nop
	lw      $t3, 0x0030($sp)
	li      $at, 0xC25C0000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t3)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L8026A3DC
	nop
	lui     $at, %hi(pl_jump_80336C08)
	lwc1    $f8, %lo(pl_jump_80336C08)($at)
	lwc1    $f6, 0x002C($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8026A358
	nop
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0004($t4)
	andi    $t6, $t5, 0x0010
	beqz    $t6, .L8026A304
	nop
	b       .L8026A308
	li      $s0, 0x0010
.L8026A304:
	li      $s0, 0x0018
.L8026A308:
	lw      $t7, 0x0030($sp)
	lbu     $t8, 0x00B2($t7)
	addu    $t0, $t8, $s0
	sb      $t0, 0x00B2($t7)
	jal     camera_8027F590
	li      $a0, 0x0009
	lw      $t9, 0x0030($sp)
	li.u    $a0, 0x240AFF81
	li.l    $a0, 0x240AFF81
	lw      $a1, 0x0088($t9)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	jal     player_80253178
	li      $a2, 0x0004
	b       .L8026A3EC
	nop
	b       .L8026A3DC
	nop
.L8026A358:
	lwc1    $f10, 0x002C($sp)
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8026A3DC
	nop
	jal     player_80251BD4
	lw      $a0, 0x0030($sp)
	bnez    $v0, .L8026A3DC
	nop
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0004($t1)
	andi    $t3, $t2, 0x0010
	beqz    $t3, .L8026A39C
	nop
	b       .L8026A3A0
	li      $s0, 0x0008
.L8026A39C:
	li      $s0, 0x000C
.L8026A3A0:
	lw      $t4, 0x0030($sp)
	lbu     $t5, 0x00B2($t4)
	addu    $t6, $t5, $s0
	sb      $t6, 0x00B2($t4)
	lw      $t0, 0x0030($sp)
	li      $t8, 0x001E
	sb      $t8, 0x00B4($t0)
	jal     camera_8027F590
	li      $a0, 0x0009
	lw      $t7, 0x0030($sp)
	li.u    $a0, 0x240AFF81
	li.l    $a0, 0x240AFF81
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026A3DC:
	b       .L8026A3EC
	move    $v0, $0
	b       .L8026A3EC
	nop
.L8026A3EC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_jump_8026A400:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L8026A470
	nop
	lw      $t9, 0x0028($sp)
	li      $at, 0x41E00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026A450
	nop
	li.u    $s0, 0x0188088A
	b       .L8026A458
	li.l    $s0, 0x0188088A
.L8026A450:
	li.u    $s0, 0x018008AC
	li.l    $s0, 0x018008AC
.L8026A458:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026A480
	nop
.L8026A470:
	b       .L8026A480
	move    $v0, $0
	b       .L8026A480
	nop
.L8026A480:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026A494:
	addiu   $sp, $sp, -0x0010
	lw      $t6, 0x0090($a0)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0007
	sw      $t8, 0x000C($sp)
	lw      $t9, 0x0068($a0)
	sw      $t9, 0x0008($sp)
	lw      $t0, 0x0008($sp)
	lb      $t1, 0x0004($t0)
	sw      $t1, 0x0004($sp)
	lw      $t2, 0x0008($sp)
	lh      $t3, 0x0000($t2)
	sw      $t3, 0x0000($sp)
	lw      $t4, 0x0008($sp)
	beqz    $t4, .L8026A580
	nop
	lw      $t5, 0x000C($sp)
	li      $at, 0x0002
	beq     $t5, $at, .L8026A4F0
	nop
	li      $at, 0x0003
	bne     $t5, $at, .L8026A580
	nop
.L8026A4F0:
	lw      $t6, 0x0000($sp)
	li      $at, 0x0001
	beq     $t6, $at, .L8026A580
	nop
	li      $at, 0x0030
	beq     $t6, $at, .L8026A580
	nop
	slti    $at, $t6, 0x0035
	bnez    $at, .L8026A524
	nop
	slti    $at, $t6, 0x0038
	bnez    $at, .L8026A580
	nop
.L8026A524:
	lw      $t7, 0x0004($sp)
	andi    $t8, $t7, 0x0001
	bnez    $t8, .L8026A580
	nop
	lwc1    $f4, 0x00BC($a0)
	lwc1    $f6, 0x0040($a0)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8026A580
	nop
	lw      $t9, 0x0008($sp)
	lui     $at, %hi(pl_jump_80336C0C)
	lwc1    $f18, %lo(pl_jump_80336C0C)($at)
	lwc1    $f16, 0x0020($t9)
	c.le.s  $f18, $f16
	nop
	bc1f    .L8026A580
	nop
	b       .L8026A590
	li      $v0, 0x0001
.L8026A580:
	b       .L8026A590
	move    $v0, $0
	b       .L8026A590
	nop
.L8026A590:
	jr      $ra
	addiu   $sp, $sp, 0x0010

pl_jump_8026A598:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     pl_jump_8026A494
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8026A600
	nop
	lw      $t6, 0x0018($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t6)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0018($sp)
	li      $at, 0x00010000
	lw      $t8, 0x0008($t7)
	or      $t9, $t8, $at
	sw      $t9, 0x0008($t7)
	li.u    $a1, 0x0002033C
	li.l    $a1, 0x0002033C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026A61C
	li      $v0, 0x0001
.L8026A600:
	lw      $a0, 0x0018($sp)
	jal     pl_jump_8026A224
	lw      $a1, 0x001C($sp)
	b       .L8026A61C
	nop
	b       .L8026A61C
	nop
.L8026A61C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026A62C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x002C
	lh      $t9, 0x0000($t8)
	bne     $t9, $at, .L8026A7F8
	nop
	lw      $t0, 0x0024($sp)
	lh      $t1, 0x0002($t0)
	sll     $t2, $t1, 8
	sh      $t2, 0x001E($sp)
	lhu     $t3, 0x001E($sp)
	lui     $at, %hi(pl_jump_80336C10)
	lwc1    $f4, %lo(pl_jump_80336C10)($at)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t6, 0x0028($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x0058($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0058($t6)
	lhu     $t7, 0x001E($sp)
	lui     $at, %hi(pl_jump_80336C14)
	lwc1    $f18, %lo(pl_jump_80336C14)($at)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	lw      $t0, 0x0028($sp)
	mul.s   $f6, $f18, $f4
	lwc1    $f10, 0x005C($t0)
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x005C($t0)
	lw      $t1, 0x0028($sp)
	lwc1    $f16, 0x0058($t1)
	lwc1    $f4, 0x005C($t1)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f10, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f10
	swc1    $f0, 0x0020($sp)
	li      $at, 0x42400000
	mtc1    $at, $f8
	lwc1    $f6, 0x0020($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8026A760
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x42400000
	mtc1    $at, $f4
	lwc1    $f16, 0x0058($t2)
	lwc1    $f10, 0x0020($sp)
	mul.s   $f18, $f16, $f4
	div.s   $f6, $f18, $f10
	swc1    $f6, 0x0058($t2)
	lw      $t3, 0x0028($sp)
	li      $at, 0x42400000
	mtc1    $at, $f16
	lwc1    $f8, 0x005C($t3)
	lwc1    $f18, 0x0020($sp)
	mul.s   $f4, $f8, $f16
	div.s   $f10, $f4, $f18
	swc1    $f10, 0x005C($t3)
	li      $at, 0x42000000
	mtc1    $at, $f6
	b       .L8026A78C
	swc1    $f6, 0x0020($sp)
.L8026A760:
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f8, 0x0020($sp)
	c.lt.s  $f16, $f8
	nop
	bc1f    .L8026A78C
	nop
	li      $at, 0x42000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0020($sp)
.L8026A78C:
	lw      $t4, 0x0028($sp)
	lwc1    $f18, 0x0058($t4)
	swc1    $f18, 0x0048($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f10, 0x005C($t5)
	swc1    $f10, 0x0050($t5)
	lw      $t6, 0x0028($sp)
	lwc1    $f12, 0x005C($t6)
	jal     atan2
	lwc1    $f14, 0x0058($t6)
	lw      $t7, 0x0028($sp)
	sh      $v0, 0x0038($t7)
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0020($sp)
	lh      $t9, 0x002E($t8)
	lh      $t0, 0x0038($t8)
	subu    $t1, $t9, $t0
	andi    $t2, $t1, 0xFFFF
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f16, $f6, $f8
	swc1    $f16, 0x0054($t8)
	b       .L8026A808
	li      $v0, 0x0001
.L8026A7F8:
	b       .L8026A808
	move    $v0, $0
	b       .L8026A808
	nop
.L8026A808:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026A818:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sdc1    $f20, 0x0010($sp)
	jal     pl_jump_8026A62C
	lw      $a0, 0x0030($sp)
	bnez    $v0, .L8026AA2C
	nop
	lw      $t6, 0x0030($sp)
	li.u    $at, 0x03000888
	li.l    $at, 0x03000888
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, .L8026A860
	nop
	li      $at, 0x42400000
	mtc1    $at, $f4
	b       .L8026A870
	swc1    $f4, 0x002C($sp)
.L8026A860:
	li      $at, 0x42000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x002C($sp)
.L8026A870:
	lw      $t8, 0x0030($sp)
	li.u    $a2, 0x3EB33333
	li.l    $a2, 0x3EB33333
	mtc1    $0, $f14
	addu    $a3, $a2, $0
	jal     converge_f
	lwc1    $f12, 0x0054($t8)
	lw      $t9, 0x0030($sp)
	swc1    $f0, 0x0054($t9)
	lw      $t0, 0x0030($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, .L8026A960
	nop
	lw      $t3, 0x0030($sp)
	lh      $t4, 0x0024($t3)
	lh      $t5, 0x002E($t3)
	subu    $t6, $t4, $t5
	sh      $t6, 0x002A($sp)
	lw      $t7, 0x0030($sp)
	li      $at, 0x42000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0020($t7)
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($sp)
	lhu     $t8, 0x002A($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f18
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f8, 0x0024($sp)
	lw      $t1, 0x0030($sp)
	mul.s   $f6, $f18, $f4
	lwc1    $f16, 0x0054($t1)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0054($t1)
	lhu     $t2, 0x002A($sp)
	li      $at, 0x44000000
	mtc1    $at, $f4
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t5, 0x0030($sp)
	lwc1    $f16, 0x0024($sp)
	mul.s   $f8, $f4, $f6
	lh      $t6, 0x002E($t5)
	mtc1    $t6, $f18
	mul.s   $f10, $f8, $f16
	cvt.s.w $f4, $f18
	add.s   $f6, $f4, $f10
	trunc.w.s $f8, $f6
	mfc1    $t8, $f8
	nop
	sh      $t8, 0x002E($t5)
.L8026A960:
	lw      $t9, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f16, 0x0054($t9)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L8026A994
	nop
	lw      $t0, 0x0030($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f4, 0x0054($t0)
	sub.s   $f6, $f4, $f10
	swc1    $f6, 0x0054($t0)
.L8026A994:
	lw      $t1, 0x0030($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f16
	lwc1    $f8, 0x0054($t1)
	c.lt.s  $f8, $f16
	nop
	bc1f    .L8026A9CC
	nop
	lw      $t2, 0x0030($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t2)
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0054($t2)
.L8026A9CC:
	lw      $t3, 0x0030($sp)
	lui     $at, %hi(math_sin)
	lhu     $t4, 0x002E($t3)
	lwc1    $f8, 0x0054($t3)
	sra     $t6, $t4, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f20, $f6, $f8
	swc1    $f20, 0x0058($t3)
	lw      $t8, 0x0030($sp)
	swc1    $f20, 0x0048($t8)
	lw      $t5, 0x0030($sp)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x002E($t5)
	lwc1    $f18, 0x0054($t5)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	mul.s   $f20, $f16, $f18
	swc1    $f20, 0x005C($t5)
	lw      $t2, 0x0030($sp)
	swc1    $f20, 0x0050($t2)
.L8026AA2C:
	b       .L8026AA34
	nop
.L8026AA34:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_jump_8026AA48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0024($sp)
	jal     pl_jump_8026A62C
	lw      $a0, 0x0028($sp)
	bnez    $v0, .L8026ACC0
	nop
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x03000888
	li.l    $at, 0x03000888
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, .L8026AA98
	nop
	li      $at, 0x42400000
	mtc1    $at, $f6
	b       .L8026AAA8
	swc1    $f6, 0x0020($sp)
.L8026AA98:
	li      $at, 0x42000000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0020($sp)
.L8026AAA8:
	lw      $t8, 0x0028($sp)
	li.u    $a2, 0x3EB33333
	li.l    $a2, 0x3EB33333
	mtc1    $0, $f14
	addu    $a3, $a2, $0
	jal     converge_f
	lwc1    $f12, 0x0054($t8)
	lw      $t9, 0x0028($sp)
	swc1    $f0, 0x0054($t9)
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, .L8026AB7C
	nop
	lw      $t3, 0x0028($sp)
	lh      $t4, 0x0024($t3)
	lh      $t5, 0x002E($t3)
	subu    $t6, $t4, $t5
	sh      $t6, 0x001E($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0020($t7)
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lhu     $t8, 0x001E($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0018($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x3FC00000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	lw      $t1, 0x0028($sp)
	lwc1    $f18, 0x0054($t1)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0054($t1)
	lhu     $t2, 0x001E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0018($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f18
	mul.s   $f10, $f6, $f8
	nop
	mul.s   $f16, $f10, $f18
	swc1    $f16, 0x0024($sp)
.L8026AB7C:
	lw      $t5, 0x0028($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f4, 0x0054($t5)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026ABB0
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t6)
	sub.s   $f18, $f8, $f10
	swc1    $f18, 0x0054($t6)
.L8026ABB0:
	lw      $t7, 0x0028($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f4
	lwc1    $f16, 0x0054($t7)
	c.lt.s  $f16, $f4
	nop
	bc1f    .L8026ABE8
	nop
	lw      $t8, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t8)
.L8026ABE8:
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x002E($t9)
	lwc1    $f16, 0x0054($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f18, %lo(math_sin)($at)
	mul.s   $f4, $f18, $f16
	swc1    $f4, 0x0058($t9)
	lw      $t3, 0x0028($sp)
	lui     $at, %hi(math_cos)
	lhu     $t4, 0x002E($t3)
	lwc1    $f8, 0x0054($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x005C($t3)
	lw      $t7, 0x0028($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x0024($sp)
	lh      $t8, 0x002E($t7)
	lwc1    $f6, 0x0058($t7)
	addiu   $t0, $t8, 0x4000
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t9, $t2, 2
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f4, $f18, $f16
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0058($t7)
	lw      $t4, 0x0028($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x0024($sp)
	lh      $t5, 0x002E($t4)
	lwc1    $f6, 0x005C($t4)
	addiu   $t6, $t5, 0x4000
	andi    $t3, $t6, 0xFFFF
	sra     $t8, $t3, 4
	sll     $t0, $t8, 2
	addu    $at, $at, $t0
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f16, $f10, $f18
	add.s   $f4, $f6, $f16
	swc1    $f4, 0x005C($t4)
	lw      $t1, 0x0028($sp)
	lwc1    $f8, 0x0058($t1)
	swc1    $f8, 0x0048($t1)
	lw      $t2, 0x0028($sp)
	lwc1    $f10, 0x005C($t2)
	swc1    $f10, 0x0050($t2)
.L8026ACC0:
	b       .L8026ACC8
	nop
.L8026ACC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026ACD8:
	addiu   $sp, $sp, -0x0010
	lhu     $t6, 0x0002($a0)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L8026ADFC
	nop
	lh      $t8, 0x0024($a0)
	lh      $t9, 0x002E($a0)
	subu    $t0, $t8, $t9
	sh      $t0, 0x000E($sp)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($a0)
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($sp)
	lhu     $t1, 0x000E($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0008($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	lwc1    $f4, 0x0054($a0)
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0054($a0)
	lhu     $t4, 0x000E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f10, 0x0008($sp)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_sin)($at)
	lh      $t7, 0x002E($a0)
	li      $at, 0x44800000
	mul.s   $f16, $f8, $f10
	mtc1    $at, $f4
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f18, $f16, $f4
	add.s   $f10, $f8, $f18
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sh      $t9, 0x002E($a0)
	lwc1    $f4, 0x0054($a0)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8026ADCC
	nop
	lh      $t0, 0x002E($a0)
	li      $at, 0x8000
	addu    $t1, $t0, $at
	sh      $t1, 0x002E($a0)
	li      $at, 0xBF800000
	mtc1    $at, $f18
	lwc1    $f8, 0x0054($a0)
	mul.s   $f10, $f8, $f18
	swc1    $f10, 0x0054($a0)
.L8026ADCC:
	li      $at, 0x42000000
	mtc1    $at, $f4
	lwc1    $f16, 0x0054($a0)
	c.lt.s  $f4, $f16
	nop
	bc1f    .L8026ADFC
	nop
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($a0)
	sub.s   $f18, $f6, $f8
	swc1    $f18, 0x0054($a0)
.L8026ADFC:
	lhu     $t2, 0x002E($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0054($a0)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f12, $f10, $f16
	swc1    $f12, 0x0058($a0)
	swc1    $f12, 0x0048($a0)
	lhu     $t5, 0x002E($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x0054($a0)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f12, $f4, $f6
	swc1    $f12, 0x005C($a0)
	swc1    $f12, 0x0050($a0)
	b       .L8026AE54
	nop
.L8026AE54:
	jr      $ra
	addiu   $sp, $sp, 0x0010

pl_jump_8026AE5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	lw      $t7, 0x009C($t6)
	div.s   $f8, $f4, $f6
	lwc1    $f10, 0x0004($t7)
	mul.s   $f16, $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	subu    $t2, $0, $t1
	sh      $t2, 0x001E($sp)
	lh      $t3, 0x001E($sp)
	blez    $t3, .L8026AF20
	nop
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x0034($t4)
	bgez    $t5, .L8026AEF8
	nop
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0034($t6)
	addiu   $t8, $t7, 0x0040
	sh      $t8, 0x0034($t6)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x0034($t9)
	slti    $at, $t0, 0x0011
	bnez    $at, .L8026AEF0
	nop
	lw      $t2, 0x0020($sp)
	li      $t1, 0x0010
	sh      $t1, 0x0034($t2)
.L8026AEF0:
	b       .L8026AF18
	nop
.L8026AEF8:
	lw      $t3, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0010
	li      $a3, 0x0020
	jal     converge_i
	lh      $a0, 0x0034($t3)
	lw      $t4, 0x0020($sp)
	sh      $v0, 0x0034($t4)
.L8026AF18:
	b       .L8026AFBC
	nop
.L8026AF20:
	lh      $t5, 0x001E($sp)
	bgez    $t5, .L8026AF9C
	nop
	lw      $t7, 0x0020($sp)
	lh      $t8, 0x0034($t7)
	blez    $t8, .L8026AF74
	nop
	lw      $t6, 0x0020($sp)
	lh      $t9, 0x0034($t6)
	addiu   $t0, $t9, -0x0040
	sh      $t0, 0x0034($t6)
	lw      $t1, 0x0020($sp)
	lh      $t2, 0x0034($t1)
	slti    $at, $t2, -0x0010
	beqz    $at, .L8026AF6C
	nop
	lw      $t4, 0x0020($sp)
	li      $t3, -0x0010
	sh      $t3, 0x0034($t4)
.L8026AF6C:
	b       .L8026AF94
	nop
.L8026AF74:
	lw      $t5, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0020
	li      $a3, 0x0010
	jal     converge_i
	lh      $a0, 0x0034($t5)
	lw      $t7, 0x0020($sp)
	sh      $v0, 0x0034($t7)
.L8026AF94:
	b       .L8026AFBC
	nop
.L8026AF9C:
	lw      $t8, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0040
	li      $a3, 0x0040
	jal     converge_i
	lh      $a0, 0x0034($t8)
	lw      $t9, 0x0020($sp)
	sh      $v0, 0x0034($t9)
.L8026AFBC:
	lw      $t0, 0x0020($sp)
	lh      $t6, 0x002E($t0)
	lh      $t1, 0x0034($t0)
	addu    $t2, $t6, $t1
	sh      $t2, 0x002E($t0)
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x0034($t3)
	subu    $t5, $0, $t4
	sll     $t7, $t5, 2
	addu    $t7, $t7, $t5
	sll     $t7, $t7, 2
	sh      $t7, 0x0030($t3)
	b       .L8026AFF4
	nop
.L8026AFF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026B004:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	lw      $t7, 0x009C($t6)
	div.s   $f8, $f4, $f6
	lwc1    $f10, 0x0008($t7)
	mul.s   $f16, $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	subu    $t2, $0, $t1
	sh      $t2, 0x001E($sp)
	lh      $t3, 0x001E($sp)
	blez    $t3, .L8026B0C8
	nop
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x0032($t4)
	bgez    $t5, .L8026B0A0
	nop
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0032($t6)
	addiu   $t8, $t7, 0x0040
	sh      $t8, 0x0032($t6)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x0032($t9)
	slti    $at, $t0, 0x0021
	bnez    $at, .L8026B098
	nop
	lw      $t2, 0x0020($sp)
	li      $t1, 0x0020
	sh      $t1, 0x0032($t2)
.L8026B098:
	b       .L8026B0C0
	nop
.L8026B0A0:
	lw      $t3, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0020
	li      $a3, 0x0040
	jal     converge_i
	lh      $a0, 0x0032($t3)
	lw      $t4, 0x0020($sp)
	sh      $v0, 0x0032($t4)
.L8026B0C0:
	b       .L8026B164
	nop
.L8026B0C8:
	lh      $t5, 0x001E($sp)
	bgez    $t5, .L8026B144
	nop
	lw      $t7, 0x0020($sp)
	lh      $t8, 0x0032($t7)
	blez    $t8, .L8026B11C
	nop
	lw      $t6, 0x0020($sp)
	lh      $t9, 0x0032($t6)
	addiu   $t0, $t9, -0x0040
	sh      $t0, 0x0032($t6)
	lw      $t1, 0x0020($sp)
	lh      $t2, 0x0032($t1)
	slti    $at, $t2, -0x0020
	beqz    $at, .L8026B114
	nop
	lw      $t4, 0x0020($sp)
	li      $t3, -0x0020
	sh      $t3, 0x0032($t4)
.L8026B114:
	b       .L8026B13C
	nop
.L8026B11C:
	lw      $t5, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0040
	li      $a3, 0x0020
	jal     converge_i
	lh      $a0, 0x0032($t5)
	lw      $t7, 0x0020($sp)
	sh      $v0, 0x0032($t7)
.L8026B13C:
	b       .L8026B164
	nop
.L8026B144:
	lw      $t8, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0040
	li      $a3, 0x0040
	jal     converge_i
	lh      $a0, 0x0032($t8)
	lw      $t9, 0x0020($sp)
	sh      $v0, 0x0032($t9)
.L8026B164:
	b       .L8026B16C
	nop
.L8026B16C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026B17C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026B004
	lw      $a0, 0x0020($sp)
	jal     pl_jump_8026AE5C
	lw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x46800000
	mtc1    $at, $f8
	lh      $t7, 0x002C($t6)
	li      $at, 0x40000000
	mtc1    $at, $f16
	mtc1    $t7, $f4
	lui     $at, %hi(pl_jump_80336C18)
	cvt.s.w $f6, $f4
	lwc1    $f4, %lo(pl_jump_80336C18)($at)
	div.s   $f10, $f6, $f8
	lwc1    $f8, 0x0054($t6)
	mul.s   $f18, $f16, $f10
	add.s   $f6, $f18, $f4
	sub.s   $f16, $f8, $f6
	swc1    $f16, 0x0054($t6)
	lw      $t8, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lhu     $t9, 0x0034($t8)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0054($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x3F000000
	mtc1    $at, $f8
	sub.s   $f4, $f10, $f18
	mul.s   $f6, $f8, $f4
	sub.s   $f10, $f16, $f6
	swc1    $f10, 0x0054($t8)
	lw      $t2, 0x0020($sp)
	mtc1    $0, $f8
	lwc1    $f18, 0x0054($t2)
	c.lt.s  $f18, $f8
	nop
	bc1f    .L8026B240
	nop
	mtc1    $0, $f4
	lw      $t3, 0x0020($sp)
	swc1    $f4, 0x0054($t3)
.L8026B240:
	lw      $t4, 0x0020($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f16, 0x0054($t4)
	c.lt.s  $f6, $f16
	nop
	bc1f    .L8026B2A0
	nop
	lw      $t5, 0x0020($sp)
	li      $at, 0x42000000
	mtc1    $at, $f18
	lwc1    $f10, 0x0054($t5)
	lh      $t7, 0x002C($t5)
	li      $at, 0x40C00000
	sub.s   $f8, $f10, $f18
	mtc1    $at, $f4
	mtc1    $t7, $f6
	mul.s   $f16, $f8, $f4
	cvt.s.w $f10, $f6
	add.s   $f18, $f10, $f16
	trunc.w.s $f8, $f18
	mfc1    $t9, $f8
	b       .L8026B310
	sh      $t9, 0x002C($t5)
.L8026B2A0:
	lw      $t0, 0x0020($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026B300
	nop
	lw      $t1, 0x0020($sp)
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t1)
	lh      $t8, 0x002C($t1)
	li      $at, 0x41200000
	sub.s   $f18, $f10, $f16
	mtc1    $at, $f8
	mtc1    $t8, $f6
	mul.s   $f4, $f18, $f8
	cvt.s.w $f10, $f6
	add.s   $f16, $f10, $f4
	trunc.w.s $f18, $f16
	mfc1    $t3, $f18
	b       .L8026B310
	sh      $t3, 0x002C($t1)
.L8026B300:
	lw      $t4, 0x0020($sp)
	lh      $t7, 0x002C($t4)
	addiu   $t6, $t7, -0x0400
	sh      $t6, 0x002C($t4)
.L8026B310:
	lw      $t9, 0x0020($sp)
	lh      $t5, 0x002C($t9)
	lh      $t0, 0x0032($t9)
	addu    $t8, $t5, $t0
	sh      $t8, 0x002C($t9)
	lw      $t2, 0x0020($sp)
	lh      $t3, 0x002C($t2)
	slti    $at, $t3, 0x2AAB
	bnez    $at, .L8026B344
	nop
	lw      $t7, 0x0020($sp)
	li      $t1, 0x2AAA
	sh      $t1, 0x002C($t7)
.L8026B344:
	lw      $t6, 0x0020($sp)
	lh      $t4, 0x002C($t6)
	slti    $at, $t4, -0x2AAA
	beqz    $at, .L8026B364
	nop
	lw      $t0, 0x0020($sp)
	li      $t5, -0x2AAA
	sh      $t5, 0x002C($t0)
.L8026B364:
	lw      $t8, 0x0020($sp)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x002C($t8)
	lwc1    $f8, 0x0054($t8)
	lhu     $t1, 0x002E($t8)
	sra     $t2, $t9, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_cos)($at)
	sra     $t7, $t1, 4
	sll     $t6, $t7, 2
	mul.s   $f10, $f8, $f6
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t6
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f16, $f4, $f10
	swc1    $f16, 0x0048($t8)
	lw      $t4, 0x0020($sp)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x002C($t4)
	lwc1    $f8, 0x0054($t4)
	sra     $t0, $t5, 4
	sll     $t9, $t0, 2
	addu    $at, $at, $t9
	lwc1    $f18, %lo(math_sin)($at)
	mul.s   $f6, $f18, $f8
	swc1    $f6, 0x004C($t4)
	lw      $t2, 0x0020($sp)
	la.u    $t6, math_cos
	la.l    $t6, math_cos
	lhu     $t3, 0x002C($t2)
	lwc1    $f4, 0x0054($t2)
	lhu     $t5, 0x002E($t2)
	sra     $t1, $t3, 4
	sll     $t7, $t1, 2
	addu    $t8, $t7, $t6
	lwc1    $f10, 0x0000($t8)
	sra     $t0, $t5, 4
	sll     $t9, $t0, 2
	mul.s   $f16, $f4, $f10
	addu    $t4, $t9, $t6
	lwc1    $f18, 0x0000($t4)
	mul.s   $f8, $f18, $f16
	swc1    $f8, 0x0050($t2)
	lw      $t3, 0x0020($sp)
	lwc1    $f6, 0x0048($t3)
	swc1    $f6, 0x0058($t3)
	lw      $t1, 0x0020($sp)
	lwc1    $f4, 0x0050($t1)
	swc1    $f4, 0x005C($t1)
	b       .L8026B434
	nop
.L8026B434:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026B444:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     pl_jump_8026AA48
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_physics_80256B24
	lw      $a1, 0x002C($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	sltiu   $at, $t6, 0x0007
	beqz    $at, L8026B680
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(pl_jump_80336C1C)
	addu    $at, $at, $t6
	lw      $t6, %lo(pl_jump_80336C1C)($at)
	jr      $t6
	nop
.globl L8026B49C
L8026B49C:
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	lw      $a1, 0x0028($sp)
	b       L8026B680
	nop
.globl L8026B4B0
L8026B4B0:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A598
	lw      $a0, 0x0020($sp)
	bnez    $v0, .L8026B4D8
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026B4D8:
	b       L8026B680
	nop
.globl L8026B4E0
L8026B4E0:
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	lw      $a1, 0x0028($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026B618
	nop
	lw      $a0, 0x0020($sp)
	jal     pl_physics_802552FC
	move    $a1, $0
	lw      $t8, 0x0020($sp)
	li      $at, 0x8000
	lh      $t9, 0x002E($t8)
	addu    $t0, $t9, $at
	sh      $t0, 0x002E($t8)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0060($t1)
	beqz    $t2, .L8026B554
	nop
	lw      $a0, 0x0020($sp)
	li      $a1, 0x08A7
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026B610
	nop
.L8026B554:
	lw      $t3, 0x0020($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x004C($t3)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8026B57C
	nop
	mtc1    $0, $f16
	lw      $t4, 0x0020($sp)
	swc1    $f16, 0x004C($t4)
.L8026B57C:
	lw      $t5, 0x0020($sp)
	li      $at, 0x42180000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t5)
	c.le.s  $f4, $f18
	nop
	bc1f    .L8026B5C8
	nop
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0008($t6)
	ori     $t9, $t7, 0x0002
	sw      $t9, 0x0008($t6)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026B610
	nop
.L8026B5C8:
	lw      $t0, 0x0020($sp)
	li      $at, 0x41000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t0)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8026B5F4
	nop
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0xC1000000
.L8026B5F4:
	li.u    $a1, 0x010208B6
	li.l    $a1, 0x010208B6
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026B690
	nop
.L8026B610:
	b       .L8026B624
	nop
.L8026B618:
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0x0000
.L8026B624:
	b       L8026B680
	nop
.globl L8026B62C
L8026B62C:
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	li      $a1, 0x0033
	li.u    $a1, 0x0800034B
	li.l    $a1, 0x0800034B
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       L8026B680
	nop
.globl L8026B654
L8026B654:
	li.u    $a1, 0x08200348
	li.l    $a1, 0x08200348
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       L8026B680
	nop
.globl L8026B670
L8026B670:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0020($sp)
	b       L8026B680
	nop
.globl L8026B680
L8026B680:
	b       .L8026B690
	lw      $v0, 0x001C($sp)
	b       .L8026B690
	nop
.L8026B690:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026B6A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     pl_jump_8026A400
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8026B6C4
	nop
	b       .L8026B730
	li      $v0, 0x0001
.L8026B6C4:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L8026B6F4
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026B730
	nop
.L8026B6F4:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0018($sp)
	jal     player_8025163C
	move    $a2, $0
	li.u    $a1, 0x04000470
	li.l    $a1, 0x04000470
	lw      $a0, 0x0018($sp)
	li      $a2, 0x004D
	jal     pl_jump_8026B444
	li      $a3, 0x0003
	b       .L8026B730
	move    $v0, $0
	b       .L8026B730
	nop
.L8026B730:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026B740:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    .L8026B774
	nop
	li      $t7, 0x0050
	b       .L8026B77C
	sw      $t7, 0x001C($sp)
.L8026B774:
	li      $t8, 0x004C
	sw      $t8, 0x001C($sp)
.L8026B77C:
	jal     pl_jump_8026A400
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L8026B794
	nop
	b       .L8026B804
	li      $v0, 0x0001
.L8026B794:
	lw      $t9, 0x0020($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L8026B7C4
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026B804
	nop
.L8026B7C4:
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24038081
	li.l    $a2, 0x24038081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0x04000472
	li.l    $a1, 0x04000472
	lw      $a0, 0x0020($sp)
	lw      $a2, 0x001C($sp)
	jal     pl_jump_8026B444
	li      $a3, 0x0003
	b       .L8026B804
	move    $v0, $0
	b       .L8026B804
	nop
.L8026B804:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026B814:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(save_jump)
	lbu     $t6, %lo(save_jump)($t6)
	beqz    $t6, .L8026B84C
	nop
	li.u    $a1, 0x030008AF
	li.l    $a1, 0x030008AF
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026B8FC
	nop
.L8026B84C:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x2000
	beqz    $t9, .L8026B87C
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026B8FC
	nop
.L8026B87C:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x8000
	beqz    $t2, .L8026B8AC
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026B8FC
	nop
.L8026B8AC:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0018($sp)
	jal     player_8025163C
	move    $a2, $0
	li.u    $a1, 0x04000478
	li.l    $a1, 0x04000478
	lw      $a0, 0x0018($sp)
	li      $a2, 0x00C1
	jal     pl_jump_8026B444
	move    $a3, $0
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0002
	li      $a2, 0x0008
	jal     pl_jump_80269F40
	li      $a3, 0x0014
	b       .L8026B8FC
	move    $v0, $0
	b       .L8026B8FC
	nop
.L8026B8FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026B90C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L8026B948
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026B99C
	nop
.L8026B948:
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24008081
	li.l    $a2, 0x24008081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x0400047A
	li.l    $a1, 0x0400047A
	lw      $a0, 0x0018($sp)
	li      $a2, 0x0004
	jal     pl_jump_8026B444
	move    $a3, $0
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0002
	li      $a2, 0x0003
	jal     pl_jump_80269F40
	li      $a3, 0x0011
	b       .L8026B99C
	move    $v0, $0
	b       .L8026B99C
	nop
.L8026B99C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026B9AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L8026B9EC
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026BAA4
	nop
.L8026B9EC:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L8026BA1C
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026BAA4
	nop
.L8026BA1C:
	lw      $t2, 0x0028($sp)
	lw      $s0, 0x001C($t2)
	beqz    $s0, .L8026BA4C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8026BA5C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026BA6C
	nop
	b       .L8026BA7C
	nop
.L8026BA4C:
	li      $t3, 0x0056
	sw      $t3, 0x0024($sp)
	b       .L8026BA7C
	nop
.L8026BA5C:
	li      $t4, 0x0090
	sw      $t4, 0x0024($sp)
	b       .L8026BA7C
	nop
.L8026BA6C:
	li      $t5, 0x0053
	sw      $t5, 0x0024($sp)
	b       .L8026BA7C
	nop
.L8026BA7C:
	li.u    $a1, 0x04000471
	li.l    $a1, 0x04000471
	lw      $a0, 0x0028($sp)
	lw      $a2, 0x0024($sp)
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       .L8026BAA4
	move    $v0, $0
	b       .L8026BAA4
	nop
.L8026BAA4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026BAB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L8026BAF8
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026BBA4
	nop
.L8026BAF8:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x2000
	beqz    $t2, .L8026BB3C
	nop
	lw      $t3, 0x007C($t0)
	lw      $t4, 0x0190($t3)
	andi    $t5, $t4, 0x0010
	bnez    $t5, .L8026BB3C
	nop
	li.u    $a1, 0x830008AB
	li.l    $a1, 0x830008AB
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026BBA4
	nop
.L8026BB3C:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L8026BB6C
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026BBA4
	nop
.L8026BB6C:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0018($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0474
	li      $a2, 0x0041
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       .L8026BBA4
	move    $v0, $0
	b       .L8026BBA4
	nop
.L8026BBA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026BBB4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, .L8026BBDC
	nop
	li      $t8, 0x0043
	b       .L8026BBE4
	sw      $t8, 0x001C($sp)
.L8026BBDC:
	li      $t9, 0x0044
	sw      $t9, 0x001C($sp)
.L8026BBE4:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0088($t0)
	lw      $t2, 0x0134($t1)
	andi    $t3, $t2, 0x0008
	beqz    $t3, .L8026BC18
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026BCB0
	nop
.L8026BC18:
	lw      $t4, 0x0020($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x2000
	beqz    $t6, .L8026BC5C
	nop
	lw      $t7, 0x007C($t4)
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0010
	bnez    $t9, .L8026BC5C
	nop
	li.u    $a1, 0x830008AB
	li.l    $a1, 0x830008AB
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026BCB0
	nop
.L8026BC5C:
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x8000
	beqz    $t2, .L8026BC8C
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026BCB0
	nop
.L8026BC8C:
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0475
	lw      $a2, 0x001C($sp)
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       .L8026BCB0
	move    $v0, $0
	b       .L8026BCB0
	nop
.L8026BCB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026BCC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L8026BCFC
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026BDBC
	nop
.L8026BCFC:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L8026BD2C
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026BDBC
	nop
.L8026BD2C:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0018($sp)
	jal     player_8025163C
	move    $a2, $0
	li.u    $a1, 0x04000473
	li.l    $a1, 0x04000473
	lw      $a0, 0x0018($sp)
	li      $a2, 0x00BF
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	li      $at, 0x0003
	beq     $v0, $at, .L8026BD7C
	nop
	lw      $t2, 0x0018($sp)
	li      $at, 0x8000
	lw      $t3, 0x0088($t2)
	lh      $t4, 0x001C($t3)
	addu    $t5, $t4, $at
	sh      $t5, 0x001C($t3)
.L8026BD7C:
	lw      $t6, 0x0018($sp)
	li      $at, 0x0006
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x0040($t7)
	bne     $t8, $at, .L8026BDAC
	nop
	lw      $t9, 0x0018($sp)
	li.u    $a0, 0x045A8081
	li.l    $a0, 0x045A8081
	lw      $a1, 0x0088($t9)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026BDAC:
	b       .L8026BDBC
	move    $v0, $0
	b       .L8026BDBC
	nop
.L8026BDBC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026BDCC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L8026BE08
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026BE68
	nop
.L8026BE08:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L8026BE38
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026BE68
	nop
.L8026BE38:
	jal     player_8025118C
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x04000470
	li.l    $a1, 0x04000470
	lw      $a0, 0x0018($sp)
	li      $a2, 0x00CB
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       .L8026BE68
	move    $v0, $0
	b       .L8026BE68
	nop
.L8026BE68:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026BE78:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0110($t7)
	bnez    $t8, .L8026BEA4
	nop
	li      $t9, 0x0013
	b       .L8026BEAC
	sw      $t9, 0x001C($sp)
.L8026BEA4:
	li      $t0, 0x0014
	sw      $t0, 0x001C($sp)
.L8026BEAC:
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24048081
	li.l    $a2, 0x24048081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li      $at, 0x0038
	lw      $t2, 0x0068($t1)
	lh      $t3, 0x0000($t2)
	bne     $t3, $at, .L8026BF0C
	nop
	lhu     $t4, 0x0018($t1)
	bnez    $t4, .L8026BF0C
	nop
	lw      $t5, 0x0020($sp)
	li.u    $a0, 0x240C8081
	li.l    $a0, 0x240C8081
	lw      $a1, 0x0088($t5)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0020($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
.L8026BF0C:
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0479
	lw      $a2, 0x001C($sp)
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       .L8026BF30
	move    $v0, $0
	b       .L8026BF30
	nop
.L8026BF30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026BF40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x004A
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026BFB4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026BFD0
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026BFE4
	nop
	b       .L8026BFF4
	nop
.L8026BFB4:
	li.u    $a1, 0x20810446
	li.l    $a1, 0x20810446
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L8026BFF4
	nop
.L8026BFD0:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       .L8026BFF4
	nop
.L8026BFE4:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026BFF4
	nop
.L8026BFF4:
	lw      $t6, 0x0028($sp)
	li      $at, 0x42280000
	mtc1    $at, $f6
	lw      $t7, 0x0088($t6)
	lwc1    $f4, 0x0024($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($t7)
	b       .L8026C020
	move    $v0, $0
	b       .L8026C020
	nop
.L8026C020:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C034:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x003A($t6)
	sh      $t7, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0080
	beqz    $t0, .L8026C070
	nop
	li      $t1, 0x2000
	b       .L8026C078
	sh      $t1, 0x0024($sp)
.L8026C070:
	li      $t2, 0x1800
	sh      $t2, 0x0024($sp)
.L8026C078:
	lw      $t3, 0x0028($sp)
	lh      $a1, 0x0024($sp)
	li      $a2, 0x0200
	li      $a3, 0x0200
	jal     converge_i
	lh      $a0, 0x0034($t3)
	lw      $t4, 0x0028($sp)
	sh      $v0, 0x0034($t4)
	lw      $t5, 0x0028($sp)
	lh      $t6, 0x003A($t5)
	lh      $t7, 0x0034($t5)
	addu    $t8, $t6, $t7
	sh      $t8, 0x003A($t5)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($t9)
	bnez    $t0, .L8026C0C4
	nop
	b       .L8026C0C8
	li      $s0, 0x0095
.L8026C0C4:
	li      $s0, 0x0094
.L8026C0C8:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8026C0F0
	nop
	lw      $t2, 0x0028($sp)
	li      $t1, 0x0001
	sw      $t1, 0x001C($t2)
.L8026C0F0:
	lw      $t4, 0x0028($sp)
	lh      $t3, 0x0026($sp)
	lh      $t6, 0x003A($t4)
	slt     $at, $t6, $t3
	beqz    $at, .L8026C120
	nop
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x04388081
	li.l    $a0, 0x04388081
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026C120:
	jal     pl_jump_8026ACD8
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026C164
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026C180
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026C194
	nop
	b       .L8026C1A4
	nop
.L8026C164:
	li.u    $a1, 0x18800238
	li.l    $a1, 0x18800238
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026C1A4
	nop
.L8026C180:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802552FC
	move    $a1, $0
	b       .L8026C1A4
	nop
.L8026C194:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026C1A4
	nop
.L8026C1A4:
	lw      $t8, 0x0028($sp)
	lw      $t5, 0x0088($t8)
	lh      $t0, 0x003A($t8)
	lh      $t9, 0x001C($t5)
	addu    $t1, $t9, $t0
	sh      $t1, 0x001C($t5)
	b       .L8026C1CC
	move    $v0, $0
	b       .L8026C1CC
	nop
.L8026C1CC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C1E0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, .L8026C220
	nop
	li.u    $a1, 0x04358081
	li.u    $a2, 0x24038081
	li.l    $a2, 0x24038081
	li.l    $a1, 0x04358081
	jal     player_8025163C
	lw      $a0, 0x0028($sp)
	b       .L8026C234
	nop
.L8026C220:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
.L8026C234:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0088
	jal     collision_8024CC7C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8026C288
	nop
	jal     collision_8024C66C
	lw      $a0, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0001
	lw      $t0, 0x0098($t9)
	sb      $t8, 0x000A($t0)
	lw      $t1, 0x0028($sp)
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	lw      $t2, 0x000C($t1)
	beq     $t2, $at, .L8026C288
	nop
	b       .L8026C4A4
	li      $v0, 0x0001
.L8026C288:
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, .L8026C2D4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8026C34C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026C41C
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026C484
	nop
	b       .L8026C494
	nop
.L8026C2D4:
	lw      $t3, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t3)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8026C330
	nop
	lh      $t4, 0x002C($t3)
	slti    $at, $t4, -0x2AA9
	bnez    $at, .L8026C330
	nop
	lw      $t5, 0x0028($sp)
	lh      $t6, 0x002C($t5)
	addiu   $t7, $t6, -0x0200
	sh      $t7, 0x002C($t5)
	lw      $t9, 0x0028($sp)
	lh      $t8, 0x002C($t9)
	slti    $at, $t8, -0x2AAA
	beqz    $at, .L8026C330
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, -0x2AAA
	sh      $t0, 0x002C($t1)
.L8026C330:
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x002C($t2)
	lw      $t6, 0x0088($t2)
	subu    $t4, $0, $t3
	sh      $t4, 0x001A($t6)
	b       .L8026C494
	nop
.L8026C34C:
	jal     pl_jump_8026A494
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8026C3B8
	nop
	lw      $t7, 0x0028($sp)
	li      $at, -0x2AAA
	lh      $t5, 0x002C($t7)
	bne     $t5, $at, .L8026C3B8
	nop
	lw      $t9, 0x0028($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t9)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t8, 0x0028($sp)
	li      $at, 0x00010000
	lw      $t0, 0x0008($t8)
	or      $t1, $t0, $at
	sw      $t1, 0x0008($t8)
	li.u    $a1, 0x0002033A
	li.l    $a1, 0x0002033A
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026C40C
	nop
.L8026C3B8:
	li.u    $a1, 0x00020461
	li.l    $a1, 0x00020461
	jal     pl_jump_8026A224
	lw      $a0, 0x0028($sp)
	bnez    $v0, .L8026C40C
	nop
	lw      $t3, 0x0028($sp)
	lw      $t2, 0x007C($t3)
	bnez    $t2, .L8026C3FC
	nop
	li.u    $a1, 0x00880456
	li.l    $a1, 0x00880456
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026C40C
	nop
.L8026C3FC:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0385
	jal     player_80252CF4
	move    $a2, $0
.L8026C40C:
	lw      $t4, 0x0028($sp)
	sh      $0, 0x002C($t4)
	b       .L8026C494
	nop
.L8026C41C:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802552FC
	li      $a1, 0x0001
	lw      $t6, 0x0028($sp)
	sh      $0, 0x002C($t6)
	lw      $t7, 0x0028($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x004C($t7)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8026C458
	nop
	mtc1    $0, $f16
	lw      $t5, 0x0028($sp)
	swc1    $f16, 0x004C($t5)
.L8026C458:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0008($t9)
	ori     $t1, $t0, 0x0002
	sw      $t1, 0x0008($t9)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026C494
	nop
.L8026C484:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026C494
	nop
.L8026C494:
	b       .L8026C4A4
	move    $v0, $0
	b       .L8026C4A4
	nop
.L8026C4A4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C4B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0004
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, .L8026C4F4
	nop
	jal     collision_8024C780
	lw      $a0, 0x0028($sp)
.L8026C4F4:
	li.u    $a1, 0x24078081
	li.l    $a1, 0x24078081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0052
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026C558
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026C588
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026C59C
	nop
	b       .L8026C5AC
	nop
.L8026C558:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A598
	lw      $a0, 0x0028($sp)
	bnez    $v0, .L8026C580
	nop
	lw      $t2, 0x0028($sp)
	li.u    $t1, 0x80000A36
	li.l    $t1, 0x80000A36
	sw      $t1, 0x000C($t2)
.L8026C580:
	b       .L8026C5AC
	nop
.L8026C588:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       .L8026C5AC
	nop
.L8026C59C:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026C5AC
	nop
.L8026C5AC:
	b       .L8026C5BC
	move    $v0, $0
	b       .L8026C5BC
	nop
.L8026C5BC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C5D0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x41700000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8026C60C
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41700000
.L8026C60C:
	li.u    $a1, 0x04328081
	li.l    $a1, 0x04328081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x004D
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	li      $a1, 0x0001
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026C674
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026C6AC
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8026C6C0
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026C704
	nop
	b       .L8026C714
	nop
.L8026C674:
	li.u    $a1, 0x04000470
	li.l    $a1, 0x04000470
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $t7, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t8, 0x0090($t7)
	lw      $t9, 0x0024($t8)
	move    $a0, $t9
	jal     camera_80286188
	lbu     $a1, 0x0001($t9)
	b       .L8026C714
	nop
.L8026C6AC:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41700000
	b       .L8026C714
	nop
.L8026C6C0:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0033
	li.u    $a1, 0x0800034B
	li.l    $a1, 0x0800034B
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $t0, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t1, 0x0090($t0)
	lw      $t2, 0x0024($t1)
	move    $a0, $t2
	jal     camera_80286188
	lbu     $a1, 0x0001($t2)
	b       .L8026C714
	nop
.L8026C704:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026C714
	nop
.L8026C714:
	b       .L8026C724
	move    $v0, $0
	b       .L8026C724
	nop
.L8026C724:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C738:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L8026C77C
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026C86C
	nop
.L8026C77C:
	lw      $t0, 0x0028($sp)
	li      $at, 0x41700000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8026C7A8
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41700000
.L8026C7A8:
	li.u    $a1, 0x04328081
	li.l    $a1, 0x04328081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0041
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026C804
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026C838
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026C84C
	nop
	b       .L8026C85C
	nop
.L8026C804:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0474
	jal     player_80252CF4
	move    $a2, $0
	lw      $t1, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t2, 0x0090($t1)
	lw      $t3, 0x0024($t2)
	move    $a0, $t3
	jal     camera_80286188
	lbu     $a1, 0x0001($t3)
	b       .L8026C85C
	nop
.L8026C838:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41700000
	b       .L8026C85C
	nop
.L8026C84C:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026C85C
	nop
.L8026C85C:
	b       .L8026C86C
	move    $v0, $0
	b       .L8026C86C
	nop
.L8026C86C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C880:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L8026C8C0
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026C9E8
	nop
.L8026C8C0:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C38)
	lwc1    $f6, %lo(pl_jump_80336C38)($at)
	lwc1    $f4, 0x0054($t9)
	move    $a0, $t9
	mul.s   $f8, $f4, $f6
	mfc1    $a1, $f8
	jal     player_80251708
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026C934
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026C998
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026C9AC
	nop
	b       .L8026C9BC
	nop
.L8026C934:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A598
	lw      $a0, 0x0028($sp)
	bnez    $v0, .L8026C990
	nop
	lw      $t0, 0x0028($sp)
	sh      $0, 0x002C($t0)
	lw      $t1, 0x0028($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x0054($t1)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8026C978
	nop
	b       .L8026C980
	li      $s0, 0x0050
.L8026C978:
	li.u    $s0, 0x04000470
	li.l    $s0, 0x04000470
.L8026C980:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80252CF4
	move    $a2, $0
.L8026C990:
	b       .L8026C9BC
	nop
.L8026C998:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       .L8026C9BC
	nop
.L8026C9AC:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026C9BC
	nop
.L8026C9BC:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x004D
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0088($t2)
	lw      $t4, 0x0110($t3)
	sh      $t4, 0x001C($t3)
	b       .L8026C9E8
	move    $v0, $0
	b       .L8026C9E8
	nop
.L8026C9E8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C9FC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x04358081
	li.l    $a1, 0x04358081
	lw      $a0, 0x0030($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t6, 0x0030($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8026CB98
	nop
	lw      $t8, 0x0030($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x000A
	beqz    $at, .L8026CACC
	nop
	lw      $t0, 0x0030($sp)
	li      $t3, 0x0014
	lhu     $t1, 0x001A($t0)
	sll     $t2, $t1, 1
	subu    $t4, $t3, $t2
	mtc1    $t4, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0028($sp)
	lw      $t5, 0x0030($sp)
	lwc1    $f10, 0x0028($sp)
	li      $at, 0x43200000
	lwc1    $f8, 0x0040($t5)
	mtc1    $at, $f18
	lwc1    $f6, 0x006C($t5)
	add.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8026CACC
	nop
	lw      $t6, 0x0030($sp)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f8, 0x0040($t6)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0040($t6)
	lw      $t7, 0x0030($sp)
	lwc1    $f18, 0x0040($t7)
	swc1    $f18, 0x00BC($t7)
	lw      $t8, 0x0030($sp)
	lw      $a0, 0x0088($t8)
	addiu   $a1, $t8, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
.L8026CACC:
	li      $at, 0xC2480000
	mtc1    $at, $f4
	lw      $t9, 0x0030($sp)
	swc1    $f4, 0x004C($t9)
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x001C($t0)
	bnez    $t1, .L8026CB00
	nop
	b       .L8026CB04
	li      $s0, 0x003C
.L8026CB00:
	li      $s0, 0x003B
.L8026CB04:
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	move    $a1, $s0
	lw      $t3, 0x0030($sp)
	lhu     $t2, 0x001A($t3)
	bnez    $t2, .L8026CB38
	nop
	lw      $t4, 0x0030($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026CB38:
	lw      $t5, 0x0030($sp)
	lhu     $t6, 0x001A($t5)
	addiu   $t7, $t6, 0x0001
	sh      $t7, 0x001A($t5)
	lw      $t8, 0x0030($sp)
	lw      $t0, 0x0088($t8)
	lhu     $t9, 0x001A($t8)
	lw      $t1, 0x003C($t0)
	lh      $t3, 0x0008($t1)
	addiu   $t2, $t3, 0x0004
	slt     $at, $t9, $t2
	bnez    $at, .L8026CB90
	nop
	lw      $t4, 0x0030($sp)
	li.u    $a0, 0x24228081
	li.l    $a0, 0x24228081
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0030($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
.L8026CB90:
	b       .L8026CCE8
	nop
.L8026CB98:
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x003D
	lw      $a0, 0x0030($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	sw      $v0, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	li      $at, 0x0001
	bne     $t5, $at, .L8026CC80
	nop
	jal     pl_jump_8026A494
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L8026CC1C
	nop
	lw      $t8, 0x0030($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t0, 0x0030($sp)
	li      $at, 0x00010000
	lw      $t1, 0x0008($t0)
	or      $t3, $t1, $at
	sw      $t3, 0x0008($t0)
	li.u    $a1, 0x0002033B
	li.l    $a1, 0x0002033B
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026CC70
	nop
.L8026CC1C:
	li.u    $a1, 0x04608081
	li.l    $a1, 0x04608081
	jal     player_80251574
	lw      $a0, 0x0030($sp)
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A224
	lw      $a0, 0x0030($sp)
	bnez    $v0, .L8026CC70
	nop
	lw      $t9, 0x0030($sp)
	li.u    $at, 0x00010010
	li.l    $at, 0x00010010
	lw      $t2, 0x0008($t9)
	or      $t4, $t2, $at
	sw      $t4, 0x0008($t9)
	li.u    $a1, 0x0080023C
	li.l    $a1, 0x0080023C
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026CC70:
	jal     camera_8027F590
	li      $a0, 0x0002
	b       .L8026CCE8
	nop
.L8026CC80:
	lw      $t6, 0x002C($sp)
	li      $at, 0x0002
	bne     $t6, $at, .L8026CCE8
	nop
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	lw      $t7, 0x0030($sp)
	mtc1    $0, $f8
	lwc1    $f6, 0x004C($t7)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8026CCC4
	nop
	mtc1    $0, $f10
	lw      $t5, 0x0030($sp)
	swc1    $f10, 0x004C($t5)
.L8026CCC4:
	lw      $t8, 0x0030($sp)
	lw      $t1, 0x0008($t8)
	ori     $t3, $t1, 0x0002
	sw      $t3, 0x0008($t8)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026CCE8:
	b       .L8026CCF8
	move    $v0, $0
	b       .L8026CCF8
	nop
.L8026CCF8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_jump_8026CD0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, .L8026CD34
	nop
	b       .L8026CD38
	move    $s0, $0
.L8026CD34:
	li      $s0, -0x0001
.L8026CD38:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $s0
	lw      $t8, 0x0028($sp)
	move    $a0, $t8
	jal     player_80251708
	lw      $a1, 0x0054($t8)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, .L8026CD98
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	li.u    $a1, 0x00020449
	li.l    $a1, 0x00020449
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026CD98:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($t9)
	bnez    $t0, .L8026CDB0
	nop
	b       .L8026CDB4
	li      $s0, 0x004D
.L8026CDB0:
	li      $s0, 0x0029
.L8026CDB4:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0008($t1)
	ori     $t3, $t2, 0x0800
	sw      $t3, 0x0008($t1)
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x14100001
	li.l    $a0, 0x14100001
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0088($t5)
	lw      $t7, 0x0110($t6)
	addiu   $t8, $t7, 0x0003
	sw      $t8, 0x0110($t6)
	lw      $t9, 0x0028($sp)
	lh      $t0, 0x00AE($t9)
	addiu   $t2, $t0, -0x000A
	sh      $t2, 0x00AE($t9)
	lw      $t3, 0x0028($sp)
	lh      $t1, 0x00AE($t3)
	slti    $at, $t1, 0x0100
	beqz    $at, .L8026CE2C
	nop
	lw      $t5, 0x0028($sp)
	li      $t4, 0x00FF
	sh      $t4, 0x00AE($t5)
.L8026CE2C:
	b       .L8026CE3C
	move    $v0, $0
	b       .L8026CE3C
	nop
.L8026CE3C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026CE50:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	move    $a0, $t6
	jal     player_80251708
	lw      $a1, 0x0054($t6)
	lw      $a0, 0x0018($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, .L8026CEA8
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00020449
	li.l    $a1, 0x00020449
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026CEA8:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0056
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0008($t7)
	ori     $t9, $t8, 0x0800
	sw      $t9, 0x0008($t7)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0088($t0)
	lw      $t2, 0x0110($t1)
	addiu   $t3, $t2, 0x0003
	sw      $t3, 0x0110($t1)
	lw      $t4, 0x0018($sp)
	lh      $t5, 0x00AE($t4)
	addiu   $t6, $t5, -0x000A
	sh      $t6, 0x00AE($t4)
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x00AE($t8)
	slti    $at, $t9, 0x0100
	beqz    $at, .L8026CF08
	nop
	lw      $t0, 0x0018($sp)
	li      $t7, 0x00FF
	sh      $t7, 0x00AE($t0)
.L8026CF08:
	b       .L8026CF18
	move    $v0, $0
	b       .L8026CF18
	nop
.L8026CF18:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026CF28:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x001A($t6)
	bnez    $t7, .L8026D068
	nop
	lw      $t8, 0x0028($sp)
	lw      $s0, 0x001C($t8)
	beqz    $s0, .L8026CF78
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8026CFA0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026CFC8
	nop
	b       .L8026CFF0
	nop
.L8026CF78:
	li      $at, 0x42340000
	mtc1    $at, $f4
	lw      $t9, 0x0028($sp)
	swc1    $f4, 0x004C($t9)
	li      $at, 0x42000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0024($sp)
	b       .L8026CFF0
	nop
.L8026CFA0:
	li      $at, 0x42700000
	mtc1    $at, $f8
	lw      $t0, 0x0028($sp)
	swc1    $f8, 0x004C($t0)
	li      $at, 0x42100000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0024($sp)
	b       .L8026CFF0
	nop
.L8026CFC8:
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lw      $t1, 0x0028($sp)
	swc1    $f16, 0x004C($t1)
	li      $at, 0x42400000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0024($sp)
	b       .L8026CFF0
	nop
.L8026CFF0:
	li      $at, 0x42200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8026D018
	nop
	li.u    $s0, 0x306C4081
	b       .L8026D020
	li.l    $s0, 0x306C4081
.L8026D018:
	li.u    $s0, 0x306D4081
	li.l    $s0, 0x306D4081
.L8026D020:
	lw      $t2, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t3, 0x0028($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f8, 0x0054($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8026D05C
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	lw      $a1, 0x0024($sp)
.L8026D05C:
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0001
	sh      $t4, 0x001A($t5)
.L8026D068:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0088
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026D0CC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026D148
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026D15C
	nop
	b       .L8026D16C
	nop
.L8026D0CC:
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	sltiu   $at, $t7, 0x0002
	beqz    $at, .L8026D100
	nop
	lw      $t8, 0x0028($sp)
	li      $a1, 0x08AE
	lw      $a2, 0x001C($t8)
	move    $a0, $t8
	jal     player_80252CF4
	addiu   $a2, $a2, 0x0001
	b       .L8026D12C
	nop
.L8026D100:
	lw      $t0, 0x0028($sp)
	li      $t9, 0x00400000
	lw      $t1, 0x007C($t0)
	sw      $t9, 0x0134($t1)
	lw      $t2, 0x0028($sp)
	sw      $0, 0x007C($t2)
	li.u    $a1, 0x008C0453
	li.l    $a1, 0x008C0453
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026D12C:
	lw      $t3, 0x0028($sp)
	li      $at, 0x00010000
	lw      $t4, 0x0008($t3)
	or      $t5, $t4, $at
	sw      $t5, 0x0008($t3)
	b       .L8026D16C
	nop
.L8026D148:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802552FC
	move    $a1, $0
	b       .L8026D16C
	nop
.L8026D15C:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026D16C
	nop
.L8026D16C:
	lw      $t6, 0x0028($sp)
	lwc1    $f14, 0x004C($t6)
	lwc1    $f12, 0x0054($t6)
	jal     atan2
	neg.s   $f14, $f14
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0088($t7)
	sh      $v0, 0x001A($t8)
	b       .L8026D19C
	move    $v0, $0
	b       .L8026D19C
	nop
.L8026D19C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026D1B0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	lw      $a1, 0x0038($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	sw      $v0, 0x0024($sp)
	lw      $s0, 0x0024($sp)
	beqz    $s0, .L8026D220
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8026D234
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026D2A8
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026D308
	nop
	b       .L8026D318
	nop
.L8026D220:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	lw      $a1, 0x0034($sp)
	b       .L8026D318
	nop
.L8026D234:
	lw      $a0, 0x0028($sp)
	jal     pl_jump_8026A598
	lw      $a1, 0x0030($sp)
	bnez    $v0, .L8026D2A0
	nop
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x010208BD
	li.l    $at, 0x010208BD
	lw      $t7, 0x000C($t6)
	beq     $t7, $at, .L8026D270
	nop
	li.u    $at, 0x010208BE
	li.l    $at, 0x010208BE
	bne     $t7, $at, .L8026D28C
	nop
.L8026D270:
	lw      $t8, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	move    $a0, $t8
	jal     player_80252CF4
	lbu     $a2, 0x00B2($t8)
	b       .L8026D2A0
	nop
.L8026D28C:
	lw      $t9, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	move    $a0, $t9
	jal     player_80252CF4
	lw      $a2, 0x001C($t9)
.L8026D2A0:
	b       .L8026D318
	nop
.L8026D2A8:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0002
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802552FC
	move    $a1, $0
	lw      $t0, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026D2E8
	nop
	mtc1    $0, $f8
	lw      $t1, 0x0028($sp)
	swc1    $f8, 0x004C($t1)
.L8026D2E8:
	lwc1    $f10, 0x0038($sp)
	lw      $a0, 0x0028($sp)
	neg.s   $f16, $f10
	mfc1    $a1, $f16
	jal     player_80251708
	nop
	b       .L8026D318
	nop
.L8026D308:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026D318
	nop
.L8026D318:
	b       .L8026D328
	lw      $v0, 0x0024($sp)
	b       .L8026D328
	nop
.L8026D328:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026D33C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L8026D3A8
	nop
	lbu     $t9, 0x002A($t6)
	beqz    $t9, .L8026D3A8
	nop
	lw      $t0, 0x0010($t6)
	li      $at, 0x08A7
	bne     $t0, $at, .L8026D3A8
	nop
	lw      $t1, 0x0018($sp)
	li      $at, 0x8000
	lh      $t2, 0x002E($t1)
	addu    $t3, $t2, $at
	sh      $t3, 0x002E($t1)
	li.u    $a1, 0x03000886
	li.l    $a1, 0x03000886
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026D3B8
	nop
.L8026D3A8:
	b       .L8026D3B8
	move    $v0, $0
	b       .L8026D3B8
	nop
.L8026D3B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026D3C8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026D33C
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L8026D3EC
	nop
	b       .L8026D42C
	li      $v0, 0x0001
.L8026D3EC:
	jal     pl_jump_8026A090
	lw      $a0, 0x0020($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f4
	li.u    $a1, 0x00020462
	li.u    $a2, 0x00020460
	li.l    $a2, 0x00020460
	li.l    $a1, 0x00020462
	lw      $a0, 0x0020($sp)
	li      $a3, 0x0002
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	b       .L8026D42C
	move    $v0, $0
	b       .L8026D42C
	nop
.L8026D42C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026D43C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026D33C
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L8026D460
	nop
	b       .L8026D4A0
	li      $v0, 0x0001
.L8026D460:
	jal     pl_jump_8026A090
	lw      $a0, 0x0020($sp)
	li      $at, 0x41800000
	mtc1    $at, $f4
	li.u    $a1, 0x00020463
	li.u    $a2, 0x00020461
	li.l    $a2, 0x00020461
	li.l    $a1, 0x00020463
	lw      $a0, 0x0020($sp)
	li      $a3, 0x002D
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	b       .L8026D4A0
	move    $v0, $0
	b       .L8026D4A0
	nop
.L8026D4A0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026D4B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026A090
	lw      $a0, 0x0020($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f4
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	addu    $a2, $a1, $0
	lw      $a0, 0x0020($sp)
	li      $a3, 0x0002
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	b       .L8026D4F8
	move    $v0, $0
	b       .L8026D4F8
	nop
.L8026D4F8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026D508:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026A090
	lw      $a0, 0x0020($sp)
	li      $at, 0x41800000
	mtc1    $at, $f4
	li.u    $a1, 0x00020461
	li.l    $a1, 0x00020461
	addu    $a2, $a1, $0
	lw      $a0, 0x0020($sp)
	li      $a3, 0x002D
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	b       .L8026D550
	move    $v0, $0
	b       .L8026D550
	nop
.L8026D550:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026D560:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	beqz    $t7, .L8026D58C
	nop
	li.u    $t8, 0x00020460
	li.l    $t8, 0x00020460
	b       .L8026D598
	sw      $t8, 0x0024($sp)
.L8026D58C:
	li.u    $t9, 0x00020462
	li.l    $t9, 0x00020462
	sw      $t9, 0x0024($sp)
.L8026D598:
	li.u    $a1, 0x2410C081
	li.l    $a1, 0x2410C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t0, 0x0028($sp)
	li.u    $a2, 0x00020460
	li.l    $a2, 0x00020460
	lwc1    $f4, 0x0054($t0)
	lw      $a1, 0x0024($sp)
	li      $a3, 0x0002
	move    $a0, $t0
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	lw      $t1, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C3C)
	lwc1    $f8, %lo(pl_jump_80336C3C)($at)
	lwc1    $f6, 0x0054($t1)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t1)
	b       .L8026D5F8
	move    $v0, $0
	b       .L8026D5F8
	nop
.L8026D5F8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026D608:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	beqz    $t7, .L8026D634
	nop
	li.u    $t8, 0x00020461
	li.l    $t8, 0x00020461
	b       .L8026D640
	sw      $t8, 0x0020($sp)
.L8026D634:
	li.u    $t9, 0x00020463
	li.l    $t9, 0x00020463
	sw      $t9, 0x0020($sp)
.L8026D640:
	li.u    $a1, 0x2410C081
	li.l    $a1, 0x2410C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t0, 0x0028($sp)
	li.u    $a2, 0x00020461
	li.l    $a2, 0x00020461
	lwc1    $f4, 0x0054($t0)
	lw      $a1, 0x0020($sp)
	li      $a3, 0x002D
	move    $a0, $t0
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	bnez    $v0, .L8026D6C4
	nop
	lw      $t1, 0x0028($sp)
	lwc1    $f14, 0x004C($t1)
	lwc1    $f12, 0x0054($t1)
	jal     atan2
	neg.s   $f14, $f14
	sh      $v0, 0x0026($sp)
	lh      $t2, 0x0026($sp)
	slti    $at, $t2, 0x1801
	bnez    $at, .L8026D6B0
	nop
	li      $t3, 0x1800
	sh      $t3, 0x0026($sp)
.L8026D6B0:
	lw      $t6, 0x0028($sp)
	lh      $t4, 0x0026($sp)
	lw      $t7, 0x0088($t6)
	addiu   $t5, $t4, 0x1800
	sh      $t5, 0x001A($t7)
.L8026D6C4:
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C40)
	lwc1    $f8, %lo(pl_jump_80336C40)($at)
	lwc1    $f6, 0x0054($t8)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t8)
	b       .L8026D6EC
	move    $v0, $0
	b       .L8026D6EC
	nop
.L8026D6EC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026D6FC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026D33C
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L8026D720
	nop
	b       .L8026D760
	li      $v0, 0x0001
.L8026D720:
	jal     pl_jump_8026A090
	lw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li.u    $a1, 0x04000471
	li.u    $a2, 0x00020460
	lwc1    $f4, 0x0054($t6)
	li.l    $a2, 0x00020460
	li.l    $a1, 0x04000471
	li      $a3, 0x0056
	move    $a0, $t6
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	b       .L8026D760
	move    $v0, $0
	b       .L8026D760
	nop
.L8026D760:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026D770:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8026D7E0
	nop
	lw      $t8, 0x0028($sp)
	li      $at, 0xC2700000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026D7CC
	nop
	lw      $t9, 0x0028($sp)
	li      $at, 0x40C00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t9)
	sub.s   $f16, $f8, $f10
	b       .L8026D7D8
	swc1    $f16, 0x0054($t9)
.L8026D7CC:
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0001
	sh      $t0, 0x0018($t1)
.L8026D7D8:
	b       .L8026D868
	nop
.L8026D7E0:
	lw      $t2, 0x0028($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t2)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L8026D818
	nop
	lw      $t3, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C44)
	lwc1    $f8, %lo(pl_jump_80336C44)($at)
	lwc1    $f6, 0x0054($t3)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t3)
.L8026D818:
	lw      $t4, 0x0028($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x004C($t4)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8026D868
	nop
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C4($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8026D868
	nop
	lw      $t5, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C48)
	lwc1    $f10, %lo(pl_jump_80336C48)($at)
	lwc1    $f8, 0x00C4($t5)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00C4($t5)
.L8026D868:
	lw      $t6, 0x0028($sp)
	li      $at, 0x0014
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, .L8026D898
	nop
	lw      $a0, 0x0028($sp)
	jal     collision_8024C928
	li      $a1, 0x42480000
.L8026D898:
	lw      $t1, 0x0028($sp)
	move    $a0, $t1
	jal     player_80251708
	lw      $a1, 0x0054($t1)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0002
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026D8E4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026D900
	nop
	b       .L8026D964
	nop
.L8026D8E4:
	li.u    $a1, 0x010208B3
	li.l    $a1, 0x010208B3
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026D964
	nop
.L8026D900:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x002D
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802552FC
	move    $a1, $0
	lw      $t2, 0x0028($sp)
	mtc1    $0, $f4
	lwc1    $f18, 0x004C($t2)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L8026D940
	nop
	mtc1    $0, $f6
	lw      $t3, 0x0028($sp)
	swc1    $f6, 0x004C($t3)
.L8026D940:
	lw      $t4, 0x0028($sp)
	lwc1    $f8, 0x0054($t4)
	move    $a0, $t4
	neg.s   $f10, $f8
	mfc1    $a1, $f10
	jal     player_80251708
	nop
	b       .L8026D964
	nop
.L8026D964:
	b       .L8026D974
	move    $v0, $0
	b       .L8026D974
	nop
.L8026D974:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026D988:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	beqz    $t7, .L8026D9AC
	nop
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
.L8026D9AC:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x001A($t8)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x001A($t8)
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x001A($t1)
	slti    $at, $t2, 0x0003
	beqz    $at, .L8026DA2C
	nop
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L8026DA24
	nop
	li      $at, 0x42500000
	mtc1    $at, $f4
	lw      $t6, 0x0018($sp)
	swc1    $f4, 0x004C($t6)
	lw      $t7, 0x0018($sp)
	li      $at, 0x8000
	lh      $t9, 0x002E($t7)
	addu    $t0, $t9, $at
	sh      $t0, 0x002E($t7)
	li.u    $a1, 0x03000886
	li.l    $a1, 0x03000886
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026DB44
	nop
.L8026DA24:
	b       .L8026DB30
	nop
.L8026DA2C:
	lw      $t8, 0x0018($sp)
	li      $at, 0x42180000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t8)
	c.le.s  $f8, $f6
	nop
	bc1f    .L8026DAB4
	nop
	lw      $t2, 0x0018($sp)
	li      $t1, 0x0005
	sb      $t1, 0x002A($t2)
	lw      $t3, 0x0018($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x004C($t3)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8026DA80
	nop
	mtc1    $0, $f18
	lw      $t4, 0x0018($sp)
	swc1    $f18, 0x004C($t4)
.L8026DA80:
	lw      $t5, 0x0018($sp)
	lw      $t6, 0x0008($t5)
	ori     $t9, $t6, 0x0002
	sw      $t9, 0x0008($t5)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026DB44
	nop
	b       .L8026DB30
	nop
.L8026DAB4:
	lw      $t7, 0x0018($sp)
	li      $t0, 0x0005
	sb      $t0, 0x002A($t7)
	lw      $t8, 0x0018($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026DAE8
	nop
	mtc1    $0, $f8
	lw      $t1, 0x0018($sp)
	swc1    $f8, 0x004C($t1)
.L8026DAE8:
	lw      $t2, 0x0018($sp)
	li      $at, 0x41000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t2)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8026DB14
	nop
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0xC1000000
.L8026DB14:
	li.u    $a1, 0x010208B6
	li.l    $a1, 0x010208B6
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026DB44
	nop
.L8026DB30:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00CC
	b       .L8026DB44
	nop
.L8026DB44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026DB54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8026DB90
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lw      $t8, 0x0028($sp)
	swc1    $f4, 0x004C($t8)
	lw      $t0, 0x0028($sp)
	li      $t9, 0x0001
	sh      $t9, 0x0018($t0)
.L8026DB90:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, .L8026DBF0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8026DC50
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026DC7C
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026DC90
	nop
	b       .L8026DCA0
	nop
.L8026DBF0:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t2, 0x0018($t1)
	bne     $t2, $at, .L8026DC3C
	nop
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x006F
	li      $at, 0x0004
	bne     $v0, $at, .L8026DC34
	nop
	lw      $t3, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t3)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026DC34:
	b       .L8026DC48
	nop
.L8026DC3C:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0056
.L8026DC48:
	b       .L8026DCA0
	nop
.L8026DC50:
	li.u    $a1, 0x0C000232
	li.l    $a1, 0x0C000232
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       .L8026DCA0
	nop
.L8026DC7C:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       .L8026DCA0
	nop
.L8026DC90:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026DCA0
	nop
.L8026DCA0:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t5, 0x0018($t4)
	bne     $t5, $at, .L8026DCD0
	nop
	jal     player_8025097C
	move    $a0, $t4
	beqz    $v0, .L8026DCD0
	nop
	lw      $t7, 0x0028($sp)
	li      $t6, 0x0002
	sh      $t6, 0x0018($t7)
.L8026DCD0:
	b       .L8026DCE0
	move    $v0, $0
	b       .L8026DCE0
	nop
.L8026DCE0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026DCF4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8026DD30
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lw      $t8, 0x0028($sp)
	swc1    $f4, 0x004C($t8)
	lw      $t0, 0x0028($sp)
	li      $t9, 0x0001
	sh      $t9, 0x0018($t0)
.L8026DD30:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, .L8026DD90
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8026DDF0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026DE1C
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026DE30
	nop
	b       .L8026DE40
	nop
.L8026DD90:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t2, 0x0018($t1)
	bne     $t2, $at, .L8026DDDC
	nop
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0070
	li      $at, 0x0004
	bne     $v0, $at, .L8026DDD4
	nop
	lw      $t3, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t3)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026DDD4:
	b       .L8026DDE8
	nop
.L8026DDDC:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0056
.L8026DDE8:
	b       .L8026DE40
	nop
.L8026DDF0:
	li.u    $a1, 0x0C000232
	li.l    $a1, 0x0C000232
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       .L8026DE40
	nop
.L8026DE1C:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       .L8026DE40
	nop
.L8026DE30:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026DE40
	nop
.L8026DE40:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t5, 0x0018($t4)
	bne     $t5, $at, .L8026DE74
	nop
	lw      $t6, 0x0088($t4)
	li      $at, 0x0002
	lh      $t7, 0x0040($t6)
	bne     $t7, $at, .L8026DE74
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0002
	sh      $t8, 0x0018($t9)
.L8026DE74:
	b       .L8026DE84
	move    $v0, $0
	b       .L8026DE84
	nop
.L8026DE84:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026DE98:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	slti    $at, $t0, 0x001F
	bnez    $at, .L8026DF0C
	nop
	lwc1    $f4, 0x0040($t9)
	lwc1    $f6, 0x0070($t9)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8026DF0C
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L8026E074
	nop
.L8026DF0C:
	jal     pl_jump_8026A818
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026DF50
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026DFF4
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026E048
	nop
	b       .L8026E058
	nop
.L8026DF50:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0018($t1)
	bnez    $t2, .L8026DFC8
	nop
	lwc1    $f16, 0x004C($t1)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8026DFC8
	nop
	lw      $t3, 0x0068($t1)
	lui     $at, %hi(pl_jump_80336C4C)
	lwc1    $f6, %lo(pl_jump_80336C4C)($at)
	lwc1    $f4, 0x0020($t3)
	c.le.s  $f6, $f4
	nop
	bc1f    .L8026DFC8
	nop
	lw      $t4, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f8, 0x004C($t4)
	neg.s   $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x004C($t4)
	lw      $t7, 0x0028($sp)
	li      $t5, 0x0001
	b       .L8026DFDC
	sh      $t5, 0x0018($t7)
.L8026DFC8:
	li.u    $a1, 0x00840452
	li.l    $a1, 0x00840452
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026DFDC:
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       .L8026E058
	nop
.L8026DFF4:
	lw      $t8, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026E01C
	nop
	mtc1    $0, $f8
	lw      $t6, 0x0028($sp)
	swc1    $f8, 0x004C($t6)
.L8026E01C:
	lw      $t0, 0x0028($sp)
	lw      $t9, 0x0008($t0)
	ori     $t2, $t9, 0x0002
	sw      $t2, 0x0008($t0)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026E058
	nop
.L8026E048:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026E058
	nop
.L8026E058:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0091
	b       .L8026E074
	move    $v0, $0
	b       .L8026E074
	nop
.L8026E074:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026E088:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L8026E0CC
	nop
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	li      $a2, 0x0001
	b       .L8026E2A0
	nop
.L8026E0CC:
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x001A($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x001A($t0)
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x001F
	bnez    $at, .L8026E130
	nop
	lwc1    $f4, 0x0040($t3)
	lwc1    $f6, 0x0070($t3)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8026E130
	nop
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L8026E2A0
	nop
.L8026E130:
	jal     pl_jump_8026A818
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026E174
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026E218
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026E274
	nop
	b       .L8026E284
	nop
.L8026E174:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0018($t5)
	bnez    $t6, .L8026E1EC
	nop
	lwc1    $f16, 0x004C($t5)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8026E1EC
	nop
	lw      $t7, 0x0068($t5)
	lui     $at, %hi(pl_jump_80336C50)
	lwc1    $f6, %lo(pl_jump_80336C50)($at)
	lwc1    $f4, 0x0020($t7)
	c.le.s  $f6, $f4
	nop
	bc1f    .L8026E1EC
	nop
	lw      $t8, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f8, 0x004C($t8)
	neg.s   $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x004C($t8)
	lw      $t1, 0x0028($sp)
	li      $t9, 0x0001
	b       .L8026E200
	sh      $t9, 0x0018($t1)
.L8026E1EC:
	li.u    $a1, 0x00840454
	li.l    $a1, 0x00840454
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026E200:
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       .L8026E284
	nop
.L8026E218:
	lw      $t2, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026E240
	nop
	mtc1    $0, $f8
	lw      $t0, 0x0028($sp)
	swc1    $f8, 0x004C($t0)
.L8026E240:
	jal     collision_8024C6C0
	lw      $a0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	lw      $t3, 0x0008($t4)
	ori     $t6, $t3, 0x0002
	sw      $t6, 0x0008($t4)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026E284
	nop
.L8026E274:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026E284
	nop
.L8026E284:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0045
	b       .L8026E2A0
	move    $v0, $0
	b       .L8026E2A0
	nop
.L8026E2A0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026E2B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x2414A081
	li.l    $a1, 0x2414A081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	bnez    $t8, .L8026E310
	nop
	lw      $t9, 0x0028($sp)
	li.u    $a2, 0x3EB33333
	li.l    $a2, 0x3EB33333
	mtc1    $0, $f14
	addu    $a3, $a2, $0
	jal     converge_f
	lwc1    $f12, 0x0054($t9)
	lw      $t0, 0x0028($sp)
	swc1    $f0, 0x0054($t0)
.L8026E310:
	jal     pl_jump_8026ACD8
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026E354
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026E498
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026E4AC
	nop
	b       .L8026E4BC
	nop
.L8026E354:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0001
	lw      $t2, 0x0068($t1)
	lh      $t3, 0x0000($t2)
	bne     $t3, $at, .L8026E3E8
	nop
	lw      $t4, 0x0028($sp)
	sh      $0, 0x0018($t4)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0004($t5)
	andi    $t7, $t6, 0x0004
	bnez    $t7, .L8026E3B8
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0004($t8)
	andi    $t0, $t9, 0x0010
	beqz    $t0, .L8026E3A4
	nop
	b       .L8026E3A8
	li      $s0, 0x000C
.L8026E3A4:
	li      $s0, 0x0012
.L8026E3A8:
	lw      $t1, 0x0028($sp)
	lbu     $t2, 0x00B2($t1)
	addu    $t3, $t2, $s0
	sb      $t3, 0x00B2($t1)
.L8026E3B8:
	li      $at, 0x42A80000
	mtc1    $at, $f4
	lw      $t4, 0x0028($sp)
	swc1    $f4, 0x004C($t4)
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x2414A081
	li.l    $a0, 0x2414A081
	lw      $a1, 0x0088($t5)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8026E490
	nop
.L8026E3E8:
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_80251574
	lw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	slti    $at, $t7, 0x0002
	beqz    $at, .L8026E47C
	nop
	lwc1    $f6, 0x004C($t6)
	mtc1    $0, $f8
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8026E47C
	nop
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C54)
	lwc1    $f18, %lo(pl_jump_80336C54)($at)
	lwc1    $f10, 0x004C($t8)
	neg.s   $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x004C($t8)
	lw      $t9, 0x0028($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t9)
	move    $a0, $t9
	mul.s   $f10, $f6, $f8
	mfc1    $a1, $f10
	jal     player_80251708
	nop
	lw      $t0, 0x0028($sp)
	lhu     $t2, 0x0018($t0)
	addiu   $t3, $t2, 0x0001
	b       .L8026E490
	sh      $t3, 0x0018($t0)
.L8026E47C:
	li.u    $a1, 0x08000239
	li.l    $a1, 0x08000239
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026E490:
	b       .L8026E4BC
	nop
.L8026E498:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802552FC
	move    $a1, $0
	b       .L8026E4BC
	nop
.L8026E4AC:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026E4BC
	nop
.L8026E4BC:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0029
	lw      $t1, 0x0028($sp)
	li      $at, 0x0002
	lw      $t4, 0x0090($t1)
	lhu     $t5, 0x0002($t4)
	andi    $t7, $t5, 0x0007
	beq     $t7, $at, .L8026E548
	nop
	lw      $t6, 0x0004($t1)
	andi    $t8, $t6, 0x0004
	bnez    $t8, .L8026E548
	nop
	lwc1    $f16, 0x004C($t1)
	mtc1    $0, $f18
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    .L8026E548
	nop
	lw      $t9, 0x0028($sp)
	lw      $t2, 0x0008($t9)
	ori     $t3, $t2, 0x0800
	sw      $t3, 0x0008($t9)
	lw      $t0, 0x0028($sp)
	lhu     $t4, 0x0018($t0)
	bnez    $t4, .L8026E548
	nop
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x14100001
	li.l    $a0, 0x14100001
	lw      $a1, 0x0088($t5)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026E548:
	lw      $t7, 0x0028($sp)
	lh      $t6, 0x00AE($t7)
	slti    $at, $t6, 0x0100
	beqz    $at, .L8026E568
	nop
	lw      $a0, 0x0028($sp)
	jal     game_8024A9CC
	li      $a1, 0x0012
.L8026E568:
	lw      $t1, 0x0028($sp)
	li      $t8, 0x0008
	lw      $t2, 0x0098($t1)
	sb      $t8, 0x0005($t2)
	b       .L8026E588
	move    $v0, $0
	b       .L8026E588
	nop
.L8026E588:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026E59C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8026E5EC
	nop
	lhu     $t8, 0x001A($t6)
	bnez    $t8, .L8026E5EC
	nop
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24038081
	li.l    $a2, 0x24038081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x008C
.L8026E5EC:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x001A($t9)
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x001A($t2)
	slti    $at, $t3, 0x001F
	bnez    $at, .L8026E650
	nop
	lwc1    $f4, 0x0040($t2)
	lwc1    $f6, 0x0070($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8026E650
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0002
	b       .L8026E7FC
	nop
.L8026E650:
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, .L8026E69C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8026E6FC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026E788
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026E7DC
	nop
	b       .L8026E7EC
	nop
.L8026E69C:
	lw      $t4, 0x0028($sp)
	lhu     $t5, 0x0018($t4)
	bnez    $t5, .L8026E6F4
	nop
	lw      $t7, 0x0028($sp)
	lwc1    $f14, 0x004C($t7)
	lwc1    $f12, 0x0054($t7)
	jal     atan2
	neg.s   $f14, $f14
	lw      $t6, 0x0028($sp)
	lw      $t8, 0x0088($t6)
	sh      $v0, 0x001A($t8)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0088($t0)
	lh      $t9, 0x001A($t1)
	slti    $at, $t9, 0x1801
	bnez    $at, .L8026E6F4
	nop
	lw      $t2, 0x0028($sp)
	li      $t3, 0x1800
	lw      $t4, 0x0088($t2)
	sh      $t3, 0x001A($t4)
.L8026E6F4:
	b       .L8026E7EC
	nop
.L8026E6FC:
	lw      $t5, 0x0028($sp)
	lhu     $t7, 0x0018($t5)
	bnez    $t7, .L8026E75C
	nop
	lwc1    $f16, 0x004C($t5)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8026E75C
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f4, 0x004C($t6)
	neg.s   $f6, $f4
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x004C($t6)
	lw      $t0, 0x0028($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t0)
	lw      $t1, 0x0028($sp)
	b       .L8026E770
	sh      $0, 0x001A($t1)
.L8026E75C:
	li.u    $a1, 0x0080045A
	li.l    $a1, 0x0080045A
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026E770:
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       .L8026E7EC
	nop
.L8026E788:
	lw      $t9, 0x0028($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x004C($t9)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L8026E7B0
	nop
	mtc1    $0, $f4
	lw      $t2, 0x0028($sp)
	swc1    $f4, 0x004C($t2)
.L8026E7B0:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0008($t3)
	ori     $t7, $t4, 0x0002
	sw      $t7, 0x0008($t3)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026E7EC
	nop
.L8026E7DC:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026E7EC
	nop
.L8026E7EC:
	b       .L8026E7FC
	move    $v0, $0
	b       .L8026E7FC
	nop
.L8026E7FC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026E810:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8026E86C
	nop
	li.u    $a1, 0x241F8081
	li.l    $a1, 0x241F8081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t9, 0x0028($sp)
	li      $t8, -0x0001
	lw      $t0, 0x0088($t9)
	sh      $t8, 0x0038($t0)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x004F
	lw      $t2, 0x0028($sp)
	li      $t1, 0x0001
	sh      $t1, 0x0018($t2)
.L8026E86C:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0088($t3)
	lh      $t5, 0x0040($t4)
	sw      $t5, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	bnez    $t6, .L8026E898
	nop
	lw      $t9, 0x0028($sp)
	li      $t7, 0x0086
	lw      $t8, 0x0098($t9)
	sb      $t7, 0x000B($t8)
.L8026E898:
	lw      $t0, 0x0024($sp)
	bltz    $t0, .L8026E8C4
	nop
	slti    $at, $t0, 0x0008
	beqz    $at, .L8026E8C4
	nop
	lw      $t1, 0x0028($sp)
	li      $at, 0x00200000
	lw      $t2, 0x0004($t1)
	or      $t3, $t2, $at
	sw      $t3, 0x0004($t1)
.L8026E8C4:
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026E8FC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026E930
	nop
	b       .L8026E944
	nop
.L8026E8FC:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A598
	lw      $a0, 0x0028($sp)
	bnez    $v0, .L8026E928
	nop
	li.u    $a1, 0x04000471
	li.l    $a1, 0x04000471
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026E928:
	b       .L8026E944
	nop
.L8026E930:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       .L8026E944
	nop
.L8026E944:
	b       .L8026E954
	move    $v0, $0
	b       .L8026E954
	nop
.L8026E954:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026E968:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0003
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	lbu     $t9, 0x0000($t8)
	beq     $t9, $at, .L8026E9A4
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0002
	lw      $t2, 0x0094($t1)
	sh      $t0, 0x001E($t2)
.L8026E9A4:
	lw      $t3, 0x0028($sp)
	move    $a0, $t3
	jal     player_80251708
	lw      $a1, 0x0054($t3)
	li.u    $a1, 0x24048081
	li.l    $a1, 0x24048081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, .L8026EA0C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8026EA4C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026EA8C
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026EB10
	nop
	b       .L8026EB20
	nop
.L8026EA0C:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0015
	lw      $t4, 0x0028($sp)
	lwc1    $f12, 0x0054($t4)
	jal     atan2
	lwc1    $f14, 0x004C($t4)
	lw      $t5, 0x0028($sp)
	sh      $v0, 0x002C($t5)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x002C($t6)
	lw      $t9, 0x0088($t6)
	subu    $t8, $0, $t7
	sh      $t8, 0x001A($t9)
	b       .L8026EB20
	nop
.L8026EA4C:
	li.u    $a1, 0x00880456
	li.l    $a1, 0x00880456
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $t1, 0x0028($sp)
	sh      $0, 0x002C($t1)
	lw      $t0, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t2, 0x0090($t0)
	lw      $t3, 0x0024($t2)
	move    $a0, $t3
	jal     camera_80286188
	lbu     $a1, 0x0001($t3)
	b       .L8026EB20
	nop
.L8026EA8C:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	lw      $t4, 0x0028($sp)
	sh      $0, 0x002C($t4)
	lw      $t5, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t5)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026EAC8
	nop
	mtc1    $0, $f8
	lw      $t7, 0x0028($sp)
	swc1    $f8, 0x004C($t7)
.L8026EAC8:
	lw      $t6, 0x0028($sp)
	lw      $t8, 0x0008($t6)
	ori     $t9, $t8, 0x0002
	sw      $t9, 0x0008($t6)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $t1, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t0, 0x0090($t1)
	lw      $t2, 0x0024($t0)
	move    $a0, $t2
	jal     camera_80286188
	lbu     $a1, 0x0001($t2)
	b       .L8026EB20
	nop
.L8026EB10:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026EB20
	nop
.L8026EB20:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0004($t3)
	andi    $t5, $t4, 0x0008
	beqz    $t5, .L8026EB64
	nop
	lwc1    $f10, 0x004C($t3)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8026EB64
	nop
	li.u    $a1, 0x10880899
	li.l    $a1, 0x10880899
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026EB64:
	lw      $t7, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C58)
	ldc1    $f6, %lo(pl_jump_80336C58)($at)
	lwc1    $f18, 0x0054($t7)
	li      $at, 0x41200000
	cvt.d.s $f4, $f18
	mtc1    $at, $f18
	sub.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0054($t7)
	lw      $t8, 0x0028($sp)
	lwc1    $f16, 0x0054($t8)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8026EBB0
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41200000
.L8026EBB0:
	lw      $t9, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026EBDC
	nop
	lw      $t6, 0x0028($sp)
	lw      $t1, 0x0008($t6)
	ori     $t0, $t1, 0x0001
	sw      $t0, 0x0008($t6)
.L8026EBDC:
	b       .L8026EBEC
	move    $v0, $0
	b       .L8026EBEC
	nop
.L8026EBEC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026EC00:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x002C($t6)
	sh      $t7, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x8000
	beqz    $t0, .L8026EC84
	nop
	lw      $t1, 0x0028($sp)
	li      $at, 0x0003
	lw      $t2, 0x0090($t1)
	lw      $t3, 0x0024($t2)
	lbu     $t4, 0x0000($t3)
	bne     $t4, $at, .L8026EC68
	nop
	lw      $t5, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t6, 0x0090($t5)
	lw      $t7, 0x0024($t6)
	move    $a0, $t7
	jal     camera_80286188
	lbu     $a1, 0x0001($t7)
.L8026EC68:
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L8026F144
	nop
.L8026EC84:
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0004($t8)
	andi    $t0, $t9, 0x0008
	bnez    $t0, .L8026ECEC
	nop
	lw      $t1, 0x0028($sp)
	li      $at, 0x0003
	lw      $t2, 0x0090($t1)
	lw      $t3, 0x0024($t2)
	lbu     $t4, 0x0000($t3)
	bne     $t4, $at, .L8026ECD0
	nop
	lw      $t5, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t6, 0x0090($t5)
	lw      $t7, 0x0024($t6)
	move    $a0, $t7
	jal     camera_80286188
	lbu     $a1, 0x0001($t7)
.L8026ECD0:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026F144
	nop
.L8026ECEC:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0003
	lw      $t9, 0x0090($t8)
	lw      $t0, 0x0024($t9)
	lbu     $t1, 0x0000($t0)
	beq     $t1, $at, .L8026ED20
	nop
	lw      $t2, 0x0028($sp)
	li      $a1, 0x0003
	li      $a2, 0x0001
	lw      $t3, 0x0090($t2)
	jal     camera_80286188
	lw      $a0, 0x0024($t3)
.L8026ED20:
	lw      $t4, 0x0028($sp)
	lhu     $t5, 0x0018($t4)
	bnez    $t5, .L8026EDE0
	nop
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, .L8026ED54
	nop
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x005B
	b       .L8026ED90
	nop
.L8026ED54:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00CF
	lw      $t8, 0x0028($sp)
	li      $at, 0x0001
	lw      $t9, 0x0088($t8)
	lh      $t0, 0x0040($t9)
	bne     $t0, $at, .L8026ED90
	nop
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026ED90:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8026EDE0
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x0002
	lw      $t3, 0x001C($t2)
	bne     $t3, $at, .L8026EDC8
	nop
	jal     game_8024983C
	move    $a0, $0
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0001
	sw      $t4, 0x001C($t5)
.L8026EDC8:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x002A
	lw      $t7, 0x0028($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
.L8026EDE0:
	jal     pl_jump_8026B17C
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, .L8026EE2C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8026EE60
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026EEB8
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026F038
	nop
	b       .L8026F048
	nop
.L8026EE2C:
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x002C($t8)
	lw      $t1, 0x0088($t8)
	subu    $t0, $0, $t9
	sh      $t0, 0x001A($t1)
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0030($t2)
	lw      $t4, 0x0088($t2)
	sh      $t3, 0x001E($t4)
	lw      $t5, 0x0028($sp)
	sh      $0, 0x001A($t5)
	b       .L8026F048
	nop
.L8026EE60:
	li.u    $a1, 0x00880456
	li.l    $a1, 0x00880456
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0088
	lw      $a0, 0x0028($sp)
	jal     player_80250C7C
	li      $a1, 0x0007
	lw      $t6, 0x0028($sp)
	sh      $0, 0x002C($t6)
	lw      $t7, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t9, 0x0090($t7)
	lw      $t8, 0x0024($t9)
	move    $a0, $t8
	jal     camera_80286188
	lbu     $a1, 0x0001($t8)
	b       .L8026F048
	nop
.L8026EEB8:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0060($t0)
	beqz    $t1, .L8026EF88
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	lw      $t2, 0x0028($sp)
	sh      $0, 0x002C($t2)
	lw      $t3, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t3)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8026EF04
	nop
	mtc1    $0, $f8
	lw      $t4, 0x0028($sp)
	swc1    $f8, 0x004C($t4)
.L8026EF04:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0004($t5)
	andi    $t7, $t6, 0x0004
	beqz    $t7, .L8026EF24
	nop
	li.u    $s0, 0x04428081
	b       .L8026EF2C
	li.l    $s0, 0x04428081
.L8026EF24:
	li.u    $s0, 0x0445A081
	li.l    $s0, 0x0445A081
.L8026EF2C:
	lw      $t9, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t9)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t8, 0x0028($sp)
	lw      $t0, 0x0008($t8)
	ori     $t1, $t0, 0x0002
	sw      $t1, 0x0008($t8)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $t2, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t3, 0x0090($t2)
	lw      $t4, 0x0024($t3)
	move    $a0, $t4
	jal     camera_80286188
	lbu     $a1, 0x0001($t4)
	b       .L8026F030
	nop
.L8026EF88:
	lw      $t5, 0x0028($sp)
	lhu     $s0, 0x001A($t5)
	lhu     $t7, 0x001A($t5)
	sltiu   $t6, $s0, 0x0001
	move    $s0, $t6
	addiu   $t9, $t7, 0x0001
	beqz    $s0, .L8026EFC0
	sh      $t9, 0x001A($t5)
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x0444C081
	li.l    $a0, 0x0444C081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026EFC0:
	lw      $t1, 0x0028($sp)
	li      $at, 0x001E
	lhu     $t8, 0x001A($t1)
	bne     $t8, $at, .L8026EFDC
	nop
	lw      $t2, 0x0028($sp)
	sh      $0, 0x001A($t2)
.L8026EFDC:
	lw      $t3, 0x0028($sp)
	lh      $t4, 0x002C($t3)
	addiu   $t6, $t4, -0x0200
	sh      $t6, 0x002C($t3)
	lw      $t7, 0x0028($sp)
	lh      $t9, 0x002C($t7)
	slti    $at, $t9, -0x2AAA
	beqz    $at, .L8026F00C
	nop
	lw      $t0, 0x0028($sp)
	li      $t5, -0x2AAA
	sh      $t5, 0x002C($t0)
.L8026F00C:
	lw      $t1, 0x0028($sp)
	lh      $t8, 0x002C($t1)
	lw      $t4, 0x0088($t1)
	subu    $t2, $0, $t8
	sh      $t2, 0x001A($t4)
	lw      $t6, 0x0028($sp)
	lh      $t3, 0x0030($t6)
	lw      $t7, 0x0088($t6)
	sh      $t3, 0x001E($t7)
.L8026F030:
	b       .L8026F048
	nop
.L8026F038:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026F048
	nop
.L8026F048:
	lw      $t9, 0x0028($sp)
	lh      $t5, 0x002C($t9)
	slti    $at, $t5, 0x0801
	bnez    $at, .L8026F088
	nop
	li      $at, 0x42400000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t9)
	c.le.s  $f16, $f10
	nop
	bc1f    .L8026F088
	nop
	lw      $t0, 0x0028($sp)
	lw      $t8, 0x0008($t0)
	ori     $t1, $t8, 0x0001
	sw      $t1, 0x0008($t0)
.L8026F088:
	lh      $t2, 0x0026($sp)
	bgtz    $t2, .L8026F114
	nop
	lw      $t4, 0x0028($sp)
	lh      $t6, 0x002C($t4)
	blez    $t6, .L8026F114
	nop
	li      $at, 0x42400000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t4)
	c.le.s  $f4, $f18
	nop
	bc1f    .L8026F114
	nop
	lw      $t3, 0x0028($sp)
	li.u    $a0, 0x04568081
	li.l    $a0, 0x04568081
	lw      $a1, 0x0088($t3)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lui     $a0, %hi(_Na_bss+0x5F18)
	lw      $a0, %lo(_Na_bss+0x5F18)($a0)
	li      $at, 0x0005
	lw      $t9, 0x0028($sp)
	divu    $0, $a0, $at
	mfhi    $t7
	move    $a0, $t7
	lw      $a1, 0x0088($t9)
	sll     $t5, $a0, 16
	li.u    $at, 0x242B8081
	li.l    $at, 0x242B8081
	move    $a0, $t5
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026F114:
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x14170001
	li.l    $a0, 0x14170001
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0028($sp)
	b       .L8026F144
	move    $v0, $0
	b       .L8026F144
	nop
.L8026F144:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026F158:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0080
	beqz    $t8, .L8026F18C
	nop
	lw      $t9, 0x0088($t6)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x0080
	beqz    $t1, .L8026F1DC
	nop
.L8026F18C:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0080($t2)
	sw      $0, 0x0134($t3)
	lw      $t5, 0x0018($sp)
	lui     $t4, %hi(gfx_frame)
	lw      $t4, %lo(gfx_frame)($t4)
	lw      $t7, 0x0080($t5)
	sw      $t4, 0x0110($t7)
	li.u    $a1, 0x24058081
	li.l    $a1, 0x24058081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026F2DC
	nop
.L8026F1DC:
	lw      $t8, 0x0018($sp)
	lw      $t6, 0x0080($t8)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x003C($t8)
	lw      $t9, 0x0018($sp)
	li      $at, 0x42B90000
	mtc1    $at, $f8
	lw      $t0, 0x0080($t9)
	lwc1    $f6, 0x00A4($t0)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0040($t9)
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x0080($t1)
	lwc1    $f16, 0x00A8($t2)
	swc1    $f16, 0x0044($t1)
	lw      $t3, 0x0018($sp)
	li      $t7, 0x4000
	lw      $t5, 0x0080($t3)
	lw      $t4, 0x00C8($t5)
	subu    $t6, $t7, $t4
	sh      $t6, 0x002E($t3)
	lw      $t8, 0x0018($sp)
	lhu     $t0, 0x0018($t8)
	bnez    $t0, .L8026F274
	nop
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0035
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8026F274
	nop
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x002B
	lw      $t2, 0x0018($sp)
	li      $t9, 0x0001
	sh      $t9, 0x0018($t2)
.L8026F274:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0048
	lw      $t1, 0x0018($sp)
	lw      $a0, 0x0088($t1)
	lw      $a1, 0x003C($t1)
	lw      $a2, 0x0040($t1)
	lw      $a3, 0x0044($t1)
	jal     vecf_set
	addiu   $a0, $a0, 0x0020
	lw      $t5, 0x0018($sp)
	li      $t4, 0x4000
	move    $a1, $0
	lw      $a0, 0x0088($t5)
	lh      $t7, 0x002E($t5)
	move    $a3, $0
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	subu    $a2, $t4, $t7
	b       .L8026F2DC
	move    $v0, $0
	b       .L8026F2DC
	nop
.L8026F2DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026F2EC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0xA000
	beqz    $t8, .L8026F39C
	nop
	lw      $t9, 0x0028($sp)
	li      $at, 0x0003
	lw      $t0, 0x0090($t9)
	lw      $t1, 0x0024($t0)
	lbu     $t2, 0x0000($t1)
	bne     $t2, $at, .L8026F348
	nop
	lw      $t3, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t4, 0x0090($t3)
	lw      $t5, 0x0024($t4)
	move    $a0, $t5
	jal     camera_80286188
	lbu     $a1, 0x0001($t5)
.L8026F348:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L8026F380
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026F600
	nop
	b       .L8026F39C
	nop
.L8026F380:
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026F600
	nop
.L8026F39C:
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24048081
	li.l    $a2, 0x24048081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0018($t9)
	bnez    $t0, .L8026F428
	nop
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00D0
	lw      $t1, 0x0028($sp)
	li      $at, 0x0007
	lw      $t2, 0x0088($t1)
	lh      $t3, 0x0040($t2)
	bne     $t3, $at, .L8026F400
	nop
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026F400:
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8026F428
	nop
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x006F
	lw      $t6, 0x0028($sp)
	li      $t5, 0x0001
	sh      $t5, 0x0018($t6)
.L8026F428:
	lw      $t7, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t8, 0x0018($t7)
	bne     $t8, $at, .L8026F468
	nop
	lw      $t9, 0x0088($t7)
	li      $at, 0x0001
	lh      $t0, 0x0040($t9)
	bne     $t0, $at, .L8026F468
	nop
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026F468:
	lw      $t2, 0x0028($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($t2)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8026F4FC
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x0003
	lw      $t4, 0x0090($t3)
	lw      $t5, 0x0024($t4)
	lbu     $t6, 0x0000($t5)
	beq     $t6, $at, .L8026F4BC
	nop
	lw      $t8, 0x0028($sp)
	li      $a1, 0x0003
	li      $a2, 0x0001
	lw      $t7, 0x0090($t8)
	jal     camera_80286188
	lw      $a0, 0x0024($t7)
.L8026F4BC:
	lw      $t9, 0x0028($sp)
	li      $at, 0x42000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8026F4E8
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x42000000
.L8026F4E8:
	li.u    $a1, 0x10880899
	li.l    $a1, 0x10880899
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
.L8026F4FC:
	lw      $t0, 0x0028($sp)
	lhu     $s0, 0x001A($t0)
	lhu     $t2, 0x001A($t0)
	xori    $t1, $s0, 0x000A
	sltiu   $t1, $t1, 0x0001
	move    $s0, $t1
	addiu   $t3, $t2, 0x0001
	beqz    $s0, .L8026F554
	sh      $t3, 0x001A($t0)
	lw      $t4, 0x0028($sp)
	li      $at, 0x0003
	lw      $t5, 0x0090($t4)
	lw      $t6, 0x0024($t5)
	lbu     $t8, 0x0000($t6)
	beq     $t8, $at, .L8026F554
	nop
	lw      $t7, 0x0028($sp)
	li      $a1, 0x0003
	li      $a2, 0x0001
	lw      $t9, 0x0090($t7)
	jal     camera_80286188
	lw      $a0, 0x0024($t9)
.L8026F554:
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026F598
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026F5CC
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8026F5E0
	nop
	b       .L8026F5F0
	nop
.L8026F598:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A598
	lw      $a0, 0x0028($sp)
	bnez    $v0, .L8026F5C4
	nop
	li.u    $a1, 0x04000472
	li.l    $a1, 0x04000472
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026F5C4:
	b       .L8026F5F0
	nop
.L8026F5CC:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802552FC
	move    $a1, $0
	b       .L8026F5F0
	nop
.L8026F5E0:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       .L8026F5F0
	nop
.L8026F5F0:
	b       .L8026F600
	move    $v0, $0
	b       .L8026F600
	nop
.L8026F600:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026F614:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     player_8025118C
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x04000471
	li.l    $a1, 0x04000471
	lw      $a0, 0x0018($sp)
	li      $a2, 0x000A
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       .L8026F650
	move    $v0, $0
	b       .L8026F650
	nop
.L8026F650:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026F660:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lh      $t7, 0x0024($t6)
	lh      $t8, 0x002E($t6)
	subu    $t9, $t7, $t8
	sh      $t9, 0x002E($sp)
	lw      $t0, 0x0030($sp)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($t0)
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	li.u    $a1, 0x240C8081
	li.l    $a1, 0x240C8081
	lw      $a0, 0x0030($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t1, 0x0030($sp)
	lhu     $t2, 0x0018($t1)
	bnez    $t2, .L8026F720
	nop
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x00CF
	lw      $t3, 0x0030($sp)
	li      $at, 0x0001
	lw      $t4, 0x0088($t3)
	lh      $t5, 0x0040($t4)
	bne     $t5, $at, .L8026F6FC
	nop
	lw      $t6, 0x0030($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t6)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026F6FC:
	jal     player_8025097C
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L8026F718
	nop
	lw      $t8, 0x0030($sp)
	li      $t7, 0x0001
	sh      $t7, 0x0018($t8)
.L8026F718:
	b       .L8026F72C
	nop
.L8026F720:
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x0015
.L8026F72C:
	jal     pl_jump_8026AA48
	lw      $a0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026F764
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026F780
	nop
	b       .L8026F794
	nop
.L8026F764:
	li.u    $a1, 0x00880456
	li.l    $a1, 0x00880456
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026F794
	nop
.L8026F780:
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	b       .L8026F794
	nop
.L8026F794:
	li      $at, 0x45C00000
	mtc1    $at, $f10
	lwc1    $f16, 0x0028($sp)
	lhu     $t9, 0x002E($sp)
	lui     $at, %hi(math_cos)
	mul.s   $f18, $f10, $f16
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	lw      $t4, 0x0030($sp)
	mul.s   $f6, $f4, $f18
	lw      $t5, 0x0088($t4)
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	sh      $t3, 0x001A($t5)
	li      $at, 0xC5800000
	mtc1    $at, $f10
	lwc1    $f16, 0x0028($sp)
	lhu     $t6, 0x002E($sp)
	lui     $at, %hi(math_sin)
	mul.s   $f4, $f10, $f16
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f18, %lo(math_sin)($at)
	lw      $t1, 0x0030($sp)
	mul.s   $f6, $f18, $f4
	lw      $t2, 0x0088($t1)
	trunc.w.s $f8, $f6
	mfc1    $t0, $f8
	nop
	sh      $t0, 0x001E($t2)
	b       .L8026F82C
	move    $v0, $0
	b       .L8026F82C
	nop
.L8026F82C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_jump_8026F840:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L8026F884
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026FA04
	nop
.L8026F884:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L8026F8B4
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8026FA04
	nop
.L8026F8B4:
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24048081
	li.l    $a2, 0x24048081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0028($sp)
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, .L8026F904
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8026F964
	nop
	b       .L8026F978
	nop
.L8026F904:
	lw      $t2, 0x0028($sp)
	lhu     $s1, 0x0018($t2)
	lhu     $t4, 0x0018($t2)
	sltiu   $t3, $s1, 0x0001
	move    $s1, $t3
	addiu   $t5, $t4, 0x0001
	beqz    $s1, .L8026F938
	sh      $t5, 0x0018($t2)
	li      $at, 0x42280000
	mtc1    $at, $f4
	lw      $t6, 0x0028($sp)
	b       .L8026F94C
	swc1    $f4, 0x004C($t6)
.L8026F938:
	li.u    $a1, 0x0C000232
	li.l    $a1, 0x0C000232
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8026F94C:
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       .L8026F978
	nop
.L8026F964:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802552FC
	li      $a1, 0x0001
	b       .L8026F978
	nop
.L8026F978:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x0018($t7)
	beqz    $t8, .L8026F9A4
	nop
	lwc1    $f6, 0x004C($t7)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8026F9D8
	nop
.L8026F9A4:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x006F
	bnez    $v0, .L8026F9D0
	nop
	lw      $t9, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t9)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8026F9D0:
	b       .L8026F9E4
	nop
.L8026F9D8:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0056
.L8026F9E4:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0008($t0)
	ori     $t3, $t1, 0x0008
	sw      $t3, 0x0008($t0)
	b       .L8026FA04
	move    $v0, $0
	b       .L8026FA04
	nop
.L8026FA04:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

pl_jump_8026FA18:
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
	bc1f    .L8026FA60
	nop
	jal     player_80253488
	lw      $a0, 0x0018($sp)
	b       .L8026FAF4
	nop
.L8026FA60:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0040
	beqz    $t1, .L8026FA90
	nop
	li.u    $a1, 0x00020339
	li.l    $a1, 0x00020339
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026FAF4
	nop
.L8026FA90:
	lw      $t2, 0x0018($sp)
	li      $at, 0x0038
	lw      $t3, 0x0068($t2)
	lh      $t4, 0x0000($t3)
	bne     $t4, $at, .L8026FAD8
	nop
	lw      $t5, 0x000C($t2)
	li      $at, 0x01000000
	and     $t6, $t5, $at
	beqz    $t6, .L8026FAD8
	nop
	li.u    $a1, 0x1008089C
	li.l    $a1, 0x1008089C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8026FAF4
	nop
.L8026FAD8:
	mtc1    $0, $f10
	lw      $t7, 0x0018($sp)
	swc1    $f10, 0x00C0($t7)
	b       .L8026FAF4
	move    $v0, $0
	b       .L8026FAF4
	nop
.L8026FAF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_jump_main
pl_jump_main:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_jump_8026FA18
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8026FB2C
	nop
	b       .L802700F0
	li      $v0, 0x0001
.L8026FB2C:
	jal     pl_jump_80269FC0
	lw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x018008AB
	li.l    $at, 0x018008AB
	lw      $s0, 0x000C($t6)
	sltu    $at, $s0, $at
	bnez    $at, .L8026FC44
	nop
	li.u    $at, 0x030008B0
	li.l    $at, 0x030008B0
	sltu    $at, $s0, $at
	bnez    $at, .L8026FBAC
	nop
	li.u    $at, 0x1008089C
	li.l    $at, 0x1008089C
	beq     $s0, $at, .L802700CC
	nop
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	beq     $s0, $at, .L8026FDFC
	nop
	li.u    $at, 0x10880899
	li.l    $at, 0x10880899
	beq     $s0, $at, .L80270090
	nop
	li.u    $at, 0x830008AB
	li.l    $at, 0x830008AB
	beq     $s0, $at, .L8026FED8
	nop
	b       L802700E0
	nop
.L8026FBAC:
	li.u    $at, 0x0188088B
	li.l    $at, 0x0188088B
	sltu    $at, $s0, $at
	bnez    $at, .L8026FC1C
	nop
	li.u    $at, 0x0281089B
	li.l    $at, 0x0281089B
	sltu    $at, $s0, $at
	bnez    $at, .L8026FC04
	nop
	li.u    $at, 0xFCFFF780
	li.l    $at, 0xFCFFF780
	addu    $t7, $s0, $at
	sltiu   $at, $t7, 0x0030
	beqz    $at, L802700E0
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_jump_80336C60)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_jump_80336C60)($at)
	jr      $t7
	nop
.L8026FC04:
	li.u    $at, 0x0281089A
	li.l    $at, 0x0281089A
	beq     $s0, $at, .L8026FEB0
	nop
	b       L802700E0
	nop
.L8026FC1C:
	li.u    $at, 0x018008AC
	li.l    $at, 0x018008AC
	beq     $s0, $at, .L8027007C
	nop
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	beq     $s0, $at, .L8026FEC4
	nop
	b       L802700E0
	nop
.L8026FC44:
	li.u    $at, 0x0081089C
	li.l    $at, 0x0081089C
	sltu    $at, $s0, $at
	bnez    $at, .L8026FD24
	nop
	li.u    $at, 0x010008AE
	li.l    $at, 0x010008AE
	sltu    $at, $s0, $at
	bnez    $at, .L8026FCC8
	nop
	li.u    $at, 0x010208BF
	li.l    $at, 0x010208BF
	sltu    $at, $s0, $at
	bnez    $at, .L8026FC98
	nop
	li.u    $at, 0x018008AA
	li.l    $at, 0x018008AA
	beq     $s0, $at, .L80270068
	nop
	b       L802700E0
	nop
.L8026FC98:
	li.u    $at, 0xFEFDF750
	li.l    $at, 0xFEFDF750
	addu    $t8, $s0, $at
	sltiu   $at, $t8, 0x000F
	beqz    $at, L802700E0
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_jump_80336D20)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_jump_80336D20)($at)
	jr      $t8
	nop
.L8026FCC8:
	li.u    $at, 0x00880899
	li.l    $at, 0x00880899
	sltu    $at, $s0, $at
	bnez    $at, .L8026FD0C
	nop
	li.u    $at, 0xFEFFF77E
	li.l    $at, 0xFEFFF77E
	addu    $t9, $s0, $at
	sltiu   $at, $t9, 0x002C
	beqz    $at, L802700E0
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(pl_jump_80336D5C)
	addu    $at, $at, $t9
	lw      $t9, %lo(pl_jump_80336D5C)($at)
	jr      $t9
	nop
.L8026FD0C:
	li.u    $at, 0x00880898
	li.l    $at, 0x00880898
	beq     $s0, $at, .L8026FF78
	nop
	b       L802700E0
	nop
.L8026FD24:
	li      $at, 0x04A8
	beq     $s0, $at, .L802700A4
	nop
	li      $at, 0x08A7
	beq     $s0, $at, .L8026FF50
	nop
	li      $at, 0x08AE
	beq     $s0, $at, .L8026FFF0
	nop
	li.u    $at, 0x008008A9
	li.l    $at, 0x008008A9
	beq     $s0, $at, .L80270018
	nop
	li.u    $at, 0x0081089B
	li.l    $at, 0x0081089B
	beq     $s0, $at, .L8026FEB0
	nop
	b       L802700E0
	nop
.globl L8026FD70
L8026FD70:
	jal     pl_jump_8026B6A0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FD84
L8026FD84:
	jal     pl_jump_8026B740
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FD98
L8026FD98:
	jal     pl_jump_8026B9AC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FDAC
L8026FDAC:
	jal     pl_jump_8026BAB8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FDC0
L8026FDC0:
	jal     pl_jump_8026BBB4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FDD4
L8026FDD4:
	jal     pl_jump_8026BCC0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FDE8
L8026FDE8:
	jal     pl_jump_8026BDCC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L8026FDFC:
	jal     pl_jump_8026C034
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE10
L8026FE10:
	jal     pl_jump_8026C5D0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE24
L8026FE24:
	jal     pl_jump_8026C738
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE38
L8026FE38:
	jal     pl_jump_8026C880
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE4C
L8026FE4C:
	jal     pl_jump_8026CD0C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE60
L8026FE60:
	jal     pl_jump_8026CE50
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE74
L8026FE74:
	jal     pl_jump_8026B814
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE88
L8026FE88:
	jal     pl_jump_8026B90C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE9C
L8026FE9C:
	jal     pl_jump_8026BE78
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L8026FEB0:
	jal     pl_jump_8026BF40
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L8026FEC4:
	jal     pl_jump_8026C1E0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L8026FED8:
	jal     pl_jump_8026C4B8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FEEC
L8026FEEC:
	jal     pl_jump_8026D3C8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF00
L8026FF00:
	jal     pl_jump_8026D43C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF14
L8026FF14:
	jal     pl_jump_8026D508
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF28
L8026FF28:
	jal     pl_jump_8026D4B0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF3C
L8026FF3C:
	jal     pl_jump_8026D6FC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L8026FF50:
	jal     pl_jump_8026D988
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF64
L8026FF64:
	jal     pl_jump_8026DB54
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L8026FF78:
	jal     pl_jump_8026E968
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF8C
L8026FF8C:
	jal     pl_jump_8026DE98
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FFA0
L8026FFA0:
	jal     pl_jump_8026E088
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FFB4
L8026FFB4:
	jal     pl_jump_8026E2B4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FFC8
L8026FFC8:
	jal     pl_jump_8026D770
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FFDC
L8026FFDC:
	jal     pl_jump_8026DCF4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L8026FFF0:
	jal     pl_jump_8026CF28
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L80270004
L80270004:
	jal     pl_jump_8026F840
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L80270018:
	jal     pl_jump_8026C9FC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8027002C
L8027002C:
	jal     pl_jump_8026D608
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L80270040
L80270040:
	jal     pl_jump_8026D560
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L80270054
L80270054:
	jal     pl_jump_8026F2EC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L80270068:
	jal     pl_jump_8026E59C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L8027007C:
	jal     pl_jump_8026E810
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L80270090:
	jal     pl_jump_8026EC00
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L802700A4:
	jal     pl_jump_8026F158
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L802700B8
L802700B8:
	jal     pl_jump_8026F614
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.L802700CC:
	jal     pl_jump_8026F660
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L802700E0
L802700E0:
	b       .L802700F0
	lw      $v0, 0x0024($sp)
	b       .L802700F0
	nop
.L802700F0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

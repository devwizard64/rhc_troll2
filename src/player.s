.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

.globl player_80250940
player_80250940:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0088($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lw      $t0, 0x003C($t7)
	lh      $t8, 0x0040($t7)
	lh      $t1, 0x0008($t0)
	addiu   $t9, $t8, 0x0001
	xor     $v0, $t9, $t1
	b       .L80250974
	sltiu   $v0, $v0, 0x0001
	b       .L80250974
	nop
.L80250974:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl player_8025097C
player_8025097C:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0088($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lw      $t9, 0x003C($t7)
	lh      $t8, 0x0040($t7)
	lh      $t0, 0x0008($t9)
	addiu   $t1, $t0, -0x0002
	slt     $v0, $t8, $t1
	b       .L802509B0
	xori    $v0, $v0, 0x0001
	b       .L802509B0
	nop
.L802509B0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl player_802509B8
player_802509B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x00A0($t8)
	lw      $t0, 0x0008($t9)
	sw      $t0, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     bank_load
	lw      $a0, 0x00A0($t1)
	beqz    $v0, .L80250A34
	nop
	lw      $t2, 0x0018($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	lw      $t3, 0x000C($t2)
	addu    $t4, $t2, $t3
	and     $t5, $t4, $at
	sw      $t5, 0x000C($t2)
	lw      $t6, 0x0018($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	lw      $t7, 0x0010($t6)
	addu    $t8, $t6, $t7
	and     $t9, $t8, $at
	sw      $t9, 0x0010($t6)
.L80250A34:
	lw      $t0, 0x001C($sp)
	lw      $t3, 0x0024($sp)
	lh      $t1, 0x0038($t0)
	beq     $t1, $t3, .L80250AE0
	nop
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	sh      $t4, 0x0038($t5)
	lw      $t2, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	sw      $t2, 0x003C($t7)
	lw      $t8, 0x001C($sp)
	sw      $0, 0x0048($t8)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	lh      $t6, 0x00B0($t9)
	sh      $t6, 0x003A($t0)
	lw      $t1, 0x0018($sp)
	lh      $t3, 0x0000($t1)
	andi    $t4, $t3, 0x0004
	beqz    $t4, .L80250AA0
	nop
	lw      $t5, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	lh      $t2, 0x0004($t5)
	b       .L80250AE0
	sh      $t2, 0x0040($t7)
.L80250AA0:
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x0000($t8)
	andi    $t6, $t9, 0x0002
	beqz    $t6, .L80250ACC
	nop
	lw      $t0, 0x0018($sp)
	lw      $t4, 0x001C($sp)
	lh      $t1, 0x0004($t0)
	addiu   $t3, $t1, 0x0001
	b       .L80250AE0
	sh      $t3, 0x0040($t4)
.L80250ACC:
	lw      $t5, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	lh      $t2, 0x0004($t5)
	addiu   $t7, $t2, -0x0001
	sh      $t7, 0x0040($t8)
.L80250AE0:
	lw      $t9, 0x001C($sp)
	b       .L80250AF4
	lh      $v0, 0x0040($t9)
	b       .L80250AF4
	nop
.L80250AF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl player_80250B04
player_80250B04:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x00A0($t8)
	lw      $t0, 0x0008($t9)
	sw      $t0, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     bank_load
	lw      $a0, 0x00A0($t1)
	beqz    $v0, .L80250B84
	nop
	lw      $t2, 0x0018($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	lw      $t3, 0x000C($t2)
	addu    $t4, $t2, $t3
	and     $t5, $t4, $at
	sw      $t5, 0x000C($t2)
	lw      $t6, 0x0018($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	lw      $t7, 0x0010($t6)
	addu    $t8, $t6, $t7
	and     $t9, $t8, $at
	sw      $t9, 0x0010($t6)
.L80250B84:
	lw      $t0, 0x001C($sp)
	lw      $t3, 0x0024($sp)
	lh      $t1, 0x0038($t0)
	beq     $t1, $t3, .L80250C4C
	nop
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	sh      $t4, 0x0038($t5)
	lw      $t2, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	sw      $t2, 0x003C($t7)
	lw      $t8, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	lh      $t9, 0x00B0($t8)
	sh      $t9, 0x003A($t6)
	lw      $t0, 0x0018($sp)
	lh      $t1, 0x0000($t0)
	andi    $t3, $t1, 0x0004
	beqz    $t3, .L80250BEC
	nop
	lw      $t4, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	lh      $t5, 0x0004($t4)
	sll     $t2, $t5, 16
	b       .L80250C3C
	sw      $t2, 0x0044($t7)
.L80250BEC:
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x0000($t8)
	andi    $t6, $t9, 0x0002
	beqz    $t6, .L80250C20
	nop
	lw      $t0, 0x0018($sp)
	lw      $t4, 0x0028($sp)
	lw      $t2, 0x001C($sp)
	lh      $t1, 0x0004($t0)
	sll     $t3, $t1, 16
	addu    $t5, $t3, $t4
	b       .L80250C3C
	sw      $t5, 0x0044($t2)
.L80250C20:
	lw      $t7, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t1, 0x001C($sp)
	lh      $t8, 0x0004($t7)
	sll     $t9, $t8, 16
	subu    $t0, $t9, $t6
	sw      $t0, 0x0044($t1)
.L80250C3C:
	lw      $t3, 0x001C($sp)
	lw      $t4, 0x0044($t3)
	sra     $t5, $t4, 16
	sh      $t5, 0x0040($t3)
.L80250C4C:
	lw      $t2, 0x0028($sp)
	lw      $t7, 0x001C($sp)
	sw      $t2, 0x0048($t7)
	lw      $t8, 0x001C($sp)
	b       .L80250C6C
	lh      $v0, 0x0040($t8)
	b       .L80250C6C
	nop
.L80250C6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl player_80250C7C
player_80250C7C:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0088($a0)
	addiu   $t7, $t6, 0x0038
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	lw      $t9, 0x0004($t8)
	sw      $t9, 0x0000($sp)
	lw      $t0, 0x0004($sp)
	lw      $t1, 0x0010($t0)
	beqz    $t1, .L80250CF8
	nop
	lw      $t2, 0x0000($sp)
	lh      $t3, 0x0000($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, .L80250CDC
	nop
	lw      $t6, 0x0004($sp)
	sll     $t5, $a1, 16
	lw      $t7, 0x0010($t6)
	addu    $t8, $t5, $t7
	b       .L80250CF0
	sw      $t8, 0x000C($t6)
.L80250CDC:
	lw      $t0, 0x0004($sp)
	sll     $t9, $a1, 16
	lw      $t1, 0x0010($t0)
	subu    $t2, $t9, $t1
	sw      $t2, 0x000C($t0)
.L80250CF0:
	b       .L80250D28
	nop
.L80250CF8:
	lw      $t3, 0x0000($sp)
	lh      $t4, 0x0000($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L80250D1C
	nop
	lw      $t8, 0x0004($sp)
	addiu   $t7, $a1, 0x0001
	b       .L80250D28
	sh      $t7, 0x0008($t8)
.L80250D1C:
	lw      $t9, 0x0004($sp)
	addiu   $t6, $a1, -0x0001
	sh      $t6, 0x0008($t9)
.L80250D28:
	b       .L80250D30
	nop
.L80250D30:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl player_80250D38
player_80250D38:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0018
	sll     $t6, $a1, 16
	sw      $t6, 0x0010($sp)
	lw      $t7, 0x0088($a0)
	addiu   $t8, $t7, 0x0038
	sw      $t8, 0x000C($sp)
	lw      $t9, 0x000C($sp)
	lw      $t0, 0x0004($t9)
	sw      $t0, 0x0008($sp)
	lw      $t1, 0x000C($sp)
	lw      $t2, 0x0010($t1)
	beqz    $t2, .L80250DF4
	nop
	lw      $t3, 0x0008($sp)
	lh      $t4, 0x0000($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L80250DBC
	nop
	lw      $t6, 0x000C($sp)
	lw      $t8, 0x0010($sp)
	lw      $t7, 0x000C($t6)
	slt     $a2, $t8, $t7
	beqz    $a2, .L80250DB4
	nop
	lw      $t9, 0x000C($t6)
	lw      $t0, 0x0010($t6)
	subu    $t1, $t9, $t0
	slt     $a2, $t8, $t1
	xori    $a2, $a2, 0x0001
.L80250DB4:
	b       .L80250DEC
	sw      $a2, 0x0014($sp)
.L80250DBC:
	lw      $t2, 0x000C($sp)
	lw      $t4, 0x0010($sp)
	lw      $t3, 0x000C($t2)
	slt     $a2, $t3, $t4
	beqz    $a2, .L80250DE8
	nop
	lw      $t5, 0x000C($t2)
	lw      $t7, 0x0010($t2)
	addu    $t6, $t5, $t7
	slt     $a2, $t6, $t4
	xori    $a2, $a2, 0x0001
.L80250DE8:
	sw      $a2, 0x0014($sp)
.L80250DEC:
	b       .L80250E3C
	nop
.L80250DF4:
	lw      $t9, 0x0008($sp)
	lh      $t0, 0x0000($t9)
	andi    $t8, $t0, 0x0002
	beqz    $t8, .L80250E24
	nop
	lw      $t1, 0x000C($sp)
	addiu   $t2, $a1, 0x0001
	lh      $t3, 0x0008($t1)
	xor     $t5, $t3, $t2
	sltiu   $t5, $t5, 0x0001
	b       .L80250E3C
	sw      $t5, 0x0014($sp)
.L80250E24:
	lw      $t7, 0x000C($sp)
	lh      $t4, 0x0008($t7)
	addiu   $t6, $t4, 0x0001
	xor     $t9, $t6, $a1
	sltiu   $t9, $t9, 0x0001
	sw      $t9, 0x0014($sp)
.L80250E3C:
	b       .L80250E4C
	lw      $v0, 0x0014($sp)
	b       .L80250E4C
	nop
.L80250E4C:
	jr      $ra
	addiu   $sp, $sp, 0x0018

.globl player_80250E54
player_80250E54:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x003C($t6)
	sw      $t7, 0x002C($sp)
	lw      $a0, 0x0038($sp)
	move    $a1, $0
	jal     shape_8037C844
	addiu   $a0, $a0, 0x0038
	sh      $v0, 0x002A($sp)
	lw      $t8, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0010($t8)
	sw      $v0, 0x0024($sp)
	lw      $t9, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x000C($t9)
	sw      $v0, 0x0020($sp)
	lhu     $t0, 0x003E($sp)
	lui     $at, %hi(math_sin)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	swc1    $f4, 0x001C($sp)
	lhu     $t3, 0x003E($sp)
	lui     $at, %hi(math_cos)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_cos)($at)
	swc1    $f6, 0x0018($sp)
	lh      $a0, 0x002A($sp)
	jal     shape_8037C7D8
	addiu   $a1, $sp, 0x0024
	lw      $t6, 0x0020($sp)
	sll     $t7, $v0, 1
	li      $at, 0x40800000
	addu    $t8, $t6, $t7
	lh      $t9, 0x0000($t8)
	mtc1    $at, $f16
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	lh      $a0, 0x002A($sp)
	jal     shape_8037C7D8
	addiu   $a1, $sp, 0x0024
	lw      $t0, 0x0020($sp)
	sll     $t1, $v0, 1
	li      $at, 0x40800000
	addu    $t2, $t0, $t1
	lh      $t3, 0x0000($t2)
	mtc1    $at, $f8
	lw      $t6, 0x0040($sp)
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sh      $t5, 0x0002($t6)
	lh      $a0, 0x002A($sp)
	jal     shape_8037C7D8
	addiu   $a1, $sp, 0x0024
	lw      $t7, 0x0020($sp)
	sll     $t8, $v0, 1
	li      $at, 0x40800000
	addu    $t9, $t7, $t8
	lh      $t0, 0x0000($t9)
	mtc1    $at, $f6
	mtc1    $t0, $f18
	nop
	cvt.s.w $f4, $f18
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f16, 0x0018($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x001C($sp)
	mul.s   $f18, $f10, $f16
	lw      $t3, 0x0040($sp)
	mul.s   $f8, $f4, $f6
	add.s   $f10, $f18, $f8
	trunc.w.s $f16, $f10
	mfc1    $t2, $f16
	nop
	sh      $t2, 0x0000($t3)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f10, 0x0030($sp)
	neg.s   $f6, $f4
	lwc1    $f16, 0x0018($sp)
	mul.s   $f8, $f6, $f18
	lw      $t6, 0x0040($sp)
	mul.s   $f4, $f10, $f16
	add.s   $f6, $f8, $f4
	trunc.w.s $f18, $f6
	mfc1    $t5, $f18
	nop
	sh      $t5, 0x0004($t6)
	lw      $t7, 0x002C($sp)
	b       .L80251010
	lh      $v0, 0x0000($t7)
	b       .L80251010
	nop
.L80251010:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl player_80251020
player_80251020:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	addiu   $a2, $sp, 0x0020
	lw      $a0, 0x0088($t6)
	jal     player_80250E54
	lh      $a1, 0x002E($t6)
	sh      $v0, 0x001E($sp)
	lh      $t7, 0x001E($sp)
	andi    $t8, $t7, 0x0048
	beqz    $t8, .L80251094
	nop
	addiu   $t0, $sp, 0x0020
	lh      $t1, 0x0000($t0)
	lw      $t9, 0x0028($sp)
	mtc1    $t1, $f6
	lwc1    $f4, 0x003C($t9)
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x003C($t9)
	addiu   $t3, $sp, 0x0020
	lh      $t4, 0x0004($t3)
	lw      $t2, 0x0028($sp)
	mtc1    $t4, $f18
	lwc1    $f16, 0x0044($t2)
	cvt.s.w $f6, $f18
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x0044($t2)
.L80251094:
	lh      $t5, 0x001E($sp)
	andi    $t6, $t5, 0x0050
	beqz    $t6, .L802510C4
	nop
	addiu   $t8, $sp, 0x0020
	lh      $t0, 0x0002($t8)
	lw      $t7, 0x0028($sp)
	mtc1    $t0, $f10
	lwc1    $f8, 0x0040($t7)
	cvt.s.w $f18, $f10
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x0040($t7)
.L802510C4:
	b       .L802510CC
	nop
.L802510CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_802510DC
player_802510DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	move    $a1, $0
	addiu   $a2, $sp, 0x0018
	jal     player_80250E54
	lw      $a0, 0x0088($t6)
	addiu   $t7, $sp, 0x0018
	b       .L80251110
	lh      $v0, 0x0002($t7)
	b       .L80251110
	nop
.L80251110:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl player_80251120
player_80251120:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lw      $t8, 0x0020($sp)
	lw      $t7, 0x0004($t6)
	and     $t9, $t7, $t8
	bnez    $t9, .L80251174
	nop
	lw      $t0, 0x0018($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t1, 0x0018($sp)
	lw      $t3, 0x0020($sp)
	lw      $t2, 0x0004($t1)
	or      $t4, $t2, $t3
	sw      $t4, 0x0004($t1)
.L80251174:
	b       .L8025117C
	nop
.L8025117C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_8025118C
player_8025118C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00020000
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	bnez    $t8, .L8025125C
	nop
	lw      $t9, 0x0018($sp)
	li.u    $at, 0x01000882
	li.l    $at, 0x01000882
	lw      $t0, 0x000C($t9)
	bne     $t0, $at, .L8025120C
	nop
	lui     $a0, %hi(_Na_bss+0x5F18)
	lw      $a0, %lo(_Na_bss+0x5F18)($a0)
	li      $at, 0x0005
	lw      $t3, 0x0018($sp)
	divu    $0, $a0, $at
	mfhi    $t1
	move    $a0, $t1
	lw      $a1, 0x0088($t3)
	sll     $t2, $a0, 16
	li.u    $at, 0x242B8081
	li.l    $at, 0x242B8081
	move    $a0, $t2
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L80251248
	nop
.L8025120C:
	lui     $a0, %hi(_Na_bss+0x5F18)
	lw      $a0, %lo(_Na_bss+0x5F18)($a0)
	li      $at, 0x0003
	lw      $t6, 0x0018($sp)
	divu    $0, $a0, $at
	mfhi    $t4
	move    $a0, $t4
	lw      $a1, 0x0088($t6)
	sll     $t5, $a0, 16
	li.u    $at, 0x24008081
	li.l    $at, 0x24008081
	move    $a0, $t5
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80251248:
	lw      $t7, 0x0018($sp)
	li      $at, 0x00020000
	lw      $t8, 0x0004($t7)
	or      $t9, $t8, $at
	sw      $t9, 0x0004($t7)
.L8025125C:
	b       .L80251264
	nop
.L80251264:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80251274
player_80251274:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802512B0
	nop
	trunc.w.s $f8, $f4
	mfc1    $t8, $f8
	b       .L802512CC
	sw      $t8, 0x0024($sp)
.L802512B0:
	lw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0054($t9)
	neg.s   $f16, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	sw      $t1, 0x0024($sp)
.L802512CC:
	lw      $t2, 0x0024($sp)
	slti    $at, $t2, 0x0065
	bnez    $at, .L802512E4
	nop
	b       .L802512E8
	li      $s0, 0x0064
.L802512E4:
	lw      $s0, 0x0024($sp)
.L802512E8:
	li      $a0, 0x0001
	jal     Na_g_803218D8
	move    $a1, $s0
	b       .L802512FC
	nop
.L802512FC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80251310
player_80251310:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00020000
	lw      $t7, 0x0014($t6)
	bne     $t7, $at, .L80251370
	nop
	lw      $t8, 0x0020($sp)
	beqz    $t8, .L80251358
	nop
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0008($t9)
	ori     $t1, $t0, 0x1000
	b       .L80251368
	sw      $t1, 0x0008($t9)
.L80251358:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0008($t2)
	ori     $t4, $t3, 0x0100
	sw      $t4, 0x0008($t2)
.L80251368:
	b       .L802513BC
	nop
.L80251370:
	lw      $t5, 0x0018($sp)
	li      $at, 0x00070000
	lw      $t6, 0x0014($t5)
	bne     $t6, $at, .L80251398
	nop
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0008($t7)
	ori     $t0, $t8, 0x8000
	b       .L802513BC
	sw      $t0, 0x0008($t7)
.L80251398:
	lw      $t1, 0x0018($sp)
	li      $at, 0x00050000
	lw      $t9, 0x0014($t1)
	bne     $t9, $at, .L802513BC
	nop
	lw      $t3, 0x0018($sp)
	lw      $t4, 0x0008($t3)
	ori     $t2, $t4, 0x4000
	sw      $t2, 0x0008($t3)
.L802513BC:
	lw      $t5, 0x0018($sp)
	lw      $t6, 0x0004($t5)
	andi    $t8, $t6, 0x0004
	bnez    $t8, .L802513F4
	nop
	lw      $t0, 0x001C($sp)
	li.u    $at, 0x04438081
	li.l    $at, 0x04438081
	beq     $t0, $at, .L802513F4
	nop
	li.u    $at, 0x241F8081
	li.l    $at, 0x241F8081
	bne     $t0, $at, .L80251410
	nop
.L802513F4:
	lw      $t7, 0x0018($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025142C
	nop
.L80251410:
	lw      $t1, 0x0018($sp)
	lw      $t4, 0x001C($sp)
	lw      $t9, 0x0014($t1)
	lw      $a1, 0x0088($t1)
	addu    $a0, $t9, $t4
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8025142C:
	b       .L80251434
	nop
.L80251434:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80251444
player_80251444:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00010000
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	bnez    $t8, .L80251494
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80251310
	lw      $a2, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	li      $at, 0x00010000
	lw      $t0, 0x0004($t9)
	or      $t1, $t0, $at
	sw      $t1, 0x0004($t9)
.L80251494:
	b       .L8025149C
	nop
.L8025149C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_802514AC
player_802514AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L802514E0
	nop
	li.u    $s0, 0x04299081
	b       .L802514E4
	li.l    $s0, 0x04299081
.L802514E0:
	lw      $s0, 0x002C($sp)
.L802514E4:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251310
	li      $a2, 0x0001
	b       .L802514FC
	nop
.L802514FC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80251510
player_80251510:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L80251544
	nop
	li.u    $s0, 0x04299081
	b       .L80251548
	li.l    $s0, 0x04299081
.L80251544:
	lw      $s0, 0x002C($sp)
.L80251548:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251444
	li      $a2, 0x0001
	b       .L80251560
	nop
.L80251560:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80251574
player_80251574:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L802515A8
	nop
	li.u    $s0, 0x042B9081
	b       .L802515AC
	li.l    $s0, 0x042B9081
.L802515A8:
	lw      $s0, 0x002C($sp)
.L802515AC:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251310
	li      $a2, 0x0001
	b       .L802515C4
	nop
.L802515C4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_802515D8
player_802515D8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L8025160C
	nop
	li.u    $s0, 0x042B9081
	b       .L80251610
	li.l    $s0, 0x042B9081
.L8025160C:
	lw      $s0, 0x002C($sp)
.L80251610:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251444
	li      $a2, 0x0001
	b       .L80251628
	nop
.L80251628:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_8025163C
player_8025163C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x002C($sp)
	li.u    $at, 0x04008081
	li.l    $at, 0x04008081
	bne     $t6, $at, .L802516A8
	nop
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L80251688
	nop
	li.u    $s0, 0x04289081
	b       .L80251690
	li.l    $s0, 0x04289081
.L80251688:
	li.u    $s0, 0x04008081
	li.l    $s0, 0x04008081
.L80251690:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251444
	li      $a2, 0x0001
	b       .L802516B8
	nop
.L802516A8:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_80251120
	li      $a2, 0x00010000
.L802516B8:
	lw      $t0, 0x0030($sp)
	bnez    $t0, .L802516CC
	nop
	jal     player_8025118C
	lw      $a0, 0x0028($sp)
.L802516CC:
	lw      $t1, 0x0030($sp)
	li      $at, -0x0001
	beq     $t1, $at, .L802516EC
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0030($sp)
	jal     player_80251120
	li      $a2, 0x00020000
.L802516EC:
	b       .L802516F4
	nop
.L802516F4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80251708
player_80251708:
	sw      $a1, 0x0004($sp)
	lwc1    $f4, 0x0004($sp)
	swc1    $f4, 0x0054($a0)
	lhu     $t6, 0x002E($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0054($a0)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0058($a0)
	lhu     $t9, 0x002E($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0054($a0)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x005C($a0)
	lwc1    $f6, 0x0058($a0)
	swc1    $f6, 0x0048($a0)
	lwc1    $f8, 0x005C($a0)
	swc1    $f8, 0x0050($a0)
	b       .L80251774
	nop
.L80251774:
	jr      $ra
	nop

.globl player_8025177C
player_8025177C:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0090($a0)
	li      $at, 0x0006
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0007
	bne     $t8, $at, .L802517A4
	nop
	li      $t9, 0x0013
	b       .L802517A8
	sw      $t9, 0x0004($sp)
.L802517A4:
	sw      $0, 0x0004($sp)
.L802517A8:
	lw      $t0, 0x0068($a0)
	beqz    $t0, L80251848
	nop
	lw      $t1, 0x0068($a0)
	lh      $a1, 0x0000($t1)
	slti    $at, $a1, 0x0038
	bnez    $at, .L802517F0
	nop
	addiu   $t2, $a1, -0x0073
	sltiu   $at, $t2, 0x0008
	beqz    $at, L80251848
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(player_80336438)
	addu    $at, $at, $t2
	lw      $t2, %lo(player_80336438)($at)
	jr      $t2
	nop
.L802517F0:
	addiu   $t3, $a1, -0x0013
	sltiu   $at, $t3, 0x0025
	beqz    $at, L80251848
	nop
	sll     $t3, $t3, 2
	lui     $at, %hi(player_80336458)
	addu    $at, $at, $t3
	lw      $t3, %lo(player_80336458)($at)
	jr      $t3
	nop
.globl L80251818
L80251818:
	li      $t4, 0x0015
	sw      $t4, 0x0004($sp)
	b       L80251848
	nop
.globl L80251828
L80251828:
	li      $t5, 0x0014
	sw      $t5, 0x0004($sp)
	b       L80251848
	nop
.globl L80251838
L80251838:
	li      $t6, 0x0013
	sw      $t6, 0x0004($sp)
	b       L80251848
	nop
.globl L80251848
L80251848:
	lw      $t7, 0x000C($a0)
	li.u    $at, 0x04008448
	li.l    $at, 0x04008448
	bne     $t7, $at, .L80251890
	nop
	lw      $t8, 0x0068($a0)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80251890
	nop
	lw      $t9, 0x0004($sp)
	bnez    $t9, .L80251890
	nop
	li      $t0, 0x0015
	sw      $t0, 0x0004($sp)
.L80251890:
	b       .L802518A0
	lw      $v0, 0x0004($sp)
	b       .L802518A0
	nop
.L802518A0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl player_802518A8
player_802518A8:
	addiu   $sp, $sp, -0x0010
	lw      $t6, 0x0090($a0)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0007
	sh      $t8, 0x000C($sp)
	sw      $0, 0x0008($sp)
	lw      $t9, 0x0068($a0)
	beqz    $t9, .L80251A30
	nop
	lw      $t0, 0x0068($a0)
	lh      $t1, 0x0000($t0)
	sw      $t1, 0x0004($sp)
	lui     $t2, %hi(stage_index)
	lh      $t2, %lo(stage_index)($t2)
	li      $at, 0x0016
	beq     $t2, $at, .L80251920
	nop
	lh      $t3, 0x0076($a0)
	lwc1    $f4, 0x0070($a0)
	addiu   $t4, $t3, -0x000A
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L80251920
	nop
	li      $t5, 0x00020000
	b       .L80251A30
	sw      $t5, 0x0008($sp)
.L80251920:
	lw      $t6, 0x0004($sp)
	slti    $at, $t6, 0x0021
	bnez    $at, .L80251948
	nop
	slti    $at, $t6, 0x0028
	beqz    $at, .L80251948
	nop
	li      $t7, 0x00070000
	b       .L80251A30
	sw      $t7, 0x0008($sp)
.L80251948:
	lw      $a1, 0x0004($sp)
	slti    $at, $a1, 0x0038
	bnez    $at, .L80251980
	nop
	addiu   $t8, $a1, -0x0073
	sltiu   $at, $t8, 0x0008
	beqz    $at, L802519A8
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(player_803364EC)
	addu    $at, $at, $t8
	lw      $t8, %lo(player_803364EC)($at)
	jr      $t8
	nop
.L80251980:
	addiu   $t9, $a1, -0x0013
	sltiu   $at, $t9, 0x0025
	beqz    $at, L802519A8
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(player_8033650C)
	addu    $at, $at, $t9
	lw      $t9, %lo(player_8033650C)($at)
	jr      $t9
	nop
.globl L802519A8
L802519A8:
	sh      $0, 0x000E($sp)
	b       .L80251A04
	nop
.globl L802519B4
L802519B4:
	li      $t0, 0x0001
	sh      $t0, 0x000E($sp)
	b       .L80251A04
	nop
.globl L802519C4
L802519C4:
	li      $t1, 0x0002
	sh      $t1, 0x000E($sp)
	b       .L80251A04
	nop
.globl L802519D4
L802519D4:
	li      $t2, 0x0003
	sh      $t2, 0x000E($sp)
	b       .L80251A04
	nop
.globl L802519E4
L802519E4:
	li      $t3, 0x0004
	sh      $t3, 0x000E($sp)
	b       .L80251A04
	nop
.globl L802519F4
L802519F4:
	li      $t4, 0x0005
	sh      $t4, 0x000E($sp)
	b       .L80251A04
	nop
.L80251A04:
	lh      $t5, 0x000C($sp)
	lh      $t7, 0x000E($sp)
	lui     $t9, %hi(player_8032DAA0)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 1
	addu    $t8, $t6, $t7
	addu    $t9, $t9, $t8
	lb      $t9, %lo(player_8032DAA0)($t9)
	sll     $t0, $t9, 16
	sw      $t0, 0x0008($sp)
.L80251A30:
	b       .L80251A40
	lw      $v0, 0x0008($sp)
	b       .L80251A40
	nop
.L80251A40:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl player_80251A48
player_80251A48:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0048($sp)
	lwc1    $f4, 0x0000($t6)
	swc1    $f4, 0x0020($sp)
	lw      $t7, 0x0048($sp)
	lwc1    $f6, 0x0004($t7)
	swc1    $f6, 0x0024($sp)
	lw      $t8, 0x0048($sp)
	lwc1    $f8, 0x0008($t8)
	swc1    $f8, 0x0028($sp)
	lwc1    $f10, 0x0050($sp)
	swc1    $f10, 0x0030($sp)
	lwc1    $f16, 0x004C($sp)
	swc1    $f16, 0x002C($sp)
	jal     map_80380E8C
	addiu   $a0, $sp, 0x0020
	beqz    $v0, .L80251AB8
	nop
	lh      $t9, 0x0036($sp)
	sll     $t0, $t9, 2
	addu    $t1, $sp, $t0
	lw      $t1, 0x0034($t1)
	sw      $t1, 0x001C($sp)
.L80251AB8:
	lwc1    $f18, 0x0020($sp)
	lw      $t2, 0x0048($sp)
	swc1    $f18, 0x0000($t2)
	lwc1    $f4, 0x0024($sp)
	lw      $t3, 0x0048($sp)
	swc1    $f4, 0x0004($t3)
	lwc1    $f6, 0x0028($sp)
	lw      $t4, 0x0048($sp)
	swc1    $f6, 0x0008($t4)
	b       .L80251AEC
	lw      $v0, 0x001C($sp)
	b       .L80251AEC
	nop
.L80251AEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl player_80251AFC
player_80251AFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x42A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	lw      $a3, 0x0028($sp)
	lwc1    $f12, 0x0000($t6)
	lw      $a2, 0x0008($t6)
	jal     map_80381264
	add.s   $f14, $f4, $f6
	b       .L80251B44
	nop
	b       .L80251B44
	nop
.L80251B44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl player_80251B54
player_80251B54:
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x002E($a0)
	sh      $t6, 0x0006($sp)
	beqz    $a1, .L80251B94
	nop
	lwc1    $f4, 0x0054($a0)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80251B94
	nop
	lh      $t7, 0x0006($sp)
	li      $at, 0x8000
	addu    $t8, $t7, $at
	sh      $t8, 0x0006($sp)
.L80251B94:
	lh      $t9, 0x0074($a0)
	lh      $t0, 0x0006($sp)
	subu    $t1, $t9, $t0
	sh      $t1, 0x0006($sp)
	lh      $t2, 0x0006($sp)
	li      $at, -0x4000
	slt     $v0, $at, $t2
	beqz    $v0, .L80251BBC
	nop
	slti    $v0, $t2, 0x4000
.L80251BBC:
	b       .L80251BCC
	nop
	b       .L80251BCC
	nop
.L80251BCC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl player_80251BD4
player_80251BD4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0006
	lw      $t7, 0x0090($t6)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0007
	bne     $t9, $at, .L80251C28
	nop
	lw      $t0, 0x0068($t6)
	lui     $at, %hi(player_803365A0)
	lwc1    $f6, %lo(player_803365A0)($at)
	lwc1    $f4, 0x0020($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80251C28
	nop
	b       .L80251CE8
	li      $v0, 0x0001
.L80251C28:
	jal     player_8025177C
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	li      $at, 0x0013
	beq     $s0, $at, .L80251C60
	nop
	li      $at, 0x0014
	beq     $s0, $at, .L80251C74
	nop
	li      $at, 0x0015
	beq     $s0, $at, .L80251C9C
	nop
	b       .L80251C88
	nop
.L80251C60:
	lui     $at, %hi(player_803365A4)
	lwc1    $f8, %lo(player_803365A4)($at)
	swc1    $f8, 0x0024($sp)
	b       .L80251CB0
	nop
.L80251C74:
	lui     $at, %hi(player_803365A8)
	lwc1    $f10, %lo(player_803365A8)($at)
	swc1    $f10, 0x0024($sp)
	b       .L80251CB0
	nop
.L80251C88:
	lui     $at, %hi(player_803365AC)
	lwc1    $f16, %lo(player_803365AC)($at)
	swc1    $f16, 0x0024($sp)
	b       .L80251CB0
	nop
.L80251C9C:
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0024($sp)
	b       .L80251CB0
	nop
.L80251CB0:
	lw      $t1, 0x0028($sp)
	lwc1    $f6, 0x0024($sp)
	move    $v0, $0
	lw      $t2, 0x0068($t1)
	lwc1    $f4, 0x0020($t2)
	c.le.s  $f4, $f6
	nop
	bc1f    .L80251CD8
	nop
	li      $v0, 0x0001
.L80251CD8:
	b       .L80251CE8
	nop
	b       .L80251CE8
	nop
.L80251CE8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80251CFC
player_80251CFC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0006
	lw      $t7, 0x0090($t6)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0007
	bne     $t9, $at, .L80251D50
	nop
	lw      $t0, 0x0068($t6)
	lui     $at, %hi(player_803365B0)
	lwc1    $f6, %lo(player_803365B0)($at)
	lwc1    $f4, 0x0020($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80251D50
	nop
	b       .L80251E10
	li      $v0, 0x0001
.L80251D50:
	jal     player_8025177C
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	li      $at, 0x0013
	beq     $s0, $at, .L80251D88
	nop
	li      $at, 0x0014
	beq     $s0, $at, .L80251D9C
	nop
	li      $at, 0x0015
	beq     $s0, $at, .L80251DC4
	nop
	b       .L80251DB0
	nop
.L80251D88:
	lui     $at, %hi(player_803365B4)
	lwc1    $f8, %lo(player_803365B4)($at)
	swc1    $f8, 0x0024($sp)
	b       .L80251DD8
	nop
.L80251D9C:
	lui     $at, %hi(player_803365B8)
	lwc1    $f10, %lo(player_803365B8)($at)
	swc1    $f10, 0x0024($sp)
	b       .L80251DD8
	nop
.L80251DB0:
	lui     $at, %hi(player_803365BC)
	lwc1    $f16, %lo(player_803365BC)($at)
	swc1    $f16, 0x0024($sp)
	b       .L80251DD8
	nop
.L80251DC4:
	lui     $at, %hi(player_803365C0)
	lwc1    $f18, %lo(player_803365C0)($at)
	swc1    $f18, 0x0024($sp)
	b       .L80251DD8
	nop
.L80251DD8:
	lw      $t1, 0x0028($sp)
	lwc1    $f6, 0x0024($sp)
	move    $v0, $0
	lw      $t2, 0x0068($t1)
	lwc1    $f4, 0x0020($t2)
	c.le.s  $f4, $f6
	nop
	bc1f    .L80251E00
	nop
	li      $v0, 0x0001
.L80251E00:
	b       .L80251E10
	nop
	b       .L80251E10
	nop
.L80251E10:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

player_80251E24:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0028($sp)
	lw      $a0, 0x0030($sp)
	jal     player_80251B54
	move    $a1, $0
	bnez    $v0, .L80251F00
	nop
	jal     player_8025177C
	lw      $a0, 0x0030($sp)
	move    $s0, $v0
	li      $at, 0x0013
	beq     $s0, $at, .L80251E84
	nop
	li      $at, 0x0014
	beq     $s0, $at, .L80251E98
	nop
	li      $at, 0x0015
	beq     $s0, $at, .L80251EC0
	nop
	b       .L80251EAC
	nop
.L80251E84:
	lui     $at, %hi(player_803365C4)
	lwc1    $f4, %lo(player_803365C4)($at)
	swc1    $f4, 0x002C($sp)
	b       .L80251ED4
	nop
.L80251E98:
	lui     $at, %hi(player_803365C8)
	lwc1    $f6, %lo(player_803365C8)($at)
	swc1    $f6, 0x002C($sp)
	b       .L80251ED4
	nop
.L80251EAC:
	lui     $at, %hi(player_803365CC)
	lwc1    $f8, %lo(player_803365CC)($at)
	swc1    $f8, 0x002C($sp)
	b       .L80251ED4
	nop
.L80251EC0:
	lui     $at, %hi(player_803365D0)
	lwc1    $f10, %lo(player_803365D0)($at)
	swc1    $f10, 0x002C($sp)
	b       .L80251ED4
	nop
.L80251ED4:
	lw      $t6, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	move    $t8, $0
	lw      $t7, 0x0068($t6)
	lwc1    $f16, 0x0020($t7)
	c.le.s  $f16, $f18
	nop
	bc1f    .L80251EFC
	nop
	li      $t8, 0x0001
.L80251EFC:
	sw      $t8, 0x0028($sp)
.L80251F00:
	b       .L80251F10
	lw      $v0, 0x0028($sp)
	b       .L80251F10
	nop
.L80251F10:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl player_80251F24
player_80251F24:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x0028($sp)
	lh      $t8, 0x002E($sp)
	lui     $at, %hi(math_sin)
	lh      $t7, 0x002E($t6)
	lwc1    $f6, 0x0030($sp)
	addu    $t9, $t7, $t8
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lw      $t3, 0x0028($sp)
	lh      $t5, 0x002E($sp)
	lui     $at, %hi(math_cos)
	lh      $t4, 0x002E($t3)
	lwc1    $f16, 0x0030($sp)
	addu    $t6, $t4, $t5
	andi    $t7, $t6, 0xFFFF
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x003C($t0)
	lwc1    $f16, 0x0044($t0)
	li      $at, 0x42C80000
	add.s   $f12, $f4, $f6
	mtc1    $at, $f10
	lwc1    $f8, 0x0040($t0)
	add.s   $f4, $f16, $f18
	addiu   $a3, $sp, 0x0024
	add.s   $f14, $f8, $f10
	mfc1    $a2, $f4
	jal     map_80381900
	nop
	swc1    $f0, 0x0020($sp)
	b       .L80251FF0
	lwc1    $f0, 0x0020($sp)
	b       .L80251FF0
	nop
.L80251FF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80252000
player_80252000:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	lw      $t6, 0x0038($sp)
	lh      $t8, 0x003E($sp)
	lui     $at, %hi(math_sin)
	lh      $t7, 0x002E($t6)
	addu    $t9, $t7, $t8
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lw      $t3, 0x0038($sp)
	lh      $t5, 0x003E($sp)
	lui     $at, %hi(math_cos)
	lh      $t4, 0x002E($t3)
	addu    $t6, $t4, $t5
	andi    $t7, $t6, 0xFFFF
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x40A00000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x003C($t0)
	lwc1    $f16, 0x0044($t0)
	li      $at, 0x42C80000
	add.s   $f12, $f4, $f6
	mtc1    $at, $f10
	lwc1    $f8, 0x0040($t0)
	add.s   $f4, $f16, $f18
	addiu   $a3, $sp, 0x0034
	add.s   $f14, $f8, $f10
	mfc1    $a2, $f4
	jal     map_80381900
	nop
	swc1    $f0, 0x0030($sp)
	lw      $t1, 0x0038($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f4, 0x0018($sp)
	lwc1    $f6, 0x003C($t1)
	lwc1    $f18, 0x0044($t1)
	li      $at, 0x42C80000
	sub.s   $f12, $f6, $f8
	mtc1    $at, $f16
	lwc1    $f10, 0x0040($t1)
	sub.s   $f6, $f18, $f4
	addiu   $a3, $sp, 0x0034
	add.s   $f14, $f10, $f16
	mfc1    $a2, $f6
	jal     map_80381900
	nop
	swc1    $f0, 0x002C($sp)
	lw      $t2, 0x0038($sp)
	lwc1    $f8, 0x0030($sp)
	lwc1    $f10, 0x0040($t2)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0028($sp)
	lw      $t3, 0x0038($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f18, 0x0040($t3)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0024($sp)
	lwc1    $f8, 0x0028($sp)
	lwc1    $f16, 0x0024($sp)
	mul.s   $f10, $f8, $f8
	nop
	mul.s   $f18, $f16, $f16
	c.lt.s  $f10, $f18
	nop
	bc1f    .L8025216C
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f12
	jal     atan2
	lwc1    $f14, 0x0028($sp)
	b       .L80252180
	sh      $v0, 0x0022($sp)
.L8025216C:
	li      $at, 0x40A00000
	mtc1    $at, $f12
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x0022($sp)
.L80252180:
	b       .L80252190
	lh      $v0, 0x0022($sp)
	b       .L80252190
	nop
.L80252190:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl player_802521A0
player_802521A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0090($t8)
	lw      $t0, 0x0024($t9)
	lbu     $t1, 0x0000($t0)
	sw      $t1, 0x0018($sp)
	lw      $t2, 0x001C($sp)
	li.u    $at, 0x0C000227
	li.l    $at, 0x0C000227
	bne     $t2, $at, .L80252220
	nop
	jal     aud_mute_end
	li      $a0, 0x0002
	lui     $t3, %hi(_camera_bss+0x328)
	lh      $t3, %lo(_camera_bss+0x328)($t3)
	li      $at, -0x2001
	and     $t4, $t3, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t4, %lo(_camera_bss+0x328)($at)
	lw      $t5, 0x0020($sp)
	li      $a1, -0x0001
	li      $a2, 0x0001
	lw      $t6, 0x0090($t5)
	jal     camera_80286188
	lw      $a0, 0x0024($t6)
	b       .L8025223C
	nop
.L80252220:
	lw      $t7, 0x001C($sp)
	li.u    $at, 0x0C000203
	li.l    $at, 0x0C000203
	bne     $t7, $at, .L8025223C
	nop
	jal     aud_mute_end
	li      $a0, 0x0002
.L8025223C:
	lw      $t8, 0x001C($sp)
	andi    $t9, $t8, 0x6000
	bnez    $t9, .L80252284
	nop
	lw      $t0, 0x0018($sp)
	li      $at, 0x0003
	beq     $t0, $at, .L80252268
	nop
	li      $at, 0x0008
	bne     $t0, $at, .L80252284
	nop
.L80252268:
	lw      $t1, 0x0020($sp)
	li      $a2, 0x0001
	lw      $t2, 0x0090($t1)
	lw      $t3, 0x0024($t2)
	move    $a0, $t3
	jal     camera_80286188
	lbu     $a1, 0x0001($t3)
.L80252284:
	b       .L8025228C
	nop
.L8025228C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

player_8025229C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x002E($t6)
	lw      $t8, 0x0088($t6)
	sw      $t7, 0x0110($t8)
	lw      $t9, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8025239C
	nop
	lw      $t0, 0x0028($sp)
	li      $at, 0x8000
	lh      $t1, 0x0074($t0)
	addu    $t2, $t1, $at
	sh      $t2, 0x0026($sp)
	lw      $t3, 0x0028($sp)
	lh      $t5, 0x0026($sp)
	lh      $t4, 0x002E($t3)
	subu    $t6, $t4, $t5
	sh      $t6, 0x0024($sp)
	lhu     $t7, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lui     $at, %hi(math_sin)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f8, %lo(math_sin)($at)
	lwc1    $f10, 0x0054($t0)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0020($sp)
	lhu     $t1, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lui     $at, %hi(math_cos)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f18, %lo(math_cos)($at)
	lwc1    $f4, 0x0054($t4)
	li      $at, 0x3F400000
	mtc1    $at, $f8
	mul.s   $f6, $f18, $f4
	nop
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f4, 0x001C($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f6
	lw      $t5, 0x0028($sp)
	swc1    $f0, 0x0054($t5)
	lwc1    $f12, 0x001C($sp)
	jal     atan2
	lwc1    $f14, 0x0020($sp)
	lh      $t6, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	addu    $t7, $v0, $t6
	sh      $t7, 0x002E($t8)
.L8025239C:
	li.u    $a1, 0x03000885
	li.l    $a1, 0x03000885
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802523B8
	nop
.L802523B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

player_802523C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     pl_physics_80255080
	nop
	lw      $t6, 0x0018($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f4, 0x0054($t6)
	add.s   $f16, $f0, $f10
	mul.s   $f8, $f4, $f6
	add.s   $f18, $f16, $f8
	swc1    $f18, 0x004C($t6)
	lw      $t7, 0x0018($sp)
	lbu     $t8, 0x00B4($t7)
	bnez    $t8, .L80252430
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80252448
	nop
.L80252430:
	lw      $t9, 0x0018($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	lwc1    $f10, 0x004C($t9)
	mul.s   $f8, $f10, $f16
	swc1    $f8, 0x004C($t9)
.L80252448:
	b       .L80252450
	nop
.L80252450:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

player_80252460:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lbu     $t7, 0x00B4($t6)
	bnez    $t7, .L802524A4
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    .L802524D4
	nop
.L802524A4:
	lw      $t8, 0x002C($sp)
	li.u    $at, 0x03000881
	li.l    $at, 0x03000881
	beq     $t8, $at, .L802524C8
	nop
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	bne     $t8, $at, .L802524D4
	nop
.L802524C8:
	li.u    $t9, 0x03000880
	li.l    $t9, 0x03000880
	sw      $t9, 0x002C($sp)
.L802524D4:
	lw      $s0, 0x002C($sp)
	li.u    $at, 0x010208B5
	li.l    $at, 0x010208B5
	sltu    $at, $s0, $at
	bnez    $at, .L802525A4
	nop
	li.u    $at, 0x018008AD
	li.l    $at, 0x018008AD
	sltu    $at, $s0, $at
	bnez    $at, .L8025256C
	nop
	li.u    $at, 0x0281089B
	li.l    $at, 0x0281089B
	sltu    $at, $s0, $at
	bnez    $at, .L80252544
	nop
	li.u    $at, 0xFCFFF780
	li.l    $at, 0xFCFFF780
	addu    $t0, $s0, $at
	sltiu   $at, $t0, 0x0021
	beqz    $at, L802529A4
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(player_803365D4)
	addu    $at, $at, $t0
	lw      $t0, %lo(player_803365D4)($at)
	jr      $t0
	nop
.L80252544:
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	beq     $s0, $at, .L80252848
	nop
	li.u    $at, 0x0281089A
	li.l    $at, 0x0281089A
	beq     $s0, $at, .L80252708
	nop
	b       L802529A4
	nop
.L8025256C:
	li.u    $at, 0x010208B7
	li.l    $at, 0x010208B7
	beq     $s0, $at, .L80252818
	nop
	li.u    $at, 0x018008AA
	li.l    $at, 0x018008AA
	beq     $s0, $at, .L80252944
	nop
	li.u    $at, 0x018008AC
	li.l    $at, 0x018008AC
	beq     $s0, $at, .L8025298C
	nop
	b       L802529A4
	nop
.L802525A4:
	li.u    $at, 0x01000882
	li.l    $at, 0x01000882
	beq     $s0, $at, .L80252674
	nop
	li.u    $at, 0x01000883
	li.l    $at, 0x01000883
	beq     $s0, $at, .L8025263C
	nop
	li.u    $at, 0x01000887
	li.l    $at, 0x01000887
	beq     $s0, $at, .L802527B0
	nop
	li.u    $at, 0x01000889
	li.l    $at, 0x01000889
	beq     $s0, $at, .L802526BC
	nop
	li.u    $at, 0x010008A3
	li.l    $at, 0x010008A3
	beq     $s0, $at, .L802526BC
	nop
	li.u    $at, 0x010208B4
	li.l    $at, 0x010208B4
	beq     $s0, $at, .L802526E0
	nop
	b       L802529A4
	nop
.globl L8025260C
L8025260C:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42500000
	jal     player_802523C8
	li      $a2, 0x3E800000
	lw      $t1, 0x0028($sp)
	lui     $at, %hi(player_80336658)
	lwc1    $f10, %lo(player_80336658)($at)
	lwc1    $f8, 0x0054($t1)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($t1)
	b       L802529A4
	nop
.L8025263C:
	lw      $t3, 0x0028($sp)
	li      $t2, -0x0001
	lw      $t4, 0x0088($t3)
	sh      $t2, 0x0038($t4)
	li      $at, 0xC1800000
	mtc1    $at, $f18
	lw      $t5, 0x0028($sp)
	swc1    $f18, 0x0054($t5)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42780000
	jal     player_802523C8
	li      $a2, 0x0000
	b       L802529A4
	nop
.L80252674:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x428A0000
	jal     player_802523C8
	li      $a2, 0x0000
	lw      $t7, 0x0028($sp)
	lui     $at, %hi(player_8033665C)
	lwc1    $f6, %lo(player_8033665C)($at)
	lwc1    $f4, 0x0054($t7)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t7)
	b       L802529A4
	nop
.globl L802526A4
L802526A4:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42A40000
	jal     player_802523C8
	li      $a2, 0x0000
	b       L802529A4
	nop
.L802526BC:
	lw      $t6, 0x0030($sp)
	bnez    $t6, .L802526D8
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42280000
	jal     player_802523C8
	li      $a2, 0x0000
.L802526D8:
	b       L802529A4
	nop
.L802526E0:
	li      $at, 0x41FC0000
	mtc1    $at, $f10
	lw      $t8, 0x0028($sp)
	swc1    $f10, 0x004C($t8)
	li      $at, 0x41000000
	mtc1    $at, $f16
	lw      $t9, 0x0028($sp)
	swc1    $f16, 0x0054($t9)
	b       L802529A4
	nop
.L80252708:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42280000
	jal     player_802523C8
	li      $a2, 0x3E800000
	b       L802529A4
	nop
.globl L80252720
L80252720:
	lw      $t1, 0x0028($sp)
	li      $t0, -0x0001
	lw      $t3, 0x0088($t1)
	sh      $t0, 0x0038($t3)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42280000
	jal     player_802523C8
	li      $a2, 0x3E800000
	lw      $t2, 0x0028($sp)
	lui     $at, %hi(player_80336660)
	lwc1    $f4, %lo(player_80336660)($at)
	lwc1    $f18, 0x0054($t2)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0054($t2)
	b       L802529A4
	nop
.globl L80252760
L80252760:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42780000
	jal     player_802523C8
	li      $a2, 0x0000
	lw      $t4, 0x0028($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t4)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802527A0
	nop
	li      $at, 0x41C00000
	mtc1    $at, $f16
	lw      $t5, 0x0028($sp)
	swc1    $f16, 0x0054($t5)
.L802527A0:
	lw      $t7, 0x0028($sp)
	sb      $0, 0x002A($t7)
	b       L802529A4
	nop
.L802527B0:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42780000
	jal     player_802523C8
	li      $a2, 0x0000
	li      $at, 0x41000000
	mtc1    $at, $f18
	lw      $t6, 0x0028($sp)
	swc1    $f18, 0x0054($t6)
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x0024($t8)
	sh      $t9, 0x002E($t8)
	b       L802529A4
	nop
.globl L802527E4
L802527E4:
	lw      $t0, 0x0028($sp)
	li      $t1, -0x0001
	lw      $t3, 0x0088($t0)
	sh      $t1, 0x0038($t3)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42280000
	jal     player_802523C8
	li      $a2, 0x3E800000
	lw      $t4, 0x0028($sp)
	li      $t2, -0x2000
	sh      $t2, 0x002C($t4)
	b       L802529A4
	nop
.L80252818:
	li      $at, 0x42A80000
	mtc1    $at, $f4
	lw      $t5, 0x0028($sp)
	swc1    $f4, 0x004C($t5)
	lw      $t7, 0x0030($sp)
	bnez    $t7, .L80252840
	nop
	mtc1    $0, $f6
	lw      $t6, 0x0028($sp)
	swc1    $f6, 0x0054($t6)
.L80252840:
	b       L802529A4
	nop
.L80252848:
	lw      $t9, 0x0028($sp)
	li      $at, 0x41700000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t9)
	li      $at, 0x42400000
	mtc1    $at, $f18
	add.s   $f16, $f8, $f10
	c.lt.s  $f18, $f16
	swc1    $f16, 0x0024($sp)
	bc1f    .L80252884
	nop
	li      $at, 0x42400000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
.L80252884:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	lw      $a1, 0x0024($sp)
	b       L802529A4
	nop
.globl L80252898
L80252898:
	lw      $t0, 0x0028($sp)
	li      $t8, -0x0001
	lw      $t1, 0x0088($t0)
	sh      $t8, 0x0038($t1)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x41F00000
	jal     player_802523C8
	li      $a2, 0x0000
	lw      $t3, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t3)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802528E4
	nop
	lw      $t2, 0x0088($t3)
	b       .L802528F4
	sw      $0, 0x0110($t2)
.L802528E4:
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0001
	lw      $t7, 0x0088($t5)
	sw      $t4, 0x0110($t7)
.L802528F4:
	lw      $t6, 0x0028($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t6)
	li      $at, 0x42400000
	mtc1    $at, $f6
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0054($t6)
	lw      $t9, 0x0028($sp)
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8025293C
	nop
	li      $at, 0x42400000
	mtc1    $at, $f8
	lw      $t0, 0x0028($sp)
	swc1    $f8, 0x0054($t0)
.L8025293C:
	b       L802529A4
	nop
.L80252944:
	li      $at, 0x41400000
	mtc1    $at, $f10
	lw      $t8, 0x0028($sp)
	swc1    $f10, 0x004C($t8)
	lw      $t1, 0x0028($sp)
	li      $at, 0x42000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t1)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80252984
	nop
	li      $at, 0x42000000
	mtc1    $at, $f4
	lw      $t3, 0x0028($sp)
	swc1    $f4, 0x0054($t3)
.L80252984:
	b       L802529A4
	nop
.L8025298C:
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lw      $t2, 0x0028($sp)
	swc1    $f6, 0x004C($t2)
	b       L802529A4
	nop
.globl L802529A4
L802529A4:
	lw      $t5, 0x0028($sp)
	lwc1    $f8, 0x0040($t5)
	swc1    $f8, 0x00BC($t5)
	lw      $t4, 0x0028($sp)
	lw      $t7, 0x0004($t4)
	ori     $t6, $t7, 0x0100
	sw      $t6, 0x0004($t4)
	b       .L802529D0
	lw      $v0, 0x002C($sp)
	b       .L802529D0
	nop
.L802529D0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

player_802529E4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	jal     player_8025177C
	lw      $a0, 0x0030($sp)
	sh      $v0, 0x002E($sp)
	lw      $t6, 0x0030($sp)
	lwc1    $f4, 0x0054($t6)
	swc1    $f4, 0x0028($sp)
	lw      $t7, 0x0030($sp)
	li      $at, 0x41000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0020($t7)
	c.le.s  $f6, $f8
	nop
	bc1f    .L80252A3C
	nop
	b       .L80252A4C
	swc1    $f6, 0x0024($sp)
.L80252A3C:
	li      $at, 0x41000000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0024($sp)
.L80252A4C:
	lw      $s0, 0x0034($sp)
	li      $at, 0x0050
	beq     $s0, $at, .L80252B40
	nop
	li      $at, 0x0051
	beq     $s0, $at, .L80252B78
	nop
	li      $at, 0x0442
	beq     $s0, $at, .L80252AE8
	nop
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	beq     $s0, $at, .L80252A8C
	nop
	b       .L80252BB0
	nop
.L80252A8C:
	lh      $t8, 0x002E($sp)
	li      $at, 0x0013
	beq     $t8, $at, .L80252AD4
	nop
	mtc1    $0, $f16
	lwc1    $f18, 0x0028($sp)
	c.le.s  $f16, $f18
	nop
	bc1f    .L80252AD4
	nop
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80252AD4
	nop
	lwc1    $f8, 0x0024($sp)
	lw      $t9, 0x0030($sp)
	swc1    $f8, 0x0054($t9)
.L80252AD4:
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0088($t0)
	sw      $0, 0x0110($t1)
	b       .L80252BB0
	nop
.L80252AE8:
	mtc1    $0, $f6
	lwc1    $f10, 0x0028($sp)
	c.le.s  $f6, $f10
	nop
	bc1f    .L80252B38
	nop
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	div.s   $f4, $f16, $f18
	c.lt.s  $f10, $f4
	nop
	bc1f    .L80252B38
	nop
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f8, 0x0024($sp)
	lw      $t2, 0x0030($sp)
	div.s   $f16, $f8, $f6
	swc1    $f16, 0x0054($t2)
.L80252B38:
	b       .L80252BB0
	nop
.L80252B40:
	lw      $a0, 0x0030($sp)
	jal     player_80251B54
	move    $a1, $0
	beqz    $v0, .L80252B64
	nop
	li.u    $t3, 0x00840452
	li.l    $t3, 0x00840452
	b       .L80252B70
	sw      $t3, 0x0034($sp)
.L80252B64:
	li.u    $t4, 0x008C0453
	li.l    $t4, 0x008C0453
	sw      $t4, 0x0034($sp)
.L80252B70:
	b       .L80252BB0
	nop
.L80252B78:
	lw      $a0, 0x0030($sp)
	jal     player_80251B54
	move    $a1, $0
	beqz    $v0, .L80252B9C
	nop
	li.u    $t5, 0x00840454
	li.l    $t5, 0x00840454
	b       .L80252BA8
	sw      $t5, 0x0034($sp)
.L80252B9C:
	li.u    $t6, 0x008C0455
	li.l    $t6, 0x008C0455
	sw      $t6, 0x0034($sp)
.L80252BA8:
	b       .L80252BB0
	nop
.L80252BB0:
	b       .L80252BC0
	lw      $v0, 0x0034($sp)
	b       .L80252BC0
	nop
.L80252BC0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

player_80252BD4:
	sw      $a2, 0x0008($sp)
	li      $at, 0x44F8
	beq     $a1, $at, .L80252BF0
	nop
	li      $at, 0x44F9
	bne     $a1, $at, .L80252C00
	nop
.L80252BF0:
	li      $at, 0x42000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x004C($a0)
.L80252C00:
	b       .L80252C10
	move    $v0, $a1
	b       .L80252C10
	nop
.L80252C10:
	jr      $ra
	nop

player_80252C18:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $s0, 0x002C($sp)
	li      $at, 0x1904
	beq     $s0, $at, .L80252C90
	nop
	li      $at, 0x1923
	beq     $s0, $at, .L80252C78
	nop
	li      $at, 0x1924
	beq     $s0, $at, .L80252CA4
	nop
	li      $at, 0x192B
	beq     $s0, $at, .L80252CB8
	nop
	li      $at, 0x192C
	beq     $s0, $at, .L80252CB8
	nop
	b       .L80252CD0
	nop
.L80252C78:
	li      $at, 0x42500000
	mtc1    $at, $f4
	lw      $t6, 0x0028($sp)
	swc1    $f4, 0x004C($t6)
	b       .L80252CD0
	nop
.L80252C90:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       .L80252CD0
	nop
.L80252CA4:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x40000000
	b       .L80252CD0
	nop
.L80252CB8:
	li      $at, 0x42800000
	mtc1    $at, $f6
	lw      $t7, 0x0028($sp)
	swc1    $f6, 0x004C($t7)
	b       .L80252CD0
	nop
.L80252CD0:
	b       .L80252CE0
	lw      $v0, 0x002C($sp)
	b       .L80252CE0
	nop
.L80252CE0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80252CF4
player_80252CF4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $s0, 0x002C($sp)
	li      $at, 0x0040
	andi    $t6, $s0, 0x01C0
	move    $s0, $t6
	beq     $s0, $at, .L80252D50
	nop
	li      $at, 0x0080
	beq     $s0, $at, .L80252D6C
	nop
	li      $at, 0x00C0
	beq     $s0, $at, .L80252D88
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L80252DA4
	nop
	b       .L80252DC0
	nop
.L80252D50:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_802529E4
	lw      $a2, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	b       .L80252DC0
	nop
.L80252D6C:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_80252460
	lw      $a2, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	b       .L80252DC0
	nop
.L80252D88:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_80252BD4
	lw      $a2, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	b       .L80252DC0
	nop
.L80252DA4:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_80252C18
	lw      $a2, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	b       .L80252DC0
	nop
.L80252DC0:
	lw      $t7, 0x0028($sp)
	li.u    $at, 0xFFFCFFFF
	li.l    $at, 0xFFFCFFFF
	lw      $t8, 0x0004($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t7)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x000C($t0)
	andi    $t2, $t1, 0x0800
	bnez    $t2, .L80252E04
	nop
	lw      $t3, 0x0028($sp)
	li.u    $at, 0xFFFBFFFF
	li.l    $at, 0xFFFBFFFF
	lw      $t4, 0x0004($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x0004($t3)
.L80252E04:
	lw      $t6, 0x0028($sp)
	lw      $t8, 0x000C($t6)
	sw      $t8, 0x0010($t6)
	lw      $t9, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	sw      $t9, 0x000C($t7)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0028($sp)
	sw      $t0, 0x001C($t1)
	lw      $t2, 0x0028($sp)
	sh      $0, 0x0018($t2)
	lw      $t4, 0x0028($sp)
	sh      $0, 0x001A($t4)
	b       .L80252E48
	li      $v0, 0x0001
	b       .L80252E48
	nop
.L80252E48:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80252E5C
player_80252E5C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x41300000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80252ED4
	nop
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x007C($t7)
	bnez    $t8, .L80252EBC
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0476
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025308C
	nop
	b       .L80252ED4
	nop
.L80252EBC:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0477
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025308C
	nop
.L80252ED4:
	jal     player_80251E24
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80252EF4
	nop
	jal     player_8025229C
	lw      $a0, 0x0028($sp)
	b       .L80253074
	nop
.L80252EF4:
	lw      $t9, 0x0028($sp)
	lbu     $t0, 0x002B($t9)
	beqz    $t0, .L80252F10
	nop
	lbu     $t1, 0x00B4($t9)
	beqz    $t1, .L80252F2C
	nop
.L80252F10:
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253074
	nop
.L80252F2C:
	lw      $t2, 0x0028($sp)
	li.u    $at, 0x04000470
	li.l    $at, 0x04000470
	lw      $s0, 0x0010($t2)
	beq     $s0, $at, .L80252F7C
	nop
	li.u    $at, 0x04000471
	li.l    $at, 0x04000471
	beq     $s0, $at, .L80252F98
	nop
	li.u    $at, 0x04000472
	li.l    $at, 0x04000472
	beq     $s0, $at, .L80252FD0
	nop
	li.u    $at, 0x0C000233
	li.l    $at, 0x0C000233
	beq     $s0, $at, .L80252FB4
	nop
	b       .L80253058
	nop
.L80252F7C:
	li.u    $a1, 0x03000881
	li.l    $a1, 0x03000881
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253074
	nop
.L80252F98:
	li.u    $a1, 0x03000881
	li.l    $a1, 0x03000881
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253074
	nop
.L80252FB4:
	li.u    $a1, 0x03000881
	li.l    $a1, 0x03000881
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253074
	nop
.L80252FD0:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0004($t3)
	andi    $t5, $t4, 0x0008
	beqz    $t5, .L80253000
	nop
	li.u    $a1, 0x03000894
	li.l    $a1, 0x03000894
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253050
	nop
.L80253000:
	lw      $t6, 0x0028($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t6)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8025303C
	nop
	li.u    $a1, 0x01000882
	li.l    $a1, 0x01000882
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253050
	nop
.L8025303C:
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80253050:
	b       .L80253074
	nop
.L80253058:
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253074
	nop
.L80253074:
	lw      $t7, 0x0028($sp)
	sb      $0, 0x002B($t7)
	b       .L8025308C
	li      $v0, 0x0001
	b       .L8025308C
	nop
.L8025308C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_802530A0
player_802530A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	li      $at, 0x41300000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t8)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80253128
	nop
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x007C($t9)
	bnez    $t0, .L80253110
	nop
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0476
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253168
	nop
	b       .L80253128
	nop
.L80253110:
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0477
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253168
	nop
.L80253128:
	jal     player_80251E24
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L80253148
	nop
	jal     player_8025229C
	lw      $a0, 0x0020($sp)
	b       .L80253158
	nop
.L80253148:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     player_80252CF4
	lw      $a2, 0x0028($sp)
.L80253158:
	b       .L80253168
	li      $v0, 0x0001
	b       .L80253168
	nop
.L80253168:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl player_80253178
player_80253178:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     collision_8024C894
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80252CF4
	lw      $a2, 0x0020($sp)
	b       .L802531B4
	nop
	b       .L802531B4
	nop
.L802531B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_802531C4
player_802531C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lh      $t6, 0x0026($sp)
	lw      $t7, 0x0018($sp)
	sb      $t6, 0x00B2($t7)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80252CF4
	lw      $a2, 0x0020($sp)
	b       .L80253208
	nop
	b       .L80253208
	nop
.L80253208:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80253218
player_80253218:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L80253254
	nop
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802532F0
	nop
.L80253254:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80253284
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802532F0
	nop
.L80253284:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	beqz    $t4, .L802532B4
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802532F0
	nop
.L802532B4:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, .L802532E0
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L802532F0
	nop
.L802532E0:
	b       .L802532F0
	move    $v0, $0
	b       .L802532F0
	nop
.L802532F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80253300
player_80253300:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L8025333C
	nop
	li.u    $a1, 0x030008A0
	li.l    $a1, 0x030008A0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802533D4
	nop
.L8025333C:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L8025336C
	nop
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802533D4
	nop
.L8025336C:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	beqz    $t4, .L80253398
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0442
	jal     player_80252CF4
	move    $a2, $0
	b       .L802533D4
	nop
.L80253398:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, .L802533C4
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0051
	jal     player_80252CF4
	move    $a2, $0
	b       .L802533D4
	nop
.L802533C4:
	b       .L802533D4
	move    $v0, $0
	b       .L802533D4
	nop
.L802533D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_802533E4
player_802533E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $a2, 0x0001
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	move    $a0, $t8
	jal     camera_80286188
	lbu     $a1, 0x0001($t8)
	lw      $a0, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0032
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x007C($t9)
	bnez    $t0, .L80253458
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253478
	nop
	b       .L80253470
	nop
.L80253458:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0442
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253478
	nop
.L80253470:
	b       .L80253478
	nop
.L80253478:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80253488
player_80253488:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t6)
	lw      $t7, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x004C($t7)
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x004C($t7)
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x0076($t8)
	addiu   $t0, $t9, -0x0064
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0040($t8)
	lw      $t1, 0x0018($sp)
	sh      $0, 0x0030($t1)
	lw      $a0, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0032
	lw      $t2, 0x0018($sp)
	li      $at, 0x00080000
	lw      $t3, 0x000C($t2)
	and     $t4, $t3, $at
	bnez    $t4, .L80253520
	nop
	lw      $t5, 0x0018($sp)
	sh      $0, 0x002C($t5)
.L80253520:
	lw      $t6, 0x0018($sp)
	li      $at, 0x0008
	lw      $t7, 0x0090($t6)
	lw      $t9, 0x0024($t7)
	lbu     $t0, 0x0000($t9)
	beq     $t0, $at, .L80253554
	nop
	lw      $t8, 0x0018($sp)
	li      $a1, 0x0008
	li      $a2, 0x0001
	lw      $t1, 0x0090($t8)
	jal     camera_80286188
	lw      $a0, 0x0024($t1)
.L80253554:
	li.u    $a1, 0x300022E2
	li.l    $a1, 0x300022E2
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80253578
	nop
	b       .L80253578
	nop
.L80253578:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

player_80253588:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00FF
	lbu     $t7, 0x00B4($t6)
	beq     $t7, $at, .L80253708
	nop
	lw      $t8, 0x0018($sp)
	lbu     $t9, 0x00B4($t8)
	bnez    $t9, .L802535DC
	nop
	lw      $t0, 0x0018($sp)
	li      $a1, 0x3F800000
	li      $a2, 0x3F800000
	lw      $a0, 0x0088($t0)
	li      $a3, 0x3F800000
	jal     vecf_set
	addiu   $a0, $a0, 0x002C
	b       .L80253708
	nop
.L802535DC:
	lw      $t1, 0x0018($sp)
	lbu     $t2, 0x00B4($t1)
	slti    $at, $t2, 0x0011
	beqz    $at, .L802536D4
	nop
	lw      $t3, 0x0018($sp)
	lbu     $t4, 0x00B4($t3)
	addiu   $t5, $t4, -0x0001
	sb      $t5, 0x00B4($t3)
	lw      $t6, 0x0018($sp)
	lui     $t9, %hi(player_8032DACC+1*15)
	lbu     $t7, 0x00B4($t6)
	subu    $t8, $0, $t7
	addu    $t9, $t9, $t8
	lbu     $t9, %lo(player_8032DACC+1*15)($t9)
	mtc1    $t9, $f4
	bgez    $t9, .L80253634
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L80253634:
	lui     $at, %hi(player_80336664)
	lwc1    $f10, %lo(player_80336664)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	mul.s   $f16, $f6, $f10
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t0, 0x0088($t6)
	div.s   $f4, $f16, $f18
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x0030($t0)
	lw      $t1, 0x0018($sp)
	lui     $t5, %hi(player_8032DACC+1*15)
	lbu     $t2, 0x00B4($t1)
	subu    $t4, $0, $t2
	addu    $t5, $t5, $t4
	lbu     $t5, %lo(player_8032DACC+1*15)($t5)
	mtc1    $t5, $f10
	bgez    $t5, .L80253694
	cvt.s.w $f16, $f10
	li      $at, 0x4F800000
	mtc1    $at, $f18
	nop
	add.s   $f16, $f16, $f18
.L80253694:
	lui     $at, %hi(player_80336668)
	lwc1    $f8, %lo(player_80336668)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	mul.s   $f4, $f16, $f8
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t3, 0x0088($t1)
	div.s   $f10, $f4, $f6
	add.s   $f16, $f10, $f18
	swc1    $f16, 0x002C($t3)
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0088($t7)
	lwc1    $f8, 0x002C($t8)
	b       .L80253708
	swc1    $f8, 0x0034($t8)
.L802536D4:
	lw      $t9, 0x0018($sp)
	lbu     $t6, 0x00B4($t9)
	addiu   $t0, $t6, -0x0001
	sb      $t0, 0x00B4($t9)
	lw      $t2, 0x0018($sp)
	li.u    $a1, 0x3FB33333
	li.l    $a1, 0x3FB33333
	lw      $a0, 0x0088($t2)
	li.u    $a2, 0x3ECCCCCD
	li.l    $a2, 0x3ECCCCCD
	addu    $a3, $a1, $0
	jal     vecf_set
	addiu   $a0, $a0, 0x002C
.L80253708:
	b       .L80253710
	nop
.L80253710:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

player_80253720:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(debug_mem)
	lb      $t6, %lo(debug_mem)($t6)
	beqz    $t6, .L8025381C
	nop
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0068($t7)
	lwc1    $f4, 0x001C($t8)
	lwc1    $f8, 0x0024($t8)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	lw      $t0, 0x0068($t9)
	lwc1    $f16, 0x0020($t0)
	swc1    $f16, 0x0028($sp)
	lwc1    $f12, 0x0028($sp)
	jal     atan2
	lwc1    $f14, 0x002C($sp)
	sll     $s0, $v0, 16
	sra     $t1, $s0, 16
	move    $s0, $t1
	mtc1    $s0, $f18
	li      $at, 0x43340000
	mtc1    $at, $f8
	cvt.s.w $f4, $f18
	li      $at, 0x47000000
	mtc1    $at, $f10
	la.u    $a2, str_player_ang
	la.l    $a2, str_player_ang
	li      $a0, 0x00D2
	mul.s   $f6, $f4, $f8
	li      $a1, 0x0058
	div.s   $f16, $f6, $f10
	trunc.w.s $f18, $f16
	mfc1    $a3, $f18
	jal     dprintf
	nop
	lw      $t3, 0x0030($sp)
	la.u    $a2, str_player_spd
	la.l    $a2, str_player_spd
	lwc1    $f4, 0x0054($t3)
	li      $a0, 0x00D2
	li      $a1, 0x0048
	trunc.w.s $f8, $f4
	mfc1    $a3, $f8
	jal     dprintf
	nop
	lw      $t5, 0x0030($sp)
	la.u    $a2, str_player_sta
	la.l    $a2, str_player_sta
	lw      $a3, 0x000C($t5)
	li      $a0, 0x00D2
	li      $a1, 0x0038
	andi    $t6, $a3, 0x01FF
	jal     dprintf
	move    $a3, $t6
.L8025381C:
	b       .L80253824
	nop
.L80253824:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

player_80253838:
	lw      $t6, 0x009C($a0)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L80253858
	nop
	lhu     $t9, 0x0002($a0)
	ori     $t0, $t9, 0x0002
	sh      $t0, 0x0002($a0)
.L80253858:
	lw      $t1, 0x009C($a0)
	lhu     $t2, 0x0010($t1)
	andi    $t3, $t2, 0x8000
	beqz    $t3, .L80253878
	nop
	lhu     $t4, 0x0002($a0)
	ori     $t5, $t4, 0x0080
	sh      $t5, 0x0002($a0)
.L80253878:
	lbu     $t6, 0x00B4($a0)
	bnez    $t6, .L802538E4
	nop
	lw      $t7, 0x009C($a0)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x4000
	beqz    $t9, .L802538A4
	nop
	lhu     $t0, 0x0002($a0)
	ori     $t1, $t0, 0x2000
	sh      $t1, 0x0002($a0)
.L802538A4:
	lw      $t2, 0x009C($a0)
	lhu     $t3, 0x0010($t2)
	andi    $t4, $t3, 0x2000
	beqz    $t4, .L802538C4
	nop
	lhu     $t5, 0x0002($a0)
	ori     $t6, $t5, 0x4000
	sh      $t6, 0x0002($a0)
.L802538C4:
	lw      $t7, 0x009C($a0)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x2000
	beqz    $t9, .L802538E4
	nop
	lhu     $t0, 0x0002($a0)
	ori     $t1, $t0, 0x8000
	sh      $t1, 0x0002($a0)
.L802538E4:
	lhu     $t2, 0x0002($a0)
	andi    $t3, $t2, 0x0002
	beqz    $t3, .L802538FC
	nop
	b       .L80253918
	sb      $0, 0x0028($a0)
.L802538FC:
	lbu     $t4, 0x0028($a0)
	slti    $at, $t4, 0x00FF
	beqz    $at, .L80253918
	nop
	lbu     $t5, 0x0028($a0)
	addiu   $t6, $t5, 0x0001
	sb      $t6, 0x0028($a0)
.L80253918:
	lhu     $t7, 0x0002($a0)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L80253930
	nop
	b       .L8025394C
	sb      $0, 0x0029($a0)
.L80253930:
	lbu     $t9, 0x0029($a0)
	slti    $at, $t9, 0x00FF
	beqz    $at, .L8025394C
	nop
	lbu     $t0, 0x0029($a0)
	addiu   $t1, $t0, 0x0001
	sb      $t1, 0x0029($a0)
.L8025394C:
	jr      $ra
	nop
	jr      $ra
	nop

player_8025395C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x009C($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	li      $at, 0x42800000
	mtc1    $at, $f6
	lwc1    $f4, 0x000C($t8)
	mtc1    $at, $f16
	div.s   $f8, $f4, $f6
	mul.s   $f10, $f8, $f8
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lw      $t9, 0x0020($sp)
	lbu     $t0, 0x00B4($t9)
	bnez    $t0, .L802539C8
	nop
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	div.s   $f8, $f4, $f6
	b       .L802539E0
	swc1    $f8, 0x0020($t1)
.L802539C8:
	li      $at, 0x41000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0018($sp)
	lw      $t2, 0x0020($sp)
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($t2)
.L802539E0:
	lw      $t3, 0x0020($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0020($t3)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80253A3C
	nop
	lw      $t4, 0x001C($sp)
	lwc1    $f12, 0x0008($t4)
	lwc1    $f14, 0x0004($t4)
	jal     atan2
	neg.s   $f12, $f12
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0090($t5)
	lw      $t7, 0x0024($t6)
	lh      $t8, 0x0002($t7)
	addu    $t9, $v0, $t8
	sh      $t9, 0x0024($t5)
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0002($t0)
	ori     $t2, $t1, 0x0001
	b       .L80253A48
	sh      $t2, 0x0002($t0)
.L80253A3C:
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x002E($t3)
	sh      $t4, 0x0024($t3)
.L80253A48:
	b       .L80253A50
	nop
.L80253A50:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

player_80253A60:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x42480000
	mtc1    $at, $f4
	li      $a3, 0x42700000
	addiu   $a0, $t6, 0x003C
	addiu   $a1, $t6, 0x0040
	addiu   $a2, $t6, 0x0044
	jal     map_80380DE8
	swc1    $f4, 0x0010($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f6
	li      $a3, 0x41F00000
	addiu   $a0, $t7, 0x003C
	addiu   $a1, $t7, 0x0040
	addiu   $a2, $t7, 0x0044
	jal     map_80380DE8
	swc1    $f6, 0x0010($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f12, 0x003C($t8)
	lwc1    $f14, 0x0040($t8)
	lw      $a2, 0x0044($t8)
	jal     map_80381900
	addiu   $a3, $t8, 0x0068
	lw      $t9, 0x0028($sp)
	swc1    $f0, 0x0070($t9)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0068($t0)
	bnez    $t1, .L80253B18
	nop
	lw      $t2, 0x0028($sp)
	lw      $a1, 0x0088($t2)
	addiu   $a0, $t2, 0x003C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0020
	lw      $t3, 0x0028($sp)
	lwc1    $f12, 0x003C($t3)
	lwc1    $f14, 0x0040($t3)
	lw      $a2, 0x0044($t3)
	jal     map_80381900
	addiu   $a3, $t3, 0x0068
	lw      $t4, 0x0028($sp)
	swc1    $f0, 0x0070($t4)
.L80253B18:
	lw      $t5, 0x0028($sp)
	addiu   $a0, $t5, 0x003C
	lw      $a1, 0x0070($t5)
	jal     player_80251AFC
	addiu   $a2, $t5, 0x0064
	lw      $t6, 0x0028($sp)
	swc1    $f0, 0x006C($t6)
	lw      $t7, 0x0028($sp)
	lwc1    $f12, 0x003C($t7)
	jal     map_80381D3C
	lwc1    $f14, 0x0044($t7)
	swc1    $f0, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f12, 0x003C($t8)
	jal     map_80381BA0
	lwc1    $f14, 0x0044($t8)
	trunc.w.s $f8, $f0
	lw      $t1, 0x0028($sp)
	mfc1    $t0, $f8
	nop
	sh      $t0, 0x0076($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0068($t2)
	beqz    $t3, .L80253D34
	nop
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0068($t4)
	lwc1    $f12, 0x0024($t5)
	jal     atan2
	lwc1    $f14, 0x001C($t5)
	lw      $t6, 0x0028($sp)
	sh      $v0, 0x0074($t6)
	jal     player_802518A8
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	sw      $v0, 0x0014($t7)
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x0076($t8)
	lwc1    $f10, 0x0040($t8)
	addiu   $t0, $t9, -0x0028
	mtc1    $t0, $f16
	nop
	cvt.s.w $f18, $f16
	c.lt.s  $f18, $f10
	nop
	bc1f    .L80253BF4
	nop
	jal     player_80251BD4
	move    $a0, $t8
	beqz    $v0, .L80253BF4
	nop
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0002($t1)
	ori     $t3, $t2, 0x0008
	sh      $t3, 0x0002($t1)
.L80253BF4:
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0068($t4)
	lb      $t6, 0x0004($t5)
	andi    $t7, $t6, 0x0001
	bnez    $t7, .L80253C28
	nop
	lw      $t9, 0x0064($t4)
	beqz    $t9, .L80253C80
	nop
	lb      $t0, 0x0004($t9)
	andi    $t8, $t0, 0x0001
	beqz    $t8, .L80253C80
	nop
.L80253C28:
	lw      $t2, 0x0028($sp)
	lwc1    $f4, 0x006C($t2)
	lwc1    $f6, 0x0070($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x0020($sp)
	c.le.s  $f16, $f10
	nop
	bc1f    .L80253C80
	nop
	li      $at, 0x43160000
	mtc1    $at, $f18
	nop
	c.le.s  $f10, $f18
	nop
	bc1f    .L80253C80
	nop
	lw      $t3, 0x0028($sp)
	lhu     $t1, 0x0002($t3)
	ori     $t5, $t1, 0x0040
	sh      $t5, 0x0002($t3)
.L80253C80:
	lw      $t6, 0x0028($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x0070($t6)
	lwc1    $f4, 0x0040($t6)
	add.s   $f16, $f6, $f8
	c.lt.s  $f16, $f4
	nop
	bc1f    .L80253CB8
	nop
	lw      $t7, 0x0028($sp)
	lhu     $t4, 0x0002($t7)
	ori     $t9, $t4, 0x0004
	sh      $t9, 0x0002($t7)
.L80253CB8:
	lw      $t0, 0x0028($sp)
	lh      $t8, 0x0076($t0)
	lwc1    $f10, 0x0040($t0)
	addiu   $t2, $t8, -0x000A
	mtc1    $t2, $f18
	nop
	cvt.s.w $f6, $f18
	c.lt.s  $f10, $f6
	nop
	bc1f    .L80253CF4
	nop
	lw      $t1, 0x0028($sp)
	lhu     $t5, 0x0002($t1)
	ori     $t3, $t5, 0x0200
	sh      $t3, 0x0002($t1)
.L80253CF4:
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f4, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	sub.s   $f18, $f4, $f16
	lwc1    $f8, 0x0040($t6)
	c.lt.s  $f8, $f18
	nop
	bc1f    .L80253D2C
	nop
	lw      $t4, 0x0028($sp)
	lhu     $t9, 0x0002($t4)
	ori     $t7, $t9, 0x0100
	sh      $t7, 0x0002($t4)
.L80253D2C:
	b       .L80253D40
	nop
.L80253D34:
	lw      $a0, 0x0028($sp)
	jal     game_8024A9CC
	li      $a1, 0x0012
.L80253D40:
	b       .L80253D48
	nop
.L80253D48:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

player_80253D58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sw      $0, 0x0008($t6)
	lw      $t7, 0x0018($sp)
	sh      $0, 0x0002($t7)
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0088($t8)
	lw      $t0, 0x0070($t9)
	sw      $t0, 0x00A4($t8)
	lw      $t1, 0x0018($sp)
	li.u    $at, 0x00FFFFFF
	li.l    $at, 0x00FFFFFF
	lw      $t2, 0x0004($t1)
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t1)
	jal     player_80253838
	lw      $a0, 0x0018($sp)
	jal     player_8025395C
	lw      $a0, 0x0018($sp)
	jal     player_80253A60
	lw      $a0, 0x0018($sp)
	jal     player_80253720
	lw      $a0, 0x0018($sp)
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	andi    $t5, $t4, 0x2000
	beqz    $t5, .L80253E14
	nop
	lw      $t6, 0x0018($sp)
	li      $at, 0x04000000
	lw      $t7, 0x000C($t6)
	and     $t9, $t7, $at
	beqz    $t9, .L80253DFC
	nop
	lw      $t0, 0x0018($sp)
	lhu     $t8, 0x0002($t0)
	ori     $t2, $t8, 0x0010
	b       .L80253E14
	sh      $t2, 0x0002($t0)
.L80253DFC:
	lui     $t3, %hi(_camera_bss+0x328)
	lh      $t3, %lo(_camera_bss+0x328)($t3)
	li      $at, -0x2001
	and     $t1, $t3, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t1, %lo(_camera_bss+0x328)($at)
.L80253E14:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0003
	bnez    $t6, .L80253E38
	nop
	lw      $t7, 0x0018($sp)
	lhu     $t9, 0x0002($t7)
	ori     $t8, $t9, 0x0020
	sh      $t8, 0x0002($t7)
.L80253E38:
	lw      $t2, 0x0018($sp)
	lw      $t0, 0x0088($t2)
	lw      $t3, 0x0134($t0)
	andi    $t1, $t3, 0x0013
	beqz    $t1, .L80253E60
	nop
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	ori     $t6, $t5, 0x0400
	sh      $t6, 0x0002($t4)
.L80253E60:
	jal     pl_physics_8025509C
	lw      $a0, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	lbu     $t8, 0x002A($t9)
	blez    $t8, .L80253E88
	nop
	lw      $t7, 0x0018($sp)
	lbu     $t2, 0x002A($t7)
	addiu   $t0, $t2, -0x0001
	sb      $t0, 0x002A($t7)
.L80253E88:
	lw      $t3, 0x0018($sp)
	lbu     $t1, 0x002B($t3)
	blez    $t1, .L80253EA8
	nop
	lw      $t5, 0x0018($sp)
	lbu     $t6, 0x002B($t5)
	addiu   $t4, $t6, -0x0001
	sb      $t4, 0x002B($t5)
.L80253EA8:
	b       .L80253EB0
	nop
.L80253EB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

player_80253EC0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x00C0
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x01C0
	bne     $t8, $at, .L80254048
	nop
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x0076($t9)
	lwc1    $f8, 0x0040($t9)
	addiu   $t1, $t0, -0x0050
	mtc1    $t1, $f4
	nop
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0090($t2)
	lw      $t4, 0x0024($t3)
	lbu     $t5, 0x0000($t4)
	sh      $t5, 0x001A($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, .L80253F60
	nop
	lh      $t0, 0x001A($sp)
	li      $at, 0x0004
	beq     $t0, $at, .L80253F58
	nop
	lw      $t1, 0x0020($sp)
	li      $a1, 0x0004
	li      $a2, 0x0001
	lw      $t9, 0x0090($t1)
	jal     camera_80286188
	lw      $a0, 0x0024($t9)
.L80253F58:
	b       .L80254048
	nop
.L80253F60:
	li      $at, 0x44480000
	mtc1    $at, $f18
	lwc1    $f16, 0x001C($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80253FA4
	nop
	lh      $t2, 0x001A($sp)
	li      $at, 0x0003
	beq     $t2, $at, .L80253FA4
	nop
	lw      $t3, 0x0020($sp)
	li      $a1, 0x0003
	li      $a2, 0x0001
	lw      $t4, 0x0090($t3)
	jal     camera_80286188
	lw      $a0, 0x0024($t4)
.L80253FA4:
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80253FE8
	nop
	lh      $t5, 0x001A($sp)
	li      $at, 0x0008
	beq     $t5, $at, .L80253FE8
	nop
	lw      $t6, 0x0020($sp)
	li      $a1, 0x0008
	li      $a2, 0x0001
	lw      $t7, 0x0090($t6)
	jal     camera_80286188
	lw      $a0, 0x0024($t7)
.L80253FE8:
	lw      $t8, 0x0020($sp)
	lw      $t0, 0x000C($t8)
	andi    $t1, $t0, 0x1000
	bnez    $t1, .L80254048
	nop
	lw      $t9, 0x0020($sp)
	lh      $t2, 0x0076($t9)
	lwc1    $f8, 0x0040($t9)
	addiu   $t3, $t2, -0x00A0
	mtc1    $t3, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f8, $f16
	nop
	bc1t    .L80254038
	nop
	lh      $t4, 0x002C($t9)
	slti    $at, $t4, -0x0800
	beqz    $at, .L80254048
	nop
.L80254038:
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0008($t5)
	ori     $t7, $t6, 0x0020
	sw      $t7, 0x0008($t5)
.L80254048:
	b       .L80254050
	nop
.L80254050:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

player_80254060:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x00AE($t6)
	slti    $at, $t7, 0x0100
	bnez    $at, .L80254298
	nop
	lw      $t8, 0x0028($sp)
	lbu     $t9, 0x00B3($t8)
	lbu     $t0, 0x00B2($t8)
	or      $t1, $t9, $t0
	bnez    $t1, .L802541BC
	nop
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0100
	beqz    $t4, .L802540FC
	nop
	lw      $t5, 0x000C($t2)
	andi    $t6, $t5, 0x1000
	bnez    $t6, .L802540FC
	nop
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	bnez    $t9, .L802540F4
	nop
	lui     $t0, %hi(debug_stage)
	lb      $t0, %lo(debug_stage)($t0)
	bnez    $t0, .L802540F4
	nop
	lw      $t1, 0x0028($sp)
	lh      $t3, 0x00AE($t1)
	addiu   $t4, $t3, -0x0004
	sh      $t4, 0x00AE($t1)
.L802540F4:
	b       .L802541BC
	nop
.L802540FC:
	lw      $t2, 0x0028($sp)
	lw      $t5, 0x000C($t2)
	andi    $t6, $t5, 0x2000
	beqz    $t6, .L802541BC
	nop
	andi    $t7, $t5, 0x1000
	bnez    $t7, .L802541BC
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0090($t8)
	lhu     $t0, 0x0002($t9)
	andi    $t3, $t0, 0x0007
	xori    $t4, $t3, 0x0002
	sltiu   $t4, $t4, 0x0001
	sw      $t4, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lh      $t2, 0x0076($t1)
	lwc1    $f4, 0x0040($t1)
	addiu   $t6, $t2, -0x008C
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	c.le.s  $f8, $f4
	nop
	bc1f    .L80254184
	nop
	lw      $t5, 0x0024($sp)
	bnez    $t5, .L80254184
	nop
	lw      $t7, 0x0028($sp)
	lh      $t8, 0x00AE($t7)
	addiu   $t9, $t8, 0x001A
	b       .L802541BC
	sh      $t9, 0x00AE($t7)
.L80254184:
	lui     $t0, %hi(debug_stage)
	lb      $t0, %lo(debug_stage)($t0)
	bnez    $t0, .L802541BC
	nop
	lw      $t3, 0x0024($sp)
	beqz    $t3, .L802541A8
	nop
	b       .L802541AC
	li      $s0, 0x0003
.L802541A8:
	li      $s0, 0x0001
.L802541AC:
	lw      $t4, 0x0028($sp)
	lh      $t1, 0x00AE($t4)
	subu    $t2, $t1, $s0
	sh      $t2, 0x00AE($t4)
.L802541BC:
	lw      $t6, 0x0028($sp)
	lbu     $t5, 0x00B3($t6)
	blez    $t5, .L802541EC
	nop
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x00AE($t8)
	addiu   $t7, $t9, 0x0040
	sh      $t7, 0x00AE($t8)
	lw      $t0, 0x0028($sp)
	lbu     $t3, 0x00B3($t0)
	addiu   $t1, $t3, -0x0001
	sb      $t1, 0x00B3($t0)
.L802541EC:
	lw      $t2, 0x0028($sp)
	lbu     $t4, 0x00B2($t2)
	blez    $t4, .L8025421C
	nop
	lw      $t6, 0x0028($sp)
	lh      $t5, 0x00AE($t6)
	addiu   $t9, $t5, -0x0040
	sh      $t9, 0x00AE($t6)
	lw      $t7, 0x0028($sp)
	lbu     $t8, 0x00B2($t7)
	addiu   $t3, $t8, -0x0001
	sb      $t3, 0x00B2($t7)
.L8025421C:
	lw      $t1, 0x0028($sp)
	lh      $t0, 0x00AE($t1)
	slti    $at, $t0, 0x0881
	bnez    $at, .L8025423C
	nop
	lw      $t4, 0x0028($sp)
	li      $t2, 0x0880
	sh      $t2, 0x00AE($t4)
.L8025423C:
	lw      $t5, 0x0028($sp)
	lh      $t9, 0x00AE($t5)
	slti    $at, $t9, 0x0100
	beqz    $at, .L8025425C
	nop
	lw      $t8, 0x0028($sp)
	li      $t6, 0x00FF
	sh      $t6, 0x00AE($t8)
.L8025425C:
	lw      $t3, 0x0028($sp)
	li      $at, 0x00C0
	lw      $t7, 0x000C($t3)
	andi    $t1, $t7, 0x01C0
	bne     $t1, $at, .L80254298
	nop
	lh      $t0, 0x00AE($t3)
	slti    $at, $t0, 0x0300
	beqz    $at, .L80254298
	nop
	li.u    $a0, 0x1C180001
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x1C180001
.L80254298:
	b       .L802542A0
	nop
.L802542A0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

player_802542B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x000C($t6)
	lw      $t8, 0x0098($t6)
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x000C($t9)
	lw      $t1, 0x0094($t9)
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0018($sp)
	lw      $a0, 0x0094($t2)
	addiu   $a1, $t2, 0x002C
	jal     vecs_cpy
	addiu   $a0, $a0, 0x0010
	lw      $t3, 0x0018($sp)
	li      $at, 0x02000000
	lw      $t4, 0x0004($t3)
	and     $t5, $t4, $at
	bnez    $t5, .L80254320
	nop
	lw      $t6, 0x0018($sp)
	lw      $a0, 0x0094($t6)
	addiu   $a1, $t6, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
.L80254320:
	b       .L80254328
	nop
.L80254328:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

player_80254338:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0098($a0)
	sw      $t6, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	li      $t7, 0x0001
	sb      $t7, 0x0004($t8)
	lw      $t9, 0x0004($sp)
	sb      $0, 0x0005($t9)
	lw      $t0, 0x0004($sp)
	sb      $0, 0x0006($t0)
	lw      $t1, 0x0004($sp)
	sh      $0, 0x0008($t1)
	lw      $t2, 0x0004($sp)
	sb      $0, 0x0007($t2)
	lw      $t3, 0x0004($a0)
	li      $at, -0x0041
	and     $t4, $t3, $at
	sw      $t4, 0x0004($a0)
	b       .L80254388
	nop
.L80254388:
	jr      $ra
	addiu   $sp, $sp, 0x0008

player_80254390:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0088($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lw      $t8, 0x0050($t7)
	beqz    $t8, .L802543C4
	nop
	lw      $t9, 0x0004($sp)
	lwc1    $f6, 0x00C0($a0)
	lw      $t0, 0x0050($t9)
	lwc1    $f4, 0x0034($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($t0)
.L802543C4:
	lw      $t1, 0x0004($sp)
	lwc1    $f16, 0x00C0($a0)
	lwc1    $f10, 0x0024($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($t1)
	b       .L802543E0
	nop
.L802543E0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

player_802543E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0004($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lhu     $t9, 0x00B6($t8)
	blez    $t9, .L80254568
	nop
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x000C($t0)
	sw      $t1, 0x0018($sp)
	lw      $t2, 0x0020($sp)
	lhu     $t3, 0x00B6($t2)
	slti    $at, $t3, 0x003D
	bnez    $at, .L8025446C
	nop
	lw      $t4, 0x0018($sp)
	li.u    $at, 0x20001305
	li.l    $at, 0x20001305
	beq     $t4, $at, .L8025447C
	nop
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	beq     $t4, $at, .L8025447C
	nop
	li      $at, 0x1308
	beq     $t4, $at, .L8025447C
	nop
	li      $at, 0x1371
	beq     $t4, $at, .L8025447C
	nop
.L8025446C:
	lw      $t5, 0x0020($sp)
	lhu     $t6, 0x00B6($t5)
	addiu   $t7, $t6, -0x0001
	sh      $t7, 0x00B6($t5)
.L8025447C:
	lw      $t8, 0x0020($sp)
	lhu     $t9, 0x00B6($t8)
	bnez    $t9, .L802544D0
	nop
	jal     bgm_special_stop
	nop
	lw      $t0, 0x0020($sp)
	li      $at, -0x000F
	lw      $t1, 0x0004($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x0004($t0)
	lw      $t3, 0x0020($sp)
	lw      $t4, 0x0004($t3)
	andi    $t6, $t4, 0x000F
	bnez    $t6, .L802544D0
	nop
	lw      $t7, 0x0020($sp)
	li      $at, -0x0011
	lw      $t5, 0x0004($t7)
	and     $t8, $t5, $at
	sw      $t8, 0x0004($t7)
.L802544D0:
	lw      $t9, 0x0020($sp)
	li      $at, 0x003C
	lhu     $t1, 0x00B6($t9)
	bne     $t1, $at, .L802544EC
	nop
	jal     bgm_special_fadeout
	nop
.L802544EC:
	lw      $t2, 0x0020($sp)
	lhu     $t0, 0x00B6($t2)
	slti    $at, $t0, 0x0040
	beqz    $at, .L80254568
	nop
	li      $a0, 0x0000
	li      $a1, 0x0001
	move    $a3, $t0
	jal     __ll_lshift
	sra     $a2, $t0, 31
	lui     $t4, %hi(player_8032DAE0+0)
	lw      $t4, %lo(player_8032DAE0+0)($t4)
	lui     $t5, %hi(player_8032DAE0+4)
	lw      $t5, %lo(player_8032DAE0+4)($t5)
	and     $t6, $v0, $t4
	bnez    $t6, .L80254538
	and     $t7, $v1, $t5
	beqz    $t7, .L80254568
	nop
.L80254538:
	lw      $t3, 0x001C($sp)
	li      $at, -0x000F
	and     $t8, $t3, $at
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	andi    $t1, $t9, 0x000F
	bnez    $t1, .L80254568
	nop
	lw      $t2, 0x001C($sp)
	li      $at, -0x0011
	and     $t0, $t2, $at
	sw      $t0, 0x001C($sp)
.L80254568:
	b       .L80254578
	lw      $v0, 0x001C($sp)
	b       .L80254578
	nop
.L80254578:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

player_80254588:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0098($t6)
	sw      $t7, 0x001C($sp)
	jal     player_802543E8
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x0018($sp)
	lw      $t8, 0x0018($sp)
	andi    $t9, $t8, 0x0002
	beqz    $t9, .L802545C8
	nop
	lw      $t1, 0x001C($sp)
	li      $t0, 0x0180
	sh      $t0, 0x0008($t1)
.L802545C8:
	lw      $t2, 0x0018($sp)
	andi    $t3, $t2, 0x0004
	beqz    $t3, .L802545E8
	nop
	lw      $t4, 0x001C($sp)
	lh      $t5, 0x0008($t4)
	ori     $t6, $t5, 0x0200
	sh      $t6, 0x0008($t4)
.L802545E8:
	lw      $t7, 0x0018($sp)
	andi    $t8, $t7, 0x0040
	beqz    $t8, .L80254608
	nop
	lw      $t9, 0x001C($sp)
	lh      $t0, 0x0008($t9)
	ori     $t1, $t0, 0x0200
	sh      $t1, 0x0008($t9)
.L80254608:
	lw      $t2, 0x0020($sp)
	lh      $t3, 0x0026($t2)
	slti    $at, $t3, 0x0003
	bnez    $at, .L80254648
	nop
	lui     $t5, %hi(gfx_frame)
	lw      $t5, %lo(gfx_frame)($t5)
	andi    $t6, $t5, 0x0001
	beqz    $t6, .L80254648
	nop
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lw      $t7, 0x0088($t4)
	lh      $t8, 0x0002($t7)
	ori     $t0, $t8, 0x0010
	sh      $t0, 0x0002($t7)
.L80254648:
	lw      $t1, 0x0018($sp)
	andi    $t9, $t1, 0x0020
	beqz    $t9, .L80254684
	nop
	lw      $t2, 0x0018($sp)
	andi    $t3, $t2, 0x0008
	beqz    $t3, .L80254678
	nop
	lw      $t6, 0x001C($sp)
	li      $t5, 0x0004
	b       .L80254684
	sb      $t5, 0x0006($t6)
.L80254678:
	lw      $t8, 0x001C($sp)
	li      $t4, 0x0003
	sb      $t4, 0x0006($t8)
.L80254684:
	lw      $t0, 0x0018($sp)
	andi    $t7, $t0, 0x0010
	beqz    $t7, .L802546BC
	nop
	lw      $t1, 0x0018($sp)
	andi    $t9, $t1, 0x0008
	beqz    $t9, .L802546B4
	nop
	lw      $t3, 0x001C($sp)
	li      $t2, 0x0002
	b       .L802546BC
	sb      $t2, 0x0004($t3)
.L802546B4:
	lw      $t5, 0x001C($sp)
	sb      $0, 0x0004($t5)
.L802546BC:
	lw      $t6, 0x0020($sp)
	lw      $t4, 0x000C($t6)
	andi    $t8, $t4, 0x8000
	beqz    $t8, .L802546E8
	nop
	lw      $t0, 0x0020($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lw      $t7, 0x0088($t0)
	b       .L802546FC
	swc1    $f4, 0x01FC($t7)
.L802546E8:
	lw      $t1, 0x0020($sp)
	li      $at, 0x43200000
	mtc1    $at, $f6
	lw      $t9, 0x0088($t1)
	swc1    $f6, 0x01FC($t9)
.L802546FC:
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0004($t2)
	andi    $t5, $t3, 0x0080
	beqz    $t5, .L80254750
	nop
	lbu     $t6, 0x00B5($t2)
	li      $at, 0x00FF
	beq     $t6, $at, .L80254750
	nop
	lw      $t4, 0x001C($sp)
	li      $at, -0x0100
	lh      $t8, 0x0008($t4)
	and     $t0, $t8, $at
	sh      $t0, 0x0008($t4)
	lw      $t9, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	lbu     $t3, 0x00B5($t9)
	lh      $t1, 0x0008($t7)
	ori     $t5, $t3, 0x0100
	or      $t2, $t1, $t5
	sh      $t2, 0x0008($t7)
.L80254750:
	b       .L80254758
	nop
.L80254758:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

player_80254768:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0010($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L80254818
	nop
	lhu     $t9, 0x0012($t6)
	lhu     $t0, 0x001A($sp)
	and     $t1, $t9, $t0
	beqz    $t1, .L80254818
	nop
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lw      $t4, 0x001C($sp)
	lw      $t3, 0x0004($t2)
	and     $t5, $t3, $t4
	bnez    $t5, .L80254818
	nop
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lw      $t6, 0x001C($sp)
	lw      $t8, 0x0004($t7)
	addiu   $t9, $t6, 0x0010
	or      $t0, $t8, $t9
	sw      $t0, 0x0004($t7)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lhu     $t1, 0x0022($sp)
	lhu     $t3, 0x00B6($t2)
	slt     $at, $t3, $t1
	beqz    $at, .L80254810
	nop
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	lhu     $t4, 0x0022($sp)
	sh      $t4, 0x00B6($t5)
.L80254810:
	jal     bgm_special_play
	lhu     $a0, 0x0026($sp)
.L80254818:
	b       .L80254820
	nop
.L80254820:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80254830
player_80254830:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lw      $t8, 0x000C($t7)
	beqz    $t8, .L80254AFC
	nop
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li      $at, -0x0011
	lw      $t0, 0x0088($t9)
	lh      $t1, 0x0002($t0)
	and     $t2, $t1, $at
	sh      $t2, 0x0002($t0)
	lui     $a0, %hi(mario)
	jal     player_80254338
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_80253D58
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     collision_802507FC
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     collision_802503F0
	lw      $a0, %lo(mario)($a0)
	lui     $t3, %hi(mario)
	lw      $t3, %lo(mario)($t3)
	lw      $t4, 0x0068($t3)
	bnez    $t4, .L802548C4
	nop
	b       .L80254B0C
	move    $v0, $0
.L802548C4:
	lw      $t5, 0x0024($sp)
	beqz    $t5, .L802549F0
	nop
.L802548D0:
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lw      $s0, 0x000C($t6)
	andi    $t7, $s0, 0x01C0
	move    $s0, $t7
	beqz    $s0, .L8025493C
	nop
	li      $at, 0x0040
	beq     $s0, $at, .L80254954
	nop
	li      $at, 0x0080
	beq     $s0, $at, .L8025496C
	nop
	li      $at, 0x00C0
	beq     $s0, $at, .L80254984
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L8025499C
	nop
	li      $at, 0x0140
	beq     $s0, $at, .L802549B4
	nop
	li      $at, 0x0180
	beq     $s0, $at, .L802549CC
	nop
	b       .L802549E4
	nop
.L8025493C:
	lui     $a0, %hi(mario)
	jal     pl_wait_main
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       .L802549E4
	nop
.L80254954:
	lui     $a0, %hi(mario)
	jal     pl_walk_main
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       .L802549E4
	nop
.L8025496C:
	lui     $a0, %hi(mario)
	jal     pl_jump_main
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       .L802549E4
	nop
.L80254984:
	lui     $a0, %hi(mario)
	jal     pl_swim_main
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       .L802549E4
	nop
.L8025499C:
	lui     $a0, %hi(mario)
	jal     pl_demo_main
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       .L802549E4
	nop
.L802549B4:
	lui     $a0, %hi(mario)
	jal     pl_hang_main
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       .L802549E4
	nop
.L802549CC:
	lui     $a0, %hi(mario)
	jal     pl_grab_main
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       .L802549E4
	nop
.L802549E4:
	lw      $t8, 0x0024($sp)
	bnez    $t8, .L802548D0
	nop
.L802549F0:
	lui     $a0, %hi(mario)
	jal     player_80254390
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_80253588
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_80253EC0
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_80254060
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_802542B4
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_80254588
	lw      $a0, %lo(mario)($a0)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li      $at, 0x002C
	lw      $t1, 0x0068($t9)
	lh      $t2, 0x0000($t1)
	bne     $t2, $at, .L80254A90
	nop
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	move    $a0, $0
	lw      $t3, 0x0068($t0)
	lh      $a1, 0x0002($t3)
	sll     $t4, $a1, 8
	jal     object_a_802AE4C0
	move    $a1, $t4
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li.u    $a0, 0x40108001
	li.l    $a0, 0x40108001
	lw      $a1, 0x0088($t5)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80254A90:
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li      $at, 0x0038
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, .L80254AD4
	nop
	li      $a0, 0x0001
	jal     object_a_802AE4C0
	move    $a1, $0
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li.u    $a0, 0x40108001
	li.l    $a0, 0x40108001
	lw      $a1, 0x0088($t9)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80254AD4:
	jal     bgm_endless
	nop
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	lw      $t2, 0x0088($t1)
	sw      $0, 0x0134($t2)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	b       .L80254B0C
	lw      $v0, 0x0008($t0)
.L80254AFC:
	b       .L80254B0C
	move    $v0, $0
	b       .L80254B0C
	nop
.L80254B0C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80254B20
player_80254B20:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(player_8033B280)
	sw      $0, %lo(player_8033B280)($at)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	sh      $0, 0x001A($t6)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	li      $t7, 0x00FF
	sb      $t7, 0x0028($t8)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	li      $t9, 0x00FF
	sb      $t9, 0x0029($t0)
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	sh      $0, 0x0026($t1)
	jal     save_flag_get
	nop
	li      $at, 0x000F0000
	and     $t2, $v0, $at
	beqz    $t2, .L80254B90
	nop
	lui     $t3, %hi(mario)
	lw      $t3, %lo(mario)($t3)
	b       .L80254BA0
	sw      $0, 0x0004($t3)
.L80254B90:
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li      $t4, 0x0011
	sw      $t4, 0x0004($t5)
.L80254BA0:
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0054($t6)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	sb      $0, 0x00B4($t7)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	sb      $0, 0x00B2($t8)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	sb      $0, 0x00B3($t9)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	sh      $0, 0x00B6($t0)
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00C0($t1)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	sw      $0, 0x007C($t2)
	lui     $t3, %hi(mario)
	lw      $t3, %lo(mario)($t3)
	sw      $0, 0x0084($t3)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	sw      $0, 0x0080($t4)
	lui     $t5, %hi(spawn_mario)
	lw      $t5, %lo(spawn_mario)($t5)
	lh      $t6, 0x0000($t5)
	lh      $t7, 0x0004($t5)
	mtc1    $t6, $f8
	mtc1    $t7, $f10
	cvt.s.w $f12, $f8
	jal     map_80381BA0
	cvt.s.w $f14, $f10
	trunc.w.s $f16, $f0
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	mfc1    $t9, $f16
	nop
	sh      $t9, 0x0076($t0)
	lui     $t1, %hi(scene)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lw      $t1, %lo(scene)($t1)
	sw      $t1, 0x0090($t2)
	lui     $t3, %hi(obj_mario)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lw      $t3, %lo(obj_mario)($t3)
	sw      $t3, 0x0088($t4)
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li      $t6, -0x0001
	lw      $t7, 0x0088($t5)
	sh      $t6, 0x0038($t7)
	lui     $a0, %hi(mario)
	lui     $a1, %hi(spawn_mario)
	lw      $a1, %lo(spawn_mario)($a1)
	lw      $a0, %lo(mario)($a0)
	addiu   $a1, $a1, 0x0006
	jal     vecs_cpy
	addiu   $a0, $a0, 0x002C
	lui     $a0, %hi(mario)
	lw      $a0, %lo(mario)($a0)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0032
	lui     $a0, %hi(mario)
	lw      $a0, %lo(mario)($a0)
	lui     $a1, %hi(spawn_mario)
	lw      $a1, %lo(spawn_mario)($a1)
	jal     vecs_to_vecf
	addiu   $a0, $a0, 0x003C
	lui     $a0, %hi(mario)
	lw      $a0, %lo(mario)($a0)
	li      $a1, 0x0000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0048
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lwc1    $f12, 0x003C($t8)
	lwc1    $f14, 0x0040($t8)
	lw      $a2, 0x0044($t8)
	jal     map_80381900
	addiu   $a3, $t8, 0x0068
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	swc1    $f0, 0x0070($t9)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	lwc1    $f18, 0x0040($t0)
	lwc1    $f4, 0x0070($t0)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80254D58
	nop
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	lwc1    $f6, 0x0070($t1)
	swc1    $f6, 0x0040($t1)
.L80254D58:
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lwc1    $f8, 0x0040($t2)
	lw      $t3, 0x0088($t2)
	swc1    $f8, 0x0024($t3)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lh      $t5, 0x0076($t4)
	lwc1    $f10, 0x0040($t4)
	addiu   $t6, $t5, -0x0064
	mtc1    $t6, $f16
	nop
	cvt.s.w $f18, $f16
	c.le.s  $f10, $f18
	nop
	bc1f    .L80254DAC
	nop
	li.u    $t7, 0x380022C0
	li.l    $t7, 0x380022C0
	b       .L80254DC0
	sw      $t7, 0x000C($t4)
.L80254DAC:
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li.u    $t8, 0x0C400201
	li.l    $t8, 0x0C400201
	sw      $t8, 0x000C($t9)
.L80254DC0:
	lui     $a0, %hi(mario)
	jal     player_80254338
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_802542B4
	lw      $a0, %lo(mario)($a0)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	lw      $t1, 0x0098($t0)
	sb      $0, 0x000B($t1)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lwc1    $f4, 0x003C($t2)
	lw      $t3, 0x0088($t2)
	swc1    $f4, 0x00A0($t3)
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	lwc1    $f6, 0x0040($t5)
	lw      $t6, 0x0088($t5)
	swc1    $f6, 0x00A4($t6)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lwc1    $f8, 0x0044($t7)
	lw      $t4, 0x0088($t7)
	swc1    $f8, 0x00A8($t4)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lh      $t9, 0x002C($t8)
	lw      $t0, 0x0088($t8)
	sw      $t9, 0x00C4($t0)
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	lh      $t2, 0x002E($t1)
	lw      $t3, 0x0088($t1)
	sw      $t2, 0x00C8($t3)
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	lh      $t6, 0x0030($t5)
	lw      $t7, 0x0088($t5)
	sw      $t6, 0x00CC($t7)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lw      $a0, 0x0088($t4)
	addiu   $a1, $t4, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t8)
	lh      $a2, 0x002E($t8)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	jal     save_cap_get
	addiu   $a0, $sp, 0x0020
	beqz    $v0, .L80254F2C
	nop
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	la.u    $a2, o_13003DF8
	la.l    $a2, o_13003DF8
	li      $a1, 0x0088
	jal     obj_lib_8029EDCC
	lw      $a0, 0x0088($t9)
	sw      $v0, 0x001C($sp)
	addiu   $t0, $sp, 0x0020
	lh      $t1, 0x0000($t0)
	lw      $t2, 0x001C($sp)
	mtc1    $t1, $f16
	nop
	cvt.s.w $f10, $f16
	swc1    $f10, 0x00A0($t2)
	addiu   $t3, $sp, 0x0020
	lh      $t5, 0x0002($t3)
	lw      $t6, 0x001C($sp)
	mtc1    $t5, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x00A4($t6)
	addiu   $t7, $sp, 0x0020
	lh      $t4, 0x0004($t7)
	lw      $t8, 0x001C($sp)
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x00A8($t8)
	lw      $t9, 0x001C($sp)
	sw      $0, 0x00B8($t9)
	lw      $t0, 0x001C($sp)
	sw      $0, 0x00C8($t0)
.L80254F2C:
	b       .L80254F34
	nop
.L80254F34:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80254F44
player_80254F44:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	sh      $0, 0x0000($t6)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	sw      $0, 0x0004($t7)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	sw      $0, 0x000C($t8)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	la.u    $t9, spawn_player
	la.l    $t9, spawn_player
	sw      $t9, 0x008C($t0)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	la.u    $t1, _camera_bss+0x00
	la.l    $t1, _camera_bss+0x00
	sw      $t1, 0x0094($t2)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	la.u    $t3, pl_shape_data
	la.l    $t3, pl_shape_data
	sw      $t3, 0x0098($t4)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	la.u    $t5, controller_data
	la.l    $t5, controller_data
	sw      $t5, 0x009C($t6)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	la.u    $t7, anime_mario_bank
	la.l    $t7, anime_mario_bank
	sw      $t7, 0x00A0($t8)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	sh      $0, 0x00A8($t9)
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	sh      $v0, 0x00AA($t0)
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	sb      $0, 0x00AC($t1)
	lui     $t3, %hi(mario)
	lw      $t3, %lo(mario)($t3)
	li      $t2, 0x0004
	sb      $t2, 0x00AD($t3)
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li      $t4, 0x0880
	sh      $t4, 0x00AE($t5)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lh      $t7, 0x00AA($t6)
	sh      $t7, 0x00B8($t6)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li      $t8, 0x00BD
	sh      $t8, 0x00B0($t9)
	lui     $at, %hi(hud+0x02)
	sh      $0, %lo(hud+0x02)($at)
	li      $t0, 0x0008
	lui     $at, %hi(hud+0x06)
	sh      $t0, %lo(hud+0x06)($at)
	b       .L8025506C
	nop
.L8025506C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

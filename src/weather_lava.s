.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

weather_lava_802DFD50:
	addiu   $sp, $sp, -0x0008
	lui     $t7, %hi(weather_snow)
	lw      $t7, %lo(weather_snow)($t7)
	sll     $t6, $a0, 3
	subu    $t6, $t6, $a0
	sll     $t6, $t6, 3
	addu    $t8, $t6, $t7
	lw      $t9, 0x0004($t8)
	sw      $t9, 0x0004($sp)
	lui     $t1, %hi(weather_snow)
	lw      $t1, %lo(weather_snow)($t1)
	sll     $t0, $a0, 3
	subu    $t0, $t0, $a0
	sll     $t0, $t0, 3
	addu    $t2, $t0, $t1
	lw      $t3, 0x000C($t2)
	sw      $t3, 0x0000($sp)
	lw      $t4, 0x0004($sp)
	lw      $t8, 0x0000($sp)
	subu    $t5, $t4, $a1
	subu    $t6, $t4, $a1
	multu   $t5, $t6
	subu    $t9, $t8, $a2
	subu    $t0, $t8, $a2
	mflo    $t7
	nop
	nop
	multu   $t9, $t0
	mflo    $t1
	addu    $t2, $t7, $t1
	nop
	multu   $a3, $a3
	mflo    $t3
	slt     $at, $t3, $t2
	beqz    $at, .L802DFDE8
	nop
	b       .L802DFDF8
	move    $v0, $0
.L802DFDE8:
	b       .L802DFDF8
	li      $v0, 0x0001
	b       .L802DFDF8
	nop
.L802DFDF8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

weather_lava_802DFE00:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f4
	li      $at, 0x447A0000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	sub.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t7, $f16
	nop
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	bgez    $t8, .L802DFE54
	nop
	lw      $t9, 0x001C($sp)
	addiu   $t0, $t9, -0x03E8
	b       .L802DFE60
	sw      $t0, 0x001C($sp)
.L802DFE54:
	lw      $t1, 0x001C($sp)
	addiu   $t2, $t1, 0x03E8
	sw      $t2, 0x001C($sp)
.L802DFE60:
	b       .L802DFE70
	lw      $v0, 0x001C($sp)
	b       .L802DFE70
	nop
.L802DFE70:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

weather_lava_802DFE80:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x0024($sp)
	lw      $t7, 0x0030($sp)
	lh      $t8, 0x0000($t7)
	sh      $t8, 0x0022($sp)
	lw      $t9, 0x0030($sp)
	lh      $t0, 0x0002($t9)
	sh      $t0, 0x0020($sp)
	lw      $t1, 0x0030($sp)
	lh      $t2, 0x0004($t1)
	sh      $t2, 0x001E($sp)
	lui     $t3, %hi(weather_lava_8036143C)
	lw      $t3, %lo(weather_lava_8036143C)($t3)
	sw      $0, 0x002C($sp)
	blez    $t3, .L802E0108
	nop
.L802DFED0:
	lw      $a0, 0x002C($sp)
	lh      $a1, 0x0022($sp)
	lh      $a2, 0x001E($sp)
	jal     weather_lava_802DFD50
	li      $a3, 0x0BB8
	lw      $t5, 0x002C($sp)
	lui     $t4, %hi(weather_snow)
	lw      $t4, %lo(weather_snow)($t4)
	sll     $t6, $t5, 3
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $t7, $t4, $t6
	sb      $v0, 0x0000($t7)
	lw      $t8, 0x002C($sp)
	lui     $t0, %hi(weather_snow)
	lw      $t0, %lo(weather_snow)($t0)
	sll     $t9, $t8, 3
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t1, $t9, $t0
	lb      $t2, 0x0000($t1)
	bnez    $t2, .L802E0064
	nop
	jal     weather_lava_802DFE00
	nop
	lw      $t6, 0x002C($sp)
	lui     $t4, %hi(weather_snow)
	lw      $t4, %lo(weather_snow)($t4)
	lh      $t3, 0x0022($sp)
	sll     $t7, $t6, 3
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	addu    $t8, $t4, $t7
	addu    $t5, $v0, $t3
	sw      $t5, 0x0004($t8)
	jal     weather_lava_802DFE00
	nop
	lw      $t2, 0x002C($sp)
	lui     $t1, %hi(weather_snow)
	lw      $t1, %lo(weather_snow)($t1)
	lh      $t9, 0x001E($sp)
	sll     $t3, $t2, 3
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 3
	addu    $t6, $t1, $t3
	addu    $t0, $v0, $t9
	sw      $t0, 0x000C($t6)
	lw      $t4, 0x002C($sp)
	lui     $t5, %hi(weather_snow)
	lw      $t5, %lo(weather_snow)($t5)
	sll     $t7, $t4, 3
	subu    $t7, $t7, $t4
	sll     $t7, $t7, 3
	addu    $t8, $t7, $t5
	lw      $t2, 0x000C($t8)
	lw      $t9, 0x0004($t8)
	lui     $at, %hi(weather_lava_803382C0)
	mtc1    $t2, $f6
	mtc1    $t9, $f4
	lwc1    $f14, %lo(weather_lava_803382C0)($at)
	cvt.s.w $f6, $f6
	addiu   $a3, $sp, 0x0028
	cvt.s.w $f12, $f4
	mfc1    $a2, $f6
	jal     map_803814B8
	nop
	trunc.w.s $f8, $f0
	lw      $t6, 0x002C($sp)
	lui     $t0, %hi(weather_snow)
	lw      $t0, %lo(weather_snow)($t0)
	sll     $t4, $t6, 3
	mfc1    $t3, $f8
	subu    $t4, $t4, $t6
	sll     $t4, $t4, 3
	addu    $t7, $t0, $t4
	sw      $t3, 0x0008($t7)
	lw      $t8, 0x002C($sp)
	lui     $t9, %hi(weather_snow)
	lw      $t9, %lo(weather_snow)($t9)
	sll     $t2, $t8, 3
	subu    $t2, $t2, $t8
	sll     $t2, $t2, 3
	li      $t5, 0x0001
	addu    $t1, $t9, $t2
	sb      $t5, 0x0000($t1)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f10
	lw      $t3, 0x002C($sp)
	lui     $t4, %hi(weather_snow)
	mul.s   $f16, $f0, $f10
	lw      $t4, %lo(weather_snow)($t4)
	sll     $t7, $t3, 3
	subu    $t7, $t7, $t3
	sll     $t7, $t7, 3
	addu    $t8, $t4, $t7
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	b       .L802E00E8
	sh      $t0, 0x0002($t8)
.L802E0064:
	lw      $t9, 0x0024($sp)
	andi    $t2, $t9, 0x0003
	bnez    $t2, .L802E00E8
	nop
	lw      $t5, 0x002C($sp)
	lui     $t6, %hi(weather_snow)
	lw      $t6, %lo(weather_snow)($t6)
	sll     $t1, $t5, 3
	subu    $t1, $t1, $t5
	sll     $t1, $t1, 3
	addu    $t3, $t1, $t6
	lh      $t4, 0x0002($t3)
	addiu   $t7, $t4, 0x0001
	sh      $t7, 0x0002($t3)
	lw      $t0, 0x002C($sp)
	lui     $t9, %hi(weather_snow)
	lw      $t9, %lo(weather_snow)($t9)
	sll     $t8, $t0, 3
	subu    $t8, $t8, $t0
	sll     $t8, $t8, 3
	addu    $t2, $t8, $t9
	lh      $t5, 0x0002($t2)
	slti    $at, $t5, 0x0006
	bnez    $at, .L802E00E8
	nop
	lw      $t6, 0x002C($sp)
	lui     $t1, %hi(weather_snow)
	lw      $t1, %lo(weather_snow)($t1)
	sll     $t4, $t6, 3
	subu    $t4, $t4, $t6
	sll     $t4, $t4, 3
	addu    $t7, $t1, $t4
	sh      $0, 0x0002($t7)
.L802E00E8:
	lw      $t3, 0x002C($sp)
	lui     $t8, %hi(weather_lava_8036143C)
	lw      $t8, %lo(weather_lava_8036143C)($t8)
	addiu   $t0, $t3, 0x0001
	sw      $t0, 0x002C($sp)
	slt     $at, $t0, $t8
	bnez    $at, .L802DFED0
	nop
.L802E0108:
	b       .L802E0110
	nop
.L802E0110:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

weather_lava_802E0120:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	lh      $t7, 0x0000($t6)
	sh      $t7, 0x0020($sp)
	lw      $t8, 0x002C($sp)
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x001E($sp)
	lw      $t0, 0x002C($sp)
	lh      $t1, 0x0004($t0)
	sh      $t1, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	lui     $at, %hi(weather_lava_803382C4)
	lwc1    $f4, %lo(weather_lava_803382C4)($at)
	lh      $t2, 0x0020($sp)
	lui     $at, %hi(weather_lava_803382C8)
	mul.s   $f6, $f0, $f4
	mtc1    $t2, $f16
	lwc1    $f8, %lo(weather_lava_803382C8)($at)
	lw      $t6, 0x0028($sp)
	lui     $t5, %hi(weather_snow)
	lw      $t5, %lo(weather_snow)($t5)
	cvt.s.w $f18, $f16
	sll     $t7, $t6, 3
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	addu    $t8, $t5, $t7
	sub.s   $f10, $f6, $f8
	add.s   $f4, $f10, $f18
	trunc.w.s $f6, $f4
	mfc1    $t4, $f6
	nop
	sw      $t4, 0x0004($t8)
	jal     o_script_80383CB4
	nop
	lui     $at, %hi(weather_lava_803382CC)
	lwc1    $f8, %lo(weather_lava_803382CC)($at)
	lh      $t9, 0x001C($sp)
	lui     $at, %hi(weather_lava_803382D0)
	mul.s   $f16, $f0, $f8
	mtc1    $t9, $f4
	lwc1    $f10, %lo(weather_lava_803382D0)($at)
	lw      $t3, 0x0028($sp)
	lui     $t2, %hi(weather_snow)
	lw      $t2, %lo(weather_snow)($t2)
	cvt.s.w $f6, $f4
	sll     $t6, $t3, 3
	subu    $t6, $t6, $t3
	sll     $t6, $t6, 3
	addu    $t5, $t2, $t6
	sub.s   $f18, $f16, $f10
	add.s   $f8, $f18, $f6
	trunc.w.s $f16, $f8
	mfc1    $t1, $f16
	nop
	sw      $t1, 0x000C($t5)
	lw      $t7, 0x0028($sp)
	lui     $t8, %hi(weather_snow)
	lw      $t8, %lo(weather_snow)($t8)
	sll     $t4, $t7, 3
	subu    $t4, $t4, $t7
	sll     $t4, $t4, 3
	addu    $t9, $t4, $t8
	lw      $t0, 0x0004($t9)
	slti    $at, $t0, 0x1F41
	bnez    $at, .L802E0268
	nop
	lw      $t3, 0x0028($sp)
	lui     $t6, %hi(weather_snow)
	lw      $t6, %lo(weather_snow)($t6)
	sll     $t2, $t3, 3
	subu    $t2, $t2, $t3
	sll     $t2, $t2, 3
	addu    $t1, $t2, $t6
	lw      $t5, 0x0004($t1)
	li      $t7, 0x3E80
	addu    $t8, $t6, $t2
	subu    $t4, $t7, $t5
	sw      $t4, 0x0004($t8)
.L802E0268:
	lw      $t9, 0x0028($sp)
	lui     $t3, %hi(weather_snow)
	lw      $t3, %lo(weather_snow)($t3)
	sll     $t0, $t9, 3
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t1, $t0, $t3
	lw      $t7, 0x0004($t1)
	slti    $at, $t7, -0x1F40
	beqz    $at, .L802E02C4
	nop
	lw      $t5, 0x0028($sp)
	lui     $t2, %hi(weather_snow)
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t6, $t5, 3
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $t4, $t6, $t2
	lw      $t8, 0x0004($t4)
	li      $t9, -0x3E80
	addu    $t3, $t2, $t6
	subu    $t0, $t9, $t8
	sw      $t0, 0x0004($t3)
.L802E02C4:
	lw      $t1, 0x0028($sp)
	lui     $t5, %hi(weather_snow)
	lw      $t5, %lo(weather_snow)($t5)
	sll     $t7, $t1, 3
	subu    $t7, $t7, $t1
	sll     $t7, $t7, 3
	addu    $t4, $t7, $t5
	lw      $t9, 0x000C($t4)
	slti    $at, $t9, 0x1F41
	bnez    $at, .L802E0320
	nop
	lw      $t8, 0x0028($sp)
	lui     $t6, %hi(weather_snow)
	lw      $t6, %lo(weather_snow)($t6)
	sll     $t2, $t8, 3
	subu    $t2, $t2, $t8
	sll     $t2, $t2, 3
	addu    $t0, $t2, $t6
	lw      $t3, 0x000C($t0)
	li      $t1, 0x3E80
	addu    $t5, $t6, $t2
	subu    $t7, $t1, $t3
	sw      $t7, 0x000C($t5)
.L802E0320:
	lw      $t4, 0x0028($sp)
	lui     $t8, %hi(weather_snow)
	lw      $t8, %lo(weather_snow)($t8)
	sll     $t9, $t4, 3
	subu    $t9, $t9, $t4
	sll     $t9, $t9, 3
	addu    $t0, $t9, $t8
	lw      $t1, 0x000C($t0)
	slti    $at, $t1, -0x1F40
	beqz    $at, .L802E037C
	nop
	lw      $t3, 0x0028($sp)
	lui     $t2, %hi(weather_snow)
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t6, $t3, 3
	subu    $t6, $t6, $t3
	sll     $t6, $t6, 3
	addu    $t7, $t6, $t2
	lw      $t5, 0x000C($t7)
	li      $t4, -0x3E80
	addu    $t8, $t2, $t6
	subu    $t9, $t4, $t5
	sw      $t9, 0x000C($t8)
.L802E037C:
	lw      $t0, 0x0028($sp)
	lui     $t3, %hi(weather_snow)
	lw      $t3, %lo(weather_snow)($t3)
	sll     $t1, $t0, 3
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $t7, $t1, $t3
	lw      $t6, 0x000C($t7)
	lh      $t5, 0x001E($sp)
	lw      $t4, 0x0004($t7)
	mtc1    $t6, $f18
	addiu   $t2, $t5, 0x01F4
	mtc1    $t2, $f4
	cvt.s.w $f18, $f18
	mtc1    $t4, $f10
	addiu   $a3, $sp, 0x0024
	cvt.s.w $f14, $f4
	mfc1    $a2, $f18
	jal     map_80381900
	cvt.s.w $f12, $f10
	trunc.w.s $f6, $f0
	mfc1    $t8, $f6
	nop
	sh      $t8, 0x0022($sp)
	lw      $t0, 0x0024($sp)
	bnez    $t0, .L802E0414
	nop
	lw      $t4, 0x0028($sp)
	lui     $t3, %hi(weather_snow)
	lw      $t3, %lo(weather_snow)($t3)
	sll     $t5, $t4, 3
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 3
	li      $t1, -0x2710
	addu    $t2, $t3, $t5
	sw      $t1, 0x0008($t2)
	b       .L802E047C
	nop
.L802E0414:
	lw      $t7, 0x0024($sp)
	li      $at, 0x0001
	lh      $t6, 0x0000($t7)
	bne     $t6, $at, .L802E0450
	nop
	lw      $t0, 0x0028($sp)
	lui     $t8, %hi(weather_snow)
	lw      $t8, %lo(weather_snow)($t8)
	sll     $t4, $t0, 3
	subu    $t4, $t4, $t0
	lh      $t9, 0x0022($sp)
	sll     $t4, $t4, 3
	addu    $t3, $t8, $t4
	b       .L802E0474
	sw      $t9, 0x0008($t3)
.L802E0450:
	lw      $t2, 0x0028($sp)
	lui     $t1, %hi(weather_snow)
	lw      $t1, %lo(weather_snow)($t1)
	sll     $t7, $t2, 3
	subu    $t7, $t7, $t2
	sll     $t7, $t7, 3
	li      $t5, -0x2710
	addu    $t6, $t1, $t7
	sw      $t5, 0x0008($t6)
.L802E0474:
	b       .L802E047C
	nop
.L802E047C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

weather_lava_802E048C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x0020($sp)
	lw      $t7, 0x0028($sp)
	lh      $t8, 0x0000($t7)
	sh      $t8, 0x001C($sp)
	lw      $t9, 0x0028($sp)
	lh      $t0, 0x0002($t9)
	sh      $t0, 0x001A($sp)
	lw      $t1, 0x0028($sp)
	lh      $t2, 0x0004($t1)
	sh      $t2, 0x0018($sp)
	lui     $t3, %hi(weather_lava_8036143C)
	lw      $t3, %lo(weather_lava_8036143C)($t3)
	sw      $0, 0x0024($sp)
	blez    $t3, .L802E05FC
	nop
.L802E04DC:
	lw      $t4, 0x0024($sp)
	lui     $t6, %hi(weather_snow)
	lw      $t6, %lo(weather_snow)($t6)
	sll     $t5, $t4, 3
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 3
	addu    $t7, $t5, $t6
	lb      $t8, 0x0000($t7)
	bnez    $t8, .L802E0538
	nop
	lw      $a0, 0x0024($sp)
	jal     weather_lava_802E0120
	lw      $a1, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	lui     $t0, %hi(weather_snow)
	lw      $t0, %lo(weather_snow)($t0)
	sll     $t2, $t1, 3
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 3
	li      $t9, 0x0001
	addu    $t3, $t0, $t2
	b       .L802E05DC
	sb      $t9, 0x0000($t3)
.L802E0538:
	lw      $t4, 0x0020($sp)
	andi    $t5, $t4, 0x0001
	bnez    $t5, .L802E05DC
	nop
	lw      $t6, 0x0024($sp)
	lui     $t8, %hi(weather_snow)
	lw      $t8, %lo(weather_snow)($t8)
	sll     $t7, $t6, 3
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	addu    $t1, $t7, $t8
	lh      $t0, 0x0002($t1)
	addiu   $t2, $t0, 0x0001
	sh      $t2, 0x0002($t1)
	lw      $t9, 0x0024($sp)
	lui     $t4, %hi(weather_snow)
	lw      $t4, %lo(weather_snow)($t4)
	sll     $t3, $t9, 3
	subu    $t3, $t3, $t9
	sll     $t3, $t3, 3
	addu    $t5, $t3, $t4
	lh      $t6, 0x0002($t5)
	slti    $at, $t6, 0x0009
	bnez    $at, .L802E05DC
	nop
	lw      $t8, 0x0024($sp)
	lui     $t7, %hi(weather_snow)
	lw      $t7, %lo(weather_snow)($t7)
	sll     $t0, $t8, 3
	subu    $t0, $t0, $t8
	sll     $t0, $t0, 3
	addu    $t2, $t7, $t0
	sb      $0, 0x0000($t2)
	lw      $t9, 0x0024($sp)
	lui     $t1, %hi(weather_snow)
	lw      $t1, %lo(weather_snow)($t1)
	sll     $t3, $t9, 3
	subu    $t3, $t3, $t9
	sll     $t3, $t3, 3
	addu    $t4, $t1, $t3
	sh      $0, 0x0002($t4)
.L802E05DC:
	lw      $t5, 0x0024($sp)
	lui     $t8, %hi(weather_lava_8036143C)
	lw      $t8, %lo(weather_lava_8036143C)($t8)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0024($sp)
	slt     $at, $t6, $t8
	bnez    $at, .L802E04DC
	nop
.L802E05FC:
	jal     o_script_80383CB4
	nop
	li      $at, 0x41800000
	mtc1    $at, $f4
	li      $at, 0x0008
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t0, $f8
	nop
	sll     $t2, $t0, 24
	sra     $t9, $t2, 24
	bne     $t9, $at, .L802E0644
	sb      $t0, 0x001F($sp)
	li.u    $a0, 0x300D0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x300D0081
.L802E0644:
	b       .L802E064C
	nop
.L802E064C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

weather_lava_802E065C:
	addiu   $sp, $sp, -0x0028
	la.u    $t7, weather_lava_80361420
	la.l    $t7, weather_lava_80361420
	lh      $t8, 0x0008($t7)
	lw      $t6, 0x0000($a0)
	subu    $t9, $t6, $t8
	sw      $t9, 0x0024($sp)
	la.u    $t1, weather_lava_80361420
	la.l    $t1, weather_lava_80361420
	lh      $t2, 0x000A($t1)
	lw      $t0, 0x0000($a1)
	subu    $t3, $t0, $t2
	sw      $t3, 0x0020($sp)
	la.u    $t5, weather_lava_80361420
	la.l    $t5, weather_lava_80361420
	lh      $t7, 0x000C($t5)
	lw      $t4, 0x0000($a2)
	subu    $t6, $t4, $t7
	sw      $t6, 0x001C($sp)
	la.u    $t8, weather_lava_80361420
	la.l    $t8, weather_lava_80361420
	lhu     $t9, 0x0010($t8)
	lui     $at, %hi(math_cos)
	sra     $t1, $t9, 4
	sll     $t0, $t1, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0018($sp)
	la.u    $t2, weather_lava_80361420
	la.l    $t2, weather_lava_80361420
	lhu     $t3, 0x0010($t2)
	lui     $at, %hi(math_sin)
	sra     $t5, $t3, 4
	sll     $t4, $t5, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0014($sp)
	la.u    $t7, weather_lava_80361420
	la.l    $t7, weather_lava_80361420
	lh      $t6, 0x0012($t7)
	lui     $at, %hi(math_cos)
	subu    $t8, $0, $t6
	andi    $t9, $t8, 0xFFFF
	sra     $t1, $t9, 4
	sll     $t0, $t1, 2
	addu    $at, $at, $t0
	lwc1    $f8, %lo(math_cos)($at)
	swc1    $f8, 0x0010($sp)
	la.u    $t2, weather_lava_80361420
	la.l    $t2, weather_lava_80361420
	lh      $t3, 0x0012($t2)
	lui     $at, %hi(math_sin)
	subu    $t5, $0, $t3
	andi    $t4, $t5, 0xFFFF
	sra     $t7, $t4, 4
	sll     $t6, $t7, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	swc1    $f10, 0x000C($sp)
	lw      $t8, 0x0024($sp)
	lwc1    $f4, 0x0010($sp)
	lw      $t9, 0x0020($sp)
	mtc1    $t8, $f16
	lwc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x0018($sp)
	cvt.s.w $f18, $f16
	lw      $t1, 0x001C($sp)
	mul.s   $f6, $f18, $f4
	mtc1    $t9, $f18
	mul.s   $f16, $f8, $f10
	cvt.s.w $f4, $f18
	mul.s   $f10, $f16, $f4
	lwc1    $f16, 0x0014($sp)
	mul.s   $f4, $f16, $f8
	sub.s   $f18, $f6, $f10
	mtc1    $t1, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f16, $f4, $f10
	sub.s   $f8, $f18, $f16
	swc1    $f8, 0x0008($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f10, 0x000C($sp)
	lw      $t2, 0x0020($sp)
	mtc1    $t0, $f6
	lwc1    $f16, 0x0018($sp)
	lwc1    $f8, 0x0010($sp)
	cvt.s.w $f4, $f6
	lw      $t3, 0x001C($sp)
	mul.s   $f18, $f4, $f10
	mtc1    $t2, $f4
	mul.s   $f6, $f16, $f8
	cvt.s.w $f10, $f4
	mul.s   $f16, $f6, $f10
	lwc1    $f6, 0x0014($sp)
	mul.s   $f10, $f6, $f8
	add.s   $f4, $f18, $f16
	mtc1    $t3, $f18
	nop
	cvt.s.w $f16, $f18
	mul.s   $f6, $f10, $f16
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lw      $t5, 0x0020($sp)
	lw      $t4, 0x001C($sp)
	lwc1    $f16, 0x0014($sp)
	mtc1    $t5, $f18
	mtc1    $t4, $f8
	lwc1    $f6, 0x0018($sp)
	cvt.s.w $f10, $f18
	cvt.s.w $f18, $f8
	mul.s   $f4, $f10, $f16
	nop
	mul.s   $f10, $f6, $f18
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x0000($sp)
	lwc1    $f8, 0x0008($sp)
	la.u    $t7, weather_lava_80361420
	la.l    $t7, weather_lava_80361420
	trunc.w.s $f6, $f8
	lh      $t6, 0x0008($t7)
	mfc1    $t9, $f6
	nop
	addu    $t1, $t6, $t9
	sw      $t1, 0x0000($a0)
	lwc1    $f18, 0x0004($sp)
	la.u    $t0, weather_lava_80361420
	la.l    $t0, weather_lava_80361420
	trunc.w.s $f4, $f18
	lh      $t2, 0x000A($t0)
	mfc1    $t5, $f4
	nop
	addu    $t4, $t2, $t5
	sw      $t4, 0x0000($a1)
	lwc1    $f10, 0x0000($sp)
	la.u    $t7, weather_lava_80361420
	la.l    $t7, weather_lava_80361420
	trunc.w.s $f16, $f10
	lh      $t8, 0x000C($t7)
	mfc1    $t9, $f16
	nop
	addu    $t1, $t8, $t9
	sw      $t1, 0x0000($a2)
	b       .L802E08A0
	nop
.L802E08A0:
	jr      $ra
	addiu   $sp, $sp, 0x0028

weather_lava_802E08A8:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(weather_snow)
	lw      $t6, %lo(weather_snow)($t6)
	sll     $t7, $a0, 3
	subu    $t7, $t7, $a0
	la.u    $t0, weather_lava_80361420
	la.l    $t0, weather_lava_80361420
	sll     $t7, $t7, 3
	lh      $t1, 0x000A($t0)
	addu    $t8, $t6, $t7
	lw      $t9, 0x001C($t8)
	addiu   $t2, $t1, -0x0064
	slt     $at, $t9, $t2
	beqz    $at, .L802E08EC
	nop
	b       .L802E092C
	move    $v0, $0
.L802E08EC:
	lui     $t4, %hi(weather_snow)
	lw      $t4, %lo(weather_snow)($t4)
	sll     $t3, $a0, 3
	subu    $t3, $t3, $a0
	sll     $t3, $t3, 3
	addu    $t5, $t3, $t4
	lw      $t6, 0x0014($t5)
	slti    $at, $t6, 0x000A
	beqz    $at, .L802E091C
	nop
	b       .L802E092C
	move    $v0, $0
.L802E091C:
	b       .L802E092C
	li      $v0, 0x0001
	b       .L802E092C
	nop
.L802E092C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

weather_lava_802E0934:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(weather_lava_8036143C)
	lw      $t6, %lo(weather_lava_8036143C)($t6)
	sw      $0, 0x001C($sp)
	blez    $t6, .L802E0E0C
	nop
.L802E0950:
	jal     weather_lava_802E08A8
	lw      $a0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lui     $t7, %hi(weather_snow)
	lw      $t7, %lo(weather_snow)($t7)
	sll     $t9, $t8, 3
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t0, $t7, $t9
	sb      $v0, 0x0000($t0)
	lw      $t1, 0x001C($sp)
	lui     $t3, %hi(weather_snow)
	lw      $t3, %lo(weather_snow)($t3)
	sll     $t2, $t1, 3
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 3
	addu    $t4, $t2, $t3
	lb      $t5, 0x0000($t4)
	bnez    $t5, .L802E0C04
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f4
	lw      $t9, 0x001C($sp)
	lui     $t7, %hi(weather_snow)
	mul.s   $f6, $f0, $f4
	lw      $t7, %lo(weather_snow)($t7)
	sll     $t0, $t9, 3
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t1, $t7, $t0
	trunc.w.s $f8, $f6
	mfc1    $t8, $f8
	nop
	sw      $t8, 0x0014($t1)
	jal     o_script_80383CB4
	nop
	li      $at, 0x47800000
	mtc1    $at, $f10
	lw      $t5, 0x001C($sp)
	lui     $t4, %hi(weather_snow)
	mul.s   $f16, $f0, $f10
	lw      $t4, %lo(weather_snow)($t4)
	sll     $t6, $t5, 3
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $t9, $t4, $t6
	trunc.w.s $f18, $f16
	mfc1    $t3, $f18
	nop
	sw      $t3, 0x0010($t9)
	lw      $t7, 0x001C($sp)
	lui     $t8, %hi(weather_snow)
	lw      $t8, %lo(weather_snow)($t8)
	sll     $t0, $t7, 3
	subu    $t0, $t0, $t7
	sll     $t0, $t0, 3
	addu    $t1, $t0, $t8
	lw      $t2, 0x0014($t1)
	addu    $t5, $t8, $t0
	lhu     $t4, 0x0012($t5)
	mtc1    $t2, $f4
	la.u    $t9, weather_lava_80361420
	la.l    $t9, weather_lava_80361420
	cvt.s.w $f6, $f4
	sra     $t6, $t4, 4
	lh      $t7, 0x0002($t9)
	sll     $t3, $t6, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_sin)($at)
	mtc1    $t7, $f16
	mul.s   $f10, $f6, $f8
	cvt.s.w $f18, $f16
	add.s   $f4, $f10, $f18
	trunc.w.s $f6, $f4
	mfc1    $t2, $f6
	nop
	sw      $t2, 0x0004($t5)
	lw      $t8, 0x001C($sp)
	lui     $t4, %hi(weather_snow)
	lw      $t4, %lo(weather_snow)($t4)
	sll     $t0, $t8, 3
	subu    $t0, $t0, $t8
	sll     $t0, $t0, 3
	addu    $t6, $t0, $t4
	lw      $t3, 0x0014($t6)
	addu    $t9, $t4, $t0
	lhu     $t7, 0x0012($t9)
	mtc1    $t3, $f8
	la.u    $t5, weather_lava_80361420
	la.l    $t5, weather_lava_80361420
	cvt.s.w $f16, $f8
	sra     $t1, $t7, 4
	lh      $t8, 0x0006($t5)
	sll     $t2, $t1, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_cos)($at)
	mtc1    $t8, $f4
	mul.s   $f18, $f16, $f10
	cvt.s.w $f6, $f4
	add.s   $f8, $f18, $f6
	trunc.w.s $f16, $f8
	mfc1    $t3, $f16
	nop
	sw      $t3, 0x000C($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f10
	la.u    $t4, weather_lava_80361420
	la.l    $t4, weather_lava_80361420
	lh      $t0, 0x0004($t4)
	mul.s   $f4, $f0, $f10
	li      $at, 0x42480000
	mtc1    $t0, $f8
	mtc1    $at, $f18
	lw      $t5, 0x001C($sp)
	lui     $t2, %hi(weather_snow)
	cvt.s.w $f16, $f8
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t8, $t5, 3
	subu    $t8, $t8, $t5
	sll     $t8, $t8, 3
	sub.s   $f6, $f4, $f18
	addu    $t6, $t2, $t8
	add.s   $f10, $f6, $f16
	trunc.w.s $f4, $f10
	mfc1    $t1, $f4
	nop
	sw      $t1, 0x001C($t6)
	lw      $t3, 0x001C($sp)
	lui     $t4, %hi(weather_snow)
	lw      $t4, %lo(weather_snow)($t4)
	sll     $t9, $t3, 3
	subu    $t9, $t9, $t3
	sll     $t9, $t9, 3
	addu    $t0, $t9, $t4
	lw      $t7, 0x001C($t0)
	addu    $t5, $t4, $t9
	sw      $t7, 0x0008($t5)
	lw      $t8, 0x001C($sp)
	lui     $t2, %hi(weather_snow)
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t1, $t8, 3
	subu    $t1, $t1, $t8
	sll     $t1, $t1, 3
	addu    $t6, $t2, $t1
	sw      $0, 0x0018($t6)
	lw      $t4, 0x001C($sp)
	lui     $t0, %hi(weather_snow)
	lw      $t0, %lo(weather_snow)($t0)
	sll     $t9, $t4, 3
	subu    $t9, $t9, $t4
	sll     $t9, $t9, 3
	li      $t3, 0x0001
	addu    $t7, $t0, $t9
	sb      $t3, 0x0000($t7)
	lw      $t5, 0x001C($sp)
	lui     $t2, %hi(weather_snow)
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t8, $t5, 3
	subu    $t8, $t8, $t5
	sll     $t8, $t8, 3
	addu    $t1, $t8, $t2
	addiu   $a0, $t1, 0x0004
	addiu   $a1, $t1, 0x0008
	jal     weather_lava_802E065C
	addiu   $a2, $t1, 0x000C
	b       .L802E0DEC
	nop
.L802E0C04:
	lw      $t6, 0x001C($sp)
	lui     $t0, %hi(weather_snow)
	lw      $t0, %lo(weather_snow)($t0)
	sll     $t4, $t6, 3
	subu    $t4, $t4, $t6
	sll     $t4, $t4, 3
	addu    $t9, $t4, $t0
	lw      $t3, 0x0014($t9)
	addiu   $t7, $t3, -0x0028
	sw      $t7, 0x0014($t9)
	lw      $t5, 0x001C($sp)
	lui     $t2, %hi(weather_snow)
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t8, $t5, 3
	subu    $t8, $t8, $t5
	sll     $t8, $t8, 3
	addu    $t4, $t2, $t8
	lw      $t0, 0x0014($t4)
	li      $t7, 0x0BB8
	addu    $t1, $t8, $t2
	sll     $t3, $t0, 1
	lw      $t6, 0x0010($t1)
	subu    $t9, $t7, $t3
	sll     $t5, $t9, 16
	sra     $t2, $t5, 16
	addu    $t8, $t6, $t2
	addiu   $t4, $t8, 0x0400
	sw      $t4, 0x0010($t1)
	lw      $t0, 0x001C($sp)
	lui     $t3, %hi(weather_snow)
	lw      $t3, %lo(weather_snow)($t3)
	sll     $t7, $t0, 3
	subu    $t7, $t7, $t0
	sll     $t7, $t7, 3
	addu    $t9, $t7, $t3
	lw      $t5, 0x0014($t9)
	addu    $t6, $t3, $t7
	lhu     $t2, 0x0012($t6)
	mtc1    $t5, $f18
	la.u    $t1, weather_lava_80361420
	la.l    $t1, weather_lava_80361420
	cvt.s.w $f8, $f18
	sra     $t8, $t2, 4
	lh      $t0, 0x0002($t1)
	sll     $t4, $t8, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	mtc1    $t0, $f10
	mul.s   $f16, $f8, $f6
	cvt.s.w $f4, $f10
	add.s   $f18, $f16, $f4
	trunc.w.s $f8, $f18
	mfc1    $t5, $f8
	nop
	sw      $t5, 0x0004($t6)
	lw      $t3, 0x001C($sp)
	lui     $t2, %hi(weather_snow)
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t7, $t3, 3
	subu    $t7, $t7, $t3
	sll     $t7, $t7, 3
	addu    $t8, $t7, $t2
	lw      $t4, 0x0014($t8)
	addu    $t1, $t2, $t7
	lhu     $t0, 0x0012($t1)
	mtc1    $t4, $f6
	la.u    $t6, weather_lava_80361420
	la.l    $t6, weather_lava_80361420
	cvt.s.w $f10, $f6
	sra     $t9, $t0, 4
	lh      $t3, 0x0006($t6)
	sll     $t5, $t9, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t5
	lwc1    $f16, %lo(math_cos)($at)
	mtc1    $t3, $f18
	mul.s   $f4, $f10, $f16
	cvt.s.w $f8, $f18
	add.s   $f6, $f4, $f8
	trunc.w.s $f10, $f6
	mfc1    $t4, $f10
	nop
	sw      $t4, 0x000C($t1)
	lw      $t2, 0x001C($sp)
	lui     $t0, %hi(weather_snow)
	lw      $t0, %lo(weather_snow)($t0)
	sll     $t7, $t2, 3
	subu    $t7, $t7, $t2
	sll     $t7, $t7, 3
	addu    $t6, $t0, $t7
	lh      $t3, 0x0016($t6)
	li      $at, 0x0064
	addu    $t9, $t7, $t0
	div     $0, $t3, $at
	lw      $t5, 0x001C($t9)
	mflo    $t8
	subu    $t4, $0, $t8
	subu    $t1, $t5, $t4
	addiu   $t2, $t1, -0x0028
	sw      $t2, 0x001C($t9)
	lw      $t0, 0x001C($sp)
	lui     $t6, %hi(weather_snow)
	lw      $t6, %lo(weather_snow)($t6)
	sll     $t7, $t0, 3
	subu    $t7, $t7, $t0
	sll     $t7, $t7, 3
	addu    $t3, $t7, $t6
	lw      $t8, 0x001C($t3)
	addu    $t5, $t6, $t7
	sw      $t8, 0x0008($t5)
	lw      $t4, 0x001C($sp)
	lui     $t2, %hi(weather_snow)
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t1, $t4, 3
	subu    $t1, $t1, $t4
	sll     $t1, $t1, 3
	addu    $t9, $t1, $t2
	addiu   $a0, $t9, 0x0004
	addiu   $a1, $t9, 0x0008
	jal     weather_lava_802E065C
	addiu   $a2, $t9, 0x000C
.L802E0DEC:
	lw      $t0, 0x001C($sp)
	lui     $t6, %hi(weather_lava_8036143C)
	lw      $t6, %lo(weather_lava_8036143C)($t6)
	addiu   $t3, $t0, 0x0001
	sw      $t3, 0x001C($sp)
	slt     $at, $t3, $t6
	bnez    $at, .L802E0950
	nop
.L802E0E0C:
	b       .L802E0E14
	nop
.L802E0E14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

weather_lava_802E0E24:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	la.u    $t6, weather_lava_80361420
	la.l    $t6, weather_lava_80361420
	lh      $a1, 0x0002($t6)
	lh      $a2, 0x0006($t6)
	lw      $a0, 0x0020($sp)
	jal     weather_lava_802DFD50
	li      $a3, 0x03E8
	beqz    $v0, .L802E0E90
	nop
	lw      $t8, 0x0020($sp)
	lui     $t7, %hi(weather_snow)
	lw      $t7, %lo(weather_snow)($t7)
	sll     $t9, $t8, 3
	la.u    $t2, weather_lava_80361420
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	la.l    $t2, weather_lava_80361420
	lh      $t3, 0x0004($t2)
	addu    $t0, $t7, $t9
	lw      $t1, 0x0008($t0)
	addiu   $t4, $t3, 0x05DC
	slt     $at, $t4, $t1
	beqz    $at, .L802E0E98
	nop
.L802E0E90:
	b       .L802E0EA8
	move    $v0, $0
.L802E0E98:
	b       .L802E0EA8
	li      $v0, 0x0001
	b       .L802E0EA8
	nop
.L802E0EA8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

weather_lava_802E0EB8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(weather_lava_8036143C)
	lw      $t6, %lo(weather_lava_8036143C)($t6)
	sw      $0, 0x001C($sp)
	blez    $t6, .L802E1220
	nop
.L802E0ED4:
	jal     weather_lava_802E0E24
	lw      $a0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lui     $t7, %hi(weather_snow)
	lw      $t7, %lo(weather_snow)($t7)
	sll     $t9, $t8, 3
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t0, $t7, $t9
	sb      $v0, 0x0000($t0)
	lw      $t1, 0x001C($sp)
	lui     $t3, %hi(weather_snow)
	lw      $t3, %lo(weather_snow)($t3)
	sll     $t2, $t1, 3
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 3
	addu    $t4, $t2, $t3
	lb      $t5, 0x0000($t4)
	bnez    $t5, .L802E10D0
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x43960000
	mtc1    $at, $f4
	lw      $t9, 0x001C($sp)
	lui     $t7, %hi(weather_snow)
	mul.s   $f6, $f0, $f4
	lw      $t7, %lo(weather_snow)($t7)
	sll     $t0, $t9, 3
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t1, $t7, $t0
	trunc.w.s $f8, $f6
	mfc1    $t8, $f8
	nop
	sw      $t8, 0x0014($t1)
	jal     rand
	nop
	lw      $t3, 0x001C($sp)
	lui     $t2, %hi(weather_snow)
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t4, $t3, 3
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addu    $t5, $t2, $t4
	sw      $v0, 0x0010($t5)
	lw      $t6, 0x001C($sp)
	lui     $t7, %hi(weather_snow)
	lw      $t7, %lo(weather_snow)($t7)
	sll     $t9, $t6, 3
	subu    $t9, $t9, $t6
	sll     $t9, $t9, 3
	addu    $t0, $t9, $t7
	lw      $t8, 0x0014($t0)
	addu    $t1, $t7, $t9
	lhu     $t3, 0x0012($t1)
	mtc1    $t8, $f10
	la.u    $t5, weather_lava_80361420
	la.l    $t5, weather_lava_80361420
	cvt.s.w $f16, $f10
	sra     $t2, $t3, 4
	lh      $t6, 0x0002($t5)
	sll     $t4, $t2, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f18, %lo(math_sin)($at)
	mtc1    $t6, $f6
	mul.s   $f4, $f16, $f18
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	trunc.w.s $f16, $f10
	mfc1    $t8, $f16
	nop
	sw      $t8, 0x0004($t1)
	lw      $t7, 0x001C($sp)
	lui     $t3, %hi(weather_snow)
	lw      $t3, %lo(weather_snow)($t3)
	sll     $t9, $t7, 3
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 3
	addu    $t2, $t9, $t3
	lw      $t4, 0x0014($t2)
	addu    $t5, $t3, $t9
	lhu     $t6, 0x0012($t5)
	mtc1    $t4, $f18
	la.u    $t1, weather_lava_80361420
	la.l    $t1, weather_lava_80361420
	cvt.s.w $f6, $f18
	sra     $t0, $t6, 4
	lh      $t7, 0x0006($t1)
	sll     $t8, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	mtc1    $t7, $f10
	mul.s   $f8, $f6, $f4
	cvt.s.w $f16, $f10
	add.s   $f18, $f8, $f16
	trunc.w.s $f6, $f18
	mfc1    $t4, $f6
	nop
	sw      $t4, 0x000C($t5)
	jal     o_script_80383CB4
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f4
	la.u    $t3, weather_lava_80361420
	la.l    $t3, weather_lava_80361420
	lh      $t9, 0x0004($t3)
	mul.s   $f10, $f0, $f4
	li      $at, 0x43480000
	mtc1    $t9, $f18
	mtc1    $at, $f8
	lw      $t1, 0x001C($sp)
	lui     $t8, %hi(weather_snow)
	cvt.s.w $f6, $f18
	lw      $t8, %lo(weather_snow)($t8)
	sll     $t7, $t1, 3
	subu    $t7, $t7, $t1
	sll     $t7, $t7, 3
	sub.s   $f16, $f10, $f8
	addu    $t2, $t8, $t7
	add.s   $f4, $f16, $f6
	trunc.w.s $f10, $f4
	mfc1    $t0, $f10
	b       .L802E1200
	sw      $t0, 0x0008($t2)
.L802E10D0:
	lw      $t4, 0x001C($sp)
	lui     $t3, %hi(weather_snow)
	lw      $t3, %lo(weather_snow)($t3)
	sll     $t5, $t4, 3
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 3
	addu    $t9, $t5, $t3
	lw      $t6, 0x0014($t9)
	addiu   $t1, $t6, 0x000A
	sw      $t1, 0x0014($t9)
	lw      $t8, 0x001C($sp)
	lui     $t0, %hi(weather_snow)
	lw      $t0, %lo(weather_snow)($t0)
	sll     $t7, $t8, 3
	subu    $t7, $t7, $t8
	sll     $t7, $t7, 3
	addu    $t5, $t0, $t7
	lhu     $t3, 0x0012($t5)
	lui     $at, %hi(math_sin)
	addu    $t2, $t7, $t0
	sra     $t6, $t3, 4
	sll     $t1, $t6, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_sin)($at)
	lw      $t4, 0x0004($t2)
	li      $at, 0x41200000
	mtc1    $at, $f6
	mtc1    $t4, $f8
	mul.s   $f4, $f16, $f6
	cvt.s.w $f18, $f8
	add.s   $f10, $f18, $f4
	trunc.w.s $f8, $f10
	mfc1    $t8, $f8
	nop
	sw      $t8, 0x0004($t2)
	lw      $t4, 0x001C($sp)
	lui     $t7, %hi(weather_snow)
	lw      $t7, %lo(weather_snow)($t7)
	sll     $t0, $t4, 3
	subu    $t0, $t0, $t4
	sll     $t0, $t0, 3
	addu    $t6, $t7, $t0
	lhu     $t1, 0x0012($t6)
	lui     $at, %hi(math_cos)
	addu    $t5, $t0, $t7
	sra     $t9, $t1, 4
	sll     $t8, $t9, 2
	addu    $at, $at, $t8
	lwc1    $f18, %lo(math_cos)($at)
	lw      $t3, 0x000C($t5)
	li      $at, 0x41200000
	mtc1    $at, $f4
	mtc1    $t3, $f16
	mul.s   $f10, $f18, $f4
	cvt.s.w $f6, $f16
	add.s   $f8, $f6, $f10
	trunc.w.s $f16, $f8
	mfc1    $t4, $f16
	nop
	sw      $t4, 0x000C($t5)
	lw      $t3, 0x001C($sp)
	lui     $t0, %hi(weather_snow)
	lw      $t0, %lo(weather_snow)($t0)
	sll     $t7, $t3, 3
	subu    $t7, $t7, $t3
	sll     $t7, $t7, 3
	addu    $t9, $t0, $t7
	lw      $t8, 0x0014($t9)
	li      $at, 0x001E
	addu    $t6, $t7, $t0
	div     $0, $t8, $at
	lw      $t1, 0x0008($t6)
	mflo    $t2
	subu    $t4, $t1, $t2
	addiu   $t5, $t4, 0x0032
	sw      $t5, 0x0008($t6)
.L802E1200:
	lw      $t3, 0x001C($sp)
	lui     $t7, %hi(weather_lava_8036143C)
	lw      $t7, %lo(weather_lava_8036143C)($t7)
	addiu   $t0, $t3, 0x0001
	sw      $t0, 0x001C($sp)
	slt     $at, $t0, $t7
	bnez    $at, .L802E0ED4
	nop
.L802E1220:
	b       .L802E1228
	nop
.L802E1228:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

weather_lava_802E1238:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	sltiu   $at, $t6, 0x000F
	beqz    $at, L802E12DC
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(weather_lava_803382D4)
	addu    $at, $at, $t6
	lw      $t6, %lo(weather_lava_803382D4)($at)
	jr      $t6
	nop
.globl L802E126C
L802E126C:
	b       .L802E1404
	move    $v0, $0
.globl L802E1274
L802E1274:
	li      $t7, 0x001E
	lui     $at, %hi(weather_lava_80361438)
	sw      $t7, %lo(weather_lava_80361438)($at)
	li      $t8, 0x001E
	lui     $at, %hi(weather_lava_8036143C)
	sw      $t8, %lo(weather_lava_8036143C)($at)
	b       L802E12DC
	nop
.globl L802E1294
L802E1294:
	li      $t9, 0x000F
	lui     $at, %hi(weather_lava_80361438)
	sw      $t9, %lo(weather_lava_80361438)($at)
	li      $t0, 0x000F
	lui     $at, %hi(weather_lava_8036143C)
	sw      $t0, %lo(weather_lava_8036143C)($at)
	b       L802E12DC
	nop
.globl L802E12B4
L802E12B4:
	li      $t1, 0x003C
	lui     $at, %hi(weather_lava_80361438)
	sw      $t1, %lo(weather_lava_80361438)($at)
	b       L802E12DC
	nop
.globl L802E12C8
L802E12C8:
	li      $t2, 0x003C
	lui     $at, %hi(weather_lava_80361438)
	sw      $t2, %lo(weather_lava_80361438)($at)
	b       L802E12DC
	nop
.globl L802E12DC
L802E12DC:
	lui     $a1, %hi(weather_lava_80361438)
	lw      $a1, %lo(weather_lava_80361438)($a1)
	lui     $a0, %hi(mem_heap)
	lw      $a0, %lo(mem_heap)($a0)
	sll     $t3, $a1, 3
	subu    $t3, $t3, $a1
	sll     $t3, $t3, 3
	jal     heap_alloc
	move    $a1, $t3
	lui     $at, %hi(weather_snow)
	sw      $v0, %lo(weather_snow)($at)
	lui     $t4, %hi(weather_snow)
	lw      $t4, %lo(weather_snow)($t4)
	bnez    $t4, .L802E1320
	nop
	b       .L802E1404
	move    $v0, $0
.L802E1320:
	lui     $a1, %hi(weather_lava_80361438)
	lw      $a1, %lo(weather_lava_80361438)($a1)
	lui     $a0, %hi(weather_snow)
	lw      $a0, %lo(weather_snow)($a0)
	sll     $t5, $a1, 3
	subu    $t5, $t5, $a1
	sll     $t5, $t5, 3
	jal     bzero
	move    $a1, $t5
	la.u    $a0, weather_lava_80361420
	la.l    $a0, weather_lava_80361420
	jal     bzero
	li      $a1, 0x0014
	lw      $t6, 0x0020($sp)
	li      $at, 0x000C
	bne     $t6, $at, .L802E13E8
	nop
	b       .L802E136C
	nop
.L802E136C:
	lui     $t7, %hi(weather_lava_80361438)
	lw      $t7, %lo(weather_lava_80361438)($t7)
	sw      $0, 0x001C($sp)
	blez    $t7, .L802E13E0
	nop
.L802E1380:
	jal     o_script_80383CB4
	nop
	li      $at, 0x40E00000
	mtc1    $at, $f4
	lw      $t1, 0x001C($sp)
	lui     $t0, %hi(weather_snow)
	mul.s   $f6, $f0, $f4
	lw      $t0, %lo(weather_snow)($t0)
	sll     $t2, $t1, 3
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 3
	addu    $t3, $t0, $t2
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sh      $t9, 0x0002($t3)
	lw      $t4, 0x001C($sp)
	lui     $t6, %hi(weather_lava_80361438)
	lw      $t6, %lo(weather_lava_80361438)($t6)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x001C($sp)
	slt     $at, $t5, $t6
	bnez    $at, .L802E1380
	nop
.L802E13E0:
	b       .L802E13E8
	nop
.L802E13E8:
	lw      $t7, 0x0020($sp)
	lui     $at, %hi(weather_snow_80331750)
	sb      $t7, %lo(weather_snow_80331750)($at)
	b       .L802E1404
	li      $v0, 0x0001
	b       .L802E1404
	nop
.L802E1404:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

weather_lava_802E1414:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $s0, 0x0028($sp)
	li      $at, 0x000B
	beq     $s0, $at, .L802E146C
	nop
	li      $at, 0x000C
	beq     $s0, $at, .L802E14D0
	nop
	li      $at, 0x000D
	beq     $s0, $at, .L802E1534
	nop
	li      $at, 0x000E
	beq     $s0, $at, .L802E1598
	nop
	b       .L802E15FC
	nop
.L802E146C:
	jal     weather_lava_802DFE80
	lw      $a0, 0x002C($sp)
	lw      $t7, 0x0030($sp)
	li      $t6, 0x0032
	sh      $t6, 0x0000($t7)
	lw      $t8, 0x0030($sp)
	sh      $0, 0x0002($t8)
	lw      $t9, 0x0030($sp)
	sh      $0, 0x0004($t9)
	lw      $t0, 0x0034($sp)
	sh      $0, 0x0000($t0)
	lw      $t2, 0x0034($sp)
	li      $t1, 0x004B
	sh      $t1, 0x0002($t2)
	lw      $t3, 0x0034($sp)
	sh      $0, 0x0004($t3)
	lw      $t5, 0x0038($sp)
	li      $t4, -0x0032
	sh      $t4, 0x0000($t5)
	lw      $t6, 0x0038($sp)
	sh      $0, 0x0002($t6)
	lw      $t7, 0x0038($sp)
	sh      $0, 0x0004($t7)
	b       .L802E15FC
	nop
.L802E14D0:
	jal     weather_lava_802E048C
	lw      $a0, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	li      $t8, 0x0064
	sh      $t8, 0x0000($t9)
	lw      $t0, 0x0030($sp)
	sh      $0, 0x0002($t0)
	lw      $t1, 0x0030($sp)
	sh      $0, 0x0004($t1)
	lw      $t2, 0x0034($sp)
	sh      $0, 0x0000($t2)
	lw      $t4, 0x0034($sp)
	li      $t3, 0x0096
	sh      $t3, 0x0002($t4)
	lw      $t5, 0x0034($sp)
	sh      $0, 0x0004($t5)
	lw      $t7, 0x0038($sp)
	li      $t6, -0x0064
	sh      $t6, 0x0000($t7)
	lw      $t8, 0x0038($sp)
	sh      $0, 0x0002($t8)
	lw      $t9, 0x0038($sp)
	sh      $0, 0x0004($t9)
	b       .L802E15FC
	nop
.L802E1534:
	jal     weather_lava_802E0934
	nop
	lw      $t1, 0x0030($sp)
	li      $t0, 0x0028
	sh      $t0, 0x0000($t1)
	lw      $t2, 0x0030($sp)
	sh      $0, 0x0002($t2)
	lw      $t3, 0x0030($sp)
	sh      $0, 0x0004($t3)
	lw      $t4, 0x0034($sp)
	sh      $0, 0x0000($t4)
	lw      $t6, 0x0034($sp)
	li      $t5, 0x003C
	sh      $t5, 0x0002($t6)
	lw      $t7, 0x0034($sp)
	sh      $0, 0x0004($t7)
	lw      $t9, 0x0038($sp)
	li      $t8, -0x0028
	sh      $t8, 0x0000($t9)
	lw      $t0, 0x0038($sp)
	sh      $0, 0x0002($t0)
	lw      $t1, 0x0038($sp)
	sh      $0, 0x0004($t1)
	b       .L802E15FC
	nop
.L802E1598:
	jal     weather_lava_802E0EB8
	nop
	lw      $t3, 0x0030($sp)
	li      $t2, 0x0028
	sh      $t2, 0x0000($t3)
	lw      $t4, 0x0030($sp)
	sh      $0, 0x0002($t4)
	lw      $t5, 0x0030($sp)
	sh      $0, 0x0004($t5)
	lw      $t6, 0x0034($sp)
	sh      $0, 0x0000($t6)
	lw      $t8, 0x0034($sp)
	li      $t7, 0x003C
	sh      $t7, 0x0002($t8)
	lw      $t9, 0x0034($sp)
	sh      $0, 0x0004($t9)
	lw      $t1, 0x0038($sp)
	li      $t0, -0x0028
	sh      $t0, 0x0000($t1)
	lw      $t2, 0x0038($sp)
	sh      $0, 0x0002($t2)
	lw      $t3, 0x0038($sp)
	sh      $0, 0x0004($t3)
	b       .L802E15FC
	nop
.L802E15FC:
	b       .L802E1604
	nop
.L802E1604:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

weather_lava_802E1618:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $0, 0x0024($sp)
	jal     gfx_alloc
	li      $a0, 0x00F0
	sw      $v0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	bnez    $t6, .L802E1654
	nop
	b       .L802E1A10
	nop
.L802E1654:
	sw      $0, 0x0024($sp)
.L802E1658:
	lw      $t1, 0x003C($sp)
	lw      $t8, 0x0024($sp)
	lw      $t7, 0x0020($sp)
	lw      $at, 0x0000($t1)
	sll     $t9, $t8, 4
	addu    $t0, $t7, $t9
	sw      $at, 0x0000($t0)
	lw      $t4, 0x0004($t1)
	sw      $t4, 0x0004($t0)
	lw      $at, 0x0008($t1)
	sw      $at, 0x0008($t0)
	lw      $t4, 0x000C($t1)
	sw      $t4, 0x000C($t0)
	lw      $t6, 0x0024($sp)
	li      $at, 0x0003
	lw      $t5, 0x002C($sp)
	div     $0, $t6, $at
	mflo    $t8
	lui     $t3, %hi(weather_snow)
	addu    $t7, $t5, $t8
	lw      $t3, %lo(weather_snow)($t3)
	sll     $t9, $t7, 3
	lw      $t1, 0x0030($sp)
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 3
	addu    $t2, $t3, $t9
	lw      $t0, 0x0004($t2)
	lw      $t8, 0x0020($sp)
	lh      $t4, 0x0000($t1)
	sll     $t7, $t6, 4
	addu    $t3, $t8, $t7
	addu    $t5, $t4, $t0
	sh      $t5, 0x0000($t3)
	lw      $t2, 0x0024($sp)
	li      $at, 0x0003
	lw      $t9, 0x002C($sp)
	div     $0, $t2, $at
	mflo    $t1
	lui     $t6, %hi(weather_snow)
	addu    $t4, $t9, $t1
	lw      $t6, %lo(weather_snow)($t6)
	sll     $t0, $t4, 3
	lw      $t5, 0x0030($sp)
	subu    $t0, $t0, $t4
	sll     $t0, $t0, 3
	addu    $t8, $t6, $t0
	lw      $t7, 0x0008($t8)
	lw      $t1, 0x0020($sp)
	lh      $t3, 0x0002($t5)
	sll     $t4, $t2, 4
	addu    $t6, $t1, $t4
	addu    $t9, $t3, $t7
	sh      $t9, 0x0002($t6)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0003
	lw      $t0, 0x002C($sp)
	div     $0, $t8, $at
	mflo    $t5
	lui     $t2, %hi(weather_snow)
	addu    $t3, $t0, $t5
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t7, $t3, 3
	lw      $t9, 0x0030($sp)
	subu    $t7, $t7, $t3
	sll     $t7, $t7, 3
	addu    $t1, $t2, $t7
	lw      $t4, 0x000C($t1)
	lw      $t5, 0x0020($sp)
	lh      $t6, 0x0004($t9)
	sll     $t3, $t8, 4
	addu    $t2, $t5, $t3
	addu    $t0, $t6, $t4
	sh      $t0, 0x0004($t2)
	lw      $t4, 0x003C($sp)
	lw      $t1, 0x0024($sp)
	lw      $t7, 0x0020($sp)
	lw      $at, 0x0010($t4)
	sll     $t9, $t1, 4
	addu    $t6, $t7, $t9
	sw      $at, 0x0010($t6)
	lw      $t5, 0x0014($t4)
	sw      $t5, 0x0014($t6)
	lw      $at, 0x0018($t4)
	sw      $at, 0x0018($t6)
	lw      $t5, 0x001C($t4)
	sw      $t5, 0x001C($t6)
	lw      $t0, 0x0024($sp)
	li      $at, 0x0003
	lw      $t3, 0x002C($sp)
	div     $0, $t0, $at
	mflo    $t2
	lui     $t9, %hi(weather_snow)
	addu    $t1, $t3, $t2
	lw      $t9, %lo(weather_snow)($t9)
	sll     $t7, $t1, 3
	lw      $t4, 0x0034($sp)
	subu    $t7, $t7, $t1
	sll     $t7, $t7, 3
	addu    $t8, $t9, $t7
	lw      $t6, 0x0004($t8)
	lw      $t2, 0x0020($sp)
	lh      $t5, 0x0000($t4)
	sll     $t1, $t0, 4
	addu    $t9, $t2, $t1
	addu    $t3, $t5, $t6
	sh      $t3, 0x0010($t9)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0003
	lw      $t7, 0x002C($sp)
	div     $0, $t8, $at
	mflo    $t4
	lui     $t0, %hi(weather_snow)
	addu    $t5, $t7, $t4
	lw      $t0, %lo(weather_snow)($t0)
	sll     $t6, $t5, 3
	lw      $t3, 0x0034($sp)
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $t2, $t0, $t6
	lw      $t1, 0x0008($t2)
	lw      $t4, 0x0020($sp)
	lh      $t9, 0x0002($t3)
	sll     $t5, $t8, 4
	addu    $t0, $t4, $t5
	addu    $t7, $t9, $t1
	sh      $t7, 0x0012($t0)
	lw      $t2, 0x0024($sp)
	li      $at, 0x0003
	lw      $t6, 0x002C($sp)
	div     $0, $t2, $at
	mflo    $t3
	lui     $t8, %hi(weather_snow)
	addu    $t9, $t6, $t3
	lw      $t8, %lo(weather_snow)($t8)
	sll     $t1, $t9, 3
	lw      $t7, 0x0034($sp)
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 3
	addu    $t4, $t8, $t1
	lw      $t5, 0x000C($t4)
	lw      $t3, 0x0020($sp)
	lh      $t0, 0x0004($t7)
	sll     $t9, $t2, 4
	addu    $t8, $t3, $t9
	addu    $t6, $t0, $t5
	sh      $t6, 0x0014($t8)
	lw      $t5, 0x003C($sp)
	lw      $t4, 0x0024($sp)
	lw      $t1, 0x0020($sp)
	lw      $at, 0x0020($t5)
	sll     $t7, $t4, 4
	addu    $t0, $t1, $t7
	sw      $at, 0x0020($t0)
	lw      $t3, 0x0024($t5)
	sw      $t3, 0x0024($t0)
	lw      $at, 0x0028($t5)
	sw      $at, 0x0028($t0)
	lw      $t3, 0x002C($t5)
	sw      $t3, 0x002C($t0)
	lw      $t6, 0x0024($sp)
	li      $at, 0x0003
	lw      $t9, 0x002C($sp)
	div     $0, $t6, $at
	mflo    $t8
	lui     $t7, %hi(weather_snow)
	addu    $t4, $t9, $t8
	lw      $t7, %lo(weather_snow)($t7)
	sll     $t1, $t4, 3
	lw      $t5, 0x0038($sp)
	subu    $t1, $t1, $t4
	sll     $t1, $t1, 3
	addu    $t2, $t7, $t1
	lw      $t0, 0x0004($t2)
	lw      $t8, 0x0020($sp)
	lh      $t3, 0x0000($t5)
	sll     $t4, $t6, 4
	addu    $t7, $t8, $t4
	addu    $t9, $t3, $t0
	sh      $t9, 0x0020($t7)
	lw      $t2, 0x0024($sp)
	li      $at, 0x0003
	lw      $t1, 0x002C($sp)
	div     $0, $t2, $at
	mflo    $t5
	lui     $t6, %hi(weather_snow)
	addu    $t3, $t1, $t5
	lw      $t6, %lo(weather_snow)($t6)
	sll     $t0, $t3, 3
	lw      $t9, 0x0038($sp)
	subu    $t0, $t0, $t3
	sll     $t0, $t0, 3
	addu    $t8, $t6, $t0
	lw      $t4, 0x0008($t8)
	lw      $t5, 0x0020($sp)
	lh      $t7, 0x0002($t9)
	sll     $t3, $t2, 4
	addu    $t6, $t5, $t3
	addu    $t1, $t7, $t4
	sh      $t1, 0x0022($t6)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0003
	lw      $t0, 0x002C($sp)
	div     $0, $t8, $at
	mflo    $t9
	lui     $t2, %hi(weather_snow)
	addu    $t7, $t0, $t9
	lw      $t2, %lo(weather_snow)($t2)
	sll     $t4, $t7, 3
	lw      $t1, 0x0038($sp)
	subu    $t4, $t4, $t7
	sll     $t4, $t4, 3
	addu    $t5, $t2, $t4
	lw      $t3, 0x000C($t5)
	lw      $t9, 0x0020($sp)
	lh      $t6, 0x0004($t1)
	sll     $t7, $t8, 4
	addu    $t2, $t9, $t7
	addu    $t0, $t6, $t3
	sh      $t0, 0x0024($t2)
	lw      $t4, 0x0024($sp)
	addiu   $t5, $t4, 0x0003
	slti    $at, $t5, 0x000F
	bnez    $at, .L802E1658
	sw      $t5, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	sw      $t1, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	li.u    $t6, 0x04E000F0
	li.l    $t6, 0x04E000F0
	sw      $t6, 0x0000($t3)
	lw      $t8, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t7)
	b       .L802E1A10
	nop
.L802E1A10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

weather_lava_802E1A20:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lh      $t6, 0x003E($sp)
	lui     $t8, %hi(weather_snow)
	lw      $t8, %lo(weather_snow)($t8)
	sll     $t7, $t6, 3
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	addu    $t9, $t7, $t8
	lh      $t0, 0x0002($t9)
	sh      $t0, 0x0032($sp)
	lw      $s0, 0x0038($sp)
	li      $at, 0x000B
	beq     $s0, $at, .L802E1A94
	nop
	li      $at, 0x000C
	beq     $s0, $at, .L802E1AD0
	nop
	li      $at, 0x000D
	beq     $s0, $at, .L802E1B0C
	nop
	li      $at, 0x000E
	beq     $s0, $at, .L802E1B0C
	nop
	b       .L802E1B28
	nop
.L802E1A94:
	la.u    $a0, txt_weather_flower
	jal     segment_to_virtual
	la.l    $a0, txt_weather_flower
	sw      $v0, 0x0034($sp)
	lh      $t1, 0x003E($sp)
	lui     $t3, %hi(weather_snow)
	lw      $t3, %lo(weather_snow)($t3)
	sll     $t2, $t1, 3
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 3
	addu    $t4, $t2, $t3
	lh      $t5, 0x0002($t4)
	sh      $t5, 0x0032($sp)
	b       .L802E1B28
	nop
.L802E1AD0:
	la.u    $a0, txt_weather_lava
	jal     segment_to_virtual
	la.l    $a0, txt_weather_lava
	sw      $v0, 0x0034($sp)
	lh      $t6, 0x003E($sp)
	lui     $t8, %hi(weather_snow)
	lw      $t8, %lo(weather_snow)($t8)
	sll     $t7, $t6, 3
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	addu    $t9, $t7, $t8
	lh      $t0, 0x0002($t9)
	sh      $t0, 0x0032($sp)
	b       .L802E1B28
	nop
.L802E1B0C:
	la.u    $a0, txt_weather_bubble
	jal     segment_to_virtual
	la.l    $a0, txt_weather_bubble
	sw      $v0, 0x0034($sp)
	sh      $0, 0x0032($sp)
	b       .L802E1B28
	nop
.L802E1B28:
	lui     $t1, %hi(gfx_weather_lava)
	lw      $t1, %lo(gfx_weather_lava)($t1)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_weather_lava)($at)
	sw      $t1, 0x002C($sp)
	lw      $t4, 0x002C($sp)
	li      $t3, 0xFD100000
	sw      $t3, 0x0000($t4)
	lh      $t6, 0x0032($sp)
	lw      $t5, 0x0034($sp)
	lw      $t0, 0x002C($sp)
	sll     $t7, $t6, 2
	addu    $t8, $t5, $t7
	lw      $t9, 0x0000($t8)
	sw      $t9, 0x0004($t0)
	lui     $t1, %hi(gfx_weather_lava)
	lw      $t1, %lo(gfx_weather_lava)($t1)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_weather_lava)($at)
	sw      $t1, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0028($sp)
	la.u    $t6, gfx_weather_lava_txt
	la.l    $t6, gfx_weather_lava_txt
	sw      $t6, 0x0004($t5)
	b       .L802E1BA4
	nop
.L802E1BA4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

weather_lava_802E1BB8:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0068($sp)
	sw      $a1, 0x006C($sp)
	sw      $a2, 0x0070($sp)
	sw      $a3, 0x0074($sp)
	lui     $t6, %hi(weather_lava_8036143C)
	lw      $t6, %lo(weather_lava_8036143C)($t6)
	li      $at, 0x0005
	div     $0, $t6, $at
	mflo    $t7
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	addu    $a0, $t8, $t6
	sll     $t9, $a0, 3
	move    $a0, $t9
	jal     gfx_alloc
	addiu   $a0, $a0, 0x0018
	sw      $v0, 0x0044($sp)
	lw      $t0, 0x0044($sp)
	bnez    $t0, .L802E1C1C
	nop
	b       .L802E1EC8
	move    $v0, $0
.L802E1C1C:
	lw      $t1, 0x0044($sp)
	lui     $at, %hi(gfx_weather_lava)
	sw      $t1, %lo(gfx_weather_lava)($at)
	addiu   $t2, $sp, 0x005E
	sw      $t2, 0x0010($sp)
	lw      $a0, 0x0074($sp)
	lw      $a1, 0x0070($sp)
	addiu   $a2, $sp, 0x0062
	jal     weather_snow_802DE114
	addiu   $a3, $sp, 0x0060
	addiu   $t3, $sp, 0x0048
	sw      $t3, 0x0010($sp)
	lw      $a0, 0x0068($sp)
	lw      $a1, 0x0074($sp)
	addiu   $a2, $sp, 0x0058
	jal     weather_lava_802E1414
	addiu   $a3, $sp, 0x0050
	lh      $t4, 0x005E($sp)
	addiu   $a0, $sp, 0x0058
	addiu   $a1, $sp, 0x0050
	addiu   $a2, $sp, 0x0048
	lh      $a3, 0x0060($sp)
	jal     weather_snow_802DEF2C
	sw      $t4, 0x0010($sp)
	lui     $t5, %hi(gfx_weather_lava)
	lw      $t5, %lo(gfx_weather_lava)($t5)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t7, $t5, 0x0008
	sw      $t7, %lo(gfx_weather_lava)($at)
	sw      $t5, 0x0040($sp)
	lw      $t6, 0x0040($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t6)
	lw      $t0, 0x0040($sp)
	la.u    $t9, gfx_weather_lava_start
	la.l    $t9, gfx_weather_lava_start
	sw      $t9, 0x0004($t0)
	lui     $t1, %hi(weather_lava_8036143C)
	lw      $t1, %lo(weather_lava_8036143C)($t1)
	sw      $0, 0x0064($sp)
	blez    $t1, .L802E1E58
	nop
.L802E1CC4:
	lui     $t2, %hi(gfx_weather_lava)
	lw      $t2, %lo(gfx_weather_lava)($t2)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_weather_lava)($at)
	sw      $t2, 0x003C($sp)
	lw      $t5, 0x003C($sp)
	li      $t4, 0xE7000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x003C($sp)
	sw      $0, 0x0004($t7)
	lw      $a0, 0x0068($sp)
	jal     weather_lava_802E1A20
	lw      $a1, 0x0064($sp)
	lui     $t8, %hi(gfx_weather_lava)
	lw      $t8, %lo(gfx_weather_lava)($t8)
	la.u    $t9, vtx_weather_lava
	la.l    $t9, vtx_weather_lava
	addiu   $t6, $sp, 0x0048
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t0, $t8, 0x0008
	sw      $t0, %lo(gfx_weather_lava)($at)
	sw      $t6, 0x0010($sp)
	sw      $t9, 0x0014($sp)
	lw      $a1, 0x0064($sp)
	addiu   $a2, $sp, 0x0058
	addiu   $a3, $sp, 0x0050
	jal     weather_lava_802E1618
	move    $a0, $t8
	lui     $t1, %hi(gfx_weather_lava)
	lw      $t1, %lo(gfx_weather_lava)($t1)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_weather_lava)($at)
	sw      $t1, 0x0038($sp)
	lw      $t4, 0x0038($sp)
	li      $t3, 0xBF000000
	sw      $t3, 0x0000($t4)
	lw      $t7, 0x0038($sp)
	li      $t5, 0x0A14
	sw      $t5, 0x0004($t7)
	lui     $t6, %hi(gfx_weather_lava)
	lw      $t6, %lo(gfx_weather_lava)($t6)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t9, $t6, 0x0008
	sw      $t9, %lo(gfx_weather_lava)($at)
	sw      $t6, 0x0034($sp)
	lw      $t0, 0x0034($sp)
	li      $t8, 0xBF000000
	sw      $t8, 0x0000($t0)
	lw      $t2, 0x0034($sp)
	li.u    $t1, 0x001E2832
	li.l    $t1, 0x001E2832
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(gfx_weather_lava)
	lw      $t3, %lo(gfx_weather_lava)($t3)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_weather_lava)($at)
	sw      $t3, 0x0030($sp)
	lw      $t7, 0x0030($sp)
	li      $t5, 0xBF000000
	sw      $t5, 0x0000($t7)
	lw      $t9, 0x0030($sp)
	li.u    $t6, 0x003C4650
	li.l    $t6, 0x003C4650
	sw      $t6, 0x0004($t9)
	lui     $t8, %hi(gfx_weather_lava)
	lw      $t8, %lo(gfx_weather_lava)($t8)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t0, $t8, 0x0008
	sw      $t0, %lo(gfx_weather_lava)($at)
	sw      $t8, 0x002C($sp)
	lw      $t2, 0x002C($sp)
	li      $t1, 0xBF000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x002C($sp)
	li.u    $t3, 0x005A646E
	li.l    $t3, 0x005A646E
	sw      $t3, 0x0004($t4)
	lui     $t5, %hi(gfx_weather_lava)
	lw      $t5, %lo(gfx_weather_lava)($t5)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t7, $t5, 0x0008
	sw      $t7, %lo(gfx_weather_lava)($at)
	sw      $t5, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t6, 0xBF000000
	sw      $t6, 0x0000($t9)
	lw      $t0, 0x0028($sp)
	li.u    $t8, 0x0078828C
	li.l    $t8, 0x0078828C
	sw      $t8, 0x0004($t0)
	lw      $t1, 0x0064($sp)
	lui     $t3, %hi(weather_lava_8036143C)
	lw      $t3, %lo(weather_lava_8036143C)($t3)
	addiu   $t2, $t1, 0x0005
	sw      $t2, 0x0064($sp)
	slt     $at, $t2, $t3
	bnez    $at, .L802E1CC4
	nop
.L802E1E58:
	lui     $t4, %hi(gfx_weather_lava)
	lw      $t4, %lo(gfx_weather_lava)($t4)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_weather_lava)($at)
	sw      $t4, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t6)
	lw      $t8, 0x0024($sp)
	la.u    $t9, gfx_weather_end
	la.l    $t9, gfx_weather_end
	sw      $t9, 0x0004($t8)
	lui     $t0, %hi(gfx_weather_lava)
	lw      $t0, %lo(gfx_weather_lava)($t0)
	lui     $at, %hi(gfx_weather_lava)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_weather_lava)($at)
	sw      $t0, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	li      $t2, 0xB8000000
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x0020($sp)
	sw      $0, 0x0004($t4)
	b       .L802E1EC8
	lw      $v0, 0x0044($sp)
	b       .L802E1EC8
	nop
.L802E1EC8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

weather_lava_802E1ED8:
	addiu   $sp, $sp, -0x0008
	move    $a1, $a0
	li      $at, 0x000D
	beq     $a1, $at, .L802E1F00
	nop
	li      $at, 0x000E
	beq     $a1, $at, .L802E1F1C
	nop
	b       .L802E1F38
	nop
.L802E1F00:
	la.u    $t6, weather_lava_80361420
	la.l    $t6, weather_lava_80361420
	lh      $t7, 0x000E($t6)
	lui     $at, %hi(weather_lava_8036143C)
	sw      $t7, %lo(weather_lava_8036143C)($at)
	b       .L802E1F38
	nop
.L802E1F1C:
	la.u    $t8, weather_lava_80361420
	la.l    $t8, weather_lava_80361420
	lh      $t9, 0x000E($t8)
	lui     $at, %hi(weather_lava_8036143C)
	sw      $t9, %lo(weather_lava_8036143C)($at)
	b       .L802E1F38
	nop
.L802E1F38:
	b       .L802E1F40
	nop
.L802E1F40:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl weather_lava_802E1F48
weather_lava_802E1F48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(weather_snow_80331750)
	lb      $t6, %lo(weather_snow_80331750)($t6)
	bnez    $t6, .L802E1F8C
	nop
	jal     weather_lava_802E1238
	lw      $a0, 0x0028($sp)
	bnez    $v0, .L802E1F8C
	nop
	b       .L802E2080
	move    $v0, $0
.L802E1F8C:
	jal     weather_lava_802E1ED8
	lw      $a0, 0x0028($sp)
	lui     $t7, %hi(weather_lava_8036143C)
	lw      $t7, %lo(weather_lava_8036143C)($t7)
	bnez    $t7, .L802E1FAC
	nop
	b       .L802E2080
	move    $v0, $0
.L802E1FAC:
	lw      $s0, 0x0028($sp)
	li      $at, 0x000B
	beq     $s0, $at, .L802E1FE8
	nop
	li      $at, 0x000C
	beq     $s0, $at, .L802E2008
	nop
	li      $at, 0x000D
	beq     $s0, $at, .L802E2028
	nop
	li      $at, 0x000E
	beq     $s0, $at, .L802E2048
	nop
	b       .L802E2068
	nop
.L802E1FE8:
	li      $a0, 0x000B
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0034($sp)
	jal     weather_lava_802E1BB8
	lw      $a3, 0x0030($sp)
	sw      $v0, 0x0024($sp)
	b       .L802E2070
	nop
.L802E2008:
	li      $a0, 0x000C
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0034($sp)
	jal     weather_lava_802E1BB8
	lw      $a3, 0x0030($sp)
	sw      $v0, 0x0024($sp)
	b       .L802E2070
	nop
.L802E2028:
	li      $a0, 0x000D
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0034($sp)
	jal     weather_lava_802E1BB8
	lw      $a3, 0x0030($sp)
	sw      $v0, 0x0024($sp)
	b       .L802E2070
	nop
.L802E2048:
	li      $a0, 0x000E
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0034($sp)
	jal     weather_lava_802E1BB8
	lw      $a3, 0x0030($sp)
	sw      $v0, 0x0024($sp)
	b       .L802E2070
	nop
.L802E2068:
	b       .L802E2080
	move    $v0, $0
.L802E2070:
	b       .L802E2080
	lw      $v0, 0x0024($sp)
	b       .L802E2080
	nop
.L802E2080:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

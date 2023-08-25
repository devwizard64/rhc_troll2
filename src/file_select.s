.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl file_select_80170280
file_select_80170280:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x8000
	sw      $t6, 0x00D4($t7)
	li      $at, 0x41100000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0108($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl file_select_801702B8
file_select_801702B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41100000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	b       .L801702D8
	nop
.L801702D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

file_select_801702E8:
	addiu   $sp, $sp, -0x0018
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	sw      $a2, 0x0020($sp)
	lui     $at, %hi(file_select_801A7F40)
	lwc1    $f4, %lo(file_select_801A7F40)($at)
	swc1    $f4, 0x0014($sp)
	mtc1    $a0, $f6
	li      $at, 0x40640000
	mtc1    $at, $f17
	cvt.s.w $f8, $f6
	mtc1    $0, $f16
	lwc1    $f6, 0x0020($sp)
	lwc1    $f4, 0x0014($sp)
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f16
	nop
	mul.s   $f8, $f4, $f6
	cvt.d.s $f10, $f8
	div.d   $f16, $f18, $f10
	cvt.s.d $f4, $f16
	swc1    $f4, 0x0010($sp)
	mtc1    $a1, $f6
	li      $at, 0x405E0000
	mtc1    $at, $f11
	cvt.s.w $f8, $f6
	mtc1    $0, $f10
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f4, 0x0014($sp)
	li      $at, 0x40800000
	cvt.d.s $f18, $f8
	mul.d   $f16, $f18, $f10
	mtc1    $at, $f18
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0020($sp)
	div.s   $f10, $f8, $f18
	mul.s   $f6, $f10, $f4
	cvt.d.s $f8, $f6
	div.d   $f18, $f16, $f8
	cvt.s.d $f10, $f18
	swc1    $f10, 0x000C($sp)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0010($sp)
	add.s   $f16, $f4, $f6
	trunc.w.s $f8, $f16
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x000A($sp)
	li      $at, 0x41C80000
	mtc1    $at, $f10
	lwc1    $f18, 0x0010($sp)
	sub.s   $f4, $f18, $f10
	trunc.w.s $f6, $f4
	mfc1    $t9, $f6
	nop
	sh      $t9, 0x0008($sp)
	li      $at, 0x41A80000
	mtc1    $at, $f8
	lwc1    $f16, 0x000C($sp)
	add.s   $f18, $f16, $f8
	trunc.w.s $f10, $f18
	mfc1    $t1, $f10
	nop
	sh      $t1, 0x0006($sp)
	li      $at, 0x41A80000
	mtc1    $at, $f6
	lwc1    $f4, 0x000C($sp)
	sub.s   $f16, $f4, $f6
	trunc.w.s $f8, $f16
	mfc1    $t3, $f8
	nop
	sh      $t3, 0x0004($sp)
	la.u    $t4, file_select_801A7D28
	la.l    $t4, file_select_801A7D28
	lh      $t5, 0x0000($t4)
	lh      $t6, 0x000A($sp)
	slt     $at, $t5, $t6
	beqz    $at, .L80170470
	nop
	lh      $t7, 0x0008($sp)
	slt     $at, $t7, $t5
	beqz    $at, .L80170470
	nop
	lh      $t8, 0x0002($t4)
	lh      $t9, 0x0006($sp)
	slt     $at, $t8, $t9
	beqz    $at, .L80170470
	nop
	lh      $t0, 0x0004($sp)
	slt     $at, $t0, $t8
	beqz    $at, .L80170470
	nop
	b       .L80170480
	li      $v0, 0x0001
.L80170470:
	b       .L80170480
	move    $v0, $0
	b       .L80170480
	nop
.L80170480:
	jr      $ra
	addiu   $sp, $sp, 0x0018

file_select_80170488:
	lw      $t6, 0x00F8($a0)
	slti    $at, $t6, 0x0010
	beqz    $at, .L801704A4
	nop
	lw      $t7, 0x00D4($a0)
	addiu   $t8, $t7, 0x0800
	sw      $t8, 0x00D4($a0)
.L801704A4:
	lw      $t9, 0x00F8($a0)
	slti    $at, $t9, 0x0008
	beqz    $at, .L801704C0
	nop
	lw      $t0, 0x00D0($a0)
	addiu   $t1, $t0, 0x0800
	sw      $t1, 0x00D0($a0)
.L801704C0:
	lw      $t2, 0x00F8($a0)
	slti    $at, $t2, 0x0008
	bnez    $at, .L801704EC
	nop
	lw      $t3, 0x00F8($a0)
	slti    $at, $t3, 0x0010
	beqz    $at, .L801704EC
	nop
	lw      $t4, 0x00D0($a0)
	addiu   $t5, $t4, -0x0800
	sw      $t5, 0x00D0($a0)
.L801704EC:
	lwc1    $f4, 0x00FC($a0)
	li      $at, 0x40300000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	lwc1    $f16, 0x0138($a0)
	div.d   $f10, $f6, $f8
	cvt.d.s $f18, $f16
	sub.d   $f4, $f18, $f10
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0138($a0)
	lwc1    $f8, 0x0100($a0)
	li      $at, 0x40300000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f8
	lwc1    $f4, 0x013C($a0)
	div.d   $f10, $f16, $f18
	cvt.d.s $f6, $f4
	sub.d   $f8, $f6, $f10
	cvt.s.d $f16, $f8
	swc1    $f16, 0x013C($a0)
	lwc1    $f6, 0x0104($a0)
	lui     $at, %hi(file_select_801A7F48)
	ldc1    $f8, %lo(file_select_801A7F48)($at)
	cvt.d.s $f10, $f6
	lwc1    $f18, 0x00A8($a0)
	add.d   $f16, $f10, $f8
	cvt.d.s $f4, $f18
	c.lt.d  $f4, $f16
	nop
	bc1f    .L8017058C
	nop
	lwc1    $f18, 0x0140($a0)
	lui     $at, %hi(file_select_801A7F50)
	ldc1    $f10, %lo(file_select_801A7F50)($at)
	cvt.d.s $f6, $f18
	add.d   $f8, $f6, $f10
	cvt.s.d $f4, $f8
	swc1    $f4, 0x0140($a0)
.L8017058C:
	lw      $t6, 0x00F8($a0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x00F8($a0)
	lw      $t8, 0x00F8($a0)
	li      $at, 0x0010
	bne     $t8, $at, .L801705CC
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0138($a0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x013C($a0)
	li      $t9, 0x0002
	sw      $t9, 0x00F4($a0)
	sw      $0, 0x00F8($a0)
.L801705CC:
	jr      $ra
	nop
	jr      $ra
	nop

file_select_801705DC:
	lw      $t6, 0x00F8($a0)
	slti    $at, $t6, 0x0010
	beqz    $at, .L801705F8
	nop
	lw      $t7, 0x00D4($a0)
	addiu   $t8, $t7, -0x0800
	sw      $t8, 0x00D4($a0)
.L801705F8:
	lw      $t9, 0x00F8($a0)
	slti    $at, $t9, 0x0008
	beqz    $at, .L80170614
	nop
	lw      $t0, 0x00D0($a0)
	addiu   $t1, $t0, -0x0800
	sw      $t1, 0x00D0($a0)
.L80170614:
	lw      $t2, 0x00F8($a0)
	slti    $at, $t2, 0x0008
	bnez    $at, .L80170640
	nop
	lw      $t3, 0x00F8($a0)
	slti    $at, $t3, 0x0010
	beqz    $at, .L80170640
	nop
	lw      $t4, 0x00D0($a0)
	addiu   $t5, $t4, 0x0800
	sw      $t5, 0x00D0($a0)
.L80170640:
	lwc1    $f4, 0x00FC($a0)
	li      $at, 0x40300000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	lwc1    $f16, 0x0138($a0)
	div.d   $f10, $f6, $f8
	cvt.d.s $f18, $f16
	add.d   $f4, $f18, $f10
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0138($a0)
	lwc1    $f8, 0x0100($a0)
	li      $at, 0x40300000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f8
	lwc1    $f4, 0x013C($a0)
	div.d   $f10, $f16, $f18
	cvt.d.s $f6, $f4
	add.d   $f8, $f6, $f10
	cvt.s.d $f16, $f8
	swc1    $f16, 0x013C($a0)
	lwc1    $f18, 0x00A8($a0)
	lwc1    $f4, 0x0104($a0)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L801706CC
	nop
	lwc1    $f6, 0x0140($a0)
	lui     $at, %hi(file_select_801A7F58)
	ldc1    $f8, %lo(file_select_801A7F58)($at)
	cvt.d.s $f10, $f6
	sub.d   $f16, $f10, $f8
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0140($a0)
.L801706CC:
	lw      $t6, 0x00F8($a0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x00F8($a0)
	lw      $t8, 0x00F8($a0)
	li      $at, 0x0010
	bne     $t8, $at, .L80170700
	nop
	lwc1    $f4, 0x00FC($a0)
	swc1    $f4, 0x0138($a0)
	lwc1    $f6, 0x0100($a0)
	swc1    $f6, 0x013C($a0)
	sw      $0, 0x00F4($a0)
	sw      $0, 0x00F8($a0)
.L80170700:
	jr      $ra
	nop
	jr      $ra
	nop

file_select_80170710:
	lw      $t6, 0x00F8($a0)
	slti    $at, $t6, 0x0010
	beqz    $at, .L8017072C
	nop
	lw      $t7, 0x00D4($a0)
	addiu   $t8, $t7, 0x0800
	sw      $t8, 0x00D4($a0)
.L8017072C:
	lw      $t9, 0x00F8($a0)
	slti    $at, $t9, 0x0008
	beqz    $at, .L80170748
	nop
	lw      $t0, 0x00D0($a0)
	addiu   $t1, $t0, 0x0800
	sw      $t1, 0x00D0($a0)
.L80170748:
	lw      $t2, 0x00F8($a0)
	slti    $at, $t2, 0x0008
	bnez    $at, .L80170774
	nop
	lw      $t3, 0x00F8($a0)
	slti    $at, $t3, 0x0010
	beqz    $at, .L80170774
	nop
	lw      $t4, 0x00D0($a0)
	addiu   $t5, $t4, -0x0800
	sw      $t5, 0x00D0($a0)
.L80170774:
	lwc1    $f4, 0x00FC($a0)
	li      $at, 0x40300000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	lwc1    $f16, 0x0138($a0)
	div.d   $f10, $f6, $f8
	cvt.d.s $f18, $f16
	sub.d   $f4, $f18, $f10
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0138($a0)
	lwc1    $f8, 0x0100($a0)
	li      $at, 0x40300000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f8
	lwc1    $f4, 0x013C($a0)
	div.d   $f10, $f16, $f18
	cvt.d.s $f6, $f4
	sub.d   $f8, $f6, $f10
	cvt.s.d $f16, $f8
	swc1    $f16, 0x013C($a0)
	lwc1    $f18, 0x0140($a0)
	lui     $at, %hi(file_select_801A7F60)
	ldc1    $f6, %lo(file_select_801A7F60)($at)
	cvt.d.s $f4, $f18
	sub.d   $f10, $f4, $f6
	cvt.s.d $f8, $f10
	swc1    $f8, 0x0140($a0)
	lw      $t6, 0x00F8($a0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x00F8($a0)
	lw      $t8, 0x00F8($a0)
	li      $at, 0x0010
	bne     $t8, $at, .L80170828
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0138($a0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x013C($a0)
	li      $t9, 0x0002
	sw      $t9, 0x00F4($a0)
	sw      $0, 0x00F8($a0)
.L80170828:
	jr      $ra
	nop
	jr      $ra
	nop

file_select_80170838:
	lw      $t6, 0x00F8($a0)
	slti    $at, $t6, 0x0010
	beqz    $at, .L80170854
	nop
	lw      $t7, 0x00D4($a0)
	addiu   $t8, $t7, -0x0800
	sw      $t8, 0x00D4($a0)
.L80170854:
	lw      $t9, 0x00F8($a0)
	slti    $at, $t9, 0x0008
	beqz    $at, .L80170870
	nop
	lw      $t0, 0x00D0($a0)
	addiu   $t1, $t0, -0x0800
	sw      $t1, 0x00D0($a0)
.L80170870:
	lw      $t2, 0x00F8($a0)
	slti    $at, $t2, 0x0008
	bnez    $at, .L8017089C
	nop
	lw      $t3, 0x00F8($a0)
	slti    $at, $t3, 0x0010
	beqz    $at, .L8017089C
	nop
	lw      $t4, 0x00D0($a0)
	addiu   $t5, $t4, 0x0800
	sw      $t5, 0x00D0($a0)
.L8017089C:
	lwc1    $f4, 0x00FC($a0)
	li      $at, 0x40300000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	lwc1    $f16, 0x0138($a0)
	div.d   $f10, $f6, $f8
	cvt.d.s $f18, $f16
	add.d   $f4, $f18, $f10
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0138($a0)
	lwc1    $f8, 0x0100($a0)
	li      $at, 0x40300000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f8
	lwc1    $f4, 0x013C($a0)
	div.d   $f10, $f16, $f18
	cvt.d.s $f6, $f4
	add.d   $f8, $f6, $f10
	cvt.s.d $f16, $f8
	swc1    $f16, 0x013C($a0)
	lwc1    $f18, 0x00A8($a0)
	lwc1    $f4, 0x0104($a0)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L80170928
	nop
	lwc1    $f6, 0x0140($a0)
	lui     $at, %hi(file_select_801A7F68)
	ldc1    $f8, %lo(file_select_801A7F68)($at)
	cvt.d.s $f10, $f6
	add.d   $f16, $f10, $f8
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0140($a0)
.L80170928:
	lw      $t6, 0x00F8($a0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x00F8($a0)
	lw      $t8, 0x00F8($a0)
	li      $at, 0x0010
	bne     $t8, $at, .L8017095C
	nop
	lwc1    $f4, 0x00FC($a0)
	swc1    $f4, 0x0138($a0)
	lwc1    $f6, 0x0100($a0)
	swc1    $f6, 0x013C($a0)
	sw      $0, 0x00F4($a0)
	sw      $0, 0x00F8($a0)
.L8017095C:
	jr      $ra
	nop
	jr      $ra
	nop

file_select_8017096C:
	lui     $t6, %hi(file_select_801A7D14)
	lb      $t6, %lo(file_select_801A7D14)($t6)
	li      $at, 0x0001
	bne     $t6, $at, .L801709D0
	nop
	lw      $t7, 0x00F8($a0)
	slti    $at, $t7, 0x0004
	beqz    $at, .L801709A4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0140($a0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0140($a0)
.L801709A4:
	lw      $t8, 0x00F8($a0)
	slti    $at, $t8, 0x0004
	bnez    $at, .L801709C8
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0140($a0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0140($a0)
.L801709C8:
	b       .L80170A18
	nop
.L801709D0:
	lw      $t9, 0x00F8($a0)
	slti    $at, $t9, 0x0004
	beqz    $at, .L801709F4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0140($a0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0140($a0)
.L801709F4:
	lw      $t0, 0x00F8($a0)
	slti    $at, $t0, 0x0004
	bnez    $at, .L80170A18
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0140($a0)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0140($a0)
.L80170A18:
	lw      $t1, 0x00F8($a0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00F8($a0)
	lw      $t3, 0x00F8($a0)
	li      $at, 0x0008
	bne     $t3, $at, .L80170A3C
	nop
	sw      $0, 0x00F4($a0)
	sw      $0, 0x00F8($a0)
.L80170A3C:
	jr      $ra
	nop
	jr      $ra
	nop

file_select_80170A4C:
	lwc1    $f4, 0x0108($a0)
	lui     $at, %hi(file_select_801A7F70)
	ldc1    $f8, %lo(file_select_801A7F70)($at)
	cvt.d.s $f6, $f4
	add.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0108($a0)
	lw      $t6, 0x00F8($a0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x00F8($a0)
	lw      $t8, 0x00F8($a0)
	li      $at, 0x000A
	bne     $t8, $at, .L80170A8C
	nop
	sw      $0, 0x00F4($a0)
	sw      $0, 0x00F8($a0)
.L80170A8C:
	jr      $ra
	nop
	jr      $ra
	nop

file_select_80170A9C:
	lwc1    $f4, 0x0108($a0)
	lui     $at, %hi(file_select_801A7F78)
	ldc1    $f8, %lo(file_select_801A7F78)($at)
	cvt.d.s $f6, $f4
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0108($a0)
	lw      $t6, 0x00F8($a0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x00F8($a0)
	lw      $t8, 0x00F8($a0)
	li      $at, 0x000A
	bne     $t8, $at, .L80170ADC
	nop
	sw      $0, 0x00F4($a0)
	sw      $0, 0x00F8($a0)
.L80170ADC:
	jr      $ra
	nop
	jr      $ra
	nop

.globl file_select_80170AEC
file_select_80170AEC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0138($t6)
	swc1    $f4, 0x00FC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x013C($t7)
	swc1    $f6, 0x0100($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl file_select_80170B1C
file_select_80170B1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	sltiu   $at, $t7, 0x0007
	beqz    $at, .L80170C8C
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(file_select_801A7F80)
	addu    $at, $at, $t7
	lw      $t7, %lo(file_select_801A7F80)($at)
	jr      $t7
	nop
.globl L80170B54
L80170B54:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A8($t8)
	swc1    $f4, 0x0104($t8)
	b       .L80170C8C
	nop
.globl L80170B6C
L80170B6C:
	lui     $t9, %hi(file_select_801A7D14)
	lb      $t9, %lo(file_select_801A7D14)($t9)
	li      $at, 0x0001
	bne     $t9, $at, .L80170B8C
	nop
	lui     $a0, %hi(object)
	jal     file_select_80170488
	lw      $a0, %lo(object)($a0)
.L80170B8C:
	lui     $t0, %hi(file_select_801A7D14)
	lb      $t0, %lo(file_select_801A7D14)($t0)
	li      $at, 0x0002
	bne     $t0, $at, .L80170BAC
	nop
	lui     $a0, %hi(object)
	jal     file_select_80170710
	lw      $a0, %lo(object)($a0)
.L80170BAC:
	lui     $at, %hi(file_select_801A7D18)
	sb      $0, %lo(file_select_801A7D18)($at)
	li      $t1, 0x0004
	lui     $at, %hi(file_select_801A7D24)
	sh      $t1, %lo(file_select_801A7D24)($at)
	b       .L80170C8C
	nop
.globl L80170BC8
L80170BC8:
	b       .L80170C8C
	nop
.globl L80170BD0
L80170BD0:
	lui     $t2, %hi(file_select_801A7D14)
	lb      $t2, %lo(file_select_801A7D14)($t2)
	li      $at, 0x0001
	bne     $t2, $at, .L80170BF0
	nop
	lui     $a0, %hi(object)
	jal     file_select_801705DC
	lw      $a0, %lo(object)($a0)
.L80170BF0:
	lui     $t3, %hi(file_select_801A7D14)
	lb      $t3, %lo(file_select_801A7D14)($t3)
	li      $at, 0x0002
	bne     $t3, $at, .L80170C10
	nop
	lui     $a0, %hi(object)
	jal     file_select_80170838
	lw      $a0, %lo(object)($a0)
.L80170C10:
	lui     $at, %hi(file_select_801A7D18)
	sb      $0, %lo(file_select_801A7D18)($at)
	li      $t4, 0x0004
	lui     $at, %hi(file_select_801A7D24)
	sh      $t4, %lo(file_select_801A7D24)($at)
	b       .L80170C8C
	nop
.globl L80170C2C
L80170C2C:
	lui     $a0, %hi(object)
	jal     file_select_8017096C
	lw      $a0, %lo(object)($a0)
	li      $t5, 0x0004
	lui     $at, %hi(file_select_801A7D24)
	sh      $t5, %lo(file_select_801A7D24)($at)
	b       .L80170C8C
	nop
.globl L80170C4C
L80170C4C:
	lui     $a0, %hi(object)
	jal     file_select_80170A4C
	lw      $a0, %lo(object)($a0)
	li      $t6, 0x0004
	lui     $at, %hi(file_select_801A7D24)
	sh      $t6, %lo(file_select_801A7D24)($at)
	b       .L80170C8C
	nop
.globl L80170C6C
L80170C6C:
	lui     $a0, %hi(object)
	jal     file_select_80170A9C
	lw      $a0, %lo(object)($a0)
	li      $t7, 0x0004
	lui     $at, %hi(file_select_801A7D24)
	sh      $t7, %lo(file_select_801A7D24)($at)
	b       .L80170C8C
	nop
.L80170C8C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x0108($t8)
	b       .L80170CA4
	nop
.L80170CA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

file_select_80170CB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0002
	lw      $t7, 0x00F4($t6)
	bne     $t7, $at, .L80170D0C
	nop
	lui     $t8, %hi(file_select_801A7D24)
	lh      $t8, %lo(file_select_801A7D24)($t8)
	li      $at, 0x0002
	bne     $t8, $at, .L80170D0C
	nop
	li.u    $a0, 0x70070081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70070081
	lw      $t0, 0x0018($sp)
	li      $t9, 0x0003
	sw      $t9, 0x00F4($t0)
.L80170D0C:
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x00F4($t1)
	bnez    $t2, .L80170D48
	nop
	lb      $t3, 0x001F($sp)
	lui     $at, %hi(file_select_801A7D10)
	sb      $t3, %lo(file_select_801A7D10)($at)
	lui     $t4, %hi(file_select_801A7D14)
	lb      $t4, %lo(file_select_801A7D14)($t4)
	li      $at, 0x0002
	bne     $t4, $at, .L80170D48
	nop
	li      $t5, 0x0001
	lui     $at, %hi(file_select_801A7D14)
	sb      $t5, %lo(file_select_801A7D14)($at)
.L80170D48:
	b       .L80170D50
	nop
.L80170D50:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

file_select_80170D60:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	jal     save_file_isactive
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, .L80170DC8
	nop
	la.u    $a2, o_13002FE4
	li      $t6, 0x0137
	li      $t7, -0x0064
	li      $t8, -0x8000
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, 0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	b       .L80170E0C
	sw      $v0, 0x001C($t9)
.L80170DC8:
	la.u    $a2, o_13002FE4
	li      $t0, 0x0137
	li      $t1, -0x0064
	li      $t2, -0x8000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, 0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	sw      $v0, 0x001C($t3)
.L80170E0C:
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	lui     $at, %hi(file_select_801A7F9C)
	lwc1    $f4, %lo(file_select_801A7F9C)($at)
	lw      $t5, 0x001C($t4)
	swc1    $f4, 0x0108($t5)
	jal     save_file_isactive
	li      $a0, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, .L80170E80
	nop
	la.u    $a2, o_13002FE4
	li      $t6, 0x0137
	li      $t7, -0x0064
	li      $t8, -0x8000
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, -0x00A6
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	b       .L80170EC4
	sw      $v0, 0x0020($t9)
.L80170E80:
	la.u    $a2, o_13002FE4
	li      $t0, 0x0137
	li      $t1, -0x0064
	li      $t2, -0x8000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, -0x00A6
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	sw      $v0, 0x0020($t3)
.L80170EC4:
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FA0)
	lwc1    $f6, %lo(file_select_801A7FA0)($at)
	lw      $t5, 0x0020($t4)
	swc1    $f6, 0x0108($t5)
	jal     save_file_isactive
	li      $a0, 0x0002
	li      $at, 0x0001
	bne     $v0, $at, .L80170F34
	nop
	la.u    $a2, o_13002FE4
	li      $t6, -0x0064
	li      $t7, -0x8000
	sw      $t7, 0x001C($sp)
	sw      $t6, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, 0x02C7
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	b       .L80170F74
	sw      $v0, 0x0024($t8)
.L80170F34:
	la.u    $a2, o_13002FE4
	li      $t9, -0x0064
	li      $t0, -0x8000
	sw      $t0, 0x001C($sp)
	sw      $t9, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, 0x02C7
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	sw      $v0, 0x0024($t1)
.L80170F74:
	la.u    $t2, file_select_801B99F8
	la.l    $t2, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FA4)
	lwc1    $f8, %lo(file_select_801A7FA4)($at)
	lw      $t3, 0x0024($t2)
	swc1    $f8, 0x0108($t3)
	jal     save_file_isactive
	li      $a0, 0x0003
	li      $at, 0x0001
	bne     $v0, $at, .L80170FE4
	nop
	la.u    $a2, o_13002FE4
	li      $t4, -0x0064
	li      $t5, -0x8000
	sw      $t5, 0x001C($sp)
	sw      $t4, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, -0x00A6
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	b       .L80171024
	sw      $v0, 0x0028($t6)
.L80170FE4:
	la.u    $a2, o_13002FE4
	li      $t7, -0x0064
	li      $t8, -0x8000
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, -0x00A6
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	sw      $v0, 0x0028($t9)
.L80171024:
	la.u    $t0, file_select_801B99F8
	la.l    $t0, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FA8)
	lwc1    $f10, %lo(file_select_801A7FA8)($at)
	lw      $t1, 0x0028($t0)
	swc1    $f10, 0x0108($t1)
	la.u    $a2, o_13002FE4
	li      $t2, -0x0184
	li      $t3, -0x0064
	li      $t4, -0x8000
	sw      $t4, 0x001C($sp)
	sw      $t3, 0x0014($sp)
	sw      $t2, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0006
	li      $a3, 0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t5, file_select_801B99F8
	la.l    $t5, file_select_801B99F8
	sw      $v0, 0x002C($t5)
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FAC)
	lwc1    $f16, %lo(file_select_801A7FAC)($at)
	lw      $t7, 0x002C($t6)
	swc1    $f16, 0x0108($t7)
	la.u    $a2, o_13002FE4
	li      $t8, -0x0184
	li      $t9, -0x0064
	li      $t0, -0x8000
	sw      $t0, 0x001C($sp)
	sw      $t9, 0x0014($sp)
	sw      $t8, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0005
	move    $a3, $0
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	sw      $v0, 0x0030($t1)
	la.u    $t2, file_select_801B99F8
	la.l    $t2, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FB0)
	lwc1    $f18, %lo(file_select_801A7FB0)($at)
	lw      $t3, 0x0030($t2)
	swc1    $f18, 0x0108($t3)
	la.u    $a2, o_13002FE4
	li      $t4, -0x0184
	li      $t5, -0x0064
	li      $t6, -0x8000
	sw      $t6, 0x001C($sp)
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0004
	li      $a3, -0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t7, file_select_801B99F8
	la.l    $t7, file_select_801B99F8
	sw      $v0, 0x0034($t7)
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FB4)
	lwc1    $f4, %lo(file_select_801A7FB4)($at)
	lw      $t9, 0x0034($t8)
	swc1    $f4, 0x0108($t9)
	b       .L80171158
	nop
.L80171158:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

file_select_80171168:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0002
	lw      $t7, 0x00F4($t6)
	bne     $t7, $at, .L80171364
	nop
	li      $t8, 0x0007
	sw      $t8, 0x001C($sp)
.L80171190:
	lw      $t9, 0x001C($sp)
	lui     $t1, %hi(file_select_801B99F8)
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(file_select_801B99F8)($t1)
	lwc1    $f4, 0x00A0($t1)
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x001A($sp)
	lw      $t4, 0x001C($sp)
	lui     $t6, %hi(file_select_801B99F8)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(file_select_801B99F8)($t6)
	lwc1    $f8, 0x00A4($t6)
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sh      $t8, 0x0018($sp)
	lh      $a0, 0x001A($sp)
	lh      $a1, 0x0018($sp)
	jal     file_select_801702E8
	li      $a2, 0x41B00000
	li      $at, 0x0001
	bne     $v0, $at, .L80171350
	nop
	lui     $t9, %hi(file_select_801A7D3C)
	lh      $t9, %lo(file_select_801A7D3C)($t9)
	slti    $at, $t9, 0x001F
	bnez    $at, .L80171350
	nop
	lw      $t0, 0x001C($sp)
	li      $at, 0x000B
	beq     $t0, $at, .L80171238
	nop
	li      $at, 0x000C
	beq     $t0, $at, .L80171238
	nop
	li      $at, 0x000D
	bne     $t0, $at, .L80171278
	nop
.L80171238:
	li.u    $a0, 0x70110081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70110081
	lw      $t2, 0x001C($sp)
	lui     $t4, %hi(file_select_801B99F8)
	li      $t1, 0x0004
	sll     $t3, $t2, 2
	addu    $t4, $t4, $t3
	lw      $t4, %lo(file_select_801B99F8)($t4)
	sw      $t1, 0x00F4($t4)
	lw      $t5, 0x001C($sp)
	lui     $at, %hi(file_select_801A7D10)
	b       .L8017133C
	sb      $t5, %lo(file_select_801A7D10)($at)
.L80171278:
	lui     $t6, %hi(file_select_801A7D3C)
	lh      $t6, %lo(file_select_801A7D3C)($t6)
	slti    $at, $t6, 0x001F
	bnez    $at, .L8017133C
	nop
	lw      $a0, 0x001C($sp)
	jal     save_file_isactive
	addiu   $a0, $a0, -0x0007
	li      $at, 0x0001
	bne     $v0, $at, .L801712E4
	nop
	li.u    $a0, 0x70060081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70060081
	lw      $t8, 0x001C($sp)
	lui     $t0, %hi(file_select_801B99F8)
	li      $t7, 0x0001
	sll     $t9, $t8, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(file_select_801B99F8)($t0)
	sw      $t7, 0x00F4($t0)
	lw      $t2, 0x001C($sp)
	lui     $at, %hi(file_select_801A7D10)
	b       .L8017133C
	sb      $t2, %lo(file_select_801A7D10)($at)
.L801712E4:
	li.u    $a0, 0x700E0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x700E0081
	lw      $t1, 0x001C($sp)
	lui     $t5, %hi(file_select_801B99F8)
	li      $t3, 0x0004
	sll     $t4, $t1, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(file_select_801B99F8)($t5)
	sw      $t3, 0x00F4($t5)
	lui     $t6, %hi(file_select_801A7D3C)
	lh      $t6, %lo(file_select_801A7D3C)($t6)
	slti    $at, $t6, 0x001F
	bnez    $at, .L8017133C
	nop
	li      $t8, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t8, %lo(file_select_801A7D30)($at)
	lui     $at, %hi(file_select_801A7D3C)
	sh      $0, %lo(file_select_801A7D3C)($at)
.L8017133C:
	li      $t9, 0x0002
	lui     $at, %hi(file_select_801A7D14)
	sb      $t9, %lo(file_select_801A7D14)($at)
	b       .L80171364
	nop
.L80171350:
	lw      $t7, 0x001C($sp)
	addiu   $t0, $t7, 0x0001
	slti    $at, $t0, 0x000E
	bnez    $at, .L80171190
	sw      $t0, 0x001C($sp)
.L80171364:
	b       .L8017136C
	nop
.L8017136C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

file_select_8017137C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	jal     save_file_isactive
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, .L801713E4
	nop
	la.u    $a2, o_13002FE4
	li      $t6, 0x0137
	li      $t7, -0x0064
	li      $t8, -0x8000
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, 0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	b       .L80171428
	sw      $v0, 0x0038($t9)
.L801713E4:
	la.u    $a2, o_13002FE4
	li      $t0, 0x0137
	li      $t1, -0x0064
	li      $t2, -0x8000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, 0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	sw      $v0, 0x0038($t3)
.L80171428:
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FB8)
	lwc1    $f4, %lo(file_select_801A7FB8)($at)
	lw      $t5, 0x0038($t4)
	swc1    $f4, 0x0108($t5)
	jal     save_file_isactive
	li      $a0, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, .L8017149C
	nop
	la.u    $a2, o_13002FE4
	li      $t6, 0x0137
	li      $t7, -0x0064
	li      $t8, -0x8000
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, -0x00A6
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	b       .L801714E0
	sw      $v0, 0x003C($t9)
.L8017149C:
	la.u    $a2, o_13002FE4
	li      $t0, 0x0137
	li      $t1, -0x0064
	li      $t2, -0x8000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, -0x00A6
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	sw      $v0, 0x003C($t3)
.L801714E0:
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FBC)
	lwc1    $f6, %lo(file_select_801A7FBC)($at)
	lw      $t5, 0x003C($t4)
	swc1    $f6, 0x0108($t5)
	jal     save_file_isactive
	li      $a0, 0x0002
	li      $at, 0x0001
	bne     $v0, $at, .L80171550
	nop
	la.u    $a2, o_13002FE4
	li      $t6, -0x0064
	li      $t7, -0x8000
	sw      $t7, 0x001C($sp)
	sw      $t6, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, 0x02C7
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	b       .L80171590
	sw      $v0, 0x0040($t8)
.L80171550:
	la.u    $a2, o_13002FE4
	li      $t9, -0x0064
	li      $t0, -0x8000
	sw      $t0, 0x001C($sp)
	sw      $t9, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, 0x02C7
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	sw      $v0, 0x0040($t1)
.L80171590:
	la.u    $t2, file_select_801B99F8
	la.l    $t2, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FC0)
	lwc1    $f8, %lo(file_select_801A7FC0)($at)
	lw      $t3, 0x0040($t2)
	swc1    $f8, 0x0108($t3)
	jal     save_file_isactive
	li      $a0, 0x0003
	li      $at, 0x0001
	bne     $v0, $at, .L80171600
	nop
	la.u    $a2, o_13002FE4
	li      $t4, -0x0064
	li      $t5, -0x8000
	sw      $t5, 0x001C($sp)
	sw      $t4, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, -0x00A6
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	b       .L80171640
	sw      $v0, 0x0044($t6)
.L80171600:
	la.u    $a2, o_13002FE4
	li      $t7, -0x0064
	li      $t8, -0x8000
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, -0x00A6
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	sw      $v0, 0x0044($t9)
.L80171640:
	la.u    $t0, file_select_801B99F8
	la.l    $t0, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FC4)
	lwc1    $f10, %lo(file_select_801A7FC4)($at)
	lw      $t1, 0x0044($t0)
	swc1    $f10, 0x0108($t1)
	la.u    $a2, o_13002FE4
	li      $t2, -0x0184
	li      $t3, -0x0064
	li      $t4, -0x8000
	sw      $t4, 0x001C($sp)
	sw      $t3, 0x0014($sp)
	sw      $t2, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0006
	li      $a3, 0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t5, file_select_801B99F8
	la.l    $t5, file_select_801B99F8
	sw      $v0, 0x0048($t5)
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FC8)
	lwc1    $f16, %lo(file_select_801A7FC8)($at)
	lw      $t7, 0x0048($t6)
	swc1    $f16, 0x0108($t7)
	la.u    $a2, o_13002FE4
	li      $t8, -0x0184
	li      $t9, -0x0064
	li      $t0, -0x8000
	sw      $t0, 0x001C($sp)
	sw      $t9, 0x0014($sp)
	sw      $t8, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0007
	move    $a3, $0
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	sw      $v0, 0x004C($t1)
	la.u    $t2, file_select_801B99F8
	la.l    $t2, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FCC)
	lwc1    $f18, %lo(file_select_801A7FCC)($at)
	lw      $t3, 0x004C($t2)
	swc1    $f18, 0x0108($t3)
	la.u    $a2, o_13002FE4
	li      $t4, -0x0184
	li      $t5, -0x0064
	li      $t6, -0x8000
	sw      $t6, 0x001C($sp)
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0004
	li      $a3, -0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t7, file_select_801B99F8
	la.l    $t7, file_select_801B99F8
	sw      $v0, 0x0050($t7)
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FD0)
	lwc1    $f4, %lo(file_select_801A7FD0)($at)
	lw      $t9, 0x0050($t8)
	swc1    $f4, 0x0108($t9)
	b       .L80171774
	nop
.L80171774:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

file_select_80171784:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $s0, 0x010C($t6)
	beqz    $s0, .L801717BC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L801718B4
	nop
	b       .L80171A10
	nop
.L801717BC:
	lui     $t7, %hi(file_select_801A7D48)
	lb      $t7, %lo(file_select_801A7D48)($t7)
	li      $at, 0x0001
	bne     $t7, $at, .L801717D8
	nop
	b       .L80171A18
	nop
.L801717D8:
	lw      $a0, 0x002C($sp)
	jal     save_file_isactive
	addiu   $a0, $a0, -0x000E
	li      $at, 0x0001
	bne     $v0, $at, .L80171854
	nop
	li.u    $a0, 0x70110081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70110081
	lw      $t9, 0x002C($sp)
	lui     $t1, %hi(file_select_801B99F8)
	li      $t8, 0x0005
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(file_select_801B99F8)($t1)
	sw      $t8, 0x00F4($t1)
	lw      $t2, 0x002C($sp)
	lui     $at, %hi(file_select_801A7D2C)
	addiu   $t3, $t2, -0x000E
	sb      $t3, %lo(file_select_801A7D2C)($at)
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0001
	sw      $t4, 0x010C($t5)
	li      $t6, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t6, %lo(file_select_801A7D30)($at)
	lui     $at, %hi(file_select_801A7D3C)
	b       .L801718AC
	sh      $0, %lo(file_select_801A7D3C)($at)
.L80171854:
	li.u    $a0, 0x700E0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x700E0081
	lw      $t9, 0x002C($sp)
	lui     $t8, %hi(file_select_801B99F8)
	li      $t7, 0x0004
	sll     $t0, $t9, 2
	addu    $t8, $t8, $t0
	lw      $t8, %lo(file_select_801B99F8)($t8)
	sw      $t7, 0x00F4($t8)
	lui     $t1, %hi(file_select_801A7D3C)
	lh      $t1, %lo(file_select_801A7D3C)($t1)
	slti    $at, $t1, 0x0015
	bnez    $at, .L801718AC
	nop
	li      $t2, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t2, %lo(file_select_801A7D30)($at)
	lui     $at, %hi(file_select_801A7D3C)
	sh      $0, %lo(file_select_801A7D3C)($at)
.L801718AC:
	b       .L80171A10
	nop
.L801718B4:
	lw      $t4, 0x002C($sp)
	lui     $t6, %hi(file_select_801B99F8)
	li      $t3, 0x0004
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(file_select_801B99F8)($t6)
	sw      $t3, 0x00F4($t6)
	lw      $a0, 0x002C($sp)
	jal     save_file_isactive
	addiu   $a0, $a0, -0x000E
	bnez    $v0, .L80171978
	nop
	li.u    $a0, 0x701EFF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x701EFF81
	lw      $t0, 0x0028($sp)
	li      $t9, 0x0002
	sw      $t9, 0x010C($t0)
	li      $t7, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t7, %lo(file_select_801A7D30)($at)
	lui     $at, %hi(file_select_801A7D3C)
	sh      $0, %lo(file_select_801A7D3C)($at)
	lw      $a1, 0x002C($sp)
	lui     $a0, %hi(file_select_801A7D2C)
	lb      $a0, %lo(file_select_801A7D2C)($a0)
	jal     save_file_copy
	addiu   $a1, $a1, -0x000E
	lw      $t2, 0x002C($sp)
	lui     $t8, %hi(shape_table)
	lw      $t8, %lo(shape_table)($t8)
	lui     $t5, %hi(file_select_801B99F8)
	sll     $t4, $t2, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(file_select_801B99F8)($t5)
	lw      $t1, 0x0020($t8)
	sw      $t1, 0x0014($t5)
	lw      $t9, 0x002C($sp)
	lui     $t3, %hi(shape_table)
	lw      $t3, %lo(shape_table)($t3)
	lui     $t7, %hi(file_select_801B99F8-4*14)
	sll     $t0, $t9, 2
	addu    $t7, $t7, $t0
	lw      $t7, %lo(file_select_801B99F8-4*14)($t7)
	lw      $t6, 0x0020($t3)
	b       .L80171A08
	sw      $t6, 0x0014($t7)
.L80171978:
	lui     $t8, %hi(file_select_801A7D2C)
	lb      $t8, %lo(file_select_801A7D2C)($t8)
	lw      $t4, 0x002C($sp)
	addiu   $t2, $t8, 0x000E
	bne     $t2, $t4, .L801719E0
	nop
	li.u    $a0, 0x700E0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x700E0081
	lui     $t5, %hi(file_select_801A7D2C)
	lb      $t5, %lo(file_select_801A7D2C)($t5)
	lui     $t9, %hi(file_select_801B99F8+4*14)
	li      $t1, 0x0006
	sll     $t3, $t5, 2
	addu    $t9, $t9, $t3
	lw      $t9, %lo(file_select_801B99F8+4*14)($t9)
	sw      $t1, 0x00F4($t9)
	lw      $t0, 0x0028($sp)
	sw      $0, 0x010C($t0)
	li      $t6, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t6, %lo(file_select_801A7D30)($at)
	b       .L80171A18
	nop
.L801719E0:
	lui     $t7, %hi(file_select_801A7D3C)
	lh      $t7, %lo(file_select_801A7D3C)($t7)
	slti    $at, $t7, 0x0015
	bnez    $at, .L80171A08
	nop
	li      $t8, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t8, %lo(file_select_801A7D30)($at)
	lui     $at, %hi(file_select_801A7D3C)
	sh      $0, %lo(file_select_801A7D3C)($at)
.L80171A08:
	b       .L80171A10
	nop
.L80171A10:
	b       .L80171A18
	nop
.L80171A18:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

file_select_80171A2C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0002
	lw      $t7, 0x00F4($t6)
	bne     $t7, $at, .L80171BF4
	nop
	li      $t8, 0x000E
	sw      $t8, 0x001C($sp)
.L80171A54:
	lw      $t9, 0x001C($sp)
	lui     $t1, %hi(file_select_801B99F8)
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(file_select_801B99F8)($t1)
	lwc1    $f4, 0x00A0($t1)
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x001A($sp)
	lw      $t4, 0x001C($sp)
	lui     $t6, %hi(file_select_801B99F8)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(file_select_801B99F8)($t6)
	lwc1    $f8, 0x00A4($t6)
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sh      $t8, 0x0018($sp)
	lh      $a0, 0x001A($sp)
	lh      $a1, 0x0018($sp)
	jal     file_select_801702E8
	li      $a2, 0x41B00000
	li      $at, 0x0001
	bne     $v0, $at, .L80171B90
	nop
	lw      $t9, 0x001C($sp)
	li      $at, 0x0012
	beq     $t9, $at, .L80171AE8
	nop
	li      $at, 0x0013
	beq     $t9, $at, .L80171AE8
	nop
	li      $at, 0x0014
	bne     $t9, $at, .L80171B3C
	nop
.L80171AE8:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x010C($t0)
	bnez    $t1, .L80171B34
	nop
	li.u    $a0, 0x70110081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70110081
	lw      $t3, 0x001C($sp)
	lui     $t5, %hi(file_select_801B99F8)
	li      $t2, 0x0004
	sll     $t4, $t3, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(file_select_801B99F8)($t5)
	sw      $t2, 0x00F4($t5)
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(file_select_801A7D10)
	sb      $t6, %lo(file_select_801A7D10)($at)
.L80171B34:
	b       .L80171B7C
	nop
.L80171B3C:
	lw      $t7, 0x001C($sp)
	lui     $t9, %hi(file_select_801B99F8)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(file_select_801B99F8)($t9)
	lw      $t0, 0x00F4($t9)
	bnez    $t0, .L80171B7C
	nop
	lui     $t1, %hi(file_select_801A7D3C)
	lh      $t1, %lo(file_select_801A7D3C)($t1)
	slti    $at, $t1, 0x001F
	bnez    $at, .L80171B7C
	nop
	lw      $a0, 0x0020($sp)
	jal     file_select_80171784
	lw      $a1, 0x001C($sp)
.L80171B7C:
	li      $t3, 0x0002
	lui     $at, %hi(file_select_801A7D14)
	sb      $t3, %lo(file_select_801A7D14)($at)
	b       .L80171BA4
	nop
.L80171B90:
	lw      $t4, 0x001C($sp)
	addiu   $t2, $t4, 0x0001
	slti    $at, $t2, 0x0015
	bnez    $at, .L80171A54
	sw      $t2, 0x001C($sp)
.L80171BA4:
	lw      $t5, 0x0020($sp)
	li      $at, 0x0002
	lw      $t6, 0x010C($t5)
	bne     $t6, $at, .L80171BF4
	nop
	lui     $t7, %hi(file_select_801A7D3C)
	lh      $t7, %lo(file_select_801A7D3C)($t7)
	slti    $at, $t7, 0x001F
	bnez    $at, .L80171BF4
	nop
	lw      $t8, 0x0020($sp)
	sw      $0, 0x010C($t8)
	lui     $t0, %hi(file_select_801A7D2C)
	lb      $t0, %lo(file_select_801A7D2C)($t0)
	lui     $t3, %hi(file_select_801B99F8+4*14)
	li      $t9, 0x0006
	sll     $t1, $t0, 2
	addu    $t3, $t3, $t1
	lw      $t3, %lo(file_select_801B99F8+4*14)($t3)
	sw      $t9, 0x00F4($t3)
.L80171BF4:
	b       .L80171BFC
	nop
.L80171BFC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

file_select_80171C0C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	jal     save_file_isactive
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, .L80171C74
	nop
	la.u    $a2, o_13002FE4
	li      $t6, 0x0137
	li      $t7, -0x0064
	li      $t8, -0x8000
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, 0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	b       .L80171CB8
	sw      $v0, 0x0054($t9)
.L80171C74:
	la.u    $a2, o_13002FE4
	li      $t0, 0x0137
	li      $t1, -0x0064
	li      $t2, -0x8000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, 0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	sw      $v0, 0x0054($t3)
.L80171CB8:
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FD4)
	lwc1    $f4, %lo(file_select_801A7FD4)($at)
	lw      $t5, 0x0054($t4)
	swc1    $f4, 0x0108($t5)
	jal     save_file_isactive
	li      $a0, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, .L80171D2C
	nop
	la.u    $a2, o_13002FE4
	li      $t6, 0x0137
	li      $t7, -0x0064
	li      $t8, -0x8000
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, -0x00A6
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	b       .L80171D70
	sw      $v0, 0x0058($t9)
.L80171D2C:
	la.u    $a2, o_13002FE4
	li      $t0, 0x0137
	li      $t1, -0x0064
	li      $t2, -0x8000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, -0x00A6
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	sw      $v0, 0x0058($t3)
.L80171D70:
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FD8)
	lwc1    $f6, %lo(file_select_801A7FD8)($at)
	lw      $t5, 0x0058($t4)
	swc1    $f6, 0x0108($t5)
	jal     save_file_isactive
	li      $a0, 0x0002
	li      $at, 0x0001
	bne     $v0, $at, .L80171DE0
	nop
	la.u    $a2, o_13002FE4
	li      $t6, -0x0064
	li      $t7, -0x8000
	sw      $t7, 0x001C($sp)
	sw      $t6, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, 0x02C7
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	b       .L80171E20
	sw      $v0, 0x005C($t8)
.L80171DE0:
	la.u    $a2, o_13002FE4
	li      $t9, -0x0064
	li      $t0, -0x8000
	sw      $t0, 0x001C($sp)
	sw      $t9, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, 0x02C7
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	sw      $v0, 0x005C($t1)
.L80171E20:
	la.u    $t2, file_select_801B99F8
	la.l    $t2, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FDC)
	lwc1    $f8, %lo(file_select_801A7FDC)($at)
	lw      $t3, 0x005C($t2)
	swc1    $f8, 0x0108($t3)
	jal     save_file_isactive
	li      $a0, 0x0003
	li      $at, 0x0001
	bne     $v0, $at, .L80171E90
	nop
	la.u    $a2, o_13002FE4
	li      $t4, -0x0064
	li      $t5, -0x8000
	sw      $t5, 0x001C($sp)
	sw      $t4, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	li      $a3, -0x00A6
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	b       .L80171ED0
	sw      $v0, 0x0060($t6)
.L80171E90:
	la.u    $a2, o_13002FE4
	li      $t7, -0x0064
	li      $t8, -0x8000
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0009
	li      $a3, -0x00A6
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	sw      $v0, 0x0060($t9)
.L80171ED0:
	la.u    $t0, file_select_801B99F8
	la.l    $t0, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FE0)
	lwc1    $f10, %lo(file_select_801A7FE0)($at)
	lw      $t1, 0x0060($t0)
	swc1    $f10, 0x0108($t1)
	la.u    $a2, o_13002FE4
	li      $t2, -0x0184
	li      $t3, -0x0064
	li      $t4, -0x8000
	sw      $t4, 0x001C($sp)
	sw      $t3, 0x0014($sp)
	sw      $t2, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0006
	li      $a3, 0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t5, file_select_801B99F8
	la.l    $t5, file_select_801B99F8
	sw      $v0, 0x0064($t5)
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FE4)
	lwc1    $f16, %lo(file_select_801A7FE4)($at)
	lw      $t7, 0x0064($t6)
	swc1    $f16, 0x0108($t7)
	la.u    $a2, o_13002FE4
	li      $t8, -0x0184
	li      $t9, -0x0064
	li      $t0, -0x8000
	sw      $t0, 0x001C($sp)
	sw      $t9, 0x0014($sp)
	sw      $t8, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0007
	move    $a3, $0
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	sw      $v0, 0x0068($t1)
	la.u    $t2, file_select_801B99F8
	la.l    $t2, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FE8)
	lwc1    $f18, %lo(file_select_801A7FE8)($at)
	lw      $t3, 0x0068($t2)
	swc1    $f18, 0x0108($t3)
	la.u    $a2, o_13002FE4
	li      $t4, -0x0184
	li      $t5, -0x0064
	li      $t6, -0x8000
	sw      $t6, 0x001C($sp)
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0005
	li      $a3, -0x02C7
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t7, file_select_801B99F8
	la.l    $t7, file_select_801B99F8
	sw      $v0, 0x006C($t7)
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FEC)
	lwc1    $f4, %lo(file_select_801A7FEC)($at)
	lw      $t9, 0x006C($t8)
	swc1    $f4, 0x0108($t9)
	b       .L80172004
	nop
.L80172004:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

file_select_80172014:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $s0, 0x010C($t6)
	beqz    $s0, .L8017204C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80172128
	nop
	b       .L80172190
	nop
.L8017204C:
	lw      $a0, 0x002C($sp)
	jal     save_file_isactive
	addiu   $a0, $a0, -0x0015
	li      $at, 0x0001
	bne     $v0, $at, .L801720C8
	nop
	li.u    $a0, 0x70110081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70110081
	lw      $t8, 0x002C($sp)
	lui     $t0, %hi(file_select_801B99F8)
	li      $t7, 0x0005
	sll     $t9, $t8, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(file_select_801B99F8)($t0)
	sw      $t7, 0x00F4($t0)
	lw      $t1, 0x002C($sp)
	lui     $at, %hi(file_select_801A7D2C)
	addiu   $t2, $t1, -0x0015
	sb      $t2, %lo(file_select_801A7D2C)($at)
	lw      $t4, 0x0028($sp)
	li      $t3, 0x0001
	sw      $t3, 0x010C($t4)
	li      $t5, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t5, %lo(file_select_801A7D30)($at)
	lui     $at, %hi(file_select_801A7D3C)
	b       .L80172120
	sh      $0, %lo(file_select_801A7D3C)($at)
.L801720C8:
	li.u    $a0, 0x700E0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x700E0081
	lw      $t8, 0x002C($sp)
	lui     $t7, %hi(file_select_801B99F8)
	li      $t6, 0x0004
	sll     $t9, $t8, 2
	addu    $t7, $t7, $t9
	lw      $t7, %lo(file_select_801B99F8)($t7)
	sw      $t6, 0x00F4($t7)
	lui     $t0, %hi(file_select_801A7D3C)
	lh      $t0, %lo(file_select_801A7D3C)($t0)
	slti    $at, $t0, 0x0015
	bnez    $at, .L80172120
	nop
	li      $t1, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t1, %lo(file_select_801A7D30)($at)
	lui     $at, %hi(file_select_801A7D3C)
	sh      $0, %lo(file_select_801A7D3C)($at)
.L80172120:
	b       .L80172190
	nop
.L80172128:
	lui     $t2, %hi(file_select_801A7D2C)
	lb      $t2, %lo(file_select_801A7D2C)($t2)
	lw      $t4, 0x002C($sp)
	addiu   $t3, $t2, 0x0015
	bne     $t3, $t4, .L80172188
	nop
	li.u    $a0, 0x70110081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70110081
	lui     $t8, %hi(file_select_801A7D2C)
	lb      $t8, %lo(file_select_801A7D2C)($t8)
	lui     $t6, %hi(file_select_801B99F8+4*21)
	li      $t5, 0x0006
	sll     $t9, $t8, 2
	addu    $t6, $t6, $t9
	lw      $t6, %lo(file_select_801B99F8+4*21)($t6)
	sw      $t5, 0x00F4($t6)
	lw      $t7, 0x0028($sp)
	sw      $0, 0x010C($t7)
	li      $t0, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t0, %lo(file_select_801A7D30)($at)
.L80172188:
	b       .L80172190
	nop
.L80172190:
	b       .L80172198
	nop
.L80172198:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

file_select_801721AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0002
	lw      $t7, 0x00F4($t6)
	bne     $t7, $at, .L80172354
	nop
	li      $t8, 0x0015
	sw      $t8, 0x001C($sp)
.L801721D4:
	lw      $t9, 0x001C($sp)
	lui     $t1, %hi(file_select_801B99F8)
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(file_select_801B99F8)($t1)
	lwc1    $f4, 0x00A0($t1)
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x001A($sp)
	lw      $t4, 0x001C($sp)
	lui     $t6, %hi(file_select_801B99F8)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(file_select_801B99F8)($t6)
	lwc1    $f8, 0x00A4($t6)
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sh      $t8, 0x0018($sp)
	lh      $a0, 0x001A($sp)
	lh      $a1, 0x0018($sp)
	jal     file_select_801702E8
	li      $a2, 0x41B00000
	li      $at, 0x0001
	bne     $v0, $at, .L801722F0
	nop
	lw      $t9, 0x001C($sp)
	li      $at, 0x0019
	beq     $t9, $at, .L80172268
	nop
	li      $at, 0x001A
	beq     $t9, $at, .L80172268
	nop
	li      $at, 0x001B
	bne     $t9, $at, .L801722BC
	nop
.L80172268:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x010C($t0)
	bnez    $t1, .L801722B4
	nop
	li.u    $a0, 0x70110081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70110081
	lw      $t3, 0x001C($sp)
	lui     $t5, %hi(file_select_801B99F8)
	li      $t2, 0x0004
	sll     $t4, $t3, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(file_select_801B99F8)($t5)
	sw      $t2, 0x00F4($t5)
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(file_select_801A7D10)
	sb      $t6, %lo(file_select_801A7D10)($at)
.L801722B4:
	b       .L801722DC
	nop
.L801722BC:
	lui     $t7, %hi(file_select_801A7D3C)
	lh      $t7, %lo(file_select_801A7D3C)($t7)
	slti    $at, $t7, 0x001F
	bnez    $at, .L801722DC
	nop
	lw      $a0, 0x0020($sp)
	jal     file_select_80172014
	lw      $a1, 0x001C($sp)
.L801722DC:
	li      $t8, 0x0002
	lui     $at, %hi(file_select_801A7D14)
	sb      $t8, %lo(file_select_801A7D14)($at)
	b       .L80172304
	nop
.L801722F0:
	lw      $t9, 0x001C($sp)
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x001C
	bnez    $at, .L801721D4
	sw      $t0, 0x001C($sp)
.L80172304:
	lw      $t1, 0x0020($sp)
	li      $at, 0x0002
	lw      $t3, 0x010C($t1)
	bne     $t3, $at, .L80172354
	nop
	lui     $t4, %hi(file_select_801A7D3C)
	lh      $t4, %lo(file_select_801A7D3C)($t4)
	slti    $at, $t4, 0x001F
	bnez    $at, .L80172354
	nop
	lw      $t2, 0x0020($sp)
	sw      $0, 0x010C($t2)
	lui     $t6, %hi(file_select_801A7D2C)
	lb      $t6, %lo(file_select_801A7D2C)($t6)
	lui     $t8, %hi(file_select_801B99F8+4*21)
	li      $t5, 0x0006
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(file_select_801B99F8+4*21)($t8)
	sw      $t5, 0x00F4($t8)
.L80172354:
	b       .L8017235C
	nop
.L8017235C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

file_select_8017236C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	la.u    $a2, o_13002FE4
	li      $t6, -0x0064
	li      $t7, -0x8000
	sw      $t7, 0x001C($sp)
	sw      $t6, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000C
	li      $a3, 0x0215
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	sw      $v0, 0x0074($t8)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FF0)
	lwc1    $f4, %lo(file_select_801A7FF0)($at)
	lw      $t0, 0x0074($t9)
	swc1    $f4, 0x0108($t0)
	la.u    $a2, o_13002FE4
	li      $t1, -0x0064
	li      $t2, -0x8000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000C
	move    $a3, $0
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	sw      $v0, 0x0078($t3)
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FF4)
	lwc1    $f6, %lo(file_select_801A7FF4)($at)
	lw      $t5, 0x0078($t4)
	swc1    $f6, 0x0108($t5)
	la.u    $a2, o_13002FE4
	li      $t6, -0x0064
	li      $t7, -0x8000
	sw      $t7, 0x001C($sp)
	sw      $t6, 0x0014($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000C
	li      $a3, -0x0215
	sw      $0, 0x0010($sp)
	sw      $0, 0x0018($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	sw      $v0, 0x007C($t8)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	lui     $at, %hi(file_select_801A7FF8)
	lwc1    $f8, %lo(file_select_801A7FF8)($at)
	lw      $t0, 0x007C($t9)
	swc1    $f8, 0x0108($t0)
	lui     $t2, %hi(file_select_801A7D40)
	lb      $t2, %lo(file_select_801A7D40)($t2)
	lui     $t4, %hi(file_select_801B99F8+4*29)
	li      $t1, 0x0005
	sll     $t3, $t2, 2
	addu    $t4, $t4, $t3
	lw      $t4, %lo(file_select_801B99F8+4*29)($t4)
	sw      $t1, 0x00F4($t4)
	b       .L801724A8
	nop
.L801724A8:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

file_select_801724B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0002
	lw      $t7, 0x00F4($t6)
	bne     $t7, $at, .L80172604
	nop
	li      $t8, 0x001D
	sw      $t8, 0x001C($sp)
.L801724E0:
	lw      $t9, 0x001C($sp)
	lui     $t1, %hi(file_select_801B99F8)
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(file_select_801B99F8)($t1)
	lwc1    $f4, 0x00A0($t1)
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x001A($sp)
	lw      $t4, 0x001C($sp)
	lui     $t6, %hi(file_select_801B99F8)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(file_select_801B99F8)($t6)
	lwc1    $f8, 0x00A4($t6)
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sh      $t8, 0x0018($sp)
	lh      $a0, 0x001A($sp)
	lh      $a1, 0x0018($sp)
	jal     file_select_801702E8
	li      $a2, 0x41B00000
	li      $at, 0x0001
	bne     $v0, $at, .L801725F0
	nop
	lw      $t9, 0x001C($sp)
	li      $at, 0x001D
	beq     $t9, $at, .L80172574
	nop
	li      $at, 0x001E
	beq     $t9, $at, .L80172574
	nop
	li      $at, 0x001F
	bne     $t9, $at, .L801725DC
	nop
.L80172574:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x010C($t0)
	bnez    $t1, .L801725DC
	nop
	li.u    $a0, 0x70110081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70110081
	lw      $t3, 0x001C($sp)
	lui     $t5, %hi(file_select_801B99F8)
	li      $t2, 0x0004
	sll     $t4, $t3, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(file_select_801B99F8)($t5)
	sw      $t2, 0x00F4($t5)
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(file_select_801A7D10)
	sb      $t6, %lo(file_select_801A7D10)($at)
	lw      $t7, 0x001C($sp)
	lui     $at, %hi(file_select_801A7D40)
	addiu   $t8, $t7, -0x001D
	sb      $t8, %lo(file_select_801A7D40)($at)
	lui     $a0, %hi(file_select_801A7D40)
	jal     save_output_set
	lb      $a0, %lo(file_select_801A7D40)($a0)
.L801725DC:
	li      $t9, 0x0002
	lui     $at, %hi(file_select_801A7D14)
	sb      $t9, %lo(file_select_801A7D14)($at)
	b       .L80172604
	nop
.L801725F0:
	lw      $t0, 0x001C($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0020
	bnez    $at, .L801724E0
	sw      $t1, 0x001C($sp)
.L80172604:
	b       .L8017260C
	nop
.L8017260C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

file_select_8017261C:
	lw      $t6, 0x00F4($a0)
	li      $at, 0x0002
	bne     $t6, $at, .L80172634
	nop
	lui     $at, %hi(file_select_801A7D4C)
	sb      $a1, %lo(file_select_801A7D4C)($at)
.L80172634:
	jr      $ra
	nop
	jr      $ra
	nop

file_select_80172644:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x00F4($t6)
	bnez    $t7, .L801726C4
	nop
	lh      $t8, 0x0022($sp)
	lui     $t0, %hi(file_select_801B99F8)
	li      $at, 0x0002
	sll     $t9, $t8, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(file_select_801B99F8)($t0)
	lw      $t1, 0x00F4($t0)
	bne     $t1, $at, .L801726C4
	nop
	li.u    $a0, 0x70070081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70070081
	lh      $t3, 0x0022($sp)
	lui     $t5, %hi(file_select_801B99F8)
	li      $t2, 0x0003
	sll     $t4, $t3, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(file_select_801B99F8)($t5)
	sw      $t2, 0x00F4($t5)
	li      $t6, 0x0001
	lui     $at, %hi(file_select_801A7D14)
	sb      $t6, %lo(file_select_801A7D14)($at)
.L801726C4:
	lh      $t7, 0x0022($sp)
	lui     $t9, %hi(file_select_801B99F8)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(file_select_801B99F8)($t9)
	lw      $t0, 0x00F4($t9)
	bnez    $t0, .L80172800
	nop
	li      $t1, -0x0001
	lui     $at, %hi(file_select_801A7D10)
	sb      $t1, %lo(file_select_801A7D10)($at)
	lh      $t3, 0x0022($sp)
	li      $at, 0x0004
	bne     $t3, $at, .L80172734
	nop
	li      $t4, 0x0007
	sw      $t4, 0x001C($sp)
.L80172708:
	lw      $t2, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t5, $t2, 2
	addu    $a0, $a0, $t5
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t6, 0x001C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x000E
	bnez    $at, .L80172708
	sw      $t7, 0x001C($sp)
.L80172734:
	lh      $t8, 0x0022($sp)
	li      $at, 0x0005
	bne     $t8, $at, .L80172778
	nop
	li      $t9, 0x000E
	sw      $t9, 0x001C($sp)
.L8017274C:
	lw      $t0, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t1, $t0, 2
	addu    $a0, $a0, $t1
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t3, 0x001C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0015
	bnez    $at, .L8017274C
	sw      $t4, 0x001C($sp)
.L80172778:
	lh      $t2, 0x0022($sp)
	li      $at, 0x0006
	bne     $t2, $at, .L801727BC
	nop
	li      $t5, 0x0015
	sw      $t5, 0x001C($sp)
.L80172790:
	lw      $t6, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t7, $t6, 2
	addu    $a0, $a0, $t7
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t8, 0x001C($sp)
	addiu   $t9, $t8, 0x0001
	slti    $at, $t9, 0x001C
	bnez    $at, .L80172790
	sw      $t9, 0x001C($sp)
.L801727BC:
	lh      $t0, 0x0022($sp)
	li      $at, 0x001C
	bne     $t0, $at, .L80172800
	nop
	li      $t1, 0x001D
	sw      $t1, 0x001C($sp)
.L801727D4:
	lw      $t3, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t4, $t3, 2
	addu    $a0, $a0, $t4
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t2, 0x001C($sp)
	addiu   $t5, $t2, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, .L801727D4
	sw      $t5, 0x001C($sp)
.L80172800:
	b       .L80172808
	nop
.L80172808:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

file_select_80172818:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x00F4($t6)
	bnez    $t7, .L80172898
	nop
	lh      $t8, 0x0022($sp)
	lui     $t0, %hi(file_select_801B99F8)
	li      $at, 0x0002
	sll     $t9, $t8, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(file_select_801B99F8)($t0)
	lw      $t1, 0x00F4($t0)
	bne     $t1, $at, .L80172898
	nop
	li.u    $a0, 0x70070081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70070081
	lh      $t3, 0x0022($sp)
	lui     $t5, %hi(file_select_801B99F8)
	li      $t2, 0x0003
	sll     $t4, $t3, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(file_select_801B99F8)($t5)
	sw      $t2, 0x00F4($t5)
	li      $t6, 0x0001
	lui     $at, %hi(file_select_801A7D14)
	sb      $t6, %lo(file_select_801A7D14)($at)
.L80172898:
	lh      $t7, 0x0022($sp)
	lui     $t9, %hi(file_select_801B99F8)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(file_select_801B99F8)($t9)
	lw      $t0, 0x00F4($t9)
	bnez    $t0, .L801729C8
	nop
	lh      $t1, 0x0022($sp)
	li      $at, 0x0004
	bne     $t1, $at, .L801728FC
	nop
	li      $t3, 0x0007
	sw      $t3, 0x001C($sp)
.L801728D0:
	lw      $t4, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t2, $t4, 2
	addu    $a0, $a0, $t2
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t5, 0x001C($sp)
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x000E
	bnez    $at, .L801728D0
	sw      $t6, 0x001C($sp)
.L801728FC:
	lh      $t7, 0x0022($sp)
	li      $at, 0x0005
	bne     $t7, $at, .L80172940
	nop
	li      $t8, 0x000E
	sw      $t8, 0x001C($sp)
.L80172914:
	lw      $t9, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t0, $t9, 2
	addu    $a0, $a0, $t0
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t1, 0x001C($sp)
	addiu   $t3, $t1, 0x0001
	slti    $at, $t3, 0x0015
	bnez    $at, .L80172914
	sw      $t3, 0x001C($sp)
.L80172940:
	lh      $t4, 0x0022($sp)
	li      $at, 0x0006
	bne     $t4, $at, .L80172984
	nop
	li      $t2, 0x0015
	sw      $t2, 0x001C($sp)
.L80172958:
	lw      $t5, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t6, $t5, 2
	addu    $a0, $a0, $t6
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t7, 0x001C($sp)
	addiu   $t8, $t7, 0x0001
	slti    $at, $t8, 0x001C
	bnez    $at, .L80172958
	sw      $t8, 0x001C($sp)
.L80172984:
	li      $t9, 0x0004
	lui     $at, %hi(file_select_801A7D10)
	sb      $t9, %lo(file_select_801A7D10)($at)
	li.u    $a0, 0x70060081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70060081
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	lw      $t3, 0x0010($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t3)
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	jal     file_select_80170D60
	lw      $a0, 0x0010($t4)
.L801729C8:
	b       .L801729D0
	nop
.L801729D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

file_select_801729E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x00F4($t6)
	bnez    $t7, .L80172A60
	nop
	lh      $t8, 0x0022($sp)
	lui     $t0, %hi(file_select_801B99F8)
	li      $at, 0x0002
	sll     $t9, $t8, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(file_select_801B99F8)($t0)
	lw      $t1, 0x00F4($t0)
	bne     $t1, $at, .L80172A60
	nop
	li.u    $a0, 0x70070081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70070081
	lh      $t3, 0x0022($sp)
	lui     $t5, %hi(file_select_801B99F8)
	li      $t2, 0x0003
	sll     $t4, $t3, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(file_select_801B99F8)($t5)
	sw      $t2, 0x00F4($t5)
	li      $t6, 0x0001
	lui     $at, %hi(file_select_801A7D14)
	sb      $t6, %lo(file_select_801A7D14)($at)
.L80172A60:
	lh      $t7, 0x0022($sp)
	lui     $t9, %hi(file_select_801B99F8)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(file_select_801B99F8)($t9)
	lw      $t0, 0x00F4($t9)
	bnez    $t0, .L80172B90
	nop
	lh      $t1, 0x0022($sp)
	li      $at, 0x0004
	bne     $t1, $at, .L80172AC4
	nop
	li      $t3, 0x0007
	sw      $t3, 0x001C($sp)
.L80172A98:
	lw      $t4, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t2, $t4, 2
	addu    $a0, $a0, $t2
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t5, 0x001C($sp)
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x000E
	bnez    $at, .L80172A98
	sw      $t6, 0x001C($sp)
.L80172AC4:
	lh      $t7, 0x0022($sp)
	li      $at, 0x0005
	bne     $t7, $at, .L80172B08
	nop
	li      $t8, 0x000E
	sw      $t8, 0x001C($sp)
.L80172ADC:
	lw      $t9, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t0, $t9, 2
	addu    $a0, $a0, $t0
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t1, 0x001C($sp)
	addiu   $t3, $t1, 0x0001
	slti    $at, $t3, 0x0015
	bnez    $at, .L80172ADC
	sw      $t3, 0x001C($sp)
.L80172B08:
	lh      $t4, 0x0022($sp)
	li      $at, 0x0006
	bne     $t4, $at, .L80172B4C
	nop
	li      $t2, 0x0015
	sw      $t2, 0x001C($sp)
.L80172B20:
	lw      $t5, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t6, $t5, 2
	addu    $a0, $a0, $t6
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t7, 0x001C($sp)
	addiu   $t8, $t7, 0x0001
	slti    $at, $t8, 0x001C
	bnez    $at, .L80172B20
	sw      $t8, 0x001C($sp)
.L80172B4C:
	li      $t9, 0x0005
	lui     $at, %hi(file_select_801A7D10)
	sb      $t9, %lo(file_select_801A7D10)($at)
	li.u    $a0, 0x70060081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70060081
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	lw      $t3, 0x0014($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t3)
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	jal     file_select_8017137C
	lw      $a0, 0x0014($t4)
.L80172B90:
	b       .L80172B98
	nop
.L80172B98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

file_select_80172BA8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x00F4($t6)
	bnez    $t7, .L80172C28
	nop
	lh      $t8, 0x0022($sp)
	lui     $t0, %hi(file_select_801B99F8)
	li      $at, 0x0002
	sll     $t9, $t8, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(file_select_801B99F8)($t0)
	lw      $t1, 0x00F4($t0)
	bne     $t1, $at, .L80172C28
	nop
	li.u    $a0, 0x70070081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70070081
	lh      $t3, 0x0022($sp)
	lui     $t5, %hi(file_select_801B99F8)
	li      $t2, 0x0003
	sll     $t4, $t3, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(file_select_801B99F8)($t5)
	sw      $t2, 0x00F4($t5)
	li      $t6, 0x0001
	lui     $at, %hi(file_select_801A7D14)
	sb      $t6, %lo(file_select_801A7D14)($at)
.L80172C28:
	lh      $t7, 0x0022($sp)
	lui     $t9, %hi(file_select_801B99F8)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(file_select_801B99F8)($t9)
	lw      $t0, 0x00F4($t9)
	bnez    $t0, .L80172D58
	nop
	lh      $t1, 0x0022($sp)
	li      $at, 0x0004
	bne     $t1, $at, .L80172C8C
	nop
	li      $t3, 0x0007
	sw      $t3, 0x001C($sp)
.L80172C60:
	lw      $t4, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t2, $t4, 2
	addu    $a0, $a0, $t2
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t5, 0x001C($sp)
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x000E
	bnez    $at, .L80172C60
	sw      $t6, 0x001C($sp)
.L80172C8C:
	lh      $t7, 0x0022($sp)
	li      $at, 0x0005
	bne     $t7, $at, .L80172CD0
	nop
	li      $t8, 0x000E
	sw      $t8, 0x001C($sp)
.L80172CA4:
	lw      $t9, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t0, $t9, 2
	addu    $a0, $a0, $t0
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t1, 0x001C($sp)
	addiu   $t3, $t1, 0x0001
	slti    $at, $t3, 0x0015
	bnez    $at, .L80172CA4
	sw      $t3, 0x001C($sp)
.L80172CD0:
	lh      $t4, 0x0022($sp)
	li      $at, 0x0006
	bne     $t4, $at, .L80172D14
	nop
	li      $t2, 0x0015
	sw      $t2, 0x001C($sp)
.L80172CE8:
	lw      $t5, 0x001C($sp)
	lui     $a0, %hi(file_select_801B99F8)
	sll     $t6, $t5, 2
	addu    $a0, $a0, $t6
	jal     obj_list_802CA028
	lw      $a0, %lo(file_select_801B99F8)($a0)
	lw      $t7, 0x001C($sp)
	addiu   $t8, $t7, 0x0001
	slti    $at, $t8, 0x001C
	bnez    $at, .L80172CE8
	sw      $t8, 0x001C($sp)
.L80172D14:
	li      $t9, 0x0006
	lui     $at, %hi(file_select_801A7D10)
	sb      $t9, %lo(file_select_801A7D10)($at)
	li.u    $a0, 0x70060081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70060081
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	lw      $t3, 0x0018($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t3)
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	jal     file_select_80171C0C
	lw      $a0, 0x0018($t4)
.L80172D58:
	b       .L80172D60
	nop
.L80172D60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl file_select_80172D70
file_select_80172D70:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	jal     save_file_isactive
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, .L80172DD0
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	li      $t6, 0x0AF0
	sw      $t6, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0008
	li      $a3, -0x1900
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t7, file_select_801B99F8
	la.l    $t7, file_select_801B99F8
	b       .L80172E10
	sw      $v0, 0x0000($t7)
.L80172DD0:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	li      $t8, 0x0AF0
	sw      $t8, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x000A
	li      $a3, -0x1900
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	sw      $v0, 0x0000($t9)
.L80172E10:
	la.u    $t0, file_select_801B99F8
	la.l    $t0, file_select_801B99F8
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t1, 0x0000($t0)
	swc1    $f4, 0x0108($t1)
	jal     save_file_isactive
	li      $a0, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, .L80172E80
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	li      $t2, 0x0AF0
	sw      $t2, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0008
	li      $a3, 0x05DC
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	b       .L80172EC0
	sw      $v0, 0x0004($t3)
.L80172E80:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	li      $t4, 0x0AF0
	sw      $t4, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x000A
	li      $a3, 0x05DC
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t5, file_select_801B99F8
	la.l    $t5, file_select_801B99F8
	sw      $v0, 0x0004($t5)
.L80172EC0:
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t7, 0x0004($t6)
	swc1    $f6, 0x0108($t7)
	jal     save_file_isactive
	li      $a0, 0x0002
	li      $at, 0x0001
	bne     $v0, $at, .L80172F2C
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0008
	li      $a3, -0x1900
	sw      $0, 0x0010($sp)
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	b       .L80172F68
	sw      $v0, 0x0008($t8)
.L80172F2C:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x000A
	li      $a3, -0x1900
	sw      $0, 0x0010($sp)
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	sw      $v0, 0x0008($t9)
.L80172F68:
	la.u    $t0, file_select_801B99F8
	la.l    $t0, file_select_801B99F8
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t1, 0x0008($t0)
	swc1    $f8, 0x0108($t1)
	jal     save_file_isactive
	li      $a0, 0x0003
	li      $at, 0x0001
	bne     $v0, $at, .L80172FD4
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0008
	li      $a3, 0x05DC
	sw      $0, 0x0010($sp)
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t2, file_select_801B99F8
	la.l    $t2, file_select_801B99F8
	b       .L80173010
	sw      $v0, 0x000C($t2)
.L80172FD4:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x000A
	li      $a3, 0x05DC
	sw      $0, 0x0010($sp)
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	sw      $v0, 0x000C($t3)
.L80173010:
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $t5, 0x000C($t4)
	swc1    $f10, 0x0108($t5)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	li      $t6, -0x0DAC
	sw      $t6, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0007
	li      $a3, -0x1900
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t7, file_select_801B99F8
	la.l    $t7, file_select_801B99F8
	sw      $v0, 0x0010($t7)
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lw      $t9, 0x0010($t8)
	swc1    $f16, 0x0108($t9)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	li      $t0, -0x0DAC
	sw      $t0, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0005
	li      $a3, -0x0856
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	sw      $v0, 0x0014($t1)
	la.u    $t2, file_select_801B99F8
	la.l    $t2, file_select_801B99F8
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t3, 0x0014($t2)
	swc1    $f18, 0x0108($t3)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	li      $t4, -0x0DAC
	sw      $t4, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0004
	li      $a3, 0x0856
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t5, file_select_801B99F8
	la.l    $t5, file_select_801B99F8
	sw      $v0, 0x0018($t5)
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t7, 0x0018($t6)
	swc1    $f4, 0x0108($t7)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002FE4
	li      $t8, -0x0DAC
	sw      $t8, 0x0010($sp)
	la.l    $a2, o_13002FE4
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x000B
	li      $a3, 0x1900
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029EA24
	sw      $0, 0x0020($sp)
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	sw      $v0, 0x0070($t9)
	la.u    $t0, file_select_801B99F8
	la.l    $t0, file_select_801B99F8
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t1, 0x0070($t0)
	swc1    $f6, 0x0108($t1)
	lui     $at, %hi(file_select_801A7D18)
	sb      $0, %lo(file_select_801A7D18)($at)
	b       .L80173198
	nop
.L80173198:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

file_select_801731A8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	lw      $t7, 0x0070($t6)
	li      $a2, 0x43480000
	lwc1    $f4, 0x00A0($t7)
	lwc1    $f8, 0x00A4($t7)
	trunc.w.s $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $a0, $f6
	mfc1    $a1, $f10
	jal     file_select_801702E8
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L80173210
	nop
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	lw      $t2, 0x0070($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t2)
	li      $t3, 0x001C
	lui     $at, %hi(file_select_801A7D10)
	b       .L801732CC
	sb      $t3, %lo(file_select_801A7D10)($at)
.L80173210:
	sb      $0, 0x001F($sp)
.L80173214:
	lb      $t4, 0x001F($sp)
	lui     $t6, %hi(file_select_801B99F8)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(file_select_801B99F8)($t6)
	lwc1    $f16, 0x00A0($t6)
	trunc.w.s $f18, $f16
	mfc1    $t7, $f18
	nop
	sh      $t7, 0x001C($sp)
	lb      $t9, 0x001F($sp)
	lui     $t0, %hi(file_select_801B99F8)
	sll     $t1, $t9, 2
	addu    $t0, $t0, $t1
	lw      $t0, %lo(file_select_801B99F8)($t0)
	lwc1    $f4, 0x00A4($t0)
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x001A($sp)
	lh      $a0, 0x001C($sp)
	lh      $a1, 0x001A($sp)
	jal     file_select_801702E8
	li      $a2, 0x43480000
	li      $at, 0x0001
	bne     $v0, $at, .L801732B0
	nop
	lb      $t5, 0x001F($sp)
	lui     $t8, %hi(file_select_801B99F8)
	li      $t4, 0x0001
	sll     $t6, $t5, 2
	addu    $t8, $t8, $t6
	lw      $t8, %lo(file_select_801B99F8)($t8)
	sw      $t4, 0x00F4($t8)
	lb      $t7, 0x001F($sp)
	lui     $at, %hi(file_select_801A7D10)
	sb      $t7, %lo(file_select_801A7D10)($at)
	b       .L801732CC
	nop
.L801732B0:
	lb      $t9, 0x001F($sp)
	addiu   $t1, $t9, 0x0001
	sll     $t0, $t1, 24
	sra     $t2, $t0, 24
	slti    $at, $t2, 0x0007
	bnez    $at, .L80173214
	sb      $t1, 0x001F($sp)
.L801732CC:
	lui     $t3, %hi(file_select_801A7D10)
	lbu     $t3, %lo(file_select_801A7D10)($t3)
	sltiu   $at, $t3, 0x001D
	beqz    $at, L80173418
	nop
	sll     $t3, $t3, 2
	lui     $at, %hi(file_select_801A7FFC)
	addu    $at, $at, $t3
	lw      $t3, %lo(file_select_801A7FFC)($at)
	jr      $t3
	nop
.globl L801732F8
L801732F8:
	li.u    $a0, 0x7023FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x7023FF81
	b       L80173418
	nop
.globl L80173314
L80173314:
	li.u    $a0, 0x7023FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x7023FF81
	b       L80173418
	nop
.globl L80173330
L80173330:
	li.u    $a0, 0x7023FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x7023FF81
	b       L80173418
	nop
.globl L8017334C
L8017334C:
	li.u    $a0, 0x7023FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x7023FF81
	b       L80173418
	nop
.globl L80173368
L80173368:
	li.u    $a0, 0x70060081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70060081
	la.u    $t5, file_select_801B99F8
	la.l    $t5, file_select_801B99F8
	jal     file_select_80170D60
	lw      $a0, 0x0010($t5)
	b       L80173418
	nop
.globl L80173394
L80173394:
	li.u    $a0, 0x70060081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70060081
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	jal     file_select_8017137C
	lw      $a0, 0x0014($t6)
	b       L80173418
	nop
.globl L801733C0
L801733C0:
	li.u    $a0, 0x70060081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70060081
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	jal     file_select_80171C0C
	lw      $a0, 0x0018($t4)
	b       L80173418
	nop
.globl L801733EC
L801733EC:
	li.u    $a0, 0x70060081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70060081
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	jal     file_select_8017236C
	lw      $a0, 0x0070($t8)
	b       L80173418
	nop
.globl L80173418
L80173418:
	b       .L80173420
	nop
.L80173420:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl file_select_80173430
file_select_80173430:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(file_select_801A7D10)
	lb      $t6, %lo(file_select_801A7D10)($t6)
	addiu   $t7, $t6, 0x0001
	sltiu   $at, $t7, 0x0021
	beqz    $at, .L80173748
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(file_select_801A8070)
	addu    $at, $at, $t7
	lw      $t7, %lo(file_select_801A8070)($at)
	jr      $t7
	nop
.globl L80173468
L80173468:
	jal     file_select_801731A8
	nop
	b       .L80173748
	nop
.globl L80173478
L80173478:
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	lw      $a0, 0x0000($t8)
	jal     file_select_8017261C
	li      $a1, 0x0001
	b       .L80173748
	nop
.globl L80173494
L80173494:
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	lw      $a0, 0x0004($t9)
	jal     file_select_8017261C
	li      $a1, 0x0002
	b       .L80173748
	nop
.globl L801734B0
L801734B0:
	la.u    $t0, file_select_801B99F8
	la.l    $t0, file_select_801B99F8
	lw      $a0, 0x0008($t0)
	jal     file_select_8017261C
	li      $a1, 0x0003
	b       .L80173748
	nop
.globl L801734CC
L801734CC:
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	lw      $a0, 0x000C($t1)
	jal     file_select_8017261C
	li      $a1, 0x0004
	b       .L80173748
	nop
.globl L801734E8
L801734E8:
	la.u    $t2, file_select_801B99F8
	la.l    $t2, file_select_801B99F8
	jal     file_select_80171168
	lw      $a0, 0x0010($t2)
	b       .L80173748
	nop
.globl L80173500
L80173500:
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	jal     file_select_80171A2C
	lw      $a0, 0x0014($t3)
	b       .L80173748
	nop
.globl L80173518
L80173518:
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	jal     file_select_801721AC
	lw      $a0, 0x0018($t4)
	b       .L80173748
	nop
.globl L80173530
L80173530:
	la.u    $t5, file_select_801B99F8
	la.l    $t5, file_select_801B99F8
	lw      $a0, 0x001C($t5)
	jal     file_select_80170CB4
	li      $a1, 0x0004
	b       .L80173748
	nop
.globl L8017354C
L8017354C:
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	lw      $a0, 0x0020($t6)
	jal     file_select_80170CB4
	li      $a1, 0x0004
	b       .L80173748
	nop
.globl L80173568
L80173568:
	la.u    $t7, file_select_801B99F8
	la.l    $t7, file_select_801B99F8
	lw      $a0, 0x0024($t7)
	jal     file_select_80170CB4
	li      $a1, 0x0004
	b       .L80173748
	nop
.globl L80173584
L80173584:
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	lw      $a0, 0x0028($t8)
	jal     file_select_80170CB4
	li      $a1, 0x0004
	b       .L80173748
	nop
.globl L801735A0
L801735A0:
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	lw      $a1, 0x002C($t9)
	jal     file_select_80172644
	li      $a0, 0x0004
	b       .L80173748
	nop
.globl L801735BC
L801735BC:
	la.u    $t0, file_select_801B99F8
	la.l    $t0, file_select_801B99F8
	lw      $a1, 0x0030($t0)
	jal     file_select_801729E0
	li      $a0, 0x0004
	b       .L80173748
	nop
.globl L801735D8
L801735D8:
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	lw      $a1, 0x0034($t1)
	jal     file_select_80172BA8
	li      $a0, 0x0004
	b       .L80173748
	nop
.globl L801735F4
L801735F4:
	b       .L80173748
	nop
.globl L801735FC
L801735FC:
	b       .L80173748
	nop
.globl L80173604
L80173604:
	b       .L80173748
	nop
.globl L8017360C
L8017360C:
	b       .L80173748
	nop
.globl L80173614
L80173614:
	la.u    $t2, file_select_801B99F8
	la.l    $t2, file_select_801B99F8
	lw      $a1, 0x0048($t2)
	jal     file_select_80172644
	li      $a0, 0x0005
	b       .L80173748
	nop
.globl L80173630
L80173630:
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	lw      $a1, 0x004C($t3)
	jal     file_select_80172818
	li      $a0, 0x0005
	b       .L80173748
	nop
.globl L8017364C
L8017364C:
	la.u    $t4, file_select_801B99F8
	la.l    $t4, file_select_801B99F8
	lw      $a1, 0x0050($t4)
	jal     file_select_80172BA8
	li      $a0, 0x0005
	b       .L80173748
	nop
.globl L80173668
L80173668:
	b       .L80173748
	nop
.globl L80173670
L80173670:
	b       .L80173748
	nop
.globl L80173678
L80173678:
	b       .L80173748
	nop
.globl L80173680
L80173680:
	b       .L80173748
	nop
.globl L80173688
L80173688:
	la.u    $t5, file_select_801B99F8
	la.l    $t5, file_select_801B99F8
	lw      $a1, 0x0064($t5)
	jal     file_select_80172644
	li      $a0, 0x0006
	b       .L80173748
	nop
.globl L801736A4
L801736A4:
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	lw      $a1, 0x0068($t6)
	jal     file_select_80172818
	li      $a0, 0x0006
	b       .L80173748
	nop
.globl L801736C0
L801736C0:
	la.u    $t7, file_select_801B99F8
	la.l    $t7, file_select_801B99F8
	lw      $a1, 0x006C($t7)
	jal     file_select_801729E0
	li      $a0, 0x0006
	b       .L80173748
	nop
.globl L801736DC
L801736DC:
	la.u    $t8, file_select_801B99F8
	la.l    $t8, file_select_801B99F8
	jal     file_select_801724B8
	lw      $a0, 0x0070($t8)
	b       .L80173748
	nop
.globl L801736F4
L801736F4:
	la.u    $t9, file_select_801B99F8
	la.l    $t9, file_select_801B99F8
	lw      $a1, 0x0074($t9)
	jal     file_select_80172644
	li      $a0, 0x001C
	b       .L80173748
	nop
.globl L80173710
L80173710:
	la.u    $t0, file_select_801B99F8
	la.l    $t0, file_select_801B99F8
	lw      $a1, 0x0078($t0)
	jal     file_select_80172644
	li      $a0, 0x001C
	b       .L80173748
	nop
.globl L8017372C
L8017372C:
	la.u    $t1, file_select_801B99F8
	la.l    $t1, file_select_801B99F8
	lw      $a1, 0x007C($t1)
	jal     file_select_80172644
	li      $a0, 0x001C
	b       .L80173748
	nop
.L80173748:
	la.u    $t3, file_select_801A7D28
	la.l    $t3, file_select_801A7D28
	li      $t2, -0x2710
	sh      $t2, 0x0000($t3)
	la.u    $t5, file_select_801A7D28
	la.l    $t5, file_select_801A7D28
	li      $t4, -0x2710
	sh      $t4, 0x0002($t5)
	b       .L80173770
	nop
.L80173770:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

file_select_80173780:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(file_select_801A7D10)
	lb      $t6, %lo(file_select_801A7D10)($t6)
	li      $at, 0x0007
	beq     $t6, $at, .L801737C0
	nop
	li      $at, 0x0008
	beq     $t6, $at, .L801737C0
	nop
	li      $at, 0x0009
	beq     $t6, $at, .L801737C0
	nop
	li      $at, 0x000A
	bne     $t6, $at, .L8017387C
	nop
.L801737C0:
	lui     $t7, %hi(controller)
	lw      $t7, %lo(controller)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x5000
	beqz    $t9, .L80173830
	nop
	la.u    $t0, file_select_801A7D1C
	la.l    $t0, file_select_801A7D1C
	lwc1    $f4, 0x0000($t0)
	la.u    $t3, file_select_801A7D28
	la.l    $t3, file_select_801A7D28
	trunc.w.s $f6, $f4
	mfc1    $t2, $f6
	nop
	sh      $t2, 0x0000($t3)
	la.u    $t4, file_select_801A7D1C
	la.l    $t4, file_select_801A7D1C
	lwc1    $f8, 0x0004($t4)
	la.u    $t7, file_select_801A7D28
	la.l    $t7, file_select_801A7D28
	trunc.w.s $f10, $f8
	mfc1    $t6, $f10
	nop
	sh      $t6, 0x0002($t7)
	li      $t8, 0x0001
	lui     $at, %hi(file_select_801A7D24)
	b       .L80173874
	sh      $t8, %lo(file_select_801A7D24)($at)
.L80173830:
	lui     $t9, %hi(controller)
	lw      $t9, %lo(controller)($t9)
	lhu     $t0, 0x0012($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L80173874
	nop
	lui     $t2, %hi(file_select_801A7D50)
	lb      $t2, %lo(file_select_801A7D50)($t2)
	li      $t3, 0x0001
	lui     $at, %hi(file_select_801A7D50)
	subu    $t4, $t3, $t2
	sb      $t4, %lo(file_select_801A7D50)($at)
	li.u    $a0, 0x70110081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70110081
.L80173874:
	b       .L801738E8
	nop
.L8017387C:
	lui     $t5, %hi(controller)
	lw      $t5, %lo(controller)($t5)
	lhu     $t6, 0x0012($t5)
	andi    $t7, $t6, 0xD000
	beqz    $t7, .L801738E8
	nop
	la.u    $t8, file_select_801A7D1C
	la.l    $t8, file_select_801A7D1C
	lwc1    $f16, 0x0000($t8)
	la.u    $t1, file_select_801A7D28
	la.l    $t1, file_select_801A7D28
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	sh      $t0, 0x0000($t1)
	la.u    $t3, file_select_801A7D1C
	la.l    $t3, file_select_801A7D1C
	lwc1    $f4, 0x0004($t3)
	la.u    $t5, file_select_801A7D28
	la.l    $t5, file_select_801A7D28
	trunc.w.s $f6, $f4
	mfc1    $t4, $f6
	nop
	sh      $t4, 0x0002($t5)
	li      $t6, 0x0001
	lui     $at, %hi(file_select_801A7D24)
	sh      $t6, %lo(file_select_801A7D24)($at)
.L801738E8:
	b       .L801738F0
	nop
.L801738F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

file_select_80173900:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(controller)
	lw      $t6, %lo(controller)($t6)
	lh      $t7, 0x0000($t6)
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(controller)
	lw      $t8, %lo(controller)($t8)
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x001C($sp)
	lh      $t0, 0x001C($sp)
	slti    $at, $t0, -0x0001
	bnez    $at, .L80173948
	nop
	slti    $at, $t0, 0x0002
	beqz    $at, .L80173948
	nop
	sh      $0, 0x001C($sp)
.L80173948:
	lh      $t1, 0x001E($sp)
	slti    $at, $t1, -0x0001
	bnez    $at, .L80173968
	nop
	slti    $at, $t1, 0x0002
	beqz    $at, .L80173968
	nop
	sh      $0, 0x001E($sp)
.L80173968:
	lh      $t3, 0x001E($sp)
	la.u    $t2, file_select_801A7D1C
	la.l    $t2, file_select_801A7D1C
	lwc1    $f4, 0x0000($t2)
	bgez    $t3, .L80173988
	sra     $t4, $t3, 3
	addiu   $at, $t3, 0x0007
	sra     $t4, $at, 3
.L80173988:
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0000($t2)
	lh      $t6, 0x001C($sp)
	la.u    $t5, file_select_801A7D1C
	la.l    $t5, file_select_801A7D1C
	lwc1    $f16, 0x0004($t5)
	bgez    $t6, .L801739BC
	sra     $t7, $t6, 3
	addiu   $at, $t6, 0x0007
	sra     $t7, $at, 3
.L801739BC:
	mtc1    $t7, $f18
	nop
	cvt.s.w $f6, $f18
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x0004($t5)
	la.u    $t8, file_select_801A7D1C
	la.l    $t8, file_select_801A7D1C
	li      $at, 0x43040000
	mtc1    $at, $f10
	lwc1    $f8, 0x0000($t8)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80173A08
	nop
	li      $at, 0x43040000
	mtc1    $at, $f18
	la.u    $t9, file_select_801A7D1C
	la.l    $t9, file_select_801A7D1C
	swc1    $f18, 0x0000($t9)
.L80173A08:
	la.u    $t0, file_select_801A7D1C
	la.l    $t0, file_select_801A7D1C
	li      $at, 0xC3040000
	mtc1    $at, $f6
	lwc1    $f16, 0x0000($t0)
	c.lt.s  $f16, $f6
	nop
	bc1f    .L80173A40
	nop
	li      $at, 0xC3040000
	mtc1    $at, $f4
	la.u    $t1, file_select_801A7D1C
	la.l    $t1, file_select_801A7D1C
	swc1    $f4, 0x0000($t1)
.L80173A40:
	la.u    $t3, file_select_801A7D1C
	la.l    $t3, file_select_801A7D1C
	li      $at, 0x42B40000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($t3)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80173A78
	nop
	li      $at, 0x42B40000
	mtc1    $at, $f18
	la.u    $t4, file_select_801A7D1C
	la.l    $t4, file_select_801A7D1C
	swc1    $f18, 0x0004($t4)
.L80173A78:
	la.u    $t2, file_select_801A7D1C
	la.l    $t2, file_select_801A7D1C
	li      $at, 0xC2B40000
	mtc1    $at, $f6
	lwc1    $f16, 0x0004($t2)
	c.lt.s  $f16, $f6
	nop
	bc1f    .L80173AB0
	nop
	li      $at, 0xC2B40000
	mtc1    $at, $f4
	la.u    $t6, file_select_801A7D1C
	la.l    $t6, file_select_801A7D1C
	swc1    $f4, 0x0004($t6)
.L80173AB0:
	lui     $t7, %hi(file_select_801A7D24)
	lh      $t7, %lo(file_select_801A7D24)($t7)
	bnez    $t7, .L80173AC8
	nop
	jal     file_select_80173780
	nop
.L80173AC8:
	b       .L80173AD0
	nop
.L80173AD0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

file_select_80173AE0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	jal     file_select_80173900
	nop
	la.u    $t6, file_select_801A7D1C
	la.l    $t6, file_select_801A7D1C
	li      $at, 0x43200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0000($t6)
	li      $at, 0x40140000
	mtc1    $at, $f17
	add.s   $f8, $f4, $f6
	mtc1    $0, $f16
	li      $at, 0x42F00000
	lwc1    $f6, 0x0004($t6)
	cvt.d.s $f10, $f8
	mtc1    $at, $f8
	sub.d   $f18, $f10, $f16
	li      $at, 0x40390000
	li      $a0, 0x0001
	add.s   $f10, $f6, $f8
	li      $a3, 0x0000
	cvt.s.d $f4, $f18
	mtc1    $0, $f18
	mtc1    $at, $f19
	cvt.d.s $f16, $f10
	mfc1    $a1, $f4
	sub.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	mfc1    $a2, $f6
	jal     message_802D7070
	nop
	lui     $t7, %hi(file_select_801A7D24)
	lh      $t7, %lo(file_select_801A7D24)($t7)
	bnez    $t7, .L80173BA4
	nop
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0024($sp)
	la.u    $t2, gfx_select_cursor_0
	la.l    $t2, gfx_select_cursor_0
	sw      $t2, 0x0004($t3)
.L80173BA4:
	lui     $t4, %hi(file_select_801A7D24)
	lh      $t4, %lo(file_select_801A7D24)($t4)
	beqz    $t4, .L80173BE8
	nop
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x0020($sp)
	la.u    $t9, gfx_select_cursor_1
	la.l    $t9, gfx_select_cursor_1
	sw      $t9, 0x0004($t0)
.L80173BE8:
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x001C($sp)
	lw      $t4, 0x001C($sp)
	li      $t3, 0xBD000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x001C($sp)
	sw      $0, 0x0004($t5)
	lui     $t6, %hi(file_select_801A7D24)
	lh      $t6, %lo(file_select_801A7D24)($t6)
	beqz    $t6, .L80173C54
	nop
	lui     $t7, %hi(file_select_801A7D24)
	lh      $t7, %lo(file_select_801A7D24)($t7)
	lui     $at, %hi(file_select_801A7D24)
	addiu   $t8, $t7, 0x0001
	sh      $t8, %lo(file_select_801A7D24)($at)
	lui     $t9, %hi(file_select_801A7D24)
	lh      $t9, %lo(file_select_801A7D24)($t9)
	li      $at, 0x0005
	bne     $t9, $at, .L80173C54
	nop
	lui     $at, %hi(file_select_801A7D24)
	sh      $0, %lo(file_select_801A7D24)($at)
.L80173C54:
	b       .L80173C5C
	nop
.L80173C5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

file_select_80173C6C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0024($sp)
	la.u    $t0, gfx_dprint_1cyc_start
	la.l    $t0, gfx_dprint_1cyc_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0020($sp)
	lw      $t5, 0x0020($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(file_select_801A7D18)
	lui     $t7, %hi(file_select_801A7D38)
	lbu     $t7, %lo(file_select_801A7D38)($t7)
	lbu     $t6, %lo(file_select_801A7D18)($t6)
	lw      $t1, 0x0020($sp)
	li      $at, -0x0100
	subu    $t8, $t6, $t7
	andi    $t9, $t8, 0x00FF
	or      $t0, $t9, $at
	sw      $t0, 0x0004($t1)
	lb      $a0, 0x002B($sp)
	lh      $a1, 0x002E($sp)
	lh      $a2, 0x0032($sp)
	jal     message_802D7B84
	lw      $a3, 0x0034($sp)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x001C($sp)
	la.u    $t6, gfx_dprint_1cyc_end
	la.l    $t6, gfx_dprint_1cyc_end
	sw      $t6, 0x0004($t7)
	b       .L80173D54
	nop
.L80173D54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

file_select_80173D64:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0024($sp)
	la.u    $t0, gfx_message_start
	la.l    $t0, gfx_message_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0020($sp)
	lw      $t5, 0x0020($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(file_select_801A7D18)
	lui     $t7, %hi(file_select_801A7D38)
	lbu     $t7, %lo(file_select_801A7D38)($t7)
	lbu     $t6, %lo(file_select_801A7D18)($t6)
	lw      $t1, 0x0020($sp)
	li      $at, -0x0100
	subu    $t8, $t6, $t7
	andi    $t9, $t8, 0x00FF
	or      $t0, $t9, $at
	sw      $t0, 0x0004($t1)
	lh      $a0, 0x002A($sp)
	lh      $a1, 0x002E($sp)
	jal     message_802D77DC
	lw      $a2, 0x0030($sp)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x001C($sp)
	la.u    $t6, gfx_message_end
	la.l    $t6, gfx_message_end
	sw      $t6, 0x0004($t7)
	b       .L80173E44
	nop
.L80173E44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

file_select_80173E54:
	lui     $t6, %hi(file_select_801A7D30)
	lb      $t6, %lo(file_select_801A7D30)($t6)
	li      $at, 0x0001
	bne     $t6, $at, .L80173EA8
	nop
	lui     $t7, %hi(file_select_801A7D38)
	lbu     $t7, %lo(file_select_801A7D38)($t7)
	lui     $at, %hi(file_select_801A7D38)
	addiu   $t8, $t7, 0x0032
	sb      $t8, %lo(file_select_801A7D38)($at)
	lui     $t9, %hi(file_select_801A7D38)
	lbu     $t9, %lo(file_select_801A7D38)($t9)
	li      $at, 0x00FA
	bne     $t9, $at, .L80173EA0
	nop
	lui     $at, %hi(file_select_801A7D30)
	sb      $0, %lo(file_select_801A7D30)($at)
	jr      $ra
	li      $v0, 0x0001
.L80173EA0:
	b       .L80173ECC
	nop
.L80173EA8:
	lui     $t0, %hi(file_select_801A7D38)
	lbu     $t0, %lo(file_select_801A7D38)($t0)
	blez    $t0, .L80173ECC
	nop
	lui     $t1, %hi(file_select_801A7D38)
	lbu     $t1, %lo(file_select_801A7D38)($t1)
	lui     $at, %hi(file_select_801A7D38)
	addiu   $t2, $t1, -0x0032
	sb      $t2, %lo(file_select_801A7D38)($at)
.L80173ECC:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

file_select_80173EE4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sb      $0, 0x001B($sp)
	jal     save_file_isactive
	lb      $a0, 0x0023($sp)
	li      $at, 0x0001
	bne     $v0, $at, .L80173FA4
	nop
	lb      $a0, 0x0023($sp)
	move    $a1, $0
	jal     save_file_star_range
	li      $a2, 0x0018
	sh      $v0, 0x0018($sp)
	la.u    $a3, str_801A7DBC
	la.l    $a3, str_801A7DBC
	li      $a0, 0x0002
	lh      $a1, 0x0026($sp)
	jal     message_802D7B84
	lh      $a2, 0x002A($sp)
	lh      $t6, 0x0018($sp)
	slti    $at, $t6, 0x0064
	beqz    $at, .L80173F70
	nop
	lh      $a1, 0x0026($sp)
	la.u    $a3, str_801A7DC0
	la.l    $a3, str_801A7DC0
	li      $a0, 0x0002
	lh      $a2, 0x002A($sp)
	jal     message_802D7B84
	addiu   $a1, $a1, 0x0010
	li      $t7, 0x0010
	sb      $t7, 0x001B($sp)
.L80173F70:
	lh      $a0, 0x0018($sp)
	jal     message_802D8B34
	addiu   $a1, $sp, 0x001C
	lh      $t8, 0x0026($sp)
	lb      $t9, 0x001B($sp)
	li      $a0, 0x0002
	lh      $a2, 0x002A($sp)
	addu    $a1, $t8, $t9
	addiu   $a1, $a1, 0x0010
	jal     message_802D7B84
	addiu   $a3, $sp, 0x001C
	b       .L80173FBC
	nop
.L80173FA4:
	la.u    $a3, str_801A7DB8
	la.l    $a3, str_801A7DB8
	li      $a0, 0x0002
	lh      $a1, 0x0026($sp)
	jal     message_802D7B84
	lh      $a2, 0x002A($sp)
.L80173FBC:
	b       .L80173FC4
	nop
.L80173FC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

file_select_80173FD4:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x003C($sp)
	la.u    $t0, gfx_dprint_1cyc_start
	la.l    $t0, gfx_dprint_1cyc_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0038($sp)
	lw      $t5, 0x0038($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(file_select_801A7D18)
	lbu     $t6, %lo(file_select_801A7D18)($t6)
	lw      $t9, 0x0038($sp)
	li      $at, -0x0100
	andi    $t7, $t6, 0x00FF
	or      $t8, $t7, $at
	sw      $t8, 0x0004($t9)
	la.u    $a3, str_801A7DC4
	la.l    $a3, str_801A7DC4
	li      $a0, 0x0002
	li      $a1, 0x005D
	jal     message_802D7B84
	li      $a2, 0x0023
	move    $a0, $0
	li      $a1, 0x005C
	jal     file_select_80173EE4
	li      $a2, 0x004E
	li      $a0, 0x0001
	li      $a1, 0x00D1
	jal     file_select_80173EE4
	li      $a2, 0x004E
	li      $a0, 0x0002
	li      $a1, 0x005C
	jal     file_select_80173EE4
	li      $a2, 0x0076
	li      $a0, 0x0003
	li      $a1, 0x00D1
	jal     file_select_80173EE4
	li      $a2, 0x0076
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0034($sp)
	la.u    $t4, gfx_dprint_1cyc_end
	la.l    $t4, gfx_dprint_1cyc_end
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0030($sp)
	la.u    $t0, gfx_message_start
	la.l    $t0, gfx_message_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(file_select_801A7D18)
	lbu     $t6, %lo(file_select_801A7D18)($t6)
	lw      $t9, 0x002C($sp)
	li      $at, -0x0100
	andi    $t7, $t6, 0x00FF
	or      $t8, $t7, $at
	sw      $t8, 0x0004($t9)
	la.u    $a2, str_801A7DD0
	la.l    $a2, str_801A7DD0
	li      $a0, 0x0034
	jal     message_802D77DC
	li      $a1, 0x0027
	la.u    $a2, str_801A7DD8
	la.l    $a2, str_801A7DD8
	li      $a0, 0x0075
	jal     message_802D77DC
	li      $a1, 0x0027
	la.u    $a2, str_801A7DE0
	la.l    $a2, str_801A7DE0
	li      $a0, 0x00B1
	jal     message_802D77DC
	li      $a1, 0x0027
	lui     $t0, %hi(file_select_801A7D40)
	lb      $t0, %lo(file_select_801A7D40)($t0)
	la.u    $t2, str_801A7D80
	la.l    $t2, str_801A7D80
	sll     $t1, $t0, 3
	addu    $a1, $t1, $t2
	li      $a0, 0x00FE
	jal     message_802D8844
	li      $a2, 0x41200000
	lui     $at, %hi(file_select_801B99F0)
	sh      $v0, %lo(file_select_801B99F0)($at)
	lui     $t3, %hi(file_select_801A7D40)
	lb      $t3, %lo(file_select_801A7D40)($t3)
	la.u    $t5, str_801A7D80
	la.l    $t5, str_801A7D80
	lui     $a0, %hi(file_select_801B99F0)
	sll     $t4, $t3, 3
	addu    $a2, $t4, $t5
	lh      $a0, %lo(file_select_801B99F0)($a0)
	jal     message_802D77DC
	li      $a1, 0x0027
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0028($sp)
	la.u    $t0, gfx_message_end
	la.l    $t0, gfx_message_end
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0024($sp)
	lw      $t5, 0x0024($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0024($sp)
	la.u    $t6, gfx_msg8_start
	la.l    $t6, gfx_msg8_start
	sw      $t6, 0x0004($t7)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li      $t0, 0xFB000000
	sw      $t0, 0x0000($t1)
	lui     $t2, %hi(file_select_801A7D18)
	lbu     $t2, %lo(file_select_801A7D18)($t2)
	lw      $t5, 0x0020($sp)
	li      $at, -0x0100
	andi    $t3, $t2, 0x00FF
	or      $t4, $t3, $at
	sw      $t4, 0x0004($t5)
	la.u    $a2, str_801A7D98
	la.l    $a2, str_801A7D98
	li      $a0, 0x005C
	jal     message_802D7E88
	li      $a1, 0x0041
	la.u    $a2, str_801A7DA0
	la.l    $a2, str_801A7DA0
	li      $a0, 0x00CF
	jal     message_802D7E88
	li      $a1, 0x0041
	la.u    $a2, str_801A7DA8
	la.l    $a2, str_801A7DA8
	li      $a0, 0x005C
	jal     message_802D7E88
	li      $a1, 0x0069
	la.u    $a2, str_801A7DB0
	la.l    $a2, str_801A7DB0
	li      $a0, 0x00CF
	jal     message_802D7E88
	li      $a1, 0x0069
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x001C($sp)
	la.u    $t0, gfx_msg8_end
	la.l    $t0, gfx_msg8_end
	sw      $t0, 0x0004($t1)
	b       .L80174314
	nop
.L80174314:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

file_select_80174324:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lb      $s0, 0x002B($sp)
	beqz    $s0, .L80174354
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80174374
	nop
	b       .L80174390
	nop
.L80174354:
	la.u    $a3, str_801A7DE8
	la.l    $a3, str_801A7DE8
	li      $a0, 0x0002
	li      $a1, 0x005F
	jal     file_select_80173C6C
	li      $a2, 0x0023
	b       .L80174390
	nop
.L80174374:
	la.u    $a2, str_801A7DF4
	la.l    $a2, str_801A7DF4
	li      $a0, 0x0063
	jal     file_select_80173D64
	li      $a1, 0x00BE
	b       .L80174390
	nop
.L80174390:
	b       .L80174398
	nop
.L80174398:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

file_select_801743AC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(file_select_801A7D3C)
	lh      $t6, %lo(file_select_801A7D3C)($t6)
	li      $at, 0x0014
	bne     $t6, $at, .L801743D4
	nop
	li      $t7, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t7, %lo(file_select_801A7D30)($at)
.L801743D4:
	jal     file_select_80173E54
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L80174410
	nop
	lui     $t8, %hi(file_select_801A7D34)
	lb      $t8, %lo(file_select_801A7D34)($t8)
	bnez    $t8, .L80174408
	nop
	li      $t9, 0x0001
	lui     $at, %hi(file_select_801A7D34)
	b       .L80174410
	sb      $t9, %lo(file_select_801A7D34)($at)
.L80174408:
	lui     $at, %hi(file_select_801A7D34)
	sb      $0, %lo(file_select_801A7D34)($at)
.L80174410:
	lui     $a0, %hi(file_select_801A7D34)
	jal     file_select_80174324
	lb      $a0, %lo(file_select_801A7D34)($a0)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x003C($sp)
	lw      $t3, 0x003C($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x003C($sp)
	la.u    $t4, gfx_dprint_1cyc_start
	la.l    $t4, gfx_dprint_1cyc_start
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0038($sp)
	lw      $t9, 0x0038($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t9)
	lui     $t0, %hi(file_select_801A7D18)
	lbu     $t0, %lo(file_select_801A7D18)($t0)
	lw      $t3, 0x0038($sp)
	li      $at, -0x0100
	andi    $t1, $t0, 0x00FF
	or      $t2, $t1, $at
	sw      $t2, 0x0004($t3)
	move    $a0, $0
	li      $a1, 0x005A
	jal     file_select_80173EE4
	li      $a2, 0x004C
	li      $a0, 0x0001
	li      $a1, 0x00D3
	jal     file_select_80173EE4
	li      $a2, 0x004C
	li      $a0, 0x0002
	li      $a1, 0x005A
	jal     file_select_80173EE4
	li      $a2, 0x0077
	li      $a0, 0x0003
	li      $a1, 0x00D3
	jal     file_select_80173EE4
	li      $a2, 0x0077
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0034($sp)
	lw      $t7, 0x0034($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0034($sp)
	la.u    $t8, gfx_dprint_1cyc_end
	la.l    $t8, gfx_dprint_1cyc_end
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0030($sp)
	lw      $t3, 0x0030($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0030($sp)
	la.u    $t4, gfx_message_start
	la.l    $t4, gfx_message_start
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t9)
	lui     $t0, %hi(file_select_801A7D18)
	lbu     $t0, %lo(file_select_801A7D18)($t0)
	lw      $t3, 0x002C($sp)
	li      $at, -0x0100
	andi    $t1, $t0, 0x00FF
	or      $t2, $t1, $at
	sw      $t2, 0x0004($t3)
	la.u    $a2, str_801A7D54
	la.l    $a2, str_801A7D54
	li      $a0, 0x002C
	jal     message_802D77DC
	li      $a1, 0x0023
	la.u    $a2, str_801A7D68
	la.l    $a2, str_801A7D68
	li      $a0, 0x0087
	jal     message_802D77DC
	li      $a1, 0x0023
	la.u    $a2, str_801A7D74
	la.l    $a2, str_801A7D74
	li      $a0, 0x00E7
	jal     message_802D77DC
	li      $a1, 0x0023
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0028($sp)
	la.u    $t8, gfx_message_end
	la.l    $t8, gfx_message_end
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0024($sp)
	lw      $t3, 0x0024($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0024($sp)
	la.u    $t4, gfx_msg8_start
	la.l    $t4, gfx_msg8_start
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t9)
	lui     $t0, %hi(file_select_801A7D18)
	lbu     $t0, %lo(file_select_801A7D18)($t0)
	lw      $t3, 0x0020($sp)
	li      $at, -0x0100
	andi    $t1, $t0, 0x00FF
	or      $t2, $t1, $at
	sw      $t2, 0x0004($t3)
	la.u    $a2, str_801A7D98
	la.l    $a2, str_801A7D98
	li      $a0, 0x0059
	jal     message_802D7E88
	li      $a1, 0x003E
	la.u    $a2, str_801A7DA0
	la.l    $a2, str_801A7DA0
	li      $a0, 0x00D3
	jal     message_802D7E88
	li      $a1, 0x003E
	la.u    $a2, str_801A7DA8
	la.l    $a2, str_801A7DA8
	li      $a0, 0x0059
	jal     message_802D7E88
	li      $a1, 0x0069
	la.u    $a2, str_801A7DB0
	la.l    $a2, str_801A7DB0
	li      $a0, 0x00D3
	jal     message_802D7E88
	li      $a1, 0x0069
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x001C($sp)
	la.u    $t8, gfx_msg8_end
	la.l    $t8, gfx_msg8_end
	sw      $t8, 0x0004($t9)
	b       .L801746E8
	nop
.L801746E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

file_select_801746F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lbu     $t6, 0x001B($sp)
	sltiu   $at, $t6, 0x0005
	beqz    $at, .L801747EC
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(file_select_801A80F4)
	addu    $at, $at, $t6
	lw      $t6, %lo(file_select_801A80F4)($at)
	jr      $t6
	nop
.globl L8017472C
L8017472C:
	lui     $t7, %hi(file_select_801A7D48)
	lb      $t7, %lo(file_select_801A7D48)($t7)
	li      $at, 0x0001
	bne     $t7, $at, .L8017475C
	nop
	la.u    $a2, str_801A7E6C
	la.l    $a2, str_801A7E6C
	li      $a0, 0x0077
	jal     file_select_80173D64
	li      $a1, 0x00BE
	b       .L80174774
	nop
.L8017475C:
	la.u    $a3, str_801A7E0C
	la.l    $a3, str_801A7E0C
	li      $a0, 0x0002
	li      $a1, 0x0068
	jal     file_select_80173C6C
	li      $a2, 0x0023
.L80174774:
	b       .L801747EC
	nop
.globl L8017477C
L8017477C:
	la.u    $a2, str_801A7E18
	la.l    $a2, str_801A7E18
	li      $a0, 0x006D
	jal     file_select_80173D64
	li      $a1, 0x00BE
	b       .L801747EC
	nop
.globl L80174798
L80174798:
	la.u    $a2, str_801A7E2C
	la.l    $a2, str_801A7E2C
	li      $a0, 0x0065
	jal     file_select_80173D64
	li      $a1, 0x00BE
	b       .L801747EC
	nop
.globl L801747B4
L801747B4:
	la.u    $a2, str_801A7E44
	la.l    $a2, str_801A7E44
	li      $a0, 0x006E
	jal     file_select_80173D64
	li      $a1, 0x00BE
	b       .L801747EC
	nop
.globl L801747D0
L801747D0:
	la.u    $a2, str_801A7E58
	la.l    $a2, str_801A7E58
	li      $a0, 0x006E
	jal     file_select_80173D64
	li      $a1, 0x00BE
	b       .L801747EC
	nop
.L801747EC:
	b       .L801747F4
	nop
.L801747F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

file_select_80174804:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	lw      $t7, 0x0014($t6)
	lw      $s0, 0x010C($t7)
	beqz    $s0, .L80174848
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L801748AC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8017492C
	nop
	b       .L80174994
	nop
.L80174848:
	lui     $t8, %hi(file_select_801A7D3C)
	lh      $t8, %lo(file_select_801A7D3C)($t8)
	li      $at, 0x0014
	bne     $t8, $at, .L80174868
	nop
	li      $t9, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t9, %lo(file_select_801A7D30)($at)
.L80174868:
	jal     file_select_80173E54
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L801748A4
	nop
	lui     $t0, %hi(file_select_801A7D34)
	lb      $t0, %lo(file_select_801A7D34)($t0)
	bnez    $t0, .L8017489C
	nop
	li      $t1, 0x0002
	lui     $at, %hi(file_select_801A7D34)
	b       .L801748A4
	sb      $t1, %lo(file_select_801A7D34)($at)
.L8017489C:
	lui     $at, %hi(file_select_801A7D34)
	sb      $0, %lo(file_select_801A7D34)($at)
.L801748A4:
	b       .L80174994
	nop
.L801748AC:
	lui     $t2, %hi(file_select_801A7D3C)
	lh      $t2, %lo(file_select_801A7D3C)($t2)
	li      $at, 0x0014
	bne     $t2, $at, .L801748E0
	nop
	lui     $t3, %hi(file_select_801A7D34)
	lb      $t3, %lo(file_select_801A7D34)($t3)
	li      $at, 0x0004
	bne     $t3, $at, .L801748E0
	nop
	li      $t4, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t4, %lo(file_select_801A7D30)($at)
.L801748E0:
	jal     file_select_80173E54
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L80174924
	nop
	lui     $t5, %hi(file_select_801A7D34)
	lb      $t5, %lo(file_select_801A7D34)($t5)
	li      $at, 0x0001
	beq     $t5, $at, .L80174918
	nop
	li      $t6, 0x0001
	lui     $at, %hi(file_select_801A7D34)
	b       .L80174924
	sb      $t6, %lo(file_select_801A7D34)($at)
.L80174918:
	li      $t7, 0x0004
	lui     $at, %hi(file_select_801A7D34)
	sb      $t7, %lo(file_select_801A7D34)($at)
.L80174924:
	b       .L80174994
	nop
.L8017492C:
	lui     $t8, %hi(file_select_801A7D3C)
	lh      $t8, %lo(file_select_801A7D3C)($t8)
	li      $at, 0x0014
	bne     $t8, $at, .L8017494C
	nop
	li      $t9, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t9, %lo(file_select_801A7D30)($at)
.L8017494C:
	jal     file_select_80173E54
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L8017498C
	nop
	lui     $t0, %hi(file_select_801A7D34)
	lb      $t0, %lo(file_select_801A7D34)($t0)
	li      $at, 0x0003
	beq     $t0, $at, .L80174984
	nop
	li      $t1, 0x0003
	lui     $at, %hi(file_select_801A7D34)
	b       .L8017498C
	sb      $t1, %lo(file_select_801A7D34)($at)
.L80174984:
	lui     $at, %hi(file_select_801A7D34)
	sb      $0, %lo(file_select_801A7D34)($at)
.L8017498C:
	b       .L80174994
	nop
.L80174994:
	b       .L8017499C
	nop
.L8017499C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

file_select_801749B0:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	jal     file_select_80174804
	nop
	lui     $a0, %hi(file_select_801A7D34)
	jal     file_select_801746F8
	lb      $a0, %lo(file_select_801A7D34)($a0)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x003C($sp)
	la.u    $t0, gfx_dprint_1cyc_start
	la.l    $t0, gfx_dprint_1cyc_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0038($sp)
	lw      $t5, 0x0038($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(file_select_801A7D18)
	lbu     $t6, %lo(file_select_801A7D18)($t6)
	lw      $t9, 0x0038($sp)
	li      $at, -0x0100
	andi    $t7, $t6, 0x00FF
	or      $t8, $t7, $at
	sw      $t8, 0x0004($t9)
	move    $a0, $0
	li      $a1, 0x005A
	jal     file_select_80173EE4
	li      $a2, 0x004C
	li      $a0, 0x0001
	li      $a1, 0x00D3
	jal     file_select_80173EE4
	li      $a2, 0x004C
	li      $a0, 0x0002
	li      $a1, 0x005A
	jal     file_select_80173EE4
	li      $a2, 0x0077
	li      $a0, 0x0003
	li      $a1, 0x00D3
	jal     file_select_80173EE4
	li      $a2, 0x0077
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0034($sp)
	la.u    $t4, gfx_dprint_1cyc_end
	la.l    $t4, gfx_dprint_1cyc_end
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0030($sp)
	la.u    $t0, gfx_message_start
	la.l    $t0, gfx_message_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(file_select_801A7D18)
	lbu     $t6, %lo(file_select_801A7D18)($t6)
	lw      $t9, 0x002C($sp)
	li      $at, -0x0100
	andi    $t7, $t6, 0x00FF
	or      $t8, $t7, $at
	sw      $t8, 0x0004($t9)
	la.u    $a2, str_801A7D54
	la.l    $a2, str_801A7D54
	li      $a0, 0x002C
	jal     message_802D77DC
	li      $a1, 0x0023
	la.u    $a2, str_801A7D5C
	la.l    $a2, str_801A7D5C
	li      $a0, 0x0080
	jal     message_802D77DC
	li      $a1, 0x0023
	la.u    $a2, str_801A7D74
	la.l    $a2, str_801A7D74
	li      $a0, 0x00E6
	jal     message_802D77DC
	li      $a1, 0x0023
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0028($sp)
	la.u    $t4, gfx_message_end
	la.l    $t4, gfx_message_end
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0024($sp)
	la.u    $t0, gfx_msg8_start
	la.l    $t0, gfx_msg8_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0020($sp)
	lw      $t5, 0x0020($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(file_select_801A7D18)
	lbu     $t6, %lo(file_select_801A7D18)($t6)
	lw      $t9, 0x0020($sp)
	li      $at, -0x0100
	andi    $t7, $t6, 0x00FF
	or      $t8, $t7, $at
	sw      $t8, 0x0004($t9)
	la.u    $a2, str_801A7D98
	la.l    $a2, str_801A7D98
	li      $a0, 0x0059
	jal     message_802D7E88
	li      $a1, 0x003E
	la.u    $a2, str_801A7DA0
	la.l    $a2, str_801A7DA0
	li      $a0, 0x00D3
	jal     message_802D7E88
	li      $a1, 0x003E
	la.u    $a2, str_801A7DA8
	la.l    $a2, str_801A7DA8
	li      $a0, 0x0059
	jal     message_802D7E88
	li      $a1, 0x0069
	la.u    $a2, str_801A7DB0
	la.l    $a2, str_801A7DB0
	li      $a0, 0x00D3
	jal     message_802D7E88
	li      $a1, 0x0069
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x001C($sp)
	la.u    $t4, gfx_msg8_end
	la.l    $t4, gfx_msg8_end
	sw      $t4, 0x0004($t5)
	b       .L80174C98
	nop
.L80174C98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

file_select_80174CA8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sll     $t7, $t6, 12
	sh      $t7, 0x002E($sp)
	lh      $t9, 0x0032($sp)
	la.u    $t8, file_select_801A7D1C
	la.l    $t8, file_select_801A7D1C
	addiu   $t0, $t9, 0x0046
	mtc1    $t0, $f6
	lwc1    $f4, 0x0000($t8)
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	trunc.w.s $f16, $f10
	mfc1    $t2, $f16
	nop
	sh      $t2, 0x002C($sp)
	la.u    $t3, file_select_801A7D1C
	la.l    $t3, file_select_801A7D1C
	li      $at, 0x42F00000
	mtc1    $at, $f6
	lwc1    $f18, 0x0004($t3)
	add.s   $f4, $f18, $f6
	trunc.w.s $f8, $f4
	mfc1    $t5, $f8
	nop
	sh      $t5, 0x002A($sp)
	lh      $t6, 0x002C($sp)
	slti    $at, $t6, 0x00A9
	beqz    $at, .L80174E40
	nop
	slti    $at, $t6, 0x008C
	bnez    $at, .L80174E40
	nop
	lh      $t7, 0x002A($sp)
	slti    $at, $t7, 0x00D2
	beqz    $at, .L80174E40
	nop
	slti    $at, $t7, 0x00BF
	bnez    $at, .L80174E40
	nop
	lhu     $t8, 0x002E($sp)
	lui     $at, %hi(math_sin)
	li      $t2, 0x0001
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x42480000
	mtc1    $at, $f16
	li      $at, 0x434D0000
	mtc1    $at, $f6
	mul.s   $f18, $f10, $f16
	add.s   $f4, $f18, $f6
	cfc1    $t1, $31
	ctc1    $t2, $31
	nop
	cvt.w.s $f8, $f4
	cfc1    $t2, $31
	nop
	andi    $at, $t2, 0x0004
	andi    $t2, $t2, 0x0078
	beqz    $t2, .L80174E00
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f8
	li      $t2, 0x0001
	sub.s   $f8, $f4, $f8
	ctc1    $t2, $31
	nop
	cvt.w.s $f8, $f8
	cfc1    $t2, $31
	nop
	andi    $at, $t2, 0x0004
	andi    $t2, $t2, 0x0078
	bnez    $t2, .L80174DF8
	nop
	mfc1    $t2, $f8
	li      $at, 0x80000000
	b       .L80174E10
	or      $t2, $t2, $at
.L80174DF8:
	b       .L80174E10
	li      $t2, -0x0001
.L80174E00:
	mfc1    $t2, $f8
	nop
	bltz    $t2, .L80174DF8
	nop
.L80174E10:
	la.u    $t3, file_select_801B9A78
	ctc1    $t1, $31
	la.l    $t3, file_select_801B9A78
	sb      $t2, 0x0000($t3)
	la.u    $t5, file_select_801B9A78
	la.l    $t5, file_select_801B9A78
	li      $t4, 0x0096
	sb      $t4, 0x0001($t5)
	li      $t6, 0x0001
	lui     $at, %hi(file_select_801A7D44)
	b       .L80174F88
	sb      $t6, %lo(file_select_801A7D44)($at)
.L80174E40:
	lh      $t7, 0x002C($sp)
	slti    $at, $t7, 0x00DA
	beqz    $at, .L80174F60
	nop
	slti    $at, $t7, 0x00BD
	bnez    $at, .L80174F60
	nop
	lh      $t8, 0x002A($sp)
	slti    $at, $t8, 0x00D2
	beqz    $at, .L80174F60
	nop
	slti    $at, $t8, 0x00BF
	bnez    $at, .L80174F60
	nop
	la.u    $t0, file_select_801B9A78
	la.l    $t0, file_select_801B9A78
	li      $t9, 0x0096
	sb      $t9, 0x0000($t0)
	lhu     $t1, 0x002E($sp)
	lui     $at, %hi(math_sin)
	li      $t5, 0x0001
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x42480000
	mtc1    $at, $f16
	li      $at, 0x434D0000
	mtc1    $at, $f6
	mul.s   $f18, $f10, $f16
	add.s   $f4, $f18, $f6
	cfc1    $t4, $31
	ctc1    $t5, $31
	nop
	cvt.w.s $f8, $f4
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, .L80174F30
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f8
	li      $t5, 0x0001
	sub.s   $f8, $f4, $f8
	ctc1    $t5, $31
	nop
	cvt.w.s $f8, $f8
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	bnez    $t5, .L80174F28
	nop
	mfc1    $t5, $f8
	li      $at, 0x80000000
	b       .L80174F40
	or      $t5, $t5, $at
.L80174F28:
	b       .L80174F40
	li      $t5, -0x0001
.L80174F30:
	mfc1    $t5, $f8
	nop
	bltz    $t5, .L80174F28
	nop
.L80174F40:
	la.u    $t6, file_select_801B9A78
	ctc1    $t4, $31
	la.l    $t6, file_select_801B9A78
	sb      $t5, 0x0001($t6)
	li      $t7, 0x0002
	lui     $at, %hi(file_select_801A7D44)
	b       .L80174F88
	sb      $t7, %lo(file_select_801A7D44)($at)
.L80174F60:
	la.u    $t9, file_select_801B9A78
	la.l    $t9, file_select_801B9A78
	li      $t8, 0x0096
	sb      $t8, 0x0000($t9)
	la.u    $t1, file_select_801B9A78
	la.l    $t1, file_select_801B9A78
	li      $t0, 0x0096
	sb      $t0, 0x0001($t1)
	lui     $at, %hi(file_select_801A7D44)
	sb      $0, %lo(file_select_801A7D44)($at)
.L80174F88:
	lui     $t2, %hi(file_select_801A7D24)
	lh      $t2, %lo(file_select_801A7D24)($t2)
	li      $at, 0x0002
	bne     $t2, $at, .L801750C8
	nop
	lui     $t3, %hi(file_select_801A7D44)
	lb      $t3, %lo(file_select_801A7D44)($t3)
	li      $at, 0x0001
	bne     $t3, $at, .L80175054
	nop
	li.u    $a0, 0x2410C081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x2410C081
	la.u    $t5, file_select_801B99F8
	la.l    $t5, file_select_801B99F8
	lw      $t6, 0x0018($t5)
	li      $t4, 0x0002
	sw      $t4, 0x010C($t6)
	li      $t7, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t7, %lo(file_select_801A7D30)($at)
	lui     $at, %hi(file_select_801A7D3C)
	sh      $0, %lo(file_select_801A7D3C)($at)
	lui     $a0, %hi(file_select_801A7D2C)
	jal     save_file_erase
	lb      $a0, %lo(file_select_801A7D2C)($a0)
	lui     $t0, %hi(file_select_801A7D2C)
	lb      $t0, %lo(file_select_801A7D2C)($t0)
	lui     $t8, %hi(shape_table)
	lw      $t8, %lo(shape_table)($t8)
	lui     $t2, %hi(file_select_801B99F8+4*21)
	sll     $t1, $t0, 2
	addu    $t2, $t2, $t1
	lw      $t2, %lo(file_select_801B99F8+4*21)($t2)
	lw      $t9, 0x0028($t8)
	sw      $t9, 0x0014($t2)
	lui     $t4, %hi(file_select_801A7D2C)
	lb      $t4, %lo(file_select_801A7D2C)($t4)
	lui     $t3, %hi(shape_table)
	lw      $t3, %lo(shape_table)($t3)
	lui     $t7, %hi(file_select_801B99F8)
	sll     $t6, $t4, 2
	addu    $t7, $t7, $t6
	lw      $t7, %lo(file_select_801B99F8)($t7)
	lw      $t5, 0x0028($t3)
	sw      $t5, 0x0014($t7)
	lui     $at, %hi(file_select_801A7D44)
	b       .L801750C8
	sb      $0, %lo(file_select_801A7D44)($at)
.L80175054:
	lui     $t8, %hi(file_select_801A7D44)
	lb      $t8, %lo(file_select_801A7D44)($t8)
	li      $at, 0x0002
	bne     $t8, $at, .L801750C8
	nop
	li.u    $a0, 0x70110081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70110081
	lui     $t1, %hi(file_select_801A7D2C)
	lb      $t1, %lo(file_select_801A7D2C)($t1)
	lui     $t2, %hi(file_select_801B99F8+4*21)
	li      $t0, 0x0006
	sll     $t9, $t1, 2
	addu    $t2, $t2, $t9
	lw      $t2, %lo(file_select_801B99F8+4*21)($t2)
	sw      $t0, 0x00F4($t2)
	la.u    $t3, file_select_801B99F8
	la.l    $t3, file_select_801B99F8
	lw      $t4, 0x0018($t3)
	sw      $0, 0x010C($t4)
	li      $t6, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t6, %lo(file_select_801A7D30)($at)
	lui     $at, %hi(file_select_801A7D3C)
	sh      $0, %lo(file_select_801A7D3C)($at)
	lui     $at, %hi(file_select_801A7D44)
	sb      $0, %lo(file_select_801A7D44)($at)
.L801750C8:
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t5, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t5, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t1)
	lw      $t0, 0x0024($sp)
	la.u    $t9, gfx_message_start
	la.l    $t9, gfx_message_start
	sw      $t9, 0x0004($t0)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t6)
	la.u    $t5, file_select_801B9A78
	la.l    $t5, file_select_801B9A78
	lbu     $t7, 0x0000($t5)
	lui     $t4, %hi(file_select_801A7D18)
	lbu     $t4, %lo(file_select_801A7D18)($t4)
	andi    $t8, $t7, 0x00FF
	sll     $t1, $t8, 24
	sll     $t9, $t8, 16
	lw      $t7, 0x0020($sp)
	or      $t0, $t1, $t9
	sll     $t2, $t8, 8
	or      $t3, $t2, $t0
	andi    $t6, $t4, 0x00FF
	or      $t5, $t3, $t6
	sw      $t5, 0x0004($t7)
	lh      $a0, 0x0032($sp)
	la.u    $a2, str_801A7E7C
	la.l    $a2, str_801A7E7C
	lh      $a1, 0x0036($sp)
	jal     message_802D77DC
	addiu   $a0, $a0, 0x0038
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t1, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t2)
	la.u    $t0, file_select_801B9A78
	la.l    $t0, file_select_801B9A78
	lbu     $t4, 0x0001($t0)
	lui     $t8, %hi(file_select_801A7D18)
	lbu     $t8, %lo(file_select_801A7D18)($t8)
	andi    $t3, $t4, 0x00FF
	sll     $t6, $t3, 24
	sll     $t5, $t3, 16
	lw      $t4, 0x001C($sp)
	or      $t7, $t6, $t5
	sll     $t1, $t3, 8
	or      $t9, $t1, $t7
	andi    $t2, $t8, 0x00FF
	or      $t0, $t9, $t2
	sw      $t0, 0x0004($t4)
	lh      $a0, 0x0032($sp)
	la.u    $a2, str_801A7E80
	la.l    $a2, str_801A7E80
	lh      $a1, 0x0036($sp)
	jal     message_802D77DC
	addiu   $a0, $a0, 0x0062
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t6, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t6, 0x0018($sp)
	lw      $t1, 0x0018($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t1)
	lw      $t8, 0x0018($sp)
	la.u    $t7, gfx_message_end
	la.l    $t7, gfx_message_end
	sw      $t7, 0x0004($t8)
	b       .L80175228
	nop
.L80175228:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

file_select_80175238:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0070($sp)
	la.u    $t7, str_801A7E84
	la.l    $t7, str_801A7E84
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0064
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lwr     $at, 0x000A($t7)
	sw      $t9, 0x0004($t6)
	swr     $at, 0x000A($t6)
	la.u    $t1, str_801A7E90
	la.l    $t1, str_801A7E90
	lw      $at, 0x0000($t1)
	addiu   $t0, $sp, 0x005C
	sw      $at, 0x0000($t0)
	lhu     $at, 0x0004($t1)
	sh      $at, 0x0004($t0)
	la.u    $t5, str_801A7E98
	la.l    $t5, str_801A7E98
	lw      $at, 0x0000($t5)
	addiu   $t4, $sp, 0x0044
	lw      $t6, 0x0004($t5)
	sw      $at, 0x0000($t4)
	lw      $at, 0x0008($t5)
	sw      $t6, 0x0004($t4)
	lw      $t6, 0x000C($t5)
	sw      $at, 0x0008($t4)
	lw      $at, 0x0010($t5)
	sw      $t6, 0x000C($t4)
	sw      $at, 0x0010($t4)
	lbu     $at, 0x0014($t5)
	sb      $at, 0x0014($t4)
	la.u    $t9, str_801A7EB0
	la.l    $t9, str_801A7EB0
	lw      $at, 0x0000($t9)
	addiu   $t7, $sp, 0x0030
	lw      $t0, 0x0004($t9)
	sw      $at, 0x0000($t7)
	lw      $at, 0x0008($t9)
	sw      $t0, 0x0004($t7)
	lw      $t0, 0x000C($t9)
	sw      $at, 0x0008($t7)
	lw      $at, 0x0010($t9)
	sw      $t0, 0x000C($t7)
	sw      $at, 0x0010($t7)
	la.u    $t3, str_801A7EC4
	la.l    $t3, str_801A7EC4
	lw      $at, 0x0000($t3)
	addiu   $t1, $sp, 0x001C
	lw      $t4, 0x0004($t3)
	sw      $at, 0x0000($t1)
	lw      $at, 0x0008($t3)
	sw      $t4, 0x0004($t1)
	lw      $t4, 0x000C($t3)
	sw      $at, 0x0008($t1)
	lbu     $at, 0x0010($t3)
	sw      $t4, 0x000C($t1)
	sb      $at, 0x0010($t1)
	lbu     $t5, 0x0073($sp)
	sltiu   $at, $t5, 0x0005
	beqz    $at, .L801753EC
	nop
	sll     $t5, $t5, 2
	lui     $at, %hi(file_select_801A8108)
	addu    $at, $at, $t5
	lw      $t5, %lo(file_select_801A8108)($at)
	jr      $t5
	nop
.globl L80175350
L80175350:
	li      $a0, 0x0002
	li      $a1, 0x0062
	li      $a2, 0x0023
	jal     file_select_80173C6C
	addiu   $a3, $sp, 0x0064
	b       .L801753EC
	nop
.globl L8017536C
L8017536C:
	li      $a0, 0x005A
	li      $a1, 0x00BE
	jal     file_select_80173D64
	addiu   $a2, $sp, 0x005C
	li      $a0, 0x005A
	jal     file_select_80174CA8
	li      $a1, 0x00BE
	b       .L801753EC
	nop
.globl L80175390
L80175390:
	li      $a0, 0x0064
	li      $a1, 0x00BE
	jal     file_select_80173D64
	addiu   $a2, $sp, 0x0044
	b       .L801753EC
	nop
.globl L801753A8
L801753A8:
	lui     $t6, %hi(file_select_801A7D2C)
	lb      $t6, %lo(file_select_801A7D2C)($t6)
	addiu   $t7, $sp, 0x0030
	addiu   $t2, $t6, 0x000A
	sb      $t2, 0x0006($t7)
	li      $a0, 0x0064
	li      $a1, 0x00BE
	jal     file_select_80173D64
	addiu   $a2, $sp, 0x0030
	b       .L801753EC
	nop
.globl L801753D4
L801753D4:
	li      $a0, 0x0064
	li      $a1, 0x00BE
	jal     file_select_80173D64
	addiu   $a2, $sp, 0x001C
	b       .L801753EC
	nop
.L801753EC:
	b       .L801753F4
	nop
.L801753F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

file_select_80175404:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	la.u    $t6, file_select_801B99F8
	la.l    $t6, file_select_801B99F8
	lw      $t7, 0x0018($t6)
	lw      $s0, 0x010C($t7)
	beqz    $s0, .L80175448
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L801754C0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80175524
	nop
	b       .L8017558C
	nop
.L80175448:
	lui     $t8, %hi(file_select_801A7D3C)
	lh      $t8, %lo(file_select_801A7D3C)($t8)
	li      $at, 0x0014
	bne     $t8, $at, .L8017547C
	nop
	lui     $t9, %hi(file_select_801A7D34)
	lb      $t9, %lo(file_select_801A7D34)($t9)
	li      $at, 0x0002
	bne     $t9, $at, .L8017547C
	nop
	li      $t0, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t0, %lo(file_select_801A7D30)($at)
.L8017547C:
	jal     file_select_80173E54
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L801754B8
	nop
	lui     $t1, %hi(file_select_801A7D34)
	lb      $t1, %lo(file_select_801A7D34)($t1)
	bnez    $t1, .L801754B0
	nop
	li      $t2, 0x0002
	lui     $at, %hi(file_select_801A7D34)
	b       .L801754B8
	sb      $t2, %lo(file_select_801A7D34)($at)
.L801754B0:
	lui     $at, %hi(file_select_801A7D34)
	sb      $0, %lo(file_select_801A7D34)($at)
.L801754B8:
	b       .L8017558C
	nop
.L801754C0:
	jal     file_select_80173E54
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L8017551C
	nop
	lui     $t3, %hi(file_select_801A7D34)
	lb      $t3, %lo(file_select_801A7D34)($t3)
	li      $at, 0x0001
	beq     $t3, $at, .L801754F4
	nop
	li      $t4, 0x0001
	lui     $at, %hi(file_select_801A7D34)
	sb      $t4, %lo(file_select_801A7D34)($at)
.L801754F4:
	li      $at, 0x422C0000
	mtc1    $at, $f4
	la.u    $t5, file_select_801A7D1C
	la.l    $t5, file_select_801A7D1C
	swc1    $f4, 0x0000($t5)
	li      $at, 0x42A00000
	mtc1    $at, $f6
	la.u    $t6, file_select_801A7D1C
	la.l    $t6, file_select_801A7D1C
	swc1    $f6, 0x0004($t6)
.L8017551C:
	b       .L8017558C
	nop
.L80175524:
	lui     $t7, %hi(file_select_801A7D3C)
	lh      $t7, %lo(file_select_801A7D3C)($t7)
	li      $at, 0x0014
	bne     $t7, $at, .L80175544
	nop
	li      $t8, 0x0001
	lui     $at, %hi(file_select_801A7D30)
	sb      $t8, %lo(file_select_801A7D30)($at)
.L80175544:
	jal     file_select_80173E54
	nop
	li      $at, 0x0001
	bne     $v0, $at, .L80175584
	nop
	lui     $t9, %hi(file_select_801A7D34)
	lb      $t9, %lo(file_select_801A7D34)($t9)
	li      $at, 0x0003
	beq     $t9, $at, .L8017557C
	nop
	li      $t0, 0x0003
	lui     $at, %hi(file_select_801A7D34)
	b       .L80175584
	sb      $t0, %lo(file_select_801A7D34)($at)
.L8017557C:
	lui     $at, %hi(file_select_801A7D34)
	sb      $0, %lo(file_select_801A7D34)($at)
.L80175584:
	b       .L8017558C
	nop
.L8017558C:
	b       .L80175594
	nop
.L80175594:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

file_select_801755A8:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	jal     file_select_80175404
	nop
	lui     $a0, %hi(file_select_801A7D34)
	jal     file_select_80175238
	lb      $a0, %lo(file_select_801A7D34)($a0)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x003C($sp)
	la.u    $t0, gfx_dprint_1cyc_start
	la.l    $t0, gfx_dprint_1cyc_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0038($sp)
	lw      $t5, 0x0038($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(file_select_801A7D18)
	lbu     $t6, %lo(file_select_801A7D18)($t6)
	lw      $t9, 0x0038($sp)
	li      $at, -0x0100
	andi    $t7, $t6, 0x00FF
	or      $t8, $t7, $at
	sw      $t8, 0x0004($t9)
	move    $a0, $0
	li      $a1, 0x005A
	jal     file_select_80173EE4
	li      $a2, 0x004C
	li      $a0, 0x0001
	li      $a1, 0x00D3
	jal     file_select_80173EE4
	li      $a2, 0x004C
	li      $a0, 0x0002
	li      $a1, 0x005A
	jal     file_select_80173EE4
	li      $a2, 0x0077
	li      $a0, 0x0003
	li      $a1, 0x00D3
	jal     file_select_80173EE4
	li      $a2, 0x0077
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0034($sp)
	la.u    $t4, gfx_dprint_1cyc_end
	la.l    $t4, gfx_dprint_1cyc_end
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0030($sp)
	la.u    $t0, gfx_message_start
	la.l    $t0, gfx_message_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(file_select_801A7D18)
	lbu     $t6, %lo(file_select_801A7D18)($t6)
	lw      $t9, 0x002C($sp)
	li      $at, -0x0100
	andi    $t7, $t6, 0x00FF
	or      $t8, $t7, $at
	sw      $t8, 0x0004($t9)
	la.u    $a2, str_801A7D54
	la.l    $a2, str_801A7D54
	li      $a0, 0x002C
	jal     message_802D77DC
	li      $a1, 0x0023
	la.u    $a2, str_801A7D5C
	la.l    $a2, str_801A7D5C
	li      $a0, 0x007F
	jal     message_802D77DC
	li      $a1, 0x0023
	la.u    $a2, str_801A7D68
	la.l    $a2, str_801A7D68
	li      $a0, 0x00E9
	jal     message_802D77DC
	li      $a1, 0x0023
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0028($sp)
	la.u    $t4, gfx_message_end
	la.l    $t4, gfx_message_end
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0024($sp)
	la.u    $t0, gfx_msg8_start
	la.l    $t0, gfx_msg8_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0020($sp)
	lw      $t5, 0x0020($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(file_select_801A7D18)
	lbu     $t6, %lo(file_select_801A7D18)($t6)
	lw      $t9, 0x0020($sp)
	li      $at, -0x0100
	andi    $t7, $t6, 0x00FF
	or      $t8, $t7, $at
	sw      $t8, 0x0004($t9)
	la.u    $a2, str_801A7D98
	la.l    $a2, str_801A7D98
	li      $a0, 0x0059
	jal     message_802D7E88
	li      $a1, 0x003E
	la.u    $a2, str_801A7DA0
	la.l    $a2, str_801A7DA0
	li      $a0, 0x00D3
	jal     message_802D7E88
	li      $a1, 0x003E
	la.u    $a2, str_801A7DA8
	la.l    $a2, str_801A7DA8
	li      $a0, 0x0059
	jal     message_802D7E88
	li      $a1, 0x0069
	la.u    $a2, str_801A7DB0
	la.l    $a2, str_801A7DB0
	li      $a0, 0x00D3
	jal     message_802D7E88
	li      $a1, 0x0069
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x001C($sp)
	la.u    $t4, gfx_msg8_end
	la.l    $t4, gfx_msg8_end
	sw      $t4, 0x0004($t5)
	b       .L80175890
	nop
.L80175890:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

file_select_801758A0:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	la.u    $t7, str_801A7ED8
	la.l    $t7, str_801A7ED8
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0034
	lw      $t0, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t0, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lbu     $at, 0x000C($t7)
	sb      $at, 0x000C($t6)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0030($sp)
	lw      $t4, 0x0030($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t4)
	lw      $t9, 0x0030($sp)
	la.u    $t5, gfx_dprint_1cyc_start
	la.l    $t5, gfx_dprint_1cyc_start
	sw      $t5, 0x0004($t9)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t8, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t8, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	li      $t7, 0xFB000000
	sw      $t7, 0x0000($t0)
	lui     $t1, %hi(file_select_801A7D18)
	lbu     $t1, %lo(file_select_801A7D18)($t1)
	lw      $t4, 0x002C($sp)
	li      $at, -0x0100
	andi    $t2, $t1, 0x00FF
	or      $t3, $t2, $at
	sw      $t3, 0x0004($t4)
	li      $a0, 0x0002
	li      $a1, 0x0058
	li      $a2, 0x0023
	jal     message_802D7B84
	addiu   $a3, $sp, 0x0034
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t5, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t5, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t6)
	lw      $t0, 0x0028($sp)
	la.u    $t7, gfx_dprint_1cyc_end
	la.l    $t7, gfx_dprint_1cyc_end
	sw      $t7, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0024($sp)
	lw      $t4, 0x0024($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t4)
	lw      $t9, 0x0024($sp)
	la.u    $t5, gfx_message_start
	la.l    $t5, gfx_message_start
	sw      $t5, 0x0004($t9)
	sw      $0, 0x0044($sp)
.L801759C8:
	lui     $t8, %hi(file_select_801A7D40)
	lb      $t8, %lo(file_select_801A7D40)($t8)
	lw      $t6, 0x0044($sp)
	bne     $t8, $t6, .L80175A24
	nop
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t7, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t7, 0x0020($sp)
	lw      $t2, 0x0020($sp)
	li      $t1, 0xFB000000
	sw      $t1, 0x0000($t2)
	lui     $t3, %hi(file_select_801A7D18)
	lbu     $t3, %lo(file_select_801A7D18)($t3)
	lw      $t9, 0x0020($sp)
	li      $at, -0x0100
	andi    $t4, $t3, 0x00FF
	or      $t5, $t4, $at
	sw      $t5, 0x0004($t9)
	b       .L80175A5C
	nop
.L80175A24:
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t8, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t8, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	li      $t7, 0xFB000000
	sw      $t7, 0x0000($t0)
	lui     $t1, %hi(file_select_801A7D18)
	lbu     $t1, %lo(file_select_801A7D18)($t1)
	lw      $t3, 0x001C($sp)
	andi    $t2, $t1, 0x00FF
	sw      $t2, 0x0004($t3)
.L80175A5C:
	lw      $t4, 0x0044($sp)
	la.u    $t9, str_801A7D80
	la.l    $t9, str_801A7D80
	sll     $a0, $t4, 3
	addu    $a0, $a0, $t4
	sll     $a0, $a0, 2
	addu    $a0, $a0, $t4
	sll     $a0, $a0, 1
	sll     $t5, $t4, 3
	addu    $a1, $t5, $t9
	addiu   $a0, $a0, 0x0057
	jal     message_802D8844
	li      $a2, 0x41200000
	sh      $v0, 0x0042($sp)
	lw      $t8, 0x0044($sp)
	la.u    $t7, str_801A7D80
	la.l    $t7, str_801A7D80
	sll     $t6, $t8, 3
	addu    $a2, $t6, $t7
	lh      $a0, 0x0042($sp)
	jal     message_802D77DC
	li      $a1, 0x0057
	lw      $t0, 0x0044($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0003
	bnez    $at, .L801759C8
	sw      $t1, 0x0044($sp)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0018($sp)
	lw      $t5, 0x0018($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t8, 0x0018($sp)
	la.u    $t9, gfx_message_end
	la.l    $t9, gfx_message_end
	sw      $t9, 0x0004($t8)
	b       .L80175B04
	nop
.L80175B04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

file_select_80175B14:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a2, str_801A7EE8
	la.l    $a2, str_801A7EE8
	lh      $a0, 0x003E($sp)
	jal     message_802D7E88
	lh      $a1, 0x0042($sp)
	lb      $a0, 0x003B($sp)
	li      $a1, 0x000F
	jal     save_file_star_range
	li      $a2, 0x0018
	move    $s0, $v0
	move    $a0, $s0
	jal     message_802D8B34
	addiu   $a1, $sp, 0x0024
	lh      $a0, 0x003E($sp)
	lh      $a1, 0x0042($sp)
	addiu   $a2, $sp, 0x0024
	jal     message_802D7E88
	addiu   $a0, $a0, 0x0010
	b       .L80175B7C
	nop
.L80175B7C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

file_select_80175B90:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0068($sp)
	sw      $a1, 0x006C($sp)
	sw      $a2, 0x0070($sp)
	sw      $a3, 0x0074($sp)
	sw      $s0, 0x0018($sp)
	lb      $a0, 0x006B($sp)
	jal     save_file_star_get
	lh      $a1, 0x006E($sp)
	sb      $v0, 0x0053($sp)
	la.u    $t7, str_801A7EEC
	la.l    $t7, str_801A7EEC
	lwr     $at, 0x0002($t7)
	addiu   $t6, $sp, 0x0050
	swr     $at, 0x0002($t6)
	lui     $t1, %hi(str_801A7EF0)
	lhu     $t1, %lo(str_801A7EF0)($t1)
	sh      $t1, 0x004C($sp)
	la.u    $t3, str_801A7EF4
	la.l    $t3, str_801A7EF4
	addiu   $t9, $t3, 0x0024
	addiu   $t2, $sp, 0x0024
.L80175BEC:
	lw      $at, 0x0000($t3)
	addiu   $t3, $t3, 0x000C
	addiu   $t2, $t2, 0x000C
	sw      $at, -0x000C($t2)
	lw      $at, -0x0008($t3)
	sw      $at, -0x0008($t2)
	lw      $at, -0x0004($t3)
	bne     $t3, $t9, .L80175BEC
	sw      $at, -0x0004($t2)
	lw      $at, 0x0000($t3)
	sw      $at, 0x0000($t2)
	lui     $t8, %hi(file_select_801A7D50)
	lb      $t8, %lo(file_select_801A7D50)($t8)
	bnez    $t8, .L80175C98
	nop
	lh      $a0, 0x0072($sp)
	lh      $a1, 0x0076($sp)
	addiu   $a2, $sp, 0x0050
	jal     message_802D7E88
	addiu   $a0, $a0, 0x0019
	lb      $a0, 0x006B($sp)
	jal     save_file_coin_get
	lh      $a1, 0x006E($sp)
	move    $s0, $v0
	move    $a0, $s0
	jal     message_802D8B34
	addiu   $a1, $sp, 0x0054
	lh      $a0, 0x0072($sp)
	lh      $a1, 0x0076($sp)
	addiu   $a2, $sp, 0x0054
	jal     message_802D7E88
	addiu   $a0, $a0, 0x0029
	lbu     $t6, 0x0053($sp)
	andi    $t7, $t6, 0x0040
	beqz    $t7, .L80175C90
	nop
	lh      $a0, 0x0072($sp)
	lh      $a1, 0x0076($sp)
	addiu   $a2, $sp, 0x004C
	jal     message_802D7E88
	addiu   $a0, $a0, 0x0046
.L80175C90:
	b       .L80175D10
	nop
.L80175C98:
	lh      $a0, 0x0072($sp)
	lh      $a1, 0x0076($sp)
	addiu   $a2, $sp, 0x0050
	jal     message_802D7E88
	addiu   $a0, $a0, 0x0012
	jal     save_hiscore_get
	lh      $a0, 0x006E($sp)
	move    $s0, $v0
	andi    $a0, $s0, 0xFFFF
	andi    $t0, $a0, 0xFFFF
	move    $a0, $t0
	jal     message_802D8B34
	addiu   $a1, $sp, 0x0054
	lh      $a0, 0x0072($sp)
	lh      $a1, 0x0076($sp)
	addiu   $a2, $sp, 0x0054
	jal     message_802D7E88
	addiu   $a0, $a0, 0x0022
	jal     save_hiscore_get
	lh      $a0, 0x006E($sp)
	move    $s0, $v0
	srl     $t1, $s0, 16
	lh      $a0, 0x0072($sp)
	andi    $t5, $t1, 0xFFFF
	sll     $t4, $t5, 3
	addiu   $t9, $sp, 0x0024
	addu    $a2, $t4, $t9
	lh      $a1, 0x0076($sp)
	jal     message_802D7E88
	addiu   $a0, $a0, 0x003C
.L80175D10:
	b       .L80175D18
	nop
.L80175D18:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

file_select_80175D2C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	sh      $0, 0x0036($sp)
	lb      $a0, 0x003B($sp)
	jal     save_file_star_get
	lh      $a1, 0x003E($sp)
	sb      $v0, 0x001F($sp)
	lb      $a0, 0x003B($sp)
	jal     save_file_star_count
	lh      $a1, 0x003E($sp)
	sb      $v0, 0x001E($sp)
	lbu     $t6, 0x001F($sp)
	andi    $t7, $t6, 0x0040
	beqz    $t7, .L80175D84
	nop
	lb      $t8, 0x001E($sp)
	addiu   $t9, $t8, -0x0001
	sb      $t9, 0x001E($sp)
.L80175D84:
	lb      $t0, 0x001E($sp)
	sh      $0, 0x0036($sp)
	blez    $t0, .L80175DC4
	nop
.L80175D94:
	lh      $t2, 0x0036($sp)
	li      $t1, 0x00FA
	addu    $t3, $sp, $t2
	sb      $t1, 0x0020($t3)
	lh      $t4, 0x0036($sp)
	lb      $t8, 0x001E($sp)
	addiu   $t5, $t4, 0x0001
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	slt     $at, $t7, $t8
	bnez    $at, .L80175D94
	sh      $t5, 0x0036($sp)
.L80175DC4:
	lh      $t0, 0x0036($sp)
	li      $t9, 0x00FF
	addu    $t1, $sp, $t0
	sb      $t9, 0x0020($t1)
	lh      $a0, 0x0042($sp)
	lh      $a1, 0x0046($sp)
	jal     message_802D7E88
	addiu   $a2, $sp, 0x0020
	b       .L80175DEC
	nop
.L80175DEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

file_select_80175DFC:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0068($sp)
	sw      $s0, 0x0018($sp)
	la.u    $t7, str_801A7F1C
	la.l    $t7, str_801A7F1C
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0060
	sw      $at, 0x0000($t6)
	lhu     $at, 0x0004($t7)
	sh      $at, 0x0004($t6)
	la.u    $t1, str_801A7F24
	la.l    $t1, str_801A7F24
	lw      $at, 0x0000($t1)
	addiu   $t0, $sp, 0x0054
	lw      $t3, 0x0004($t1)
	sw      $at, 0x0000($t0)
	lbu     $at, 0x0008($t1)
	sw      $t3, 0x0004($t0)
	sb      $at, 0x0008($t0)
	la.u    $t5, str_801A7F30
	la.l    $t5, str_801A7F30
	lw      $at, 0x0000($t5)
	addiu   $t4, $sp, 0x0048
	lw      $t6, 0x0004($t5)
	sw      $at, 0x0000($t4)
	lbu     $at, 0x0008($t5)
	sw      $t6, 0x0004($t4)
	sb      $at, 0x0008($t4)
	lui     $t7, %hi(file_select_801A7F3C)
	lhu     $t7, %lo(file_select_801A7F3C)($t7)
	sh      $t7, 0x0044($sp)
	la.u    $a0, str_course
	jal     segment_to_virtual
	la.l    $a0, str_course
	sw      $v0, 0x0040($sp)
	lb      $t9, 0x006B($sp)
	addiu   $t0, $sp, 0x0044
	addiu   $t2, $t9, 0x000A
	sb      $t2, 0x0000($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t1, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t1, 0x003C($sp)
	lw      $t4, 0x003C($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t4)
	lw      $t6, 0x003C($sp)
	la.u    $t5, gfx_dprint_1cyc_start
	la.l    $t5, gfx_dprint_1cyc_start
	sw      $t5, 0x0004($t6)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t7, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t7, 0x0038($sp)
	lw      $t0, 0x0038($sp)
	li      $t2, 0xFB000000
	sw      $t2, 0x0000($t0)
	lui     $t1, %hi(file_select_801A7D18)
	lbu     $t1, %lo(file_select_801A7D18)($t1)
	lw      $t4, 0x0038($sp)
	li      $at, -0x0100
	andi    $t3, $t1, 0x00FF
	or      $t8, $t3, $at
	sw      $t8, 0x0004($t4)
	li      $a0, 0x0002
	li      $a1, 0x0019
	li      $a2, 0x000F
	jal     message_802D7B84
	addiu   $a3, $sp, 0x0060
	li      $a0, 0x0002
	li      $a1, 0x005F
	li      $a2, 0x000F
	jal     message_802D7B84
	addiu   $a3, $sp, 0x0044
	lb      $a0, 0x006B($sp)
	li      $a1, 0x007C
	jal     file_select_80173EE4
	li      $a2, 0x000F
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0034($sp)
	lw      $t9, 0x0034($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t9)
	lw      $t0, 0x0034($sp)
	la.u    $t2, gfx_dprint_1cyc_end
	la.l    $t2, gfx_dprint_1cyc_end
	sw      $t2, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t1, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t1, 0x0030($sp)
	lw      $t4, 0x0030($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t4)
	lw      $t6, 0x0030($sp)
	la.u    $t5, gfx_msg8_start
	la.l    $t5, gfx_msg8_start
	sw      $t5, 0x0004($t6)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t7, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t7, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	li      $t2, 0xFB000000
	sw      $t2, 0x0000($t0)
	lui     $t1, %hi(file_select_801A7D18)
	lbu     $t1, %lo(file_select_801A7D18)($t1)
	lw      $t4, 0x002C($sp)
	li      $at, -0x0100
	andi    $t3, $t1, 0x00FF
	or      $t8, $t3, $at
	sw      $t8, 0x0004($t4)
	lw      $t5, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0000($t5)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x001A
	jal     message_802D7E88
	li      $a1, 0x0023
	lb      $a0, 0x006B($sp)
	move    $a1, $0
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x0023
	lb      $a0, 0x006B($sp)
	move    $a1, $0
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x0023
	lw      $t6, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0004($t6)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x001A
	jal     message_802D7E88
	li      $a1, 0x002F
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0001
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x002F
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0001
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x002F
	lw      $t7, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0008($t7)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x001A
	jal     message_802D7E88
	li      $a1, 0x003B
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0002
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x003B
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0002
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x003B
	lw      $t9, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x000C($t9)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x001A
	jal     message_802D7E88
	li      $a1, 0x0047
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0003
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x0047
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0003
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x0047
	lw      $t2, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0010($t2)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x001A
	jal     message_802D7E88
	li      $a1, 0x0053
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0004
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x0053
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0004
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x0053
	lw      $t0, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0014($t0)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x001A
	jal     message_802D7E88
	li      $a1, 0x005F
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0005
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x005F
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0005
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x005F
	lw      $t1, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0018($t1)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x001A
	jal     message_802D7E88
	li      $a1, 0x006B
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0006
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x006B
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0006
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x006B
	lw      $t3, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x001C($t3)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x001A
	jal     message_802D7E88
	li      $a1, 0x0077
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0007
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x0077
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0007
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x0077
	lw      $t8, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0020($t8)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x001A
	jal     message_802D7E88
	li      $a1, 0x0083
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0008
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x0083
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0008
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x0083
	lw      $t4, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0024($t4)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x0017
	jal     message_802D7E88
	li      $a1, 0x008F
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0009
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x008F
	lb      $a0, 0x006B($sp)
	li      $a1, 0x0009
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x008F
	lw      $t5, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0028($t5)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x0017
	jal     message_802D7E88
	li      $a1, 0x009B
	lb      $a0, 0x006B($sp)
	li      $a1, 0x000A
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x009B
	lb      $a0, 0x006B($sp)
	li      $a1, 0x000A
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x009B
	lw      $t6, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x002C($t6)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x0017
	jal     message_802D7E88
	li      $a1, 0x00A7
	lb      $a0, 0x006B($sp)
	li      $a1, 0x000B
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x00A7
	lb      $a0, 0x006B($sp)
	li      $a1, 0x000B
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x00A7
	lw      $t7, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0030($t7)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x0017
	jal     message_802D7E88
	li      $a1, 0x00B3
	lb      $a0, 0x006B($sp)
	li      $a1, 0x000C
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x00B3
	lb      $a0, 0x006B($sp)
	li      $a1, 0x000C
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x00B3
	lw      $t9, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0034($t9)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x0017
	jal     message_802D7E88
	li      $a1, 0x00BF
	lb      $a0, 0x006B($sp)
	li      $a1, 0x000D
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x00BF
	lb      $a0, 0x006B($sp)
	li      $a1, 0x000D
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x00BF
	lw      $t2, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0038($t2)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x0017
	jal     message_802D7E88
	li      $a1, 0x00CB
	lb      $a0, 0x006B($sp)
	li      $a1, 0x000E
	li      $a2, 0x00AB
	jal     file_select_80175D2C
	li      $a3, 0x00CB
	lb      $a0, 0x006B($sp)
	li      $a1, 0x000E
	li      $a2, 0x00D5
	jal     file_select_80175B90
	li      $a3, 0x00CB
	lw      $t0, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0064($t0)
	move    $s0, $v0
	move    $a2, $s0
	li      $a0, 0x001D
	jal     message_802D7E88
	li      $a1, 0x00D7
	lb      $a0, 0x006B($sp)
	li      $a1, 0x00AB
	jal     file_select_80175B14
	li      $a2, 0x00D7
	lui     $t1, %hi(file_select_801A7D50)
	lb      $t1, %lo(file_select_801A7D50)($t1)
	bnez    $t1, .L80176480
	nop
	li      $a0, 0x00EE
	li      $a1, 0x0018
	jal     message_802D7E88
	addiu   $a2, $sp, 0x0048
	b       .L80176490
	nop
.L80176480:
	li      $a0, 0x00E7
	li      $a1, 0x0018
	jal     message_802D7E88
	addiu   $a2, $sp, 0x0054
.L80176490:
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t3, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t3, 0x0028($sp)
	lw      $t5, 0x0028($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0028($sp)
	la.u    $t6, gfx_msg8_end
	la.l    $t6, gfx_msg8_end
	sw      $t6, 0x0004($t7)
	b       .L801764CC
	nop
.L801764CC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

file_select_801764E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     message_802D7384
	nop
	lui     $t6, %hi(file_select_801A7D10)
	lb      $t6, %lo(file_select_801A7D10)($t6)
	addiu   $t7, $t6, 0x0001
	sltiu   $at, $t7, 0x001E
	beqz    $at, L801765B8
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(file_select_801A811C)
	addu    $at, $at, $t7
	lw      $t7, %lo(file_select_801A811C)($at)
	jr      $t7
	nop
.globl L80176520
L80176520:
	jal     file_select_80173FD4
	nop
	b       L801765B8
	nop
.globl L80176530
L80176530:
	jal     file_select_801743AC
	nop
	lui     $at, %hi(file_select_801A7D50)
	sb      $0, %lo(file_select_801A7D50)($at)
	b       L801765B8
	nop
.globl L80176548
L80176548:
	jal     file_select_801749B0
	nop
	b       L801765B8
	nop
.globl L80176558
L80176558:
	jal     file_select_801755A8
	nop
	b       L801765B8
	nop
.globl L80176568
L80176568:
	jal     file_select_80175DFC
	move    $a0, $0
	b       L801765B8
	nop
.globl L80176578
L80176578:
	jal     file_select_80175DFC
	li      $a0, 0x0001
	b       L801765B8
	nop
.globl L80176588
L80176588:
	jal     file_select_80175DFC
	li      $a0, 0x0002
	b       L801765B8
	nop
.globl L80176598
L80176598:
	jal     file_select_80175DFC
	li      $a0, 0x0003
	b       L801765B8
	nop
.globl L801765A8
L801765A8:
	jal     file_select_801758A0
	nop
	b       L801765B8
	nop
.globl L801765B8
L801765B8:
	jal     save_file_isactive
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, .L80176618
	nop
	jal     save_file_isactive
	li      $a0, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, .L80176618
	nop
	jal     save_file_isactive
	li      $a0, 0x0002
	li      $at, 0x0001
	bne     $v0, $at, .L80176618
	nop
	jal     save_file_isactive
	li      $a0, 0x0003
	li      $at, 0x0001
	bne     $v0, $at, .L80176618
	nop
	li      $t8, 0x0001
	lui     $at, %hi(file_select_801A7D48)
	b       .L80176620
	sb      $t8, %lo(file_select_801A7D48)($at)
.L80176618:
	lui     $at, %hi(file_select_801A7D48)
	sb      $0, %lo(file_select_801A7D48)($at)
.L80176620:
	lui     $t9, %hi(file_select_801A7D18)
	lbu     $t9, %lo(file_select_801A7D18)($t9)
	slti    $at, $t9, 0x00FA
	beqz    $at, .L80176648
	nop
	lui     $t0, %hi(file_select_801A7D18)
	lbu     $t0, %lo(file_select_801A7D18)($t0)
	lui     $at, %hi(file_select_801A7D18)
	addiu   $t1, $t0, 0x000A
	sb      $t1, %lo(file_select_801A7D18)($at)
.L80176648:
	lui     $t2, %hi(file_select_801A7D3C)
	lh      $t2, %lo(file_select_801A7D3C)($t2)
	slti    $at, $t2, 0x03E8
	beqz    $at, .L80176670
	nop
	lui     $t3, %hi(file_select_801A7D3C)
	lh      $t3, %lo(file_select_801A7D3C)($t3)
	lui     $at, %hi(file_select_801A7D3C)
	addiu   $t4, $t3, 0x0001
	sh      $t4, %lo(file_select_801A7D3C)($at)
.L80176670:
	b       .L80176678
	nop
.L80176678:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl s_file_select_main
s_file_select_main:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L801766BC
	nop
	jal     file_select_801764E0
	nop
	jal     file_select_80173AE0
	nop
.L801766BC:
	b       .L801766CC
	move    $v0, $0
	b       .L801766CC
	nop
.L801766CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl p_file_select_init
p_file_select_init:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, -0x0001
	lui     $at, %hi(file_select_801A7D10)
	sb      $t6, %lo(file_select_801A7D10)($at)
	li      $t7, 0x0001
	lui     $at, %hi(file_select_801A7D14)
	sb      $t7, %lo(file_select_801A7D14)($at)
	lui     $at, %hi(file_select_801A7D18)
	sb      $0, %lo(file_select_801A7D18)($at)
	lui     $s0, %hi(save_index)
	lh      $s0, %lo(save_index)($s0)
	li      $at, 0x0001
	beq     $s0, $at, .L80176750
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80176780
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L801767B0
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L801767E0
	nop
	b       .L80176810
	nop
.L80176750:
	li      $at, 0xC2BC0000
	mtc1    $at, $f4
	la.u    $t8, file_select_801A7D1C
	la.l    $t8, file_select_801A7D1C
	swc1    $f4, 0x0000($t8)
	li      $at, 0x42380000
	mtc1    $at, $f6
	la.u    $t9, file_select_801A7D1C
	la.l    $t9, file_select_801A7D1C
	swc1    $f6, 0x0004($t9)
	b       .L80176810
	nop
.L80176780:
	li      $at, 0x41C00000
	mtc1    $at, $f8
	la.u    $t0, file_select_801A7D1C
	la.l    $t0, file_select_801A7D1C
	swc1    $f8, 0x0000($t0)
	li      $at, 0x42380000
	mtc1    $at, $f10
	la.u    $t1, file_select_801A7D1C
	la.l    $t1, file_select_801A7D1C
	swc1    $f10, 0x0004($t1)
	b       .L80176810
	nop
.L801767B0:
	li      $at, 0xC2BC0000
	mtc1    $at, $f16
	la.u    $t2, file_select_801A7D1C
	la.l    $t2, file_select_801A7D1C
	swc1    $f16, 0x0000($t2)
	li      $at, 0x40A00000
	mtc1    $at, $f18
	la.u    $t3, file_select_801A7D1C
	la.l    $t3, file_select_801A7D1C
	swc1    $f18, 0x0004($t3)
	b       .L80176810
	nop
.L801767E0:
	li      $at, 0x41C00000
	mtc1    $at, $f4
	la.u    $t4, file_select_801A7D1C
	la.l    $t4, file_select_801A7D1C
	swc1    $f4, 0x0000($t4)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	la.u    $t5, file_select_801A7D1C
	la.l    $t5, file_select_801A7D1C
	swc1    $f6, 0x0004($t5)
	b       .L80176810
	nop
.L80176810:
	la.u    $t7, file_select_801A7D28
	la.l    $t7, file_select_801A7D28
	li      $t6, -0x2710
	sh      $t6, 0x0000($t7)
	la.u    $t9, file_select_801A7D28
	la.l    $t9, file_select_801A7D28
	li      $t8, -0x2710
	sh      $t8, 0x0002($t9)
	lui     $at, %hi(file_select_801A7D24)
	sh      $0, %lo(file_select_801A7D24)($at)
	lui     $at, %hi(file_select_801A7D4C)
	sb      $0, %lo(file_select_801A7D4C)($at)
	li      $t0, -0x0001
	lui     $at, %hi(file_select_801A7D2C)
	sb      $t0, %lo(file_select_801A7D2C)($at)
	lui     $at, %hi(file_select_801A7D30)
	sb      $0, %lo(file_select_801A7D30)($at)
	lui     $at, %hi(file_select_801A7D34)
	sb      $0, %lo(file_select_801A7D34)($at)
	lui     $at, %hi(file_select_801A7D38)
	sb      $0, %lo(file_select_801A7D38)($at)
	lui     $at, %hi(file_select_801A7D3C)
	sh      $0, %lo(file_select_801A7D3C)($at)
	lui     $at, %hi(file_select_801A7D44)
	sb      $0, %lo(file_select_801A7D44)($at)
	jal     save_output_get
	nop
	lui     $at, %hi(file_select_801A7D40)
	sb      $v0, %lo(file_select_801A7D40)($at)
	b       .L8017688C
	nop
.L8017688C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl p_file_select_update
p_file_select_update:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     scene_update
	nop
	lui     $v0, %hi(file_select_801A7D4C)
	b       .L801768CC
	lb      $v0, %lo(file_select_801A7D4C)($v0)
	b       .L801768CC
	nop
.L801768CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop
	nop

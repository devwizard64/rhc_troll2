.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_stdio_8018C2F0:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0000($sp)
	sw      $0, 0x0004($sp)
.L8018C2FC:
	lw      $t6, 0x0004($sp)
	lui     $t8, %hi(_face_bss+0xE00)
	sll     $t7, $t6, 4
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_bss+0xE00)($t8)
	nop
	bnez    $t8, .L8018C350
	nop
	lw      $t9, 0x0004($sp)
	lui     $at, %hi(_face_bss+0xE00)
	sll     $t0, $t9, 4
	addu    $at, $at, $t0
	sw      $a0, %lo(_face_bss+0xE00)($at)
	lw      $t1, 0x0004($sp)
	la.u    $t3, _face_bss+0xE00
	la.l    $t3, _face_bss+0xE00
	sll     $t2, $t1, 4
	addu    $t4, $t2, $t3
	sw      $t4, 0x0000($sp)
	b       .L8018C368
	nop
.L8018C350:
	lw      $t5, 0x0004($sp)
	nop
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0020
	bnez    $at, .L8018C2FC
	sw      $t6, 0x0004($sp)
.L8018C368:
	lw      $t7, 0x0000($sp)
	nop
	beqz    $t7, .L8018C388
	nop
	mtc1    $0, $f4
	lw      $t8, 0x0000($sp)
	nop
	swc1    $f4, 0x000C($t8)
.L8018C388:
	lw      $v0, 0x0000($sp)
	b       .L8018C39C
	nop
	b       .L8018C39C
	nop
.L8018C39C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_stdio_8018C3A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
.L8018C3B4:
	lw      $t6, 0x001C($sp)
	lui     $t8, %hi(_face_bss+0xE00)
	sll     $t7, $t6, 4
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_bss+0xE00)($t8)
	nop
	beqz    $t8, .L8018C414
	nop
	lw      $t9, 0x001C($sp)
	lui     $a0, %hi(_face_bss+0xE00)
	sll     $t0, $t9, 4
	addu    $a0, $a0, $t0
	lw      $a0, %lo(_face_bss+0xE00)($a0)
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018DFF0
	nop
	bnez    $v0, .L8018C414
	nop
	lw      $t1, 0x001C($sp)
	la.u    $t3, _face_bss+0xE00
	la.l    $t3, _face_bss+0xE00
	sll     $t2, $t1, 4
	b       .L8018C43C
	addu    $v0, $t2, $t3
.L8018C414:
	lw      $t4, 0x001C($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, .L8018C3B4
	sw      $t5, 0x001C($sp)
	b       .L8018C43C
	move    $v0, $0
	b       .L8018C43C
	nop
.L8018C43C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018C44C
face_stdio_8018C44C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018C3A4
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, .L8018C4A8
	nop
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018C2F0
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, .L8018C4A8
	nop
	la.u    $a0, str_face_stdio_801B82F0
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B82F0
.L8018C4A8:
	jal     face_gfx_8019B060
	nop
	mtc1    $v0, $f4
	bgez    $v0, .L8018C4CC
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L8018C4CC:
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f6, 0x0004($t8)
	lui     $t9, %hi(_face_stdio_data+0x20)
	lw      $t9, %lo(_face_stdio_data+0x20)($t9)
	nop
	slti    $at, $t9, 0x0010
	bnez    $at, .L8018C4FC
	nop
	la.u    $a0, str_face_stdio_801B8310
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B8310
.L8018C4FC:
	lui     $t1, %hi(_face_stdio_data+0x20)
	lw      $t1, %lo(_face_stdio_data+0x20)($t1)
	lw      $t0, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x1000)
	lui     $t3, %hi(_face_stdio_data+0x20)
	sll     $t2, $t1, 2
	lw      $t3, %lo(_face_stdio_data+0x20)($t3)
	addu    $at, $at, $t2
	sw      $t0, %lo(_face_bss+0x1000)($at)
	lui     $at, %hi(_face_stdio_data+0x20)
	addiu   $t4, $t3, 0x0001
	sw      $t4, %lo(_face_stdio_data+0x20)($at)
	lw      $v0, 0x001C($sp)
	b       .L8018C540
	nop
	b       .L8018C540
	nop
.L8018C540:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_stdio_8018C550:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_face_stdio_data+0x20)
	lw      $t6, %lo(_face_stdio_data+0x20)($t6)
	lui     $t8, %hi(_face_bss+0xFFC)
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_bss+0xFFC)($t8)
	la.u    $a0, str_face_stdio_801B832C
	lw      $a1, 0x0000($t8)
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B832C
	b       .L8018C588
	nop
.L8018C588:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_stdio_8018C598
face_stdio_8018C598:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_stdio_data+0x20)
	lw      $t6, %lo(_face_stdio_data+0x20)($t6)
	lui     $at, %hi(_face_stdio_data+0x20)
	slti    $s0, $t6, 0x0000
	addiu   $t7, $t6, -0x0001
	beqz    $s0, .L8018C5D0
	sw      $t7, %lo(_face_stdio_data+0x20)($at)
	la.u    $a0, str_face_stdio_801B8330
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B8330
.L8018C5D0:
	lw      $a0, 0x0028($sp)
	jal     face_stdio_8018C3A4
	nop
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	nop
	bnez    $t8, .L8018C600
	nop
	la.u    $a0, str_face_stdio_801B8348
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B8348
.L8018C600:
	jal     face_gfx_8019B060
	nop
	mtc1    $v0, $f4
	bgez    $v0, .L8018C624
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L8018C624:
	lw      $t9, 0x0024($sp)
	nop
	swc1    $f6, 0x0008($t9)
	lw      $t0, 0x0024($sp)
	nop
	lwc1    $f10, 0x0008($t0)
	lwc1    $f16, 0x0004($t0)
	lwc1    $f4, 0x000C($t0)
	sub.s   $f18, $f10, $f16
	add.s   $f8, $f4, $f18
	swc1    $f8, 0x000C($t0)
	lw      $t1, 0x0024($sp)
	cfc1    $t2, $31
	li      $v0, 0x0001
	ctc1    $v0, $31
	lwc1    $f6, 0x000C($t1)
	nop
	cvt.w.s $f10, $f6
	cfc1    $v0, $31
	nop
	andi    $at, $v0, 0x0004
	andi    $v0, $v0, 0x0078
	beqz    $v0, .L8018C6D0
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $v0, 0x0001
	sub.s   $f10, $f6, $f10
	ctc1    $v0, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $v0, $31
	nop
	andi    $at, $v0, 0x0004
	andi    $v0, $v0, 0x0078
	bnez    $v0, .L8018C6C8
	nop
	mfc1    $v0, $f10
	li      $at, 0x80000000
	b       .L8018C6E0
	or      $v0, $v0, $at
.L8018C6C8:
	b       .L8018C6E0
	li      $v0, -0x0001
.L8018C6D0:
	mfc1    $v0, $f10
	nop
	bltz    $v0, .L8018C6C8
	nop
.L8018C6E0:
	ctc1    $t2, $31
	b       .L8018C6F4
	nop
	b       .L8018C6F4
	nop
.L8018C6F4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_stdio_8018C704
face_stdio_8018C704:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
.L8018C70C:
	lw      $t6, 0x0004($sp)
	lui     $at, %hi(_face_bss+0xE00)
	sll     $t7, $t6, 4
	addu    $at, $at, $t7
	sw      $0, %lo(_face_bss+0xE00)($at)
	lw      $t8, 0x0004($sp)
	mtc1    $0, $f4
	lui     $at, %hi(_face_bss+0xE04)
	sll     $t9, $t8, 4
	addu    $at, $at, $t9
	swc1    $f4, %lo(_face_bss+0xE04)($at)
	lw      $t0, 0x0004($sp)
	mtc1    $0, $f6
	lui     $at, %hi(_face_bss+0xE08)
	sll     $t1, $t0, 4
	addu    $at, $at, $t1
	swc1    $f6, %lo(_face_bss+0xE08)($at)
	lw      $t2, 0x0004($sp)
	mtc1    $0, $f8
	lui     $at, %hi(_face_bss+0xE0C)
	sll     $t3, $t2, 4
	addu    $at, $at, $t3
	swc1    $f8, %lo(_face_bss+0xE0C)($at)
	lw      $t4, 0x0004($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, .L8018C70C
	sw      $t5, 0x0004($sp)
	b       .L8018C788
	nop
.L8018C788:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018C790
face_stdio_8018C790:
	la.u    $t7, _face_bss+0xE00
	la.l    $t7, _face_bss+0xE00
	sll     $t6, $a0, 4
	jr      $ra
	addu    $v0, $t6, $t7
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_stdio_8018C7B4
face_stdio_8018C7B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
.L8018C7C0:
	lw      $t6, 0x001C($sp)
	lui     $t8, %hi(_face_bss+0xE00)
	sll     $t7, $t6, 4
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_bss+0xE00)($t8)
	nop
	beqz    $t8, .L8018C83C
	nop
	lw      $t9, 0x001C($sp)
	la.u    $t1, _face_bss+0xE00
	la.l    $t1, _face_bss+0xE00
	sll     $t0, $t9, 4
	addu    $t2, $t0, $t1
	li      $at, 0x44800000
	mtc1    $at, $f6
	lwc1    $f4, 0x000C($t2)
	lw      $a1, 0x0000($t2)
	div.s   $f8, $f4, $f6
	la.u    $a0, str_face_stdio_801B8364
	la.l    $a0, str_face_stdio_801B8364
	cfc1    $t3, $31
	nop
	ori     $at, $t3, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	mfc1    $a2, $f10
	ctc1    $t3, $31
	jal     gd_printf
	nop
.L8018C83C:
	lw      $t4, 0x001C($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, .L8018C7C0
	sw      $t5, 0x001C($sp)
	b       .L8018C85C
	nop
.L8018C85C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018C86C
face_stdio_8018C86C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	la.u    $a0, str_face_stdio_801B8370
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8370
	sw      $0, 0x0024($sp)
.L8018C884:
	lw      $t6, 0x0024($sp)
	lui     $t8, %hi(_face_bss+0x998)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_bss+0x998)($t8)
	nop
	beqz    $t8, .L8018C8F0
	nop
	lw      $t9, 0x0024($sp)
	la.u    $t1, _face_bss+0x980
	sll     $t0, $t9, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	la.l    $t1, _face_bss+0x980
	addu    $t2, $t0, $t1
	lwc1    $f4, 0x0010($t2)
	lw      $t3, 0x0020($t2)
	cvt.d.s $f6, $f4
	mfc1    $a3, $f6
	mfc1    $a2, $f7
	lw      $a1, 0x0018($t2)
	la.u    $a0, str_face_stdio_801B837C
	la.l    $a0, str_face_stdio_801B837C
	jal     gd_printf
	sw      $t3, 0x0010($sp)
.L8018C8F0:
	lw      $t4, 0x0024($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, .L8018C884
	sw      $t5, 0x0024($sp)
	b       .L8018C910
	nop
.L8018C910:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_stdio_8018C920
face_stdio_8018C920:
	lui     $at, %hi(_face_bss+0x978)
	sw      $0, %lo(_face_bss+0x978)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_stdio_8018C938
face_stdio_8018C938:
	li      $t6, 0x0001
	lui     $at, %hi(_face_bss+0x978)
	sw      $t6, %lo(_face_bss+0x978)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_stdio_8018C954
face_stdio_8018C954:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
.L8018C960:
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x998)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $at, $at, $t7
	sw      $0, %lo(_face_bss+0x998)($at)
	lw      $t8, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x988)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $at, $at, $t9
	sw      $0, %lo(_face_bss+0x988)($at)
	lw      $t0, 0x001C($sp)
	mtc1    $0, $f4
	sll     $t1, $t0, 3
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	lui     $at, %hi(_face_bss+0x98C)
	addu    $at, $at, $t1
	swc1    $f4, %lo(_face_bss+0x98C)($at)
	lw      $t2, 0x001C($sp)
	mtc1    $0, $f6
	sll     $t3, $t2, 3
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	lui     $at, %hi(_face_bss+0x990)
	addu    $at, $at, $t3
	swc1    $f6, %lo(_face_bss+0x990)($at)
	lw      $t4, 0x001C($sp)
	mtc1    $0, $f8
	sll     $t5, $t4, 3
	addu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	lui     $at, %hi(_face_bss+0x994)
	addu    $at, $at, $t5
	swc1    $f8, %lo(_face_bss+0x994)($at)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0007
	divu    $0, $t6, $at
	lui     $t9, %hi(_face_stdio_data+0x04)
	sll     $t0, $t6, 3
	addu    $t0, $t0, $t6
	sll     $t0, $t0, 2
	lui     $at, %hi(_face_bss+0x99C)
	addu    $at, $at, $t0
	mfhi    $t7
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(_face_stdio_data+0x04)($t9)
	nop
	sw      $t9, %lo(_face_bss+0x99C)($at)
	lw      $t1, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x9A0)
	sll     $t2, $t1, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $at, $at, $t2
	sw      $0, %lo(_face_bss+0x9A0)($at)
	lw      $t3, 0x001C($sp)
	nop
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0020
	bnez    $at, .L8018C960
	sw      $t4, 0x001C($sp)
	jal     face_stdio_8018C938
	nop
	b       .L8018CA78
	nop
.L8018CA78:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_stdio_8018CA88:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0000($sp)
	sw      $0, 0x0004($sp)
.L8018CA94:
	lw      $t6, 0x0004($sp)
	lui     $t8, %hi(_face_bss+0x998)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_bss+0x998)($t8)
	nop
	bnez    $t8, .L8018CB00
	nop
	lw      $t9, 0x0004($sp)
	lui     $at, %hi(_face_bss+0x998)
	sll     $t0, $t9, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $at, $at, $t0
	sw      $a0, %lo(_face_bss+0x998)($at)
	lw      $t1, 0x0004($sp)
	la.u    $t3, _face_bss+0x980
	sll     $t2, $t1, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	la.l    $t3, _face_bss+0x980
	addu    $t4, $t2, $t3
	sw      $t4, 0x0000($sp)
	b       .L8018CB18
	nop
.L8018CB00:
	lw      $t5, 0x0004($sp)
	nop
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0020
	bnez    $at, .L8018CA94
	sw      $t6, 0x0004($sp)
.L8018CB18:
	lw      $v0, 0x0000($sp)
	b       .L8018CB2C
	nop
	b       .L8018CB2C
	nop
.L8018CB2C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_stdio_8018CB34:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
.L8018CB44:
	lw      $t6, 0x001C($sp)
	lui     $t8, %hi(_face_bss+0x998)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_bss+0x998)($t8)
	nop
	beqz    $t8, .L8018CBBC
	nop
	lw      $t9, 0x001C($sp)
	lui     $a0, %hi(_face_bss+0x998)
	sll     $t0, $t9, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $a0, $a0, $t0
	lw      $a0, %lo(_face_bss+0x998)($a0)
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018DFF0
	nop
	bnez    $v0, .L8018CBBC
	nop
	lw      $t1, 0x001C($sp)
	la.u    $t3, _face_bss+0x980
	sll     $t2, $t1, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	la.l    $t3, _face_bss+0x980
	b       .L8018CBE4
	addu    $v0, $t2, $t3
.L8018CBBC:
	lw      $t4, 0x001C($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, .L8018CB44
	sw      $t5, 0x001C($sp)
	b       .L8018CBE4
	move    $v0, $0
	b       .L8018CBE4
	nop
.L8018CBE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_stdio_8018CBF4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CB34
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, .L8018CC30
	nop
	la.u    $a0, str_face_stdio_801B838C
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B838C
.L8018CC30:
	lw      $v0, 0x001C($sp)
	b       .L8018CC44
	nop
	b       .L8018CC44
	nop
.L8018CC44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl get_timernum
get_timernum:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	slti    $at, $t6, 0x0020
	bnez    $at, .L8018CC88
	nop
	la.u    $a0, str_face_stdio_801B83A4
	lw      $a1, 0x0018($sp)
	la.l    $a0, str_face_stdio_801B83A4
	jal     face_stdio_8018D298
	li      $a2, 0x0020
.L8018CC88:
	lw      $t7, 0x0018($sp)
	la.u    $t9, _face_bss+0x980
	sll     $t8, $t7, 3
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	la.l    $t9, _face_bss+0x980
	b       .L8018CCB0
	addu    $v0, $t8, $t9
	b       .L8018CCB0
	nop
.L8018CCB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_stdio_8018CCC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_face_bss+0x978)
	lw      $t6, %lo(_face_bss+0x978)($t6)
	nop
	bnez    $t6, .L8018CCE8
	nop
	b       .L8018CD8C
	nop
.L8018CCE8:
	jal     face_gfx_8019B080
	nop
	lw      $t7, 0x0018($sp)
	nop
	sw      $v0, 0x0004($t7)
	lw      $t8, 0x0018($sp)
	nop
	lw      $t9, 0x0004($t8)
	lw      $t0, 0x0000($t8)
	lw      $t2, 0x0008($t8)
	subu    $t1, $t9, $t0
	addu    $t3, $t2, $t1
	sw      $t3, 0x0008($t8)
	lw      $t4, 0x0018($sp)
	nop
	lw      $t5, 0x0008($t4)
	nop
	bgez    $t5, .L8018CD40
	nop
	lw      $t6, 0x0018($sp)
	nop
	sw      $0, 0x0008($t6)
.L8018CD40:
	jal     face_gfx_8019B0B0
	nop
	lw      $t7, 0x0018($sp)
	nop
	lw      $t9, 0x0008($t7)
	nop
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	nop
	div.s   $f8, $f6, $f0
	swc1    $f8, 0x0010($t7)
	lw      $t0, 0x0018($sp)
	nop
	lw      $t2, 0x0004($t0)
	nop
	sw      $t2, 0x0000($t0)
	b       .L8018CD8C
	nop
.L8018CD8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_stdio_8018CD9C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
.L8018CDA8:
	lw      $a0, 0x001C($sp)
	jal     get_timernum
	nop
	sw      $v0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x0018($t6)
	nop
	beqz    $t7, .L8018CDDC
	nop
	lw      $a0, 0x0018($sp)
	jal     face_stdio_8018CCC0
	nop
.L8018CDDC:
	lw      $t8, 0x001C($sp)
	nop
	addiu   $t9, $t8, 0x0001
	slti    $at, $t9, 0x0020
	bnez    $at, .L8018CDA8
	sw      $t9, 0x001C($sp)
	b       .L8018CDFC
	nop
.L8018CDFC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_stdio_8018CE0C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_face_bss+0x978)
	lw      $t6, %lo(_face_bss+0x978)($t6)
	nop
	bnez    $t6, .L8018CE30
	nop
	b       .L8018CE90
	nop
.L8018CE30:
	sw      $0, 0x001C($sp)
.L8018CE34:
	lw      $a0, 0x001C($sp)
	jal     get_timernum
	nop
	sw      $v0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	nop
	lw      $t8, 0x0018($t7)
	nop
	beqz    $t8, .L8018CE70
	nop
	jal     face_gfx_8019B080
	nop
	lw      $t9, 0x0018($sp)
	nop
	sw      $v0, 0x0000($t9)
.L8018CE70:
	lw      $t0, 0x001C($sp)
	nop
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0020
	bnez    $at, .L8018CE34
	sw      $t1, 0x001C($sp)
	b       .L8018CE90
	nop
.L8018CE90:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl start_timer
start_timer:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_bss+0x978)
	lw      $t6, %lo(_face_bss+0x978)($t6)
	nop
	bnez    $t6, .L8018CEC8
	nop
	b       .L8018CF60
	nop
.L8018CEC8:
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CB34
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, .L8018CF18
	nop
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CA88
	nop
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	nop
	bnez    $t8, .L8018CF18
	nop
	la.u    $a0, str_face_stdio_801B83DC
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B83DC
.L8018CF18:
	lw      $t9, 0x001C($sp)
	nop
	lwc1    $f4, 0x0010($t9)
	nop
	swc1    $f4, 0x0014($t9)
	jal     face_gfx_8019B080
	nop
	lw      $t0, 0x001C($sp)
	nop
	sw      $v0, 0x0000($t0)
	lw      $t1, 0x001C($sp)
	nop
	sw      $0, 0x0008($t1)
	lw      $t3, 0x001C($sp)
	li      $t2, 0x0001
	sw      $t2, 0x0020($t3)
	b       .L8018CF60
	nop
.L8018CF60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl restart_timer
restart_timer:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_bss+0x978)
	lw      $t6, %lo(_face_bss+0x978)($t6)
	nop
	bnez    $t6, .L8018CF98
	nop
	b       .L8018D01C
	nop
.L8018CF98:
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CB34
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, .L8018CFE8
	nop
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CA88
	nop
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	nop
	bnez    $t8, .L8018CFE8
	nop
	la.u    $a0, str_face_stdio_801B8408
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B8408
.L8018CFE8:
	jal     face_gfx_8019B080
	nop
	lw      $t9, 0x001C($sp)
	nop
	sw      $v0, 0x0000($t9)
	lw      $t0, 0x001C($sp)
	nop
	lw      $t1, 0x0020($t0)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0020($t0)
	b       .L8018D01C
	nop
.L8018D01C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D02C
face_stdio_8018D02C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_bss+0x978)
	lw      $t6, %lo(_face_bss+0x978)($t6)
	nop
	bnez    $t6, .L8018D054
	nop
	b       .L8018D078
	nop
.L8018D054:
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CBF4
	nop
	sw      $v0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	jal     face_stdio_8018CCC0
	nop
	b       .L8018D078
	nop
.L8018D078:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D088
face_stdio_8018D088:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_bss+0x978)
	lw      $t6, %lo(_face_bss+0x978)($t6)
	nop
	bnez    $t6, .L8018D0B0
	nop
	b       .L8018D150
	nop
.L8018D0B0:
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CBF4
	nop
	sw      $v0, 0x001C($sp)
	jal     face_gfx_8019B080
	nop
	lw      $t7, 0x001C($sp)
	nop
	sw      $v0, 0x0004($t7)
	lw      $t8, 0x001C($sp)
	nop
	lw      $t9, 0x0004($t8)
	lw      $t0, 0x0000($t8)
	lw      $t2, 0x0008($t8)
	subu    $t1, $t9, $t0
	addu    $t3, $t2, $t1
	sw      $t3, 0x0008($t8)
	lw      $t4, 0x001C($sp)
	nop
	lw      $t5, 0x0008($t4)
	nop
	bgez    $t5, .L8018D118
	nop
	lw      $t6, 0x001C($sp)
	nop
	sw      $0, 0x0008($t6)
.L8018D118:
	jal     face_gfx_8019B0B0
	nop
	lw      $t7, 0x001C($sp)
	nop
	lw      $t9, 0x0008($t7)
	nop
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	nop
	div.s   $f8, $f6, $f0
	swc1    $f8, 0x0010($t7)
	b       .L8018D150
	nop
.L8018D150:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D160
face_stdio_8018D160:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CBF4
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	lwc1    $f0, 0x0010($t6)
	b       .L8018D198
	nop
	b       .L8018D198
	nop
.L8018D198:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_stdio_8018D1A8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CBF4
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	lw      $t7, 0x0008($t6)
	nop
	mtc1    $t7, $f4
	b       .L8018D1E8
	cvt.s.w $f0, $f4
	b       .L8018D1E8
	nop
.L8018D1E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D1F8
face_stdio_8018D1F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_stdio_8018D298
	nop
	b       .L8018D218
	nop
.L8018D218:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_stdio_8018D228:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_face_stdio_data+0x00)
	lw      $t6, %lo(_face_stdio_data+0x00)($t6)
	sw      $0, 0x001C($sp)
	blez    $t6, .L8018D280
	nop
.L8018D244:
	lw      $t7, 0x001C($sp)
	lui     $a1, %hi(_face_bss+0x878)
	sll     $t8, $t7, 2
	addu    $a1, $a1, $t8
	lw      $a1, %lo(_face_bss+0x878)($a1)
	la.u    $a0, str_face_stdio_801B8434
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8434
	lw      $t9, 0x001C($sp)
	lui     $t1, %hi(_face_stdio_data+0x00)
	lw      $t1, %lo(_face_stdio_data+0x00)($t1)
	addiu   $t0, $t9, 0x0001
	slt     $at, $t0, $t1
	bnez    $at, .L8018D244
	sw      $t0, 0x001C($sp)
.L8018D280:
	b       .L8018D288
	nop
.L8018D288:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D298
face_stdio_8018D298:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	addiu   $t6, $sp, 0x0038
	addiu   $t7, $t6, 0x0004
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x0038($sp)
	nop
	lb      $t9, 0x0000($t8)
	addiu   $t0, $t8, 0x0001
	move    $s0, $t9
	sw      $t0, 0x0038($sp)
	beqz    $s0, .L8018D51C
	sb      $t9, 0x0037($sp)
.L8018D2E4:
	lb      $s0, 0x0037($sp)
	li      $at, 0x000A
	beq     $s0, $at, .L8018D4D8
	nop
	li      $at, 0x0025
	beq     $s0, $at, .L8018D314
	nop
	li      $at, 0x005C
	beq     $s0, $at, .L8018D4C4
	nop
	b       .L8018D4EC
	nop
.L8018D314:
	lw      $t1, 0x0038($sp)
	nop
	lb      $t2, 0x0000($t1)
	addiu   $t3, $t1, 0x0001
	move    $s1, $t2
	addiu   $t4, $s1, -0x0063
	sltiu   $at, $t4, 0x0016
	sw      $t3, 0x0038($sp)
	beqz    $at, L8018D4AC
	sb      $t2, 0x0037($sp)
	sll     $t4, $t4, 2
	lui     $at, %hi(face_stdio_801B854C)
	addu    $at, $at, $t4
	lw      $t4, %lo(face_stdio_801B854C)($at)
	nop
	jr      $t4
	nop
.globl L8018D358
L8018D358:
	lw      $t5, 0x002C($sp)
	li      $at, -0x0004
	addiu   $t6, $t5, 0x0003
	and     $t7, $t6, $at
	addiu   $t9, $t7, 0x0004
	sw      $t9, 0x002C($sp)
	move    $s0, $t9
	lw      $a1, -0x0004($s0)
	la.u    $a0, str_face_stdio_801B8440
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8440
	b       .L8018D4BC
	nop
.globl L8018D38C
L8018D38C:
	lw      $t8, 0x002C($sp)
	nop
	andi    $t0, $t8, 0x0001
	beqz    $t0, .L8018D3B0
	nop
	addiu   $t2, $t8, 0x0007
	sw      $t2, 0x002C($sp)
	b       .L8018D3F4
	addiu   $s0, $t2, -0x0016
.L8018D3B0:
	lw      $t1, 0x002C($sp)
	nop
	andi    $t3, $t1, 0x0002
	beqz    $t3, .L8018D3D4
	nop
	addiu   $t4, $t1, 0x000A
	sw      $t4, 0x002C($sp)
	b       .L8018D3F0
	addiu   $s1, $t4, -0x0028
.L8018D3D4:
	lw      $t5, 0x002C($sp)
	li      $at, -0x0008
	addiu   $t6, $t5, 0x0007
	and     $t7, $t6, $at
	addiu   $t9, $t7, 0x0008
	sw      $t9, 0x002C($sp)
	move    $s1, $t9
.L8018D3F0:
	move    $s0, $s1
.L8018D3F4:
	la.u    $a0, str_face_stdio_801B8444
	lw      $a2, -0x0008($s0)
	lw      $a3, -0x0004($s0)
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8444
	b       .L8018D4BC
	nop
.globl L8018D410
L8018D410:
	lw      $t0, 0x002C($sp)
	li      $at, -0x0004
	addiu   $t8, $t0, 0x0003
	and     $t2, $t8, $at
	addiu   $t3, $t2, 0x0004
	sw      $t3, 0x002C($sp)
	move    $s0, $t3
	lw      $a1, -0x0004($s0)
	la.u    $a0, str_face_stdio_801B8448
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8448
	b       .L8018D4BC
	nop
.globl L8018D444
L8018D444:
	lw      $t1, 0x002C($sp)
	li      $at, -0x0004
	addiu   $t4, $t1, 0x0003
	and     $t5, $t4, $at
	addiu   $t6, $t5, 0x0004
	sw      $t6, 0x002C($sp)
	addiu   $s0, $t6, -0x0003
	lb      $a1, -0x0001($s0)
	la.u    $a0, str_face_stdio_801B844C
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B844C
	b       .L8018D4BC
	nop
.globl L8018D478
L8018D478:
	lw      $t7, 0x002C($sp)
	li      $at, -0x0004
	addiu   $t9, $t7, 0x0003
	and     $t0, $t9, $at
	addiu   $t8, $t0, 0x0004
	sw      $t8, 0x002C($sp)
	move    $s0, $t8
	lw      $a1, -0x0004($s0)
	la.u    $a0, str_face_stdio_801B8450
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8450
	b       .L8018D4BC
	nop
.globl L8018D4AC
L8018D4AC:
	la.u    $a0, str_face_stdio_801B8454
	lb      $a1, 0x0037($sp)
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8454
.L8018D4BC:
	b       .L8018D4FC
	nop
.L8018D4C4:
	la.u    $a0, str_face_stdio_801B8458
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8458
	b       .L8018D4FC
	nop
.L8018D4D8:
	la.u    $a0, str_face_stdio_801B845C
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B845C
	b       .L8018D4FC
	nop
.L8018D4EC:
	la.u    $a0, str_face_stdio_801B8460
	lb      $a1, 0x0037($sp)
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8460
.L8018D4FC:
	lw      $t2, 0x0038($sp)
	nop
	lb      $t3, 0x0000($t2)
	addiu   $t1, $t2, 0x0001
	move    $s0, $t3
	sw      $t1, 0x0038($sp)
	bnez    $s0, .L8018D2E4
	sb      $t3, 0x0037($sp)
.L8018D51C:
	la.u    $a0, str_face_stdio_801B8464
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8464
	jal     face_stdio_8018D228
	nop
	la.u    $a0, str_face_stdio_801B8468
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8468
	jal     gd_exit
	li      $a0, -0x0001
	b       .L8018D54C
	nop
.L8018D54C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

.globl face_stdio_8018D560
face_stdio_8018D560:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t7, %hi(_face_stdio_data+0x00)
	lw      $t7, %lo(_face_stdio_data+0x00)($t7)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x878)
	lui     $t9, %hi(_face_stdio_data+0x00)
	sll     $t8, $t7, 2
	lw      $t9, %lo(_face_stdio_data+0x00)($t9)
	addu    $at, $at, $t8
	sw      $t6, %lo(_face_bss+0x878)($at)
	lui     $at, %hi(_face_stdio_data+0x00)
	addiu   $t0, $t9, 0x0001
	sw      $t0, %lo(_face_stdio_data+0x00)($at)
	lui     $t1, %hi(_face_stdio_data+0x00)
	lw      $t1, %lo(_face_stdio_data+0x00)($t1)
	lui     $at, %hi(_face_bss+0x878)
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	sw      $0, %lo(_face_bss+0x878)($at)
	lui     $t3, %hi(_face_stdio_data+0x00)
	lw      $t3, %lo(_face_stdio_data+0x00)($t3)
	nop
	slti    $at, $t3, 0x0040
	bnez    $at, .L8018D5D8
	nop
	la.u    $a0, str_face_stdio_801B846C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B846C
.L8018D5D8:
	b       .L8018D5E0
	nop
.L8018D5E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl imout
imout:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_face_stdio_data+0x00)
	lw      $t6, %lo(_face_stdio_data+0x00)($t6)
	lui     $at, %hi(_face_stdio_data+0x00)
	addiu   $t7, $t6, -0x0001
	bgez    $t7, .L8018D688
	sw      $t7, %lo(_face_stdio_data+0x00)($at)
	sw      $0, 0x001C($sp)
.L8018D614:
	lw      $t8, 0x001C($sp)
	lui     $t0, %hi(_face_bss+0x878)
	sll     $t9, $t8, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(_face_bss+0x878)($t0)
	nop
	beqz    $t0, .L8018D65C
	nop
	lw      $t1, 0x001C($sp)
	lui     $a1, %hi(_face_bss+0x878)
	sll     $t2, $t1, 2
	addu    $a1, $a1, $t2
	lw      $a1, %lo(_face_bss+0x878)($a1)
	la.u    $a0, str_face_stdio_801B8488
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8488
	b       .L8018D664
	nop
.L8018D65C:
	b       .L8018D67C
	nop
.L8018D664:
	lw      $t3, 0x001C($sp)
	nop
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0040
	bnez    $at, .L8018D614
	sw      $t4, 0x001C($sp)
.L8018D67C:
	la.u    $a0, str_face_stdio_801B8490
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B8490
.L8018D688:
	b       .L8018D690
	nop
.L8018D690:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D6A0
face_stdio_8018D6A0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0028($sp)
.L8018D6B0:
	lui     $t6, %hi(_face_stdio_data+0x24)
	lw      $t6, %lo(_face_stdio_data+0x24)($t6)
	li      $at, 0x80000000
	and     $t7, $t6, $at
	beqz    $t7, .L8018D6E4
	nop
	lui     $t8, %hi(_face_stdio_data+0x24)
	lw      $t8, %lo(_face_stdio_data+0x24)($t8)
	lui     $at, %hi(_face_stdio_data+0x24)
	sll     $t9, $t8, 1
	ori     $t0, $t9, 0x0001
	b       .L8018D6F8
	sw      $t0, %lo(_face_stdio_data+0x24)($at)
.L8018D6E4:
	lui     $t1, %hi(_face_stdio_data+0x24)
	lw      $t1, %lo(_face_stdio_data+0x24)($t1)
	lui     $at, %hi(_face_stdio_data+0x24)
	sll     $t2, $t1, 1
	sw      $t2, %lo(_face_stdio_data+0x24)($at)
.L8018D6F8:
	lw      $t3, 0x0028($sp)
	nop
	addiu   $t4, $t3, 0x0001
	sltiu   $at, $t4, 0x0004
	bnez    $at, .L8018D6B0
	sw      $t4, 0x0028($sp)
	lui     $t5, %hi(_face_stdio_data+0x24)
	lw      $t5, %lo(_face_stdio_data+0x24)($t5)
	lui     $at, %hi(_face_stdio_data+0x24)
	addiu   $t6, $t5, 0x0004
	sw      $t6, %lo(_face_stdio_data+0x24)($at)
	jal     face_gfx_8019B080
	nop
	lui     $t7, %hi(_face_stdio_data+0x24)
	lw      $t7, %lo(_face_stdio_data+0x24)($t7)
	move    $s0, $v0
	xor     $t8, $t7, $s0
	andi    $t9, $t8, 0x0001
	lui     $at, %hi(_face_stdio_data+0x24)
	beqz    $t9, .L8018D778
	sw      $t8, %lo(_face_stdio_data+0x24)($at)
	lui     $t0, %hi(_face_stdio_data+0x24)
	lw      $t0, %lo(_face_stdio_data+0x24)($t0)
	nop
	sw      $t0, 0x002C($sp)
	lui     $t1, %hi(_face_stdio_data+0x28)
	lw      $t1, %lo(_face_stdio_data+0x28)($t1)
	lui     $at, %hi(_face_stdio_data+0x24)
	sw      $t1, %lo(_face_stdio_data+0x24)($at)
	lw      $t2, 0x002C($sp)
	lui     $at, %hi(_face_stdio_data+0x28)
	sw      $t2, %lo(_face_stdio_data+0x28)($at)
.L8018D778:
	lui     $t3, %hi(_face_stdio_data+0x24)
	lw      $t3, %lo(_face_stdio_data+0x24)($t3)
	nop
	andi    $t4, $t3, 0xFFFF
	mtc1    $t4, $f4
	bgez    $t4, .L8018D7A8
	cvt.d.w $f6, $f4
	li      $at, 0x41F00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	nop
	add.d   $f6, $f6, $f8
.L8018D7A8:
	lui     $at, %hi(face_stdio_801B85A8+4)
	lwc1    $f11, %lo(face_stdio_801B85A8+0)($at)
	lwc1    $f10, %lo(face_stdio_801B85A8+4)($at)
	nop
	div.d   $f16, $f6, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f0, 0x0024($sp)
	b       .L8018D7D8
	nop
	b       .L8018D7D8
	nop
.L8018D7D8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl gd_atoi
gd_atoi:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	nop
	sw      $t6, 0x0028($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x001C($sp)
.L8018D808:
	lw      $t7, 0x0030($sp)
	nop
	lb      $t8, 0x0000($t7)
	addiu   $t9, $t7, 0x0001
	sw      $t9, 0x0030($sp)
	sb      $t8, 0x002F($sp)
	lb      $t0, 0x002F($sp)
	nop
	slti    $at, $t0, 0x0030
	bnez    $at, .L8018D840
	nop
	slti    $at, $t0, 0x003A
	bnez    $at, .L8018D860
	nop
.L8018D840:
	lb      $t1, 0x002F($sp)
	li      $at, 0x002D
	beq     $t1, $at, .L8018D860
	nop
	la.u    $a0, str_face_stdio_801B84B8
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B84B8
.L8018D860:
	lb      $t2, 0x002F($sp)
	li      $at, 0x002D
	bne     $t2, $at, .L8018D87C
	nop
	li      $t3, 0x0001
	b       .L8018D8FC
	sw      $t3, 0x001C($sp)
.L8018D87C:
	lb      $t4, 0x002F($sp)
	nop
	addiu   $t5, $t4, -0x0030
	sw      $t5, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	andi    $t7, $t8, 0x00FF
	addu    $t9, $t6, $t7
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0030($sp)
	nop
	lb      $t1, 0x0000($t0)
	nop
	beqz    $t1, .L8018D8DC
	nop
	li      $at, 0x002E
	beq     $t1, $at, .L8018D8DC
	nop
	slti    $at, $t1, 0x0030
	bnez    $at, .L8018D8DC
	nop
	slti    $at, $t1, 0x003A
	bnez    $at, .L8018D8E4
	nop
.L8018D8DC:
	b       .L8018D904
	nop
.L8018D8E4:
	lw      $t2, 0x0020($sp)
	nop
	sll     $t3, $t2, 2
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 1
	sw      $t3, 0x0020($sp)
.L8018D8FC:
	b       .L8018D808
	nop
.L8018D904:
	lw      $t4, 0x001C($sp)
	nop
	beqz    $t4, .L8018D924
	nop
	lw      $t5, 0x0020($sp)
	nop
	subu    $t8, $0, $t5
	sw      $t8, 0x0020($sp)
.L8018D924:
	lw      $v0, 0x0020($sp)
	b       .L8018D938
	nop
	b       .L8018D938
	nop
.L8018D938:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl face_stdio_8018D948
face_stdio_8018D948:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     gd_atoi
	nop
	mtc1    $v0, $f4
	b       .L8018D978
	cvt.d.w $f0, $f4
	b       .L8018D978
	nop
.L8018D978:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_stdio_8018D988:
	addiu   $sp, $sp, -0x0008
	li      $t6, 0x001C
	sw      $t6, 0x0004($sp)
.L8018D994:
	lw      $t7, 0x0004($sp)
	lui     $t0, %hi(_face_stdio_data+0x2C)
	srav    $t8, $a1, $t7
	andi    $t9, $t8, 0x000F
	addu    $t0, $t0, $t9
	lb      $t0, %lo(_face_stdio_data+0x2C)($t0)
	addiu   $a0, $a0, 0x0001
	sb      $t0, -0x0001($a0)
	lw      $t1, 0x0004($sp)
	nop
	addiu   $t2, $t1, -0x0004
	slti    $at, $t2, -0x0003
	beqz    $at, .L8018D994
	sw      $t2, 0x0004($sp)
	sb      $0, 0x0000($a0)
	b       .L8018D9E0
	move    $v0, $a0
	b       .L8018D9E0
	nop
.L8018D9E0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_stdio_8018D9E8:
	addiu   $sp, $sp, -0x0008
	bnez    $a1, .L8018DA0C
	nop
	li      $t6, 0x0030
	sb      $t6, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	sb      $0, 0x0000($a0)
	b       .L8018DADC
	move    $v0, $a0
.L8018DA0C:
	bgez    $a1, .L8018DA24
	nop
	subu    $a1, $0, $a1
	li      $t7, 0x002D
	sb      $t7, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
.L8018DA24:
	blez    $a2, .L8018DAC8
	nop
.L8018DA2C:
	slt     $at, $a1, $a2
	bnez    $at, .L8018DA8C
	nop
	li      $t8, 0x0001
	lui     $at, %hi(_face_stdio_data+0x40)
	sw      $t8, %lo(_face_stdio_data+0x40)($at)
	sw      $0, 0x0004($sp)
.L8018DA48:
	subu    $a1, $a1, $a2
	bgez    $a1, .L8018DA60
	nop
	addu    $a1, $a1, $a2
	b       .L8018DA78
	nop
.L8018DA60:
	lw      $t9, 0x0004($sp)
	nop
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x0009
	bnez    $at, .L8018DA48
	sw      $t0, 0x0004($sp)
.L8018DA78:
	lw      $t1, 0x0004($sp)
	addiu   $a0, $a0, 0x0001
	addiu   $t2, $t1, 0x0030
	b       .L8018DAAC
	sb      $t2, -0x0001($a0)
.L8018DA8C:
	lui     $t3, %hi(_face_stdio_data+0x40)
	lw      $t3, %lo(_face_stdio_data+0x40)($t3)
	nop
	beqz    $t3, .L8018DAAC
	nop
	li      $t4, 0x0030
	sb      $t4, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
.L8018DAAC:
	li      $at, 0x000A
	div     $0, $a2, $at
	mflo    $t5
	move    $a2, $t5
	nop
	bgtz    $a2, .L8018DA2C
	nop
.L8018DAC8:
	sb      $0, 0x0000($a0)
	b       .L8018DADC
	move    $v0, $a0
	b       .L8018DADC
	nop
.L8018DADC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_stdio_8018DAE4:
	addiu   $sp, $sp, -0x0008
	li      $t6, 0x0001
	slti    $at, $a1, 0x0002
	bnez    $at, .L8018DB20
	sw      $t6, 0x0004($sp)
.L8018DAF8:
	sll     $t7, $a0, 2
	addu    $t7, $t7, $a0
	sll     $t7, $t7, 1
	move    $a0, $t7
	lw      $t8, 0x0004($sp)
	nop
	addiu   $t9, $t8, 0x0001
	slt     $at, $t9, $a1
	bnez    $at, .L8018DAF8
	sw      $t9, 0x0004($sp)
.L8018DB20:
	b       .L8018DB30
	move    $v0, $a0
	b       .L8018DB30
	nop
.L8018DB30:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018DB38
face_stdio_8018DB38:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0006
	sw      $t6, 0x0030($sp)
	li      $t7, 0x0006
	sw      $t7, 0x0034($sp)
	lw      $t8, 0x0050($sp)
	nop
	lb      $t9, 0x0000($t8)
	addiu   $t0, $t8, 0x0001
	move    $s0, $t9
	sw      $t0, 0x0050($sp)
	beqz    $s0, .L8018DDB4
	sb      $t9, 0x002B($sp)
.L8018DB80:
	lb      $t1, 0x002B($sp)
	li      $at, 0x0064
	bne     $t1, $at, .L8018DBB4
	nop
	lui     $at, %hi(_face_stdio_data+0x40)
	sw      $0, %lo(_face_stdio_data+0x40)($at)
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0048($sp)
	li.u    $a2, 0x3B9ACA00
	jal     face_stdio_8018D9E8
	li.l    $a2, 0x3B9ACA00
	b       .L8018DD94
	sw      $v0, 0x0040($sp)
.L8018DBB4:
	lb      $t2, 0x002B($sp)
	li      $at, 0x0078
	bne     $t2, $at, .L8018DBE8
	nop
	li      $t3, 0x0001
	lui     $at, %hi(_face_stdio_data+0x40)
	sw      $t3, %lo(_face_stdio_data+0x40)($at)
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0048($sp)
	jal     face_stdio_8018D988
	nop
	b       .L8018DD94
	sw      $v0, 0x0040($sp)
.L8018DBE8:
	lb      $t4, 0x002B($sp)
	li      $at, 0x0066
	bne     $t4, $at, .L8018DCFC
	nop
	cfc1    $t5, $31
	lwc1    $f4, 0x0048($sp)
	ori     $at, $t5, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f4
	mfc1    $t6, $f6
	ctc1    $t5, $31
	sw      $t6, 0x0038($sp)
	nop
	lw      $a1, 0x0030($sp)
	jal     face_stdio_8018DAE4
	li      $a0, 0x000A
	lw      $t7, 0x0038($sp)
	mtc1    $v0, $f4
	mtc1    $t7, $f10
	lwc1    $f8, 0x0048($sp)
	cvt.s.w $f16, $f10
	cvt.s.w $f6, $f4
	sub.s   $f18, $f8, $f16
	mul.s   $f10, $f6, $f18
	cfc1    $t9, $31
	nop
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f8, $f10
	mfc1    $t8, $f8
	ctc1    $t9, $31
	sw      $t8, 0x003C($sp)
	nop
	lui     $at, %hi(_face_stdio_data+0x40)
	sw      $0, %lo(_face_stdio_data+0x40)($at)
	lw      $a1, 0x0034($sp)
	jal     face_stdio_8018DAE4
	li      $a0, 0x000A
	move    $s0, $v0
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0038($sp)
	jal     face_stdio_8018D9E8
	move    $a2, $s0
	sw      $v0, 0x0040($sp)
	lw      $t1, 0x0040($sp)
	li      $t0, 0x002E
	sb      $t0, 0x0000($t1)
	lw      $t2, 0x0040($sp)
	nop
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0040($sp)
	li      $t4, 0x0001
	lui     $at, %hi(_face_stdio_data+0x40)
	sw      $t4, %lo(_face_stdio_data+0x40)($at)
	lw      $a1, 0x0030($sp)
	li      $a0, 0x000A
	jal     face_stdio_8018DAE4
	addiu   $a1, $a1, -0x0001
	move    $s0, $v0
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x003C($sp)
	jal     face_stdio_8018D9E8
	move    $a2, $s0
	b       .L8018DD94
	sw      $v0, 0x0040($sp)
.L8018DCFC:
	lb      $t5, 0x002B($sp)
	nop
	slti    $at, $t5, 0x0030
	bnez    $at, .L8018DD74
	nop
	slti    $at, $t5, 0x003A
	beqz    $at, .L8018DD74
	nop
	lb      $t6, 0x002B($sp)
	nop
	addiu   $t7, $t6, -0x0030
	sb      $t7, 0x002B($sp)
	lb      $t9, 0x002B($sp)
	nop
	sw      $t9, 0x0034($sp)
	lw      $t8, 0x0050($sp)
	nop
	lb      $s0, 0x0000($t8)
	addiu   $t0, $t8, 0x0001
	beqz    $s0, .L8018DD6C
	sw      $t0, 0x0050($sp)
	lw      $t1, 0x0050($sp)
	nop
	lb      $t2, 0x0000($t1)
	addiu   $t4, $t1, 0x0001
	addiu   $t3, $t2, -0x0030
	sw      $t3, 0x0030($sp)
	sw      $t4, 0x0050($sp)
.L8018DD6C:
	b       .L8018DD94
	nop
.L8018DD74:
	lw      $a0, 0x0040($sp)
	la.u    $a1, str_face_stdio_801B84D4
	jal     face_stdio_8018DDD8
	la.l    $a1, str_face_stdio_801B84D4
	lw      $t5, 0x0040($sp)
	nop
	addiu   $t6, $t5, 0x000A
	sw      $t6, 0x0040($sp)
.L8018DD94:
	lw      $t7, 0x0050($sp)
	nop
	lb      $t9, 0x0000($t7)
	addiu   $t8, $t7, 0x0001
	move    $s0, $t9
	sw      $t8, 0x0050($sp)
	bnez    $s0, .L8018DB80
	sb      $t9, 0x002B($sp)
.L8018DDB4:
	lw      $v0, 0x0040($sp)
	b       .L8018DDC8
	nop
	b       .L8018DDC8
	nop
.L8018DDC8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

.globl face_stdio_8018DDD8
face_stdio_8018DDD8:
	addiu   $sp, $sp, -0x0008
	lb      $a2, 0x0000($a1)
	addiu   $a0, $a0, 0x0001
	move    $a3, $a2
	addiu   $a1, $a1, 0x0001
	beqz    $a3, .L8018DE0C
	sb      $a2, -0x0001($a0)
.L8018DDF4:
	lb      $a2, 0x0000($a1)
	addiu   $a0, $a0, 0x0001
	move    $a3, $a2
	addiu   $a1, $a1, 0x0001
	bnez    $a3, .L8018DDF4
	sb      $a2, -0x0001($a0)
.L8018DE0C:
	b       .L8018DE14
	nop
.L8018DE14:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_stdio_8018DE1C:
	addiu   $sp, $sp, -0x0008
	lb      $t6, 0x0000($a0)
	nop
	sb      $t6, 0x0007($sp)
	lb      $t7, 0x0007($sp)
	nop
	beqz    $t7, .L8018DE8C
	nop
.L8018DE3C:
	lb      $t8, 0x0007($sp)
	nop
	slti    $at, $t8, 0x0061
	bnez    $at, .L8018DE6C
	nop
	slti    $at, $t8, 0x007B
	beqz    $at, .L8018DE6C
	nop
	lb      $t9, 0x0007($sp)
	nop
	andi    $t0, $t9, 0x00DF
	sb      $t0, 0x0000($a0)
.L8018DE6C:
	addiu   $a0, $a0, 0x0001
	lb      $t1, 0x0000($a0)
	nop
	sb      $t1, 0x0007($sp)
	lb      $t2, 0x0007($sp)
	nop
	bnez    $t2, .L8018DE3C
	nop
.L8018DE8C:
	b       .L8018DE94
	nop
.L8018DE94:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl gd_strdup
gd_strdup:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     face_stdio_8018DF18
	nop
	move    $s0, $v0
	jal     gd_malloc
	addiu   $a0, $s0, 0x0001
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	nop
	bnez    $t6, .L8018DEE4
	nop
	la.u    $a0, str_face_stdio_801B84E0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B84E0
.L8018DEE4:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018DDD8
	nop
	lw      $v0, 0x0024($sp)
	b       .L8018DF08
	nop
	b       .L8018DF08
	nop
.L8018DF08:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_stdio_8018DF18
face_stdio_8018DF18:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lb      $a1, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	beqz    $a1, .L8018DF50
	nop
.L8018DF30:
	lw      $t6, 0x0004($sp)
	nop
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0004($sp)
	lb      $a1, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	bnez    $a1, .L8018DF30
	nop
.L8018DF50:
	lw      $v0, 0x0004($sp)
	b       .L8018DF64
	nop
	b       .L8018DF64
	nop
.L8018DF64:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018DF6C
face_stdio_8018DF6C:
	addiu   $sp, $sp, -0x0008
	lb      $a2, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	beqz    $a2, .L8018DF90
	nop
.L8018DF80:
	lb      $a2, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	bnez    $a2, .L8018DF80
	nop
.L8018DF90:
	lb      $t6, 0x0000($a1)
	nop
	beqz    $t6, .L8018DFD4
	nop
	addiu   $a0, $a0, -0x0001
	lb      $a3, 0x0000($a1)
	addiu   $a0, $a0, 0x0001
	move    $a2, $a3
	addiu   $a1, $a1, 0x0001
	beqz    $a2, .L8018DFD4
	sb      $a3, -0x0001($a0)
.L8018DFBC:
	lb      $a3, 0x0000($a1)
	addiu   $a0, $a0, 0x0001
	move    $a2, $a3
	addiu   $a1, $a1, 0x0001
	bnez    $a2, .L8018DFBC
	sb      $a3, -0x0001($a0)
.L8018DFD4:
	addiu   $a0, $a0, -0x0001
	b       .L8018DFE8
	move    $v0, $a0
	b       .L8018DFE8
	nop
.L8018DFE8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018DFF0
face_stdio_8018DFF0:
	addiu   $sp, $sp, -0x0008
	lb      $t6, 0x0000($a0)
	nop
	beqz    $t6, .L8018E058
	nop
	lb      $t7, 0x0000($a1)
	nop
	beqz    $t7, .L8018E058
	nop
.L8018E014:
	lb      $t8, 0x0000($a1)
	lb      $t9, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	xor     $a2, $t8, $t9
	sltu    $a2, $0, $a2
	beqz    $a2, .L8018E038
	addiu   $a1, $a1, 0x0001
	b       .L8018E090
	li      $v0, 0x0001
.L8018E038:
	lb      $t0, 0x0000($a0)
	nop
	beqz    $t0, .L8018E058
	nop
	lb      $t1, 0x0000($a1)
	nop
	bnez    $t1, .L8018E014
	nop
.L8018E058:
	lb      $v0, 0x0000($a0)
	nop
	sltu    $t2, $0, $v0
	move    $v0, $t2
	bnez    $v0, .L8018E080
	nop
	lb      $v0, 0x0000($a1)
	nop
	sltu    $t3, $0, $v0
	move    $v0, $t3
.L8018E080:
	b       .L8018E090
	nop
	b       .L8018E090
	nop
.L8018E090:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018E098
face_stdio_8018E098:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x0004($sp)
	lb      $t6, 0x0000($a0)
	nop
	beqz    $t6, .L8018E104
	nop
	lb      $t7, 0x0000($a1)
	nop
	beqz    $t7, .L8018E104
	nop
.L8018E0C0:
	lb      $t8, 0x0000($a1)
	lb      $t9, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	xor     $a2, $t8, $t9
	sltu    $a2, $0, $a2
	beqz    $a2, .L8018E0E4
	addiu   $a1, $a1, 0x0001
	lw      $a1, 0x0004($sp)
	nop
.L8018E0E4:
	lb      $t0, 0x0000($a0)
	nop
	beqz    $t0, .L8018E104
	nop
	lb      $t1, 0x0000($a1)
	nop
	bnez    $t1, .L8018E0C0
	nop
.L8018E104:
	lb      $v0, 0x0000($a1)
	nop
	sltiu   $t2, $v0, 0x0001
	b       .L8018E120
	move    $v0, $t2
	b       .L8018E120
	nop
.L8018E120:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018E128
face_stdio_8018E128:
	lw      $v0, 0x000C($a0)
	nop
	andi    $t6, $v0, 0x0004
	jr      $ra
	move    $v0, $t6
	jr      $ra
	nop
	jr      $ra
	nop

face_stdio_8018E14C:
	lw      $t6, 0x000C($a0)
	nop
	ori     $t7, $t6, 0x0004
	sw      $t7, 0x000C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl gd_fopen
gd_fopen:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0078($sp)
	sw      $a1, 0x007C($sp)
	sw      $0, 0x0018($sp)
.L8018E180:
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0020($sp)
	sw      $0, 0x006C($sp)
.L8018E18C:
	lui     $t8, %hi(_face_bss+0x870)
	lw      $t8, %lo(_face_bss+0x870)($t8)
	lw      $t7, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	addu    $t9, $t7, $t8
	lbu     $t0, 0x0000($t9)
	nop
	sb      $t0, 0x0000($t1)
	lw      $t4, 0x0018($sp)
	lw      $t2, 0x0020($sp)
	addiu   $t5, $t4, 0x0001
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0020($sp)
	sw      $t5, 0x0018($sp)
	lw      $t6, 0x006C($sp)
	nop
	addiu   $t7, $t6, 0x0001
	sltiu   $at, $t7, 0x0044
	bnez    $at, .L8018E18C
	sw      $t7, 0x006C($sp)
	jal     face_gfx_801A5AEC
	addiu   $a0, $sp, 0x0024
	lui     $t8, %hi(_face_bss+0x870)
	lw      $t8, %lo(_face_bss+0x870)($t8)
	lw      $t9, 0x0018($sp)
	nop
	addu    $t0, $t8, $t9
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x0024($sp)
	nop
	addu    $t3, $t1, $t2
	sw      $t3, 0x0018($sp)
	addiu   $t4, $sp, 0x0024
	addiu   $t5, $t4, 0x0004
	sw      $t5, 0x0070($sp)
	lw      $t6, 0x0024($sp)
	nop
	bnez    $t6, .L8018E234
	nop
	b       .L8018E25C
	nop
.L8018E234:
	lw      $a0, 0x0078($sp)
	lw      $a1, 0x0070($sp)
	jal     face_stdio_8018DFF0
	nop
	bnez    $v0, .L8018E254
	nop
	b       .L8018E25C
	nop
.L8018E254:
	b       .L8018E180
	nop
.L8018E25C:
	lw      $t7, 0x0024($sp)
	nop
	bnez    $t7, .L8018E284
	nop
	la.u    $a0, str_face_stdio_801B84FC
	lw      $a1, 0x0078($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B84FC
	b       .L8018E36C
	move    $v0, $0
.L8018E284:
	jal     gd_malloc
	li      $a0, 0x0054
	sw      $v0, 0x0074($sp)
	lw      $t8, 0x0074($sp)
	nop
	bnez    $t8, .L8018E2B8
	nop
	la.u    $a0, str_face_stdio_801B851C
	lw      $a1, 0x0078($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B851C
	b       .L8018E36C
	move    $v0, $0
.L8018E2B8:
	lw      $t9, 0x001C($sp)
	lw      $t0, 0x0074($sp)
	nop
	sw      $t9, 0x0008($t0)
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0074($sp)
	nop
	sw      $t1, 0x0050($t2)
	lw      $t3, 0x0074($sp)
	nop
	sw      $0, 0x000C($t3)
	lw      $t4, 0x0074($sp)
	nop
	lw      $t5, 0x000C($t4)
	nop
	sw      $t5, 0x0004($t4)
	lw      $a0, 0x007C($sp)
	la.u    $a1, str_face_stdio_801B8544
	jal     face_stdio_8018E098
	la.l    $a1, str_face_stdio_801B8544
	beqz    $v0, .L8018E328
	nop
	lw      $t6, 0x0074($sp)
	nop
	lw      $t7, 0x000C($t6)
	nop
	ori     $t8, $t7, 0x0001
	sw      $t8, 0x000C($t6)
.L8018E328:
	lw      $a0, 0x007C($sp)
	la.u    $a1, str_face_stdio_801B8548
	jal     face_stdio_8018E098
	la.l    $a1, str_face_stdio_801B8548
	beqz    $v0, .L8018E358
	nop
	lw      $t9, 0x0074($sp)
	nop
	lw      $t0, 0x000C($t9)
	nop
	ori     $t1, $t0, 0x0002
	sw      $t1, 0x000C($t9)
.L8018E358:
	lw      $v0, 0x0074($sp)
	b       .L8018E36C
	nop
	b       .L8018E36C
	nop
.L8018E36C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

.globl face_stdio_8018E37C
face_stdio_8018E37C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0034($sp)
	nop
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x003C($sp)
	lw      $t9, 0x002C($sp)
	lw      $t8, 0x0004($t7)
	lw      $t1, 0x0050($t7)
	addu    $t0, $t8, $t9
	sltu    $at, $t1, $t0
	beqz    $at, .L8018E3E0
	nop
	lw      $t2, 0x003C($sp)
	nop
	lw      $t3, 0x0050($t2)
	lw      $t4, 0x0004($t2)
	nop
	subu    $t5, $t3, $t4
	sw      $t5, 0x002C($sp)
.L8018E3E0:
	lw      $t6, 0x002C($sp)
	nop
	bnez    $t6, .L8018E404
	nop
	lw      $a0, 0x003C($sp)
	jal     face_stdio_8018E14C
	nop
	b       .L8018E498
	li      $v0, -0x0001
.L8018E404:
	lw      $t8, 0x002C($sp)
	nop
	sw      $t8, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	nop
	move    $s0, $t9
	addiu   $t7, $t9, -0x0001
	beqz    $s0, .L8018E484
	sw      $t7, 0x0028($sp)
.L8018E428:
	lw      $t0, 0x003C($sp)
	lw      $t5, 0x0030($sp)
	lw      $t1, 0x0004($t0)
	lw      $t2, 0x0008($t0)
	nop
	addu    $t3, $t1, $t2
	lb      $t4, 0x0000($t3)
	nop
	sb      $t4, 0x0000($t5)
	lw      $t6, 0x0030($sp)
	lw      $t9, 0x003C($sp)
	addiu   $t8, $t6, 0x0001
	sw      $t8, 0x0030($sp)
	lw      $t7, 0x0004($t9)
	nop
	addiu   $t0, $t7, 0x0001
	sw      $t0, 0x0004($t9)
	lw      $t1, 0x0028($sp)
	nop
	move    $s0, $t1
	addiu   $t2, $t1, -0x0001
	bnez    $s0, .L8018E428
	sw      $t2, 0x0028($sp)
.L8018E484:
	lw      $v0, 0x002C($sp)
	b       .L8018E498
	nop
	b       .L8018E498
	nop
.L8018E498:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_stdio_8018E4A8
face_stdio_8018E4A8:
	sw      $a0, 0x0000($sp)
	b       .L8018E4BC
	nop
	b       .L8018E4BC
	nop
.L8018E4BC:
	jr      $ra
	nop

.globl face_stdio_8018E4C4
face_stdio_8018E4C4:
	lw      $v0, 0x0050($a0)
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_stdio_8018E4E0:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	xori    $v0, $a0, 0x000D
	sltiu   $v0, $v0, 0x0001
	bnez    $v0, .L8018E500
	nop
	xori    $v0, $a0, 0x000A
	sltiu   $v0, $v0, 0x0001
.L8018E500:
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_stdio_8018E518
face_stdio_8018E518:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $0, 0x0020($sp)
.L8018E530:
	lw      $a3, 0x0030($sp)
	addiu   $a0, $sp, 0x0027
	li      $a1, 0x0001
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	li      $at, -0x0001
	bne     $v0, $at, .L8018E558
	nop
	b       .L8018E56C
	nop
.L8018E558:
	lb      $a0, 0x0027($sp)
	jal     face_stdio_8018E4E0
	nop
	bnez    $v0, .L8018E530
	nop
.L8018E56C:
	lb      $a0, 0x0027($sp)
	jal     face_stdio_8018E4E0
	nop
	bnez    $v0, .L8018E618
	nop
.L8018E580:
	lb      $t6, 0x0027($sp)
	li      $at, -0x0001
	bne     $t6, $at, .L8018E598
	nop
	b       .L8018E618
	nop
.L8018E598:
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x002C($sp)
	nop
	sltu    $at, $t8, $t7
	beqz    $at, .L8018E5B8
	nop
	b       .L8018E618
	nop
.L8018E5B8:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0020($sp)
	lb      $t9, 0x0027($sp)
	addu    $t2, $t0, $t1
	sb      $t9, 0x0000($t2)
	lw      $t3, 0x0020($sp)
	nop
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0020($sp)
	lw      $a3, 0x0030($sp)
	addiu   $a0, $sp, 0x0027
	li      $a1, 0x0001
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	li      $at, -0x0001
	bne     $v0, $at, .L8018E604
	nop
	b       .L8018E618
	nop
.L8018E604:
	lb      $a0, 0x0027($sp)
	jal     face_stdio_8018E4E0
	nop
	beqz    $v0, .L8018E580
	nop
.L8018E618:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	nop
	addu    $t7, $t5, $t6
	sb      $0, 0x0000($t7)
	lw      $t8, 0x0020($sp)
	nop
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x0020($sp)
	lw      $v0, 0x0020($sp)
	b       .L8018E650
	nop
	b       .L8018E650
	nop
.L8018E650:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.data
.align 4

.globl _face_stdio_data
_face_stdio_data:
.incbin "src/face/stdio.data.bin"

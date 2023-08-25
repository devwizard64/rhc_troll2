.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_mem_80177820:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x000C($a0)
	nop
	beqz    $t6, .L80177844
	nop
	lw      $t7, 0x0010($a0)
	lw      $t8, 0x000C($a0)
	nop
	sw      $t7, 0x0010($t8)
.L80177844:
	lw      $t9, 0x0010($a0)
	nop
	beqz    $t9, .L80177864
	nop
	lw      $t0, 0x000C($a0)
	lw      $t1, 0x0010($a0)
	nop
	sw      $t0, 0x000C($t1)
.L80177864:
	lbu     $a1, 0x0008($a0)
	li      $at, 0x0001
	beq     $a1, $at, .L80177888
	nop
	li      $at, 0x0002
	beq     $a1, $at, .L801778AC
	nop
	b       .L801778D0
	nop
.L80177888:
	lw      $t2, 0x0010($a0)
	nop
	bnez    $t2, .L801778A4
	nop
	lw      $t3, 0x000C($a0)
	lui     $at, %hi(_face_bss+0x1F0)
	sw      $t3, %lo(_face_bss+0x1F0)($at)
.L801778A4:
	b       .L801778D0
	nop
.L801778AC:
	lw      $t4, 0x0010($a0)
	nop
	bnez    $t4, .L801778C8
	nop
	lw      $t5, 0x000C($a0)
	lui     $at, %hi(_face_bss+0x1F4)
	sw      $t5, %lo(_face_bss+0x1F4)($at)
.L801778C8:
	b       .L801778D0
	nop
.L801778D0:
	lui     $t6, %hi(_face_bss+0x1F8)
	lw      $t6, %lo(_face_bss+0x1F8)($t6)
	nop
	sw      $t6, 0x000C($a0)
	lw      $t7, 0x000C($a0)
	nop
	beqz    $t7, .L80177900
	nop
	lui     $t8, %hi(_face_bss+0x1F8)
	lw      $t8, %lo(_face_bss+0x1F8)($t8)
	nop
	sw      $a0, 0x0010($t8)
.L80177900:
	lui     $at, %hi(_face_bss+0x1F8)
	sw      $a0, %lo(_face_bss+0x1F8)($at)
	sw      $0, 0x0010($a0)
	sw      $0, 0x0000($a0)
	sw      $0, 0x0004($a0)
	b       .L8017791C
	nop
.L8017791C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_mem_80177924:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x0000($t6)
	nop
	sw      $t7, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	nop
	lw      $t9, 0x0004($t8)
	nop
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0028($sp)
	nop
	lbu     $t1, 0x0009($t0)
	nop
	sb      $t1, 0x001F($sp)
	lw      $a0, 0x0028($sp)
	jal     face_mem_80177820
	nop
	lbu     $a1, 0x001F($sp)
	jal     MakeMemBlock
	li      $a0, 0x0001
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0024($sp)
	nop
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x0018($sp)
	lw      $t5, 0x0024($sp)
	nop
	sw      $t4, 0x0004($t5)
	lbu     $t6, 0x001F($sp)
	lw      $t7, 0x0024($sp)
	nop
	sb      $t6, 0x0009($t7)
	lw      $v0, 0x0024($sp)
	b       .L801779CC
	nop
	b       .L801779CC
	nop
.L801779CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

MakeMemBlock:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_bss+0x1F8)
	lw      $t6, %lo(_face_bss+0x1F8)($t6)
	nop
	bnez    $t6, .L80177A54
	nop
	jal     gd_allocblock
	li      $a0, 0x0014
	lui     $at, %hi(_face_bss+0x1F8)
	sw      $v0, %lo(_face_bss+0x1F8)($at)
	lui     $t7, %hi(_face_bss+0x1F8)
	lw      $t7, %lo(_face_bss+0x1F8)($t7)
	nop
	bnez    $t7, .L80177A34
	nop
	la.u    $a0, str_face_mem_801B5500
	jal     face_stdio_8018D298
	la.l    $a0, str_face_mem_801B5500
.L80177A34:
	lui     $t8, %hi(_face_bss+0x1F8)
	lw      $t8, %lo(_face_bss+0x1F8)($t8)
	nop
	sw      $0, 0x000C($t8)
	lui     $t9, %hi(_face_bss+0x1F8)
	lw      $t9, %lo(_face_bss+0x1F8)($t9)
	nop
	sw      $0, 0x0010($t9)
.L80177A54:
	lui     $t0, %hi(_face_bss+0x1F8)
	lw      $t0, %lo(_face_bss+0x1F8)($t0)
	nop
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	lui     $at, %hi(_face_bss+0x1F8)
	lw      $t2, 0x000C($t1)
	nop
	beqz    $t2, .L80177A90
	sw      $t2, %lo(_face_bss+0x1F8)($at)
	lw      $t3, 0x0024($sp)
	nop
	lw      $t4, 0x000C($t3)
	nop
	sw      $0, 0x0010($t4)
.L80177A90:
	lw      $s0, 0x0028($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L80177AB4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80177B08
	nop
	b       .L80177B5C
	nop
.L80177AB4:
	lui     $t5, %hi(_face_bss+0x1F0)
	lw      $t5, %lo(_face_bss+0x1F0)($t5)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x000C($t6)
	lw      $t7, 0x0024($sp)
	nop
	lw      $t8, 0x000C($t7)
	nop
	beqz    $t8, .L80177AF4
	nop
	lui     $t0, %hi(_face_bss+0x1F0)
	lw      $t0, %lo(_face_bss+0x1F0)($t0)
	lw      $t9, 0x0024($sp)
	nop
	sw      $t9, 0x0010($t0)
.L80177AF4:
	lw      $t1, 0x0024($sp)
	lui     $at, %hi(_face_bss+0x1F0)
	sw      $t1, %lo(_face_bss+0x1F0)($at)
	b       .L80177B68
	nop
.L80177B08:
	lui     $t2, %hi(_face_bss+0x1F4)
	lw      $t2, %lo(_face_bss+0x1F4)($t2)
	lw      $t3, 0x0024($sp)
	nop
	sw      $t2, 0x000C($t3)
	lw      $t4, 0x0024($sp)
	nop
	lw      $t5, 0x000C($t4)
	nop
	beqz    $t5, .L80177B48
	nop
	lui     $t7, %hi(_face_bss+0x1F4)
	lw      $t7, %lo(_face_bss+0x1F4)($t7)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t6, 0x0010($t7)
.L80177B48:
	lw      $t8, 0x0024($sp)
	lui     $at, %hi(_face_bss+0x1F4)
	sw      $t8, %lo(_face_bss+0x1F4)($at)
	b       .L80177B68
	nop
.L80177B5C:
	la.u    $a0, str_face_mem_801B5524
	jal     face_stdio_8018D298
	la.l    $a0, str_face_mem_801B5524
.L80177B68:
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x0010($t9)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	nop
	sb      $t0, 0x0008($t1)
	lbu     $t2, 0x002F($sp)
	lw      $t3, 0x0024($sp)
	nop
	sb      $t2, 0x0009($t3)
	lw      $v0, 0x0024($sp)
	b       .L80177BA8
	nop
	b       .L80177BA8
	nop
.L80177BA8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl Free
Free:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lw      $s1, 0x0030($sp)
	nop
	lui     $s0, %hi(_face_bss+0x1F4)
	lw      $s0, %lo(_face_bss+0x1F4)($s0)
	nop
	beqz    $s0, .L80177C28
	nop
.L80177BE8:
	lw      $t6, 0x0000($s0)
	nop
	bne     $t6, $s1, .L80177C18
	nop
	lw      $t7, 0x0004($s0)
	nop
	sw      $t7, 0x0028($sp)
	jal     face_mem_80177924
	move    $a0, $s0
	lw      $v0, 0x0028($sp)
	b       .L80177C44
	nop
.L80177C18:
	lw      $s0, 0x000C($s0)
	nop
	bnez    $s0, .L80177BE8
	nop
.L80177C28:
	la.u    $a0, str_face_mem_801B553C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_mem_801B553C
	b       .L80177C44
	move    $v0, $0
	b       .L80177C44
	nop
.L80177C44:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_mem_80177C58
face_mem_80177C58:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $0, 0x0024($sp)
	lbu     $a1, 0x002F($sp)
	jal     MakeMemBlock
	li      $a0, 0x0002
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(_face_bss+0x1F0)
	lw      $t6, %lo(_face_bss+0x1F0)($t6)
	nop
	sw      $t6, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	nop
	beqz    $t7, .L80177D7C
	nop
.L80177C9C:
	lw      $t8, 0x0020($sp)
	lbu     $t0, 0x002F($sp)
	lbu     $t9, 0x0009($t8)
	nop
	and     $t1, $t9, $t0
	beqz    $t1, .L80177D58
	nop
	lw      $t2, 0x0020($sp)
	lw      $t4, 0x0028($sp)
	lw      $t3, 0x0004($t2)
	nop
	bne     $t3, $t4, .L80177CEC
	nop
	lw      $t5, 0x0020($sp)
	nop
	sw      $t5, 0x0024($sp)
	b       .L80177D7C
	nop
	b       .L80177D58
	nop
.L80177CEC:
	lw      $t6, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	nop
	sltu    $at, $t8, $t7
	beqz    $at, .L80177D58
	nop
	lw      $t9, 0x0024($sp)
	nop
	beqz    $t9, .L80177D4C
	nop
	lw      $t0, 0x0020($sp)
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x0004($t0)
	lw      $t3, 0x0004($t2)
	nop
	sltu    $at, $t1, $t3
	beqz    $at, .L80177D44
	nop
	lw      $t4, 0x0020($sp)
	nop
	sw      $t4, 0x0024($sp)
.L80177D44:
	b       .L80177D58
	nop
.L80177D4C:
	lw      $t5, 0x0020($sp)
	nop
	sw      $t5, 0x0024($sp)
.L80177D58:
	lw      $t6, 0x0020($sp)
	nop
	lw      $t7, 0x000C($t6)
	nop
	sw      $t7, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	nop
	bnez    $t8, .L80177C9C
	nop
.L80177D7C:
	lw      $t9, 0x0024($sp)
	nop
	bnez    $t9, .L80177D94
	nop
	b       .L80177E6C
	move    $v0, $0
.L80177D94:
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0004($t0)
	nop
	sltu    $at, $t1, $t2
	beqz    $at, .L80177E08
	nop
	lw      $t3, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	lw      $t4, 0x0000($t3)
	nop
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($sp)
	nop
	sw      $t6, 0x0004($t7)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lw      $t9, 0x0004($t8)
	nop
	subu    $t2, $t9, $t0
	sw      $t2, 0x0004($t8)
	lw      $t1, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lw      $t3, 0x0000($t1)
	nop
	addu    $t5, $t3, $t4
	b       .L80177E50
	sw      $t5, 0x0000($t1)
.L80177E08:
	lw      $t6, 0x0024($sp)
	lw      $t9, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	nop
	bne     $t7, $t9, .L80177E50
	nop
	lw      $t0, 0x0024($sp)
	lw      $t8, 0x001C($sp)
	lw      $t2, 0x0000($t0)
	nop
	sw      $t2, 0x0000($t8)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x001C($sp)
	nop
	sw      $t3, 0x0004($t4)
	lw      $a0, 0x0024($sp)
	jal     face_mem_80177820
	nop
.L80177E50:
	lw      $t5, 0x001C($sp)
	nop
	lw      $v0, 0x0000($t5)
	b       .L80177E6C
	nop
	b       .L80177E6C
	nop
.L80177E6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_mem_80177E7C
face_mem_80177E7C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	li      $at, -0x0008
	addiu   $t7, $t6, -0x0008
	and     $t8, $t7, $at
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0024($sp)
	li      $at, -0x0008
	addiu   $t0, $t9, 0x0008
	and     $t1, $t0, $at
	sw      $t1, 0x0024($sp)
	lbu     $a1, 0x002B($sp)
	jal     MakeMemBlock
	li      $a0, 0x0001
	sw      $v0, 0x001C($sp)
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x001C($sp)
	nop
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x001C($sp)
	nop
	sw      $t4, 0x0004($t5)
	lw      $v0, 0x001C($sp)
	b       .L80177EFC
	nop
	b       .L80177EFC
	nop
.L80177EFC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_mem_80177F0C
face_mem_80177F0C:
	lui     $at, %hi(_face_bss+0x1F0)
	sw      $0, %lo(_face_bss+0x1F0)($at)
	lui     $at, %hi(_face_bss+0x1F4)
	sw      $0, %lo(_face_bss+0x1F4)($at)
	lui     $at, %hi(_face_bss+0x1F8)
	sw      $0, %lo(_face_bss+0x1F8)($at)
	jr      $ra
	nop
	jr      $ra
	nop

face_mem_80177F34:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $t6, 0x0028($sp)
	nop
	beqz    $t6, .L80178030
	nop
.L80177F60:
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	lbu     $t8, 0x0009($t7)
	nop
	and     $t0, $t8, $t9
	beqz    $t0, .L8017800C
	nop
	lw      $t1, 0x0024($sp)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0024($sp)
	lw      $t3, 0x002C($sp)
	nop
	beqz    $t3, .L80177FF4
	nop
	lw      $t4, 0x0028($sp)
	la.u    $a0, str_face_mem_801B555C
	lw      $t5, 0x0004($t4)
	la.l    $a0, str_face_mem_801B555C
	mtc1    $t5, $f4
	bgez    $t5, .L80177FC8
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L80177FC8:
	li      $at, 0x40900000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f6
	nop
	div.d   $f18, $f10, $f16
	sw      $t5, 0x0010($sp)
	mfc1    $a3, $f18
	mfc1    $a2, $f19
	jal     gd_printf
	nop
.L80177FF4:
	lw      $t7, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t8, 0x0004($t7)
	nop
	addu    $t9, $t6, $t8
	sw      $t9, 0x0020($sp)
.L8017800C:
	lw      $t0, 0x0028($sp)
	nop
	lw      $t1, 0x000C($t0)
	nop
	sw      $t1, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	nop
	bnez    $t2, .L80177F60
	nop
.L80178030:
	lw      $t3, 0x0020($sp)
	la.u    $a0, str_face_mem_801B5574
	mtc1    $t3, $f4
	la.l    $a0, str_face_mem_801B5574
	bgez    $t3, .L80178058
	cvt.s.w $f8, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f6
	nop
	add.s   $f8, $f8, $f6
.L80178058:
	li      $at, 0x40900000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	nop
	div.d   $f18, $f10, $f16
	lw      $t4, 0x0024($sp)
	sw      $t3, 0x0010($sp)
	sw      $t4, 0x0014($sp)
	mfc1    $a3, $f18
	mfc1    $a2, $f19
	jal     gd_printf
	nop
	lw      $v0, 0x0024($sp)
	b       .L801780A0
	nop
	b       .L801780A0
	nop
.L801780A0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_mem_801780B0
face_mem_801780B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_mem_801B559C
	jal     gd_printf
	la.l    $a0, str_face_mem_801B559C
	lui     $t6, %hi(_face_bss+0x1F4)
	lw      $t6, %lo(_face_bss+0x1F4)($t6)
	nop
	sw      $t6, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	jal     face_mem_80177F34
	li      $a2, 0x00F0
	la.u    $a0, str_face_mem_801B55B0
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55B0
	la.u    $a0, str_face_mem_801B55B4
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55B4
	lui     $t7, %hi(_face_bss+0x1F0)
	lw      $t7, %lo(_face_bss+0x1F0)($t7)
	nop
	sw      $t7, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	jal     face_mem_80177F34
	li      $a2, 0x00F0
	la.u    $a0, str_face_mem_801B55C8
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55C8
	la.u    $a0, str_face_mem_801B55CC
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55CC
	lui     $t8, %hi(_face_bss+0x1F4)
	lw      $t8, %lo(_face_bss+0x1F4)($t8)
	nop
	sw      $t8, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	jal     face_mem_80177F34
	li      $a2, 0x000F
	la.u    $a0, str_face_mem_801B55E0
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55E0
	la.u    $a0, str_face_mem_801B55E4
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55E4
	lui     $t9, %hi(_face_bss+0x1F0)
	lw      $t9, %lo(_face_bss+0x1F0)($t9)
	nop
	sw      $t9, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	jal     face_mem_80177F34
	li      $a2, 0x000F
	la.u    $a0, str_face_mem_801B55F8
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55F8
	la.u    $a0, str_face_mem_801B55FC
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55FC
	lui     $t0, %hi(_face_bss+0x1F8)
	lw      $t0, %lo(_face_bss+0x1F8)($t0)
	nop
	sw      $t0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	jal     face_mem_80177F34
	li      $a2, 0x00FF
	b       .L801781CC
	nop
.L801781CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

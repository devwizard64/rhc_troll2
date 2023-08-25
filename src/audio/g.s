.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

/* void Na_g_8031E4F0(void) */
Na_g_8031E4F0:
	lui     $v1, %hi(_Na_bss+0x188)
	lw      $v1, %lo(_Na_bss+0x188)($v1)
	move    $v0, $0
	beqz    $v1, .L8031E518
	nop
	addiu   $v0, $v0, 0x0001
.L8031E508:
	sltu    $at, $v0, $v1
	bnezl   $at, .L8031E508
	addiu   $v0, $v0, 0x0001
	move    $v0, $0
.L8031E518:
	lui     $v1, %hi(_Na_bss+0x358)
	lw      $v1, %lo(_Na_bss+0x358)($v1)
	beqzl   $v1, .L8031E540
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v0, 0x0001
.L8031E52C:
	sltu    $at, $v0, $v1
	bnezl   $at, .L8031E52C
	addiu   $v0, $v0, 0x0001
	move    $v0, $0
	addiu   $v0, $v0, 0x0001
.L8031E540:
	slti    $at, $v0, 0x0028
	bnezl   $at, .L8031E540
	addiu   $v0, $v0, 0x0001
	move    $v0, $0
	li      $v1, 0x0028
	addiu   $v0, $v0, 0x0004
.L8031E558:
	bnel    $v0, $v1, .L8031E558
	addiu   $v0, $v0, 0x0004
	jr      $ra
	nop

/* void Na_g_8031E568(void) */
Na_g_8031E568:
	la.u    $t6, _Na_bss+0x5DE0
	la.l    $t6, _Na_bss+0x5DE0
	jr      $ra
	lw      $0, 0x0000($t6)

/* void Na_g_8031E578(int, int) */
Na_g_8031E578:
	bnez    $a1, .L8031E584
	sll     $t6, $a0, 2
	addiu   $a1, $a1, 0x0001
.L8031E584:
	mtc1    $a1, $f6
	addu    $t6, $t6, $a0
	la.u    $t7, _Na_bss+0x1878
	cvt.s.w $f8, $f6
	la.l    $t7, _Na_bss+0x1878
	sll     $t6, $t6, 6
	addu    $v0, $t6, $t7
	lwc1    $f4, 0x0018($v0)
	li      $t8, 0x0001
	sb      $t8, 0x0002($v0)
	div.s   $f10, $f4, $f8
	sh      $a1, 0x000E($v0)
	neg.s   $f16, $f10
	jr      $ra
	swc1    $f16, 0x001C($v0)

/* void Na_g_8031E5C0(int, int) */
Na_g_8031E5C0:
	beqz    $a1, .L8031E604
	sll     $t6, $a0, 2
	addu    $t6, $t6, $a0
	la.u    $t7, _Na_bss+0x1878
	la.l    $t7, _Na_bss+0x1878
	sll     $t6, $t6, 6
	addu    $v0, $t6, $t7
	lbu     $t8, 0x0002($v0)
	li      $at, 0x0001
	li      $t9, 0x0002
	beq     $t8, $at, .L8031E604
	nop
	mtc1    $0, $f0
	sb      $t9, 0x0002($v0)
	sh      $a1, 0x000E($v0)
	swc1    $f0, 0x0018($v0)
	swc1    $f0, 0x001C($v0)
.L8031E604:
	jr      $ra
	nop

/* void Na_g_8031E60C(int, int, u8) */
Na_g_8031E60C:
	sll     $t7, $a0, 2
	addu    $t7, $t7, $a0
	la.u    $t8, _Na_bss+0x1878
	la.l    $t8, _Na_bss+0x1878
	sll     $t7, $t7, 6
	addu    $v0, $t7, $t8
	lbu     $t9, 0x0002($v0)
	sw      $a2, 0x0008($sp)
	andi    $t6, $a2, 0x00FF
	li      $at, 0x0001
	beq     $t9, $at, .L8031E69C
	move    $a2, $t6
	mtc1    $a2, $f4
	li      $at, 0x40590000
	mtc1    $at, $f11
	cvt.s.w $f6, $f4
	mtc1    $0, $f10
	lwc1    $f2, 0x0018($v0)
	sh      $0, 0x000E($v0)
	cvt.d.s $f18, $f2
	cvt.d.s $f8, $f6
	swc1    $f2, 0x0020($v0)
	div.d   $f16, $f8, $f10
	mul.d   $f4, $f16, $f18
	bnez    $a1, .L8031E67C
	cvt.s.d $f0, $f4
	jr      $ra
	swc1    $f0, 0x0018($v0)
.L8031E67C:
	mtc1    $a1, $f8
	sub.s   $f6, $f0, $f2
	li      $t0, 0x0004
	sb      $t0, 0x0002($v0)
	cvt.s.w $f10, $f8
	sh      $a1, 0x000E($v0)
	div.s   $f16, $f6, $f10
	swc1    $f16, 0x001C($v0)
.L8031E69C:
	jr      $ra
	nop

/* void Na_g_8031E6A4(int, int) */
Na_g_8031E6A4:
	sll     $t6, $a0, 2
	addu    $t6, $t6, $a0
	la.u    $t7, _Na_bss+0x1878
	la.l    $t7, _Na_bss+0x1878
	sll     $t6, $t6, 6
	addu    $v0, $t6, $t7
	lbu     $t8, 0x0002($v0)
	li      $at, 0x0001
	beq     $t8, $at, .L8031E708
	nop
	bnez    $a1, .L8031E6E0
	sh      $0, 0x000E($v0)
	lwc1    $f4, 0x0020($v0)
	jr      $ra
	swc1    $f4, 0x0018($v0)
.L8031E6E0:
	mtc1    $a1, $f16
	lwc1    $f6, 0x0020($v0)
	lwc1    $f8, 0x0018($v0)
	cvt.s.w $f18, $f16
	li      $t9, 0x0002
	sb      $t9, 0x0002($v0)
	sh      $a1, 0x000E($v0)
	sub.s   $f10, $f6, $f8
	div.s   $f4, $f10, $f18
	swc1    $f4, 0x001C($v0)
.L8031E708:
	jr      $ra
	nop

/* void Na_g_8031E710(int, int, u8) */
Na_g_8031E710:
	sll     $t7, $a0, 2
	addu    $t7, $t7, $a0
	la.u    $t8, _Na_bss+0x1878
	la.l    $t8, _Na_bss+0x1878
	sll     $t7, $t7, 6
	addu    $v0, $t7, $t8
	lbu     $t9, 0x0002($v0)
	sw      $a2, 0x0008($sp)
	andi    $t6, $a2, 0x00FF
	li      $at, 0x0001
	beq     $t9, $at, .L8031E7B0
	move    $a2, $t6
	bnez    $a1, .L8031E76C
	sh      $0, 0x000E($v0)
	mtc1    $a2, $f4
	lui     $at, %hi(Na_g_80339710)
	ldc1    $f10, %lo(Na_g_80339710)($at)
	cvt.s.w $f6, $f4
	cvt.d.s $f8, $f6
	div.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	jr      $ra
	swc1    $f18, 0x0018($v0)
.L8031E76C:
	mtc1    $a2, $f4
	lui     $at, %hi(Na_g_80339718)
	ldc1    $f10, %lo(Na_g_80339718)($at)
	cvt.s.w $f6, $f4
	lwc1    $f4, 0x0018($v0)
	li      $t0, 0x0004
	sb      $t0, 0x0002($v0)
	sh      $a1, 0x000E($v0)
	cvt.d.s $f8, $f6
	div.d   $f16, $f8, $f10
	mtc1    $a1, $f8
	nop
	cvt.s.w $f10, $f8
	cvt.s.d $f18, $f16
	sub.s   $f6, $f18, $f4
	div.s   $f16, $f6, $f10
	swc1    $f16, 0x001C($v0)
.L8031E7B0:
	jr      $ra
	nop

/* SC_TASK *Na_main(void) */
.globl Na_main
Na_main:
	la.u    $a0, _Na_bss+0x5DE0
	la.l    $a0, _Na_bss+0x5DE0
	lw      $v0, 0x0000($a0)
	addiu   $sp, $sp, -0x0048
	la.u    $t7, Na_data_80335004
	addiu   $t6, $v0, 0x0001
	sw      $ra, 0x0014($sp)
	sw      $t6, 0x0000($a0)
	la.l    $t7, Na_data_80335004
	lw      $t8, 0x0000($t7)
	li.u    $at, 0x76557364
	li.l    $at, 0x76557364
	beq     $t8, $at, .L8031E7F8
	li      $v0, 0x0003
	b       .L8031EAF0
	move    $v0, $0
.L8031E7F8:
	la.u    $a3, _Na_bss+0x5DEC
	la.l    $a3, _Na_bss+0x5DEC
	lw      $t5, 0x0000($a3)
	la.u    $v1, _Na_bss+0x5DE8
	la.l    $v1, _Na_bss+0x5DE8
	addiu   $t6, $t5, 0x0001
	div     $0, $t6, $v0
	lw      $t9, 0x0000($v1)
	mfhi    $t8
	move    $t7, $t6
	xori    $t4, $t9, 0x0001
	sw      $t4, 0x0000($v1)
	addiu   $t4, $t8, 0x0001
	div     $0, $t4, $v0
	sw      $t6, 0x0000($a3)
	bnez    $v0, .L8031E840
	nop
	break   7
.L8031E840:
	li      $at, -0x0001
	bne     $v0, $at, .L8031E858
	li      $at, 0x80000000
	bne     $t7, $at, .L8031E858
	nop
	break   6
.L8031E858:
	mfhi    $a2
	sw      $t8, 0x0000($a3)
	move    $t9, $t8
	bnez    $v0, .L8031E870
	nop
	break   7
.L8031E870:
	li      $at, -0x0001
	bne     $v0, $at, .L8031E888
	li      $at, 0x80000000
	bne     $t4, $at, .L8031E888
	nop
	break   6
.L8031E888:
	sw      $a2, 0x003C($sp)
	jal     osAiGetLength
	nop
	lw      $a2, 0x003C($sp)
	lui     $v1, %hi(_Na_bss+0x5EAC)
	la.u    $a3, _Na_bss+0x5DEC
	sll     $t5, $a2, 1
	addu    $v1, $v1, $t5
	lh      $v1, %lo(_Na_bss+0x5EAC)($v1)
	la.l    $a3, _Na_bss+0x5DEC
	srl     $t2, $v0, 2
	beqz    $v1, .L8031E8E0
	sll     $t6, $a2, 2
	lui     $a0, %hi(_Na_bss+0x5EA0)
	addu    $a0, $a0, $t6
	lw      $a0, %lo(_Na_bss+0x5EA0)($a0)
	sll     $a1, $v1, 2
	jal     osAiSetNextBuffer
	sw      $t2, 0x0044($sp)
	la.u    $a3, _Na_bss+0x5DEC
	la.l    $a3, _Na_bss+0x5DEC
	lw      $t2, 0x0044($sp)
.L8031E8E0:
	la.u    $t3, _Na_bss+0x5DE4
	la.l    $t3, _Na_bss+0x5DE4
	lw      $v0, 0x0000($t3)
	sw      $0, 0x0000($t3)
	lui     $v0, %hi(_Na_bss+0x5DE8)
	lw      $v0, %lo(_Na_bss+0x5DE8)($v0)
	la.u    $t8, _Na_bss+0x5E00
	la.u    $t1, _Na_bss+0x5DFC
	sll     $t7, $v0, 2
	addu    $t7, $t7, $v0
	sll     $t7, $t7, 4
	la.l    $t8, _Na_bss+0x5E00
	la.l    $t1, _Na_bss+0x5DFC
	addu    $t9, $t7, $t8
	lui     $t5, %hi(_Na_bss+0x5DF0)
	sll     $t4, $v0, 2
	sw      $t9, 0x0000($t1)
	addu    $t5, $t5, $t4
	lw      $t5, %lo(_Na_bss+0x5DF0)($t5)
	lui     $at, %hi(_Na_bss+0x5DF8)
	lui     $a0, %hi(_Na_bss+0x5DD4)
	sw      $t5, %lo(_Na_bss+0x5DF8)($at)
	lw      $a2, 0x0000($a3)
	lw      $a0, %lo(_Na_bss+0x5DD4)($a0)
	lui     $t7, %hi(_Na_bss+0x5EA0)
	sll     $t6, $a2, 2
	addu    $t7, $t7, $t6
	lw      $t7, %lo(_Na_bss+0x5EA0)($t7)
	subu    $t4, $a0, $t2
	lui     $at, %hi(_Na_g_bss+0x00)
	addiu   $t5, $t4, 0x0040
	la.u    $t9, _Na_bss+0x5EAC
	la.l    $t9, _Na_bss+0x5EAC
	andi    $t6, $t5, 0xFFF0
	sll     $t8, $a2, 1
	sw      $t7, %lo(_Na_g_bss+0x00)($at)
	addiu   $t7, $t6, 0x0010
	addu    $t0, $t8, $t9
	sh      $t7, 0x0000($t0)
	lui     $a1, %hi(_Na_bss+0x5DD8)
	lw      $a1, %lo(_Na_bss+0x5DD8)($a1)
	lh      $v1, 0x0000($t0)
	lui     $t8, %hi(Na_g_80332E54)
	addiu   $v0, $a0, 0x0010
	slt     $at, $v1, $a1
	beqzl   $at, .L8031E9A8
	slt     $at, $v0, $v1
	sh      $a1, 0x0000($t0)
	lh      $v1, 0x0000($t0)
	slt     $at, $v0, $v1
.L8031E9A8:
	beqz    $at, .L8031E9B4
	nop
	sh      $v0, 0x0000($t0)
.L8031E9B4:
	lw      $t8, %lo(Na_g_80332E54)($t8)
	beqz    $t8, .L8031E9D4
	nop
	jal     Na_g_8031FDAC
	sw      $t0, 0x0028($sp)
	lui     $at, %hi(Na_g_80332E54)
	lw      $t0, 0x0028($sp)
	sw      $0, %lo(Na_g_80332E54)($at)
.L8031E9D4:
	lui     $a0, %hi(_Na_bss+0x5DF8)
	lui     $a2, %hi(_Na_g_bss+0x00)
	lw      $a2, %lo(_Na_g_bss+0x00)($a2)
	lw      $a0, %lo(_Na_bss+0x5DF8)($a0)
	addiu   $a1, $sp, 0x0040
	jal     Na_a_80314DE4
	lh      $a3, 0x0000($t0)
	la.u    $t0, _Na_bss+0x5DE0
	lui     $at, %hi(_Na_bss+0x5DF8)
	sw      $v0, %lo(_Na_bss+0x5DF8)($at)
	la.l    $t0, _Na_bss+0x5DE0
	la.u    $a0, _Na_bss+0x5F18
	lw      $t9, 0x0000($t0)
	la.l    $a0, _Na_bss+0x5F18
	lw      $t4, 0x0000($a0)
	lw      $t6, 0x0000($t0)
	la.u    $t1, _Na_bss+0x5DFC
	addu    $t5, $t9, $t4
	multu   $t5, $t6
	la.l    $t1, _Na_bss+0x5DFC
	lw      $t8, 0x0000($t1)
	lui     $a2, %hi(_Na_bss+0x5DE8)
	la.u    $a1, rspbootTextStart
	la.u    $t5, rspbootTextEnd
	la.l    $a1, rspbootTextStart
	la.u    $a3, aspMainDataStart
	li      $t4, 0x0002
	la.l    $t5, rspbootTextEnd
	mflo    $t7
	sw      $t7, 0x0000($a0)
	lw      $a2, %lo(_Na_bss+0x5DE8)($a2)
	sw      $0, 0x0040($t8)
	lw      $t9, 0x0000($t1)
	la.l    $a3, aspMainDataStart
	subu    $t6, $t5, $a1
	sw      $0, 0x0044($t9)
	lw      $v1, 0x0000($t1)
	la.u    $t9, aspMainDataEnd
	la.u    $t7, aspMainTextStart
	la.l    $t9, aspMainDataEnd
	sw      $t4, 0x0000($v1)
	la.l    $t7, aspMainTextStart
	li      $t8, 0x0800
	subu    $t4, $t9, $a3
	sra     $t5, $t4, 3
	sw      $t6, 0x000C($v1)
	sw      $t7, 0x0010($v1)
	sw      $t8, 0x0014($v1)
	sll     $t6, $t5, 3
	lui     $t8, %hi(_Na_bss+0x5DF0)
	sll     $t7, $a2, 2
	addu    $t8, $t8, $t7
	sw      $0, 0x0004($v1)
	sw      $a1, 0x0008($v1)
	sw      $a3, 0x0018($v1)
	sw      $t6, 0x001C($v1)
	sw      $0, 0x0020($v1)
	sw      $0, 0x0024($v1)
	sw      $0, 0x0028($v1)
	sw      $0, 0x002C($v1)
	lw      $t8, %lo(_Na_bss+0x5DF0)($t8)
	sw      $t8, 0x0030($v1)
	lw      $t9, 0x0040($sp)
	sw      $0, 0x0038($v1)
	sw      $0, 0x003C($v1)
	sll     $t4, $t9, 3
	jal     Na_c_803181EC
	sw      $t4, 0x0034($v1)
	la.u    $t1, _Na_bss+0x5DFC
	la.l    $t1, _Na_bss+0x5DFC
	lw      $v0, 0x0000($t1)
.L8031EAF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

/* void Na_SE_play(NA_SE se, f32 *pos) */
.globl Na_SE_play
Na_SE_play:
	la.u    $a2, Na_g_80332F44
	la.l    $a2, Na_g_80332F44
	lbu     $v0, 0x0000($a2)
	la.u    $t7, _Na_g_bss+0x08
	la.l    $t7, _Na_g_bss+0x08
	sll     $t6, $v0, 3
	addu    $v1, $t6, $t7
	addiu   $t8, $v0, 0x0001
	sw      $a0, 0x0000($v1)
	sw      $a1, 0x0004($v1)
	jr      $ra
	sb      $t8, 0x0000($a2)

/* void Na_g_8031EB30(NA_SE, f32 *) */
Na_g_8031EB30:
	addiu   $sp, $sp, -0x0048
	sw      $s6, 0x0030($sp)
	li      $at, 0x00FF0000
	and     $s6, $a0, $at
	sw      $s5, 0x002C($sp)
	li      $at, 0xF0000000
	and     $s5, $a0, $at
	srl     $t6, $s5, 28
	andi    $t7, $t6, 0x00FF
	lui     $t0, %hi(Na_g_803331E4)
	addu    $t0, $t0, $t7
	lbu     $t0, %lo(Na_g_803331E4)($t0)
	srl     $t8, $s6, 16
	andi    $t9, $t8, 0x00FF
	sw      $s8, 0x0038($sp)
	sw      $s3, 0x0024($sp)
	sw      $s2, 0x0020($sp)
	slt     $at, $t9, $t0
	move    $s2, $a0
	move    $s8, $a1
	sw      $ra, 0x003C($sp)
	sw      $s7, 0x0034($sp)
	sw      $s4, 0x0028($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	move    $s3, $0
	beqz    $at, .L8031EDBC
	move    $s5, $t7
	lui     $t1, %hi(Na_IO_status)
	addu    $t1, $t1, $t7
	lbu     $t1, %lo(Na_IO_status)($t1)
	sll     $t2, $t7, 3
	addu    $t2, $t2, $t7
	bnez    $t1, .L8031EDBC
	sll     $t2, $t2, 2
	subu    $t2, $t2, $t7
	la.u    $t3, _Na_g_bss+0xB28
	la.l    $t3, _Na_g_bss+0xB28
	sll     $t2, $t2, 5
	addu    $t4, $t2, $t3
	lbu     $a1, 0x001B($t4)
	li      $a2, 0x00FF
	beq     $a2, $a1, .L8031EC88
	move    $v0, $a1
	beqz    $a1, .L8031EC88
	sll     $t5, $t7, 3
	addu    $t5, $t5, $t7
	sll     $t5, $t5, 2
	subu    $t5, $t5, $t7
	sll     $t5, $t5, 5
	addu    $s4, $t5, $t3
	li      $s7, 0x001C
.L8031EC00:
	multu   $a1, $s7
	mflo    $t6
	addu    $s0, $s4, $t6
	lw      $t7, 0x0000($s0)
	bnel    $s8, $t7, .L8031EC6C
	lbu     $a1, 0x001B($s0)
	lw      $v0, 0x0014($s0)
	andi    $t8, $s2, 0xFF00
	andi    $t9, $v0, 0xFF00
	sltu    $at, $t8, $t9
	bnez    $at, .L8031EC60
	andi    $t0, $v0, 0x0080
	bnez    $t0, .L8031EC40
	li      $at, 0x00FF0000
	and     $t1, $v0, $at
	beq     $s6, $t1, .L8031EC58
.L8031EC40:
	andi    $a0, $s5, 0x00FF
	jal     Na_g_8031EF6C
	andi    $s1, $s2, 0x000F
	li      $a2, 0x00FF
	sw      $s2, 0x0014($s0)
	sb      $s1, 0x0018($s0)
.L8031EC58:
	li      $t2, 0x000A
	sb      $t2, 0x0019($s0)
.L8031EC60:
	b       .L8031EC6C
	move    $a1, $0
	lbu     $a1, 0x001B($s0)
.L8031EC6C:
	addiu   $s3, $s3, 0x0001
	andi    $t4, $s3, 0x00FF
	move    $s3, $t4
	beq     $a2, $a1, .L8031EC88
	move    $v0, $a1
	bnez    $a1, .L8031EC00
	nop
.L8031EC88:
	sll     $t5, $s5, 3
	addu    $t5, $t5, $s5
	sll     $t5, $t5, 2
	subu    $t5, $t5, $s5
	la.u    $t3, _Na_g_bss+0xB28
	la.l    $t3, _Na_g_bss+0xB28
	sll     $t5, $t5, 5
	li      $s7, 0x001C
	bnez    $s3, .L8031ECC0
	addu    $s4, $t5, $t3
	lui     $at, %hi(_Na_g_bss+0x36E8)
	addu    $at, $at, $s5
	li      $t6, 0x0020
	sb      $t6, %lo(_Na_g_bss+0x36E8)($at)
.L8031ECC0:
	la.u    $t7, Na_g_803331C0
	la.l    $t7, Na_g_803331C0
	addu    $s3, $s5, $t7
	lbu     $v1, 0x0000($s3)
	multu   $v1, $s7
	mflo    $t8
	addu    $t9, $s4, $t8
	lbu     $t0, 0x001B($t9)
	beql    $a2, $t0, .L8031EDC0
	lw      $ra, 0x003C($sp)
	beqzl   $v0, .L8031EDC0
	lw      $ra, 0x003C($sp)
	lwc1    $f2, 0x0000($s8)
	lwc1    $f14, 0x0004($s8)
	lwc1    $f0, 0x0008($s8)
	mul.s   $f4, $f2, $f2
	sb      $v1, 0x0046($sp)
	andi    $s1, $s2, 0x000F
	mul.s   $f6, $f14, $f14
	add.s   $f8, $f4, $f6
	mul.s   $f10, $f0, $f0
	jal     sqrtf
	add.s   $f12, $f10, $f8
	lbu     $a1, 0x0046($sp)
	la.u    $t3, Na_g_803331B4
	la.l    $t3, Na_g_803331B4
	multu   $a1, $s7
	addu    $v0, $s5, $t3
	lbu     $a0, 0x0000($v0)
	lbu     $v1, 0x0000($s3)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	addiu   $t2, $s8, 0x0004
	addiu   $t4, $s8, 0x0008
	mul.s   $f18, $f0, $f16
	li      $t5, 0x000A
	mflo    $t1
	addu    $s0, $s4, $t1
	sw      $s8, 0x0000($s0)
	multu   $a0, $s7
	sw      $t2, 0x0004($s0)
	sw      $t4, 0x0008($s0)
	swc1    $f18, 0x000C($s0)
	sw      $s2, 0x0014($s0)
	sb      $s1, 0x0018($s0)
	sb      $t5, 0x0019($s0)
	sb      $a0, 0x001A($s0)
	li      $a1, 0x00FF
	mflo    $t6
	addu    $t7, $s4, $t6
	sb      $v1, 0x001B($t7)
	multu   $v1, $s7
	sb      $v1, 0x0000($v0)
	mflo    $t8
	addu    $t9, $s4, $t8
	lbu     $t0, 0x001B($t9)
	andi    $t1, $t0, 0x00FF
	multu   $t1, $s7
	sb      $t0, 0x0000($s3)
	mflo    $t2
	addu    $t4, $s4, $t2
	sb      $a1, 0x001A($t4)
	sb      $a1, 0x001B($s0)
.L8031EDBC:
	lw      $ra, 0x003C($sp)
.L8031EDC0:
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s4, 0x0028($sp)
	lw      $s5, 0x002C($sp)
	lw      $s6, 0x0030($sp)
	lw      $s7, 0x0034($sp)
	lw      $s8, 0x0038($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

/* void Na_g_8031EDEC(void) */
Na_g_8031EDEC:
	addiu   $sp, $sp, -0x0028
	sw      $s2, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	la.u    $s1, Na_g_80332F40
	la.u    $s2, Na_g_80332F44
	la.l    $s2, Na_g_80332F44
	la.l    $s1, Na_g_80332F40
	sw      $s0, 0x0014($sp)
	lbu     $s0, 0x0000($s1)
	lbu     $t6, 0x0000($s2)
	sw      $s3, 0x0020($sp)
	sw      $ra, 0x0024($sp)
	beq     $s0, $t6, .L8031EE54
	la.u    $s3, _Na_g_bss+0x08
	la.l    $s3, _Na_g_bss+0x08
.L8031EE28:
	sll     $t7, $s0, 3
	addu    $v0, $s3, $t7
	lw      $a0, 0x0000($v0)
	jal     Na_g_8031EB30
	lw      $a1, 0x0004($v0)
	lbu     $t8, 0x0000($s1)
	lbu     $t0, 0x0000($s2)
	addiu   $t9, $t8, 0x0001
	andi    $s0, $t9, 0x00FF
	bne     $s0, $t0, .L8031EE28
	sb      $t9, 0x0000($s1)
.L8031EE54:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

/* void Na_g_8031EE70(u8, u8) */
Na_g_8031EE70:
	la.u    $t8, Na_g_803331B4
	andi    $t6, $a0, 0x00FF
	la.l    $t8, Na_g_803331B4
	addu    $v0, $t6, $t8
	lbu     $t9, 0x0000($v0)
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	andi    $t7, $a1, 0x00FF
	move    $a1, $t7
	bne     $t7, $t9, .L8031EED8
	move    $a0, $t6
	li      $t1, 0x001C
	multu   $t7, $t1
	sll     $t2, $t6, 3
	addu    $t2, $t2, $t6
	sll     $t2, $t2, 2
	subu    $t2, $t2, $t6
	la.u    $t3, _Na_g_bss+0xB28
	la.l    $t3, _Na_g_bss+0xB28
	sll     $t2, $t2, 5
	addu    $v1, $t2, $t3
	mflo    $t4
	addu    $a2, $v1, $t4
	lbu     $a3, 0x001A($a2)
	b       .L8031EF24
	sb      $a3, 0x0000($v0)
.L8031EED8:
	li      $t1, 0x001C
	multu   $a1, $t1
	sll     $t5, $a0, 3
	addu    $t5, $t5, $a0
	sll     $t5, $t5, 2
	subu    $t5, $t5, $a0
	la.u    $t6, _Na_g_bss+0xB28
	la.l    $t6, _Na_g_bss+0xB28
	sll     $t5, $t5, 5
	addu    $v1, $t5, $t6
	mflo    $t7
	addu    $a2, $v1, $t7
	lbu     $t9, 0x001B($a2)
	lbu     $t8, 0x001A($a2)
	multu   $t9, $t1
	mflo    $t2
	addu    $t3, $v1, $t2
	sb      $t8, 0x001A($t3)
	lbu     $a3, 0x001A($a2)
.L8031EF24:
	multu   $a3, $t1
	lbu     $t4, 0x001B($a2)
	la.u    $t7, Na_g_803331C0
	la.l    $t7, Na_g_803331C0
	addu    $v0, $a0, $t7
	li      $t9, 0x00FF
	mflo    $t5
	addu    $t6, $v1, $t5
	sb      $t4, 0x001B($t6)
	lbu     $t0, 0x0000($v0)
	sb      $t9, 0x001A($a2)
	multu   $t0, $t1
	sb      $t0, 0x001B($a2)
	mflo    $t2
	addu    $t8, $v1, $t2
	sb      $a1, 0x001A($t8)
	jr      $ra
	sb      $a1, 0x0000($v0)

/* void Na_g_8031EF6C(u8, u8) */
Na_g_8031EF6C:
	andi    $a2, $a0, 0x00FF
	sll     $t7, $a2, 3
	andi    $t6, $a1, 0x00FF
	addu    $t7, $t7, $a2
	sll     $t7, $t7, 2
	sll     $t8, $t6, 3
	subu    $t8, $t8, $t6
	subu    $t7, $t7, $a2
	sll     $t7, $t7, 5
	sll     $t8, $t8, 2
	addu    $t9, $t7, $t8
	lui     $t0, %hi(_Na_g_bss+0xB3C)
	addu    $t0, $t0, $t9
	lw      $t0, %lo(_Na_g_bss+0xB3C)($t0)
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	andi    $t1, $t0, 0x0010
	sw      $a0, 0x0018($sp)
	beqz    $t1, .L8031EFE4
	sw      $a1, 0x001C($sp)
	la.u    $v0, Na_g_80333220
	la.l    $v0, Na_g_80333220
	lhu     $t2, 0x0000($v0)
	li      $t3, 0x0001
	sllv    $t4, $t3, $a2
	xori    $t5, $t4, 0xFFFF
	and     $t6, $t2, $t5
	sh      $t6, 0x0000($v0)
	jal     Na_g_80320F68
	li      $a0, 0x0032
.L8031EFE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_g_8031EFF4(u8) */
Na_g_8031EFF4:
	addiu   $sp, $sp, -0x00D8
	sw      $s0, 0x0018($sp)
	la.u    $t6, Na_g_80333240
	addiu   $s0, $sp, 0x0090
	sw      $s8, 0x0038($sp)
	sw      $s7, 0x0034($sp)
	sw      $s3, 0x0024($sp)
	sw      $s1, 0x001C($sp)
	la.u    $t3, _Na_g_bss+0xB28
	la.l    $t6, Na_g_80333240
	la.l    $t3, _Na_g_bss+0xB28
	addiu   $s1, $sp, 0x0070
	addiu   $s3, $sp, 0x0080
	andi    $s7, $a0, 0x00FF
	li      $s8, 0x00FF
	sw      $ra, 0x003C($sp)
	sw      $s6, 0x0030($sp)
	sw      $s5, 0x002C($sp)
	sw      $s4, 0x0028($sp)
	sw      $s2, 0x0020($sp)
	sw      $a0, 0x00D8($sp)
	addiu   $t9, $t6, 0x003C
	move    $t5, $s0
.L8031F050:
	lw      $at, 0x0000($t6)
	addiu   $t6, $t6, 0x000C
	addiu   $t5, $t5, 0x000C
	sw      $at, -0x000C($t5)
	lw      $at, -0x0008($t6)
	sw      $at, -0x0008($t5)
	lw      $at, -0x0004($t6)
	bne     $t6, $t9, .L8031F050
	sw      $at, -0x0004($t5)
	lw      $at, 0x0000($t6)
	la.u    $t8, Na_g_80333280
	la.l    $t8, Na_g_80333280
	sw      $at, 0x0000($t5)
	lw      $at, 0x0000($t8)
	la.u    $t5, Na_g_80333290
	la.l    $t5, Na_g_80333290
	sw      $at, 0x0000($s3)
	lw      $t6, 0x0004($t8)
	sll     $t9, $s7, 3
	addu    $t9, $t9, $s7
	sw      $t6, 0x0004($s3)
	lw      $at, 0x0008($t8)
	sll     $t9, $t9, 2
	subu    $t9, $t9, $s7
	sw      $at, 0x0008($s3)
	lw      $t6, 0x000C($t8)
	sll     $t9, $t9, 5
	addu    $t4, $t3, $t9
	sw      $t6, 0x000C($s3)
	lw      $at, 0x0000($t5)
	sll     $t6, $s7, 3
	addu    $t6, $t6, $s7
	sw      $at, 0x0000($s1)
	lw      $t8, 0x0004($t5)
	sll     $t6, $t6, 2
	subu    $t6, $t6, $s7
	sw      $t8, 0x0004($s1)
	lw      $at, 0x0008($t5)
	sll     $t6, $t6, 5
	addu    $t7, $t3, $t6
	sw      $at, 0x0008($s1)
	lw      $t8, 0x000C($t5)
	lbu     $s4, 0x001B($t7)
	li      $t2, 0x001C
	sw      $t8, 0x000C($s1)
	sb      $0, 0x006F($sp)
	beq     $s8, $s4, .L8031F560
	move    $s2, $s4
.L8031F110:
	multu   $s4, $t2
	li      $at, 0x0081
	sb      $s4, 0x00D3($sp)
	mflo    $t5
	addu    $s5, $t4, $t5
	lw      $v0, 0x0014($s5)
	andi    $t8, $v0, 0x008F
	bne     $t8, $at, .L8031F150
	andi    $t7, $v0, 0x0080
	lbu     $v0, 0x0019($s5)
	sltiu   $v1, $v0, 0x0001
	addiu   $t6, $v0, -0x0001
	beqz    $v1, .L8031F190
	sb      $t6, 0x0019($s5)
	b       .L8031F190
	sw      $0, 0x0014($s5)
.L8031F150:
	bnezl   $t7, .L8031F194
	lw      $t5, 0x0014($s5)
	lbu     $v0, 0x0019($s5)
	andi    $a0, $s7, 0x00FF
	andi    $a1, $s4, 0x00FF
	xori    $v1, $v0, 0x0008
	addiu   $t9, $v0, -0x0001
	bnez    $v1, .L8031F190
	sb      $t9, 0x0019($s5)
	jal     Na_g_8031EF6C
	sw      $t4, 0x0060($sp)
	la.u    $t3, _Na_g_bss+0xB28
	la.l    $t3, _Na_g_bss+0xB28
	li      $t2, 0x001C
	lw      $t4, 0x0060($sp)
	sw      $0, 0x0014($s5)
.L8031F190:
	lw      $t5, 0x0014($s5)
.L8031F194:
	bnezl   $t5, .L8031F1D8
	lbu     $t7, 0x0018($s5)
	lbu     $t8, 0x0018($s5)
	li      $at, 0x0001
	andi    $a0, $s7, 0x00FF
	bne     $t8, $at, .L8031F1D4
	andi    $a1, $s4, 0x00FF
	lbu     $t6, 0x001A($s5)
	sb      $0, 0x0018($s5)
	sw      $t4, 0x0060($sp)
	jal     Na_g_8031EE70
	sb      $t6, 0x00D3($sp)
	la.u    $t3, _Na_g_bss+0xB28
	la.l    $t3, _Na_g_bss+0xB28
	li      $t2, 0x001C
	lw      $t4, 0x0060($sp)
.L8031F1D4:
	lbu     $t7, 0x0018($s5)
.L8031F1D8:
	lbu     $t9, 0x00D3($sp)
	beqzl   $t7, .L8031F548
	lbu     $t9, 0x00D3($sp)
	bnel    $t9, $s2, .L8031F548
	lbu     $t9, 0x00D3($sp)
	lw      $t8, 0x0000($s5)
	lw      $t6, 0x0004($s5)
	lw      $t5, 0x0008($s5)
	lwc1    $f2, 0x0000($t8)
	lwc1    $f14, 0x0000($t6)
	lwc1    $f0, 0x0000($t5)
	mul.s   $f4, $f2, $f2
	la.u    $t7, Na_g_803331D8
	la.l    $t7, Na_g_803331D8
	mul.s   $f6, $f14, $f14
	addu    $s6, $s7, $t7
	sw      $t4, 0x0060($sp)
	mul.s   $f10, $f0, $f0
	move    $s2, $0
	add.s   $f8, $f4, $f6
	jal     sqrtf
	add.s   $f12, $f10, $f8
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lw      $v0, 0x0014($s5)
	la.u    $t3, _Na_g_bss+0xB28
	mul.s   $f18, $f0, $f16
	andi    $v1, $v0, 0xFF00
	srl     $t9, $v1, 8
	andi    $t5, $t9, 0x00FF
	sll     $t8, $v0, 5
	la.l    $t3, _Na_g_bss+0xB28
	li      $t2, 0x001C
	swc1    $f18, 0x000C($s5)
	lw      $t4, 0x0060($sp)
	bgez    $t8, .L8031F28C
	move    $v1, $t5
	subu    $t6, $s8, $t5
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	b       .L8031F480
	sw      $t7, 0x0010($s5)
.L8031F28C:
	lw      $t9, 0x0008($s5)
	mtc1    $0, $f4
	li      $t5, 0x0001
	lwc1    $f0, 0x0000($t9)
	subu    $t9, $s8, $v1
	sll     $t6, $t9, 2
	c.lt.s  $f4, $f0
	addu    $t6, $t6, $t9
	sll     $t6, $t6, 2
	subu    $t6, $t6, $t9
	bc1f    .L8031F3F8
	sll     $t6, $t6, 2
	li      $at, 0x40C00000
	mtc1    $at, $f6
	li      $t8, 0x0001
	li      $at, 0x4F000000
	div.s   $f10, $f0, $f6
	cfc1    $t5, $31
	ctc1    $t8, $31
	nop
	cvt.w.s $f8, $f10
	cfc1    $t8, $31
	nop
	andi    $t8, $t8, 0x0078
	beqzl   $t8, .L8031F33C
	mfc1    $t8, $f8
	mtc1    $at, $f8
	li      $t8, 0x0001
	sub.s   $f8, $f10, $f8
	ctc1    $t8, $31
	nop
	cvt.w.s $f8, $f8
	cfc1    $t8, $31
	nop
	andi    $t8, $t8, 0x0078
	bnez    $t8, .L8031F330
	nop
	mfc1    $t8, $f8
	li      $at, 0x80000000
	b       .L8031F348
	or      $t8, $t8, $at
.L8031F330:
	b       .L8031F348
	li      $t8, -0x0001
	mfc1    $t8, $f8
.L8031F33C:
	nop
	bltz    $t8, .L8031F330
	nop
.L8031F348:
	ctc1    $t5, $31
	li      $t7, 0x0001
	lwc1    $f16, 0x000C($s5)
	subu    $t5, $s8, $v1
	cfc1    $t6, $31
	ctc1    $t7, $31
	li      $at, 0x4F000000
	cvt.w.s $f18, $f16
	cfc1    $t7, $31
	nop
	andi    $t7, $t7, 0x0078
	beqzl   $t7, .L8031F3C4
	mfc1    $t7, $f18
	mtc1    $at, $f18
	li      $t7, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t7, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t7, $31
	nop
	andi    $t7, $t7, 0x0078
	bnez    $t7, .L8031F3B8
	nop
	mfc1    $t7, $f18
	li      $at, 0x80000000
	b       .L8031F3D0
	or      $t7, $t7, $at
.L8031F3B8:
	b       .L8031F3D0
	li      $t7, -0x0001
	mfc1    $t7, $f18
.L8031F3C4:
	nop
	bltz    $t7, .L8031F3B8
	nop
.L8031F3D0:
	ctc1    $t6, $31
	sll     $t6, $t5, 2
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t9, $t8, $t7
	addu    $t8, $t9, $t6
	b       .L8031F480
	sw      $t8, 0x0010($s5)
.L8031F3F8:
	cfc1    $t7, $31
	ctc1    $t5, $31
	lwc1    $f4, 0x000C($s5)
	li      $at, 0x4F000000
	cvt.w.s $f6, $f4
	cfc1    $t5, $31
	nop
	andi    $t5, $t5, 0x0078
	beqzl   $t5, .L8031F468
	mfc1    $t5, $f6
	mtc1    $at, $f6
	li      $t5, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t5, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t5, $31
	nop
	andi    $t5, $t5, 0x0078
	bnez    $t5, .L8031F45C
	nop
	mfc1    $t5, $f6
	li      $at, 0x80000000
	b       .L8031F474
	or      $t5, $t5, $at
.L8031F45C:
	b       .L8031F474
	li      $t5, -0x0001
	mfc1    $t5, $f6
.L8031F468:
	nop
	bltz    $t5, .L8031F45C
	nop
.L8031F474:
	ctc1    $t7, $31
	addu    $t8, $t5, $t6
	sw      $t8, 0x0010($s5)
.L8031F480:
	lbu     $t1, 0x0000($s6)
	blez    $t1, .L8031F538
	move    $a3, $t1
	lw      $t0, 0x0010($s5)
.L8031F490:
	sll     $t7, $s2, 2
	addu    $a2, $s0, $t7
	lw      $t9, 0x0000($a2)
	addiu   $v0, $a3, -0x0001
	andi    $v1, $v0, 0x00FF
	sltu    $at, $t9, $t0
	bnez    $at, .L8031F524
	move    $v0, $v1
	slt     $at, $s2, $v1
	move    $a0, $s2
	beqz    $at, .L8031F50C
	lbu     $a1, 0x0018($s5)
.L8031F4C0:
	sll     $t6, $v1, 2
	addu    $t8, $s0, $t6
	lw      $t7, -0x0004($t8)
	sll     $t9, $v0, 2
	addu    $t5, $s0, $t9
	addu    $t6, $s3, $v1
	sw      $t7, 0x0000($t5)
	lbu     $t8, -0x0001($t6)
	addu    $t9, $s3, $v0
	addu    $t6, $s1, $v0
	addu    $t7, $s1, $v1
	addiu   $v0, $v0, -0x0001
	sb      $t8, 0x0000($t9)
	lbu     $t5, -0x0001($t7)
	andi    $v1, $v0, 0x00FF
	slt     $at, $a0, $v1
	move    $v0, $v1
	bnez    $at, .L8031F4C0
	sb      $t5, 0x0000($t6)
.L8031F50C:
	addu    $t9, $s3, $s2
	addu    $t7, $s1, $s2
	sb      $s4, 0x0000($t9)
	sw      $t0, 0x0000($a2)
	sb      $a1, 0x0000($t7)
	andi    $s2, $t1, 0x00FF
.L8031F524:
	addiu   $s2, $s2, 0x0001
	andi    $t5, $s2, 0x00FF
	slt     $at, $t5, $a3
	bnez    $at, .L8031F490
	move    $s2, $t5
.L8031F538:
	lbu     $t6, 0x006F($sp)
	addiu   $t8, $t6, 0x0001
	sb      $t8, 0x006F($sp)
	lbu     $t9, 0x00D3($sp)
.L8031F548:
	multu   $t9, $t2
	mflo    $t7
	addu    $t5, $t4, $t7
	lbu     $s4, 0x001B($t5)
	bne     $s8, $s4, .L8031F110
	move    $s2, $s4
.L8031F560:
	lui     $t7, %hi(Na_g_803331D8)
	addu    $t7, $t7, $s7
	lbu     $t6, 0x006F($sp)
	lbu     $t7, %lo(Na_g_803331D8)($t7)
	la.u    $t8, _Na_g_bss+0xB08
	lui     $at, %hi(Na_g_803331CC)
	la.l    $t8, _Na_g_bss+0xB08
	addu    $at, $at, $s7
	addu    $t9, $s7, $t8
	sw      $t9, 0x0064($sp)
	sb      $t6, %lo(Na_g_803331CC)($at)
	andi    $a3, $t7, 0x00FF
	li      $t2, 0x001C
	move    $s2, $0
	blez    $a3, .L8031F72C
	sb      $t7, 0x0000($t9)
	la.u    $s6, _Na_g_bss+0xB18
	la.l    $s6, _Na_g_bss+0xB18
	li      $s5, 0x00FF
.L8031F5AC:
	blez    $a3, .L8031F5F4
	move    $s4, $0
.L8031F5B4:
	addu    $a0, $s3, $s4
	lbu     $v0, 0x0000($a0)
	addu    $t6, $s6, $s7
	addu    $t8, $t6, $s2
	beql    $s8, $v0, .L8031F5E4
	addiu   $s4, $s4, 0x0001
	lbu     $t9, 0x0000($t8)
	bnel    $t9, $v0, .L8031F5E4
	addiu   $s4, $s4, 0x0001
	sb      $s5, 0x0000($a0)
	li      $s4, 0x00FE
	addiu   $s4, $s4, 0x0001
.L8031F5E4:
	andi    $t7, $s4, 0x00FF
	slt     $at, $t7, $a3
	bnez    $at, .L8031F5B4
	move    $s4, $t7
.L8031F5F4:
	beq     $s8, $s4, .L8031F718
	addu    $t5, $s6, $s7
	addu    $s0, $t5, $s2
	lbu     $s1, 0x0000($s0)
	beql    $s8, $s1, .L8031F718
	sb      $s5, 0x0000($s0)
	multu   $s1, $t2
	sll     $t6, $s7, 3
	addu    $t6, $t6, $s7
	sll     $t6, $t6, 2
	subu    $t6, $t6, $s7
	sll     $t6, $t6, 5
	addu    $t4, $t3, $t6
	mflo    $t8
	addu    $s4, $t4, $t8
	lw      $v0, 0x0014($s4)
	bnezl   $v0, .L8031F688
	andi    $v1, $v0, 0x008F
	lbu     $t9, 0x0018($s4)
	li      $at, 0x0002
	andi    $a0, $s7, 0x00FF
	bne     $t9, $at, .L8031F684
	andi    $a1, $s1, 0x00FF
	sb      $0, 0x0018($s4)
	jal     Na_g_8031EE70
	sw      $t4, 0x0060($sp)
	lbu     $s1, 0x0000($s0)
	lw      $t4, 0x0060($sp)
	la.u    $t3, _Na_g_bss+0xB28
	sll     $t7, $s1, 3
	subu    $t7, $t7, $s1
	sll     $t7, $t7, 2
	addu    $s4, $t4, $t7
	lw      $v0, 0x0014($s4)
	la.l    $t3, _Na_g_bss+0xB28
	li      $t2, 0x001C
.L8031F684:
	andi    $v1, $v0, 0x008F
.L8031F688:
	sltiu   $at, $v1, 0x0082
	bnez    $at, .L8031F6F4
	lw      $t9, 0x0064($sp)
	lbu     $t5, 0x0018($s4)
	andi    $a0, $s7, 0x00FF
	andi    $a1, $s1, 0x00FF
	beqzl   $t5, .L8031F6F8
	li      $at, 0x0002
	jal     Na_g_8031EF6C
	sw      $t4, 0x0060($sp)
	lbu     $s1, 0x0000($s0)
	li      $t2, 0x001C
	lw      $t4, 0x0060($sp)
	multu   $s1, $t2
	andi    $a0, $s7, 0x00FF
	andi    $a1, $s1, 0x00FF
	mflo    $t6
	addu    $s4, $t4, $t6
	sw      $0, 0x0014($s4)
	jal     Na_g_8031EE70
	sb      $0, 0x0018($s4)
	lw      $t8, 0x0064($sp)
	la.u    $t3, _Na_g_bss+0xB28
	la.l    $t3, _Na_g_bss+0xB28
	li      $t2, 0x001C
	b       .L8031F714
	lbu     $a3, 0x0000($t8)
.L8031F6F4:
	li      $at, 0x0002
.L8031F6F8:
	bne     $v1, $at, .L8031F714
	lbu     $a3, 0x0000($t9)
	lbu     $t7, 0x0018($s4)
	li      $t5, 0x0001
	beqzl   $t7, .L8031F718
	sb      $s5, 0x0000($s0)
	sb      $t5, 0x0018($s4)
.L8031F714:
	sb      $s5, 0x0000($s0)
.L8031F718:
	addiu   $s2, $s2, 0x0001
	andi    $t6, $s2, 0x00FF
	slt     $at, $t6, $a3
	bnez    $at, .L8031F5AC
	move    $s2, $t6
.L8031F72C:
	li      $s5, 0x00FF
	blez    $a3, .L8031F7E0
	move    $s4, $0
	li      $a2, -0x0010
.L8031F73C:
	addu    $a0, $s3, $s4
	lbu     $t8, 0x0000($a0)
	addiu   $s4, $s4, 0x0001
	beql    $s8, $t8, .L8031F7D4
	andi    $t9, $s4, 0x00FF
	blez    $a3, .L8031F7D0
	move    $s2, $0
	la.u    $t9, _Na_g_bss+0xB18
	la.l    $t9, _Na_g_bss+0xB18
	addu    $a1, $s7, $t9
.L8031F764:
	addu    $s0, $a1, $s2
	lbu     $t7, 0x0000($s0)
	bnel    $s8, $t7, .L8031F7C0
	addiu   $s2, $s2, 0x0001
	lbu     $v0, 0x0000($a0)
	sll     $t5, $s7, 3
	addu    $t5, $t5, $s7
	multu   $v0, $t2
	sll     $t5, $t5, 2
	subu    $t5, $t5, $s7
	sll     $t5, $t5, 5
	addu    $t6, $t3, $t5
	sb      $v0, 0x0000($s0)
	mflo    $t8
	addu    $v1, $t6, $t8
	lw      $t9, 0x0014($v1)
	addu    $t6, $s3, $s2
	sb      $s5, 0x0000($t6)
	and     $t7, $t9, $a2
	addiu   $t5, $t7, 0x0001
	sw      $t5, 0x0014($v1)
	li      $s2, 0x00FE
	addiu   $s2, $s2, 0x0001
.L8031F7C0:
	andi    $t8, $s2, 0x00FF
	slt     $at, $t8, $a3
	bnez    $at, .L8031F764
	move    $s2, $t8
.L8031F7D0:
	andi    $t9, $s4, 0x00FF
.L8031F7D4:
	slt     $at, $t9, $a3
	bnez    $at, .L8031F73C
	move    $s4, $t9
.L8031F7E0:
	lw      $ra, 0x003C($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s4, 0x0028($sp)
	lw      $s5, 0x002C($sp)
	lw      $s6, 0x0030($sp)
	lw      $s7, 0x0034($sp)
	lw      $s8, 0x0038($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00D8

/* float Na_g_8031F810(float, float) */
Na_g_8031F810:
	mtc1    $0, $f16
	lui     $at, %hi(Na_g_80339720)
	c.lt.s  $f12, $f16
	nop
	bc1fl   .L8031F834
	mov.s   $f2, $f12
	b       .L8031F834
	neg.s   $f2, $f12
	mov.s   $f2, $f12
.L8031F834:
	lwc1    $f18, %lo(Na_g_80339720)($at)
	c.lt.s  $f18, $f2
	nop
	bc1fl   .L8031F850
	c.lt.s  $f14, $f16
	mov.s   $f2, $f18
	c.lt.s  $f14, $f16
.L8031F850:
	nop
	bc1fl   .L8031F868
	mov.s   $f0, $f14
	b       .L8031F868
	neg.s   $f0, $f14
	mov.s   $f0, $f14
.L8031F868:
	c.lt.s  $f18, $f0
	nop
	bc1fl   .L8031F880
	mtc1    $0, $f18
	mov.s   $f0, $f18
	mtc1    $0, $f18
.L8031F880:
	nop
	c.eq.s  $f12, $f18
	nop
	bc1fl   .L8031F8B4
	c.le.s  $f18, $f12
	c.eq.s  $f14, $f18
	li      $at, 0x3F000000
	bc1fl   .L8031F8B4
	c.le.s  $f18, $f12
	mtc1    $at, $f0
	jr      $ra
	nop
	c.le.s  $f18, $f12
.L8031F8B4:
	nop
	bc1fl   .L8031F900
	c.lt.s  $f12, $f16
	c.le.s  $f0, $f2
	lui     $at, %hi(Na_g_80339724)
	bc1fl   .L8031F900
	c.lt.s  $f12, $f16
	lwc1    $f12, %lo(Na_g_80339724)($at)
	li      $at, 0x40400000
	mtc1    $at, $f4
	sub.s   $f6, $f12, $f0
	li      $at, 0x3F800000
	sub.s   $f10, $f12, $f2
	mul.s   $f8, $f4, $f6
	mtc1    $at, $f6
	div.s   $f4, $f10, $f8
	jr      $ra
	sub.s   $f0, $f6, $f4
	c.lt.s  $f12, $f16
.L8031F900:
	li      $at, 0x40C00000
	bc1fl   .L8031F944
	mtc1    $at, $f10
	c.lt.s  $f0, $f2
	nop
	bc1fl   .L8031F944
	mtc1    $at, $f10
	lui     $at, %hi(Na_g_80339728)
	lwc1    $f12, %lo(Na_g_80339728)($at)
	li      $at, 0x40400000
	mtc1    $at, $f10
	sub.s   $f8, $f12, $f0
	sub.s   $f4, $f12, $f2
	mul.s   $f6, $f10, $f8
	jr      $ra
	div.s   $f0, $f4, $f6
	mtc1    $at, $f10
.L8031F944:
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	mul.s   $f8, $f10, $f0
	mtc1    $0, $f10
	div.s   $f4, $f12, $f8
	cvt.d.s $f6, $f4
	add.d   $f8, $f6, $f10
	cvt.s.d $f14, $f8
	jr      $ra
	mov.s   $f0, $f14

/* float Na_g_8031F96C(u8, u8, float) */
Na_g_8031F96C:
	andi    $t6, $a0, 0x00FF
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	andi    $t7, $a1, 0x00FF
	mtc1    $a2, $f14
	slti    $at, $t6, 0x0003
	move    $a1, $t7
	beqz    $at, .L8031F998
	move    $a0, $t6
	b       .L8031F99C
	li      $v0, 0x0002
.L8031F998:
	li      $v0, 0x0003
.L8031F99C:
	sll     $t8, $a0, 3
	addu    $t8, $t8, $a0
	sll     $t8, $t8, 2
	sll     $t9, $a1, 3
	subu    $t9, $t9, $a1
	subu    $t8, $t8, $a0
	sll     $t8, $t8, 5
	sll     $t9, $t9, 2
	la.u    $t1, _Na_g_bss+0xB28
	la.l    $t1, _Na_g_bss+0xB28
	addu    $t0, $t8, $t9
	addu    $v1, $t0, $t1
	lw      $a2, 0x0014($v1)
	li      $at, 0x01000000
	and     $t2, $a2, $at
	bnez    $t2, .L8031FAFC
	li      $at, 0x3F800000
	lui     $at, %hi(Na_g_8033972C)
	lwc1    $f16, %lo(Na_g_8033972C)($at)
	lwc1    $f0, 0x000C($v1)
	lui     $t3, %hi(stage_index)
	sll     $t7, $a2, 6
	c.lt.s  $f16, $f0
	nop
	bc1f    .L8031FA10
	nop
	mtc1    $0, $f2
	b       .L8031FAA0
	nop
.L8031FA10:
	lh      $t3, %lo(stage_index)($t3)
	lui     $t5, %hi(Na_g_80333138)
	sll     $t4, $t3, 1
	addu    $t5, $t5, $t4
	lhu     $t5, %lo(Na_g_80333138)($t5)
	div     $0, $t5, $v0
	mflo    $t6
	mtc1    $t6, $f4
	bnez    $v0, .L8031FA3C
	nop
	break   7
.L8031FA3C:
	li      $at, -0x0001
	bne     $v0, $at, .L8031FA54
	li      $at, 0x80000000
	bne     $t5, $at, .L8031FA54
	nop
	break   6
.L8031FA54:
	cvt.s.w $f12, $f4
	c.lt.s  $f12, $f0
	nop
	bc1fl   .L8031FA90
	div.s   $f8, $f0, $f12
	sub.s   $f6, $f16, $f0
	li      $at, 0x3F800000
	mtc1    $at, $f18
	sub.s   $f8, $f16, $f12
	sub.s   $f4, $f18, $f14
	div.s   $f10, $f6, $f8
	mul.s   $f2, $f10, $f4
	b       .L8031FAA0
	nop
	div.s   $f8, $f0, $f12
.L8031FA90:
	li      $at, 0x3F800000
	mtc1    $at, $f6
	mul.s   $f18, $f8, $f14
	sub.s   $f2, $f6, $f18
.L8031FAA0:
	bgez    $t7, .L8031FB04
	lui     $at, %hi(Na_g_80339730)
	lwc1    $f10, %lo(Na_g_80339730)($at)
	lui     $t8, %hi(_Na_bss+0x5F18)
	c.le.s  $f10, $f2
	nop
	bc1f    .L8031FB04
	nop
	lw      $t8, %lo(_Na_bss+0x5F18)($t8)
	li      $at, 0x4F800000
	andi    $t9, $t8, 0x000F
	mtc1    $t9, $f4
	bgez    $t9, .L8031FAE4
	cvt.s.w $f8, $f4
	mtc1    $at, $f6
	nop
	add.s   $f8, $f8, $f6
.L8031FAE4:
	li      $at, 0x43400000
	mtc1    $at, $f18
	nop
	div.s   $f10, $f8, $f18
	b       .L8031FB04
	sub.s   $f2, $f2, $f10
.L8031FAFC:
	mtc1    $at, $f2
	nop
.L8031FB04:
	mul.s   $f4, $f14, $f2
	li      $at, 0x3F800000
	mtc1    $at, $f8
	mul.s   $f6, $f4, $f2
	add.s   $f18, $f6, $f8
	jr      $ra
	sub.s   $f0, $f18, $f14

/* float Na_g_8031FB20(u8, u8) */
Na_g_8031FB20:
	andi    $t6, $a0, 0x00FF
	sll     $t8, $t6, 3
	andi    $t7, $a1, 0x00FF
	addu    $t8, $t8, $t6
	sll     $t8, $t8, 2
	sll     $t9, $t7, 3
	subu    $t9, $t9, $t7
	subu    $t8, $t8, $t6
	sll     $t8, $t8, 5
	sll     $t9, $t9, 2
	la.u    $t1, _Na_g_bss+0xB28
	la.l    $t1, _Na_g_bss+0xB28
	addu    $t0, $t8, $t9
	addu    $v0, $t0, $t1
	lw      $v1, 0x0014($v0)
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sll     $t2, $v1, 4
	bltz    $t2, .L8031FBC4
	lui     $at, %hi(Na_g_80339734)
	lwc1    $f4, 0x000C($v0)
	lwc1    $f6, %lo(Na_g_80339734)($at)
	sll     $t3, $v1, 6
	bgez    $t3, .L8031FBCC
	div.s   $f2, $f4, $f6
	lui     $t4, %hi(_Na_bss+0x5F18)
	lw      $t4, %lo(_Na_bss+0x5F18)($t4)
	li      $at, 0x4F800000
	andi    $t5, $t4, 0x00FF
	mtc1    $t5, $f8
	bgez    $t5, .L8031FBAC
	cvt.s.w $f10, $f8
	mtc1    $at, $f16
	nop
	add.s   $f10, $f10, $f16
.L8031FBAC:
	li      $at, 0x3C800000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f10, $f18
	b       .L8031FBCC
	add.s   $f2, $f2, $f4
.L8031FBC4:
	mtc1    $0, $f2
	nop
.L8031FBCC:
	li      $at, 0x41700000
	mtc1    $at, $f6
	li      $at, 0x3F800000
	mtc1    $at, $f16
	div.s   $f8, $f2, $f6
	jr      $ra
	add.s   $f0, $f8, $f16

/* u8 Na_g_8031FBE8(u8, u8, u8) */
Na_g_8031FBE8:
	andi    $t6, $a0, 0x00FF
	sll     $t9, $t6, 3
	andi    $t7, $a1, 0x00FF
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 2
	sll     $t0, $t7, 3
	subu    $t0, $t0, $t7
	subu    $t9, $t9, $t6
	sll     $t9, $t9, 5
	sll     $t0, $t0, 2
	addu    $t1, $t9, $t0
	lui     $t2, %hi(_Na_g_bss+0xB3C)
	addu    $t2, $t2, $t1
	lw      $t2, %lo(_Na_g_bss+0xB3C)($t2)
	sw      $a2, 0x0008($sp)
	andi    $t8, $a2, 0x00FF
	andi    $t3, $t2, 0x0020
	move    $a2, $t8
	sw      $a0, 0x0000($sp)
	beqz    $t3, .L8031FC48
	sw      $a1, 0x0004($sp)
	move    $v0, $0
	b       .L8031FC84
	move    $v1, $0
.L8031FC48:
	lui     $v1, %hi(stage_index)
	lh      $v1, %lo(stage_index)($v1)
	slti    $at, $v1, 0x0027
	bnez    $at, .L8031FC64
	andi    $v0, $v1, 0x00FF
	b       .L8031FC64
	li      $v0, 0x0026
.L8031FC64:
	lui     $v1, %hi(scene_index)
	lh      $v1, %lo(scene_index)($v1)
	addiu   $v1, $v1, -0x0001
	andi    $t4, $v1, 0x00FF
	slti    $at, $t4, 0x0003
	bnez    $at, .L8031FC84
	move    $v1, $t4
	li      $v1, 0x0002
.L8031FC84:
	sll     $t5, $a2, 2
	lui     $a1, %hi(_Na_bss+0x1B24)
	addu    $a1, $a1, $t5
	lw      $a1, %lo(_Na_bss+0x1B24)($a1)
	sll     $t7, $v0, 2
	subu    $t7, $t7, $v0
	addu    $t8, $t7, $v1
	li      $at, 0x3F800000
	lui     $t9, %hi(Na_g_803330C0)
	mtc1    $at, $f4
	lwc1    $f6, 0x0020($a1)
	addu    $t9, $t9, $t8
	lbu     $t9, %lo(Na_g_803330C0)($t9)
	lbu     $t6, 0x0059($a1)
	sub.s   $f8, $f4, $f6
	li      $at, 0x42200000
	mtc1    $at, $f10
	addu    $t0, $t6, $t9
	mtc1    $t0, $f18
	mul.s   $f16, $f8, $f10
	li      $a0, 0x0001
	li      $at, 0x4F000000
	cvt.s.w $f4, $f18
	add.s   $f6, $f16, $f4
	cfc1    $t1, $31
	ctc1    $a0, $31
	nop
	cvt.w.s $f8, $f6
	cfc1    $a0, $31
	nop
	andi    $a0, $a0, 0x0078
	beqzl   $a0, .L8031FD50
	mfc1    $a0, $f8
	mtc1    $at, $f8
	li      $a0, 0x0001
	sub.s   $f8, $f6, $f8
	ctc1    $a0, $31
	nop
	cvt.w.s $f8, $f8
	cfc1    $a0, $31
	nop
	andi    $a0, $a0, 0x0078
	bnez    $a0, .L8031FD44
	nop
	mfc1    $a0, $f8
	li      $at, 0x80000000
	b       .L8031FD5C
	or      $a0, $a0, $at
.L8031FD44:
	b       .L8031FD5C
	li      $a0, -0x0001
	mfc1    $a0, $f8
.L8031FD50:
	nop
	bltz    $a0, .L8031FD44
	nop
.L8031FD5C:
	andi    $t2, $a0, 0x00FF
	ctc1    $t1, $31
	slti    $at, $t2, 0x0080
	bnez    $at, .L8031FD74
	move    $a0, $t2
	li      $a0, 0x007F
.L8031FD74:
	jr      $ra
	move    $v0, $a0

/* void Na_g_8031FD7C(void) */
Na_g_8031FD7C:
	jr      $ra
	nop

/* void Na_update(void) */
.globl Na_update
Na_update:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0001
	lui     $at, %hi(Na_g_80332E54)
	jal     Na_g_8031FD7C
	sw      $t6, %lo(Na_g_80332E54)($at)
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_g_8031FDAC(void) */
Na_g_8031FDAC:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x006C($sp)
	sw      $s6, 0x0060($sp)
	sw      $s8, 0x0068($sp)
	sw      $s7, 0x0064($sp)
	sw      $s5, 0x005C($sp)
	sw      $s4, 0x0058($sp)
	sw      $s3, 0x0054($sp)
	sw      $s2, 0x0050($sp)
	sw      $s1, 0x004C($sp)
	sw      $s0, 0x0048($sp)
	sdc1    $f30, 0x0040($sp)
	sdc1    $f28, 0x0038($sp)
	sdc1    $f26, 0x0030($sp)
	sdc1    $f24, 0x0028($sp)
	sdc1    $f22, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	jal     Na_g_8031EDEC
	move    $s6, $0
	jal     Na_g_803208EC
	nop
	la.u    $s8, _Na_bss+0x1878
	la.l    $s8, _Na_bss+0x1878
	lw      $t7, 0x02AC($s8)
	la.u    $t6, _Na_bss+0x4E38
	la.l    $t6, _Na_bss+0x4E38
	beq     $t6, $t7, .L803204FC
	move    $s4, $0
	li      $at, 0x41800000
	mtc1    $at, $f30
	li      $at, 0x41000000
	mtc1    $at, $f28
	li      $at, 0x43C80000
	mtc1    $at, $f26
	li      $at, 0x42A00000
	mtc1    $at, $f24
	li      $at, 0x3F800000
	mtc1    $at, $f22
	lui     $at, %hi(Na_g_80339738)
	lwc1    $f20, %lo(Na_g_80339738)($at)
.L8031FE4C:
	jal     Na_g_8031EFF4
	andi    $a0, $s4, 0x00FF
	la.u    $t8, _Na_g_bss+0xB18
	la.l    $t8, _Na_g_bss+0xB18
	addu    $t9, $s4, $t8
	sw      $t9, 0x0070($sp)
	move    $s7, $0
.L8031FE68:
	lw      $t0, 0x0070($sp)
	sll     $t2, $s4, 3
	addu    $t2, $t2, $s4
	addu    $t1, $t0, $s7
	lbu     $s2, 0x0000($t1)
	sll     $t2, $t2, 2
	subu    $t2, $t2, $s4
	slti    $at, $s2, 0x00FF
	beqz    $at, .L803204A4
	sll     $t2, $t2, 5
	sll     $t3, $s2, 3
	subu    $t3, $t3, $s2
	sll     $t3, $t3, 2
	la.u    $t5, _Na_g_bss+0xB28
	la.l    $t5, _Na_g_bss+0xB28
	addu    $t4, $t2, $t3
	addu    $s1, $t4, $t5
	lbu     $t6, 0x0018($s1)
	beqzl   $t6, .L803204A8
	addiu   $s7, $s7, 0x0001
	lw      $v1, 0x0014($s1)
	li      $at, 0x0001
	sll     $t3, $s6, 2
	srl     $s5, $v1, 16
	andi    $t8, $s5, 0x00FF
	andi    $a0, $v1, 0x000F
	move    $s5, $t8
	bne     $a0, $at, .L803201A0
	sb      $a0, 0x0018($s1)
	andi    $t9, $v1, 0x0010
	beqz    $t9, .L8031FF10
	move    $s3, $s4
	la.u    $v0, Na_g_80333220
	la.l    $v0, Na_g_80333220
	lhu     $t0, 0x0000($v0)
	li      $t1, 0x0001
	sllv    $t2, $t1, $s3
	or      $t3, $t0, $t2
	sh      $t3, 0x0000($v0)
	jal     Na_g_80320F68
	li      $a0, 0x0032
	lw      $v1, 0x0014($s1)
.L8031FF10:
	sll     $t6, $s6, 2
	addu    $s0, $s8, $t6
	lw      $t7, 0x02AC($s0)
	addiu   $t4, $v1, 0x0001
	li      $t5, 0x0002
	sw      $t4, 0x0014($s1)
	sb      $t5, 0x0018($s1)
	sb      $s5, 0x0058($t7)
	lw      $t9, 0x02AC($s0)
	li      $t8, 0x0001
	sltiu   $at, $s3, 0x000A
	beqz    $at, .L803204A4
	sb      $t8, 0x0054($t9)
	sll     $t1, $s3, 2
	lui     $at, %hi(Na_g_8033973C)
	addu    $at, $at, $t1
	lw      $t1, %lo(Na_g_8033973C)($at)
	jr      $t1
	nop
.globl L8031FF5C
L8031FF5C:
	lw      $t0, 0x0014($s1)
	la.u    $t3, _Na_g_bss+0x36E8
	la.l    $t3, _Na_g_bss+0x36E8
	sll     $t2, $t0, 4
	bltz    $t2, L803200B0
	addu    $s3, $s4, $t3
	lbu     $t4, 0x0000($s3)
	andi    $a1, $s2, 0x00FF
	andi    $a0, $s4, 0x00FF
	slti    $at, $t4, 0x0009
	bnezl   $at, .L8031FFA8
	mfc1    $a2, $f20
	mfc1    $a2, $f20
	jal     Na_g_8031F96C
	andi    $a0, $s4, 0x00FF
	lw      $t5, 0x02AC($s0)
	b       .L8031FFE4
	swc1    $f0, 0x0020($t5)
	mfc1    $a2, $f20
.L8031FFA8:
	jal     Na_g_8031F96C
	andi    $a1, $s2, 0x00FF
	lbu     $t6, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t6, $f4
	bgez    $t6, .L8031FFD0
	cvt.s.w $f6, $f4
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L8031FFD0:
	add.s   $f10, $f6, $f28
	lw      $t7, 0x02AC($s0)
	div.s   $f16, $f10, $f30
	mul.s   $f18, $f16, $f0
	swc1    $f18, 0x0020($t7)
.L8031FFE4:
	lw      $t8, 0x0000($s1)
	lw      $t9, 0x0008($s1)
	lwc1    $f12, 0x0000($t8)
	jal     Na_g_8031F810
	lwc1    $f14, 0x0000($t9)
	lw      $t1, 0x02AC($s0)
	li      $at, 0x00FF0000
	andi    $a1, $s2, 0x00FF
	swc1    $f0, 0x0024($t1)
	lw      $t0, 0x0014($s1)
	andi    $a0, $s4, 0x00FF
	and     $t2, $t0, $at
	li      $at, 0x00170000
	bne     $t2, $at, .L8032005C
	nop
	jal     Na_g_8031FB20
	andi    $a0, $s4, 0x00FF
	lbu     $t3, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t3, $f4
	bgez    $t3, .L80320048
	cvt.s.w $f8, $f4
	mtc1    $at, $f6
	nop
	add.s   $f8, $f8, $f6
.L80320048:
	div.s   $f10, $f8, $f24
	lw      $t4, 0x02AC($s0)
	add.s   $f16, $f10, $f0
	b       .L80320094
	swc1    $f16, 0x002C($t4)
.L8032005C:
	jal     Na_g_8031FB20
	andi    $a1, $s2, 0x00FF
	lbu     $t5, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t5, $f18
	bgez    $t5, .L80320084
	cvt.s.w $f4, $f18
	mtc1    $at, $f6
	nop
	add.s   $f4, $f4, $f6
.L80320084:
	div.s   $f8, $f4, $f26
	lw      $t6, 0x02AC($s0)
	add.s   $f10, $f8, $f0
	swc1    $f10, 0x002C($t6)
.L80320094:
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031FBE8
	andi    $a2, $s6, 0x00FF
	lw      $t7, 0x02AC($s0)
	b       .L803204A4
	sb      $v0, 0x0003($t7)
.globl L803200B0
L803200B0:
	lw      $t8, 0x02AC($s0)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	swc1    $f22, 0x0020($t8)
	lw      $t9, 0x02AC($s0)
	swc1    $f16, 0x0024($t9)
	lw      $t1, 0x02AC($s0)
	b       .L803204A4
	swc1    $f22, 0x002C($t1)
.globl L803200D4
L803200D4:
	mfc1    $a2, $f20
	andi    $a0, $s4, 0x00FF
	jal     Na_g_8031F96C
	andi    $a1, $s2, 0x00FF
	lw      $t0, 0x02AC($s0)
	swc1    $f0, 0x0020($t0)
	lw      $t3, 0x0008($s1)
	lw      $t2, 0x0000($s1)
	lwc1    $f14, 0x0000($t3)
	jal     Na_g_8031F810
	lwc1    $f12, 0x0000($t2)
	lw      $t4, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031FB20
	swc1    $f0, 0x0024($t4)
	lw      $t5, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	andi    $a2, $s6, 0x00FF
	jal     Na_g_8031FBE8
	swc1    $f0, 0x002C($t5)
	lw      $t6, 0x02AC($s0)
	b       .L803204A4
	sb      $v0, 0x0003($t6)
.globl L80320138
L80320138:
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031FBE8
	andi    $a2, $s6, 0x00FF
	lw      $t7, 0x02AC($s0)
	li.u    $a2, 0x3F4CCCCD
	li.l    $a2, 0x3F4CCCCD
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031F96C
	sb      $v0, 0x0003($t7)
	lw      $t8, 0x02AC($s0)
	swc1    $f0, 0x0020($t8)
	lw      $t1, 0x0008($s1)
	lw      $t9, 0x0000($s1)
	lwc1    $f14, 0x0000($t1)
	jal     Na_g_8031F810
	lwc1    $f12, 0x0000($t9)
	lw      $t0, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031FB20
	swc1    $f0, 0x0024($t0)
	lw      $t2, 0x02AC($s0)
	b       .L803204A4
	swc1    $f0, 0x002C($t2)
.L803201A0:
	addu    $s0, $s8, $t3
	lw      $a1, 0x02AC($s0)
	lw      $v0, 0x0044($a1)
	bnez    $v0, .L803201D8
	nop
	andi    $a0, $s4, 0x00FF
	jal     Na_g_8031EF6C
	andi    $a1, $s2, 0x00FF
	sb      $0, 0x0018($s1)
	andi    $a0, $s4, 0x00FF
	jal     Na_g_8031EE70
	andi    $a1, $s2, 0x00FF
	b       .L803204A8
	addiu   $s7, $s7, 0x0001
.L803201D8:
	bnezl   $a0, .L8032021C
	lw      $t8, 0x0000($v0)
	lw      $t4, 0x0000($v0)
	andi    $a0, $s4, 0x00FF
	sll     $t6, $t4, 1
	bltzl   $t6, .L8032021C
	lw      $t8, 0x0000($v0)
	jal     Na_g_8031EF6C
	andi    $a1, $s2, 0x00FF
	lw      $t7, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031EE70
	sb      $0, 0x0054($t7)
	b       .L803204A8
	addiu   $s7, $s7, 0x0001
	lw      $t8, 0x0000($v0)
.L8032021C:
	andi    $a0, $s4, 0x00FF
	sltiu   $at, $s4, 0x000A
	srl     $t9, $t8, 31
	bnez    $t9, .L80320250
	nop
	jal     Na_g_8031EF6C
	andi    $a1, $s2, 0x00FF
	sb      $0, 0x0018($s1)
	andi    $a0, $s4, 0x00FF
	jal     Na_g_8031EE70
	andi    $a1, $s2, 0x00FF
	b       .L803204A8
	addiu   $s7, $s7, 0x0001
.L80320250:
	beqz    $at, .L803204A4
	sll     $t1, $s4, 2
	lui     $at, %hi(Na_g_80339764)
	addu    $at, $at, $t1
	lw      $t1, %lo(Na_g_80339764)($at)
	jr      $t1
	nop
.globl L8032026C
L8032026C:
	sll     $t0, $v1, 4
	bltz    $t0, L803203BC
	la.u    $t2, _Na_g_bss+0x36E8
	la.l    $t2, _Na_g_bss+0x36E8
	addu    $s3, $s4, $t2
	lbu     $t3, 0x0000($s3)
	andi    $a1, $s2, 0x00FF
	andi    $a0, $s4, 0x00FF
	slti    $at, $t3, 0x0009
	bnezl   $at, .L803202B4
	mfc1    $a2, $f20
	mfc1    $a2, $f20
	jal     Na_g_8031F96C
	andi    $a0, $s4, 0x00FF
	lw      $t4, 0x02AC($s0)
	b       .L803202F0
	swc1    $f0, 0x0020($t4)
	mfc1    $a2, $f20
.L803202B4:
	jal     Na_g_8031F96C
	andi    $a1, $s2, 0x00FF
	lbu     $t5, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t5, $f18
	bgez    $t5, .L803202DC
	cvt.s.w $f6, $f18
	mtc1    $at, $f4
	nop
	add.s   $f6, $f6, $f4
.L803202DC:
	add.s   $f8, $f6, $f28
	lw      $t6, 0x02AC($s0)
	div.s   $f10, $f8, $f30
	mul.s   $f16, $f10, $f0
	swc1    $f16, 0x0020($t6)
.L803202F0:
	lw      $t7, 0x0000($s1)
	lw      $t8, 0x0008($s1)
	lwc1    $f12, 0x0000($t7)
	jal     Na_g_8031F810
	lwc1    $f14, 0x0000($t8)
	lw      $t9, 0x02AC($s0)
	li      $at, 0x00FF0000
	andi    $a1, $s2, 0x00FF
	swc1    $f0, 0x0024($t9)
	lw      $t1, 0x0014($s1)
	andi    $a0, $s4, 0x00FF
	and     $t0, $t1, $at
	li      $at, 0x00170000
	bne     $t0, $at, .L80320368
	nop
	jal     Na_g_8031FB20
	andi    $a0, $s4, 0x00FF
	lbu     $t2, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t2, $f18
	bgez    $t2, .L80320354
	cvt.s.w $f4, $f18
	mtc1    $at, $f6
	nop
	add.s   $f4, $f4, $f6
.L80320354:
	div.s   $f8, $f4, $f24
	lw      $t3, 0x02AC($s0)
	add.s   $f10, $f8, $f0
	b       .L803203A0
	swc1    $f10, 0x002C($t3)
.L80320368:
	jal     Na_g_8031FB20
	andi    $a1, $s2, 0x00FF
	lbu     $t4, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t4, $f16
	bgez    $t4, .L80320390
	cvt.s.w $f18, $f16
	mtc1    $at, $f6
	nop
	add.s   $f18, $f18, $f6
.L80320390:
	div.s   $f4, $f18, $f26
	lw      $t5, 0x02AC($s0)
	add.s   $f8, $f4, $f0
	swc1    $f8, 0x002C($t5)
.L803203A0:
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031FBE8
	andi    $a2, $s6, 0x00FF
	lw      $t6, 0x02AC($s0)
	b       .L803204A4
	sb      $v0, 0x0003($t6)
.globl L803203BC
L803203BC:
	swc1    $f22, 0x0020($a1)
	li      $at, 0x3F000000
	mtc1    $at, $f10
	lw      $t7, 0x02AC($s0)
	swc1    $f10, 0x0024($t7)
	lw      $t8, 0x02AC($s0)
	b       .L803204A4
	swc1    $f22, 0x002C($t8)
.globl L803203DC
L803203DC:
	mfc1    $a2, $f20
	andi    $a0, $s4, 0x00FF
	jal     Na_g_8031F96C
	andi    $a1, $s2, 0x00FF
	lw      $t9, 0x02AC($s0)
	swc1    $f0, 0x0020($t9)
	lw      $t0, 0x0008($s1)
	lw      $t1, 0x0000($s1)
	lwc1    $f14, 0x0000($t0)
	jal     Na_g_8031F810
	lwc1    $f12, 0x0000($t1)
	lw      $t2, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031FB20
	swc1    $f0, 0x0024($t2)
	lw      $t3, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	andi    $a2, $s6, 0x00FF
	jal     Na_g_8031FBE8
	swc1    $f0, 0x002C($t3)
	lw      $t4, 0x02AC($s0)
	b       .L803204A4
	sb      $v0, 0x0003($t4)
.globl L80320440
L80320440:
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031FBE8
	andi    $a2, $s6, 0x00FF
	lw      $t5, 0x02AC($s0)
	li.u    $a2, 0x3F4CCCCD
	li.l    $a2, 0x3F4CCCCD
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031F96C
	sb      $v0, 0x0003($t5)
	lw      $t6, 0x02AC($s0)
	swc1    $f0, 0x0020($t6)
	lw      $t8, 0x0008($s1)
	lw      $t7, 0x0000($s1)
	lwc1    $f14, 0x0000($t8)
	jal     Na_g_8031F810
	lwc1    $f12, 0x0000($t7)
	lw      $t9, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_g_8031FB20
	swc1    $f0, 0x0024($t9)
	lw      $t1, 0x02AC($s0)
	swc1    $f0, 0x002C($t1)
.L803204A4:
	addiu   $s7, $s7, 0x0001
.L803204A8:
	addiu   $s6, $s6, 0x0001
	andi    $t2, $s7, 0x00FF
	andi    $t0, $s6, 0x00FF
	move    $s7, $t2
	blez    $t2, .L8031FE68
	move    $s6, $t0
	lui     $t3, %hi(Na_g_803331D8)
	addu    $t3, $t3, $s4
	lui     $t5, %hi(_Na_g_bss+0xB08)
	lbu     $t3, %lo(Na_g_803331D8)($t3)
	addu    $t5, $t5, $s4
	lbu     $t5, %lo(_Na_g_bss+0xB08)($t5)
	addiu   $s4, $s4, 0x0001
	addu    $t4, $t0, $t3
	andi    $t7, $s4, 0x00FF
	subu    $s6, $t4, $t5
	slti    $at, $t7, 0x000A
	andi    $t6, $s6, 0x00FF
	move    $s4, $t7
	bnez    $at, .L8031FE4C
	move    $s6, $t6
.L803204FC:
	lw      $ra, 0x006C($sp)
	ldc1    $f20, 0x0018($sp)
	ldc1    $f22, 0x0020($sp)
	ldc1    $f24, 0x0028($sp)
	ldc1    $f26, 0x0030($sp)
	ldc1    $f28, 0x0038($sp)
	ldc1    $f30, 0x0040($sp)
	lw      $s0, 0x0048($sp)
	lw      $s1, 0x004C($sp)
	lw      $s2, 0x0050($sp)
	lw      $s3, 0x0054($sp)
	lw      $s4, 0x0058($sp)
	lw      $s5, 0x005C($sp)
	lw      $s6, 0x0060($sp)
	lw      $s7, 0x0064($sp)
	lw      $s8, 0x0068($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0080

/* void Na_g_80320544(u8, u8, u16) */
Na_g_80320544:
	addiu   $sp, $sp, -0x0028
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	andi    $t0, $a0, 0x00FF
	andi    $t7, $a1, 0x00FF
	move    $a1, $t7
	move    $a0, $t0
	sw      $ra, 0x0014($sp)
	bnez    $t0, .L80320598
	sw      $a2, 0x0030($sp)
	andi    $t8, $t7, 0x007F
	lui     $at, %hi(Na_g_803331AC)
	sb      $t8, %lo(Na_g_803331AC)($at)
	li      $v0, 0x00FF
	lui     $at, %hi(Na_g_80332FC0)
	sb      $v0, %lo(Na_g_80332FC0)($at)
	lui     $at, %hi(Na_g_80332FBC)
	sb      $v0, %lo(Na_g_80332FBC)($at)
	lui     $at, %hi(Na_g_803331B0)
	li      $t9, 0x0002
	sb      $t9, %lo(Na_g_803331B0)($at)
.L80320598:
	la.u    $t3, _Na_g_bss+0x808
	la.l    $t3, _Na_g_bss+0x808
	andi    $t1, $a1, 0x007F
	sll     $t2, $a0, 8
	addu    $v1, $t2, $t3
	sw      $t1, 0x0018($sp)
	move    $v0, $0
	move    $a3, $a1
.L803205B8:
	sll     $t4, $v0, 4
	addiu   $v0, $v0, 0x0001
	andi    $t6, $v0, 0x00FF
	slti    $at, $t6, 0x0010
	addu    $t5, $v1, $t4
	move    $v0, $t6
	bnez    $at, .L803205B8
	sh      $0, 0x000C($t5)
	sll     $t8, $a0, 2
	addu    $t8, $t8, $a0
	sll     $t8, $t8, 6
	lui     $at, %hi(_Na_bss+0x1879)
	addu    $at, $at, $t8
	andi    $t7, $a3, 0x0080
	sb      $t7, %lo(_Na_bss+0x1879)($at)
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     Na_c_80319328
	sw      $t0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	bnez    $a0, .L80320660
	nop
	jal     Na_g_80320F68
	move    $a0, $0
	li      $at, 0x00FF
	beq     $v0, $at, .L80320668
	li      $t9, 0x0004
	mtc1    $v0, $f4
	lui     $at, %hi(_Na_bss+0x187A)
	sb      $t9, %lo(_Na_bss+0x187A)($at)
	bgez    $v0, .L80320648
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L80320648:
	li      $at, 0x42FE0000
	mtc1    $at, $f10
	lui     $at, %hi(_Na_bss+0x1890)
	div.s   $f16, $f6, $f10
	b       .L80320668
	swc1    $f16, %lo(_Na_bss+0x1890)($at)
.L80320660:
	jal     Na_g_8031E5C0
	lhu     $a1, 0x0032($sp)
.L80320668:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void Na_SEQ_fadeout(u8, u16) */
.globl Na_SEQ_fadeout
Na_SEQ_fadeout:
	addiu   $sp, $sp, -0x0018
	andi    $a2, $a0, 0x00FF
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	bnez    $a2, .L803206A0
	andi    $a3, $a1, 0xFFFF
	li      $t7, 0x00FF
	lui     $at, %hi(Na_g_803331AC)
	sb      $t7, %lo(Na_g_803331AC)($at)
.L803206A0:
	move    $a0, $a2
	jal     Na_g_8031E578
	move    $a1, $a3
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_g_803206BC(u8, u8, u16) */
.globl Na_g_803206BC
Na_g_803206BC:
	addiu   $sp, $sp, -0x0028
	sw      $s3, 0x0020($sp)
	sw      $s2, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	andi    $s1, $a0, 0x00FF
	andi    $s2, $a1, 0x00FF
	andi    $s3, $a2, 0xFFFF
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	move    $s0, $0
.L803206F0:
	andi    $a0, $s1, 0x00FF
	andi    $a1, $s0, 0x00FF
	andi    $a2, $s2, 0x00FF
	jal     Na_g_80320734
	andi    $a3, $s3, 0xFFFF
	addiu   $s0, $s0, 0x0001
	andi    $t6, $s0, 0x00FF
	slti    $at, $t6, 0x0010
	bnez    $at, .L803206F0
	move    $s0, $t6
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

/* void Na_g_80320734(u8, u8, u8, u16) */
Na_g_80320734:
	andi    $t6, $a0, 0x00FF
	sll     $t0, $t6, 2
	andi    $t7, $a1, 0x00FF
	addu    $t0, $t0, $t6
	sll     $t0, $t0, 6
	sll     $t1, $t7, 2
	addu    $t2, $t0, $t1
	lui     $v0, %hi(_Na_bss+0x18A4)
	addu    $v0, $v0, $t2
	lw      $v0, %lo(_Na_bss+0x18A4)($v0)
	la.u    $t3, _Na_bss+0x4E38
	sw      $a2, 0x0008($sp)
	andi    $t8, $a2, 0x00FF
	sw      $a3, 0x000C($sp)
	andi    $t9, $a3, 0xFFFF
	la.l    $t3, _Na_bss+0x4E38
	move    $a3, $t9
	move    $a2, $t8
	sw      $a0, 0x0000($sp)
	beq     $t3, $v0, .L80320804
	sw      $a1, 0x0004($sp)
	sll     $t5, $t7, 4
	la.u    $t7, _Na_g_bss+0x808
	sll     $t4, $t6, 8
	mtc1    $a2, $f4
	addu    $t6, $t4, $t5
	la.l    $t7, _Na_g_bss+0x808
	addu    $v1, $t6, $t7
	sh      $t9, 0x000C($v1)
	bgez    $t8, .L803207C0
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L803207C0:
	li      $at, 0x42FE0000
	mtc1    $at, $f10
	lwc1    $f18, 0x001C($v0)
	mtc1    $a3, $f8
	div.s   $f16, $f6, $f10
	li      $at, 0x4F800000
	cvt.s.w $f6, $f8
	bgez    $a3, .L803207F0
	sub.s   $f4, $f16, $f18
	mtc1    $at, $f10
	nop
	add.s   $f6, $f6, $f10
.L803207F0:
	div.s   $f16, $f4, $f6
	sb      $a2, 0x0004($v1)
	swc1    $f16, 0x0000($v1)
	lwc1    $f18, 0x001C($v0)
	swc1    $f18, 0x0008($v1)
.L80320804:
	jr      $ra
	nop

/* void Na_g_8032080C(u8) */
Na_g_8032080C:
	andi    $t6, $a0, 0x00FF
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	la.u    $t8, _Na_bss+0x1878
	li      $at, 0x42FE0000
	sw      $a0, 0x0000($sp)
	la.l    $t8, _Na_bss+0x1878
	sll     $t7, $t7, 6
	la.u    $t1, _Na_g_bss+0x808
	la.u    $t0, _Na_bss+0x4E38
	mtc1    $at, $f0
	move    $a0, $t6
	la.l    $t0, _Na_bss+0x4E38
	la.l    $t1, _Na_g_bss+0x808
	addu    $v1, $t7, $t8
	move    $v0, $0
.L8032084C:
	sll     $t9, $v0, 2
	addu    $a1, $v1, $t9
	lw      $a2, 0x002C($a1)
	sll     $t2, $a0, 8
	addu    $t3, $t1, $t2
	beq     $t0, $a2, .L803208D0
	sll     $t4, $v0, 4
	addu    $a3, $t3, $t4
	lhu     $t5, 0x000C($a3)
	beqzl   $t5, .L803208D4
	addiu   $v0, $v0, 0x0001
	lwc1    $f4, 0x0008($a3)
	lwc1    $f6, 0x0000($a3)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($a3)
	lwc1    $f10, 0x0008($a3)
	swc1    $f10, 0x001C($a2)
	lhu     $t6, 0x000C($a3)
	addiu   $t7, $t6, -0x0001
	andi    $t8, $t7, 0xFFFF
	bnez    $t8, .L803208D0
	sh      $t7, 0x000C($a3)
	lbu     $t9, 0x0004($a3)
	li      $at, 0x4F800000
	mtc1    $t9, $f16
	bgez    $t9, .L803208C4
	cvt.s.w $f18, $f16
	mtc1    $at, $f4
	nop
	add.s   $f18, $f18, $f4
.L803208C4:
	div.s   $f6, $f18, $f0
	lw      $t2, 0x002C($a1)
	swc1    $f6, 0x001C($t2)
.L803208D0:
	addiu   $v0, $v0, 0x0001
.L803208D4:
	andi    $t3, $v0, 0x00FF
	slti    $at, $t3, 0x0010
	bnez    $at, .L8032084C
	move    $v0, $t3
	jr      $ra
	nop

/* void Na_g_803208EC(void) */
Na_g_803208EC:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0024($sp)
	sw      $s2, 0x0020($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     Na_g_8032080C
	move    $a0, $0
	jal     Na_g_8032080C
	li      $a0, 0x0002
	jal     Na_g_80321D9C
	nop
	la.u    $v1, Na_g_803331B0
	la.l    $v1, Na_g_803331B0
	lbu     $v0, 0x0000($v1)
	beqz    $v0, .L80320934
	addiu   $t6, $v0, -0x0001
	b       .L80320944
	sb      $t6, 0x0000($v1)
.L80320934:
	lui     $t7, %hi(Na_g_803331AC)
	lbu     $t7, %lo(Na_g_803331AC)($t7)
	lui     $at, %hi(Na_g_80332FC0)
	sb      $t7, %lo(Na_g_80332FC0)($at)
.L80320944:
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	lui     $t1, %hi(Na_bgmctl_table)
	lui     $t4, %hi(Na_g_80332FC0)
	sll     $t9, $t8, 2
	addu    $t1, $t1, $t9
	lw      $t1, %lo(Na_bgmctl_table)($t1)
	lbu     $t4, %lo(Na_g_80332FC0)($t4)
	lh      $t5, 0x0000($t1)
	bnel    $t4, $t5, .L80320D5C
	lw      $ra, 0x0024($sp)
	lh      $t7, 0x0002($t1)
	li      $s1, 0x0002
	la.u    $t3, scene_index
	andi    $s0, $t7, 0xFF00
	andi    $t8, $s0, 0xFF00
	beqz    $t8, .L80320C6C
	sb      $t7, 0x0057($sp)
	la.u    $t2, object_80361250
	la.u    $a3, player_data
	la.l    $a3, player_data
	la.l    $t2, object_80361250
	la.l    $t3, scene_index
	addiu   $t0, $sp, 0x003C
	addiu   $a2, $sp, 0x0044
.L803209A8:
	move    $v0, $0
	move    $a0, $0
	li      $a1, 0x8000
.L803209B4:
	and     $t9, $a1, $s0
	beqz    $t9, .L803209F8
	move    $v1, $a1
	sll     $t4, $s1, 1
	addu    $t5, $t1, $t4
	lh      $t6, 0x0000($t5)
	sll     $t7, $a0, 1
	addu    $t4, $t0, $a0
	addu    $t8, $a2, $t7
	addiu   $s1, $s1, 0x0001
	addiu   $a0, $a0, 0x0001
	andi    $t9, $s1, 0x00FF
	andi    $t5, $a0, 0x00FF
	sh      $t6, 0x0000($t8)
	move    $s1, $t9
	sb      $v0, 0x0000($t4)
	move    $a0, $t5
.L803209F8:
	addiu   $v0, $v0, 0x0001
	andi    $t7, $v0, 0x00FF
	sra     $a1, $v1, 1
	andi    $t6, $a1, 0xFFFF
	slti    $at, $t7, 0x0008
	move    $v0, $t7
	bnez    $at, .L803209B4
	move    $a1, $t6
	move    $v0, $0
	blez    $a0, .L80320C2C
	move    $v1, $a0
.L80320A24:
	addu    $t8, $t0, $v0
	lbu     $t9, 0x0000($t8)
	sltiu   $at, $t9, 0x0008
	beqz    $at, .L80320C18
	sll     $t9, $t9, 2
	lui     $at, %hi(Na_g_8033978C)
	addu    $at, $at, $t9
	lw      $t9, %lo(Na_g_8033978C)($at)
	jr      $t9
	nop
.globl L80320A4C
L80320A4C:
	lwc1    $f4, 0x003C($a3)
	sll     $t8, $v0, 1
	addu    $t9, $a2, $t8
	trunc.w.s $f6, $f4
	lh      $t4, 0x0000($t9)
	mfc1    $t5, $f6
	nop
	sll     $t7, $t5, 16
	sra     $t6, $t7, 16
	slt     $at, $t6, $t4
	beqzl   $at, .L80320C1C
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t5, $v0, 0x00FF
	b       .L80320C18
	move    $v0, $t5
.globl L80320A8C
L80320A8C:
	lwc1    $f8, 0x0040($a3)
	sll     $t4, $v0, 1
	addu    $t5, $a2, $t4
	trunc.w.s $f10, $f8
	lh      $t7, 0x0000($t5)
	mfc1    $t8, $f10
	nop
	sll     $t9, $t8, 16
	sra     $t6, $t9, 16
	slt     $at, $t6, $t7
	beqzl   $at, .L80320C1C
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t8, $v0, 0x00FF
	b       .L80320C18
	move    $v0, $t8
.globl L80320ACC
L80320ACC:
	lwc1    $f16, 0x0044($a3)
	sll     $t7, $v0, 1
	addu    $t8, $a2, $t7
	trunc.w.s $f18, $f16
	lh      $t9, 0x0000($t8)
	mfc1    $t4, $f18
	nop
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	slt     $at, $t6, $t9
	beqzl   $at, .L80320C1C
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t4, $v0, 0x00FF
	b       .L80320C18
	move    $v0, $t4
.globl L80320B0C
L80320B0C:
	lwc1    $f4, 0x003C($a3)
	sll     $t9, $v0, 1
	addu    $t4, $a2, $t9
	trunc.w.s $f6, $f4
	lh      $t5, 0x0000($t4)
	mfc1    $t7, $f6
	nop
	sll     $t8, $t7, 16
	sra     $t6, $t8, 16
	slt     $at, $t6, $t5
	bnezl   $at, .L80320C1C
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t7, $v0, 0x00FF
	b       .L80320C18
	move    $v0, $t7
.globl L80320B4C
L80320B4C:
	lwc1    $f8, 0x0040($a3)
	sll     $t5, $v0, 1
	addu    $t7, $a2, $t5
	trunc.w.s $f10, $f8
	lh      $t8, 0x0000($t7)
	mfc1    $t9, $f10
	nop
	sll     $t4, $t9, 16
	sra     $t6, $t4, 16
	slt     $at, $t6, $t8
	bnezl   $at, .L80320C1C
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t9, $v0, 0x00FF
	b       .L80320C18
	move    $v0, $t9
.globl L80320B8C
L80320B8C:
	lwc1    $f16, 0x0044($a3)
	sll     $t8, $v0, 1
	addu    $t9, $a2, $t8
	trunc.w.s $f18, $f16
	lh      $t4, 0x0000($t9)
	mfc1    $t5, $f18
	nop
	sll     $t7, $t5, 16
	sra     $t6, $t7, 16
	slt     $at, $t6, $t4
	bnezl   $at, .L80320C1C
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t5, $v0, 0x00FF
	b       .L80320C18
	move    $v0, $t5
.globl L80320BCC
L80320BCC:
	sll     $t8, $v0, 1
	addu    $t9, $a2, $t8
	lh      $t6, 0x0000($t9)
	lh      $t7, 0x0000($t3)
	beql    $t7, $t6, .L80320C1C
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t4, $v0, 0x00FF
	b       .L80320C18
	move    $v0, $t4
.globl L80320BF4
L80320BF4:
	sll     $t8, $v0, 1
	addu    $t9, $a2, $t8
	lh      $t7, 0x0000($t9)
	lh      $t5, 0x0000($t2)
	beql    $t5, $t7, .L80320C1C
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t6, $v0, 0x00FF
	move    $v0, $t6
.L80320C18:
	addiu   $v0, $v0, 0x0001
.L80320C1C:
	andi    $t4, $v0, 0x00FF
	slt     $at, $t4, $v1
	bnez    $at, .L80320A24
	move    $v0, $t4
.L80320C2C:
	bne     $v1, $v0, .L80320C3C
	sll     $t8, $s1, 1
	b       .L80320C60
	move    $v1, $0
.L80320C3C:
	addu    $t9, $t1, $t8
	lh      $t7, 0x0000($t9)
	addiu   $s1, $s1, 0x0001
	andi    $t6, $s1, 0x00FF
	move    $v1, $t7
	andi    $t5, $v1, 0xFF00
	move    $v1, $t5
	move    $s1, $t6
	sb      $t7, 0x0057($sp)
.L80320C60:
	andi    $t4, $v1, 0xFF00
	bnez    $t4, .L803209A8
	move    $s0, $v1
.L80320C6C:
	lui     $v0, %hi(Na_g_80332FBC)
	lbu     $v0, %lo(Na_g_80332FBC)($v0)
	lbu     $t8, 0x0057($sp)
	li      $at, 0x00FF
	move    $s1, $0
	beql    $t8, $v0, .L80320D5C
	lw      $ra, 0x0024($sp)
	bne     $v0, $at, .L80320CBC
	li      $v1, 0x0001
	sll     $t7, $t8, 2
	subu    $t7, $t7, $t8
	la.u    $t6, Na_bgmctl_data
	li      $t9, 0x0001
	la.l    $t6, Na_bgmctl_data
	sll     $t7, $t7, 2
	li      $t5, 0x0001
	sh      $t9, 0x003A($sp)
	sh      $t5, 0x0038($sp)
	b       .L80320CE8
	addu    $s2, $t7, $t6
.L80320CBC:
	lbu     $t4, 0x0057($sp)
	la.u    $t5, Na_bgmctl_data
	la.l    $t5, Na_bgmctl_data
	sll     $t9, $t4, 2
	subu    $t9, $t9, $t4
	sll     $t9, $t9, 2
	addu    $s2, $t9, $t5
	lh      $t8, 0x0004($s2)
	lh      $t7, 0x000A($s2)
	sh      $t8, 0x003A($sp)
	sh      $t7, 0x0038($sp)
.L80320CE8:
	lh      $t6, 0x0000($s2)
	move    $s0, $v1
	move    $a0, $0
	and     $t4, $t6, $v1
	beqz    $t4, .L80320D0C
	andi    $a1, $s1, 0x00FF
	lbu     $a2, 0x0003($s2)
	jal     Na_g_80320734
	lhu     $a3, 0x003A($sp)
.L80320D0C:
	lh      $t9, 0x0006($s2)
	move    $a0, $0
	andi    $a1, $s1, 0x00FF
	and     $t5, $t9, $s0
	beqz    $t5, .L80320D2C
	lhu     $a3, 0x0038($sp)
	jal     Na_g_80320734
	lbu     $a2, 0x0009($s2)
.L80320D2C:
	addiu   $s1, $s1, 0x0001
	andi    $t7, $s1, 0x00FF
	sll     $v1, $s0, 1
	slti    $at, $t7, 0x0010
	andi    $t8, $v1, 0xFFFF
	move    $s1, $t7
	bnez    $at, .L80320CE8
	move    $v1, $t8
	lbu     $t6, 0x0057($sp)
	lui     $at, %hi(Na_g_80332FBC)
	sb      $t6, %lo(Na_g_80332FBC)($at)
	lw      $ra, 0x0024($sp)
.L80320D5C:
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

/* void Na_g_80320D70(u8, u32, s8) */
Na_g_80320D70:
	sll     $t7, $a2, 24
	sra     $t8, $t7, 24
	sw      $a0, 0x0000($sp)
	andi    $t6, $a0, 0x00FF
	sw      $a2, 0x0008($sp)
	move    $a2, $t8
	bgez    $t8, .L80320D9C
	move    $a0, $t6
	subu    $a2, $0, $t8
	sll     $t9, $a2, 24
	sra     $a2, $t9, 24
.L80320D9C:
	sll     $t1, $a0, 2
	addu    $t1, $t1, $a0
	la.u    $t2, _Na_bss+0x1878
	li      $at, 0x3F800000
	la.l    $t2, _Na_bss+0x1878
	sll     $t1, $t1, 6
	la.u    $a3, _Na_bss+0x4E38
	mtc1    $at, $f2
	la.l    $a3, _Na_bss+0x4E38
	addu    $v1, $t1, $t2
	move    $v0, $0
.L80320DC8:
	sll     $t3, $v0, 2
	addu    $t4, $v1, $t3
	lw      $a0, 0x002C($t4)
	addiu   $v0, $v0, 0x0001
	andi    $t8, $v0, 0x00FF
	beq     $a3, $a0, .L80320E24
	srl     $t7, $a1, 2
	andi    $t5, $a1, 0x0003
	bnezl   $t5, .L80320DFC
	mtc1    $a2, $f4
	b       .L80320E24
	swc1    $f2, 0x001C($a0)
	mtc1    $a2, $f4
.L80320DFC:
	li      $at, 0x42FE0000
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	andi    $t6, $a1, 0x0001
	beqz    $t6, .L80320E1C
	div.s   $f0, $f6, $f8
	b       .L80320E24
	swc1    $f0, 0x001C($a0)
.L80320E1C:
	sub.s   $f10, $f2, $f0
	swc1    $f10, 0x001C($a0)
.L80320E24:
	slti    $at, $t8, 0x0010
	move    $v0, $t8
	bnez    $at, .L80320DC8
	move    $a1, $t7
	jr      $ra
	nop

/* void Na_SEQ_mute(u8, u16, u8) */
.globl Na_SEQ_mute
Na_SEQ_mute:
	addiu   $sp, $sp, -0x0018
	sw      $a0, 0x0018($sp)
	sw      $a2, 0x0020($sp)
	andi    $a3, $a0, 0x00FF
	andi    $t7, $a2, 0x00FF
	move    $a2, $t7
	move    $a0, $a3
	sw      $ra, 0x0014($sp)
	bnez    $a3, .L80320E80
	sw      $a1, 0x001C($sp)
	li      $t8, 0x0001
	lui     $at, %hi(_Na_g_bss+0x36F3)
	sb      $t8, %lo(_Na_g_bss+0x36F3)($at)
	jal     Na_g_80320F68
	lhu     $a0, 0x001E($sp)
	b       .L80320EB8
	lw      $ra, 0x0014($sp)
.L80320E80:
	sll     $t9, $a0, 2
	addu    $t9, $t9, $a0
	sll     $t9, $t9, 6
	lui     $t0, %hi(_Na_bss+0x1878)
	addu    $t0, $t0, $t9
	lw      $t0, %lo(_Na_bss+0x1878)($t0)
	li      $at, 0x0001
	move    $a0, $a3
	srl     $t1, $t0, 31
	bnel    $t1, $at, .L80320EB8
	lw      $ra, 0x0014($sp)
	jal     Na_g_8031E60C
	lhu     $a1, 0x001E($sp)
	lw      $ra, 0x0014($sp)
.L80320EB8:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_SEQ_unmute(u8, u16) */
.globl Na_SEQ_unmute
Na_SEQ_unmute:
	addiu   $sp, $sp, -0x0018
	andi    $t6, $a0, 0x00FF
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_Na_g_bss+0x36F3)
	move    $a0, $t6
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x001C($sp)
	andi    $a3, $a1, 0xFFFF
	sb      $0, %lo(_Na_g_bss+0x36F3)($at)
	bnez    $t6, .L80320F24
	move    $a2, $t6
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 6
	lui     $t8, %hi(_Na_bss+0x187A)
	addu    $t8, $t8, $t7
	lbu     $t8, %lo(_Na_bss+0x187A)($t8)
	li      $at, 0x0001
	beql    $t8, $at, .L80320F5C
	lw      $ra, 0x0014($sp)
	jal     Na_g_80320F68
	andi    $a0, $a3, 0xFFFF
	b       .L80320F5C
	lw      $ra, 0x0014($sp)
.L80320F24:
	sll     $t9, $a0, 2
	addu    $t9, $t9, $a0
	sll     $t9, $t9, 6
	lui     $t0, %hi(_Na_bss+0x1878)
	addu    $t0, $t0, $t9
	lw      $t0, %lo(_Na_bss+0x1878)($t0)
	li      $at, 0x0001
	move    $a0, $a2
	srl     $t1, $t0, 31
	bnel    $t1, $at, .L80320F5C
	lw      $ra, 0x0014($sp)
	jal     Na_g_8031E6A4
	move    $a1, $a3
	lw      $ra, 0x0014($sp)
.L80320F5C:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* u8 Na_g_80320F68(u16) */
Na_g_80320F68:
	lui     $t0, %hi(Na_g_803331AC)
	lbu     $t0, %lo(Na_g_803331AC)($t0)
	addiu   $sp, $sp, -0x0020
	li      $a1, 0x00FF
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	beq     $a1, $t0, .L80320F94
	li      $a2, 0x00FF
	li      $at, 0x001A
	bne     $t0, $at, .L80320F9C
	la.u    $a3, _Na_bss+0x1878
.L80320F94:
	b       .L803210C4
	li      $v0, 0x00FF
.L80320F9C:
	la.l    $a3, _Na_bss+0x1878
	lwc1    $f6, 0x0020($a3)
	mtc1    $0, $f4
	lhu     $t6, 0x0022($sp)
	lui     $v0, %hi(_Na_g_bss+0x36F2)
	c.eq.s  $f4, $f6
	lui     $t9, %hi(_Na_g_bss+0x36F3)
	lui     $t1, %hi(Na_g_80333220)
	bc1f    .L80320FD4
	nop
	beqz    $t6, .L80320FD4
	nop
	lwc1    $f8, 0x0018($a3)
	swc1    $f8, 0x0020($a3)
.L80320FD4:
	lbu     $v0, %lo(_Na_g_bss+0x36F2)($v0)
	beqz    $v0, .L80320FEC
	nop
	move    $a2, $v0
	andi    $t7, $a2, 0x007F
	move    $a2, $t7
.L80320FEC:
	lui     $v0, %hi(Na_g_8033322C)
	lbu     $v0, %lo(Na_g_8033322C)($v0)
	beqz    $v0, .L8032100C
	andi    $t8, $v0, 0x007F
	slt     $at, $t8, $a2
	beqz    $at, .L8032100C
	nop
	andi    $a2, $t8, 0x00FF
.L8032100C:
	lbu     $t9, %lo(_Na_g_bss+0x36F3)($t9)
	slti    $at, $a2, 0x0029
	beqz    $t9, .L80321028
	nop
	bnez    $at, .L80321028
	nop
	li      $a2, 0x0028
.L80321028:
	lhu     $t1, %lo(Na_g_80333220)($t1)
	slti    $at, $a2, 0x0015
	beqzl   $t1, .L80321048
	lw      $t2, 0x0000($a3)
	bnezl   $at, .L80321048
	lw      $t2, 0x0000($a3)
	li      $a2, 0x0014
	lw      $t2, 0x0000($a3)
.L80321048:
	li      $at, 0x0001
	srl     $t3, $t2, 31
	bnel    $t3, $at, .L803210C4
	move    $v0, $a2
	beq     $a1, $a2, .L80321078
	lui     $t4, %hi(Na_BGM_vol)
	move    $a0, $0
	lhu     $a1, 0x0022($sp)
	jal     Na_g_8031E710
	sb      $a2, 0x001F($sp)
	b       .L803210C0
	lbu     $a2, 0x001F($sp)
.L80321078:
	addu    $t4, $t4, $t0
	lbu     $t4, %lo(Na_BGM_vol)($t4)
	li      $at, 0x4F800000
	mtc1    $t4, $f10
	bgez    $t4, .L8032109C
	cvt.s.w $f16, $f10
	mtc1    $at, $f18
	nop
	add.s   $f16, $f16, $f18
.L8032109C:
	li      $at, 0x42FE0000
	mtc1    $at, $f4
	move    $a0, $0
	lhu     $a1, 0x0022($sp)
	div.s   $f6, $f16, $f4
	sb      $a2, 0x001F($sp)
	jal     Na_g_8031E6A4
	swc1    $f6, 0x0020($a3)
	lbu     $a2, 0x001F($sp)
.L803210C0:
	move    $v0, $a2
.L803210C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void Na_pause(u8) */
.globl Na_pause
Na_pause:
	move    $a1, $a0
	sw      $a0, 0x0000($sp)
	la.u    $a0, _Na_bss+0x1878
	sll     $t7, $a1, 5
	andi    $a1, $t7, 0x0020
	la.l    $a0, _Na_bss+0x1878
	move    $v0, $0
	li      $a2, 0x0140
.L803210F4:
	multu   $v0, $a2
	addiu   $v0, $v0, 0x0001
	andi    $t3, $v0, 0x00FF
	slti    $at, $t3, 0x0003
	move    $v0, $t3
	mflo    $t9
	addu    $v1, $a0, $t9
	lbu     $t0, 0x0000($v1)
	andi    $t1, $t0, 0xFFDF
	or      $t2, $a1, $t1
	bnez    $at, .L803210F4
	sb      $t2, 0x0000($v1)
	jr      $ra
	nop

/* void Na_init(void) */
.globl Na_init
Na_init:
	addiu   $sp, $sp, -0x0018
	la.u    $t3, Na_g_803331CC
	la.u    $t1, Na_g_803331C0
	la.u    $a0, Na_g_803331B4
	sw      $ra, 0x0014($sp)
	la.l    $a0, Na_g_803331B4
	la.l    $t1, Na_g_803331C0
	la.l    $t3, Na_g_803331CC
	move    $a1, $0
	li      $t2, 0x0001
	li      $t0, 0x00FF
	li      $a3, 0x001C
.L8032115C:
	sll     $t6, $a1, 3
	addu    $t6, $t6, $a1
	sll     $t6, $t6, 2
	subu    $t6, $t6, $a1
	la.u    $t7, _Na_g_bss+0xB28
	la.l    $t7, _Na_g_bss+0xB28
	sll     $t6, $t6, 5
	addu    $a2, $t6, $t7
	move    $v0, $0
.L80321180:
	multu   $v0, $a3
	addiu   $v0, $v0, 0x0001
	andi    $t4, $v0, 0x00FF
	slti    $at, $t4, 0x0028
	move    $v0, $t4
	mflo    $t8
	addu    $t9, $a2, $t8
	bnez    $at, .L80321180
	sb      $0, 0x0018($t9)
	la.u    $t5, _Na_g_bss+0xB18
	la.l    $t5, _Na_g_bss+0xB18
	addu    $v1, $a1, $t5
	move    $v0, $0
.L803211B4:
	addu    $t6, $v1, $v0
	addiu   $v0, $v0, 0x0001
	andi    $t7, $v0, 0x00FF
	move    $v0, $t7
	blez    $t7, .L803211B4
	sb      $t0, 0x0000($t6)
	addu    $t8, $a0, $a1
	addu    $t9, $t1, $a1
	addu    $t4, $t3, $a1
	addiu   $a1, $a1, 0x0001
	andi    $t5, $a1, 0x00FF
	sb      $0, 0x0000($t8)
	slti    $at, $t5, 0x000A
	sb      $t2, 0x0000($t9)
	move    $a1, $t5
	bnez    $at, .L8032115C
	sb      $0, 0x0000($t4)
	la.u    $t1, _Na_g_bss+0xB28
	la.l    $t1, _Na_g_bss+0xB28
	move    $a1, $0
	li      $t2, 0x0460
.L80321208:
	multu   $a1, $t2
	sll     $t7, $a1, 3
	addu    $t7, $t7, $a1
	sll     $t7, $t7, 2
	subu    $t7, $t7, $a1
	sll     $t7, $t7, 5
	addu    $a2, $t1, $t7
	li      $v0, 0x0001
	li      $v1, 0x0001
	mflo    $t6
	addu    $a0, $t1, $t6
	sb      $t0, 0x001A($a0)
	sb      $t0, 0x001B($a0)
.L8032123C:
	multu   $v0, $a3
	addiu   $v0, $v0, 0x0001
	andi    $t5, $v0, 0x00FF
	slti    $at, $t5, 0x0027
	addiu   $t9, $v1, -0x0001
	addiu   $t4, $v1, 0x0001
	move    $v1, $t5
	move    $v0, $t5
	mflo    $t8
	addu    $a0, $a2, $t8
	sb      $t9, 0x001A($a0)
	bnez    $at, .L8032123C
	sb      $t4, 0x001B($a0)
	multu   $t5, $a3
	addiu   $a1, $a1, 0x0001
	andi    $t8, $a1, 0x00FF
	slti    $at, $t8, 0x000A
	addiu   $t7, $t5, -0x0001
	move    $a1, $t8
	mflo    $t6
	addu    $a0, $a2, $t6
	sb      $t7, 0x001A($a0)
	bnez    $at, .L80321208
	sb      $t0, 0x001B($a0)
	move    $v0, $0
.L803212A0:
	la.u    $t4, _Na_g_bss+0x808
	la.l    $t4, _Na_g_bss+0x808
	sll     $t9, $v0, 8
	addu    $v1, $t9, $t4
	move    $a1, $0
.L803212B4:
	sll     $t5, $a1, 4
	addiu   $a1, $a1, 0x0001
	andi    $t7, $a1, 0x00FF
	slti    $at, $t7, 0x0010
	addu    $t6, $v1, $t5
	move    $a1, $t7
	bnez    $at, .L803212B4
	sh      $0, 0x000C($t6)
	addiu   $v0, $v0, 0x0001
	andi    $t8, $v0, 0x00FF
	slti    $at, $t8, 0x0003
	bnez    $at, .L803212A0
	move    $v0, $t8
	la.u    $v0, _Na_g_bss+0x36F8
	la.l    $v0, _Na_g_bss+0x36F8
	move    $a1, $0
.L803212F4:
	sll     $t9, $a1, 1
	addiu   $a1, $a1, 0x0001
	andi    $t5, $a1, 0x00FF
	slti    $at, $t5, 0x0006
	addu    $t4, $v0, $t9
	move    $a1, $t5
	bnez    $at, .L803212F4
	sb      $0, 0x0001($t4)
	li      $a0, 0x0002
	jal     Na_IO_unlock
	li      $a1, 0xFFFF
	lui     $at, %hi(Na_g_80333228)
	sh      $0, %lo(Na_g_80333228)($at)
	lui     $at, %hi(_Na_g_bss+0x36F2)
	sb      $0, %lo(_Na_g_bss+0x36F2)($at)
	lui     $at, %hi(_Na_g_bss+0x36F3)
	sb      $0, %lo(_Na_g_bss+0x36F3)($at)
	lui     $at, %hi(Na_g_80333220)
	sh      $0, %lo(Na_g_80333220)($at)
	lui     $at, %hi(Na_g_80333224)
	sb      $0, %lo(Na_g_80333224)($at)
	li      $t0, 0x00FF
	lui     $at, %hi(Na_g_803331AC)
	sb      $t0, %lo(Na_g_803331AC)($at)
	lui     $at, %hi(_Na_bss+0x5DDF)
	sb      $0, %lo(_Na_bss+0x5DDF)($at)
	lui     $at, %hi(Na_g_80333238)
	sb      $0, %lo(Na_g_80333238)($at)
	lui     $at, %hi(Na_g_8033322C)
	sb      $0, %lo(Na_g_8033322C)($at)
	lui     $at, %hi(Na_g_80333230)
	sb      $0, %lo(Na_g_80333230)($at)
	lui     $at, %hi(Na_g_80333234)
	sb      $0, %lo(Na_g_80333234)($at)
	lw      $ra, 0x0014($sp)
	lui     $at, %hi(Na_g_80332F40)
	sb      $0, %lo(Na_g_80332F40)($at)
	lui     $at, %hi(Na_g_80332F44)
	sb      $0, %lo(Na_g_80332F44)($at)
	jr      $ra
	addiu   $sp, $sp, 0x0018

/* void Na_g_80321398(u8, u8 *, u8 *, u8 *) */
Na_g_80321398:
	andi    $t6, $a0, 0x00FF
	lui     $t0, %hi(Na_g_803331D8)
	addu    $t0, $t0, $t6
	lbu     $t0, %lo(Na_g_803331D8)($t0)
	sw      $a0, 0x0000($sp)
	move    $a0, $t6
	sw      $a1, 0x0004($sp)
	move    $v0, $0
	blez    $t0, .L803213FC
	move    $v1, $0
	la.u    $t7, _Na_g_bss+0xB18
	la.l    $t7, _Na_g_bss+0xB18
	addu    $a1, $t6, $t7
	li      $t1, 0x00FF
.L803213D0:
	addu    $t8, $a1, $v1
	lbu     $t9, 0x0000($t8)
	addiu   $v1, $v1, 0x0001
	andi    $t3, $v1, 0x00FF
	beq     $t1, $t9, .L803213F4
	slt     $at, $t3, $t0
	addiu   $v0, $v0, 0x0001
	andi    $t2, $v0, 0x00FF
	move    $v0, $t2
.L803213F4:
	bnez    $at, .L803213D0
	move    $v1, $t3
.L803213FC:
	lw      $t4, 0x0004($sp)
	lui     $t5, %hi(Na_g_803331CC)
	addu    $t5, $t5, $a0
	sb      $v0, 0x0000($t4)
	lbu     $t5, %lo(Na_g_803331CC)($t5)
	lui     $v1, %hi(_Na_g_bss+0xB18)
	addu    $v1, $v1, $a0
	sb      $t5, 0x0000($a2)
	lbu     $v1, %lo(_Na_g_bss+0xB18)($v1)
	li      $t1, 0x00FF
	sll     $t6, $a0, 3
	beq     $t1, $v1, .L80321468
	li      $t3, 0x00FF
	addu    $t6, $t6, $a0
	sll     $t6, $t6, 2
	sll     $t7, $v1, 3
	subu    $t7, $t7, $v1
	subu    $t6, $t6, $a0
	sll     $t6, $t6, 5
	sll     $t7, $t7, 2
	addu    $t8, $t6, $t7
	lui     $t9, %hi(_Na_g_bss+0xB3C)
	addu    $t9, $t9, $t8
	lw      $t9, %lo(_Na_g_bss+0xB3C)($t9)
	srl     $t2, $t9, 16
	jr      $ra
	sb      $t2, 0x0000($a3)
.L80321468:
	sb      $t3, 0x0000($a3)
	jr      $ra
	nop

/* void Na_g_80321474(u32, f32 *) */
.globl Na_g_80321474
Na_g_80321474:
	addiu   $sp, $sp, -0x0038
	sw      $s2, 0x001C($sp)
	li      $at, 0xF0000000
	and     $s2, $a0, $at
	srl     $t6, $s2, 28
	andi    $t7, $t6, 0x00FF
	sll     $t8, $t7, 3
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	subu    $t8, $t8, $t7
	la.u    $t9, _Na_g_bss+0xB28
	la.l    $t9, _Na_g_bss+0xB28
	sll     $t8, $t8, 5
	sw      $ra, 0x0034($sp)
	sw      $s7, 0x0030($sp)
	sw      $s6, 0x002C($sp)
	sw      $s5, 0x0028($sp)
	sw      $s4, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	addu    $t0, $t8, $t9
	lbu     $s1, 0x001B($t0)
	li      $s6, 0x00FF
	move    $s5, $a1
	beq     $s6, $s1, .L80321558
	move    $s2, $t7
	sll     $t2, $t7, 3
	addu    $t2, $t2, $t7
	sll     $t2, $t2, 2
	subu    $t2, $t2, $t7
	srl     $s3, $a0, 16
	andi    $t1, $s3, 0xFFFF
	sll     $t2, $t2, 5
	addu    $s4, $t2, $t9
	move    $s3, $t1
	li      $s7, 0x001C
.L80321508:
	multu   $s1, $s7
	mflo    $t3
	addu    $s0, $s4, $t3
	lw      $t4, 0x0014($s0)
	srl     $t5, $t4, 16
	andi    $t6, $t5, 0xFFFF
	bnel    $s3, $t6, .L80321550
	lbu     $s1, 0x001B($s0)
	lw      $t7, 0x0000($s0)
	andi    $a0, $s2, 0x00FF
	bnel    $s5, $t7, .L80321550
	lbu     $s1, 0x001B($s0)
	jal     Na_g_8031EF6C
	andi    $a1, $s1, 0x00FF
	sw      $0, 0x0014($s0)
	b       .L80321550
	li      $s1, 0x00FF
	lbu     $s1, 0x001B($s0)
.L80321550:
	bne     $s6, $s1, .L80321508
	nop
.L80321558:
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	lw      $s4, 0x0024($sp)
	lw      $s5, 0x0028($sp)
	lw      $s6, 0x002C($sp)
	lw      $s7, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

/* void Na_g_80321584(f32 *) */
.globl Na_g_80321584
Na_g_80321584:
	addiu   $sp, $sp, -0x0038
	sw      $s6, 0x002C($sp)
	sw      $s7, 0x0030($sp)
	sw      $s5, 0x0028($sp)
	sw      $s4, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s2, 0x001C($sp)
	la.u    $s6, _Na_g_bss+0xB28
	move    $s4, $a0
	sw      $ra, 0x0034($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	la.l    $s6, _Na_g_bss+0xB28
	move    $s2, $0
	li      $s3, 0x00FF
	li      $s5, 0x001C
	li      $s7, 0x0460
.L803215C8:
	multu   $s2, $s7
	sll     $t8, $s2, 3
	addu    $t8, $t8, $s2
	sll     $t8, $t8, 2
	subu    $t8, $t8, $s2
	sll     $t8, $t8, 5
	addu    $s1, $s6, $t8
	mflo    $t6
	addu    $t7, $s6, $t6
	lbu     $a1, 0x001B($t7)
	beql    $s3, $a1, .L8032162C
	addiu   $s2, $s2, 0x0001
.L803215F8:
	multu   $a1, $s5
	mflo    $t9
	addu    $s0, $s1, $t9
	lw      $t0, 0x0000($s0)
	bnel    $s4, $t0, .L80321620
	lbu     $a1, 0x001B($s0)
	jal     Na_g_8031EF6C
	andi    $a0, $s2, 0x00FF
	sw      $0, 0x0014($s0)
	lbu     $a1, 0x001B($s0)
.L80321620:
	bne     $s3, $a1, .L803215F8
	nop
	addiu   $s2, $s2, 0x0001
.L8032162C:
	andi    $t1, $s2, 0x00FF
	slti    $at, $t1, 0x000A
	bnez    $at, .L803215C8
	move    $s2, $t1
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	lw      $s4, 0x0024($sp)
	lw      $s5, 0x0028($sp)
	lw      $s6, 0x002C($sp)
	lw      $s7, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

/* void Na_g_80321668(u8) */
Na_g_80321668:
	addiu   $sp, $sp, -0x0030
	sw      $s1, 0x001C($sp)
	andi    $s1, $a0, 0x00FF
	sll     $t6, $s1, 3
	addu    $t6, $t6, $s1
	sll     $t6, $t6, 2
	subu    $t6, $t6, $s1
	la.u    $t7, _Na_g_bss+0xB28
	la.l    $t7, _Na_g_bss+0xB28
	sll     $t6, $t6, 5
	sw      $ra, 0x002C($sp)
	sw      $s4, 0x0028($sp)
	sw      $s3, 0x0024($sp)
	sw      $s2, 0x0020($sp)
	sw      $s0, 0x0018($sp)
	sw      $a0, 0x0030($sp)
	addu    $t8, $t6, $t7
	lbu     $s0, 0x001B($t8)
	li      $s3, 0x00FF
	sll     $t9, $s1, 3
	beq     $s3, $s0, .L803216FC
	addu    $t9, $t9, $s1
	sll     $t9, $t9, 2
	subu    $t9, $t9, $s1
	sll     $t9, $t9, 5
	addu    $s2, $t9, $t7
	li      $s4, 0x001C
	andi    $a0, $s1, 0x00FF
.L803216D8:
	jal     Na_g_8031EF6C
	andi    $a1, $s0, 0x00FF
	multu   $s0, $s4
	mflo    $t0
	addu    $v0, $s2, $t0
	lbu     $s0, 0x001B($v0)
	sw      $0, 0x0014($v0)
	bnel    $s3, $s0, .L803216D8
	andi    $a0, $s1, 0x00FF
.L803216FC:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s4, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

/* void Na_SE_clear(void) */
.globl Na_SE_clear
Na_SE_clear:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     Na_g_80321668
	li      $a0, 0x0001
	jal     Na_g_80321668
	li      $a0, 0x0004
	jal     Na_g_80321668
	li      $a0, 0x0006
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_IO_lock(u8, u16) */
.globl Na_IO_lock
Na_IO_lock:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	andi    $t6, $a1, 0xFFFF
	la.u    $a0, Na_IO_status
	move    $a1, $t6
	la.l    $a0, Na_IO_status
	move    $v0, $0
	li      $a2, 0x0001
.L8032176C:
	andi    $t7, $a1, 0x0001
	beqz    $t7, .L80321780
	move    $v1, $a1
	addu    $t8, $a0, $v0
	sb      $a2, 0x0000($t8)
.L80321780:
	addiu   $v0, $v0, 0x0001
	andi    $t0, $v0, 0x00FF
	sra     $a1, $v1, 1
	slti    $at, $t0, 0x000A
	andi    $t9, $a1, 0xFFFF
	move    $v0, $t0
	bnez    $at, .L8032176C
	move    $a1, $t9
	jr      $ra
	nop

/* void Na_g_803217A8(void) */
Na_g_803217A8:
	addiu   $sp, $sp, -0x0028
	sw      $s1, 0x001C($sp)
	sw      $s2, 0x0020($sp)
	sw      $s0, 0x0018($sp)
	la.u    $s1, _Na_bss+0x1878
	sw      $ra, 0x0024($sp)
	la.l    $s1, _Na_bss+0x1878
	move    $s0, $0
	li      $s2, 0x0140
.L803217CC:
	multu   $s0, $s2
	mflo    $t6
	addu    $a0, $s1, $t6
	jal     Na_f_8031BE44
	nop
	addiu   $s0, $s0, 0x0001
	andi    $t7, $s0, 0x00FF
	slti    $at, $t7, 0x0003
	bnez    $at, .L803217CC
	move    $s0, $t7
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

/* void Na_IO_unlock(u8, u16) */
.globl Na_IO_unlock
Na_IO_unlock:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	andi    $t6, $a1, 0xFFFF
	la.u    $a0, Na_IO_status
	move    $a1, $t6
	la.l    $a0, Na_IO_status
	move    $v0, $0
.L80321828:
	andi    $t7, $a1, 0x0001
	beqz    $t7, .L8032183C
	move    $v1, $a1
	addu    $t8, $a0, $v0
	sb      $0, 0x0000($t8)
.L8032183C:
	addiu   $v0, $v0, 0x0001
	andi    $t0, $v0, 0x00FF
	sra     $a1, $v1, 1
	slti    $at, $t0, 0x000A
	andi    $t9, $a1, 0xFFFF
	move    $v0, $t0
	bnez    $at, .L80321828
	move    $a1, $t9
	jr      $ra
	nop

/* u8 Na_g_80321864(u8, u8, u8) */
Na_g_80321864:
	andi    $t6, $a0, 0x00FF
	sll     $t9, $t6, 2
	andi    $t7, $a1, 0x00FF
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 6
	sll     $t0, $t7, 2
	addu    $t1, $t9, $t0
	lui     $v0, %hi(_Na_bss+0x18A4)
	addu    $v0, $v0, $t1
	lw      $v0, %lo(_Na_bss+0x18A4)($v0)
	la.u    $t2, _Na_bss+0x4E38
	sw      $a2, 0x0008($sp)
	andi    $t8, $a2, 0x00FF
	la.l    $t2, _Na_bss+0x4E38
	move    $a2, $t8
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	beq     $t2, $v0, .L803218D0
	move    $v1, $0
	lbu     $t6, 0x0000($v0)
	move    $t3, $t8
	sll     $t4, $t3, 4
	andi    $t5, $t4, 0x0010
	andi    $t7, $t6, 0xFFEF
	or      $t8, $t5, $t7
	sb      $t8, 0x0000($v0)
	andi    $v1, $a2, 0x00FF
.L803218D0:
	jr      $ra
	move    $v0, $v1

/* void Na_g_803218D8(u8, u8) */
.globl Na_g_803218D8
Na_g_803218D8:
	andi    $t6, $a0, 0x00FF
	lui     $at, %hi(_Na_g_bss+0x36E8)
	addu    $at, $at, $t6
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	jr      $ra
	sb      $a1, %lo(_Na_g_bss+0x36E8)($at)

/* void Na_g_803218F4(u8) */
.globl Na_g_803218F4
Na_g_803218F4:
	addiu   $sp, $sp, -0x0028
	andi    $v0, $a0, 0x00FF
	sw      $a0, 0x0028($sp)
	slti    $at, $v0, 0x00AF # 0x00AA
	move    $a0, $v0
	bnez    $at, .L80321918
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	move    $v0, $0
.L80321918:
	lui     $v1, %hi(Na_msg_se_table)
	addu    $v1, $v1, $a0
	lbu     $v1, %lo(Na_msg_se_table)($v1)
	li      $at, 0x00FF
	lui     $a0, %hi(Na_msg_se_data)
	beq     $v1, $at, .L80321978
	sll     $t7, $v1, 2
	addu    $a0, $a0, $t7
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	lw      $a0, %lo(Na_msg_se_data)($a0)
	sw      $v0, 0x0020($sp)
	jal     Na_SE_play
	sw      $v1, 0x001C($sp)
	lw      $a2, 0x001C($sp)
	li      $at, 0x0002
	lw      $v0, 0x0020($sp)
	bne     $a2, $at, .L80321978
	li      $a0, 0x0001
	li      $a1, 0x0010
	move    $a2, $0
	jal     Na_g_80320544
	sw      $v0, 0x0020($sp)
	lw      $v0, 0x0020($sp)
.L80321978:
	li      $at, 0x000A
	beq     $v0, $at, .L80321994
	li      $at, 0x000B
	beq     $v0, $at, .L80321994
	li      $at, 0x000C
	bnel    $v0, $at, .L803219A0
	lw      $ra, 0x0014($sp)
.L80321994:
	jal     Na_g_803220F0
	nop
	lw      $ra, 0x0014($sp)
.L803219A0:
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void Na_BGM_play(u8, u16, u16) */
.globl Na_BGM_play
Na_BGM_play:
	addiu   $sp, $sp, -0x0030
	sw      $a0, 0x0030($sp)
	andi    $t6, $a0, 0x00FF
	move    $a0, $t6
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	beqz    $t6, .L803219E8
	move    $t1, $0
	lhu     $t7, 0x0036($sp)
	lhu     $a2, 0x003A($sp)
	jal     Na_g_80320544
	andi    $a1, $t7, 0x00FF
	b       .L80321BA0
	lw      $ra, 0x0014($sp)
.L803219E8:
	la.u    $t3, Na_g_80333238
	la.l    $t3, Na_g_80333238
	lbu     $a1, 0x0000($t3)
	li      $at, 0x0006
	beq     $a1, $at, .L80321B9C
	move    $v1, $a1
	blez    $a1, .L80321A8C
	move    $a0, $0
	lhu     $t4, 0x0036($sp)
	la.u    $a3, _Na_g_bss+0x36F8
	la.l    $a3, _Na_g_bss+0x36F8
	andi    $v0, $t4, 0x00FF
	sw      $v0, 0x0018($sp)
.L80321A1C:
	sll     $t6, $a0, 1
	addu    $t7, $a3, $t6
	lbu     $t8, 0x0000($t7)
	bnel    $v0, $t8, .L80321A78
	addiu   $a0, $a0, 0x0001
	bnez    $a0, .L80321A50
	la.u    $t9, _Na_bss+0x1878
	move    $a0, $0
	lbu     $a1, 0x001B($sp)
	jal     Na_g_80320544
	lhu     $a2, 0x003A($sp)
	b       .L80321BA0
	lw      $ra, 0x0014($sp)
.L80321A50:
	la.l    $t9, _Na_bss+0x1878
	lw      $t4, 0x0000($t9)
	srl     $t5, $t4, 31
	bnezl   $t5, .L80321BA0
	lw      $ra, 0x0014($sp)
	jal     Na_BGM_stop
	lbu     $a0, 0x0000($a3)
	b       .L80321BA0
	lw      $ra, 0x0014($sp)
	addiu   $a0, $a0, 0x0001
.L80321A78:
	andi    $t6, $a0, 0x00FF
	slt     $at, $t6, $v1
	bnez    $at, .L80321A1C
	move    $a0, $t6
	move    $a0, $0
.L80321A8C:
	lhu     $a2, 0x0036($sp)
	la.u    $a3, _Na_g_bss+0x36F8
	la.l    $a3, _Na_g_bss+0x36F8
	andi    $t8, $a2, 0x00FF
	blez    $v1, .L80321AE4
	sw      $t8, 0x0018($sp)
	sra     $v0, $a2, 8
	andi    $t9, $v0, 0x00FF
	move    $v0, $t9
.L80321AB0:
	sll     $t4, $a0, 1
	addu    $t5, $a3, $t4
	lbu     $t6, 0x0001($t5)
	slt     $at, $v0, $t6
	bnezl   $at, .L80321AD4
	addiu   $a0, $a0, 0x0001
	andi    $t1, $a0, 0x00FF
	andi    $a0, $a1, 0x00FF
	addiu   $a0, $a0, 0x0001
.L80321AD4:
	andi    $t7, $a0, 0x00FF
	slt     $at, $t7, $v1
	bnez    $at, .L80321AB0
	move    $a0, $t7
.L80321AE4:
	sra     $t2, $a2, 8
	andi    $t8, $t2, 0x00FF
	move    $t2, $t8
	bnez    $t1, .L80321B40
	move    $t0, $t1
	move    $a0, $0
	lbu     $a1, 0x001B($sp)
	lhu     $a2, 0x003A($sp)
	sw      $t0, 0x0024($sp)
	sb      $t1, 0x002C($sp)
	jal     Na_g_80320544
	sw      $t8, 0x001C($sp)
	la.u    $t3, Na_g_80333238
	la.l    $t3, Na_g_80333238
	lbu     $t9, 0x0000($t3)
	la.u    $a3, _Na_g_bss+0x36F8
	la.l    $a3, _Na_g_bss+0x36F8
	addiu   $t4, $t9, 0x0001
	lw      $t0, 0x0024($sp)
	lbu     $t1, 0x002C($sp)
	lw      $t2, 0x001C($sp)
	sb      $t4, 0x0000($t3)
	andi    $v1, $t4, 0x00FF
.L80321B40:
	addiu   $a0, $v1, -0x0001
	andi    $a1, $a0, 0x00FF
	slt     $at, $t0, $a1
	beqz    $at, .L80321B88
	move    $a0, $a1
.L80321B54:
	sll     $t7, $a1, 1
	addu    $v1, $a3, $t7
	lbu     $t8, -0x0001($v1)
	sll     $t6, $a0, 1
	addu    $v0, $a3, $t6
	addiu   $a0, $a0, -0x0001
	sb      $t8, 0x0001($v0)
	lbu     $t9, -0x0002($v1)
	andi    $a1, $a0, 0x00FF
	slt     $at, $t0, $a1
	move    $a0, $a1
	bnez    $at, .L80321B54
	sb      $t9, 0x0000($v0)
.L80321B88:
	lw      $t6, 0x0018($sp)
	sll     $t5, $t1, 1
	addu    $v0, $a3, $t5
	sb      $t2, 0x0001($v0)
	sb      $t6, 0x0000($v0)
.L80321B9C:
	lw      $ra, 0x0014($sp)
.L80321BA0:
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void Na_BGM_stop(u16) */
.globl Na_BGM_stop
Na_BGM_stop:
	addiu   $sp, $sp, -0x0028
	sw      $s2, 0x001C($sp)
	la.u    $s2, Na_g_80333238
	la.l    $s2, Na_g_80333238
	lbu     $v0, 0x0000($s2)
	sw      $ra, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	andi    $t6, $a0, 0xFFFF
	beqz    $v0, .L80321CC8
	move    $a1, $v0
	andi    $v1, $v0, 0x00FF
	blez    $v0, .L80321C70
	move    $s0, $0
	move    $s3, $t6
	andi    $t7, $s3, 0x00FF
	la.u    $s1, _Na_g_bss+0x36F8
	la.l    $s1, _Na_g_bss+0x36F8
	move    $s3, $t7
.L80321C00:
	sll     $t8, $s0, 1
	addu    $t9, $s1, $t8
	lbu     $t0, 0x0000($t9)
	addiu   $t1, $v0, -0x0001
	bnel    $s3, $t0, .L80321C60
	addiu   $s0, $s0, 0x0001
	bnez    $s0, .L80321C4C
	sb      $t1, 0x0000($s2)
	andi    $t2, $t1, 0x00FF
	beqz    $t2, .L80321C44
	move    $a0, $0
	move    $a0, $0
	lbu     $a1, 0x0002($s1)
	jal     Na_g_80320544
	move    $a2, $0
	b       .L80321C50
	lbu     $v0, 0x0000($s2)
.L80321C44:
	jal     Na_SEQ_fadeout
	li      $a1, 0x0014
.L80321C4C:
	lbu     $v0, 0x0000($s2)
.L80321C50:
	andi    $v1, $s0, 0x00FF
	move    $s0, $v0
	move    $a1, $v0
	addiu   $s0, $s0, 0x0001
.L80321C60:
	andi    $t3, $s0, 0x00FF
	slt     $at, $t3, $a1
	bnez    $at, .L80321C00
	move    $s0, $t3
.L80321C70:
	la.u    $s1, _Na_g_bss+0x36F8
	slt     $at, $v1, $a1
	la.l    $s1, _Na_g_bss+0x36F8
	beqz    $at, .L80321CBC
	andi    $s0, $v1, 0x00FF
	move    $a0, $s0
.L80321C88:
	sll     $t5, $a0, 1
	addu    $v1, $s1, $t5
	lbu     $t6, 0x0003($v1)
	sll     $t4, $s0, 1
	addu    $v0, $s1, $t4
	addiu   $s0, $s0, 0x0001
	sb      $t6, 0x0001($v0)
	lbu     $t7, 0x0002($v1)
	andi    $a0, $s0, 0x00FF
	slt     $at, $a0, $a1
	move    $s0, $a0
	bnez    $at, .L80321C88
	sb      $t7, 0x0000($v0)
.L80321CBC:
	sll     $t9, $s0, 1
	addu    $t0, $s1, $t9
	sb      $0, 0x0001($t0)
.L80321CC8:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

/* void Na_BGM_fadeout(u16, u16) */
.globl Na_BGM_fadeout
Na_BGM_fadeout:
	lui     $t8, %hi(Na_g_80333238)
	lbu     $t8, %lo(Na_g_80333238)($t8)
	addiu   $sp, $sp, -0x0018
	sw      $a1, 0x001C($sp)
	andi    $t7, $a1, 0xFFFF
	move    $a1, $t7
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	beqz    $t8, .L80321D28
	andi    $t6, $a0, 0xFFFF
	lui     $t1, %hi(_Na_g_bss+0x36F8)
	lbu     $t1, %lo(_Na_g_bss+0x36F8)($t1)
	andi    $t0, $t6, 0x00FF
	bnel    $t0, $t1, .L80321D2C
	lw      $ra, 0x0014($sp)
	jal     Na_SEQ_fadeout
	move    $a0, $0
.L80321D28:
	lw      $ra, 0x0014($sp)
.L80321D2C:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_g_80321D38(void) */
.globl Na_g_80321D38
Na_g_80321D38:
	la.u    $v0, Na_g_80333238
	la.l    $v0, Na_g_80333238
	lbu     $t6, 0x0000($v0)
	li      $t7, 0x0001
	beqz    $t6, .L80321D54
	nop
	sb      $t7, 0x0000($v0)
.L80321D54:
	jr      $ra
	nop

/* u16 Na_g_80321D5C(void) */
.globl Na_g_80321D5C
Na_g_80321D5C:
	lui     $t6, %hi(Na_g_80333238)
	lbu     $t6, %lo(Na_g_80333238)($t6)
	la.u    $v1, _Na_g_bss+0x36F8
	la.l    $v1, _Na_g_bss+0x36F8
	beqzl   $t6, .L80321D94
	li      $v0, 0xFFFF
	lbu     $t8, 0x0001($v1)
	lbu     $t7, 0x0000($v1)
	sll     $t9, $t8, 8
	addu    $v0, $t7, $t9
	andi    $t0, $v0, 0xFFFF
	jr      $ra
	move    $v0, $t0
	li      $v0, 0xFFFF
.L80321D94:
	jr      $ra
	nop

/* void Na_g_80321D9C(void) */
Na_g_80321D9C:
	addiu   $sp, $sp, -0x0018
	la.u    $t6, _Na_bss+0x1878
	sw      $ra, 0x0014($sp)
	la.l    $t6, _Na_bss+0x1878
	lw      $t7, 0x0140($t6)
	la.u    $v0, Na_g_8033322C
	la.l    $v0, Na_g_8033322C
	srl     $t8, $t7, 31
	bnezl   $t8, .L80321E3C
	lw      $ra, 0x0014($sp)
	lbu     $t9, 0x0000($v0)
	li      $a0, 0x0032
	beqzl   $t9, .L80321E3C
	lw      $ra, 0x0014($sp)
	jal     Na_g_80320F68
	sb      $0, 0x0000($v0)
	lui     $t0, %hi(_Na_g_bss+0x36F2)
	lbu     $t0, %lo(_Na_g_bss+0x36F2)($t0)
	lui     $a1, %hi(Na_g_80333230)
	beqzl   $t0, .L80321E3C
	lw      $ra, 0x0014($sp)
	lbu     $a1, %lo(Na_g_80333230)($a1)
	li      $at, 0x0013
	li      $a0, 0x0001
	beq     $a1, $at, .L80321E10
	move    $v0, $a1
	li      $at, 0x000B
	bnel    $v0, $at, .L80321E3C
	lw      $ra, 0x0014($sp)
.L80321E10:
	jal     Na_g_80320544
	li      $a2, 0x0001
	lui     $a2, %hi(Na_g_80333234)
	lbu     $a2, %lo(Na_g_80333234)($a2)
	li      $at, 0x00FF
	li      $a0, 0x0001
	beql    $a2, $at, .L80321E3C
	lw      $ra, 0x0014($sp)
	jal     Na_g_8031E710
	li      $a1, 0x0001
	lw      $ra, 0x0014($sp)
.L80321E3C:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_BGM_push(u8, u8, u8, u16) */
.globl Na_BGM_push
Na_BGM_push:
	addiu   $sp, $sp, -0x0028
	lui     $v0, %hi(Na_g_803331AC)
	lbu     $v0, %lo(Na_g_803331AC)($v0)
	sw      $s0, 0x0018($sp)
	sw      $a1, 0x002C($sp)
	andi    $t6, $a1, 0x00FF
	li      $v1, 0x00FF
	lui     $at, %hi(Na_g_80333228)
	move    $a1, $t6
	andi    $s0, $a2, 0x00FF
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	beq     $v1, $v0, .L80321F34
	sh      $0, %lo(Na_g_80333228)($at)
	li      $at, 0x0002
	beq     $v0, $at, .L80321F34
	la.u    $v0, _Na_g_bss+0x36F2
	la.l    $v0, _Na_g_bss+0x36F2
	lbu     $t7, 0x0000($v0)
	addiu   $t8, $t6, 0x0080
	bnez    $t7, .L80321F08
	nop
	sb      $t8, 0x0000($v0)
	jal     Na_g_80320F68
	lhu     $a0, 0x0036($sp)
	lhu     $a3, 0x0036($sp)
	li      $a0, 0x0001
	lbu     $a1, 0x002B($sp)
	sra     $a2, $a3, 1
	andi    $t9, $a2, 0xFFFF
	move    $a2, $t9
	jal     Na_g_80320544
	sw      $a3, 0x0020($sp)
	slti    $at, $s0, 0x0080
	beqz    $at, .L80321EF0
	lw      $a3, 0x0020($sp)
	li      $a0, 0x0001
	move    $a1, $a3
	jal     Na_g_8031E710
	andi    $a2, $s0, 0x00FF
.L80321EF0:
	lui     $at, %hi(Na_g_80333234)
	lbu     $t0, 0x002B($sp)
	sb      $s0, %lo(Na_g_80333234)($at)
	lui     $at, %hi(Na_g_80333230)
	b       .L80321F34
	sb      $t0, %lo(Na_g_80333230)($at)
.L80321F08:
	beq     $v1, $s0, .L80321F34
	addiu   $t1, $a1, 0x0080
	sb      $t1, 0x0000($v0)
	jal     Na_g_80320F68
	lhu     $a0, 0x0036($sp)
	li      $a0, 0x0001
	lhu     $a1, 0x0036($sp)
	jal     Na_g_8031E710
	andi    $a2, $s0, 0x00FF
	lui     $at, %hi(Na_g_80333234)
	sb      $s0, %lo(Na_g_80333234)($at)
.L80321F34:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void Na_BGM_pull(u16) */
.globl Na_BGM_pull
Na_BGM_pull:
	la.u    $v0, _Na_g_bss+0x36F2
	la.l    $v0, _Na_g_bss+0x36F2
	lbu     $t6, 0x0000($v0)
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	beqz    $t6, .L80321F8C
	sw      $a0, 0x0018($sp)
	sb      $0, 0x0000($v0)
	lui     $at, %hi(Na_g_80333230)
	sb      $0, %lo(Na_g_80333230)($at)
	lui     $at, %hi(Na_g_80333234)
	sb      $0, %lo(Na_g_80333234)($at)
	jal     Na_g_80320F68
	lhu     $a0, 0x001A($sp)
	li      $a0, 0x0001
	jal     Na_SEQ_fadeout
	lhu     $a1, 0x001A($sp)
.L80321F8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_fadeout(u16) */
.globl Na_fadeout
Na_fadeout:
	addiu   $sp, $sp, -0x0028
	lui     $t6, %hi(Na_g_8033321C)
	lbu     $t6, %lo(Na_g_8033321C)($t6)
	sw      $s2, 0x0020($sp)
	andi    $s2, $a0, 0xFFFF
	sw      $ra, 0x0024($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	bnez    $t6, .L80322060
	sw      $a0, 0x0028($sp)
	la.u    $s1, _Na_bss+0x1878
	la.l    $s1, _Na_bss+0x1878
	lw      $t7, 0x0000($s1)
	li      $s0, 0x0001
	move    $a0, $0
	srl     $t8, $t7, 31
	bnel    $s0, $t8, .L80321FF0
	lw      $t9, 0x0140($s1)
	jal     Na_g_8031E578
	move    $a1, $s2
	lw      $t9, 0x0140($s1)
.L80321FF0:
	li      $a0, 0x0001
	srl     $t0, $t9, 31
	bnel    $s0, $t0, .L8032200C
	move    $s0, $0
	jal     Na_g_8031E578
	move    $a1, $s2
	move    $s0, $0
.L8032200C:
	move    $v0, $0
	li      $s1, 0x0007
.L80322014:
	beq     $s1, $v0, .L80322040
	li      $a0, 0x0002
	andi    $a1, $s0, 0x00FF
	move    $a2, $0
	bgez    $s2, .L80322034
	sra     $a3, $s2, 4
	addiu   $at, $s2, 0x000F
	sra     $a3, $at, 4
.L80322034:
	andi    $t1, $a3, 0xFFFF
	jal     Na_g_80320734
	move    $a3, $t1
.L80322040:
	addiu   $s0, $s0, 0x0001
	andi    $v0, $s0, 0x00FF
	slti    $at, $v0, 0x000A
	bnez    $at, .L80322014
	move    $s0, $v0
	li      $t3, 0x0001
	lui     $at, %hi(Na_g_8033321C)
	sb      $t3, %lo(Na_g_8033321C)($at)
.L80322060:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

/* void Na_g_80322078(void) */
.globl Na_g_80322078
Na_g_80322078:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x0001
	jal     Na_g_80320544
	move    $a2, $0
	li      $t6, 0x0080
	lui     $at, %hi(Na_g_8033322C)
	sb      $t6, %lo(Na_g_8033322C)($at)
	jal     Na_g_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_g_803220B4(void) */
.globl Na_g_803220B4
Na_g_803220B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x001D
	jal     Na_g_80320544
	move    $a2, $0
	li      $t6, 0x0080
	lui     $at, %hi(Na_g_8033322C)
	sb      $t6, %lo(Na_g_8033322C)($at)
	jal     Na_g_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_g_803220F0(void) */
.globl Na_g_803220F0
Na_g_803220F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x001B
	jal     Na_g_80320544
	move    $a2, $0
	li      $t6, 0x0094
	lui     $at, %hi(Na_g_8033322C)
	sb      $t6, %lo(Na_g_8033322C)($at)
	jal     Na_g_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_g_8032212C(void) */
.globl Na_g_8032212C
Na_g_8032212C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x0012
	jal     Na_g_80320544
	move    $a2, $0
	li      $t6, 0x0094
	lui     $at, %hi(Na_g_8033322C)
	sb      $t6, %lo(Na_g_8033322C)($at)
	jal     Na_g_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_g_80322168(u8) */
.globl Na_g_80322168
Na_g_80322168:
	addiu   $sp, $sp, -0x0018
	andi    $t6, $a0, 0x00FF
	sw      $ra, 0x0014($sp)
	bnez    $t6, .L80322184
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_Na_g_bss+0x36F2)
	sb      $0, %lo(_Na_g_bss+0x36F2)($at)
.L80322184:
	li      $a0, 0x0001
	li      $a1, 0x0015
	jal     Na_g_80320544
	move    $a2, $0
	li      $t7, 0x0094
	lui     $at, %hi(Na_g_8033322C)
	sb      $t7, %lo(Na_g_8033322C)($at)
	jal     Na_g_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_g_803221B8(void) */
.globl Na_g_803221B8
Na_g_803221B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x0014
	jal     Na_g_80320544
	move    $a2, $0
	li      $t6, 0x0094
	lui     $at, %hi(Na_g_8033322C)
	sb      $t6, %lo(Na_g_8033322C)($at)
	jal     Na_g_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_g_803221F4(void) */
.globl Na_g_803221F4
Na_g_803221F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x001C
	jal     Na_g_80320544
	move    $a2, $0
	li      $t6, 0x0094
	lui     $at, %hi(Na_g_8033322C)
	sb      $t6, %lo(Na_g_8033322C)($at)
	jal     Na_g_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void Na_mode(u8) */
.globl Na_mode
Na_mode:
	addiu   $sp, $sp, -0x0020
	andi    $a1, $a0, 0x00FF
	sw      $s0, 0x0018($sp)
	slti    $at, $a1, 0x000A # 0x0008
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	bnez    $at, .L80322260
	move    $s0, $a1
	lui     $at, %hi(Na_g_8033323C)
	move    $a1, $0
	sb      $0, %lo(Na_g_8033323C)($at)
	move    $s0, $0
.L80322260:
	lui     $at, %hi(Na_g_80332E54)
	sw      $0, %lo(Na_g_80332E54)($at)
	jal     Na_g_803217A8
	sb      $a1, 0x0023($sp)
	jal     Na_init
	nop
	lbu     $a1, 0x0023($sp)
	la.u    $t7, Na_cfg_data
	la.l    $t7, Na_cfg_data
	sll     $t6, $a1, 3
	subu    $t6, $t6, $a1
	sll     $t6, $t6, 2
	jal     Na_b_80317948
	addu    $a0, $t6, $t7
	jal     osWritebackDCacheAll
	nop
	li      $at, 0x0007
	beq     $s0, $at, .L803222CC
	li      $a0, 0x001B
	jal     Na_c_80319220
	li      $a1, 0x0003
	li      $a0, 0x001D
	jal     Na_c_80319220
	li      $a1, 0x0003
	li      $a0, 0x0015
	jal     Na_c_80319220
	li      $a1, 0x0003
.L803222CC:
	li      $a0, 0x0002
	move    $a1, $0
	jal     Na_g_80320544
	move    $a2, $0
	la.u    $v0, Na_g_80333218
	la.l    $v0, Na_g_80333218
	lbu     $t8, 0x0000($v0)
	lw      $ra, 0x001C($sp)
	lui     $at, %hi(_Na_bss+0x5DDF)
	andi    $t9, $t8, 0x00F0
	addu    $t0, $t9, $s0
	andi    $t1, $t0, 0x00FF
	sb      $t0, 0x0000($v0)
	sra     $t2, $t1, 4
	sb      $t2, %lo(_Na_bss+0x5DDF)($at)
	lui     $at, %hi(Na_g_8033321C)
	lw      $s0, 0x0018($sp)
	sb      $0, %lo(Na_g_8033321C)($at)
	jr      $ra
	addiu   $sp, $sp, 0x0020

/* void Na_output(int) */
.globl Na_output
Na_output:
	la.u    $v1, Na_g_80333218
	la.l    $v1, Na_g_80333218
	lbu     $t7, 0x0000($v1)
	sll     $t9, $a0, 4
	lui     $at, %hi(_Na_bss+0x5DDF)
	andi    $t8, $t7, 0x000F
	addu    $t0, $t8, $t9
	sb      $t0, 0x0000($v1)
	sw      $a0, 0x0000($sp)
	jr      $ra
	sb      $a0, %lo(_Na_bss+0x5DDF)($at)

/* void Na_g_80322348(int, int, int, int) */
Na_g_80322348:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	jr      $ra
	sw      $a3, 0x000C($sp)

/* void Na_g_8032235C(int) */
Na_g_8032235C:
	jr      $ra
	sw      $a0, 0x0000($sp)

.bss
.align 4

.globl _Na_g_bss
_Na_g_bss:
.space 0x3710

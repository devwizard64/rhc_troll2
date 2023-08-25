.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

object_a_802A5620:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f6, 0x00BC($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00AC($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f18, 0x00BC($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_sin)($at)
	neg.s   $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00A0($t4)
	lwc1    $f8, 0x00AC($t4)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x00A8($t5)
	lwc1    $f18, 0x00B4($t5)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A8($t5)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802A56BC
object_a_802A56BC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13000000
	jal     obj_lib_8029F95C
	la.l    $a0, o_13000000
	sw      $v0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L802A58C4
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_803378B4)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_803378B4)($at)
	jr      $t7
	nop
.globl L802A5704
L802A5704:
	jal     obj_lib_802A05D4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x00030000
	lw      $t9, 0x0134($t8)
	and     $t0, $t9, $at
	beqz    $t0, .L802A5738
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
.L802A5738:
	lw      $t3, 0x0018($sp)
	beqz    $t3, .L802A5760
	nop
	lw      $t4, 0x014C($t3)
	beqz    $t4, .L802A5760
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
.L802A5760:
	b       .L802A58C4
	nop
.globl L802A5768
L802A5768:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802A5794
	nop
	lh      $t9, 0x00CA($t7)
	bltz    $t9, .L802A5794
	nop
	li.u    $a0, 0x304EC081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x304EC081
.L802A5794:
	jal     obj_lib_802A05B4
	nop
	li      $at, 0xC1000000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00BC($t0)
	jal     object_a_802A5620
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0010
	bnez    $at, .L802A57E8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
.L802A57E8:
	b       .L802A58C4
	nop
.globl L802A57F0
L802A57F0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0154($t6)
	slti    $at, $t8, 0x001F
	bnez    $at, .L802A581C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x014C($t7)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t7)
.L802A581C:
	b       .L802A58C4
	nop
.globl L802A5824
L802A5824:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, .L802A5850
	nop
	lh      $t4, 0x00CA($t1)
	bltz    $t4, .L802A5850
	nop
	li.u    $a0, 0x304FC081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x304FC081
.L802A5850:
	li      $at, 0x41000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00BC($t5)
	jal     object_a_802A5620
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t6, 0x0154($t3)
	slti    $at, $t6, 0x0010
	bnez    $at, .L802A589C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
.L802A589C:
	b       .L802A58C4
	nop
.globl L802A58A4
L802A58A4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
	b       .L802A58C4
	nop
.L802A58C4:
	b       .L802A58CC
	nop
.L802A58CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A58DC
object_a_802A58DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802A595C
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	mtc1    $at, $f8
	lui     $t8, %hi(object)
	mul.s   $f6, $f0, $f4
	lw      $t8, %lo(object)($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B0($t8)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f16
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	mul.s   $f18, $f0, $f16
	lw      $t9, %lo(object)($t9)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00B8($t9)
	jal     rand
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
.L802A595C:
	jal     obj_lib_802A2644
	nop
	b       .L802A596C
	nop
.L802A596C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A597C(void) */
.globl object_a_802A597C
object_a_802A597C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	li      $at, 0x41A00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     obj_lib_802A2320
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x8000
	beqz    $t9, .L802A59E0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	b       .L802A5A2C
	sw      $t0, 0x014C($t1)
.L802A59E0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0065
	beqz    $at, .L802A5A18
	nop
	lw      $t4, 0x00EC($t2)
	andi    $t5, $t4, 0x0200
	bnez    $t5, .L802A5A18
	nop
	lh      $t6, 0x0074($t2)
	andi    $t7, $t6, 0x0008
	beqz    $t7, .L802A5A2C
	nop
.L802A5A18:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A37AC
	nop
.L802A5A2C:
	b       .L802A5A34
	nop
.L802A5A34:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A5A44(void) */
.globl object_a_802A5A44
object_a_802A5A44:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	sw      $0, 0x001C($sp)
.L802A5A5C:
	lui     $a0, %hi(object)
	la.u    $a2, o_130000F8
	la.l    $a2, o_130000F8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00AA
	lw      $t6, 0x001C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x000A
	bnez    $at, .L802A5A5C
	sw      $t7, 0x001C($sp)
	b       .L802A5A90
	nop
.L802A5A90:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A5AA0
object_a_802A5AA0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_8033006C
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_8033006C
	b       .L802A5ABC
	nop
.L802A5ABC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802A5ACC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0030($t6)
	swc1    $f4, 0x0018($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130000AC
	la.l    $a2, o_130000AC
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00AA
	sw      $v0, 0x001C($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f8, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x00A4($t7)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0018($sp)
	lhu     $t9, 0x00CA($t8)
	lw      $t2, 0x001C($sp)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42B40000
	mtc1    $at, $f6
	lwc1    $f18, 0x00A0($t2)
	mul.s   $f8, $f4, $f6
	nop
	mul.s   $f10, $f8, $f16
	add.s   $f4, $f18, $f10
	swc1    $f4, 0x00A0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0018($sp)
	lhu     $t4, 0x00CA($t3)
	lw      $t7, 0x001C($sp)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x42B40000
	mtc1    $at, $f8
	lwc1    $f4, 0x00A8($t7)
	mul.s   $f16, $f6, $f8
	nop
	mul.s   $f10, $f16, $f18
	add.s   $f6, $f4, $f10
	swc1    $f6, 0x00A8($t7)
	li.u    $a0, 0x50010081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50010081
	b       .L802A5BC4
	nop
.L802A5BC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A5BD4
object_a_802A5BD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	move    $a0, $t6
	jal     obj_lib_8029F0E0
	lw      $a1, 0x0068($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0074($t7)
	andi    $t9, $t8, 0x0008
	bnez    $t9, .L802A5CA4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $t0
	jal     obj_lib_8029F3A8
	lw      $a1, 0x0068($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0030($t1)
	move    $a1, $0
	move    $a2, $0
	mul.s   $f8, $f4, $f6
	move    $a0, $t1
	trunc.w.s $f10, $f8
	mfc1    $a3, $f10
	jal     obj_lib_8029E8BC
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x002C
	jal     obj_lib_802A2930
	li      $a2, 0x000F
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0006
	jal     obj_lib_802A2804
	li      $a2, 0x002C
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00C4($t3)
	sw      $t4, 0x00D0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f16, 0x0030($t5)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00DC($t5)
.L802A5CA4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0110($t7)
	beq     $t8, $at, .L802A5CD4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, -0x0001
	b       .L802A5D10
	sw      $t9, 0x00F0($t0)
.L802A5CD4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F0($t1)
	addiu   $t4, $t2, 0x0001
	sw      $t4, 0x00F0($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x000F
	lw      $t5, 0x00F0($t3)
	bne     $t5, $at, .L802A5D10
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $0, 0x0110($t7)
.L802A5D10:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lh      $t0, 0x0074($t9)
	bnez    $t0, .L802A5D34
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802A5D34:
	b       .L802A5D3C
	nop
.L802A5D3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A5D4C(void) */
.globl object_a_802A5D4C
object_a_802A5D4C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L802A5D78
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	b       .L802A5D88
	swc1    $f4, 0x001C($sp)
.L802A5D78:
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x001C($sp)
.L802A5D88:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0100($t8)
	bgez    $t9, .L802A5DA8
	nop
	li      $t0, 0x1000
	b       .L802A5DB0
	sh      $t0, 0x0034($sp)
.L802A5DA8:
	li      $t1, -0x1000
	sh      $t1, 0x0034($sp)
.L802A5DB0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x42C00000
	mtc1    $at, $f16
	lw      $t3, 0x0154($t2)
	addiu   $t4, $t3, 0x0001
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x0040
	beqz    $at, .L802A6024
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00C8($t7)
	sh      $t8, 0x0036($sp)
	li      $at, 0x46800000
	mtc1    $at, $f4
	lwc1    $f6, 0x002C($sp)
	li      $t0, 0x0001
	mul.s   $f8, $f4, $f6
	cfc1    $t9, $31
	ctc1    $t0, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	beqz    $t0, .L802A5E8C
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t0, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t0, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	bnez    $t0, .L802A5E84
	nop
	mfc1    $t0, $f10
	li      $at, 0x80000000
	b       .L802A5E9C
	or      $t0, $t0, $at
.L802A5E84:
	b       .L802A5E9C
	li      $t0, -0x0001
.L802A5E8C:
	mfc1    $t0, $f10
	nop
	bltz    $t0, .L802A5E84
	nop
.L802A5E9C:
	lh      $t4, 0x0034($sp)
	ctc1    $t9, $31
	lui     $t5, %hi(object)
	mtc1    $t4, $f18
	lw      $t5, %lo(object)($t5)
	andi    $t1, $t0, 0xFFFF
	cvt.s.w $f4, $f18
	sra     $t2, $t1, 4
	lw      $t6, 0x00C8($t5)
	sll     $t3, $t2, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_cos)($at)
	mtc1    $t6, $f8
	mul.s   $f6, $f4, $f16
	cvt.s.w $f10, $f8
	add.s   $f18, $f10, $f6
	trunc.w.s $f4, $f18
	mfc1    $t8, $f4
	nop
	sw      $t8, 0x00C8($t5)
	lh      $t9, 0x0036($sp)
	bgez    $t9, .L802A5F1C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C8($t0)
	bltz    $t1, .L802A5F1C
	nop
	li.u    $a0, 0x906B0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x906B0081
.L802A5F1C:
	li      $at, 0x46800000
	mtc1    $at, $f16
	lwc1    $f8, 0x002C($sp)
	li      $t3, 0x0001
	mul.s   $f10, $f16, $f8
	cfc1    $t2, $31
	ctc1    $t3, $31
	nop
	cvt.w.s $f6, $f10
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	beqz    $t3, .L802A5FA4
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t3, 0x0001
	sub.s   $f6, $f10, $f6
	ctc1    $t3, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	bnez    $t3, .L802A5F9C
	nop
	mfc1    $t3, $f6
	li      $at, 0x80000000
	b       .L802A5FB4
	or      $t3, $t3, $at
.L802A5F9C:
	b       .L802A5FB4
	li      $t3, -0x0001
.L802A5FA4:
	mfc1    $t3, $f6
	nop
	bltz    $t3, .L802A5F9C
	nop
.L802A5FB4:
	andi    $t4, $t3, 0xFFFF
	sra     $t6, $t4, 4
	sll     $t7, $t6, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_cos)($at)
	ctc1    $t2, $31
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f4, $f18
	li      $at, 0xC0D00000
	sub.d   $f8, $f16, $f4
	mtc1    $at, $f11
	mtc1    $0, $f10
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.d   $f6, $f8, $f10
	trunc.w.d $f18, $f6
	mfc1    $t5, $f18
	nop
	sw      $t5, 0x00C4($t9)
	li      $at, 0x40800000
	mtc1    $at, $f12
	jal     obj_lib_802A18DC
	nop
	b       .L802A6500
	nop
.L802A6024:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0060
	beqz    $at, .L802A6390
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0040
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, .L802A6060
	nop
	li.u    $a0, 0x50140081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50140081
.L802A6060:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x42000000
	mtc1    $at, $f8
	lw      $t6, 0x0154($t4)
	addiu   $t7, $t6, -0x003F
	mtc1    $t7, $f16
	nop
	cvt.s.w $f4, $f16
	div.s   $f10, $f4, $f8
	swc1    $f10, 0x0030($sp)
	li      $at, 0x46800000
	mtc1    $at, $f6
	lwc1    $f18, 0x002C($sp)
	li      $t5, 0x0001
	mul.s   $f16, $f6, $f18
	cfc1    $t8, $31
	ctc1    $t5, $31
	nop
	cvt.w.s $f4, $f16
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, .L802A6114
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f4
	li      $t5, 0x0001
	sub.s   $f4, $f16, $f4
	ctc1    $t5, $31
	nop
	cvt.w.s $f4, $f4
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	bnez    $t5, .L802A610C
	nop
	mfc1    $t5, $f4
	li      $at, 0x80000000
	b       .L802A6124
	or      $t5, $t5, $at
.L802A610C:
	b       .L802A6124
	li      $t5, -0x0001
.L802A6114:
	mfc1    $t5, $f4
	nop
	bltz    $t5, .L802A610C
	nop
.L802A6124:
	lh      $t2, 0x0034($sp)
	ctc1    $t8, $31
	lui     $t3, %hi(object)
	mtc1    $t2, $f10
	lw      $t3, %lo(object)($t3)
	andi    $t9, $t5, 0xFFFF
	cvt.s.w $f6, $f10
	sra     $t0, $t9, 4
	lw      $t4, 0x00C8($t3)
	sll     $t1, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_cos)($at)
	mtc1    $t4, $f16
	mul.s   $f18, $f6, $f8
	cvt.s.w $f4, $f16
	add.s   $f10, $f4, $f18
	trunc.w.s $f6, $f10
	mfc1    $t7, $f6
	nop
	sw      $t7, 0x00C8($t3)
	li      $at, 0x46800000
	mtc1    $at, $f8
	lwc1    $f16, 0x002C($sp)
	li      $t5, 0x0001
	mul.s   $f4, $f8, $f16
	cfc1    $t8, $31
	ctc1    $t5, $31
	nop
	cvt.w.s $f18, $f4
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, .L802A6200
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t5, 0x0001
	sub.s   $f18, $f4, $f18
	ctc1    $t5, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	bnez    $t5, .L802A61F8
	nop
	mfc1    $t5, $f18
	li      $at, 0x80000000
	b       .L802A6210
	or      $t5, $t5, $at
.L802A61F8:
	b       .L802A6210
	li      $t5, -0x0001
.L802A6200:
	mfc1    $t5, $f18
	nop
	bltz    $t5, .L802A61F8
	nop
.L802A6210:
	andi    $t9, $t5, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_cos)($at)
	ctc1    $t8, $31
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f10
	li      $at, 0xC0D00000
	sub.d   $f16, $f8, $f6
	mtc1    $at, $f5
	mtc1    $0, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.d   $f18, $f16, $f4
	trunc.w.d $f10, $f18
	mfc1    $t4, $f10
	nop
	sw      $t4, 0x00C4($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f4
	sub.s   $f16, $f8, $f6
	mul.s   $f18, $f16, $f4
	trunc.w.s $f10, $f18
	mfc1    $t3, $f10
	nop
	mtc1    $t3, $f8
	jal     obj_lib_802A18DC
	cvt.s.w $f12, $f8
	li      $at, 0x46800000
	mtc1    $at, $f6
	lwc1    $f16, 0x0030($sp)
	li      $t5, 0x0001
	mul.s   $f4, $f6, $f16
	cfc1    $t8, $31
	ctc1    $t5, $31
	nop
	cvt.w.s $f18, $f4
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, .L802A6324
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t5, 0x0001
	sub.s   $f18, $f4, $f18
	ctc1    $t5, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	bnez    $t5, .L802A631C
	nop
	mfc1    $t5, $f18
	li      $at, 0x80000000
	b       .L802A6334
	or      $t5, $t5, $at
.L802A631C:
	b       .L802A6334
	li      $t5, -0x0001
.L802A6324:
	mfc1    $t5, $f18
	nop
	bltz    $t5, .L802A631C
	nop
.L802A6334:
	andi    $t9, $t5, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_cos)($at)
	ctc1    $t8, $31
	lui     $at, %hi(object_a_803378C8)
	ldc1    $f6, %lo(object_a_803378C8)($at)
	cvt.d.s $f8, $f10
	lui     $at, %hi(object_a_803378D0)
	mul.d   $f16, $f8, $f6
	ldc1    $f4, %lo(object_a_803378D0)($at)
	add.d   $f18, $f16, $f4
	cvt.s.d $f10, $f18
	swc1    $f10, 0x0020($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f6, 0x001C($sp)
	mul.s   $f12, $f8, $f6
	jal     obj_lib_8029F430
	nop
	b       .L802A6500
	nop
.L802A6390:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0154($t2)
	slti    $at, $t4, 0x0068
	beqz    $at, .L802A63B0
	nop
	b       .L802A6500
	nop
.L802A63B0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x00A8
	beqz    $at, .L802A64F4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0068
	lw      $t8, 0x0154($t3)
	bne     $t8, $at, .L802A6478
	nop
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_802A37AC
	nop
	lwc1    $f16, 0x001C($sp)
	lui     $at, %hi(object_a_803378D8)
	ldc1    $f18, %lo(object_a_803378D8)($at)
	cvt.d.s $f4, $f16
	lui     $t5, %hi(object)
	mul.d   $f10, $f4, $f18
	lw      $t5, %lo(object)($t5)
	cvt.s.d $f8, $f10
	swc1    $f8, 0x010C($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	beqz    $t0, .L802A6470
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f6, 0x00A4($t1)
	add.s   $f4, $f6, $f16
	swc1    $f4, 0x00A4($t1)
	lui     $at, %hi(object_a_803378E0)
	lwc1    $f12, %lo(object_a_803378E0)($at)
	li      $at, 0x44FA0000
	mtc1    $at, $f14
	jal     object_b_802F2B88
	li      $a2, 0xC3A00000
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802A6478
	nop
.L802A6470:
	jal     obj_lib_802A5524
	nop
.L802A6478:
	lwc1    $f10, 0x001C($sp)
	lui     $at, %hi(object_a_803378E8)
	ldc1    $f18, %lo(object_a_803378E8)($at)
	cvt.d.s $f8, $f10
	lui     $t2, %hi(object)
	mul.d   $f6, $f18, $f8
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, 0x010C($t2)
	cvt.d.s $f4, $f16
	sub.d   $f10, $f4, $f6
	cvt.s.d $f18, $f10
	swc1    $f18, 0x010C($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	lwc1    $f8, 0x010C($t4)
	c.lt.s  $f8, $f16
	nop
	bc1f    .L802A64DC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x010C($t6)
.L802A64DC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x010C($t7)
	b       .L802A6500
	nop
.L802A64F4:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802A6500:
	b       .L802A6508
	nop
.L802A6508:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* void object_a_802A6518(void) */
.globl object_a_802A6518
object_a_802A6518:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802A65A0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	beqz    $t1, .L802A656C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x00C8
	b       .L802A657C
	sw      $t2, 0x00F4($t3)
.L802A656C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0078
	sw      $t4, 0x00F4($t5)
.L802A657C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00FC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0100($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0104($t8)
.L802A65A0:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     obj_lib_8029E714
	li      $a3, 0x0800
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x000F
	jal     obj_lib_8029E714
	li      $a3, 0x0400
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t9, 0x001E($sp)
	lh      $t1, 0x00CA($t0)
	subu    $t2, $t9, $t1
	sh      $t2, 0x001C($sp)
	lh      $t3, 0x001C($sp)
	bnez    $t3, .L802A6618
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00FC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       .L802A66C0
	sw      $0, 0x0100($t5)
.L802A6618:
	lh      $t6, 0x001C($sp)
	blez    $t6, .L802A6674
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0100($t7)
	blez    $t8, .L802A6654
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x001C($sp)
	lw      $t9, 0x00FC($t0)
	addu    $t2, $t9, $t1
	b       .L802A6660
	sw      $t2, 0x00FC($t0)
.L802A6654:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00FC($t3)
.L802A6660:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	b       .L802A66C0
	sw      $t4, 0x0100($t5)
.L802A6674:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	bgez    $t7, .L802A66A4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t1, 0x001C($sp)
	lw      $t9, 0x00FC($t8)
	subu    $t2, $t9, $t1
	b       .L802A66B0
	sw      $t2, 0x00FC($t8)
.L802A66A4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00FC($t0)
.L802A66B0:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, -0x0001
	sw      $t3, 0x0100($t4)
.L802A66C0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00FC($t5)
	bnez    $t6, .L802A66E4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, 0x0078
	sw      $t7, 0x00F4($t9)
.L802A66E4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li.u    $at, 0x00010001
	li.l    $at, 0x00010001
	lw      $t2, 0x00FC($t1)
	slt     $at, $t2, $at
	bnez    $at, .L802A6714
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t0)
.L802A6714:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x00F4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	bnez    $t7, .L802A6758
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t9, 0x0078
	sw      $t9, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00FC($t2)
.L802A6758:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00FC($t8)
	slti    $at, $t0, 0x1388
	beqz    $at, .L802A6814
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0108($t4)
	lw      $t3, 0x0104($t4)
	bne     $t5, $t3, .L802A6798
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0110($t7)
.L802A6798:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x0108($t9)
	lw      $t8, 0x0104($t9)
	addiu   $t2, $t1, 0x0014
	bne     $t2, $t8, .L802A67FC
	nop
	jal     object_a_802A5ACC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0104($t0)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	mtc1    $at, $f8
	lui     $t3, %hi(object)
	mul.s   $f6, $f0, $f4
	lw      $t3, %lo(object)($t3)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x0108($t3)
.L802A67FC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0104($t6)
	addiu   $t1, $t7, 0x0001
	b       .L802A6854
	sw      $t1, 0x0104($t6)
.L802A6814:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0104($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42480000
	mtc1    $at, $f18
	mtc1    $at, $f6
	lui     $t0, %hi(object)
	mul.s   $f4, $f0, $f18
	lw      $t0, %lo(object)($t0)
	add.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x0108($t0)
.L802A6854:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x44480000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t4)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802A6888
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t3)
.L802A6888:
	b       .L802A6890
	nop
.L802A6890:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802A68A0(void) */
.globl object_a_802A68A0
object_a_802A68A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(object)($a0)
	sh      $v0, 0x001E($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a1, 0x001E($sp)
	jal     obj_lib_802A11A8
	lw      $a0, 0x00C8($t6)
	sh      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lw      $t7, %lo(object)($t7)
	lw      $a1, 0x00D4($t8)
	jal     obj_lib_802A11A8
	lw      $a0, 0x00C8($t7)
	sh      $v0, 0x001A($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, .L802A6998
	nop
	jal     obj_lib_802A05D4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00C4($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x001E
	sw      $t2, 0x0104($t3)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t5, $f8
	nop
	sw      $t5, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0108($t7)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L802A6988
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, -0x0100
	b       .L802A6998
	sw      $t0, 0x0118($t1)
.L802A6988:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0100
	sw      $t2, 0x0118($t3)
.L802A6998:
	lh      $t4, 0x001C($sp)
	slti    $at, $t4, 0x0400
	beqz    $at, .L802A6A0C
	nop
	lh      $t5, 0x001A($sp)
	slti    $at, $t5, 0x4001
	bnez    $at, .L802A6A0C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x442F0000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t6)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802A69F0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	b       .L802A6A04
	sw      $t7, 0x014C($t8)
.L802A69F0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0104($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0104($t9)
.L802A6A04:
	b       .L802A6A34
	nop
.L802A6A0C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00C8($t2)
	lw      $t4, 0x0118($t2)
	addu    $t5, $t3, $t4
	sw      $t5, 0x00C8($t2)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x001E
	sw      $t6, 0x0104($t7)
.L802A6A34:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0108($t8)
	lw      $t9, 0x0104($t8)
	addiu   $t1, $t0, 0x003C
	bne     $t1, $t9, .L802A6A60
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x0110($t4)
.L802A6A60:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0108($t5)
	lw      $t2, 0x0104($t5)
	addiu   $t7, $t6, 0x0050
	slt     $at, $t7, $t2
	beqz    $at, .L802A6AC0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0104($t0)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f18
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f4, $f0, $f18
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	sw      $t1, 0x0108($t9)
	jal     object_a_802A5ACC
	nop
.L802A6AC0:
	b       .L802A6AC8
	nop
.L802A6AC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802A6AD8(void) */
.globl object_a_802A6AD8
object_a_802A6AD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     obj_lib_8029E96C
	move    $a3, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	addiu   $t8, $t7, 0x0001
	mtc1    $t8, $f4
	jal     obj_lib_8029F430
	cvt.s.w $f12, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, .L802A6B30
	nop
	jal     obj_lib_802A184C
	nop
.L802A6B30:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_803378F0)
	lwc1    $f8, %lo(object_a_803378F0)($at)
	lwc1    $f6, 0x015C($t1)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802A6B64
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
.L802A6B64:
	b       .L802A6B6C
	nop
.L802A6B6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A6B7C
object_a_802A6B7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330084
	la.l    $a1, object_a_80330084
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	la.u    $a0, object_a_80330074
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330074
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, .L802A6BFC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_803378F4)
	lwc1    $f6, %lo(object_a_803378F4)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f6, $f4
	nop
	bc1t    .L802A6BF0
	nop
	lh      $t9, 0x0074($t8)
	andi    $t0, $t9, 0x0008
	beqz    $t0, .L802A6BFC
	nop
.L802A6BF0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
.L802A6BFC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       .L802A6C10
	nop
.L802A6C10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A6C20
object_a_802A6C20:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sw      $t9, 0x0004($sp)
	lw      $t0, 0x0004($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sll     $t1, $t0, 2
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 1
	mtc1    $t1, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x01FC($t2)
	b       .L802A6C6C
	nop
.L802A6C6C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802A6C74
object_a_802A6C74:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802A6CD4
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002EA8
	la.l    $a2, o_13002EA8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0055
	sw      $v0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f4, 0x01FC($t8)
	lw      $t9, 0x001C($sp)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A4($t9)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t9)
.L802A6CD4:
	jal     object_a_802C63E8
	nop
	b       .L802A6CE4
	nop
.L802A6CE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A6CF4
object_a_802A6CF4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_80361256)
	lh      $t6, %lo(object_80361256)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L802A6D44
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802A6D34
	nop
	lui     $t1, %hi(object_80361184)
	lw      $t1, %lo(object_80361184)($t1)
	li      $t0, 0x0BB8
	sh      $t0, 0x0024($t1)
.L802A6D34:
	jal     obj_lib_8029F6BC
	nop
	b       .L802A6D4C
	nop
.L802A6D44:
	jal     map_data_803839CC
	nop
.L802A6D4C:
	b       .L802A6D54
	nop
.L802A6D54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A6D64
object_a_802A6D64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_80361256)
	lh      $t6, %lo(object_80361256)($t6)
	andi    $t7, $t6, 0x0001
	bnez    $t7, .L802A6EA0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	bnez    $t9, .L802A6E28
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A6E20
	nop
	la.u    $t1, player_data
	la.l    $t1, player_data
	lw      $t2, 0x000C($t1)
	li.u    $at, 0x0080023C
	li.l    $at, 0x0080023C
	bne     $t2, $at, .L802A6E20
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
	la.u    $a0, object_a_80330094
	jal     obj_lib_802A32AC
	la.l    $a0, object_a_80330094
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	li      $a0, 0x0014
	li      $a1, 0x008A
	jal     object_a_802AE0CC
	li      $a3, 0x0003
	li.u    $a0, 0x30008081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30008081
	jal     obj_lib_8029F6BC
	nop
.L802A6E20:
	b       .L802A6E98
	nop
.L802A6E28:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0032
	beqz    $at, .L802A6E68
	nop
	lui     $t8, %hi(object_80361184)
	lw      $t8, %lo(object_80361184)($t8)
	lh      $t9, 0x0024($t8)
	addiu   $t0, $t9, -0x0001
	sh      $t0, 0x0024($t8)
	li.u    $a0, 0x41160001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x41160001
	b       .L802A6E98
	nop
.L802A6E68:
	lui     $t1, %hi(object_80361256)
	lh      $t1, %lo(object_80361256)($t1)
	lui     $at, %hi(object_80361256)
	ori     $t2, $t1, 0x0001
	sh      $t2, %lo(object_80361256)($at)
	jal     Na_g_803220F0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t3, $t5, 0x0001
	sw      $t3, 0x014C($t4)
.L802A6E98:
	b       .L802A6ECC
	nop
.L802A6EA0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802A6EC4
	nop
	lui     $t0, %hi(object_80361184)
	lw      $t0, %lo(object_80361184)($t0)
	li      $t9, 0x02BC
	sh      $t9, 0x0024($t0)
.L802A6EC4:
	jal     obj_lib_8029F6BC
	nop
.L802A6ECC:
	b       .L802A6ED4
	nop
.L802A6ED4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A6EE4(void) */
.globl object_a_802A6EE4
object_a_802A6EE4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	sw      $t7, 0x00F0($t6)
	li      $at, 0x3F000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x428E0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	li      $at, 0x3F000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	la.u    $t1, o_130001AC
	la.l    $t1, o_130001AC
	li      $t0, 0x0056
	sw      $t0, 0x0018($sp)
	sw      $t1, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0047
	move    $a3, $0
	sw      $t9, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f10, 0x0010($sp)
	lui     $t2, %hi(stage_index)
	lh      $t2, %lo(stage_index)($t2)
	li      $at, 0x0020
	beq     $t2, $at, .L802A6FF4
	nop
	jal     save_flag_get
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t7, %hi(object_a_80330020)
	move    $s0, $v0
	lw      $t4, 0x0144($t3)
	sll     $t5, $t4, 2
	addu    $t7, $t7, $t5
	lw      $t7, %lo(object_a_80330020)($t7)
	and     $t6, $t7, $s0
	beqz    $t6, .L802A6FDC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
	lui     $at, %hi(object_a_803378F8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, %lo(object_a_803378F8)($at)
	b       .L802A6FEC
	swc1    $f16, 0x0030($t0)
.L802A6FDC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
.L802A6FEC:
	b       .L802A7004
	nop
.L802A6FF4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
.L802A7004:
	b       .L802A700C
	nop
.L802A700C:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* void object_a_802A7020(void) */
.globl object_a_802A7020
object_a_802A7020:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A3CFC
	nop
	beqz    $v0, .L802A7074
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_a_80330020)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	addu    $a0, $a0, $t8
	jal     save_flag_set
	lw      $a0, %lo(object_a_80330020)($a0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
	li.u    $a0, 0x30008081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30008081
.L802A7074:
	b       .L802A707C
	nop
.L802A707C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A708C(void) */
.globl object_a_802A708C
object_a_802A708C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0005
	beqz    $at, .L802A7114
	nop
	li.u    $a3, 0x3DCCCCCD
	li.l    $a3, 0x3DCCCCCD
	li      $a0, 0x0002
	li      $a1, 0x0004
	jal     obj_lib_802A3B40
	li      $a2, 0x3F000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0004
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L802A710C
	nop
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	jal     obj_lib_802A37AC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	li      $a0, 0x003C
	li      $a1, 0x008B
	jal     object_a_802AE0CC
	lw      $a3, 0x0144($t0)
.L802A710C:
	b       .L802A7148
	nop
.L802A7114:
	li      $a0, 0x0001
	li      $a1, 0x000C
	li      $a2, 0x00A1
	jal     obj_lib_802A4BE4
	move    $a3, $0
	sw      $v0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	beqz    $t1, .L802A7148
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t3)
.L802A7148:
	b       .L802A7150
	nop
.L802A7150:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802A7160(void) */
.globl object_a_802A7160
object_a_802A7160:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802A7170
object_a_802A7170:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_803300AC
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_803300AC
	b       .L802A718C
	nop
.L802A718C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl s_object_a_802A719C
s_object_a_802A719C:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802A7210
	nop
	lui     $t7, %hi(shape_object)
	lw      $t7, %lo(shape_object)($t7)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x006C($t8)
	beqz    $t9, .L802A7210
	nop
	lui     $t0, %hi(shape_camera)
	lw      $t0, %lo(shape_camera)($t0)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0068($sp)
	jal     obj_lib_8029DE80
	lw      $a2, 0x0034($t0)
	lw      $t1, 0x001C($sp)
	addiu   $a0, $sp, 0x0020
	jal     obj_lib_8029DCD4
	lw      $a1, 0x006C($t1)
	lw      $t2, 0x001C($sp)
	jal     obj_lib_8029F188
	lw      $a0, 0x006C($t2)
.L802A7210:
	b       .L802A7220
	move    $v0, $0
	b       .L802A7220
	nop
.L802A7220:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl object_a_802A7230
object_a_802A7230:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x447A0000 # 0x42480000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     object_a_802A958C
	li      $a2, 0x0040
	b       .L802A7254
	nop
.L802A7254:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A7264(void) */
.globl object_a_802A7264
object_a_802A7264:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	bnez    $t9, .L802A732C
	nop
	jal     obj_lib_802A05B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(camera_8032DF30)
	sw      $t0, %lo(camera_8032DF30)($at)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0005
	jal     obj_lib_802A184C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x0184($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     obj_lib_802A48BC
	nop
	beqz    $v0, .L802A7324
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t3)
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SEQ_mute
	li      $a2, 0x0028
.L802A7324:
	b       .L802A736C
	nop
.L802A732C:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0011
	beqz    $v0, .L802A736C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x008C($t8)
	ori     $t0, $t9, 0x0400
	sw      $t0, 0x008C($t8)
.if 1
	jal     bombking_stickON
	nop
.endif
.L802A736C:
	b       .L802A7374
	nop
.L802A7374:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802A7384:
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f12, $f8
	nop
	bc1f    .L802A73C0
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802A73C8
	nop
.L802A73C0:
	jr      $ra
	move    $v0, $0
.L802A73C8:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802A73D8(void) */
.globl object_a_802A73D8
object_a_802A73D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05D4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC2C80000
	mtc1    $at, $f10
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0168($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802A742C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0005
	sw      $t7, 0x014C($t8)
	jal     obj_lib_802A05B4
	nop
.L802A742C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0100($t9)
	bnez    $t0, .L802A7484
	nop
	jal     obj_lib_802A0008
	li      $a0, 0x000F
	beqz    $v0, .L802A7458
	nop
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
.L802A7458:
	jal     obj_lib_802A5288
	li      $a0, 0x0004
	beqz    $v0, .L802A747C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0100($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0100($t1)
.L802A747C:
	b       .L802A7534
	nop
.L802A7484:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x0100($t4)
	bne     $t5, $at, .L802A74BC
	nop
	li      $a0, 0x000B
	jal     obj_lib_802A5248
	li      $a1, 0x0007
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	b       .L802A74C4
	sw      $t6, 0x0100($t7)
.L802A74BC:
	jal     obj_lib_8029F4B4
	li      $a0, 0x000B
.L802A74C4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0108($t8)
	bnez    $t9, .L802A750C
	nop
	li      $at, 0x41400000 # 0x40400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x0200 # 0x0100
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t2)
	b       .L802A7534
	nop
.L802A750C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x0108($t1)
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x0108($t1)
.L802A7534:
	jal     obj_lib_802A52F8
	nop
	beqz    $v0, .L802A7554
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
.L802A7554:
	li      $at, 0x44960000
	mtc1    $at, $f12
	jal     object_a_802A7384
	nop
	beqz    $v0, .L802A7580
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
	jal     Na_BGM_stop
	li      $a0, 0x0416
.if 1
	jal     bombking_stickOFF
	nop
.endif
.L802A7580:
	b       .L802A7588
	nop
.L802A7588:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A7598(void) */
.globl object_a_802A7598
object_a_802A7598:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802A763C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0104($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00FC($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, .L802A7604
	nop
	li.u    $a0, 0x501D8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x501D8081
.L802A7604:
	jal     obj_lib_802A5288
	move    $a0, $0
	beqz    $v0, .L802A7634
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t3)
	li      $a0, 0x0001
	jal     obj_lib_802A5248
	move    $a1, $0
.L802A7634:
	b       .L802A77E8
	nop
.L802A763C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0150($t6)
	bne     $t7, $at, .L802A7774
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	jal     obj_lib_802A5358
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $s0, $v0
	lw      $t9, 0x00FC($t8)
	addu    $t0, $t9, $s0
	sw      $t0, 0x00FC($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, str_object_a_0_fmt
	la.l    $a0, str_object_a_0_fmt
	jal     obj_debug_802CA568
	lw      $a1, 0x00FC($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x00FC($t2)
	slti    $at, $t4, 0x000B
	bnez    $at, .L802A76F8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t5, 0x0003
	sw      $t5, 0x0088($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0023
	sw      $t9, 0x0108($t0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0801
	lw      $t1, 0x0134($t8)
	and     $t2, $t1, $at
	b       .L802A775C
	sw      $t2, 0x0134($t8)
.L802A76F8:
	li      $at, 0x41A00000 # 0x40400000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t3, 0x0104($t5)
	slti    $at, $t3, 0x0001 # 0x0015
	bnez    $at, .L802A775C
	nop
.if 0
	move    $a0, $0
.else
	li      $a0, -0x8000
.endif
	jal     obj_lib_8029E5EC
	li      $a1, 0x1000 # 0x0400
	beqz    $v0, .L802A775C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t9, $t7, 0x0001
	sw      $t9, 0x0150($t6)
	li      $a0, 0x0009
	jal     obj_lib_802A5248
	li      $a1, 0x0016
.L802A775C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0104($t0)
	addiu   $t2, $t1, 0x0001
	b       .L802A77E8
	sw      $t2, 0x0104($t0)
.L802A7774:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0009
	jal     obj_lib_802A0008
	li      $a0, 0x001F
	beqz    $v0, .L802A77B0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t8, 0x0002
	sw      $t8, 0x0088($t4)
	li.u    $a0, 0x501EA081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x501EA081
	b       .L802A77E8
	nop
.L802A77B0:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802A77E8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0801
	lw      $t9, 0x0134($t7)
	and     $t6, $t9, $at
	sw      $t6, 0x0134($t7)
.L802A77E8:
	b       .L802A77F0
	nop
.L802A77F0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802A7804(void) */
.globl object_a_802A7804
object_a_802A7804:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	jal     obj_lib_8029F4B4
	li      $a0, 0x000B
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a2, 0x0200
	lw      $a0, 0x00C8($t8)
	jal     obj_lib_8029E530
	lw      $a1, 0x0160($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_803378FC)
	lwc1    $f10, %lo(object_a_803378FC)($at)
	lwc1    $f8, 0x015C($t0)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802A7894
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
.L802A7894:
	li      $at, 0x44960000
	mtc1    $at, $f12
	jal     object_a_802A7384
	nop
	beqz    $v0, .L802A78C0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
	jal     Na_BGM_stop
	li      $a0, 0x0416
.if 1
	jal     bombking_stickOFF
	nop
.endif
.L802A78C0:
	b       .L802A78C8
	nop
.L802A78C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A78D8(void) */
.globl object_a_802A78D8
object_a_802A78D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802A79B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802A795C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0104($t0)
	li.u    $a0, 0x50168081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50168081
	li.u    $a0, 0x91424081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x91424081
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42C80000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0008
	sw      $t1, 0x0130($t2)
	jal     obj_lib_802A05D4
	nop
.L802A795C:
	jal     obj_lib_802A5288
	li      $a0, 0x0002
	beqz    $v0, .L802A7980
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0104($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0104($t3)
.L802A7980:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0104($t6)
	slti    $at, $t7, 0x0004
	bnez    $at, .L802A79AC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t8)
.L802A79AC:
	b       .L802A7A48
	nop
.L802A79B4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0150($t1)
	bne     $t2, $at, .L802A7A10
	nop
	jal     obj_lib_802A5288
	li      $a0, 0x000A
	beqz    $v0, .L802A7A08
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t3, $t5, 0x0001
	sw      $t3, 0x0150($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x0130($t7)
	jal     obj_lib_802A05B4
	nop
.L802A7A08:
	b       .L802A7A48
	nop
.L802A7A10:
	jal     obj_lib_8029F4B4
	li      $a0, 0x000B
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0800
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t9)
	li      $at, 0x0001
	bne     $v0, $at, .L802A7A48
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t8)
.L802A7A48:
	b       .L802A7A50
	nop
.L802A7A50:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A7A60(void) */
.globl object_a_802A7A60
object_a_802A7A60:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0002
	li      $a0, 0x0002
	li      $a1, 0x0002
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0074
	beqz    $v0, .L802A7B04
	nop
	li.u    $a0, 0x5147C081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x5147C081
	jal     obj_lib_8029F6BC
	nop
	jal     obj_lib_802A05B4
	nop
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x43480000
	li      $a0, 0x0014
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
.if 0
	li      $at, 0x44FA0000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337900)
	li.u    $a2, 0xC58CA000
	li.l    $a2, 0xC58CA000
	lwc1    $f14, %lo(object_a_80337900)($at)
	jal     obj_lib_802A5588
	li      $a3, 0x43480000
.else
	jal     bombking_makestar
	nop
.endif
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0008
	sw      $t6, 0x014C($t7)
.L802A7B04:
	b       .L802A7B0C
	nop
.L802A7B0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A7B1C(void) */
.globl object_a_802A7B1C
object_a_802A7B1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x003C
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802A7B44
	nop
	jal     Na_BGM_stop
	li      $a0, 0x0416
.if 1
	jal     bombking_stickOFF
	nop
.endif
.L802A7B44:
	b       .L802A7B4C
	nop
.L802A7B4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A7B5C(void) */
.globl object_a_802A7B5C
object_a_802A7B5C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC2C80000
	mtc1    $at, $f10
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0168($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802A7C30
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L802A7C28
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0184($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x0184($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B0($t4)
	li.u    $a0, 0x50168081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50168081
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0184($t5)
	beqz    $t6, .L802A7C18
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	b       .L802A7C28
	sw      $t7, 0x014C($t8)
.L802A7C18:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t9, 0x0007
	sw      $t9, 0x014C($t1)
.L802A7C28:
	b       .L802A7CFC
	nop
.L802A7C30:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x0150($t2)
	bnez    $t0, .L802A7CC8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00EC($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L802A7C9C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t1, $t9, 0x0001
	b       .L802A7CC0
	sw      $t1, 0x0150($t8)
.L802A7C9C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x00EC($t2)
	andi    $t3, $t0, 0x0001
	beqz    $t3, .L802A7CC0
	nop
	li.u    $a0, 0x50168081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50168081
.L802A7CC0:
	b       .L802A7CFC
	nop
.L802A7CC8:
	jal     obj_lib_802A5288
	li      $a0, 0x000A
	beqz    $v0, .L802A7CE8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0005
	sw      $t4, 0x014C($t5)
.L802A7CE8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t9, $t7, 0x0001
	sw      $t9, 0x0150($t6)
.L802A7CFC:
	b       .L802A7D04
	nop
.L802A7D04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A7D14(void) */
.globl object_a_802A7D14
object_a_802A7D14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L802A7FA4
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337904)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337904)($at)
	jr      $t7
	nop
.globl L802A7D4C
L802A7D4C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802A7D6C
	nop
	li.u    $a0, 0x50468081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50468081
.L802A7D6C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F8($t1)
	jal     obj_lib_802A52C4
	li      $a0, 0x0008
	jal     obj_lib_802A2748
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00A4($t3)
	lwc1    $f6, 0x0168($t3)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A7DD0
	nop
	li      $at, 0x42C80000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	b       .L802A7E00
	swc1    $f8, 0x00B0($t4)
.L802A7DD0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a2, 0x42C80000
	li      $a3, 0xC0800000
	addiu   $a0, $t5, 0x0164
	jal     object_a_802B3134
	addiu   $a1, $t5, 0x00A0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0150($t6)
.L802A7E00:
	b       .L802A7FA4
	nop
.globl L802A7E08
L802A7E08:
	jal     obj_lib_802A52C4
	li      $a0, 0x0008
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B0($t9)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802A7ED4
	nop
	lwc1    $f18, 0x00A4($t9)
	lwc1    $f4, 0x0168($t9)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802A7ED4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0168($t0)
	swc1    $f6, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B0($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t2)
	li      $at, 0xC0800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00E4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0007
	li.u    $a0, 0x50168081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50168081
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0150($t5)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0150($t5)
.L802A7ED4:
	b       .L802A7FA4
	nop
.globl L802A7EDC
L802A7EDC:
	jal     obj_lib_802A5288
	li      $a0, 0x0007
	beqz    $v0, .L802A7F00
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0150($t6)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t6)
.L802A7F00:
	b       .L802A7FA4
	nop
.globl L802A7F08
L802A7F08:
	li      $at, 0x44960000
	mtc1    $at, $f12
	jal     object_a_802A7384
	nop
	beqz    $v0, .L802A7F34
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
	jal     Na_BGM_stop
	li      $a0, 0x0416
.if 1
	jal     bombking_stickOFF
	nop
.endif
.L802A7F34:
	li      $at, 0x43FA0000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     obj_lib_802A48BC
	nop
	beqz    $v0, .L802A7F68
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0150($t2)
.L802A7F68:
	b       .L802A7FA4
	nop
.globl L802A7F70
L802A7F70:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0080
	beqz    $v0, .L802A7F9C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
.L802A7F9C:
	b       .L802A7FA4
	nop
.L802A7FA4:
	b       .L802A7FAC
	nop
.L802A7FAC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802A7FBC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, .L802A7FF0
	nop
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	b       .L802A7FF8
	nop
.L802A7FF0:
	jal     obj_lib_802A2644
	nop
.L802A7FF8:
	la.u    $a0, object_a_803300BC
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_803300BC
	la.u    $a0, object_a_803300E0
	jal     obj_sfx_802CA040
	la.l    $a0, object_a_803300E0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337918)
	lwc1    $f6, %lo(object_a_80337918)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A8044
	nop
	jal     obj_lib_8029F620
	nop
	b       .L802A804C
	nop
.L802A8044:
	jal     obj_lib_8029F66C
	nop
.L802A804C:
	b       .L802A8054
	nop
.L802A8054:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A8064
object_a_802A8064:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0034($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0190($t6)
	ori     $t8, $t7, 0x0004
	sw      $t8, 0x0190($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x0124($t9)
	beqz    $s0, .L802A80E4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802A80F4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802A8108
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802A8108
	nop
	b       .L802A8144
	nop
.L802A80E4:
	jal     object_a_802A7FBC
	nop
	b       .L802A8144
	nop
.L802A80F4:
	li      $a0, 0x0006
	jal     obj_lib_802A01D8
	li      $a1, 0x0001
	b       .L802A8144
	nop
.L802A8108:
	lwc1    $f12, 0x0034($sp)
	lwc1    $f14, 0x0030($sp)
	jal     obj_lib_802A0380
	li      $a2, 0x0004
	jal     obj_lib_802A05B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t0)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t0)
	b       .L802A8144
	nop
.L802A8144:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
	b       .L802A8158
	nop
.L802A8158:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802A816C
object_a_802A816C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	jal     obj_lib_802A04C0
	li      $a0, 0x0065
	jal     rand
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00C8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00C8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t0, o_1300029C
	la.l    $t0, o_1300029C
	li      $t9, 0x0066
	sw      $t9, 0x0014($sp)
	sw      $t0, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0061
	li      $a3, -0x004D
	jal     obj_lib_8029EF64
	sw      $t8, 0x0010($sp)
	b       .L802A81D8
	nop
.L802A81D8:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A81E8
object_a_802A81E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x43480000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     obj_lib_802A390C
	nop
	b       .L802A820C
	nop
.L802A820C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A821C
object_a_802A821C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802A825C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802A82AC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802A834C
	nop
	b       .L802A8354
	nop
.L802A825C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E2F8
	lw      $a0, 0x0068($t7)
	li      $at, 0x43960000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    .L802A82A4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
.L802A82A4:
	b       .L802A8354
	nop
.L802A82AC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, .L802A830C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $t5, o_130003BC
	la.l    $t5, o_130003BC
	li      $t4, 0x00A8
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0050
	li      $a3, 0x0078
	jal     obj_lib_8029EF64
	sw      $t3, 0x0010($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li.u    $a0, 0x31228081
	li.l    $a0, 0x31228081
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802A830C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	addiu   $t9, $t7, -0x0400
	sw      $t9, 0x00D0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00D0($t0)
	slti    $at, $t8, -0x4000
	beqz    $at, .L802A834C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
.L802A834C:
	b       .L802A8354
	nop
.L802A8354:
	b       .L802A835C
	nop
.L802A835C:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802A8370
object_a_802A8370:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	b       .L802A8390
	nop
.L802A8390:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A83A0
object_a_802A83A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f8
	lhu     $t7, 0x00F6($t6)
	mtc1    $0, $f16
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.s $f6, $f4
	li      $at, 0x40100000
	mul.d   $f10, $f6, $f8
	mtc1    $at, $f17
	nop
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x002C($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lhu     $t1, 0x00F6($t0)
	mtc1    $0, $f4
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	neg.s   $f8, $f6
	li      $at, 0x40100000
	cvt.d.s $f10, $f8
	mtc1    $at, $f5
	mul.d   $f18, $f10, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0030($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	addiu   $t7, $t5, 0x0400
	sw      $t7, 0x00F4($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x001E
	beqz    $at, .L802A84A0
	nop
	jal     obj_lib_802A05B4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40400000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t6)
	add.s   $f18, $f10, $f16
	b       .L802A84E8
	swc1    $f18, 0x00A4($t6)
.L802A84A0:
	jal     obj_lib_802A05D4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f12
	li      $at, 0x41200000
	mtc1    $at, $f14
	jal     obj_lib_8029E398
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
	jal     obj_lib_802A2644
	nop
.L802A84E8:
	jal     o_script_80383CB4
	nop
	li      $at, 0x40800000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x40000000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, 0x00A0($t2)
	sub.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A0($t2)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40800000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x40000000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00A8($t3)
	sub.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t3)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x0134($t0)
	andi    $t7, $t5, 0x8000
	bnez    $t7, .L802A8580
	nop
	lw      $t4, 0x0154($t0)
	slti    $at, $t4, 0x00C9
	bnez    $at, .L802A85C8
	nop
.L802A8580:
	li.u    $a0, 0x300B0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x300B0081
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	sw      $0, 0x0024($sp)
.L802A859C:
	lui     $a0, %hi(object)
	la.u    $a2, o_130002E4
	la.l    $a2, o_130002E4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A8
	lw      $t8, 0x0024($sp)
	addiu   $t9, $t8, 0x0001
	slti    $at, $t9, 0x001E
	bnez    $at, .L802A859C
	sw      $t9, 0x0024($sp)
.L802A85C8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mov.s   $f20, $f0
	lwc1    $f4, 0x00A4($t1)
	c.lt.s  $f20, $f4
	nop
	bc1f    .L802A8608
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802A8608:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       .L802A861C
	nop
.L802A861C:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A8630
object_a_802A8630:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x45000000
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	addiu   $t8, $t7, 0x0800
	sw      $t8, 0x00FC($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x45000000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	addiu   $t2, $t1, 0x0800
	sw      $t2, 0x0100($t3)
	li.u    $a0, 0x300B0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x300B0081
	b       .L802A86AC
	nop
.L802A86AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802A86BC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	mov.s   $f20, $f0
	cvt.d.s $f4, $f20
	add.d   $f8, $f4, $f6
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f8
	b       .L802A86F8
	nop
.L802A86F8:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A870C
object_a_802A870C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40400000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x40C00000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x00A4($t6)
	add.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A4($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x40A00000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A0($t7)
	sub.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A0($t7)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x40A00000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00A8($t8)
	sub.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f10
	lhu     $t0, 0x00F6($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337920)
	ldc1    $f8, %lo(object_a_80337920)($at)
	cvt.d.s $f6, $f4
	li      $at, 0x3FF00000
	mul.d   $f16, $f6, $f8
	mtc1    $at, $f11
	nop
	add.d   $f18, $f16, $f10
	cvt.s.d $f4, $f18
	swc1    $f4, 0x002C($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	lw      $t5, 0x00FC($t3)
	addu    $t6, $t4, $t5
	sw      $t6, 0x00F4($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f18
	lhu     $t8, 0x00FA($t7)
	sra     $t0, $t8, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337928)
	ldc1    $f16, %lo(object_a_80337928)($at)
	cvt.d.s $f8, $f6
	li      $at, 0x3FF00000
	mul.d   $f10, $f8, $f16
	mtc1    $at, $f19
	nop
	add.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0030($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t9, 0x00F8($t2)
	lw      $t4, 0x0100($t2)
	addu    $t5, $t9, $t4
	sw      $t5, 0x00F8($t2)
	b       .L802A8890
	nop
.L802A8890:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A88A4
object_a_802A88A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lhu     $t8, 0x00F6($t7)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337930)
	ldc1    $f8, %lo(object_a_80337930)($at)
	cvt.d.s $f6, $f4
	li      $at, 0x3FF00000
	mul.d   $f10, $f6, $f8
	mtc1    $at, $f17
	nop
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x002C($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	lw      $t3, 0x00FC($t1)
	addu    $t4, $t2, $t3
	sw      $t4, 0x00F4($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f18
	lhu     $t6, 0x00FA($t5)
	sra     $t8, $t6, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337938)
	ldc1    $f10, %lo(object_a_80337938)($at)
	cvt.d.s $f8, $f6
	li      $at, 0x3FF00000
	mul.d   $f16, $f8, $f10
	mtc1    $at, $f19
	nop
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0030($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x00F8($t0)
	lw      $t2, 0x0100($t0)
	addu    $t3, $t7, $t2
	sw      $t3, 0x00F8($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x00A4($t4)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802A89FC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0074($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x00A4($t6)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t6)
	lui     $t8, %hi(obj_list_free+0x60)
	lw      $t8, %lo(obj_list_free+0x60)($t8)
	beqz    $t8, .L802A89FC
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002D28
	la.l    $a2, o_13002D28
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A5
.L802A89FC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t5, 0x0134($t9)
	andi    $t7, $t5, 0x8000
	beqz    $t7, .L802A8A20
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802A8A20:
	b       .L802A8A28
	nop
.L802A8A28:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802A8A38:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f8
	lhu     $t7, 0x00F6($t6)
	mtc1    $0, $f16
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.s $f6, $f4
	li      $at, 0x40000000
	mul.d   $f10, $f6, $f8
	mtc1    $at, $f17
	nop
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x002C($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	lw      $t2, 0x00FC($t0)
	addu    $t3, $t1, $t2
	sw      $t3, 0x00F4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f10
	lhu     $t5, 0x00FA($t4)
	mtc1    $0, $f18
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	cvt.d.s $f8, $f6
	li      $at, 0x40000000
	mul.d   $f16, $f8, $f10
	mtc1    $at, $f19
	nop
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0030($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x00F8($t9)
	lw      $t1, 0x0100($t9)
	addu    $t2, $t6, $t1
	sw      $t2, 0x00F8($t9)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802A8B18
object_a_802A8B18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x40000000
	li      $a2, 0x40000000
	jal     obj_lib_8029F3D0
	li      $a3, 0x3F800000
	jal     o_script_80383CB4
	nop
	li      $at, 0x45000000
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	addiu   $t8, $t7, 0x0800
	sw      $t8, 0x00FC($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x45000000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	addiu   $t2, $t1, 0x0800
	sw      $t2, 0x0100($t3)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A2FC0
	li      $a1, 0x42C80000
	b       .L802A8BB0
	nop
.L802A8BB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A8BC0
object_a_802A8BC0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x40800000
	jal     object_a_802A8A38
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f10, 0x00A4($t8)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802A8C70
	nop
	lw      $t9, 0x0154($t8)
	beqz    $t9, .L802A8C70
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	la.u    $t0, o_13002D28
	la.l    $t0, o_13002D28
	lui     $a2, %hi(object)
	lw      $a2, %lo(object)($a2)
	sw      $t0, 0x0010($sp)
	li      $a0, 0x0005
	li      $a1, 0x0000
	jal     obj_lib_8029EE24
	li      $a3, 0x00A5
.L802A8C70:
	b       .L802A8C78
	nop
.L802A8C78:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A8C88
object_a_802A8C88:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x40800000
	jal     object_a_802A8A38
	nop
	b       .L802A8CCC
	nop
.L802A8CCC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A8CDC
object_a_802A8CDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_80361250)
	lh      $t6, %lo(object_80361250)($t6)
	li      $at, 0x000F
	beq     $t6, $at, .L802A8D04
	nop
	li      $at, 0x0007
	bne     $t6, $at, .L802A8D30
	nop
.L802A8D04:
	lui     $t7, %hi(gfx_frame)
	lw      $t7, %lo(gfx_frame)($t7)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L802A8D30
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300046C
	la.l    $a2, o_1300046C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A4
.L802A8D30:
	b       .L802A8D38
	nop
.L802A8D38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A8D48
object_a_802A8D48:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
.L802A8D54:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000400
	la.l    $a2, o_13000400
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A4
	lw      $t6, 0x001C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0003
	bnez    $at, .L802A8D54
	sw      $t7, 0x001C($sp)
	b       .L802A8D88
	nop
.L802A8D88:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A8D98
object_a_802A8D98:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x00B0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802A8DC0(void) */
.globl object_a_802A8DC0
object_a_802A8DC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802A8E68
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x0164($t9)
	swc1    $f4, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0168($t0)
	swc1    $f6, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x016C($t1)
	swc1    $f8, 0x00A8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00C4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0144($t3)
	sll     $t5, $t4, 8
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	sw      $t7, 0x00C8($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x010C($t9)
	jal     obj_lib_8029F620
	nop
	jal     obj_lib_802A05D4
	nop
.L802A8E68:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t0)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802A8F0C
	nop
	jal     obj_lib_802A05D4
	nop
	jal     obj_lib_8029F620
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0134($t1)
	andi    $t4, $t2, 0x8000
	beqz    $t4, .L802A8EF8
	nop
	li      $at, 0x00800000
	and     $t5, $t2, $at
	bnez    $t5, .L802A8EF8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t3, 0x0001
	sw      $t3, 0x010C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	b       .L802A8F04
	sw      $t9, 0x00F8($t0)
.L802A8EF8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
.L802A8F04:
	b       .L802A8F28
	nop
.L802A8F0C:
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_8029F66C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x010C($t4)
.L802A8F28:
	b       .L802A8F30
	nop
.L802A8F30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A8F40(void) */
.globl object_a_802A8F40
object_a_802A8F40:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802A8F68
	nop
	li.u    $a0, 0x500DF081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x500DF081
.L802A8F68:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f18
	lw      $t0, 0x0154($t9)
	bgez    $t0, .L802A8FA4
	sra     $t1, $t0, 1
	addiu   $at, $t0, 0x0001
	sra     $t1, $at, 1
.L802A8FA4:
	andi    $t2, $t1, 0x0001
	mtc1    $t2, $f10
	li      $at, 0x3FE00000
	mtc1    $at, $f19
	cvt.d.w $f16, $f10
	li      $at, 0x40000000
	mtc1    $at, $f8
	sub.d   $f4, $f16, $f18
	lwc1    $f16, 0x00A0($t9)
	cvt.s.d $f6, $f4
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A0($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f8
	lw      $t4, 0x0154($t3)
	bgez    $t4, .L802A8FF8
	sra     $t5, $t4, 1
	addiu   $at, $t4, 0x0001
	sra     $t5, $at, 1
.L802A8FF8:
	andi    $t6, $t5, 0x0001
	mtc1    $t6, $f4
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.w $f6, $f4
	li      $at, 0x40000000
	mtc1    $at, $f18
	sub.d   $f16, $f6, $f8
	lwc1    $f6, 0x00A8($t3)
	cvt.s.d $f10, $f16
	mul.s   $f4, $f10, $f18
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x00A8($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0044
	bnez    $at, .L802A90FC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	lw      $t1, 0x0154($t0)
	bgez    $t1, .L802A9064
	sra     $t2, $t1, 1
	addiu   $at, $t1, 0x0001
	sra     $t2, $at, 1
.L802A9064:
	andi    $t9, $t2, 0x0001
	mtc1    $t9, $f16
	li      $at, 0x3FE00000
	mtc1    $at, $f19
	cvt.d.w $f10, $f16
	li      $at, 0x40800000
	mtc1    $at, $f8
	sub.d   $f6, $f10, $f18
	lwc1    $f10, 0x00A0($t0)
	cvt.s.d $f4, $f6
	mul.s   $f16, $f4, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A0($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f8
	lw      $t5, 0x0154($t4)
	bgez    $t5, .L802A90B8
	sra     $t6, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t6, $at, 1
.L802A90B8:
	andi    $t3, $t6, 0x0001
	mtc1    $t3, $f6
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.w $f4, $f6
	li      $at, 0x40800000
	mtc1    $at, $f18
	sub.d   $f10, $f4, $f8
	lwc1    $f4, 0x00A8($t4)
	cvt.s.d $f16, $f10
	mul.s   $f6, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	sw      $t7, 0x014C($t8)
.L802A90FC:
	b       .L802A9104
	nop
.L802A9104:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A9114(void) */
.globl object_a_802A9114
object_a_802A9114:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802A913C
	nop
	li.u    $a0, 0x500EF081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x500EF081
.L802A913C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0004
	beqz    $at, .L802A9200
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	lw      $t1, 0x0154($t0)
	bgez    $t1, .L802A9174
	sra     $t2, $t1, 1
	addiu   $at, $t1, 0x0001
	sra     $t2, $at, 1
.L802A9174:
	andi    $t3, $t2, 0x0001
	mtc1    $t3, $f4
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.w $f6, $f4
	li      $at, 0x40800000
	mtc1    $at, $f18
	sub.d   $f10, $f6, $f8
	lwc1    $f6, 0x00A0($t0)
	cvt.s.d $f16, $f10
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x00A0($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f18
	lw      $t5, 0x0154($t4)
	bgez    $t5, .L802A91C8
	sra     $t6, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t6, $at, 1
.L802A91C8:
	andi    $t7, $t6, 0x0001
	mtc1    $t7, $f10
	li      $at, 0x3FE00000
	mtc1    $at, $f19
	cvt.d.w $f16, $f10
	li      $at, 0x40800000
	mtc1    $at, $f8
	sub.d   $f6, $f16, $f18
	lwc1    $f16, 0x00A8($t4)
	cvt.s.d $f4, $f6
	mul.s   $f10, $f4, $f8
	add.s   $f18, $f16, $f10
	b       .L802A92E4
	swc1    $f18, 0x00A8($t4)
.L802A9200:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0006
	beqz    $at, .L802A9220
	nop
	b       .L802A92E4
	nop
.L802A9220:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0016
	beqz    $at, .L802A92A8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00F6($t3)
	lw      $t7, 0x0144($t3)
	sra     $t5, $t0, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_sin)($at)
	sll     $t4, $t7, 8
	sll     $t8, $t4, 16
	li      $at, 0x46800000
	mtc1    $at, $f4
	sra     $t9, $t8, 16
	mtc1    $t9, $f16
	mul.s   $f8, $f6, $f4
	cvt.s.w $f10, $f16
	add.s   $f18, $f10, $f8
	trunc.w.s $f6, $f18
	mfc1    $t2, $f6
	nop
	sw      $t2, 0x00C8($t3)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x00F4($t0)
	addiu   $t6, $t5, 0x0400
	b       .L802A92E4
	sw      $t6, 0x00F4($t0)
.L802A92A8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t4, 0x0154($t7)
	slti    $at, $t4, 0x001A
	beqz    $at, .L802A92C8
	nop
	b       .L802A92E4
	nop
.L802A92C8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F4($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t9, 0x0005
	sw      $t9, 0x014C($t1)
.L802A92E4:
	b       .L802A92EC
	nop
.L802A92EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A92FC(void) */
.globl object_a_802A92FC
object_a_802A92FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802A9324
	nop
	li.u    $a0, 0x500FF081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x500FF081
.L802A9324:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0004
	beqz    $at, .L802A9344
	nop
	b       .L802A93E0
	nop
.L802A9344:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0014
	beqz    $at, .L802A93B0
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F4($t2)
	addiu   $t4, $t3, 0x0400
	sw      $t4, 0x00F4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lhu     $t6, 0x00F6($t5)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x46000000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	b       .L802A93E0
	sw      $t0, 0x00C4($t5)
.L802A93B0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0154($t1)
	slti    $at, $t3, 0x0019
	beqz    $at, .L802A93D0
	nop
	b       .L802A93E0
	nop
.L802A93D0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t2)
.L802A93E0:
	b       .L802A93E8
	nop
.L802A93E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A93F8(void) */
.globl object_a_802A93F8
object_a_802A93F8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_8029F66C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x010C($t6)
	li      $t7, 0x0001
	lui     $at, %hi(object_8036125A)
	sh      $t7, %lo(object_8036125A)($at)
	b       .L802A9430
	nop
.L802A9430:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802A9440(void) */
.globl object_a_802A9440
object_a_802A9440:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802A9460(void) */
.globl object_a_802A9460
object_a_802A9460:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0004
	bnez    $at, .L802A9488
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802A9488:
	b       .L802A9490
	nop
.L802A9490:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802A9498
object_a_802A9498:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330140
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330140
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	beqz    $t7, .L802A94D4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x00F8($t8)
.L802A94D4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
	b       .L802A94E8
	nop
.L802A94E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A94F8
object_a_802A94F8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lh      $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802A956C
	nop
	jal     obj_lib_8029F620
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	move    $a0, $t1
	jal     obj_lib_8029F120
	lw      $a1, 0x0068($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x00C8($t3)
	sw      $t4, 0x00C8($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x00C4($t6)
	b       .L802A9574
	sw      $t7, 0x00D0($t5)
.L802A956C:
	jal     obj_lib_8029F66C
	nop
.L802A9574:
	b       .L802A957C
	nop
.L802A957C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802A958C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $s0, 0x0088($t7)
	beqz    $s0, .L802A95E8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802A95F0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802A960C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802A9660
	nop
	b       .L802A96B4
	nop
.L802A95E8:
	b       .L802A96B4
	nop
.L802A95F0:
	lui     $a0, %hi(obj_mario)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     obj_lib_802A27B0
	lw      $a0, %lo(obj_mario)($a0)
	b       .L802A96B4
	nop
.L802A960C:
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lw      $t0, 0x0030($sp)
	lw      $t9, 0x0134($t8)
	addiu   $t1, $t0, 0x0004
	or      $t2, $t9, $t1
	sw      $t2, 0x0134($t8)
	lwc1    $f4, 0x0028($sp)
	la.u    $t3, player_data
	la.l    $t3, player_data
	swc1    $f4, 0x0054($t3)
	lwc1    $f6, 0x002C($sp)
	la.u    $t4, player_data
	la.l    $t4, player_data
	swc1    $f6, 0x004C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	sw      $0, 0x0088($t6)
	b       .L802A96B4
	nop
.L802A9660:
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t0, 0x0134($t7)
	ori     $t9, $t0, 0x0044
	sw      $t9, 0x0134($t7)
	li      $at, 0x41200000
	mtc1    $at, $f8
	la.u    $t1, player_data
	la.l    $t1, player_data
	swc1    $f8, 0x0054($t1)
	li      $at, 0x41200000
	mtc1    $at, $f10
	la.u    $t2, player_data
	la.l    $t2, player_data
	swc1    $f10, 0x004C($t2)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t3, 0x0068($t8)
	sw      $0, 0x0088($t3)
	b       .L802A96B4
	nop
.L802A96B4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0068($t4)
	lw      $t6, 0x00C8($t5)
	sw      $t6, 0x00C8($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0068($t0)
	lh      $t7, 0x0074($t9)
	bnez    $t7, .L802A96EC
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802A96EC:
	b       .L802A96F4
	nop
.L802A96F4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A9708
object_a_802A9708:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42200000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     object_a_802A958C
	li      $a2, 0x0040
	b       .L802A972C
	nop
.L802A972C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802A973C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0004
	lw      $t7, 0x00F8($t6)
	beq     $t7, $at, .L802A989C
	nop
	jal     obj_lib_802A15AC
	nop
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f4, $f0
	nop
	bc1f    .L802A97DC
	nop
	jal     obj_lib_802A1634
	nop
	li      $at, 0x43480000
	mtc1    $at, $f6
	nop
	c.lt.s  $f0, $f6
	nop
	bc1f    .L802A97B8
	nop
	b       .L802A97D4
	sw      $0, 0x001C($sp)
.L802A97B8:
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
	jal     obj_lib_802A2748
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0160($t9)
.L802A97D4:
	b       .L802A9858
	nop
.L802A97DC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f8, 0x015C($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802A9850
	nop
	lui     $t1, %hi(gfx_frame)
	lw      $t1, %lo(gfx_frame)($t1)
	lh      $t2, 0x002E($sp)
	divu    $0, $t1, $t2
	mfhi    $t3
	bnez    $t2, .L802A981C
	nop
	break   7
.L802A981C:
	bnez    $t3, .L802A9844
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0160($t4)
.L802A9844:
	li      $t5, 0x0002
	b       .L802A9858
	sw      $t5, 0x001C($sp)
.L802A9850:
	li      $t6, 0x0003
	sw      $t6, 0x001C($sp)
.L802A9858:
	lw      $t7, 0x0020($sp)
	beqz    $t7, .L802A9894
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_a_802C6538
	addiu   $a0, $a0, 0x0160
	beqz    $v0, .L802A9894
	nop
	li      $t8, 0x0004
	sw      $t8, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0004
	sw      $t9, 0x00F8($t0)
.L802A9894:
	b       .L802A98A4
	nop
.L802A989C:
	li      $t1, 0x0004
	sw      $t1, 0x001C($sp)
.L802A98A4:
	b       .L802A98B4
	lw      $v0, 0x001C($sp)
	b       .L802A98B4
	nop
.L802A98B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802A98C4:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	sw      $a2, 0x0010($sp)
	sw      $0, 0x0004($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x000C($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802A9924
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0010($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0000($a0)
	lwc1    $f18, 0x0000($a0)
	lwc1    $f4, 0x000C($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802A991C
	nop
	lwc1    $f6, 0x000C($sp)
	swc1    $f6, 0x0000($a0)
.L802A991C:
	b       .L802A997C
	nop
.L802A9924:
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x000C($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802A9974
	nop
	lwc1    $f16, 0x0000($a0)
	lwc1    $f18, 0x0010($sp)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a0)
	lwc1    $f8, 0x000C($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802A996C
	nop
	lwc1    $f10, 0x000C($sp)
	swc1    $f10, 0x0000($a0)
.L802A996C:
	b       .L802A997C
	nop
.L802A9974:
	li      $t6, 0x0001
	sw      $t6, 0x0004($sp)
.L802A997C:
	b       .L802A998C
	lw      $v0, 0x0004($sp)
	b       .L802A998C
	nop
.L802A998C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void object_a_802A9994(void) */
.globl object_a_802A9994
object_a_802A9994:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802A99C0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00FC($t8)
.L802A99C0:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	move    $s0, $t1
	beqz    $s0, .L802A9A24
	sw      $t1, 0x0028($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L802A9AD0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802A9B54
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802A9B98
	nop
	b       .L802A9C44
	nop
.L802A9A24:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
	jal     obj_lib_802A15AC
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	nop
	c.lt.s  $f0, $f6
	nop
	bc1f    .L802A9AB8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00FC($t4)
	slti    $at, $t5, 0x0029
	beqz    $at, .L802A9AA0
	nop
	lw      $a0, 0x00C8($t4)
	jal     obj_lib_802A11A8
	lw      $a1, 0x0160($t4)
	slti    $at, $v0, 0x1000
	beqz    $at, .L802A9AB0
	nop
.L802A9AA0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0150($t7)
.L802A9AB0:
	b       .L802A9AC8
	nop
.L802A9AB8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x0150($t9)
.L802A9AC8:
	b       .L802A9C44
	nop
.L802A9AD0:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41F00000
	li      $a2, 0x40800000
	jal     object_a_802A98C4
	addiu   $a0, $a0, 0x00B8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x00C8($t0)
	jal     obj_lib_802A11A8
	lw      $a1, 0x0160($t0)
	slti    $at, $v0, 0x4001
	bnez    $at, .L802A9B18
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x0150($t2)
.L802A9B18:
	jal     obj_lib_802A15AC
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f8
	nop
	c.lt.s  $f8, $f0
	nop
	bc1f    .L802A9B4C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x0003
	sw      $t3, 0x0150($t5)
.L802A9B4C:
	b       .L802A9C44
	nop
.L802A9B54:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x40800000
	jal     object_a_802A98C4
	addiu   $a0, $a0, 0x00B8
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x00FC($t4)
	slti    $at, $t6, 0x0031
	bnez    $at, .L802A9B90
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0150($t7)
.L802A9B90:
	b       .L802A9C44
	nop
.L802A9B98:
	jal     obj_lib_802A1634
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f0, $f10
	nop
	bc1f    .L802A9BD0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	b       .L802A9C10
	swc1    $f16, 0x00B8($t8)
.L802A9BD0:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41200000
	li      $a2, 0x40800000
	jal     object_a_802A98C4
	addiu   $a0, $a0, 0x00B8
	jal     obj_lib_802A2748
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0800
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t0)
.L802A9C10:
	jal     obj_lib_802A15AC
	nop
	lui     $at, %hi(object_a_80337940)
	lwc1    $f18, %lo(object_a_80337940)($at)
	c.lt.s  $f0, $f18
	nop
	bc1f    .L802A9C3C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0150($t1)
.L802A9C3C:
	b       .L802A9C44
	nop
.L802A9C44:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t5, 0x0028($sp)
	lw      $t3, 0x0150($t2)
	beq     $t3, $t5, .L802A9C6C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	b       .L802A9C80
	sw      $0, 0x00FC($t4)
.L802A9C6C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00FC($t6)
.L802A9C80:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0004
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802A9CB8
	nop
	li.u    $a0, 0x600A4001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x600A4001
.L802A9CB8:
	la.u    $a0, str_object_a_0_fg
	la.l    $a0, str_object_a_0_fg
	jal     obj_debug_802CA568
	lw      $a1, 0x003C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $a0, str_object_a_0_sp
	la.l    $a0, str_object_a_0_sp
	lwc1    $f8, 0x00B8($t0)
	trunc.w.s $f10, $f8
	mfc1    $a1, $f10
	jal     obj_debug_802CA568
	nop
	b       .L802A9CF4
	nop
.L802A9CF4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

/* void object_a_802A9D08(void) */
.globl object_a_802A9D08
object_a_802A9D08:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802A9DA4
	nop
	jal     obj_lib_802A5288
	move    $a0, $0
	beqz    $v0, .L802A9D4C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t8)
.L802A9D4C:
	jal     o_script_80383CB4
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	li      $at, 0x41200000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t2, $f16
	nop
	sw      $t2, 0x00FC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0100($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f18
	b       .L802A9F38
	swc1    $f18, 0x00B8($t5)
.L802A9DA4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0150($t6)
	bne     $t7, $at, .L802A9EDC
	nop
	jal     obj_lib_802A5358
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	move    $s0, $v0
	lw      $t0, 0x0100($t9)
	addu    $t8, $t0, $s0
	sw      $t8, 0x0100($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, str_object_a_1_fmt
	la.l    $a0, str_object_a_1_fmt
	jal     obj_debug_802CA568
	lw      $a1, 0x0100($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	slti    $at, $t3, 0x000B
	bnez    $at, .L802A9E48
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	sw      $t4, 0x0088($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0801
	lw      $t8, 0x0134($t0)
	and     $t9, $t8, $at
	b       .L802A9ED4
	sw      $t9, 0x0134($t0)
.L802A9E48:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	addiu   $t3, $t2, 0x0800
	sw      $t3, 0x00C8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $s0, 0x00FC($t4)
	lw      $t6, 0x00FC($t4)
	slti    $t5, $s0, 0x0000
	move    $s0, $t5
	addiu   $t7, $t6, -0x0001
	beqz    $s0, .L802A9ED4
	sw      $t7, 0x00FC($t4)
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     object_a_802B14F4
	nop
	bnez    $v0, .L802A9EC0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	slti    $at, $t9, -0x0010
	beqz    $at, .L802A9ED4
	nop
.L802A9EC0:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0150($t0)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0150($t0)
.L802A9ED4:
	b       .L802A9F38
	nop
.L802A9EDC:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
	jal     obj_lib_802A0008
	li      $a0, 0x0012
	beqz    $v0, .L802A9F38
	nop
	li.u    $a0, 0x501EA081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x501EA081
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t1, 0x0002
	sw      $t1, 0x0088($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0801
	lw      $t8, 0x0134($t4)
	and     $t9, $t8, $at
	sw      $t9, 0x0134($t4)
.L802A9F38:
	b       .L802A9F40
	nop
.L802A9F40:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802A9F54(void) */
.globl object_a_802A9F54
object_a_802A9F54:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0004
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0065
	bnez    $at, .L802A9FB0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
.L802A9FB0:
	b       .L802A9FB8
	nop
.L802A9FB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802A9FC8(void) */
.globl object_a_802A9FC8
object_a_802A9FC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0279
	beqz    $t8, .L802AA014
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0005
	jal     obj_lib_802A1B8C
	li      $a2, 0x41A00000
	li.u    $a0, 0x516E0081
	jal     obj_lib_802A37DC
	li.l    $a0, 0x516E0081
.L802AA014:
	b       .L802AA01C
	nop
.L802AA01C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AA02C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_80330198
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330198
	jal     obj_lib_802A2348
	li      $a0, -0x001E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x0800
	beqz    $t8, .L802AA094
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0088($t2)
	li.u    $a0, 0x501D8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x501D8081
.L802AA094:
	b       .L802AA09C
	nop
.L802AA09C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AA0AC
object_a_802AA0AC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x002C($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0190($t6)
	ori     $t8, $t7, 0x0004
	sw      $t8, 0x0190($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x0124($t9)
	beqz    $s0, .L802AA13C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802AA14C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802AA160
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802AA160
	nop
	b       .L802AA178
	nop
.L802AA13C:
	jal     object_a_802AA02C
	nop
	b       .L802AA178
	nop
.L802AA14C:
	li      $a0, 0x0002
	jal     obj_lib_802A01D8
	move    $a1, $0
	b       .L802AA178
	nop
.L802AA160:
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0028($sp)
	jal     obj_lib_802A0380
	li      $a2, 0x0002
	b       .L802AA178
	nop
.L802AA178:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, str_object_a_1_md
	la.l    $a0, str_object_a_1_md
	jal     obj_debug_802CA568
	lw      $a1, 0x014C($t1)
	b       .L802AA1A4
	nop
.L802AA1A4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802AA1B8
object_a_802AA1B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x000C($t6)
	li.u    $at, 0x00880898
	li.l    $at, 0x00880898
	bne     $t7, $at, .L802AA260
	nop
	jal     obj_lib_802A05D4
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802AA258
	nop
	la.u    $a0, o_13000624
	jal     obj_lib_802A14FC
	la.l    $a0, o_13000624
	beqz    $v0, .L802AA21C
	nop
	jal     Na_g_803220F0
	nop
.L802AA21C:
	li.u    $a0, 0x300F0081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x300F0081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0008
	sw      $t8, 0x0130($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x0180($t1)
	li      $at, 0x42A00000
	mtc1    $at, $f12
	jal     obj_lib_802A4440
	move    $a1, $0
.L802AA258:
	b       .L802AA268
	nop
.L802AA260:
	jal     obj_lib_802A05B4
	nop
.L802AA268:
	b       .L802AA270
	nop
.L802AA270:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AA280:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802AA3A8
	nop
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	lw      $a1, 0x00C8($t7)
	jal     obj_lib_802A11A8
	lw      $a0, 0x00C8($t6)
	slti    $at, $v0, 0x6001
	bnez    $at, .L802AA3A8
	nop
	la.u    $t8, player_data
	la.l    $t8, player_data
	lw      $t9, 0x000C($t8)
	li.u    $at, 0x018008AA
	li.l    $at, 0x018008AA
	bne     $t9, $at, .L802AA2F4
	nop
	b       .L802AA3B8
	li      $v0, 0x0001
.L802AA2F4:
	la.u    $t0, player_data
	la.l    $t0, player_data
	lw      $t1, 0x000C($t0)
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	bne     $t1, $at, .L802AA318
	nop
	b       .L802AA3B8
	li      $v0, 0x0001
.L802AA318:
	la.u    $t2, player_data
	la.l    $t2, player_data
	lw      $t3, 0x000C($t2)
	li.u    $at, 0x00800457
	li.l    $at, 0x00800457
	bne     $t3, $at, .L802AA33C
	nop
	b       .L802AA3B8
	li      $v0, 0x0001
.L802AA33C:
	la.u    $t4, player_data
	la.l    $t4, player_data
	lw      $t5, 0x000C($t4)
	li.u    $at, 0x0080045A
	li.l    $at, 0x0080045A
	bne     $t5, $at, .L802AA360
	nop
	b       .L802AA3B8
	li      $v0, 0x0001
.L802AA360:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x000C($t6)
	li.u    $at, 0x018008AC
	li.l    $at, 0x018008AC
	bne     $t7, $at, .L802AA384
	nop
	b       .L802AA3B8
	li      $v0, 0x0002
.L802AA384:
	la.u    $t8, player_data
	la.l    $t8, player_data
	lw      $t9, 0x000C($t8)
	li.u    $at, 0x03000886
	li.l    $at, 0x03000886
	bne     $t9, $at, .L802AA3A8
	nop
	b       .L802AA3B8
	li      $v0, 0x0002
.L802AA3A8:
	b       .L802AA3B8
	move    $v0, $0
	b       .L802AA3B8
	nop
.L802AA3B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AA3C8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0640
	sw      $t6, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F4($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AA3F4
object_a_802AA3F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802AA440
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802AA488
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802AA620
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802AA6C8
	nop
	b       .L802AA6D8
	nop
.L802AA440:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00D0($t7)
	jal     object_a_802AA280
	move    $a0, $0
	beqz    $v0, .L802AA478
	nop
	jal     object_a_802AA3C8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
.L802AA478:
	jal     map_data_803839CC
	nop
	b       .L802AA6D8
	nop
.L802AA488:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D0($t1)
	jal     map_data_803839CC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lw      $t3, 0x00F8($t2)
	lhu     $t4, 0x00F6($t2)
	mtc1    $t3, $f4
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	cvt.s.w $f6, $f4
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_sin)($at)
	neg.s   $f10, $f8
	mul.s   $f16, $f6, $f10
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sw      $t9, 0x00D0($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x0154($t0)
	slti    $at, $t8, 0x001F
	bnez    $at, .L802AA588
	nop
	jal     object_a_802AA280
	move    $a0, $0
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	beqz    $t1, .L802AA588
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43200000
	mtc1    $at, $f6
	lwc1    $f8, 0x00A4($t4)
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	add.s   $f10, $f8, $f6
	lwc1    $f4, 0x00A4($t3)
	c.lt.s  $f10, $f4
	nop
	bc1f    .L802AA57C
	nop
	lw      $t5, 0x0024($sp)
	li      $at, 0x0002
	bne     $t5, $at, .L802AA57C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t9, $t7, 0x0001
	sw      $t9, 0x014C($t6)
	li.u    $a0, 0x315A4081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x315A4081
	b       .L802AA588
	nop
.L802AA57C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0154($t2)
.L802AA588:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x0154($t0)
	beqz    $t8, .L802AA5D8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00F8($t1)
	addiu   $t4, $t3, -0x0008
	sw      $t4, 0x00F8($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x00F8($t5)
	bgez    $t7, .L802AA5D0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
.L802AA5D0:
	b       .L802AA5E0
	nop
.L802AA5D8:
	jal     object_a_802AA3C8
	nop
.L802AA5E0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t2, 0x00F4($t6)
	andi    $t0, $t2, 0x7FFF
	bnez    $t0, .L802AA604
	nop
	li.u    $a0, 0x315A4081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x315A4081
.L802AA604:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t3, 0x00F4($t8)
	addiu   $t4, $t3, 0x0400
	sw      $t4, 0x00F4($t8)
	b       .L802AA6D8
	nop
.L802AA620:
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_802A04C0
	li      $a0, 0x003A
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t5, 0x0114($t1)
	addiu   $t7, $t5, -0x0080
	sw      $t7, 0x0114($t1)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x00D0($t9)
	lw      $t2, 0x0114($t9)
	addu    $t0, $t6, $t2
	sw      $t0, 0x00D0($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D0($t3)
	slti    $at, $t4, -0x4000
	beqz    $at, .L802AA6B8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t8, -0x4000
	sw      $t8, 0x00D0($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0114($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t6, 0x014C($t1)
	addiu   $t2, $t6, 0x0001
	sw      $t2, 0x014C($t1)
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	li.u    $a0, 0x303D8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x303D8081
.L802AA6B8:
	jal     map_data_803839CC
	nop
	b       .L802AA6D8
	nop
.L802AA6C8:
	jal     map_data_803839CC
	nop
	b       .L802AA6D8
	nop
.L802AA6D8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0050($t0)
	b       .L802AA6EC
	nop
.L802AA6EC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AA700
object_a_802AA700:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AA730
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	addiu   $t0, $t9, -0x4000
	sw      $t0, 0x00C8($t8)
.L802AA730:
	jal     object_a_802AA280
	move    $a0, $0
	beqz    $v0, .L802AA75C
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f12
	jal     obj_lib_802A4440
	move    $a1, $0
	li.u    $a0, 0x300F0081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x300F0081
.L802AA75C:
	b       .L802AA764
	nop
.L802AA764:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AA774
object_a_802AA774:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802AA7D0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0118($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x003D
	bnez    $at, .L802AA7C8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
.L802AA7C8:
	b       .L802AA810
	nop
.L802AA7D0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0100
	sw      $t4, 0x0118($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x007F
	bnez    $at, .L802AA804
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802AA804:
	li.u    $a0, 0x40080001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40080001
.L802AA810:
	jal     obj_lib_802A2BC4
	nop
	b       .L802AA820
	nop
.L802AA820:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AA830
object_a_802AA830:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 24
	sb      $t8, 0x001F($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, .L802AA904
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $a1, %hi(object_a_803301A8+0x04)
	lw      $t2, 0x0144($t1)
	move    $a0, $t1
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $a1, $a1, $t3
	jal     obj_lib_802A44F4
	lw      $a1, %lo(object_a_803301A8+0x04)($a1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $t7, %hi(object_a_803301A8+0x08)
	lw      $t5, 0x0144($t4)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t7, $t7, $t6
	lh      $t7, %lo(object_a_803301A8+0x08)($t7)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0194($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t1, %hi(object_a_803301A8+0x02)
	lui     $at, %hi(object_a_80337944)
	lw      $t9, 0x0144($t8)
	lwc1    $f16, %lo(object_a_80337944)($at)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t1, $t0
	lh      $t1, %lo(object_a_803301A8+0x02)($t1)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f10, $f8
	mul.s   $f12, $f10, $f16
	jal     obj_lib_8029F430
	nop
.L802AA904:
	lb      $t2, 0x001F($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sll     $t3, $t2, 4
	sw      $t3, 0x0118($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	lw      $t4, 0x0118($t6)
	addu    $t8, $t7, $t4
	sw      $t8, 0x00D4($t6)
	b       .L802AA938
	nop
.L802AA938:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802AA948:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301C0
	la.l    $a1, object_a_803301C0
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802AA96C
	nop
.L802AA96C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AA97C
object_a_802AA97C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, .L802AA9C8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802AA9D8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802AA9EC
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802AA9EC
	nop
	b       .L802AAA08
	nop
.L802AA9C8:
	jal     object_a_802AA948
	nop
	b       .L802AAA08
	nop
.L802AA9D8:
	li      $a0, -0x0001
	jal     obj_lib_802A01D8
	move    $a1, $0
	b       .L802AAA08
	nop
.L802AA9EC:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A37AC
	nop
	b       .L802AAA08
	nop
.L802AAA08:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x00400000
	lw      $t8, 0x0134($t7)
	and     $t9, $t8, $at
	beqz    $t9, .L802AAA38
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A37AC
	nop
.L802AAA38:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	b       .L802AAA4C
	nop
.L802AAA4C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AAA60
object_a_802AAA60:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AAB38
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0188($t8)
	sra     $t0, $t9, 24
	andi    $t1, $t0, 0x00FF
	sh      $t1, 0x0006($sp)
	lhu     $t2, 0x0006($sp)
	bnez    $t2, .L802AAAB4
	nop
	li      $at, 0x42480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	b       .L802AAB20
	swc1    $f4, 0x01F8($t3)
.L802AAAB4:
	lhu     $t4, 0x0006($sp)
	li      $at, 0x00FF
	bne     $t4, $at, .L802AAADC
	nop
	lui     $at, %hi(object_a_80337948)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, %lo(object_a_80337948)($at)
	b       .L802AAB20
	swc1    $f6, 0x01F8($t5)
.L802AAADC:
	lhu     $t6, 0x0006($sp)
	mtc1    $t6, $f8
	bgez    $t6, .L802AAB00
	cvt.d.w $f10, $f8
	li      $at, 0x41F00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	nop
	add.d   $f10, $f10, $f16
.L802AAB00:
	li      $at, 0x40240000
	mtc1    $at, $f19
	mtc1    $0, $f18
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mul.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x01F8($t7)
.L802AAB20:
	li      $at, 0x42480000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x01FC($t8)
.L802AAB38:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
	b       .L802AAB4C
	nop
.L802AAB4C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802AAB54
object_a_802AAB54:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AAC2C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0188($t8)
	sra     $t0, $t9, 24
	andi    $t1, $t0, 0x00FF
	sh      $t1, 0x0006($sp)
	lhu     $t2, 0x0006($sp)
	bnez    $t2, .L802AABA8
	nop
	li      $at, 0x42AA0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	b       .L802AAC14
	swc1    $f4, 0x01F8($t3)
.L802AABA8:
	lhu     $t4, 0x0006($sp)
	li      $at, 0x00FF
	bne     $t4, $at, .L802AABD0
	nop
	lui     $at, %hi(object_a_8033794C)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, %lo(object_a_8033794C)($at)
	b       .L802AAC14
	swc1    $f6, 0x01F8($t5)
.L802AABD0:
	lhu     $t6, 0x0006($sp)
	mtc1    $t6, $f8
	bgez    $t6, .L802AABF4
	cvt.d.w $f10, $f8
	li      $at, 0x41F00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	nop
	add.d   $f10, $f10, $f16
.L802AABF4:
	li      $at, 0x40240000
	mtc1    $at, $f19
	mtc1    $0, $f18
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mul.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x01F8($t7)
.L802AAC14:
	li      $at, 0x42480000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x01FC($t8)
.L802AAC2C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
	b       .L802AAC40
	nop
.L802AAC40:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802AAC48
object_a_802AAC48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AAD18
	nop
	jal     obj_lib_802A1308
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x002C($t8)
	swc1    $f4, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $s0, 0x0144($t9)
	beq     $s0, $at, .L802AACAC
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802AACE0
	nop
	b       .L802AAD18
	nop
.L802AACAC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x00FE
	sw      $t0, 0x017C($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, -0x0015
	sw      $t2, 0x00F8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00FC($t4)
	b       .L802AAD18
	nop
.L802AACE0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x00FE
	sw      $t5, 0x017C($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, -0x000D
	sw      $t7, 0x00F8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00FC($t0)
	b       .L802AAD18
	nop
.L802AAD18:
	jal     obj_lib_802A25B4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     obj_lib_802A079C
	lwc1    $f12, 0x012C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x00B0($t2)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802AAD6C
	nop
	li      $at, 0x42C80000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t3)
.L802AAD6C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0015
	bnez    $at, .L802AAD90
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AAD90:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x017C($t6)
	beqz    $t7, .L802AAE70
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x017C($t8)
	lw      $t0, 0x00F8($t8)
	addu    $t1, $t9, $t0
	sw      $t1, 0x017C($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x017C($t2)
	slti    $at, $t3, 0x0002
	beqz    $at, .L802AADE0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AADE0:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00FC($t4)
	beqz    $t5, .L802AAE34
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t9, 0x00FE
	lui     $at, %hi(object_a_80337950)
	lw      $t7, 0x017C($t6)
	ldc1    $f4, %lo(object_a_80337950)($at)
	lwc1    $f8, 0x00F4($t6)
	subu    $t0, $t9, $t7
	mtc1    $t0, $f16
	cvt.d.s $f10, $f8
	cvt.d.w $f18, $f16
	div.d   $f6, $f18, $f4
	mul.d   $f16, $f6, $f10
	cvt.s.d $f18, $f16
	b       .L802AAE68
	swc1    $f18, 0x0024($sp)
.L802AAE34:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337958)
	ldc1    $f6, %lo(object_a_80337958)($at)
	lw      $t8, 0x017C($t1)
	lwc1    $f16, 0x00F4($t1)
	mtc1    $t8, $f4
	cvt.d.s $f18, $f16
	cvt.d.w $f8, $f4
	div.d   $f10, $f8, $f6
	mul.d   $f4, $f10, $f18
	cvt.s.d $f8, $f4
	swc1    $f8, 0x0024($sp)
.L802AAE68:
	jal     obj_lib_8029F430
	lwc1    $f12, 0x0024($sp)
.L802AAE70:
	b       .L802AAE78
	nop
.L802AAE78:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AAE8C
object_a_802AAE8C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lwc1    $f4, 0x0020($sp)
	lui     $at, %hi(object_a_803301D0+0x0C)
	swc1    $f4, %lo(object_a_803301D0+0x0C)($at)
	lwc1    $f6, 0x0020($sp)
	li      $at, 0x40340000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	lui     $at, %hi(object_a_803301D0+0x10)
	div.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, %lo(object_a_803301D0+0x10)($at)
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(object_a_803301D0+0x03)
	sb      $t6, %lo(object_a_803301D0+0x03)($at)
	lw      $t7, 0x0018($sp)
	bnez    $t7, .L802AAEF8
	nop
	li      $t8, 0x0014
	lui     $at, %hi(object_a_803301D0+0x01)
	b       .L802AAF24
	sb      $t8, %lo(object_a_803301D0+0x01)($at)
.L802AAEF8:
	lw      $t9, 0x0018($sp)
	slti    $at, $t9, 0x0015
	bnez    $at, .L802AAF18
	nop
	lw      $t0, 0x0018($sp)
	lui     $at, %hi(object_a_803301D0+0x01)
	b       .L802AAF24
	sb      $t0, %lo(object_a_803301D0+0x01)($at)
.L802AAF18:
	li      $t1, 0x0004
	lui     $at, %hi(object_a_803301D0+0x01)
	sb      $t1, %lo(object_a_803301D0+0x01)($at)
.L802AAF24:
	la.u    $a0, object_a_803301D0+0x00
	jal     obj_lib_802A32AC
	la.l    $a0, object_a_803301D0+0x00
	b       .L802AAF38
	nop
.L802AAF38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AAF48
object_a_802AAF48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x0400
	bnez    $t8, .L802AAF80
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x0188($t0)
	sw      $t1, 0x0188($t9)
.L802AAF80:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0188($t2)
	sra     $t4, $t3, 24
	andi    $t5, $t4, 0x00FF
	sw      $t5, 0x0024($sp)
	jal     obj_lib_802A3F24
	lw      $a0, 0x0024($sp)
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	move    $s0, $v0
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	and     $t6, $v0, $s0
	beqz    $t6, .L802AAFD4
	nop
	jal     obj_lib_802A04C0
	li      $a0, 0x0079
.L802AAFD4:
	li.u    $a0, 0x8057FF91
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x8057FF91
	b       .L802AAFE8
	nop
.L802AAFE8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802AAFFC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301E4
	la.l    $a1, object_a_803301E4
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802AB048
	nop
	lui     $a0, %hi(object)
	jal     obj_list_802CA028
	lw      $a0, %lo(object)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
.L802AB048:
	b       .L802AB050
	nop
.L802AB050:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AB060:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t7)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00A8($t8)
	swc1    $f6, 0x016C($t9)
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x00A4($t0)
	swc1    $f8, 0x0168($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x437A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t2)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0168($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x0168($t3)
	swc1    $f4, 0x00A4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0164($t4)
	lwc1    $f8, 0x00A0($t4)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x016C($t5)
	lwc1    $f18, 0x00A8($t5)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0018($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f10, 0x0018($sp)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f16
	li      $at, 0x41B80000
	mtc1    $at, $f18
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	div.s   $f4, $f0, $f18
	swc1    $f4, 0x00B8($t6)
	b       .L802AB148
	nop
.L802AB148:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802AB158:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802AB18C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0118($t6)
	slti    $at, $t7, 0x0401
	bnez    $at, .L802AB1B8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0118($t8)
	addiu   $t0, $t9, -0x0040
	sw      $t0, 0x0118($t8)
.L802AB1B8:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AB1C8
object_a_802AB1C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802AB398
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802AB2AC
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00AD
	jal     obj_lib_802A4750
	li      $a0, 0x000A
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0074($t0)
	ori     $t2, $t1, 0x0020
	sh      $t2, 0x0074($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0800
	sw      $t3, 0x0118($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0144($t5)
	bnez    $t6, .L802AB258
	nop
	jal     object_a_802AB060
	nop
	b       .L802AB260
	nop
.L802AB258:
	jal     object_a_802AB158
	nop
.L802AB260:
	jal     obj_lib_802A2748
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C8($t7)
	li      $at, 0x42480000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t8)
	li      $at, 0xC0800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00E4($t9)
	jal     obj_lib_802A37AC
	nop
.L802AB2AC:
	li.u    $a0, 0x40140011
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40140011
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	lwc1    $f8, 0x00B0($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802AB390
	nop
	lwc1    $f16, 0x00A4($t1)
	lwc1    $f18, 0x0168($t1)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802AB390
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x014C($t2)
	addiu   $t3, $t0, 0x0001
	sw      $t3, 0x014C($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	li      $at, 0x41A00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t5)
	li      $at, 0xBF800000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0400
	beqz    $t9, .L802AB388
	nop
	jal     Na_g_80322168
	li      $a0, 0x0001
	b       .L802AB390
	nop
.L802AB388:
	jal     Na_g_80322168
	li      $a0, 0x0001
.L802AB390:
	b       .L802AB514
	nop
.L802AB398:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t0, 0x014C($t1)
	bne     $t0, $at, .L802AB48C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0xC0800000
	mtc1    $at, $f16
	lwc1    $f10, 0x00B0($t3)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802AB3EC
	nop
	li      $at, 0xC0800000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t2)
.L802AB3EC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802AB46C
	nop
	lwc1    $f8, 0x00A4($t4)
	lwc1    $f10, 0x0168($t4)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802AB46C
	nop
	li      $t5, 0x0001
	lui     $at, %hi(_camera_bss+0x6A8)
	sw      $t5, %lo(_camera_bss+0x6A8)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00E4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t1, $t9, 0x0001
	sw      $t1, 0x014C($t8)
.L802AB46C:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	b       .L802AB514
	nop
.L802AB48C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t3, 0x014C($t0)
	bne     $t3, $at, .L802AB504
	nop
	lui     $t2, %hi(_camera_bss+0x6B0)
	lw      $t2, %lo(_camera_bss+0x6B0)($t2)
	lbu     $t4, 0x0030($t2)
	bnez    $t4, .L802AB4FC
	nop
	lui     $t5, %hi(camera_8032DF54)
	lbu     $t5, %lo(camera_8032DF54)($t5)
	bnez    $t5, .L802AB4FC
	nop
	jal     obj_lib_802A4774
	li      $a0, 0x000A
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0021
	lh      $t7, 0x0074($t6)
	and     $t9, $t7, $at
	sh      $t9, 0x0074($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t8, 0x014C($t1)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x014C($t1)
.L802AB4FC:
	b       .L802AB514
	nop
.L802AB504:
	jal     object_a_802AAFFC
	nop
	jal     object_a_802AB18C
	nop
.L802AB514:
	jal     obj_lib_802A2644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x00D4($t3)
	lw      $t4, 0x0118($t3)
	addu    $t5, $t2, $t4
	sw      $t5, 0x00D4($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	b       .L802AB548
	nop
.L802AB548:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AB558
object_a_802AB558:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_1300080C
	la.l    $a2, o_1300080C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x007A
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t8, 0x001C($sp)
	sll     $t7, $t6, 24
	sw      $t7, 0x0188($t8)
	lw      $t0, 0x001C($sp)
	li      $t9, 0x0400
	sw      $t9, 0x0190($t0)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	move    $a2, $0
	jal     obj_lib_8029E96C
	move    $a3, $0
	b       .L802AB5B8
	nop
.L802AB5B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802AB5C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802AB624
	nop
	li      $at, 0x00800000
	and     $t9, $t7, $at
	bnez    $t9, .L802AB624
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0095
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802AB640
	li      $v0, 0x0001
.L802AB624:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	b       .L802AB640
	move    $v0, $0
	b       .L802AB640
	nop
.L802AB640:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AB650
object_a_802AB650:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_1300091C
	jal     obj_lib_802A148C
	la.l    $a0, o_1300091C
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301F4
	la.l    $a1, object_a_803301F4
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A4120
	nop
	jal     obj_lib_802A0604
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x00E8($t6)
	jal     obj_lib_802A3634
	sub.s   $f12, $f4, $f6
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	nop
	c.lt.s  $f8, $f0
	nop
	bc1f    .L802AB6C4
	nop
	jal     obj_lib_802A04C0
	li      $a0, 0x0075
.L802AB6C4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_a_80337960)
	lwc1    $f16, %lo(object_a_80337960)($at)
	lwc1    $f10, 0x00E8($t7)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802AB6F4
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AB6F4:
	b       .L802AB6FC
	nop
.L802AB6FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AB70C
object_a_802AB70C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802AB5C8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F0($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F0($t6)
	b       .L802AB738
	nop
.L802AB738:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AB748
object_a_802AB748:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F0($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F0($t6)
	li      $a0, 0x00C8
	jal     obj_lib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, .L802AB784
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AB784:
	jal     object_a_802AB5C8
	nop
	b       .L802AB794
	nop
.L802AB794:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AB7A4
object_a_802AB7A4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x41F00000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x0110($t6)
	add.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00B0($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x00B8($t7)
	jal     rand
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00C8($t8)
	la.u    $a0, o_1300091C
	jal     obj_lib_802A148C
	la.l    $a0, o_1300091C
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301F4
	la.l    $a1, object_a_803301F4
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A05B4
	nop
	b       .L802AB84C
	nop
.L802AB84C:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AB860
object_a_802AB860:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A452C
	nop
	jal     obj_lib_802A2348
	li      $a0, -0x003E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01C0($t6)
	beqz    $t7, .L802AB92C
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, .L802AB8BC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0150($t2)
.L802AB8BC:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0001
	lw      $t4, 0x0150($t3)
	bne     $t4, $at, .L802AB92C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0158($t5)
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(object_a_80337968)
	ldc1    $f10, %lo(object_a_80337968)($at)
	lwc1    $f6, 0x0020($t6)
	cvt.d.s $f8, $f6
	c.lt.d  $f8, $f10
	nop
	bc1f    .L802AB92C
	nop
	lw      $t7, 0x001C($sp)
	lwc1    $f12, 0x0024($t7)
	jal     atan2
	lwc1    $f14, 0x001C($t7)
	sh      $v0, 0x001A($sp)
	lh      $a0, 0x001A($sp)
	jal     obj_lib_8029E5EC
	li      $a1, 0x0400
.L802AB92C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802AB94C
	nop
	li.u    $a0, 0x38300081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x38300081
.L802AB94C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	lwc1    $f16, 0x00B0($t0)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802AB974
	nop
	jal     obj_lib_802A05D4
	nop
.L802AB974:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0001
	beqz    $t3, .L802AB9B0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x4800
	beqz    $t6, .L802AB9B0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AB9B0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x2000
	beqz    $t9, .L802ABA00
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x01B0($t0)
	slti    $at, $t1, 0x0005
	beqz    $at, .L802AB9EC
	nop
	li.u    $a0, 0x30364081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30364081
.L802AB9EC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x01B0($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x01B0($t2)
.L802ABA00:
	li      $a0, 0x0190
	jal     obj_lib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, .L802ABA20
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802ABA20:
	jal     object_a_802AB5C8
	nop
	b       .L802ABA30
	nop
.L802ABA30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802ABA40
object_a_802ABA40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802ABB70
	nop
	la.u    $a0, o_1300091C
	jal     obj_lib_802A148C
	la.l    $a0, o_1300091C
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301F4
	la.l    $a1, object_a_803301F4
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A4120
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	beqz    $t9, .L802ABB24
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t0)
	jal     obj_lib_802A0604
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00A4($t1)
	lwc1    $f16, 0x00E8($t1)
	c.lt.s  $f10, $f16
	nop
	bc1t    .L802ABAF8
	nop
	lui     $at, %hi(object_a_80337970)
	lwc1    $f18, %lo(object_a_80337970)($at)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802ABB0C
	nop
.L802ABAF8:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802ABB1C
	nop
.L802ABB0C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x00E8($t2)
	swc1    $f4, 0x00A4($t2)
.L802ABB1C:
	b       .L802ABB68
	nop
.L802ABB24:
	jal     obj_lib_802A0604
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x00A4($t3)
	lwc1    $f8, 0x00E8($t3)
	jal     obj_lib_802A3634
	sub.s   $f12, $f6, $f8
	li      $at, 0x437A0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f10, $f0
	nop
	bc1f    .L802ABB68
	nop
	jal     obj_lib_802A04C0
	li      $a0, 0x0075
.L802ABB68:
	b       .L802ABBC0
	nop
.L802ABB70:
	jal     object_a_802AB5C8
	nop
	beqz    $v0, .L802ABBAC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     obj_lib_802A3F24
	lw      $a0, 0x0144($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	move    $s0, $v0
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x00F4($t6)
	or      $t8, $t7, $s0
	sw      $t8, 0x00F4($t6)
.L802ABBAC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F0($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x00F0($t9)
.L802ABBC0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0002
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x014C($t3)
	bne     $t4, $at, .L802ABBE8
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802ABBE8:
	b       .L802ABBF0
	nop
.L802ABBF0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802ABC04:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $s0, 0x0028($sp)
	li      $t6, 0x0001
	sw      $t6, 0x003C($sp)
	li      $t7, 0x0001
	sw      $t7, 0x0038($sp)
	addiu   $t8, $sp, 0x0040
	sw      $0, 0x0008($t8)
	addiu   $t9, $sp, 0x0040
	lw      $s0, 0x0008($t9)
	addiu   $t0, $sp, 0x0040
	sw      $s0, 0x0004($t9)
	sw      $s0, 0x0000($t0)
	lw      $t1, 0x0054($sp)
	andi    $t2, $t1, 0x0007
	sltiu   $at, $t2, 0x0005
	beqz    $at, .L802ABE60
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(object_a_80337974)
	addu    $at, $at, $t2
	lw      $t2, %lo(object_a_80337974)($at)
	jr      $t2
	nop
.globl L802ABC70
L802ABC70:
	lw      $t3, 0x0050($sp)
	addiu   $t6, $sp, 0x0040
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	sll     $t4, $t4, 5
	addiu   $t5, $t4, -0x0140
	sw      $t5, 0x0008($t6)
	lw      $t7, 0x0050($sp)
	slti    $at, $t7, 0x0005
	bnez    $at, .L802ABCA0
	nop
	sw      $0, 0x003C($sp)
.L802ABCA0:
	b       .L802ABE60
	nop
.globl L802ABCA8
L802ABCA8:
	sw      $0, 0x0038($sp)
	lw      $t8, 0x0050($sp)
	lui     $at, %hi(object_a_80337988)
	ldc1    $f8, %lo(object_a_80337988)($at)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 5
	mtc1    $t9, $f4
	addiu   $t1, $sp, 0x0040
	cvt.d.w $f6, $f4
	mul.d   $f10, $f6, $f8
	trunc.w.d $f16, $f10
	swc1    $f16, 0x0004($t1)
	lw      $t2, 0x0050($sp)
	slti    $at, $t2, 0x0005
	bnez    $at, .L802ABCF0
	nop
	sw      $0, 0x003C($sp)
.L802ABCF0:
	b       .L802ABE60
	nop
.globl L802ABCF8
L802ABCF8:
	lw      $t3, 0x0050($sp)
	lui     $at, %hi(math_sin)
	addiu   $t0, $sp, 0x0040
	sll     $t4, $t3, 13
	andi    $t5, $t4, 0xFFFF
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x43960000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0050($sp)
	lui     $at, %hi(math_cos)
	addiu   $t8, $sp, 0x0040
	sll     $t2, $t1, 13
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x43960000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t7, $f4
	nop
	sw      $t7, 0x0008($t8)
	b       .L802ABE60
	nop
.globl L802ABD88
L802ABD88:
	sw      $0, 0x0038($sp)
	lw      $t9, 0x0050($sp)
	lui     $at, %hi(math_cos)
	addiu   $t6, $sp, 0x0040
	sll     $t0, $t9, 13
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x0000($t6)
	lw      $t7, 0x0050($sp)
	lui     $at, %hi(math_sin)
	addiu   $t4, $sp, 0x0040
	sll     $t8, $t7, 13
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f4
	mtc1    $at, $f8
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t3, $f16
	nop
	sw      $t3, 0x0004($t4)
	b       .L802ABE60
	nop
.globl L802ABE20
L802ABE20:
	lw      $t5, 0x0050($sp)
	lui     $t7, %hi(object_a_80330204+2*0)
	addiu   $t8, $sp, 0x0040
	sll     $t6, $t5, 2
	addu    $t7, $t7, $t6
	lh      $t7, %lo(object_a_80330204+2*0)($t7)
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0050($sp)
	lui     $t1, %hi(object_a_80330204+2*1)
	addiu   $t2, $sp, 0x0040
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lh      $t1, %lo(object_a_80330204+2*1)($t1)
	sw      $t1, 0x0008($t2)
	b       .L802ABE60
	nop
.L802ABE60:
	lw      $t3, 0x0054($sp)
	andi    $t4, $t3, 0x0010
	beqz    $t4, .L802ABE74
	nop
	sw      $0, 0x0038($sp)
.L802ABE74:
	lw      $t5, 0x003C($sp)
	beqz    $t5, .L802ABEC8
	nop
	addiu   $t6, $sp, 0x0040
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $a1, 0x0000($t6)
	lw      $a2, 0x0004($t6)
	lw      $a3, 0x0008($t6)
	la.u    $t9, o_130008D0
	la.l    $t9, o_130008D0
	li      $t8, 0x0074
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	lw      $a0, 0x0050($sp)
	jal     obj_lib_8029EF64
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x004C($sp)
	lw      $t0, 0x0038($sp)
	lw      $t1, 0x004C($sp)
	sw      $t0, 0x00F8($t1)
.L802ABEC8:
	b       .L802ABED0
	nop
.L802ABED0:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

.globl object_a_802ABEE4
object_a_802ABEE4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 8
	andi    $t9, $t8, 0x00FF
	sw      $t9, 0x00F4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802ABF0C
object_a_802ABF0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802ABF4C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802ABFDC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802AC01C
	nop
	b       .L802AC030
	nop
.L802ABF4C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802ABFD4
	nop
	sw      $0, 0x0024($sp)
.L802ABF74:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0024($sp)
	li      $t1, 0x0001
	lw      $t9, 0x00F4($t8)
	sllv    $t2, $t1, $t0
	and     $t3, $t9, $t2
	bnez    $t3, .L802ABFAC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $a0, 0x0024($sp)
	jal     object_a_802ABC04
	lw      $a1, 0x0144($t4)
.L802ABFAC:
	lw      $t5, 0x0024($sp)
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0008
	bnez    $at, .L802ABF74
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t1, $t8, 0x0001
	sw      $t1, 0x014C($t7)
.L802ABFD4:
	b       .L802AC030
	nop
.L802ABFDC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337990)
	lwc1    $f10, %lo(object_a_80337990)($at)
	lwc1    $f8, 0x015C($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802AC014
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x014C($t9)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t9)
.L802AC014:
	b       .L802AC030
	nop
.L802AC01C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
	b       .L802AC030
	nop
.L802AC030:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $a1, 0x00F4($t5)
	move    $a0, $t5
	andi    $t6, $a1, 0x00FF
	jal     object_8029CE58
	move    $a1, $t6
	b       .L802AC054
	nop
.L802AC054:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802AC068(void) */
.globl object_a_802AC068
object_a_802AC068:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A452C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L802AC0A4
	nop
	li.u    $a0, 0x30364081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30364081
.L802AC0A4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x005B
	beqz    $at, .L802AC0CC
	nop
	lw      $t1, 0x00EC($t9)
	andi    $t2, $t1, 0x0001
	beqz    $t2, .L802AC0F4
	nop
.L802AC0CC:
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301F4
	la.l    $a1, object_a_803301F4
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A05D4
	nop
	la.u    $a0, o_1300091C
	jal     obj_lib_802A148C
	la.l    $a0, o_1300091C
.L802AC0F4:
	jal     obj_lib_802A2348
	li      $a0, -0x001E
	jal     object_a_802AB5C8
	nop
	jal     obj_lib_802A4F04
	li      $a0, 0x0076
	beqz    $v0, .L802AC124
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0005
	sw      $t3, 0x0180($t4)
.L802AC124:
	li      $a0, 0x0190
	jal     obj_lib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, .L802AC144
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AC144:
	b       .L802AC14C
	nop
.L802AC14C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802AC15C(void) */
.globl object_a_802AC15C
object_a_802AC15C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	jal     obj_lib_802A05B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802AC1B8
	nop
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	li      $at, 0x0004
	bne     $t0, $at, .L802AC1B8
	nop
	jal     obj_lib_802A04C0
	li      $a0, 0x0076
	lui     $at, %hi(object_a_80337994)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_a_80337994)($at)
.L802AC1B8:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029F120
	lw      $a1, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li      $at, 0x0001
	lw      $t2, 0x0088($t1)
	bne     $t2, $at, .L802AC27C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(obj_mario)
	lw      $t5, %lo(obj_mario)($t5)
	lw      $t6, 0x00C8($t5)
	sh      $t6, 0x0026($sp)
	li      $at, 0x40400000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0020($sp)
	lhu     $t7, 0x0026($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0020($sp)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00AC($t0)
	lhu     $t1, 0x0026($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0020($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_cos)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B4($t4)
	li      $at, 0x420C0000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t5)
.L802AC27C:
	b       .L802AC284
	nop
.L802AC284:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AC294
object_a_802AC294:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330224
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330224
	b       .L802AC2B0
	nop
.L802AC2B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AC2C0
object_a_802AC2C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_a_80337998)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_a_80337998)($at)
	b       .L802AC2DC
	nop
.L802AC2DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AC2EC
object_a_802AC2EC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130009E0
	la.l    $a2, o_130009E0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0095
	sw      $v0, 0x002C($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0024($sp)
	mov.s   $f20, $f0
	lw      $t6, 0x002C($sp)
	div.s   $f10, $f6, $f8
	lwc1    $f4, 0x00A0($t6)
	mul.s   $f16, $f20, $f6
	sub.s   $f18, $f16, $f10
	add.s   $f8, $f4, $f18
	swc1    $f8, 0x00A0($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f6, 0x0024($sp)
	mov.s   $f20, $f0
	lw      $t7, 0x002C($sp)
	div.s   $f10, $f6, $f16
	lwc1    $f8, 0x00A8($t7)
	mul.s   $f4, $f20, $f6
	sub.s   $f18, $f4, $f10
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x00A8($t7)
	b       .L802AC394
	nop
.L802AC394:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802AC3A8
object_a_802AC3A8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AC410
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	sh      $t9, 0x001E($sp)
	lui     $at, %hi(object_a_8033799C)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, %lo(object_a_8033799C)($at)
	swc1    $f4, 0x00F4($t0)
	lui     $a0, %hi(obj_mario)
	lw      $a0, %lo(obj_mario)($a0)
	li      $a1, 0x0000
	li      $a2, 0x42700000
	jal     obj_lib_8029F6E0
	li      $a3, 0x42C80000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t1, 0x001E($sp)
	sw      $t1, 0x00C8($t2)
.L802AC410:
	jal     obj_lib_802A2644
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0005
	sw      $t3, 0x00F0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_803379A0)
	lwc1    $f8, %lo(object_a_803379A0)($at)
	lwc1    $f6, 0x00F4($t6)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t9, object_8033D280
	la.l    $t9, object_8033D280
	lh      $t0, 0x0040($t9)
	lw      $t8, 0x0154($t7)
	addiu   $t1, $t0, 0x0006
	slt     $at, $t1, $t8
	beqz    $at, .L802AC488
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AC488:
	b       .L802AC490
	nop
.L802AC490:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AC4A0
object_a_802AC4A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $0, 0x0024($sp)
.L802AC4AC:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000ABC
	la.l    $a2, o_13000ABC
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x008A
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	sll     $t7, $t6, 1
	sll     $t8, $t7, 1
	lui     $t9, %hi(object_a_8033022C+2*0)
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_8033022C+2*0)($t9)
	lw      $t1, 0x00C8($t0)
	lw      $t4, 0x001C($sp)
	li      $at, 0x8000
	addu    $t2, $t9, $t1
	addu    $t3, $t2, $at
	sw      $t3, 0x00C8($t4)
	lw      $t5, 0x0024($sp)
	lui     $t8, %hi(object_a_8033022C+2*1)
	lui     $at, %hi(math_sin)
	sll     $t6, $t5, 1
	sll     $t7, $t6, 1
	addu    $t8, $t8, $t7
	lhu     $t8, %lo(object_a_8033022C+2*1)($t8)
	lw      $t1, 0x001C($sp)
	sra     $t0, $t8, 4
	sll     $t9, $t0, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t1)
	lw      $t2, 0x0024($sp)
	lui     $t5, %hi(object_a_8033022C+2*1)
	lui     $at, %hi(math_cos)
	sll     $t3, $t2, 1
	sll     $t4, $t3, 1
	addu    $t5, $t5, $t4
	lhu     $t5, %lo(object_a_8033022C+2*1)($t5)
	lw      $t8, 0x001C($sp)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B8($t8)
	lw      $t0, 0x0024($sp)
	addiu   $t9, $t0, 0x0001
	slti    $at, $t9, 0x0006
	bnez    $at, .L802AC4AC
	sw      $t9, 0x0024($sp)
	b       .L802AC5A4
	nop
.L802AC5A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AC5B4
object_a_802AC5B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AC61C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	sh      $t9, 0x001E($sp)
	lui     $at, %hi(object_a_803379A4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, %lo(object_a_803379A4)($at)
	swc1    $f4, 0x00F4($t0)
	lui     $a0, %hi(obj_mario)
	lw      $a0, %lo(obj_mario)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41F00000
	jal     obj_lib_8029F6E0
	li      $a3, 0x42DC0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t1, 0x001E($sp)
	sw      $t1, 0x00C8($t2)
.L802AC61C:
	jal     obj_lib_802A2644
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	sw      $t3, 0x00F0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_803379A8)
	lwc1    $f8, %lo(object_a_803379A8)($at)
	lwc1    $f6, 0x00F4($t6)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x00F4($t6)
	b       .L802AC668
	nop
.L802AC668:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AC678
object_a_802AC678:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $0, 0x0024($sp)
.L802AC684:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A34
	la.l    $a2, o_13000A34
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x008B
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	sll     $t7, $t6, 1
	sll     $t8, $t7, 1
	lui     $t9, %hi(object_a_80330244+2*0)
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_80330244+2*0)($t9)
	lw      $t1, 0x00C8($t0)
	lw      $t4, 0x001C($sp)
	li      $at, 0x8000
	addu    $t2, $t9, $t1
	addu    $t3, $t2, $at
	sw      $t3, 0x00C8($t4)
	lw      $t5, 0x0024($sp)
	lui     $t8, %hi(object_a_80330244+2*1)
	lui     $at, %hi(math_sin)
	sll     $t6, $t5, 1
	sll     $t7, $t6, 1
	addu    $t8, $t8, $t7
	lhu     $t8, %lo(object_a_80330244+2*1)($t8)
	lw      $t1, 0x001C($sp)
	sra     $t0, $t8, 4
	sll     $t9, $t0, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t1)
	lw      $t2, 0x0024($sp)
	lui     $t5, %hi(object_a_80330244+2*1)
	lui     $at, %hi(math_cos)
	sll     $t3, $t2, 1
	sll     $t4, $t3, 1
	addu    $t5, $t5, $t4
	lhu     $t5, %lo(object_a_80330244+2*1)($t5)
	lw      $t8, 0x001C($sp)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B8($t8)
	lw      $t0, 0x0024($sp)
	addiu   $t9, $t0, 0x0001
	slti    $at, $t9, 0x0007
	bnez    $at, .L802AC684
	sw      $t9, 0x0024($sp)
	b       .L802AC77C
	nop
.L802AC77C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AC78C
object_a_802AC78C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AC808
	nop
	lui     $at, %hi(object_a_803379AC)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, %lo(object_a_803379AC)($at)
	swc1    $f4, 0x00F4($t8)
	li      $at, 0x41C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t0)
	li      $at, 0x41600000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t1)
.L802AC808:
	jal     obj_lib_802A2644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0004
	sw      $t2, 0x00F0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_a_803379B0)
	lwc1    $f6, %lo(object_a_803379B0)($at)
	lwc1    $f4, 0x00F4($t5)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t5)
	b       .L802AC854
	nop
.L802AC854:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AC864
object_a_802AC864:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0008
	sw      $t6, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	sw      $0, 0x0024($sp)
	blez    $t7, .L802AC8F8
	nop
.L802AC884:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A78
	la.l    $a2, o_13000A78
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x008B
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	sll     $t9, $t8, 16
	div     $0, $t9, $t0
	mflo    $t1
	sw      $t1, 0x00C8($t2)
	bnez    $t0, .L802AC8C8
	nop
	break   7
.L802AC8C8:
	li      $at, -0x0001
	bne     $t0, $at, .L802AC8E0
	li      $at, 0x80000000
	bne     $t9, $at, .L802AC8E0
	nop
	break   6
.L802AC8E0:
	lw      $t3, 0x0024($sp)
	lw      $t5, 0x0020($sp)
	addiu   $t4, $t3, 0x0001
	slt     $at, $t4, $t5
	bnez    $at, .L802AC884
	sw      $t4, 0x0024($sp)
.L802AC8F8:
	b       .L802AC900
	nop
.L802AC900:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802AC910:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     obj_lib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802AC940
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802AC940:
	b       .L802AC948
	nop
.L802AC948:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AC958:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_door
	jal     segment_to_virtual
	la.l    $a0, o_door
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x020C($t6)
	bne     $v0, $t7, .L802AC994
	nop
	la.u    $t9, _camera_bss+0x00
	la.l    $t9, _camera_bss+0x00
	li      $t8, 0x0006
	b       .L802AC9A4
	sh      $t8, 0x001E($t9)
.L802AC994:
	la.u    $t1, _camera_bss+0x00
	la.l    $t1, _camera_bss+0x00
	li      $t0, 0x0005
	sh      $t0, 0x001E($t1)
.L802AC9A4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t3, _camera_bss+0x00
	la.l    $t3, _camera_bss+0x00
	sw      $t2, 0x0020($t3)
	b       .L802AC9C0
	nop
.L802AC9C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AC9D0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A4F04
	li      $a0, 0x001F
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802ACA24
	nop
	lw      $t8, 0x001C($sp)
	lui     $a0, %hi(object_a_80330288)
	sll     $t9, $t8, 2
	addu    $a0, $a0, $t9
	jal     obj_sfx_802CA1E0
	lw      $a0, %lo(object_a_80330288)($a0)
	lui     $t0, %hi(object_8033D480)
	lw      $t0, %lo(object_8033D480)($t0)
	lui     $at, %hi(object_8033D480)
	ori     $t1, $t0, 0x0020
	sw      $t1, %lo(object_8033D480)($at)
.L802ACA24:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0046
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, .L802ACA54
	nop
	lw      $t4, 0x001C($sp)
	lui     $a0, %hi(object_a_80330290)
	sll     $t5, $t4, 2
	addu    $a0, $a0, $t5
	jal     obj_sfx_802CA1E0
	lw      $a0, %lo(object_a_80330290)($a0)
.L802ACA54:
	b       .L802ACA5C
	nop
.L802ACA5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802ACA6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A4F04
	li      $a0, 0x001F
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x001E
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802ACAB0
	nop
	lw      $t8, 0x001C($sp)
	lui     $a0, %hi(object_a_80330290)
	sll     $t9, $t8, 2
	addu    $a0, $a0, $t9
	jal     obj_sfx_802CA1E0
	lw      $a0, %lo(object_a_80330290)($a0)
.L802ACAB0:
	b       .L802ACAB8
	nop
.L802ACAB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802ACAC8
object_a_802ACAC8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lui     $t8, %hi(object_a_80330260+4*0)
	li      $at, -0x0001
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lw      $t8, %lo(object_a_80330260+4*0)($t8)
	beq     $t8, $at, .L802ACB60
	nop
.L802ACAF4:
	lw      $t9, 0x001C($sp)
	lui     $a0, %hi(object_a_80330260+4*0)
	sll     $t0, $t9, 3
	addu    $a0, $a0, $t0
	jal     obj_lib_802A0514
	lw      $a0, %lo(object_a_80330260+4*0)($a0)
	beqz    $v0, .L802ACB34
	nop
	jal     object_a_802AC958
	nop
	lw      $t1, 0x001C($sp)
	lui     $a0, %hi(object_a_80330260+4*1)
	sll     $t2, $t1, 3
	addu    $a0, $a0, $t2
	jal     obj_lib_8029FDB4
	lw      $a0, %lo(object_a_80330260+4*1)($a0)
.L802ACB34:
	lw      $t3, 0x001C($sp)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	lui     $t7, %hi(object_a_80330260+4*0)
	li      $at, -0x0001
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lw      $t7, %lo(object_a_80330260+4*0)($t7)
	bne     $t7, $at, .L802ACAF4
	nop
.L802ACB60:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	sltiu   $at, $t9, 0x0005
	beqz    $at, .L802ACC00
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_a_803379B4)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_a_803379B4)($at)
	jr      $t9
	nop
.globl L802ACB90
L802ACB90:
	jal     obj_lib_8029F4B4
	move    $a0, $0
	b       .L802ACC00
	nop
.globl L802ACBA0
L802ACBA0:
	jal     object_a_802AC910
	li      $a0, 0x0001
	jal     object_a_802AC9D0
	nop
	b       .L802ACC00
	nop
.globl L802ACBB8
L802ACBB8:
	jal     object_a_802AC910
	li      $a0, 0x0002
	jal     object_a_802AC9D0
	nop
	b       .L802ACC00
	nop
.globl L802ACBD0
L802ACBD0:
	jal     object_a_802AC910
	li      $a0, 0x0003
	jal     object_a_802ACA6C
	nop
	b       .L802ACC00
	nop
.globl L802ACBE8
L802ACBE8:
	jal     object_a_802AC910
	li      $a0, 0x0004
	jal     object_a_802ACA6C
	nop
	b       .L802ACC00
	nop
.L802ACC00:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	bnez    $t1, .L802ACC1C
	nop
	jal     map_data_803839CC
	nop
.L802ACC1C:
	jal     object_a_802ACE80
	nop
	b       .L802ACC2C
	nop
.L802ACC2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802ACC3C
object_a_802ACC3C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A8($t7)
	swc1    $f6, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	jal     map_80381900
	lwc1    $f14, 0x00A4($t8)
	lw      $t9, 0x001C($sp)
	beqz    $t9, .L802ACCA0
	nop
	lw      $t0, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lb      $t1, 0x0005($t0)
	sw      $t1, 0x00F8($t2)
.L802ACCA0:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t4, 0x00CA($t3)
	lwc1    $f18, 0x00A0($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lhu     $t8, 0x00CA($t7)
	lwc1    $f16, 0x00A8($t7)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	jal     map_80381900
	lwc1    $f14, 0x00A4($t1)
	lw      $t2, 0x001C($sp)
	beqz    $t2, .L802ACD54
	nop
	lw      $t4, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lb      $t5, 0x0005($t4)
	sw      $t5, 0x00FC($t6)
.L802ACD54:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t8, 0x00CA($t3)
	lwc1    $f10, 0x00A0($t3)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0xC3480000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x00CA($t7)
	lwc1    $f8, 0x00A8($t7)
	sra     $t2, $t1, 4
	sll     $t4, $t2, 2
	addu    $at, $at, $t4
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0xC3480000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	jal     map_80381900
	lwc1    $f14, 0x00A4($t5)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L802ACE08
	nop
	lw      $t8, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lb      $t9, 0x0005($t8)
	sw      $t9, 0x0100($t0)
.L802ACE08:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x00F8($t3)
	blez    $t1, .L802ACE68
	nop
	slti    $at, $t1, 0x003C
	beqz    $at, .L802ACE68
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_803611D8+1*0)
	lw      $t7, 0x00F8($t2)
	lw      $t4, 0x00FC($t2)
	sll     $t5, $t7, 1
	addu    $at, $at, $t5
	sb      $t4, %lo(object_803611D8+1*0)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_803611D8+1*1)
	lw      $t9, 0x00F8($t6)
	lw      $t8, 0x0100($t6)
	sll     $t0, $t9, 1
	addu    $at, $at, $t0
	sb      $t8, %lo(object_803611D8+1*1)($at)
.L802ACE68:
	b       .L802ACE70
	nop
.L802ACE70:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802ACE80
object_a_802ACE80:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(object_80361250)
	lh      $t6, %lo(object_80361250)($t6)
	beqz    $t6, .L802ACFF4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t9, %hi(object_80361250)
	lh      $t9, %lo(object_80361250)($t9)
	lw      $t8, 0x00F8($t7)
	bne     $t8, $t9, .L802ACEC0
	nop
	li      $t0, 0x0001
	b       .L802ACFEC
	sw      $t0, 0x0004($sp)
.L802ACEC0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t3, %hi(object_80361250)
	lh      $t3, %lo(object_80361250)($t3)
	lw      $t2, 0x00FC($t1)
	bne     $t2, $t3, .L802ACEE8
	nop
	li      $t4, 0x0001
	b       .L802ACFEC
	sw      $t4, 0x0004($sp)
.L802ACEE8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t7, %hi(object_80361250)
	lh      $t7, %lo(object_80361250)($t7)
	lw      $t6, 0x0100($t5)
	bne     $t6, $t7, .L802ACF10
	nop
	li      $t8, 0x0001
	b       .L802ACFEC
	sw      $t8, 0x0004($sp)
.L802ACF10:
	lui     $t1, %hi(object_80361250)
	lh      $t1, %lo(object_80361250)($t1)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t3, %hi(object_803611D8+1*0)
	sll     $t2, $t1, 1
	addu    $t3, $t3, $t2
	lb      $t3, %lo(object_803611D8+1*0)($t3)
	lw      $t0, 0x00FC($t9)
	bne     $t0, $t3, .L802ACF48
	nop
	li      $t4, 0x0001
	b       .L802ACFEC
	sw      $t4, 0x0004($sp)
.L802ACF48:
	lui     $t7, %hi(object_80361250)
	lh      $t7, %lo(object_80361250)($t7)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t9, %hi(object_803611D8+1*0)
	sll     $t8, $t7, 1
	addu    $t9, $t9, $t8
	lb      $t9, %lo(object_803611D8+1*0)($t9)
	lw      $t6, 0x0100($t5)
	bne     $t6, $t9, .L802ACF80
	nop
	li      $t1, 0x0001
	b       .L802ACFEC
	sw      $t1, 0x0004($sp)
.L802ACF80:
	lui     $t3, %hi(object_80361250)
	lh      $t3, %lo(object_80361250)($t3)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t5, %hi(object_803611D8+1*1)
	sll     $t4, $t3, 1
	addu    $t5, $t5, $t4
	lb      $t5, %lo(object_803611D8+1*1)($t5)
	lw      $t0, 0x00FC($t2)
	bne     $t0, $t5, .L802ACFB8
	nop
	li      $t7, 0x0001
	b       .L802ACFEC
	sw      $t7, 0x0004($sp)
.L802ACFB8:
	lui     $t9, %hi(object_80361250)
	lh      $t9, %lo(object_80361250)($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t2, %hi(object_803611D8+1*1)
	sll     $t1, $t9, 1
	addu    $t2, $t2, $t1
	lb      $t2, %lo(object_803611D8+1*1)($t2)
	lw      $t6, 0x0100($t8)
	bne     $t6, $t2, .L802ACFEC
	nop
	li      $t3, 0x0001
	sw      $t3, 0x0004($sp)
.L802ACFEC:
	b       .L802ACFFC
	nop
.L802ACFF4:
	li      $t4, 0x0001
	sw      $t4, 0x0004($sp)
.L802ACFFC:
	lw      $t0, 0x0004($sp)
	li      $at, 0x0001
	bne     $t0, $at, .L802AD034
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t7, 0x0002($t5)
	ori     $t8, $t7, 0x0001
	sh      $t8, 0x0002($t5)
	lui     $t9, %hi(object_80361254)
	lh      $t9, %lo(object_80361254)($t9)
	lui     $at, %hi(object_80361254)
	addiu   $t1, $t9, 0x0001
	sh      $t1, %lo(object_80361254)($at)
.L802AD034:
	lw      $t6, 0x0004($sp)
	bnez    $t6, .L802AD058
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0002
	lh      $t3, 0x0002($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0002($t2)
.L802AD058:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x0004($sp)
	sw      $t0, 0x0088($t7)
	b       .L802AD070
	nop
.L802AD070:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void object_a_802AD078(void) */
.globl object_a_802AD078
object_a_802AD078:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AD0CC
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	li      $at, 0x41A00000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sw      $t9, 0x00F4($t0)
.L802AD0CC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	lw      $t3, 0x00F4($t1)
	slt     $at, $t3, $t2
	beqz    $at, .L802AD0F4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
.L802AD0F4:
	b       .L802AD0FC
	nop
.L802AD0FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802AD10C(void) */
.globl object_a_802AD10C
object_a_802AD10C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC0800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x00B0($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A4($t8)
	lwc1    $f6, 0x0168($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802AD194
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x0168($t9)
	swc1    $f8, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t2)
.L802AD194:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802AD1A4(void) */
.globl object_a_802AD1A4
object_a_802AD1A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AD1F8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_803379C8)
	lwc1    $f6, %lo(object_a_803379C8)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802AD1F8
	nop
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	li.u    $a0, 0x500CA081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x500CA081
.L802AD1F8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x000A
	bnez    $at, .L802AD220
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0004
	sw      $t1, 0x014C($t2)
.L802AD220:
	b       .L802AD228
	nop
.L802AD228:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802AD238(void) */
.globl object_a_802AD238
object_a_802AD238:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AD28C
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	li      $at, 0x41200000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sw      $t9, 0x00F4($t0)
.L802AD28C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	lw      $t3, 0x00F4($t1)
	slt     $at, $t3, $t2
	beqz    $at, .L802AD2B8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802AD2B8:
	b       .L802AD2C0
	nop
.L802AD2C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802AD2D0(void) */
.globl object_a_802AD2D0
object_a_802AD2D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0144($t6)
	lw      $t7, 0x0154($t6)
	addiu   $t9, $t8, 0x0028
	slt     $at, $t9, $t7
	beqz    $at, .L802AD320
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t2)
	add.s   $f8, $f4, $f6
	b       .L802AD33C
	swc1    $f8, 0x00A4($t2)
.L802AD320:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t3)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t3)
.L802AD33C:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AD34C
object_a_802AD34C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330298
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330298
	b       .L802AD368
	nop
.L802AD368:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AD378
object_a_802AD378:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802AD3C4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802AD414
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802AD45C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802AD534
	nop
	b       .L802AD53C
	nop
.L802AD3C4:
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, .L802AD40C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
	jal     o_script_80383D1C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sll     $t3, $v0, 7
	sw      $t3, 0x00F4($t4)
.L802AD40C:
	b       .L802AD53C
	nop
.L802AD414:
	jal     obj_lib_802A0604
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x0006
	bnez    $at, .L802AD454
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
	li.u    $a0, 0x302D8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x302D8081
.L802AD454:
	b       .L802AD53C
	nop
.L802AD45C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0114($t1)
	slti    $at, $t2, 0x0400
	beqz    $at, .L802AD488
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0114($t0)
	addiu   $t4, $t3, 0x0080
	sw      $t4, 0x0114($t0)
.L802AD488:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x011C($t5)
	slti    $at, $t6, -0x03FF
	bnez    $at, .L802AD4C4
	nop
	slti    $at, $t6, 0x0400
	beqz    $at, .L802AD4C4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x011C($t8)
	lw      $t7, 0x00F4($t8)
	addu    $t1, $t9, $t7
	sw      $t1, 0x011C($t8)
.L802AD4C4:
	li      $at, 0xC0400000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t2)
	jal     obj_lib_802A2BC4
	nop
	jal     obj_lib_802A2644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f8, 0x00E8($t3)
	lwc1    $f6, 0x00A4($t3)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f6, $f16
	nop
	bc1f    .L802AD52C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t0, 0x014C($t4)
	addiu   $t5, $t0, 0x0001
	sw      $t5, 0x014C($t4)
.L802AD52C:
	b       .L802AD53C
	nop
.L802AD534:
	b       .L802AD53C
	nop
.L802AD53C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t9, 0x0068($t6)
	lw      $t7, 0x014C($t9)
	bne     $t7, $at, .L802AD564
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AD564:
	b       .L802AD56C
	nop
.L802AD56C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802AD580(void) */
.globl object_a_802AD580
object_a_802AD580:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	sw      $t7, 0x003C($sp)
	sw      $0, 0x0030($sp)
	sw      $0, 0x002C($sp)
	lw      $t8, 0x003C($sp)
	lui     $t0, %hi(object_a_803302AC+0x00)
	sw      $0, 0x0040($sp)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t0, $t9
	lh      $t0, %lo(object_a_803302AC+0x00)($t0)
	blez    $t0, .L802AD744
	nop
.L802AD5C8:
	sw      $0, 0x0038($sp)
	sw      $0, 0x0034($sp)
	lw      $t1, 0x003C($sp)
	li      $at, 0x0003
	bne     $t1, $at, .L802AD61C
	nop
	lw      $t2, 0x003C($sp)
	la.u    $t4, object_a_803302AC+0x00
	la.l    $t4, object_a_803302AC+0x00
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t5, $t3, $t4
	lh      $t6, 0x0004($t5)
	lw      $t7, 0x0040($sp)
	lh      $t9, 0x0002($t5)
	multu   $t6, $t7
	mflo    $t8
	addu    $t0, $t8, $t9
	b       .L802AD654
	sw      $t0, 0x0038($sp)
.L802AD61C:
	lw      $t1, 0x003C($sp)
	la.u    $t3, object_a_803302AC+0x00
	la.l    $t3, object_a_803302AC+0x00
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t4, $t2, $t3
	lh      $t6, 0x0004($t4)
	lw      $t7, 0x0040($sp)
	lh      $t8, 0x0002($t4)
	multu   $t6, $t7
	mflo    $t5
	addu    $t9, $t5, $t8
	sw      $t9, 0x0034($sp)
.L802AD654:
	la.u    $a0, o_13000C64
	jal     obj_lib_802A14FC
	la.l    $a0, o_13000C64
	beqz    $v0, .L802AD694
	nop
	lw      $t0, 0x0040($sp)
	li      $at, 0x0003
	div     $0, $t0, $at
	mfhi    $t1
	bnez    $t1, .L802AD68C
	nop
	lw      $t2, 0x0030($sp)
	addiu   $t3, $t2, -0x0096
	sw      $t3, 0x0030($sp)
.L802AD68C:
	li      $t6, 0x01C2
	sw      $t6, 0x002C($sp)
.L802AD694:
	lw      $t8, 0x003C($sp)
	lui     $t0, %hi(object_a_803302AC+0x06)
	lui     $t5, %hi(object)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t0, $t9
	lh      $t0, %lo(object_a_803302AC+0x06)($t0)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0030($sp)
	lw      $t4, 0x002C($sp)
	la.u    $t1, o_13000C04
	la.l    $t1, o_13000C04
	sw      $t1, 0x0018($sp)
	move    $a0, $0
	lw      $a1, 0x0038($sp)
	lw      $a3, 0x0034($sp)
	sw      $t0, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	jal     obj_lib_8029EF64
	addu    $a2, $t7, $t4
	sw      $v0, 0x0044($sp)
	lw      $t2, 0x003C($sp)
	lui     $a1, %hi(object_a_803302AC+0x08)
	lw      $a0, 0x0044($sp)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $a1, $a1, $t3
	jal     obj_lib_802A44F4
	lw      $a1, %lo(object_a_803302AC+0x08)($a1)
	lw      $t4, 0x003C($sp)
	lui     $t8, %hi(object_a_803302AC+0x00)
	lw      $t6, 0x0040($sp)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addu    $t8, $t8, $t5
	lh      $t8, %lo(object_a_803302AC+0x00)($t8)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0040($sp)
	slt     $at, $t7, $t8
	bnez    $at, .L802AD5C8
	nop
.L802AD744:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
	b       .L802AD75C
	nop
.L802AD75C:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

/* void object_a_802AD76C(void) */
.globl object_a_802AD76C
object_a_802AD76C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F6BC
	nop
	la.u    $a0, o_13000C64
	jal     obj_lib_802A14FC
	la.l    $a0, o_13000C64
	beqz    $v0, .L802AD7A0
	nop
	jal     obj_lib_8029F694
	nop
	b       .L802AD7DC
	nop
.L802AD7A0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44960000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802AD7DC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
	jal     obj_lib_8029F694
	nop
.L802AD7DC:
	b       .L802AD7E4
	nop
.L802AD7E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802AD7F4(void) */
.globl object_a_802AD7F4
object_a_802AD7F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F694
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	b       .L802AD818
	nop
.L802AD818:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802AD828(void) */
.globl object_a_802AD828
object_a_802AD828:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13000C64
	jal     obj_lib_802A14FC
	la.l    $a0, o_13000C64
	bnez    $v0, .L802AD868
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802AD878
	nop
.L802AD868:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
.L802AD878:
	b       .L802AD880
	nop
.L802AD880:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AD890
object_a_802AD890:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_803302DC
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_803302DC
	b       .L802AD8AC
	nop
.L802AD8AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AD8BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x30404081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30404081
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	b       .L802AD8E0
	nop
.L802AD8E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802AD8F0(void) */
.globl object_a_802AD8F0
object_a_802AD8F0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0002
	lw      $t8, 0x0100($t7)
	bne     $t8, $at, .L802AD984
	nop
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0214($t9)
	bne     $t0, $t1, .L802AD97C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00A4($t2)
	lwc1    $f8, 0x00FC($t2)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802AD96C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	b       .L802AD97C
	sw      $t3, 0x014C($t4)
.L802AD96C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
.L802AD97C:
	b       .L802ADA3C
	nop
.L802AD984:
	lui     $t7, %hi(obj_mario)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, %lo(obj_mario)($t7)
	lwc1    $f16, 0x00FC($t8)
	lwc1    $f10, 0x00A4($t7)
	c.lt.s  $f16, $f10
	nop
	bc1t    .L802AD9BC
	nop
	lw      $t9, 0x0100($t8)
	li      $at, 0x0001
	bne     $t9, $at, .L802ADA00
	nop
.L802AD9BC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x00F8($t0)
	swc1    $f18, 0x00A4($t0)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x0214($t1)
	bne     $t2, $t3, .L802AD9F8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802AD9F8:
	b       .L802ADA3C
	nop
.L802ADA00:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00F4($t6)
	swc1    $f4, 0x00A4($t6)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, .L802ADA3C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802ADA3C:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802ADA4C(void) */
.globl object_a_802ADA4C
object_a_802ADA4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x40020001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40020001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802ADA8C
	nop
	jal     obj_lib_802A3CFC
	nop
	beqz    $v0, .L802ADA8C
	nop
	jal     object_a_802AD8BC
	nop
.L802ADA8C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41200000
	li      $a2, 0x40000000
	jal     obj_lib_8029E3E8
	addiu   $a0, $a0, 0x00B0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A4($t8)
	lwc1    $f6, 0x00B0($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A4($t9)
	lwc1    $f16, 0x00F8($t9)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802ADB70
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x00F8($t0)
	swc1    $f18, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0002
	lw      $t2, 0x0100($t1)
	beq     $t2, $at, .L802ADB10
	nop
	li      $at, 0x0001
	bne     $t2, $at, .L802ADB24
	nop
.L802ADB10:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	b       .L802ADB70
	sw      $t3, 0x014C($t4)
.L802ADB24:
	lui     $t5, %hi(obj_mario)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, %lo(obj_mario)($t5)
	lwc1    $f6, 0x00FC($t6)
	lwc1    $f4, 0x00A4($t5)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802ADB60
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	b       .L802ADB70
	sw      $t7, 0x014C($t8)
.L802ADB60:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t0)
.L802ADB70:
	b       .L802ADB78
	nop
.L802ADB78:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802ADB88(void) */
.globl object_a_802ADB88
object_a_802ADB88:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x40020001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40020001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802ADBC8
	nop
	jal     obj_lib_802A3CFC
	nop
	beqz    $v0, .L802ADBC8
	nop
	jal     object_a_802AD8BC
	nop
.L802ADBC8:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC1200000
	li      $a2, 0xC0000000
	jal     obj_lib_8029E3E8
	addiu   $a0, $a0, 0x00B0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A4($t8)
	lwc1    $f6, 0x00B0($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A4($t9)
	lwc1    $f16, 0x00F4($t9)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802ADCCC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x00F4($t0)
	swc1    $f18, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0100($t1)
	bne     $t2, $at, .L802ADC54
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	b       .L802ADCCC
	sw      $t3, 0x014C($t4)
.L802ADC54:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0002
	lw      $t6, 0x0100($t5)
	bne     $t6, $at, .L802ADC80
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	b       .L802ADCCC
	sw      $t7, 0x014C($t8)
.L802ADC80:
	lui     $t9, %hi(obj_mario)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, %lo(obj_mario)($t9)
	lwc1    $f6, 0x00FC($t0)
	lwc1    $f4, 0x00A4($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802ADCBC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	b       .L802ADCCC
	sw      $t1, 0x014C($t2)
.L802ADCBC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
.L802ADCCC:
	b       .L802ADCD4
	nop
.L802ADCD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802ADCE4(void) */
.globl object_a_802ADCE4
object_a_802ADCE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802ADD28
	nop
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	li.u    $a0, 0x306B8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x306B8081
.L802ADD28:
	jal     obj_lib_802A0114
	nop
	bnez    $v0, .L802ADD58
	nop
	jal     obj_lib_802A3CFC
	nop
	bnez    $v0, .L802ADD58
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802ADD58:
	b       .L802ADD60
	nop
.L802ADD60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802ADD70(void) */
.globl object_a_802ADD70
object_a_802ADD70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802ADDB4
	nop
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	li.u    $a0, 0x306B8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x306B8081
.L802ADDB4:
	jal     obj_lib_802A0114
	nop
	bnez    $v0, .L802ADDE0
	nop
	jal     obj_lib_802A3CFC
	nop
	bnez    $v0, .L802ADDE0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
.L802ADDE0:
	b       .L802ADDE8
	nop
.L802ADDE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802ADDF8
object_a_802ADDF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t0, %hi(object_a_803302EC+2*2)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t9, $t8, 1
	addu    $t0, $t0, $t9
	lh      $t0, %lo(object_a_803302EC+2*2)($t0)
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	bnez    $t1, .L802ADEB8
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t6, %hi(object_a_803302EC+2*0)
	lw      $t3, 0x0144($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t5, $t4, 1
	addu    $t6, $t6, $t5
	lh      $t6, %lo(object_a_803302EC+2*0)($t6)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00F4($t2)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x0168($t7)
	swc1    $f8, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f10, 0x00F8($t8)
	lwc1    $f16, 0x00F4($t8)
	add.s   $f18, $f10, $f16
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x00FC($t8)
	la.u    $a0, o_13000CFC
	jal     obj_lib_802A14FC
	la.l    $a0, o_13000CFC
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L802ADF54
	sw      $v0, 0x0100($t9)
.L802ADEB8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t5, %hi(object_a_803302EC+2*0)
	lw      $t1, 0x0144($t0)
	sll     $t3, $t1, 2
	subu    $t3, $t3, $t1
	sll     $t4, $t3, 1
	addu    $t5, $t5, $t4
	lh      $t5, %lo(object_a_803302EC+2*0)($t5)
	mtc1    $t5, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00F4($t0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t9, %hi(object_a_803302EC+2*1)
	lw      $t2, 0x0144($t6)
	sll     $t7, $t2, 2
	subu    $t7, $t7, $t2
	sll     $t8, $t7, 1
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_803302EC+2*1)($t9)
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00F8($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f4, 0x00F8($t1)
	lwc1    $f6, 0x00F4($t1)
	add.s   $f8, $f4, $f6
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x00FC($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x0100($t4)
.L802ADF54:
	b       .L802ADF5C
	nop
.L802ADF5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802ADF6C
object_a_802ADF6C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330318
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330318
	b       .L802ADF88
	nop
.L802ADF88:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802ADF98
object_a_802ADF98:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802AE45C
	li      $a0, 0x00020000
	lui     $a0, %hi(object)
	la.u    $a2, o_13000D6C
	la.l    $a2, o_13000D6C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x008E
	b       .L802ADFC8
	nop
.L802ADFC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802ADFD8
object_a_802ADFD8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AE01C
	nop
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x00C8($t8)
	sw      $t9, 0x00C8($t0)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x41200000
.L802AE01C:
	jal     obj_lib_802A2644
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x017C($t1)
	addiu   $t3, $t2, -0x002A
	sw      $t3, 0x017C($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t6, 0x00FE
	lui     $at, %hi(object_a_803379D0)
	lw      $t5, 0x017C($t4)
	ldc1    $f8, %lo(object_a_803379D0)($at)
	li      $at, 0x3FF00000
	subu    $t7, $t6, $t5
	mtc1    $t7, $f4
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.w $f6, $f4
	li      $at, 0x3FE00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	div.d   $f10, $f6, $f8
	mul.d   $f18, $f10, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x001C($sp)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x017C($t8)
	slti    $at, $t9, 0x0002
	beqz    $at, .L802AE0B4
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AE0B4:
	b       .L802AE0BC
	nop
.L802AE0BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AE0CC
object_a_802AE0CC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lh      $t6, 0x0022($sp)
	sw      $0, 0x0018($sp)
	blez    $t6, .L802AE220
	nop
.L802AE0F4:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000DB4
	la.l    $a2, o_13000DB4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	lh      $a1, 0x0026($sp)
	sw      $v0, 0x001C($sp)
	lh      $t7, 0x002E($sp)
	lw      $t8, 0x001C($sp)
	sw      $t7, 0x00F0($t8)
	lw      $t9, 0x001C($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t9)
	jal     rand
	nop
	lw      $t0, 0x001C($sp)
	sw      $v0, 0x00C8($t0)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x00C8($t1)
	sw      $t2, 0x00D4($t1)
	jal     rand
	nop
	lw      $t3, 0x001C($sp)
	sw      $v0, 0x00D0($t3)
	li      $at, 0x42480000
	mtc1    $at, $f12
	jal     obj_lib_802A2F14
	nop
	lw      $t4, 0x001C($sp)
	swc1    $f0, 0x00B0($t4)
	lh      $t5, 0x0026($sp)
	li      $at, 0x008A
	beq     $t5, $at, .L802AE194
	nop
	li      $at, 0x0038
	bne     $t5, $at, .L802AE1C0
	nop
.L802AE194:
	lw      $t7, 0x001C($sp)
	li      $t6, 0x0F00
	sw      $t6, 0x0114($t7)
	lw      $t9, 0x001C($sp)
	li      $t8, 0x0500
	sw      $t8, 0x0118($t9)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lw      $t0, 0x001C($sp)
	b       .L802AE1FC
	swc1    $f10, 0x00B8($t0)
.L802AE1C0:
	jal     o_script_80383CB4
	nop
	li      $at, 0x42480000
	mtc1    $at, $f16
	lw      $t4, 0x001C($sp)
	add.s   $f18, $f0, $f16
	trunc.w.s $f4, $f18
	mfc1    $t1, $f4
	nop
	sll     $t3, $t1, 7
	sw      $t3, 0x0114($t4)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lw      $t5, 0x001C($sp)
	swc1    $f6, 0x00B8($t5)
.L802AE1FC:
	lw      $a0, 0x001C($sp)
	jal     obj_lib_8029F404
	lw      $a1, 0x0028($sp)
	lw      $t6, 0x0018($sp)
	lh      $t8, 0x0022($sp)
	addiu   $t7, $t6, 0x0001
	slt     $at, $t7, $t8
	bnez    $at, .L802AE0F4
	sw      $t7, 0x0018($sp)
.L802AE220:
	b       .L802AE228
	nop
.L802AE228:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AE238
object_a_802AE238:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x0164($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x016C($t6)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	add.s   $f6, $f0, $f4
	swc1    $f6, 0x00A4($t7)
	li      $at, 0x43160000
	mtc1    $at, $f12
	jal     obj_lib_802A2F14
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x0164($t8)
	add.s   $f10, $f0, $f8
	swc1    $f10, 0x00A0($t8)
	li      $at, 0x43160000
	mtc1    $at, $f12
	jal     obj_lib_802A2F14
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f16, 0x016C($t9)
	add.s   $f18, $f0, $f16
	swc1    $f18, 0x00A8($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	li      $at, 0x43480000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t1, $f16
	nop
	sw      $t1, 0x017C($t2)
	b       .L802AE2F4
	nop
.L802AE2F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AE304
object_a_802AE304:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802AE45C
	li      $a0, 0x8000
	jal     object_a_802AE334
	nop
	b       .L802AE324
	nop
.L802AE324:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AE334
object_a_802AE334:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_8033032C
	jal     obj_lib_802A32AC
	la.l    $a0, object_a_8033032C
	b       .L802AE350
	nop
.L802AE350:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AE360
object_a_802AE360:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802AE45C
	li      $a0, 0x4000
	la.u    $a0, object_a_80330340
	jal     obj_lib_802A32AC
	la.l    $a0, object_a_80330340
	b       .L802AE384
	nop
.L802AE384:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AE394:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002528
	la.l    $a2, o_13002528
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0096
	jal     obj_lib_8029EEB8
	li      $a3, 0x3F800000
	sw      $v0, 0x001C($sp)
	la.u    $t6, object_a_80330354
	la.l    $t6, object_a_80330354
	lh      $t7, 0x0000($t6)
	lw      $t8, 0x001C($sp)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00B8($t8)
	la.u    $t9, object_a_80330354
	la.l    $t9, object_a_80330354
	lh      $t0, 0x0002($t9)
	lw      $t1, 0x001C($sp)
	mtc1    $t0, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00B0($t1)
	la.u    $t2, object_a_80330354
	la.l    $t2, object_a_80330354
	lh      $t3, 0x0004($t2)
	lw      $t4, 0x001C($sp)
	mtc1    $t3, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00E4($t4)
	la.u    $t5, object_a_80330354
	la.l    $t5, object_a_80330354
	lh      $t6, 0x0006($t5)
	lw      $a0, 0x001C($sp)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f4, $f4
	mfc1    $a1, $f4
	jal     obj_lib_802A2FC0
	nop
	b       .L802AE44C
	nop
.L802AE44C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802AE45C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0001
	xor     $t9, $a0, $at
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00E0($t7)
	and     $t0, $t8, $t9
	sw      $t0, 0x00E0($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AE48C
object_a_802AE48C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802AE45C
	li      $a0, 0x00010000
	la.u    $a0, object_a_8033035C
	jal     obj_lib_802A32AC
	la.l    $a0, object_a_8033035C
	b       .L802AE4B0
	nop
.L802AE4B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AE4C0
object_a_802AE4C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
.L802AE4D4:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000E70
	la.l    $a2, o_13000E70
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x008E
	sw      $v0, 0x0018($sp)
	lh      $t6, 0x0026($sp)
	lw      $t7, 0x0018($sp)
	sw      $t6, 0x00C8($t7)
	lh      $t8, 0x0022($sp)
	lw      $t9, 0x0018($sp)
	sw      $t8, 0x00C4($t9)
	lw      $t0, 0x001C($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0003
	bnez    $at, .L802AE4D4
	sw      $t1, 0x001C($sp)
	b       .L802AE524
	nop
.L802AE524:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AE534
object_a_802AE534:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	li      $t6, 0x01F4
	sh      $t6, 0x002E($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802AE774
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0064
	sw      $t9, 0x017C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C4($t1)
	bnez    $t2, .L802AE6D4
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x44610000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t9, 0x002E($sp)
	li      $at, 0x8000
	lw      $t4, 0x00C8($t3)
	mtc1    $t9, $f8
	lwc1    $f18, 0x00A0($t3)
	addu    $t5, $t4, $at
	andi    $t6, $t5, 0xFFFF
	cvt.s.w $f10, $f8
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t3)
	li      $at, 0x43480000
	mtc1    $at, $f12
	jal     obj_lib_802A2F14
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f6
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mov.s   $f20, $f0
	add.s   $f10, $f6, $f20
	lwc1    $f8, 0x00A4($t0)
	add.s   $f18, $f8, $f10
	swc1    $f18, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t8, 0x002E($sp)
	li      $at, 0x8000
	lw      $t2, 0x00C8($t1)
	mtc1    $t8, $f4
	lwc1    $f10, 0x00A8($t1)
	addu    $t4, $t2, $at
	andi    $t5, $t4, 0xFFFF
	cvt.s.w $f6, $f4
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	mul.s   $f8, $f16, $f6
	add.s   $f18, $f10, $f8
	swc1    $f18, 0x00A8($t1)
	li      $at, 0x457A0000
	mtc1    $at, $f12
	jal     obj_lib_802A2F14
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mov.s   $f20, $f0
	lw      $t3, 0x00C8($t9)
	mtc1    $t3, $f4
	nop
	cvt.s.w $f16, $f4
	add.s   $f6, $f16, $f20
	trunc.w.s $f10, $f6
	mfc1    $t2, $f10
	nop
	sw      $t2, 0x00C8($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x428C0000
	mtc1    $at, $f8
	li      $at, 0x42480000
	mtc1    $at, $f4
	mul.s   $f18, $f0, $f8
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f16, $f18, $f4
	b       .L802AE760
	swc1    $f16, 0x00B8($t4)
.L802AE6D4:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x44160000
	lh      $t6, 0x002E($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	addiu   $t7, $t6, -0x00C8
	mtc1    $t7, $f10
	lwc1    $f6, 0x00A4($t5)
	cvt.s.w $f8, $f10
	sub.s   $f18, $f6, $f8
	swc1    $f18, 0x00A4($t5)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	li      $at, 0x42480000
	mtc1    $at, $f10
	mul.s   $f16, $f0, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	add.s   $f6, $f16, $f10
	swc1    $f6, 0x00B0($t8)
	jal     rand
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
	li      $at, 0x41200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t3)
.L802AE760:
	lui     $a0, %hi(object)
	jal     obj_lib_802A19AC
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x0028($sp)
.L802AE774:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0154($t0)
	slti    $at, $t2, 0x0009
	bnez    $at, .L802AE798
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AE798:
	jal     o_script_80383CB4
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f18
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x44FA0000
	mtc1    $at, $f4
	lw      $t4, 0x00D0($t9)
	mov.s   $f20, $f0
	mul.s   $f16, $f4, $f20
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f10, $f18, $f16
	add.s   $f4, $f8, $f10
	trunc.w.s $f18, $f4
	mfc1    $t7, $f18
	nop
	sw      $t7, 0x00D0($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f16
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lw      $t8, 0x00D4($t5)
	mov.s   $f20, $f0
	mul.s   $f8, $f6, $f20
	mtc1    $t8, $f4
	nop
	cvt.s.w $f18, $f4
	add.s   $f10, $f16, $f8
	add.s   $f6, $f18, $f10
	trunc.w.s $f16, $f6
	mfc1    $t3, $f16
	nop
	sw      $t3, 0x00D4($t5)
	jal     obj_lib_802A2644
	nop
	b       .L802AE848
	nop
.L802AE848:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802AE85C
object_a_802AE85C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L802AE898
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AE898:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802AE8F0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	sw      $0, 0x001C($sp)
.L802AE8C4:
	lui     $a0, %hi(object)
	la.u    $a2, o_130000F8
	la.l    $a2, o_130000F8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00AA
	lw      $t9, 0x001C($sp)
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x000A
	bnez    $at, .L802AE8C4
	sw      $t0, 0x001C($sp)
.L802AE8F0:
	b       .L802AE8F8
	nop
.L802AE8F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AE908
object_a_802AE908:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802AE93C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802AE9EC
	nop
	b       .L802AEA3C
	nop
.L802AE93C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802AE98C
	nop
	jal     obj_lib_802A3F24
	li      $a0, 0x0001
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	move    $s0, $v0
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	and     $t9, $v0, $s0
	beqz    $t9, .L802AE98C
	nop
	jal     obj_lib_802A04C0
	li      $a0, 0x0079
.L802AE98C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $t0
	jal     obj_lib_8029F120
	lw      $a1, 0x0068($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	move    $a0, $t1
	jal     obj_lib_802A5228
	lw      $a1, 0x0068($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0003
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x014C($t3)
	bne     $t4, $at, .L802AE9E4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
.L802AE9E4:
	b       .L802AEA3C
	nop
.L802AE9EC:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A37AC
	nop
	li.u    $a2, 0x3F333333
	li.l    $a2, 0x3F333333
	li      $a0, 0x0014
	li      $a1, 0x008A
	jal     object_a_802AE0CC
	li      $a3, 0x0003
	lui     $at, %hi(object_a_803379D8)
	lwc1    $f12, %lo(object_a_803379D8)($at)
	li      $at, 0xC4960000
	mtc1    $at, $f14
	li.u    $a2, 0x44A28000
	jal     object_b_802F2B88
	li.l    $a2, 0x44A28000
	b       .L802AEA3C
	nop
.L802AEA3C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D4($t8)
	addiu   $t0, $t9, 0x0400
	sw      $t0, 0x00D4($t8)
	b       .L802AEA58
	nop
.L802AEA58:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802AEA6C(void) */
.globl object_a_802AEA6C
object_a_802AEA6C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0088($t6)
	beqz    $t7, .L802AEA98
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L802AEA98:
	jal     map_data_803839CC
	nop
	b       .L802AEAA8
	nop
.L802AEAA8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802AEAB8(void) */
.globl object_a_802AEAB8
object_a_802AEAB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0088($t6)
	beq     $t7, $at, .L802AEAE8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
.L802AEAE8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C8($t0)
	addiu   $t2, $t1, 0x0800
	sw      $t2, 0x00C8($t0)
	jal     map_data_803839CC
	nop
	b       .L802AEB0C
	nop
.L802AEB0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802AEB1C(void) */
.globl object_a_802AEB1C
object_a_802AEB1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0009
	beqz    $t8, .L802AEB5C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t0)
.L802AEB5C:
	b       .L802AEB64
	nop
.L802AEB64:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802AEB74(void) */
.globl object_a_802AEB74
object_a_802AEB74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F6BC
	nop
	b       .L802AEB8C
	nop
.L802AEB8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEB9C
object_a_802AEB9C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330370
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330370
	b       .L802AEBB8
	nop
.L802AEBB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEBC8
object_a_802AEBC8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f8
	lhu     $t7, 0x00F6($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	cvt.d.s $f6, $f4
	lui     $at, %hi(object_a_803379E0)
	add.d   $f10, $f6, $f8
	ldc1    $f16, %lo(object_a_803379E0)($at)
	lui     $at, %hi(object_a_803379E8)
	ldc1    $f4, %lo(object_a_803379E8)($at)
	mul.d   $f18, $f10, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0030($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, 0x0080
	sw      $t2, 0x00F4($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AEC40
object_a_802AEC40:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00F6($t6)
	lwc1    $f16, 0x00A4($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_a_803379F0)
	ldc1    $f8, %lo(object_a_803379F0)($at)
	cvt.d.s $f6, $f4
	cvt.d.s $f18, $f16
	mul.d   $f10, $f6, $f8
	sub.d   $f4, $f18, $f10
	cvt.s.d $f6, $f4
	swc1    $f6, 0x00A4($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, 0x0100
	sw      $t2, 0x00F4($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AECA8
object_a_802AECA8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	move    $a0, $t6
	jal     obj_lib_8029F0E0
	lw      $a1, 0x0068($t6)
	b       .L802AECCC
	nop
.L802AECCC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AECDC
object_a_802AECDC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L802AED60
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802AED20
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t0)
.L802AED20:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00F6($t1)
	lwc1    $f4, 0x00A4($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x40E00000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	b       .L802AED9C
	swc1    $f6, 0x00A4($t1)
.L802AED60:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lhu     $t6, 0x00F6($t5)
	lwc1    $f4, 0x00A4($t5)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x40400000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	sub.s   $f18, $f4, $f16
	swc1    $f18, 0x00A4($t5)
.L802AED9C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	addiu   $t2, $t0, 0x0100
	sw      $t2, 0x00F4($t9)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AEDC0
object_a_802AEDC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E27C
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x015C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	sltiu   $at, $t9, 0x000A
	beqz    $at, .L802AEE8C
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_a_803379F8)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_a_803379F8)($at)
	jr      $t9
	nop
.globl L802AEE34
L802AEE34:
	lui     $a0, %hi(object)
	la.u    $a2, o_130010B8
	la.l    $a2, o_130010B8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0090
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
	b       .L802AEE8C
	nop
.globl L802AEE68
L802AEE68:
	b       .L802AEE8C
	nop
.globl L802AEE70
L802AEE70:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
	b       .L802AEE8C
	nop
.L802AEE8C:
	b       .L802AEE94
	nop
.L802AEE94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEEA4
object_a_802AEEA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00F6($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x428C0000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, 0x0800
	sw      $t2, 0x00F4($t0)
	b       .L802AEF0C
	nop
.L802AEF0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEF1C
object_a_802AEF1C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AEF74
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sw      $t9, 0x00F0($t0)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A2FC0
	li      $a1, 0x41200000
.L802AEF74:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0002
	lw      $t2, 0x0144($t1)
	bne     $t2, $at, .L802AEFE4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x40C00000
	mtc1    $at, $f16
	lw      $t4, 0x0154($t3)
	lwc1    $f10, 0x00B8($t3)
	li      $at, 0x40590000
	mtc1    $t4, $f4
	sub.s   $f18, $f10, $f16
	mtc1    $0, $f16
	mtc1    $at, $f17
	cvt.s.w $f6, $f4
	li      $at, 0x40000000
	mtc1    $at, $f19
	mul.s   $f8, $f18, $f6
	mtc1    $0, $f18
	cvt.d.s $f10, $f8
	div.d   $f4, $f10, $f16
	add.d   $f6, $f4, $f18
	cvt.s.d $f8, $f6
	b       .L802AF03C
	swc1    $f8, 0x001C($sp)
.L802AEFE4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x40340000
	mtc1    $at, $f5
	lw      $t6, 0x0154($t5)
	lwc1    $f10, 0x00B8($t5)
	mtc1    $0, $f4
	mtc1    $t6, $f6
	cvt.d.s $f16, $f10
	li      $at, 0x40590000
	cvt.d.w $f8, $f6
	mtc1    $0, $f6
	sub.d   $f18, $f16, $f4
	mtc1    $0, $f16
	mtc1    $at, $f17
	li      $at, 0x3FF00000
	mul.d   $f10, $f18, $f8
	mtc1    $at, $f7
	div.d   $f4, $f10, $f16
	add.d   $f18, $f4, $f6
	cvt.s.d $f8, $f18
	swc1    $f8, 0x001C($sp)
.L802AF03C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0003
	lw      $t8, 0x0144($t7)
	bne     $t8, $at, .L802AF144
	nop
	li      $at, 0x43480000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x01FC($t9)
	li      $at, 0x43160000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0208($t0)
	li      $at, 0xC1E00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t1)
	jal     obj_lib_802A0604
	nop
	li      $at, 0x41C80000
	mtc1    $at, $f6
	lwc1    $f18, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mul.s   $f8, $f6, $f18
	lwc1    $f10, 0x00A4($t2)
	lwc1    $f4, 0x00E8($t2)
	sub.s   $f16, $f10, $f8
	c.lt.s  $f16, $f4
	nop
	bc1f    .L802AF110
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t3)
	li      $at, 0x41C80000
	mtc1    $at, $f18
	lwc1    $f10, 0x001C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f8, $f18, $f10
	lwc1    $f16, 0x00E8($t4)
	add.s   $f4, $f16, $f8
	swc1    $f4, 0x00A4($t4)
.L802AF110:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_a_80337A20)
	ldc1    $f10, %lo(object_a_80337A20)($at)
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x0110($t6)
	mtc1    $t7, $f6
	nop
	cvt.d.w $f18, $f6
	div.d   $f16, $f18, $f10
	trunc.w.d $f8, $f16
	b       .L802AF158
	swc1    $f8, 0x0018($sp)
.L802AF144:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x0110($t0)
	sw      $t1, 0x0018($sp)
.L802AF158:
	jal     obj_lib_8029F430
	lwc1    $f12, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0004
	lw      $t3, 0x0144($t2)
	bne     $t3, $at, .L802AF194
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00A4($t4)
	lwc1    $f6, 0x00B8($t4)
	add.s   $f18, $f4, $f6
	b       .L802AF19C
	swc1    $f18, 0x00A4($t4)
.L802AF194:
	jal     obj_lib_802A2644
	nop
.L802AF19C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0018($sp)
	lw      $t6, 0x0154($t5)
	slt     $at, $t7, $t6
	beqz    $at, .L802AF1C4
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AF1C4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	b       .L802AF1D8
	nop
.L802AF1D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AF1E8
object_a_802AF1E8:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802AF26C
	nop
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	li      $at, 0x0004
	bne     $t8, $at, .L802AF22C
	nop
	lui     $t9, %hi(object_80361264)
	lh      $t9, %lo(object_80361264)($t9)
	li      $at, 0x0001
	bne     $t9, $at, .L802AF264
	nop
.L802AF22C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802AF264
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
.L802AF264:
	b       .L802AF3E4
	nop
.L802AF26C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x014C($t4)
	bne     $t5, $at, .L802AF3C0
	nop
	li      $t6, 0x0090
	sw      $t6, 0x0030($sp)
	li      $at, 0x42BE0000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0038($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t8, 0x0144($t7)
	bne     $t8, $at, .L802AF2BC
	nop
	li      $t9, 0x0091
	sw      $t9, 0x0030($sp)
.L802AF2BC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t2, 0x0144($t0)
	bne     $t2, $at, .L802AF2E4
	nop
	li      $at, 0x42480000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0038($sp)
.L802AF2E4:
	li      $t3, 0x0001
	sw      $t3, 0x0034($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x0154($t1)
	slti    $at, $t4, 0x003C
	beqz    $at, .L802AF310
	nop
	li      $t5, 0x000F
	b       .L802AF358
	sw      $t5, 0x0034($sp)
.L802AF310:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x004A
	beqz    $at, .L802AF344
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t0, 0x004B
	lw      $t9, 0x0154($t8)
	subu    $t2, $t0, $t9
	b       .L802AF358
	sw      $t2, 0x0034($sp)
.L802AF344:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x014C($t3)
	addiu   $t4, $t1, 0x0001
	sw      $t4, 0x014C($t3)
.L802AF358:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0034($sp)
	sw      $t5, 0x0110($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0030($sp)
	la.u    $t0, o_13001124
	lw      $a0, 0x0144($t7)
	la.l    $t0, o_13001124
	sw      $t0, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t7, 0x0010($sp)
	jal     obj_lib_8029EF64
	sw      $t8, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	lwc1    $f16, 0x0038($sp)
	lw      $t9, 0x003C($sp)
	swc1    $f16, 0x00B8($t9)
	li.u    $a0, 0x60048001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60048001
	b       .L802AF3E4
	nop
.L802AF3C0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0154($t2)
	slti    $at, $t1, 0x003D
	bnez    $at, .L802AF3E4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
.L802AF3E4:
	b       .L802AF3EC
	nop
.L802AF3EC:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_a_802AF3FC
object_a_802AF3FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	addiu   $t8, $t7, -0x0080
	sw      $t8, 0x00C8($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, -0x0080
	sw      $t9, 0x0118($t0)
	jal     object_a_802AF1E8
	nop
	b       .L802AF438
	nop
.L802AF438:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AF448
object_a_802AF448:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0400
	sh      $t8, 0x0074($t6)
	jal     obj_lib_802A2320
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, .L802AF498
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802AF524
	nop
	b       .L802AF5A4
	nop
.L802AF498:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	bnez    $t1, .L802AF4F0
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	sw      $t3, 0x00F0($t4)
	li      $at, 0x41F00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t5)
.L802AF4F0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t6, $t8, 0x0001
	beqz    $t6, .L802AF51C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
.L802AF51C:
	b       .L802AF5A4
	nop
.L802AF524:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	bnez    $t3, .L802AF568
	nop
	li      $at, 0x42480000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B0($t4)
	li      $at, 0x41F00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t5)
.L802AF568:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t6, $t8, 0x0052
	beqz    $t6, .L802AF59C
	nop
	lw      $t0, 0x0154($t7)
	slti    $at, $t0, 0x0065
	bnez    $at, .L802AF59C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AF59C:
	b       .L802AF5A4
	nop
.L802AF5A4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t9, 0x0154($t1)
	slti    $at, $t9, 0x012D
	bnez    $at, .L802AF5C8
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AF5C8:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       .L802AF5E4
	nop
.L802AF5E4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AF5F8
object_a_802AF5F8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802AF638
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802AF674
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802AF734
	nop
	b       .L802AF7A8
	nop
.L802AF638:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802AF66C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L802AF66C:
	b       .L802AF7A8
	nop
.L802AF674:
	lui     $a0, %hi(object)
	la.u    $a2, o_13001184
	la.l    $a2, o_13001184
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0090
	sw      $v0, 0x002C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x000A
	li      $at, 0x3FE00000
	lw      $t1, 0x0154($t0)
	mtc1    $at, $f17
	mtc1    $0, $f16
	subu    $t3, $t2, $t1
	mtc1    $t3, $f8
	nop
	cvt.d.w $f10, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x0028($sp)
	lw      $a0, 0x002C($sp)
	mfc1    $a1, $f6
	mfc1    $a2, $f6
	mfc1    $a3, $f6
	jal     obj_lib_8029F3D0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	bnez    $t5, .L802AF700
	nop
	jal     obj_lib_802A05F0
	lw      $a0, 0x002C($sp)
.L802AF700:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x000B
	bnez    $at, .L802AF72C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
.L802AF72C:
	b       .L802AF7A8
	nop
.L802AF734:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0154($t2)
	bnez    $t1, .L802AF774
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f10, $f0, $f8
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	nop
	sw      $t4, 0x00F4($t5)
.L802AF774:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x00F4($t6)
	lw      $t7, 0x0154($t6)
	addiu   $t0, $t9, 0x0064
	slt     $at, $t0, $t7
	beqz    $at, .L802AF7A0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802AF7A0:
	b       .L802AF7A8
	nop
.L802AF7A8:
	b       .L802AF7B0
	nop
.L802AF7B0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802AF7C4
object_a_802AF7C4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0046
	sh      $t6, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00F4($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t0)
	lui     $t1, %hi(gfx_frame)
	lw      $t1, %lo(gfx_frame)($t1)
	li      $at, 0x0003
	divu    $0, $t1, $at
	mfhi    $t2
	beqz    $t2, .L802AF83C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x017C($t3)
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x017C($t3)
.L802AF83C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t9, 0x001E($sp)
	lw      $t8, 0x0154($t6)
	slt     $at, $t9, $t8
	beqz    $at, .L802AF86C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x017C($t7)
	addiu   $t1, $t0, -0x0005
	sw      $t1, 0x017C($t7)
.L802AF86C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x017C($t2)
	bgtz    $t4, .L802AF88C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AF88C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x001E($sp)
	lw      $t3, 0x0154($t5)
	slt     $at, $t3, $t6
	beqz    $at, .L802AF9B4
	nop
	jal     obj_lib_802A0114
	nop
	bnez    $v0, .L802AF9B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t8, object_a_80330380
	la.l    $t8, object_a_80330380
	lwc1    $f8, 0x0000($t8)
	lwc1    $f10, 0x00F4($t9)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $t0, object_a_80330380
	la.l    $t0, object_a_80330380
	lwc1    $f18, 0x0004($t0)
	lwc1    $f4, 0x00F4($t1)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t7, object_a_80330380
	la.l    $t7, object_a_80330380
	lwc1    $f8, 0x0008($t7)
	lwc1    $f10, 0x00F4($t2)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $t4, object_a_80330380
	la.l    $t4, object_a_80330380
	lwc1    $f18, 0x000C($t4)
	lwc1    $f4, 0x00F4($t5)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0020($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x015C($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802AF96C
	nop
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f10, $f16
	nop
	bc1t    .L802AF9A0
	nop
.L802AF96C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802AF9B4
	nop
	lwc1    $f6, 0x0020($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802AF9B4
	nop
.L802AF9A0:
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lw      $t9, 0x0134($t8)
	ori     $t0, $t9, 0x0010
	sw      $t0, 0x0134($t8)
.L802AF9B4:
	b       .L802AF9BC
	nop
.L802AF9BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802AF9CC
object_a_802AF9CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a2, o_13001254
	la.l    $a2, o_13001254
	li      $a1, 0x0094
	move    $a0, $t6
	jal     obj_lib_8029EEB8
	lw      $a3, 0x002C($t6)
	b       .L802AF9FC
	nop
.L802AF9FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AFA0C
object_a_802AFA0C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AFA9C
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	mul.s   $f6, $f0, $f4
	mtc1    $0, $f10
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	cvt.d.s $f8, $f6
	add.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x00B8($t8)
	jal     rand
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	li      $at, 0x41000000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x002C($t1)
	swc1    $f6, 0x00F4($t1)
.L802AFA9C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00C8($t2)
	lw      $t4, 0x0118($t2)
	addu    $t5, $t3, $t4
	sw      $t5, 0x00C8($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x00A4($t6)
	lwc1    $f10, 0x00B0($t6)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t6)
	b       .L802AFAD4
	nop
.L802AFAD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AFAE4
object_a_802AFAE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802AFBB0
	nop
	lui     $a0, %hi(obj_mario)
	lw      $a0, %lo(obj_mario)($a0)
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     obj_lib_8029F6E0
	li      $a3, 0xC1F00000
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	mul.s   $f6, $f0, $f4
	mtc1    $0, $f10
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	cvt.d.s $f8, $f6
	add.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x00B8($t8)
	jal     o_script_80383CB4
	nop
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	li      $at, 0x46000000
	mtc1    $at, $f4
	lw      $t0, 0x00C8($t9)
	lui     $t4, %hi(object)
	mul.s   $f6, $f0, $f4
	addiu   $t1, $t0, 0x7000
	mtc1    $t1, $f8
	lw      $t4, %lo(object)($t4)
	cvt.s.w $f10, $f8
	add.s   $f16, $f6, $f10
	trunc.w.s $f18, $f16
	mfc1    $t3, $f18
	nop
	sw      $t3, 0x00C8($t4)
	li      $at, 0x41000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t5)
.L802AFBB0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	lw      $t8, 0x0118($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00C8($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00A4($t0)
	lwc1    $f6, 0x00B0($t0)
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x00A4($t0)
	b       .L802AFBE8
	nop
.L802AFBE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AFBF8
object_a_802AFBF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	beqz    $t7, .L802AFC54
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802AFC54
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13001214
	la.l    $a2, o_13001214
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0094
.L802AFC54:
	lui     $t1, %hi(object)
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lw      $t1, %lo(object)($t1)
	sw      $t1, 0x006C($t2)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0028
	li      $a2, -0x0078
	jal     obj_lib_8029E8BC
	move    $a3, $0
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	lw      $t4, 0x00F4($t3)
	andi    $t5, $t4, 0x0800
	bnez    $t5, .L802AFCCC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0801
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00E0($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x00E0($t7)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	sw      $0, 0x006C($t0)
.L802AFCCC:
	b       .L802AFCD4
	nop
.L802AFCD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AFCE4
object_a_802AFCE4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x0018($sp)
	b       .L802AFD0C
	nop
.L802AFD0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AFD1C
object_a_802AFD1C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0400
	sh      $t8, 0x0074($t6)
	la.u    $a0, object_a_80330390
	li.u    $a1, 0x50244081
	li.l    $a1, 0x50244081
	la.l    $a0, object_a_80330390
	jal     obj_lib_802A4360
	move    $a2, $0
	beqz    $v0, .L802AFD64
	nop
	jal     obj_lib_8029FDB4
	li      $a0, 0x0001
.L802AFD64:
	jal     obj_lib_802A2320
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, .L802AFD94
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802AFE48
	nop
	b       .L802AFEC4
	nop
.L802AFD94:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x40800000
	li      $a2, 0x3F800000
	jal     object_a_802A98C4
	addiu   $a0, $a0, 0x00B8
	jal     obj_lib_802A15AC
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f0
	nop
	bc1f    .L802AFDE8
	nop
	jal     obj_lib_802A2748
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       .L802AFE2C
	sw      $v0, 0x0160($t0)
.L802AFDE8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t1)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802AFE2C
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x0160($t2)
.L802AFE2C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t3)
	b       .L802AFEC4
	nop
.L802AFE48:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0009
	lw      $t5, 0x008C($t4)
	and     $t7, $t5, $at
	sw      $t7, 0x008C($t4)
	li      $at, 0xC1200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0154($t6)
	slti    $at, $t9, 0x0015
	bnez    $at, .L802AFEBC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x008C($t2)
	ori     $t5, $t3, 0x0008
	sw      $t5, 0x008C($t2)
.L802AFEBC:
	b       .L802AFEC4
	nop
.L802AFEC4:
	jal     obj_lib_802A2348
	li      $a0, -0x003C
	b       .L802AFED4
	nop
.L802AFED4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AFEE8
object_a_802AFEE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, .L802AFF18
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802AFF18:
	b       .L802AFF20
	nop
.L802AFF20:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AFF30
object_a_802AFF30:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802AFF7C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802AFFB4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B0014
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802B0048
	nop
	b       .L802B00A0
	nop
.L802AFF7C:
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, .L802AFFAC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
.L802AFFAC:
	b       .L802B00A0
	nop
.L802AFFB4:
	li.u    $a0, 0x40020001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40020001
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x008D
	bnez    $at, .L802AFFF0
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	b       .L802B000C
	sw      $t7, 0x014C($t5)
.L802AFFF0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
.L802B000C:
	b       .L802B00A0
	nop
.L802B0014:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x0154($t9)
	slti    $at, $t1, 0x003D
	bnez    $at, .L802B0040
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x014C($t2)
	addiu   $t3, $t0, 0x0001
	sw      $t3, 0x014C($t2)
.L802B0040:
	b       .L802B00A0
	nop
.L802B0048:
	li.u    $a0, 0x40020001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40020001
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0154($t4)
	slti    $at, $t6, 0x008D
	bnez    $at, .L802B007C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       .L802B0098
	sw      $0, 0x014C($t7)
.L802B007C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x40A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t5)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t5)
.L802B0098:
	b       .L802B00A0
	nop
.L802B00A0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0003
	lw      $t9, 0x0068($t8)
	lw      $t1, 0x014C($t9)
	bne     $t1, $at, .L802B00C8
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B00C8:
	b       .L802B00D0
	nop
.L802B00D0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B00E4
object_a_802B00E4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0110($t6)
	lwc1    $f6, 0x010C($t6)
	div.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, .L802B013C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B0188
	nop
	b       .L802B01C8
	nop
.L802B013C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x0154($t0)
	slt     $at, $t2, $t1
	beqz    $at, .L802B016C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
.L802B016C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x010C($t6)
	neg.s   $f18, $f16
	swc1    $f18, 0x00B8($t6)
	b       .L802B01C8
	nop
.L802B0188:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0024($sp)
	lw      $t8, 0x0154($t7)
	slt     $at, $t9, $t8
	beqz    $at, .L802B01B0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
.L802B01B0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x010C($t1)
	swc1    $f4, 0x00B8($t1)
	b       .L802B01C8
	nop
.L802B01C8:
	jal     obj_lib_802A1308
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00A0($t2)
	lwc1    $f8, 0x00AC($t2)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f16, 0x00A8($t4)
	lwc1    $f18, 0x00B4($t4)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0003
	lw      $t3, 0x0068($t5)
	lw      $t6, 0x014C($t3)
	bne     $t6, $at, .L802B0228
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B0228:
	b       .L802B0230
	nop
.L802B0230:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B0244:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lh      $a1, 0x0022($sp)
	jal     obj_lib_8029EDCC
	lw      $a2, 0x0024($sp)
	sw      $v0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	lw      $t8, 0x00FC($t6)
	lw      $t0, 0x00F8($t6)
	multu   $t7, $t8
	mflo    $t9
	addu    $t1, $t0, $t9
	sh      $t1, 0x001E($sp)
	lh      $t2, 0x001E($sp)
	lw      $t3, 0x0018($sp)
	sw      $t2, 0x00C8($t3)
	lhu     $t5, 0x001E($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_sin)($at)
	lwc1    $f4, 0x0100($t4)
	lw      $t6, 0x0018($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A0($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A0($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x00F4($t9)
	lwc1    $f18, 0x00A4($t0)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	mtc1    $t2, $f4
	nop
	cvt.s.w $f6, $f4
	add.s   $f10, $f18, $f6
	swc1    $f10, 0x00A4($t0)
	lhu     $t4, 0x001E($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	lwc1    $f8, 0x0100($t3)
	lw      $t8, 0x0018($sp)
	mul.s   $f4, $f8, $f16
	lwc1    $f18, 0x00A8($t8)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0018($sp)
	lwc1    $f10, 0x0104($t6)
	swc1    $f10, 0x0110($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0018($sp)
	lwc1    $f8, 0x0108($t1)
	swc1    $f8, 0x010C($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x00F4($t0)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x00F4($t0)
	b       .L802B038C
	nop
.L802B038C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B039C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0008
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x2000
	sw      $t9, 0x00FC($t0)
	li      $at, 0x44300000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0100($t1)
	li      $at, 0x43BE0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0104($t2)
	li      $at, 0x40400000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0108($t3)
	la.u    $a1, o_13001368
	la.l    $a1, o_13001368
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001318
	la.l    $a1, o_13001318
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001368
	la.l    $a1, o_13001368
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001318
	la.l    $a1, o_13001318
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001368
	la.l    $a1, o_13001368
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001318
	la.l    $a1, o_13001318
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001368
	la.l    $a1, o_13001368
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001340
	la.l    $a1, o_13001340
	jal     object_a_802B0244
	li      $a0, 0x002F
	b       .L802B04A4
	nop
.L802B04A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B04B4
object_a_802B04B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lwc1    $f4, 0x00A4($t6)
	swc1    $f4, 0x0024($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E2F8
	lw      $a0, %lo(object)($a0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x015C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, .L802B0530
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B0578
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B059C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802B05E4
	nop
	b       .L802B05F8
	nop
.L802B0530:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0168($t9)
	lwc1    $f6, 0x0024($sp)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f6
	nop
	bc1f    .L802B0570
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
.L802B0570:
	b       .L802B05F8
	nop
.L802B0578:
	jal     object_a_802B039C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
	b       .L802B05F8
	nop
.L802B059C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f4, 0x0168($t6)
	lwc1    $f18, 0x0024($sp)
	sub.s   $f10, $f4, $f8
	c.lt.s  $f18, $f10
	nop
	bc1f    .L802B05DC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
.L802B05DC:
	b       .L802B05F8
	nop
.L802B05E4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
	b       .L802B05F8
	nop
.L802B05F8:
	b       .L802B0600
	nop
.L802B0600:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B0614
object_a_802B0614:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A0604
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802B06F8
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f0
	li      $at, 0x40B00000
	sub.d   $f8, $f4, $f6
	mtc1    $at, $f11
	mtc1    $0, $f10
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.d   $f16, $f8, $f10
	trunc.w.d $f18, $f16
	swc1    $f18, 0x0114($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f0
	li      $at, 0x40B00000
	sub.d   $f8, $f4, $f6
	mtc1    $at, $f11
	mtc1    $0, $f10
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.d   $f16, $f8, $f10
	trunc.w.d $f18, $f16
	swc1    $f18, 0x011C($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0004
	sw      $t2, 0x00F8($t3)
	jal     o_script_80383CB4
	nop
	li      $at, 0x44800000
	mtc1    $at, $f4
	li      $at, 0x44C00000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x00FC($t6)
.L802B06F8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f18, 0x00A4($t7)
	lwc1    $f4, 0x00E8($t7)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802B0724
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B0724:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337A28)
	lwc1    $f8, %lo(object_a_80337A28)($at)
	lwc1    $f6, 0x00E8($t8)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802B0754
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B0754:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0065
	bnez    $at, .L802B0778
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B0778:
	lui     $t1, %hi(object_80361168)
	lh      $t1, %lo(object_80361168)($t1)
	slti    $at, $t1, 0x00D5
	bnez    $at, .L802B0798
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B0798:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D0($t2)
	lw      $t4, 0x0114($t2)
	addu    $t5, $t3, $t4
	sw      $t5, 0x00D0($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	lw      $t8, 0x011C($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00D8($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0xC0400000
	mtc1    $at, $f16
	lwc1    $f10, 0x00B0($t0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0xC1000000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B0820
	nop
	li      $at, 0xC1000000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t3)
.L802B0820:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B8($t4)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802B0868
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_a_80337A30)
	ldc1    $f6, %lo(object_a_80337A30)($at)
	lwc1    $f18, 0x00B8($t5)
	cvt.d.s $f4, $f18
	sub.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	b       .L802B087C
	swc1    $f10, 0x00B8($t5)
.L802B0868:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t2)
.L802B087C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t0, math_sin
	la.l    $t0, math_sin
	lhu     $t8, 0x00CA($t7)
	lhu     $t3, 0x00F6($t7)
	sra     $t9, $t8, 4
	sra     $t4, $t3, 4
	lw      $t8, 0x00F8($t7)
	sll     $t5, $t4, 2
	sll     $t6, $t9, 2
	addu    $t1, $t6, $t0
	addu    $t2, $t5, $t0
	lwc1    $f4, 0x0000($t2)
	lwc1    $f18, 0x0000($t1)
	mtc1    $t8, $f8
	mul.s   $f6, $f18, $f4
	lwc1    $f18, 0x00A0($t7)
	cvt.s.w $f10, $f8
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lhu     $t6, 0x00CA($t9)
	lhu     $t4, 0x00F6($t9)
	lw      $t2, 0x00F8($t9)
	sra     $t1, $t6, 4
	sll     $t3, $t1, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_cos)($at)
	sra     $t5, $t4, 4
	sll     $t0, $t5, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_sin)($at)
	mtc1    $t2, $f18
	mul.s   $f10, $f8, $f6
	lwc1    $f8, 0x00A8($t9)
	cvt.s.w $f16, $f18
	mul.s   $f4, $f10, $f16
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x00A8($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x00F4($t8)
	lw      $t6, 0x00FC($t8)
	addu    $t1, $t7, $t6
	sw      $t1, 0x00F4($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x00A4($t3)
	lwc1    $f10, 0x00B0($t3)
	add.s   $f16, $f18, $f10
	swc1    $f16, 0x00A4($t3)
	b       .L802B0964
	nop
.L802B0964:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B0974
object_a_802B0974:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	li      $at, -0x2001
	lw      $t7, 0x00E0($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x00E0($t6)
	lui     $t9, %hi(stage_index)
	lh      $t9, %lo(stage_index)($t9)
	li      $at, 0x0005
	beq     $t9, $at, .L802B09B4
	nop
	li      $at, 0x000A
	bne     $t9, $at, .L802B09C0
	nop
.L802B09B4:
	li      $t0, 0x0001
	b       .L802B09C4
	sw      $t0, 0x0024($sp)
.L802B09C0:
	sw      $0, 0x0024($sp)
.L802B09C4:
	lw      $t1, 0x0024($sp)
	beqz    $t1, .L802B0A8C
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f0
	c.lt.d  $f4, $f6
	nop
	bc1f    .L802B0A84
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130013A8
	la.l    $a2, o_130013A8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x009E
	sw      $v0, 0x002C($sp)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x0020($sp)
	lwc1    $f8, 0x0020($sp)
	lw      $a0, 0x002C($sp)
	mfc1    $a1, $f8
	mfc1    $a2, $f8
	mfc1    $a3, $f8
	jal     obj_lib_8029F3D0
	nop
	jal     rand
	nop
	lw      $t2, 0x002C($sp)
	sw      $v0, 0x00C8($t2)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f10
	lw      $t3, 0x002C($sp)
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x00B8($t3)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41700000
	mtc1    $at, $f18
	lw      $t4, 0x002C($sp)
	mul.s   $f4, $f0, $f18
	swc1    $f4, 0x00B0($t4)
.L802B0A84:
	b       .L802B0B84
	nop
.L802B0A8C:
	jal     o_script_80383CB4
	nop
	lui     $at, %hi(object_a_80337A38)
	ldc1    $f8, %lo(object_a_80337A38)($at)
	cvt.d.s $f6, $f0
	c.lt.d  $f6, $f8
	nop
	bc1f    .L802B0B84
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130013C4
	la.l    $a2, o_130013C4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A2
	sw      $v0, 0x002C($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40400000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x0020($sp)
	lw      $a0, 0x002C($sp)
	mfc1    $a1, $f18
	mfc1    $a2, $f18
	mfc1    $a3, $f18
	jal     obj_lib_8029F3D0
	nop
	jal     rand
	nop
	lw      $t5, 0x002C($sp)
	sw      $v0, 0x00C8($t5)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f4
	mtc1    $at, $f8
	lw      $t7, 0x002C($sp)
	mul.s   $f6, $f0, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t7)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41700000
	mtc1    $at, $f16
	lw      $t8, 0x002C($sp)
	mul.s   $f18, $f0, $f16
	swc1    $f18, 0x00B0($t8)
	jal     rand
	nop
	lw      $t6, 0x002C($sp)
	sw      $v0, 0x00D0($t6)
	jal     rand
	nop
	lw      $t9, 0x002C($sp)
	sw      $v0, 0x00D8($t9)
	jal     rand
	nop
	lw      $t0, 0x002C($sp)
	sw      $v0, 0x00D4($t0)
.L802B0B84:
	b       .L802B0B8C
	nop
.L802B0B8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_a_802B0B9C:
	andi    $a0, $a0, 0xFFFF
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $a0, 0x00C8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slt     $at, $a1, $t8
	beqz    $at, .L802B0BD4
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802B0BDC
	nop
.L802B0BD4:
	jr      $ra
	move    $v0, $0
.L802B0BDC:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B0BEC
object_a_802B0BEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	sltiu   $at, $t8, 0x0005
	beqz    $at, .L802B0D18
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(object_a_80337A40)
	addu    $at, $at, $t8
	lw      $t8, %lo(object_a_80337A40)($at)
	jr      $t8
	nop
.globl L802B0C3C
L802B0C3C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	andi    $t1, $t0, 0x0003
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t9)
	b       .L802B0D20
	nop
.globl L802B0C5C
L802B0C5C:
	move    $a0, $0
	jal     object_a_802B0B9C
	li      $a1, 0x003C
	beqz    $v0, .L802B0C84
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
.L802B0C84:
	b       .L802B0D20
	nop
.globl L802B0C8C
L802B0C8C:
	li      $a0, 0x4000
	jal     object_a_802B0B9C
	li      $a1, 0x003C
	beqz    $v0, .L802B0CB4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x014C($t6)
.L802B0CB4:
	b       .L802B0D20
	nop
.globl L802B0CBC
L802B0CBC:
	li      $a0, 0x8000
	jal     object_a_802B0B9C
	li      $a1, 0x003C
	beqz    $v0, .L802B0CE4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
.L802B0CE4:
	b       .L802B0D20
	nop
.globl L802B0CEC
L802B0CEC:
	li      $a0, 0xC000
	jal     object_a_802B0B9C
	li      $a1, 0x003C
	beqz    $v0, .L802B0D10
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t4)
.L802B0D10:
	b       .L802B0D20
	nop
.L802B0D18:
	b       .L802B0D20
	nop
.L802B0D20:
	jal     obj_lib_802A2644
	nop
	jal     map_data_803839CC
	nop
	b       .L802B0D38
	nop
.L802B0D38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B0D48
object_a_802B0D48:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802B0DD0
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	li      $at, 0x40A00000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B0($t8)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f16
	li      $at, 0x40A00000
	mtc1    $at, $f4
	mul.s   $f18, $f0, $f16
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00B8($t9)
	jal     rand
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
.L802B0DD0:
	jal     obj_lib_802A2644
	nop
	b       .L802B0DE0
	nop
.L802B0DE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B0DF0
object_a_802B0DF0:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x004C($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0048($sp)
	lw      $t8, 0x004C($sp)
	lh      $t9, 0x0040($t8)
	sw      $t9, 0x0040($sp)
	lw      $t0, 0x004C($sp)
	lw      $t1, 0x003C($t0)
	lh      $t2, 0x0008($t1)
	addiu   $t3, $t2, -0x0002
	sw      $t3, 0x003C($sp)
	lw      $a0, 0x004C($sp)
	li      $a1, 0x0000
	li      $a2, 0x42900000
	jal     obj_lib_8029F6E0
	li      $a3, 0x43340000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $s0, 0x014C($t4)
	beqz    $s0, .L802B0E80
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B0EC4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B11E0
	nop
	b       .L802B1254
	nop
.L802B0E80:
	jal     obj_lib_8029F66C
	nop
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0048($sp)
	lw      $t5, 0x004C($sp)
	li      $at, 0x0001
	lw      $t6, 0x014C($t5)
	bne     $t6, $at, .L802B0EBC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
.L802B0EBC:
	b       .L802B1254
	nop
.L802B0EC4:
	lw      $t0, 0x004C($sp)
	lwc1    $f8, 0x015C($t0)
	lwc1    $f10, 0x019C($t0)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802B11D0
	nop
	jal     obj_lib_8029F620
	nop
	lw      $t1, 0x004C($sp)
	li      $at, 0x0001
	lw      $t2, 0x014C($t1)
	bne     $t2, $at, .L802B11B4
	nop
	lw      $t3, 0x003C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	mtc1    $t3, $f16
	li      $at, 0x40800000
	mtc1    $at, $f8
	cvt.s.w $f18, $f16
	div.s   $f6, $f18, $f4
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0034($sp)
	lw      $t4, 0x003C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	mtc1    $t4, $f16
	li      $at, 0x40800000
	mtc1    $at, $f8
	cvt.s.w $f18, $f16
	div.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0030($sp)
	lw      $t5, 0x0040($sp)
	lwc1    $f4, 0x0034($sp)
	mtc1    $t5, $f16
	nop
	cvt.s.w $f18, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802B1060
	nop
	lw      $t6, 0x0040($sp)
	lwc1    $f10, 0x0034($sp)
	li      $at, 0x46800000
	mtc1    $t6, $f6
	mtc1    $at, $f18
	li      $t9, 0x0001
	cvt.s.w $f8, $f6
	div.s   $f16, $f8, $f10
	mul.s   $f4, $f16, $f18
	cfc1    $t8, $31
	ctc1    $t9, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	beqz    $t9, .L802B1008
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t9, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t9, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	bnez    $t9, .L802B1000
	nop
	mfc1    $t9, $f6
	li      $at, 0x80000000
	b       .L802B1018
	or      $t9, $t9, $at
.L802B1000:
	b       .L802B1018
	li      $t9, -0x0001
.L802B1008:
	mfc1    $t9, $f6
	nop
	bltz    $t9, .L802B1000
	nop
.L802B1018:
	andi    $t7, $t9, 0xFFFF
	sra     $t0, $t7, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x40800000
	mtc1    $at, $f10
	ctc1    $t8, $31
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mul.s   $f16, $f8, $f10
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	b       .L802B11AC
	swc1    $f8, 0x0048($sp)
.L802B1060:
	lw      $t2, 0x0040($sp)
	lwc1    $f18, 0x0030($sp)
	mtc1    $t2, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802B119C
	nop
	lw      $t3, 0x003C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	mtc1    $t3, $f4
	lw      $t4, 0x0040($sp)
	li      $at, 0x40800000
	cvt.s.w $f6, $f4
	mtc1    $t4, $f4
	mtc1    $at, $f16
	li      $at, 0x46800000
	li      $t6, 0x0001
	div.s   $f10, $f6, $f8
	cvt.s.w $f6, $f4
	mtc1    $at, $f4
	add.s   $f18, $f10, $f16
	lwc1    $f10, 0x0030($sp)
	sub.s   $f8, $f6, $f18
	div.s   $f16, $f8, $f10
	mul.s   $f6, $f16, $f4
	cfc1    $t5, $31
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f6
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	beqz    $t6, .L802B1144
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t6, 0x0001
	sub.s   $f18, $f6, $f18
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	bnez    $t6, .L802B113C
	nop
	mfc1    $t6, $f18
	li      $at, 0x80000000
	b       .L802B1154
	or      $t6, $t6, $at
.L802B113C:
	b       .L802B1154
	li      $t6, -0x0001
.L802B1144:
	mfc1    $t6, $f18
	nop
	bltz    $t6, .L802B113C
	nop
.L802B1154:
	andi    $t8, $t6, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t7, $t9, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x40800000
	mtc1    $at, $f10
	ctc1    $t5, $31
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mul.s   $f16, $f8, $f10
	mtc1    $0, $f6
	cvt.d.s $f4, $f16
	add.d   $f18, $f4, $f6
	cvt.s.d $f8, $f18
	b       .L802B11AC
	swc1    $f8, 0x0048($sp)
.L802B119C:
	li      $at, 0x3F800000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0048($sp)
.L802B11AC:
	b       .L802B11C8
	nop
.L802B11B4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
.L802B11C8:
	b       .L802B11D8
	nop
.L802B11D0:
	jal     obj_lib_8029F66C
	nop
.L802B11D8:
	b       .L802B1254
	nop
.L802B11E0:
	jal     obj_lib_8029F66C
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0048($sp)
	sw      $0, 0x0044($sp)
.L802B11F8:
	la.u    $t3, o_13001448
	la.l    $t3, o_13001448
	lui     $a2, %hi(object)
	lw      $a2, %lo(object)($a2)
	sw      $t3, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x3F800000
	jal     obj_lib_8029EE24
	li      $a3, 0x00A8
	lw      $t4, 0x0044($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x000F
	bnez    $at, .L802B11F8
	sw      $t5, 0x0044($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0048($sp)
	b       .L802B1254
	nop
.L802B1254:
	jal     obj_lib_8029F430
	lwc1    $f12, 0x0048($sp)
	b       .L802B1264
	nop
.L802B1264:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

.globl object_a_802B1278
object_a_802B1278:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L802B14DC
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337A54)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337A54)($at)
	jr      $t7
	nop
.globl L802B12B0
L802B12B0:
	jal     obj_lib_802A04C0
	li      $a0, 0x00CF
	li      $at, 0x3FC00000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t8)
	bne     $t9, $t0, .L802B133C
	nop
	la.u    $t1, player_data
	la.l    $t1, player_data
	lw      $t2, 0x000C($t1)
	andi    $t3, $t2, 0x2000
	bnez    $t3, .L802B133C
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E27C
	lw      $a0, %lo(object)($a0)
	lui     $at, %hi(object_a_80337A68)
	ldc1    $f6, %lo(object_a_80337A68)($at)
	cvt.d.s $f4, $f0
	c.lt.d  $f4, $f6
	nop
	bc1f    .L802B133C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
.L802B133C:
	b       .L802B14DC
	nop
.globl L802B1344
L802B1344:
	li.u    $a3, 0x3E4CCCCD
	li.l    $a3, 0x3E4CCCCD
	li      $a0, 0x0002
	li      $a1, 0x0003
	jal     obj_lib_802A3B40
	li      $a2, 0x3FC00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802B1398
	nop
	li.u    $a0, 0x803EC081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x803EC081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
.L802B1398:
	b       .L802B14DC
	nop
.globl L802B13A0
L802B13A0:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	beqz    $t1, .L802B1468
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x0144($t2)
	bne     $t3, $at, .L802B13F8
	nop
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lw      $t5, 0x0214($t4)
	beq     $t5, $t2, .L802B13F8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t8, $t7, 0x0001
	b       .L802B1468
	sw      $t8, 0x014C($t6)
.L802B13F8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0168
	beqz    $at, .L802B142C
	nop
	li.u    $a0, 0x8054F011
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x8054F011
	b       .L802B1440
	nop
.L802B142C:
	li.u    $a0, 0x8055F011
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x8055F011
.L802B1440:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0154($t1)
	slti    $at, $t3, 0x0191
	bnez    $at, .L802B1468
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0004
	sw      $t4, 0x014C($t5)
.L802B1468:
	b       .L802B14DC
	nop
.globl L802B1470
L802B1470:
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	li      $a0, 0x0002
	li      $a1, 0x0003
	jal     obj_lib_802A3B40
	li      $a3, 0x3FC00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0003
	lw      $t7, 0x0154($t2)
	bne     $t7, $at, .L802B14AC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802B14AC:
	b       .L802B14DC
	nop
.globl L802B14B4
L802B14B4:
	jal     obj_lib_802A3CFC
	nop
	bnez    $v0, .L802B14D4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t9)
.L802B14D4:
	b       .L802B14DC
	nop
.L802B14DC:
	b       .L802B14E4
	nop
.L802B14E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B14F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x002C($sp)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f10, 0x00A0($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0020($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x002C($sp)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f8, 0x00A8($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0018($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f12, 0x0020($sp)
	lw      $a2, 0x0018($sp)
	addiu   $a3, $sp, 0x0024
	jal     map_80381900
	lwc1    $f14, 0x00A4($t4)
	swc1    $f0, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x001C($sp)
	lwc1    $f18, 0x00A4($t5)
	jal     obj_lib_802A3634
	sub.s   $f12, $f16, $f18
	lwc1    $f4, 0x0028($sp)
	c.lt.s  $f0, $f4
	nop
	bc1f    .L802B15C8
	nop
	b       .L802B15D8
	li      $v0, 0x0001
	b       .L802B15D0
	nop
.L802B15C8:
	b       .L802B15D8
	move    $v0, $0
.L802B15D0:
	b       .L802B15D8
	nop
.L802B15D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B15E8
object_a_802B15E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803303A0
	la.l    $a1, object_a_803303A0
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802B16F4
	nop
	la.u    $t7, player_data
	la.l    $t7, player_data
	lw      $t8, 0x0004($t7)
	li      $at, 0x80000000
	and     $t9, $t8, $at
	beqz    $t9, .L802B16F4
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(object)($a0)
	sh      $v0, 0x001C($sp)
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	lh      $a0, 0x001C($sp)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t0)
	slti    $at, $v0, 0x4001
	bnez    $at, .L802B16F4
	nop
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t2, 0x00C8($t1)
	addiu   $t3, $t2, 0x2000
	andi    $t4, $t3, 0xC000
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	sw      $t6, 0x00C8($t7)
	li      $at, 0x41000000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     object_a_802B14F4
	nop
	beqz    $v0, .L802B16F4
	nop
	li      $at, 0x40800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t8)
	li.u    $a0, 0x40178001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40178001
.L802B16F4:
	jal     obj_lib_802A2644
	nop
	b       .L802B1704
	nop
.L802B1704:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B1714:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x00F0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x0144($t9)
	beqz    $s0, .L802B177C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B1790
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B17A8
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802B17C0
	nop
	b       .L802B17D8
	nop
.L802B177C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0198($t0)
	b       .L802B17D8
	nop
.L802B1790:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x0198($t2)
	b       .L802B17D8
	nop
.L802B17A8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0005
	sw      $t3, 0x0198($t4)
	b       .L802B17D8
	nop
.L802B17C0:
	li      $at, 0x3FC00000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	b       .L802B17D8
	nop
.L802B17D8:
	b       .L802B17E0
	nop
.L802B17E0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B17F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803303B0
	la.l    $a1, object_a_803303B0
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A04C0
	li      $a0, 0x0082
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802B18D8
	nop
	jal     obj_lib_8029F66C
	nop
	jal     obj_lib_802A05B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802B1858
	nop
	jal     object_a_802B1714
	nop
.L802B1858:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	bnez    $t1, .L802B1884
	nop
	la.u    $a0, o_130014AC
	jal     obj_lib_8029F95C
	la.l    $a0, o_130014AC
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00F4($t2)
.L802B1884:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	beqz    $t4, .L802B18D0
	sw      $t4, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li      $at, 0x0002
	lw      $t6, 0x014C($t5)
	bne     $t6, $at, .L802B18D0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
	jal     obj_lib_8029F620
	nop
	jal     obj_lib_8029F694
	nop
.L802B18D0:
	b       .L802B19C0
	nop
.L802B18D8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, .L802B1974
	nop
	jal     obj_lib_802A05D4
	nop
	li      $a0, 0x0168
	jal     obj_lib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, .L802B1918
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
.L802B1918:
	jal     obj_lib_802A51AC
	nop
	beqz    $v0, .L802B1964
	nop
	jal     obj_lib_802A37AC
	nop
	li      $a0, 0x001E
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
	li.u    $a0, 0x3041C081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x3041C081
.L802B1964:
	jal     map_data_803839CC
	nop
	b       .L802B19C0
	nop
.L802B1974:
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_8029F66C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	beqz    $t9, .L802B19C0
	sw      $t9, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	lw      $t0, 0x014C($t7)
	bnez    $t0, .L802B19C0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
.L802B19C0:
	b       .L802B19C8
	nop
.L802B19C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B19D8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, 0x07018528
	la.l    $a1, 0x07018528
	jal     obj_lib_802A44F4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802B1A98
	nop
	jal     obj_lib_8029F66C
	nop
	jal     obj_lib_802A05B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	bnez    $t9, .L802B1A44
	nop
	la.u    $a0, o_130014AC
	jal     obj_lib_8029F95C
	la.l    $a0, o_130014AC
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00F4($t0)
.L802B1A44:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	beqz    $t2, .L802B1A90
	sw      $t2, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	li      $at, 0x0002
	lw      $t4, 0x014C($t3)
	bne     $t4, $at, .L802B1A90
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
	jal     obj_lib_8029F620
	nop
	jal     obj_lib_8029F694
	nop
.L802B1A90:
	b       .L802B1AC8
	nop
.L802B1A98:
	jal     obj_lib_802A05D4
	nop
	li      $a0, 0x0168
	jal     obj_lib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, .L802B1AC0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802B1AC0:
	jal     map_data_803839CC
	nop
.L802B1AC8:
	b       .L802B1AD0
	nop
.L802B1AD0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B1AE0
object_a_802B1AE0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, .L802B1B0C
	nop
	jal     object_a_802B17F4
	nop
	b       .L802B1B14
	nop
.L802B1B0C:
	jal     object_a_802B19D8
	nop
.L802B1B14:
	b       .L802B1B1C
	nop
.L802B1B1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B1B2C
object_a_802B1B2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803303B0
	la.l    $a1, object_a_803303B0
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A04C0
	li      $a0, 0x0082
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802B1B6C
	nop
	jal     object_a_802B1714
	nop
.L802B1B6C:
	jal     obj_lib_802A51AC
	nop
	beqz    $v0, .L802B1B98
	nop
	li      $at, 0x42380000
	mtc1    $at, $f12
	jal     obj_lib_802A4440
	li      $a1, 0x0001
	li.u    $a0, 0x3041C081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x3041C081
.L802B1B98:
	b       .L802B1BA0
	nop
.L802B1BA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl s_mario_pos_child
s_mario_pos_child:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802B1C34
	nop
	lui     $t7, %hi(shape_object)
	lw      $t7, %lo(shape_object)($t7)
	sw      $t7, 0x001C($sp)
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lw      $t8, 0x001C($sp)
	bne     $t8, $t9, .L802B1C34
	nop
	lw      $t0, 0x006C($t8)
	beqz    $t0, .L802B1C34
	nop
	lui     $t1, %hi(shape_camera)
	lw      $t1, %lo(shape_camera)($t1)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0068($sp)
	jal     obj_lib_8029DE80
	lw      $a2, 0x0034($t1)
	lw      $t2, 0x001C($sp)
	addiu   $a0, $sp, 0x0020
	jal     obj_lib_8029DCD4
	lw      $a1, 0x006C($t2)
	lw      $t3, 0x001C($sp)
	jal     obj_lib_8029F188
	lw      $a0, 0x006C($t3)
.L802B1C34:
	b       .L802B1C44
	move    $v0, $0
	b       .L802B1C44
	nop
.L802B1C44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl object_a_802B1C54
object_a_802B1C54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x43480000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0138($t6)
	li      $at, 0xC2480000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x013C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0140($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x00C8($t0)
	sw      $t1, 0x00C8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lw      $s0, 0x0088($t3)
	beqz    $s0, .L802B1CF0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B1CF8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B1D00
	nop
	b       .L802B1D60
	nop
.L802B1CF0:
	b       .L802B1D60
	nop
.L802B1CF8:
	b       .L802B1D60
	nop
.L802B1D00:
	li.u    $a0, 0x505D4081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x505D4081
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lw      $t5, 0x0134($t4)
	ori     $t6, $t5, 0x0004
	sw      $t6, 0x0134($t4)
	li      $at, 0xC2340000
	mtc1    $at, $f10
	la.u    $t7, player_data
	la.l    $t7, player_data
	swc1    $f10, 0x0054($t7)
	li      $at, 0x42BE0000
	mtc1    $at, $f16
	la.u    $t8, player_data
	la.l    $t8, player_data
	swc1    $f16, 0x004C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	sw      $0, 0x0088($t1)
	b       .L802B1D60
	nop
.L802B1D60:
	b       .L802B1D68
	nop
.L802B1D68:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802B1D7C(void) */
.globl object_a_802B1D7C
object_a_802B1D7C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     obj_lib_8029FE6C
	nop
.L802B1DA4:
	lw      $t7, 0x001C($sp)
	lui     $t9, %hi(object_a_803303C0+2*0)
	li      $at, -0x0001
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_803303C0+2*0)($t9)
	bne     $t9, $at, .L802B1DDC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t1)
	b       .L802B1E54
	nop
.L802B1DDC:
	lw      $t4, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t6, %hi(object_a_803303C0+2*0)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lh      $t6, %lo(object_a_803303C0+2*0)($t6)
	lw      $t3, 0x0154($t2)
	slt     $at, $t3, $t6
	beqz    $at, .L802B1E40
	nop
	lw      $t7, 0x001C($sp)
	lui     $t9, %hi(object_a_803303C0+2*1)
	li      $a0, 0x0002
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_803303C0+2*1)($t9)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f6, $f6
	mfc1    $a1, $f6
	jal     obj_lib_8029F514
	nop
	b       .L802B1E54
	nop
.L802B1E40:
	lw      $t0, 0x001C($sp)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x001C($sp)
	b       .L802B1DA4
	nop
.L802B1E54:
	b       .L802B1E5C
	nop
.L802B1E5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802B1E6C(void) */
.globl object_a_802B1E6C
object_a_802B1E6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A15AC
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f0
	nop
	bc1f    .L802B1EAC
	nop
	jal     obj_lib_802A2748
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0160($t6)
.L802B1EAC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0097
	bnez    $at, .L802B1F48
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t1, 0x012E
	li      $at, 0x43180000
	lw      $t0, 0x0154($t9)
	mtc1    $at, $f10
	subu    $t2, $t1, $t0
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x00F4($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_a_80337A70)
	ldc1    $f6, %lo(object_a_80337A70)($at)
	lwc1    $f18, 0x00F4($t3)
	cvt.d.s $f4, $f18
	c.lt.d  $f4, $f6
	nop
	bc1f    .L802B1F40
	nop
	lui     $at, %hi(object_a_80337A78)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, %lo(object_a_80337A78)($at)
	swc1    $f8, 0x00F4($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
.L802B1F40:
	b       .L802B1F60
	nop
.L802B1F48:
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F4($t7)
.L802B1F60:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $a0, $0
	jal     obj_lib_8029F514
	lw      $a1, 0x00F4($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lwc1    $f16, 0x00F4($t1)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B8($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x44800000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t0)
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sh      $t9, 0x001A($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $a2, 0x001A($sp)
	lw      $a0, 0x00C8($t3)
	jal     obj_lib_8029E530
	lw      $a1, 0x0160($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00C8($t4)
	b       .L802B1FE4
	nop
.L802B1FE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802B1FF4(void) */
.globl object_a_802B1FF4
object_a_802B1FF4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802B2034
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x0088($t0)
.L802B2034:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, .L802B2068
	nop
	li      $a0, 0x0001
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0014
	sh      $t3, 0x0076($t4)
.L802B2068:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B2088
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
.L802B2088:
	b       .L802B2090
	nop
.L802B2090:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B20A0(void) */
.globl object_a_802B20A0
object_a_802B20A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     obj_lib_802A184C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mov.s   $f20, $f0
	lwc1    $f4, 0x00A4($t7)
	c.lt.s  $f20, $f4
	nop
	bc1f    .L802B2128
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t7)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802B2128
	nop
	jal     obj_lib_802A05D4
	nop
	jal     obj_lib_8029F694
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	b       .L802B2138
	sw      $t8, 0x014C($t9)
.L802B2128:
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_8029F6BC
	nop
.L802B2138:
	b       .L802B2140
	nop
.L802B2140:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B2154:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_803303E8
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_803303E8
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0078
	beqz    $t8, .L802B21A8
	nop
	li      $at, 0xC1700000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	b       .L802B21BC
	swc1    $f4, 0x00DC($t9)
.L802B21A8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00DC($t0)
.L802B21BC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x40400000
	mtc1    $at, $f10
	lwc1    $f8, 0x00B8($t1)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802B21EC
	nop
	li.u    $a0, 0x60064001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60064001
.L802B21EC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x014C($t2)
	beqz    $t3, .L802B221C
	nop
	lw      $t4, 0x00EC($t2)
	andi    $t5, $t4, 0x0078
	beqz    $t5, .L802B221C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802B221C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0800
	beqz    $t9, .L802B2260
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t1, 0x0001
	sw      $t1, 0x0088($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t4)
.L802B2260:
	b       .L802B2268
	nop
.L802B2268:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B2278
object_a_802B2278:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, .L802B22D4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B22E4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B22F8
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802B2308
	nop
	b       .L802B2318
	nop
.L802B22D4:
	jal     object_a_802B2154
	nop
	b       .L802B2318
	nop
.L802B22E4:
	move    $a0, $0
	jal     obj_lib_802A01D8
	move    $a1, $0
	b       .L802B2318
	nop
.L802B22F8:
	jal     obj_lib_802A0474
	nop
	b       .L802B2318
	nop
.L802B2308:
	jal     obj_lib_802A0474
	nop
	b       .L802B2318
	nop
.L802B2318:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	b       .L802B232C
	nop
.L802B232C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B2340
object_a_802B2340:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_8036125C)
	lh      $t6, %lo(object_8036125C)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L802B23C8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $at, %hi(object_a_80337A7C)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, %lo(object_a_80337A7C)($at)
	swc1    $f10, 0x00A0($t9)
	lui     $at, %hi(object_a_80337A80)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, %lo(object_a_80337A80)($at)
	swc1    $f16, 0x00A8($t0)
	lui     $at, %hi(object_a_80337A84)
	lwc1    $f12, %lo(object_a_80337A84)($at)
	lui     $at, %hi(object_a_80337A88)
	li.u    $a2, 0x45B3B000
	li.l    $a2, 0x45B3B000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(object_a_80337A88)($at)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B23C8:
	b       .L802B23D0
	nop
.L802B23D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B23E0
object_a_802B23E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_a_80337A8C)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_a_80337A8C)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802B2450
	nop
	jal     obj_lib_802A3754
	nop
	beqz    $v0, .L802B2448
	nop
	jal     obj_lib_802A37AC
	nop
	li      $a0, 0x0014
	li      $a1, 0x0038
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	move    $a3, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
.L802B2448:
	b       .L802B2474
	nop
.L802B2450:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0008
	bnez    $at, .L802B2474
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B2474:
	jal     map_data_803839CC
	nop
	b       .L802B2484
	nop
.L802B2484:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B2494
object_a_802B2494:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	move    $a0, $t6
	jal     obj_lib_8029F0E0
	lw      $a1, 0x0068($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	move    $a0, $t7
	jal     obj_lib_8029F0C8
	lw      $a1, 0x0068($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	lwc1    $f10, 0x00A4($t9)
	lwc1    $f16, 0x0168($t9)
	sub.s   $f18, $f10, $f16
	c.le.s  $f4, $f18
	swc1    $f18, 0x0018($sp)
	bc1f    .L802B2540
	nop
	lwc1    $f6, 0x0018($sp)
	li      $at, 0x40240000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	li      $at, 0x3FF00000
	div.d   $f16, $f8, $f10
	mtc1    $at, $f19
	mtc1    $0, $f18
	nop
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	b       .L802B257C
	swc1    $f6, 0x001C($sp)
.L802B2540:
	lwc1    $f8, 0x0018($sp)
	neg.s   $f10, $f8
	swc1    $f10, 0x0018($sp)
	lwc1    $f16, 0x0018($sp)
	lui     $at, %hi(object_a_80337A90)
	ldc1    $f4, %lo(object_a_80337A90)($at)
	cvt.d.s $f18, $f16
	li      $at, 0x3FF00000
	div.d   $f6, $f18, $f4
	mtc1    $at, $f9
	mtc1    $0, $f8
	nop
	sub.d   $f10, $f8, $f6
	cvt.s.d $f16, $f10
	swc1    $f16, 0x001C($sp)
.L802B257C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x3F800000
	lw      $a2, 0x001C($sp)
	jal     obj_lib_8029F3D0
	li      $a3, 0x3F800000
	b       .L802B259C
	nop
.L802B259C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B25AC
object_a_802B25AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A04C0
	li      $a0, 0x00B5
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802B2638
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13001634
	la.l    $a2, o_13001634
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00B6
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	li      $at, 0x42960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002A48
	la.l    $a2, o_13002A48
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00B7
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $at, 0x43160000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t9)
.L802B2638:
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0214($t0)
	bne     $t1, $t2, .L802B2668
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	b       .L802B2684
	sw      $t3, 0x0110($t4)
.L802B2668:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0110($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0168($t6)
	swc1    $f4, 0x00A4($t6)
.L802B2684:
	jal     pl_physics_802550B0
	nop
	b       .L802B2694
	nop
.L802B2694:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802B26A4(void) */
.globl object_a_802B26A4
object_a_802B26A4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802B2760
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x00F8($t8)
	lw      $t0, 0x00F8($t8)
	slti    $t9, $s0, 0x0000
	move    $s0, $t9
	addiu   $t1, $t0, -0x0001
	beqz    $s0, .L802B26FC
	sw      $t1, 0x00F8($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0150($t2)
.L802B26FC:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	lw      $t7, 0x00F4($t5)
	slt     $at, $t7, $t6
	beqz    $at, .L802B2758
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f4
	li      $at, 0x41700000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	addiu   $t8, $t1, 0x0001
	sw      $t8, 0x0150($t0)
.L802B2758:
	b       .L802B27BC
	nop
.L802B2760:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00EC($t3)
	andi    $t2, $t4, 0x0002
	beqz    $t2, .L802B27BC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0150($t5)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42700000
	mtc1    $at, $f16
	li      $at, 0x41F00000
	mtc1    $at, $f4
	mul.s   $f18, $f0, $f16
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f6, $f18, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F8($t9)
.L802B27BC:
	b       .L802B27C4
	nop
.L802B27C4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802B27D8(void) */
.globl object_a_802B27D8
object_a_802B27D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0279
	beqz    $t8, .L802B280C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A37AC
	nop
.L802B280C:
	b       .L802B2814
	nop
.L802B2814:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B2824:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A04C0
	li      $a0, 0x0081
	li      $at, 0x3F000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803303F8
	la.l    $a1, object_a_803303F8
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	la.u    $a0, object_a_80330408
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330408
	b       .L802B287C
	nop
.L802B287C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B288C
object_a_802B288C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, .L802B28D8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B28E8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B2918
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802B2938
	nop
	b       .L802B2958
	nop
.L802B28D8:
	jal     object_a_802B2824
	nop
	b       .L802B2958
	nop
.L802B28E8:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029F120
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A04C0
	li      $a0, 0x0082
	li      $a0, -0x0001
	jal     obj_lib_802A01D8
	move    $a1, $0
	b       .L802B2958
	nop
.L802B2918:
	li      $at, 0x42200000
	mtc1    $at, $f12
	li      $at, 0x41A00000
	mtc1    $at, $f14
	jal     obj_lib_802A0380
	li      $a2, 0x0001
	b       .L802B2958
	nop
.L802B2938:
	jal     obj_lib_802A0474
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	b       .L802B2958
	nop
.L802B2958:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x00400000
	lw      $t0, 0x0134($t9)
	and     $t1, $t0, $at
	beqz    $t1, .L802B2990
	nop
	li.u    $a0, 0x3041C081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x3041C081
	li      $at, 0x42380000
	mtc1    $at, $f12
	jal     obj_lib_802A4440
	li      $a1, 0x0001
.L802B2990:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       .L802B29A4
	nop
.L802B29A4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B29B8
object_a_802B29B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330410
	la.l    $a1, object_a_80330410
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L802B2BB0
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337A98)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337A98)($at)
	jr      $t7
	nop
.globl L802B2A04
L802B2A04:
	jal     obj_lib_802A05B4
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x0088($t9)
	beqz    $t0, .L802B2A70
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
	li      $at, 0x42700000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t4)
	jal     Na_g_803220F0
	nop
	b       .L802B2A84
	nop
.L802B2A70:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	move    $a0, $t5
	jal     obj_lib_8029F0E0
	lw      $a1, 0x0068($t5)
.L802B2A84:
	b       .L802B2BB0
	nop
.globl L802B2A8C
L802B2A8C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00D0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00D8($t7)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802B2AF0
	nop
	li.u    $a0, 0x305E0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x305E0081
.L802B2AF0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00EC($t2)
	andi    $t1, $t3, 0x0052
	beqz    $t1, .L802B2B1C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x014C($t4)
.L802B2B1C:
	b       .L802B2BB0
	nop
.globl L802B2B24
L802B2B24:
	jal     obj_lib_802A05D4
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802B2B6C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
.L802B2B6C:
	b       .L802B2BB0
	nop
.globl L802B2B74
L802B2B74:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0154($t0)
	slti    $at, $t2, 0x0065
	bnez    $at, .L802B2BA0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x014C($t3)
	addiu   $t5, $t1, 0x0001
	sw      $t5, 0x014C($t3)
.L802B2BA0:
	b       .L802B2BB0
	nop
.globl L802B2BA8
L802B2BA8:
	b       .L802B2BB0
	nop
.L802B2BB0:
	b       .L802B2BB8
	nop
.L802B2BB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B2BC8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lw      $t6, 0x0030($sp)
	li      $t7, 0x00010000
	div     $0, $t7, $t6
	mflo    $t8
	sh      $t8, 0x002A($sp)
	bnez    $t6, .L802B2C00
	nop
	break   7
.L802B2C00:
	li      $at, -0x0001
	bne     $t6, $at, .L802B2C18
	li      $at, 0x80000000
	bne     $t7, $at, .L802B2C18
	nop
	break   6
.L802B2C18:
	lw      $t9, 0x0030($sp)
	sw      $0, 0x002C($sp)
	blez    $t9, .L802B2CDC
	nop
.L802B2C28:
	lw      $t0, 0x002C($sp)
	lh      $t1, 0x002A($sp)
	lui     $t3, %hi(object_a_80361280)
	lh      $t3, %lo(object_a_80361280)($t3)
	multu   $t0, $t1
	lw      $t8, 0x0034($sp)
	lui     $at, %hi(math_sin)
	addiu   $t1, $t0, 0x0001
	mtc1    $t8, $f6
	move    $a0, $0
	sw      $0, 0x0014($sp)
	cvt.s.w $f8, $f6
	mflo    $t2
	addu    $t4, $t3, $t2
	andi    $t5, $t4, 0xFFFF
	sra     $t7, $t5, 4
	sll     $t6, $t7, 2
	addu    $at, $at, $t6
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t6
	mul.s   $f10, $f4, $f8
	lwc1    $f18, %lo(math_cos)($at)
	lw      $t3, 0x0038($sp)
	lui     $t4, %hi(object)
	mul.s   $f6, $f18, $f8
	lw      $t4, %lo(object)($t4)
	multu   $t1, $t3
	la.u    $t5, o_13002AF0
	la.l    $t5, o_13002AF0
	sw      $t5, 0x0018($sp)
	trunc.w.s $f16, $f10
	sw      $t4, 0x0010($sp)
	trunc.w.s $f4, $f6
	mfc1    $a1, $f16
	mflo    $a2
	mfc1    $a3, $f4
	jal     obj_lib_8029EF64
	nop
	lw      $t7, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	addiu   $t8, $t7, 0x0001
	slt     $at, $t8, $t9
	bnez    $at, .L802B2C28
	sw      $t8, 0x002C($sp)
.L802B2CDC:
	lw      $t1, 0x003C($sp)
	lui     $t0, %hi(object_a_80361280)
	lh      $t0, %lo(object_a_80361280)($t0)
	sll     $t3, $t1, 8
	lui     $at, %hi(object_a_80361280)
	addu    $t6, $t0, $t3
	sh      $t6, %lo(object_a_80361280)($at)
	b       .L802B2D00
	nop
.L802B2D00:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802B2D10
object_a_802B2D10:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	addiu   $t8, $t7, 0x0200
	sw      $t8, 0x00D8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00D4($t9)
	addiu   $t1, $t0, 0x0200
	sw      $t1, 0x00D4($t9)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802B2D94
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	lw      $t4, 0x0068($t3)
	sw      $t2, 0x0088($t4)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0095
.L802B2D94:
	b       .L802B2D9C
	nop
.L802B2D9C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B2DAC(void) */
.globl object_a_802B2DAC
object_a_802B2DAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41D00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00DC($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B2E04
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f8, 0x00DC($t7)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00DC($t7)
.L802B2E04:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D8($t8)
	andi    $t0, $t9, 0xFFFF
	beqz    $t0, .L802B2E44
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D8($t1)
	andi    $t3, $t2, 0xF800
	sw      $t3, 0x00D8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	addiu   $t6, $t5, 0x0800
	sw      $t6, 0x00D8($t4)
.L802B2E44:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0002
	beqz    $t9, .L802B2E84
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00AC($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B4($t2)
.L802B2E84:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x00D4($t3)
	addiu   $t5, $t1, 0x0800
	sw      $t5, 0x00D4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x0154($t6)
	slti    $at, $t4, 0x005B
	beqz    $at, .L802B2EC0
	nop
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L802B2F1C
	nop
.L802B2EC0:
	jal     obj_lib_802A05D4
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802B2F1C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	lw      $t2, 0x0068($t0)
	sw      $t9, 0x0134($t2)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0095
.L802B2F1C:
	b       .L802B2F24
	nop
.L802B2F24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B2F34(void) */
.globl object_a_802B2F34
object_a_802B2F34:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029F120
	lw      $a1, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802B3024
	nop
	lw      $t0, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0068($t0)
	sw      $t1, 0x0068($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(obj_mario)
	lw      $t5, %lo(obj_mario)($t5)
	lw      $t6, 0x00C8($t5)
	sh      $t6, 0x0026($sp)
	li      $at, 0x40400000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0020($sp)
	lhu     $t7, 0x0026($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0020($sp)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00AC($t0)
	lhu     $t1, 0x0026($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0020($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_cos)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B4($t4)
	li      $at, 0x42200000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t5)
.L802B3024:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, 0x0200
	sw      $t8, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00D8($t9)
	addiu   $t1, $t0, 0x0200
	sw      $t1, 0x00D8($t9)
	b       .L802B3054
	nop
.L802B3054:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802B3064(void) */
.globl object_a_802B3064
object_a_802B3064:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029F120
	lw      $a1, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lw      $t9, 0x001C($sp)
	lw      $t0, 0x0088($t9)
	beqz    $t0, .L802B30C8
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
.L802B30C8:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D8($t3)
	addiu   $t5, $t4, 0x0200
	sw      $t5, 0x00D8($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, 0x0200
	sw      $t8, 0x00D4($t6)
	b       .L802B30F8
	nop
.L802B30F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B3108
object_a_802B3108:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330420
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330420
	b       .L802B3124
	nop
.L802B3124:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B3134:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	lwc1    $f10, 0x0008($t8)
	lwc1    $f16, 0x0008($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x001C($sp)
	lwc1    $f12, 0x0020($sp)
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x0030($sp)
	swc1    $f16, 0x00B0($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x0034($sp)
	swc1    $f18, 0x00E4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0xC0000000
	mtc1    $at, $f4
	lwc1    $f8, 0x00E4($t3)
	lwc1    $f10, 0x0030($sp)
	li      $at, 0x3F800000
	div.s   $f6, $f4, $f8
	mtc1    $at, $f18
	mul.s   $f16, $f6, $f10
	sub.s   $f4, $f16, $f18
	trunc.w.s $f8, $f4
	mfc1    $t5, $f8
	nop
	sw      $t5, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lwc1    $f6, 0x001C($sp)
	lui     $t7, %hi(object)
	mtc1    $t6, $f10
	lw      $t7, %lo(object)($t7)
	cvt.s.w $f16, $f10
	div.s   $f18, $f6, $f16
	swc1    $f18, 0x00B8($t7)
	b       .L802B3240
	lw      $v0, 0x0018($sp)
	b       .L802B3240
	nop
.L802B3240:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B3250:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B329C
object_a_802B329C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	mtc1    $0, $f4
	addiu   $t6, $sp, 0x0028
	addiu   $t7, $sp, 0x0028
	swc1    $f4, 0x0008($t6)
	lwc1    $f20, 0x0008($t7)
	addiu   $t8, $sp, 0x0028
	swc1    $f20, 0x0004($t7)
	swc1    $f20, 0x0000($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	bnez    $t0, .L802B336C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, .L802B3324
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     obj_lib_8029E96C
	move    $a3, $0
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0400
	sw      $t3, 0x0118($t4)
	li.u    $a0, 0x8057FF91
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x8057FF91
.L802B3324:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x0047
	bnez    $at, .L802B3350
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
.L802B3350:
	li      $a0, 0x0003
	li      $a1, 0x00C8
	li      $a2, 0x0050
	jal     object_a_802B2BC8
	li      $a3, -0x003C
	b       .L802B3578
	nop
.L802B336C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, .L802B3540
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	bnez    $t3, .L802B33DC
	nop
	li.u    $a0, 0x30730081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30730081
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00AD
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	addiu   $a0, $sp, 0x0028
	li      $a2, 0x42A00000
	li      $a3, 0xC0000000
	jal     object_a_802B3134
	addiu   $a1, $a1, 0x00A0
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0108($t4)
.L802B33DC:
	jal     obj_lib_802A2644
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	bnez    $t6, .L802B347C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A4($t8)
	lwc1    $f8, 0x0168($t8)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802B3474
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x0168($t9)
	swc1    $f10, 0x00A4($t9)
	li      $at, 0x42700000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B0($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0150($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0150($t1)
	li.u    $a0, 0x30740081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30740081
.L802B3474:
	b       .L802B3524
	nop
.L802B347C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B3524
	nop
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t4)
	lwc1    $f8, 0x00A4($t4)
	add.s   $f18, $f10, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    .L802B3524
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0168($t5)
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x00A4($t5)
	jal     object_a_802B3250
	nop
	li      $t6, 0x0001
	lui     $at, %hi(_camera_bss+0x6A8)
	sw      $t6, %lo(_camera_bss+0x6A8)($at)
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t7, $t9, 0x0001
	sw      $t7, 0x014C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	li.u    $a0, 0x30740081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30740081
.L802B3524:
	li      $a0, 0x0003
	li      $a1, 0x00C8
	li      $a2, 0x0050
	jal     object_a_802B2BC8
	li      $a3, -0x003C
	b       .L802B3578
	nop
.L802B3540:
	jal     obj_lib_802A05D4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0134($t2)
	andi    $t1, $t3, 0x8000
	beqz    $t1, .L802B3578
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
.L802B3578:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0118($t5)
	slti    $at, $t6, 0x0401
	bnez    $at, .L802B35A4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x0118($t9)
	addiu   $t8, $t7, -0x0100
	sw      $t8, 0x0118($t9)
.L802B35A4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x00D4($t0)
	lw      $t3, 0x0118($t0)
	addu    $t1, $t2, $t3
	sw      $t1, 0x00D4($t0)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	li      $at, 0x42DC0000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00DC($t4)
	b       .L802B35EC
	nop
.L802B35EC:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802B3600
object_a_802B3600:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0118($t6)
	slti    $at, $t7, 0x0401
	bnez    $at, .L802B3644
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0118($t8)
	addiu   $t0, $t9, -0x0100
	sw      $t0, 0x0118($t8)
.L802B3644:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D4($t1)
	lw      $t3, 0x0118($t1)
	addu    $t4, $t2, $t3
	sw      $t4, 0x00D4($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, -0x4000
	sw      $t5, 0x00D8($t6)
	li      $at, 0x43250000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	bnez    $t0, .L802B375C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t2, 0x0154($t8)
	bnez    $t2, .L802B36C4
	nop
	li      $at, 0x428C0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t3)
.L802B36C4:
	li      $a0, 0x0003
	li      $a1, 0x00C8
	li      $a2, 0x0050
	jal     object_a_802B2BC8
	li      $a3, -0x003C
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t1, 0x00EC($t4)
	andi    $t5, $t1, 0x0002
	beqz    $t5, .L802B3730
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t9, $t7, 0x0001
	b       .L802B3754
	sw      $t9, 0x014C($t6)
.L802B3730:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00EC($t0)
	andi    $t2, $t8, 0x0001
	beqz    $t2, .L802B3754
	nop
	li.u    $a0, 0x38378081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x38378081
.L802B3754:
	b       .L802B37A0
	nop
.L802B375C:
	lui     $a0, %hi(object)
	la.u    $a1, object_a_8033042C
	la.l    $a1, object_a_8033042C
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0134($t3)
	andi    $t1, $t4, 0x8000
	beqz    $t1, .L802B37A0
	nop
	lui     $a0, %hi(object)
	jal     obj_list_802CA028
	lw      $a0, %lo(object)($a0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0134($t5)
.L802B37A0:
	b       .L802B37A8
	nop
.L802B37A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B37B8
object_a_802B37B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	mtc1    $at, $f11
	mul.s   $f6, $f20, $f4
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	add.d   $f16, $f8, $f10
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f16
	b       .L802B37FC
	nop
.L802B37FC:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B3810
object_a_802B3810:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sw      $t7, 0x00F8($t6)
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802B3830(void) */
.globl object_a_802B3830
object_a_802B3830:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05D4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F8($t7)
	sw      $t8, 0x00C8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00D0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00D8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00EC($t1)
	jal     obj_lib_802A184C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
	b       .L802B38A8
	nop
.L802B38A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B38B8(void) */
.globl object_a_802B38B8
object_a_802B38B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0160($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t6)
	sh      $v0, 0x001E($sp)
	lh      $t7, 0x001E($sp)
	slti    $at, $t7, 0x2000
	beqz    $at, .L802B3934
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43C80000
	mtc1    $at, $f4
	lwc1    $f6, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B3934
	nop
	lui     $at, %hi(object_a_80337AAC)
	lwc1    $f8, %lo(object_a_80337AAC)($at)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802B3934
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
.L802B3934:
	b       .L802B393C
	nop
.L802B393C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802B394C(void) */
.globl object_a_802B394C
object_a_802B394C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0028
	beqz    $at, .L802B3984
	nop
	li      $at, 0x40400000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	b       .L802B3AF0
	swc1    $f4, 0x00B8($t8)
.L802B3984:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0032
	beqz    $at, .L802B39FC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bgez    $t2, .L802B39BC
	andi    $t3, $t2, 0x0001
	beqz    $t3, .L802B39BC
	nop
	addiu   $t3, $t3, -0x0002
.L802B39BC:
	beqz    $t3, .L802B39DC
	nop
	li      $at, 0x40400000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	b       .L802B39F4
	swc1    $f6, 0x00B8($t4)
.L802B39DC:
	li      $at, 0xC0400000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t5)
.L802B39F4:
	b       .L802B3AF0
	nop
.L802B39FC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0047
	bnez    $at, .L802B3A1C
	nop
	jal     obj_lib_802A2320
	nop
.L802B3A1C:
	lui     $a0, %hi(object)
	la.u    $a2, o_130017F4
	la.l    $a2, o_130017F4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0096
	li      $at, 0x41F00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t9)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802B3A84
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0100
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t0)
.L802B3A84:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0032
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, .L802B3AB0
	nop
	li.u    $a0, 0x501A5081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x501A5081
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
.L802B3AB0:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0097
	beqz    $at, .L802B3AD8
	nop
	lw      $t5, 0x00EC($t3)
	andi    $t6, $t5, 0x0200
	beqz    $t6, .L802B3AF0
	nop
.L802B3AD8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
	jal     obj_lib_802A37AC
	nop
.L802B3AF0:
	b       .L802B3AF8
	nop
.L802B3AF8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B3B08(void) */
.globl object_a_802B3B08
object_a_802B3B08:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802B3B24(void) */
.globl object_a_802B3B24
object_a_802B3B24:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802B3B60
	nop
	li      $at, 0xC1F00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     obj_lib_802A05B4
	nop
.L802B3B60:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00D0($t9)
	addiu   $t1, $t0, 0x1000
	sw      $t1, 0x00D0($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D8($t2)
	addiu   $t4, $t3, 0x1000
	sw      $t4, 0x00D8($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	lwc1    $f6, 0x00A4($t5)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x005B
	bnez    $at, .L802B3BC8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802B3BC8:
	b       .L802B3BD0
	nop
.L802B3BD0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B3BE0
object_a_802B3BE0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_8033043C
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_8033043C
	jal     obj_lib_802A54D8
	nop
	beqz    $v0, .L802B3C14
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	sw      $t6, 0x014C($t7)
.L802B3C14:
	b       .L802B3C1C
	nop
.L802B3C1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B3C2C(void) */
.globl object_a_802B3C2C
object_a_802B3C2C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	jal     obj_lib_802A05D4
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lw      $t8, 0x001C($sp)
	li      $at, 0x0013
	lw      $t9, 0x014C($t8)
	bne     $t9, $at, .L802B3C80
	nop
	lw      $t1, 0x001C($sp)
	li      $t0, -0x0001
	b       .L802B3CC4
	sw      $t0, 0x009C($t1)
.L802B3C80:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802B3CB8
	nop
	lw      $t2, 0x001C($sp)
	sw      $0, 0x009C($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	b       .L802B3CC4
	sw      $t3, 0x014C($t4)
.L802B3CB8:
	lw      $t6, 0x001C($sp)
	li      $t5, -0x0001
	sw      $t5, 0x009C($t6)
.L802B3CC4:
	b       .L802B3CCC
	nop
.L802B3CCC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802B3CDC(void) */
.globl object_a_802B3CDC
object_a_802B3CDC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001F
	bnez    $at, .L802B3D00
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802B3D00:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802B3D10(void) */
.globl object_a_802B3D10
object_a_802B3D10:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0013
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, .L802B3D54
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, -0x0001
	lw      $t1, 0x0068($t0)
	sw      $t9, 0x009C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
.L802B3D54:
	jal     obj_lib_802A05B4
	nop
	b       .L802B3D64
	nop
.L802B3D64:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B3D74
object_a_802B3D74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330450
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330450
	li      $at, 0x42B40000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0138($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0004
	lw      $t8, 0x0068($t7)
	lw      $t9, 0x014C($t8)
	bne     $t9, $at, .L802B3DD0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, -0x0001
	lw      $t2, 0x0068($t1)
	sw      $t0, 0x009C($t2)
.L802B3DD0:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0134($t3)
	b       .L802B3DE4
	nop
.L802B3DE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B3DF4
object_a_802B3DF4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x0034($sp)
	lw      $t8, 0x0034($sp)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x00CA($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0024($sp)
	lw      $t2, 0x0034($sp)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x00CA($t2)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0020($sp)
	la.u    $a0, 0x0605784C
	jal     segment_to_virtual
	la.l    $a0, 0x0605784C
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0034($sp)
	li      $at, 0x0006
	lw      $t7, 0x0178($t6)
	bne     $t7, $at, .L802B4068
	nop
	lw      $t8, 0x0034($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lh      $t9, 0x0040($t8)
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	add.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t1, $f4
	nop
	sw      $t1, 0x0030($sp)
	lw      $t2, 0x0034($sp)
	lw      $t5, 0x0030($sp)
	lw      $t3, 0x003C($t2)
	lh      $t4, 0x0008($t3)
	bne     $t4, $t5, .L802B3EBC
	nop
	sw      $0, 0x0030($sp)
.L802B3EBC:
	lw      $t6, 0x0030($sp)
	slti    $at, $t6, 0x002E
	bnez    $at, .L802B4068
	nop
	slti    $at, $t6, 0x0055
	beqz    $at, .L802B4068
	nop
	li.u    $a0, 0x60000001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60000001
	lw      $t8, 0x0030($sp)
	lw      $t7, 0x001C($sp)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t0, $t9, 1
	addu    $t1, $t7, $t0
	lh      $t2, 0x0000($t1)
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t4, 0x0030($sp)
	lw      $t3, 0x001C($sp)
	sll     $t5, $t4, 2
	addu    $t5, $t5, $t4
	sll     $t6, $t5, 1
	addu    $t8, $t3, $t6
	lh      $t9, 0x0004($t8)
	mtc1    $t9, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0024($sp)
	mul.s   $f6, $f18, $f4
	lw      $t7, 0x0034($sp)
	lui     $t0, %hi(object)
	mul.s   $f16, $f8, $f10
	lwc1    $f4, 0x00A0($t7)
	lw      $t0, %lo(object)($t0)
	add.s   $f18, $f6, $f16
	add.s   $f8, $f4, $f18
	swc1    $f8, 0x00A0($t0)
	lw      $t2, 0x0030($sp)
	lw      $t1, 0x001C($sp)
	lw      $t8, 0x0034($sp)
	sll     $t4, $t2, 2
	addu    $t4, $t4, $t2
	sll     $t5, $t4, 1
	addu    $t3, $t1, $t5
	lh      $t6, 0x0002($t3)
	lwc1    $f16, 0x00A4($t8)
	lui     $t9, %hi(object)
	mtc1    $t6, $f10
	lw      $t9, %lo(object)($t9)
	cvt.s.w $f6, $f10
	add.s   $f4, $f6, $f16
	swc1    $f4, 0x00A4($t9)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f16, 0x0020($sp)
	mul.s   $f10, $f18, $f8
	lw      $t7, 0x0034($sp)
	lui     $t0, %hi(object)
	mul.s   $f4, $f6, $f16
	lwc1    $f8, 0x00A8($t7)
	lw      $t0, %lo(object)($t0)
	sub.s   $f18, $f10, $f4
	add.s   $f6, $f8, $f18
	swc1    $f6, 0x00A8($t0)
	lw      $t4, 0x0030($sp)
	lw      $t2, 0x001C($sp)
	lui     $t9, %hi(object)
	sll     $t1, $t4, 2
	addu    $t1, $t1, $t4
	sll     $t5, $t1, 1
	addu    $t3, $t2, $t5
	lh      $t6, 0x0008($t3)
	lw      $t9, %lo(object)($t9)
	addiu   $t8, $t6, 0x0C00
	sw      $t8, 0x00C4($t9)
	lw      $t0, 0x0030($sp)
	lw      $t7, 0x001C($sp)
	lw      $t3, 0x0034($sp)
	sll     $t4, $t0, 2
	addu    $t4, $t4, $t0
	sll     $t1, $t4, 1
	addu    $t2, $t7, $t1
	lh      $t5, 0x0006($t2)
	lh      $t6, 0x00CA($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addu    $t8, $t6, $t5
	sw      $t8, 0x00C8($t9)
	lw      $t0, 0x0030($sp)
	andi    $t4, $t0, 0x0001
	bnez    $t4, .L802B4068
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13001A74
	la.l    $a2, o_13001A74
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0090
.L802B4068:
	b       .L802B4070
	nop
.L802B4070:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802B4080
object_a_802B4080:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	move    $a0, $t6
	jal     obj_lib_8029F0E0
	lw      $a1, 0x0068($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0004
	lw      $t8, 0x0068($t7)
	lw      $t9, 0x014C($t8)
	bne     $t9, $at, .L802B40FC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x000B
	lw      $t1, 0x0068($t0)
	lw      $t2, 0x0150($t1)
	bne     $t2, $at, .L802B40E4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       .L802B40F4
	sw      $0, 0x0130($t3)
.L802B40E4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x00800000
	sw      $t4, 0x0130($t5)
.L802B40F4:
	b       .L802B4140
	nop
.L802B40FC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0008
	sw      $t6, 0x0130($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x017C($t9)
	slti    $at, $t0, 0x0064
	beqz    $at, .L802B4138
	nop
	jal     obj_lib_802A05B4
	nop
	b       .L802B4140
	nop
.L802B4138:
	jal     obj_lib_802A05D4
	nop
.L802B4140:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	lw      $t3, 0x0124($t2)
	beqz    $t3, .L802B4160
	nop
	jal     obj_lib_802A05B4
	nop
.L802B4160:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
	b       .L802B4174
	nop
.L802B4174:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B4184:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, .L802B41DC
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130011D0
	la.l    $a2, o_130011D0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0068
	sw      $v0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x001C($sp)
	lwc1    $f4, 0x00E8($t8)
	swc1    $f4, 0x00A4($t9)
	b       .L802B41EC
	li      $v0, 0x0001
.L802B41DC:
	b       .L802B41EC
	move    $v0, $0
	b       .L802B41EC
	nop
.L802B41EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B41FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L802B4270
	nop
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0000($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0000($t9)
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0000($t2)
	slti    $at, $t3, 0x0004
	beqz    $at, .L802B4270
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A1930
	li      $a1, 0x0008
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42700000
	li.u    $a0, 0x50030081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50030081
.L802B4270:
	b       .L802B4278
	nop
.L802B4278:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B4288:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x000F
	jal     obj_lib_802A0008
	li      $a0, 0x0015
	beqz    $v0, .L802B42C0
	nop
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
.L802B42C0:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B42E0
	nop
	b       .L802B42F0
	li      $v0, 0x0001
	b       .L802B42E8
	nop
.L802B42E0:
	b       .L802B42F0
	move    $v0, $0
.L802B42E8:
	b       .L802B42F0
	nop
.L802B42F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B4300:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     obj_lib_8029F4B4
	li      $a0, 0x000D
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B4348
	nop
	b       .L802B4358
	li      $v0, 0x0001
	b       .L802B4350
	nop
.L802B4348:
	b       .L802B4358
	move    $v0, $0
.L802B4350:
	b       .L802B4358
	nop
.L802B4358:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B4368:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x000E
	jal     obj_lib_802A0008
	li      $a0, 0x0014
	beqz    $v0, .L802B439C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
.L802B439C:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B43BC
	nop
	b       .L802B43CC
	li      $v0, 0x0001
	b       .L802B43C4
	nop
.L802B43BC:
	b       .L802B43CC
	move    $v0, $0
.L802B43C4:
	b       .L802B43CC
	nop
.L802B43CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B43DC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0088($t6)
	bnez    $t7, .L802B4404
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0005
	b       .L802B4468
	sw      $t8, 0x014C($t9)
.L802B4404:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x0088($t0)
	bne     $t1, $at, .L802B4430
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0006
	b       .L802B4468
	sw      $t2, 0x014C($t3)
.L802B4430:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x0144($t4)
	bne     $t5, $at, .L802B445C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000D
	b       .L802B4468
	sw      $t6, 0x014C($t7)
.L802B445C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802B4468:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802B4478(void) */
.globl object_a_802B4478
object_a_802B4478:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     obj_lib_8029F4B4
	li      $a0, 0x000C
	jal     object_a_802B43DC
	nop
	b       .L802B44AC
	nop
.L802B44AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B44BC(void) */
.globl object_a_802B44BC
object_a_802B44BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802B4504
	nop
	jal     object_a_802B4288
	nop
	beqz    $v0, .L802B44FC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t8)
.L802B44FC:
	b       .L802B4584
	nop
.L802B4504:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0150($t1)
	bne     $t2, $at, .L802B4548
	nop
	jal     object_a_802B4300
	nop
	beqz    $v0, .L802B4540
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t3)
.L802B4540:
	b       .L802B4584
	nop
.L802B4548:
	jal     object_a_802B4368
	nop
	beqz    $v0, .L802B4584
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0088($t6)
	bne     $t7, $at, .L802B457C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0088($t9)
.L802B457C:
	jal     object_a_802B43DC
	nop
.L802B4584:
	b       .L802B458C
	nop
.L802B458C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B459C:
	la.u    $t6, object_8033D280
	la.l    $t6, object_8033D280
	lh      $t7, 0x0052($t6)
	beqz    $t7, .L802B45E4
	nop
	la.u    $t8, object_8033D280
	la.l    $t8, object_8033D280
	lh      $t9, 0x0054($t8)
	lui     $t1, %hi(object_a_8033045C)
	lui     $t2, %hi(object)
	andi    $t0, $t9, 0x000F
	addu    $t1, $t1, $t0
	lb      $t1, %lo(object_a_8033045C)($t1)
	lw      $t2, %lo(object)($t2)
	sw      $t1, 0x014C($t2)
	la.u    $t3, object_8033D280
	la.l    $t3, object_8033D280
	sh      $0, 0x0052($t3)
.L802B45E4:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802B45F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0110($t6)
	bnez    $t7, .L802B46AC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, .L802B4684
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337AB0)
	lwc1    $f6, %lo(object_a_80337AB0)($at)
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B466C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x000F
	b       .L802B467C
	sw      $t2, 0x014C($t3)
.L802B466C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0011
	sw      $t4, 0x014C($t5)
.L802B467C:
	b       .L802B4694
	nop
.L802B4684:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000E
	sw      $t6, 0x014C($t7)
.L802B4694:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0110($t8)
	addiu   $t0, $t9, 0x0001
	b       .L802B4724
	sh      $t0, 0x0110($t8)
.L802B46AC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0110($t1)
	lui     $t2, %hi(demo)
	lw      $t2, %lo(demo)($t2)
	bnez    $t2, .L802B4714
	nop
	lwc1    $f8, 0x001C($sp)
	lui     $at, %hi(object_a_80337AB8)
	ldc1    $f16, %lo(object_a_80337AB8)($at)
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    .L802B46FC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	b       .L802B470C
	sw      $t3, 0x014C($t4)
.L802B46FC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x000E
	sw      $t5, 0x014C($t6)
.L802B470C:
	b       .L802B4724
	nop
.L802B4714:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, 0x000E
	sw      $t7, 0x014C($t9)
.L802B4724:
	b       .L802B472C
	nop
.L802B472C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B473C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0110($t6)
	bnez    $t7, .L802B48A0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, .L802B4878
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337AC0)
	lwc1    $f6, %lo(object_a_80337AC0)($at)
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B47F0
	nop
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    .L802B47D8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0010
	b       .L802B47E8
	sw      $t2, 0x014C($t3)
.L802B47D8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0009
	sw      $t4, 0x014C($t5)
.L802B47E8:
	b       .L802B4870
	nop
.L802B47F0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0007
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f4, 0x00FC($t8)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802B4870
	nop
	lui     $at, %hi(object_a_80337AC4)
	lwc1    $f6, %lo(object_a_80337AC4)($at)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B4870
	nop
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    .L802B4870
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x000D
	sw      $t9, 0x014C($t0)
.L802B4870:
	b       .L802B4888
	nop
.L802B4878:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000E
	sw      $t1, 0x014C($t2)
.L802B4888:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0110($t3)
	addiu   $t5, $t4, 0x0001
	b       .L802B48BC
	sh      $t5, 0x0110($t3)
.L802B48A0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0110($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x000E
	sw      $t7, 0x014C($t8)
.L802B48BC:
	b       .L802B48C4
	nop
.L802B48C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B48D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L802B49F4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B49A4
	nop
	lwc1    $f8, 0x001C($sp)
	lui     $at, %hi(object_a_80337AC8)
	ldc1    $f16, %lo(object_a_80337AC8)($at)
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    .L802B4958
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0009
	b       .L802B499C
	sw      $t0, 0x014C($t1)
.L802B4958:
	lwc1    $f18, 0x001C($sp)
	lui     $at, %hi(object_a_80337AD0)
	ldc1    $f6, %lo(object_a_80337AD0)($at)
	cvt.d.s $f4, $f18
	c.lt.d  $f4, $f6
	nop
	bc1f    .L802B498C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0008
	b       .L802B499C
	sw      $t2, 0x014C($t3)
.L802B498C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x000F
	sw      $t4, 0x014C($t5)
.L802B499C:
	b       .L802B49EC
	nop
.L802B49A4:
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    .L802B49DC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000D
	b       .L802B49EC
	sw      $t6, 0x014C($t7)
.L802B49DC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0007
	sw      $t8, 0x014C($t9)
.L802B49EC:
	b       .L802B4A04
	nop
.L802B49F4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x000E
	sw      $t0, 0x014C($t1)
.L802B4A04:
	b       .L802B4A0C
	nop
.L802B4A0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B4A1C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000D
	sw      $t6, 0x014C($t7)
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802B4A3C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $s0, 0x0110($t6)
	beqz    $s0, .L802B4A70
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B4AB4
	nop
	b       .L802B4AD8
	nop
.L802B4A70:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0106($t7)
	bnez    $t8, .L802B4A94
	nop
	jal     object_a_802B48D4
	nop
	b       .L802B4A9C
	nop
.L802B4A94:
	jal     object_a_802B4A1C
	nop
.L802B4A9C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sh      $t9, 0x0110($t0)
	b       .L802B4AD8
	nop
.L802B4AB4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0110($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x000E
	sw      $t2, 0x014C($t3)
	b       .L802B4AD8
	nop
.L802B4AD8:
	b       .L802B4AE0
	nop
.L802B4AE0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B4AF4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B4B9C
	nop
	li      $at, 0x43960000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t6)
	lwc1    $f8, 0x00A4($t6)
	sub.s   $f18, $f10, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    .L802B4B9C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	lui     $t8, %hi(object)
	swc1    $f4, 0x00A8($t7)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A8($t8)
	swc1    $f6, 0x00A0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x44FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t9)
	add.s   $f8, $f10, $f16
	swc1    $f8, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t1)
.L802B4B9C:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802B4BAC(void) */
.globl object_a_802B4BAC
object_a_802B4BAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A5288
	li      $a0, 0x000C
	beqz    $v0, .L802B4BD0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802B4BD0:
	b       .L802B4BD8
	nop
.L802B4BD8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B4BE8(void) */
.globl object_a_802B4BE8
object_a_802B4BE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x01B0($t6)
	jal     obj_lib_8029F4B4
	li      $a0, 0x000C
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0118($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	bnez    $t1, .L802B4C5C
	nop
	jal     object_a_802B45F4
	nop
	b       .L802B4C8C
	nop
.L802B4C5C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x0144($t2)
	bne     $t3, $at, .L802B4C84
	nop
	jal     object_a_802B473C
	nop
	b       .L802B4C8C
	nop
.L802B4C84:
	jal     object_a_802B4A3C
	nop
.L802B4C8C:
	b       .L802B4C94
	nop
.L802B4C94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B4CA4(void) */
.globl object_a_802B4CA4
object_a_802B4CA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802B4CE0
	nop
	li.u    $a0, 0x50080081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50080081
.L802B4CE0:
	jal     obj_lib_802A5288
	li      $a0, 0x0006
	beqz    $v0, .L802B4CFC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
.L802B4CFC:
	b       .L802B4D04
	nop
.L802B4D04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B4D14(void) */
.globl object_a_802B4D14
object_a_802B4D14:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x00C8($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x0160($t6)
	sh      $v0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t8, 0x0144($t7)
	bne     $t8, $at, .L802B4D58
	nop
	li      $t9, 0x0400
	b       .L802B4DA8
	sh      $t9, 0x001A($sp)
.L802B4D58:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0184($t0)
	slti    $at, $t1, 0x0003
	bnez    $at, .L802B4D7C
	nop
	li      $t2, 0x0400
	b       .L802B4DA8
	sh      $t2, 0x001A($sp)
.L802B4D7C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0002
	lw      $t4, 0x0184($t3)
	bne     $t4, $at, .L802B4DA0
	nop
	li      $t5, 0x0300
	b       .L802B4DA8
	sh      $t5, 0x001A($sp)
.L802B4DA0:
	li      $t6, 0x0200
	sh      $t6, 0x001A($sp)
.L802B4DA8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a1, 0x001A($sp)
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t7)
	sw      $v0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	bnez    $t9, .L802B4E0C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F8($t0)
	jal     object_a_802B4288
	nop
	beqz    $v0, .L802B4E04
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0150($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0150($t1)
.L802B4E04:
	b       .L802B4EE8
	nop
.L802B4E0C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x0150($t4)
	bne     $t5, $at, .L802B4ECC
	nop
	jal     object_a_802B4300
	nop
	beqz    $v0, .L802B4EC4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x00020000
	lw      $t0, 0x00F4($t9)
	and     $t2, $t0, $at
	beqz    $t2, .L802B4EA0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x00F8($t3)
	slti    $at, $t1, 0x0005
	bnez    $at, .L802B4E98
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li.u    $at, 0xFFFDFFFF
	li.l    $at, 0xFFFDFFFF
	lw      $t5, 0x00F4($t4)
	and     $t7, $t5, $at
	sw      $t7, 0x00F4($t4)
.L802B4E98:
	b       .L802B4EC4
	nop
.L802B4EA0:
	lh      $t8, 0x0018($sp)
	slti    $at, $t8, 0x2000
	beqz    $at, .L802B4EC4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0150($t6)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t6)
.L802B4EC4:
	b       .L802B4EE8
	nop
.L802B4ECC:
	jal     object_a_802B4368
	nop
	beqz    $v0, .L802B4EE8
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
.L802B4EE8:
	b       .L802B4EF0
	nop
.L802B4EF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802B4F00(void) */
.globl object_a_802B4F00
object_a_802B4F00:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0150($t6)
	beqz    $s0, .L802B4F40
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B4FC4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B5090
	nop
	b       .L802B50E8
	nop
.L802B4F40:
	jal     obj_lib_802A05B4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x01AC($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x001E
	sw      $t8, 0x00F8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	bnez    $t1, .L802B4F84
	nop
	li.u    $a0, 0x90668081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90668081
.L802B4F84:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x017C($t2)
	bnez    $t3, .L802B4FBC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0150($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0160($t7)
	sw      $t8, 0x00C8($t7)
.L802B4FBC:
	b       .L802B50E8
	nop
.L802B4FC4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	lw      $s0, 0x00F8($t9)
	addiu   $t1, $t0, -0x0001
	beqz    $s0, .L802B4FF8
	sw      $t1, 0x00F8($t9)
	li      $at, 0x42C80000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	b       .L802B5018
	swc1    $f4, 0x00B8($t2)
.L802B4FF8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x0002
	sw      $t3, 0x0150($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x0160($t6)
	sw      $t4, 0x00C8($t6)
.L802B5018:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $a0, 0x00C8($t8)
	jal     obj_lib_802A11A8
	lw      $a1, 0x0160($t8)
	slti    $at, $v0, 0x4001
	bnez    $at, .L802B5088
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t7)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802B5088
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x0150($t1)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x0160($t9)
	sw      $t2, 0x00C8($t9)
	li.u    $a0, 0x90668081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90668081
.L802B5088:
	b       .L802B50E8
	nop
.L802B5090:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t5, 0x00FF
	sh      $t5, 0x01AC($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x00FF
	lw      $t8, 0x017C($t6)
	bne     $t8, $at, .L802B50D8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
.L802B50D8:
	jal     obj_lib_802A05D4
	nop
	b       .L802B50E8
	nop
.L802B50E8:
	b       .L802B50F0
	nop
.L802B50F0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802B5104(void) */
.globl object_a_802B5104
object_a_802B5104:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x000B
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	slti    $at, $t8, 0x0019
	bnez    $at, .L802B51CC
	nop
	slti    $at, $t8, 0x0024
	beqz    $at, .L802B51CC
	nop
	li.u    $a0, 0x60000001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60000001
	lw      $t9, 0x002C($sp)
	li      $at, 0x0023
	bne     $t9, $at, .L802B5198
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $t2, o_13001984
	la.l    $t2, o_13001984
	li      $t1, 0x0090
	sw      $t1, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	li      $a0, 0x0001
	move    $a1, $0
	li      $a2, 0x0190
	li      $a3, 0x0064
	jal     obj_lib_8029EF64
	sw      $t0, 0x0010($sp)
	b       .L802B51CC
	nop
.L802B5198:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $t5, o_13001984
	la.l    $t5, o_13001984
	li      $t4, 0x0090
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0190
	li      $a3, 0x0064
	jal     obj_lib_8029EF64
	sw      $t3, 0x0010($sp)
.L802B51CC:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B51E8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802B51E8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x00020000
	lw      $t8, 0x00F4($t7)
	or      $t9, $t8, $at
	sw      $t9, 0x00F4($t7)
	b       .L802B5208
	nop
.L802B5208:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void object_a_802B5218(void) */
.globl object_a_802B5218
object_a_802B5218:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802B528C
	nop
	li      $at, 0xC3C80000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	li      $at, 0x42C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x8000
	lh      $t1, 0x0112($t0)
	addu    $t2, $t1, $at
	sw      $t2, 0x00C8($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sh      $t3, 0x01B0($t4)
.L802B528C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	bnez    $t6, .L802B52CC
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0019
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0150($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       .L802B53DC
	sw      $0, 0x00F8($t1)
.L802B52CC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t0, 0x0150($t2)
	bne     $t0, $at, .L802B5368
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0019
	jal     obj_lib_8029FEA4
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_a_802B41FC
	addiu   $a0, $a0, 0x00F8
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F8($t3)
	slti    $at, $t4, 0x0003
	bnez    $at, .L802B5360
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x001A
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t7, $t9, 0x0001
	sw      $t7, 0x0150($t8)
.L802B5360:
	b       .L802B53DC
	nop
.L802B5368:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0002
	lw      $t2, 0x0150($t1)
	bne     $t2, $at, .L802B53DC
	nop
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B53D4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t3, 0x0184($t0)
	bne     $t3, $at, .L802B53BC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	b       .L802B53C8
	sw      $t4, 0x014C($t5)
.L802B53BC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802B53C8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x01B0($t9)
.L802B53D4:
	b       .L802B53DC
	nop
.L802B53DC:
	b       .L802B53E4
	nop
.L802B53E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B53F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0009
	jal     obj_lib_802A0008
	li      $a0, 0x000B
	beqz    $v0, .L802B5424
	nop
	b       .L802B5434
	li      $v0, 0x0001
	b       .L802B542C
	nop
.L802B5424:
	b       .L802B5434
	move    $v0, $0
.L802B542C:
	b       .L802B5434
	nop
.L802B5434:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B5444:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L802B5534
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t0)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42700000
	jal     obj_lib_8029F4B4
	li      $a0, 0x0008
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0040($t1)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A1930
	li      $a1, 0x0007
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	bnez    $t3, .L802B5524
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_a_80337AD8)
	lwc1    $f10, %lo(object_a_80337AD8)($at)
	lwc1    $f8, 0x015C($t4)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802B5510
	nop
	lui     $t5, %hi(obj_mario)
	lw      $t5, %lo(obj_mario)($t5)
	lw      $t6, 0x0134($t5)
	ori     $t7, $t6, 0x0002
	b       .L802B5524
	sw      $t7, 0x0134($t5)
.L802B5510:
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lw      $t9, 0x0134($t8)
	ori     $t0, $t9, 0x0001
	sw      $t0, 0x0134($t8)
.L802B5524:
	b       .L802B5544
	li      $v0, 0x0001
	b       .L802B553C
	nop
.L802B5534:
	b       .L802B5544
	move    $v0, $0
.L802B553C:
	b       .L802B5544
	nop
.L802B5544:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B5554:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, .L802B55BC
	nop
	lw      $t8, 0x00F4($t6)
	li      $at, 0x00010000
	and     $t9, $t8, $at
	beqz    $t9, .L802B55BC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00FC($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802B55BC
	nop
	li      $at, 0x42700000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t1)
.L802B55BC:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802B55CC(void) */
.globl object_a_802B55CC
object_a_802B55CC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802B5684
	nop
	jal     object_a_802B53F4
	nop
	beqz    $v0, .L802B567C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0002
	lw      $t9, 0x0144($t8)
	bne     $t9, $at, .L802B563C
	nop
	lw      $t0, 0x00F4($t8)
	li      $at, 0x00010000
	and     $t1, $t0, $at
	beqz    $t1, .L802B563C
	nop
	li      $at, 0x428C0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	b       .L802B5654
	swc1    $f4, 0x00B0($t2)
.L802B563C:
	li      $at, 0x42A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t3)
.L802B5654:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
	jal     object_a_802B5554
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
.L802B567C:
	b       .L802B5780
	nop
.L802B5684:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0001
	lw      $t8, 0x0150($t9)
	bne     $t8, $at, .L802B5764
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t1, 0x0144($t0)
	bne     $t1, $at, .L802B56D0
	nop
	lw      $t2, 0x00F4($t0)
	li      $at, 0x00010000
	and     $t3, $t2, $at
	beqz    $t3, .L802B56D0
	nop
	jal     object_a_802B4AF4
	nop
.L802B56D0:
	jal     object_a_802B5444
	nop
	beqz    $v0, .L802B575C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li.u    $at, 0xFFFEFFFF
	li.l    $at, 0xFFFEFFFF
	lw      $t6, 0x00F4($t4)
	and     $t7, $t6, $at
	sw      $t7, 0x00F4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0150($t9)
	addiu   $t1, $t8, 0x0001
	sw      $t1, 0x0150($t9)
	jal     object_a_802B4184
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t2, 0x0144($t0)
	bne     $t2, $at, .L802B5754
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t3, 0x0013
	sw      $t3, 0x014C($t6)
.L802B5754:
	b       .L802B575C
	nop
.L802B575C:
	b       .L802B5780
	nop
.L802B5764:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B5780
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
.L802B5780:
	b       .L802B5788
	nop
.L802B5788:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802B5798(void) */
.globl object_a_802B5798
object_a_802B5798:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $t6, object_a_8033046C
	la.l    $t6, object_a_8033046C
	lh      $t7, 0x0000($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x001C($sp)
	la.u    $t8, object_a_80330470
	la.l    $t8, object_a_80330470
	lh      $t9, 0x0000($t8)
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	bnez    $t1, .L802B5844
	nop
	jal     object_a_802B53F4
	nop
	beqz    $v0, .L802B583C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, 0x001C($sp)
	swc1    $f16, 0x00B0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x0018($sp)
	swc1    $f18, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
.L802B583C:
	b       .L802B58A4
	nop
.L802B5844:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x0150($t8)
	bne     $t9, $at, .L802B5888
	nop
	jal     object_a_802B5444
	nop
	beqz    $v0, .L802B5880
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0150($t0)
.L802B5880:
	b       .L802B58A4
	nop
.L802B5888:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B58A4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
.L802B58A4:
	b       .L802B58AC
	nop
.L802B58AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802B58BC(void) */
.globl object_a_802B58BC
object_a_802B58BC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802B58FC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00F8($t9)
.L802B58FC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $s0, 0x0150($t0)
	beqz    $s0, .L802B5924
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B5980
	nop
	b       .L802B59B0
	nop
.L802B5924:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0017
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B5950
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x00F8($t1)
.L802B5950:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	blez    $t5, .L802B5978
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0150($t6)
.L802B5978:
	b       .L802B59B0
	nop
.L802B5980:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0018
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B59A8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x000B
	sw      $t9, 0x014C($t0)
.L802B59A8:
	b       .L802B59B0
	nop
.L802B59B0:
	b       .L802B59B8
	nop
.L802B59B8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802B59CC(void) */
.globl object_a_802B59CC
object_a_802B59CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(hud+0x06)
	lh      $t6, %lo(hud+0x06)($t6)
	slti    $at, $t6, 0x0004
	beqz    $at, .L802B59FC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	b       .L802B5A34
	sh      $t7, 0x0108($t8)
.L802B59FC:
	jal     o_script_80383CB4
	nop
	li      $at, 0x40400000
	mtc1    $at, $f4
	li      $at, 0x3F800000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t0, $f16
	nop
	sh      $t0, 0x0108($t1)
.L802B5A34:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0016
	jal     obj_lib_802A0008
	li      $a0, 0x0005
	beqz    $v0, .L802B5A88
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f18
	li      $at, 0x41200000
	mtc1    $at, $f4
	li      $t2, 0x0090
	li      $t3, 0x1000
	sw      $t3, 0x001C($sp)
	sw      $t2, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x00C8
	li      $a2, 0x00B4
	li      $a3, 0x40E00000
	swc1    $f18, 0x0014($sp)
	jal     object_c_8030CD30
	swc1    $f4, 0x0018($sp)
.L802B5A88:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B5AAC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0150($t4)
.L802B5AAC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	lh      $t9, 0x0108($t7)
	slt     $at, $t8, $t9
	bnez    $at, .L802B5AD4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
.L802B5AD4:
	b       .L802B5ADC
	nop
.L802B5ADC:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B5AEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802B5B3C
	nop
	jal     obj_lib_802A5288
	li      $a0, 0x000F
	beqz    $v0, .L802B5B34
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t8)
.L802B5B34:
	b       .L802B5B88
	nop
.L802B5B3C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0150($t1)
	bne     $t2, $at, .L802B5B80
	nop
	jal     obj_lib_802A5288
	li      $a0, 0x000E
	beqz    $v0, .L802B5B78
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t3)
.L802B5B78:
	b       .L802B5B88
	nop
.L802B5B80:
	jal     obj_lib_8029F4B4
	li      $a0, 0x000C
.L802B5B88:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t0, 0x001E($sp)
	lw      $t9, 0x00C8($t7)
	addu    $t8, $t9, $t0
	sw      $t8, 0x00C8($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x0018($sp)
	lw      $t2, 0x0154($t1)
	slt     $at, $t2, $t4
	bnez    $at, .L802B5BE0
	nop
	b       .L802B5BF0
	li      $v0, 0x0001
	b       .L802B5BE8
	nop
.L802B5BE0:
	b       .L802B5BF0
	move    $v0, $0
.L802B5BE8:
	b       .L802B5BF0
	nop
.L802B5BF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B5C00(void) */
.globl object_a_802B5C00
object_a_802B5C00:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x003F
	jal     object_a_802B5AEC
	li      $a1, 0x0200
	beqz    $v0, .L802B5C28
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802B5C28:
	b       .L802B5C30
	nop
.L802B5C30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B5C40(void) */
.globl object_a_802B5C40
object_a_802B5C40:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802B5C74
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
.L802B5C74:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x0150($t9)
	beqz    $s0, .L802B5CB4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B5CE8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B5E84
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802B5DB0
	nop
	b       .L802B5F28
	nop
.L802B5CB4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F8($t0)
	jal     obj_lib_802A5288
	li      $a0, 0x0012
	beqz    $v0, .L802B5CE0
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0150($t2)
.L802B5CE0:
	b       .L802B5F28
	nop
.L802B5CE8:
	li      $at, 0x42480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	jal     obj_lib_802A5288
	li      $a0, 0x0013
	beqz    $v0, .L802B5D94
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x00F8($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F8($t7)
	slti    $at, $t8, 0x0006
	bnez    $at, .L802B5D4C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x0150($t0)
.L802B5D4C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	slti    $at, $t2, 0x0002
	bnez    $at, .L802B5D94
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $a0, 0x0160($t3)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t3)
	slti    $at, $v0, 0x2001
	bnez    $at, .L802B5D94
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x0150($t6)
.L802B5D94:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0200
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t4)
	b       .L802B5F28
	nop
.L802B5DB0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F8($t7)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0015
	li      $at, 0x40400000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	la.u    $t0, o_13002528
	la.l    $t0, o_13002528
	li      $t9, 0x0096
	sw      $t9, 0x0018($sp)
	sw      $t0, 0x001C($sp)
	move    $a0, $0
	li      $a1, 0x0064
	li      $a2, -0x0032
	move    $a3, $0
	sw      $t8, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f8, 0x0010($sp)
	li      $at, 0x40400000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	la.u    $t3, o_13002528
	la.l    $t3, o_13002528
	li      $t2, 0x0096
	sw      $t2, 0x0018($sp)
	sw      $t3, 0x001C($sp)
	move    $a0, $0
	li      $a1, -0x0064
	li      $a2, -0x0032
	move    $a3, $0
	sw      $t1, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f10, 0x0010($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0xBF800000
	jal     obj_lib_8029E3E8
	addiu   $a0, $a0, 0x00B8
	beqz    $v0, .L802B5E74
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x0150($t6)
.L802B5E74:
	jal     obj_lib_8029FEA4
	nop
	b       .L802B5F28
	nop
.L802B5E84:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t4)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0014
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B5F18
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0002
	lw      $t8, 0x0144($t7)
	bne     $t8, $at, .L802B5ED4
	nop
	li      $t9, 0x000A
	b       .L802B5EDC
	sw      $t9, 0x0034($sp)
.L802B5ED4:
	li      $t0, 0x001E
	sw      $t0, 0x0034($sp)
.L802B5EDC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0034($sp)
	lw      $t2, 0x00F8($t1)
	slt     $at, $t3, $t2
	beqz    $at, .L802B5F04
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
.L802B5F04:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x00F8($t6)
	addiu   $t7, $t4, 0x0001
	sw      $t7, 0x00F8($t6)
.L802B5F18:
	jal     obj_lib_8029FEA4
	nop
	b       .L802B5F28
	nop
.L802B5F28:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, .L802B5F50
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000A
	sw      $t1, 0x014C($t2)
.L802B5F50:
	b       .L802B5F58
	nop
.L802B5F58:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_a_802B5F6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_130037EC
	la.l    $a0, o_130037EC
	jal     obj_lib_8029F9EC
	addiu   $a1, $sp, 0x0018
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L802B5FCC
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B5FCC
	nop
	lw      $t7, 0x001C($sp)
	li      $at, 0x00200000
	lw      $t8, 0x0134($t7)
	or      $t9, $t8, $at
	sw      $t9, 0x0134($t7)
	b       .L802B5FDC
	li      $v0, 0x0001
.L802B5FCC:
	b       .L802B5FDC
	move    $v0, $0
	b       .L802B5FDC
	nop
.L802B5FDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802B5FEC(void) */
.globl object_a_802B5FEC
object_a_802B5FEC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0002
	beqz    $at, .L802B6018
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
.L802B6018:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0150($t9)
	bnez    $t0, .L802B608C
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0002
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_a_802B41FC
	addiu   $a0, $a0, 0x00F8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, .L802B6084
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
.L802B6084:
	b       .L802B60A8
	nop
.L802B608C:
	jal     obj_lib_802A5288
	move    $a0, $0
	beqz    $v0, .L802B60A8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802B60A8:
	jal     object_a_802B5F6C
	nop
	beqz    $v0, .L802B6104
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0184($t9)
	addiu   $t1, $t0, -0x0001
	sw      $t1, 0x0184($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0184($t2)
	bgtz    $t3, .L802B60F4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t4, 0x0004
	b       .L802B6104
	sw      $t4, 0x014C($t6)
.L802B60F4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t7, 0x000C
	sw      $t7, 0x014C($t5)
.L802B6104:
	b       .L802B610C
	nop
.L802B610C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B611C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x01AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x017C($t7)
	bnez    $t8, .L802B6180
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0168($t1)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t1)
.L802B6180:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802B6190(void) */
.globl object_a_802B6190
object_a_802B6190:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01C0($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	beqz    $t8, .L802B61D4
	nop
	lb      $t9, 0x0004($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802B61D4
	nop
	li      $t1, 0x0001
	b       .L802B61D8
	sw      $t1, 0x002C($sp)
.L802B61D4:
	sw      $0, 0x002C($sp)
.L802B61D8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x00010000
	lw      $t3, 0x00F4($t2)
	or      $t4, $t3, $at
	sw      $t4, 0x00F4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $s0, 0x0150($t5)
	beqz    $s0, .L802B6230
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B62C0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B6344
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802B64E0
	nop
	b       .L802B6528
	nop
.L802B6230:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802B625C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00D0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00D8($t9)
.L802B625C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D0($t0)
	addiu   $t3, $t1, 0x0800
	sw      $t3, 0x00D0($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x00D8($t4)
	addiu   $t5, $t2, 0x0800
	sw      $t5, 0x00D8($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	andi    $t8, $t7, 0xFFFF
	bnez    $t8, .L802B62B0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x0150($t9)
	addiu   $t3, $t1, 0x0001
	sw      $t3, 0x0150($t9)
.L802B62B0:
	jal     object_a_802B611C
	nop
	b       .L802B6528
	nop
.L802B62C0:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0009
	jal     obj_lib_802A0008
	li      $a0, 0x000B
	beqz    $v0, .L802B6334
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t2, 0x0112($t0)
	sw      $t2, 0x00C8($t0)
	li      $at, 0x43160000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t4, 0x00FF
	sh      $t4, 0x01AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t1, 0x0150($t8)
	addiu   $t3, $t1, 0x0001
	b       .L802B633C
	sw      $t3, 0x0150($t8)
.L802B6334:
	jal     object_a_802B611C
	nop
.L802B633C:
	b       .L802B6528
	nop
.L802B6344:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00A4($t9)
	lwc1    $f8, 0x0168($t9)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802B6428
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x012C($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337ADC)
	lwc1    $f18, %lo(object_a_80337ADC)($at)
	lwc1    $f16, 0x00FC($t0)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802B6410
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x00E8($t5)
	lwc1    $f6, 0x0168($t5)
	jal     obj_lib_802A3634
	sub.s   $f12, $f4, $f6
	li      $at, 0x42C80000
	mtc1    $at, $f8
	nop
	c.lt.s  $f0, $f8
	nop
	bc1f    .L802B63F0
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0xC0A00000
	jal     obj_lib_8029E3E8
	addiu   $a0, $a0, 0x00B8
	b       .L802B6408
	nop
.L802B63F0:
	li      $at, 0x43160000
	mtc1    $at, $f12
	li      $at, 0x40000000
	mtc1    $at, $f14
	jal     obj_lib_8029E398
	nop
.L802B6408:
	b       .L802B6428
	nop
.L802B6410:
	li      $at, 0x43160000
	mtc1    $at, $f12
	li      $at, 0x40000000
	mtc1    $at, $f14
	jal     obj_lib_8029E398
	nop
.L802B6428:
	jal     object_a_802B5444
	nop
	beqz    $v0, .L802B64D0
	nop
	li      $at, 0x41200000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x012C($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t1, $t7, 0x0001
	sw      $t1, 0x0150($t6)
	lw      $t3, 0x002C($sp)
	bnez    $t3, .L802B6480
	nop
	jal     object_a_802B4184
	nop
	b       .L802B64A8
	nop
.L802B6480:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0002
	lw      $t9, 0x0144($t8)
	bne     $t9, $at, .L802B64A8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x000D
	sw      $t2, 0x014C($t0)
.L802B64A8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0001
	lw      $t4, 0x0144($t5)
	bne     $t4, $at, .L802B64D0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t7, 0x0013
	sw      $t7, 0x014C($t1)
.L802B64D0:
	jal     object_a_802B4AF4
	nop
	b       .L802B6528
	nop
.L802B64E0:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B6520
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li.u    $at, 0xFFFEFFFF
	li.l    $at, 0xFFFEFFFF
	lw      $t8, 0x00F4($t3)
	and     $t9, $t8, $at
	sw      $t9, 0x00F4($t3)
	jal     obj_lib_8029FEA4
	nop
.L802B6520:
	b       .L802B6528
	nop
.L802B6528:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $a0, str_object_a_1_sp
	la.l    $a0, str_object_a_1_sp
	lwc1    $f16, 0x00B8($t2)
	trunc.w.s $f18, $f16
	mfc1    $a1, $f18
	jal     obj_debug_802CA568
	nop
	b       .L802B6554
	nop
.L802B6554:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void object_a_802B6568(void) */
.globl object_a_802B6568
object_a_802B6568:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a1, object_a_80330474
	la.l    $a1, object_a_80330474
	jal     obj_lib_802A40B8
	lw      $a0, 0x0154($t6)
	beqz    $v0, .L802B659C
	nop
	li.u    $a0, 0x50030081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50030081
.L802B659C:
	jal     obj_lib_802A5288
	li      $a0, 0x000A
	beqz    $v0, .L802B65B8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
.L802B65B8:
	b       .L802B65C0
	nop
.L802B65C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B65D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, .L802B6614
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13001714
	la.l    $a2, o_13001714
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x007A
	lui     $at, %hi(camera_8032DF30)
	b       .L802B6640
	sw      $v0, %lo(camera_8032DF30)($at)
.L802B6614:
	lui     $a0, %hi(object)
	la.u    $a2, o_130016E4
	la.l    $a2, o_130016E4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00CC
	lui     $at, %hi(camera_8032DF30)
	sw      $v0, %lo(camera_8032DF30)($at)
	li.u    $a0, 0x80610081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x80610081
.L802B6640:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t0, %hi(camera_8032DF30)
	lw      $t0, %lo(camera_8032DF30)($t0)
	lw      $t9, 0x0118($t8)
	sw      $t9, 0x0118($t0)
	b       .L802B6660
	nop
.L802B6660:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B6670:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0010
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, .L802B66B0
	nop
	li      $at, 0xC3C80000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	b       .L802B66C8
	swc1    $f4, 0x00B8($t8)
.L802B66B0:
	li      $at, 0xC3480000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t9)
.L802B66C8:
	li      $at, 0x42C80000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x8000
	lh      $t2, 0x0112($t1)
	addu    $t3, $t2, $at
	sw      $t3, 0x00C8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
	b       .L802B6720
	nop
.L802B6720:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B6730:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sh      $t6, 0x01B0($t7)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_a_802B41FC
	addiu   $a0, $a0, 0x00F8
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802B677C
	nop
	li.u    $a0, 0x50030081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50030081
.L802B677C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, .L802B67BC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
.L802B67BC:
	b       .L802B67C4
	nop
.L802B67C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B67D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_802A5288
	li      $a0, 0x0011
	beqz    $v0, .L802B6844
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x442F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B6844
	nop
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $a1, 0x0160($t6)
	jal     obj_lib_802A11A8
	lw      $a0, 0x00C8($t7)
	slti    $at, $v0, 0x6001
	bnez    $at, .L802B6844
	nop
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
.L802B6844:
	jal     obj_lib_8029FEA4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00F8($t9)
	b       .L802B6868
	lw      $v0, 0x001C($sp)
	b       .L802B6868
	nop
.L802B6868:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B6878:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_80337AE0)
	ldc1    $f8, %lo(object_a_80337AE0)($at)
	lwc1    $f4, 0x002C($t6)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    .L802B68BC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0118($t7)
	addiu   $t9, $t8, 0x0080
	sw      $t9, 0x0118($t7)
.L802B68BC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337AE8)
	ldc1    $f18, %lo(object_a_80337AE8)($at)
	lwc1    $f10, 0x002C($t0)
	cvt.d.s $f16, $f10
	c.lt.d  $f18, $f16
	nop
	bc1f    .L802B6930
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337AF0)
	ldc1    $f8, %lo(object_a_80337AF0)($at)
	lwc1    $f4, 0x002C($t1)
	cvt.d.s $f6, $f4
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x002C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_a_80337AF8)
	ldc1    $f6, %lo(object_a_80337AF8)($at)
	lwc1    $f18, 0x0034($t2)
	cvt.d.s $f4, $f18
	sub.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	b       .L802B6980
	swc1    $f10, 0x0034($t2)
.L802B6930:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_a_80337B00)
	ldc1    $f4, %lo(object_a_80337B00)($at)
	lwc1    $f16, 0x0030($t3)
	cvt.d.s $f18, $f16
	sub.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0030($t3)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E4($t5)
.L802B6980:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	lwc1    $f18, 0x0030($t6)
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	c.lt.d  $f4, $f6
	nop
	bc1f    .L802B69B4
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0004($sp)
.L802B69B4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x00C8($t9)
	lw      $t0, 0x0118($t9)
	addu    $t1, $t7, $t0
	sw      $t1, 0x00C8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x017C($t2)
	slti    $at, $t3, 0x0003
	bnez    $at, .L802B69F8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	addiu   $t6, $t5, -0x0002
	sw      $t6, 0x017C($t4)
.L802B69F8:
	b       .L802B6A08
	lw      $v0, 0x0004($sp)
	b       .L802B6A08
	nop
.L802B6A08:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_a_802B6A10:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	mtc1    $0, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00E4($t8)
	b       .L802B6A68
	nop
.L802B6A68:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B6A78:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	slti    $at, $t7, 0x0002
	beqz    $at, .L802B6B48
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	bnez    $t9, .L802B6AD4
	nop
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SEQ_mute
	li      $a2, 0x0028
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00F8($t0)
.L802B6AD4:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $a2, %hi(object_a_80330478)
	li      $a0, 0x0002
	lw      $t4, 0x0144($t3)
	li      $a1, 0x0012
	move    $a3, $0
	sll     $t5, $t4, 1
	addu    $a2, $a2, $t5
	jal     obj_lib_802A4960
	lh      $a2, %lo(object_a_80330478)($a2)
	beqz    $v0, .L802B6B40
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F8($t6)
	li.u    $a0, 0x80600081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x80600081
	move    $a0, $0
	jal     Na_SEQ_unmute
	li      $a1, 0x003C
	move    $a0, $0
	jal     Na_SEQ_fadeout
	li      $a1, 0x0001
.L802B6B40:
	b       .L802B6B8C
	nop
.L802B6B48:
	jal     object_a_802B6878
	nop
	beqz    $v0, .L802B6B8C
	nop
	jal     object_a_802B6A10
	nop
	li      $a0, 0x0014
	li      $a1, 0x0074
	li      $a2, 0x3F800000
	jal     object_a_802AE0CC
	move    $a3, $0
	jal     object_a_802B65D0
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	li      $t9, 0x0001
	sw      $t9, 0x001C($sp)
.L802B6B8C:
	b       .L802B6B9C
	lw      $v0, 0x001C($sp)
	b       .L802B6B9C
	nop
.L802B6B9C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B6BAC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	slti    $at, $t7, 0x0002
	beqz    $at, .L802B6C90
	nop
	lui     $t8, %hi(hud+0x04)
	lh      $t8, %lo(hud+0x04)($t8)
	slti    $at, $t8, 0x0078
	beqz    $at, .L802B6BF0
	nop
	li      $t9, 0x0079
	b       .L802B6BF8
	sw      $t9, 0x001C($sp)
.L802B6BF0:
	li      $t0, 0x00A3
	sw      $t0, 0x001C($sp)
.L802B6BF8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	bnez    $t2, .L802B6C30
	nop
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SEQ_mute
	li      $a2, 0x0028
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F8($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x00F8($t3)
.L802B6C30:
	li      $a0, 0x0002
	li      $a1, 0x0012
	lw      $a2, 0x001C($sp)
	jal     obj_lib_802A4960
	move    $a3, $0
	beqz    $v0, .L802B6C88
	nop
	jal     obj_lib_802A04C0
	li      $a0, 0x0069
	move    $a0, $0
	jal     Na_SEQ_unmute
	li      $a1, 0x003C
	move    $a0, $0
	jal     Na_SEQ_fadeout
	li      $a1, 0x0001
	jal     object_a_802B65D0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F8($t6)
.L802B6C88:
	b       .L802B6CD0
	nop
.L802B6C90:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x017C($t9)
	slti    $at, $t0, 0x0005
	bnez    $at, .L802B6CC0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x017C($t1)
	addiu   $t4, $t2, -0x0004
	b       .L802B6CD0
	sw      $t4, 0x017C($t1)
.L802B6CC0:
	jal     object_a_802B6A10
	nop
	li      $t5, 0x0001
	sw      $t5, 0x0020($sp)
.L802B6CD0:
	b       .L802B6CE0
	lw      $v0, 0x0020($sp)
	b       .L802B6CE0
	nop
.L802B6CE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802B6CF0(void) */
.globl object_a_802B6CF0
object_a_802B6CF0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	sltiu   $at, $t7, 0x000C
	beqz    $at, L802B6E28
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337B08)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337B08)($at)
	jr      $t7
	nop
.globl L802B6D28
L802B6D28:
	jal     object_a_802B6670
	nop
	b       L802B6E28
	nop
.globl L802B6D38
L802B6D38:
	jal     object_a_802B6730
	nop
	b       L802B6E28
	nop
.globl L802B6D48
L802B6D48:
	jal     object_a_802B67D4
	nop
	beqz    $v0, .L802B6DB8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t0, 0x0144($t9)
	bne     $t0, $at, .L802B6D90
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000A
	b       .L802B6DB8
	sw      $t1, 0x0150($t2)
.L802B6D90:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0074($t3)
	ori     $t5, $t4, 0x0080
	sh      $t5, 0x0074($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0150($t6)
.L802B6DB8:
	b       L802B6E28
	nop
.globl L802B6DC0
L802B6DC0:
	jal     object_a_802B6A78
	nop
	beqz    $v0, .L802B6DE4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0150($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0150($t9)
.L802B6DE4:
	b       L802B6E28
	nop
.globl L802B6DEC
L802B6DEC:
	b       L802B6E28
	nop
.globl L802B6DF4
L802B6DF4:
	jal     object_a_802B6BAC
	nop
	beqz    $v0, .L802B6E18
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0150($t2)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t2)
.L802B6E18:
	b       L802B6E28
	nop
.globl L802B6E20
L802B6E20:
	b       L802B6E28
	nop
.globl L802B6E28
L802B6E28:
	b       .L802B6E30
	nop
.L802B6E30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B6E40:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lh      $t7, 0x0112($t6)
	addu    $t8, $t7, $at
	sh      $t8, 0x0006($sp)
	lhu     $t9, 0x0006($sp)
	mtc1    $a1, $f6
	lui     $at, %hi(math_cos)
	sra     $t0, $t9, 4
	cvt.s.w $f8, $f6
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f10, $f4, $f8
	trunc.w.s $f16, $f10
	mfc1    $t3, $f16
	nop
	sw      $t3, 0x0114($a0)
	lhu     $t4, 0x0006($sp)
	mtc1    $a1, $f4
	lui     $at, %hi(math_sin)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	cvt.s.w $f8, $f4
	addu    $at, $at, $t6
	lwc1    $f18, %lo(math_sin)($at)
	neg.s   $f6, $f18
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t8, $f16
	nop
	sw      $t8, 0x011C($a0)
	b       .L802B6ED8
	nop
.L802B6ED8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void object_a_802B6EE0(void) */
.globl object_a_802B6EE0
object_a_802B6EE0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13001920
	jal     obj_lib_8029F95C
	la.l    $a0, o_13001920
	sw      $v0, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lh      $t7, 0x0112($t6)
	addu    $t8, $t7, $at
	sh      $t8, 0x002A($sp)
	lw      $t9, 0x002C($sp)
	bnez    $t9, .L802B6F2C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       .L802B70FC
	sw      $0, 0x014C($t0)
.L802B6F2C:
	sw      $0, 0x0020($sp)
	li      $t1, 0x0001
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x0020($sp)
	lui     $t4, %hi(object_a_80330480+2*2)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 1
	addu    $t4, $t4, $t3
	lh      $t4, %lo(object_a_80330480+2*2)($t4)
	beqz    $t4, .L802B70C4
	nop
.L802B6F5C:
	lw      $t7, 0x0020($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	lui     $t9, %hi(object_a_80330480+2*2)
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_80330480+2*2)($t9)
	lw      $t6, 0x0154($t5)
	slt     $at, $t6, $t9
	beqz    $at, .L802B7094
	nop
	lw      $t0, 0x0020($sp)
	lui     $t2, %hi(object_a_80330480+2*1)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 1
	addu    $t2, $t2, $t1
	lh      $t2, %lo(object_a_80330480+2*1)($t2)
	sh      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	lui     $t5, %hi(object_a_80330480+2*0)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 1
	addu    $t5, $t5, $t4
	lh      $t5, %lo(object_a_80330480+2*0)($t5)
	blez    $t5, .L802B701C
	nop
	lw      $t7, 0x0020($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	lui     $t6, %hi(object_a_80330480+2*2)
	addu    $t6, $t6, $t8
	lh      $t6, %lo(object_a_80330480+2*2)($t6)
	lw      $t0, 0x0154($t9)
	lh      $t3, 0x0028($sp)
	subu    $t1, $t6, $t0
	addiu   $t2, $t1, -0x0001
	multu   $t2, $t3
	mflo    $t4
	sh      $t4, 0x0028($sp)
	b       .L802B705C
	nop
.L802B701C:
	lw      $t8, 0x0020($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	lui     $t6, %hi(object_a_80330480+2*(3*-1+2))
	addu    $t6, $t6, $t9
	lh      $t6, %lo(object_a_80330480+2*(3*-1+2))($t6)
	lw      $t7, 0x0154($t5)
	lh      $t1, 0x0028($sp)
	subu    $t0, $t7, $t6
	multu   $t0, $t1
	mflo    $t2
	sh      $t2, 0x0028($sp)
	nop
.L802B705C:
	lw      $a0, 0x002C($sp)
	jal     object_a_802B6E40
	lh      $a1, 0x0028($sp)
	lh      $t3, 0x0028($sp)
	beqz    $t3, .L802B7088
	nop
	lw      $a1, 0x002C($sp)
	li.u    $a0, 0x41150001
	li.l    $a0, 0x41150001
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802B7088:
	sw      $0, 0x001C($sp)
	b       .L802B70C4
	nop
.L802B7094:
	lw      $t4, 0x0020($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	lui     $t7, %hi(object_a_80330480+2*2)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t7, $t7, $t9
	lh      $t7, %lo(object_a_80330480+2*2)($t7)
	bnez    $t7, .L802B6F5C
	nop
.L802B70C4:
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L802B70FC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	lw      $t1, 0x002C($sp)
	sw      $0, 0x0114($t1)
	lw      $t2, 0x002C($sp)
	sw      $0, 0x011C($t2)
	lw      $t3, 0x002C($sp)
	sw      $0, 0x00D0($t3)
	lw      $t4, 0x002C($sp)
	sw      $0, 0x00D8($t4)
.L802B70FC:
	jal     obj_lib_8029FEA4
	nop
	b       .L802B710C
	nop
.L802B710C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_a_802B711C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, .L802B71CC
	nop
	li      $at, 0x0013
	beq     $t7, $at, .L802B71CC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0168($t8)
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    .L802B7174
	nop
	jr      $ra
	li      $v0, 0x0001
.L802B7174:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L802B71CC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lh      $t3, 0x01B8($t2)
	bne     $t3, $at, .L802B71AC
	nop
	jr      $ra
	li      $v0, 0x0001
.L802B71AC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x000A
	lh      $t5, 0x01B8($t4)
	bne     $t5, $at, .L802B71CC
	nop
	jr      $ra
	li      $v0, 0x0001
.L802B71CC:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802B71E4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0214($t6)
	beqz    $t7, .L802B720C
	sw      $t7, 0x0020($sp)
	move    $a0, $0
	jal     obj_physics_802C8BC8
	lw      $a1, 0x0020($sp)
.L802B720C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x010E($t8)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_803304C8
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_803304C8
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	jal     object_a_802B711C
	nop
	beqz    $v0, .L802B7254
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
.L802B7254:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x00A0($t1)
	lwc1    $f14, 0x00A4($t1)
	jal     map_80381900
	lw      $a2, 0x00A8($t1)
	swc1    $f0, 0x001C($sp)
	lw      $t2, 0x0024($sp)
	beqz    $t2, .L802B72A4
	nop
	lw      $t3, 0x002C($t2)
	beqz    $t3, .L802B72A4
	nop
	lw      $t4, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x002C($t4)
	b       .L802B72B0
	sw      $t5, 0x0214($t6)
.L802B72A4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0214($t7)
.L802B72B0:
	la.u    $a0, object_a_80330518
	jal     obj_sfx_802CA040
	la.l    $a0, object_a_80330518
	b       .L802B72C4
	nop
.L802B72C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B72D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li.u    $at, 0xFFFDFFFF
	li.l    $at, 0xFFFDFFFF
	lw      $t7, 0x00F4($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x00F4($t6)
	jal     obj_lib_802A05B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $s0, 0x010E($t9)
	beqz    $s0, .L802B7338
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B736C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B73A0
	nop
	b       .L802B73A8
	nop
.L802B7338:
	li.u    $a0, 0x50050081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50050081
	li      $a0, 0x0003
	jal     obj_lib_802A01D8
	li      $a1, 0x0001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x010E($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x010E($t0)
	b       .L802B73A8
	nop
.L802B736C:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802B7398
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0002
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x010E($t3)
	addiu   $t5, $t4, 0x0001
	sh      $t5, 0x010E($t3)
.L802B7398:
	b       .L802B73A8
	nop
.L802B73A0:
	b       .L802B73A8
	nop
.L802B73A8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00EC($t7)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x00C4($t8)
	sh      $t6, 0x010A($t9)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0118($t1)
	sh      $t2, 0x010C($t0)
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x00C8($t4)
	sw      $t5, 0x00C8($t3)
	b       .L802B7404
	nop
.L802B7404:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B7418:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x010E($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     obj_lib_802A0380
	li      $a2, 0x0001
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_a_80337B38)
	ldc1    $f8, %lo(object_a_80337B38)($at)
	lh      $t8, 0x010C($t7)
	lui     $at, %hi(object_a_80337B40)
	ldc1    $f16, %lo(object_a_80337B40)($at)
	mtc1    $t8, $f4
	nop
	cvt.d.w $f6, $f4
	div.d   $f10, $f6, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x001C($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802B74A0
	nop
	lwc1    $f10, 0x001C($sp)
	neg.s   $f16, $f10
	swc1    $f16, 0x001C($sp)
.L802B74A0:
	li      $at, 0x42B40000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($sp)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L802B74DC
	nop
	lwc1    $f6, 0x001C($sp)
	li      $at, 0x40040000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x001C($sp)
.L802B74DC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x001C($sp)
	lhu     $t0, 0x010A($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x001C($sp)
	lhu     $t4, 0x010A($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	neg.s   $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B0($t3)
	jal     obj_lib_802A05B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	lw      $t0, 0x006C($t8)
	sw      $t7, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x006C($t1)
	sw      $0, 0x0154($t2)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t4, 0x006C($t9)
	sw      $0, 0x0150($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0150($t6)
	b       .L802B7594
	nop
.L802B7594:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B75A4
object_a_802B75A4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A8($t6)
	lwc1    $f8, 0x00A0($t6)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	mtc1    $0, $f4
	lwc1    $f18, 0x00A8($t8)
	lwc1    $f8, 0x00A0($t8)
	sub.s   $f12, $f16, $f18
	jal     atan2
	sub.s   $f14, $f4, $f8
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $v0, 0x0112($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x00C8($t0)
	jal     obj_lib_802A11A8
	lw      $a1, 0x0160($t0)
	sh      $v0, 0x0026($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $a0, 0x00C8($t1)
	jal     obj_lib_802A11A8
	lh      $a1, 0x0112($t1)
	sh      $v0, 0x0024($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0100
	lw      $t3, 0x00F4($t2)
	and     $t4, $t3, $at
	sw      $t4, 0x00F4($t2)
	lh      $t5, 0x0026($sp)
	slti    $at, $t5, 0x2000
	beqz    $at, .L802B767C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	ori     $t8, $t7, 0x0002
	sw      $t8, 0x00F4($t6)
.L802B767C:
	lh      $t9, 0x0024($sp)
	slti    $at, $t9, 0x3800
	beqz    $at, .L802B76A0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	ori     $t3, $t1, 0x0004
	sw      $t3, 0x00F4($t0)
.L802B76A0:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f6, 0x00FC($t4)
	c.lt.s  $f6, $f10
	nop
	bc1f    .L802B76D8
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t5, 0x00F4($t2)
	ori     $t7, $t5, 0x0010
	sw      $t7, 0x00F4($t2)
.L802B76D8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337B48)
	lwc1    $f18, %lo(object_a_80337B48)($at)
	lwc1    $f16, 0x015C($t8)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802B7710
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x00F4($t6)
	ori     $t1, $t9, 0x0008
	sw      $t1, 0x00F4($t6)
.L802B7710:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $s0, 0x0124($t3)
	beqz    $s0, .L802B7750
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B7760
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B7770
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802B7780
	nop
	b       .L802B7790
	nop
.L802B7750:
	jal     object_a_802B71E4
	nop
	b       .L802B7790
	nop
.L802B7760:
	jal     object_a_802B72D4
	nop
	b       .L802B7790
	nop
.L802B7770:
	jal     object_a_802B7418
	nop
	b       .L802B7790
	nop
.L802B7780:
	jal     object_a_802B7418
	nop
	b       .L802B7790
	nop
.L802B7790:
	jal     obj_lib_802A4F58
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0004
	lw      $t4, 0x014C($t0)
	beq     $t4, $at, .L802B785C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x017C($t5)
	lh      $t2, 0x01AC($t5)
	beq     $t7, $t2, .L802B785C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AC($t8)
	lw      $t1, 0x017C($t8)
	slt     $at, $t1, $t9
	beqz    $at, .L802B7828
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t3, 0x017C($t6)
	addiu   $t0, $t3, 0x0014
	sw      $t0, 0x017C($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	slti    $at, $t5, 0x0100
	bnez    $at, .L802B7820
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t7, 0x00FF
	sw      $t7, 0x017C($t2)
.L802B7820:
	b       .L802B785C
	nop
.L802B7828:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x017C($t8)
	addiu   $t1, $t9, -0x0014
	sw      $t1, 0x017C($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t0, 0x017C($t3)
	bgez    $t0, .L802B785C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x017C($t6)
.L802B785C:
	b       .L802B7864
	nop
.L802B7864:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B7878
object_a_802B7878:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sh      $t6, 0x0110($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x00FF
	sw      $t8, 0x017C($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x00FF
	sh      $t0, 0x01AC($t1)
	lui     $t2, %hi(stage_index)
	lh      $t2, %lo(stage_index)($t2)
	li      $at, 0x0021
	bne     $t2, $at, .L802B78D0
	nop
	li      $t3, 0x0001
	b       .L802B78F4
	sw      $t3, 0x001C($sp)
.L802B78D0:
	lui     $t4, %hi(stage_index)
	lh      $t4, %lo(stage_index)($t4)
	li      $at, 0x0022
	bne     $t4, $at, .L802B78F0
	nop
	li      $t5, 0x0002
	b       .L802B78F4
	sw      $t5, 0x001C($sp)
.L802B78F0:
	sw      $0, 0x001C($sp)
.L802B78F4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sw      $t6, 0x0144($t7)
	lw      $t8, 0x001C($sp)
	lui     $t9, %hi(object_a_803305F0)
	lui     $t0, %hi(object)
	addu    $t9, $t9, $t8
	lb      $t9, %lo(object_a_803305F0)($t9)
	lw      $t0, %lo(object)($t0)
	sh      $t9, 0x01B2($t0)
	lw      $t1, 0x001C($sp)
	lui     $t2, %hi(object_a_803305F4)
	lui     $t3, %hi(object)
	addu    $t2, $t2, $t1
	lb      $t2, %lo(object_a_803305F4)($t2)
	lw      $t3, %lo(object)($t3)
	sw      $t2, 0x0184($t3)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A1930
	li      $a1, 0x0004
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0005
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x01AE($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x01B0($t7)
	b       .L802B797C
	nop
.L802B797C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl s_object_a_802B798C
s_object_a_802B798C:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802B7A00
	nop
	lui     $t7, %hi(shape_object)
	lw      $t7, %lo(shape_object)($t7)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x006C($t8)
	beqz    $t9, .L802B7A00
	nop
	lui     $t0, %hi(shape_camera)
	lw      $t0, %lo(shape_camera)($t0)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0068($sp)
	jal     obj_lib_8029DE80
	lw      $a2, 0x0034($t0)
	lw      $t1, 0x001C($sp)
	addiu   $a0, $sp, 0x0020
	jal     obj_lib_8029DCD4
	lw      $a1, 0x006C($t1)
	lw      $t2, 0x001C($sp)
	jal     obj_lib_8029F188
	lw      $a0, 0x006C($t2)
.L802B7A00:
	b       .L802B7A10
	move    $v0, $0
	b       .L802B7A10
	nop
.L802B7A10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

object_a_802B7A20:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lw      $a0, 0x00C8($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x0160($t6)
	sh      $v0, 0x001A($sp)
	lw      $t7, 0x0024($sp)
	lh      $t8, 0x001E($t7)
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	sltiu   $at, $t9, 0x000A
	beqz    $at, L802B7C24
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_a_80337B4C)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_a_80337B4C)($at)
	jr      $t9
	nop
.globl L802B7A78
L802B7A78:
	lh      $t0, 0x001A($sp)
	slti    $at, $t0, 0x2001
	bnez    $at, .L802B7AC0
	nop
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0118($t1)
	blez    $t2, .L802B7AA4
	nop
	lw      $t4, 0x0024($sp)
	li      $t3, 0x0005
	sh      $t3, 0x001E($t4)
.L802B7AA4:
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0118($t5)
	bgez    $t6, .L802B7AC0
	nop
	lw      $t8, 0x0024($sp)
	li      $t7, 0x0003
	sh      $t7, 0x001E($t8)
.L802B7AC0:
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x01AE($t9)
	slti    $at, $t0, 0x0033
	bnez    $at, .L802B7AE0
	nop
	lw      $t2, 0x0024($sp)
	li      $t1, 0x0001
	sh      $t1, 0x001E($t2)
.L802B7AE0:
	b       .L802B7C2C
	nop
.globl L802B7AE8
L802B7AE8:
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x01AE($t3)
	slti    $at, $t4, 0x0003
	bnez    $at, .L802B7B08
	nop
	lw      $t6, 0x0024($sp)
	li      $t5, 0x0002
	sh      $t5, 0x001E($t6)
.L802B7B08:
	b       .L802B7C2C
	nop
.globl L802B7B10
L802B7B10:
	lw      $t7, 0x0020($sp)
	lh      $t8, 0x01AE($t7)
	slti    $at, $t8, 0x0003
	bnez    $at, .L802B7B30
	nop
	lw      $t0, 0x0024($sp)
	li      $t9, 0x0009
	sh      $t9, 0x001E($t0)
.L802B7B30:
	b       .L802B7C2C
	nop
.globl L802B7B38
L802B7B38:
	lw      $t1, 0x0020($sp)
	lh      $t2, 0x01AE($t1)
	slti    $at, $t2, 0x0003
	bnez    $at, .L802B7B54
	nop
	lw      $t3, 0x0024($sp)
	sh      $0, 0x001E($t3)
.L802B7B54:
	b       .L802B7C2C
	nop
.globl L802B7B5C
L802B7B5C:
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x01AE($t4)
	slti    $at, $t5, 0x0003
	bnez    $at, .L802B7B94
	nop
	lw      $t7, 0x0024($sp)
	li      $t6, 0x0006
	sh      $t6, 0x001E($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0118($t8)
	bgtz    $t9, .L802B7B94
	nop
	lw      $t0, 0x0024($sp)
	sh      $0, 0x001E($t0)
.L802B7B94:
	b       .L802B7C2C
	nop
.globl L802B7B9C
L802B7B9C:
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0118($t1)
	bgtz    $t2, .L802B7BB8
	nop
	lw      $t4, 0x0024($sp)
	li      $t3, 0x0005
	sh      $t3, 0x001E($t4)
.L802B7BB8:
	b       .L802B7C2C
	nop
.globl L802B7BC0
L802B7BC0:
	lw      $t5, 0x0020($sp)
	lh      $t6, 0x01AE($t5)
	slti    $at, $t6, 0x0003
	bnez    $at, .L802B7BF8
	nop
	lw      $t8, 0x0024($sp)
	li      $t7, 0x0004
	sh      $t7, 0x001E($t8)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x0118($t9)
	bltz    $t0, .L802B7BF8
	nop
	lw      $t1, 0x0024($sp)
	sh      $0, 0x001E($t1)
.L802B7BF8:
	b       .L802B7C2C
	nop
.globl L802B7C00
L802B7C00:
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0118($t2)
	bltz    $t3, .L802B7C1C
	nop
	lw      $t5, 0x0024($sp)
	li      $t4, 0x0003
	sh      $t4, 0x001E($t5)
.L802B7C1C:
	b       .L802B7C2C
	nop
.globl L802B7C24
L802B7C24:
	lw      $t6, 0x0024($sp)
	sh      $0, 0x001E($t6)
.L802B7C2C:
	lw      $t7, 0x0024($sp)
	lw      $t9, 0x001C($sp)
	lh      $t8, 0x001E($t7)
	beq     $t8, $t9, .L802B7C4C
	nop
	lw      $t1, 0x0020($sp)
	li      $t0, -0x0001
	sh      $t0, 0x01AE($t1)
.L802B7C4C:
	b       .L802B7C54
	nop
.L802B7C54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl s_object_a_802B7C64
s_object_a_802B7C64:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(shape_object)
	lw      $t6, %lo(shape_object)($t6)
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x003C($sp)
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x0038($sp)
	li      $at, 0x0001
	bne     $t8, $at, .L802B7D20
	nop
	lui     $t9, %hi(shape_hand)
	lw      $t9, %lo(shape_hand)($t9)
	beqz    $t9, .L802B7CC0
	nop
	lui     $t0, %hi(shape_hand)
	lw      $t0, %lo(shape_hand)($t0)
	lw      $t1, 0x001C($t0)
	sw      $t1, 0x002C($sp)
.L802B7CC0:
	lw      $t2, 0x002C($sp)
	lh      $t3, 0x01B0($t2)
	move    $s0, $t3
	beqz    $s0, .L802B7CE8
	sh      $t3, 0x0036($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L802B7CFC
	nop
	b       .L802B7D10
	nop
.L802B7CE8:
	lw      $a0, 0x002C($sp)
	jal     object_a_802B7A20
	lw      $a1, 0x0028($sp)
	b       .L802B7D10
	nop
.L802B7CFC:
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0002
	sh      $t4, 0x001E($t5)
	b       .L802B7D10
	nop
.L802B7D10:
	lw      $t6, 0x002C($sp)
	lh      $t7, 0x01AE($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x01AE($t6)
.L802B7D20:
	b       .L802B7D30
	move    $v0, $0
	b       .L802B7D30
	nop
.L802B7D30:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl s_object_a_802B7D44
s_object_a_802B7D44:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $0, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802B7E48
	nop
	lui     $t7, %hi(shape_object)
	lw      $t7, %lo(shape_object)($t7)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0034($sp)
	sw      $t8, 0x0020($sp)
	lui     $t9, %hi(shape_hand)
	lw      $t9, %lo(shape_hand)($t9)
	beqz    $t9, .L802B7DA0
	nop
	lui     $t0, %hi(shape_hand)
	lw      $t0, %lo(shape_hand)($t0)
	lw      $t1, 0x001C($t0)
	sw      $t1, 0x0024($sp)
.L802B7DA0:
	lw      $t2, 0x0024($sp)
	li      $at, 0x00FF
	lw      $t3, 0x017C($t2)
	bne     $t3, $at, .L802B7DCC
	nop
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x0002($t4)
	andi    $t6, $t5, 0x00FF
	ori     $t7, $t6, 0x0100
	b       .L802B7DE0
	sh      $t7, 0x0002($t4)
.L802B7DCC:
	lw      $t8, 0x0020($sp)
	lh      $t9, 0x0002($t8)
	andi    $t0, $t9, 0x00FF
	ori     $t1, $t0, 0x0500
	sh      $t1, 0x0002($t8)
.L802B7DE0:
	jal     gfx_alloc
	li      $a0, 0x0010
	sw      $v0, 0x002C($sp)
	lw      $t2, 0x002C($sp)
	sw      $t2, 0x0028($sp)
	lw      $t3, 0x0024($sp)
	lh      $t5, 0x01B2($t3)
	beqz    $t5, .L802B7E2C
	nop
	lw      $t6, 0x0028($sp)
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x0028($sp)
	sw      $t6, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $t4, 0xB6000000
	sw      $t4, 0x0000($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x00020000
	sw      $t0, 0x0004($t1)
.L802B7E2C:
	lw      $t8, 0x0028($sp)
	sw      $t8, 0x0018($sp)
	lw      $t3, 0x0018($sp)
	li      $t2, 0xB8000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0018($sp)
	sw      $0, 0x0004($t5)
.L802B7E48:
	b       .L802B7E58
	lw      $v0, 0x002C($sp)
	b       .L802B7E58
	nop
.L802B7E58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void object_a_802B7E68(void) */
.globl object_a_802B7E68
object_a_802B7E68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13001850
	jal     obj_lib_8029F95C
	la.l    $a0, o_13001850
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $a1, %hi(object_a_803305F8+0x00)
	lw      $t8, 0x0144($t7)
	move    $a0, $t7
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $a1, $a1, $t9
	jal     obj_lib_802A44F4
	lw      $a1, %lo(object_a_803305F8+0x00)($a1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	beqz    $t1, .L802B7ED8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
.L802B7ED8:
	b       .L802B7EE0
	nop
.L802B7EE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802B7EF0(void) */
.globl object_a_802B7EF0
object_a_802B7EF0:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	sw      $t7, 0x0000($sp)
	lw      $t8, 0x0000($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t8)
	bne     $t9, $t0, .L802B7F54
	nop
	lw      $t1, 0x0000($sp)
	li      $at, 0x000D
	lw      $t2, 0x014C($t1)
	bne     $t2, $at, .L802B7F54
	nop
	lw      $t3, 0x00F4($t1)
	li      $at, 0x00010000
	and     $t4, $t3, $at
	beqz    $t4, .L802B7F54
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
.L802B7F54:
	lw      $t7, 0x0000($sp)
	li      $at, 0x0001
	lw      $t8, 0x0184($t7)
	bne     $t8, $at, .L802B7F94
	nop
	lw      $t9, 0x014C($t7)
	li      $at, 0x0003
	beq     $t9, $at, .L802B7F84
	nop
	lw      $t0, 0x0124($t7)
	beqz    $t0, .L802B7F94
	nop
.L802B7F84:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t2, 0x0001
	sw      $t2, 0x0150($t1)
.L802B7F94:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	bnez    $t4, .L802B7FB8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       .L802B8014
	sw      $0, 0x00FC($t5)
.L802B7FB8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t6, object_8033D280
	la.l    $t6, object_8033D280
	lh      $t8, 0x004C($t6)
	lw      $t0, 0x0144($t7)
	lw      $t3, 0x00FC($t7)
	addiu   $t9, $t8, 0x0014
	addiu   $t2, $t0, -0x0001
	multu   $t9, $t2
	mflo    $t1
	slt     $at, $t1, $t3
	beqz    $at, .L802B8000
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802B8000:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00FC($t6)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x00FC($t6)
.L802B8014:
	b       .L802B801C
	nop
.L802B801C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void object_a_802B8024(void) */
.globl object_a_802B8024
object_a_802B8024:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	sw      $t7, 0x0018($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	beqz    $t9, .L802B805C
	nop
	li      $at, 0x0016
	bne     $t9, $at, .L802B8068
	nop
.L802B805C:
	li.u    $a0, 0x31628081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x31628081
.L802B8068:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0016
	beqz    $at, .L802B80B4
	nop
	jal     camera_8027F8B8
	li      $a0, 0x000A
	li      $at, 0x41000000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	b       .L802B80CC
	swc1    $f6, 0x00E4($t3)
.L802B80B4:
	li      $at, 0xC0800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t4)
.L802B80CC:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	andi    $t7, $t6, 0x0001
	bnez    $t7, .L802B8340
	nop
	slti    $at, $t6, 0x000E
	beqz    $at, .L802B8340
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $t8, object_8033D280
	la.l    $t8, object_8033D280
	lw      $t2, 0x0144($t1)
	lui     $t4, %hi(object_a_803305F8+0x08)
	lh      $t9, 0x0042($t8)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t4, $t4, $t3
	lh      $t4, %lo(object_a_803305F8+0x08)($t4)
	sll     $t0, $t9, 8
	addu    $t5, $t0, $t4
	sh      $t5, 0x0022($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0154($t7)
	bgez    $t6, .L802B8148
	sra     $t8, $t6, 1
	addiu   $at, $t6, 0x0001
	sra     $t8, $at, 1
.L802B8148:
	subu    $t9, $0, $t8
	sll     $t1, $t9, 3
	addu    $t1, $t1, $t9
	sll     $t1, $t1, 4
	addu    $t1, $t1, $t9
	sll     $t1, $t1, 1
	addiu   $t2, $t1, 0x06CC
	mtc1    $t2, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x001C($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	addiu   $a0, $sp, 0x0024
	jal     object_a_802B98D4
	addiu   $a1, $a1, 0x00A0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t3, 0x0022($sp)
	lui     $t1, %hi(object_a_803305F8+0x04)
	lw      $t8, 0x0144($t6)
	addiu   $t0, $t3, 0x14B0
	andi    $t4, $t0, 0xFFFF
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t1, $t1, $t9
	sra     $t5, $t4, 4
	lh      $t1, %lo(object_a_803305F8+0x04)($t1)
	sll     $t7, $t5, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_sin)($at)
	lwc1    $f4, 0x001C($sp)
	mtc1    $t1, $f8
	mul.s   $f6, $f18, $f4
	cvt.s.w $f10, $f8
	add.s   $f16, $f6, $f10
	swc1    $f16, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t2, 0x0022($sp)
	lui     $t1, %hi(object_a_803305F8+0x06)
	lw      $t8, 0x0144($t7)
	addiu   $t3, $t2, 0x14B0
	andi    $t0, $t3, 0xFFFF
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t1, $t1, $t9
	sra     $t4, $t0, 4
	lh      $t1, %lo(object_a_803305F8+0x06)($t1)
	sll     $t5, $t4, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t5
	lwc1    $f18, %lo(math_cos)($at)
	lwc1    $f4, 0x001C($sp)
	mtc1    $t1, $f6
	mul.s   $f8, $f18, $f4
	cvt.s.w $f10, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A8($t7)
	lui     $at, %hi(object_a_80337B74)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f18, %lo(object_a_80337B74)($at)
	swc1    $f18, 0x00A4($t6)
	li      $a0, 0x0004
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42C80000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t2, 0x0022($sp)
	lui     $t7, %hi(object_a_803305F8+0x04)
	lw      $t9, 0x0144($t8)
	addiu   $t3, $t2, -0x14B0
	andi    $t0, $t3, 0xFFFF
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 2
	addu    $t7, $t7, $t1
	sra     $t4, $t0, 4
	lh      $t7, %lo(object_a_803305F8+0x04)($t7)
	sll     $t5, $t4, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f6, 0x001C($sp)
	mtc1    $t7, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x00A0($t8)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x0022($sp)
	lui     $t7, %hi(object_a_803305F8+0x06)
	lw      $t9, 0x0144($t5)
	addiu   $t2, $t6, -0x14B0
	andi    $t3, $t2, 0xFFFF
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 2
	addu    $t7, $t7, $t1
	sra     $t0, $t3, 4
	lh      $t7, %lo(object_a_803305F8+0x06)($t7)
	sll     $t4, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f6, 0x001C($sp)
	mtc1    $t7, $f8
	mul.s   $f10, $f4, $f6
	cvt.s.w $f16, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t5)
	li      $a0, 0x0004
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42C80000
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x0024
	jal     object_a_802B98D4
	addiu   $a0, $a0, 0x00A0
.L802B8340:
	jal     obj_lib_802A2644
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t6, 0x0154($t8)
	slti    $at, $t6, 0x012D
	bnez    $at, .L802B836C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B836C:
	b       .L802B8374
	nop
.L802B8374:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802B8384
object_a_802B8384:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_8033067C
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_8033067C
	b       .L802B83A0
	nop
.L802B83A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B83B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $a0, %hi(object)
	la.u    $a2, o_1300127C
	la.l    $a2, o_1300127C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	jal     obj_lib_8029EEB8
	li      $a3, 0x3F800000
	jal     o_script_80383CB4
	nop
	lui     $at, %hi(object_a_80337B78)
	ldc1    $f6, %lo(object_a_80337B78)($at)
	cvt.d.s $f4, $f0
	c.lt.d  $f4, $f6
	nop
	bc1f    .L802B841C
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000940
	la.l    $a2, o_13000940
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0074
.L802B841C:
	b       .L802B8424
	nop
.L802B8424:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B8434:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slt     $at, $a0, $t7
	beqz    $at, .L802B8454
	nop
	jr      $ra
	li      $v0, 0x0001
.L802B8454:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lh      $t9, 0x01B8($t8)
	bne     $t9, $at, .L802B8474
	nop
	jr      $ra
	li      $v0, 0x0001
.L802B8474:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x000A
	lh      $t1, 0x01B8($t0)
	bne     $t1, $at, .L802B8494
	nop
	jr      $ra
	li      $v0, 0x0001
.L802B8494:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B84AC
object_a_802B84AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F0($t8)
	jal     rand
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	jal     o_script_80383CB4
	nop
	lui     $at, %hi(object_a_80337B80)
	ldc1    $f16, %lo(object_a_80337B80)($at)
	cvt.d.s $f10, $f0
	c.lt.d  $f10, $f16
	nop
	bc1f    .L802B8530
	nop
	li      $at, 0x42A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	b       .L802B8548
	swc1    $f18, 0x00B0($t0)
.L802B8530:
	li      $at, 0x41A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t1)
.L802B8548:
	li      $at, 0x41200000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t2)
	li      $at, 0xBF800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t3)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f16, $f0, $f10
	swc1    $f16, 0x00F4($t4)
	b       .L802B85A0
	nop
.L802B85A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B85B0
object_a_802B85B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F0($t8)
	jal     rand
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	li      $at, 0x41200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t1)
	li      $at, 0x40E00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00F4($t2)
	b       .L802B8644
	nop
.L802B8644:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B8654:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t8, %hi(gfx_frame)
	lw      $t8, %lo(gfx_frame)($t8)
	lw      $t7, 0x00F8($t6)
	addu    $t9, $t7, $t8
	andi    $t0, $t9, 0x003F
	sll     $t1, $t0, 10
	sw      $t1, 0x0004($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lhu     $t8, 0x0006($sp)
	la.u    $t6, math_sin
	lhu     $t3, 0x00CA($t2)
	la.l    $t6, math_sin
	sra     $t9, $t8, 4
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	sll     $t0, $t9, 2
	addu    $t1, $t0, $t6
	addu    $t7, $t5, $t6
	lwc1    $f4, 0x0000($t7)
	lwc1    $f6, 0x0000($t1)
	li      $at, 0x40800000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	lwc1    $f18, 0x00A0($t2)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lhu     $t8, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lhu     $t4, 0x00CA($t3)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	addu    $at, $at, $t7
	lwc1    $f6, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t0
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x40800000
	mtc1    $at, $f18
	mul.s   $f10, $f6, $f8
	lwc1    $f4, 0x00A8($t3)
	mul.s   $f16, $f10, $f18
	add.s   $f6, $f4, $f16
	swc1    $f6, 0x00A8($t3)
	b       .L802B872C
	nop
.L802B872C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802B8734
object_a_802B8734:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC0800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B8788
	nop
	li      $at, 0xC0800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t7)
.L802B8788:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	bnez    $t9, .L802B8874
	nop
	jal     obj_lib_802A05B4
	nop
	jal     object_a_802B8654
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, .L802B886C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
	la.u    $a0, o_13001AE8
	jal     obj_lib_802A14FC
	la.l    $a0, o_13001AE8
	beqz    $v0, .L802B8804
	nop
	li      $at, 0x41000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f10
	b       .L802B8830
	swc1    $f10, 0x00F4($t6)
.L802B8804:
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	li      $at, 0x40C00000
	mtc1    $at, $f4
	mul.s   $f18, $f0, $f16
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00F4($t7)
.L802B8830:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E4($t0)
.L802B886C:
	b       .L802B8908
	nop
.L802B8874:
	jal     obj_lib_802A05D4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x41200000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t1)
	lw      $t2, 0x0154($t1)
	li      $at, 0x40A00000
	mul.s   $f10, $f6, $f8
	mtc1    $t2, $f18
	mtc1    $at, $f16
	cvt.s.w $f4, $f18
	add.s   $f18, $f10, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802B8908
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_a_80337B88)
	ldc1    $f10, %lo(object_a_80337B88)($at)
	lwc1    $f6, 0x00F4($t4)
	cvt.d.s $f8, $f6
	sub.d   $f16, $f8, $f10
	cvt.s.d $f4, $f16
	swc1    $f4, 0x00F4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f6
	lwc1    $f18, 0x00F4($t5)
	c.le.s  $f18, $f6
	nop
	bc1f    .L802B8908
	nop
	jal     object_a_802B83B0
	nop
.L802B8908:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41600000
	mtc1    $at, $f10
	lwc1    $f8, 0x0030($t6)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x00DC($t6)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330698
	la.l    $a1, object_a_80330698
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       .L802B8950
	nop
.L802B8950:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B8960
object_a_802B8960:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41F00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x42A00000
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f6
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f8, $f0, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x00F0($t9)
	li      $at, 0x40400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00F4($t0)
	b       .L802B89DC
	nop
.L802B89DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B89EC
object_a_802B89EC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330688
	la.l    $a1, object_a_80330688
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	lwc1    $f4, 0x00F4($t6)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	add.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C4($t8)
	slti    $at, $t9, 0x0801
	bnez    $at, .L802B8A6C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C4($t0)
	addiu   $t2, $t1, -0x0200
	sw      $t2, 0x00C4($t0)
.L802B8A6C:
	jal     obj_lib_802A31E0
	nop
	jal     obj_lib_802A0604
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lwc1    $f18, 0x00F4($t3)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L802B8AAC
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B8AAC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00A4($t4)
	lwc1    $f8, 0x00E8($t4)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802B8B04
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x00E8($t5)
	swc1    $f10, 0x00A4($t5)
	lui     $a0, %hi(object)
	la.u    $a2, o_13001AA4
	la.l    $a2, o_13001AA4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0090
	sw      $v0, 0x0018($sp)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B8B04:
	b       .L802B8B0C
	nop
.L802B8B0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B8B1C
object_a_802B8B1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F0($t8)
	jal     rand
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	beqz    $t1, .L802B8B9C
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f10
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mul.s   $f16, $f0, $f10
	b       .L802B8BBC
	swc1    $f16, 0x00B8($t2)
.L802B8B9C:
	jal     o_script_80383CB4
	nop
	li      $at, 0x428C0000
	mtc1    $at, $f18
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f4, $f0, $f18
	swc1    $f4, 0x00B8($t3)
.L802B8BBC:
	jal     o_script_80383CB4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f8, $f0, $f6
	swc1    $f8, 0x00B0($t4)
	li      $at, 0xBF800000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t5)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42800000
	mtc1    $at, $f16
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f18, $f0, $f16
	trunc.w.s $f4, $f18
	mfc1    $t7, $f4
	nop
	sw      $t7, 0x00F8($t8)
	b       .L802B8C28
	nop
.L802B8C28:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B8C38
object_a_802B8C38:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	jal     object_a_802B8654
	nop
	jal     object_a_802B8434
	li      $a0, 0x0384
	beqz    $v0, .L802B8C74
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B8C74:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_803306A8)
	lw      $t7, 0x0144($t6)
	lwc1    $f4, 0x00B0($t6)
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(object_a_803306A8)($at)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B8CC4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_a_803306A8)
	lw      $t0, 0x0144($t9)
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(object_a_803306A8)($at)
	swc1    $f8, 0x00B0($t9)
.L802B8CC4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00EC($t2)
	andi    $t4, $t3, 0x0001
	beqz    $t4, .L802B8D34
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0144($t5)
	bnez    $t6, .L802B8D10
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13001AE8
	la.l    $a2, o_13001AE8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0090
	b       .L802B8D28
	nop
.L802B8D10:
	lui     $a0, %hi(object)
	la.u    $a2, o_13001A0C
	la.l    $a2, o_13001A0C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
.L802B8D28:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B8D34:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41600000
	mtc1    $at, $f16
	lwc1    $f10, 0x0030($t7)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00DC($t7)
	b       .L802B8D58
	nop
.L802B8D58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B8D68
object_a_802B8D68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x42A00000
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F0($t8)
	li      $at, 0x40E00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t9)
	li      $at, 0x420C0000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t0)
	li      $at, 0x40400000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00F4($t1)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f0
	lui     $t2, %hi(object)
	mul.d   $f8, $f4, $f6
	lw      $t2, %lo(object)($t2)
	cvt.s.d $f10, $f8
	swc1    $f10, 0x00FC($t2)
	li      $at, 0x3F800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00E4($t3)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42800000
	mtc1    $at, $f18
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f4, $f0, $f18
	trunc.w.s $f6, $f4
	mfc1    $t5, $f6
	nop
	sw      $t5, 0x00F8($t6)
	b       .L802B8E6C
	nop
.L802B8E6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B8E7C
object_a_802B8E7C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330688
	la.l    $a1, object_a_80330688
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802B8EE4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	lwc1    $f8, 0x00F4($t7)
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x00F4($t7)
.L802B8EE4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t8)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0015
	bnez    $at, .L802B901C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0144($t1)
	bnez    $t2, .L802B8F90
	nop
	sw      $0, 0x002C($sp)
.L802B8F34:
	li      $at, 0x40A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	la.u    $t5, o_130019C8
	la.l    $t5, o_130019C8
	li      $t4, 0x0090
	sw      $t4, 0x0018($sp)
	sw      $t5, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t3, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f6, 0x0010($sp)
	lw      $t6, 0x002C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0003
	bnez    $at, .L802B8F34
	sw      $t7, 0x002C($sp)
	b       .L802B9010
	nop
.L802B8F90:
	li      $at, 0x41000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	la.u    $t0, o_130019C8
	la.l    $t0, o_130019C8
	li      $t9, 0x0091
	sw      $t9, 0x0018($sp)
	sw      $t0, 0x001C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t8, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f8, 0x0010($sp)
	li      $at, 0x41000000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	la.u    $t3, o_130019C8
	la.l    $t3, o_130019C8
	li      $t2, 0x0091
	sw      $t2, 0x0018($sp)
	sw      $t3, 0x001C($sp)
	li      $a0, 0x0002
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t1, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f10, 0x0010($sp)
.L802B9010:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B901C:
	b       .L802B9024
	nop
.L802B9024:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802B9034
object_a_802B9034:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F0($t8)
	li      $at, 0x41F00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t9)
	li      $at, 0x41A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, 0x002C($t1)
	swc1    $f18, 0x00F4($t1)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42800000
	mtc1    $at, $f4
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	sw      $t3, 0x00F8($t4)
	b       .L802B90DC
	nop
.L802B90DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B90EC
object_a_802B90EC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802B9120
	nop
	la.u    $a0, o_13001850
	jal     obj_lib_8029F95C
	la.l    $a0, o_13001850
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x0100($t8)
.L802B9120:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0100($t9)
	sw      $t0, 0x001C($sp)
	li      $at, 0x41700000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t1)
	li      $at, 0xBF800000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0158($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t3)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330688
	la.l    $a1, object_a_80330688
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	jal     object_a_802B8434
	li      $a0, 0x012C
	beqz    $v0, .L802B91B0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B91B0:
	lw      $t4, 0x001C($sp)
	beqz    $t4, .L802B9204
	nop
	lw      $t5, 0x001C($sp)
	lw      $t6, 0x0124($t5)
	bnez    $t6, .L802B9204
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029E27C
	lw      $a1, 0x001C($sp)
	li      $at, 0x43960000
	mtc1    $at, $f8
	nop
	c.lt.s  $f0, $f8
	nop
	bc1f    .L802B9204
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B9204:
	b       .L802B920C
	nop
.L802B920C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B921C
object_a_802B921C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802B9270
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00C8($t8)
	li      $at, 0x40A00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t9)
.L802B9270:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0010
	beqz    $at, .L802B9338
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	andi    $t4, $t3, 0x0001
	bnez    $t4, .L802B9330
	nop
	sw      $0, 0x0018($sp)
.L802B92A4:
	lui     $a0, %hi(object)
	la.u    $a2, o_13001A30
	la.l    $a2, o_13001A30
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0091
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	li      $at, 0x5555
	lw      $t5, 0x001C($sp)
	multu   $t7, $at
	lw      $t6, 0x00C8($t5)
	mflo    $t8
	addu    $t9, $t6, $t8
	sw      $t9, 0x00C8($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x001C($sp)
	lwc1    $f6, 0x00F8($t0)
	swc1    $f6, 0x002C($t1)
	lw      $t2, 0x0018($sp)
	addiu   $t3, $t2, 0x0001
	slti    $at, $t3, 0x0003
	bnez    $at, .L802B92A4
	sw      $t3, 0x0018($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	lwc1    $f8, 0x00F8($t4)
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	sub.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x00F8($t4)
.L802B9330:
	b       .L802B9344
	nop
.L802B9338:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B9344:
	b       .L802B934C
	nop
.L802B934C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B935C
object_a_802B935C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802B93A8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B9590
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B9600
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802B96AC
	nop
	b       .L802B9714
	nop
.L802B93A8:
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802B94A4
	nop
	jal     o_script_80383D1C
	nop
	sll     $t9, $v0, 11
	mtc1    $t9, $f4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0100($t0)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f10, $f0, $f8
	swc1    $f10, 0x00F4($t1)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f18, $f0, $f16
	trunc.w.s $f4, $f18
	mfc1    $t3, $f4
	nop
	andi    $t4, $t3, 0x00FE
	sw      $t4, 0x00F8($t5)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f0, $f6
	swc1    $f8, 0x0024($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802B9498
	nop
	li      $at, 0x43000000
	mtc1    $at, $f12
	jal     obj_lib_802A2F14
	nop
	trunc.w.s $f18, $f0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mfc1    $t7, $f18
	b       .L802B94A4
	sw      $t7, 0x0114($t8)
.L802B9498:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0114($t9)
.L802B94A4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00F8($t1)
	lw      $t2, 0x0154($t1)
	addiu   $t4, $t3, 0x003C
	slt     $at, $t2, $t4
	bnez    $at, .L802B94F4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
.L802B94F4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F8($t8)
	lw      $t9, 0x0154($t8)
	addiu   $t1, $t0, 0x003C
	bgez    $t1, .L802B9518
	sra     $t3, $t1, 1
	addiu   $at, $t1, 0x0001
	sra     $t3, $at, 1
.L802B9518:
	slt     $at, $t9, $t3
	beqz    $at, .L802B9540
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x00D0($t2)
	lw      $t6, 0x0114($t2)
	addu    $t7, $t4, $t6
	b       .L802B9558
	sw      $t7, 0x00D0($t2)
.L802B9540:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x00D0($t5)
	lw      $t0, 0x0114($t5)
	subu    $t1, $t8, $t0
	sw      $t1, 0x00D0($t5)
.L802B9558:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x00D2($t9)
	lwc1    $f10, 0x00B8($t9)
	sra     $t4, $t3, 4
	sll     $t6, $t4, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_sin)($at)
	neg.s   $f18, $f16
	mul.s   $f4, $f10, $f18
	swc1    $f4, 0x00B0($t9)
	b       .L802B9714
	nop
.L802B9590:
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x40000000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t2, 0x00C8($t7)
	lwc1    $f16, 0x0100($t7)
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f10, $f8, $f16
	trunc.w.s $f18, $f10
	mfc1    $t0, $f18
	nop
	sw      $t0, 0x00C8($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x000F
	lw      $t5, 0x0154($t1)
	bne     $t5, $at, .L802B95F8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t6, $t4, 0x0001
	sw      $t6, 0x014C($t3)
.L802B95F8:
	b       .L802B9714
	nop
.L802B9600:
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x00F8($t9)
	lw      $t2, 0x0154($t9)
	addiu   $t0, $t8, 0x003C
	slt     $at, $t2, $t0
	bnez    $at, .L802B9640
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t1, 0x014C($t7)
	addiu   $t5, $t1, 0x0001
	sw      $t5, 0x014C($t7)
.L802B9640:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x00F8($t4)
	lw      $t6, 0x0154($t4)
	addiu   $t9, $t3, 0x003C
	bgez    $t9, .L802B9664
	sra     $t8, $t9, 1
	addiu   $at, $t9, 0x0001
	sra     $t8, $at, 1
.L802B9664:
	slt     $at, $t6, $t8
	beqz    $at, .L802B968C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x00D0($t2)
	lw      $t1, 0x0114($t2)
	subu    $t5, $t0, $t1
	b       .L802B96A4
	sw      $t5, 0x00D0($t2)
.L802B968C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t4, 0x00D0($t7)
	lw      $t3, 0x0114($t7)
	addu    $t9, $t4, $t3
	sw      $t9, 0x00D0($t7)
.L802B96A4:
	b       .L802B9714
	nop
.L802B96AC:
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x40000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00C8($t6)
	lwc1    $f8, 0x0100($t6)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	add.s   $f16, $f6, $f8
	trunc.w.s $f10, $f16
	mfc1    $t1, $f10
	nop
	sw      $t1, 0x00C8($t6)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x000F
	lw      $t2, 0x0154($t5)
	bne     $t2, $at, .L802B970C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
.L802B970C:
	b       .L802B9714
	nop
.L802B9714:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x00D2($t3)
	lwc1    $f18, 0x00B8($t3)
	sra     $t7, $t9, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	neg.s   $f6, $f4
	mul.s   $f8, $f18, $f6
	swc1    $f8, 0x00B0($t3)
	jal     obj_lib_802A2644
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t1, 0x0068($t0)
	lw      $t6, 0x014C($t1)
	bne     $t6, $at, .L802B9774
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802B9774:
	b       .L802B977C
	nop
.L802B977C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B9790
object_a_802B9790:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802B97D0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802B9868
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802B98A4
	nop
	b       .L802B98B8
	nop
.L802B97D0:
	lui     $t7, %hi(object_80361250)
	lh      $t7, %lo(object_80361250)($t7)
	li      $at, 0x000F
	beq     $t7, $at, .L802B97F0
	nop
	li      $at, 0x0007
	bne     $t7, $at, .L802B9860
	nop
.L802B97F0:
	sw      $0, 0x0038($sp)
.L802B97F4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t0, o_13001B2C
	la.l    $t0, o_13001B2C
	li      $t9, 0x00B9
	sw      $t9, 0x0014($sp)
	sw      $t0, 0x0018($sp)
	move    $a0, $0
	li      $a1, 0x012C
	move    $a2, $0
	li      $a3, -0x00C8
	jal     obj_lib_8029EF64
	sw      $t8, 0x0010($sp)
	sw      $v0, 0x003C($sp)
	lw      $a0, 0x003C($sp)
	jal     obj_lib_802A2FC0
	li      $a1, 0x43480000
	lw      $t1, 0x0038($sp)
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x000F
	bnez    $at, .L802B97F4
	sw      $t2, 0x0038($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
.L802B9860:
	b       .L802B98B8
	nop
.L802B9868:
	lui     $t6, %hi(object_80361250)
	lh      $t6, %lo(object_80361250)($t6)
	li      $at, 0x000F
	beq     $t6, $at, .L802B989C
	nop
	li      $at, 0x0007
	beq     $t6, $at, .L802B989C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
.L802B989C:
	b       .L802B98B8
	nop
.L802B98A4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	b       .L802B98B8
	nop
.L802B98B8:
	b       .L802B98C0
	nop
.L802B98C0:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_a_802B98D4:
	lwc1    $f4, 0x0000($a1)
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0004($a1)
	swc1    $f6, 0x0004($a0)
	lwc1    $f8, 0x0008($a1)
	swc1    $f8, 0x0008($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B98FC
object_a_802B98FC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, .L802B9928
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0041
	sw      $t8, 0x0144($t9)
.L802B9928:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 1
	sw      $t2, 0x003C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0188($t3)
	sra     $t5, $t4, 24
	andi    $t6, $t5, 0x00FF
	sw      $t6, 0x0034($sp)
	sw      $0, 0x0030($sp)
.L802B9960:
	lw      $t7, 0x0030($sp)
	bnez    $t7, .L802B9994
	nop
	lw      $t8, 0x0034($sp)
	lui     $t0, %hi(object_a_803306B4+0x00)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(object_a_803306B4+0x00)($t0)
	subu    $t1, $0, $t0
	b       .L802B99B4
	sw      $t1, 0x0038($sp)
.L802B9994:
	lw      $t2, 0x0034($sp)
	lui     $t4, %hi(object_a_803306B4+0x00)
	sll     $t3, $t2, 2
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t4, $t4, $t3
	lw      $t4, %lo(object_a_803306B4+0x00)($t4)
	sw      $t4, 0x0038($sp)
.L802B99B4:
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x003C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	multu   $t5, $t6
	la.u    $t9, o_13001B88
	la.l    $t9, o_13001B88
	li      $t8, 0x00CA
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	move    $a1, $0
	lw      $a3, 0x0038($sp)
	move    $a0, $t5
	sw      $t7, 0x0010($sp)
	mflo    $a2
	jal     obj_lib_8029EF64
	nop
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x0034($sp)
	lui     $at, %hi(object_a_803306B4+0x10)
	lw      $t2, 0x002C($sp)
	sll     $t1, $t0, 2
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(object_a_803306B4+0x10)($at)
	swc1    $f4, 0x01AC($t2)
	lw      $t3, 0x0034($sp)
	lw      $a0, 0x002C($sp)
	la.u    $t6, object_a_803306B4+0x00
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	addiu   $t5, $t4, 0x0004
	la.l    $t6, object_a_803306B4+0x00
	addu    $a1, $t5, $t6
	jal     object_a_802B98D4
	addiu   $a0, $a0, 0x002C
	lw      $t7, 0x0030($sp)
	addiu   $t8, $t7, 0x0001
	slti    $at, $t8, 0x0002
	bnez    $at, .L802B9960
	sw      $t8, 0x0030($sp)
	b       .L802B9A68
	nop
.L802B9A68:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_a_802B9A78:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00C4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0114($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slt     $at, $a2, $t1
	beqz    $at, .L802B9AE8
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x014C($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x014C($t2)
.L802B9AE8:
	b       .L802B9AF0
	nop
.L802B9AF0:
	jr      $ra
	nop

object_a_802B9AF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t7, 0x001E($sp)
	sw      $t7, 0x0114($t8)
	jal     obj_lib_802A3674
	lh      $a0, 0x001E($sp)
	li      $t9, 0x8000
	div     $0, $t9, $v0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mflo    $t0
	lw      $t2, 0x0154($t1)
	bnez    $v0, .L802B9B58
	nop
	break   7
.L802B9B58:
	li      $at, -0x0001
	bne     $v0, $at, .L802B9B70
	li      $at, 0x80000000
	bne     $t9, $at, .L802B9B70
	nop
	break   6
.L802B9B70:
	addiu   $t3, $t2, 0x0001
	bne     $t0, $t3, .L802B9B8C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0018($sp)
	sw      $t4, 0x014C($t5)
.L802B9B8C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0018($sp)
	sw      $t6, 0x00F8($t7)
	b       .L802B9BA4
	nop
.L802B9BA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B9BB4
object_a_802B9BB4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0144($t7)
	sw      $t8, 0x00FC($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B9BD8
object_a_802B9BD8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x01AC($t6)
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t8)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802B9C30
	nop
	li.u    $a0, 0x400D0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400D0001
.L802B9C30:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	sltiu   $at, $t0, 0x0005
	beqz    $at, .L802B9D08
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(object_a_80337B90)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_a_80337B90)($at)
	jr      $t0
	nop
.globl L802B9C60
L802B9C60:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0144($t1)
	bnez    $t2, .L802B9C88
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	b       .L802B9C98
	sw      $t3, 0x014C($t4)
.L802B9C88:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
.L802B9C98:
	b       .L802B9D08
	nop
.globl L802B9CA0
L802B9CA0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a0, 0x0002
	li      $a1, 0x41200000
	jal     object_a_802B9A78
	lw      $a2, 0x00FC($t7)
	b       .L802B9D08
	nop
.globl L802B9CC0
L802B9CC0:
	li      $a0, 0x0003
	jal     object_a_802B9AF8
	li      $a1, 0x0200
	b       .L802B9D08
	nop
.globl L802B9CD4
L802B9CD4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a0, 0x0004
	li      $a1, 0xC1200000
	jal     object_a_802B9A78
	lw      $a2, 0x00FC($t8)
	b       .L802B9D08
	nop
.globl L802B9CF4
L802B9CF4:
	li      $a0, 0x0001
	jal     object_a_802B9AF8
	li      $a1, -0x0200
	b       .L802B9D08
	nop
.L802B9D08:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	jal     obj_lib_802A3674
	lw      $a0, 0x0114($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $s0, $v0
	lw      $t1, 0x00C4($t0)
	addu    $t2, $t1, $s0
	sw      $t2, 0x00C4($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     obj_lib_802A3674
	lw      $a0, 0x0114($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	move    $s0, $v0
	lw      $t5, 0x00D0($t4)
	addu    $t6, $t5, $s0
	sw      $t6, 0x00D0($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00C8($t7)
	sw      $t8, 0x00D4($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x00C4($t9)
	beqz    $t1, .L802B9E1C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     obj_lib_802A3604
	lw      $a0, 0x0114($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $s0, $v0
	mtc1    $s0, $f16
	lhu     $t3, 0x00C6($t0)
	lui     $at, %hi(math_sin)
	cvt.s.w $f18, $f16
	sra     $t5, $t3, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f6, 0x0024($sp)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     obj_lib_802A3604
	lw      $a0, 0x0114($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $s0, $v0
	mtc1    $s0, $f10
	lhu     $t7, 0x00C6($t8)
	lui     $at, %hi(math_cos)
	cvt.s.w $f18, $f10
	sra     $t9, $t7, 4
	sll     $t1, $t9, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	lwc1    $f6, 0x0024($sp)
	mul.s   $f4, $f16, $f18
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t8)
.L802B9E1C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x00F8($t2)
	bne     $t3, $at, .L802B9E68
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0114($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x8000
	lw      $t0, 0x00D0($t6)
	and     $t4, $t0, $at
	sw      $t4, 0x00D0($t6)
	jal     obj_lib_802A2644
	nop
	b       .L802B9E70
	nop
.L802B9E68:
	jal     obj_lib_802A2644
	nop
.L802B9E70:
	jal     map_data_803839CC
	nop
	b       .L802B9E80
	nop
.L802B9E80:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B9E94
object_a_802B9E94:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(wave_8036131C)
	lb      $t6, %lo(wave_8036131C)($t6)
	andi    $t7, $t6, 0x0002
	beqz    $t7, .L802B9ECC
	nop
	la.u    $a0, 0x0707768C
	jal     segment_to_virtual
	la.l    $a0, 0x0707768C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       .L802B9EE4
	sw      $v0, 0x0218($t8)
.L802B9ECC:
	la.u    $a0, 0x070775B4
	jal     segment_to_virtual
	la.l    $a0, 0x070775B4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
.L802B9EE4:
	b       .L802B9EEC
	nop
.L802B9EEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B9EFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0006
	beqz    $at, .L802BA124
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337BA4)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337BA4)($at)
	jr      $t7
	nop
.globl L802B9F34
L802B9F34:
	jal     obj_lib_802A3754
	nop
	beqz    $v0, .L802B9F60
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
	jal     obj_lib_802A37AC
	nop
.L802B9F60:
	b       .L802BA124
	nop
.globl L802B9F68
L802B9F68:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0004
	beqz    $at, .L802B9FA0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t3)
	sub.s   $f8, $f4, $f6
	b       .L802B9FB4
	swc1    $f8, 0x00A4($t3)
.L802B9FA0:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x014C($t4)
.L802B9FB4:
	b       .L802BA124
	nop
.globl L802B9FBC
L802B9FBC:
	la.u    $a0, o_13001C04
	jal     obj_lib_8029F95C
	la.l    $a0, o_13001C04
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L802BA000
	nop
	lw      $t9, 0x001C($sp)
	lw      $t0, 0x014C($t9)
	slti    $at, $t0, 0x0002
	beqz    $at, .L802BA000
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t1, 0x014C($t8)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t8)
.L802BA000:
	b       .L802BA124
	nop
.globl L802BA008
L802BA008:
	la.u    $a0, o_13001C04
	jal     obj_lib_8029F95C
	la.l    $a0, o_13001C04
	sw      $v0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	beqz    $t3, .L802BA05C
	nop
	lw      $t5, 0x001C($sp)
	lw      $t6, 0x014C($t5)
	slti    $at, $t6, 0x0002
	bnez    $at, .L802BA05C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t7, 0x014C($t4)
	addiu   $t9, $t7, 0x0001
	sw      $t9, 0x014C($t4)
	jal     save_flag_set
	li      $a0, 0x0200
	jal     Na_g_803220F0
	nop
.L802BA05C:
	b       .L802BA124
	nop
.globl L802BA064
L802BA064:
	li.u    $a0, 0x41160001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x41160001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x012C
	beqz    $at, .L802BA100
	nop
	la.u    $t2, object_80361188
	la.l    $t2, object_80361188
	lw      $t8, 0x0008($t2)
	lui     $at, %hi(object_a_80337BBC)
	lwc1    $f14, %lo(object_a_80337BBC)($at)
	mtc1    $t8, $f10
	li      $a2, 0x40A00000
	jal     obj_lib_8029E494
	cvt.s.w $f12, $f10
	trunc.w.s $f16, $f0
	la.u    $t6, object_80361188
	la.l    $t6, object_80361188
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x0008($t6)
	la.u    $t7, object_80361188
	la.l    $t7, object_80361188
	lw      $t9, 0x0000($t7)
	lui     $at, %hi(object_a_80337BC0)
	lwc1    $f14, %lo(object_a_80337BC0)($at)
	mtc1    $t9, $f18
	li      $a2, 0x40A00000
	jal     obj_lib_8029E494
	cvt.s.w $f12, $f18
	trunc.w.s $f4, $f0
	la.u    $t1, object_80361188
	la.l    $t1, object_80361188
	mfc1    $t0, $f4
	b       .L802BA114
	sw      $t0, 0x0000($t1)
.L802BA100:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t8, 0x014C($t2)
	addiu   $t3, $t8, 0x0001
	sw      $t3, 0x014C($t2)
.L802BA114:
	b       .L802BA124
	nop
.globl L802BA11C
L802BA11C:
	b       .L802BA124
	nop
.L802BA124:
	b       .L802BA12C
	nop
.L802BA12C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BA13C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802BA18C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	la.u    $t0, object_80361188
	la.l    $t0, object_80361188
	li      $t9, -0x0992
	sw      $t9, 0x0008($t0)
	la.u    $t2, object_80361188
	la.l    $t2, object_80361188
	li      $t1, -0x0992
	sw      $t1, 0x0000($t2)
.L802BA18C:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BA19C
object_a_802BA19C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     save_flag_get
	nop
	andi    $t6, $v0, 0x0200
	beqz    $t6, .L802BA1C8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x00F8($t8)
.L802BA1C8:
	b       .L802BA1D0
	nop
.L802BA1D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BA1E0
object_a_802BA1E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	beqz    $t7, .L802BA20C
	nop
	jal     object_a_802BA13C
	nop
	b       .L802BA214
	nop
.L802BA20C:
	jal     object_a_802B9EFC
	nop
.L802BA214:
	la.u    $t8, object_80361188
	la.l    $t8, object_80361188
	lui     $t0, %hi(object_80361184)
	lw      $t0, %lo(object_80361184)($t0)
	lw      $t9, 0x0008($t8)
	sh      $t9, 0x0024($t0)
	la.u    $t1, object_80361188
	la.l    $t1, object_80361188
	lui     $t3, %hi(object_80361184)
	lw      $t3, %lo(object_80361184)($t3)
	lw      $t2, 0x0000($t1)
	sh      $t2, 0x000C($t3)
	b       .L802BA24C
	nop
.L802BA24C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BA25C
object_a_802BA25C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     save_flag_get
	nop
	andi    $t6, $v0, 0x0200
	beqz    $t6, .L802BA298
	nop
	lui     $t8, %hi(object_80361184)
	lw      $t8, %lo(object_80361184)($t8)
	li      $t7, -0x0320
	sh      $t7, 0x000C($t8)
	lui     $t0, %hi(object_80361184)
	lw      $t0, %lo(object_80361184)($t0)
	li      $t9, -0x0320
	sh      $t9, 0x0018($t0)
.L802BA298:
	b       .L802BA2A0
	nop
.L802BA2A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl s_object_a_802BA2B0
s_object_a_802BA2B0:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L802BA2E0
	nop
	lui     $t6, %hi(shape_object)
	lw      $t6, %lo(shape_object)($t6)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lw      $t8, 0x0008($a1)
	lwc1    $f4, 0x00F4($t7)
	swc1    $f4, 0x0018($t8)
.L802BA2E0:
	b       .L802BA2F0
	move    $v0, $0
	b       .L802BA2F0
	nop
.L802BA2F0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802BA2F8
object_a_802BA2F8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x001C($sp)
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lw      $t8, 0x001C($sp)
	slti    $at, $t8, 0x0026
	beqz    $at, .L802BA33C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	b       .L802BA41C
	swc1    $f4, 0x00F4($t9)
.L802BA33C:
	lw      $t0, 0x001C($sp)
	slti    $at, $t0, 0x0031
	beqz    $at, .L802BA364
	nop
	lui     $at, %hi(object_a_80337BC4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, %lo(object_a_80337BC4)($at)
	b       .L802BA41C
	swc1    $f6, 0x00F4($t1)
.L802BA364:
	lw      $t2, 0x001C($sp)
	slti    $at, $t2, 0x003A
	beqz    $at, .L802BA3B4
	nop
	lw      $t3, 0x001C($sp)
	lui     $at, %hi(object_a_80337BC8)
	lwc1    $f16, %lo(object_a_80337BC8)($at)
	addiu   $t4, $t3, -0x0035
	mtc1    $t4, $f8
	lui     $at, %hi(object_a_80337BD0)
	ldc1    $f6, %lo(object_a_80337BD0)($at)
	cvt.s.w $f10, $f8
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f18, $f10, $f16
	cvt.d.s $f4, $f18
	add.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	b       .L802BA41C
	swc1    $f10, 0x00F4($t5)
.L802BA3B4:
	lw      $t6, 0x001C($sp)
	slti    $at, $t6, 0x003B
	beqz    $at, .L802BA3DC
	nop
	lui     $at, %hi(object_a_80337BD8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, %lo(object_a_80337BD8)($at)
	b       .L802BA41C
	swc1    $f16, 0x00F4($t7)
.L802BA3DC:
	lw      $t8, 0x001C($sp)
	slti    $at, $t8, 0x003C
	beqz    $at, .L802BA404
	nop
	lui     $at, %hi(object_a_80337BDC)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, %lo(object_a_80337BDC)($at)
	b       .L802BA41C
	swc1    $f18, 0x00F4($t9)
.L802BA404:
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F4($t0)
.L802BA41C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0097
	bnez    $at, .L802BA440
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802BA440:
	b       .L802BA448
	nop
.L802BA448:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BA458
object_a_802BA458:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x001C($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lw      $t8, 0x001C($sp)
	slti    $at, $t8, 0x0026
	beqz    $at, .L802BA4A0
	nop
	lui     $at, %hi(object_a_80337BE0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, %lo(object_a_80337BE0)($at)
	b       .L802BA580
	swc1    $f4, 0x00F4($t9)
.L802BA4A0:
	lw      $t0, 0x001C($sp)
	slti    $at, $t0, 0x0034
	beqz    $at, .L802BA4F0
	nop
	lw      $t1, 0x001C($sp)
	lui     $at, %hi(object_a_80337BE4)
	lwc1    $f10, %lo(object_a_80337BE4)($at)
	addiu   $t2, $t1, -0x002A
	mtc1    $t2, $f6
	lui     $at, %hi(object_a_80337BE8)
	ldc1    $f4, %lo(object_a_80337BE8)($at)
	cvt.s.w $f8, $f6
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f8, $f10
	cvt.d.s $f18, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	b       .L802BA580
	swc1    $f8, 0x00F4($t3)
.L802BA4F0:
	lw      $t4, 0x001C($sp)
	slti    $at, $t4, 0x005E
	beqz    $at, .L802BA518
	nop
	lui     $at, %hi(object_a_80337BF0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, %lo(object_a_80337BF0)($at)
	b       .L802BA580
	swc1    $f10, 0x00F4($t5)
.L802BA518:
	lw      $t6, 0x001C($sp)
	slti    $at, $t6, 0x0065
	beqz    $at, .L802BA56C
	nop
	lw      $t7, 0x001C($sp)
	li      $t8, 0x0065
	lui     $at, %hi(object_a_80337BF4)
	subu    $t9, $t8, $t7
	mtc1    $t9, $f16
	lwc1    $f4, %lo(object_a_80337BF4)($at)
	lui     $at, %hi(object_a_80337BF8)
	cvt.s.w $f18, $f16
	ldc1    $f10, %lo(object_a_80337BF8)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f6, $f18, $f4
	cvt.d.s $f8, $f6
	add.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	b       .L802BA580
	swc1    $f18, 0x00F4($t0)
.L802BA56C:
	lui     $at, %hi(object_a_80337C00)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, %lo(object_a_80337C00)($at)
	swc1    $f4, 0x00F4($t1)
.L802BA580:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x008B
	bnez    $at, .L802BA5A4
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802BA5A4:
	b       .L802BA5AC
	nop
.L802BA5AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BA5BC
object_a_802BA5BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     save_flag_get
	nop
	andi    $t6, $v0, 0x0200
	beqz    $t6, .L802BA5E8
	nop
	jal     obj_lib_802A04C0
	move    $a0, $0
	b       .L802BA5F0
	nop
.L802BA5E8:
	jal     map_data_803839CC
	nop
.L802BA5F0:
	b       .L802BA5F8
	nop
.L802BA5F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BA608
object_a_802BA608:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	sh      $t7, 0x001A($sp)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t8)
	lwc1    $f14, 0x00A4($t8)
	jal     map_80381900
	lw      $a2, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	swc1    $f0, 0x00E8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	bnez    $t1, .L802BA6A0
	nop
	lw      $t2, 0x001C($sp)
	lh      $t3, 0x0000($t2)
	bnez    $t3, .L802BA698
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0004
	bnez    $at, .L802BA698
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x014C($t6)
.L802BA698:
	b       .L802BA7A8
	nop
.L802BA6A0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0001
	lw      $t0, 0x014C($t9)
	bne     $t0, $at, .L802BA7A8
	nop
	lw      $t1, 0x001C($sp)
	beqz    $t1, .L802BA7A8
	nop
	lh      $t2, 0x0000($t1)
	li      $at, 0x00F4
	beq     $t2, $at, .L802BA6EC
	nop
	li      $at, 0x00F5
	beq     $t2, $at, .L802BA6EC
	nop
	li      $at, 0x00F6
	bne     $t2, $at, .L802BA7A8
	nop
.L802BA6EC:
	la.u    $a0, o_13001C7C
	jal     obj_lib_802A14FC
	la.l    $a0, o_13001C7C
	beqz    $v0, .L802BA790
	nop
	lhu     $t3, 0x001A($sp)
	slti    $at, $t3, 0x0AAA
	beqz    $at, .L802BA720
	nop
	li      $t4, 0x0003
	lui     $at, %hi(object_80361258)
	b       .L802BA790
	sh      $t4, %lo(object_80361258)($at)
.L802BA720:
	lhu     $t5, 0x001A($sp)
	slti    $at, $t5, 0x6AA4
	beqz    $at, .L802BA740
	nop
	li      $t7, 0x0001
	lui     $at, %hi(object_80361258)
	b       .L802BA790
	sh      $t7, %lo(object_80361258)($at)
.L802BA740:
	lhu     $t8, 0x001A($sp)
	li      $at, 0x954C
	slt     $at, $t8, $at
	beqz    $at, .L802BA764
	nop
	li      $t6, 0x0002
	lui     $at, %hi(object_80361258)
	b       .L802BA790
	sh      $t6, %lo(object_80361258)($at)
.L802BA764:
	lhu     $t9, 0x001A($sp)
	li      $at, 0xF546
	slt     $at, $t9, $at
	beqz    $at, .L802BA784
	nop
	lui     $at, %hi(object_80361258)
	b       .L802BA790
	sh      $0, %lo(object_80361258)($at)
.L802BA784:
	li      $t0, 0x0003
	lui     $at, %hi(object_80361258)
	sh      $t0, %lo(object_80361258)($at)
.L802BA790:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	b       .L802BA7A8
	sw      $t3, 0x014C($t1)
.L802BA7A8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	slti    $at, $t5, 0x0002
	beqz    $at, .L802BA7C8
	nop
	jal     obj_lib_802A2BC4
	nop
.L802BA7C8:
	b       .L802BA7D0
	nop
.L802BA7D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BA7E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, .L802BA850
	nop
	jal     obj_lib_802A3F48
	nop
	beqz    $v0, .L802BA828
	nop
	jal     obj_lib_802A188C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       .L802BA850
	sw      $0, 0x014C($t8)
.L802BA828:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0078
	beqz    $t1, .L802BA850
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0005
	sw      $t2, 0x014C($t3)
.L802BA850:
	b       .L802BA858
	nop
.L802BA858:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BA868:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, .L802BA8A4
	nop
	lui     $a0, %hi(mario)
	jal     collision_8024C8FC
	lw      $a0, %lo(mario)($a0)
	beqz    $v0, .L802BA8A4
	nop
	b       .L802BA8B4
	li      $v0, 0x0001
.L802BA8A4:
	b       .L802BA8B4
	move    $v0, $0
	b       .L802BA8B4
	nop
.L802BA8B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BA8C4:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802BA938
	nop
	lui     $t7, %hi(shape_object)
	lw      $t7, %lo(shape_object)($t7)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x006C($t8)
	beqz    $t9, .L802BA938
	nop
	lui     $t0, %hi(shape_camera)
	lw      $t0, %lo(shape_camera)($t0)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0068($sp)
	jal     obj_lib_8029DE80
	lw      $a2, 0x0034($t0)
	lw      $t1, 0x001C($sp)
	addiu   $a0, $sp, 0x0020
	jal     obj_lib_8029DCD4
	lw      $a1, 0x006C($t1)
	lw      $t2, 0x001C($sp)
	jal     obj_lib_8029F188
	lw      $a0, 0x006C($t2)
.L802BA938:
	b       .L802BA948
	move    $v0, $0
	b       .L802BA948
	nop
.L802BA948:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

object_a_802BA958:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	bnez    $t8, .L802BAA08
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x40800000
	mtc1    $at, $f6
	li      $at, 0x3F800000
	mtc1    $at, $f10
	mul.s   $f8, $f0, $f6
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	sw      $t0, 0x0150($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x00F4($t2)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40800000
	mtc1    $at, $f4
	li      $at, 0x40000000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	nop
	sh      $t4, 0x00F6($t5)
.L802BAA08:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $s0, 0x0150($t6)
	beq     $s0, $at, .L802BAA4C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802BAA78
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802BAAD8
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L802BAB34
	nop
	b       .L802BAB60
	nop
.L802BAA4C:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0009
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802BAA70
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0150($t7)
.L802BAA70:
	b       .L802BAB60
	nop
.L802BAA78:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0004
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802BAAA4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x00F4($t8)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x00F4($t8)
.L802BAAA4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t3, 0x00F6($t1)
	lh      $t2, 0x00F4($t1)
	sll     $t4, $t3, 1
	slt     $at, $t2, $t4
	bnez    $at, .L802BAAD0
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0150($t5)
.L802BAAD0:
	b       .L802BAB60
	nop
.L802BAAD8:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0005
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802BAB04
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x00F4($t6)
	addiu   $t9, $t7, 0x0001
	sh      $t9, 0x00F4($t6)
.L802BAB04:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t8, 0x00F4($t0)
	lh      $t1, 0x00F6($t0)
	slt     $at, $t8, $t1
	bnez    $at, .L802BAB2C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0150($t3)
.L802BAB2C:
	b       .L802BAB60
	nop
.L802BAB34:
	jal     obj_lib_8029F4B4
	li      $a0, 0x000A
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802BAB58
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0150($t2)
.L802BAB58:
	b       .L802BAB60
	nop
.L802BAB60:
	b       .L802BAB68
	nop
.L802BAB68:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802BAB7C(void) */
.globl object_a_802BAB7C
object_a_802BAB7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802BA958
	nop
	jal     object_a_802BA868
	nop
	beqz    $v0, .L802BAC68
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x442F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802BABF0
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f8
	nop
	c.lt.s  $f4, $f8
	nop
	bc1f    .L802BABF0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	b       .L802BAC60
	sw      $t7, 0x014C($t8)
.L802BABF0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x442F0000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t9)
	c.le.s  $f10, $f16
	nop
	bc1f    .L802BAC60
	nop
	li      $at, 0x43480000
	mtc1    $at, $f18
	nop
	c.lt.s  $f18, $f10
	nop
	bc1f    .L802BAC60
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x0160($t0)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t0)
	slti    $at, $v0, 0x1001
	bnez    $at, .L802BAC60
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
.L802BAC60:
	b       .L802BAC9C
	nop
.L802BAC68:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43960000
	mtc1    $at, $f4
	lwc1    $f6, 0x015C($t3)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802BAC9C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
.L802BAC9C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lh      $t7, 0x01AC($t6)
	bne     $t7, $at, .L802BACC4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	sw      $t8, 0x014C($t9)
.L802BACC4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0003
	lh      $t1, 0x01AC($t0)
	bne     $t1, $at, .L802BADDC
	nop
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t3, 0x00C8($t2)
	li      $at, 0x8000
	addu    $t4, $t3, $at
	sw      $t4, 0x00C8($t5)
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     object_a_802B14F4
	nop
	beqz    $v0, .L802BAD30
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	b       .L802BADCC
	sw      $t6, 0x014C($t7)
.L802BAD30:
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t9, 0x00C8($t8)
	addiu   $t0, $t9, 0x4000
	sw      $t0, 0x00C8($t1)
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     object_a_802B14F4
	nop
	beqz    $v0, .L802BAD80
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	b       .L802BADCC
	sw      $t2, 0x014C($t3)
.L802BAD80:
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t5, 0x00C8($t4)
	addiu   $t6, $t5, -0x4000
	sw      $t6, 0x00C8($t7)
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     object_a_802B14F4
	nop
	beqz    $v0, .L802BADCC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
.L802BADCC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0004
	sh      $t0, 0x01AC($t1)
.L802BADDC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x0144($t2)
	bne     $t3, $at, .L802BAE28
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_a_80337C04)
	lwc1    $f16, %lo(object_a_80337C04)($at)
	lwc1    $f8, 0x00A4($t4)
	c.lt.s  $f8, $f16
	nop
	bc1f    .L802BAE28
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0007
	sw      $t5, 0x014C($t6)
.L802BAE28:
	b       .L802BAE30
	nop
.L802BAE30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BAE40(void) */
.globl object_a_802BAE40
object_a_802BAE40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	move    $a0, $0
	jal     obj_lib_802A2748
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00C8($t6)
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337C08)
	lwc1    $f8, %lo(object_a_80337C08)($at)
	lwc1    $f6, 0x00A4($t8)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802BAEAC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
.L802BAEAC:
	b       .L802BAEB4
	nop
.L802BAEB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802BAEC4(void) */
.globl object_a_802BAEC4
object_a_802BAEC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802BA958
	nop
	jal     obj_lib_802A3F48
	nop
	beqz    $v0, .L802BAEF8
	nop
	jal     obj_lib_802A188C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802BAEF8:
	b       .L802BAF00
	nop
.L802BAF00:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BAF10(void) */
.globl object_a_802BAF10
object_a_802BAF10:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802BA958
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0150($t6)
	bne     $t7, $at, .L802BAF4C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t8)
.L802BAF4C:
	b       .L802BAF54
	nop
.L802BAF54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BAF64(void) */
.globl object_a_802BAF64
object_a_802BAF64:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802BAFAC
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x40400000
	mtc1    $at, $f4
	li      $at, 0x40000000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t8)
.L802BAFAC:
	jal     obj_lib_8029F4B4
	li      $a0, 0x000B
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0800
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t9)
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	beqz    $t0, .L802BAFE4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
.L802BAFE4:
	jal     object_a_802BA868
	nop
	beqz    $v0, .L802BB030
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t2)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802BB028
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
.L802BB028:
	b       .L802BB064
	nop
.L802BB030:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t5)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BB064
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
.L802BB064:
	b       .L802BB06C
	nop
.L802BB06C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802BB07C(void) */
.globl object_a_802BB07C
object_a_802BB07C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0001
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x8000
	lw      $t8, 0x0160($t7)
	addu    $t9, $t8, $at
	sh      $t9, 0x001A($sp)
	jal     object_a_802BA868
	nop
	beqz    $v0, .L802BB0C8
	nop
	sw      $0, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0160($t0)
	sh      $t1, 0x001A($sp)
.L802BB0C8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	bnez    $t3, .L802BB108
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	li      $at, 0x43AF0000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0110($t4)
.L802BB108:
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lh      $a0, 0x001A($sp)
	jal     obj_lib_8029E5EC
	li      $a1, 0x0800
	li      $at, 0x41A00000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337C0C)
	jal     obj_lib_8029FE00
	lwc1    $f14, %lo(object_a_80337C0C)($at)
	lw      $t5, 0x001C($sp)
	beqz    $t5, .L802BB174
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x015C($t6)
	lwc1    $f18, 0x0110($t6)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802BB16C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
.L802BB16C:
	b       .L802BB1A4
	nop
.L802BB174:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x015C($t9)
	lwc1    $f6, 0x0110($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BB1A4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t1)
.L802BB1A4:
	lw      $t2, 0x001C($sp)
	beqz    $t2, .L802BB270
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43480000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802BB270
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x0200
	beqz    $t6, .L802BB220
	nop
	jal     obj_lib_802A404C
	li      $a0, 0x000A
	beqz    $v0, .L802BB220
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01B4($t9)
	b       .L802BB270
	sw      $t0, 0x00C8($t9)
.L802BB220:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0400
	beqz    $t3, .L802BB270
	nop
	jal     obj_lib_802A404C
	li      $a0, 0x000A
	beqz    $v0, .L802BB270
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lw      $t7, 0x00C8($t6)
	addu    $t8, $t7, $at
	sw      $t8, 0x00C8($t6)
.L802BB270:
	b       .L802BB278
	nop
.L802BB278:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802BB288(void) */
.globl object_a_802BB288
object_a_802BB288:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	li      $at, 0x41200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     obj_lib_802A05B4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	bnez    $t8, .L802BB358
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, .L802BB310
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f6
	mov.s   $f20, $f0
	li      $at, 0x42340000
	mul.s   $f8, $f20, $f6
	mtc1    $at, $f10
	li      $a1, 0x0008
	jal     obj_lib_802A0198
	add.s   $f12, $f8, $f10
	b       .L802BB350
	nop
.L802BB310:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0053
	beqz    $t3, .L802BB350
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0150($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t7)
.L802BB350:
	b       .L802BB39C
	nop
.L802BB358:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t8)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0007
	jal     obj_lib_802A05D4
	nop
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802BB39C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L802BB39C:
	b       .L802BB3A4
	nop
.L802BB3A4:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802BB3B8(void) */
.globl object_a_802BB3B8
object_a_802BB3B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0020($sp)
	sh      $0, 0x001E($sp)
	la.u    $a0, o_13000F14
	jal     obj_lib_8029F95C
	la.l    $a0, o_13000F14
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	beqz    $t6, .L802BB41C
	nop
	lw      $t7, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029E27C
	lw      $a1, 0x0068($t7)
	swc1    $f0, 0x0020($sp)
	lw      $t8, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029E694
	lw      $a1, 0x0068($t8)
	sh      $v0, 0x001E($sp)
.L802BB41C:
	jal     obj_lib_802A05B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x008C($t9)
	ori     $t1, $t0, 0x0080
	sw      $t1, 0x008C($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	sltiu   $at, $t3, 0x0008
	beqz    $at, .L802BB780
	nop
	sll     $t3, $t3, 2
	lui     $at, %hi(object_a_80337C10)
	addu    $at, $at, $t3
	lw      $t3, %lo(object_a_80337C10)($at)
	jr      $t3
	nop
.globl L802BB468
L802BB468:
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $t4, object_a_803306DC
	la.l    $t4, object_a_803306DC
	sw      $t4, 0x00FC($t5)
	jal     obj_lib_802A2C5C
	move    $a0, $0
	li      $at, -0x0001
	beq     $v0, $at, .L802BB4D8
	nop
	li      $at, 0x41200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x010C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00E8($t8)
	b       .L802BB500
	swc1    $f8, 0x00A4($t8)
.L802BB4D8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t9, 0x0150($t1)
	addiu   $t2, $t9, 0x0001
	sw      $t2, 0x0150($t1)
.L802BB500:
	b       .L802BB780
	nop
.globl L802BB508
L802BB508:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0005
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t3)
	li      $at, 0x43480000
	mtc1    $at, $f12
	li      $at, 0x41F00000
	mtc1    $at, $f14
	jal     obj_lib_802A47A0
	li      $a2, 0x7FFF
	beqz    $v0, .L802BB55C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t6, $t5, 0x0001
	b       L802BB564
	sw      $t6, 0x0150($t4)
.L802BB55C:
	b       .L802BB780
	nop
.globl L802BB564
L802BB564:
	jal     obj_lib_8029F4B4
	li      $a0, 0x000A
	li      $a0, 0x0003
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0050
	beqz    $v0, .L802BB59C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x0150($t7)
.L802BB59C:
	b       .L802BB780
	nop
.globl L802BB5A4
L802BB5A4:
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lh      $a0, 0x001E($sp)
	jal     obj_lib_8029E5EC
	li      $a1, 0x0400
	beqz    $v0, .L802BB5EC
	nop
	li      $at, 0x41200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0150($t2)
	addiu   $t3, $t1, 0x0001
	sw      $t3, 0x0150($t2)
.L802BB5EC:
	b       .L802BB780
	nop
.globl L802BB5F4
L802BB5F4:
	li      $at, 0x425C0000
	mtc1    $at, $f12
	jal     obj_lib_802A0198
	li      $a1, 0x0008
	li      $at, 0x42100000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x0150($t6)
	addiu   $t8, $t4, 0x0001
	sw      $t8, 0x0150($t6)
	b       .L802BB780
	nop
.globl L802BB638
L802BB638:
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BB668
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t0)
.L802BB668:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x00EC($t7)
	andi    $t1, $t9, 0x0001
	beqz    $t1, .L802BB6D8
	nop
	jal     Na_g_803220F0
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0005
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x0150($t3)
	addiu   $t5, $t2, 0x0001
	sw      $t5, 0x0150($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t4, 0x0020
	sh      $t4, 0x01B0($t8)
	lw      $t0, 0x0024($sp)
	li      $t6, 0x0001
	lw      $t7, 0x0068($t0)
	sw      $t6, 0x0088($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t9)
.L802BB6D8:
	b       .L802BB780
	nop
.globl L802BB6E0
L802BB6E0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	addiu   $t5, $t2, 0x0800
	sw      $t5, 0x00C8($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x01B0($t3)
	addiu   $t8, $t4, -0x0001
	sh      $t8, 0x01B0($t3)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t6, 0x01B0($t0)
	bgez    $t6, .L802BB740
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0150($t7)
	addiu   $t2, $t9, 0x0001
	sw      $t2, 0x0150($t7)
	lw      $t1, 0x0024($sp)
	li      $t5, 0x0002
	lw      $t4, 0x0068($t1)
	sw      $t5, 0x0088($t4)
.L802BB740:
	b       .L802BB780
	nop
.globl L802BB748
L802BB748:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337C30)
	lwc1    $f18, %lo(object_a_80337C30)($at)
	lwc1    $f16, 0x00A4($t8)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802BB778
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802BB778:
	b       .L802BB780
	nop
.L802BB780:
	b       .L802BB788
	nop
.L802BB788:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BB798:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_803307A0
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_803307A0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0004
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, .L802BB7D8
	nop
	li      $at, 0x0007
	bne     $t7, $at, .L802BB7E4
	nop
.L802BB7D8:
	li      $t8, -0x0058
	b       .L802BB7EC
	sw      $t8, 0x001C($sp)
.L802BB7E4:
	li      $t9, -0x0014
	sw      $t9, 0x001C($sp)
.L802BB7EC:
	jal     obj_lib_802A2348
	lw      $a0, 0x001C($sp)
	jal     object_a_802BA7E0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0078
	bnez    $t2, .L802BB820
	nop
	la.u    $a0, object_a_80330738
	jal     obj_sfx_802CA040
	la.l    $a0, object_a_80330738
.L802BB820:
	b       .L802BB828
	nop
.L802BB828:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BB838:
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	li      $at, 0x0032
	divu    $0, $t6, $at
	mfhi    $t7
	sltiu   $at, $t7, 0x0007
	beqz    $at, .L802BB86C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	b       .L802BB878
	sw      $t8, 0x00F0($t9)
.L802BB86C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F0($t0)
.L802BB878:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802BB888:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC2C80000
	mtc1    $at, $f10
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0168($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802BB9F8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $s0, 0x01AC($t7)
	beqz    $s0, .L802BB900
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802BB934
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802BB9B0
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L802BB9B8
	nop
	b       .L802BB9F0
	nop
.L802BB900:
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0002
	bne     $v0, $at, .L802BB92C
	nop
	jal     message_802D8D48
	li      $a0, 0x004F
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sh      $t8, 0x01AC($t9)
.L802BB92C:
	b       .L802BB9F0
	nop
.L802BB934:
	lui     $t0, %hi(message_803314A0)
	lw      $t0, %lo(message_803314A0)($t0)
	beqz    $t0, .L802BB9A8
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t1, %hi(message_803314A0)
	lw      $t1, %lo(message_803314A0)($t1)
	li      $at, 0x0001
	bne     $t1, $at, .L802BB988
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0190($t2)
	ori     $t4, $t3, 0x0040
	sw      $t4, 0x0190($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	b       .L802BB9A8
	sh      $t5, 0x01AC($t6)
.L802BB988:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	sh      $t7, 0x01AC($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x003C
	sh      $t9, 0x01AE($t0)
.L802BB9A8:
	b       .L802BB9F0
	nop
.L802BB9B0:
	b       .L802BB9F0
	nop
.L802BB9B8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $s0, 0x01AE($t1)
	lh      $t4, 0x01AE($t1)
	slti    $t3, $s0, 0x0000
	move    $s0, $t3
	addiu   $t2, $t4, -0x0001
	beqz    $s0, .L802BB9E8
	sh      $t2, 0x01AE($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x01AC($t5)
.L802BB9E8:
	b       .L802BB9F0
	nop
.L802BB9F0:
	b       .L802BBA20
	nop
.L802BB9F8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x01AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0005
	sw      $t8, 0x014C($t9)
.L802BBA20:
	b       .L802BBA28
	nop
.L802BBA28:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BBA3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lhu     $t7, 0x01AC($t6)
	sltiu   $at, $t7, 0x0008
	beqz    $at, L802BBB80
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337C34)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337C34)($at)
	jr      $t7
	nop
.globl L802BBA74
L802BBA74:
	jal     collision_8024CA68
	li      $a0, 0x0002
	beqz    $v0, .L802BBAAC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0007
	sh      $t8, 0x01AC($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x01B2($t0)
	ori     $t2, $t1, 0x0001
	b       .L802BBAAC
	sh      $t2, 0x01B2($t0)
.L802BBAAC:
	b       L802BBB80
	nop
.globl L802BBAB4
L802BBAB4:
	li      $a0, 0x0002
	li      $a1, 0x0002
	li      $a2, 0x0064
	jal     obj_lib_802A4960
	move    $a3, $0
	beqz    $v0, .L802BBAF4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0190($t3)
	ori     $t5, $t4, 0x0040
	sw      $t5, 0x0190($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sh      $t6, 0x01AC($t7)
.L802BBAF4:
	b       L802BBB80
	nop
.globl L802BBAFC
L802BBAFC:
	b       L802BBB80
	nop
.globl L802BBB04
L802BBB04:
	li      $a0, 0x0002
	li      $a1, 0x0012
	li      $a2, 0x0065
	jal     obj_lib_802A4960
	move    $a3, $0
	beqz    $v0, .L802BBB58
	nop
	jal     collision_8024CAF8
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0002
	lh      $t9, 0x01B2($t8)
	and     $t1, $t9, $at
	sh      $t1, 0x01B2($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x0005
	sh      $t2, 0x01AC($t0)
.L802BBB58:
	b       L802BBB80
	nop
.globl L802BBB60
L802BBB60:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x01AC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
	b       L802BBB80
	nop
.globl L802BBB80
L802BBB80:
	b       .L802BBB88
	nop
.L802BBB88:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BBB98
object_a_802BBB98:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, .L802BBBF4
	nop
	jal     save_flag_get
	nop
	li      $at, 0x00040000
	and     $t8, $v0, $at
	beqz    $t8, .L802BBBF4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0004
	sh      $t9, 0x01AC($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01B2($t1)
	ori     $t3, $t2, 0x0001
	sh      $t3, 0x01B2($t1)
.L802BBBF4:
	b       .L802BBBFC
	nop
.L802BBBFC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BBC0C
object_a_802BBC0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, .L802BBC58
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802BBC74
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802BBCCC
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802BBCCC
	nop
	b       .L802BBCDC
	nop
.L802BBC58:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x01AE($t7)
	jal     object_a_802BB798
	nop
	b       .L802BBCDC
	nop
.L802BBC74:
	li      $a0, 0x000C
	jal     obj_lib_802A01D8
	move    $a1, $0
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029F120
	lw      $a0, %lo(object)($a0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x0144($t8)
	bne     $t9, $at, .L802BBCBC
	nop
	jal     object_a_802BBA3C
	nop
	b       .L802BBCC4
	nop
.L802BBCBC:
	jal     object_a_802BB888
	nop
.L802BBCC4:
	b       .L802BBCDC
	nop
.L802BBCCC:
	jal     obj_lib_802A0474
	nop
	b       .L802BBCDC
	nop
.L802BBCDC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x01B2($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, .L802BBD08
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	b       .L802BBD14
	sw      $t3, 0x00F0($t4)
.L802BBD08:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00F0($t5)
.L802BBD14:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a0, str_object_a_mode
	la.l    $a0, str_object_a_mode
	jal     obj_debug_802CA568
	lw      $a1, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, str_object_a_action
	la.l    $a0, str_object_a_action
	jal     obj_debug_802CA568
	lw      $a1, 0x0124($t8)
	b       .L802BBD58
	nop
.L802BBD58:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BBD6C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t7, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	sll     $t8, $t7, 1
	addu    $t9, $t6, $t8
	lh      $s0, 0x0000($t9)
	beq     $s0, $at, .L802BBEF0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802BBE50
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802BBF94
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L802BBDCC
	nop
	b       .L802BBFB4
	nop
.L802BBDCC:
	lw      $t1, 0x002C($sp)
	lw      $t0, 0x0028($sp)
	lui     $t5, %hi(object)
	sll     $t2, $t1, 1
	addu    $t3, $t0, $t2
	lh      $t4, 0x0004($t3)
	lw      $t5, %lo(object)($t5)
	sw      $t4, 0x00C8($t5)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x42C80000
	sll     $t8, $t6, 1
	addu    $t9, $t7, $t8
	lh      $t1, 0x0006($t9)
	mtc1    $at, $f8
	lui     $t0, %hi(object)
	mtc1    $t1, $f4
	lw      $t0, %lo(object)($t0)
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t0)
	jal     obj_lib_802A3CFC
	nop
	beqz    $v0, .L802BBE48
	nop
	lw      $t2, 0x002C($sp)
	addiu   $t3, $t2, 0x0004
	sw      $t3, 0x002C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0154($t4)
.L802BBE48:
	b       .L802BBFB4
	nop
.L802BBE50:
	lw      $t6, 0x002C($sp)
	lw      $t5, 0x0028($sp)
	lui     $t1, %hi(object)
	sll     $t7, $t6, 1
	addu    $t8, $t5, $t7
	lh      $t9, 0x0004($t8)
	lw      $t1, %lo(object)($t1)
	sw      $t9, 0x00C8($t1)
	lw      $t2, 0x002C($sp)
	lw      $t0, 0x0028($sp)
	li      $at, 0x42C80000
	sll     $t3, $t2, 1
	addu    $t4, $t0, $t3
	lh      $t6, 0x0006($t4)
	mtc1    $at, $f4
	lui     $t5, %hi(object)
	mtc1    $t6, $f16
	lw      $t5, %lo(object)($t5)
	cvt.s.w $f18, $f16
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x00B8($t5)
	lw      $t1, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sll     $t2, $t1, 1
	addu    $t0, $t9, $t2
	lh      $t3, 0x0002($t0)
	lw      $t8, 0x0154($t7)
	slt     $at, $t3, $t8
	beqz    $at, .L802BBEE8
	nop
	lw      $t4, 0x002C($sp)
	addiu   $t6, $t4, 0x0004
	sw      $t6, 0x002C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
.L802BBEE8:
	b       .L802BBFB4
	nop
.L802BBEF0:
	lw      $t1, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x42C80000
	sll     $t9, $t1, 1
	addu    $t2, $t7, $t9
	lh      $t0, 0x0004($t2)
	lh      $t8, 0x0006($t2)
	mtc1    $at, $f16
	mtc1    $t0, $f8
	mtc1    $t8, $f4
	lui     $a0, %hi(object)
	cvt.s.w $f10, $f8
	mtc1    $at, $f8
	lw      $a0, %lo(object)($a0)
	cvt.s.w $f6, $f4
	addiu   $a0, $a0, 0x00B8
	div.s   $f18, $f10, $f16
	div.s   $f10, $f6, $f8
	mfc1    $a1, $f18
	mfc1    $a2, $f10
	jal     obj_lib_8029E3E8
	nop
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sll     $t1, $t5, 1
	addu    $t7, $t6, $t1
	lh      $t9, 0x0002($t7)
	lw      $t4, 0x0154($t3)
	slt     $at, $t9, $t4
	beqz    $at, .L802BBF8C
	nop
	lw      $t0, 0x002C($sp)
	addiu   $t2, $t0, 0x0004
	sw      $t2, 0x002C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
.L802BBF8C:
	b       .L802BBFB4
	nop
.L802BBF94:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t3)
	sw      $0, 0x002C($sp)
	b       .L802BBFB4
	nop
.L802BBFB4:
	b       .L802BBFC4
	lw      $v0, 0x002C($sp)
	b       .L802BBFC4
	nop
.L802BBFC4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BBFD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	jal     obj_lib_802A3CFC
	nop
	beqz    $v0, .L802BC040
	nop
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0000($t6)
	slti    $at, $t7, 0x4000
	beqz    $at, .L802BC02C
	nop
	lw      $t8, 0x0018($sp)
	lw      $t0, 0x0020($sp)
	lw      $t9, 0x0000($t8)
	addu    $t1, $t9, $t0
	b       .L802BC038
	sw      $t1, 0x0000($t8)
.L802BC02C:
	lw      $t3, 0x0018($sp)
	li      $t2, 0x4000
	sw      $t2, 0x0000($t3)
.L802BC038:
	b       .L802BC070
	nop
.L802BC040:
	lw      $t4, 0x0018($sp)
	lw      $t5, 0x0000($t4)
	blez    $t5, .L802BC068
	nop
	lw      $t6, 0x0018($sp)
	lw      $t9, 0x0020($sp)
	lw      $t7, 0x0000($t6)
	subu    $t0, $t7, $t9
	b       .L802BC070
	sw      $t0, 0x0000($t6)
.L802BC068:
	lw      $t1, 0x0018($sp)
	sw      $0, 0x0000($t1)
.L802BC070:
	lw      $t8, 0x0018($sp)
	lw      $t5, 0x0024($sp)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x0002($t8)
	mtc1    $t5, $f6
	lw      $t7, 0x001C($sp)
	sra     $t3, $t2, 4
	cvt.s.w $f8, $f6
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f10, $f4, $f8
	swc1    $f10, 0x0000($t7)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0000($t9)
	beqz    $t0, .L802BC0C0
	nop
	li      $at, 0x4000
	bne     $t0, $at, .L802BC0D0
	nop
.L802BC0C0:
	b       .L802BC0E0
	li      $v0, 0x0001
	b       .L802BC0D8
	nop
.L802BC0D0:
	b       .L802BC0E0
	move    $v0, $0
.L802BC0D8:
	b       .L802BC0E0
	nop
.L802BC0E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC0F0
object_a_802BC0F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802BC130
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	b       .L802BC160
	sw      $t1, 0x014C($t9)
.L802BC130:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $a0, %hi(object_a_80330828)
	lw      $t3, 0x0144($t2)
	lw      $a1, 0x00F8($t2)
	sll     $t4, $t3, 2
	addu    $a0, $a0, $t4
	jal     object_a_802BBD6C
	lw      $a0, %lo(object_a_80330828)($a0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00F8($t5)
.L802BC160:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, str_object_a_number
	la.l    $a0, str_object_a_number
	jal     obj_debug_802CA5B8
	lw      $a1, 0x00F8($t6)
	jal     obj_lib_802A2644
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a2, 0x0400
	li      $a3, -0x0050
	addiu   $a0, $t7, 0x0104
	jal     object_a_802BBFD8
	addiu   $a1, $t7, 0x0108
	beqz    $v0, .L802BC1F4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F4($t8)
	addiu   $t1, $t0, 0x0800
	sw      $t1, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x00F6($t9)
	lwc1    $f10, 0x0100($t9)
	sra     $t4, $t3, 4
	sll     $t2, $t4, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x40000000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	sub.s   $f16, $f10, $f8
	swc1    $f16, 0x0100($t9)
.L802BC1F4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f18, 0x0100($t5)
	lwc1    $f4, 0x0168($t5)
	lwc1    $f10, 0x0108($t5)
	add.s   $f6, $f18, $f4
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x00A4($t5)
	b       .L802BC21C
	nop
.L802BC21C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC22C
object_a_802BC22C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a2, 0x007C
	li      $a3, -0x006E
	addiu   $a0, $t6, 0x0104
	jal     object_a_802BBFD8
	addiu   $a1, $t6, 0x0108
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00DC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x0108($t8)
	lwc1    $f8, 0x0168($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t8)
	b       .L802BC284
	nop
.L802BC284:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC294
object_a_802BC294:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00F4($t6)
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00F8($t7)
	swc1    $f6, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00FC($t8)
	swc1    $f8, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lw      $a3, 0x001C($sp)
	jal     obj_lib_8029F6E0
	lw      $a0, 0x0068($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lw      $t1, 0x0068($t0)
	lwc1    $f10, 0x00A4($t1)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0003
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x014C($t3)
	bne     $t4, $at, .L802BC330
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802BC330:
	b       .L802BC338
	nop
.L802BC338:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BC348:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lhu     $t6, 0x0032($sp)
	lui     $at, %hi(math_sin)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lhu     $t9, 0x0032($sp)
	lui     $at, %hi(math_cos)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x43480000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	bnez    $t3, .L802BC3CC
	nop
	li      $t4, 0x0004
	b       .L802BC3D4
	sw      $t4, 0x0020($sp)
.L802BC3CC:
	li      $t5, 0x0003
	sw      $t5, 0x0020($sp)
.L802BC3D4:
	lw      $t6, 0x0020($sp)
	sw      $0, 0x0024($sp)
	blez    $t6, .L802BC4DC
	nop
.L802BC3E4:
	lui     $a0, %hi(object)
	la.u    $a2, o_13001DCC
	la.l    $a2, o_13001DCC
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0090
	sw      $v0, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f4, 0x00F4($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t8)
	lw      $t9, 0x002C($sp)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00F8($t9)
	lw      $t0, 0x002C($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f4, 0x00FC($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00FC($t0)
	lw      $a0, 0x002C($sp)
	li      $a1, 0x40C00000
	li      $a2, 0x40C00000
	jal     obj_lib_8029F3D0
	li      $a3, 0x40C00000
	lhu     $t1, 0x0032($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x001C($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x43160000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x001C($sp)
	lhu     $t4, 0x0032($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0018($sp)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x43160000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x0018($sp)
	lw      $t7, 0x0024($sp)
	lw      $t9, 0x0020($sp)
	addiu   $t8, $t7, 0x0001
	slt     $at, $t8, $t9
	bnez    $at, .L802BC3E4
	sw      $t8, 0x0024($sp)
.L802BC4DC:
	b       .L802BC4E4
	nop
.L802BC4E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void object_a_802BC4F4(void) */
.globl object_a_802BC4F4
object_a_802BC4F4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_80337C54)
	lwc1    $f6, %lo(object_a_80337C54)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BC528
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
.L802BC528:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802BC538(void) */
.globl object_a_802BC538
object_a_802BC538:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802BC348
	move    $a0, $0
	jal     object_a_802BC348
	li      $a0, -0x8000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0118($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00C8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	b       .L802BC580
	nop
.L802BC580:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BC590(void) */
.globl object_a_802BC590
object_a_802BC590:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x0100
	sw      $t6, 0x0118($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	lw      $t0, 0x0118($t8)
	addu    $t1, $t9, $t0
	sw      $t1, 0x00C8($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x45480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802BC5EC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
.L802BC5EC:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802BC5FC(void) */
.globl object_a_802BC5FC
object_a_802BC5FC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BC618
object_a_802BC618:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330830
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330830
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, .L802BC648
	nop
	jal     map_data_803839CC
	nop
.L802BC648:
	b       .L802BC650
	nop
.L802BC650:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC660
object_a_802BC660:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802BC698
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
.L802BC698:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00F6($t9)
	lwc1    $f4, 0x00A4($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x40400000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00A4($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	addiu   $t5, $t4, 0x0400
	sw      $t5, 0x00F4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, .L802BC710
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802BC710:
	b       .L802BC718
	nop
.L802BC718:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC728
object_a_802BC728:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802BC768
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802BC82C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802BC868
	nop
	b       .L802BC87C
	nop
.L802BC768:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_a_80337C58)
	lwc1    $f6, %lo(object_a_80337C58)($at)
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BC824
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0038($sp)
.L802BC794:
	lw      $a1, 0x0038($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sll     $t9, $a1, 2
	addu    $t9, $t9, $a1
	sll     $t9, $t9, 2
	subu    $t9, $t9, $a1
	sll     $t9, $t9, 2
	subu    $t9, $t9, $a1
	sll     $t9, $t9, 2
	la.u    $t2, o_13001E04
	la.l    $t2, o_13001E04
	move    $a1, $t9
	li      $t1, 0x0035
	sw      $t1, 0x0014($sp)
	addiu   $a1, $a1, -0x0258
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t0, 0x0010($sp)
	sw      $v0, 0x003C($sp)
	lw      $t3, 0x0038($sp)
	lw      $t5, 0x003C($sp)
	sll     $t4, $t3, 12
	sw      $t4, 0x00F4($t5)
	lw      $t6, 0x0038($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, .L802BC794
	sw      $t7, 0x0038($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L802BC824:
	b       .L802BC87C
	nop
.L802BC82C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337C5C)
	lwc1    $f10, %lo(object_a_80337C5C)($at)
	lwc1    $f8, 0x015C($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802BC860
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
.L802BC860:
	b       .L802BC87C
	nop
.L802BC868:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
	b       .L802BC87C
	nop
.L802BC87C:
	b       .L802BC884
	nop
.L802BC884:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_a_802BC898
object_a_802BC898:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A0604
	nop
	jal     obj_lib_802A1308
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00AC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A8($t7)
	lwc1    $f16, 0x00B4($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t7)
	li      $at, 0xC0800000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337C60)
	lwc1    $f14, %lo(object_a_80337C60)($at)
	jal     obj_lib_802A0E68
	li      $a2, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0033
	beqz    $t0, .L802BC91C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802BC91C:
	b       .L802BC924
	nop
.L802BC924:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BC934:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13001E4C
	la.l    $a2, o_13001E4C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0090
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(object_a_80337C64)
	lwc1    $f6, %lo(object_a_80337C64)($at)
	lwc1    $f4, 0x00A4($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	jal     rand
	nop
	lw      $t9, 0x001C($sp)
	sll     $t7, $v0, 16
	sra     $t8, $t7, 16
	sw      $t8, 0x00C8($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42200000
	mtc1    $at, $f10
	li      $at, 0x41A00000
	mtc1    $at, $f18
	mul.s   $f16, $f0, $f10
	lw      $t0, 0x001C($sp)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00B8($t0)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42480000
	mtc1    $at, $f6
	li      $at, 0x41200000
	mtc1    $at, $f10
	mul.s   $f8, $f0, $f6
	lw      $t1, 0x001C($sp)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00B0($t1)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40180000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f0
	li      $at, 0x40080000
	mul.d   $f6, $f18, $f4
	mtc1    $at, $f9
	mtc1    $0, $f8
	nop
	add.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0018($sp)
	lwc1    $f18, 0x0018($sp)
	lw      $a0, 0x001C($sp)
	mfc1    $a1, $f18
	mfc1    $a2, $f18
	mfc1    $a3, $f18
	jal     obj_lib_8029F3D0
	nop
	jal     o_script_80383CB4
	nop
	lui     $at, %hi(object_a_80337C68)
	ldc1    $f6, %lo(object_a_80337C68)($at)
	cvt.d.s $f4, $f0
	c.lt.d  $f4, $f6
	nop
	bc1f    .L802BCA5C
	nop
	li.u    $a0, 0x300C8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x300C8081
.L802BCA5C:
	b       .L802BCA64
	nop
.L802BCA64:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BCA74
object_a_802BCA74:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x457A0000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0194($t6)
	li      $at, 0x45FA0000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x019C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	sltiu   $at, $t9, 0x0005
	beqz    $at, .L802BCCA4
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_a_80337C70)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_a_80337C70)($at)
	jr      $t9
	nop
.globl L802BCADC
L802BCADC:
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0214($t0)
	bne     $t1, $t2, .L802BCB0C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
.L802BCB0C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0100
	sw      $t6, 0x0118($t7)
	b       .L802BCCA4
	nop
.globl L802BCB24
L802BCB24:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t9, 0x0154($t8)
	sll     $t0, $t9, 7
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t4, $t2, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x43800000
	mtc1    $at, $f10
	mtc1    $at, $f18
	mul.s   $f16, $f8, $f10
	sub.s   $f4, $f18, $f16
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sw      $t3, 0x0118($t8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0081
	bnez    $at, .L802BCB9C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
.L802BCB9C:
	b       .L802BCCA4
	nop
.globl L802BCBA4
L802BCBA4:
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0214($t2)
	beq     $t4, $t5, .L802BCBD4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t8, 0x014C($t3)
	addiu   $t6, $t8, 0x0001
	sw      $t6, 0x014C($t3)
.L802BCBD4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x0154($t7)
	slti    $at, $t0, 0x0081
	bnez    $at, .L802BCC00
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t9, 0x014C($t1)
	addiu   $t2, $t9, 0x0001
	sw      $t2, 0x014C($t1)
.L802BCC00:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0118($t4)
	jal     object_a_802BC934
	nop
	b       .L802BCCA4
	nop
.globl L802BCC1C
L802BCC1C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lw      $t8, 0x0154($t5)
	sll     $t6, $t8, 7
	andi    $t3, $t6, 0xFFFF
	sra     $t7, $t3, 4
	sll     $t0, $t7, 2
	addu    $at, $at, $t0
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x43800000
	mtc1    $at, $f10
	nop
	mul.s   $f18, $f8, $f10
	trunc.w.s $f16, $f18
	mfc1    $t2, $f16
	nop
	sw      $t2, 0x0118($t5)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x0154($t1)
	slti    $at, $t4, 0x0081
	bnez    $at, .L802BCC88
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802BCC88:
	b       .L802BCCA4
	nop
.globl L802BCC90
L802BCC90:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	b       .L802BCCA4
	nop
.L802BCCA4:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t7, 0x0118($t3)
	subu    $t0, $0, $t7
	sw      $t0, 0x0118($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x00C8($t9)
	lw      $t5, 0x0118($t9)
	addu    $t1, $t2, $t5
	sw      $t1, 0x00C8($t9)
	b       .L802BCCD8
	nop
.L802BCCD8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BCCE8:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a2, 0x014C($t6)
	beqz    $a2, .L802BCD20
	nop
	li      $at, 0x0001
	beq     $a2, $at, .L802BCD3C
	nop
	li      $at, 0x0002
	beq     $a2, $at, .L802BCD88
	nop
	b       .L802BCD98
	nop
.L802BCD20:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
	b       .L802BCD98
	nop
.L802BCD3C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00F6($t0)
	lwc1    $f4, 0x00A4($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f6, $f12
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	addu    $t6, $t5, $a1
	sw      $t6, 0x00F4($t4)
	b       .L802BCD98
	nop
.L802BCD88:
	b       .L802BCD98
	nop
	b       .L802BCD98
	nop
.L802BCD98:
	b       .L802BCDA0
	nop
.L802BCDA0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802BCDA8
object_a_802BCDA8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_a_80337C84)
	lwc1    $f4, %lo(object_a_80337C84)($at)
	swc1    $f4, 0x001C($sp)
	li      $t6, 0x0100
	sw      $t6, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00C8($t7)
	beqz    $t8, .L802BCDEC
	nop
	lwc1    $f12, 0x001C($sp)
	jal     object_a_802BCCE8
	lw      $a1, 0x0018($sp)
	b       .L802BCE40
	nop
.L802BCDEC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00F6($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x44000000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	nop
	sw      $t4, 0x00D0($t9)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	addiu   $t7, $t6, 0x0100
	sw      $t7, 0x00F4($t5)
.L802BCE40:
	b       .L802BCE48
	nop
.L802BCE48:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BCE58
object_a_802BCE58:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x001C($sp)
	li      $t6, 0x0100
	sw      $t6, 0x0018($sp)
	lwc1    $f12, 0x001C($sp)
	jal     object_a_802BCCE8
	lw      $a1, 0x0018($sp)
	b       .L802BCE8C
	nop
.L802BCE8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BCE9C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t7, $sp, 0x0018
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0000($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	addiu   $t9, $sp, 0x0018
	lwc1    $f6, 0x00A4($t8)
	swc1    $f6, 0x0004($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $t1, $sp, 0x0018
	lwc1    $f8, 0x00A8($t0)
	swc1    $f8, 0x0008($t1)
	lwc1    $f10, 0x0034($sp)
	addiu   $t2, $sp, 0x0024
	swc1    $f10, 0x0000($t2)
	lwc1    $f16, 0x0038($sp)
	addiu   $t3, $sp, 0x0024
	swc1    $f16, 0x0004($t3)
	lwc1    $f18, 0x003C($sp)
	addiu   $t4, $sp, 0x0024
	swc1    $f18, 0x0008($t4)
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0024
	addiu   $a2, $sp, 0x0018
	jal     mtxf_stand
	move    $a3, $0
	b       .L802BCF30
	nop
.L802BCF30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802BCF40
object_a_802BCF40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t7, $t6, 0x021C
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00F4($t8)
	li      $at, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00FC($t0)
	lw      $a0, 0x001C($sp)
	li      $a1, 0x0000
	li      $a2, 0x3F800000
	jal     object_a_802BCE9C
	li      $a3, 0x0000
	b       .L802BCFB4
	nop
.L802BCFB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BCFC4:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	c.le.s  $f14, $f12
	nop
	bc1f    .L802BD010
	nop
	sub.s   $f4, $f12, $f14
	lwc1    $f6, 0x0010($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BCFFC
	nop
	b       .L802BD008
	swc1    $f12, 0x0004($sp)
.L802BCFFC:
	lwc1    $f8, 0x0010($sp)
	add.s   $f10, $f14, $f8
	swc1    $f10, 0x0004($sp)
.L802BD008:
	b       .L802BD040
	nop
.L802BD010:
	lwc1    $f18, 0x0010($sp)
	sub.s   $f16, $f12, $f14
	neg.s   $f4, $f18
	c.lt.s  $f4, $f16
	nop
	bc1f    .L802BD034
	nop
	b       .L802BD040
	swc1    $f12, 0x0004($sp)
.L802BD034:
	lwc1    $f6, 0x0010($sp)
	sub.s   $f8, $f14, $f6
	swc1    $f8, 0x0004($sp)
.L802BD040:
	b       .L802BD050
	lwc1    $f0, 0x0004($sp)
	b       .L802BD050
	nop
.L802BD050:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802BD058
object_a_802BD058:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x0014($sp)
	sw      $0, 0x003C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t7, $t6, 0x021C
	sw      $t7, 0x0034($sp)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t8)
	bne     $t9, $t0, .L802BD268
	nop
	addiu   $a0, $sp, 0x0048
	addiu   $a1, $sp, 0x0044
	jal     mario_pos_get
	addiu   $a2, $sp, 0x0040
	lui     $t1, %hi(obj_mario)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, %lo(obj_mario)($t1)
	addiu   $t3, $sp, 0x0064
	lwc1    $f6, 0x00A0($t2)
	lwc1    $f4, 0x00A0($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t3)
	lui     $t4, %hi(obj_mario)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, %lo(obj_mario)($t4)
	addiu   $t6, $sp, 0x0064
	lwc1    $f16, 0x00A4($t5)
	lwc1    $f10, 0x00A4($t4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t6)
	lui     $t7, %hi(obj_mario)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, %lo(obj_mario)($t7)
	addiu   $t9, $sp, 0x0064
	lwc1    $f6, 0x00A8($t8)
	lwc1    $f4, 0x00A8($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t9)
	lw      $a0, 0x0034($sp)
	addiu   $a1, $sp, 0x0058
	jal     obj_lib_8029F200
	addiu   $a2, $sp, 0x0064
	lui     $t0, %hi(obj_mario)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, %lo(obj_mario)($t0)
	lwc1    $f16, 0x00A0($t1)
	lwc1    $f10, 0x00A0($t0)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x007C($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0078($sp)
	lui     $t2, %hi(obj_mario)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, %lo(obj_mario)($t2)
	lwc1    $f8, 0x00A8($t3)
	lwc1    $f6, 0x00A8($t2)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0074($sp)
	lwc1    $f16, 0x007C($sp)
	lwc1    $f4, 0x0078($sp)
	lwc1    $f10, 0x0074($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f6, $f4, $f4
	add.s   $f8, $f18, $f6
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f16
	swc1    $f0, 0x0070($sp)
	lwc1    $f4, 0x0070($sp)
	mtc1    $0, $f18
	nop
	c.eq.s  $f4, $f18
	nop
	bc1t    .L802BD208
	nop
	lwc1    $f10, 0x0070($sp)
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f8, $f10
	div.d   $f16, $f6, $f8
	cvt.s.d $f4, $f16
	swc1    $f4, 0x0070($sp)
	lwc1    $f18, 0x007C($sp)
	lwc1    $f10, 0x0070($sp)
	mul.s   $f6, $f18, $f10
	swc1    $f6, 0x007C($sp)
	lwc1    $f8, 0x0078($sp)
	lwc1    $f16, 0x0070($sp)
	mul.s   $f4, $f8, $f16
	swc1    $f4, 0x0078($sp)
	lwc1    $f18, 0x0074($sp)
	lwc1    $f10, 0x0070($sp)
	mul.s   $f6, $f18, $f10
	b       .L802BD230
	swc1    $f6, 0x0074($sp)
.L802BD208:
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x007C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0078($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0074($sp)
.L802BD230:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x010C($t4)
	bne     $t5, $at, .L802BD254
	nop
	lw      $t6, 0x003C($sp)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x003C($sp)
.L802BD254:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	b       .L802BD29C
	sw      $t8, 0x010C($t9)
.L802BD268:
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x007C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0078($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0074($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x010C($t0)
.L802BD29C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	lwc1    $f12, 0x007C($sp)
	jal     object_a_802BCFC4
	lwc1    $f14, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	swc1    $f0, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	lwc1    $f12, 0x0078($sp)
	jal     object_a_802BCFC4
	lwc1    $f14, 0x00F8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	swc1    $f0, 0x00F8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	lwc1    $f12, 0x0074($sp)
	jal     object_a_802BCFC4
	lwc1    $f14, 0x00FC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x00FC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x00F4($t7)
	lw      $a2, 0x00F8($t7)
	jal     object_a_802BCE9C
	lw      $a3, 0x00FC($t7)
	lw      $t8, 0x003C($sp)
	beqz    $t8, .L802BD3BC
	nop
	lw      $a0, 0x0034($sp)
	addiu   $a1, $sp, 0x004C
	jal     obj_lib_8029F200
	addiu   $a2, $sp, 0x0064
	addiu   $t9, $sp, 0x004C
	addiu   $t0, $sp, 0x0058
	lwc1    $f16, 0x0000($t0)
	lwc1    $f8, 0x0000($t9)
	lwc1    $f18, 0x0048($sp)
	sub.s   $f4, $f8, $f16
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0048($sp)
	addiu   $t1, $sp, 0x004C
	addiu   $t2, $sp, 0x0058
	lwc1    $f8, 0x0004($t2)
	lwc1    $f6, 0x0004($t1)
	lwc1    $f18, 0x0044($sp)
	sub.s   $f16, $f6, $f8
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0044($sp)
	addiu   $t3, $sp, 0x004C
	addiu   $t4, $sp, 0x0058
	lwc1    $f6, 0x0008($t4)
	lwc1    $f10, 0x0008($t3)
	lwc1    $f18, 0x0040($sp)
	sub.s   $f8, $f10, $f6
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x0040($sp)
	lwc1    $f12, 0x0048($sp)
	lwc1    $f14, 0x0044($sp)
	jal     mario_pos_set
	lw      $a2, 0x0040($sp)
.L802BD3BC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0034($sp)
	sw      $t5, 0x0050($t6)
	b       .L802BD3D4
	nop
.L802BD3D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0080
	jr      $ra
	nop

object_a_802BD3E4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002DB0
	la.l    $a2, o_13002DB0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A3
	la.u    $t6, player_data
	la.l    $t6, player_data
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802BD470
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002C60
	la.l    $a2, o_13002C60
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x00A4
	jal     obj_lib_8029EEB8
	li      $a3, 0x3FC00000
	sw      $v0, 0x0018($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f8
	lw      $t7, 0x0018($sp)
	mul.s   $f10, $f0, $f8
	swc1    $f10, 0x00B0($t7)
	lw      $a0, 0x0018($sp)
	jal     obj_lib_802A308C
	li      $a1, 0x42DC0000
.L802BD470:
	b       .L802BD478
	nop
.L802BD478:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BD488
object_a_802BD488:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802BD544
	nop
	jal     rand
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00C8($t8)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x00B0($t9)
	li      $at, 0xC0800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t0)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t2, $f18
	nop
	sw      $t2, 0x00F0($t3)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x42DC0000
	li      $at, 0x40800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t4)
.L802BD544:
	jal     obj_lib_802A0604
	nop
	jal     obj_lib_802A2644
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, 0x00E8($t5)
	lwc1    $f8, 0x00A4($t5)
	c.lt.s  $f8, $f6
	nop
	bc1t    .L802BD584
	nop
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x000B
	bnez    $at, .L802BD590
	nop
.L802BD584:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802BD590:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_a_80337C88)
	ldc1    $f18, %lo(object_a_80337C88)($at)
	lwc1    $f10, 0x00F8($t7)
	cvt.d.s $f16, $f10
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F8($t8)
	b       .L802BD5CC
	nop
.L802BD5CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BD5DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
.L802BD5E8:
	lui     $a0, %hi(object)
	la.u    $a2, o_13001F68
	la.l    $a2, o_13001F68
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0090
	lw      $t6, 0x001C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0002
	bnez    $at, .L802BD5E8
	sw      $t7, 0x001C($sp)
	b       .L802BD61C
	nop
.L802BD61C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BD62C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f4, 0x00A4($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	b       .L802BD670
	nop
.L802BD670:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BD680
object_a_802BD680:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330840
	la.l    $a1, object_a_80330840
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802BD6DC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802BD74C
	nop
	b       .L802BD8A8
	nop
.L802BD6DC:
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A452C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x8000
	beqz    $t9, .L802BD718
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
.L802BD718:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D4($t3)
	addiu   $t5, $t4, 0x1000
	sw      $t5, 0x00D4($t3)
	jal     obj_lib_802A2348
	li      $a0, -0x0014
	li      $at, 0x41200000
	mtc1    $at, $f12
	jal     object_a_802BD62C
	nop
	b       .L802BD8A8
	nop
.L802BD74C:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029F120
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A064C
	nop
	sw      $v0, 0x0034($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mov.s   $f20, $f0
	lwc1    $f4, 0x00A4($t7)
	jal     obj_lib_802A3634
	sub.s   $f12, $f20, $f4
	li      $at, 0x41200000
	mtc1    $at, $f6
	nop
	c.lt.s  $f0, $f6
	nop
	bc1f    .L802BD7C4
	nop
	jal     object_a_802BD3E4
	nop
	b       .L802BD84C
	nop
.L802BD7C4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A4($t8)
	lwc1    $f10, 0x00E8($t8)
	jal     obj_lib_802A3634
	sub.s   $f12, $f8, $f10
	li      $at, 0x40A00000
	mtc1    $at, $f16
	nop
	c.lt.s  $f0, $f16
	nop
	bc1f    .L802BD83C
	nop
	lw      $t9, 0x0034($sp)
	beqz    $t9, .L802BD824
	nop
	lh      $t1, 0x0000($t9)
	li      $at, 0x0001
	bne     $t1, $at, .L802BD824
	nop
	jal     object_a_802BD5DC
	nop
	b       .L802BD834
	nop
.L802BD824:
	li      $at, 0x41200000
	mtc1    $at, $f12
	jal     object_a_802BD62C
	nop
.L802BD834:
	b       .L802BD84C
	nop
.L802BD83C:
	li      $at, 0x41200000
	mtc1    $at, $f12
	jal     object_a_802BD62C
	nop
.L802BD84C:
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t0, 0x00C8($t2)
	sw      $t0, 0x00D4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x00400000
	lw      $t3, 0x0134($t5)
	and     $t6, $t3, $at
	beqz    $t6, .L802BD8A0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A37AC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
.L802BD8A0:
	b       .L802BD8A8
	nop
.L802BD8A8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	b       .L802BD8BC
	nop
.L802BD8BC:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

object_a_802BD8D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_80337C90)
	lwc1    $f6, %lo(object_a_80337C90)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BD904
	nop
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
.L802BD904:
	b       .L802BD90C
	nop
.L802BD90C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BD91C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41000000
	mtc1    $at, $f8
	lw      $t7, 0x0154($t6)
	li      $at, 0x47000000
	mtc1    $at, $f16
	addiu   $t8, $t7, 0x0001
	mtc1    $t8, $f4
	li      $t0, 0x0001
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	mul.s   $f18, $f10, $f16
	cfc1    $t9, $31
	ctc1    $t0, $31
	nop
	cvt.w.s $f4, $f18
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	beqz    $t0, .L802BD9DC
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f4
	li      $t0, 0x0001
	sub.s   $f4, $f18, $f4
	ctc1    $t0, $31
	nop
	cvt.w.s $f4, $f4
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	bnez    $t0, .L802BD9D4
	nop
	mfc1    $t0, $f4
	li      $at, 0x80000000
	b       .L802BD9EC
	or      $t0, $t0, $at
.L802BD9D4:
	b       .L802BD9EC
	li      $t0, -0x0001
.L802BD9DC:
	mfc1    $t0, $f4
	nop
	bltz    $t0, .L802BD9D4
	nop
.L802BD9EC:
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	ctc1    $t9, $31
	lui     $at, %hi(object_a_80337C98)
	ldc1    $f10, %lo(object_a_80337C98)($at)
	cvt.d.s $f8, $f6
	lwc1    $f18, 0x0168($t6)
	mul.d   $f16, $f10, $f8
	li      $at, 0x40080000
	cvt.d.s $f4, $f18
	mtc1    $at, $f11
	mtc1    $0, $f10
	add.d   $f6, $f4, $f16
	add.d   $f8, $f6, $f10
	cvt.s.d $f18, $f8
	swc1    $f18, 0x00A4($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x0018($sp)
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x001C($sp)
	swc1    $f16, 0x00C0($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t9, 0x0022($sp)
	lw      $t8, 0x00D0($t7)
	addu    $t0, $t8, $t9
	sw      $t0, 0x00D0($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x00D2($t1)
	bgez    $t2, .L802BDA94
	nop
	lh      $t3, 0x0026($sp)
	subu    $t6, $0, $t3
	sh      $t6, 0x0026($sp)
.L802BDA94:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t8, 0x0026($sp)
	lw      $t5, 0x00D8($t4)
	addu    $t9, $t5, $t8
	sw      $t9, 0x00D8($t4)
	jal     obj_lib_802A31E0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0007
	lw      $t7, 0x0154($t0)
	bne     $t7, $at, .L802BDAEC
	nop
	jal     obj_lib_802A3A88
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x014C($t1)
	li.u    $a0, 0x30468081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30468081
.L802BDAEC:
	b       .L802BDAF4
	nop
.L802BDAF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BDB04(void) */
.globl object_a_802BDB04
object_a_802BDB04:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42800000
	mtc1    $at, $f12
	mtc1    $0, $f14
	li      $a2, 0x0800
	jal     object_a_802BD91C
	move    $a3, $0
	b       .L802BDB2C
	nop
.L802BDB2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BDB3C(void) */
.globl object_a_802BDB3C
object_a_802BDB3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0xC2800000
	mtc1    $at, $f12
	mtc1    $0, $f14
	li      $a2, -0x0800
	jal     object_a_802BD91C
	move    $a3, $0
	b       .L802BDB64
	nop
.L802BDB64:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BDB74(void) */
.globl object_a_802BDB74
object_a_802BDB74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0xC2800000
	mtc1    $at, $f14
	mtc1    $0, $f12
	move    $a2, $0
	jal     object_a_802BD91C
	li      $a3, 0x0800
	b       .L802BDB9C
	nop
.L802BDB9C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BDBAC(void) */
.globl object_a_802BDBAC
object_a_802BDBAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42800000
	mtc1    $at, $f14
	mtc1    $0, $f12
	move    $a2, $0
	jal     object_a_802BD91C
	li      $a3, -0x0800
	b       .L802BDBD4
	nop
.L802BDBD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BDBE4(void) */
.globl object_a_802BDBE4
object_a_802BDBE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802BDC1C
	nop
	jal     object_a_802BD8D0
	nop
.L802BDC1C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40400000
	mtc1    $at, $f8
	lwc1    $f6, 0x0168($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0014
	lw      $t1, 0x0154($t0)
	bne     $t1, $at, .L802BDC64
	nop
	jal     obj_lib_802A3A88
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x014C($t2)
.L802BDC64:
	b       .L802BDC6C
	nop
.L802BDC6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BDC7C(void) */
.globl object_a_802BDC7C
object_a_802BDC7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0014
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802BDCB0
	nop
	jal     obj_lib_802A3A88
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x014C($t8)
.L802BDCB0:
	b       .L802BDCB8
	nop
.L802BDCB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BDCC8(void) */
.globl object_a_802BDCC8
object_a_802BDCC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0014
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802BDCFC
	nop
	jal     obj_lib_802A3A88
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x014C($t8)
.L802BDCFC:
	b       .L802BDD04
	nop
.L802BDD04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BDD14(void) */
.globl object_a_802BDD14
object_a_802BDD14:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t9, %hi(object_a_803308CC)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(object_a_803308CC)($t9)
	sw      $t9, 0x001C($sp)
	jal     obj_lib_802A3A4C
	lw      $a0, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x014C($t0)
	b       .L802BDD58
	nop
.L802BDD58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BDD68
object_a_802BDD68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_803308D8
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_803308D8
	jal     map_data_803839CC
	nop
	b       .L802BDD8C
	nop
.L802BDD8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BDD9C(void) */
.globl object_a_802BDD9C
object_a_802BDD9C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0008
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44960000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BDDF8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
.L802BDDF8:
	b       .L802BDE00
	nop
.L802BDE00:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BDE10:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x8000
	beqz    $t9, .L802BDEC8
	nop
	jal     Na_BGM_pull
	li      $a0, 0x0032
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x4000
	beqz    $t2, .L802BDEA8
	nop
	li.u    $a0, 0x90116081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90116081
	sw      $0, 0x001C($sp)
.L802BDE68:
	lui     $a0, %hi(object)
	la.u    $a2, o_130000F8
	la.l    $a2, o_130000F8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00AA
	lw      $t3, 0x001C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0014
	bnez    $at, .L802BDE68
	sw      $t4, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0005
	b       .L802BDEB8
	sw      $t5, 0x014C($t6)
.L802BDEA8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
.L802BDEB8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L802BDECC
	sw      $0, 0x0134($t9)
.L802BDEC8:
	sw      $0, 0x0018($sp)
.L802BDECC:
	b       .L802BDEDC
	lw      $v0, 0x0018($sp)
	b       .L802BDEDC
	nop
.L802BDEDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802BDEEC(void) */
.globl object_a_802BDEEC
object_a_802BDEEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05D4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x8000
	sw      $t6, 0x0130($t7)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0008
	li      $at, 0x437A0000
	mtc1    $at, $f12
	li      $at, 0x43480000
	mtc1    $at, $f14
	jal     obj_lib_802A19C8
	nop
	li      $at, 0x43160000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     obj_lib_802A19F0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0180($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BDF9C
	nop
	jal     object_a_802BE49C
	nop
	beqz    $v0, .L802BDF94
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
.L802BDF94:
	b       .L802BE014
	nop
.L802BDF9C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t2)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802BDFE4
	nop
	li      $a0, 0x000B
	move    $a1, $0
	li      $a2, 0x00FF
	jal     Na_BGM_push
	li      $a3, 0x03E8
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       .L802BE014
	sw      $0, 0x00F4($t3)
.L802BDFE4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	bnez    $t5, .L802BE014
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F4($t6)
	jal     Na_BGM_pull
	li      $a0, 0x0032
.L802BE014:
	jal     object_a_802BDE10
	nop
	b       .L802BE024
	nop
.L802BE024:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BE034(void) */
.globl object_a_802BE034
object_a_802BE034:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x0180($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802BE068
	nop
	jal     Na_BGM_pull
	li      $a0, 0x0032
.L802BE068:
	jal     object_a_802BDE10
	nop
	bnez    $v0, .L802BE0A0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x000B
	bnez    $at, .L802BE0A0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
.L802BE0A0:
	b       .L802BE0A8
	nop
.L802BE0A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BE0B8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L802BE0DC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
.L802BE0DC:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802BE0EC(void) */
.globl object_a_802BE0EC
object_a_802BE0EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0002
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802BE130
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	sw      $t7, 0x014C($t8)
.L802BE130:
	jal     object_a_802BE0B8
	nop
	b       .L802BE140
	nop
.L802BE140:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BE150(void) */
.globl object_a_802BE150
object_a_802BE150:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802BE190
	nop
	li.u    $a0, 0x50744081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50744081
	li      $at, 0x3F800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t8)
.L802BE190:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f8
	lwc1    $f6, 0x00F8($t9)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802BE1D8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337CA0)
	ldc1    $f18, %lo(object_a_80337CA0)($at)
	lwc1    $f10, 0x00F8($t0)
	cvt.d.s $f16, $f10
	sub.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	b       .L802BE204
	swc1    $f6, 0x00F8($t0)
.L802BE1D8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00F8($t1)
	jal     obj_lib_802A5524
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0007
	sw      $t2, 0x014C($t3)
.L802BE204:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F8($t4)
	jal     object_a_802BE0B8
	nop
	b       .L802BE224
	nop
.L802BE224:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BE234(void) */
.globl object_a_802BE234
object_a_802BE234:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44960000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802BE268
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0008
	sw      $t7, 0x014C($t8)
.L802BE268:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802BE278(void) */
.globl object_a_802BE278
object_a_802BE278:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802BE2B0
	nop
	lui     $at, %hi(object_a_80337CA8)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, %lo(object_a_80337CA8)($at)
	swc1    $f4, 0x00F8($t8)
.L802BE2B0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	lwc1    $f6, 0x00F8($t9)
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	c.lt.d  $f8, $f10
	nop
	bc1f    .L802BE304
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337CB0)
	ldc1    $f4, %lo(object_a_80337CB0)($at)
	lwc1    $f16, 0x00F8($t0)
	cvt.d.s $f18, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	b       .L802BE328
	swc1    $f8, 0x00F8($t0)
.L802BE304:
	li      $at, 0x3F800000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
.L802BE328:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F8($t3)
	b       .L802BE340
	nop
.L802BE340:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BE350(void) */
.globl object_a_802BE350
object_a_802BE350:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x001C($sp)
	jal     obj_lib_802A05D4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0008
	sw      $t8, 0x0130($t9)
	jal     obj_lib_8029F4B4
	move    $a0, $0
	li      $at, 0x43160000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     obj_lib_802A19C8
	nop
	li      $at, 0x43160000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     obj_lib_802A19F0
	nop
	la.u    $a1, object_a_803308F8
	la.l    $a1, object_a_803308F8
	jal     obj_lib_802A40B8
	lw      $a0, 0x001C($sp)
	beqz    $v0, .L802BE3DC
	nop
	li.u    $a0, 0x90105081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90105081
.L802BE3DC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a2, 0x0400
	lw      $a0, 0x00C8($t0)
	jal     obj_lib_8029E530
	lw      $a1, 0x0160($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802BE444
	nop
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802BE444
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	sw      $t3, 0x014C($t4)
.L802BE444:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0134($t5)
	andi    $t7, $t6, 0x8000
	beqz    $t7, .L802BE484
	nop
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lw      $t9, 0x0004($t8)
	andi    $t0, $t9, 0x0004
	beqz    $t0, .L802BE484
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0005
	sw      $t1, 0x014C($t2)
.L802BE484:
	b       .L802BE48C
	nop
.L802BE48C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BE49C:
	la.u    $t6, player_data
	la.l    $t6, player_data
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802BE4C8
	nop
	jr      $ra
	li      $v0, 0x0001
.L802BE4C8:
	la.u    $t7, player_data
	la.l    $t7, player_data
	li      $at, 0x41200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t7)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802BE4F4
	nop
	jr      $ra
	li      $v0, 0x0001
.L802BE4F4:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802BE50C(void) */
.globl object_a_802BE50C
object_a_802BE50C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0006
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802BE544
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
.L802BE544:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BE588
	nop
	jal     object_a_802BE49C
	nop
	beqz    $v0, .L802BE588
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
.L802BE588:
	b       .L802BE590
	nop
.L802BE590:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BE5A0
object_a_802BE5A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330900
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330900
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x0018
	bne     $t6, $at, .L802BE604
	nop
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lui     $at, %hi(object_a_80337CB8)
	lwc1    $f6, %lo(object_a_80337CB8)($at)
	lwc1    $f4, 0x00A4($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802BE5FC
	nop
	jal     obj_lib_8029F6BC
	nop
	b       .L802BE604
	nop
.L802BE5FC:
	jal     obj_lib_8029F694
	nop
.L802BE604:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	b       .L802BE618
	nop
.L802BE618:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BE628:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lh      $a1, 0x0022($sp)
	jal     obj_lib_8029EDCC
	lw      $a2, 0x0024($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lwc1    $f6, 0x0028($sp)
	lwc1    $f4, 0x00A0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lw      $t7, 0x001C($sp)
	li      $at, 0x42480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lw      $t8, 0x001C($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f4, 0x00A8($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t8)
	lb      $t9, 0x0033($sp)
	lw      $t0, 0x001C($sp)
	sw      $t9, 0x014C($t0)
	lw      $t1, 0x0034($sp)
	lw      $t2, 0x001C($sp)
	sw      $t1, 0x010C($t2)
	lw      $t3, 0x0034($sp)
	lw      $t4, 0x001C($sp)
	sw      $t3, 0x0110($t4)
	b       .L802BE6C4
	nop
.L802BE6C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BE6D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0028($sp)
	sw      $0, 0x0024($sp)
.L802BE6E4:
	lw      $t6, 0x0024($sp)
	la.u    $t8, object_a_80330AAC
	la.l    $t8, object_a_80330AAC
	sll     $t7, $t6, 3
	addu    $t9, $t7, $t8
	lb      $t0, 0x0001($t9)
	lwc1    $f8, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $t0, $f4
	mtc1    $at, $f16
	lb      $t1, 0x0002($t9)
	cvt.s.w $f6, $f4
	lb      $t2, 0x0003($t9)
	mtc1    $t1, $f4
	lbu     $a0, 0x0000($t9)
	sw      $t2, 0x0010($sp)
	lw      $t3, 0x0004($t9)
	mul.s   $f10, $f6, $f8
	la.u    $a1, o_13002038
	la.l    $a1, o_13002038
	sw      $t3, 0x0014($sp)
	cvt.s.w $f6, $f4
	div.s   $f18, $f10, $f16
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	mfc1    $a2, $f18
	div.s   $f18, $f10, $f16
	mfc1    $a3, $f18
	jal     object_a_802BE628
	nop
	lw      $t4, 0x0024($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x000E
	bnez    $at, .L802BE6E4
	sw      $t5, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x014C($t6)
	b       .L802BE78C
	nop
.L802BE78C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802BE79C
object_a_802BE79C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802BE7DC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802BE7F4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802BE884
	nop
	b       .L802BE88C
	nop
.L802BE7DC:
	li      $at, 0x43F00000
	mtc1    $at, $f12
	jal     object_a_802BE6D4
	nop
	b       .L802BE88C
	nop
.L802BE7F4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0003
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, .L802BE87C
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BE87C
	nop
	sw      $0, 0x002C($sp)
.L802BE82C:
	lui     $a0, %hi(object)
	la.u    $a2, o_130009A4
	la.l    $a2, o_130009A4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0074
	sw      $v0, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x0005
	bnez    $at, .L802BE82C
	sw      $t0, 0x002C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x014C($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x014C($t2)
.L802BE87C:
	b       .L802BE88C
	nop
.L802BE884:
	b       .L802BE88C
	nop
.L802BE88C:
	b       .L802BE894
	nop
.L802BE894:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void object_a_802BE8A8(void) */
.globl object_a_802BE8A8
object_a_802BE8A8:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802BE8B8(void) */
.globl object_a_802BE8B8
object_a_802BE8B8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802BE8F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0110($t6)
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t8)
	bne     $t9, $t0, .L802BE93C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	lw      $t3, 0x0068($t2)
	sw      $t1, 0x00F4($t3)
.L802BE93C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0108($t4)
	bnez    $t5, .L802BE9C4
	nop
	lw      $t6, 0x001C($sp)
	jal     obj_lib_8029FDB4
	lb      $a0, 0x0000($t6)
	lw      $t7, 0x001C($sp)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x001C($sp)
	sw      $t9, 0x0110($t0)
	lw      $t2, 0x001C($sp)
	li      $at, -0x0001
	lb      $t1, 0x0000($t2)
	bne     $t1, $at, .L802BE9B4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0068($t3)
	lw      $t5, 0x00F4($t4)
	ori     $t6, $t5, 0x0002
	sw      $t6, 0x00F4($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x010C($t7)
	sw      $t8, 0x0110($t7)
.L802BE9B4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0108($t0)
.L802BE9C4:
	b       .L802BE9CC
	nop
.L802BE9CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BE9DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0014
	beqz    $at, .L802BEA68
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bgez    $t9, .L802BEA2C
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802BEA2C
	nop
	addiu   $t0, $t0, -0x0002
.L802BEA2C:
	beqz    $t0, .L802BEA48
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f4
	b       .L802BEA60
	swc1    $f4, 0x0100($t1)
.L802BEA48:
	li      $at, 0xC0C00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0100($t2)
.L802BEA60:
	b       .L802BEAFC
	nop
.L802BEA68:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0014
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, .L802BEA8C
	nop
	li.u    $a0, 0x90192081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90192081
.L802BEA8C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0020($sp)
	lw      $t6, 0x0154($t5)
	addiu   $t8, $t7, 0x0014
	slt     $at, $t6, $t8
	beqz    $at, .L802BEAE0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f8, 0x00FC($t9)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00FC($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f18, 0x0104($t0)
	add.s   $f6, $f18, $f4
	b       .L802BEAFC
	swc1    $f6, 0x0104($t0)
.L802BEAE0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0108($t3)
.L802BEAFC:
	b       .L802BEB04
	nop
.L802BEB04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BEB14(void) */
.globl object_a_802BEB14
object_a_802BEB14:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0018
	beqz    $at, .L802BEB38
	nop
	b       .L802BEB44
	sw      $0, 0x0004($sp)
.L802BEB38:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0108($t8)
.L802BEB44:
	b       .L802BEB4C
	nop
.L802BEB4C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void object_a_802BEB54(void) */
.globl object_a_802BEB54
object_a_802BEB54:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0xC2F00000
	mtc1    $at, $f12
	mtc1    $0, $f14
	li      $a2, 0x0004
	jal     object_a_802BE9DC
	li      $a3, 0x0004
	b       .L802BEB7C
	nop
.L802BEB7C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BEB8C(void) */
.globl object_a_802BEB8C
object_a_802BEB8C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42F00000
	mtc1    $at, $f12
	mtc1    $0, $f14
	li      $a2, 0x0004
	jal     object_a_802BE9DC
	li      $a3, 0x0005
	b       .L802BEBB4
	nop
.L802BEBB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BEBC4(void) */
.globl object_a_802BEBC4
object_a_802BEBC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0xC2F00000
	mtc1    $at, $f14
	mtc1    $0, $f12
	li      $a2, 0x0004
	jal     object_a_802BE9DC
	li      $a3, 0x0006
	b       .L802BEBEC
	nop
.L802BEBEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BEBFC(void) */
.globl object_a_802BEBFC
object_a_802BEBFC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42F00000
	mtc1    $at, $f14
	mtc1    $0, $f12
	li      $a2, 0x0004
	jal     object_a_802BE9DC
	li      $a3, 0x0003
	b       .L802BEC24
	nop
.L802BEC24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BEC34
object_a_802BEC34:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802BE8F4
	nop
	la.u    $a0, object_a_80330B1C
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330B1C
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00FC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0168($t7)
	lwc1    $f16, 0x0100($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f6, 0x0104($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t8)
	b       .L802BECA0
	nop
.L802BECA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BECB0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x47800000
	mtc1    $at, $f8
	lw      $t7, 0x0048($t6)
	mtc1    $0, $f16
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	c.eq.s  $f10, $f16
	swc1    $f10, 0x001C($sp)
	bc1f    .L802BED0C
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x001C($sp)
.L802BED0C:
	lwc1    $f4, 0x001C($sp)
	lh      $a0, 0x0022($sp)
	trunc.w.s $f6, $f4
	mfc1    $a1, $f6
	jal     obj_lib_802A0050
	nop
	bnez    $v0, .L802BED4C
	nop
	lwc1    $f8, 0x001C($sp)
	lh      $a0, 0x0026($sp)
	trunc.w.s $f10, $f8
	mfc1    $a1, $f10
	jal     obj_lib_802A0050
	nop
	beqz    $v0, .L802BED5C
	nop
.L802BED4C:
	jal     obj_sfx_802CA1E0
	lw      $a0, 0x0028($sp)
	b       .L802BED6C
	li      $v0, 0x0001
.L802BED5C:
	b       .L802BED6C
	move    $v0, $0
	b       .L802BED6C
	nop
.L802BED6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BED7C
object_a_802BED7C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0178($t6)
	bnez    $t7, .L802BEDD4
	nop
	lw      $t8, 0x0020($sp)
	bnez    $t8, .L802BEDB8
	nop
	li.u    $t9, 0x50020081
	li.l    $t9, 0x50020081
	b       .L802BEDC4
	sw      $t9, 0x001C($sp)
.L802BEDB8:
	li.u    $t0, 0x50098081
	li.l    $t0, 0x50098081
	sw      $t0, 0x001C($sp)
.L802BEDC4:
	li      $a0, 0x0001
	li      $a1, 0x000B
	jal     object_a_802BECB0
	lw      $a2, 0x001C($sp)
.L802BEDD4:
	b       .L802BEDDC
	nop
.L802BEDDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802BEDEC(void) */
.globl object_a_802BEDEC
object_a_802BEDEC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_130020E8
	la.l    $a0, o_130020E8
	jal     obj_lib_8029F9EC
	addiu   $a1, $sp, 0x0024
	sw      $v0, 0x001C($sp)
	la.u    $a0, o_130020E0
	la.l    $a0, o_130020E0
	jal     obj_lib_8029FC9C
	li      $a1, 0x447A0000
	beqz    $v0, .L802BEEF8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802BEEA4
	nop
	jal     obj_lib_8029F4B4
	move    $a0, $0
	li      $at, 0x41200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     obj_lib_802A15AC
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	nop
	c.lt.s  $f6, $f0
	nop
	bc1f    .L802BEE88
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0150($t0)
.L802BEE88:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t1)
	b       .L802BEEF0
	nop
.L802BEEA4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t2)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
	jal     obj_lib_802A15AC
	nop
	li      $at, 0x442F0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f0, $f10
	nop
	bc1f    .L802BEEF0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0150($t3)
.L802BEEF0:
	b       .L802BEF14
	nop
.L802BEEF8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t4)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
.L802BEF14:
	lw      $t5, 0x001C($sp)
	beqz    $t5, .L802BEF74
	nop
	li      $at, 0x43960000
	mtc1    $at, $f4
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802BEF74
	nop
	lw      $t6, 0x0124($t5)
	beqz    $t6, .L802BEF74
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	lw      $t0, 0x001C($sp)
	li      $t9, 0x0001
	sw      $t9, 0x0088($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x001C($sp)
	sw      $t1, 0x006C($t2)
.L802BEF74:
	b       .L802BEF7C
	nop
.L802BEF7C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802BEF8C(void) */
.globl object_a_802BEF8C
object_a_802BEF8C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0150($t6)
	beqz    $s0, .L802BEFCC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802BF0BC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802BF14C
	nop
	b       .L802BF1BC
	nop
.L802BEFCC:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
	jal     obj_lib_802A3CFC
	nop
	bnez    $v0, .L802BF0AC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0188($t7)
	sra     $t9, $t8, 16
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x002C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x006C($t1)
	lw      $t3, 0x0188($t2)
	sra     $t4, $t3, 16
	andi    $t5, $t4, 0x00FF
	sw      $t5, 0x0028($sp)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	bne     $t6, $t7, .L802BF034
	nop
	li      $t8, 0x003A
	b       .L802BF03C
	sw      $t8, 0x0024($sp)
.L802BF034:
	li      $t9, 0x003B
	sw      $t9, 0x0024($sp)
.L802BF03C:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	lw      $a3, 0x0024($sp)
	beqz    $v0, .L802BF0A4
	nop
	lw      $t0, 0x0024($sp)
	li      $at, 0x003A
	bne     $t0, $at, .L802BF07C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	b       .L802BF08C
	sw      $t1, 0x0150($t2)
.L802BF07C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x0150($t4)
.L802BF08C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x006C($t5)
	lw      $t7, 0x0190($t6)
	ori     $t8, $t7, 0x0040
	sw      $t8, 0x0190($t6)
.L802BF0A4:
	b       .L802BF0B4
	nop
.L802BF0AC:
	jal     obj_lib_8029F4B4
	move    $a0, $0
.L802BF0B4:
	b       .L802BF1BC
	nop
.L802BF0BC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x006C($t9)
	lw      $t1, 0x0124($t0)
	bnez    $t1, .L802BF144
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0041
	lw      $t4, 0x0190($t2)
	lw      $t3, 0x006C($t2)
	sll     $t5, $t4, 2
	addu    $t7, $t3, $t5
	lw      $t8, 0x0088($t7)
	and     $t6, $t8, $at
	sw      $t6, 0x0088($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $a1, o_130020E0
	la.l    $a1, o_130020E0
	jal     obj_lib_802A14C4
	lw      $a0, 0x006C($t9)
	lui     $at, %hi(object_a_80337CBC)
	lwc1    $f12, %lo(object_a_80337CBC)($at)
	lui     $at, %hi(object_a_80337CC0)
	li.u    $a2, 0x459FA000
	li.l    $a2, 0x459FA000
	lwc1    $f14, %lo(object_a_80337CC0)($at)
	jal     obj_lib_802A5588
	li      $a3, 0x43480000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t1)
.L802BF144:
	b       .L802BF1BC
	nop
.L802BF14C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x006C($t2)
	lw      $t3, 0x0124($t4)
	bnez    $t3, .L802BF1B4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, -0x0041
	lw      $t6, 0x0190($t5)
	lw      $t8, 0x006C($t5)
	sll     $t7, $t6, 2
	addu    $t9, $t8, $t7
	lw      $t0, 0x0088($t9)
	and     $t1, $t0, $at
	sw      $t1, 0x0088($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $a1, o_130020D8
	la.l    $a1, o_130020D8
	jal     obj_lib_802A14C4
	lw      $a0, 0x006C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t3)
.L802BF1B4:
	b       .L802BF1BC
	nop
.L802BF1BC:
	b       .L802BF1C4
	nop
.L802BF1C4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void object_a_802BF1D8(void) */
.globl object_a_802BF1D8
object_a_802BF1D8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x002C($sp)
	la.u    $a0, o_130020E8
	la.l    $a0, o_130020E8
	jal     obj_lib_8029F9EC
	addiu   $a1, $sp, 0x0028
	sw      $v0, 0x0024($sp)
	li      $at, 0x40800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0028($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BF238
	nop
	li      $t6, 0x0001
	sw      $t6, 0x002C($sp)
.L802BF238:
	lw      $t7, 0x0024($sp)
	beqz    $t7, .L802BF29C
	nop
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f8, 0x0028($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802BF29C
	nop
	lw      $t8, 0x0124($t7)
	beqz    $t8, .L802BF29C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	lw      $t2, 0x0024($sp)
	li      $t1, 0x0001
	sw      $t1, 0x0088($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x0024($sp)
	b       .L802BF388
	sw      $t3, 0x006C($t4)
.L802BF29C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $s0, 0x0150($t5)
	beqz    $s0, .L802BF2D0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802BF318
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802BF350
	nop
	b       .L802BF388
	nop
.L802BF2D0:
	li      $at, 0x43960000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     obj_lib_802A48BC
	nop
	beqz    $v0, .L802BF310
	nop
	lw      $t6, 0x002C($sp)
	bnez    $t6, .L802BF310
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0150($t7)
.L802BF310:
	b       .L802BF388
	nop
.L802BF318:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0039
	beqz    $v0, .L802BF348
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0150($t0)
.L802BF348:
	b       .L802BF388
	nop
.L802BF350:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43E10000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t3)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802BF380
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0150($t4)
.L802BF380:
	b       .L802BF388
	nop
.L802BF388:
	jal     obj_lib_802A0008
	li      $a0, 0x0001
	beqz    $v0, .L802BF3A4
	nop
	li.u    $a0, 0x502D0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502D0081
.L802BF3A4:
	b       .L802BF3AC
	nop
.L802BF3AC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802BF3C0
object_a_802BF3C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0400
	sh      $t8, 0x0074($t6)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_80330B38
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330B38
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	jal     object_a_802BED7C
	li      $a0, 0x0001
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
	b       .L802BF414
	nop
.L802BF414:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BF424:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A0154
	nop
	beqz    $v0, .L802BF45C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sw      $t7, 0x0100($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
.L802BF45C:
	b       .L802BF464
	nop
.L802BF464:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BF474(void) */
.globl object_a_802BF474
object_a_802BF474:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802BF4C4
	nop
	la.u    $a0, o_13002088
	jal     obj_lib_8029F998
	la.l    $a0, o_13002088
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    .L802BF4C4
	nop
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
.L802BF4C4:
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40400000
	mtc1    $at, $f8
	lwc1    $f6, 0x0104($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x8000
	lw      $a0, 0x0160($t0)
	lw      $a1, 0x0110($t0)
	addu    $a0, $a0, $at
	jal     obj_lib_8029E5EC
	addiu   $a1, $a1, 0x0600
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	lwc1    $f18, 0x0108($t1)
	lwc1    $f16, 0x015C($t1)
	add.s   $f6, $f18, $f4
	c.lt.s  $f6, $f16
	nop
	bc1f    .L802BF540
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
.L802BF540:
	jal     object_a_802BF424
	nop
	lw      $t3, 0x001C($sp)
	beqz    $t3, .L802BF564
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0005
	sw      $t4, 0x014C($t5)
.L802BF564:
	b       .L802BF56C
	nop
.L802BF56C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802BF57C(void) */
.globl object_a_802BF57C
object_a_802BF57C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f4, 0x0104($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $a1, 0x0110($t7)
	lw      $a0, 0x0160($t7)
	jal     obj_lib_8029E5EC
	addiu   $a1, $a1, 0x0600
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f16, 0x0108($t8)
	lwc1    $f10, 0x015C($t8)
	add.s   $f4, $f16, $f18
	c.lt.s  $f10, $f4
	nop
	bc1f    .L802BF5F8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
.L802BF5F8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337CC4)
	lwc1    $f8, %lo(object_a_80337CC4)($at)
	lwc1    $f6, 0x015C($t0)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802BF628
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
.L802BF628:
	jal     object_a_802BF424
	nop
	b       .L802BF638
	nop
.L802BF638:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BF648(void) */
.globl object_a_802BF648
object_a_802BF648:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0006
	bnez    $at, .L802BF6CC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0006
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L802BF68C
	nop
	li.u    $a0, 0x501F4081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x501F4081
.L802BF68C:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x001A
	bnez    $at, .L802BF6CC
	nop
	jal     obj_lib_802A0154
	nop
	bnez    $v0, .L802BF6CC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0004
	sw      $t2, 0x014C($t3)
.L802BF6CC:
	b       .L802BF6D4
	nop
.L802BF6D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BF6E4(void) */
.globl object_a_802BF6E4
object_a_802BF6E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0015
	bnez    $at, .L802BF748
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0002
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0029
	bnez    $at, .L802BF748
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0100($t1)
	sw      $t2, 0x014C($t1)
.L802BF748:
	b       .L802BF750
	nop
.L802BF750:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802BF760(void) */
.globl object_a_802BF760
object_a_802BF760:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802BF82C
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x44800000
	mtc1    $at, $f4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sw      $t9, 0x0110($t0)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x0108($t1)
	jal     o_script_80383CB4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	swc1    $f0, 0x0104($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
	la.u    $a0, o_13002088
	jal     obj_lib_8029F998
	la.l    $a0, o_13002088
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    .L802BF82C
	nop
	li      $t4, 0x0001
	sw      $t4, 0x001C($sp)
.L802BF82C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t5)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802BF884
	nop
	li      $at, 0x44160000
	mtc1    $at, $f16
	lwc1    $f10, 0x0108($t5)
	add.s   $f18, $f10, $f16
	c.lt.s  $f18, $f6
	nop
	bc1f    .L802BF884
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	b       .L802BF8C0
	sw      $t6, 0x014C($t7)
.L802BF884:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f8, 0x0108($t8)
	lwc1    $f4, 0x015C($t8)
	add.s   $f16, $f8, $f10
	c.lt.s  $f4, $f16
	nop
	bc1f    .L802BF8C0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
.L802BF8C0:
	lw      $t1, 0x001C($sp)
	beqz    $t1, .L802BF8DC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0005
	sw      $t2, 0x014C($t3)
.L802BF8DC:
	jal     obj_lib_802A3F48
	nop
	beqz    $v0, .L802BF8F4
	nop
	jal     obj_lib_802A184C
	nop
.L802BF8F4:
	b       .L802BF8FC
	nop
.L802BF8FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802BF90C(void) */
.globl object_a_802BF90C
object_a_802BF90C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13002088
	jal     obj_lib_8029F95C
	la.l    $a0, o_13002088
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L802BF9F4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802BF96C
	nop
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	b       .L802BF980
	swc1    $f8, 0x00B8($t8)
.L802BF96C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t9)
.L802BF980:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029E2F8
	lw      $a1, 0x001C($sp)
	swc1    $f0, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029E694
	lw      $a1, 0x001C($sp)
	sh      $v0, 0x0022($sp)
	li      $at, 0x43480000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802BF9D8
	nop
	lh      $a0, 0x0022($sp)
	jal     obj_lib_8029E5EC
	li      $a1, 0x0400
	b       .L802BF9EC
	nop
.L802BF9D8:
	lh      $a0, 0x0022($sp)
	li      $at, 0x8000
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	addu    $a0, $a0, $at
.L802BF9EC:
	jal     obj_lib_8029F4B4
	move    $a0, $0
.L802BF9F4:
	jal     object_a_802BF424
	nop
	b       .L802BFA04
	nop
.L802BFA04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BFA14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0088($t6)
	beqz    $t7, .L802BFA4C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0005
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0088($t0)
.L802BFA4C:
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_80330B44
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330B44
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	jal     object_a_802BED7C
	move    $a0, $0
	b       .L802BFA78
	nop
.L802BFA78:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BFA88
object_a_802BFA88:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, .L802BFAD4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802BFAE4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802BFB68
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802BFB80
	nop
	b       .L802BFB90
	nop
.L802BFAD4:
	jal     object_a_802BFA14
	nop
	b       .L802BFB90
	nop
.L802BFAE4:
	move    $a0, $0
	jal     obj_lib_802A01D8
	move    $a1, $0
	la.u    $a0, o_130020D8
	jal     obj_lib_802A14FC
	la.l    $a0, o_130020D8
	beqz    $v0, .L802BFB18
	nop
	lui     $a0, %hi(object)
	la.u    $a1, o_130020E8
	la.l    $a1, o_130020E8
	jal     obj_lib_802A14C4
	lw      $a0, %lo(object)($a0)
.L802BFB18:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029F120
	lw      $a0, %lo(object)($a0)
	lui     $t7, %hi(gfx_frame)
	lw      $t7, %lo(gfx_frame)($t7)
	li      $at, 0x001E
	divu    $0, $t7, $at
	mfhi    $t8
	bnez    $t8, .L802BFB60
	nop
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	li.u    $a0, 0x90450081
	li.l    $a0, 0x90450081
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L802BFB60:
	b       .L802BFB90
	nop
.L802BFB68:
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     obj_lib_802A0380
	move    $a2, $0
	b       .L802BFB90
	nop
.L802BFB80:
	jal     obj_lib_802A0474
	nop
	b       .L802BFB90
	nop
.L802BFB90:
	b       .L802BFB98
	nop
.L802BFB98:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl s_object_a_802BFBAC
s_object_a_802BFBAC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802BFCB8
	nop
	lui     $t7, %hi(shape_object)
	lw      $t7, %lo(shape_object)($t7)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	sh      $0, 0x001E($t9)
	lui     $t0, %hi(gfx_frame)
	lw      $t0, %lo(gfx_frame)($t0)
	li      $at, 0x0032
	divu    $0, $t0, $at
	mfhi    $t1
	sw      $t1, 0x001C($sp)
	nop
	lw      $t2, 0x001C($sp)
	slti    $at, $t2, 0x002B
	beqz    $at, .L802BFC24
	nop
	lw      $t3, 0x0020($sp)
	b       .L802BFC70
	sh      $0, 0x001E($t3)
.L802BFC24:
	lw      $t4, 0x001C($sp)
	slti    $at, $t4, 0x002D
	beqz    $at, .L802BFC44
	nop
	lw      $t6, 0x0020($sp)
	li      $t5, 0x0001
	b       .L802BFC70
	sh      $t5, 0x001E($t6)
.L802BFC44:
	lw      $t7, 0x001C($sp)
	slti    $at, $t7, 0x002F
	beqz    $at, .L802BFC64
	nop
	lw      $t9, 0x0020($sp)
	li      $t8, 0x0002
	b       .L802BFC70
	sh      $t8, 0x001E($t9)
.L802BFC64:
	lw      $t1, 0x0020($sp)
	li      $t0, 0x0001
	sh      $t0, 0x001E($t1)
.L802BFC70:
	la.u    $a0, o_13002088
	jal     segment_to_virtual
	la.l    $a0, o_13002088
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x020C($t2)
	bne     $v0, $t3, .L802BFCB8
	nop
	lw      $t4, 0x0024($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t4)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802BFCB8
	nop
	lw      $t6, 0x0020($sp)
	li      $t5, 0x0003
	sh      $t5, 0x001E($t6)
.L802BFCB8:
	b       .L802BFCC8
	move    $v0, $0
	b       .L802BFCC8
	nop
.L802BFCC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802BFCD8(void) */
.globl object_a_802BFCD8
object_a_802BFCD8:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0144($t6)
	beqz    $s0, .L802BFD24
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802BFD54
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802BFD84
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802BFDB4
	nop
	b       .L802BFDE4
	nop
.L802BFD24:
	li      $t7, 0x00B9
	sh      $t7, 0x0036($sp)
	li      $t8, 0x0014
	sw      $t8, 0x0038($sp)
	lui     $at, %hi(object_a_80337CC8)
	lwc1    $f4, %lo(object_a_80337CC8)($at)
	swc1    $f4, 0x0030($sp)
	la.u    $t9, anime_fish
	la.l    $t9, anime_fish
	sw      $t9, 0x002C($sp)
	b       .L802BFDE4
	nop
.L802BFD54:
	li      $t0, 0x00B9
	sh      $t0, 0x0036($sp)
	li      $t1, 0x0005
	sw      $t1, 0x0038($sp)
	lui     $at, %hi(object_a_80337CCC)
	lwc1    $f6, %lo(object_a_80337CCC)($at)
	swc1    $f6, 0x0030($sp)
	la.u    $t2, anime_fish
	la.l    $t2, anime_fish
	sw      $t2, 0x002C($sp)
	b       .L802BFDE4
	nop
.L802BFD84:
	li      $t3, 0x0067
	sh      $t3, 0x0036($sp)
	li      $t4, 0x0014
	sw      $t4, 0x0038($sp)
	lui     $at, %hi(object_a_80337CD0)
	lwc1    $f8, %lo(object_a_80337CD0)($at)
	swc1    $f8, 0x0030($sp)
	la.u    $t5, 0x0600E264
	la.l    $t5, 0x0600E264
	sw      $t5, 0x002C($sp)
	b       .L802BFDE4
	nop
.L802BFDB4:
	li      $t6, 0x0067
	sh      $t6, 0x0036($sp)
	li      $t7, 0x0005
	sw      $t7, 0x0038($sp)
	lui     $at, %hi(object_a_80337CD4)
	lwc1    $f10, %lo(object_a_80337CD4)($at)
	swc1    $f10, 0x0030($sp)
	la.u    $t8, 0x0600E264
	la.l    $t8, 0x0600E264
	sw      $t8, 0x002C($sp)
	b       .L802BFDE4
	nop
.L802BFDE4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x0030($sp)
	lwc1    $f16, 0x015C($t9)
	c.lt.s  $f16, $f18
	nop
	bc1t    .L802BFE18
	nop
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	li      $at, 0x0014
	bne     $t0, $at, .L802BFE9C
	nop
.L802BFE18:
	lw      $t1, 0x0038($sp)
	sw      $0, 0x003C($sp)
	blez    $t1, .L802BFE8C
	nop
.L802BFE28:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002178
	la.l    $a2, o_13002178
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	lh      $a1, 0x0036($sp)
	sw      $v0, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0028($sp)
	lw      $t3, 0x0144($t2)
	sw      $t3, 0x0144($t4)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     obj_lib_8029F59C
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     obj_lib_802A2FC0
	li      $a1, 0x442F0000
	lw      $t5, 0x003C($sp)
	lw      $t7, 0x0038($sp)
	addiu   $t6, $t5, 0x0001
	slt     $at, $t6, $t7
	bnez    $at, .L802BFE28
	sw      $t6, 0x003C($sp)
.L802BFE8C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L802BFE9C:
	b       .L802BFEA4
	nop
.L802BFEA4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

/* void object_a_802BFEB8(void) */
.globl object_a_802BFEB8
object_a_802BFEB8:
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x0014
	beq     $t6, $at, .L802BFF10
	nop
	lui     $t7, %hi(obj_mario)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, %lo(obj_mario)($t7)
	li      $at, 0x44FA0000
	lwc1    $f6, 0x00A4($t8)
	lwc1    $f4, 0x00A4($t7)
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802BFF10
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
.L802BFF10:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802BFF20(void) */
.globl object_a_802BFF20
object_a_802BFF20:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BFF3C
object_a_802BFF3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330B5C
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330B5C
	b       .L802BFF58
	nop
.L802BFF58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BFF68:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x00A4($t7)
	swc1    $f4, 0x001C($sp)
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	li      $at, 0x0014
	bne     $t8, $at, .L802C0010
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00A4($t9)
	lwc1    $f8, 0x00F8($t9)
	jal     obj_lib_802A3634
	sub.s   $f12, $f6, $f8
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f10, $f0
	nop
	bc1f    .L802BFFD8
	nop
	li      $t0, 0x000A
	sw      $t0, 0x0020($sp)
.L802BFFD8:
	lw      $t2, 0x0020($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $t2, $f16
	lwc1    $f12, 0x00A4($t1)
	cvt.s.w $f16, $f16
	lwc1    $f14, 0x00F8($t1)
	mfc1    $a2, $f16
	jal     obj_lib_8029E494
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       .L802C009C
	swc1    $f0, 0x00A4($t3)
.L802C0010:
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sub.s   $f6, $f18, $f4
	lwc1    $f8, 0x010C($t4)
	lwc1    $f16, 0x00A4($t4)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802C009C
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	add.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802C009C
	nop
	lw      $t6, 0x0020($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $t6, $f18
	lwc1    $f12, 0x00A4($t5)
	cvt.s.w $f18, $f18
	lwc1    $f14, 0x00F8($t5)
	mfc1    $a2, $f18
	jal     obj_lib_8029E494
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00A4($t7)
.L802C009C:
	b       .L802C00A4
	nop
.L802C00A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C00B4(void) */
.globl object_a_802C00B4
object_a_802C00B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x000A
	beqz    $at, .L802C0108
	nop
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x40000000
	b       .L802C0114
	nop
.L802C0108:
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
.L802C0114:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	bnez    $t1, .L802C01D8
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f10
	li      $at, 0x40400000
	mtc1    $at, $f18
	mul.s   $f16, $f0, $f10
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00B8($t2)
	lui     $t3, %hi(stage_index)
	lh      $t3, %lo(stage_index)($t3)
	li      $at, 0x0014
	bne     $t3, $at, .L802C018C
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x442F0000
	mtc1    $at, $f6
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f8, $f0, $f6
	b       .L802C01AC
	swc1    $f8, 0x00FC($t4)
.L802C018C:
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x00FC($t5)
.L802C01AC:
	jal     o_script_80383CB4
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	li      $at, 0x43480000
	mtc1    $at, $f6
	mul.s   $f4, $f0, $f18
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0104($t6)
.L802C01D8:
	lui     $t7, %hi(object)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x00A4($t8)
	lwc1    $f10, 0x00FC($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00F8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t0)
	lwc1    $f4, 0x00A4($t0)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    .L802C02A0
	nop
	lwc1    $f16, 0x001C($sp)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802C0264
	nop
	mtc1    $0, $f6
	lwc1    $f8, 0x001C($sp)
	sub.s   $f4, $f6, $f8
	swc1    $f4, 0x001C($sp)
.L802C0264:
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x001C($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802C0290
	nop
	jal     object_a_802BFF68
	li      $a0, 0x0002
	b       .L802C0298
	nop
.L802C0290:
	jal     object_a_802BFF68
	li      $a0, 0x0004
.L802C0298:
	b       .L802C02F4
	nop
.L802C02A0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f18, 0x00F4($t1)
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x00A4($t1)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f10, $f4
	nop
	bc1f    .L802C02F4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x00A4($t2)
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x00A4($t2)
.L802C02F4:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lwc1    $f4, 0x0104($t3)
	lwc1    $f8, 0x015C($t3)
	add.s   $f16, $f4, $f10
	c.lt.s  $f8, $f16
	nop
	bc1f    .L802C0330
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802C0330:
	b       .L802C0338
	nop
.L802C0338:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C0348(void) */
.globl object_a_802C0348
object_a_802C0348:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $t8, %hi(object)
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00A4($t9)
	lwc1    $f10, 0x00FC($t8)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00F8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	bnez    $t1, .L802C04B0
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x43960000
	mtc1    $at, $f4
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x0110($t2)
	jal     o_script_80383CB4
	nop
	li      $at, 0x44800000
	mtc1    $at, $f8
	mtc1    $at, $f16
	lui     $t5, %hi(object)
	mul.s   $f10, $f0, $f8
	lw      $t5, %lo(object)($t5)
	add.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t4, $f4
	nop
	sw      $t4, 0x0100($t5)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40800000
	mtc1    $at, $f6
	li      $at, 0x41000000
	mtc1    $at, $f10
	mul.s   $f8, $f0, $f6
	li      $at, 0x40A00000
	mtc1    $at, $f18
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x44160000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t7)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802C0460
	nop
	li      $t9, 0x0001
	b       .L802C0494
	sw      $t9, 0x0018($sp)
.L802C0460:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337CD8)
	ldc1    $f18, %lo(object_a_80337CD8)($at)
	lwc1    $f10, 0x015C($t8)
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	cvt.d.s $f16, $f10
	mtc1    $0, $f6
	div.d   $f4, $f16, $f18
	div.d   $f8, $f6, $f4
	trunc.w.d $f10, $f8
	swc1    $f10, 0x0018($sp)
.L802C0494:
	lw      $t1, 0x0018($sp)
	sll     $t2, $t1, 7
	subu    $t2, $t2, $t1
	sw      $t2, 0x0018($sp)
	li.u    $a0, 0x30090081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30090081
.L802C04B0:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0014
	beqz    $at, .L802C04DC
	nop
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x40800000
	b       .L802C04E8
	nop
.L802C04DC:
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
.L802C04E8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x00B8($t5)
	lwc1    $f18, 0x0108($t5)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802C0530
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	lwc1    $f6, 0x00B8($t6)
	mtc1    $0, $f8
	cvt.d.s $f4, $f6
	add.d   $f10, $f4, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x00B8($t6)
.L802C0530:
	lui     $t7, %hi(object)
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t9)
	lwc1    $f18, 0x00FC($t7)
	add.s   $f4, $f18, $f6
	swc1    $f4, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x8000
	lw      $a0, 0x0160($t8)
	lw      $a1, 0x0100($t8)
	jal     obj_lib_8029E5EC
	addu    $a0, $a0, $at
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x42480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00F4($t0)
	lwc1    $f8, 0x00A4($t0)
	sub.s   $f18, $f10, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    .L802C0600
	nop
	lwc1    $f6, 0x001C($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802C05C4
	nop
	mtc1    $0, $f10
	lwc1    $f16, 0x001C($sp)
	sub.s   $f8, $f10, $f16
	swc1    $f8, 0x001C($sp)
.L802C05C4:
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f18, 0x001C($sp)
	c.lt.s  $f18, $f6
	nop
	bc1f    .L802C05F0
	nop
	jal     object_a_802BFF68
	li      $a0, 0x0002
	b       .L802C05F8
	nop
.L802C05F0:
	jal     object_a_802BFF68
	li      $a0, 0x0004
.L802C05F8:
	b       .L802C0654
	nop
.L802C0600:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f4, 0x00F4($t1)
	sub.s   $f16, $f4, $f10
	swc1    $f16, 0x00A4($t1)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f8, 0x001C($sp)
	c.lt.s  $f18, $f8
	nop
	bc1f    .L802C0654
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f6, 0x00A4($t2)
	sub.s   $f10, $f6, $f4
	swc1    $f10, 0x00A4($t2)
.L802C0654:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f8, 0x0110($t3)
	lwc1    $f16, 0x015C($t3)
	add.s   $f6, $f8, $f18
	c.lt.s  $f6, $f16
	nop
	bc1f    .L802C0690
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
.L802C0690:
	b       .L802C0698
	nop
.L802C0698:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C06A8(void) */
.globl object_a_802C06A8
object_a_802C06A8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
	jal     o_script_80383CB4
	nop
	li      $at, 0x41E00000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x0040($t8)
	jal     o_script_80383CB4
	nop
	li      $at, 0x43960000
	mtc1    $at, $f10
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x010C($t9)
	jal     o_script_80383CB4
	nop
	lui     $at, %hi(object_a_80337CE0)
	ldc1    $f4, %lo(object_a_80337CE0)($at)
	mov.s   $f20, $f0
	cvt.d.s $f18, $f20
	lui     $at, %hi(object_a_80337CE8)
	mul.d   $f6, $f18, $f4
	ldc1    $f8, %lo(object_a_80337CE8)($at)
	add.d   $f10, $f6, $f8
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f10
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
	b       .L802C0754
	nop
.L802C0754:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C0768
object_a_802C0768:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00F4($t7)
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	li      $at, 0x0014
	bne     $t8, $at, .L802C07C8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00F4($t9)
.L802C07C8:
	li      $at, 0x41F00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0128($t0)
	jal     obj_lib_802A1F3C
	nop
	lui     $t1, %hi(stage_index)
	lh      $t1, %lo(stage_index)($t1)
	li      $at, 0x0020
	beq     $t1, $at, .L802C083C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_a_80337CF0)
	lwc1    $f10, %lo(object_a_80337CF0)($at)
	lwc1    $f8, 0x00F4($t2)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802C0834
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802C0898
	nop
.L802C0834:
	b       .L802C0854
	nop
.L802C083C:
	li      $at, 0x447A0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00F4($t3)
.L802C0854:
	la.u    $a0, object_a_80330B68
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330B68
	jal     obj_lib_802A2644
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0002
	lw      $t5, 0x0068($t4)
	lw      $t6, 0x014C($t5)
	bne     $t6, $at, .L802C0890
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C0890:
	b       .L802C0898
	nop
.L802C0898:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C08A8
object_a_802C08A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	bnez    $t8, .L802C0904
	nop
	jal     obj_lib_802A3CFC
	nop
	beqz    $v0, .L802C08FC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
.L802C08FC:
	b       .L802C0A94
	nop
.L802C0904:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x014C($t2)
	bne     $t3, $at, .L802C098C
	nop
	li      $at, 0xC1A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x00A4($t5)
	lwc1    $f10, 0x00B0($t5)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t5)
	li.u    $a0, 0x400D0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400D0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0085
	bnez    $at, .L802C0984
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x014C($t8)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t8)
.L802C0984:
	b       .L802C0A94
	nop
.L802C098C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t2, 0x014C($t9)
	bne     $t2, $at, .L802C09D8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x006F
	bnez    $at, .L802C09D0
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
.L802C09D0:
	b       .L802C0A94
	nop
.L802C09D8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0003
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, .L802C0A78
	nop
	li      $at, 0x41200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00A4($t9)
	lwc1    $f6, 0x00B0($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t9)
	li.u    $a0, 0x400D0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400D0001
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x00A4($t2)
	lwc1    $f16, 0x0168($t2)
	c.le.s  $f16, $f10
	nop
	bc1f    .L802C0A70
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x0168($t3)
	swc1    $f18, 0x00A4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x014C($t4)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t4)
.L802C0A70:
	b       .L802C0A94
	nop
.L802C0A78:
	jal     obj_lib_802A3CFC
	nop
	bnez    $v0, .L802C0A94
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
.L802C0A94:
	b       .L802C0A9C
	nop
.L802C0A9C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C0AAC(void) */
.globl object_a_802C0AAC
object_a_802C0AAC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	sw      $t7, 0x0018($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337CF4)
	lwc1    $f6, %lo(object_a_80337CF4)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C0B38
	nop
	lw      $t9, 0x0018($sp)
	sw      $0, 0x001C($sp)
	blez    $t9, .L802C0B28
	nop
.L802C0AF8:
	lui     $a0, %hi(object)
	la.u    $a2, o_1300220C
	la.l    $a2, o_1300220C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0064
	lw      $t0, 0x001C($sp)
	lw      $t2, 0x0018($sp)
	addiu   $t1, $t0, 0x0001
	slt     $at, $t1, $t2
	bnez    $at, .L802C0AF8
	sw      $t1, 0x001C($sp)
.L802C0B28:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
.L802C0B38:
	b       .L802C0B40
	nop
.L802C0B40:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C0B50(void) */
.globl object_a_802C0B50
object_a_802C0B50:
	lui     $t6, %hi(obj_mario)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(obj_mario)($t6)
	li      $at, 0x44FA0000
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802C0B94
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
.L802C0B94:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802C0BA4(void) */
.globl object_a_802C0BA4
object_a_802C0BA4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802C0BC4(void) */
.globl object_a_802C0BC4
object_a_802C0BC4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C0BE0
object_a_802C0BE0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330B74
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330B74
	b       .L802C0BFC
	nop
.L802C0BFC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C0C0C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x00A4($t7)
	swc1    $f4, 0x001C($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sub.s   $f10, $f6, $f8
	lwc1    $f16, 0x0104($t8)
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f18, $f10, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802C0CBC
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f8
	nop
	add.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	c.lt.s  $f4, $f18
	nop
	bc1f    .L802C0CBC
	nop
	lw      $t0, 0x0020($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $t0, $f6
	lwc1    $f12, 0x00A4($t9)
	cvt.s.w $f6, $f6
	lwc1    $f14, 0x00F8($t9)
	mfc1    $a2, $f6
	jal     obj_lib_8029E494
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       .L802C0CBC
	swc1    $f0, 0x00A4($t1)
.L802C0CBC:
	b       .L802C0CC4
	nop
.L802C0CC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C0CD4(void) */
.globl object_a_802C0CD4
object_a_802C0CD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x00FC($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x43960000
	mtc1    $at, $f8
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mul.s   $f10, $f0, $f8
	swc1    $f10, 0x0104($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
	b       .L802C0D34
	nop
.L802C0D34:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C0D44(void) */
.globl object_a_802C0D44
object_a_802C0D44:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C0D9C
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	mtc1    $at, $f8
	lui     $t8, %hi(object)
	mul.s   $f6, $f0, $f4
	lw      $t8, %lo(object)($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t8)
	jal     o_script_80383CB4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	swc1    $f0, 0x0108($t9)
.L802C0D9C:
	lui     $t0, %hi(object)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x00A4($t1)
	lwc1    $f16, 0x00A4($t0)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F4($t2)
	lwc1    $f6, 0x00A4($t2)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f6, $f16
	nop
	bc1f    .L802C0E50
	nop
	lwc1    $f18, 0x001C($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802C0E14
	nop
	mtc1    $0, $f8
	lwc1    $f10, 0x001C($sp)
	sub.s   $f6, $f8, $f10
	swc1    $f6, 0x001C($sp)
.L802C0E14:
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f16, 0x001C($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802C0E40
	nop
	jal     object_a_802C0C0C
	li      $a0, 0x0001
	b       .L802C0E48
	nop
.L802C0E40:
	jal     object_a_802C0C0C
	li      $a0, 0x0004
.L802C0E48:
	b       .L802C0EA4
	nop
.L802C0E50:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f4, 0x00F4($t3)
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($t3)
	li      $at, 0x43960000
	mtc1    $at, $f16
	lwc1    $f6, 0x001C($sp)
	c.lt.s  $f16, $f6
	nop
	bc1f    .L802C0EA4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f18, 0x00A4($t4)
	sub.s   $f8, $f18, $f4
	swc1    $f8, 0x00A4($t4)
.L802C0EA4:
	jal     obj_lib_802A15AC
	nop
	li      $at, 0x44480000
	mtc1    $at, $f10
	nop
	c.lt.s  $f10, $f0
	nop
	bc1f    .L802C0EDC
	nop
	jal     obj_lib_802A2748
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0160($t5)
.L802C0EDC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0100
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f6, 0x015C($t7)
	c.lt.s  $f6, $f16
	nop
	bc1f    .L802C0F50
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	lwc1    $f18, 0x0108($t8)
	mtc1    $0, $f8
	cvt.d.s $f4, $f18
	c.lt.d  $f4, $f8
	nop
	bc1f    .L802C0F50
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
.L802C0F50:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0134($t1)
	andi    $t3, $t2, 0x8000
	beqz    $t3, .L802C0F78
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802C0F78:
	b       .L802C0F80
	nop
.L802C0F80:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C0F90(void) */
.globl object_a_802C0F90
object_a_802C0F90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0014
	beqz    $at, .L802C0FE8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0134($t8)
	andi    $t0, $t9, 0x8000
	beqz    $t0, .L802C0FE0
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000444
	la.l    $a2, o_13000444
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A4
.L802C0FE0:
	b       .L802C0FF4
	nop
.L802C0FE8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
.L802C0FF4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	bnez    $t3, .L802C1014
	nop
	li.u    $a0, 0x30090081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30090081
.L802C1014:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t4)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L802C104C
	nop
	li      $at, 0x40C00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t5)
.L802C104C:
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x00A4($t7)
	lwc1    $f10, 0x00A4($t6)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t8)
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    .L802C1100
	nop
	lwc1    $f16, 0x001C($sp)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802C10C4
	nop
	mtc1    $0, $f6
	lwc1    $f8, 0x001C($sp)
	sub.s   $f4, $f6, $f8
	swc1    $f4, 0x001C($sp)
.L802C10C4:
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x001C($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802C10F0
	nop
	jal     object_a_802C0C0C
	li      $a0, 0x0002
	b       .L802C10F8
	nop
.L802C10F0:
	jal     object_a_802C0C0C
	li      $a0, 0x0004
.L802C10F8:
	b       .L802C1154
	nop
.L802C1100:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f18, 0x00F4($t9)
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x00A4($t9)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f10, $f4
	nop
	bc1f    .L802C1154
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x00A4($t0)
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x00A4($t0)
.L802C1154:
	jal     obj_lib_802A15AC
	nop
	li      $at, 0x44480000
	mtc1    $at, $f8
	nop
	c.lt.s  $f8, $f0
	nop
	bc1f    .L802C118C
	nop
	jal     obj_lib_802A2748
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0160($t1)
.L802C118C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x8000
	li      $a1, 0x0400
	lw      $a0, 0x0160($t2)
	jal     obj_lib_8029E5EC
	addu    $a0, $a0, $at
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x00C9
	bnez    $at, .L802C11EC
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	lwc1    $f4, 0x015C($t3)
	c.lt.s  $f10, $f4
	nop
	bc1f    .L802C11EC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
.L802C11EC:
	b       .L802C11F4
	nop
.L802C11F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C1204
object_a_802C1204:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00F4($t7)
	lui     $t8, %hi(object)
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A4($t9)
	lwc1    $f4, 0x00FC($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F8($t8)
	li      $at, 0x41F00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0128($t0)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_80330B84
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330B84
	jal     obj_lib_802A2644
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0002
	lw      $t2, 0x0068($t1)
	lw      $t3, 0x014C($t2)
	bne     $t3, $at, .L802C12A8
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C12A8:
	b       .L802C12B0
	nop
.L802C12B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C12C0
object_a_802C12C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	beq     $t8, $at, .L802C12F0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C12F0:
	b       .L802C12F8
	nop
.L802C12F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C1308(void) */
.globl object_a_802C1308
object_a_802C1308:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	slti    $at, $t7, 0x0003
	beqz    $at, .L802C13B0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	sw      $t9, 0x00F0($t8)
	jal     save_flag_get
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object_a_80330020)
	move    $s0, $v0
	lw      $t1, 0x0144($t0)
	sll     $t2, $t1, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(object_a_80330020)($t3)
	and     $t4, $t3, $s0
	bnez    $t4, .L802C1384
	nop
	lw      $t5, 0x0188($t0)
	sra     $t6, $t5, 24
	andi    $t7, $t6, 0x00FF
	beqz    $t7, .L802C1398
	nop
.L802C1384:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t9, 0x0002
	b       .L802C13A8
	sw      $t9, 0x014C($t8)
.L802C1398:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
.L802C13A8:
	b       .L802C13D0
	nop
.L802C13B0:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x00F0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t5)
.L802C13D0:
	b       .L802C13D8
	nop
.L802C13D8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802C13EC(void) */
.globl object_a_802C13EC
object_a_802C13EC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     obj_lib_802A05B4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C1434
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300227C
	la.l    $a2, o_1300227C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0084
	jal     obj_lib_802A04C0
	li      $a0, 0x0083
.L802C1434:
	jal     save_flag_get
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t1, %hi(object_a_80330020)
	move    $s0, $v0
	lw      $t9, 0x0144($t8)
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(object_a_80330020)($t1)
	and     $t2, $t1, $s0
	bnez    $t2, .L802C147C
	nop
	lw      $t3, 0x0188($t8)
	sra     $t4, $t3, 24
	andi    $t5, $t4, 0x00FF
	beqz    $t5, .L802C1494
	nop
.L802C147C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	jal     obj_lib_802A04C0
	li      $a0, 0x0089
.L802C1494:
	b       .L802C149C
	nop
.L802C149C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802C14B0(void) */
.globl object_a_802C14B0
object_a_802C14B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330B90
	la.l    $a1, object_a_80330B90
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C1520
	nop
	jal     obj_lib_8029F694
	nop
	jal     obj_lib_802A05D4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x0168($t9)
	swc1    $f4, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00DC($t0)
.L802C1520:
	jal     obj_lib_802A51AC
	nop
	beqz    $v0, .L802C1598
	nop
	jal     obj_lib_802A05B4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x4000
	sw      $t1, 0x00FC($t2)
	li      $at, 0x41F00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t3)
	li      $at, 0xC1000000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x00A4($t5)
	swc1    $f16, 0x00E8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
.L802C1598:
	jal     map_data_803839CC
	nop
	b       .L802C15A8
	nop
.L802C15A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C15B8(void) */
.globl object_a_802C15B8
object_a_802C15B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2644
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C1610
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00E4($t8)
.L802C1610:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f4
	lhu     $t0, 0x00FE($t9)
	mtc1    $0, $f17
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f16, %lo(math_sin)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	cvt.d.s $f18, $f16
	lui     $at, %hi(object_a_80337CF8)
	add.d   $f6, $f18, $f4
	ldc1    $f8, %lo(object_a_80337CF8)($at)
	mtc1    $0, $f16
	mul.d   $f10, $f6, $f8
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x00F8($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lhu     $t4, 0x00FE($t3)
	mtc1    $0, $f4
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	neg.s   $f8, $f6
	li      $at, 0x3FE00000
	cvt.d.s $f10, $f8
	mtc1    $at, $f5
	add.d   $f18, $f10, $f16
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	mul.d   $f6, $f18, $f4
	add.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x00F4($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f8
	lhu     $t8, 0x00FE($t7)
	mtc1    $0, $f16
	sra     $t0, $t8, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	neg.s   $f4, $f18
	li      $at, 0x403A0000
	cvt.d.s $f6, $f4
	mtc1    $at, $f17
	add.d   $f10, $f6, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x00DC($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t9, 0x00FC($t2)
	addiu   $t4, $t9, 0x1000
	sw      $t4, 0x00FC($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t5)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x002C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x00F8($t6)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0030($t6)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t3)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0034($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0007
	lw      $t0, 0x0154($t8)
	bne     $t0, $at, .L802C17A4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t1, 0x0004
	sw      $t1, 0x014C($t7)
.L802C17A4:
	b       .L802C17AC
	nop
.L802C17AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802C17BC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0063
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, .L802C18B8
	nop
.L802C17E4:
	lw      $t9, 0x0020($sp)
	lbu     $t8, 0x0027($sp)
	lbu     $t0, 0x0000($t9)
	bne     $t8, $t0, .L802C1898
	nop
	lw      $t1, 0x0020($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lbu     $a1, 0x0003($t1)
	jal     obj_lib_8029EDCC
	lw      $a2, 0x0004($t1)
	sw      $v0, 0x001C($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lw      $t2, 0x001C($sp)
	swc1    $f4, 0x00B0($t2)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lw      $t3, 0x001C($sp)
	swc1    $f6, 0x00B8($t3)
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lw      $t6, 0x001C($sp)
	lw      $t5, 0x00C8($t4)
	sw      $t5, 0x00C8($t6)
	lw      $t8, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lbu     $t0, 0x0002($t8)
	lw      $t9, 0x0188($t7)
	sll     $t1, $t0, 24
	or      $t2, $t9, $t1
	sw      $t2, 0x0188($t7)
	lw      $t3, 0x0020($sp)
	li      $at, 0x007A
	lbu     $t4, 0x0003($t3)
	bne     $t4, $at, .L802C1890
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x008C($t5)
	ori     $t8, $t6, 0x4000
	sw      $t8, 0x008C($t5)
.L802C1890:
	b       .L802C18B8
	nop
.L802C1898:
	lw      $t0, 0x0020($sp)
	addiu   $t9, $t0, 0x0008
	sw      $t9, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li      $at, 0x0063
	lbu     $t2, 0x0000($t1)
	bne     $t2, $at, .L802C17E4
	nop
.L802C18B8:
	b       .L802C18C0
	nop
.L802C18C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C18D0(void) */
.globl object_a_802C18D0
object_a_802C18D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, object_a_80330BA0
	la.l    $a0, object_a_80330BA0
	jal     object_a_802C17BC
	lw      $a1, 0x0144($t6)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42380000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	li      $a0, 0x0014
	li      $a1, 0x008B
	jal     object_a_802AE0CC
	lw      $a3, 0x00F0($t7)
	li.u    $a0, 0x3041C081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x3041C081
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	slti    $at, $t9, 0x0003
	beqz    $at, .L802C1964
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
	jal     obj_lib_8029F6BC
	nop
	b       .L802C1970
	nop
.L802C1964:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C1970:
	b       .L802C1978
	nop
.L802C1978:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C1988(void) */
.globl object_a_802C1988
object_a_802C1988:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x012D
	bnez    $at, .L802C19B0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
.L802C19B0:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C19C0
object_a_802C19C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	la.u    $a0, object_a_80330C20
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330C20
	b       .L802C19EC
	nop
.L802C19EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C19FC
object_a_802C19FC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	sw      $t7, 0x001C($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	lw      $a0, 0x001C($sp)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L802C1A30
	nop
.L802C1A30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C1A40
object_a_802C1A40:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     save_flag_get
	nop
	andi    $t6, $v0, 0x00A0
	beqz    $t6, .L802C1A68
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C1A68:
	b       .L802C1A70
	nop
.L802C1A70:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C1A80
object_a_802C1A80:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C1A90
object_a_802C1A90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	lhu     $t8, 0x00F6($t7)
	lwc1    $f10, 0x0164($t7)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337D00)
	lwc1    $f6, %lo(object_a_80337D00)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_cos)
	lhu     $t2, 0x00F6($t1)
	lwc1    $f8, 0x016C($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f18, %lo(math_cos)($at)
	lui     $at, %hi(object_a_80337D04)
	lwc1    $f4, %lo(object_a_80337D04)($at)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A8($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x001C($sp)
	lhu     $t6, 0x00F6($t5)
	lwc1    $f8, 0x0168($t5)
	sra     $t8, $t6, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f18
	add.s   $f10, $f6, $f8
	mul.s   $f4, $f16, $f18
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x00A4($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x00F4($t0)
	addiu   $t2, $t7, 0x4000
	sw      $t2, 0x00C8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	addiu   $t1, $t4, 0x0080
	sw      $t1, 0x00F4($t3)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lwc1    $f6, 0x001C($sp)
	li      $at, 0xC3FA0000
	lwc1    $f18, 0x00A4($t6)
	mtc1    $at, $f4
	sub.s   $f8, $f18, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L802C1BFC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x001C($sp)
	li      $at, 0xC3480000
	lwc1    $f10, 0x00A4($t8)
	mtc1    $at, $f6
	sub.s   $f18, $f10, $f16
	c.lt.s  $f6, $f18
	nop
	bc1f    .L802C1BFC
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002DB0
	la.l    $a2, o_13002DB0
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x00A3
	jal     obj_lib_8029EEB8
	li      $a3, 0x40800000
.L802C1BFC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t5, 0x0154($t9)
	andi    $t7, $t5, 0x000F
	bnez    $t7, .L802C1C20
	nop
	li.u    $a0, 0x50008081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50008081
.L802C1C20:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       .L802C1C34
	nop
.L802C1C34:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C1C44
object_a_802C1C44:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_80337D08)
	lwc1    $f6, %lo(object_a_80337D08)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802C1C84
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x008C
	b       .L802C1CB4
	sw      $t7, 0x017C($t8)
.L802C1C84:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x430C0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t9)
	lui     $at, %hi(object_a_80337D10)
	ldc1    $f4, %lo(object_a_80337D10)($at)
	mul.s   $f16, $f8, $f10
	cvt.d.s $f18, $f16
	div.d   $f6, $f18, $f4
	trunc.w.d $f8, $f6
	swc1    $f8, 0x017C($t9)
.L802C1CB4:
	jal     obj_lib_8029F66C
	nop
	b       .L802C1CC4
	nop
.L802C1CC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C1CD4
object_a_802C1CD4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D8($t8)
	sh      $t9, 0x001C($sp)
	jal     obj_lib_802A3C18
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, 0x0100
	sw      $t2, 0x00F4($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t4, 0x00F6($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x44800000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x00D0($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00FA($t9)
	sra     $t2, $t1, 4
	sll     $t0, $t2, 2
	addu    $at, $at, $t0
	lwc1    $f16, %lo(math_sin)($at)
	li      $at, 0x44800000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t5, $f6
	nop
	sw      $t5, 0x00D8($t9)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t8, 0x001E($sp)
	lw      $t7, 0x00D0($t6)
	subu    $t3, $t7, $t8
	sw      $t3, 0x0114($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t0, 0x001C($sp)
	lw      $t2, 0x00D8($t1)
	subu    $t4, $t2, $t0
	sw      $t4, 0x011C($t1)
	lui     $t5, %hi(obj_mario)
	lw      $t5, %lo(obj_mario)($t5)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t5)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802C1DF8
	nop
	li.u    $a0, 0x400B0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400B0001
.L802C1DF8:
	b       .L802C1E00
	nop
.L802C1E00:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C1E10
object_a_802C1E10:
	addiu   $sp, $sp, -0x00A0
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	bnez    $t7, .L802C1EB0
	nop
	la.u    $a0, o_130023EC
	jal     obj_lib_8029F95C
	la.l    $a0, o_130023EC
	sw      $v0, 0x003C($sp)
	lw      $t8, 0x003C($sp)
	beqz    $t8, .L802C1E58
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x003C($sp)
	sw      $t9, 0x00F4($t0)
.L802C1E58:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x003C($sp)
	lwc1    $f4, 0x00A0($t1)
	lwc1    $f6, 0x00A0($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0138($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x003C($sp)
	lwc1    $f10, 0x00A4($t3)
	lwc1    $f16, 0x00A4($t4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x013C($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x003C($sp)
	lwc1    $f4, 0x00A8($t5)
	lwc1    $f6, 0x00A8($t6)
	sub.s   $f8, $f4, $f6
	b       .L802C1FB8
	swc1    $f8, 0x0140($t5)
.L802C1EB0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F4($t7)
	sw      $t8, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	addiu   $t2, $sp, 0x0040
	lw      $t0, 0x00D0($t9)
	sh      $t0, 0x0000($t2)
	lw      $t1, 0x003C($sp)
	addiu   $t3, $sp, 0x0040
	lw      $t4, 0x00D4($t1)
	sh      $t4, 0x0002($t3)
	lw      $t6, 0x003C($sp)
	addiu   $t7, $sp, 0x0040
	lw      $t5, 0x00D8($t6)
	sh      $t5, 0x0004($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	addiu   $t9, $sp, 0x0054
	lwc1    $f10, 0x0138($t8)
	swc1    $f10, 0x0000($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $t2, $sp, 0x0054
	lwc1    $f16, 0x013C($t0)
	swc1    $f16, 0x0004($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	addiu   $t4, $sp, 0x0054
	lwc1    $f18, 0x0140($t1)
	swc1    $f18, 0x0008($t4)
	addiu   $a0, $sp, 0x0060
	addiu   $a1, $sp, 0x0054
	jal     mtxf_posang
	addiu   $a2, $sp, 0x0040
	addiu   $a0, $sp, 0x0060
	addiu   $a1, $sp, 0x0048
	jal     obj_lib_8029F200
	addiu   $a2, $sp, 0x0054
	lw      $t6, 0x003C($sp)
	addiu   $t3, $sp, 0x0048
	lwc1    $f4, 0x0000($t3)
	lwc1    $f6, 0x00A0($t6)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t5)
	lw      $t8, 0x003C($sp)
	addiu   $t7, $sp, 0x0048
	lwc1    $f10, 0x0004($t7)
	lwc1    $f16, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t9)
	lw      $t2, 0x003C($sp)
	addiu   $t0, $sp, 0x0048
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x00A8($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t1)
	lw      $t4, 0x003C($sp)
	lw      $t3, 0x00D0($t4)
	sh      $t3, 0x001E($sp)
.L802C1FB8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t5, $sp, 0x0020
	lwc1    $f10, 0x00A0($t6)
	swc1    $f10, 0x0000($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	addiu   $t8, $sp, 0x0020
	lwc1    $f16, 0x00A4($t7)
	swc1    $f16, 0x0004($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t0, $sp, 0x0020
	lwc1    $f18, 0x00A8($t9)
	swc1    $f18, 0x0008($t0)
	addiu   $t2, $sp, 0x0020
	lwc1    $f12, 0x0000($t2)
	lwc1    $f14, 0x0004($t2)
	lw      $a2, 0x0008($t2)
	jal     map_80381900
	addiu   $a3, $sp, 0x0038
	lw      $t1, 0x0038($sp)
	beqz    $t1, .L802C2058
	nop
	lw      $t4, 0x0038($sp)
	addiu   $t3, $sp, 0x002C
	lwc1    $f4, 0x001C($t4)
	swc1    $f4, 0x0000($t3)
	lw      $t6, 0x0038($sp)
	addiu   $t5, $sp, 0x002C
	lwc1    $f6, 0x0020($t6)
	swc1    $f6, 0x0004($t5)
	lw      $t7, 0x0038($sp)
	addiu   $t8, $sp, 0x002C
	lwc1    $f8, 0x0024($t7)
	swc1    $f8, 0x0008($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t9, 0x001E($sp)
	sw      $t9, 0x00D0($t0)
.L802C2058:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00FA($t2)
	sra     $t4, $t1, 4
	sll     $t3, $t4, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00FC($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x00F8($t6)
	addiu   $t7, $t5, 0x0100
	sw      $t7, 0x00F8($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x0140($t8)
	lwc1    $f6, 0x00FC($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0140($t8)
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	li      $at, 0x447A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t9)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802C2114
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	jal     obj_lib_802A3634
	lwc1    $f12, 0x00FC($t0)
	li      $at, 0x40400000
	mtc1    $at, $f18
	nop
	c.lt.s  $f18, $f0
	nop
	bc1f    .L802C2114
	nop
	li.u    $a0, 0x60050001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60050001
.L802C2114:
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330C38
	la.l    $a1, object_a_80330C38
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x00F8($t1)
	andi    $t3, $t4, 0x7FFF
	bnez    $t3, .L802C2148
	nop
	jal     obj_lib_802A05D4
	nop
.L802C2148:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802C2178
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	jal     obj_lib_802A05B4
	nop
.L802C2178:
	b       .L802C2180
	nop
.L802C2180:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x00A0
	jr      $ra
	nop

.globl object_a_802C2190
object_a_802C2190:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_a_80337D18)
	lwc1    $f4, %lo(object_a_80337D18)($at)
	swc1    $f4, 0x001C($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C21F4
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t8)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t8)
.L802C21F4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f10, 0x001C($sp)
	lw      $t0, 0x0154($t9)
	mtc1    $t0, $f18
	nop
	cvt.s.w $f4, $f18
	mul.s   $f8, $f4, $f6
	jal     obj_lib_8029F430
	add.s   $f12, $f8, $f10
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0032
	sw      $t1, 0x017C($t2)
	jal     obj_lib_802A2644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0005
	bnez    $at, .L802C225C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C225C:
	b       .L802C2264
	nop
.L802C2264:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C2274
object_a_802C2274:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C22A0
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x42200000
.L802C22A0:
	b       .L802C22A8
	nop
.L802C22A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C22B8
object_a_802C22B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802C22F8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802C2350
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802C2390
	nop
	b       .L802C2404
	nop
.L802C22F8:
	jal     obj_lib_8029F66C
	nop
	jal     obj_lib_802A05B4
	nop
	la.u    $a0, o_13002568
	jal     obj_lib_8029F95C
	la.l    $a0, o_13002568
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	beqz    $t9, .L802C2348
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
.L802C2348:
	b       .L802C2404
	nop
.L802C2350:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F8($t3)
	sw      $t4, 0x0024($sp)
	lw      $t5, 0x0024($sp)
	li      $at, 0x0002
	lw      $t6, 0x014C($t5)
	bne     $t6, $at, .L802C2388
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
.L802C2388:
	b       .L802C2404
	nop
.L802C2390:
	jal     obj_lib_8029F620
	nop
	jal     obj_lib_802A05D4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0134($t1)
	andi    $t0, $t2, 0x8000
	beqz    $t0, .L802C23DC
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0095
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C23DC:
	li      $a0, 0x00C8
	jal     obj_lib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, .L802C23FC
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C23FC:
	b       .L802C2404
	nop
.L802C2404:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0134($t3)
	b       .L802C2418
	nop
.L802C2418:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C242C
object_a_802C242C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802C247C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802C2510
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802C2598
	nop
	b       .L802C2620
	nop
.L802C247C:
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, .L802C2500
	nop
	la.u    $t0, player_data
	la.l    $t0, player_data
	lw      $t1, 0x000C($t0)
	li.u    $at, 0x0080023C
	li.l    $at, 0x0080023C
	bne     $t1, $at, .L802C2500
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x014C($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x014C($t2)
	li      $at, 0xC1A00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00E4($t6)
	li.u    $a0, 0x3067A081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x3067A081
.L802C2500:
	jal     map_data_803839CC
	nop
	b       .L802C2620
	nop
.L802C2510:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0006
	bnez    $at, .L802C2580
	nop
	jal     obj_lib_8029F6BC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	li      $at, 0x42200000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t4)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42380000
	b       .L802C2590
	nop
.L802C2580:
	jal     map_data_803839CC
	nop
	jal     obj_lib_802A2644
	nop
.L802C2590:
	b       .L802C2620
	nop
.L802C2598:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t5, 0x0154($t2)
	slti    $at, $t5, 0x00C8
	beqz    $at, .L802C25CC
	nop
	li.u    $a0, 0x8054F011
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x8054F011
	b       .L802C25E0
	nop
.L802C25CC:
	li.u    $a0, 0x8055F011
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x8055F011
.L802C25E0:
	la.u    $a0, o_13002588
	jal     obj_lib_8029F95C
	la.l    $a0, o_13002588
	beqz    $v0, .L802C260C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x00F1
	bnez    $at, .L802C2618
	nop
.L802C260C:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C2618:
	b       .L802C2620
	nop
.L802C2620:
	b       .L802C2628
	nop
.L802C2628:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C263C
object_a_802C263C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802C2684
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x0088($t9)
	beqz    $t0, .L802C267C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
.L802C267C:
	b       .L802C26E8
	nop
.L802C2684:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x014C($t4)
	bne     $t5, $at, .L802C26E8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0040
	beqz    $at, .L802C26D4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0144($t8)
	lw      $t9, 0x00C8($t8)
	sll     $t2, $t0, 8
	subu    $t3, $t9, $t2
	b       .L802C26E8
	sw      $t3, 0x00C8($t8)
.L802C26D4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x014C($t1)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t1)
.L802C26E8:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C26F8
object_a_802C26F8:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802C2744
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802C2858
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802C2894
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802C290C
	nop
	b       .L802C2914
	nop
.L802C2744:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0144($t7)
	sw      $t8, 0x0038($sp)
	lw      $t9, 0x0038($sp)
	la.u    $t1, object_a_80330C48+0x00
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.l    $t1, object_a_80330C48+0x00
	sll     $t0, $t9, 3
	addu    $t2, $t0, $t1
	lh      $a1, 0x0000($t2)
	sw      $t3, 0x0010($sp)
	lh      $t4, 0x0002($t2)
	la.u    $t5, o_130025C0
	la.l    $t5, o_130025C0
	sw      $t5, 0x0018($sp)
	li      $a0, -0x0001
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t4, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	lw      $t6, 0x003C($sp)
	li      $at, 0x8000
	lw      $t7, 0x00C8($t6)
	addu    $t8, $t7, $at
	sw      $t8, 0x00C8($t6)
	lw      $t9, 0x0038($sp)
	lui     $a1, %hi(object_a_80330C48+0x04)
	lw      $a0, 0x003C($sp)
	sll     $t0, $t9, 3
	addu    $a1, $a1, $t0
	jal     obj_lib_802A44F4
	lw      $a1, %lo(object_a_80330C48+0x04)($a1)
	lw      $t1, 0x0038($sp)
	la.u    $t2, object_a_80330C48+0x00
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.l    $t2, object_a_80330C48+0x00
	sll     $t3, $t1, 3
	addu    $t4, $t3, $t2
	lh      $a1, 0x0000($t4)
	sw      $t5, 0x0010($sp)
	lh      $t7, 0x0002($t4)
	la.u    $t8, o_130025C0
	la.l    $t8, o_130025C0
	sw      $t8, 0x0018($sp)
	li      $a0, 0x0001
	move    $a2, $0
	move    $a3, $0
	subu    $a1, $0, $a1
	jal     obj_lib_8029EF64
	sw      $t7, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	lw      $t6, 0x0038($sp)
	lui     $a1, %hi(object_a_80330C48+0x04)
	lw      $a0, 0x003C($sp)
	sll     $t9, $t6, 3
	addu    $a1, $a1, $t9
	jal     obj_lib_802A44F4
	lw      $a1, %lo(object_a_80330C48+0x04)($a1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t3, $t1, 0x0001
	sw      $t3, 0x014C($t0)
	b       .L802C2914
	nop
.L802C2858:
	la.u    $a0, o_13001478
	jal     obj_lib_8029F95C
	la.l    $a0, o_13001478
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	move    $s0, $v0
	beqz    $s0, .L802C288C
	sw      $s0, 0x00F4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x014C($t5)
	addiu   $t7, $t4, 0x0001
	sw      $t7, 0x014C($t5)
.L802C288C:
	b       .L802C2914
	nop
.L802C2894:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t6, 0x00F4($t8)
	sw      $t6, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	li      $at, 0x0002
	lw      $t1, 0x014C($t9)
	bne     $t1, $at, .L802C2904
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t3, 0x0002
	sw      $t3, 0x0088($t0)
	li.u    $a0, 0x303FA081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x303FA081
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x014C($t2)
	addiu   $t7, $t4, 0x0001
	sw      $t7, 0x014C($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x0144($t5)
	beqz    $t8, .L802C2904
	nop
	jal     Na_g_803220F0
	nop
.L802C2904:
	b       .L802C2914
	nop
.L802C290C:
	b       .L802C2914
	nop
.L802C2914:
	b       .L802C291C
	nop
.L802C291C:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_a_802C2930
object_a_802C2930:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802C2970
	nop
	lui     $t8, %hi(object_80361184)
	lw      $t8, %lo(object_80361184)($t8)
	beqz    $t8, .L802C2968
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
.L802C2968:
	b       .L802C2A14
	nop
.L802C2970:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x000A
	beqz    $at, .L802C29A4
	nop
	lui     $t4, %hi(object_80361184)
	lw      $t4, %lo(object_80361184)($t4)
	la.u    $t6, object_80361188
	la.l    $t6, object_80361188
	lh      $t5, 0x000C($t4)
	b       .L802C2A14
	sw      $t5, 0x0000($t6)
.L802C29A4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	la.u    $t9, object_80361188
	lhu     $t8, 0x00F6($t7)
	la.l    $t9, object_80361188
	lw      $t2, 0x0000($t9)
	sra     $t0, $t8, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	mtc1    $t2, $f10
	lui     $t5, %hi(object_80361184)
	mul.s   $f8, $f4, $f6
	lw      $t5, %lo(object_80361184)($t5)
	cvt.s.w $f16, $f10
	add.s   $f18, $f8, $f16
	trunc.w.s $f4, $f18
	mfc1    $t4, $f4
	nop
	sh      $t4, 0x000C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	addiu   $t8, $t7, 0x0200
	sw      $t8, 0x00F4($t6)
.L802C2A14:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C2A24
object_a_802C2A24:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object_80361184)
	lw      $t6, %lo(object_80361184)($t6)
	beqz    $t6, .L802C2CCC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, .L802C2A80
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802C2ADC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802C2B30
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802C2C6C
	nop
	b       .L802C2CB4
	nop
.L802C2A80:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00D4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00A4($t9)
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	sw      $t1, 0x00F8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x000B
	bnez    $at, .L802C2AD4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x014C($t4)
.L802C2AD4:
	b       .L802C2CB4
	nop
.L802C2ADC:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802C2B28
	nop
	lui     $t7, %hi(object_80361262)
	lh      $t7, %lo(object_80361262)($t7)
	bnez    $t7, .L802C2B28
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x014C($t8)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t8)
	li      $t9, 0x0001
	lui     $at, %hi(object_80361262)
	sh      $t9, %lo(object_80361262)($at)
.L802C2B28:
	b       .L802C2CB4
	nop
.L802C2B30:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0118($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t3, object_80361188
	la.l    $t3, object_80361188
	lw      $t5, 0x0000($t3)
	lw      $t4, 0x00F8($t6)
	li      $a2, 0x41200000
	mtc1    $t5, $f8
	mtc1    $t4, $f10
	cvt.s.w $f12, $f8
	jal     obj_lib_8029E494
	cvt.s.w $f14, $f10
	trunc.w.s $f16, $f0
	la.u    $t1, object_80361188
	la.l    $t1, object_80361188
	mfc1    $t0, $f16
	nop
	sw      $t0, 0x0000($t1)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t2, object_80361188
	la.l    $t2, object_80361188
	lw      $t3, 0x0000($t2)
	lw      $t9, 0x00F8($t8)
	bne     $t9, $t3, .L802C2BE8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x00D6($t5)
	bnez    $t6, .L802C2BD0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t7, 0x014C($t4)
	addiu   $t0, $t7, 0x0001
	b       .L802C2BE0
	sw      $t0, 0x014C($t4)
.L802C2BD0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t1, 0x0800
	sw      $t1, 0x0118($t8)
.L802C2BE0:
	b       .L802C2C64
	nop
.L802C2BE8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t9, 0x0154($t2)
	bnez    $t9, .L802C2C10
	nop
	li.u    $a0, 0x30668081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30668081
	b       .L802C2C54
	nop
.L802C2C10:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t3, object_80361188
	la.l    $t3, object_80361188
	lw      $t5, 0x0000($t3)
	lw      $t7, 0x00F8($t6)
	slt     $at, $t7, $t5
	beqz    $at, .L802C2C48
	nop
	li.u    $a0, 0x41160001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x41160001
	b       .L802C2C54
	nop
.L802C2C48:
	li.u    $a0, 0x41160001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x41160001
.L802C2C54:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t0, 0x0800
	sw      $t0, 0x0118($t4)
.L802C2C64:
	b       .L802C2CB4
	nop
.L802C2C6C:
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	bnez    $v0, .L802C2CAC
	nop
	lui     $at, %hi(object_80361262)
	sh      $0, %lo(object_80361262)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0118($t2)
.L802C2CAC:
	b       .L802C2CB4
	nop
.L802C2CB4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t3, 0x00D4($t9)
	lw      $t6, 0x0118($t9)
	addu    $t5, $t3, $t6
	sw      $t5, 0x00D4($t9)
.L802C2CCC:
	b       .L802C2CD4
	nop
.L802C2CD4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C2CE8:
	addiu   $sp, $sp, -0x0008
	li      $t6, 0x2C00
	sh      $t6, 0x0006($sp)
	lui     $at, %hi(object_a_80337D20)
	ldc1    $f6, %lo(object_a_80337D20)($at)
	cvt.d.s $f4, $f12
	mul.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0000($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	mtc1    $0, $f4
	lhu     $t8, 0x00F6($t7)
	mtc1    $0, $f8
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	cvt.d.s $f18, $f16
	li      $at, 0x3FE00000
	add.d   $f6, $f18, $f4
	mtc1    $at, $f9
	lui     $at, %hi(object_a_80337D28)
	ldc1    $f16, %lo(object_a_80337D28)($at)
	mul.d   $f10, $f6, $f8
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	lwc1    $f8, 0x0000($sp)
	mul.d   $f18, $f10, $f16
	cvt.d.s $f10, $f8
	add.d   $f6, $f18, $f4
	mul.d   $f16, $f6, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x002C($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_cos)
	mtc1    $0, $f10
	lhu     $t2, 0x00F6($t1)
	mtc1    $0, $f18
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	neg.s   $f8, $f4
	li      $at, 0x3FE00000
	cvt.d.s $f6, $f8
	mtc1    $at, $f19
	add.d   $f16, $f6, $f10
	mtc1    $0, $f8
	mtc1    $at, $f9
	mtc1    $0, $f10
	mul.d   $f4, $f16, $f18
	mtc1    $at, $f11
	lwc1    $f18, 0x0000($sp)
	mul.d   $f6, $f4, $f8
	cvt.d.s $f4, $f18
	add.d   $f16, $f6, $f10
	mul.d   $f8, $f16, $f4
	cvt.s.d $f6, $f8
	swc1    $f6, 0x0030($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	mtc1    $0, $f16
	lhu     $t6, 0x00F6($t5)
	mtc1    $0, $f8
	sra     $t8, $t6, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	cvt.d.s $f18, $f10
	li      $at, 0x3FE00000
	add.d   $f4, $f18, $f16
	mtc1    $at, $f9
	lui     $at, %hi(object_a_80337D30)
	ldc1    $f10, %lo(object_a_80337D30)($at)
	mul.d   $f6, $f4, $f8
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	lwc1    $f8, 0x0000($sp)
	mul.d   $f18, $f6, $f10
	cvt.d.s $f6, $f8
	add.d   $f4, $f18, $f16
	mul.d   $f10, $f4, $f6
	cvt.s.d $f18, $f10
	swc1    $f18, 0x0034($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x00F4($t0)
	addiu   $t2, $t7, 0x0200
	sw      $t2, 0x00F4($t0)
	li      $at, 0x41600000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t6, 0x0006($sp)
	lw      $t1, 0x00D4($t4)
	addu    $t8, $t1, $t6
	sw      $t8, 0x00D4($t4)
	b       .L802C2EB4
	nop
.L802C2EB4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void object_a_802C2EBC(void) */
.globl object_a_802C2EBC
object_a_802C2EBC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802C2F48
	nop
	jal     obj_lib_802A05D4
	nop
	jal     obj_lib_802A184C
	nop
	mtc1    $0, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_a_80337D38)
	lwc1    $f6, %lo(object_a_80337D38)($at)
	lwc1    $f4, 0x015C($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C2F38
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0150($t0)
.L802C2F38:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       .L802C2FA4
	sw      $0, 0x0154($t3)
.L802C2F48:
	li.u    $a0, 0x40050001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40050001
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x42700000
	mtc1    $at, $f16
	lw      $t5, 0x0154($t4)
	mtc1    $t5, $f8
	nop
	cvt.s.w $f10, $f8
	jal     object_a_802C2CE8
	div.s   $f12, $f10, $f16
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x003C
	bnez    $at, .L802C2FA4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L802C2FA4:
	b       .L802C2FAC
	nop
.L802C2FAC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C2FBC(void) */
.globl object_a_802C2FBC
object_a_802C2FBC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 3
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x001C($sp)
	jal     obj_lib_802A2748
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x01BC($t9)
	li.u    $a0, 0x40050001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40050001
	jal     obj_lib_802A15AC
	nop
	lwc1    $f8, 0x001C($sp)
	c.lt.s  $f0, $f8
	nop
	bc1f    .L802C30B8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	bnez    $t1, .L802C30B8
	nop
	li      $at, 0x41A00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0200
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t3)
	la.u    $a0, str_object_a_off
	la.l    $a0, str_object_a_off
	jal     obj_debug_802CA5B8
	move    $a1, $0
	la.u    $t4, player_data
	la.l    $t4, player_data
	lw      $t5, 0x000C($t4)
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	bne     $t5, $at, .L802C30B0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0150($t6)
.L802C30B0:
	b       .L802C3118
	nop
.L802C30B8:
	li      $at, 0x41A00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0200
	jal     obj_lib_8029E5EC
	lw      $a0, 0x01BC($t0)
	jal     obj_lib_802A1634
	nop
	li      $at, 0x43480000
	mtc1    $at, $f18
	nop
	c.lt.s  $f0, $f18
	nop
	bc1f    .L802C3118
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
.L802C3118:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_a_80337D3C)
	lwc1    $f6, %lo(object_a_80337D3C)($at)
	lwc1    $f4, 0x015C($t3)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802C314C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
.L802C314C:
	jal     obj_lib_802A2320
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t6, $t8, 0x0200
	beqz    $t6, .L802C317C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01B4($t9)
	sw      $t0, 0x00C8($t9)
.L802C317C:
	jal     obj_lib_802A2348
	li      $a0, 0x003C
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_a_802C2CE8
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002634
	la.l    $a2, o_13002634
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x009F
	b       .L802C31B4
	nop
.L802C31B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C31C4(void) */
.globl object_a_802C31C4
object_a_802C31C4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42700000
	mtc1    $at, $f4
	lw      $t7, 0x0154($t6)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x001C($sp)
	mtc1    $0, $f18
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    .L802C322C
	nop
	li      $at, 0x42700000
	mtc1    $at, $f4
	lwc1    $f6, 0x001C($sp)
	jal     object_a_802C2CE8
	div.s   $f12, $f6, $f4
	b       .L802C3284
	nop
.L802C322C:
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_802A15AC
	nop
	lui     $at, %hi(object_a_80337D40)
	lwc1    $f8, %lo(object_a_80337D40)($at)
	c.lt.s  $f8, $f0
	nop
	bc1f    .L802C3260
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L802C3260:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0169
	bnez    $at, .L802C3284
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
.L802C3284:
	b       .L802C328C
	nop
.L802C328C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C329C
object_a_802C329C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330C58
	la.l    $a1, object_a_80330C58
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	la.u    $a0, object_a_80330C68
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330C68
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	b       .L802C32D8
	nop
.L802C32D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C32E8
object_a_802C32E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	addiu   $t8, $t7, 0x3700
	sw      $t8, 0x00C8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x41700000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41B00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t0)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	mov.s   $f20, $f0
	cvt.d.s $f4, $f20
	add.d   $f8, $f4, $f6
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, .L802C33B4
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A308C
	li      $a1, 0x42C80000
	jal     rand
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00D0($t3)
	jal     rand
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00D4($t4)
.L802C33B4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0154($t5)
	slti    $at, $t7, 0x0010
	bnez    $at, .L802C33D8
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C33D8:
	b       .L802C33E0
	nop
.L802C33E0:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C33F4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00E4($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C3440
object_a_802C3440:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sw      $t7, 0x0110($t6)
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C3460:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_1300277C
	jal     obj_lib_802A14FC
	la.l    $a0, o_1300277C
	bnez    $v0, .L802C3490
	nop
	la.u    $a0, o_130027F4
	jal     obj_lib_802A14FC
	la.l    $a0, o_130027F4
	beqz    $v0, .L802C34C0
	nop
.L802C3490:
	lui     $t6, %hi(object_80361264)
	lh      $t6, %lo(object_80361264)($t6)
	bnez    $t6, .L802C34B0
	nop
	b       .L802C3524
	li      $v0, 0x0001
	b       .L802C34B8
	nop
.L802C34B0:
	b       .L802C3524
	move    $v0, $0
.L802C34B8:
	b       .L802C3514
	nop
.L802C34C0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0074($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L802C34E0
	nop
	b       .L802C3524
	li      $v0, 0x0001
.L802C34E0:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x000A
	lw      $t1, 0x01A0($t0)
	bne     $t1, $at, .L802C3514
	nop
	lui     $t2, %hi(object_8033D480)
	lw      $t2, %lo(object_8033D480)($t2)
	andi    $t3, $t2, 0x0020
	beqz    $t3, .L802C3514
	nop
	b       .L802C3524
	li      $v0, 0x0001
.L802C3514:
	b       .L802C3524
	move    $v0, $0
	b       .L802C3524
	nop
.L802C3524:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C3534:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13002768
	jal     obj_lib_802A14FC
	la.l    $a0, o_13002768
	beqz    $v0, .L802C3560
	nop
	lui     $at, %hi(object_a_80337D44)
	lwc1    $f4, %lo(object_a_80337D44)($at)
	b       .L802C356C
	swc1    $f4, 0x001C($sp)
.L802C3560:
	lui     $at, %hi(object_a_80337D48)
	lwc1    $f6, %lo(object_a_80337D48)($at)
	swc1    $f6, 0x001C($sp)
.L802C356C:
	la.u    $a0, o_1300277C
	jal     obj_lib_802A14FC
	la.l    $a0, o_1300277C
	bnez    $v0, .L802C3594
	nop
	la.u    $a0, o_130027F4
	jal     obj_lib_802A14FC
	la.l    $a0, o_130027F4
	beqz    $v0, .L802C35C8
	nop
.L802C3594:
	lui     $t6, %hi(object_80361264)
	lh      $t6, %lo(object_80361264)($t6)
	li      $at, 0x0001
	bne     $t6, $at, .L802C35B8
	nop
	b       .L802C3674
	li      $v0, 0x0001
	b       .L802C35C0
	nop
.L802C35B8:
	b       .L802C3674
	move    $v0, $0
.L802C35C0:
	b       .L802C3664
	nop
.L802C35C8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0001
	lw      $t8, 0x01A0($t7)
	bne     $t8, $at, .L802C3610
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x015C($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802C3608
	nop
	b       .L802C3674
	li      $v0, 0x0001
.L802C3608:
	b       .L802C3664
	nop
.L802C3610:
	jal     object_a_802C3460
	nop
	bnez    $v0, .L802C3664
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f16, 0x015C($t0)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802C3664
	nop
	lui     $t2, %hi(object_80361250)
	lh      $t2, %lo(object_80361250)($t2)
	lw      $t1, 0x01A0($t0)
	beq     $t1, $t2, .L802C365C
	nop
	bnez    $t2, .L802C3664
	nop
.L802C365C:
	b       .L802C3674
	li      $v0, 0x0001
.L802C3664:
	b       .L802C3674
	move    $v0, $0
	b       .L802C3674
	nop
.L802C3674:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C3684
object_a_802C3684:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(hud+0x04)
	lh      $t6, %lo(hud+0x04)($t6)
	slti    $at, $t6, 0x000C
	beqz    $at, .L802C36B4
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802C3730
	nop
.L802C36B4:
	sw      $0, 0x002C($sp)
.L802C36B8:
	lw      $t7, 0x002C($sp)
	la.u    $t9, object_a_80330C84
	la.l    $t9, object_a_80330C84
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	addu    $t0, $t8, $t9
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $a1, 0x0000($t0)
	lh      $a2, 0x0002($t0)
	lh      $a3, 0x0004($t0)
	la.u    $t3, o_13002804
	la.l    $t3, o_13002804
	li      $t2, 0x0054
	sw      $t2, 0x0014($sp)
	sw      $t3, 0x0018($sp)
	li      $a0, 0x0001
	jal     obj_lib_8029EF64
	sw      $t1, 0x0010($sp)
	sw      $v0, 0x0028($sp)
	jal     rand
	nop
	lw      $t4, 0x0028($sp)
	sw      $v0, 0x00C8($t4)
	lw      $t5, 0x002C($sp)
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0003
	bnez    $at, .L802C36B8
	sw      $t6, 0x002C($sp)
.L802C3730:
	b       .L802C3738
	nop
.L802C3738:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_a_802C3748:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x017C($t6)
	lw      $t8, 0x00F4($t6)
	beq     $t7, $t8, .L802C380C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	lw      $t1, 0x017C($t9)
	slt     $at, $t1, $t0
	beqz    $at, .L802C37CC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x017C($t2)
	addiu   $t4, $t3, 0x0014
	sw      $t4, 0x017C($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	lw      $t7, 0x017C($t5)
	slt     $at, $t6, $t7
	beqz    $at, .L802C37C4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	sw      $t9, 0x017C($t8)
.L802C37C4:
	b       .L802C380C
	nop
.L802C37CC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x017C($t0)
	addiu   $t3, $t1, -0x0014
	sw      $t3, 0x017C($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x00F4($t4)
	lw      $t5, 0x017C($t4)
	slt     $at, $t5, $t2
	beqz    $at, .L802C380C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	sw      $t7, 0x017C($t6)
.L802C380C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x437F0000
	mtc1    $at, $f8
	lw      $t8, 0x017C($t9)
	lui     $at, %hi(object_a_80337D50)
	ldc1    $f18, %lo(object_a_80337D50)($at)
	mtc1    $t8, $f4
	lui     $at, %hi(object_a_80337D58)
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	ldc1    $f6, %lo(object_a_80337D58)($at)
	cvt.d.s $f16, $f10
	lwc1    $f10, 0x00F8($t9)
	mul.d   $f4, $f16, $f18
	cvt.d.s $f16, $f10
	add.d   $f8, $f4, $f6
	mul.d   $f18, $f16, $f8
	cvt.s.d $f4, $f18
	swc1    $f4, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029F404
	lw      $a1, 0x001C($sp)
	b       .L802C3874
	nop
.L802C3874:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802C3884:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00FE($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x44800000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t1, $f10
	nop
	sw      $t1, 0x00D0($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x00FF
	lw      $t3, 0x017C($t2)
	beq     $t3, $at, .L802C38E8
	nop
	li      $at, 0x0001
	bne     $a0, $at, .L802C39C4
	nop
.L802C38E8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x00FE($t4)
	lwc1    $f8, 0x00F8($t4)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f16, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337D60)
	ldc1    $f4, %lo(object_a_80337D60)($at)
	cvt.d.s $f18, $f16
	cvt.d.s $f10, $f8
	mul.d   $f6, $f18, $f4
	add.d   $f16, $f10, $f6
	cvt.s.d $f18, $f16
	swc1    $f18, 0x002C($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00FE($t9)
	lwc1    $f18, 0x00F8($t9)
	sra     $t1, $t0, 4
	sll     $t6, $t1, 2
	addu    $at, $at, $t6
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337D68)
	ldc1    $f6, %lo(object_a_80337D68)($at)
	neg.s   $f8, $f4
	cvt.d.s $f4, $f18
	cvt.d.s $f10, $f8
	mul.d   $f16, $f10, $f6
	add.d   $f8, $f4, $f16
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0030($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x002C($t2)
	swc1    $f6, 0x0034($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x00FE($t3)
	lwc1    $f18, 0x00F8($t3)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f16, $f18, $f4
	swc1    $f16, 0x00E4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t0, 0x00FC($t4)
	addiu   $t1, $t0, 0x0400
	sw      $t1, 0x00FC($t4)
.L802C39C4:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C39D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0160($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t6)
	sh      $v0, 0x0026($sp)
	lui     $t7, %hi(object)
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lw      $t7, %lo(object)($t7)
	lw      $a1, 0x00D4($t8)
	jal     obj_lib_802A11A8
	lw      $a0, 0x00C8($t7)
	sh      $v0, 0x0024($sp)
	li      $t9, 0x1568
	sh      $t9, 0x0022($sp)
	li      $t0, 0x6B58
	sh      $t0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t1)
	lh      $t2, 0x0026($sp)
	lh      $t3, 0x0022($sp)
	slt     $at, $t3, $t2
	bnez    $at, .L802C3A64
	nop
	lh      $t4, 0x0024($sp)
	lh      $t5, 0x0020($sp)
	slt     $at, $t4, $t5
	beqz    $at, .L802C3AC0
	nop
.L802C3A64:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0028
	lw      $t7, 0x017C($t6)
	bne     $t7, $at, .L802C3A98
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x00FF
	sw      $t8, 0x00F4($t9)
	li.u    $a0, 0x50480081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50480081
.L802C3A98:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x017C($t0)
	slti    $at, $t1, 0x00B5
	bnez    $at, .L802C3AB8
	nop
	li      $t2, 0x0001
	sw      $t2, 0x001C($sp)
.L802C3AB8:
	b       .L802C3AE8
	nop
.L802C3AC0:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x00FF
	lw      $t4, 0x017C($t3)
	bne     $t4, $at, .L802C3AE8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0028
	sw      $t5, 0x00F4($t6)
.L802C3AE8:
	b       .L802C3AF8
	lw      $v0, 0x001C($sp)
	b       .L802C3AF8
	nop
.L802C3AF8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C3B08:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     obj_lib_802A05B4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0009
	lw      $t7, 0x008C($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x008C($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00C8($t9)
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0104($t9)
	lw      $t1, 0x0018($sp)
	beqz    $t1, .L802C3B78
	nop
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x00C8($t2)
	b       .L802C3BEC
	sw      $t3, 0x0100($t4)
.L802C3B78:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	mtc1    $0, $f10
	lh      $t7, 0x00CA($t5)
	lh      $t8, 0x0162($t5)
	subu    $t6, $t7, $t8
	andi    $t0, $t6, 0xFFFF
	sra     $t9, $t0, 4
	sll     $t1, $t9, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_cos)($at)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802C3BCC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00C8($t2)
	b       .L802C3BEC
	sw      $t3, 0x0100($t2)
.L802C3BCC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x8000
	lw      $t5, 0x00C8($t4)
	addu    $t7, $t5, $at
	sll     $t8, $t7, 16
	sra     $t6, $t8, 16
	sw      $t6, 0x0100($t4)
.L802C3BEC:
	b       .L802C3BF4
	nop
.L802C3BF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C3C04:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	sll     $t8, $t7, 11
	addiu   $t9, $t8, 0x0800
	sw      $t9, 0x0004($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x000C($sp)
	swc1    $f4, 0x00B8($t0)
	lhu     $t1, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lui     $t4, %hi(object)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_cos)($at)
	lw      $t4, %lo(object)($t4)
	swc1    $f6, 0x00B0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0100($t5)
	sw      $t6, 0x00C8($t5)
	beqz    $a0, .L802C3CC0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t1, %hi(object_a_8033002C)
	lw      $t9, 0x0154($t7)
	lw      $t8, 0x00D4($t7)
	sll     $t0, $t9, 1
	addu    $t1, $t1, $t0
	lh      $t1, %lo(object_a_8033002C)($t1)
	addu    $t2, $t8, $t1
	sw      $t2, 0x00D4($t7)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t9, %hi(object_a_8033002C)
	lw      $t6, 0x0154($t3)
	lw      $t4, 0x00D8($t3)
	sll     $t5, $t6, 1
	addu    $t9, $t9, $t5
	lh      $t9, %lo(object_a_8033002C)($t9)
	addu    $t0, $t4, $t9
	sw      $t0, 0x00D8($t3)
.L802C3CC0:
	b       .L802C3CC8
	nop
.L802C3CC8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_a_802C3CD0:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li.u    $at, 0xFFFC2000
	li.l    $at, 0xFFFC2000
	lw      $t7, 0x0154($t6)
	sll     $t8, $t7, 13
	addu    $t9, $t8, $at
	sw      $t9, 0x0004($sp)
	lhu     $t0, 0x0006($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	lw      $t4, 0x00D4($t3)
	li      $at, 0x44800000
	mtc1    $at, $f6
	mtc1    $t4, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t6, $f4
	nop
	sw      $t6, 0x00D4($t3)
	b       .L802C3D48
	nop
.L802C3D48:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_a_802C3D50:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0104($t6)
	trunc.w.s $f6, $f4
	mfc1    $t8, $f6
	nop
	sw      $t8, 0x00C8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x008C($t9)
	ori     $t1, $t0, 0x0008
	sw      $t1, 0x008C($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C3D9C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	jal     object_a_802C33F4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C3DCC
	nop
	jal     object_a_802C3B08
	move    $a0, $0
.L802C3DCC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0020
	beqz    $at, .L802C3E38
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object_a_8033002C)
	lui     $at, %hi(object_a_80337D70)
	lw      $t1, 0x0154($t0)
	lwc1    $f8, %lo(object_a_80337D70)($at)
	lwc1    $f16, 0x0018($sp)
	sll     $t2, $t1, 1
	addu    $t3, $t3, $t2
	lh      $t3, %lo(object_a_8033002C)($t3)
	move    $a0, $0
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	mul.s   $f18, $f10, $f16
	mfc1    $a1, $f18
	jal     object_a_802C3C04
	nop
	b       .L802C3E60
	nop
.L802C3E38:
	jal     obj_lib_802A05D4
	nop
	jal     object_a_802C3D50
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	b       .L802C3E70
	li      $v0, 0x0001
.L802C3E60:
	b       .L802C3E70
	move    $v0, $0
	b       .L802C3E70
	nop
.L802C3E70:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C3E80:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	jal     object_a_802C33F4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C3EB0
	nop
	jal     object_a_802C3B08
	li      $a0, 0x0001
.L802C3EB0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0020
	beqz    $at, .L802C3F1C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object_a_8033002C)
	lui     $at, %hi(object_a_80337D74)
	lw      $t1, 0x0154($t0)
	lwc1    $f8, %lo(object_a_80337D74)($at)
	lwc1    $f16, 0x0018($sp)
	sll     $t2, $t1, 1
	addu    $t3, $t3, $t2
	lh      $t3, %lo(object_a_8033002C)($t3)
	li      $a0, 0x0001
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	mul.s   $f18, $f10, $f16
	mfc1    $a1, $f18
	jal     object_a_802C3C04
	nop
	b       .L802C3F6C
	nop
.L802C3F1C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0030
	beqz    $at, .L802C3F44
	nop
	jal     object_a_802C3CD0
	nop
	b       .L802C3F6C
	nop
.L802C3F44:
	jal     obj_lib_802A05D4
	nop
	jal     object_a_802C3D50
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	b       .L802C3F7C
	li      $v0, 0x0001
.L802C3F6C:
	b       .L802C3F7C
	move    $v0, $0
	b       .L802C3F7C
	nop
.L802C3F7C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C3F8C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C4004
	nop
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x00C8($t9)
	sw      $t0, 0x00C8($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x0088($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0009
	lw      $t5, 0x008C($t4)
	and     $t6, $t5, $at
	b       .L802C40B8
	sw      $t6, 0x008C($t4)
.L802C4004:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x0154($t7)
	bne     $t8, $at, .L802C4028
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00F4($t9)
.L802C4028:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x001F
	beqz    $at, .L802C4050
	nop
	lw      $t2, 0x00EC($t0)
	andi    $t3, $t2, 0x0200
	beqz    $t3, .L802C40B8
	nop
.L802C4050:
	jal     obj_lib_802A37AC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x0088($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t7, 0x0108($t4)
	beqz    $t7, .L802C40B0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0108($t8)
	sw      $t9, 0x001C($sp)
	la.u    $a0, o_130027E4
	jal     obj_lib_802A14FC
	la.l    $a0, o_130027E4
	bnez    $v0, .L802C40B0
	nop
	lw      $t1, 0x001C($sp)
	lw      $t0, 0x01AC($t1)
	addiu   $t2, $t0, 0x0001
	sw      $t2, 0x01AC($t1)
.L802C40B0:
	b       .L802C4108
	li      $v0, 0x0001
.L802C40B8:
	li      $at, 0x40A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D8($t5)
	addiu   $t4, $t6, 0x0800
	sw      $t4, 0x00D8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00D4($t7)
	addiu   $t9, $t8, 0x0800
	sw      $t9, 0x00D4($t7)
	b       .L802C4108
	move    $v0, $0
	b       .L802C4108
	nop
.L802C4108:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802C4118:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x00FF
	bne     $t8, $a0, .L802C4140
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802C4148
	nop
.L802C4140:
	jr      $ra
	move    $v0, $0
.L802C4148:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C4158:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802C41F0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x4000
	beqz    $t1, .L802C41D0
	nop
	jal     object_a_802C4118
	li      $a0, 0x0003
	bnez    $v0, .L802C41D0
	nop
	jal     obj_lib_802A05B4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	li.u    $a0, 0x500B0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x500B0081
	li      $t3, 0x0001
	b       .L802C41F0
	sw      $t3, 0x001C($sp)
.L802C41D0:
	li.u    $a0, 0x500A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x500A0081
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
	li      $t5, -0x0001
	sw      $t5, 0x001C($sp)
.L802C41F0:
	b       .L802C4200
	lw      $v0, 0x001C($sp)
	b       .L802C4200
	nop
.L802C4200:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802C4210:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	jal     object_a_802C39D4
	nop
	beqz    $v0, .L802C4394
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x8000
	sw      $t6, 0x0130($t7)
	jal     obj_lib_802A15AC
	nop
	lui     $at, %hi(object_a_80337D78)
	lwc1    $f4, %lo(object_a_80337D78)($at)
	c.lt.s  $f4, $f0
	nop
	bc1f    .L802C4274
	nop
	jal     obj_lib_802A2748
	nop
	b       .L802C4284
	sh      $v0, 0x001A($sp)
.L802C4274:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0160($t8)
	sh      $t9, 0x001A($sp)
.L802C4284:
	lh      $a0, 0x001A($sp)
	jal     obj_lib_8029E5EC
	lh      $a1, 0x0026($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t0)
	jal     obj_lib_802A0114
	nop
	bnez    $v0, .L802C4344
	nop
	lui     $t1, %hi(object)
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00A4($t2)
	lwc1    $f8, 0x00A4($t1)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x001C($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802C4344
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C4344
	nop
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lui     $t3, %hi(object)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x00A4($t4)
	li      $a2, 0x41200000
	li      $a3, 0x40000000
	lwc1    $f12, 0x00A4($t3)
	jal     obj_lib_802A1370
	add.s   $f14, $f8, $f10
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	swc1    $f0, 0x00B0($t5)
.L802C4344:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f18, 0x010C($t6)
	lwc1    $f14, 0x0028($sp)
	jal     obj_lib_8029FE00
	sub.s   $f12, $f16, $f18
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t7)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L802C438C
	nop
	jal     object_a_802C3884
	move    $a0, $0
.L802C438C:
	b       .L802C43DC
	nop
.L802C4394:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0130($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E4($t1)
.L802C43DC:
	b       .L802C43E4
	nop
.L802C43E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C43F4(void) */
.globl object_a_802C43F4
object_a_802C43F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0040
	sh      $t8, 0x0074($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t0, 0x0144($t9)
	bne     $t0, $at, .L802C4438
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000A
	sw      $t1, 0x01A0($t2)
.L802C4438:
	jal     obj_lib_802A184C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0110($t3)
	sw      $t4, 0x00C8($t3)
	jal     object_a_802C33F4
	nop
	la.u    $a0, o_13002790
	jal     obj_lib_8029F95C
	la.l    $a0, o_13002790
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0108($t5)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t7)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t8, 0x00FF
	sw      $t8, 0x00F4($t6)
	jal     object_a_802C3534
	nop
	beqz    $v0, .L802C44F0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t0, 0x0144($t9)
	bne     $t0, $at, .L802C44E0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0108($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t2, 0x0005
	b       .L802C44F0
	sw      $t2, 0x014C($t4)
.L802C44E0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t5)
.L802C44F0:
	b       .L802C44F8
	nop
.L802C44F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C4508(void) */
.globl object_a_802C4508
object_a_802C4508:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001E
	beqz    $at, .L802C4570
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t8)
	li      $at, 0x41500000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t9)
	jal     object_a_802C3884
	move    $a0, $0
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	b       .L802C4598
	swc1    $f8, 0x0128($t0)
.L802C4570:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
	li      $at, 0x41F00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0128($t3)
.L802C4598:
	b       .L802C45A0
	nop
.L802C45A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C45B0(void) */
.globl object_a_802C45B0
object_a_802C45B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C461C
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f6
	neg.s   $f4, $f0
	lui     $t8, %hi(object)
	mul.s   $f8, $f4, $f6
	lw      $t8, %lo(object)($t8)
	swc1    $f8, 0x010C($t8)
	jal     o_script_80383CB4
	nop
	li      $at, 0x43000000
	mtc1    $at, $f10
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	sh      $t0, 0x01B0($t1)
.L802C461C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0xC2C80000
	mtc1    $at, $f12
	lh      $a1, 0x01B0($t2)
	li      $a2, 0x3F000000
	jal     object_a_802C4210
	addiu   $a1, $a1, 0x0180
	jal     object_a_802C4158
	nop
	sw      $v0, 0x001C($sp)
	jal     object_a_802C3460
	nop
	beqz    $v0, .L802C4664
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
.L802C4664:
	lw      $t4, 0x001C($sp)
	li      $at, -0x0001
	bne     $t4, $at, .L802C4684
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
.L802C4684:
	lw      $t7, 0x001C($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L802C46A4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
.L802C46A4:
	lw      $t0, 0x001C($sp)
	li      $at, 0x0001
	bne     $t0, $at, .L802C46C0
	nop
	li.u    $a0, 0x50244081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x50244081
.L802C46C0:
	b       .L802C46C8
	nop
.L802C46C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C46D8(void) */
.globl object_a_802C46D8
object_a_802C46D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f12
	jal     object_a_802C3D9C
	nop
	beqz    $v0, .L802C4708
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
.L802C4708:
	b       .L802C4710
	nop
.L802C4710:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C4720(void) */
.globl object_a_802C4720
object_a_802C4720:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802C3F8C
	nop
	beqz    $v0, .L802C4778
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L802C4760
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802C4778
	nop
.L802C4760:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	sw      $t8, 0x014C($t9)
	jal     obj_lib_802A057C
	nop
.L802C4778:
	b       .L802C4780
	nop
.L802C4780:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C4790(void) */
.globl object_a_802C4790
object_a_802C4790:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13002804
	jal     obj_lib_8029F95C
	la.l    $a0, o_13002804
	bnez    $v0, .L802C47B8
	nop
	li      $t6, 0x006C
	b       .L802C47C0
	sw      $t6, 0x001C($sp)
.L802C47B8:
	li      $t7, 0x006B
	sw      $t7, 0x001C($sp)
.L802C47C0:
	li      $a0, 0x0002
	li      $a1, 0x0002
	lw      $a2, 0x001C($sp)
	jal     obj_lib_802A4960
	move    $a3, $0
	beqz    $v0, .L802C480C
	nop
	li.u    $a0, 0x50244081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x50244081
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	lw      $t8, 0x001C($sp)
	li      $at, 0x006C
	bne     $t8, $at, .L802C480C
	nop
	jal     Na_g_803220F0
	nop
.L802C480C:
	b       .L802C4814
	nop
.L802C4814:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C4824
object_a_802C4824:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_80330C98
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330C98
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	jal     object_a_802C3748
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a1, o_13002684
	la.l    $a1, o_13002684
	jal     obj_lib_802A1554
	lw      $a0, 0x0068($t6)
	beqz    $v0, .L802C489C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0074($t7)
	bnez    $t8, .L802C489C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x0088($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0088($t0)
.L802C489C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0134($t3)
	b       .L802C48B0
	nop
.L802C48B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C48C0(void) */
.globl object_a_802C48C0
object_a_802C48C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13002768
	jal     obj_lib_802A14FC
	la.l    $a0, o_13002768
	beqz    $v0, .L802C48F4
	nop
	jal     object_a_802C53CC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000A
	sw      $t6, 0x01AC($t7)
.L802C48F4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0108($t8)
	jal     object_a_802C3534
	nop
	beqz    $v0, .L802C49C0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t1, object_8033D280
	la.l    $t1, object_8033D280
	lh      $t2, 0x0050($t1)
	lw      $t0, 0x01AC($t9)
	addiu   $t3, $t2, 0x0005
	slt     $at, $t0, $t3
	bnez    $at, .L802C49C0
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	jal     obj_lib_802A184C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0110($t6)
	sw      $t7, 0x00C8($t6)
	jal     obj_lib_8029F694
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x00FF
	sw      $t8, 0x00F4($t9)
	li      $at, 0x40400000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x0003
	sw      $t2, 0x0184($t0)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	jal     obj_lib_802A05D4
	nop
	b       .L802C49D8
	nop
.L802C49C0:
	jal     obj_lib_8029F6BC
	nop
	jal     obj_lib_802A05B4
	nop
	jal     object_a_802C33F4
	nop
.L802C49D8:
	b       .L802C49E0
	nop
.L802C49E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C49F0(void) */
.globl object_a_802C49F0
object_a_802C49F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0184($t6)
	bne     $t7, $at, .L802C4A28
	nop
	li      $t8, 0x0180
	sh      $t8, 0x0022($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f4
	b       .L802C4A6C
	swc1    $f4, 0x001C($sp)
.L802C4A28:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t0, 0x0184($t9)
	bne     $t0, $at, .L802C4A58
	nop
	li      $t1, 0x0240
	sh      $t1, 0x0022($sp)
	lui     $at, %hi(object_a_80337D7C)
	lwc1    $f6, %lo(object_a_80337D7C)($at)
	b       .L802C4A6C
	swc1    $f6, 0x001C($sp)
.L802C4A58:
	li      $t2, 0x0300
	sh      $t2, 0x0022($sp)
	lui     $at, %hi(object_a_80337D80)
	lwc1    $f8, %lo(object_a_80337D80)($at)
	swc1    $f8, 0x001C($sp)
.L802C4A6C:
	li      $at, 0xC2C80000
	mtc1    $at, $f12
	lh      $a1, 0x0022($sp)
	jal     object_a_802C4210
	lw      $a2, 0x001C($sp)
	jal     object_a_802C4158
	nop
	sw      $v0, 0x0024($sp)
	la.u    $a0, o_1300277C
	jal     obj_lib_802A14FC
	la.l    $a0, o_1300277C
	beqz    $v0, .L802C4AC4
	nop
	lui     $t3, %hi(object_80361264)
	lh      $t3, %lo(object_80361264)($t3)
	bnez    $t3, .L802C4ABC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
.L802C4ABC:
	b       .L802C4AE0
	nop
.L802C4AC4:
	jal     object_a_802C3460
	nop
	beqz    $v0, .L802C4AE0
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
.L802C4AE0:
	lw      $t6, 0x0024($sp)
	li      $at, -0x0001
	bne     $t6, $at, .L802C4B00
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
.L802C4B00:
	lw      $t9, 0x0024($sp)
	li      $at, 0x0001
	bne     $t9, $at, .L802C4B20
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
.L802C4B20:
	lw      $t2, 0x0024($sp)
	li      $at, 0x0001
	bne     $t2, $at, .L802C4B3C
	nop
	li.u    $a0, 0x500CA081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x500CA081
.L802C4B3C:
	b       .L802C4B44
	nop
.L802C4B44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802C4B54(void) */
.globl object_a_802C4B54
object_a_802C4B54:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f12
	jal     object_a_802C3D9C
	nop
	beqz    $v0, .L802C4B84
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
.L802C4B84:
	b       .L802C4B8C
	nop
.L802C4B8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C4B9C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x44750000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337D84)
	lwc1    $f14, %lo(object_a_80337D84)($at)
	jal     object_b_802F2B88
	li      $a2, 0x437A0000
	b       .L802C4BC4
	nop
.L802C4BC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C4BD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x442F0000
	mtc1    $at, $f12
	li      $at, 0x45480000
	mtc1    $at, $f14
	li.u    $a2, 0x44ED8000
	jal     object_b_802F2B88
	li.l    $a2, 0x44ED8000
	b       .L802C4C00
	nop
.L802C4C00:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C4C10:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0xC4C80000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337D88)
	lwc1    $f14, %lo(object_a_80337D88)($at)
	jal     object_b_802F2B88
	li      $a2, 0x434D0000
	la.u    $a0, o_13002968
	jal     obj_lib_8029F95C
	la.l    $a0, o_13002968
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L802C4C58
	nop
	lw      $t8, 0x001C($sp)
	li      $t7, 0x0001
	sw      $t7, 0x0088($t8)
.L802C4C58:
	b       .L802C4C60
	nop
.L802C4C60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C4C70(void) */
.globl object_a_802C4C70
object_a_802C4C70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C4CA0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0184($t8)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x0184($t8)
.L802C4CA0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0184($t1)
	bnez    $t2, .L802C4D50
	nop
	jal     object_a_802C3F8C
	nop
	beqz    $v0, .L802C4D48
	nop
	jal     obj_lib_802A057C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	sw      $t3, 0x014C($t4)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     obj_lib_8029E96C
	move    $a3, $0
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0144($t5)
	bnez    $t6, .L802C4D18
	nop
	jal     object_a_802C4B9C
	nop
	b       .L802C4D48
	nop
.L802C4D18:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t9, 0x0144($t7)
	bne     $t9, $at, .L802C4D40
	nop
	jal     object_a_802C4C10
	nop
	b       .L802C4D48
	nop
.L802C4D40:
	jal     object_a_802C4BD4
	nop
.L802C4D48:
	b       .L802C4DBC
	nop
.L802C4D50:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x0154($t0)
	bnez    $t8, .L802C4D94
	nop
	jal     obj_lib_802A37AC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	lwc1    $f4, 0x00F8($t1)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x00F8($t1)
.L802C4D94:
	li      $at, 0x42200000
	mtc1    $at, $f12
	jal     object_a_802C3E80
	nop
	beqz    $v0, .L802C4DBC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
.L802C4DBC:
	b       .L802C4DC4
	nop
.L802C4DC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C4DD4(void) */
.globl object_a_802C4DD4
object_a_802C4DD4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	jal     object_a_802C33F4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, .L802C4F0C
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x03CD
	move    $a2, $0
	jal     obj_lib_8029E914
	li      $a3, 0x0272
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x003D
	bnez    $at, .L802C4F04
	nop
	li      $at, 0x44160000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C4F04
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x03CD
	move    $a2, $0
	jal     obj_lib_8029E914
	li      $a3, 0x02CD
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $t2, o_13002898
	la.l    $t2, o_13002898
	li      $t1, 0x0035
	sw      $t1, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t0, 0x0010($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $t5, o_13002898
	la.l    $t5, o_13002898
	li      $t4, 0x0035
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	li      $a3, -0x00C8
	jal     obj_lib_8029EF64
	sw      $t3, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t9, o_13002898
	la.l    $t9, o_13002898
	li      $t7, 0x0035
	sw      $t7, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	li      $a0, 0x0002
	move    $a1, $0
	move    $a2, $0
	li      $a3, 0x00C8
	jal     obj_lib_8029EF64
	sw      $t6, 0x0010($sp)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C4F04:
	b       .L802C4F18
	nop
.L802C4F0C:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C4F18:
	b       .L802C4F20
	nop
.L802C4F20:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C4F30
object_a_802C4F30:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330C74
	la.l    $a1, object_a_80330C74
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42700000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F8($t6)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00DC($t6)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_80330CB0
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330CB0
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	jal     object_a_802C3748
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	b       .L802C4FA0
	nop
.L802C4FA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C4FB0(void) */
.globl object_a_802C4FB0
object_a_802C4FB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0108($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x00FF
	sw      $t7, 0x00F4($t8)
	li      $at, 0x40000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t9)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	jal     obj_lib_802A05D4
	nop
	jal     object_a_802C3534
	nop
	beqz    $v0, .L802C5024
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802C5024:
	b       .L802C502C
	nop
.L802C502C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C503C(void) */
.globl object_a_802C503C
object_a_802C503C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f12
	li      $a1, 0x0200
	jal     object_a_802C4210
	li      $a2, 0x3F000000
	jal     object_a_802C4158
	nop
	sw      $v0, 0x001C($sp)
	jal     object_a_802C3460
	nop
	beqz    $v0, .L802C5080
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802C5080:
	lw      $t7, 0x001C($sp)
	li      $at, -0x0001
	bne     $t7, $at, .L802C50A0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
.L802C50A0:
	lw      $t0, 0x001C($sp)
	li      $at, 0x0001
	bne     $t0, $at, .L802C50C0
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t2)
.L802C50C0:
	b       .L802C50C8
	nop
.L802C50C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C50D8(void) */
.globl object_a_802C50D8
object_a_802C50D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f12
	jal     object_a_802C3D9C
	nop
	beqz    $v0, .L802C5108
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
.L802C5108:
	b       .L802C5110
	nop
.L802C5110:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C5120(void) */
.globl object_a_802C5120
object_a_802C5120:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802C3F8C
	nop
	beqz    $v0, .L802C5144
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C5144:
	b       .L802C514C
	nop
.L802C514C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C515C
object_a_802C515C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(hud+0x04)
	lh      $t6, %lo(hud+0x04)($t6)
	slti    $at, $t6, 0x000C
	beqz    $at, .L802C518C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802C51BC
	nop
.L802C518C:
	lui     $a0, %hi(object)
	la.u    $a2, o_1300167C
	la.l    $a2, o_1300167C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x005A
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x001C($sp)
	lw      $t8, 0x0188($t7)
	sw      $t8, 0x0188($t9)
.L802C51BC:
	b       .L802C51C4
	nop
.L802C51C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C51D4
object_a_802C51D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_80330CC4
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330CC4
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	jal     object_a_802C3748
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	b       .L802C5214
	nop
.L802C5214:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5224
object_a_802C5224:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802C5264
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802C537C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802C53A8
	nop
	b       .L802C53B0
	nop
.L802C5264:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C5374
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0088($t8)
	slti    $at, $t9, 0x0005
	beqz    $at, .L802C5318
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0005
	lw      $t1, 0x00FC($t0)
	beq     $t1, $at, .L802C5304
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	lw      $t4, 0x0088($t2)
	subu    $t5, $t3, $t4
	slti    $at, $t5, 0x0002
	beqz    $at, .L802C5304
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130027F4
	la.l    $a2, o_130027F4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0054
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00FC($t6)
.L802C5304:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
.L802C5318:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0088($t2)
	slti    $at, $t3, 0x0005
	bnez    $at, .L802C5374
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300277C
	la.l    $a2, o_1300277C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0054
	sw      $v0, 0x0024($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     obj_lib_802A5228
	lw      $a0, 0x0024($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
	jal     Na_g_803220F0
	nop
.L802C5374:
	b       .L802C53B0
	nop
.L802C537C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x003D
	bnez    $at, .L802C53A0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802C53A0:
	b       .L802C53B0
	nop
.L802C53A8:
	b       .L802C53B0
	nop
.L802C53B0:
	b       .L802C53B8
	nop
.L802C53B8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C53CC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(camera_8032DF30)
	sw      $t6, %lo(camera_8032DF30)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C53EC
object_a_802C53EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A3C18
	nop
	b       .L802C5404
	nop
.L802C5404:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5414
object_a_802C5414:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x40000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	bnez    $t8, .L802C54A0
	nop
	jal     obj_lib_8029F6BC
	nop
	lui     $t9, %hi(hud+0x04)
	lh      $t9, %lo(hud+0x04)($t9)
	slti    $at, $t9, 0x000C
	beqz    $at, .L802C5470
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C5470:
	lui     $t0, %hi(object_80361250)
	lh      $t0, %lo(object_80361250)($t0)
	li      $at, 0x0001
	bne     $t0, $at, .L802C5498
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
.L802C5498:
	b       .L802C5634
	nop
.L802C54A0:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x014C($t4)
	bne     $t5, $at, .L802C5560
	nop
	jal     obj_lib_8029F694
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x00B4
	sw      $t6, 0x017C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802C54F4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F8($t0)
.L802C54F4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t2)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802C5538
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x014C($t3)
	addiu   $t4, $t1, 0x0001
	sw      $t4, 0x014C($t3)
	li.u    $a0, 0x50480081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50480081
.L802C5538:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0160($t6)
	b       .L802C5634
	sh      $t7, 0x001E($sp)
.L802C5560:
	li      $at, 0x42000000
	mtc1    $at, $f12
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     obj_lib_8029E398
	nop
	li      $at, 0xC47A0000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0164($t8)
	lui     $at, %hi(object_a_80337D8C)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, %lo(object_a_80337D8C)($at)
	swc1    $f18, 0x016C($t9)
	jal     obj_lib_802A2748
	nop
	sh      $v0, 0x001E($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337D90)
	lwc1    $f6, %lo(object_a_80337D90)($at)
	lwc1    $f4, 0x00A8($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C560C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x017C($t2)
	blez    $t1, .L802C5600
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x017C($t4)
	addiu   $t5, $t3, -0x0014
	b       .L802C560C
	sw      $t5, 0x017C($t4)
.L802C5600:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x017C($t6)
.L802C560C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0074($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L802C5634
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t2)
.L802C5634:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B0($t1)
	jal     obj_lib_802A2748
	nop
	sh      $v0, 0x001E($sp)
	lh      $a0, 0x001E($sp)
	jal     obj_lib_8029E5EC
	li      $a1, 0x05A8
	jal     object_a_802C3884
	li      $a0, 0x0001
	jal     obj_lib_802A2644
	nop
	b       .L802C5678
	nop
.L802C5678:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C5688
object_a_802C5688:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0144($t6)
	beqz    $s0, .L802C56DC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802C56C8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802C56F4
	nop
	b       .L802C5708
	nop
.L802C56C8:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0024($sp)
	b       .L802C5708
	nop
.L802C56DC:
	li      $at, 0xC34E0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0024($sp)
	b       .L802C5708
	nop
.L802C56F4:
	lui     $at, %hi(object_a_80337D94)
	lwc1    $f8, %lo(object_a_80337D94)($at)
	swc1    $f8, 0x0024($sp)
	b       .L802C5708
	nop
.L802C5708:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, .L802C5748
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802C5778
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802C57EC
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802C5840
	nop
	b       .L802C5874
	nop
.L802C5748:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x441B0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t8)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
.L802C5778:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x41000000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t2)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t2)
	li.u    $a0, 0x40080001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40080001
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f10, 0x00A4($t3)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802C57E4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x0024($sp)
	swc1    $f18, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
.L802C57E4:
	b       .L802C5874
	nop
.L802C57EC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0154($t8)
	bnez    $t0, .L802C580C
	nop
	li.u    $a0, 0x303D0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x303D0081
.L802C580C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     obj_lib_802A3DD4
	lw      $a0, 0x0154($t1)
	beqz    $v0, .L802C5838
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x014C($t9)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t9)
.L802C5838:
	b       .L802C5874
	nop
.L802C5840:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0154($t4)
	bnez    $t6, .L802C586C
	nop
	lw      $t7, 0x0144($t4)
	li      $at, 0x0001
	bne     $t7, $at, .L802C586C
	nop
	jal     Na_g_803220F0
	nop
.L802C586C:
	b       .L802C5874
	nop
.L802C5874:
	b       .L802C587C
	nop
.L802C587C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C5890
object_a_802C5890:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, .L802C58C4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L802C58D4
	sw      $0, 0x014C($t9)
.L802C58C4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802C58D4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x014C($t2)
	bnez    $t3, .L802C593C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x0162($t4)
	lwc1    $f6, 0x015C($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	sw      $t9, 0x0114($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D0($t0)
	lw      $t2, 0x0114($t0)
	addu    $t3, $t1, $t2
	b       .L802C5A08
	sw      $t3, 0x00D0($t0)
.L802C593C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	jal     obj_lib_802A3674
	lw      $a0, 0x00D0($t5)
	slti    $at, $v0, 0x0BB8
	bnez    $at, .L802C5970
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0010
	bnez    $at, .L802C5A08
	nop
.L802C5970:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0114($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t4, 0x00D2($t9)
	blez    $t4, .L802C59D0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D0($t1)
	slti    $at, $t2, 0x00C8
	beqz    $at, .L802C59B8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       .L802C59C8
	sw      $0, 0x00D0($t3)
.L802C59B8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t0, -0x00C8
	sw      $t0, 0x0114($t5)
.L802C59C8:
	b       .L802C5A08
	nop
.L802C59D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	slti    $at, $t7, -0x00C7
	bnez    $at, .L802C59F8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       .L802C5A08
	sw      $0, 0x00D0($t8)
.L802C59F8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t9, 0x00C8
	sw      $t9, 0x0114($t4)
.L802C5A08:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D0($t1)
	lw      $t3, 0x0114($t1)
	addu    $t0, $t2, $t3
	sw      $t0, 0x00D0($t1)
	b       .L802C5A28
	nop
.L802C5A28:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C5A38
object_a_802C5A38:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E2F8
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x015C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00D4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, .L802C5A98
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802C5ADC
	nop
	b       .L802C5B30
	nop
.L802C5A98:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, .L802C5AAC
	nop
.L802C5AAC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0088($t1)
	beqz    $t2, .L802C5AD4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
.L802C5AD4:
	b       .L802C5B38
	nop
.L802C5ADC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	li.u    $a0, 0x410D0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x410D0001
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0066
	bnez    $at, .L802C5B28
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C5B28:
	b       .L802C5B38
	nop
.L802C5B30:
	b       .L802C5B38
	nop
.L802C5B38:
	b       .L802C5B40
	nop
.L802C5B40:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C5B54:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, .L802C5BB4
	nop
	lui     $t8, %hi(object_80361250)
	lh      $t8, %lo(object_80361250)($t8)
	li      $at, 0x000A
	bne     $t8, $at, .L802C5BAC
	nop
	li      $a0, 0x0013
	li      $a1, 0x002D
	li      $a2, 0x0014
	jal     Na_BGM_push
	li      $a3, 0x00C8
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x00F8($t9)
.L802C5BAC:
	b       .L802C5C90
	nop
.L802C5BB4:
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t2)
	lwc1    $f14, 0x00A4($t2)
	jal     map_80381900
	lw      $a2, 0x00A8($t2)
	lw      $t3, 0x001C($sp)
	bnez    $t3, .L802C5BE4
	nop
	b       .L802C5BF0
	sh      $0, 0x001A($sp)
.L802C5BE4:
	lw      $t4, 0x001C($sp)
	lh      $t5, 0x0000($t4)
	sh      $t5, 0x001A($sp)
.L802C5BF0:
	jal     obj_lib_802A3CFC
	nop
	bnez    $v0, .L802C5C10
	nop
	lhu     $t6, 0x001A($sp)
	li      $at, 0x001A
	bne     $t6, $at, .L802C5C34
	nop
.L802C5C10:
	li      $a0, 0x0013
	move    $a1, $0
	li      $a2, 0x004E
	jal     Na_BGM_push
	li      $a3, 0x0032
	li      $t7, 0x0001
	lui     $at, %hi(object_80361264)
	b       .L802C5C50
	sh      $t7, %lo(object_80361264)($at)
.L802C5C34:
	li      $a0, 0x0013
	li      $a1, 0x002D
	li      $a2, 0x0014
	jal     Na_BGM_push
	li      $a3, 0x00C8
	lui     $at, %hi(object_80361264)
	sh      $0, %lo(object_80361264)($at)
.L802C5C50:
	lui     $t8, %hi(object_80361250)
	lh      $t8, %lo(object_80361250)($t8)
	beqz    $t8, .L802C5C84
	nop
	li      $at, 0x000A
	beq     $t8, $at, .L802C5C84
	nop
	jal     Na_BGM_pull
	li      $a0, 0x012C
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       .L802C5C90
	sw      $0, 0x00F8($t0)
.L802C5C84:
	li.u    $a0, 0x400F4001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400F4001
.L802C5C90:
	b       .L802C5C98
	nop
.L802C5C98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C5CA8
object_a_802C5CA8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	bnez    $t7, .L802C5CF4
	nop
	lui     $t8, %hi(object_80361250)
	lh      $t8, %lo(object_80361250)($t8)
	li      $at, 0x000D
	bne     $t8, $at, .L802C5CEC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00FC($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x00FC($t9)
.L802C5CEC:
	b       .L802C5D30
	nop
.L802C5CF4:
	li.u    $a0, 0x60098001
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x60098001
	lui     $t2, %hi(object_80361250)
	lh      $t2, %lo(object_80361250)($t2)
	li      $at, 0x000D
	beq     $t2, $at, .L802C5D30
	nop
	beqz    $t2, .L802C5D30
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00FC($t3)
.L802C5D30:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0088($t4)
	bnez    $t5, .L802C5D94
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0080
	sw      $t6, 0x0118($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00C8($t8)
	lw      $t1, 0x0118($t8)
	addu    $t9, $t0, $t1
	sw      $t9, 0x00C8($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D4($t2)
	lw      $t4, 0x0118($t2)
	addu    $t5, $t3, $t4
	sw      $t5, 0x00D4($t2)
	jal     object_a_802C5B54
	nop
	b       .L802C5DA8
	nop
.L802C5D94:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0118($t6)
	jal     Na_BGM_pull
	li      $a0, 0x012C
.L802C5DA8:
	b       .L802C5DB0
	nop
.L802C5DB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5DC0
object_a_802C5DC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $t6, object_8033D280
	la.l    $t6, object_8033D280
	lh      $t7, 0x0050($t6)
	li      $at, 0x0001
	bne     $t7, $at, .L802C5E1C
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     obj_lib_8029E96C
	move    $a3, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0114($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0118($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x011C($t0)
.L802C5E1C:
	la.u    $t1, object_8033D280
	la.l    $t1, object_8033D280
	lh      $t2, 0x0050($t1)
	li      $at, 0x0002
	bne     $t2, $at, .L802C5E88
	nop
	la.u    $t3, object_8033D280
	la.l    $t3, object_8033D280
	lh      $t4, 0x0052($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sll     $t5, $t4, 12
	sw      $t5, 0x00D0($t6)
	la.u    $t7, object_8033D280
	la.l    $t7, object_8033D280
	lh      $t8, 0x0054($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sll     $t9, $t8, 12
	sw      $t9, 0x00D4($t0)
	la.u    $t1, object_8033D280
	la.l    $t1, object_8033D280
	lh      $t2, 0x0056($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sll     $t3, $t2, 12
	sw      $t3, 0x00D8($t4)
.L802C5E88:
	la.u    $t5, object_8033D280
	la.l    $t5, object_8033D280
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t6, 0x0058($t5)
	sw      $t6, 0x0114($t7)
	la.u    $t8, object_8033D280
	la.l    $t8, object_8033D280
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t9, 0x005A($t8)
	sw      $t9, 0x0118($t0)
	la.u    $t1, object_8033D280
	la.l    $t1, object_8033D280
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t2, 0x005C($t1)
	sw      $t2, 0x011C($t3)
	la.u    $t4, object_8033D280
	la.l    $t4, object_8033D280
	lh      $t5, 0x0050($t4)
	li      $at, 0x0003
	bne     $t5, $at, .L802C5F30
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	lw      $t8, 0x0114($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00D0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D4($t0)
	lw      $t2, 0x0118($t0)
	addu    $t3, $t1, $t2
	sw      $t3, 0x00D4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	lw      $t7, 0x011C($t4)
	addu    $t8, $t5, $t7
	sw      $t8, 0x00D8($t4)
.L802C5F30:
	b       .L802C5F38
	nop
.L802C5F38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5F48
object_a_802C5F48:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(obj_mario)
	lw      $a0, %lo(obj_mario)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41F00000
	jal     obj_lib_8029F6E0
	li      $a3, 0x43960000
	la.u    $t6, object_8033D280
	la.l    $t6, object_8033D280
	lh      $t7, 0x0040($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t8, $t7, 0x0064
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x01F8($t9)
	la.u    $t0, object_8033D280
	la.l    $t0, object_8033D280
	lh      $t1, 0x0042($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	addiu   $t2, $t1, 0x012C
	mtc1    $t2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x01FC($t3)
	lui     $a0, %hi(object)
	jal     obj_lib_802A513C
	lw      $a0, %lo(object)($a0)
	b       .L802C5FCC
	nop
.L802C5FCC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5FDC
object_a_802C5FDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802C6038
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C6038
	nop
	jal     Na_g_803220F0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
.L802C6038:
	b       .L802C6040
	nop
.L802C6040:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C6050
object_a_802C6050:
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, .L802C6088
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x00100000
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x0134($t0)
	or      $t2, $t1, $at
	sw      $t2, 0x0134($t0)
.L802C6088:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0068($t3)
	lw      $t5, 0x00D8($t4)
	sw      $t5, 0x00D8($t3)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C60AC
object_a_802C60AC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t8, o_13002A7C
	la.l    $t8, o_13002A7C
	li      $t7, 0x0035
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	move    $a0, $0
	li      $a1, -0x0166
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t6, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t1, o_13002A7C
	la.l    $t1, o_13002A7C
	li      $t0, 0x0035
	sw      $t0, 0x0014($sp)
	sw      $t1, 0x0018($sp)
	move    $a0, $0
	li      $a1, 0x0166
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t9, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lw      $t2, 0x002C($sp)
	li      $at, 0x8000
	lw      $t3, 0x00C8($t2)
	addu    $t4, $t3, $at
	sw      $t4, 0x00C8($t2)
	b       .L802C6140
	nop
.L802C6140:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_a_802C6150:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x000C($t6)
	li      $at, 0x192B
	beq     $t7, $at, .L802C6174
	nop
	li      $at, 0x192C
	bne     $t7, $at, .L802C6188
	nop
.L802C6174:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	b       .L802C61C4
	sw      $t8, 0x014C($t9)
.L802C6188:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0400
	sw      $t0, 0x011C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x00100000
	lw      $t3, 0x0134($t2)
	and     $t4, $t3, $at
	beqz    $t4, .L802C61C4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
.L802C61C4:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C61D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C61FC
	nop
	li.u    $a0, 0x300E8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x300E8081
.L802C61FC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x011C($t8)
	addiu   $t0, $t9, -0x0100
	sw      $t0, 0x011C($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D8($t1)
	lw      $t3, 0x011C($t1)
	addu    $t4, $t2, $t3
	sw      $t4, 0x00D8($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D8($t5)
	slti    $at, $t6, -0x4000
	beqz    $at, .L802C6260
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, -0x4000
	sw      $t7, 0x00D8($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t8)
.L802C6260:
	b       .L802C6268
	nop
.L802C6268:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C6278:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802C62AC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
.L802C62AC:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C62BC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	addiu   $t8, $t7, 0x0400
	sw      $t8, 0x00D8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00D8($t9)
	blez    $t0, .L802C6318
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li.u    $at, 0xFFEFFFFF
	li.l    $at, 0xFFEFFFFF
	lw      $t4, 0x0134($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x0134($t3)
.L802C6318:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C6328:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x3C00
	sw      $t6, 0x00D8($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C6348
object_a_802C6348:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L802C63D0
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337D98)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337D98)($at)
	jr      $t7
	nop
.globl L802C6380
L802C6380:
	jal     object_a_802C6150
	nop
	b       .L802C63D0
	nop
.globl L802C6390
L802C6390:
	jal     object_a_802C61D4
	nop
	b       .L802C63D0
	nop
.globl L802C63A0
L802C63A0:
	jal     object_a_802C6278
	nop
	b       .L802C63D0
	nop
.globl L802C63B0
L802C63B0:
	jal     object_a_802C62BC
	nop
	b       .L802C63D0
	nop
.globl L802C63C0
L802C63C0:
	jal     object_a_802C6328
	nop
	b       .L802C63D0
	nop
.L802C63D0:
	b       .L802C63D8
	nop
.L802C63D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C63E8
object_a_802C63E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	sub.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A4($t7)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802C648C
	nop
	lwc1    $f16, 0x01FC($t6)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	add.s   $f18, $f4, $f16
	add.s   $f8, $f18, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802C648C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x000B
	bnez    $at, .L802C648C
	nop
	la.u    $t0, player_data
	la.l    $t0, player_data
	lw      $t1, 0x000C($t0)
	li      $at, 0x00100000
	and     $t2, $t1, $at
	bnez    $t2, .L802C648C
	nop
	li      $at, 0x428C0000
	mtc1    $at, $f12
	jal     obj_lib_802A3818
	nop
.L802C648C:
	b       .L802C6494
	nop
.L802C6494:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C64A4
object_a_802C64A4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	la.u    $t6, o_13002AD0
	la.l    $t6, o_13002AD0
	lui     $a2, %hi(object)
	lw      $a2, %lo(object)($a2)
	sw      $t6, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x3F800000
	jal     obj_lib_8029EE24
	li      $a3, 0x008F
	sw      $v0, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	beqz    $t7, .L802C64FC
	nop
	lw      $a0, 0x0024($sp)
	jal     obj_lib_802A2FC0
	li      $a1, 0x42B40000
	lw      $a0, 0x0024($sp)
	li      $a1, 0x3F800000
	jal     obj_lib_802A2F5C
	li      $a2, 0x0000
.L802C64FC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0002
	bnez    $at, .L802C6520
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C6520:
	b       .L802C6528
	nop
.L802C6528:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C6538:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, .L802C6570
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01B4($t9)
	sw      $t0, 0x0000($a0)
	jr      $ra
	li      $v0, 0x0001
	b       .L802C65A8
	nop
.L802C6570:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0400
	beqz    $t3, .L802C65A8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x8000
	lw      $t5, 0x00C8($t4)
	addu    $t6, $t5, $at
	sw      $t6, 0x0000($a0)
	jr      $ra
	li      $v0, -0x0001
.L802C65A8:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C65C0
object_a_802C65C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	beqz    $t7, .L802C6614
	nop
	la.u    $a0, object_a_80330CD4
	li.u    $a1, 0x50244081
	li.l    $a1, 0x50244081
	la.l    $a0, object_a_80330CD4
	jal     obj_lib_802A4360
	lw      $a2, 0x00F4($t6)
	beqz    $v0, .L802C6614
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x0150($t9)
.L802C6614:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x0150($t0)
	beq     $t1, $at, .L802C6638
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00F8($t2)
.L802C6638:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	sltiu   $at, $t4, 0x0006
	beqz    $at, .L802C6A74
	nop
	sll     $t4, $t4, 2
	lui     $at, %hi(object_a_80337DAC)
	addu    $at, $at, $t4
	lw      $t4, %lo(object_a_80337DAC)($at)
	jr      $t4
	nop
.globl L802C6668
L802C6668:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x00EC($t5)
	andi    $t6, $t7, 0x0001
	beqz    $t6, .L802C668C
	nop
	li.u    $a0, 0x502F0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502F0081
.L802C668C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0003
	beqz    $t0, .L802C66E8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x00A0($t1)
	swc1    $f4, 0x0164($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00A4($t2)
	swc1    $f6, 0x0168($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x00A8($t3)
	swc1    $f8, 0x016C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t7, $t5, 0x0001
	sw      $t7, 0x0150($t4)
.L802C66E8:
	b       .L802C6A74
	nop
.globl L802C66F0
L802C66F0:
	li      $at, 0x40A00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t6)
	jal     obj_lib_802A15AC
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f16
	nop
	c.lt.s  $f16, $f0
	nop
	bc1f    .L802C6744
	nop
	jal     obj_lib_802A2748
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       .L802C6848
	sw      $v0, 0x0160($t8)
.L802C6744:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	bnez    $t0, .L802C67E0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00FC($t1)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x0160($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $a0, 0x0160($t3)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t3)
	slti    $at, $v0, 0x0800
	beqz    $at, .L802C67D8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x00F8($t7)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t4)
	li.u    $a0, 0x90444081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90444081
.L802C67D8:
	b       .L802C6848
	nop
.L802C67E0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t8, 0x00F8($t6)
	bne     $t8, $at, .L802C6848
	nop
	li      $at, 0x41700000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00FC($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00FC($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x00FC($t3)
	slti    $at, $t5, 0x0033
	bnez    $at, .L802C6848
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F8($t7)
.L802C6848:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_a_802C6538
	addiu   $a0, $a0, 0x0160
	beqz    $v0, .L802C6870
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t4, 0x0002
	sw      $t4, 0x0150($t6)
.L802C6870:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0200
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t8)
	b       .L802C6A74
	nop
.globl L802C688C
L802C688C:
	li      $at, 0x40A00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x0162($t1)
	lh      $t0, 0x00CA($t1)
	bne     $t2, $t0, .L802C68CC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x0001
	sw      $t3, 0x0150($t5)
.L802C68CC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0xC3480000
	mtc1    $at, $f18
	lwc1    $f8, 0x00A4($t7)
	lwc1    $f10, 0x0168($t7)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802C6904
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C6904:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t4)
	b       .L802C6A74
	nop
.globl L802C6920
L802C6920:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0009
	lw      $t8, 0x008C($t6)
	and     $t9, $t8, $at
	sw      $t9, 0x008C($t6)
	li      $at, 0xC1200000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t1)
	li      $at, 0x41F00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t2)
	li.u    $a0, 0x90444081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90444081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0150($t0)
	addiu   $t5, $t3, 0x0001
	sw      $t5, 0x0150($t0)
	b       .L802C6A74
	nop
.globl L802C6990
L802C6990:
	li      $at, 0xC1200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t7)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t8, 0x00EC($t4)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L802C6A14
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t1, 0x0150($t6)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0150($t6)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00FC($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x008C($t0)
	ori     $t4, $t7, 0x0008
	sw      $t4, 0x008C($t0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
.L802C6A14:
	b       .L802C6A74
	nop
.globl L802C6A1C
L802C6A1C:
	li      $at, 0x40000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00FC($t1)
	addiu   $t6, $t2, 0x0001
	sw      $t6, 0x00FC($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x00FC($t3)
	slti    $at, $t5, 0x001F
	bnez    $at, .L802C6A6C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0150($t7)
.L802C6A6C:
	b       .L802C6A74
	nop
.L802C6A74:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x41200000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B8($t4)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802C6AA8
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f6
	b       .L802C6AB8
	swc1    $f6, 0x0018($sp)
.L802C6AA8:
	li      $at, 0x40400000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0018($sp)
.L802C6AB8:
	move    $a0, $0
	jal     obj_lib_8029F514
	lw      $a1, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00EC($t0)
	andi    $t9, $t8, 0x0003
	beqz    $t9, .L802C6AF0
	nop
	li.u    $a2, 0x90434081
	li.l    $a2, 0x90434081
	li      $a0, 0x0001
	jal     object_a_802BECB0
	li      $a1, 0x0017
.L802C6AF0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t6, 0x0068($t2)
	beq     $t6, $t2, .L802C6B4C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A46CC
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L802C6B24
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C6B24:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t3, 0x0074($t1)
	bnez    $t3, .L802C6B4C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	lw      $t4, 0x0068($t7)
	sw      $t5, 0x0088($t4)
.L802C6B4C:
	jal     obj_lib_802A2348
	li      $a0, -0x0032
	b       .L802C6B5C
	nop
.L802C6B5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C6B6C
object_a_802C6B6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802C6C5C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x001F
	bnez    $at, .L802C6C54
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	lwc1    $f6, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C6C54
	nop
	lui     $at, %hi(object_a_80337DC4)
	lwc1    $f8, %lo(object_a_80337DC4)($at)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802C6C54
	nop
	li.u    $a0, 0x90444081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90444081
	lui     $a0, %hi(object)
	la.u    $a2, o_13002B5C
	la.l    $a2, o_13002B5C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0065
	sw      $v0, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x001C($sp)
	lw      $t1, 0x00F4($t0)
	sw      $t1, 0x00F4($t2)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lw      $t3, 0x001C($sp)
	swc1    $f10, 0x00B8($t3)
	li      $at, 0x42A00000
	mtc1    $at, $f16
	lw      $t4, 0x001C($sp)
	swc1    $f16, 0x00B0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t9, 0x0001
	sw      $t9, 0x00F4($t8)
.L802C6C54:
	b       .L802C6C88
	nop
.L802C6C5C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0088($t0)
	beqz    $t1, .L802C6C88
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0088($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
.L802C6C88:
	b       .L802C6C90
	nop
.L802C6C90:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802C6CA0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x002C($sp)
	sw      $0, 0x0028($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C6D0C
	nop
	jal     obj_lib_802A0008
	move    $a0, $0
	sw      $v0, 0x0028($sp)
	jal     obj_lib_802A0008
	li      $a0, 0x0017
	lw      $t9, 0x0028($sp)
	move    $s0, $v0
	or      $t0, $t9, $s0
	b       .L802C6D38
	sw      $t0, 0x0028($sp)
.L802C6D0C:
	move    $a0, $0
	jal     obj_lib_802A0050
	li      $a1, 0x0003
	sw      $v0, 0x0028($sp)
	li      $a0, 0x0017
	jal     obj_lib_802A0050
	li      $a1, 0x0003
	lw      $t1, 0x0028($sp)
	move    $s0, $v0
	or      $t2, $t1, $s0
	sw      $t2, 0x0028($sp)
.L802C6D38:
	lw      $t3, 0x0028($sp)
	beqz    $t3, .L802C6D50
	nop
	li.u    $a0, 0x50155081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50155081
.L802C6D50:
	b       .L802C6D58
	nop
.L802C6D58:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void object_a_802C6D6C(void) */
.globl object_a_802C6D6C
object_a_802C6D6C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
	jal     obj_lib_802A184C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L802C6E74
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(camera_8032DF30)
	sw      $t8, %lo(camera_8032DF30)($at)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0150($t9)
	bnez    $t0, .L802C6E40
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x44160000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C6E20
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0150($t2)
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SEQ_mute
	li      $a2, 0x0028
	b       .L802C6E38
	nop
.L802C6E20:
	jal     obj_lib_802A184C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x0184($t6)
.L802C6E38:
	b       .L802C6E6C
	nop
.L802C6E40:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0072
	beqz    $v0, .L802C6E6C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
.L802C6E6C:
	b       .L802C6EA8
	nop
.L802C6E74:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802C6EA8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802C6EA8:
	jal     object_a_802C6CA0
	nop
	b       .L802C6EB8
	nop
.L802C6EB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C6EC8(void) */
.globl object_a_802C6EC8
object_a_802C6EC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802C6F50
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0020
	bnez    $at, .L802C6F34
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0150($t1)
	addiu   $t3, $t2, 0x0001
	b       .L802C6F48
	sw      $t3, 0x0150($t1)
.L802C6F34:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00C8($t4)
	addiu   $t6, $t5, 0x0400
	sw      $t6, 0x00C8($t4)
.L802C6F48:
	b       .L802C6F90
	nop
.L802C6F50:
	li      $at, 0x40400000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x002B
	bnez    $at, .L802C6F90
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t2)
.L802C6F90:
	jal     object_a_802C6CA0
	nop
	b       .L802C6FA0
	nop
.L802C6FA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C6FB0(void) */
.globl object_a_802C6FB0
object_a_802C6FB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0160($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t6)
	sh      $v0, 0x0026($sp)
	jal     obj_lib_802A1634
	nop
	swc1    $f0, 0x0020($sp)
	lui     $t7, %hi(stage_index)
	lh      $t7, %lo(stage_index)($t7)
	li      $at, 0x0015
	bne     $t7, $at, .L802C7000
	nop
	li      $at, 0x43480000
	mtc1    $at, $f4
	b       .L802C7010
	swc1    $f4, 0x001C($sp)
.L802C7000:
	li      $at, 0x442F0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x001C($sp)
.L802C7010:
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
	li      $at, 0x40400000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t8)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x001C($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802C7060
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0007
	b       .L802C70EC
	sw      $t9, 0x014C($t0)
.L802C7060:
	lh      $t1, 0x0026($sp)
	slti    $at, $t1, 0x2000
	beqz    $at, .L802C70EC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_a_80337DC8)
	lwc1    $f4, %lo(object_a_80337DC8)($at)
	lwc1    $f18, 0x015C($t2)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802C70B8
	nop
	li      $at, 0x41100000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x40400000
.L802C70B8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t4)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802C70EC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
.L802C70EC:
	jal     object_a_802C6CA0
	nop
	b       .L802C70FC
	nop
.L802C70FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_a_802C710C(void) */
.globl object_a_802C710C
object_a_802C710C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0200
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x001F
	bnez    $at, .L802C7208
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x0160($t0)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t0)
	sh      $v0, 0x001E($sp)
	lh      $t1, 0x001E($sp)
	slti    $at, $t1, 0x2000
	beqz    $at, .L802C7208
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_a_80337DCC)
	lwc1    $f8, %lo(object_a_80337DCC)($at)
	lwc1    $f6, 0x015C($t2)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802C71D4
	nop
	li      $at, 0x41100000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t3)
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x40400000
.L802C71D4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t4)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802C7208
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
.L802C7208:
	jal     object_a_802C6CA0
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_a_802A7384
	nop
	beqz    $v0, .L802C723C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
	jal     Na_BGM_stop
	li      $a0, 0x0416
.L802C723C:
	b       .L802C7244
	nop
.L802C7244:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void object_a_802C7254(void) */
.globl object_a_802C7254
object_a_802C7254:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	li      $a0, 0x0001
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802C729C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0004
	sw      $t7, 0x014C($t8)
.L802C729C:
	b       .L802C72A4
	nop
.L802C72A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C72B4(void) */
.globl object_a_802C72B4
object_a_802C72B4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C72E0
	nop
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t8)
.L802C72E0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0008
	beqz    $at, .L802C7300
	nop
	b       .L802C7370
	nop
.L802C7300:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0114($t1)
	addiu   $t3, $t2, 0x0100
	sw      $t3, 0x0114($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D0($t4)
	lw      $t6, 0x0114($t4)
	addu    $t7, $t5, $t6
	sw      $t7, 0x00D0($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D0($t8)
	slti    $at, $t9, 0x4001
	bnez    $at, .L802C7370
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0114($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x4000
	sw      $t2, 0x00D0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t1, 0x0005
	sw      $t1, 0x014C($t5)
.L802C7370:
	jr      $ra
	nop
	jr      $ra
	nop

/* void object_a_802C7380(void) */
.globl object_a_802C7380
object_a_802C7380:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802C73E8
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L802C73E8
	nop
	li.u    $a0, 0x50166081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50166081
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0150($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0150($t1)
.L802C73E8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t7, $t5, 0x0002
	beqz    $t7, .L802C7410
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t6, 0x0006
	sw      $t6, 0x014C($t8)
.L802C7410:
	b       .L802C7418
	nop
.L802C7418:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C7428:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802C753C
	nop
	jal     obj_lib_802A3754
	nop
	beqz    $v0, .L802C752C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0184($t8)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x0184($t8)
	li.u    $a0, 0x935AC081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x935AC081
	li.u    $a0, 0x5147C081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x5147C081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0184($t1)
	bnez    $t2, .L802C74A8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0008
	b       .L802C7518
	sw      $t3, 0x014C($t4)
.L802C74A8:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	addiu   $a0, $sp, 0x001C
	jal     object_a_802B98D4
	addiu   $a1, $a1, 0x00A0
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $a1, 0x00A0
	jal     object_a_802B98D4
	addiu   $a0, $a0, 0x00A0
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42C80000
	li      $a0, 0x0014
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x001C
	jal     object_a_802B98D4
	addiu   $a0, $a0, 0x00A0
.L802C7518:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
.L802C752C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L802C75E4
	sw      $0, 0x00F8($t9)
.L802C753C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00F8($t0)
	slti    $at, $t8, 0x000A
	beqz    $at, .L802C75C0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	bgez    $t2, .L802C7574
	andi    $t3, $t2, 0x0001
	beqz    $t3, .L802C7574
	nop
	addiu   $t3, $t3, -0x0002
.L802C7574:
	beqz    $t3, .L802C759C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x41000000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t4)
	add.s   $f8, $f4, $f6
	b       .L802C75B8
	swc1    $f8, 0x00A4($t4)
.L802C759C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41000000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t6)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t6)
.L802C75B8:
	b       .L802C75D0
	nop
.L802C75C0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t7, 0x000A
	sw      $t7, 0x0150($t5)
.L802C75D0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	addiu   $t8, $t0, 0x0001
	sw      $t8, 0x00F8($t9)
.L802C75E4:
	b       .L802C75EC
	nop
.L802C75EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C75FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, .L802C76A0
	nop
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t8)
	bne     $t9, $t0, .L802C7698
	nop
	jal     obj_lib_802A3754
	nop
	beqz    $v0, .L802C767C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0005
	sw      $t1, 0x0198($t2)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0005
	jal     obj_lib_802A1B8C
	li      $a2, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0008
	b       .L802C7698
	sw      $t3, 0x014C($t4)
.L802C767C:
	jal     obj_lib_802A1BDC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
.L802C7698:
	b       .L802C76BC
	nop
.L802C76A0:
	jal     obj_lib_802A3CFC
	nop
	bnez    $v0, .L802C76BC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0150($t8)
.L802C76BC:
	b       .L802C76C4
	nop
.L802C76C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C76D4(void) */
.globl object_a_802C76D4
object_a_802C76D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x000A
	lw      $t7, 0x0150($t6)
	beq     $t7, $at, .L802C77B0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0114($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0118($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x011C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	beqz    $t3, .L802C7750
	nop
	jal     object_a_802C7428
	nop
	b       .L802C7758
	nop
.L802C7750:
	jal     object_a_802C75FC
	nop
.L802C7758:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0065
	beqz    $at, .L802C7798
	nop
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li.u    $at, 0x00020339
	li.l    $at, 0x00020339
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, .L802C77A8
	nop
	slti    $at, $t5, 0x001F
	bnez    $at, .L802C77A8
	nop
.L802C7798:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x000A
	sw      $t8, 0x0150($t9)
.L802C77A8:
	b       .L802C7840
	nop
.L802C77B0:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D0($t0)
	blez    $t1, .L802C77F0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, -0x0200
	sw      $t2, 0x0114($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x00D0($t4)
	lw      $t7, 0x0114($t4)
	addu    $t5, $t6, $t7
	b       .L802C7840
	sw      $t5, 0x00D0($t4)
.L802C77F0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0114($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00D0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	beqz    $t1, .L802C7830
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	b       .L802C7840
	sw      $t2, 0x014C($t3)
.L802C7830:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
.L802C7840:
	b       .L802C7848
	nop
.L802C7848:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C7858(void) */
.globl object_a_802C7858
object_a_802C7858:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L802C793C
	nop
	li      $a0, 0x0002
	li      $a1, 0x0002
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0073
	beqz    $v0, .L802C7934
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     obj_lib_8029E96C
	move    $a3, $0
	jal     obj_lib_8029F6BC
	nop
	jal     obj_lib_802A05B4
	nop
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x43480000
	li      $a0, 0x0014
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	li      $at, 0x43340000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337DD0)
	lwc1    $f14, %lo(object_a_80337DD0)($at)
	jal     object_b_802F2B88
	li      $a2, 0x43AA0000
	li.u    $a0, 0x5147C081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x5147C081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0009
	sw      $t9, 0x014C($t0)
.L802C7934:
	b       .L802C7980
	nop
.L802C793C:
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42C80000
	li      $a0, 0x0014
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	jal     obj_lib_802A50FC
	li      $a0, 0x0001
	li.u    $a0, 0x500CA081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x500CA081
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C7980:
	b       .L802C7988
	nop
.L802C7988:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void object_a_802C7998(void) */
.globl object_a_802C7998
object_a_802C7998:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x003C
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802C79C0
	nop
	jal     Na_BGM_stop
	li      $a0, 0x0416
.L802C79C0:
	b       .L802C79C8
	nop
.L802C79C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C79D8
object_a_802C79D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_a_80330CE4
	jal     obj_lib_802A3E30
	la.l    $a0, object_a_80330CE4
	jal     obj_lib_802A2348
	li      $a0, -0x0014
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0009
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, .L802C7A58
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	beqz    $t9, .L802C7A40
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f12
	jal     obj_lib_802A4564
	nop
	b       .L802C7A50
	nop
.L802C7A40:
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     obj_lib_802A4564
	nop
.L802C7A50:
	jal     map_data_803839CC
	nop
.L802C7A58:
	b       .L802C7A60
	nop
.L802C7A60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C7A70
object_a_802C7A70:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C7AAC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f12, 0x00A0($t8)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	swc1    $f0, 0x00A4($t9)
.L802C7AAC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337DD4)
	lwc1    $f6, %lo(object_a_80337DD4)($at)
	lwc1    $f4, 0x00A4($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802C7AFC
	nop
	sw      $0, 0x001C($sp)
.L802C7AD4:
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330D0C
	la.l    $a1, object_a_80330D0C
	jal     obj_lib_8029EB04
	lw      $a0, %lo(object)($a0)
	lw      $t1, 0x001C($sp)
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x0003
	bnez    $at, .L802C7AD4
	sw      $t2, 0x001C($sp)
.L802C7AFC:
	b       .L802C7B04
	nop
.L802C7B04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C7B14
object_a_802C7B14:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802C7B9C
	nop
	jal     obj_lib_802A4F04
	li      $a0, 0x00B9
	beqz    $v0, .L802C7B74
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, -0x0005
	lh      $t0, 0x0002($t9)
	and     $t1, $t0, $at
	b       .L802C7B88
	sh      $t1, 0x0002($t9)
.L802C7B74:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0004
	sh      $t4, 0x0002($t2)
.L802C7B88:
	jal     rand
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00D4($t5)
.L802C7B9C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x00B0($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802C7C6C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x00A4($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802C7C48
	nop
	la.u    $t1, o_13002C7C
	la.l    $t1, o_13002C7C
	lui     $a2, %hi(object)
	lw      $a2, %lo(object)($a2)
	sw      $t1, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x3F800000
	jal     obj_lib_8029EE24
	li      $a3, 0x00A5
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802C7C6C
	nop
.L802C7C48:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t3, 0x0154($t9)
	slti    $at, $t3, 0x0015
	bnez    $at, .L802C7C6C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C7C6C:
	lui     $at, %hi(object_a_80337DD8)
	lwc1    $f18, %lo(object_a_80337DD8)($at)
	lwc1    $f16, 0x0020($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802C7C94
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C7C94:
	b       .L802C7C9C
	nop
.L802C7C9C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C7CAC
object_a_802C7CAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029F120
	lw      $a0, %lo(object)($a0)
	la.u    $t6, player_data
	la.l    $t6, player_data
	lh      $t7, 0x0076($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t8, $t7, 0x0005
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00A4($t9)
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	lw      $t1, 0x00F4($t0)
	andi    $t2, $t1, 0x0080
	bnez    $t2, .L802C7D28
	nop
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	lw      $t4, 0x00E0($t3)
	andi    $t5, $t4, 0xFF7F
	sw      $t5, 0x00E0($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
.L802C7D28:
	b       .L802C7D30
	nop
.L802C7D30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C7D40
object_a_802C7D40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3FF80000
	mtc1    $at, $f7
	mtc1    $0, $f6
	mov.s   $f20, $f0
	cvt.d.s $f4, $f20
	add.d   $f8, $f4, $f6
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f8
	b       .L802C7D7C
	nop
.L802C7D7C:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C7D90
object_a_802C7D90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x3F000000
	li      $a2, 0x3F800000
	jal     obj_lib_8029F3D0
	li      $a3, 0x3F000000
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	b       .L802C7DEC
	nop
.L802C7DEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C7DFC
object_a_802C7DFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     rand
	nop
	andi    $t6, $v0, 0x00FF
	bgtz    $t6, .L802C7E44
	nop
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330D54
	la.l    $a1, object_a_80330D54
	jal     obj_lib_8029EB04
	lw      $a0, %lo(object)($a0)
	sw      $v0, 0x001C($sp)
	la.u    $a1, anime_fish
	la.l    $a1, anime_fish
	lw      $a0, 0x001C($sp)
	jal     obj_lib_8029F59C
	move    $a2, $0
.L802C7E44:
	b       .L802C7E4C
	nop
.L802C7E4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C7E5C
object_a_802C7E5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, .L802C7EB0
	nop
	lui     $t9, %hi(gfx_frame)
	lw      $t9, %lo(gfx_frame)($t9)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802C7EB0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C7EB0:
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	bnez    $t3, .L802C7EF0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f10, 0x002C($t4)
	swc1    $f10, 0x00F8($t4)
.L802C7EF0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F0($t5)
	slti    $at, $t6, 0x0004
	bnez    $at, .L802C7F80
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_a_80337DE0)
	ldc1    $f4, %lo(object_a_80337DE0)($at)
	lwc1    $f16, 0x00F8($t7)
	cvt.d.s $f18, $f16
	sub.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	lwc1    $f10, 0x00F8($t8)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802C7F60
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00F8($t9)
.L802C7F60:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x00F8($t0)
	swc1    $f4, 0x002C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x00F8($t1)
	swc1    $f6, 0x0034($t1)
.L802C7F80:
	b       .L802C7F88
	nop
.L802C7F88:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C7F98
object_a_802C7F98:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330D9C
	la.l    $a1, object_a_80330D9C
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C80C8
	nop
	la.u    $a0, o_13002E58
	jal     obj_lib_8029F95C
	la.l    $a0, o_13002E58
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00F4($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A2FC0
	li      $a1, 0x42C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lhu     $t0, 0x00C6($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t4, 0x00C6($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0xC2C80000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0144($t7)
	sll     $t0, $t8, 5
	subu    $t0, $t0, $t8
	sll     $t0, $t0, 2
	addu    $t0, $t0, $t8
	sll     $t0, $t0, 2
	mtc1    $t0, $f4
	jal     obj_lib_802A2F14
	cvt.s.w $f12, $f4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mov.s   $f20, $f0
	lw      $t2, 0x00C8($t1)
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f10, $f8, $f20
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	nop
	sw      $t4, 0x00C8($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0064
	sw      $t5, 0x017C($t6)
.L802C80C8:
	jal     obj_lib_802A2644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t7, 0x0154($t3)
	slti    $at, $t7, 0x0010
	bnez    $at, .L802C80F4
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802C80F4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F4($t8)
	sw      $t0, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	beqz    $t2, .L802C8198
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t9, 0x0034($sp)
	lwc1    $f4, 0x00A0($t4)
	lwc1    $f18, 0x0100($t9)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x002C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t1, 0x0034($sp)
	lwc1    $f10, 0x00A8($t5)
	lwc1    $f8, 0x0104($t1)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f6, 0x0028($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f8, $f6, $f6
	jal     sqrtf
	add.s   $f12, $f4, $f8
	swc1    $f0, 0x0030($sp)
	li      $at, 0x43960000
	mtc1    $at, $f16
	lwc1    $f10, 0x0030($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802C8198
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A05B4
	nop
.L802C8198:
	b       .L802C81A0
	nop
.L802C81A0:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802C81B4
object_a_802C81B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L802C8290
	nop
	lwc1    $f4, 0x0030($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f16, 0x0038($sp)
	trunc.w.s $f6, $f4
	li      $at, 0x3F000000
	lui     $t1, %hi(object)
	trunc.w.s $f10, $f8
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	trunc.w.s $f18, $f16
	la.u    $t3, o_13002E04
	la.l    $t3, o_13002E04
	mfc1    $a2, $f10
	mfc1    $a3, $f18
	mfc1    $a1, $f6
	li      $t2, 0x009E
	sw      $t2, 0x0018($sp)
	sw      $t3, 0x001C($sp)
	lw      $a0, 0x0028($sp)
	sw      $t1, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f4, 0x0010($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f18, 0x0038($sp)
	trunc.w.s $f8, $f6
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	trunc.w.s $f16, $f10
	lwc1    $f6, 0x002C($sp)
	la.u    $t8, o_13002E20
	trunc.w.s $f4, $f18
	la.l    $t8, o_13002E20
	mfc1    $a2, $f16
	mfc1    $a1, $f8
	mfc1    $a3, $f4
	sw      $t8, 0x001C($sp)
	lw      $a0, 0x0028($sp)
	sw      $0, 0x0018($sp)
	sw      $t7, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f6, 0x0010($sp)
	b       .L802C82E4
	nop
.L802C8290:
	lwc1    $f8, 0x0030($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f4, 0x0038($sp)
	trunc.w.s $f10, $f8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	trunc.w.s $f18, $f16
	lwc1    $f8, 0x002C($sp)
	la.u    $t4, o_13002E20
	trunc.w.s $f6, $f4
	la.l    $t4, o_13002E20
	mfc1    $a2, $f18
	mfc1    $a1, $f10
	mfc1    $a3, $f6
	li      $t3, 0x008E
	sw      $t3, 0x0018($sp)
	sw      $t4, 0x001C($sp)
	lw      $a0, 0x0028($sp)
	sw      $t2, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f8, 0x0010($sp)
.L802C82E4:
	lwc1    $f10, 0x0030($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f6, 0x0038($sp)
	trunc.w.s $f16, $f10
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	trunc.w.s $f4, $f18
	lwc1    $f10, 0x002C($sp)
	la.u    $t9, o_13002E20
	trunc.w.s $f8, $f6
	la.l    $t9, o_13002E20
	mfc1    $a2, $f4
	mfc1    $a1, $f16
	mfc1    $a3, $f8
	sw      $t9, 0x001C($sp)
	lw      $a0, 0x0028($sp)
	sw      $0, 0x0018($sp)
	sw      $t8, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f10, 0x0010($sp)
	b       .L802C833C
	nop
.L802C833C:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C834C
object_a_802C834C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $0, 0x0034($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L802C837C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	sw      $t9, 0x00F4($t8)
.L802C837C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	bnez    $t1, .L802C8420
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x015C($t2)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	addiu   $a0, $sp, 0x0024
	jal     object_a_802B98D4
	addiu   $a1, $a1, 0x00A0
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x044C
	li      $a2, 0x0D00
	jal     obj_lib_8029E914
	li      $a3, 0x048C
	li      $at, 0x447A0000
	mtc1    $at, $f12
	li      $at, 0x41F00000
	mtc1    $at, $f14
	jal     obj_lib_802A47A0
	li      $a2, 0x7FFF
	beqz    $v0, .L802C8404
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t3)
.L802C8404:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x0024
	jal     object_a_802B98D4
	addiu   $a0, $a0, 0x00A0
	b       .L802C858C
	nop
.L802C8420:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0150($t6)
	bne     $t7, $at, .L802C8470
	nop
	li      $a0, 0x0002
	li      $a1, 0x0002
	li      $a2, 0x0099
	jal     obj_lib_802A4960
	move    $a3, $0
	beqz    $v0, .L802C8468
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0150($t9)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x0150($t9)
.L802C8468:
	b       .L802C858C
	nop
.L802C8470:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337DE8)
	lwc1    $f8, %lo(object_a_80337DE8)($at)
	lwc1    $f6, 0x015C($t1)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802C858C
	nop
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lwc1    $f16, 0x0168($t1)
	lwc1    $f10, 0x00A4($t2)
	jal     obj_lib_802A3634
	sub.s   $f12, $f10, $f16
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	nop
	c.lt.s  $f0, $f18
	nop
	bc1f    .L802C858C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0160($t4)
	lw      $t3, 0x00F4($t4)
	subu    $t6, $t5, $t3
	sll     $t7, $t6, 16
	sra     $t8, $t7, 16
	blez    $t8, .L802C852C
	sh      $t6, 0x0032($sp)
	lh      $t0, 0x0032($sp)
	slti    $at, $t0, 0x1500
	beqz    $at, .L802C8510
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x0160($t9)
	b       .L802C8524
	sw      $t2, 0x00C8($t9)
.L802C8510:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x00F4($t1)
	addiu   $t5, $t4, 0x1500
	sw      $t5, 0x00C8($t1)
.L802C8524:
	b       .L802C8564
	nop
.L802C852C:
	lh      $t3, 0x0032($sp)
	slti    $at, $t3, -0x14FF
	bnez    $at, .L802C8550
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0160($t6)
	b       .L802C8564
	sw      $t7, 0x00C8($t6)
.L802C8550:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F4($t8)
	addiu   $t2, $t0, -0x1500
	sw      $t2, 0x00C8($t8)
.L802C8564:
	mtc1    $0, $f4
	li      $a0, 0x000C
	li      $a1, 0x40400000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     object_a_802C81B4
	swc1    $f4, 0x0010($sp)
	li.u    $a0, 0x60044001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60044001
.L802C858C:
	b       .L802C8594
	nop
.L802C8594:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_a_802C85A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x3F800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0400
	sw      $t7, 0x0118($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00C8($t9)
	lw      $t1, 0x0118($t9)
	addu    $t2, $t0, $t1
	sw      $t2, 0x00C8($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x001F
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, .L802C861C
	nop
	b       .L802C862C
	li      $v0, 0x0001
	b       .L802C8624
	nop
.L802C861C:
	b       .L802C862C
	move    $v0, $0
.L802C8624:
	b       .L802C862C
	nop
.L802C862C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C863C
object_a_802C863C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0118($t6)
	jal     obj_lib_802A2320
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, .L802C86AC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802C87F8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802C8824
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802C8888
	nop
	b       .L802C88AC
	nop
.L802C86AC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L802C86D8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x010C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0110($t1)
.L802C86D8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t6, %hi(object_a_80330DAC+0x00)
	lw      $t4, 0x010C($t2)
	lw      $t3, 0x0110($t2)
	sll     $t5, $t4, 4
	addu    $t6, $t6, $t5
	lw      $t6, %lo(object_a_80330DAC+0x00)($t6)
	slt     $at, $t3, $t6
	beqz    $at, .L802C871C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0110($t7)
	addiu   $t9, $t8, 0x0001
	b       .L802C876C
	sw      $t9, 0x0110($t7)
.L802C871C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0110($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x010C($t1)
	addiu   $t4, $t2, 0x0001
	sw      $t4, 0x010C($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t8, %hi(object_a_80330DAC+0x00)
	lw      $t3, 0x010C($t5)
	sll     $t6, $t3, 4
	addu    $t8, $t8, $t6
	lw      $t8, %lo(object_a_80330DAC+0x00)($t8)
	bgez    $t8, .L802C876C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x010C($t9)
.L802C876C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lwc1    $f6, 0x00A0($t7)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802C87A8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x014C($t0)
	addiu   $t4, $t2, 0x0001
	b       .L802C87F0
	sw      $t4, 0x014C($t0)
.L802C87A8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80330DAC+0x08)
	lw      $t5, 0x010C($t1)
	sll     $t3, $t5, 4
	addu    $at, $at, $t3
	lwc1    $f10, %lo(object_a_80330DAC+0x08)($at)
	swc1    $f10, 0x00B8($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t7, object_a_80330DAC+0x00
	la.l    $t7, object_a_80330DAC+0x00
	lw      $t8, 0x010C($t6)
	sll     $t9, $t8, 4
	addu    $t2, $t9, $t7
	lw      $a0, 0x0004($t2)
	jal     obj_lib_8029F514
	lw      $a1, 0x000C($t2)
.L802C87F0:
	b       .L802C88AC
	nop
.L802C87F8:
	jal     object_a_802C85A4
	nop
	beqz    $v0, .L802C881C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t0, 0x014C($t4)
	addiu   $t5, $t0, 0x0001
	sw      $t5, 0x014C($t4)
.L802C881C:
	b       .L802C88AC
	nop
.L802C8824:
	li      $at, 0x41400000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t3)
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x40000000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337DEC)
	lwc1    $f4, %lo(object_a_80337DEC)($at)
	lwc1    $f18, 0x00A0($t1)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L802C8880
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x014C($t6)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t6)
.L802C8880:
	b       .L802C88AC
	nop
.L802C8888:
	jal     object_a_802C85A4
	nop
	beqz    $v0, .L802C88A4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
.L802C88A4:
	b       .L802C88AC
	nop
.L802C88AC:
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     obj_lib_802A4564
	nop
	bnez    $v0, .L802C88D4
	nop
	jal     object_a_802BED7C
	li      $a0, 0x0001
.L802C88D4:
	la.u    $t2, math_sin
	la.l    $t2, math_sin
	li      $at, 0x42700000
	mtc1    $at, $f8
	lwc1    $f6, 0x36EC($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x00A0($t0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	la.u    $t5, math_cos
	la.l    $t5, math_cos
	li      $at, 0x42700000
	mtc1    $at, $f6
	lwc1    $f4, 0x36EC($t5)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A8($t4)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0028($sp)
	la.u    $t3, math_sin
	la.l    $t3, math_sin
	lwc1    $f4, 0x06EC($t3)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f8, 0x002C($sp)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x002C($sp)
	la.u    $t1, math_cos
	la.l    $t1, math_cos
	lwc1    $f18, 0x06EC($t1)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x0028($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x002C($sp)
	swc1    $f10, 0x0100($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f16, 0x0028($sp)
	swc1    $f16, 0x0104($t9)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, str_object_a_x
	la.l    $a0, str_object_a_x
	lwc1    $f18, 0x00A0($t6)
	trunc.w.s $f8, $f18
	mfc1    $a1, $f8
	jal     obj_debug_802CA568
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $a0, str_object_a_z
	la.l    $a0, str_object_a_z
	lwc1    $f4, 0x00A8($t2)
	trunc.w.s $f6, $f4
	mfc1    $a1, $f6
	jal     obj_debug_802CA568
	nop
	b       .L802C89DC
	nop
.L802C89DC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

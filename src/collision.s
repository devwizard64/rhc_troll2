.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

collision_8024BFF0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $a0, 0x0013
	jal     virtual_to_segment
	lw      $a1, 0x020C($t6)
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	la.u    $t7, o_13003DF8
	la.l    $t7, o_13003DF8
	bne     $t7, $t8, .L8024C034
	nop
	b       .L8024C0A8
	li      $v0, 0x0001
	b       .L8024C098
	nop
.L8024C034:
	lw      $t0, 0x001C($sp)
	la.u    $t9, o_13003DD8
	la.l    $t9, o_13003DD8
	bne     $t9, $t0, .L8024C058
	nop
	b       .L8024C0A8
	li      $v0, 0x0004
	b       .L8024C098
	nop
.L8024C058:
	lw      $t2, 0x001C($sp)
	la.u    $t1, o_13003DB8
	la.l    $t1, o_13003DB8
	bne     $t1, $t2, .L8024C07C
	nop
	b       .L8024C0A8
	li      $v0, 0x0008
	b       .L8024C098
	nop
.L8024C07C:
	lw      $t4, 0x001C($sp)
	la.u    $t3, o_13003E1C
	la.l    $t3, o_13003E1C
	bne     $t3, $t4, .L8024C098
	nop
	b       .L8024C0A8
	li      $v0, 0x0002
.L8024C098:
	b       .L8024C0A8
	move    $v0, $0
	b       .L8024C0A8
	nop
.L8024C0A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024C0B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f4, 0x003C($t6)
	lwc1    $f6, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	lwc1    $f10, 0x0044($t8)
	lwc1    $f16, 0x00A8($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f12, 0x0020($sp)
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x001E($sp)
	lw      $t1, 0x002C($sp)
	lh      $t0, 0x001E($sp)
	lw      $t2, 0x00C8($t1)
	subu    $t3, $t0, $t2
	sh      $t3, 0x001C($sp)
	lh      $t4, 0x0032($sp)
	lh      $t6, 0x001C($sp)
	subu    $t5, $0, $t4
	slt     $at, $t6, $t5
	bnez    $at, .L8024C14C
	nop
	slt     $at, $t4, $t6
	bnez    $at, .L8024C14C
	nop
	b       .L8024C15C
	li      $v0, 0x0001
.L8024C14C:
	b       .L8024C15C
	move    $v0, $0
	b       .L8024C15C
	nop
.L8024C15C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024C16C
collision_8024C16C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x0020($sp)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x003C($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x0020($sp)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f16, 0x0044($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lwc1    $f12, 0x0018($sp)
	jal     atan2
	lwc1    $f14, 0x001C($sp)
	b       .L8024C1C8
	nop
	b       .L8024C1C8
	nop
.L8024C1C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024C1D8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x000C($t6)
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x00800000
	and     $t9, $t8, $at
	beqz    $t9, .L8024C468
	nop
	lw      $t0, 0x0028($sp)
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	beq     $t0, $at, .L8024C244
	nop
	li.u    $at, 0x00800457
	li.l    $at, 0x00800457
	beq     $t0, $at, .L8024C244
	nop
	li.u    $at, 0x018008AC
	li.l    $at, 0x018008AC
	bne     $t0, $at, .L8024C328
	nop
.L8024C244:
	lw      $a0, 0x0030($sp)
	jal     collision_8024C16C
	lw      $a1, 0x0034($sp)
	lw      $t2, 0x0030($sp)
	sll     $s0, $v0, 16
	sra     $t1, $s0, 16
	lh      $t3, 0x002E($t2)
	move    $s0, $t1
	subu    $t4, $s0, $t3
	sh      $t4, 0x0026($sp)
	lw      $t5, 0x0030($sp)
	li      $at, 0x00100000
	lw      $t6, 0x0004($t5)
	and     $t7, $t6, $at
	beqz    $t7, .L8024C2A8
	nop
	lh      $t8, 0x0026($sp)
	slti    $at, $t8, -0x2AAA
	bnez    $at, .L8024C2A8
	nop
	slti    $at, $t8, 0x2AAB
	beqz    $at, .L8024C2A8
	nop
	li      $t9, 0x0002
	sw      $t9, 0x002C($sp)
.L8024C2A8:
	lw      $t0, 0x0030($sp)
	li      $at, 0x00200000
	lw      $t1, 0x0004($t0)
	and     $t2, $t1, $at
	beqz    $t2, .L8024C2E4
	nop
	lh      $t3, 0x0026($sp)
	slti    $at, $t3, -0x2AAA
	bnez    $at, .L8024C2E4
	nop
	slti    $at, $t3, 0x2AAB
	beqz    $at, .L8024C2E4
	nop
	li      $t4, 0x0004
	sw      $t4, 0x002C($sp)
.L8024C2E4:
	lw      $t5, 0x0030($sp)
	li      $at, 0x00400000
	lw      $t6, 0x0004($t5)
	and     $t7, $t6, $at
	beqz    $t7, .L8024C320
	nop
	lh      $t8, 0x0026($sp)
	slti    $at, $t8, -0x4000
	bnez    $at, .L8024C320
	nop
	slti    $at, $t8, 0x4001
	beqz    $at, .L8024C320
	nop
	li      $t9, 0x0008
	sw      $t9, 0x002C($sp)
.L8024C320:
	b       .L8024C468
	nop
.L8024C328:
	lw      $t0, 0x0028($sp)
	li.u    $at, 0x008008A9
	li.l    $at, 0x008008A9
	beq     $t0, $at, .L8024C34C
	nop
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	bne     $t0, $at, .L8024C378
	nop
.L8024C34C:
	lw      $t1, 0x0030($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8024C370
	nop
	li      $t2, 0x0001
	sw      $t2, 0x002C($sp)
.L8024C370:
	b       .L8024C468
	nop
.L8024C378:
	lw      $t3, 0x0028($sp)
	li.u    $at, 0x0080023C
	li.l    $at, 0x0080023C
	beq     $t3, $at, .L8024C39C
	nop
	li.u    $at, 0x18800238
	li.l    $at, 0x18800238
	bne     $t3, $at, .L8024C3D4
	nop
.L8024C39C:
	lw      $t4, 0x0030($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x004C($t4)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8024C3CC
	nop
	lhu     $t5, 0x0018($t4)
	bnez    $t5, .L8024C3CC
	nop
	li      $t6, 0x0001
	sw      $t6, 0x002C($sp)
.L8024C3CC:
	b       .L8024C468
	nop
.L8024C3D4:
	lw      $t7, 0x0028($sp)
	li.u    $at, 0x018008AA
	li.l    $at, 0x018008AA
	beq     $t7, $at, .L8024C3F8
	nop
	li.u    $at, 0x0080045A
	li.l    $at, 0x0080045A
	bne     $t7, $at, .L8024C404
	nop
.L8024C3F8:
	li      $t8, 0x0010
	b       .L8024C468
	sw      $t8, 0x002C($sp)
.L8024C404:
	lw      $t9, 0x0028($sp)
	li      $at, 0x00010000
	and     $t0, $t9, $at
	beqz    $t0, .L8024C424
	nop
	li      $t1, 0x0020
	b       .L8024C468
	sw      $t1, 0x002C($sp)
.L8024C424:
	lw      $t2, 0x0030($sp)
	li      $at, 0xC1D00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t2)
	c.le.s  $f16, $f18
	nop
	bc1t    .L8024C460
	nop
	li      $at, 0x41D00000
	mtc1    $at, $f4
	nop
	c.le.s  $f4, $f16
	nop
	bc1f    .L8024C468
	nop
.L8024C460:
	li      $t3, 0x0020
	sw      $t3, 0x002C($sp)
.L8024C468:
	lw      $t4, 0x002C($sp)
	bnez    $t4, .L8024C4F8
	nop
	lw      $t5, 0x0028($sp)
	andi    $t6, $t5, 0x0800
	beqz    $t6, .L8024C4F8
	nop
	lw      $t7, 0x0030($sp)
	mtc1    $0, $f8
	lwc1    $f6, 0x004C($t7)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8024C4D0
	nop
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0034($sp)
	lwc1    $f10, 0x0040($t8)
	lwc1    $f18, 0x00A4($t9)
	c.lt.s  $f18, $f10
	nop
	bc1f    .L8024C4C8
	nop
	li      $t0, 0x0040
	sw      $t0, 0x002C($sp)
.L8024C4C8:
	b       .L8024C4F8
	nop
.L8024C4D0:
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0034($sp)
	lwc1    $f4, 0x0040($t1)
	lwc1    $f16, 0x00A4($t2)
	c.lt.s  $f4, $f16
	nop
	bc1f    .L8024C4F8
	nop
	li      $t3, 0x0080
	sw      $t3, 0x002C($sp)
.L8024C4F8:
	b       .L8024C508
	lw      $v0, 0x002C($sp)
	b       .L8024C508
	nop
.L8024C508:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

collision_8024C51C:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	move    $a2, $a1
	slti    $at, $a2, 0x0041
	bnez    $at, .L8024C548
	nop
	li      $at, 0x0080
	beq     $a2, $at, .L8024C5E0
	nop
	b       L8024C5F0
	nop
.L8024C548:
	slti    $at, $a2, 0x0021
	bnez    $at, .L8024C568
	nop
	li      $at, 0x0040
	beq     $a2, $at, .L8024C5D0
	nop
	b       L8024C5F0
	nop
.L8024C568:
	addiu   $t6, $a2, -0x0001
	sltiu   $at, $t6, 0x0020
	beqz    $at, L8024C5F0
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(collision_803361B0)
	addu    $at, $at, $t6
	lw      $t6, %lo(collision_803361B0)($at)
	jr      $t6
	nop
.globl L8024C590
L8024C590:
	li      $t7, 0x0004
	sw      $t7, 0x0004($sp)
	b       L8024C5F0
	nop
.globl L8024C5A0
L8024C5A0:
	li      $t8, 0x0001
	sw      $t8, 0x0004($sp)
	b       L8024C5F0
	nop
.globl L8024C5B0
L8024C5B0:
	li      $t9, 0x0002
	sw      $t9, 0x0004($sp)
	b       L8024C5F0
	nop
.globl L8024C5C0
L8024C5C0:
	li      $t0, 0x0005
	sw      $t0, 0x0004($sp)
	b       L8024C5F0
	nop
.L8024C5D0:
	li      $t1, 0x0003
	sw      $t1, 0x0004($sp)
	b       L8024C5F0
	nop
.L8024C5E0:
	li      $t2, 0x0006
	sw      $t2, 0x0004($sp)
	b       L8024C5F0
	nop
.globl L8024C5F0
L8024C5F0:
	lw      $t3, 0x0004($sp)
	li      $at, 0xC000
	addu    $t4, $t3, $at
	sw      $t4, 0x0134($a0)
	b       .L8024C610
	lw      $v0, 0x0004($sp)
	b       .L8024C610
	nop
.L8024C610:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl collision_8024C618
collision_8024C618:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0084($t6)
	beqz    $t7, .L8024C654
	nop
	lw      $t9, 0x0018($sp)
	li      $t8, 0x00400000
	lw      $t0, 0x0084($t9)
	sw      $t8, 0x0134($t0)
	jal     bgm_shell_stop
	nop
	lw      $t1, 0x0018($sp)
	sw      $0, 0x0084($t1)
.L8024C654:
	b       .L8024C65C
	nop
.L8024C65C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024C66C
collision_8024C66C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	bnez    $t7, .L8024C6A8
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0080($t8)
	sw      $t9, 0x007C($t8)
	lw      $t0, 0x0018($sp)
	la.u    $a1, o_13003464
	la.l    $a1, o_13003464
	jal     obj_lib_8029E1B0
	lw      $a0, 0x007C($t0)
.L8024C6A8:
	b       .L8024C6B0
	nop
.L8024C6B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024C6C0
collision_8024C6C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	beqz    $t7, .L8024C768
	nop
	la.u    $a0, o_13000708
	jal     segment_to_virtual
	la.l    $a0, o_13000708
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x007C($t8)
	lw      $t0, 0x020C($t9)
	bne     $v0, $t0, .L8024C704
	nop
	jal     bgm_shell_stop
	nop
.L8024C704:
	lw      $t1, 0x0018($sp)
	la.u    $a1, o_1300346C
	la.l    $a1, o_1300346C
	jal     obj_lib_8029E1B0
	lw      $a0, 0x007C($t1)
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0098($t2)
	lw      $t4, 0x007C($t2)
	lwc1    $f4, 0x0018($t3)
	swc1    $f4, 0x00A0($t4)
	lw      $t5, 0x0018($sp)
	lwc1    $f6, 0x0040($t5)
	lw      $t6, 0x007C($t5)
	swc1    $f6, 0x00A4($t6)
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0098($t7)
	lw      $t9, 0x007C($t7)
	lwc1    $f8, 0x0020($t8)
	swc1    $f8, 0x00A8($t9)
	lw      $t0, 0x0018($sp)
	lh      $t1, 0x002E($t0)
	lw      $t3, 0x007C($t0)
	sw      $t1, 0x00C8($t3)
	lw      $t2, 0x0018($sp)
	sw      $0, 0x007C($t2)
.L8024C768:
	b       .L8024C770
	nop
.L8024C770:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024C780
collision_8024C780:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	beqz    $t7, .L8024C87C
	nop
	la.u    $a0, o_13000708
	jal     segment_to_virtual
	la.l    $a0, o_13000708
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x007C($t8)
	lw      $t0, 0x020C($t9)
	bne     $v0, $t0, .L8024C7C4
	nop
	jal     bgm_shell_stop
	nop
.L8024C7C4:
	lw      $t1, 0x0018($sp)
	la.u    $a1, o_13003474
	la.l    $a1, o_13003474
	jal     obj_lib_8029E1B0
	lw      $a0, 0x007C($t1)
	lw      $t2, 0x0018($sp)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x002E($t2)
	lw      $t6, 0x0098($t2)
	lw      $t7, 0x007C($t2)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f10, 0x0018($t6)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t7)
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0098($t8)
	lw      $t0, 0x007C($t8)
	lwc1    $f18, 0x001C($t9)
	swc1    $f18, 0x00A4($t0)
	lw      $t1, 0x0018($sp)
	lui     $at, %hi(math_cos)
	lhu     $t3, 0x002E($t1)
	lw      $t6, 0x0098($t1)
	lw      $t2, 0x007C($t1)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f10, 0x0020($t6)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A8($t2)
	lw      $t7, 0x0018($sp)
	lh      $t9, 0x002E($t7)
	lw      $t8, 0x007C($t7)
	sw      $t9, 0x00C8($t8)
	lw      $t0, 0x0018($sp)
	sw      $0, 0x007C($t0)
.L8024C87C:
	b       .L8024C884
	nop
.L8024C884:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024C894
collision_8024C894:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
	jal     collision_8024C618
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x04A8
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, .L8024C8E4
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0080($t8)
	sw      $0, 0x0134($t9)
	lw      $t1, 0x0018($sp)
	lui     $t0, %hi(gfx_frame)
	lw      $t0, %lo(gfx_frame)($t0)
	lw      $t2, 0x0080($t1)
	sw      $t0, 0x0110($t2)
.L8024C8E4:
	b       .L8024C8EC
	nop
.L8024C8EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024C8FC
collision_8024C8FC:
	lw      $v0, 0x0004($a0)
	andi    $t6, $v0, 0x001F
	move    $v0, $t6
	xori    $t7, $v0, 0x0011
	sltiu   $t7, $t7, 0x0001
	jr      $ra
	move    $v0, $t7
	jr      $ra
	nop
	jr      $ra
	nop

.globl collision_8024C928
collision_8024C928:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     collision_8024C8FC
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8024CA4C
	nop
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x003C($t6)
	lwc1    $f8, 0x0040($t6)
	lwc1    $f16, 0x0044($t6)
	trunc.w.s $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $a0, $f6
	trunc.w.s $f18, $f16
	mfc1    $a1, $f10
	mfc1    $a2, $f18
	jal     save_cap_set
	nop
	lw      $t0, 0x0028($sp)
	li      $at, -0x0012
	lw      $t1, 0x0004($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x0004($t0)
	lw      $t3, 0x0028($sp)
	la.u    $a2, o_13003DF8
	la.l    $a2, o_13003DF8
	li      $a1, 0x0088
	jal     obj_lib_8029EDCC
	lw      $a0, 0x0088($t3)
	sw      $v0, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x000C($t4)
	andi    $t7, $t5, 0x8000
	beqz    $t7, .L8024C9D0
	nop
	li      $at, 0x42F00000
	mtc1    $at, $f20
	b       .L8024C9DC
	nop
.L8024C9D0:
	li      $at, 0x43340000
	mtc1    $at, $f20
	nop
.L8024C9DC:
	lw      $t8, 0x0024($sp)
	lwc1    $f4, 0x00A4($t8)
	add.s   $f6, $f4, $f20
	swc1    $f6, 0x00A4($t8)
	lwc1    $f8, 0x002C($sp)
	lw      $t6, 0x0024($sp)
	swc1    $f8, 0x00B8($t6)
	lw      $t9, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lh      $t1, 0x002E($t9)
	addiu   $t2, $t1, 0x0400
	sll     $t0, $t2, 16
	sra     $t3, $t0, 16
	sw      $t3, 0x00C8($t4)
	lw      $t5, 0x0028($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x0054($t5)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8024CA4C
	nop
	lw      $t7, 0x0024($sp)
	li      $at, 0x8000
	lw      $t8, 0x00C8($t7)
	addu    $t6, $t8, $at
	sll     $t9, $t6, 16
	sra     $t1, $t9, 16
	sw      $t1, 0x00C8($t7)
.L8024CA4C:
	b       .L8024CA54
	nop
.L8024CA54:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024CA68
collision_8024CA68:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0024($sp)
	lui     $a0, %hi(mario)
	jal     collision_8024C8FC
	lw      $a0, %lo(mario)($a0)
	beqz    $v0, .L8024CAD4
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L8024CAA8
	nop
	b       .L8024CAAC
	li      $s0, 0x00020000
.L8024CAA8:
	li      $s0, 0x00040000
.L8024CAAC:
	jal     save_flag_set
	move    $a0, $s0
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	li      $at, -0x0012
	lw      $t8, 0x0004($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t7)
	li      $t0, 0x0001
	sw      $t0, 0x0024($sp)
.L8024CAD4:
	b       .L8024CAE4
	lw      $v0, 0x0024($sp)
	b       .L8024CAE4
	nop
.L8024CAE4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024CAF8
collision_8024CAF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(mario)
	jal     collision_8024C6C0
	lw      $a0, %lo(mario)($a0)
	jal     save_flag_clr
	li      $a0, 0x00060000
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li      $at, -0x0011
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x0004($t6)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	lw      $t0, 0x0004($t9)
	ori     $t1, $t0, 0x0021
	sw      $t1, 0x0004($t9)
	b       .L8024CB48
	nop
.L8024CB48:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_8024CB58:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x000C($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	li.u    $at, 0x00880456
	li.l    $at, 0x00880456
	beq     $t7, $at, .L8024CB88
	nop
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	bne     $t7, $at, .L8024CBA8
	nop
.L8024CB88:
	lw      $t8, 0x0190($a1)
	andi    $t9, $t8, 0x0004
	bnez    $t9, .L8024CBA0
	nop
	b       .L8024CBF4
	li      $v0, 0x0001
.L8024CBA0:
	b       .L8024CBE4
	nop
.L8024CBA8:
	lw      $t0, 0x0004($sp)
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	beq     $t0, $at, .L8024CBCC
	nop
	li.u    $at, 0x00800457
	li.l    $at, 0x00800457
	bne     $t0, $at, .L8024CBE4
	nop
.L8024CBCC:
	lw      $t1, 0x001C($a0)
	sltiu   $at, $t1, 0x0002
	beqz    $at, .L8024CBE4
	nop
	b       .L8024CBF4
	li      $v0, 0x0001
.L8024CBE4:
	b       .L8024CBF4
	move    $v0, $0
	b       .L8024CBF4
	nop
.L8024CBF4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl collision_8024CBFC
collision_8024CBFC:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lw      $t6, 0x0088($a0)
	lh      $t7, 0x0076($t6)
	blez    $t7, .L8024CC64
	nop
.L8024CC14:
	lw      $t9, 0x0004($sp)
	lw      $t8, 0x0088($a0)
	sll     $t0, $t9, 2
	addu    $t1, $t8, $t0
	lw      $t2, 0x0078($t1)
	sw      $t2, 0x0000($sp)
	lw      $t3, 0x0000($sp)
	lw      $t4, 0x0130($t3)
	bne     $t4, $a1, .L8024CC44
	nop
	b       .L8024CC74
	lw      $v0, 0x0000($sp)
.L8024CC44:
	lw      $t5, 0x0004($sp)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0088($a0)
	lh      $t9, 0x0076($t7)
	slt     $at, $t6, $t9
	bnez    $at, .L8024CC14
	nop
.L8024CC64:
	b       .L8024CC74
	move    $v0, $0
	b       .L8024CC74
	nop
.L8024CC74:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl collision_8024CC7C
collision_8024CC7C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $0, 0x0034($sp)
	lw      $t6, 0x0038($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0800
	beqz    $t8, .L8024CDE4
	nop
	lw      $t9, 0x0038($sp)
	li      $a0, 0x0013
	lw      $t0, 0x0078($t9)
	jal     virtual_to_segment
	lw      $a1, 0x020C($t0)
	sw      $v0, 0x0030($sp)
	lw      $t2, 0x0030($sp)
	la.u    $t1, o_13001850
	la.l    $t1, o_13001850
	bne     $t1, $t2, .L8024CD40
	nop
	lw      $t3, 0x0038($sp)
	lw      $t5, 0x0078($t3)
	lh      $t4, 0x002E($t3)
	lw      $t6, 0x00C8($t5)
	subu    $t7, $t4, $t6
	sh      $t7, 0x002E($sp)
	lh      $t8, 0x002E($sp)
	slti    $at, $t8, -0x5555
	bnez    $at, .L8024CD38
	nop
	slti    $at, $t8, 0x5556
	beqz    $at, .L8024CD38
	nop
	lw      $t9, 0x0038($sp)
	lw      $t0, 0x0078($t9)
	lw      $t1, 0x00C8($t0)
	sh      $t1, 0x002E($t9)
	lw      $t2, 0x0038($sp)
	lw      $t3, 0x0078($t2)
	sw      $t3, 0x0080($t2)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0390
	jal     player_80252CF4
	move    $a2, $0
	sw      $v0, 0x0034($sp)
.L8024CD38:
	b       .L8024CDE4
	nop
.L8024CD40:
	lw      $t5, 0x0038($sp)
	move    $a0, $t5
	jal     collision_8024C16C
	lw      $a1, 0x0078($t5)
	lw      $t6, 0x0038($sp)
	sll     $s0, $v0, 16
	sra     $t4, $s0, 16
	lh      $t7, 0x002E($t6)
	move    $s0, $t4
	subu    $t8, $s0, $t7
	sh      $t8, 0x002C($sp)
	lh      $t0, 0x002C($sp)
	slti    $at, $t0, -0x2AAA
	bnez    $at, .L8024CDE4
	nop
	slti    $at, $t0, 0x2AAB
	beqz    $at, .L8024CDE4
	nop
	lw      $t1, 0x0038($sp)
	lw      $t9, 0x0078($t1)
	sw      $t9, 0x0080($t1)
	lw      $t3, 0x0038($sp)
	lw      $t2, 0x000C($t3)
	andi    $t5, $t2, 0x0800
	bnez    $t5, .L8024CDDC
	nop
	lw      $t4, 0x0038($sp)
	li      $at, 0x00080000
	lw      $t6, 0x000C($t4)
	and     $t7, $t6, $at
	beqz    $t7, .L8024CDC8
	nop
	b       .L8024CDCC
	li      $s1, 0x0385
.L8024CDC8:
	li      $s1, 0x0383
.L8024CDCC:
	lw      $a0, 0x0038($sp)
	move    $a1, $s1
	jal     player_80252CF4
	move    $a2, $0
.L8024CDDC:
	li      $t8, 0x0001
	sw      $t8, 0x0034($sp)
.L8024CDE4:
	b       .L8024CDF4
	lw      $v0, 0x0034($sp)
	b       .L8024CDF4
	nop
.L8024CDF4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

collision_8024CE08:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0070($sp)
	sw      $0, 0x0034($sp)
	lw      $t6, 0x0070($sp)
	lw      $t7, 0x0078($t6)
	sw      $t7, 0x0030($sp)
	lw      $t8, 0x0030($sp)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f4, 0x01F8($t8)
	li      $at, 0x42540000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	li      $at, 0x42540000
	mtc1    $at, $f18
	lwc1    $f4, 0x01F8($t9)
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x0028($sp)
	lw      $t0, 0x0070($sp)
	li      $at, 0x42500000
	mtc1    $at, $f10
	lwc1    $f8, 0x002C($sp)
	lh      $t1, 0x002E($t0)
	lw      $a1, 0x003C($t0)
	lw      $a2, 0x0044($t0)
	lw      $a3, 0x0054($t0)
	addiu   $a0, $sp, 0x0058
	swc1    $f10, 0x0018($sp)
	swc1    $f8, 0x0014($sp)
	jal     pl_physics_80255238
	sw      $t1, 0x0010($sp)
	lw      $t2, 0x0030($sp)
	lwc1    $f16, 0x0028($sp)
	li      $at, 0x40000000
	lw      $t3, 0x00C8($t2)
	lw      $a1, 0x00A0($t2)
	lw      $a2, 0x00A8($t2)
	lw      $a3, 0x00B8($t2)
	swc1    $f16, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	mtc1    $at, $f4
	lwc1    $f18, 0x01F8($t2)
	addiu   $a0, $sp, 0x0040
	add.s   $f6, $f18, $f4
	jal     pl_physics_80255238
	swc1    $f6, 0x0018($sp)
	lw      $t4, 0x0070($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0054($t4)
	c.eq.s  $f8, $f10
	nop
	bc1t    .L8024CF00
	nop
	addiu   $a0, $sp, 0x0058
	jal     pl_physics_802550C0
	addiu   $a1, $sp, 0x0040
	b       .L8024CF0C
	nop
.L8024CF00:
	addiu   $a0, $sp, 0x0040
	jal     pl_physics_802550C0
	addiu   $a1, $sp, 0x0058
.L8024CF0C:
	lwc1    $f12, 0x006C($sp)
	jal     atan2
	lwc1    $f14, 0x0068($sp)
	sh      $v0, 0x003E($sp)
	lwc1    $f12, 0x0054($sp)
	jal     atan2
	lwc1    $f14, 0x0050($sp)
	sh      $v0, 0x003C($sp)
	lw      $t6, 0x0070($sp)
	lh      $t5, 0x003E($sp)
	lh      $t7, 0x002E($t6)
	subu    $t8, $t5, $t7
	sh      $t8, 0x003A($sp)
	lw      $t0, 0x0030($sp)
	lh      $t9, 0x003C($sp)
	lw      $t1, 0x00C8($t0)
	subu    $t3, $t9, $t1
	sh      $t3, 0x0038($sp)
	lh      $t2, 0x003E($sp)
	lw      $t4, 0x0070($sp)
	sh      $t2, 0x002E($t4)
	lwc1    $f16, 0x0068($sp)
	lwc1    $f4, 0x006C($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f6
	lw      $t6, 0x0070($sp)
	swc1    $f0, 0x0054($t6)
	lwc1    $f8, 0x0060($sp)
	lw      $t5, 0x0070($sp)
	swc1    $f8, 0x003C($t5)
	lwc1    $f10, 0x0064($sp)
	lw      $t7, 0x0070($sp)
	swc1    $f10, 0x0044($t7)
	lh      $t8, 0x003C($sp)
	lw      $t0, 0x0030($sp)
	sw      $t8, 0x00C8($t0)
	lwc1    $f16, 0x0050($sp)
	lwc1    $f18, 0x0054($sp)
	mul.s   $f4, $f16, $f16
	nop
	mul.s   $f6, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f4, $f6
	lw      $t9, 0x0030($sp)
	swc1    $f0, 0x00B8($t9)
	lwc1    $f8, 0x0048($sp)
	lw      $t1, 0x0030($sp)
	swc1    $f8, 0x00A0($t1)
	lwc1    $f10, 0x004C($sp)
	lw      $t3, 0x0030($sp)
	swc1    $f10, 0x00A8($t3)
	lh      $t2, 0x003A($sp)
	slti    $at, $t2, -0x4000
	bnez    $at, .L8024D000
	nop
	slti    $at, $t2, 0x4001
	bnez    $at, .L8024D064
	nop
.L8024D000:
	lw      $t4, 0x0070($sp)
	li      $at, 0x8000
	lh      $t6, 0x002E($t4)
	addu    $t5, $t6, $at
	sh      $t5, 0x002E($t4)
	lw      $t7, 0x0070($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t7)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0054($t7)
	lw      $t8, 0x0070($sp)
	lw      $t0, 0x000C($t8)
	andi    $t9, $t0, 0x0800
	beqz    $t9, .L8024D050
	nop
	li.u    $t1, 0x010208B0
	li.l    $t1, 0x010208B0
	b       .L8024D05C
	sw      $t1, 0x0034($sp)
.L8024D050:
	li.u    $t3, 0x00020464
	li.l    $t3, 0x00020464
	sw      $t3, 0x0034($sp)
.L8024D05C:
	b       .L8024D094
	nop
.L8024D064:
	lw      $t2, 0x0070($sp)
	lw      $t6, 0x000C($t2)
	andi    $t5, $t6, 0x0800
	beqz    $t5, .L8024D088
	nop
	li.u    $t4, 0x010208B1
	li.l    $t4, 0x010208B1
	b       .L8024D094
	sw      $t4, 0x0034($sp)
.L8024D088:
	li.u    $t7, 0x00020465
	li.l    $t7, 0x00020465
	sw      $t7, 0x0034($sp)
.L8024D094:
	b       .L8024D0A4
	lw      $v0, 0x0034($sp)
	b       .L8024D0A4
	nop
.L8024D0A4:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

collision_8024D0B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x01FC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0040($t7)
	lwc1    $f10, 0x0020($sp)
	lw      $t8, 0x0018($sp)
	swc1    $f10, 0x004C($t8)
	lw      $t9, 0x0018($sp)
	li      $at, -0x0101
	lw      $t0, 0x0004($t9)
	and     $t1, $t0, $at
	sw      $t1, 0x0004($t9)
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x0459B081
	li.l    $a0, 0x0459B081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8024D120
	nop
.L8024D120:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_8024D130:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	mtc1    $0, $f4
	lw      $t6, 0x0018($sp)
	swc1    $f4, 0x004C($t6)
	jal     camera_8027F590
	li      $a0, 0x0008
	b       .L8024D15C
	nop
.L8024D15C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_8024D16C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	move    $a0, $t6
	jal     collision_8024C16C
	lw      $a1, 0x0078($t6)
	sh      $v0, 0x001A($sp)
	lw      $t8, 0x0020($sp)
	lh      $t7, 0x001A($sp)
	lh      $t9, 0x002E($t8)
	subu    $t0, $t7, $t9
	sh      $t0, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8024D1D0
	nop
	li      $at, 0x41800000
	mtc1    $at, $f8
	lw      $t2, 0x0020($sp)
	swc1    $f8, 0x0054($t2)
.L8024D1D0:
	lh      $t3, 0x001A($sp)
	lw      $t4, 0x0020($sp)
	sh      $t3, 0x002E($t4)
	lh      $t5, 0x0018($sp)
	slti    $at, $t5, -0x4000
	bnez    $at, .L8024D250
	nop
	slti    $at, $t5, 0x4001
	beqz    $at, .L8024D250
	nop
	lw      $t6, 0x0020($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t6)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0054($t6)
	lw      $t8, 0x0020($sp)
	li.u    $at, 0x00300800
	li.l    $at, 0x00300800
	lw      $t7, 0x000C($t8)
	and     $t9, $t7, $at
	beqz    $t9, .L8024D23C
	nop
	li.u    $t0, 0x010208B0
	li.l    $t0, 0x010208B0
	b       .L8024D248
	sw      $t0, 0x001C($sp)
.L8024D23C:
	li.u    $t1, 0x00020464
	li.l    $t1, 0x00020464
	sw      $t1, 0x001C($sp)
.L8024D248:
	b       .L8024D29C
	nop
.L8024D250:
	lw      $t2, 0x0020($sp)
	li      $at, 0x8000
	lh      $t3, 0x002E($t2)
	addu    $t4, $t3, $at
	sh      $t4, 0x002E($t2)
	lw      $t5, 0x0020($sp)
	li.u    $at, 0x00300800
	li.l    $at, 0x00300800
	lw      $t6, 0x000C($t5)
	and     $t8, $t6, $at
	beqz    $t8, .L8024D290
	nop
	li.u    $t7, 0x010208B1
	li.l    $t7, 0x010208B1
	b       .L8024D29C
	sw      $t7, 0x001C($sp)
.L8024D290:
	li.u    $t9, 0x00020465
	li.l    $t9, 0x00020465
	sw      $t9, 0x001C($sp)
.L8024D29C:
	b       .L8024D2AC
	lw      $v0, 0x001C($sp)
	b       .L8024D2AC
	nop
.L8024D2AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024D2BC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sh      $0, 0x0022($sp)
	sh      $0, 0x0020($sp)
	lw      $t6, 0x0028($sp)
	move    $a0, $t6
	jal     collision_8024C16C
	lw      $a1, 0x0078($t6)
	sh      $v0, 0x001E($sp)
	lw      $t8, 0x0028($sp)
	lh      $t7, 0x001E($sp)
	lh      $t9, 0x002E($t8)
	subu    $t0, $t7, $t9
	sh      $t0, 0x001C($sp)
	lw      $t1, 0x0028($sp)
	lbu     $t3, 0x00B2($t1)
	lh      $t2, 0x00AE($t1)
	sll     $t4, $t3, 6
	subu    $t5, $t2, $t4
	sh      $t5, 0x001A($sp)
	lw      $t6, 0x0028($sp)
	lw      $t8, 0x000C($t6)
	andi    $t7, $t8, 0x6000
	beqz    $t7, .L8024D334
	nop
	li      $t9, 0x0002
	b       .L8024D358
	sh      $t9, 0x0022($sp)
.L8024D334:
	lw      $t0, 0x0028($sp)
	li.u    $at, 0x00300800
	li.l    $at, 0x00300800
	lw      $t1, 0x000C($t0)
	and     $t3, $t1, $at
	beqz    $t3, .L8024D358
	nop
	li      $t2, 0x0001
	sh      $t2, 0x0022($sp)
.L8024D358:
	lh      $t4, 0x001A($sp)
	slti    $at, $t4, 0x0100
	beqz    $at, .L8024D374
	nop
	li      $t5, 0x0002
	b       .L8024D3B8
	sh      $t5, 0x0020($sp)
.L8024D374:
	lw      $t6, 0x0028($sp)
	lw      $t8, 0x0078($t6)
	lw      $t7, 0x0180($t8)
	slti    $at, $t7, 0x0004
	bnez    $at, .L8024D398
	nop
	li      $t9, 0x0002
	b       .L8024D3B8
	sh      $t9, 0x0020($sp)
.L8024D398:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0078($t0)
	lw      $t3, 0x0180($t1)
	slti    $at, $t3, 0x0002
	bnez    $at, .L8024D3B8
	nop
	li      $t2, 0x0001
	sh      $t2, 0x0020($sp)
.L8024D3B8:
	lh      $t4, 0x001E($sp)
	lw      $t5, 0x0028($sp)
	sh      $t4, 0x002E($t5)
	lh      $t6, 0x0022($sp)
	li      $at, 0x0002
	bne     $t6, $at, .L8024D488
	nop
	lw      $t8, 0x0028($sp)
	li      $at, 0x41E00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8024D400
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41E00000
.L8024D400:
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x0078($t7)
	lwc1    $f8, 0x0040($t7)
	lwc1    $f10, 0x00A4($t9)
	c.le.s  $f10, $f8
	nop
	bc1f    .L8024D458
	nop
	lw      $t0, 0x0028($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x004C($t0)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8024D450
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lw      $t1, 0x0028($sp)
	swc1    $f4, 0x004C($t1)
.L8024D450:
	b       .L8024D480
	nop
.L8024D458:
	lw      $t3, 0x0028($sp)
	mtc1    $0, $f8
	lwc1    $f6, 0x004C($t3)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8024D480
	nop
	mtc1    $0, $f10
	lw      $t2, 0x0028($sp)
	swc1    $f10, 0x004C($t2)
.L8024D480:
	b       .L8024D4B4
	nop
.L8024D488:
	lw      $t4, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t4)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8024D4B4
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41800000
.L8024D4B4:
	lh      $t5, 0x001C($sp)
	slti    $at, $t5, -0x4000
	bnez    $at, .L8024D518
	nop
	slti    $at, $t5, 0x4001
	beqz    $at, .L8024D518
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t6)
	lh      $t8, 0x0022($sp)
	lh      $t9, 0x0020($sp)
	lui     $t3, %hi(collision_8032DA6C)
	sll     $t7, $t8, 2
	subu    $t7, $t7, $t8
	sll     $t7, $t7, 2
	sll     $t0, $t9, 2
	addu    $t1, $t7, $t0
	addu    $t3, $t3, $t1
	lw      $t3, %lo(collision_8032DA6C)($t3)
	b       .L8024D558
	sw      $t3, 0x0024($sp)
.L8024D518:
	lw      $t2, 0x0028($sp)
	li      $at, 0x8000
	lh      $t4, 0x002E($t2)
	addu    $t5, $t4, $at
	sh      $t5, 0x002E($t2)
	lh      $t6, 0x0022($sp)
	lh      $t9, 0x0020($sp)
	lui     $t1, %hi(collision_8032DA48)
	sll     $t8, $t6, 2
	subu    $t8, $t8, $t6
	sll     $t8, $t8, 2
	sll     $t7, $t9, 2
	addu    $t0, $t8, $t7
	addu    $t1, $t1, $t0
	lw      $t1, %lo(collision_8032DA48)($t1)
	sw      $t1, 0x0024($sp)
.L8024D558:
	b       .L8024D568
	lw      $v0, 0x0024($sp)
	b       .L8024D568
	nop
.L8024D568:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

collision_8024D578:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	lw      $t7, 0x0040($sp)
	lw      $t6, 0x0044($sp)
	lwc1    $f10, 0x0048($sp)
	lw      $t8, 0x0088($t7)
	lwc1    $f4, 0x01F8($t6)
	lwc1    $f6, 0x01F8($t8)
	add.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x003C($sp)
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0044($sp)
	lwc1    $f18, 0x003C($t9)
	lwc1    $f4, 0x00A0($t0)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0038($sp)
	lw      $t1, 0x0040($sp)
	lw      $t2, 0x0044($sp)
	lwc1    $f8, 0x0044($t1)
	lwc1    $f10, 0x00A8($t2)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0034($sp)
	lwc1    $f18, 0x0038($sp)
	lwc1    $f6, 0x0034($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f8, $f6, $f6
	jal     sqrtf
	add.s   $f12, $f4, $f8
	swc1    $f0, 0x0030($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f16, 0x003C($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8024D714
	nop
	lwc1    $f18, 0x0030($sp)
	mtc1    $0, $f6
	nop
	c.eq.s  $f18, $f6
	nop
	bc1f    .L8024D644
	nop
	lw      $t3, 0x0040($sp)
	lh      $t4, 0x002E($t3)
	b       .L8024D654
	sh      $t4, 0x002A($sp)
.L8024D644:
	lwc1    $f12, 0x0034($sp)
	jal     atan2
	lwc1    $f14, 0x0038($sp)
	sh      $v0, 0x002A($sp)
.L8024D654:
	lhu     $t5, 0x002A($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x003C($sp)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	lw      $t8, 0x0044($sp)
	mul.s   $f10, $f4, $f8
	lwc1    $f16, 0x00A0($t8)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lhu     $t9, 0x002A($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x003C($sp)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_cos)($at)
	lw      $t2, 0x0044($sp)
	mul.s   $f8, $f6, $f4
	lwc1    $f10, 0x00A8($t2)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0020($sp)
	li      $at, 0x42480000
	mtc1    $at, $f18
	lw      $a1, 0x0040($sp)
	addiu   $a0, $sp, 0x0024
	addiu   $a2, $sp, 0x0020
	li      $a3, 0x42700000
	addiu   $a1, $a1, 0x0040
	jal     map_80380DE8
	swc1    $f18, 0x0010($sp)
	lw      $t3, 0x0040($sp)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	addiu   $a3, $sp, 0x002C
	jal     map_80381900
	lwc1    $f14, 0x0040($t3)
	lw      $t4, 0x002C($sp)
	beqz    $t4, .L8024D714
	nop
	lwc1    $f6, 0x0024($sp)
	lw      $t5, 0x0040($sp)
	swc1    $f6, 0x003C($t5)
	lwc1    $f4, 0x0020($sp)
	lw      $t6, 0x0040($sp)
	swc1    $f4, 0x0044($t6)
.L8024D714:
	b       .L8024D71C
	nop
.L8024D71C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

collision_8024D72C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	andi    $t7, $t6, 0x000E
	beqz    $t7, .L8024D7C4
	nop
	lw      $t8, 0x0018($sp)
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	lw      $t9, 0x000C($t8)
	bne     $t9, $at, .L8024D774
	nop
	lw      $t1, 0x0018($sp)
	li.u    $t0, 0x00800457
	li.l    $t0, 0x00800457
	sw      $t0, 0x000C($t1)
.L8024D774:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x000C($t2)
	andi    $t4, $t3, 0x0800
	beqz    $t4, .L8024D79C
	nop
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	b       .L8024D7A8
	nop
.L8024D79C:
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0xC2400000
.L8024D7A8:
	jal     camera_8027F590
	li      $a0, 0x0001
	lw      $t5, 0x0018($sp)
	li      $at, 0x00040000
	lw      $t6, 0x0008($t5)
	or      $t7, $t6, $at
	sw      $t7, 0x0008($t5)
.L8024D7C4:
	lw      $t8, 0x001C($sp)
	andi    $t9, $t8, 0x002E
	beqz    $t9, .L8024D7EC
	nop
	lw      $t0, 0x0018($sp)
	li.u    $a0, 0x0444B081
	li.l    $a0, 0x0444B081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8024D7EC:
	b       .L8024D7F4
	nop
.L8024D7F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024D804
collision_8024D804:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x003C($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f16, 0x0044($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f12, 0x0028($sp)
	jal     atan2
	lwc1    $f14, 0x002C($sp)
	lw      $t0, 0x0034($sp)
	lw      $t1, 0x00C8($t0)
	subu    $t2, $t1, $v0
	sh      $t2, 0x0026($sp)
	lh      $t3, 0x0026($sp)
	slti    $at, $t3, -0x4000
	bnez    $at, .L8024D888
	nop
	slti    $at, $t3, 0x4001
	beqz    $at, .L8024D888
	nop
	b       .L8024D88C
	li      $s0, 0x0001
.L8024D888:
	li      $s0, 0x0002
.L8024D88C:
	b       .L8024D89C
	move    $v0, $s0
	b       .L8024D89C
	nop
.L8024D89C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

collision_8024D8B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0078($t6)
	lw      $t8, 0x0180($t7)
	sw      $t8, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	slti    $at, $t9, 0x0004
	bnez    $at, .L8024D8E8
	nop
	li      $t0, 0x0005
	b       .L8024D90C
	sw      $t0, 0x001C($sp)
.L8024D8E8:
	lw      $t1, 0x0018($sp)
	slti    $at, $t1, 0x0002
	bnez    $at, .L8024D904
	nop
	li      $t2, 0x0004
	b       .L8024D90C
	sw      $t2, 0x001C($sp)
.L8024D904:
	li      $t3, 0x0003
	sw      $t3, 0x001C($sp)
.L8024D90C:
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x0004($t4)
	andi    $t6, $t5, 0x0010
	bnez    $t6, .L8024D940
	nop
	lw      $t7, 0x0018($sp)
	addiu   $t8, $t7, 0x0001
	bgez    $t8, .L8024D938
	sra     $t9, $t8, 1
	addiu   $at, $t8, 0x0001
	sra     $t9, $at, 1
.L8024D938:
	addu    $t0, $t7, $t9
	sw      $t0, 0x0018($sp)
.L8024D940:
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0004($t1)
	andi    $t3, $t2, 0x0004
	beqz    $t3, .L8024D958
	nop
	sw      $0, 0x0018($sp)
.L8024D958:
	lw      $t4, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lbu     $t5, 0x00B2($t4)
	sll     $t8, $t6, 2
	addu    $t7, $t5, $t8
	sb      $t7, 0x00B2($t4)
	jal     camera_8027F590
	lw      $a0, 0x001C($sp)
	b       .L8024D988
	lw      $v0, 0x0018($sp)
	b       .L8024D988
	nop
.L8024D988:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024D998:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(collision_8033B272)
	lh      $t6, %lo(collision_8033B272)($t6)
	bnez    $t6, .L8024DA88
	nop
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0002
	bnez    $t9, .L8024DA88
	nop
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x0190($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, .L8024DA88
	nop
	lw      $t4, 0x002C($sp)
	li      $t3, 0xA000
	sw      $t3, 0x0134($t4)
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	sw      $t5, 0x0078($t6)
	jal     collision_8024D8B0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lw      $t7, 0x002C($sp)
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L8024DA2C
	nop
	li      $at, 0x42200000
	mtc1    $at, $f4
	lw      $t0, 0x0028($sp)
	swc1    $f4, 0x0054($t0)
.L8024DA2C:
	lw      $t1, 0x002C($sp)
	lw      $t2, 0x0180($t1)
	blez    $t2, .L8024DA54
	nop
	lw      $t3, 0x0028($sp)
	li.u    $a0, 0x240AFF81
	li.l    $a0, 0x240AFF81
	lw      $a1, 0x0088($t3)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8024DA54:
	jal     player_802521A0
	lw      $a0, 0x0028($sp)
	lw      $t4, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	jal     collision_8024D2BC
	lw      $a1, 0x0180($t4)
	move    $s0, $v0
	move    $a1, $s0
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	lw      $a2, 0x0024($sp)
	b       .L8024DA98
	nop
.L8024DA88:
	b       .L8024DA98
	move    $v0, $0
	b       .L8024DA98
	nop
.L8024DA98:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

collision_8024DAAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li.u    $at, 0x01000889
	li.l    $at, 0x01000889
	lw      $t7, 0x000C($t6)
	beq     $t7, $at, .L8024DAF0
	nop
	li.u    $at, 0x00880898
	li.l    $at, 0x00880898
	beq     $t7, $at, .L8024DAF0
	nop
	li.u    $at, 0x10880899
	li.l    $at, 0x10880899
	bne     $t7, $at, .L8024DB14
	nop
.L8024DAF0:
	lw      $t8, 0x0018($sp)
	li      $a2, 0x0001
	lw      $t9, 0x0090($t8)
	lw      $t0, 0x0024($t9)
	move    $a0, $t0
	jal     camera_80286188
	lbu     $a1, 0x0001($t0)
	lw      $t1, 0x0018($sp)
	sh      $0, 0x002C($t1)
.L8024DB14:
	b       .L8024DB1C
	nop
.L8024DB1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int collision_8024DB2C(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024DB2C
collision_8024DB2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lw      $t8, 0x0020($sp)
	lh      $t7, 0x00A8($t6)
	lw      $t9, 0x0180($t8)
	addu    $t0, $t7, $t9
	sh      $t0, 0x00A8($t6)
	lw      $t3, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	lw      $t4, 0x0180($t3)
	lbu     $t2, 0x00B3($t1)
	sll     $t5, $t4, 2
	addu    $t8, $t2, $t5
	sb      $t8, 0x00B3($t1)
	lw      $t9, 0x0020($sp)
	li      $t7, 0x8000
	sw      $t7, 0x0134($t9)
	lui     $t0, %hi(course_index)
	lh      $t0, %lo(course_index)($t0)
	blez    $t0, .L8024DBD0
	nop
	slti    $at, $t0, 0x0010
	beqz    $at, .L8024DBD0
	nop
	lw      $t6, 0x0018($sp)
	lw      $t4, 0x0020($sp)
	lh      $t3, 0x00A8($t6)
	lw      $t2, 0x0180($t4)
	subu    $t5, $t3, $t2
	slti    $at, $t5, 0x0064
	beqz    $at, .L8024DBD0
	nop
	slti    $at, $t3, 0x0064
	bnez    $at, .L8024DBD0
	nop
	jal     object_a_802AB558
	li      $a0, 0x0006
.L8024DBD0:
	b       .L8024DBE0
	move    $v0, $0
	b       .L8024DBE0
	nop
.L8024DBE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int collision_8024DBF0(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024DBF0
collision_8024DBF0:
	sw      $a1, 0x0004($sp)
	lw      $t7, 0x0180($a2)
	lbu     $t6, 0x00B3($a0)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	sb      $t9, 0x00B3($a0)
	li      $t0, 0x8000
	sw      $t0, 0x0134($a2)
	b       .L8024DC20
	move    $v0, $0
	b       .L8024DC20
	nop
.L8024DC20:
	jr      $ra
	nop

/* int collision_8024DC28(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024DC28
collision_8024DC28:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	li      $t6, 0x1302
	sw      $t6, 0x0020($sp)
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0400
	sltu    $t0, $0, $t9
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0190($t1)
	andi    $t3, $t2, 0x0800
	sltu    $t4, $0, $t3
	sw      $t4, 0x0018($sp)
.if 1
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0030($sp)
	jal     pl_changestarexitflag
	lw      $a2, 0x001C($sp)
	sw      $v0, 0x001C($sp)
.endif
	lw      $t5, 0x0028($sp)
	lh      $t6, 0x00AE($t5)
	slti    $at, $t6, 0x0100
	bnez    $at, .L8024DE2C
	nop
	jal     collision_8024C894
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x001C($sp)
	bnez    $t7, .L8024DCC4
	nop
	lw      $t8, 0x0028($sp)
	sb      $0, 0x00B2($t8)
	lw      $t9, 0x0028($sp)
	sb      $0, 0x00B3($t9)
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x00B6($t0)
	slti    $at, $t1, 0x0002
	bnez    $at, .L8024DCC4
	nop
	lw      $t3, 0x0028($sp)
	li      $t2, 0x0001
	sh      $t2, 0x00B6($t3)
.L8024DCC4:
	lw      $t4, 0x001C($sp)
	beqz    $t4, .L8024DCD8
	nop
	li      $t5, 0x1307
	sw      $t5, 0x0020($sp)
.L8024DCD8:
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L8024DCF4
	nop
	li      $t9, 0x1303
	sw      $t9, 0x0020($sp)
.L8024DCF4:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x000C($t0)
	andi    $t2, $t1, 0x4000
	beqz    $t2, .L8024DD10
	nop
	li      $t3, 0x1303
	sw      $t3, 0x0020($sp)
.L8024DD10:
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x000C($t4)
	andi    $t6, $t5, 0x0800
	beqz    $t6, .L8024DD2C
	nop
	li      $t7, 0x1904
	sw      $t7, 0x0020($sp)
.L8024DD2C:
	la.u    $a2, o_130038B0
	la.l    $a2, o_130038B0
	lw      $a0, 0x0030($sp)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	lw      $t9, 0x0030($sp)
	li      $t8, 0x8000
	sw      $t8, 0x0134($t9)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0028($sp)
	sw      $t0, 0x0078($t1)
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0028($sp)
	sw      $t2, 0x0080($t3)
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0188($t4)
	sra     $t6, $t5, 24
	andi    $t7, $t6, 0x001F
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	jal     save_set
	lh      $a0, 0x00A8($t8)
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	lw      $t9, 0x0028($sp)
	sh      $v0, 0x00AA($t9)
	lw      $t0, 0x001C($sp)
	bnez    $t0, .L8024DDC4
	nop
	jal     Na_g_80321D38
	nop
	jal     bgm_fadeout
	li      $a0, 0x007E
.L8024DDC4:
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x701EFF81
	li.l    $a0, 0x701EFF81
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     player_802521A0
	lw      $a0, 0x0028($sp)
	lw      $t2, 0x0018($sp)
	beqz    $t2, .L8024DE08
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x1909
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024DE3C
	nop
.L8024DE08:
	lw      $t3, 0x0018($sp)
	lw      $t5, 0x001C($sp)
	lw      $a0, 0x0028($sp)
	sll     $t4, $t3, 1
	lw      $a1, 0x0020($sp)
	jal     player_80252CF4
	addu    $a2, $t4, $t5
	b       .L8024DE3C
	nop
.L8024DE2C:
	b       .L8024DE3C
	move    $v0, $0
	b       .L8024DE3C
	nop
.L8024DE3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int collision_8024DE4C(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024DE4C
collision_8024DE4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x1535
	lw      $t7, 0x000C($t6)
	beq     $t7, $at, .L8024DEF0
	nop
	li      $at, 0x1934
	beq     $t7, $at, .L8024DEF0
	nop
	jal     collision_8024C894
	lw      $a0, 0x0018($sp)
	lw      $t9, 0x0020($sp)
	li      $t8, 0x8000
	sw      $t8, 0x0134($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	sw      $t0, 0x0078($t1)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0018($sp)
	sw      $t2, 0x0080($t3)
	lw      $t4, 0x0018($sp)
	lw      $t5, 0x000C($t4)
	andi    $t6, $t5, 0x0800
	beqz    $t6, .L8024DED8
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1535
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024DF00
	nop
.L8024DED8:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1934
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024DF00
	nop
.L8024DEF0:
	b       .L8024DF00
	move    $v0, $0
	b       .L8024DF00
	nop
.L8024DF00:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int collision_8024DF10(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024DF10
collision_8024DF10:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L8024E000
	nop
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x000C($t9)
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $at, 0x1337
	bne     $t1, $at, .L8024DF68
	nop
	li      $t2, 0x0001
	lui     $at, %hi(collision_8032DA94)
	b       .L8024DFF8
	sb      $t2, %lo(collision_8032DA94)($at)
.L8024DF68:
	lui     $t3, %hi(collision_8032DA94)
	lbu     $t3, %lo(collision_8032DA94)($t3)
	bnez    $t3, .L8024DFF8
	nop
	lw      $t4, 0x0024($sp)
	li.u    $at, 0x0C400201
	li.l    $at, 0x0C400201
	beq     $t4, $at, .L8024DFBC
	nop
	li.u    $at, 0x0C400205
	li.l    $at, 0x0C400205
	beq     $t4, $at, .L8024DFBC
	nop
	li.u    $at, 0x0C400209
	li.l    $at, 0x0C400209
	beq     $t4, $at, .L8024DFBC
	nop
	li.u    $at, 0x0C008220
	li.l    $at, 0x0C008220
	bne     $t4, $at, .L8024DFF8
	nop
.L8024DFBC:
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0028($sp)
	sw      $t5, 0x0078($t6)
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0028($sp)
	sw      $t7, 0x0080($t8)
	li      $t9, 0x0001
	lui     $at, %hi(collision_8032DA94)
	sb      $t9, %lo(collision_8032DA94)($at)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x1336
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024E0B0
	nop
.L8024DFF8:
	b       .L8024E0A0
	nop
.L8024E000:
	lw      $t0, 0x0028($sp)
	li      $at, 0x1923
	lw      $t1, 0x000C($t0)
	beq     $t1, $at, .L8024E0A0
	nop
	lw      $t3, 0x0030($sp)
	li      $t2, 0x8000
	sw      $t2, 0x0134($t3)
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0028($sp)
	sw      $t4, 0x0078($t5)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0028($sp)
	sw      $t6, 0x0080($t7)
	la.u    $a0, map_pipe
	jal     segment_to_virtual
	la.l    $a0, map_pipe
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0218($t8)
	bne     $v0, $t9, .L8024E060
	nop
	li.u    $s0, 0x7016A081
	b       .L8024E068
	li.l    $s0, 0x7016A081
.L8024E060:
	li.u    $s0, 0x71198081
	li.l    $s0, 0x71198081
.L8024E068:
	lw      $t0, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     collision_8024C618
	lw      $a0, 0x0028($sp)
	li.u    $a2, 0x00040002
	li.l    $a2, 0x00040002
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a1, 0x1300
	b       .L8024E0B0
	nop
.L8024E0A0:
	b       .L8024E0B0
	move    $v0, $0
	b       .L8024E0B0
	nop
.L8024E0B0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int collision_8024E0C4(struct player *pl, u32 flag, struct object *obj) */
.if 0
.globl collision_8024E0C4
collision_8024E0C4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0034($sp)
	jal     save_flag_get
	nop
	sw      $v0, 0x0030($sp)
	lw      $t6, 0x0040($sp)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 24
	sh      $t8, 0x002E($sp)
	lw      $t9, 0x0038($sp)
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	lw      $t0, 0x000C($t9)
	beq     $t0, $at, .L8024E124
	nop
	li.u    $at, 0x0400044A
	li.l    $at, 0x0400044A
	bne     $t0, $at, .L8024E2D8
	nop
.L8024E124:
	lh      $t1, 0x002E($sp)
	li      $at, 0x0001
	bne     $t1, $at, .L8024E1B0
	nop
	lw      $t2, 0x0030($sp)
	andi    $t3, $t2, 0x0080
	bnez    $t3, .L8024E1B0
	nop
	lw      $t4, 0x0030($sp)
	andi    $t5, $t4, 0x0020
	bnez    $t5, .L8024E1A8
	nop
	lui     $t6, %hi(collision_8032DA90)
	lbu     $t6, %lo(collision_8032DA90)($t6)
	bnez    $t6, .L8024E194
	nop
	lw      $t7, 0x0030($sp)
	andi    $t8, $t7, 0x0010
	beqz    $t8, .L8024E17C
	nop
	b       .L8024E180
	li      $s0, 0x0017
.L8024E17C:
	li      $s0, 0x0016
.L8024E180:
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0038($sp)
	jal     player_80252CF4
	move    $a2, $s0
.L8024E194:
	li      $t9, 0x0001
	lui     $at, %hi(collision_8032DA90)
	sb      $t9, %lo(collision_8032DA90)($at)
	b       .L8024E2E8
	move    $v0, $0
.L8024E1A8:
	li      $t0, 0x132E
	sw      $t0, 0x0034($sp)
.L8024E1B0:
	lh      $t1, 0x002E($sp)
	li      $at, 0x0002
	bne     $t1, $at, .L8024E23C
	nop
	lw      $t2, 0x0030($sp)
	andi    $t3, $t2, 0x0040
	bnez    $t3, .L8024E23C
	nop
	lw      $t4, 0x0030($sp)
	andi    $t5, $t4, 0x0010
	bnez    $t5, .L8024E234
	nop
	lui     $t6, %hi(collision_8032DA90)
	lbu     $t6, %lo(collision_8032DA90)($t6)
	bnez    $t6, .L8024E220
	nop
	lw      $t7, 0x0030($sp)
	andi    $t8, $t7, 0x0020
	beqz    $t8, .L8024E208
	nop
	b       .L8024E20C
	li      $s0, 0x0017
.L8024E208:
	li      $s0, 0x0016
.L8024E20C:
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0038($sp)
	jal     player_80252CF4
	move    $a2, $s0
.L8024E220:
	li      $t9, 0x0001
	lui     $at, %hi(collision_8032DA90)
	sb      $t9, %lo(collision_8032DA90)($at)
	b       .L8024E2E8
	move    $v0, $0
.L8024E234:
	li      $t0, 0x132E
	sw      $t0, 0x0034($sp)
.L8024E23C:
	lw      $t1, 0x0038($sp)
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	lw      $t2, 0x000C($t1)
	beq     $t2, $at, .L8024E264
	nop
	li.u    $at, 0x0400044A
	li.l    $at, 0x0400044A
	bne     $t2, $at, .L8024E2D8
	nop
.L8024E264:
	lw      $a0, 0x0038($sp)
	jal     collision_8024D804
	lw      $a1, 0x0040($sp)
	addiu   $t3, $v0, 0x0004
	sw      $t3, 0x0028($sp)
	lw      $t4, 0x0034($sp)
	bnez    $t4, .L8024E2A8
	nop
	lw      $t5, 0x0028($sp)
	andi    $t6, $t5, 0x0001
	beqz    $t6, .L8024E2A0
	nop
	li      $t7, 0x1320
	b       .L8024E2A8
	sw      $t7, 0x0034($sp)
.L8024E2A0:
	li      $t8, 0x1321
	sw      $t8, 0x0034($sp)
.L8024E2A8:
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0038($sp)
	sw      $t9, 0x0078($t0)
	lw      $t1, 0x0040($sp)
	lw      $t2, 0x0038($sp)
	sw      $t1, 0x0080($t2)
	lw      $a0, 0x0038($sp)
	lw      $a1, 0x0034($sp)
	jal     player_80252CF4
	lw      $a2, 0x0028($sp)
	b       .L8024E2E8
	nop
.L8024E2D8:
	b       .L8024E2E8
	move    $v0, $0
	b       .L8024E2E8
	nop
.L8024E2E8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop
.endif

.globl collision_8024E2FC
collision_8024E2FC:
	addiu   $sp, $sp, -0x0010
	sw      $0, 0x000C($sp)
	lw      $t6, 0x0188($a0)
	sra     $t7, $t6, 24
	sh      $t7, 0x000A($sp)
	lwc1    $f4, 0x00A0($a0)
	mtc1    $0, $f6
	move    $t8, $0
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8024E330
	nop
	li      $t8, 0x0001
.L8024E330:
	sh      $t8, 0x0008($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($a0)
	move    $t9, $0
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8024E358
	nop
	li      $t9, 0x0001
.L8024E358:
	sh      $t9, 0x0006($sp)
	lh      $t0, 0x000A($sp)
	addiu   $t1, $t0, -0x0001
	sltiu   $at, $t1, 0x0032
	beqz    $at, L8024E408
	nop
	sll     $t1, $t1, 2
	lui     $at, %hi(collision_80336230)
	addu    $at, $at, $t1
	lw      $t1, %lo(collision_80336230)($at)
	jr      $t1
	nop
.globl L8024E388
L8024E388:
	lh      $t2, 0x0006($sp)
	beqz    $t2, .L8024E3A0
	nop
	li      $t3, 0x0400
	b       .L8024E3A8
	sw      $t3, 0x000C($sp)
.L8024E3A0:
	li      $t4, 0x0800
	sw      $t4, 0x000C($sp)
.L8024E3A8:
	b       L8024E408
	nop
.globl L8024E3B0
L8024E3B0:
	lh      $t5, 0x0008($sp)
	beqz    $t5, .L8024E3C8
	nop
	li      $t6, 0x1000
	b       .L8024E3D0
	sw      $t6, 0x000C($sp)
.L8024E3C8:
	li      $t7, 0x2000
	sw      $t7, 0x000C($sp)
.L8024E3D0:
	b       L8024E408
	nop
.globl L8024E3D8
L8024E3D8:
	li      $t8, 0x4000
	sw      $t8, 0x000C($sp)
	b       L8024E408
	nop
.globl L8024E3E8
L8024E3E8:
	li      $t9, 0x8000
	sw      $t9, 0x000C($sp)
	b       L8024E408
	nop
.globl L8024E3F8
L8024E3F8:
	li      $t0, 0x00100000
	sw      $t0, 0x000C($sp)
	b       L8024E408
	nop
.globl L8024E408
L8024E408:
	b       .L8024E418
	lw      $v0, 0x000C($sp)
	b       .L8024E418
	nop
.L8024E418:
	jr      $ra
	addiu   $sp, $sp, 0x0010

/* int collision_8024E420(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024E420
collision_8024E420:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0040($sp)
	lw      $t7, 0x0188($t6)
.if 0
	sra     $t8, $t7, 24
.else
	srl     $t8, $t7, 24
.endif
	sh      $t8, 0x0036($sp)
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	sh      $v0, 0x0034($sp)
	lw      $t9, 0x0038($sp)
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	lw      $t0, 0x000C($t9)
	beq     $t0, $at, .L8024E48C
	nop
	li.u    $at, 0x0400044A
	li.l    $at, 0x0400044A
	bne     $t0, $at, .L8024E64C
	nop
.L8024E48C:
	lh      $t1, 0x0034($sp)
	lh      $t2, 0x0036($sp)
	slt     $at, $t1, $t2
	bnez    $at, .L8024E560
	nop
	lw      $a0, 0x0038($sp)
	jal     collision_8024D804
	lw      $a1, 0x0040($sp)
	sw      $v0, 0x0030($sp)
	lw      $t3, 0x0030($sp)
	andi    $t4, $t3, 0x0001
	beqz    $t4, .L8024E4CC
	nop
	li      $t5, 0x1320
	b       .L8024E4D4
	sw      $t5, 0x002C($sp)
.L8024E4CC:
	li      $t6, 0x1321
	sw      $t6, 0x002C($sp)
.L8024E4D4:
	jal     collision_8024E2FC
	lw      $a0, 0x0040($sp)
	sw      $v0, 0x0028($sp)
	lw      $t7, 0x0040($sp)
	lw      $t8, 0x0038($sp)
	sw      $t7, 0x0078($t8)
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0038($sp)
	sw      $t9, 0x0080($t0)
	lw      $t1, 0x0040($sp)
	lw      $t2, 0x0190($t1)
	andi    $t3, $t2, 0x0020
	beqz    $t3, .L8024E514
	nop
	li      $t4, 0x1331
	sw      $t4, 0x002C($sp)
.L8024E514:
	lw      $t5, 0x0028($sp)
	beqz    $t5, .L8024E540
	nop
	jal     save_flag_get
	nop
	lw      $t6, 0x0028($sp)
	and     $t7, $v0, $t6
	bnez    $t7, .L8024E540
	nop
	li      $t8, 0x132F
	sw      $t8, 0x002C($sp)
.L8024E540:
	lw      $a0, 0x0038($sp)
	lw      $a1, 0x002C($sp)
	jal     player_80252CF4
	lw      $a2, 0x0030($sp)
	b       .L8024E6D8
	nop
	b       .L8024E644
	nop
.L8024E560:
	lui     $t9, %hi(collision_8032DA90)
	lbu     $t9, %lo(collision_8032DA90)($t9)
	bnez    $t9, .L8024E644
	nop
	li      $t0, 0x00160000
	sw      $t0, 0x0024($sp)
	lh      $t1, 0x0036($sp)
	addiu   $t2, $t1, -0x0001
	sltiu   $at, $t2, 0x0046
	beqz    $at, L8024E604
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(collision_803362F8)
	addu    $at, $at, $t2
	lw      $t2, %lo(collision_803362F8)($at)
	jr      $t2
	nop
.globl L8024E5A4
L8024E5A4:
	li      $t3, 0x00180000
	sw      $t3, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E5B4
L8024E5B4:
	li      $t4, 0x00190000
	sw      $t4, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E5C4
L8024E5C4:
	li      $t5, 0x001A0000
	sw      $t5, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E5D4
L8024E5D4:
	li      $t6, 0x001B0000
	sw      $t6, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E5E4
L8024E5E4:
	li      $t7, 0x001C0000
	sw      $t7, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E5F4
L8024E5F4:
	li      $t8, 0x001D0000
	sw      $t8, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E604
L8024E604:
	lh      $t9, 0x0036($sp)
	lh      $t0, 0x0034($sp)
	lw      $t2, 0x0024($sp)
	subu    $t1, $t9, $t0
	addu    $t3, $t2, $t1
	sw      $t3, 0x0024($sp)
	li      $t4, 0x0001
	lui     $at, %hi(collision_8032DA90)
	sb      $t4, %lo(collision_8032DA90)($at)
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0038($sp)
	jal     player_80252CF4
	lw      $a2, 0x0024($sp)
	b       .L8024E6D8
	nop
.L8024E644:
	b       .L8024E6C8
	nop
.L8024E64C:
	lw      $t5, 0x0038($sp)
	li.u    $at, 0x0C400201
	li.l    $at, 0x0C400201
	lw      $t6, 0x000C($t5)
	bne     $t6, $at, .L8024E6C8
	nop
	lui     $t7, %hi(collision_8032DA90)
	lbu     $t7, %lo(collision_8032DA90)($t7)
	li      $at, 0x0001
	bne     $t7, $at, .L8024E6C8
	nop
	lh      $t8, 0x0036($sp)
	li      $at, 0x0046
	bne     $t8, $at, .L8024E6C8
	nop
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0038($sp)
	sw      $t9, 0x0078($t0)
	lw      $t2, 0x0040($sp)
	lw      $t1, 0x0038($sp)
	sw      $t2, 0x0080($t1)
	lw      $a0, 0x0038($sp)
	jal     collision_8024D804
	lw      $a1, 0x0040($sp)
	move    $s0, $v0
	move    $a2, $s0
	lw      $a0, 0x0038($sp)
	jal     player_80252CF4
	li      $a1, 0x1331
	b       .L8024E6D8
	nop
.L8024E6C8:
	b       .L8024E6D8
	move    $v0, $0
	b       .L8024E6D8
	nop
.L8024E6D8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* int collision_8024E6EC(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024E6EC
collision_8024E6EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x1371
	lw      $t7, 0x000C($t6)
	beq     $t7, $at, .L8024E758
	nop
	jal     collision_8024C894
	lw      $a0, 0x0018($sp)
	lw      $t9, 0x0020($sp)
	li      $t8, 0x8000
	sw      $t8, 0x0134($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	sw      $t0, 0x0078($t1)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0018($sp)
	sw      $t2, 0x0080($t3)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1371
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024E768
	nop
.L8024E758:
	b       .L8024E768
	move    $v0, $0
	b       .L8024E768
	nop
.L8024E768:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int collision_8024E778(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024E778
collision_8024E778:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0018($sp)
	sw      $t6, 0x0078($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	sw      $t8, 0x0080($t9)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     collision_8024D578
	li      $a2, 0x40A00000
	b       .L8024E7C4
	move    $v0, $0
	b       .L8024E7C4
	nop
.L8024E7C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int collision_8024E7D4(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024E7D4
collision_8024E7D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	li.u    $at, 0x10020372
	li.l    $at, 0x10020372
	lw      $t9, 0x000C($t8)
	beq     $t9, $at, .L8024E8D0
	nop
	li.u    $at, 0x00020339
	li.l    $at, 0x00020339
	beq     $t9, $at, .L8024E8D0
	nop
	jal     collision_8024C894
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0x0000
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x8000
	sw      $t0, 0x0134($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	sw      $t2, 0x0078($t3)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0020($sp)
	sw      $t4, 0x0080($t5)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x0400
	sw      $t6, 0x010C($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($sp)
	lwc1    $f4, 0x0040($t8)
	lwc1    $f6, 0x00A4($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0110($t0)
	lw      $t1, 0x0020($sp)
	li.u    $a0, 0x2410C081
	li.l    $a0, 0x2410C081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t2, 0x0020($sp)
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	lw      $a2, 0x000C($t2)
	li.u    $a1, 0x10020372
	li.l    $a1, 0x10020372
	xor     $t3, $a2, $at
	sltiu   $t3, $t3, 0x0001
	move    $a2, $t3
	jal     player_80252CF4
	move    $a0, $t2
	b       .L8024E8E0
	nop
.L8024E8D0:
	b       .L8024E8E0
	move    $v0, $0
	b       .L8024E8E0
	nop
.L8024E8E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int collision_8024E8F0(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024E8F0
collision_8024E8F0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	li.u    $at, 0x300222E3
	li.l    $at, 0x300222E3
	lw      $t9, 0x000C($t8)
	beq     $t9, $at, .L8024E9B0
	nop
	jal     collision_8024C894
	lw      $a0, 0x0020($sp)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x8000
	sw      $t0, 0x0134($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	sw      $t2, 0x0078($t3)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0020($sp)
	sw      $t4, 0x0080($t5)
	mtc1    $0, $f4
	lw      $t6, 0x0020($sp)
	swc1    $f4, 0x0054($t6)
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x001C($sp)
	lwc1    $f6, 0x0040($t7)
	lwc1    $f8, 0x00A4($t8)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0110($t9)
	lw      $t0, 0x0020($sp)
	li.u    $a0, 0x2410C081
	li.l    $a0, 0x2410C081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	li.u    $a1, 0x300222E3
	li.l    $a1, 0x300222E3
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024E9C0
	nop
.L8024E9B0:
	b       .L8024E9C0
	move    $v0, $0
	b       .L8024E9C0
	nop
.L8024E9C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int collision_8024E9D0(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024E9D0
collision_8024E9D0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	li.u    $at, 0x010208B8
	li.l    $at, 0x010208B8
	lw      $t9, 0x000C($t8)
	beq     $t9, $at, .L8024EAB8
	nop
	jal     collision_8024C894
	lw      $a0, 0x0020($sp)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x8000
	sw      $t0, 0x0134($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	sw      $t2, 0x0078($t3)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0020($sp)
	sw      $t4, 0x0080($t5)
	lw      $t6, 0x0028($sp)
	lw      $t9, 0x0020($sp)
	li      $at, 0x8000
	lw      $t7, 0x00C8($t6)
	addu    $t8, $t7, $at
	sh      $t8, 0x002E($t9)
	lui     $at, %hi(collision_80336410)
	lwc1    $f4, %lo(collision_80336410)($at)
	lw      $t0, 0x0020($sp)
	swc1    $f4, 0x00C4($t0)
	li      $at, 0xC1C00000
	mtc1    $at, $f6
	lw      $t1, 0x0020($sp)
	swc1    $f6, 0x0054($t1)
	li      $at, 0x41400000
	mtc1    $at, $f8
	lw      $t2, 0x0020($sp)
	swc1    $f8, 0x004C($t2)
	lw      $t3, 0x0020($sp)
	li.u    $a0, 0x2410C081
	li.l    $a0, 0x2410C081
	lw      $a1, 0x0088($t3)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0x010208B8
	li.l    $a1, 0x010208B8
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024EAC8
	nop
.L8024EAB8:
	b       .L8024EAC8
	move    $v0, $0
	b       .L8024EAC8
	nop
.L8024EAC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int collision_8024EAD8(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024EAD8
collision_8024EAD8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	li.u    $t6, 0x010208B4
	li.l    $t6, 0x010208B4
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(collision_8033B272)
	lh      $t7, %lo(collision_8033B272)($t7)
	bnez    $t7, .L8024EC34
	nop
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0004($t8)
	andi    $t0, $t9, 0x0004
	bnez    $t0, .L8024EC34
	nop
	andi    $t1, $t9, 0x0002
	bnez    $t1, .L8024EC34
	nop
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0190($t2)
	andi    $t4, $t3, 0x0002
	bnez    $t4, .L8024EC34
	nop
	lw      $t6, 0x0028($sp)
	li      $t5, 0x8000
	sw      $t5, 0x0134($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0020($sp)
	sw      $t7, 0x0078($t8)
	lw      $t0, 0x0020($sp)
	lw      $t9, 0x000C($t0)
	andi    $t1, $t9, 0x6000
	bnez    $t1, .L8024EB94
	nop
	lh      $t2, 0x0076($t0)
	lwc1    $f8, 0x0040($t0)
	li      $at, 0x42480000
	mtc1    $t2, $f4
	mtc1    $at, $f16
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8024EBB4
	nop
.L8024EB94:
	lw      $t3, 0x0020($sp)
	li.u    $a0, 0x30038081
	li.l    $a0, 0x30038081
	lw      $a1, 0x0088($t3)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8024EC34
	nop
.L8024EBB4:
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x0088($t4)
	sw      $0, 0x0110($t5)
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li.u    $a0, 0x2414A081
	li.l    $a0, 0x2414A081
	lw      $a1, 0x0088($t6)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x000C($t7)
	andi    $t9, $t8, 0x0800
	beqz    $t9, .L8024EC1C
	nop
	lwc1    $f18, 0x004C($t7)
	mtc1    $0, $f4
	nop
	c.le.s  $f18, $f4
	nop
	bc1f    .L8024EC1C
	nop
	li.u    $t1, 0x010208B5
	li.l    $t1, 0x010208B5
	sw      $t1, 0x001C($sp)
.L8024EC1C:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80253178
	li      $a2, 0x0001
	b       .L8024EC44
	nop
.L8024EC34:
	b       .L8024EC44
	move    $v0, $0
	b       .L8024EC44
	nop
.L8024EC44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int collision_8024EC54(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024EC54
collision_8024EC54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(collision_8033B272)
	lh      $t6, %lo(collision_8033B272)($t6)
	bnez    $t6, .L8024ED40
	nop
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0002
	bnez    $t9, .L8024ED40
	nop
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	beqz    $t2, .L8024ECD0
	nop
	lw      $t4, 0x0030($sp)
	li      $t3, 0xC000
	sw      $t3, 0x0134($t4)
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x0458A081
	li.l    $a0, 0x0458A081
	lw      $a1, 0x0088($t5)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8024ED40
	nop
.L8024ECD0:
	lw      $t7, 0x0030($sp)
	li      $t6, 0xA000
	sw      $t6, 0x0134($t7)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0028($sp)
	sw      $t8, 0x0078($t9)
	jal     collision_8024D8B0
	lw      $a0, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x240AFF81
	li.l    $a0, 0x240AFF81
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     player_802521A0
	lw      $a0, 0x0028($sp)
	lw      $t1, 0x0030($sp)
	lw      $a0, 0x0028($sp)
	jal     collision_8024D2BC
	lw      $a1, 0x0180($t1)
	lw      $t2, 0x0030($sp)
	move    $s0, $v0
	move    $a1, $s0
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	lw      $a2, 0x0180($t2)
	b       .L8024ED70
	nop
.L8024ED40:
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0190($t3)
	andi    $t5, $t4, 0x0002
	bnez    $t5, .L8024ED60
	nop
	li      $t6, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t6, %lo(collision_8033B270)($at)
.L8024ED60:
	b       .L8024ED70
	move    $v0, $0
	b       .L8024ED70
	nop
.L8024ED70:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int collision_8024ED84(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024ED84
collision_8024ED84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L8024EDE8
	nop
	lw      $t0, 0x0020($sp)
	li      $t9, 0x8000
	sw      $t9, 0x0134($t0)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0018($sp)
	sw      $t1, 0x0078($t2)
	li.u    $a1, 0x00021317
	li.l    $a1, 0x00021317
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024EE34
	nop
	b       .L8024EE04
	nop
.L8024EDE8:
	lw      $a0, 0x0018($sp)
	jal     collision_8024D998
	lw      $a1, 0x0020($sp)
	beqz    $v0, .L8024EE04
	nop
	b       .L8024EE34
	li      $v0, 0x0001
.L8024EE04:
	lw      $t3, 0x0020($sp)
	lw      $t4, 0x0190($t3)
	andi    $t5, $t4, 0x0002
	bnez    $t5, .L8024EE24
	nop
	li      $t6, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t6, %lo(collision_8033B270)($at)
.L8024EE24:
	b       .L8024EE34
	li      $v0, 0x0001
	b       .L8024EE34
	nop
.L8024EE34:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int collision_8024EE44(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024EE44
collision_8024EE44:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L8024EE7C
	nop
	li      $t9, 0x0020
	b       .L8024EE8C
	sw      $t9, 0x0028($sp)
.L8024EE7C:
	lw      $a0, 0x0030($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0038($sp)
	sw      $v0, 0x0028($sp)
.L8024EE8C:
	lw      $t0, 0x0038($sp)
	lw      $t1, 0x0030($sp)
	sw      $t0, 0x0078($t1)
	lw      $t2, 0x0028($sp)
	andi    $t3, $t2, 0x007F
	beqz    $t3, .L8024EF18
	nop
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0038($sp)
	jal     collision_8024D578
	li      $a2, 0x40A00000
	li      $at, 0xC1800000
	mtc1    $at, $f4
	lw      $t4, 0x0030($sp)
	swc1    $f4, 0x0054($t4)
	lw      $t5, 0x0030($sp)
	lw      $t7, 0x0038($sp)
	lh      $t6, 0x002E($t5)
	sw      $t6, 0x00C8($t7)
	lw      $t8, 0x0038($sp)
	li      $at, 0x45540000
	mtc1    $at, $f6
	lwc1    $f8, 0x01F8($t8)
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t8)
	lw      $a0, 0x0038($sp)
	jal     collision_8024C51C
	lw      $a1, 0x0028($sp)
	lw      $a0, 0x0030($sp)
	jal     collision_8024D72C
	lw      $a1, 0x0028($sp)
	b       .L8024EFE4
	li      $v0, 0x0001
	b       .L8024EFD4
	nop
.L8024EF18:
	lui     $t9, %hi(collision_8033B272)
	lh      $t9, %lo(collision_8033B272)($t9)
	bnez    $t9, .L8024EFD4
	nop
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, .L8024EFD4
	nop
	lw      $t3, 0x0038($sp)
	lw      $t4, 0x0190($t3)
	andi    $t5, $t4, 0x0002
	bnez    $t5, .L8024EFD4
	nop
	lw      $t7, 0x0038($sp)
	li      $t6, 0x8000
	sw      $t6, 0x0134($t7)
	lw      $t9, 0x0030($sp)
	li      $t8, 0x0002
	sh      $t8, 0x0026($t9)
	jal     player_802521A0
	lw      $a0, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	li.u    $a0, 0x24098081
	li.l    $a0, 0x24098081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t1, 0x0030($sp)
	li.u    $a0, 0x50178081
	li.l    $a0, 0x50178081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0038($sp)
	jal     collision_8024D578
	li      $a2, 0x40A00000
	jal     collision_8024CE08
	lw      $a0, 0x0030($sp)
	move    $s0, $v0
	move    $a1, $s0
	lw      $a0, 0x0030($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8024EFE4
	li      $v0, 0x0001
.L8024EFD4:
	b       .L8024EFE4
	move    $v0, $0
	b       .L8024EFE4
	nop
.L8024EFE4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* int collision_8024EFF8(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024EFF8
collision_8024EFF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $t6, %hi(collision_8033B272)
	lh      $t6, %lo(collision_8033B272)($t6)
	bnez    $t6, .L8024F0F4
	nop
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0002
	bnez    $t9, .L8024F0F4
	nop
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0190($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, .L8024F0F4
	nop
	lw      $t3, 0x0020($sp)
	li.u    $at, 0x00300800
	li.l    $at, 0x00300800
	lw      $t4, 0x000C($t3)
	and     $t5, $t4, $at
	sltiu   $t6, $t5, 0x0001
	sw      $t6, 0x001C($sp)
	lw      $t8, 0x0028($sp)
	li      $t7, 0xA000
	sw      $t7, 0x0134($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0020($sp)
	sw      $t9, 0x0078($t0)
	jal     collision_8024D8B0
	lw      $a0, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li.u    $a0, 0x240AFF81
	li.l    $a0, 0x240AFF81
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x000C($t2)
	andi    $t4, $t3, 0x6000
	beqz    $t4, .L8024F0D0
	nop
	li.u    $a1, 0x300222C8
	li.l    $a1, 0x300222C8
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8024F124
	nop
	b       .L8024F0F4
	nop
.L8024F0D0:
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0x00020338
	li.l    $a1, 0x00020338
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	lw      $a2, 0x001C($sp)
	b       .L8024F124
	nop
.L8024F0F4:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0190($t5)
	andi    $t7, $t6, 0x0002
	bnez    $t7, .L8024F114
	nop
	li      $t8, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t8, %lo(collision_8033B270)($at)
.L8024F114:
	b       .L8024F124
	move    $v0, $0
	b       .L8024F124
	nop
.L8024F124:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024F134:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	lw      $t6, 0x0190($a2)
	andi    $t7, $t6, 0x0002
	bnez    $t7, .L8024F158
	nop
	li      $t8, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t8, %lo(collision_8033B270)($at)
.L8024F158:
	b       .L8024F168
	move    $v0, $0
	b       .L8024F168
	nop
.L8024F168:
	jr      $ra
	nop

/* int collision_8024F170(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024F170
collision_8024F170:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $a0, 0x0018($sp)
	jal     collision_8024D998
	lw      $a1, 0x0020($sp)
	beqz    $v0, .L8024F1A0
	nop
	b       .L8024F1D0
	li      $v0, 0x0001
.L8024F1A0:
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x0002
	bnez    $t8, .L8024F1C0
	nop
	li      $t9, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t9, %lo(collision_8033B270)($at)
.L8024F1C0:
	b       .L8024F1D0
	move    $v0, $0
	b       .L8024F1D0
	nop
.L8024F1D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int collision_8024F1E0(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024F1E0
collision_8024F1E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L8024F214
	nop
	li      $t9, 0x0020
	b       .L8024F224
	sw      $t9, 0x0018($sp)
.L8024F214:
	lw      $a0, 0x0020($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x0018($sp)
.L8024F224:
	lw      $t0, 0x0018($sp)
	andi    $t1, $t0, 0x00FF
	beqz    $t1, .L8024F2F8
	nop
	lw      $a0, 0x0028($sp)
	jal     collision_8024C51C
	lw      $a1, 0x0018($sp)
	lw      $a0, 0x0020($sp)
	jal     collision_8024D72C
	lw      $a1, 0x0018($sp)
	lw      $t2, 0x0018($sp)
	andi    $t3, $t2, 0x0080
	beqz    $t3, .L8024F268
	nop
	lw      $a0, 0x0020($sp)
	jal     collision_8024D130
	lw      $a1, 0x0028($sp)
.L8024F268:
	lw      $t4, 0x0018($sp)
	andi    $t5, $t4, 0x0040
	beqz    $t5, .L8024F2F0
	nop
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x0080
	beqz    $t8, .L8024F2E0
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D0B4
	li      $a2, 0x42A00000
	jal     collision_8024DAAC
	lw      $a0, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	li.u    $a0, 0x24348081
	li.l    $a0, 0x24348081
	lw      $a1, 0x0088($t9)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	li.u    $a1, 0x108008A4
	li.l    $a1, 0x108008A4
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8024F344
	nop
	b       .L8024F2F0
	nop
.L8024F2E0:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D0B4
	li      $a2, 0x41F00000
.L8024F2F0:
	b       .L8024F314
	nop
.L8024F2F8:
	lw      $a0, 0x0020($sp)
	jal     collision_8024D998
	lw      $a1, 0x0028($sp)
	beqz    $v0, .L8024F314
	nop
	b       .L8024F344
	li      $v0, 0x0001
.L8024F314:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0190($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, .L8024F334
	nop
	li      $t3, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t3, %lo(collision_8033B270)($at)
.L8024F334:
	b       .L8024F344
	move    $v0, $0
	b       .L8024F344
	nop
.L8024F344:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int collision_8024F354(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024F354
collision_8024F354:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L8024F388
	nop
	li      $t9, 0x0020
	b       .L8024F398
	sw      $t9, 0x001C($sp)
.L8024F388:
	lw      $a0, 0x0020($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x001C($sp)
.L8024F398:
	lw      $t0, 0x001C($sp)
	andi    $t1, $t0, 0x007F
	beqz    $t1, .L8024F450
	nop
	lw      $a0, 0x0028($sp)
	jal     collision_8024C51C
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	jal     collision_8024D72C
	lw      $a1, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	andi    $t3, $t2, 0x0040
	beqz    $t3, .L8024F448
	nop
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0190($t4)
	andi    $t6, $t5, 0x0080
	beqz    $t6, .L8024F438
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D0B4
	li      $a2, 0x42A00000
	jal     collision_8024DAAC
	lw      $a0, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	li.u    $a0, 0x24348081
	li.l    $a0, 0x24348081
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	li.u    $a1, 0x108008A4
	li.l    $a1, 0x108008A4
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8024F49C
	nop
	b       .L8024F448
	nop
.L8024F438:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D0B4
	li      $a2, 0x41F00000
.L8024F448:
	b       .L8024F46C
	nop
.L8024F450:
	lw      $a0, 0x0020($sp)
	jal     collision_8024D998
	lw      $a1, 0x0028($sp)
	beqz    $v0, .L8024F46C
	nop
	b       .L8024F49C
	li      $v0, 0x0001
.L8024F46C:
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0190($t8)
	andi    $t0, $t9, 0x0002
	bnez    $t0, .L8024F48C
	nop
	li      $t1, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t1, %lo(collision_8033B270)($at)
.L8024F48C:
	b       .L8024F49C
	move    $v0, $0
	b       .L8024F49C
	nop
.L8024F49C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int collision_8024F4AC(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024F4AC
collision_8024F4AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	andi    $t7, $t6, 0x0002
	beqz    $t7, .L8024F500
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0xC001
	sw      $t8, 0x0134($t9)
	lw      $a0, 0x0020($sp)
	jal     collision_8024D72C
	lw      $a1, 0x001C($sp)
	b       .L8024F51C
	nop
.L8024F500:
	lw      $a0, 0x0020($sp)
	jal     collision_8024D998
	lw      $a1, 0x0028($sp)
	beqz    $v0, .L8024F51C
	nop
	b       .L8024F54C
	li      $v0, 0x0001
.L8024F51C:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0190($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, .L8024F53C
	nop
	li      $t3, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t3, %lo(collision_8033B270)($at)
.L8024F53C:
	b       .L8024F54C
	move    $v0, $0
	b       .L8024F54C
	nop
.L8024F54C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int collision_8024F55C(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024F55C
collision_8024F55C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $a0, 0x0018($sp)
	jal     collision_8024D998
	lw      $a1, 0x0020($sp)
	beqz    $v0, .L8024F58C
	nop
	b       .L8024F5BC
	li      $v0, 0x0001
.L8024F58C:
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x0002
	bnez    $t8, .L8024F5AC
	nop
	li      $t9, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t9, %lo(collision_8033B270)($at)
.L8024F5AC:
	b       .L8024F5BC
	move    $v0, $0
	b       .L8024F5BC
	nop
.L8024F5BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int collision_8024F5CC(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024F5CC
collision_8024F5CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0030($sp)
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	andi    $t7, $t6, 0x008F
	beqz    $t7, .L8024F680
	nop
	lw      $a0, 0x0030($sp)
	jal     collision_8024C51C
	lw      $a1, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	jal     collision_8024D72C
	lw      $a1, 0x0024($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0028($sp)
	sw      $t8, 0x0078($t9)
	lw      $s0, 0x0024($sp)
	li      $at, 0x0040
	beq     $s0, $at, .L8024F64C
	nop
	li      $at, 0x0080
	beq     $s0, $at, .L8024F664
	nop
	b       .L8024F678
	nop
.L8024F64C:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0030($sp)
	jal     collision_8024D0B4
	li      $a2, 0x41F00000
	b       .L8024F678
	nop
.L8024F664:
	lw      $a0, 0x0028($sp)
	jal     collision_8024D130
	lw      $a1, 0x0030($sp)
	b       .L8024F678
	nop
.L8024F678:
	b       .L8024F690
	li      $v0, 0x0001
.L8024F680:
	b       .L8024F690
	move    $v0, $0
	b       .L8024F690
	nop
.L8024F690:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int collision_8024F6A4(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024F6A4
collision_8024F6A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x00010000
	lw      $t7, 0x000C($t6)
	and     $t8, $t7, $at
	bnez    $t8, .L8024F788
	nop
	lw      $a0, 0x0020($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $at, 0x0040
	beq     $t9, $at, .L8024F714
	nop
	lw      $t0, 0x0020($sp)
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	lw      $t1, 0x000C($t0)
	beq     $t1, $at, .L8024F714
	nop
	li      $at, 0x0442
	bne     $t1, $at, .L8024F778
	nop
.L8024F714:
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	sw      $t2, 0x0078($t3)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0020($sp)
	sw      $t4, 0x0080($t5)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0020($sp)
	sw      $t6, 0x0084($t7)
	lw      $a0, 0x0028($sp)
	jal     collision_8024C51C
	lw      $a1, 0x001C($sp)
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	jal     bgm_shell_play
	nop
	jal     collision_8024C6C0
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0x20810446
	li.l    $a1, 0x20810446
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024F798
	nop
.L8024F778:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D578
	li      $a2, 0x40000000
.L8024F788:
	b       .L8024F798
	move    $v0, $0
	b       .L8024F798
	nop
.L8024F798:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024F7A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li.u    $at, 0x00820800
	li.l    $at, 0x00820800
	lw      $t7, 0x000C($t6)
	and     $t8, $t7, $at
	beqz    $t8, .L8024F7E8
	nop
	lui     $t9, %hi(collision_8033B272)
	lh      $t9, %lo(collision_8033B272)($t9)
	bnez    $t9, .L8024F88C
	nop
.L8024F7E8:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0190($t0)
	andi    $t2, $t1, 0x0004
	beqz    $t2, .L8024F88C
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     collision_8024C0B8
	li      $a2, 0x2AAA
	beqz    $v0, .L8024F88C
	nop
	jal     collision_8024C894
	lw      $a0, 0x0018($sp)
	lw      $t4, 0x0020($sp)
	li      $t3, 0x8800
	sw      $t3, 0x0134($t4)
	lw      $t5, 0x0020($sp)
	lw      $t7, 0x0018($sp)
	lw      $t6, 0x00C8($t5)
	sh      $t6, 0x002E($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	sw      $t8, 0x0078($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	sw      $t0, 0x0080($t1)
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x240B8081
	li.l    $a0, 0x240B8081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	li.u    $a1, 0x00020370
	li.l    $a1, 0x00020370
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024F8AC
	nop
.L8024F88C:
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     collision_8024D578
	li      $a2, 0xC0A00000
	b       .L8024F8AC
	move    $v0, $0
	b       .L8024F8AC
	nop
.L8024F8AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int collision_8024F8BC(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024F8BC
collision_8024F8BC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x01FF
	sw      $t8, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	slti    $at, $t9, 0x0080
	bnez    $at, .L8024FA40
	nop
	slti    $at, $t9, 0x00A0
	beqz    $at, .L8024FA40
	nop
	lw      $t0, 0x0028($sp)
	li      $at, 0x00100000
	lw      $t1, 0x0010($t0)
	and     $t2, $t1, $at
	beqz    $t2, .L8024F924
	nop
	lw      $t3, 0x0080($t0)
	lw      $t4, 0x0030($sp)
	beq     $t3, $t4, .L8024FA40
	nop
.L8024F924:
	lw      $t5, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t5)
	move    $t6, $0
	c.le.s  $f4, $f6
	nop
	bc1f    .L8024F94C
	nop
	li      $t6, 0x0001
.L8024F94C:
	sw      $t6, 0x0020($sp)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0088($t7)
	sw      $t8, 0x001C($sp)
	jal     collision_8024C894
	lw      $a0, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	lw      $t1, 0x0028($sp)
	sw      $t9, 0x0078($t1)
	lw      $t2, 0x0030($sp)
	lw      $t0, 0x0028($sp)
	sw      $t2, 0x0080($t0)
	mtc1    $0, $f8
	lw      $t3, 0x0028($sp)
	swc1    $f8, 0x004C($t3)
	mtc1    $0, $f10
	lw      $t4, 0x0028($sp)
	swc1    $f10, 0x0054($t4)
	lw      $t5, 0x001C($sp)
	sw      $0, 0x0108($t5)
	lw      $t6, 0x001C($sp)
	sw      $0, 0x010C($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x001C($sp)
	lwc1    $f16, 0x0040($t7)
	lwc1    $f18, 0x00A4($t8)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0110($t9)
	lw      $t1, 0x0020($sp)
	beqz    $t1, .L8024F9E8
	nop
	li.u    $a1, 0x00100341
	li.l    $a1, 0x00100341
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024FA50
	nop
.L8024F9E8:
	lw      $t2, 0x0028($sp)
	li      $at, 0x43800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t2)
	li      $at, 0x45800000
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	lw      $t4, 0x001C($sp)
	add.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t3, $f4
	nop
	sw      $t3, 0x010C($t4)
	jal     collision_8024DAAC
	lw      $a0, 0x0028($sp)
	li.u    $a1, 0x00100342
	li.l    $a1, 0x00100342
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024FA50
	nop
.L8024FA40:
	b       .L8024FA50
	move    $v0, $0
	b       .L8024FA50
	nop
.L8024FA50:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int collision_8024FA60(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024FA60
collision_8024FA60:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x01FF
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	slti    $at, $t9, 0x0080
	bnez    $at, .L8024FB10
	nop
	slti    $at, $t9, 0x0098
	beqz    $at, .L8024FB10
	nop
	lw      $t1, 0x0020($sp)
	lui     $t0, %hi(gfx_frame)
	lw      $t0, %lo(gfx_frame)($t0)
	lw      $t2, 0x0080($t1)
	lw      $t3, 0x0110($t2)
	subu    $t4, $t0, $t3
	sltiu   $at, $t4, 0x001F
	bnez    $at, .L8024FB10
	nop
	jal     collision_8024C894
	lw      $a0, 0x0020($sp)
	lw      $t6, 0x0028($sp)
	li      $t5, 0x0001
	sw      $t5, 0x0134($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0020($sp)
	sw      $t7, 0x0078($t8)
	lw      $t9, 0x0028($sp)
	lw      $t1, 0x0020($sp)
	sw      $t9, 0x0080($t1)
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x04A8
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024FB20
	nop
.L8024FB10:
	b       .L8024FB20
	move    $v0, $0
	b       .L8024FB20
	nop
.L8024FB20:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int collision_8024FB30(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024FB30
collision_8024FB30:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	jal     collision_8024BFF0
	lw      $a0, 0x0038($sp)
	sw      $v0, 0x002C($sp)
	sh      $0, 0x002A($sp)
	sh      $0, 0x0028($sp)
	lw      $t6, 0x0030($sp)
	li.u    $at, 0x010208B8
	li.l    $at, 0x010208B8
	lw      $t7, 0x000C($t6)
	beq     $t7, $at, .L8024FD08
	nop
	lw      $t8, 0x002C($sp)
	beqz    $t8, .L8024FD08
	nop
	lw      $t9, 0x0038($sp)
	lw      $t0, 0x0030($sp)
	sw      $t9, 0x0078($t0)
	lw      $t2, 0x0038($sp)
	li      $t1, 0x8000
	sw      $t1, 0x0134($t2)
	lw      $t3, 0x0030($sp)
	li      $at, -0x0031
	lw      $t4, 0x0004($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x0004($t3)
	lw      $t6, 0x0030($sp)
	lw      $t8, 0x002C($sp)
	lw      $t7, 0x0004($t6)
	or      $t9, $t7, $t8
	sw      $t9, 0x0004($t6)
	lw      $s0, 0x002C($sp)
	li      $at, 0x0002
	beq     $s0, $at, .L8024FBF0
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L8024FC08
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L8024FC20
	nop
	b       .L8024FC38
	nop
.L8024FBF0:
	li      $t0, 0x0258
	sh      $t0, 0x0028($sp)
	li      $t1, 0x040E
	sh      $t1, 0x002A($sp)
	b       .L8024FC38
	nop
.L8024FC08:
	li      $t2, 0x0258
	sh      $t2, 0x0028($sp)
	li      $t4, 0x040F
	sh      $t4, 0x002A($sp)
	b       .L8024FC38
	nop
.L8024FC20:
	li      $t5, 0x0708
	sh      $t5, 0x0028($sp)
	li      $t3, 0x040E
	sh      $t3, 0x002A($sp)
	b       .L8024FC38
	nop
.L8024FC38:
	lw      $t8, 0x0030($sp)
	lhu     $t7, 0x0028($sp)
	lhu     $t9, 0x00B6($t8)
	slt     $at, $t9, $t7
	beqz    $at, .L8024FC5C
	nop
	lhu     $t6, 0x0028($sp)
	lw      $t0, 0x0030($sp)
	sh      $t6, 0x00B6($t0)
.L8024FC5C:
	lw      $t1, 0x0030($sp)
	li      $at, 0x00400000
	lw      $t2, 0x000C($t1)
	and     $t4, $t2, $at
	bnez    $t4, .L8024FC84
	nop
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	bne     $t2, $at, .L8024FCAC
	nop
.L8024FC84:
	lw      $t5, 0x0030($sp)
	lw      $t3, 0x0004($t5)
	ori     $t8, $t3, 0x0020
	sw      $t8, 0x0004($t5)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x133D
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024FCBC
	nop
.L8024FCAC:
	lw      $t7, 0x0030($sp)
	lw      $t9, 0x0004($t7)
	ori     $t6, $t9, 0x0010
	sw      $t6, 0x0004($t7)
.L8024FCBC:
	lw      $t0, 0x0030($sp)
	li.u    $a0, 0x701EFF81
	li.l    $a0, 0x701EFF81
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t1, 0x0030($sp)
	li.u    $a0, 0x240C8081
	li.l    $a0, 0x240C8081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lhu     $t4, 0x002A($sp)
	beqz    $t4, .L8024FD00
	nop
	jal     bgm_special_play
	lhu     $a0, 0x002A($sp)
.L8024FD00:
	b       .L8024FD18
	li      $v0, 0x0001
.L8024FD08:
	b       .L8024FD18
	move    $v0, $0
	b       .L8024FD18
	nop
.L8024FD18:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* int collision_8024FD2C(struct player *pl, u32 flag, struct object *obj) */
.globl collision_8024FD2C
collision_8024FD2C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $a0, 0x0013
	jal     virtual_to_segment
	lw      $a1, 0x020C($t6)
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0100
	beqz    $t9, .L8024FDA8
	nop
	lw      $a0, 0x0020($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	andi    $t1, $t0, 0x000C
	beqz    $t1, .L8024FDA8
	nop
	lw      $a0, 0x0028($sp)
	jal     collision_8024C51C
	lw      $a1, 0x0018($sp)
	lw      $a0, 0x0020($sp)
	jal     collision_8024D72C
	lw      $a1, 0x0018($sp)
	b       .L8024FE5C
	move    $v0, $0
.L8024FDA8:
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0190($t2)
	andi    $t4, $t3, 0x0004
	beqz    $t4, .L8024FDDC
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     collision_8024F7A8
	lw      $a2, 0x0028($sp)
	beqz    $v0, .L8024FDDC
	nop
	b       .L8024FE5C
	li      $v0, 0x0001
.L8024FDDC:
	lw      $a0, 0x0020($sp)
	jal     collision_8024CB58
	lw      $a1, 0x0028($sp)
	beqz    $v0, .L8024FE28
	nop
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0190($t5)
	andi    $t7, $t6, 0x0200
	bnez    $t7, .L8024FE28
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0020($sp)
	sw      $t8, 0x0078($t9)
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0002($t0)
	ori     $t2, $t1, 0x0800
	sh      $t2, 0x0002($t0)
	b       .L8024FE5C
	li      $v0, 0x0001
.L8024FE28:
	lw      $t4, 0x001C($sp)
	la.u    $t3, o_13001850
	la.l    $t3, o_13001850
	beq     $t3, $t4, .L8024FE4C
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D578
	li      $a2, 0xC0A00000
.L8024FE4C:
	b       .L8024FE5C
	move    $v0, $0
	b       .L8024FE5C
	nop
.L8024FE5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024FE6C:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x000C($a0)
	li      $at, 0x00400000
	and     $t7, $t6, $at
	beqz    $t7, .L8024FE8C
	nop
	b       .L8024FEFC
	li      $v0, 0x0001
.L8024FE8C:
	lw      $t8, 0x000C($a0)
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	bne     $t8, $at, .L8024FEEC
	nop
	beqz    $a1, .L8024FEB0
	nop
	b       .L8024FEFC
	li      $v0, 0x0001
.L8024FEB0:
	lw      $t9, 0x0088($a0)
	lh      $t0, 0x0038($t9)
	sh      $t0, 0x0006($sp)
	lh      $t1, 0x0006($sp)
	li      $at, 0x0080
	beq     $t1, $at, .L8024FEE4
	nop
	li      $at, 0x007F
	beq     $t1, $at, .L8024FEE4
	nop
	li      $at, 0x006C
	bne     $t1, $at, .L8024FEEC
	nop
.L8024FEE4:
	b       .L8024FEFC
	li      $v0, 0x0001
.L8024FEEC:
	b       .L8024FEFC
	move    $v0, $0
	b       .L8024FEFC
	nop
.L8024FEFC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

collision_8024FF04:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2002
	beqz    $t8, .L80250078
	nop
	move    $a0, $t6
	jal     collision_8024FE6C
	move    $a1, $0
	beqz    $v0, .L80250078
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     collision_8024C0B8
	li      $a2, 0x4000
	beqz    $v0, .L80250078
	nop
	lw      $t9, 0x002C($sp)
	lw      $t4, 0x0028($sp)
	li      $at, 0x8000
	lw      $t0, 0x00C8($t9)
	lh      $t5, 0x002E($t4)
	addu    $t1, $t0, $at
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	subu    $t7, $t3, $t5
	sh      $t7, 0x0026($sp)
	lh      $t8, 0x0026($sp)
	slti    $at, $t8, -0x4000
	bnez    $at, .L80250078
	nop
	slti    $at, $t8, 0x4001
	beqz    $at, .L80250078
	nop
	lw      $t6, 0x002C($sp)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x00CA($t6)
	lwc1    $f10, 0x00A0($t6)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42D20000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0020($sp)
	lw      $t2, 0x002C($sp)
	lui     $at, %hi(math_cos)
	lhu     $t4, 0x00CA($t2)
	lwc1    $f8, 0x00A8($t2)
	sra     $t3, $t4, 4
	sll     $t5, $t3, 2
	addu    $at, $at, $t5
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x42D20000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lw      $t8, 0x0028($sp)
	lh      $t7, 0x0026($sp)
	lw      $t9, 0x0088($t8)
	sw      $t7, 0x0108($t9)
	lw      $t0, 0x0028($sp)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x003C($t0)
	lw      $t1, 0x0088($t0)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x010C($t1)
	lw      $t6, 0x0028($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0044($t6)
	lw      $t4, 0x0088($t6)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0110($t4)
	lw      $t3, 0x002C($sp)
	lw      $t5, 0x0028($sp)
	sw      $t3, 0x0078($t5)
	lw      $t2, 0x002C($sp)
	lw      $t8, 0x0028($sp)
	sw      $t2, 0x0080($t8)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x1308
	jal     player_80252CF4
	move    $a2, $0
	b       .L80250088
	nop
.L80250078:
	b       .L80250088
	move    $v0, $0
	b       .L80250088
	nop
.L80250088:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

collision_80250098:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2002
	beqz    $t8, .L80250164
	nop
	move    $a0, $t6
	jal     collision_8024FE6C
	li      $a1, 0x0001
	beqz    $v0, .L80250164
	nop
	lw      $a0, 0x0028($sp)
	jal     collision_8024C16C
	lw      $a1, 0x002C($sp)
	lw      $t0, 0x0028($sp)
	sll     $s0, $v0, 16
	sra     $t9, $s0, 16
	lh      $t1, 0x002E($t0)
	move    $s0, $t9
	subu    $t2, $s0, $t1
	sh      $t2, 0x0026($sp)
	lh      $t3, 0x0026($sp)
	slti    $at, $t3, -0x4000
	bnez    $at, .L80250164
	nop
	slti    $at, $t3, 0x4001
	beqz    $at, .L80250164
	nop
	lw      $t5, 0x002C($sp)
	li      $t4, 0x8000
	sw      $t4, 0x0134($t5)
	lw      $t7, 0x002C($sp)
	lw      $t8, 0x0028($sp)
	sw      $t7, 0x0078($t8)
	lw      $t6, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	sw      $t6, 0x0080($t9)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     collision_8024D578
	li      $a2, 0xC1200000
	lw      $a0, 0x0028($sp)
	li      $a1, 0x130A
	jal     player_80252CF4
	move    $a2, $0
	b       .L80250184
	nop
.L80250164:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     collision_8024D578
	li      $a2, 0xC1200000
	b       .L80250184
	move    $v0, $0
	b       .L80250184
	nop
.L80250184:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int collision_80250198(struct player *pl, u32 flag, struct object *obj) */
.globl collision_80250198
collision_80250198:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x1000
	beqz    $t8, .L802501D8
	nop
	lw      $a0, 0x0020($sp)
	jal     collision_8024FF04
	lw      $a1, 0x0028($sp)
	b       .L80250210
	sw      $v0, 0x001C($sp)
.L802501D8:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0190($t9)
	andi    $t1, $t0, 0x4000
	beqz    $t1, .L80250200
	nop
	lw      $a0, 0x0020($sp)
	jal     collision_80250098
	lw      $a1, 0x0028($sp)
	b       .L80250210
	sw      $v0, 0x001C($sp)
.L80250200:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D578
	li      $a2, 0x40000000
.L80250210:
	b       .L80250220
	lw      $v0, 0x001C($sp)
	b       .L80250220
	nop
.L80250220:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_80250230:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x00700000
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	beqz    $t8, .L802503D8
	nop
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(math_sin)
	addiu   $t3, $sp, 0x001C
	lhu     $t0, 0x002E($t9)
	lwc1    $f10, 0x003C($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42480000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0000($t3)
	lw      $t4, 0x0028($sp)
	lui     $at, %hi(math_cos)
	addiu   $t8, $sp, 0x001C
	lhu     $t5, 0x002E($t4)
	lwc1    $f8, 0x0044($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x42480000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0008($t8)
	lw      $t0, 0x0028($sp)
	addiu   $t1, $sp, 0x001C
	lwc1    $f16, 0x0040($t0)
	swc1    $f16, 0x0004($t1)
	addiu   $a0, $sp, 0x001C
	li      $a1, 0x42A00000
	jal     player_80251A48
	li      $a2, 0x40A00000
	beqz    $v0, .L802503D8
	nop
	lw      $t2, 0x0028($sp)
	li.u    $at, 0x00800457
	li.l    $at, 0x00800457
	lw      $t9, 0x000C($t2)
	bne     $t9, $at, .L80250328
	nop
	lwc1    $f18, 0x0054($t2)
	mtc1    $0, $f4
	nop
	c.le.s  $f4, $f18
	nop
	bc1f    .L8025038C
	nop
.L80250328:
	lw      $t3, 0x0028($sp)
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	lw      $t5, 0x000C($t3)
	bne     $t5, $at, .L80250350
	nop
	lw      $t7, 0x0028($sp)
	li.u    $t6, 0x00800457
	li.l    $t6, 0x00800457
	sw      $t6, 0x000C($t7)
.L80250350:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0xC2400000
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x0444B081
	li.l    $a0, 0x0444B081
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t8, 0x0028($sp)
	li      $at, 0x00040000
	lw      $t0, 0x0008($t8)
	or      $t1, $t0, $at
	b       .L802503D8
	sw      $t1, 0x0008($t8)
.L8025038C:
	lw      $t9, 0x0028($sp)
	lw      $t2, 0x000C($t9)
	andi    $t3, $t2, 0x0800
	beqz    $t3, .L802503D8
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x0444B081
	li.l    $a0, 0x0444B081
	lw      $a1, 0x0088($t5)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t6, 0x0028($sp)
	li      $at, 0x00040000
	lw      $t7, 0x0008($t6)
	or      $t4, $t7, $at
	sw      $t4, 0x0008($t6)
.L802503D8:
	b       .L802503E0
	nop
.L802503E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_802503F0
collision_802503F0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $at, %hi(collision_8033B270)
	sb      $0, %lo(collision_8033B270)($at)
	lw      $t6, 0x0030($sp)
	li      $at, 0x00020000
	lw      $s0, 0x000C($t6)
	and     $t7, $s0, $at
	move    $s0, $t7
	sltu    $t8, $0, $s0
	move    $s0, $t8
	bnez    $s0, .L80250438
	nop
	lh      $s0, 0x0026($t6)
	sltu    $t9, $0, $s0
	move    $s0, $t9
.L80250438:
	lui     $at, %hi(collision_8033B272)
	sh      $s0, %lo(collision_8033B272)($at)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x000C($t0)
	andi    $t2, $t1, 0x1000
	bnez    $t2, .L8025051C
	nop
	lw      $t3, 0x00A4($t0)
	beqz    $t3, .L8025051C
	nop
	sw      $0, 0x002C($sp)
.L80250464:
	lw      $t4, 0x002C($sp)
	lui     $t7, %hi(collision_data+0x00)
	sll     $t5, $t4, 3
	addu    $t7, $t7, $t5
	lw      $t7, %lo(collision_data+0x00)($t7)
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0028($sp)
	lw      $t6, 0x00A4($t8)
	and     $t1, $t6, $t9
	beqz    $t1, .L80250508
	nop
	lw      $a0, 0x0030($sp)
	jal     collision_8024CBFC
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0028($sp)
	lw      $t0, 0x00A4($t2)
	nor     $t4, $t3, $0
	and     $t5, $t0, $t4
	sw      $t5, 0x00A4($t2)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0134($t7)
	andi    $t6, $t8, 0x8000
	bnez    $t6, .L80250508
	nop
	lw      $t9, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0028($sp)
	sll     $t1, $t9, 3
	lui     $t9, %hi(collision_data+0x04)
	addu    $t9, $t9, $t1
	lw      $t9, %lo(collision_data+0x04)($t9)
	lw      $a2, 0x0024($sp)
	jalr    $t9
	nop
	beqz    $v0, .L80250508
	nop
	b       .L8025051C
	nop
.L80250508:
	lw      $t3, 0x002C($sp)
	addiu   $t0, $t3, 0x0001
	slti    $at, $t0, 0x001F
	bnez    $at, .L80250464
	sw      $t0, 0x002C($sp)
.L8025051C:
	lw      $t4, 0x0030($sp)
	lh      $t5, 0x0026($t4)
	blez    $t5, .L8025054C
	nop
	lui     $t2, %hi(collision_8033B270)
	lbu     $t2, %lo(collision_8033B270)($t2)
	bnez    $t2, .L8025054C
	nop
	lw      $t7, 0x0030($sp)
	lh      $t8, 0x0026($t7)
	addiu   $t6, $t8, -0x0001
	sh      $t6, 0x0026($t7)
.L8025054C:
	jal     collision_80250230
	lw      $a0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	li.u    $at, 0xFF8FFFFF
	li.l    $at, 0xFF8FFFFF
	lw      $t9, 0x0004($t1)
	and     $t3, $t9, $at
	sw      $t3, 0x0004($t1)
	lw      $t0, 0x0030($sp)
	lw      $t4, 0x0088($t0)
	lw      $t5, 0x0070($t4)
	andi    $t2, $t5, 0x0804
	bnez    $t2, .L8025058C
	nop
	lui     $at, %hi(collision_8032DA90)
	sb      $0, %lo(collision_8032DA90)($at)
.L8025058C:
	lw      $t8, 0x0030($sp)
	lw      $t6, 0x0088($t8)
	lw      $t7, 0x0070($t6)
	andi    $t9, $t7, 0x2000
	bnez    $t9, .L802505AC
	nop
	lui     $at, %hi(collision_8032DA94)
	sb      $0, %lo(collision_8032DA94)($at)
.L802505AC:
	b       .L802505B4
	nop
.L802505B4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

collision_802505C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x45000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0070($t6)
	lwc1    $f4, 0x0040($t6)
	add.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    .L80250644
	nop
	lw      $a0, 0x0018($sp)
	jal     game_8024A9CC
	li      $a1, 0x0013
	li      $at, 0x0014
	bne     $v0, $at, .L80250644
	nop
	lw      $t7, 0x0018($sp)
	li      $at, 0x00040000
	lw      $t8, 0x0004($t7)
	and     $t9, $t8, $at
	bnez    $t9, .L80250644
	nop
	lw      $t0, 0x0018($sp)
	li.u    $a0, 0x2410C081
	li.l    $a0, 0x2410C081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80250644:
	b       .L8025064C
	nop
.L8025064C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_8025065C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x00010000
	lw      $t7, 0x000C($t6)
	and     $t8, $t7, $at
	bnez    $t8, .L80250708
	nop
	li      $at, 0x41200000
	mtc1    $at, $f8
	lwc1    $f6, 0x0070($t6)
	lwc1    $f4, 0x0040($t6)
	add.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    .L80250708
	nop
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0004($t9)
	andi    $t1, $t0, 0x0004
	bnez    $t1, .L802506EC
	nop
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0004($t2)
	andi    $t4, $t3, 0x0010
	beqz    $t4, .L802506D8
	nop
	b       .L802506DC
	li      $s0, 0x000C
.L802506D8:
	li      $s0, 0x0012
.L802506DC:
	lw      $t5, 0x0028($sp)
	lbu     $t7, 0x00B2($t5)
	addu    $t8, $t7, $s0
	sb      $t8, 0x00B2($t5)
.L802506EC:
	jal     player_802521A0
	lw      $a0, 0x0028($sp)
	li.u    $a1, 0x010208B7
	li.l    $a1, 0x010208B7
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
.L80250708:
	b       .L80250710
	nop
.L80250710:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

collision_80250724:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(hud+0x0A)
	lh      $t6, %lo(hud+0x0A)($t6)
	andi    $t7, $t6, 0x0040
	bnez    $t7, .L80250760
	nop
	jal     game_timer
	move    $a0, $0
	jal     game_timer
	li      $a0, 0x0001
	li      $t8, 0x0001
	lui     $at, %hi(collision_8032DA98)
	sb      $t8, %lo(collision_8032DA98)($at)
.L80250760:
	b       .L80250768
	nop
.L80250768:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_80250778:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(collision_8032DA98)
	lbu     $t6, %lo(collision_8032DA98)($t6)
	beqz    $t6, .L802507E4
	nop
	jal     game_timer
	li      $a0, 0x0002
	sh      $v0, 0x001E($sp)
	lhu     $t7, 0x001E($sp)
	slti    $at, $t7, 0x0276
	beqz    $at, .L802507DC
	nop
	lw      $t9, 0x0020($sp)
	li      $t8, 0x01000000
	lw      $t0, 0x0088($t9)
	sw      $t8, 0x0188($t0)
	lui     $at, %hi(collision_80336414)
	lwc1    $f12, %lo(collision_80336414)($at)
	lui     $at, %hi(collision_80336418)
	li.u    $a2, 0x4592E000
	li.l    $a2, 0x4592E000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(collision_80336418)($at)
.L802507DC:
	lui     $at, %hi(collision_8032DA98)
	sb      $0, %lo(collision_8032DA98)($at)
.L802507E4:
	b       .L802507EC
	nop
.L802507EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl collision_802507FC
collision_802507FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0100
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x01C0
	bne     $t8, $at, .L8025082C
	nop
	b       .L80250928
	nop
.L8025082C:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0068($t9)
	beqz    $t0, .L80250920
	nop
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0068($t1)
	lh      $t3, 0x0000($t2)
	sw      $t3, 0x0024($sp)
	lw      $s0, 0x0024($sp)
	li      $at, 0x000A
	beq     $s0, $at, .L80250894
	nop
	li      $at, 0x0032
	beq     $s0, $at, .L802508A4
	nop
	li      $at, 0x0033
	beq     $s0, $at, .L802508B8
	nop
	li      $at, 0x0034
	beq     $s0, $at, .L802508C8
	nop
	li      $at, 0x0038
	beq     $s0, $at, .L80250894
	nop
	b       .L802508D8
	nop
.L80250894:
	jal     collision_802505C8
	lw      $a0, 0x0028($sp)
	b       .L802508D8
	nop
.L802508A4:
	lw      $a0, 0x0028($sp)
	jal     game_8024A9CC
	li      $a1, 0x0013
	b       .L802508D8
	nop
.L802508B8:
	jal     collision_80250724
	lw      $a0, 0x0028($sp)
	b       .L802508D8
	nop
.L802508C8:
	jal     collision_80250778
	lw      $a0, 0x0028($sp)
	b       .L802508D8
	nop
.L802508D8:
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x000C($t4)
	andi    $t6, $t5, 0x0800
	bnez    $t6, .L80250920
	nop
	andi    $t7, $t5, 0x2000
	bnez    $t7, .L80250920
	nop
	lw      $t8, 0x0024($sp)
	li      $at, 0x0001
	bne     $t8, $at, .L80250920
	nop
	b       .L80250910
	nop
.L80250910:
	jal     collision_8025065C
	lw      $a0, 0x0028($sp)
	b       .L80250920
	nop
.L80250920:
	b       .L80250928
	nop
.L80250928:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

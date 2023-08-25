.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

object_c_802F9730:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L802F9758
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802F9760
	nop
.L802F9758:
	jr      $ra
	move    $v0, $0
.L802F9760:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_802F9770:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00B8($t6)
	jal     atan2
	lwc1    $f14, 0x00B0($t6)
	subu    $v0, $0, $v0
	sll     $t7, $v0, 16
	move    $v0, $t7
	sra     $t8, $v0, 16
	b       .L802F97AC
	move    $v0, $t8
	b       .L802F97AC
	nop
.L802F97AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802F97BC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li      $a0, 0x0002
	li      $a1, 0x0011
	li      $a2, 0x00A3
	jal     obj_lib_802A4BE4
	lh      $a3, 0x0022($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0002
	bne     $t6, $at, .L802F9800
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	jal     obj_lib_802A5498
	nop
.L802F9800:
	b       .L802F9810
	lw      $v0, 0x001C($sp)
	b       .L802F9810
	nop
.L802F9810:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802F9820:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f8, 0x0164($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f6, $f4, $f12
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f4, 0x016C($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f18, $f16, $f12
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_802F9890:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x001C($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802F98E4
	nop
	lw      $a0, 0x00C8($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x0160($t6)
	lh      $t7, 0x001E($sp)
	slt     $at, $v0, $t7
	beqz    $at, .L802F98E4
	nop
	b       .L802F98F4
	li      $v0, 0x0001
.L802F98E4:
	b       .L802F98F4
	move    $v0, $0
	b       .L802F98F4
	nop
.L802F98F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802F9904:
	addiu   $sp, $sp, -0x0008
	move    $a1, $a0
	beqz    $a1, .L802F9934
	nop
	li      $at, 0x0001
	beq     $a1, $at, .L802F9978
	nop
	li      $at, 0x0002
	beq     $a1, $at, .L802F99D4
	nop
	b       .L802F9A18
	nop
.L802F9934:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80361468)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, %lo(object_c_80361468)($at)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_8036146C)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, %lo(object_c_8036146C)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80361470)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, %lo(object_c_80361470)($at)
	b       .L802F9A18
	nop
.L802F9978:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80361468)
	lwc1    $f16, %lo(object_c_80361468)($at)
	lwc1    $f10, 0x00A0($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00AC($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_8036146C)
	lwc1    $f6, %lo(object_c_8036146C)($at)
	lwc1    $f4, 0x00A4($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80361470)
	lwc1    $f16, %lo(object_c_80361470)($at)
	lwc1    $f10, 0x00A8($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00B4($t1)
	b       .L802F9A18
	nop
.L802F99D4:
	lui     $at, %hi(object_c_80361468)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, %lo(object_c_80361468)($at)
	swc1    $f4, 0x00A0($t2)
	lui     $at, %hi(object_c_8036146C)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, %lo(object_c_8036146C)($at)
	swc1    $f6, 0x00A4($t3)
	lui     $at, %hi(object_c_80361470)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, %lo(object_c_80361470)($at)
	swc1    $f8, 0x00A8($t4)
	b       .L802F9A18
	nop
.L802F9A18:
	b       .L802F9A20
	nop
.L802F9A20:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_802F9A28:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	sw      $a3, 0x006C($sp)
	sdc1    $f20, 0x0020($sp)
	lw      $t6, 0x0060($sp)
	beqz    $t6, .L802F9A70
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0188($t7)
	sra     $t9, $t8, 16
	andi    $t0, $t9, 0xFFFF
	andi    $t1, $t0, 0x0080
	beqz    $t1, .L802F9E0C
	nop
.L802F9A70:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	sw      $t3, 0x0058($sp)
	lw      $t4, 0x0058($sp)
	sw      $t4, 0x0054($sp)
	lw      $t5, 0x0060($sp)
	beqz    $t5, .L802F9AB8
	nop
	lw      $t6, 0x0060($sp)
	li      $at, 0x43960000
	mtc1    $at, $f8
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	b       .L802F9ADC
	swc1    $f10, 0x0048($sp)
.L802F9AB8:
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0104($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00B8($t8)
	swc1    $f16, 0x0048($sp)
.L802F9ADC:
	lw      $t9, 0x0054($sp)
	sw      $t9, 0x0050($sp)
	lw      $t0, 0x0054($sp)
	addiu   $t1, $t0, 0x0008
	sw      $t1, 0x0054($sp)
	lw      $t2, 0x0054($sp)
	li      $at, -0x0001
	lh      $t3, 0x0000($t2)
	bne     $t3, $at, .L802F9B5C
	nop
	lw      $t4, 0x0060($sp)
	bnez    $t4, .L802F9B20
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, -0x0001
	sw      $t5, 0x0104($t6)
.L802F9B20:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0188($t7)
	sra     $t9, $t8, 16
	andi    $t0, $t9, 0xFFFF
	andi    $t1, $t0, 0x0100
	beqz    $t1, .L802F9B54
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	b       .L802F9B5C
	sw      $t3, 0x0054($sp)
.L802F9B54:
	b       .L802F9E14
	nop
.L802F9B5C:
	lw      $t4, 0x0054($sp)
	lwc1    $f6, 0x0064($sp)
	lh      $t5, 0x0002($t4)
	mtc1    $t5, $f18
	nop
	cvt.s.w $f4, $f18
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0044($sp)
	lw      $t6, 0x0054($sp)
	lwc1    $f18, 0x0068($sp)
	lh      $t7, 0x0004($t6)
	mtc1    $t7, $f10
	nop
	cvt.s.w $f16, $f10
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0040($sp)
	lw      $t8, 0x0054($sp)
	lwc1    $f10, 0x006C($sp)
	lh      $t9, 0x0006($t8)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f8, $f6
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x003C($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f16, 0x003C($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f8, $f6, $f6
	add.s   $f10, $f4, $f8
	mul.s   $f18, $f16, $f16
	jal     sqrtf
	add.s   $f12, $f10, $f18
	swc1    $f0, 0x0038($sp)
	lwc1    $f6, 0x0048($sp)
	lwc1    $f4, 0x0038($sp)
	sub.s   $f8, $f6, $f4
	swc1    $f8, 0x0048($sp)
	lwc1    $f16, 0x0064($sp)
	lwc1    $f10, 0x0044($sp)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0064($sp)
	lwc1    $f6, 0x0068($sp)
	lwc1    $f4, 0x0040($sp)
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0068($sp)
	lwc1    $f16, 0x006C($sp)
	lwc1    $f10, 0x003C($sp)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x006C($sp)
	lwc1    $f6, 0x0048($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f4, $f6
	nop
	bc1t    .L802F9ADC
	nop
	lwc1    $f8, 0x0048($sp)
	lwc1    $f16, 0x0038($sp)
	div.s   $f10, $f8, $f16
	swc1    $f10, 0x0038($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0064($sp)
	mul.s   $f4, $f18, $f6
	add.s   $f16, $f8, $f4
	swc1    $f16, 0x0064($sp)
	lwc1    $f10, 0x0040($sp)
	lwc1    $f18, 0x0038($sp)
	lwc1    $f8, 0x0068($sp)
	mul.s   $f6, $f10, $f18
	add.s   $f4, $f8, $f6
	swc1    $f4, 0x0068($sp)
	lwc1    $f16, 0x003C($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f8, 0x006C($sp)
	mul.s   $f18, $f16, $f10
	add.s   $f6, $f8, $f18
	swc1    $f6, 0x006C($sp)
	lw      $t0, 0x0060($sp)
	beqz    $t0, .L802F9D20
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0060($sp)
	la.u    $t5, o_13004AF4
	lw      $t2, 0x0088($t1)
	la.l    $t5, o_13004AF4
	li      $t4, 0x00E1
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t1, 0x0010($sp)
	jal     obj_lib_8029EF64
	addu    $a0, $t2, $t3
	sw      $v0, 0x005C($sp)
	lw      $t6, 0x005C($sp)
	beqz    $t6, .L802F9D18
	nop
	lwc1    $f4, 0x0064($sp)
	lw      $t7, 0x005C($sp)
	swc1    $f4, 0x00A0($t7)
	lwc1    $f16, 0x0068($sp)
	lw      $t8, 0x005C($sp)
	swc1    $f16, 0x00A4($t8)
	lwc1    $f10, 0x006C($sp)
	lw      $t9, 0x005C($sp)
	swc1    $f10, 0x00A8($t9)
.L802F9D18:
	b       .L802F9E0C
	nop
.L802F9D20:
	lw      $t0, 0x0050($sp)
	lw      $t2, 0x0058($sp)
	beq     $t0, $t2, .L802F9D68
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x0104($t3)
	bnez    $t1, .L802F9D58
	nop
	lw      $t4, 0x0058($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t5, 0x0000($t4)
	sw      $t5, 0x0104($t6)
.L802F9D58:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0050($sp)
	sw      $t7, 0x0100($t8)
.L802F9D68:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x0064($sp)
	swc1    $f8, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x0068($sp)
	swc1    $f18, 0x00A4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x006C($sp)
	swc1    $f6, 0x00A8($t2)
	jal     object_c_802F9904
	li      $a0, 0x0001
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00B4($t3)
	lwc1    $f10, 0x00AC($t3)
	mul.s   $f16, $f4, $f4
	nop
	mul.s   $f8, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f16, $f8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	lwc1    $f14, 0x00B0($t1)
	jal     atan2
	neg.s   $f14, $f14
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0108($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f12, 0x00B4($t5)
	jal     atan2
	lwc1    $f14, 0x00AC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x010C($t6)
.L802F9E0C:
	b       .L802F9E14
	nop
.L802F9E14:
	lw      $ra, 0x002C($sp)
	ldc1    $f20, 0x0020($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

object_c_802F9E28:
	addiu   $sp, $sp, -0x0028
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L802FA148
	nop
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x001C($sp)
	swc1    $f8, 0x0020($sp)
	swc1    $f8, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0080
	beqz    $t9, .L802F9E88
	nop
	li      $at, 0x42480000
	mtc1    $at, $f10
	b       .L802F9EF8
	swc1    $f10, 0x0020($sp)
.L802F9E88:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D0($t0)
	bgez    $t1, .L802F9EA8
	nop
	neg.s   $f16, $f12
	b       .L802F9EC0
	swc1    $f16, 0x001C($sp)
.L802F9EA8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D0($t2)
	blez    $t3, .L802F9EC0
	nop
	swc1    $f12, 0x001C($sp)
.L802F9EC0:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	bgez    $t5, .L802F9EE0
	nop
	neg.s   $f18, $f14
	b       .L802F9EF8
	swc1    $f18, 0x0024($sp)
.L802F9EE0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	blez    $t7, .L802F9EF8
	nop
	swc1    $f14, 0x0024($sp)
.L802F9EF8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x00D2($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x00D2($t2)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0014($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0014($sp)
	mul.s   $f16, $f8, $f10
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f16, $f6
	swc1    $f8, 0x0008($sp)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f16, 0x001C($sp)
	lwc1    $f6, 0x0014($sp)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f8, $f16, $f6
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x000C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x00DA($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f18, %lo(math_cos)($at)
	swc1    $f18, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00DA($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_sin)($at)
	swc1    $f16, 0x0014($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f4, 0x0018($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f18, 0x0014($sp)
	mul.s   $f8, $f6, $f4
	nop
	mul.s   $f16, $f10, $f18
	add.s   $f6, $f8, $f16
	swc1    $f6, 0x0004($sp)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f16, 0x0014($sp)
	mul.s   $f18, $f4, $f10
	nop
	mul.s   $f6, $f8, $f16
	sub.s   $f4, $f18, $f6
	swc1    $f4, 0x000C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x00D6($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_cos)($at)
	swc1    $f10, 0x0018($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x00D6($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_sin)($at)
	swc1    $f8, 0x0014($sp)
	lwc1    $f16, 0x0004($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x0008($sp)
	lwc1    $f10, 0x0014($sp)
	mul.s   $f6, $f16, $f18
	nop
	mul.s   $f8, $f4, $f10
	sub.s   $f16, $f6, $f8
	swc1    $f16, 0x0010($sp)
	lwc1    $f18, 0x0008($sp)
	lwc1    $f4, 0x0018($sp)
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0014($sp)
	mul.s   $f10, $f18, $f4
	nop
	mul.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x0014($sp)
	mul.s   $f8, $f4, $f6
	nop
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f18, 0x0014($sp)
	mul.s   $f16, $f6, $f10
	nop
	mul.s   $f4, $f8, $f18
	add.s   $f6, $f16, $f4
	swc1    $f6, 0x0000($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x0004($sp)
	lwc1    $f16, 0x0010($sp)
	lwc1    $f10, 0x0164($t2)
	sub.s   $f18, $f10, $f8
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t2)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f10, 0x000C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sub.s   $f8, $f6, $f10
	swc1    $f8, 0x00DC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f16, 0x0000($sp)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f18, 0x016C($t4)
	add.s   $f4, $f18, $f16
	sub.s   $f10, $f4, $f6
	swc1    $f10, 0x00A8($t4)
.L802FA148:
	b       .L802FA150
	nop
.L802FA150:
	jr      $ra
	addiu   $sp, $sp, 0x0028

object_c_802FA158:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, .L802FA18C
	nop
	jal     obj_lib_802A3268
	nop
	sh      $v0, 0x001A($sp)
.L802FA18C:
	lh      $a0, 0x001A($sp)
	jal     obj_lib_8029E5EC
	lh      $a1, 0x001E($sp)
	b       .L802FA1A0
	nop
.L802FA1A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA1B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x0018($sp)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0168($t6)
	jal     atan2
	sub.s   $f14, $f4, $f6
	b       .L802FA1E8
	nop
	b       .L802FA1E8
	nop
.L802FA1E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA1F8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x00C6($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f6, $f4, $f12
	swc1    $f6, 0x00B8($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00C6($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_sin)($at)
	neg.s   $f10, $f8
	mul.s   $f16, $f10, $f12
	swc1    $f16, 0x00B0($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_802FA25C:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	lh      $t6, 0x0000($a0)
	slt     $at, $a1, $t6
	bnez    $at, .L802FA284
	nop
	b       .L802FA2A4
	sh      $a1, 0x0000($a0)
.L802FA284:
	lh      $t7, 0x0000($a0)
	slt     $at, $t7, $a2
	bnez    $at, .L802FA29C
	nop
	b       .L802FA2A4
	sh      $a2, 0x0000($a0)
.L802FA29C:
	jr      $ra
	move    $v0, $0
.L802FA2A4:
	jr      $ra
	li      $v0, 0x0001
	jr      $ra
	nop
	jr      $ra
	nop

object_c_802FA2BC:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0004($sp)
	c.le.s  $f4, $f6
	nop
	bc1f    .L802FA2E8
	nop
	lwc1    $f8, 0x0004($sp)
	b       .L802FA314
	swc1    $f8, 0x0000($a0)
.L802FA2E8:
	lwc1    $f10, 0x0000($a0)
	lwc1    $f16, 0x0008($sp)
	c.le.s  $f16, $f10
	nop
	bc1f    .L802FA30C
	nop
	lwc1    $f18, 0x0008($sp)
	b       .L802FA314
	swc1    $f18, 0x0000($a0)
.L802FA30C:
	b       .L802FA324
	move    $v0, $0
.L802FA314:
	b       .L802FA324
	li      $v0, 0x0001
	b       .L802FA324
	nop
.L802FA324:
	jr      $ra
	nop

object_c_802FA32C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     obj_lib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     obj_lib_8029FEA4
	nop
	b       .L802FA350
	nop
.L802FA350:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA360:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     obj_lib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     obj_lib_8029FF04
	nop
	b       .L802FA38C
	nop
	b       .L802FA38C
	nop
.L802FA38C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA39C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     obj_lib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     obj_lib_802A0008
	lw      $a0, 0x001C($sp)
	b       .L802FA3CC
	nop
	b       .L802FA3CC
	nop
.L802FA3CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA3DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     obj_lib_8029FFA4
	nop
	beqz    $v0, .L802FA408
	nop
	jal     obj_lib_8029F4B4
	lw      $a0, 0x0018($sp)
	b       .L802FA418
	li      $v0, 0x0001
.L802FA408:
	b       .L802FA418
	move    $v0, $0
	b       .L802FA418
	nop
.L802FA418:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA428:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0048($t6)
	bgez    $t7, .L802FA45C
	sra     $t8, $t7, 16
	li      $at, 0xFFFF
	addu    $at, $at, $t7
	sra     $t8, $at, 16
.L802FA45C:
	bgtz    $t8, .L802FA46C
	sw      $t8, 0x001C($sp)
	li      $t9, 0x0001
	sw      $t9, 0x001C($sp)
.L802FA46C:
	lb      $a0, 0x0023($sp)
	jal     obj_lib_802A0050
	lw      $a1, 0x001C($sp)
	bnez    $v0, .L802FA494
	nop
	lb      $a0, 0x0027($sp)
	jal     obj_lib_802A0050
	lw      $a1, 0x001C($sp)
	beqz    $v0, .L802FA4A4
	nop
.L802FA494:
	jal     obj_sfx_802CA1E0
	lw      $a0, 0x0028($sp)
	b       .L802FA4B4
	li      $v0, 0x0001
.L802FA4A4:
	b       .L802FA4B4
	move    $v0, $0
	b       .L802FA4B4
	nop
.L802FA4B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FA4C4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x0024($sp)
	swc1    $f12, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x000F
	jal     obj_lib_8029E714
	lh      $a3, 0x0026($sp)
	sh      $v0, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f10, 0x00A4($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	b       .L802FA534
	lh      $v0, 0x001E($sp)
	b       .L802FA534
	nop
.L802FA534:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FA544:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0004($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802FA570
	nop
	lwc1    $f8, 0x0008($sp)
	neg.s   $f10, $f8
	swc1    $f10, 0x0008($sp)
.L802FA570:
	lwc1    $f16, 0x0000($a0)
	lwc1    $f18, 0x0008($sp)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a0)
	lwc1    $f8, 0x0004($sp)
	lwc1    $f16, 0x0008($sp)
	mtc1    $0, $f4
	sub.s   $f10, $f6, $f8
	mul.s   $f18, $f10, $f16
	c.le.s  $f4, $f18
	nop
	bc1f    .L802FA5B8
	nop
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x0000($a0)
	b       .L802FA5C8
	li      $v0, 0x0001
.L802FA5B8:
	b       .L802FA5C8
	move    $v0, $0
	b       .L802FA5C8
	nop
.L802FA5C8:
	jr      $ra
	nop

object_c_802FA5D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0018($sp)
	lw      $a2, 0x001C($sp)
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00B8
	b       .L802FA608
	nop
	b       .L802FA608
	nop
.L802FA608:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA618:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0018($sp)
	lw      $a2, 0x001C($sp)
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00B0
	b       .L802FA650
	nop
	b       .L802FA650
	nop
.L802FA650:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA660:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a1, 0x001A($sp)
	lh      $a2, 0x001E($sp)
	jal     obj_lib_8029E530
	lw      $a0, 0x00C4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t0, 0x001A($sp)
	lh      $t9, 0x00C6($t8)
	bne     $t9, $t0, .L802FA6B4
	nop
	b       .L802FA6C4
	li      $v0, 0x0001
.L802FA6B4:
	b       .L802FA6C4
	move    $v0, $0
	b       .L802FA6C4
	nop
.L802FA6C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA6D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a1, 0x001A($sp)
	lh      $a2, 0x001E($sp)
	jal     obj_lib_8029E530
	lw      $a0, 0x00D0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00D0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t0, 0x001A($sp)
	lh      $t9, 0x00D2($t8)
	bne     $t9, $t0, .L802FA728
	nop
	b       .L802FA738
	li      $v0, 0x0001
.L802FA728:
	b       .L802FA738
	move    $v0, $0
	b       .L802FA738
	nop
.L802FA738:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA748:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a1, 0x001A($sp)
	lh      $a2, 0x001E($sp)
	jal     obj_lib_8029E530
	lw      $a0, 0x00D4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00D4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t0, 0x001A($sp)
	lh      $t9, 0x00D6($t8)
	bne     $t9, $t0, .L802FA79C
	nop
	b       .L802FA7AC
	li      $v0, 0x0001
.L802FA79C:
	b       .L802FA7AC
	move    $v0, $0
	b       .L802FA7AC
	nop
.L802FA7AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA7BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a1, 0x001A($sp)
	lh      $a2, 0x001E($sp)
	jal     obj_lib_8029E530
	lw      $a0, 0x00D8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00D8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t0, 0x001A($sp)
	lh      $t9, 0x00DA($t8)
	bne     $t9, $t0, .L802FA810
	nop
	b       .L802FA820
	li      $v0, 0x0001
.L802FA810:
	b       .L802FA820
	move    $v0, $0
	b       .L802FA820
	nop
.L802FA820:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA830:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x0000($t6)
	sh      $t7, 0x001C($sp)
	lh      $t9, 0x002A($sp)
	lh      $t0, 0x001C($sp)
	lwc1    $f8, 0x002C($sp)
	lw      $t8, 0x0020($sp)
	subu    $t1, $t9, $t0
	mtc1    $t1, $f4
	lh      $a2, 0x0032($sp)
	lh      $a0, 0x0000($t8)
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $a1, $f16
	jal     obj_lib_8029E530
	nop
	lw      $t3, 0x0020($sp)
	sh      $v0, 0x0000($t3)
	lw      $t4, 0x0020($sp)
	jal     obj_lib_802A3674
	lh      $a0, 0x0000($t4)
	sh      $v0, 0x001E($sp)
	addiu   $a0, $sp, 0x001E
	lh      $a1, 0x0036($sp)
	jal     object_c_802FA25C
	lh      $a2, 0x003A($sp)
	lw      $t5, 0x0024($sp)
	lh      $a1, 0x002A($sp)
	lh      $a2, 0x001E($sp)
	jal     obj_lib_8029E530
	lw      $a0, 0x0000($t5)
	lw      $t6, 0x0024($sp)
	sw      $v0, 0x0000($t6)
	lw      $t7, 0x0024($sp)
	lh      $t9, 0x002A($sp)
	lh      $t8, 0x0002($t7)
	xor     $v0, $t8, $t9
	b       .L802FA8F0
	sltiu   $v0, $v0, 0x0001
	b       .L802FA8F0
	nop
.L802FA8F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FA900:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t8, 0x0022($sp)
	lw      $t7, 0x00C8($t6)
	subu    $t9, $t7, $t8
	sh      $t9, 0x001E($sp)
	lh      $t0, 0x0026($sp)
	addiu   $a0, $sp, 0x001E
	subu    $a1, $0, $t0
	jal     object_c_802FA25C
	move    $a2, $t0
	lh      $a0, 0x001E($sp)
	jal     object_c_802FA7BC
	lh      $a1, 0x002A($sp)
	b       .L802FA954
	nop
.L802FA954:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FA964:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	lh      $t6, 0x001E($sp)
	lh      $t1, 0x001A($sp)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f8, $f0, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	addu    $v0, $t0, $t1
	sll     $t2, $v0, 16
	move    $v0, $t2
	sra     $t3, $v0, 16
	b       .L802FA9C8
	move    $v0, $t3
	b       .L802FA9C8
	nop
.L802FA9C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA9D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     rand
	nop
	lh      $t6, 0x0022($sp)
	lh      $t8, 0x001E($sp)
	lh      $t0, 0x001A($sp)
	div     $0, $v0, $t6
	mfhi    $t7
	bnez    $t6, .L802FAA14
	nop
	break   7
.L802FAA14:
	li      $at, -0x0001
	bne     $t6, $at, .L802FAA2C
	li      $at, 0x80000000
	bne     $v0, $at, .L802FAA2C
	nop
	break   6
.L802FAA2C:
	multu   $t7, $t8
	mflo    $t9
	addu    $v0, $t9, $t0
	sll     $t1, $v0, 16
	move    $v0, $t1
	sra     $t2, $v0, 16
	b       .L802FAA54
	move    $v0, $t2
	b       .L802FAA54
	nop
.L802FAA54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FAA64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     o_script_80383D1C
	nop
	lh      $t8, 0x001A($sp)
	sll     $t6, $v0, 16
	sra     $t7, $t6, 16
	multu   $t7, $t8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C8($t0)
	mflo    $t9
	addu    $v0, $t9, $t1
	sll     $t2, $v0, 16
	move    $v0, $t2
	sra     $t3, $v0, 16
	b       .L802FAAB8
	move    $v0, $t3
	b       .L802FAAB8
	nop
.L802FAAB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FAAC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0002
	beqz    $at, .L802FAB5C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0018($sp)
	lwc1    $f4, 0x002C($t8)
	lwc1    $f6, 0x0000($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($t8)
	lw      $t0, 0x0018($sp)
	lui     $at, %hi(object_c_803389B0)
	lwc1    $f16, %lo(object_c_803389B0)($at)
	lwc1    $f10, 0x0000($t0)
	lui     $at, %hi(object_c_803389B4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0000($t0)
	lw      $t1, 0x0018($sp)
	lwc1    $f6, %lo(object_c_803389B4)($at)
	lwc1    $f4, 0x0000($t1)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802FAB54
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0154($t2)
.L802FAB54:
	b       .L802FABF8
	nop
.L802FAB5C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x000B
	bnez    $at, .L802FABF8
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	lw      $a1, 0x0020($sp)
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, .L802FABA8
	nop
	b       .L802FAC08
	li      $v0, -0x0001
	b       .L802FABF8
	nop
.L802FABA8:
	lw      $t5, 0x0018($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0000($t5)
	c.eq.s  $f8, $f10
	nop
	bc1t    .L802FABF8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f16, 0x002C($t6)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802FABF8
	nop
	mtc1    $0, $f4
	lw      $t7, 0x0018($sp)
	swc1    $f4, 0x0000($t7)
	b       .L802FAC08
	li      $v0, 0x0001
.L802FABF8:
	b       .L802FAC08
	move    $v0, $0
	b       .L802FAC08
	nop
.L802FAC08:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FAC18:
	addiu   $sp, $sp, -0x0008
	sw      $a3, 0x0014($sp)
	lw      $t6, 0x0000($a0)
	sw      $t6, 0x0004($sp)
	lwc1    $f4, 0x0000($a1)
	lw      $t7, 0x0000($a0)
	trunc.w.s $f6, $f4
	mfc1    $t9, $f6
	nop
	addu    $t0, $t7, $t9
	sw      $t0, 0x0000($a0)
	lw      $t1, 0x0000($a0)
	beq     $t1, $a2, .L802FACA0
	nop
	lw      $t2, 0x0000($a0)
	lw      $t4, 0x0004($sp)
	subu    $t3, $t2, $a2
	subu    $t5, $t4, $a2
	multu   $t3, $t5
	mflo    $t6
	bgez    $t6, .L802FACC0
	nop
	lwc1    $f10, 0x0014($sp)
	lwc1    $f8, 0x0000($a1)
	neg.s   $f16, $f10
	c.lt.s  $f16, $f8
	nop
	bc1f    .L802FACC0
	nop
	lwc1    $f18, 0x0000($a1)
	c.lt.s  $f18, $f10
	nop
	bc1f    .L802FACC0
	nop
.L802FACA0:
	sw      $a2, 0x0000($a0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0000($a1)
	b       .L802FAD2C
	li      $v0, 0x0001
	b       .L802FAD1C
	nop
.L802FACC0:
	lw      $t8, 0x0000($a0)
	slt     $at, $t8, $a2
	bnez    $at, .L802FACDC
	nop
	lwc1    $f6, 0x0018($sp)
	neg.s   $f8, $f6
	swc1    $f8, 0x0018($sp)
.L802FACDC:
	lwc1    $f16, 0x0000($a1)
	lwc1    $f18, 0x0018($sp)
	mtc1    $0, $f4
	mul.s   $f10, $f16, $f18
	c.lt.s  $f10, $f4
	nop
	bc1f    .L802FAD0C
	nop
	lwc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f6, $f8
	swc1    $f16, 0x0018($sp)
.L802FAD0C:
	lwc1    $f18, 0x0000($a1)
	lwc1    $f10, 0x0018($sp)
	add.s   $f4, $f18, $f10
	swc1    $f4, 0x0000($a1)
.L802FAD1C:
	b       .L802FAD2C
	move    $v0, $0
	b       .L802FAD2C
	nop
.L802FAD2C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_802FAD34:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0000($t6)
	beqz    $t7, .L802FAD70
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0000($t8)
	addiu   $t0, $t9, -0x0001
	b       .L802FAD84
	sw      $t0, 0x0000($t8)
.L802FAD70:
	lh      $a0, 0x001E($sp)
	jal     object_c_802FA964
	lh      $a1, 0x0022($sp)
	lw      $t1, 0x0018($sp)
	sw      $v0, 0x0000($t1)
.L802FAD84:
	lw      $t2, 0x0018($sp)
	lh      $t4, 0x0026($sp)
	lw      $t3, 0x0000($t2)
	slt     $at, $t4, $t3
	beqz    $at, .L802FADAC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       .L802FADBC
	sw      $0, 0x00F0($t5)
.L802FADAC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x00F0($t7)
.L802FADBC:
	b       .L802FADC4
	nop
.L802FADC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FADD4:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0076($t6)
	beqz    $t7, .L802FAFFC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0078($t8)
	sw      $t9, 0x003C($sp)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lw      $t0, 0x003C($sp)
	beq     $t0, $t1, .L802FAFFC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x003C($sp)
	lwc1    $f6, 0x00A0($t3)
	lwc1    $f4, 0x00A0($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0038($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x003C($sp)
	lwc1    $f16, 0x00A8($t5)
	lwc1    $f10, 0x00A8($t4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	lwc1    $f12, 0x0038($sp)
	jal     atan2
	lwc1    $f14, 0x0034($sp)
	sh      $v0, 0x0032($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x01F8($t6)
	swc1    $f4, 0x002C($sp)
	lw      $t7, 0x003C($sp)
	lwc1    $f6, 0x01F8($t7)
	swc1    $f6, 0x0028($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0028($sp)
	add.s   $f16, $f8, $f10
	div.s   $f18, $f8, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f6, 0x0024($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f10, $f4, $f6
	lwc1    $f8, 0x00A0($t8)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f18, $f4
	lwc1    $f8, 0x00A8($t9)
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x001C($sp)
	lhu     $t0, 0x0032($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x002C($sp)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f16, %lo(math_cos)($at)
	lwc1    $f8, 0x0020($sp)
	lui     $t3, %hi(object)
	mul.s   $f4, $f16, $f18
	lw      $t3, %lo(object)($t3)
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x00A0($t3)
	lhu     $t4, 0x0032($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x002C($sp)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f8, 0x001C($sp)
	lui     $t7, %hi(object)
	mul.s   $f18, $f10, $f16
	lw      $t7, %lo(object)($t7)
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x00A8($t7)
	lhu     $t8, 0x0032($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x0028($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	lwc1    $f8, 0x0020($sp)
	lw      $t1, 0x003C($sp)
	mul.s   $f16, $f6, $f10
	add.s   $f18, $f16, $f8
	swc1    $f18, 0x00A0($t1)
	lhu     $t2, 0x0032($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x0028($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f16, 0x001C($sp)
	lw      $t5, 0x003C($sp)
	mul.s   $f10, $f4, $f6
	add.s   $f8, $f10, $f16
	swc1    $f8, 0x00A8($t5)
	lw      $t6, 0x0040($sp)
	beqz    $t6, .L802FAFFC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a1, 0x0032($sp)
	jal     obj_lib_802A11A8
	lw      $a0, 0x00C8($t7)
	slti    $at, $v0, 0x4000
	beqz    $at, .L802FAFFC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t8, 0x0032($sp)
	li      $at, 0x8000
	lw      $t0, 0x00C8($t9)
	lw      $t6, 0x0040($sp)
	subu    $t1, $t8, $t0
	addu    $t2, $t1, $t8
	addu    $t3, $t2, $at
	sll     $t4, $t3, 16
	sra     $t5, $t4, 16
	sw      $t5, 0x0000($t6)
	b       .L802FB00C
	li      $v0, 0x0001
.L802FAFFC:
	b       .L802FB00C
	move    $v0, $0
	b       .L802FB00C
	nop
.L802FB00C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_c_802FB01C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, .L802FB054
	nop
	jal     obj_lib_802A3268
	nop
	lw      $t9, 0x0018($sp)
	b       .L802FB0AC
	sw      $v0, 0x0000($t9)
.L802FB054:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, .L802FB094
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x8000
	lw      $t8, 0x0018($sp)
	lw      $t4, 0x00C8($t3)
	addu    $t5, $t4, $at
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	b       .L802FB0AC
	sw      $t7, 0x0000($t8)
.L802FB094:
	jal     object_c_802FADD4
	lw      $a0, 0x0018($sp)
	bnez    $v0, .L802FB0AC
	nop
	b       .L802FB0BC
	move    $v0, $0
.L802FB0AC:
	b       .L802FB0BC
	li      $v0, 0x0001
	b       .L802FB0BC
	nop
.L802FB0BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB0CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     object_c_802FADD4
	move    $a0, $0
	lh      $a0, 0x001A($sp)
	jal     obj_lib_8029E5EC
	lh      $a1, 0x001E($sp)
	beqz    $v0, .L802FB108
	nop
	b       .L802FB118
	move    $v0, $0
	b       .L802FB110
	nop
.L802FB108:
	b       .L802FB118
	li      $v0, 0x0001
.L802FB110:
	b       .L802FB118
	nop
.L802FB118:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB128:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0184($t6)
	bgtz    $t7, .L802FB23C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x01C4($t8)
	bnez    $t9, .L802FB16C
	nop
	li.u    $a0, 0x502C8081
	jal     obj_lib_802A37DC
	li.l    $a0, 0x502C8081
	b       .L802FB1A0
	nop
.L802FB16C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x01C4($t0)
	blez    $t1, .L802FB198
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     obj_lib_802A37DC
	lw      $a0, 0x01C4($t2)
	b       .L802FB1A0
	nop
.L802FB198:
	jal     obj_lib_802A37AC
	nop
.L802FB1A0:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0198($t3)
	bgez    $t4, .L802FB1D4
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000830
	la.l    $a2, o_13000830
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0076
	b       .L802FB1EC
	nop
.L802FB1D4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a2, 0x41A00000
	move    $a0, $t5
	jal     obj_lib_802A1B8C
	lw      $a1, 0x0198($t5)
.L802FB1EC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a2, 0x41A00000
	move    $a0, $t6
	jal     obj_lib_802A1B8C
	lw      $a1, 0x0198($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0184($t7)
	bgez    $t8, .L802FB230
	nop
	jal     obj_lib_8029F6BC
	nop
	jal     obj_lib_802A05B4
	nop
	b       .L802FB23C
	nop
.L802FB230:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802FB23C:
	b       .L802FB244
	nop
.L802FB244:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB254:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0184($t6)
	jal     object_c_802FB128
	nop
	b       .L802FB278
	nop
.L802FB278:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB288:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $s0, 0x0028($sp)
	li      $at, 0x0002
	beq     $s0, $at, .L802FB2BC
	nop
	li      $at, 0x0005
	beq     $s0, $at, .L802FB2BC
	nop
	b       .L802FB304
	nop
.L802FB2BC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0065
	sw      $t6, 0x014C($t7)
	li      $at, 0x41A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	li      $at, 0x42480000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t9)
	b       .L802FB34C
	nop
.L802FB304:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0064
	sw      $t0, 0x014C($t1)
	li      $at, 0x42480000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t2)
	li      $at, 0x41F00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t3)
	b       .L802FB34C
	nop
.L802FB34C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0009
	lw      $t5, 0x008C($t4)
	and     $t6, $t5, $at
	sw      $t6, 0x008C($t4)
	lui     $a0, %hi(obj_mario)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(obj_mario)($a0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C8($t7)
	b       .L802FB38C
	nop
.L802FB38C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FB3A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x50308081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50308081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0066
	sw      $t6, 0x014C($t7)
	b       .L802FB3CC
	nop
.L802FB3CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB3DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0040
	beqz    $t8, .L802FB470
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	lwc1    $f4, 0x0174($t9)
	lwc1    $f6, 0x00E4($t9)
	add.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1t    .L802FB460
	nop
	lwc1    $f12, 0x00A0($t9)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mov.s   $f20, $f0
	li      $at, 0x43160000
	lwc1    $f16, 0x00A4($t0)
	mtc1    $at, $f4
	sub.s   $f18, $f20, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802FB468
	nop
.L802FB460:
	b       .L802FB504
	move    $v0, $0
.L802FB468:
	b       .L802FB4EC
	nop
.L802FB470:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0800
	bnez    $t3, .L802FB4EC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x0008
	beqz    $t6, .L802FB4E4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0128($t7)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802FB4D8
	nop
	li.u    $a0, 0x50324081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50324081
	b       .L802FB4E4
	nop
.L802FB4D8:
	li.u    $a0, 0x5029A081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x5029A081
.L802FB4E4:
	b       .L802FB504
	move    $v0, $0
.L802FB4EC:
	jal     object_c_802FB128
	nop
	b       .L802FB504
	li      $v0, 0x0001
	b       .L802FB504
	nop
.L802FB504:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FB518:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A34A4
	lw      $a1, 0x0020($sp)
	jal     object_c_802FB3DC
	nop
	beqz    $v0, .L802FB55C
	nop
	b       .L802FB6D8
	li      $v0, 0x0001
	b       .L802FB6BC
	nop
.L802FB55C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802FB6BC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, .L802FB5C8
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0024($sp)
	lw      $t3, 0x014C($t2)
	beq     $t3, $t4, .L802FB5C0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0024($sp)
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
.L802FB5C0:
	b       .L802FB6BC
	nop
.L802FB5C8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0134($t8)
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x0028($sp)
	addu    $t3, $t1, $t2
	lbu     $t4, -0x0001($t3)
	sltiu   $at, $t4, 0x0009
	beqz    $at, .L802FB6A8
	nop
	sll     $t4, $t4, 2
	lui     $at, %hi(object_c_803389B8)
	addu    $at, $at, $t4
	lw      $t4, %lo(object_c_803389B8)($at)
	jr      $t4
	nop
.globl L802FB610
L802FB610:
	b       .L802FB6A8
	nop
.globl L802FB618
L802FB618:
	jal     object_c_802FB128
	nop
	b       .L802FB6A8
	nop
.globl L802FB628
L802FB628:
	jal     object_c_802FB288
	lw      $a0, 0x001C($sp)
	b       .L802FB6A8
	nop
.globl L802FB638
L802FB638:
	jal     object_c_802FB3A0
	nop
	b       .L802FB6A8
	nop
.globl L802FB648
L802FB648:
	jal     object_c_802FC414
	lw      $a0, 0x001C($sp)
	b       .L802FB6A8
	nop
.globl L802FB658
L802FB658:
	jal     object_c_8031126C
	nop
	b       .L802FB6A8
	nop
.globl L802FB668
L802FB668:
	jal     object_c_803020E4
	nop
	b       .L802FB6A8
	nop
.globl L802FB678
L802FB678:
	jal     object_c_802FF94C
	nop
	b       .L802FB6A8
	nop
.globl L802FB688
L802FB688:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, -0x0001
	sw      $t5, 0x0198($t6)
	jal     object_c_802FB3A0
	nop
	b       .L802FB6A8
	nop
.L802FB6A8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	b       .L802FB6D8
	lw      $v0, 0x001C($sp)
.L802FB6BC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	b       .L802FB6D8
	move    $v0, $0
	b       .L802FB6D8
	nop
.L802FB6D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FB6E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	jal     obj_lib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x003C($t6)
	beqz    $t7, .L802FB718
	nop
	jal     obj_lib_8029FEA4
	nop
.L802FB718:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0A7B
	bnez    $t0, .L802FB750
	nop
	lw      $t1, 0x014C($t8)
	li      $at, 0x0065
	bne     $t1, $at, .L802FB758
	nop
	lw      $t2, 0x0154($t8)
	slti    $at, $t2, 0x0009
	bnez    $at, .L802FB758
	nop
.L802FB750:
	jal     object_c_802FB128
	nop
.L802FB758:
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	b       .L802FB768
	nop
.L802FB768:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB778:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0028($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $at, %hi(object_c_803389DC)
	lwc1    $f6, %lo(object_c_803389DC)($at)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	jal     obj_lib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x003C($t6)
	beqz    $t7, .L802FB7C0
	nop
	jal     obj_lib_8029FEA4
	nop
.L802FB7C0:
	lui     $at, %hi(object_c_803389E0)
	lwc1    $f16, %lo(object_c_803389E0)($at)
	lwc1    $f10, 0x0028($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	mul.s   $f18, $f10, $f16
	lw      $a1, 0x0024($sp)
	addiu   $a0, $a0, 0x0030
	mfc1    $a2, $f18
	jal     object_c_802FA544
	nop
	beqz    $v0, .L802FB844
	nop
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0028($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f8, $f4, $f6
	lui     $t9, %hi(object)
	lwc1    $f10, 0x0030($t8)
	sub.s   $f20, $f8, $f10
	swc1    $f20, 0x0034($t8)
	lw      $t9, %lo(object)($t9)
	swc1    $f20, 0x002C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0010
	bnez    $at, .L802FB844
	nop
	jal     object_c_802FB128
	nop
.L802FB844:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t2)
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	b       .L802FB868
	nop
.L802FB868:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FB87C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	slti    $at, $t7, 0x0064
	beqz    $at, .L802FB8B4
	nop
	b       .L802FB924
	li      $v0, 0x0001
	b       .L802FB91C
	nop
.L802FB8B4:
	jal     obj_lib_802A05B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0064
	lw      $s0, 0x014C($t8)
	beq     $s0, $at, .L802FB8F4
	nop
	li      $at, 0x0065
	beq     $s0, $at, .L802FB8F4
	nop
	li      $at, 0x0066
	beq     $s0, $at, .L802FB904
	nop
	b       .L802FB914
	nop
.L802FB8F4:
	jal     object_c_802FB6E8
	lwc1    $f12, 0x0028($sp)
	b       .L802FB914
	nop
.L802FB904:
	jal     object_c_802FB778
	lwc1    $f12, 0x0028($sp)
	b       .L802FB914
	nop
.L802FB914:
	b       .L802FB924
	move    $v0, $0
.L802FB91C:
	b       .L802FB924
	nop
.L802FB924:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FB938:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A34A4
	lw      $a1, 0x0020($sp)
	jal     object_c_802FB3DC
	nop
	beqz    $v0, .L802FB978
	nop
	b       .L802FBA30
	li      $v0, 0x0001
	b       .L802FBA14
	nop
.L802FB978:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802FBA14
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, .L802FB9E4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0024($sp)
	lw      $t3, 0x014C($t2)
	beq     $t3, $t4, .L802FB9DC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0024($sp)
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
.L802FB9DC:
	b       .L802FBA14
	nop
.L802FB9E4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0134($t8)
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x001C($sp)
	jal     object_c_802FB128
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
	b       .L802FBA30
	lw      $v0, 0x001C($sp)
.L802FBA14:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       .L802FBA30
	move    $v0, $0
	b       .L802FBA30
	nop
.L802FBA30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FBA40:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_8029FEA4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001F
	bnez    $at, .L802FBA8C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0018($sp)
	sw      $t8, 0x014C($t9)
	b       .L802FBAA4
	li      $v0, 0x0001
.L802FBA8C:
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	b       .L802FBAA4
	move    $v0, $0
	b       .L802FBAA4
	nop
.L802FBAA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FBAB4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0168($t7)
	lwc1    $f16, 0x00A4($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f6, 0x00A8($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f6, $f16, $f4
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0018($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802FBB7C
	nop
	lwc1    $f12, 0x001C($sp)
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0160($t9)
	lui     $at, %hi(object_c_803389E4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, %lo(object_c_803389E4)($at)
	b       .L802FBC34
	swc1    $f4, 0x015C($t0)
.L802FBB7C:
	lui     $t1, %hi(object)
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x00A0($t2)
	lwc1    $f8, 0x0164($t1)
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x0024($sp)
	lui     $t3, %hi(object)
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lw      $t3, %lo(object)($t3)
	lwc1    $f16, 0x00A4($t4)
	lwc1    $f18, 0x0168($t3)
	sub.s   $f4, $f18, $f16
	swc1    $f4, 0x0020($sp)
	lui     $t5, %hi(object)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, 0x00A8($t6)
	lwc1    $f8, 0x016C($t5)
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x001C($sp)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	mul.s   $f16, $f18, $f18
	nop
	mul.s   $f8, $f4, $f4
	add.s   $f6, $f16, $f8
	mul.s   $f18, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f6, $f18
	swc1    $f0, 0x0018($sp)
	lwc1    $f4, 0x0018($sp)
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f16, $f4
	nop
	bc1f    .L802FBC34
	nop
	lui     $at, %hi(object_c_803389E8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, %lo(object_c_803389E8)($at)
	swc1    $f8, 0x015C($t7)
.L802FBC34:
	b       .L802FBC3C
	nop
.L802FBC3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_802FBC4C
object_c_802FBC4C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0004
	lw      $s0, 0x0144($t6)
	bne     $s0, $at, .L802FBCCC
	sw      $s0, 0x00F8($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x00F8($t8)
	lui     $at, %hi(object_c_803389EC)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, %lo(object_c_803389EC)($at)
	swc1    $f4, 0x00F4($t9)
	lui     $at, %hi(object_c_803389F0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, %lo(object_c_803389F0)($at)
	swc1    $f6, 0x019C($t0)
	lui     $at, %hi(object_c_803389F4)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(object_c_803389F4)($at)
	lui     $at, %hi(object_c_803389F8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, %lo(object_c_803389F8)($at)
	b       .L802FBD40
	swc1    $f8, 0x00E4($t1)
.L802FBCCC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F8($t2)
	slti    $at, $t3, 0x0002
	bnez    $at, .L802FBD28
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	addiu   $t6, $t5, -0x0002
	sh      $t6, 0x01AE($t4)
	li      $at, 0x40800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F4($t7)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	b       .L802FBD40
	nop
.L802FBD28:
	li      $at, 0x3F800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00F4($t8)
.L802FBD40:
	b       .L802FBD48
	nop
.L802FBD48:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FBD5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802FBDA0
	nop
	li.u    $t7, 0x50342081
	li.l    $t7, 0x50342081
	b       .L802FBDAC
	sw      $t7, 0x001C($sp)
.L802FBDA0:
	li.u    $t8, 0x50350081
	li.l    $t8, 0x50350081
	sw      $t8, 0x001C($sp)
.L802FBDAC:
	lb      $a0, 0x0023($sp)
	lb      $a1, 0x0027($sp)
	jal     object_c_802FA428
	lw      $a2, 0x001C($sp)
	b       .L802FBDC4
	nop
.L802FBDC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FBDD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x0108($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802FBE30
	nop
	lw      $a0, 0x010C($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t6)
	slti    $at, $v0, 0x3000
	beqz    $at, .L802FBE30
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	b       .L802FBE40
	li      $v0, 0x0001
.L802FBE30:
	b       .L802FBE40
	move    $v0, $0
	b       .L802FBE40
	nop
.L802FBE40:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FBE50:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     object_c_802FA360
	li      $a0, 0x0007
	beqz    $v0, .L802FBEB4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	jal     o_script_80383D1C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sll     $t9, $v0, 16
	sra     $t0, $t9, 16
	lw      $t3, 0x00C8($t2)
	sll     $t1, $t0, 13
	addu    $t4, $t1, $t3
	sw      $t4, 0x00FC($t2)
.L802FBEB4:
	b       .L802FBEBC
	nop
.L802FBEBC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FBECC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	lui     $at, %hi(object_c_803389FC)
	lwc1    $f8, %lo(object_c_803389FC)($at)
	mul.s   $f12, $f4, $f6
	nop
	mul.s   $f14, $f4, $f8
	jal     object_c_802FA5D0
	nop
	jal     object_c_802FA360
	li      $a0, 0x000B
	beqz    $v0, .L802FBF40
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0150($t7)
	li      $a0, 0x001E
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $v0, 0x01AC($t0)
.L802FBF40:
	b       .L802FBF48
	nop
.L802FBF48:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FBF58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0009
	li      $a0, 0x0002
	jal     object_c_802FBD5C
	li      $a1, 0x0011
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01AC($t6)
	beqz    $t7, .L802FBFA0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AC($t8)
	addiu   $t0, $t9, -0x0001
	b       .L802FBFC4
	sh      $t0, 0x01AC($t8)
.L802FBFA0:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802FBFC4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0150($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0150($t1)
.L802FBFC4:
	b       .L802FBFCC
	nop
.L802FBFCC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FBFDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	mtc1    $0, $f12
	mul.s   $f14, $f4, $f6
	jal     object_c_802FA5D0
	nop
	jal     object_c_802FA360
	li      $a0, 0x000A
	beqz    $v0, .L802FC024
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
.L802FC024:
	b       .L802FC02C
	nop
.L802FC02C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FC03C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0104($t6)
	beqz    $t7, .L802FC080
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0200
	jal     object_c_802FB0CC
	lw      $a0, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L802FC0E4
	sw      $v0, 0x0104($t9)
.L802FC080:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338A00)
	lwc1    $f6, %lo(object_c_80338A00)($at)
	lwc1    $f4, 0x015C($t0)
	c.le.s  $f6, $f4
	nop
	bc1f    .L802FC0B4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	sw      $t2, 0x00FC($t1)
.L802FC0B4:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x00FC
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x0104($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0200
	jal     obj_lib_8029E5EC
	lw      $a0, 0x00FC($t4)
.L802FC0E4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $s0, 0x0150($t5)
	beqz    $s0, .L802FC118
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802FC128
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802FC138
	nop
	b       .L802FC148
	nop
.L802FC118:
	jal     object_c_802FBECC
	nop
	b       .L802FC148
	nop
.L802FC128:
	jal     object_c_802FBF58
	nop
	b       .L802FC148
	nop
.L802FC138:
	jal     object_c_802FBFDC
	nop
	b       .L802FC148
	nop
.L802FC148:
	jal     object_c_802FBDD4
	nop
	b       .L802FC158
	nop
.L802FC158:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FC16C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	move    $a0, $0
	jal     object_c_802FBD5C
	li      $a1, 0x000B
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A04)
	lwc1    $f6, %lo(object_c_80338A04)($at)
	lwc1    $f4, 0x015C($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    .L802FC1D8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x8000
	lw      $t8, 0x0160($t7)
	addu    $t9, $t8, $at
	sw      $t9, 0x0160($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x015C($t0)
.L802FC1D8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x001F
	bnez    $at, .L802FC23C
	nop
	li      $at, 0x44480000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t1)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802FC23C
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_c_802FA5D0
	nop
	beqz    $v0, .L802FC234
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
.L802FC234:
	b       .L802FC270
	nop
.L802FC23C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x8000
	li      $a1, 0x0400
	lw      $a0, 0x0160($t4)
	jal     obj_lib_8029E5EC
	addu    $a0, $a0, $at
	li      $at, 0x41880000
	mtc1    $at, $f12
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
.L802FC270:
	b       .L802FC278
	nop
.L802FC278:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FC288:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, .L802FC320
	nop
	mtc1    $0, $f12
	jal     object_c_802FA5D0
	lwc1    $f14, 0x0018($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802FC320
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	bgez    $t1, .L802FC2FC
	andi    $t2, $t1, 0x0003
	beqz    $t2, .L802FC2FC
	nop
	addiu   $t2, $t2, -0x0004
.L802FC2FC:
	bnez    $t2, .L802FC320
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002528
	la.l    $a2, o_13002528
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0096
	jal     obj_lib_8029EEB8
	li      $a3, 0x3F800000
.L802FC320:
	b       .L802FC328
	nop
.L802FC328:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FC338:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L802FC3A8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0200
	beqz    $t9, .L802FC38C
	nop
	jal     obj_lib_802A3268
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
.L802FC38C:
	jal     object_c_802FA32C
	li      $a0, 0x0005
	lui     $at, %hi(object_c_80338A08)
	jal     object_c_802FC288
	lwc1    $f12, %lo(object_c_80338A08)($at)
	b       .L802FC3FC
	nop
.L802FC3A8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01AC($t1)
	beqz    $t2, .L802FC3E0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x01AC($t3)
	addiu   $t5, $t4, -0x0001
	sh      $t5, 0x01AC($t3)
	jal     obj_lib_8029FEA4
	nop
	b       .L802FC3FC
	nop
.L802FC3E0:
	jal     object_c_802FA360
	li      $a0, 0x0006
	beqz    $v0, .L802FC3FC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802FC3FC:
	b       .L802FC404
	nop
.L802FC404:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FC414:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A0C)
	lwc1    $f6, %lo(object_c_80338A0C)($at)
	lwc1    $f4, 0x002C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802FC4F0
	nop
	li.u    $a0, 0x503EA081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x503EA081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	li      $at, 0x41A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t0)
	lw      $t1, 0x0018($sp)
	li      $at, 0x0003
	beq     $t1, $at, .L802FC4C0
	nop
	li      $at, 0x0004
	beq     $t1, $at, .L802FC4C0
	nop
	lui     $a0, %hi(obj_mario)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(obj_mario)($a0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C8($t2)
.L802FC4C0:
	jal     obj_lib_802A04C0
	li      $a0, 0x00BF
	lui     $a0, %hi(object)
	la.u    $a2, o_13001F3C
	la.l    $a2, o_13001F3C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00BE
	jal     obj_lib_802A05B4
	nop
	b       .L802FC4F8
	nop
.L802FC4F0:
	jal     object_c_802FB128
	nop
.L802FC4F8:
	b       .L802FC500
	nop
.L802FC500:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FC510:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     obj_lib_802A2320
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0014
	li      $a2, 0x0032
	li      $a3, 0x0004
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x0110
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802FC580
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802FC598
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802FC5A8
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802FC5B8
	nop
	b       .L802FC5C8
	nop
.L802FC580:
	jal     object_c_802FBE50
	nop
	jal     object_c_802FBDD4
	nop
	b       .L802FC5C8
	nop
.L802FC598:
	jal     object_c_802FC03C
	nop
	b       .L802FC5C8
	nop
.L802FC5A8:
	jal     object_c_802FC16C
	nop
	b       .L802FC5C8
	nop
.L802FC5B8:
	jal     object_c_802FC338
	nop
	b       .L802FC5C8
	nop
.L802FC5C8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80338A10)
	lwc1    $f6, %lo(object_c_80338A10)($at)
	lwc1    $f4, 0x002C($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802FC614
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332840
	la.u    $a2, object_c_80332858
	la.l    $a2, object_c_80332858
	la.l    $a0, object_c_80332840
	jal     object_c_802FB518
	lw      $a1, 0x014C($t8)
	b       .L802FC64C
	nop
.L802FC614:
	la.u    $a0, object_c_80332840
	la.u    $a2, object_c_80332850
	la.l    $a2, object_c_80332850
	la.l    $a0, object_c_80332840
	jal     object_c_802FB518
	li      $a1, 0x0004
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0004
	lw      $t0, 0x014C($t9)
	bne     $t0, $at, .L802FC64C
	nop
	jal     object_c_802FB128
	nop
.L802FC64C:
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	b       .L802FC65C
	nop
.L802FC65C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FC670:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $at, %hi(object_c_80338A14)
	lwc1    $f4, %lo(object_c_80338A14)($at)
	swc1    $f4, 0x002C($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
	move    $a0, $0
	jal     object_c_802FBD5C
	li      $a1, 0x0006
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0104($t6)
	beqz    $t7, .L802FC6D4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0600
	jal     object_c_802FB0CC
	lw      $a0, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L802FC834
	sw      $v0, 0x0104($t9)
.L802FC6D4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338A18)
	lwc1    $f8, %lo(object_c_80338A18)($at)
	lwc1    $f6, 0x015C($t0)
	c.le.s  $f8, $f6
	nop
	bc1f    .L802FC708
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	sw      $t2, 0x00FC($t1)
.L802FC708:
	la.u    $a0, o_13001F3C
	la.l    $a0, o_13001F3C
	jal     obj_lib_8029F9EC
	addiu   $a1, $sp, 0x002C
	sw      $v0, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	beqz    $t3, .L802FC748
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029E694
	lw      $a1, 0x0028($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	b       .L802FC7AC
	sw      $v0, 0x00FC($t4)
.L802FC748:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x00FC
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	move    $s0, $v0
	bnez    $s0, .L802FC7AC
	sw      $s0, 0x0104($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	beqz    $t7, .L802FC798
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0100($t8)
	addiu   $t0, $t9, -0x0001
	b       .L802FC7AC
	sw      $t0, 0x0100($t8)
.L802FC798:
	jal     object_c_802FAA64
	li      $a0, 0x2000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00FC($t2)
.L802FC7AC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x44480000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t1)
	c.lt.s  $f16, $f10
	nop
	bc1t    .L802FC7FC
	nop
	lw      $t3, 0x0028($sp)
	beqz    $t3, .L802FC818
	nop
	lw      $a1, 0x0160($t1)
	li      $at, 0x8000
	lw      $a0, 0x00FC($t1)
	jal     obj_lib_802A11A8
	addu    $a1, $a1, $at
	slti    $at, $v0, 0x2000
	beqz    $at, .L802FC818
	nop
.L802FC7FC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0600
	jal     obj_lib_8029E5EC
	lw      $a0, 0x00FC($t4)
	b       .L802FC834
	nop
.L802FC818:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x8000
	li      $a1, 0x0600
	lw      $a0, 0x0160($t5)
	jal     obj_lib_8029E5EC
	addu    $a0, $a0, $at
.L802FC834:
	li      $at, 0x41A00000
	mtc1    $at, $f12
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	beqz    $v0, .L802FC8F8
	nop
	li      $at, 0x44160000
	mtc1    $at, $f4
	lwc1    $f18, 0x002C($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802FC8F8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x00FC($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t6)
	slti    $at, $v0, 0x0C00
	beqz    $at, .L802FC8F8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x00FC($t7)
	sw      $t9, 0x00C8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338A1C)
	lwc1    $f8, %lo(object_c_80338A1C)($at)
	lwc1    $f6, 0x00B8($t2)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t2)
	li      $at, 0x41A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x002C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	div.s   $f4, $f16, $f18
	swc1    $f4, 0x00B0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t1, 0x0014
	sh      $t1, 0x01AC($t4)
.L802FC8F8:
	b       .L802FC900
	nop
.L802FC900:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_802FC914:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x000B
	bnez    $at, .L802FC93C
	nop
	jal     obj_lib_802A05D4
	nop
.L802FC93C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x000B
	bnez    $at, .L802FCA10
	nop
	la.u    $a0, o_13001F3C
	la.l    $a0, o_13001F3C
	jal     obj_lib_8029F9EC
	addiu   $a1, $sp, 0x0018
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	beqz    $t0, .L802FCA10
	nop
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E2F8
	move    $a0, $t0
	li      $at, 0x43480000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f0
	nop
	bc1f    .L802FCA10
	nop
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0018($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802FCA10
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x00F8($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	lwc1    $f10, 0x00B8($t5)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B8($t5)
	jal     obj_lib_802A04C0
	li      $a0, 0x0068
	jal     obj_lib_802A0568
	lw      $a0, 0x001C($sp)
	b       .L802FCADC
	nop
.L802FCA10:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L802FCA88
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0002
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, .L802FCA68
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00F0($t0)
	jal     object_c_802FA32C
	li      $a0, 0x0002
	b       .L802FCA70
	nop
.L802FCA68:
	jal     object_c_802FA32C
	li      $a0, 0x0005
.L802FCA70:
	li      $at, 0x3F000000
	mtc1    $at, $f12
	jal     object_c_802FC288
	nop
	b       .L802FCADC
	nop
.L802FCA88:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01AC($t1)
	beqz    $t2, .L802FCAC0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x01AC($t3)
	addiu   $t5, $t4, -0x0001
	sh      $t5, 0x01AC($t3)
	jal     obj_lib_8029FEA4
	nop
	b       .L802FCADC
	nop
.L802FCAC0:
	jal     object_c_802FA360
	li      $a0, 0x0006
	beqz    $v0, .L802FCADC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
.L802FCADC:
	b       .L802FCAE4
	nop
.L802FCAE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FCAF4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA32C
	move    $a0, $0
	b       .L802FCB0C
	nop
.L802FCB0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FCB1C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     obj_lib_802A2320
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x000A
	li      $a2, 0x000F
	li      $a3, 0x0003
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x0110
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L802FCB8C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802FCB9C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802FCB9C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802FCBAC
	nop
	b       .L802FCBBC
	nop
.L802FCB8C:
	jal     object_c_802FC670
	nop
	b       .L802FCBBC
	nop
.L802FCB9C:
	jal     object_c_802FC914
	nop
	b       .L802FCBBC
	nop
.L802FCBAC:
	jal     object_c_802FCAF4
	nop
	b       .L802FCBBC
	nop
.L802FCBBC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a0, object_c_80332840
	la.u    $a2, object_c_80332850
	la.l    $a2, object_c_80332850
	la.l    $a0, object_c_80332840
	jal     object_c_802FB518
	lw      $a1, 0x014C($t7)
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	b       .L802FCBEC
	nop
.L802FCBEC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FCC00:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0032
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L802FCC88
	nop
	li.u    $a0, 0x314D4081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x314D4081
	lw      $t8, 0x0018($sp)
	bnez    $t8, .L802FCC70
	nop
	move    $a0, $0
	li      $a1, 0x0409
	jal     Na_BGM_play
	move    $a2, $0
	jal     game_timer
	move    $a0, $0
	jal     game_timer
	li      $a0, 0x0001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	lw      $t1, 0x0068($t0)
	sw      $t9, 0x00F4($t1)
.L802FCC70:
	jal     pl_demo_80257640
	move    $a0, $0
	jal     obj_lib_802A5498
	nop
	b       .L802FCCA8
	nop
.L802FCC88:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0033
	bnez    $at, .L802FCCA8
	nop
	b       .L802FCCB8
	li      $v0, 0x0001
.L802FCCA8:
	b       .L802FCCB8
	move    $v0, $0
	b       .L802FCCB8
	nop
.L802FCCB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FCCC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FBE50
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01B0($t6)
	beqz    $t7, .L802FCD04
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01B0($t8)
	addiu   $t0, $t9, -0x0001
	b       .L802FCD4C
	sh      $t0, 0x01B0($t8)
.L802FCD04:
	li      $at, 0x43C80000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     obj_lib_802A48BC
	nop
	beqz    $v0, .L802FCD4C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0007
.L802FCD4C:
	b       .L802FCD54
	nop
.L802FCD54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FCD64:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332860+0x00)
	lh      $t7, 0x01AE($t6)
	sll     $t8, $t7, 4
	addu    $a0, $a0, $t8
	jal     object_c_802F97BC
	lh      $a0, %lo(object_c_80332860+0x00)($a0)
	sw      $v0, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	li      $at, 0x0001
	bne     $t9, $at, .L802FCE4C
	nop
	lui     $at, %hi(object_8036125A)
	sh      $0, %lo(object_8036125A)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
	la.u    $a0, o_130045D0
	jal     obj_lib_8029F95C
	la.l    $a0, o_130045D0
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x0068($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $a0, %hi(object_c_80332860+0x04)
	lh      $t5, 0x01AE($t4)
	sll     $t6, $t5, 4
	addu    $a0, $a0, $t6
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332860+0x04)($a0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	move    $s0, $v0
	lui     $t8, %hi(object)
	sw      $s0, 0x0100($t7)
	lw      $t8, %lo(object)($t8)
	sw      $s0, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0104($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x008C($t0)
	ori     $t2, $t1, 0x0080
	sw      $t2, 0x008C($t0)
	b       .L802FCE78
	nop
.L802FCE4C:
	lw      $t3, 0x002C($sp)
	li      $at, 0x0002
	bne     $t3, $at, .L802FCE78
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x003C
	sh      $t5, 0x01B0($t6)
.L802FCE78:
	b       .L802FCE80
	nop
.L802FCE80:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_802FCE94:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13003A58
	la.l    $a0, o_13003A58
	jal     obj_lib_8029F9EC
	addiu   $a1, $sp, 0x0020
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	beqz    $t6, .L802FCFF4
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0024($sp)
	li      $a2, 0x0010
	jal     obj_lib_8029E714
	move    $a3, $0
	sh      $v0, 0x001E($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x0024($sp)
	lui     $at, %hi(math_cos)
	lw      $t0, 0x00C8($t9)
	lw      $t8, 0x00C8($t7)
	lwc1    $f6, 0x00B8($t7)
	subu    $t1, $t8, $t0
	andi    $t2, $t1, 0xFFFF
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $a1, 0x001E($sp)
	jal     obj_lib_802A11A8
	lw      $a0, 0x00C8($t5)
	slti    $at, $v0, 0x4000
	beqz    $at, .L802FCFB0
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x0020($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802FCFA8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A20)
	lwc1    $f6, %lo(object_c_80338A20)($at)
	lwc1    $f4, 0x00B8($t6)
	lwc1    $f18, 0x0018($sp)
	mul.s   $f8, $f4, $f6
	c.lt.s  $f18, $f8
	nop
	bc1f    .L802FCF8C
	nop
	b       .L802FD004
	li      $v0, 0x0001
	b       .L802FCFA8
	nop
.L802FCF8C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x00B8($t9)
	sub.s   $f4, $f10, $f16
	swc1    $f4, 0x00B8($t9)
.L802FCFA8:
	b       .L802FCFF4
	nop
.L802FCFB0:
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f6, 0x0020($sp)
	c.lt.s  $f6, $f18
	nop
	bc1f    .L802FCFF4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f10, 0x00B8($t8)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802FCFF4
	nop
	b       .L802FD004
	li      $v0, -0x0001
.L802FCFF4:
	b       .L802FD004
	move    $v0, $0
	b       .L802FD004
	nop
.L802FD004:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FD014:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A24)
	lwc1    $f6, %lo(object_c_80338A24)($at)
	lwc1    $f4, 0x00B8($t6)
	li      $a0, 0x0009
	mul.s   $f8, $f4, $f6
	mfc1    $a1, $f8
	jal     obj_lib_8029F514
	nop
	li      $a0, 0x0002
	jal     object_c_802FBD5C
	li      $a1, 0x0011
	b       .L802FD058
	nop
.L802FD058:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FD068:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     object_c_802FCC00
	move    $a0, $0
	beqz    $v0, .L802FD3C8
	nop
	li      $at, 0x43340000
	mtc1    $at, $f12
	li      $at, 0x43960000
	mtc1    $at, $f14
	jal     obj_lib_802A390C
	nop
	jal     obj_lib_802A2C5C
	move    $a0, $0
	li      $at, -0x0001
	bne     $v0, $at, .L802FD0C4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	b       .L802FD3C8
	sw      $t6, 0x014C($t7)
.L802FD0C4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t9, 0x0108($t8)
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	trunc.w.s $f8, $f6
	mfc1    $t1, $f8
	nop
	andi    $t2, $t1, 0xFFFF
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t5)
	lw      $a0, 0x010C($t5)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $a1, $f10
	jal     obj_lib_8029E5EC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x0150($t7)
	beqz    $s0, .L802FD174
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802FD184
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802FD384
	nop
	b       .L802FD3C8
	nop
.L802FD174:
	jal     object_c_802FBECC
	nop
	b       .L802FD3C8
	nop
.L802FD184:
	jal     object_c_802FD014
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x00FC($t9)
	beqz    $t0, .L802FD1EC
	nop
	lui     $at, %hi(object_c_80338A28)
	lwc1    $f18, %lo(object_c_80338A28)($at)
	lwc1    $f16, 0x015C($t8)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802FD1EC
	nop
	lw      $t1, 0x0104($t8)
	andi    $t2, $t1, 0x00FF
	slti    $at, $t2, 0x001C
	beqz    $at, .L802FD1EC
	nop
	li      $at, 0x41000000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	b       .L802FD230
	swc1    $f4, 0x00F4($t3)
.L802FD1EC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x01AE($t4)
	beqz    $t5, .L802FD218
	nop
	li      $at, 0x40C00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f6
	b       .L802FD230
	swc1    $f6, 0x00F4($t6)
.L802FD218:
	li      $at, 0x40800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00F4($t7)
.L802FD230:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40C00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00F4($t9)
	lwc1    $f4, 0x002C($sp)
	lui     $at, %hi(object_c_80338A2C)
	mul.s   $f18, $f10, $f16
	lwc1    $f6, %lo(object_c_80338A2C)($at)
	mul.s   $f12, $f18, $f4
	nop
	mul.s   $f14, $f10, $f6
	jal     object_c_802FA5D0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00EC($t0)
	andi    $t1, $t8, 0x0200
	beqz    $t1, .L802FD298
	nop
	li      $at, 0x41A00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t2)
.L802FD298:
	jal     object_c_802FCE94
	nop
	sw      $v0, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	bnez    $t3, .L802FD2C8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x0400
	beqz    $t6, .L802FD37C
	nop
.L802FD2C8:
	lw      $t7, 0x0028($sp)
	bgez    $t7, .L802FD2E8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t9)
.L802FD2E8:
	lw      $t0, 0x0028($sp)
	bnez    $t0, .L802FD310
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t1, 0x0104($t8)
	andi    $t2, $t1, 0x00FF
	slti    $at, $t2, 0x0008
	bnez    $at, .L802FD328
	nop
.L802FD310:
	li      $at, 0x42A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f18
	b       .L802FD340
	swc1    $f18, 0x00B0($t3)
.L802FD328:
	li      $at, 0x42200000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t4)
.L802FD340:
	li      $at, 0xC0C00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x0150($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00EC($t9)
	jal     obj_lib_8029F4B4
	li      $a0, 0x000C
.L802FD37C:
	b       .L802FD3C8
	nop
.L802FD384:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00EC($t0)
	andi    $t1, $t8, 0x0003
	beqz    $t1, .L802FD3C8
	nop
	jal     object_c_802FA360
	li      $a0, 0x000D
	beqz    $v0, .L802FD3C0
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x0150($t2)
.L802FD3C0:
	jal     object_c_802FCE94
	nop
.L802FD3C8:
	b       .L802FD3D0
	nop
.L802FD3D0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_802FD3E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	li.u    $a1, 0x3F7D70A4
	li.l    $a1, 0x3F7D70A4
	jal     obj_lib_8029F514
	li      $a0, 0x0009
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802FD44C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0005
	sw      $t6, 0x014C($t7)
	li      $at, 0x40400000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
.L802FD44C:
	b       .L802FD454
	nop
.L802FD454:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FD464:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FBFDC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802FD498
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0006
	sw      $t8, 0x014C($t9)
.L802FD498:
	b       .L802FD4A0
	nop
.L802FD4A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FD4B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0007
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0100($t7)
	bnez    $t8, .L802FD5B4
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     obj_lib_802A48BC
	nop
	beqz    $v0, .L802FD5AC
	nop
	jal     Na_BGM_stop
	li      $a0, 0x0409
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x00FC($t0)
	beqz    $t1, .L802FD580
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x00FC($t3)
	bgez    $t4, .L802FD554
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	sw      $0, 0x00FC($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	lw      $t9, 0x0068($t8)
	b       .L802FD578
	sw      $t7, 0x0100($t9)
.L802FD554:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object_c_80332860+0x02)
	lh      $t1, 0x01AE($t0)
	lw      $t4, 0x0068($t0)
	sll     $t2, $t1, 4
	addu    $t3, $t3, $t2
	lh      $t3, %lo(object_c_80332860+0x02)($t3)
	sw      $t3, 0x0100($t4)
.L802FD578:
	b       .L802FD594
	nop
.L802FD580:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0029
	lw      $t8, 0x0068($t6)
	sw      $t5, 0x0100($t8)
.L802FD594:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0081
	lw      $t9, 0x008C($t7)
	and     $t1, $t9, $at
	sw      $t1, 0x008C($t7)
.L802FD5AC:
	b       .L802FD694
	nop
.L802FD5B4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x0068($t2)
	lw      $t3, 0x0100($t0)
	blez    $t3, .L802FD624
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a0, 0x0002
	li      $a1, 0x0001
	lw      $t6, 0x0068($t4)
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	lw      $a3, 0x0100($t6)
	sw      $v0, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	beqz    $t5, .L802FD61C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, -0x0001
	lw      $t1, 0x0068($t9)
	sw      $t8, 0x0100($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
.L802FD61C:
	b       .L802FD694
	nop
.L802FD624:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x0068($t2)
	lw      $t3, 0x00FC($t0)
	beqz    $t3, .L802FD694
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $t9, object_c_80332860+0x00
	la.l    $t9, object_c_80332860+0x00
	lh      $t6, 0x01AE($t4)
	sll     $t5, $t6, 4
	addu    $t8, $t5, $t9
	lh      $t2, 0x000C($t8)
	lh      $t1, 0x0008($t8)
	lh      $t7, 0x000A($t8)
	mtc1    $t2, $f8
	mtc1    $t1, $f4
	mtc1    $t7, $f6
	cvt.s.w $f8, $f8
	cvt.s.w $f12, $f4
	mfc1    $a2, $f8
	jal     object_b_802F2B88
	cvt.s.w $f14, $f6
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0068($t0)
	sw      $0, 0x00FC($t3)
.L802FD694:
	b       .L802FD69C
	nop
.L802FD69C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FD6AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x000A
	li      $a2, 0x000F
	li      $a3, 0x0003
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x0110
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0007
	beqz    $at, .L802FD768
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338A30)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338A30)($at)
	jr      $t7
	nop
.globl L802FD708
L802FD708:
	jal     object_c_802FCCC8
	nop
	b       .L802FD768
	nop
.globl L802FD718
L802FD718:
	jal     object_c_802FCD64
	nop
	b       .L802FD768
	nop
.globl L802FD728
L802FD728:
	jal     object_c_802FD068
	nop
	b       .L802FD768
	nop
.globl L802FD738
L802FD738:
	jal     object_c_802FD3E4
	nop
	b       .L802FD768
	nop
.globl L802FD748
L802FD748:
	jal     object_c_802FD464
	nop
	b       .L802FD768
	nop
.globl L802FD758
L802FD758:
	jal     object_c_802FD4B0
	nop
	b       .L802FD768
	nop
.L802FD768:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	beq     $t9, $t8, .L802FD7C0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $t0
	jal     obj_lib_8029E2F8
	lw      $a1, 0x0068($t0)
	li      $at, 0x43C80000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    .L802FD7C0
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	lw      $t3, 0x0068($t2)
	sw      $t1, 0x00F8($t3)
.L802FD7C0:
	li      $at, 0x430C0000
	mtc1    $at, $f12
	li      $at, 0x43960000
	mtc1    $at, $f14
	jal     obj_lib_802A390C
	nop
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	b       .L802FD7E8
	nop
.L802FD7E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_802FD7F8
object_c_802FD7F8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $t6, 0x5063B081
	li.l    $t6, 0x5063B081
	sw      $t6, 0x01C4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	slti    $at, $t9, 0x0002
	bnez    $at, .L802FD840
	nop
	jal     object_c_802FD6AC
	nop
	b       .L802FD920
	nop
.L802FD840:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t0)
	mul.s   $f12, $f4, $f6
	jal     object_c_802FB87C
	nop
	beqz    $v0, .L802FD910
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x015C($t1)
	swc1    $f8, 0x0108($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0160($t2)
	sw      $t3, 0x010C($t2)
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $s0, 0x00F8($t4)
	beqz    $s0, .L802FD8D8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802FD8E8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802FD8F8
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802FD8F8
	nop
	b       .L802FD908
	nop
.L802FD8D8:
	jal     object_c_802FCB1C
	nop
	b       .L802FD908
	nop
.L802FD8E8:
	jal     object_c_802FC510
	nop
	b       .L802FD908
	nop
.L802FD8F8:
	jal     object_c_802FD6AC
	nop
	b       .L802FD908
	nop
.L802FD908:
	b       .L802FD920
	nop
.L802FD910:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x00F0($t6)
.L802FD920:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0600
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t7)
	b       .L802FD93C
	nop
.L802FD93C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_802FD950
object_c_802FD950:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	beqz    $t7, .L802FDA10
	nop
	lw      $t8, 0x0104($t6)
	bnez    $t8, .L802FDA10
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	bnez    $t0, .L802FD9A8
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802FDA10
	nop
.L802FD9A8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0104($t2)
	jal     game_timer
	li      $a0, 0x0002
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F8($t3)
	bnez    $t4, .L802FDA10
	nop
	jal     Na_g_803221B8
	nop
	lui     $t5, %hi(object_8036125A)
	lh      $t5, %lo(object_8036125A)($t5)
	beqz    $t5, .L802FDA00
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t7, -0x0001
	b       .L802FDA10
	sw      $t7, 0x00FC($t6)
.L802FDA00:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t8, 0x0001
	sw      $t8, 0x00FC($t0)
.L802FDA10:
	b       .L802FDA18
	nop
.L802FDA18:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_802FDA28
object_c_802FDA28:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     object_c_802FB87C
	nop
	beqz    $v0, .L802FDE64
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, .L802FDA78
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802FDE5C
	nop
.L802FDA78:
	jal     obj_lib_802A2320
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x001E
	li      $a2, 0x003C
	li      $a3, 0x0004
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x0110
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	slti    $at, $t0, 0x0002
	bnez    $at, .L802FDB40
	nop
	lw      $t4, 0x0068($t9)
	addiu   $t1, $t0, 0x001F
	li      $t2, 0x0001
	lw      $t5, 0x00F4($t4)
	sllv    $t3, $t2, $t1
	and     $t6, $t3, $t5
	bnez    $t6, .L802FDB40
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t2, 0x0001
	lw      $t9, 0x0068($t7)
	lw      $t8, 0x0144($t7)
	lw      $t4, 0x00F4($t9)
	addiu   $t0, $t8, 0x001F
	sllv    $t1, $t2, $t0
	or      $t3, $t1, $t4
	sw      $t3, 0x00F4($t9)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t8, 0x0001
	li      $at, -0x0001
	lw      $t7, 0x0068($t5)
	lw      $t6, 0x0144($t5)
	lw      $t1, 0x00F4($t7)
	sllv    $t2, $t8, $t6
	xor     $t0, $t2, $at
	and     $t4, $t0, $t1
	sw      $t4, 0x00F4($t7)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t9, 0x0144($t3)
	addiu   $t8, $t9, -0x0001
	b       .L802FDBC0
	sw      $t8, 0x0144($t3)
.L802FDB40:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t2, 0x0068($t6)
	lwc1    $f4, 0x00FC($t2)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802FDBC0
	nop
	lw      $t0, 0x0144($t6)
	lw      $t5, 0x00F8($t2)
	addiu   $t1, $t0, 0x0001
	bne     $t5, $t1, .L802FDBC0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	lw      $a0, 0x0068($t4)
	li      $a1, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00FC
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40400000
	mtc1    $at, $f10
	lw      $t9, 0x0068($t7)
	lwc1    $f8, 0x00FC($t9)
	mul.s   $f12, $f8, $f10
	jal     obj_lib_8029F430
	nop
.L802FDBC0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	lw      $t3, 0x0144($t8)
	sll     $t0, $t6, 11
	sll     $t2, $t3, 14
	addu    $t5, $t2, $t0
	sh      $t5, 0x001E($sp)
	lhu     $t1, 0x001E($sp)
	lui     $at, %hi(math_cos)
	lui     $t9, %hi(object)
	sra     $t4, $t1, 4
	sll     $t7, $t4, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x40C00000
	mtc1    $at, $f18
	lw      $t9, %lo(object)($t9)
	mul.s   $f4, $f16, $f18
	lw      $t8, 0x0068($t9)
	lwc1    $f6, 0x00A0($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t9)
	lhu     $t3, 0x001E($sp)
	lui     $at, %hi(math_sin)
	lui     $t0, %hi(object)
	sra     $t6, $t3, 4
	sll     $t2, $t6, 2
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x40C00000
	mtc1    $at, $f16
	lw      $t0, %lo(object)($t0)
	mul.s   $f18, $f10, $f16
	lw      $t5, 0x0068($t0)
	lwc1    $f4, 0x00A8($t5)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42F00000
	mtc1    $at, $f10
	lw      $t4, 0x0068($t1)
	lw      $t8, 0x0144($t1)
	lw      $t7, 0x00F8($t4)
	lwc1    $f8, 0x00FC($t4)
	lwc1    $f6, 0x00A4($t4)
	subu    $t9, $t7, $t8
	sll     $t3, $t9, 4
	subu    $t3, $t3, $t9
	sll     $t3, $t3, 3
	addiu   $t6, $t3, -0x00F0
	mtc1    $t6, $f18
	mul.s   $f16, $f8, $f10
	cvt.s.w $f4, $f18
	add.s   $f8, $f6, $f4
	add.s   $f10, $f16, $f8
	swc1    $f10, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f18, 0x00A4($t2)
	c.lt.s  $f18, $f6
	nop
	bc1f    .L802FDCF0
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x0018($sp)
	swc1    $f4, 0x00A4($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t0)
.L802FDCF0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t7, 0x0144($t1)
	bnez    $t7, .L802FDD18
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	b       .L802FDD24
	sw      $t8, 0x0198($t9)
.L802FDD18:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0198($t3)
.L802FDD24:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, object_c_80332880
	la.u    $a2, object_c_80332890
	la.l    $a2, object_c_80332890
	la.l    $a0, object_c_80332880
	jal     object_c_802FB518
	lw      $a1, 0x014C($t6)
	beqz    $v0, .L802FDDCC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x0068($t4)
	lw      $t5, 0x00F8($t2)
	addiu   $t0, $t5, -0x0001
	sw      $t0, 0x00F8($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t7, 0x0144($t1)
	bnez    $t7, .L802FDD9C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	lw      $t3, 0x0068($t9)
	sw      $t8, 0x0100($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t6, -0x0001
	sw      $t6, 0x0198($t4)
.L802FDD9C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t2, 0x0001
	li      $at, -0x0001
	lw      $t9, 0x0068($t5)
	lw      $t0, 0x0144($t5)
	lw      $t8, 0x00F4($t9)
	sllv    $t1, $t2, $t0
	xor     $t7, $t1, $at
	and     $t3, $t7, $t8
	b       .L802FDE54
	sw      $t3, 0x00F4($t9)
.L802FDDCC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x0068($t6)
	lw      $t2, 0x0100($t4)
	beqz    $t2, .L802FDE3C
	nop
	jal     obj_lib_802A05B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t7, %hi(object)
	lw      $t1, 0x00F8($t0)
	addiu   $t5, $t1, -0x0001
	sw      $t5, 0x00F8($t0)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F8($t7)
	bgez    $t8, .L802FDE34
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t9, 0x0068($t3)
	lw      $t6, 0x00F8($t9)
	addiu   $t4, $t6, -0x0001
	sw      $t4, 0x00F8($t9)
	jal     object_c_802FB128
	nop
.L802FDE34:
	b       .L802FDE54
	nop
.L802FDE3C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0144($t2)
	sll     $t5, $t1, 2
	addiu   $t0, $t5, 0x0014
	sw      $t0, 0x00F8($t2)
.L802FDE54:
	jal     obj_lib_802A2348
	li      $a0, -0x004E
.L802FDE5C:
	b       .L802FDE74
	nop
.L802FDE64:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x00F0($t8)
.L802FDE74:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41B00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0030($t3)
	mul.s   $f18, $f8, $f10
	swc1    $f18, 0x00DC($t3)
	b       .L802FDE98
	nop
.L802FDE98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FDEA8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802FDFAC
	nop
	li      $t7, 0x0054
	sh      $t7, 0x002E($sp)
	sw      $0, 0x0030($sp)
.L802FDEE0:
	lw      $t8, 0x0030($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	subu    $a2, $0, $t8
	sll     $t9, $a2, 4
	subu    $t9, $t9, $a2
	lh      $t1, 0x002E($sp)
	sll     $t9, $t9, 3
	la.u    $t2, o_13004668
	la.l    $t2, o_13004668
	move    $a2, $t9
	addiu   $a2, $a2, 0x01E0
	sw      $t2, 0x0018($sp)
	move    $a1, $0
	move    $a3, $0
	move    $a0, $t8
	sw      $t0, 0x0010($sp)
	jal     obj_lib_8029EF64
	sw      $t1, 0x0014($sp)
	sw      $v0, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	beqz    $t3, .L802FDF48
	nop
	lw      $a0, 0x0034($sp)
	jal     obj_lib_8029F404
	li      $a1, 0x40400000
.L802FDF48:
	li      $t4, 0x0055
	sh      $t4, 0x002E($sp)
	lw      $t5, 0x0030($sp)
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0005
	bnez    $at, .L802FDEE0
	sw      $t6, 0x0030($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x001F
	sw      $t7, 0x00F4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0005
	sw      $t9, 0x00F8($t0)
	li      $at, 0x3F800000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
.L802FDFAC:
	b       .L802FDFB4
	nop
.L802FDFB4:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_c_802FDFC4:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, .L802FDFF8
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802FE360
	nop
.L802FDFF8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80338A4C)
	lwc1    $f6, %lo(object_c_80338A4C)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802FE040
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	b       .L802FE360
	swc1    $f8, 0x00B8($t1)
.L802FE040:
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	jal     obj_lib_802A2320
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	beqz    $t3, .L802FE080
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f10
	b       .L802FE358
	swc1    $f10, 0x00B8($t4)
.L802FE080:
	li      $at, 0x40A00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	slti    $at, $t7, 0x0005
	beqz    $at, .L802FE174
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0065
	bnez    $at, .L802FE16C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $t2, o_13004668
	la.l    $t2, o_13004668
	lw      $a0, 0x00F8($t0)
	li      $t1, 0x0055
	sw      $t1, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t0, 0x0010($sp)
	sw      $v0, 0x0038($sp)
	lw      $t3, 0x0038($sp)
	beqz    $t3, .L802FE160
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t6, 0x0001
	lw      $t5, 0x00F8($t4)
	lw      $t8, 0x00F4($t4)
	sllv    $t7, $t6, $t5
	or      $t9, $t7, $t8
	sw      $t9, 0x00F4($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00F8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00FC($t3)
	lw      $a0, 0x0038($sp)
	jal     obj_lib_8029F404
	li      $a1, 0x0000
.L802FE160:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0154($t6)
.L802FE16C:
	b       .L802FE180
	nop
.L802FE174:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
.L802FE180:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x010C($t7)
	beqz    $t8, .L802FE1B8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0200
	jal     object_c_802FB0CC
	lw      $a0, 0x0104($t9)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	b       .L802FE358
	sw      $v0, 0x010C($t4)
.L802FE1B8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80338A50)
	lwc1    $f6, %lo(object_c_80338A50)($at)
	lwc1    $f4, 0x015C($t1)
	c.le.s  $f6, $f4
	nop
	bc1f    .L802FE1EC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x0160($t2)
	sw      $t0, 0x0104($t2)
.L802FE1EC:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x0104
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	move    $s0, $v0
	bnez    $s0, .L802FE344
	sw      $s0, 0x010C($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0108($t6)
	beqz    $t5, .L802FE23C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0108($t7)
	addiu   $t9, $t8, -0x0001
	b       .L802FE344
	sw      $t9, 0x0108($t7)
.L802FE23C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x44FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t4)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802FE290
	nop
	jal     object_c_802FAA64
	li      $a0, 0x2000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0104($t1)
	li      $a0, 0x001E
	jal     object_c_802FA964
	li      $a1, 0x0032
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       .L802FE344
	sw      $v0, 0x0108($t0)
.L802FE290:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43480000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t2)
	li      $at, 0x41200000
	mtc1    $at, $f6
	sub.s   $f4, $f16, $f18
	li      $at, 0x46800000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	sub.s   $f16, $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $t6, $f18
	nop
	sw      $t6, 0x003C($sp)
	lw      $t5, 0x003C($sp)
	bgez    $t5, .L802FE2E4
	nop
	b       .L802FE2FC
	sw      $0, 0x003C($sp)
.L802FE2E4:
	lw      $t8, 0x003C($sp)
	slti    $at, $t8, 0x4001
	bnez    $at, .L802FE2FC
	nop
	li      $t9, 0x4000
	sw      $t9, 0x003C($sp)
.L802FE2FC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t4, 0x0160($t7)
	lw      $t1, 0x00C8($t7)
	subu    $t0, $t4, $t1
	sll     $t2, $t0, 16
	sra     $t3, $t2, 16
	blez    $t3, .L802FE32C
	nop
	lw      $t6, 0x003C($sp)
	subu    $t5, $0, $t6
	sw      $t5, 0x003C($sp)
.L802FE32C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x003C($sp)
	lw      $t9, 0x0160($t8)
	addu    $t4, $t9, $t7
	sw      $t4, 0x0104($t8)
.L802FE344:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a1, 0x0200
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0104($t1)
.L802FE358:
	jal     obj_lib_802A2348
	li      $a0, -0x004E
.L802FE360:
	b       .L802FE368
	nop
.L802FE368:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_c_802FE37C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	jal     obj_lib_802A184C
	nop
	b       .L802FE3A0
	nop
.L802FE3A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_802FE3B0
object_c_802FE3B0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $t6, 0x5063C081
	li.l    $t6, 0x5063C081
	sw      $t6, 0x01C4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, .L802FE404
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802FE414
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802FE424
	nop
	b       .L802FE434
	nop
.L802FE404:
	jal     object_c_802FDEA8
	nop
	b       .L802FE434
	nop
.L802FE414:
	jal     object_c_802FDFC4
	nop
	b       .L802FE434
	nop
.L802FE424:
	jal     object_c_802FE37C
	nop
	b       .L802FE434
	nop
.L802FE434:
	b       .L802FE43C
	nop
.L802FE43C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FE450:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li      $a1, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, .L802FE4F8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A54)
	lwc1    $f6, %lo(object_c_80338A54)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802FE4F8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0320
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t7)
	beqz    $v0, .L802FE4F8
	nop
	li.u    $a0, 0x90490081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90490081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
	li      $at, 0xC1400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t0)
.L802FE4F8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x8000
	sw      $t1, 0x00D8($t2)
	b       .L802FE510
	nop
.L802FE510:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FE520:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	move    $a0, $0
	jal     obj_lib_8029F514
	li      $a1, 0x40000000
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802FE558
	nop
	li.u    $a0, 0x50310081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50310081
.L802FE558:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L802FE5C4
	nop
	move    $a0, $0
	jal     object_c_802FA7BC
	li      $a1, 0x09C4
	beqz    $v0, .L802FE5BC
	nop
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t7)
	li      $at, 0xC1200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t8)
.L802FE5BC:
	b       .L802FE898
	nop
.L802FE5C4:
	jal     obj_lib_802A3F48
	nop
	beqz    $v0, .L802FE624
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
	jal     obj_lib_802A184C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	lui     $t1, %hi(object)
	lui     $t2, %hi(object)
	swc1    $f16, 0x00B0($t0)
	lw      $t1, %lo(object)($t1)
	lwc1    $f20, 0x00B0($t1)
	swc1    $f20, 0x00B8($t1)
	lw      $t2, %lo(object)($t2)
	swc1    $f20, 0x002C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       .L802FE898
	sw      $0, 0x00D8($t3)
.L802FE624:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	beqz    $t5, .L802FE650
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	addiu   $t8, $t7, -0x0001
	b       .L802FE750
	sw      $t8, 0x00F4($t6)
.L802FE650:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	lwc1    $f18, 0x00B0($t9)
	c.eq.s  $f18, $f4
	nop
	bc1t    .L802FE714
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0160($t0)
	sw      $t1, 0x00FC($t0)
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	li      $at, 0x43480000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t3)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	add.s   $f16, $f8, $f10
	lwc1    $f6, 0x00A4($t2)
	c.lt.s  $f6, $f16
	nop
	bc1f    .L802FE6F4
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_c_802FA618
	nop
	beqz    $v0, .L802FE6EC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B8($t4)
	mul.s   $f8, $f18, $f4
	swc1    $f8, 0x00B8($t4)
.L802FE6EC:
	b       .L802FE70C
	nop
.L802FE6F4:
	li      $at, 0xC1200000
	mtc1    $at, $f12
	li      $at, 0x3F000000
	mtc1    $at, $f14
	jal     object_c_802FA618
	nop
.L802FE70C:
	b       .L802FE750
	nop
.L802FE714:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x00EC($t5)
	andi    $t8, $t7, 0x0200
	beqz    $t8, .L802FE750
	nop
	jal     obj_lib_802A3268
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00FC($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t9, 0x001E
	sw      $t9, 0x00F4($t1)
.L802FE750:
	jal     object_c_802F9770
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $s0, $v0
	bnez    $s0, .L802FE7A4
	sw      $s0, 0x00F8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lw      $t3, 0x00F8($t2)
	lwc1    $f10, 0x00B8($t2)
	mtc1    $t3, $f18
	mul.s   $f16, $f10, $f6
	cvt.s.w $f4, $f18
	add.s   $f8, $f4, $f16
	trunc.w.s $f10, $f8
	mfc1    $t5, $f10
	nop
	sw      $t5, 0x00F8($t2)
.L802FE7A4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x008C
	jal     object_c_802FA660
	lw      $a0, 0x00F8($t7)
	lui     $t8, %hi(gfx_frame)
	lw      $t8, %lo(gfx_frame)($t8)
	lui     $at, %hi(math_cos)
	lui     $t5, %hi(object)
	sll     $t6, $t8, 5
	subu    $t6, $t6, $t8
	sll     $t6, $t6, 2
	addu    $t6, $t6, $t8
	sll     $t6, $t6, 5
	andi    $t9, $t6, 0xFFFF
	sra     $t1, $t9, 4
	sll     $t0, $t1, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	lui     $at, %hi(object_c_80338A58)
	lwc1    $f18, %lo(object_c_80338A58)($at)
	lw      $t5, %lo(object)($t5)
	li      $a1, 0x04B0
	mul.s   $f4, $f6, $f18
	lw      $t2, 0x00FC($t5)
	trunc.w.s $f16, $f4
	mfc1    $t4, $f16
	jal     obj_lib_8029E5EC
	addu    $a0, $t4, $t2
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x3000
	li      $a2, 0x01F4
	jal     object_c_802FA900
	lw      $a0, 0x00FC($t7)
	lui     $t8, %hi(gfx_frame)
	lw      $t8, %lo(gfx_frame)($t8)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	sll     $t6, $t8, 2
	addu    $t6, $t6, $t8
	sll     $t6, $t6, 3
	subu    $t6, $t6, $t8
	sll     $t6, $t6, 4
	addu    $t6, $t6, $t8
	sll     $t6, $t6, 5
	andi    $t9, $t6, 0xFFFF
	sra     $t1, $t9, 4
	sll     $t0, $t1, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_cos)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f6, $f8, $f10
	lw      $t2, 0x00D8($t4)
	trunc.w.s $f18, $f6
	mfc1    $t5, $f18
	nop
	addu    $t7, $t2, $t5
	sw      $t7, 0x00D8($t4)
.L802FE898:
	b       .L802FE8A0
	nop
.L802FE8A0:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl object_c_802FE8B4
object_c_802FE8B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L802FE96C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $t9, 0x5062B081
	li.l    $t9, 0x5062B081
	sw      $t9, 0x01C4($t0)
	jal     obj_lib_802A2320
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $s0, 0x014C($t1)
	beqz    $s0, .L802FE91C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802FE92C
	nop
	b       .L802FE93C
	nop
.L802FE91C:
	jal     object_c_802FE450
	nop
	b       .L802FE93C
	nop
.L802FE92C:
	jal     object_c_802FE520
	nop
	b       .L802FE93C
	nop
.L802FE93C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x002C($t2)
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $a0, object_c_80332898
	la.l    $a0, object_c_80332898
	jal     object_c_802FB938
	lw      $a1, 0x014C($t3)
.L802FE96C:
	b       .L802FE974
	nop
.L802FE974:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FE988:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3CA3D70A
	li.l    $a2, 0x3CA3D70A
	li      $a1, 0x3FC00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, .L802FEAE8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80338A5C)
	lwc1    $f8, %lo(object_c_80338A5C)($at)
	lwc1    $f6, 0x015C($t7)
	c.le.s  $f8, $f6
	nop
	bc1t    .L802FEA08
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f6, $f10
	nop
	bc1f    .L802FEA50
	nop
.L802FEA08:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0300
	jal     object_c_802FA748
	lw      $a0, 0x0160($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0300
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t9)
	beqz    $v0, .L802FEA48
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L802FEA48:
	b       .L802FEAE8
	nop
.L802FEA50:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F4($t2)
	slti    $at, $t3, 0x0003
	beqz    $at, .L802FEA8C
	nop
	jal     rand
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	andi    $t4, $v0, 0x0001
	addiu   $t5, $t4, 0x0002
	lw      $t7, 0x00F4($t6)
	bne     $t5, $t7, .L802FEAAC
	nop
.L802FEA8C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	b       .L802FEAE8
	sw      $t9, 0x014C($t0)
.L802FEAAC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t4, %hi(object_c_803328B8)
	lw      $t2, 0x00F4($t1)
	lw      $t6, 0x00C8($t1)
	sll     $t3, $t2, 1
	addu    $t4, $t4, $t3
	lh      $t4, %lo(object_c_803328B8)($t4)
	addu    $t5, $t4, $t6
	sw      $t5, 0x00FC($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F4($t7)
.L802FEAE8:
	b       .L802FEAF0
	nop
.L802FEAF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FEB00:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A60)
	lwc1    $f6, %lo(object_c_80338A60)($at)
	lwc1    $f4, 0x015C($t6)
	c.le.s  $f6, $f4
	nop
	bc1t    .L802FEB48
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f8
	nop
	c.lt.s  $f4, $f8
	nop
	bc1f    .L802FED14
	nop
.L802FEB48:
	li      $at, 0x41200000
	mtc1    $at, $f12
	li      $at, 0x3F000000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0400
	jal     object_c_802FA748
	lw      $a0, 0x0160($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0200
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $a0, 0x0160($t9)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00D4($t9)
	slti    $at, $v0, 0x2000
	beqz    $at, .L802FED0C
	nop
	lui     $t0, %hi(object)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43C80000
	lwc1    $f16, 0x00A4($t1)
	lwc1    $f10, 0x00A4($t0)
	mtc1    $at, $f6
	sub.s   $f18, $f10, $f16
	c.lt.s  $f6, $f18
	nop
	bc1t    .L802FEBF8
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lwc1    $f4, 0x015C($t0)
	c.lt.s  $f4, $f8
	nop
	bc1f    .L802FED0C
	nop
.L802FEBF8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	beqz    $t3, .L802FEC58
	nop
	jal     rand
	nop
	bgez    $v0, .L802FEC28
	andi    $t4, $v0, 0x0001
	beqz    $t4, .L802FEC28
	nop
	addiu   $t4, $t4, -0x0002
.L802FEC28:
	beqz    $t4, .L802FEC58
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
	lui     $at, %hi(object_c_80338A64)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, %lo(object_c_80338A64)($at)
	b       .L802FED0C
	swc1    $f10, 0x010C($t7)
.L802FEC58:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	li      $at, 0xC3480000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0104($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t2, 0x0106($t0)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f18
	nop
	mul.s   $f6, $f16, $f18
	swc1    $f6, 0x00B8($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lhu     $t6, 0x0106($t5)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f10
	neg.s   $f8, $f4
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x00B0($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B0($t9)
	neg.s   $f6, $f18
	div.s   $f8, $f6, $f4
	swc1    $f8, 0x0100($t9)
.L802FED0C:
	b       .L802FED38
	nop
.L802FED14:
	mtc1    $0, $f12
	lui     $at, %hi(object_c_80338A68)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338A68)($at)
	beqz    $v0, .L802FED38
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
.L802FED38:
	b       .L802FED40
	nop
.L802FED40:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FED50:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802FEE04
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x00B0($t7)
	lwc1    $f10, 0x0100($t7)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0800
	jal     obj_lib_8029E5EC
	lw      $a0, 0x00D4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0400
	jal     object_c_802FA6D4
	lw      $a0, 0x0104($t9)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40400000
	mtc1    $at, $f18
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f4, $f0, $f18
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	sll     $t4, $t3, 12
	addiu   $t5, $t4, -0x1000
	sw      $t5, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       .L802FEF00
	sw      $0, 0x0154($t7)
.L802FEE04:
	move    $a0, $0
	jal     object_c_802FA6D4
	li      $a1, 0x0100
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x012C
	jal     object_c_802FA7BC
	lw      $a0, 0x0108($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x00D8($t9)
	lw      $t0, 0x00C8($t9)
	bgez    $t1, .L802FEE44
	sra     $t2, $t1, 2
	addiu   $at, $t1, 0x0003
	sra     $t2, $at, 2
.L802FEE44:
	subu    $t3, $t0, $t2
	sw      $t3, 0x00C8($t9)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0800
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t4)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t6)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	add.s   $f18, $f10, $f16
	lwc1    $f8, 0x00A4($t5)
	c.lt.s  $f8, $f18
	nop
	bc1f    .L802FEEB4
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f12
	li      $at, 0x3F000000
	mtc1    $at, $f14
	jal     object_c_802FA618
	nop
	b       .L802FEF00
	nop
.L802FEEB4:
	li      $at, 0x3F000000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_c_802FA618
	nop
	beqz    $v0, .L802FEF00
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00D8($t7)
	bnez    $t8, .L802FEEF4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t0)
.L802FEEF4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0108($t2)
.L802FEF00:
	b       .L802FEF08
	nop
.L802FEF08:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FEF18:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0800
	jal     object_c_802FA748
	lw      $a0, 0x0160($t7)
	beqz    $v0, .L802FF01C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D4($t8)
	sw      $t9, 0x00C8($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a1, 0x3F99999A
	li.u    $a2, 0x3F8CCCCD
	li.l    $a2, 0x3F8CCCCD
	li.l    $a1, 0x3F99999A
	jal     object_c_802FAAC8
	addiu   $a0, $a0, 0x010C
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	beqz    $t0, .L802FF014
	nop
	lw      $t1, 0x002C($sp)
	bgez    $t1, .L802FEFAC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	b       .L802FF014
	sw      $0, 0x014C($t2)
.L802FEFAC:
	mtc1    $0, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	sh      $v0, 0x002A($sp)
	li.u    $a0, 0x50558081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50558081
	addiu   $a0, $sp, 0x002A
	li      $a1, 0x0800
	jal     object_c_802FA25C
	li      $a2, 0x3000
	li      $at, 0x41C80000
	mtc1    $at, $f6
	li      $at, 0x41A00000
	mtc1    $at, $f8
	lh      $t4, 0x002A($sp)
	li      $t3, 0x00CB
	sw      $t3, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x0026
	li      $a2, 0x0014
	li      $a3, 0x40200000
	swc1    $f6, 0x0014($sp)
	sw      $t4, 0x001C($sp)
	jal     object_c_8030CD30
	swc1    $f8, 0x0018($sp)
.L802FF014:
	b       .L802FF028
	nop
.L802FF01C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
.L802FF028:
	b       .L802FF030
	nop
.L802FF030:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_802FF040
object_c_802FF040:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L802FF1F8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $t9, 0x5063B081
	li.l    $t9, 0x5063B081
	sw      $t9, 0x01C4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x002C($t1)
	li      $at, 0x44FA0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	jal     obj_lib_802A2320
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00EC($t2)
	andi    $t4, $t3, 0x0200
	beqz    $t4, .L802FF0D0
	nop
	jal     obj_lib_802A3268
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       .L802FF100
	sw      $v0, 0x00C8($t5)
.L802FF0D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0078
	beqz    $t8, .L802FF100
	nop
	li      $at, 0x40C00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t9)
.L802FF100:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00F8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_cos)
	lw      $t4, 0x00F8($t3)
	lwc1    $f16, 0x00A4($t3)
	sll     $t5, $t4, 10
	andi    $t6, $t5, 0xFFFF
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x3FC00000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A4($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, .L802FF198
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802FF1A8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802FF1B8
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802FF1C8
	nop
	b       .L802FF1D8
	nop
.L802FF198:
	jal     object_c_802FE988
	nop
	b       .L802FF1D8
	nop
.L802FF1A8:
	jal     object_c_802FEB00
	nop
	b       .L802FF1D8
	nop
.L802FF1B8:
	jal     object_c_802FED50
	nop
	b       .L802FF1D8
	nop
.L802FF1C8:
	jal     object_c_802FEF18
	nop
	b       .L802FF1D8
	nop
.L802FF1D8:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_803328A8
	la.l    $a0, object_c_803328A8
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
.L802FF1F8:
	b       .L802FF200
	nop
.L802FF200:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_802FF214
object_c_802FF214:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L802FF3C0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80338A6C)
	lwc1    $f6, %lo(object_c_80338A6C)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802FF3B8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t4, 0x00010000
	lw      $t0, 0x0144($t9)
	andi    $t1, $t0, 0x00FC
	sra     $t2, $t1, 2
	addiu   $t3, $t2, 0x0003
	div     $0, $t4, $t3
	mflo    $t5
	sw      $t5, 0x0030($sp)
	bnez    $t3, .L802FF288
	nop
	break   7
.L802FF288:
	li      $at, -0x0001
	bne     $t3, $at, .L802FF2A0
	li      $at, 0x80000000
	bne     $t4, $at, .L802FF2A0
	nop
	break   6
.L802FF2A0:
	li      $t6, 0x0100
	sh      $t6, 0x003A($sp)
	sw      $0, 0x0034($sp)
.L802FF2AC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t9, 0x003A($sp)
	lw      $t8, 0x0188($t7)
	and     $t0, $t8, $t9
	bnez    $t0, .L802FF37C
	nop
	lhu     $t1, 0x0036($sp)
	lui     $at, %hi(math_cos)
	sra     $t2, $t1, 4
	sll     $t4, $t2, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t5, $f18
	nop
	sh      $t5, 0x002E($sp)
	lhu     $t6, 0x0036($sp)
	lui     $at, %hi(math_sin)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sh      $t0, 0x002C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t3, 0x003A($sp)
	la.u    $t7, o_1300472C
	lw      $t2, 0x0144($t1)
	la.l    $t7, o_1300472C
	li      $t6, 0x00C0
	sra     $t5, $t3, 6
	andi    $t4, $t2, 0x0003
	or      $a0, $t4, $t5
	sw      $t6, 0x0014($sp)
	sw      $t7, 0x0018($sp)
	lh      $a1, 0x002E($sp)
	move    $a2, $0
	lh      $a3, 0x002C($sp)
	jal     obj_lib_8029EF64
	sw      $t1, 0x0010($sp)
.L802FF37C:
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	lh      $t2, 0x003A($sp)
	li      $at, 0xFFFF
	addu    $t0, $t8, $t9
	slt     $at, $t0, $at
	sll     $t3, $t2, 1
	sh      $t3, 0x003A($sp)
	bnez    $at, .L802FF2AC
	sw      $t0, 0x0034($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t1, $t5, 0x0001
	sw      $t1, 0x014C($t4)
.L802FF3B8:
	b       .L802FF3F0
	nop
.L802FF3C0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x457A0000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t6)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802FF3F0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
.L802FF3F0:
	b       .L802FF3F8
	nop
.L802FF3F8:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_c_802FF408
object_c_802FF408:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	andi    $t8, $t7, 0x0003
	sw      $t8, 0x00F4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_803328D0+0x00)
	lw      $t0, 0x00F4($t9)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(object_c_803328D0+0x00)($at)
	swc1    $f4, 0x00F8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t5, %hi(object_c_803328D0+0x04)
	lw      $t3, 0x00F4($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(object_c_803328D0+0x04)($t5)
	sw      $t5, 0x01C4($t2)
	lui     $a0, %hi(object)
	la.u    $a1, object_c_803328C0
	la.l    $a1, object_c_803328C0
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t0, %hi(object_c_803328D0+0x08)
	lw      $t8, 0x00F4($t7)
	sll     $t6, $t8, 2
	subu    $t6, $t6, $t8
	sll     $t6, $t6, 2
	addu    $t0, $t0, $t6
	lh      $t0, %lo(object_c_803328D0+0x08)($t0)
	mtc1    $t0, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x019C($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t4, %hi(object_c_803328D0+0x0A)
	lw      $t9, 0x00F4($t1)
	sll     $t3, $t9, 2
	subu    $t3, $t3, $t9
	sll     $t3, $t3, 2
	addu    $t4, $t4, $t3
	lb      $t4, %lo(object_c_803328D0+0x0A)($t4)
	sw      $t4, 0x0180($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338A70)
	lwc1    $f16, %lo(object_c_80338A70)($at)
	lwc1    $f10, 0x00F8($t5)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00E4($t5)
	b       .L802FF508
	nop
.L802FF508:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FF518:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x502F0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502F0081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80338A74)
	lwc1    $f8, %lo(object_c_80338A74)($at)
	lwc1    $f6, 0x00F8($t9)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B0($t9)
	b       .L802FF574
	nop
.L802FF574:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FF584:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	beq     $t7, $t6, .L802FF5E8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $a1, 0x0144($t8)
	lw      $a0, 0x0068($t8)
	andi    $t9, $a1, 0x00FC
	move    $a1, $t9
	sra     $t0, $a1, 2
	jal     object_8029CE58
	move    $a1, $t0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t5, 0x0068($t1)
	lw      $t2, 0x0144($t1)
	lw      $t7, 0x0188($t5)
	andi    $t3, $t2, 0x00FC
	sll     $t4, $t3, 6
	or      $t6, $t4, $t7
	sw      $t6, 0x0188($t5)
.L802FF5E8:
	b       .L802FF5F0
	nop
.L802FF5F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FF600:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A78)
	lwc1    $f14, %lo(object_c_80338A78)($at)
	lwc1    $f4, 0x00F8($t6)
	lwc1    $f6, 0x010C($t6)
	mul.s   $f12, $f4, $f6
	jal     object_c_802FA5D0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80338A7C)
	lwc1    $f10, %lo(object_c_80338A7C)($at)
	lwc1    $f8, 0x010C($t7)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802FF678
	nop
	li.u    $a2, 0x50200081
	li.l    $a2, 0x50200081
	li      $a0, 0x0002
	jal     object_c_802FA428
	li      $a1, 0x0011
.L802FF678:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0108($t8)
	beqz    $t9, .L802FF6B0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0200
	jal     object_c_802FB0CC
	lw      $a0, 0x0100($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       .L802FF84C
	sw      $v0, 0x0108($t1)
.L802FF6B0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338A80)
	lwc1    $f18, %lo(object_c_80338A80)($at)
	lwc1    $f16, 0x015C($t2)
	c.le.s  $f18, $f16
	nop
	bc1f    .L802FF6FC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0160($t3)
	sw      $t4, 0x0100($t3)
	li      $a0, 0x0014
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00FC($t5)
.L802FF6FC:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x0100
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	move    $s0, $v0
	bnez    $s0, .L802FF838
	sw      $s0, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802FF798
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f8, 0x010C($t8)
	c.le.s  $f8, $f10
	nop
	bc1f    .L802FF770
	nop
	jal     object_c_802FF518
	nop
.L802FF770:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0160($t9)
	sw      $t0, 0x0100($t9)
	li      $at, 0x41A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f16
	b       .L802FF838
	swc1    $f16, 0x010C($t1)
.L802FF798:
	lui     $at, %hi(object_c_80338A84)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, %lo(object_c_80338A84)($at)
	swc1    $f18, 0x010C($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x00FC($t4)
	beqz    $t3, .L802FF7D8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00FC($t5)
	addiu   $t7, $t6, -0x0001
	b       .L802FF838
	sw      $t7, 0x00FC($t5)
.L802FF7D8:
	jal     rand
	nop
	andi    $t8, $v0, 0x0003
	beqz    $t8, .L802FF81C
	nop
	jal     object_c_802FAA64
	li      $a0, 0x2000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x0100($t0)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L802FF838
	sw      $v0, 0x00FC($t9)
.L802FF81C:
	jal     object_c_802FF518
	nop
	jal     object_c_802FAA64
	li      $a0, 0x6000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0100($t1)
.L802FF838:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x0200
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0100($t2)
.L802FF84C:
	b       .L802FF854
	nop
.L802FF854:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FF868:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x00F4($t6)
	bne     $t7, $at, .L802FF8AC
	nop
	jal     object_c_802FF584
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0198($t8)
	jal     object_c_802FB128
	nop
	b       .L802FF8D0
	nop
.L802FF8AC:
	jal     object_c_802FF518
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0160($t9)
	sw      $t0, 0x0100($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0108($t1)
.L802FF8D0:
	b       .L802FF8D8
	nop
.L802FF8D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FF8E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FADD4
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, .L802FF920
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L802FF934
	sw      $0, 0x014C($t9)
.L802FF920:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0800
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0100($t0)
.L802FF934:
	b       .L802FF93C
	nop
.L802FF93C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FF94C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_802FF96C
object_c_802FF96C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_c_802FB87C
	lwc1    $f12, 0x00F8($t6)
	beqz    $v0, .L802FFB0C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0068($t7)
	beq     $t8, $t7, .L802FF9C8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x014C($t0)
	bnez    $t1, .L802FF9C8
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802FF9C8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F8($t2)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x001E
	li      $a2, 0x0032
	li      $a3, 0x0005
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x0104
	jal     obj_lib_802A2320
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338A88)
	lwc1    $f10, %lo(object_c_80338A88)($at)
	lwc1    $f4, 0x00B8($t3)
	lwc1    $f6, 0x00F8($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	div.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	swc1    $f16, 0x0024($sp)
	bc1f    .L802FFA44
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
.L802FFA44:
	move    $a0, $0
	jal     obj_lib_8029F514
	lw      $a1, 0x0024($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $s0, 0x014C($t4)
	beqz    $s0, .L802FFA84
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802FFA94
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802FFAA4
	nop
	b       .L802FFAB4
	nop
.L802FFA84:
	jal     object_c_802FF600
	nop
	b       .L802FFAB4
	nop
.L802FFA94:
	jal     object_c_802FF868
	nop
	b       .L802FFAB4
	nop
.L802FFAA4:
	jal     object_c_802FF8E8
	nop
	b       .L802FFAB4
	nop
.L802FFAB4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $t9, object_c_803328F4
	la.l    $t9, object_c_803328F4
	lw      $t6, 0x00F4($t5)
	la.u    $a0, object_c_803328C0
	la.l    $a0, object_c_803328C0
	andi    $t8, $t6, 0x0001
	sll     $t7, $t8, 2
	subu    $t7, $t7, $t8
	sll     $t7, $t7, 1
	addu    $a2, $t7, $t9
	jal     object_c_802FB518
	li      $a1, 0x0001
	beqz    $v0, .L802FFAFC
	nop
	jal     object_c_802FF584
	nop
.L802FFAFC:
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	b       .L802FFB1C
	nop
.L802FFB0C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F0($t1)
.L802FFB1C:
	b       .L802FFB24
	nop
.L802FFB24:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_802FFB38
object_c_802FFB38:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, .L802FFB70
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L802FFC48
	nop
.L802FFB70:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	beqz    $t0, .L802FFC20
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0144($t1)
	lw      $t4, 0x0068($t1)
	sll     $t3, $t2, 2
	lw      $t5, 0x00F4($t4)
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t6, $t3, $t5
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x001C($sp)
	lw      $t8, 0x0068($t7)
	lwc1    $f6, 0x0000($t0)
	lw      $t9, 0x0068($t8)
	lwc1    $f4, 0x00A0($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x001C($sp)
	lw      $t1, 0x0068($t2)
	lwc1    $f16, 0x0004($t3)
	lw      $t4, 0x0068($t1)
	lwc1    $f10, 0x00A4($t4)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t9, 0x001C($sp)
	lw      $t6, 0x0068($t5)
	lwc1    $f6, 0x0008($t9)
	lw      $t8, 0x0068($t6)
	lwc1    $f4, 0x00A8($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t5)
	b       .L802FFC48
	nop
.L802FFC20:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x0068($t0)
	lw      $t1, 0x01AC($t7)
	beqz    $t1, .L802FFC48
	nop
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
.L802FFC48:
	b       .L802FFC50
	nop
.L802FFC50:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FFC60:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A8C)
	lwc1    $f6, %lo(object_c_80338A8C)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802FFD90
	nop
	lui     $a0, %hi(object_heap)
	lw      $a0, %lo(object_heap)($a0)
	jal     heap_alloc
	li      $a1, 0x0064
	sw      $v0, 0x003C($sp)
	lw      $t7, 0x003C($sp)
	beqz    $t7, .L802FFD90
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x003C($sp)
	sw      $t8, 0x00F4($t9)
	sw      $0, 0x0038($sp)
.L802FFCC4:
	lw      $t0, 0x0038($sp)
	lw      $t2, 0x003C($sp)
	sll     $t1, $t0, 2
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	jal     obj_lib_802A2ED4
	addu    $a0, $t1, $t2
	lw      $t3, 0x0038($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0005
	bnez    $at, .L802FFCC4
	sw      $t4, 0x0038($sp)
	jal     obj_lib_802A184C
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130047E4
	la.l    $a2, o_130047E4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	move    $s0, $v0
	beqz    $s0, .L802FFD90
	sw      $s0, 0x0068($t5)
	li      $t6, 0x0001
	sw      $t6, 0x0038($sp)
.L802FFD30:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t9, o_130047E4
	la.l    $t9, o_130047E4
	li      $t8, 0x0065
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	lw      $a0, 0x0038($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t7, 0x0010($sp)
	lw      $t0, 0x0038($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0005
	bnez    $at, .L802FFD30
	sw      $t1, 0x0038($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
	jal     obj_lib_8029F694
	nop
.L802FFD90:
	b       .L802FFD98
	nop
.L802FFD98:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_c_802FFDAC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802FFDE8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x00B0($t7)
	b       .L802FFDF8
	swc1    $f8, 0x0024($sp)
.L802FFDE8:
	li      $at, 0xC1A00000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0024($sp)
.L802FFDF8:
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
.L802FFE00:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x001C($sp)
	lw      $t0, 0x00F4($t9)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t3, $t0, $t2
	addiu   $t4, $t3, -0x0014
	sw      $t4, 0x003C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x001C($sp)
	lw      $t6, 0x00F4($t5)
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $t9, $t6, $t8
	sw      $t9, 0x0038($sp)
	lw      $t1, 0x0038($sp)
	lwc1    $f18, 0x0024($sp)
	mtc1    $0, $f8
	lwc1    $f16, 0x0004($t1)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0004($t1)
	lw      $t0, 0x0038($sp)
	lwc1    $f6, 0x0004($t0)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802FFE88
	nop
	mtc1    $0, $f10
	lw      $t2, 0x0038($sp)
	swc1    $f10, 0x0004($t2)
.L802FFE88:
	lw      $t3, 0x0038($sp)
	lw      $t4, 0x003C($sp)
	lwc1    $f16, 0x0000($t3)
	lwc1    $f18, 0x0000($t4)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0034($sp)
	lw      $t5, 0x0038($sp)
	lw      $t7, 0x003C($sp)
	lwc1    $f6, 0x0004($t5)
	lwc1    $f8, 0x0004($t7)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0030($sp)
	lw      $t6, 0x0038($sp)
	lw      $t8, 0x003C($sp)
	lwc1    $f16, 0x0008($t6)
	lwc1    $f18, 0x0008($t8)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f4, 0x002C($sp)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	add.s   $f18, $f8, $f16
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f6
	swc1    $f0, 0x0028($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f8, 0x00FC($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802FFF64
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f16, 0x00FC($t1)
	div.s   $f18, $f16, $f4
	swc1    $f18, 0x0028($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0028($sp)
	mul.s   $f8, $f6, $f10
	swc1    $f8, 0x0034($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f18, $f16, $f4
	swc1    $f18, 0x0030($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f10, 0x0028($sp)
	mul.s   $f8, $f6, $f10
	swc1    $f8, 0x002C($sp)
.L802FFF64:
	lw      $t0, 0x003C($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f4, 0x0000($t0)
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x0034($sp)
	lw      $t2, 0x003C($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x0004($t2)
	add.s   $f8, $f6, $f10
	swc1    $f8, 0x0030($sp)
	lw      $t3, 0x003C($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f4, 0x0008($t3)
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x002C($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f8, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f10, $f6, $f6
	nop
	mul.s   $f16, $f8, $f8
	add.s   $f4, $f10, $f16
	mul.s   $f6, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f4, $f6
	swc1    $f0, 0x0028($sp)
	lw      $t5, 0x001C($sp)
	li      $t7, 0x0005
	lui     $t4, %hi(object)
	subu    $t6, $t7, $t5
	mtc1    $t6, $f10
	lw      $t4, %lo(object)($t4)
	cvt.s.w $f16, $f10
	lwc1    $f8, 0x00F8($t4)
	mul.s   $f18, $f8, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x0020($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8030004C
	nop
	lwc1    $f10, 0x0020($sp)
	lwc1    $f8, 0x0028($sp)
	div.s   $f16, $f10, $f8
	swc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x002C($sp)
.L8030004C:
	lwc1    $f10, 0x0034($sp)
	lw      $t8, 0x0038($sp)
	swc1    $f10, 0x0000($t8)
	lwc1    $f8, 0x0030($sp)
	lw      $t9, 0x0038($sp)
	swc1    $f8, 0x0004($t9)
	lwc1    $f16, 0x002C($sp)
	lw      $t1, 0x0038($sp)
	swc1    $f16, 0x0008($t1)
	lw      $t0, 0x001C($sp)
	addiu   $t2, $t0, 0x0001
	slti    $at, $t2, 0x0005
	bnez    $at, .L802FFE00
	sw      $t2, 0x001C($sp)
	b       .L8030008C
	nop
.L8030008C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_c_8030009C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x43160000
	li      $a2, 0x40800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00F8($t6)
	swc1    $f4, 0x00FC($t6)
	b       .L803000D4
	nop
.L803000D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803000E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0xC0800000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	jal     object_c_8030009C
	nop
	move    $a0, $0
	jal     object_c_802FA660
	li      $a1, 0x0100
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0003
	beqz    $t9, .L803002BC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $a0, 0x0160($t1)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t1)
	slti    $at, $v0, 0x0800
	beqz    $at, .L80300278
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x001F
	bnez    $at, .L8030025C
	nop
	jal     obj_lib_802A0008
	move    $a0, $0
	beqz    $v0, .L80300240
	nop
	jal     obj_lib_8029FE6C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0029
	bnez    $at, .L80300238
	nop
	li.u    $a0, 0x303A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x303A0081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0150($t7)
	li      $at, 0x43340000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t8)
	li      $at, 0x430C0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t9)
	li      $at, 0x41A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E4($t1)
	jal     object_c_802F9770
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x010C($t2)
.L80300238:
	b       .L80300254
	nop
.L80300240:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x0154($t3)
.L80300254:
	b       .L80300270
	nop
.L8030025C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t6)
.L80300270:
	b       .L803002B4
	nop
.L80300278:
	li.u    $a0, 0x30390081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30390081
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t7)
	li      $at, 0x41A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t8)
.L803002B4:
	b       .L803002DC
	nop
.L803002BC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0190
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
.L803002DC:
	b       .L803002E4
	nop
.L803002E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803002F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0400
	jal     object_c_802FA6D4
	lw      $a0, 0x010C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t7)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L803003FC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x0108($t8)
	bne     $t9, $at, .L80300384
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	lui     $t1, %hi(object)
	swc1    $f8, 0x00B0($t0)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00B0($t1)
	swc1    $f10, 0x00B8($t1)
	li      $at, 0x41F00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0104($t2)
.L80300384:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x44610000
	mtc1    $at, $f18
	lwc1    $f4, 0x0100($t3)
	li      $at, 0x435C0000
	mtc1    $at, $f8
	sub.s   $f6, $f18, $f4
	c.lt.s  $f8, $f6
	swc1    $f6, 0x0024($sp)
	bc1f    .L803003C4
	nop
	li      $at, 0x435C0000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0024($sp)
.L803003C4:
	li      $at, 0x435C0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	div.s   $f4, $f16, $f18
	lwc1    $f6, 0x00F8($t4)
	mul.s   $f8, $f6, $f4
	swc1    $f8, 0x00FC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
	b       .L803004B4
	nop
.L803003FC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	lwc1    $f12, 0x0008($t7)
	jal     atan2
	lwc1    $f14, 0x0000($t7)
	sll     $s0, $v0, 16
	sra     $t8, $s0, 16
	move    $s0, $t8
	move    $a0, $s0
	jal     obj_lib_8029E5EC
	li      $a1, 0x1000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	lwc1    $f10, 0x0104($t9)
	c.eq.s  $f10, $f16
	nop
	bc1t    .L80300470
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3F4CCCCD
	li.l    $a2, 0x3F4CCCCD
	li      $a1, 0x0000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0104
	b       .L8030047C
	nop
.L80300470:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0150($t0)
.L8030047C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, 0x0104($t1)
	swc1    $f18, 0x00FC($t1)
	lui     $t2, %hi(gfx_frame)
	lw      $t2, %lo(gfx_frame)($t2)
	andi    $t3, $t2, 0x0001
	beqz    $t3, .L803004B4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0104($t4)
	neg.s   $f4, $f6
	swc1    $f4, 0x00FC($t4)
.L803004B4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x001E
	beqz    $at, .L803004D4
	nop
	jal     obj_lib_8029FE6C
	nop
.L803004D4:
	b       .L803004DC
	nop
.L803004DC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_803004F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	li      $at, 0xC0800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00E4($t7)
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0002
	bne     $v0, $at, .L80300584
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0003
	beqz    $t0, .L80300584
	nop
	li      $a0, 0x00AD
	jal     camera_8029000C
	move    $a1, $t8
	li      $at, 0x0001
	bne     $v0, $at, .L80300584
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x01AC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0154($t3)
.L80300584:
	b       .L8030058C
	nop
.L8030058C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030059C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_8030009C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, .L80300760
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0110($t9)
	bnez    $t0, .L80300654
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a1, 0x0320
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t1)
	beqz    $v0, .L80300640
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x003D
	bnez    $at, .L80300638
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0110($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0110($t4)
	li      $at, 0x43480000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0128($t7)
.L80300638:
	b       .L8030064C
	nop
.L80300640:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
.L8030064C:
	b       .L80300760
	nop
.L80300654:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t2, %hi(object)
	lw      $t0, 0x0110($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0110($t9)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0110($t2)
	slti    $at, $t3, 0x0006
	beqz    $at, .L803006DC
	nop
	li.u    $a0, 0x30390081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30390081
	jal     o_script_80383D1C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sll     $t5, $v0, 13
	lw      $t4, 0x0160($t6)
	addu    $t7, $t5, $t4
	sw      $t7, 0x00C8($t6)
	li      $at, 0x41F00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t8)
	li      $at, 0x42480000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	b       .L80300760
	swc1    $f8, 0x00B0($t0)
.L803006DC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t1, 0x0003
	sw      $t1, 0x01AC($t9)
	lui     $at, %hi(object_c_80338A90)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, %lo(object_c_80338A90)($at)
	swc1    $f10, 0x0164($t2)
	lui     $at, %hi(object_c_80338A94)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f16, %lo(object_c_80338A94)($at)
	swc1    $f16, 0x016C($t3)
	jal     obj_lib_802A2748
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00C8($t5)
	jal     obj_lib_802A1634
	nop
	li      $at, 0x41000000
	mtc1    $at, $f18
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	div.s   $f4, $f0, $f18
	swc1    $f4, 0x00B8($t4)
	li      $at, 0x42480000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t7)
.L80300760:
	b       .L80300768
	nop
.L80300768:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80300778:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01B0($t6)
	bnez    $t7, .L803007F4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0200
	beqz    $t0, .L803007EC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x01B0($t2)
	jal     obj_lib_802A3268
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00C8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80338A98)
	lwc1    $f6, %lo(object_c_80338A98)($at)
	lwc1    $f4, 0x00B8($t4)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t4)
.L803007EC:
	b       .L80300890
	nop
.L803007F4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00EC($t5)
	andi    $t7, $t6, 0x0003
	beqz    $t7, .L80300890
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	sw      $t8, 0x01AC($t9)
	lui     $at, %hi(object_c_80338A9C)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, %lo(object_c_80338A9C)($at)
	swc1    $f10, 0x0164($t0)
	lui     $at, %hi(object_c_80338AA0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, %lo(object_c_80338AA0)($at)
	swc1    $f16, 0x016C($t1)
	jal     obj_lib_802A2748
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C8($t2)
	jal     obj_lib_802A1634
	nop
	li      $at, 0x42480000
	mtc1    $at, $f18
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	div.s   $f4, $f0, $f18
	swc1    $f4, 0x00B8($t3)
	li      $at, 0x42F00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t4)
.L80300890:
	b       .L80300898
	nop
.L80300898:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803008A8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, .L803008DC
	nop
	li      $t9, 0x0001
	lui     $at, %hi(_camera_bss+0x6A8)
	sw      $t9, %lo(_camera_bss+0x6A8)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x01AC($t1)
.L803008DC:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_803008EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00AD
	li      $at, -0x0001
	bne     $v0, $at, .L80300928
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
.L80300928:
	b       .L80300930
	nop
.L80300930:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80300940:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01AC($t6)
	bnez    $t7, .L803009B0
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L803009B0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	lui     $t1, %hi(object)
	swc1    $f8, 0x00B0($t0)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00B0($t1)
	b       .L80300DB8
	swc1    $f10, 0x00B8($t1)
.L803009B0:
	jal     obj_lib_802A2320
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x01AC($t2)
	sltiu   $at, $t3, 0x0006
	beqz    $at, .L80300A88
	nop
	sll     $t3, $t3, 2
	lui     $at, %hi(object_c_80338AA4)
	addu    $at, $at, $t3
	lw      $t3, %lo(object_c_80338AA4)($at)
	jr      $t3
	nop
.globl L803009E8
L803009E8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $s0, 0x0150($t4)
	beqz    $s0, .L80300A10
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80300A20
	nop
	b       .L80300A30
	nop
.L80300A10:
	jal     object_c_803000E4
	nop
	b       .L80300A30
	nop
.L80300A20:
	jal     object_c_803002F4
	nop
	b       .L80300A30
	nop
.L80300A30:
	b       .L80300A88
	nop
.globl L80300A38
L80300A38:
	jal     object_c_803004F0
	nop
	b       .L80300A88
	nop
.globl L80300A48
L80300A48:
	jal     object_c_8030059C
	nop
	b       .L80300A88
	nop
.globl L80300A58
L80300A58:
	jal     object_c_80300778
	nop
	b       .L80300A88
	nop
.globl L80300A68
L80300A68:
	jal     object_c_803008A8
	nop
	b       .L80300A88
	nop
.globl L80300A78
L80300A78:
	jal     object_c_803008EC
	nop
	b       .L80300A88
	nop
.L80300A88:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0068($t5)
	lwc1    $f16, 0x00A0($t5)
	lw      $t6, 0x00F4($t5)
	lwc1    $f18, 0x00A0($t7)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lwc1    $f6, 0x00A4($t8)
	lw      $t0, 0x00F4($t8)
	lwc1    $f8, 0x00A4($t9)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0004($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	lwc1    $f16, 0x00A8($t1)
	lw      $t3, 0x00F4($t1)
	lwc1    $f18, 0x00A8($t2)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0008($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t7, 0x00F4($t4)
	lwc1    $f6, 0x0000($t7)
	lwc1    $f10, 0x0004($t7)
	lwc1    $f4, 0x0008($t7)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	add.s   $f18, $f8, $f16
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f6, $f18
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	swc1    $f0, 0x0100($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f8
	lwc1    $f10, 0x00F8($t6)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f4, 0x0100($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80300D08
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f10, 0x0100($t8)
	div.s   $f8, $f18, $f10
	swc1    $f8, 0x0028($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, 0x002C($sp)
	swc1    $f16, 0x0100($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x0028($sp)
	lw      $t1, 0x00F4($t2)
	lwc1    $f4, 0x0000($t1)
	mul.s   $f18, $f4, $f6
	swc1    $f18, 0x0000($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x0028($sp)
	lw      $t4, 0x00F4($t3)
	lwc1    $f10, 0x0004($t4)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x0004($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x0028($sp)
	lw      $t5, 0x00F4($t7)
	lwc1    $f4, 0x0008($t5)
	mul.s   $f18, $f4, $f6
	swc1    $f18, 0x0008($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x01AC($t6)
	bnez    $t9, .L80300C70
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F4($t8)
	lw      $t2, 0x0068($t8)
	lwc1    $f10, 0x0000($t0)
	lwc1    $f8, 0x00A0($t2)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A0($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00F4($t1)
	lw      $t4, 0x0068($t1)
	lwc1    $f4, 0x0004($t3)
	lwc1    $f6, 0x00A4($t4)
	add.s   $f18, $f4, $f6
	swc1    $f18, 0x00A4($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t5, 0x00F4($t7)
	lw      $t6, 0x0068($t7)
	lwc1    $f10, 0x0008($t5)
	lwc1    $f8, 0x00A8($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A8($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	b       .L80300D00
	sw      $t9, 0x0108($t0)
.L80300C70:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t8, 0x0068($t2)
	lwc1    $f4, 0x00A4($t8)
	swc1    $f4, 0x0024($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	lwc1    $f6, 0x00A0($t3)
	lw      $t1, 0x0068($t3)
	lwc1    $f18, 0x0000($t4)
	sub.s   $f10, $f6, $f18
	swc1    $f10, 0x00A0($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	lwc1    $f8, 0x00A4($t5)
	lw      $t7, 0x0068($t5)
	lwc1    $f16, 0x0004($t6)
	sub.s   $f4, $f8, $f16
	swc1    $f4, 0x00A4($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x0024($sp)
	lw      $t0, 0x0068($t9)
	lwc1    $f6, 0x00A4($t0)
	sub.s   $f10, $f6, $f18
	swc1    $f10, 0x00B0($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t8, 0x00F4($t2)
	lwc1    $f8, 0x00A8($t2)
	lw      $t4, 0x0068($t2)
	lwc1    $f16, 0x0008($t8)
	sub.s   $f4, $f8, $f16
	swc1    $f4, 0x00A8($t4)
.L80300D00:
	b       .L80300D14
	nop
.L80300D08:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0108($t3)
.L80300D14:
	jal     object_c_802FFDAC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_80332900
	la.l    $a0, object_c_80332900
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
	beqz    $v0, .L80300DB8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t6, 0x0001
	sw      $t6, 0x0150($t5)
	li      $at, 0x43340000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t9)
	li      $at, 0x43960000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t0)
	li      $at, 0xC0800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t8)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t2, -0x3000
	sw      $t2, 0x010C($t4)
.L80300DB8:
	b       .L80300DC0
	nop
.L80300DC0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_80300DD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F6BC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_heap)
	lw      $a0, %lo(object_heap)($a0)
	jal     heap_free
	lw      $a1, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x01AC($t8)
	beqz    $t9, .L80300E28
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L80300E28:
	b       .L80300E30
	nop
.L80300E30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80300E40
object_c_80300E40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L80300E80
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80300E90
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80300EA0
	nop
	b       .L80300EB0
	nop
.L80300E80:
	jal     object_c_802FFC60
	nop
	b       .L80300EB0
	nop
.L80300E90:
	jal     object_c_80300940
	nop
	b       .L80300EB0
	nop
.L80300EA0:
	jal     object_c_80300DD4
	nop
	b       .L80300EB0
	nop
.L80300EB0:
	b       .L80300EB8
	nop
.L80300EB8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80300ECC
object_c_80300ECC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	bnez    $t7, .L80300F34
	nop
	jal     obj_lib_802A3754
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $s0, $v0
	beqz    $s0, .L80300F2C
	sw      $s0, 0x0100($t8)
	li.u    $a0, 0x3065C081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x3065C081
	li      $at, 0xC28C0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00FC($t9)
.L80300F2C:
	b       .L80300FFC
	nop
.L80300F34:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41C80000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00FC
	beqz    $v0, .L80300F6C
	nop
	jal     obj_lib_802A3754
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       .L80300FFC
	sw      $v0, 0x0100($t0)
.L80300F6C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t2, %hi(object)
	li      $at, 0xC33E0000
	lwc1    $f6, 0x0104($t1)
	lwc1    $f8, 0x00FC($t1)
	mtc1    $at, $f18
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0104($t1)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, 0x0104($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80300FFC
	nop
	li      $at, 0xC33E0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0104($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0068($t4)
	beq     $t5, $t4, .L80300FFC
	nop
	jal     Na_g_803220F0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	lw      $t8, 0x0068($t7)
	sw      $t6, 0x01AC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $t9, 0x0068($t9)
.L80300FFC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	lwc1    $f6, 0x0104($t0)
	c.eq.s  $f6, $f8
	nop
	bc1t    .L80301038
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x0104($t1)
	lwc1    $f16, 0x0168($t1)
	add.s   $f18, $f10, $f16
	b       .L8030112C
	swc1    $f18, 0x00A4($t1)
.L80301038:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0188($t2)
	andi    $t5, $t3, 0xFF00
	bnez    $t5, .L8030112C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t4)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80301094
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t6, %hi(object)
	sw      $0, 0x00F4($t7)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00F4($t6)
	b       .L8030111C
	sw      $t8, 0x0154($t6)
.L80301094:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0160($t9)
	lw      $t1, 0x00F8($t9)
	lw      $t4, 0x00F4($t9)
	subu    $t2, $t0, $t1
	sll     $t3, $t2, 16
	sra     $t5, $t3, 16
	addu    $t7, $t4, $t5
	sw      $t7, 0x00F4($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     obj_lib_802A3674
	lw      $a0, 0x00F4($t8)
	li.u    $at, 0x00030001
	li.l    $at, 0x00030001
	slt     $at, $v0, $at
	bnez    $at, .L8030111C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t0, 0x0154($t6)
	slti    $at, $t0, 0x00C8
	beqz    $at, .L8030111C
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0005
	jal     obj_lib_802A1B8C
	li      $a2, 0x41A00000
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_8029CE58
	li      $a1, 0x0001
.L8030111C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	sw      $t2, 0x00F8($t1)
.L8030112C:
	b       .L80301134
	nop
.L80301134:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80301148
object_c_80301148:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_1300478C
	jal     obj_lib_8029F95C
	la.l    $a0, o_1300478C
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0068($t6)
	b       .L80301170
	nop
.L80301170:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80301180
object_c_80301180:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x01B0($t7)
	beqz    $t8, .L803011F8
	nop
	li.u    $a0, 0x300F0081
	jal     obj_lib_802A37DC
	li.l    $a0, 0x300F0081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t9)
	lw      $a2, 0x00A4($t9)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t9)
	move    $a0, $0
	li      $a1, 0x007F
	jal     object_a_802AAE8C
	li      $a2, 0x43480000
	li      $a0, 0x001E
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L803011F8:
	b       .L80301200
	nop
.L80301200:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80301210
object_c_80301210:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	lw      $t9, 0x0068($t6)
	sll     $t8, $t7, 2
	lw      $t0, 0x00F8($t9)
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $t1, $t8, $t0
	sw      $t1, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x002C($t3)
	lw      $t4, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t5, 0x000C($t4)
	sw      $t5, 0x00D0($t7)
	lw      $t6, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x000E($t6)
	sw      $t9, 0x00D4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0xC2160000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($t0)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0018($sp)
	lhu     $t2, 0x00D2($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f18, $f16
	swc1    $f4, 0x0028($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0018($sp)
	lhu     $t7, 0x00D2($t5)
	sra     $t6, $t7, 4
	sll     $t9, $t6, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0020($sp)
	lhu     $t0, 0x00D6($t8)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f18, %lo(math_sin)($at)
	mul.s   $f4, $f18, $f16
	swc1    $f4, 0x002C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0020($sp)
	lhu     $t4, 0x00D6($t3)
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	addu    $at, $at, $t7
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lwc1    $f16, 0x002C($sp)
	lui     $t9, %hi(object)
	lwc1    $f18, 0x0000($t6)
	lw      $t9, %lo(object)($t9)
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t9)
	lw      $t8, 0x001C($sp)
	lwc1    $f8, 0x0028($sp)
	lui     $t0, %hi(object)
	lwc1    $f6, 0x0004($t8)
	lw      $t0, %lo(object)($t0)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t0)
	lw      $t1, 0x001C($sp)
	lwc1    $f16, 0x0024($sp)
	lui     $t2, %hi(object)
	lwc1    $f18, 0x0008($t1)
	lw      $t2, %lo(object)($t2)
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0068($t3)
	lwc1    $f6, 0x00A4($t3)
	lwc1    $f8, 0x00F4($t4)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80301418
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0xC1F00000
	mtc1    $at, $f18
	lwc1    $f10, 0x00A4($t5)
	add.s   $f16, $f10, $f18
	swc1    $f16, 0x00A4($t5)
	jal     obj_lib_802A0604
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00E8($t7)
	lwc1    $f6, 0x00A4($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80301418
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x00E8($t6)
	swc1    $f8, 0x00A4($t6)
.L80301418:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x001C($sp)
	lwc1    $f10, 0x00A4($t9)
	swc1    $f10, 0x0004($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $0
	lw      $t1, 0x0068($t0)
	jal     obj_lib_8029F514
	lw      $a1, 0x00FC($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	lw      $t3, 0x0068($t2)
	lwc1    $f18, 0x00FC($t3)
	c.eq.s  $f18, $f16
	nop
	bc1f    .L80301470
	nop
	jal     obj_lib_8029FE6C
	nop
.L80301470:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0004
	lw      $t5, 0x0068($t4)
	lw      $t7, 0x014C($t5)
	bne     $t7, $at, .L8030149C
	nop
	jal     obj_lib_802A05B4
	nop
	b       .L803014B4
	nop
.L8030149C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, object_c_80332910
	la.l    $a0, object_c_80332910
	jal     object_c_802FB938
	lw      $a1, 0x014C($t6)
.L803014B4:
	b       .L803014BC
	nop
.L803014BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_803014CC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	lui     $a0, %hi(object_heap)
	lw      $a0, %lo(object_heap)($a0)
	jal     heap_alloc
	li      $a1, 0x0050
	sw      $v0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	beqz    $t6, .L803016C8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0030($sp)
	sw      $t7, 0x00F8($t8)
	sw      $0, 0x0034($sp)
.L80301508:
	lw      $t9, 0x0034($sp)
	lw      $t1, 0x0030($sp)
	sll     $t0, $t9, 2
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	jal     obj_lib_802A2ED4
	addu    $a0, $t0, $t1
	lw      $t4, 0x0034($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0030($sp)
	sll     $t5, $t4, 2
	lwc1    $f4, 0x00A0($t2)
	addu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addu    $t6, $t3, $t5
	swc1    $f4, 0x0000($t6)
	lw      $t9, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0030($sp)
	sll     $t0, $t9, 2
	lwc1    $f6, 0x00A4($t7)
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t8, $t0
	swc1    $f6, 0x0004($t1)
	lw      $t3, 0x0034($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0030($sp)
	sll     $t5, $t3, 2
	lwc1    $f8, 0x00A8($t2)
	addu    $t5, $t5, $t3
	sll     $t5, $t5, 2
	addu    $t6, $t4, $t5
	swc1    $f8, 0x0008($t6)
	lw      $t0, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0030($sp)
	sll     $t1, $t0, 2
	lw      $t9, 0x00D0($t7)
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $t2, $t8, $t1
	sh      $t9, 0x000C($t2)
	lw      $t6, 0x0034($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0030($sp)
	sll     $t7, $t6, 2
	lw      $t4, 0x00D4($t3)
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t0, $t5, $t7
	sh      $t4, 0x000E($t0)
	lw      $t8, 0x0034($sp)
	addiu   $t1, $t8, 0x0001
	slti    $at, $t1, 0x0004
	bnez    $at, .L80301508
	sw      $t1, 0x0034($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t9, -0x0001
	sh      $t9, 0x0040($t2)
	li      $t3, 0x0001
	sw      $t3, 0x0034($sp)
.L80301618:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t7, o_130048E0
	la.l    $t7, o_130048E0
	li      $t5, 0x0058
	sw      $t5, 0x0014($sp)
	sw      $t7, 0x0018($sp)
	lw      $a0, 0x0034($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t6, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lw      $t4, 0x002C($sp)
	beqz    $t4, .L8030169C
	nop
	la.u    $a1, 0x0500C874
	la.l    $a1, 0x0500C874
	lw      $a0, 0x002C($sp)
	jal     obj_lib_8029F59C
	move    $a2, $0
	lw      $t0, 0x0034($sp)
	li      $at, 0x001A
	lw      $t2, 0x002C($sp)
	sll     $t8, $t0, 2
	subu    $t8, $t8, $t0
	sll     $t8, $t8, 3
	subu    $t8, $t8, $t0
	div     $0, $t8, $at
	mfhi    $t1
	addiu   $t9, $t1, -0x0001
	sh      $t9, 0x0040($t2)
.L8030169C:
	lw      $t3, 0x0034($sp)
	addiu   $t6, $t3, 0x0001
	slti    $at, $t6, 0x0004
	bnez    $at, .L80301618
	sw      $t6, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t7)
	jal     obj_lib_8029F694
	nop
.L803016C8:
	b       .L803016D0
	nop
.L803016D0:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_c_803016E0:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x420C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($t6)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	li      $t7, 0x0001
	sw      $t7, 0x0020($sp)
.L8030170C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0020($sp)
	lw      $t9, 0x00F8($t8)
	sll     $t1, $t0, 2
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $t2, $t9, $t1
	addiu   $t3, $t2, -0x0014
	sw      $t3, 0x003C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0020($sp)
	lw      $t5, 0x00F8($t4)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t5, $t7
	sw      $t8, 0x0038($sp)
	lw      $t0, 0x0038($sp)
	lw      $t9, 0x003C($sp)
	lwc1    $f10, 0x0000($t0)
	lwc1    $f16, 0x0000($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	lw      $t1, 0x0038($sp)
	lw      $t2, 0x003C($sp)
	lwc1    $f4, 0x0004($t1)
	lwc1    $f6, 0x0004($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lw      $t3, 0x0038($sp)
	lw      $t4, 0x003C($sp)
	lwc1    $f10, 0x0008($t3)
	lwc1    $f16, 0x0008($t4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0034($sp)
	neg.s   $f12, $f12
	jal     atan2
	neg.s   $f14, $f14
	lw      $t6, 0x003C($sp)
	lh      $t5, 0x000E($t6)
	subu    $t7, $v0, $t5
	sh      $t7, 0x0028($sp)
	addiu   $a0, $sp, 0x0028
	li      $a1, -0x2000
	jal     object_c_802FA25C
	li      $a2, 0x2000
	lw      $t8, 0x003C($sp)
	lh      $t9, 0x0028($sp)
	lw      $t2, 0x0038($sp)
	lh      $t0, 0x000E($t8)
	addu    $t1, $t0, $t9
	sh      $t1, 0x000E($t2)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f8, 0x002C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	lwc1    $f12, 0x0024($sp)
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	lw      $t3, 0x003C($sp)
	lh      $t4, 0x000C($t3)
	subu    $t6, $v0, $t4
	sh      $t6, 0x002A($sp)
	addiu   $a0, $sp, 0x002A
	li      $a1, -0x2000
	jal     object_c_802FA25C
	li      $a2, 0x2000
	lw      $t5, 0x003C($sp)
	lh      $t8, 0x002A($sp)
	lw      $t9, 0x0038($sp)
	lh      $t7, 0x000C($t5)
	addu    $t0, $t7, $t8
	sh      $t0, 0x000C($t9)
	lw      $t1, 0x0038($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x001C($sp)
	lhu     $t2, 0x000C($t1)
	lw      $t6, 0x003C($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_sin)($at)
	lwc1    $f8, 0x0004($t6)
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f4, $f8
	swc1    $f6, 0x0004($t1)
	lw      $t5, 0x0038($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x001C($sp)
	lhu     $t7, 0x000C($t5)
	sra     $t8, $t7, 4
	sll     $t0, $t8, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lw      $t9, 0x0038($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0024($sp)
	lhu     $t2, 0x000E($t9)
	lw      $t6, 0x003C($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f10, 0x0000($t6)
	mul.s   $f6, $f4, $f8
	sub.s   $f16, $f10, $f6
	swc1    $f16, 0x0000($t9)
	lw      $t1, 0x0038($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0024($sp)
	lhu     $t5, 0x000E($t1)
	lw      $t0, 0x003C($sp)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f18, %lo(math_cos)($at)
	lwc1    $f10, 0x0008($t0)
	mul.s   $f8, $f18, $f4
	sub.s   $f6, $f10, $f8
	swc1    $f6, 0x0008($t1)
	lw      $t2, 0x0020($sp)
	addiu   $t3, $t2, 0x0001
	slti    $at, $t3, 0x0004
	bnez    $at, .L8030170C
	sw      $t3, 0x0020($sp)
	b       .L80301930
	nop
.L80301930:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_c_80301940:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338ABC)
	lwc1    $f6, %lo(object_c_80338ABC)($at)
	lwc1    $f4, 0x00B8($t6)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00FC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x01AE($t7)
	slti    $at, $t8, 0x0002
	beqz    $at, .L80301A0C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x01AE($t9)
	bnez    $t0, .L803019B0
	nop
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SEQ_mute
	li      $a2, 0x0028
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sh      $t1, 0x01AE($t2)
.L803019B0:
	lui     $t3, %hi(obj_mario)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, %lo(obj_mario)($t3)
	lwc1    $f16, 0x00A4($t4)
	lwc1    $f10, 0x00A4($t3)
	c.lt.s  $f10, $f16
	nop
	bc1t    .L803019F4
	nop
	li      $a0, 0x0002
	move    $a1, $0
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0096
	beqz    $v0, .L80301A04
	nop
.L803019F4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sh      $t5, 0x01AE($t6)
.L80301A04:
	b       .L80301C70
	nop
.L80301A0C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80332938+4*-1)
	lw      $t8, 0x0184($t7)
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f12, %lo(object_c_80332938+4*-1)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0110($t0)
	beqz    $t1, .L80301A64
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0110($t2)
	addiu   $t4, $t3, -0x0001
	b       .L80301B64
	sw      $t4, 0x0110($t2)
.L80301A64:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338AC0)
	lwc1    $f4, %lo(object_c_80338AC0)($at)
	lwc1    $f18, 0x015C($t5)
	c.le.s  $f4, $f18
	nop
	bc1f    .L80301A98
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0160($t6)
	sw      $t7, 0x010C($t6)
.L80301A98:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x010C
	beqz    $v0, .L80301ACC
	nop
	li      $a0, 0x001E
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       .L80301B64
	sw      $v0, 0x0110($t8)
.L80301ACC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0184($t9)
	slti    $at, $t0, 0x0004
	beqz    $at, .L80301AF8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0160($t1)
	b       .L80301B64
	sw      $t3, 0x010C($t1)
.L80301AF8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x0108($t4)
	beqz    $t2, .L80301B24
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0108($t5)
	addiu   $t6, $t7, -0x0001
	b       .L80301B64
	sw      $t6, 0x0108($t5)
.L80301B24:
	jal     o_script_80383D1C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sll     $t8, $v0, 16
	sra     $t9, $t8, 16
	lw      $t1, 0x00C8($t3)
	sll     $t0, $t9, 14
	addu    $t4, $t0, $t1
	sw      $t4, 0x010C($t3)
	li      $a0, 0x001E
	jal     object_c_802FA964
	li      $a1, 0x0032
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x0108($t2)
.L80301B64:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	lwc1    $f6, 0x00B8($t7)
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sh      $t5, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $a1, 0x001E($sp)
	jal     obj_lib_8029E5EC
	lw      $a0, 0x010C($t8)
	lh      $a1, 0x001E($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sll     $t0, $a1, 1
	move    $a1, $t0
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t9)
	move    $a0, $0
	jal     object_c_802FA6D4
	li      $a1, 0x0320
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x0154($t1)
	slti    $at, $t4, 0x003C
	beqz    $at, .L80301C00
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $a0, object_c_80332920
	la.l    $a0, object_c_80332920
	jal     object_c_802FB938
	lw      $a1, 0x014C($t3)
	b       .L80301C70
	nop
.L80301C00:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $a0, object_c_80332920
	la.u    $a2, object_c_80332930
	la.l    $a2, object_c_80332930
	la.l    $a0, object_c_80332920
	jal     object_c_802FB518
	lw      $a1, 0x014C($t2)
	beqz    $v0, .L80301C70
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0003
	lw      $t6, 0x014C($t7)
	beq     $t6, $at, .L80301C50
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t8)
.L80301C50:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0110($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00FC($t0)
.L80301C70:
	b       .L80301C78
	nop
.L80301C78:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80301C88:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	la.u    $t7, object_c_80332948
	la.l    $t7, object_c_80332948
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x001C
	lw      $t0, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t0, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li      $a1, 0x0000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0104
	beqz    $v0, .L80301CFC
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	li      $a1, 0x40800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0030
	b       .L80301D14
	nop
.L80301CFC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x0030($t1)
	lwc1    $f6, 0x0104($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($t1)
.L80301D14:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x40800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0030($t2)
	c.le.s  $f16, $f10
	nop
	bc1f    .L80301E48
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x001F
	bnez    $at, .L80301E40
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a0, 0x0002
	move    $a1, $0
	lw      $t9, 0x0184($t5)
	li      $a2, 0x00A2
	sll     $t8, $t9, 2
	addu    $a3, $sp, $t8
	jal     obj_lib_802A4BE4
	lw      $a3, 0x0014($a3)
	beqz    $v0, .L80301E40
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t1, %hi(object)
	li      $at, 0x0001
	lw      $t7, 0x0184($t6)
	addiu   $t0, $t7, -0x0001
	sw      $t0, 0x0184($t6)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0184($t1)
	bne     $t2, $at, .L80301DCC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	sw      $t3, 0x014C($t4)
	jal     obj_lib_802A05B4
	nop
	b       .L80301E40
	nop
.L80301DCC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x00D4($t8)
	sw      $t7, 0x00C8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t6, 0x0184($t0)
	bne     $t6, $at, .L80301E40
	nop
	li.u    $a0, 0x502F6081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502F6081
	li      $at, 0x41200000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t1)
	li      $at, 0x428C0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t2)
.L80301E40:
	b       .L80301E54
	nop
.L80301E48:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0154($t3)
.L80301E54:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $a0, object_c_80332920
	la.l    $a0, object_c_80332920
	jal     object_c_802FB938
	lw      $a1, 0x014C($t4)
	b       .L80301E74
	nop
.L80301E74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80301E84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80301EE4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lw      $t8, 0x00D0($t7)
	lwc1    $f8, 0x00B0($t7)
	mtc1    $t8, $f18
	mul.s   $f16, $f8, $f10
	cvt.s.w $f4, $f18
	sub.s   $f6, $f4, $f16
	trunc.w.s $f8, $f6
	mfc1    $t0, $f8
	b       .L80301EF0
	sw      $t0, 0x00D0($t7)
.L80301EE4:
	move    $a0, $0
	jal     object_c_802FA6D4
	li      $a1, 0x0190
.L80301EF0:
	li      $at, 0x3F800000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_c_802FA5D0
	nop
	beqz    $v0, .L80301F40
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D0($t1)
	bnez    $t2, .L80301F40
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D4($t5)
	sw      $t6, 0x00C8($t5)
.L80301F40:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332920
	la.l    $a0, object_c_80332920
	jal     object_c_802FB938
	lw      $a1, 0x014C($t8)
	b       .L80301F60
	nop
.L80301F60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80301F70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0014
	bnez    $at, .L8030200C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0014
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L80301FB4
	nop
	li.u    $a0, 0x50744081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50744081
.L80301FB4:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	li      $a1, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, .L80301FFC
	nop
	li      $at, 0x45000000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_b_802F2B88
	li      $a2, 0x0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
.L80301FFC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x002C($t2)
.L8030200C:
	b       .L80302014
	nop
.L80302014:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80302024:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x003C
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L80302064
	nop
	jal     Na_BGM_stop
	li      $a0, 0x0416
	lui     $at, %hi(object_c_80338AC4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, %lo(object_c_80338AC4)($at)
	b       .L803020CC
	swc1    $f4, 0x00F4($t8)
.L80302064:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x003D
	bnez    $at, .L803020CC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x00A4($t1)
	lwc1    $f8, 0x00F4($t1)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L803020B0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	b       .L803020C4
	sw      $t2, 0x014C($t3)
.L803020B0:
	jal     object_c_802F9770
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00D0($t4)
.L803020C4:
	jal     obj_lib_802A2644
	nop
.L803020CC:
	b       .L803020D4
	nop
.L803020D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803020E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x50706081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50706081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	lui     $t9, %hi(object)
	swc1    $f4, 0x00B0($t8)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00B0($t9)
	swc1    $f6, 0x00B8($t9)
	lui     $at, %hi(object_c_80338AC8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, %lo(object_c_80338AC8)($at)
	swc1    $f8, 0x0104($t0)
	b       .L80302144
	nop
.L80302144:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80302154
object_c_80302154:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L80302184
	nop
	jal     object_c_803014CC
	nop
	b       .L8030233C
	nop
.L80302184:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0005
	lw      $t9, 0x014C($t8)
	bne     $t9, $at, .L803021AC
	nop
	jal     object_c_80302024
	nop
	b       .L803022D0
	nop
.L803021AC:
	li      $at, 0x44960000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $0
	jal     obj_lib_8029F514
	lw      $a1, 0x00FC($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f6
	lwc1    $f4, 0x00FC($t1)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L80302234
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0184($t2)
	slti    $at, $t3, 0x0004
	bnez    $at, .L80302214
	nop
	li.u    $s0, 0x50712081
	b       .L8030221C
	li.l    $s0, 0x50712081
.L80302214:
	li.u    $s0, 0x505C4081
	li.l    $s0, 0x505C4081
.L8030221C:
	move    $a0, $0
	li      $a1, 0x000D
	jal     object_c_802FA428
	move    $a2, $s0
	b       .L8030223C
	nop
.L80302234:
	jal     obj_lib_8029FE6C
	nop
.L8030223C:
	jal     obj_lib_802A2320
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t6, $t5, -0x0001
	sltiu   $at, $t6, 0x0005
	beqz    $at, .L803022C8
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(object_c_80338ACC)
	addu    $at, $at, $t6
	lw      $t6, %lo(object_c_80338ACC)($at)
	jr      $t6
	nop
.globl L80302278
L80302278:
	jal     object_c_80301940
	nop
	b       .L803022C8
	nop
.globl L80302288
L80302288:
	jal     object_c_80301E84
	nop
	b       .L803022C8
	nop
.globl L80302298
L80302298:
	jal     object_c_80301C88
	nop
	b       .L803022C8
	nop
.globl L803022A8
L803022A8:
	jal     object_c_80301F70
	nop
	b       .L803022C8
	nop
.globl L803022B8
L803022B8:
	jal     object_c_80302024
	nop
	b       .L803022C8
	nop
.L803022C8:
	jal     obj_lib_802A2348
	li      $a0, -0x004E
.L803022D0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x00A0($t7)
	lw      $t8, 0x00F8($t7)
	swc1    $f8, 0x0000($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A4($t9)
	lw      $t0, 0x00F8($t9)
	swc1    $f10, 0x0004($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x00A8($t1)
	lw      $t2, 0x00F8($t1)
	swc1    $f16, 0x0008($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D0($t3)
	lw      $t5, 0x00F8($t3)
	sh      $t4, 0x000C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	lw      $t8, 0x00F8($t6)
	sh      $t7, 0x000E($t8)
	jal     object_c_803016E0
	nop
.L8030233C:
	b       .L80302344
	nop
.L80302344:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80302358:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	beq     $t7, $t6, .L803023C4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80338AE0)
	lwc1    $f6, %lo(object_c_80338AE0)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L803023C4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x00F4($t0)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L803023D4
	move    $v0, $0
.L803023C4:
	b       .L803023D4
	li      $v0, 0x0001
	b       .L803023D4
	nop
.L803023D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803023E4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     object_c_80302358
	nop
	beqz    $v0, .L80302660
	nop
	jal     obj_lib_802A2320
	nop
	li      $at, 0xC1880000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t6)
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0003
	beqz    $t9, .L80302598
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x008C($t0)
	andi    $t2, $t1, 0x0008
	bnez    $t2, .L803024A0
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_c_802FA5D0
	nop
	beqz    $v0, .L80302498
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x008C($t3)
	ori     $t5, $t4, 0x0008
	sw      $t5, 0x008C($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x00C8($t6)
.L80302498:
	b       .L803024B4
	nop
.L803024A0:
	li      $at, 0x3F800000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338AE4)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338AE4)($at)
.L803024B4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0100($t8)
	beqz    $t9, .L803024EC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0080
	jal     object_c_802FB0CC
	lw      $a0, 0x00F8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       .L80302590
	sw      $v0, 0x0100($t1)
.L803024EC:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x00F8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	move    $s0, $v0
	bnez    $s0, .L8030257C
	sw      $s0, 0x0100($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	beqz    $t5, .L8030253C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t7, 0x00F4($t3)
	addiu   $t6, $t7, -0x0001
	b       .L8030257C
	sw      $t6, 0x00F4($t3)
.L8030253C:
	jal     o_script_80383D1C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sll     $t8, $v0, 16
	sra     $t9, $t8, 16
	lw      $t2, 0x00C8($t1)
	sll     $t0, $t9, 13
	addu    $t4, $t0, $t2
	sw      $t4, 0x00F8($t1)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00F4($t5)
.L8030257C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0080
	jal     obj_lib_8029E5EC
	lw      $a0, 0x00F8($t7)
.L80302590:
	b       .L803025C4
	nop
.L80302598:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t3, 0x00EC($t6)
	andi    $t8, $t3, 0x0200
	beqz    $t8, .L803025C4
	nop
	jal     obj_lib_802A3268
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
.L803025C4:
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	la.u    $a0, object_c_80332954
	la.u    $a2, object_c_80332964
	la.l    $a2, object_c_80332964
	la.l    $a0, object_c_80332954
	jal     object_c_802FB518
	li      $a1, 0x0003
	beqz    $v0, .L80302650
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338AE8)
	lwc1    $f8, %lo(object_c_80338AE8)($at)
	lwc1    $f6, 0x00B8($t2)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80338AEC)
	lwc1    $f18, %lo(object_c_80338AEC)($at)
	lwc1    $f16, 0x00B0($t4)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B0($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00EC($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x00200000
	b       .L80302660
	sw      $t5, 0x0130($t7)
.L80302650:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t6, 0x0100
	sw      $t6, 0x0130($t3)
.L80302660:
	b       .L80302668
	nop
.L80302668:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030267C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41700000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t6)
	jal     obj_lib_8029F4B4
	move    $a0, $0
	li      $at, 0xC2480000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0138($t7)
	li      $at, 0x420C0000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x013C($t8)
	li      $at, 0xC2C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0140($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lw      $t2, 0x006C($t1)
	bnez    $t2, .L80302794
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x00C8($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_cos)
	lw      $t0, 0x0068($t8)
	lw      $t9, 0x00C8($t8)
	lw      $t1, 0x00C8($t0)
	lwc1    $f18, 0x00B8($t0)
	subu    $t2, $t9, $t1
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t6, $t4, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t8)
	li      $at, 0x41F00000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t7)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00EC($t5)
.L80302794:
	b       .L8030279C
	nop
.L8030279C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803027AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_80302358
	nop
	beqz    $v0, .L803028F8
	nop
	jal     obj_lib_802A2320
	nop
	li      $at, 0x41700000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00D0($t7)
	addiu   $t9, $t8, -0x2000
	sw      $t9, 0x00D0($t7)
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, .L80302878
	nop
	li.u    $a0, 0x50591081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50591081
	jal     obj_lib_802A04C0
	li      $a0, 0x0056
	lui     $a0, %hi(object)
	la.u    $a1, 0x05016EAC
	la.l    $a1, 0x05016EAC
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029F59C
	move    $a2, $0
	li      $at, 0xC1880000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00DC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00D0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       .L803028A4
	sw      $0, 0x014C($t5)
.L80302878:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0200
	beqz    $t9, .L803028A4
	nop
	jal     obj_lib_802A3268
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C8($t7)
.L803028A4:
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $a0, object_c_80332954
	la.l    $a0, object_c_80332954
	jal     object_c_802FB938
	lw      $a1, 0x014C($t0)
	beqz    $v0, .L803028F8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	beq     $t2, $t1, .L803028F8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0068($t3)
	lw      $t5, 0x00F4($t4)
	addiu   $t6, $t5, -0x0001
	sw      $t6, 0x00F4($t4)
.L803028F8:
	b       .L80302900
	nop
.L80302900:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80302910
object_c_80302910:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L8030295C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030296C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8030297C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8030298C
	nop
	b       .L8030299C
	nop
.L8030295C:
	jal     object_c_803023E4
	nop
	b       .L8030299C
	nop
.L8030296C:
	jal     object_c_8030267C
	nop
	b       .L8030299C
	nop
.L8030297C:
	jal     object_c_803027AC
	nop
	b       .L8030299C
	nop
.L8030298C:
	jal     object_c_802FBA40
	move    $a0, $0
	b       .L8030299C
	nop
.L8030299C:
	b       .L803029A4
	nop
.L803029A4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_803029B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80302A3C
	nop
	li      $at, 0x40000000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	la.u    $t9, o_13004988
	la.l    $t9, o_13004988
	li      $t8, 0x008E
	sw      $t8, 0x0018($sp)
	sw      $t9, 0x001C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t7, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f8, 0x0010($sp)
	jal     obj_lib_8029F694
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L80302A3C:
	b       .L80302A44
	nop
.L80302A44:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80302A54:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80302A90
	nop
	li      $at, 0xC0400000
	mtc1    $at, $f8
	b       .L80302AA0
	swc1    $f8, 0x001C($sp)
.L80302A90:
	li      $at, 0x40400000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x001C($sp)
.L80302AA0:
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f18, 0x00A4($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	add.s   $f6, $f18, $f4
	lwc1    $f16, 0x00A4($t7)
	add.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80302AF4
	nop
	li      $at, 0x40800000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338AF0)
	jal     object_c_802FA618
	lwc1    $f14, %lo(object_c_80338AF0)($at)
	b       .L80302B08
	nop
.L80302AF4:
	li      $at, 0xC0800000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338AF4)
	jal     object_c_802FA618
	lwc1    $f14, %lo(object_c_80338AF4)($at)
.L80302B08:
	b       .L80302B10
	nop
.L80302B10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80302B20:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x015C($t6)
	swc1    $f4, 0x001C($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x001C($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80302B64
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x001C($sp)
.L80302B64:
	la.u    $t7, player_data
	la.l    $t7, player_data
	lui     $at, %hi(object_c_80338AF8)
	lwc1    $f18, %lo(object_c_80338AF8)($at)
	lwc1    $f16, 0x0054($t7)
	li      $at, 0x41000000
	mtc1    $at, $f6
	mul.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	swc1    $f4, 0x0024($sp)
	bc1f    .L80302BA4
	nop
	li      $at, 0x41000000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0024($sp)
.L80302BA4:
	lui     $at, %hi(object_c_80338AFC)
	lwc1    $f16, %lo(object_c_80338AFC)($at)
	lwc1    $f10, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B8($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0024($sp)
	li      $a2, 0x42200000
	jal     object_c_802FA2BC
	addiu   $a0, $a0, 0x00B8
	li      $at, 0x43960000
	mtc1    $at, $f12
	jal     object_c_80302A54
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0100($t9)
	beqz    $t0, .L80302C14
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0100($t1)
	addiu   $t3, $t2, -0x0001
	b       .L80302C28
	sw      $t3, 0x0100($t1)
.L80302C14:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0600
	jal     object_c_802FA748
	lw      $a0, 0x0160($t4)
.L80302C28:
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t6, $f10
	nop
	sh      $t6, 0x0022($sp)
	addiu   $a0, $sp, 0x0022
	li      $a1, 0x00C8
	jal     object_c_802FA25C
	li      $a2, 0x0FA0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a1, 0x0022($sp)
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t7)
	b       .L80302C74
	nop
.L80302C74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80302C84:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	beqz    $t7, .L80302CC0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	addiu   $t0, $t9, -0x0001
	b       .L80302D98
	sw      $t0, 0x00FC($t8)
.L80302CC0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	slti    $at, $t2, 0x0003
	beqz    $at, .L80302D98
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80302D98
	nop
	lw      $a0, 0x0160($t1)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00D4($t1)
	slti    $at, $v0, 0x4000
	beqz    $at, .L80302D98
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130049C8
	la.l    $a2, o_130049C8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0055
	sw      $v0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	beqz    $t3, .L80302D98
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x001C($sp)
	sw      $t4, 0x006C($t5)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	la.u    $a1, 0x050157E4
	la.l    $a1, 0x050157E4
	lw      $a0, 0x001C($sp)
	jal     obj_lib_8029F59C
	move    $a2, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	addiu   $t8, $t0, 0x0001
	sw      $t8, 0x00F4($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t2, 0x0001
	sw      $t2, 0x0150($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x001E
	sw      $t3, 0x00FC($t4)
.L80302D98:
	b       .L80302DA0
	nop
.L80302DA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80302DB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA32C
	li      $a0, 0x0003
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	beqz    $t7, .L80302DEC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	addiu   $t0, $t9, -0x0001
	b       .L80302E6C
	sw      $t0, 0x00FC($t8)
.L80302DEC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x019C($t1)
	lwc1    $f4, 0x015C($t1)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f10, $f4
	nop
	bc1t    .L80302E4C
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	nop
	c.lt.s  $f4, $f16
	nop
	bc1f    .L80302E6C
	nop
	lw      $a0, 0x0160($t1)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00D4($t1)
	slti    $at, $v0, 0x2000
	beqz    $at, .L80302E6C
	nop
.L80302E4C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x0150($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0014
	sw      $t4, 0x0100($t5)
.L80302E6C:
	b       .L80302E74
	nop
.L80302E74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80302E84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0002
	jal     object_c_802FA39C
	li      $a1, 0x0002
	beqz    $v0, .L80302EB8
	nop
	li.u    $a0, 0x50222081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50222081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x006C($t6)
.L80302EB8:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L80302EEC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0150($t7)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00FC($t8)
.L80302EEC:
	b       .L80302EF4
	nop
.L80302EF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80302F04:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a0, 0x60028001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60028001
	jal     obj_lib_802A2320
	nop
	jal     object_c_80302B20
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, .L80302F58
	nop
	jal     obj_lib_802A3268
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
.L80302F58:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0014
	li      $a2, 0x0028
	li      $a3, 0x0004
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x00F8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $s0, 0x0150($t0)
	beqz    $s0, .L80302FA8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80302FB8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80302FC8
	nop
	b       .L80302FD8
	nop
.L80302FA8:
	jal     object_c_80302C84
	nop
	b       .L80302FD8
	nop
.L80302FB8:
	jal     object_c_80302DB0
	nop
	b       .L80302FD8
	nop
.L80302FC8:
	jal     object_c_80302E84
	nop
	b       .L80302FD8
	nop
.L80302FD8:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_8033296C
	la.l    $a0, object_c_8033296C
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
	beqz    $v0, .L8030300C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x006C($t2)
.L8030300C:
	b       .L80303014
	nop
.L80303014:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80303028
object_c_80303028:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L8030306C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030307C
	nop
	b       .L8030308C
	nop
.L8030306C:
	jal     object_c_803029B8
	nop
	b       .L8030308C
	nop
.L8030307C:
	jal     object_c_80302F04
	nop
	b       .L8030308C
	nop
.L8030308C:
	b       .L80303094
	nop
.L80303094:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_803030A8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $0, 0x0028($sp)
.L803030B4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t8, o_130049AC
	la.l    $t8, o_130049AC
	li      $t7, 0x008E
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t6, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	beqz    $t9, .L80303100
	nop
	jal     obj_lib_802A19AC
	lw      $a0, 0x002C($sp)
.L80303100:
	lw      $t0, 0x0028($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0005
	bnez    $at, .L803030B4
	sw      $t1, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	bnez    $t3, .L8030318C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $t6, o_130049AC
	la.l    $t6, o_130049AC
	li      $t5, 0x0057
	sw      $t5, 0x0014($sp)
	sw      $t6, 0x0018($sp)
	li      $a0, 0x0005
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t4, 0x0010($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00A0($t7)
	swc1    $f4, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A4($t8)
	swc1    $f6, 0x00F8($t8)
.L8030318C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	b       .L803031A4
	nop
.L803031A4:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_803031B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L803031F4
	nop
	jal     obj_lib_8029F694
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
.L803031F4:
	b       .L803031FC
	nop
.L803031FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030320C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338B00)
	lwc1    $f6, %lo(object_c_80338B00)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8030324C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	b       .L80303480
	sw      $t7, 0x014C($t8)
.L8030324C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00FC($t9)
	beqz    $t0, .L80303344
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x002C($t1)
	lwc1    $f10, 0x0100($t1)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338B04)
	lwc1    $f4, %lo(object_c_80338B04)($at)
	lwc1    $f18, 0x0100($t2)
	lui     $t3, %hi(object)
	lui     $at, %hi(object_c_80338B08)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0100($t2)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, %lo(object_c_80338B08)($at)
	lwc1    $f8, 0x0100($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L803032D8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $t5, %hi(object)
	sw      $0, 0x0154($t4)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	b       .L8030333C
	sw      $t6, 0x00FC($t5)
.L803032D8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80338B0C)
	lwc1    $f18, %lo(object_c_80338B0C)($at)
	lwc1    $f16, 0x0100($t7)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80303330
	nop
	li.u    $a0, 0x60044001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60044001
	li      $at, 0x42F00000
	mtc1    $at, $f4
	li      $a0, 0x000C
	li      $a1, 0x40400000
	li      $a2, 0x0000
	li      $a3, 0xC2480000
	jal     object_a_802C81B4
	swc1    $f4, 0x0010($sp)
	b       .L8030333C
	nop
.L80303330:
	li.u    $a0, 0x40050001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40050001
.L8030333C:
	b       .L80303470
	nop
.L80303344:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3C449BA6
	li.l    $a2, 0x3C449BA6
	li      $a1, 0x40400000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AC($t8)
	addiu   $t0, $t9, 0x00C8
	sh      $t0, 0x01AC($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t1)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L803033DC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0065
	bnez    $at, .L803033D4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t4, 0x0001
	sw      $t4, 0x00FC($t6)
	lui     $at, %hi(object_c_80338B10)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, %lo(object_c_80338B10)($at)
	swc1    $f10, 0x0100($t5)
.L803033D4:
	b       .L803033E8
	nop
.L803033DC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
.L803033E8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lhu     $t0, 0x01AC($t9)
	lwc1    $f6, 0x0164($t9)
	sra     $t8, $t0, 4
	sll     $t1, $t8, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x01AC($t2)
	lwc1    $f4, 0x016C($t2)
	sra     $t4, $t3, 4
	sll     $t6, $t4, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x0168($t5)
	swc1    $f8, 0x00F8($t5)
.L80303470:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x002C($t7)
.L80303480:
	b       .L80303488
	nop
.L80303488:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80303498:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sll     $t7, $t6, 11
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	beq     $t9, $t8, .L80303548
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lh      $t2, 0x0074($t1)
	bnez    $t2, .L803034F0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	b       .L80303540
	sw      $t3, 0x014C($t4)
.L803034F0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x00F4($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0068($t7)
	lwc1    $f6, 0x00A4($t9)
	swc1    $f6, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0068($t8)
	lwc1    $f8, 0x00A8($t0)
	swc1    $f8, 0x00A8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	lw      $t3, 0x00D4($t2)
	sw      $t3, 0x00C8($t1)
.L80303540:
	b       .L803035A0
	nop
.L80303548:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0144($t4)
	beqz    $t6, .L80303598
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338B14)
	lwc1    $f16, %lo(object_c_80338B14)($at)
	lwc1    $f10, 0x015C($t5)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80303590
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t7)
.L80303590:
	b       .L803035A0
	nop
.L80303598:
	jal     object_c_8030320C
	nop
.L803035A0:
	lhu     $t0, 0x001E($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	sra     $t8, $t0, 4
	sll     $t2, $t8, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f6, $f18, $f4
	lwc1    $f8, 0x002C($t3)
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f16, 0x00F4($t1)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x41400000
	mtc1    $at, $f6
	lwc1    $f8, 0x002C($t4)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f16, 0x00F8($t4)
	mul.s   $f10, $f8, $f6
	add.s   $f4, $f16, $f18
	add.s   $f8, $f10, $f4
	swc1    $f8, 0x00A4($t4)
	b       .L80303624
	nop
.L80303624:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80303634:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L80303664
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L80303684
	nop
.L80303664:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
	jal     obj_lib_8029F6BC
	nop
	jal     obj_lib_802A184C
	nop
.L80303684:
	b       .L8030368C
	nop
.L8030368C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030369C
object_c_8030369C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L803036E8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L803036F8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80303708
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L80303718
	nop
	b       .L80303728
	nop
.L803036E8:
	jal     object_c_803030A8
	nop
	b       .L80303728
	nop
.L803036F8:
	jal     object_c_80303498
	nop
	b       .L80303728
	nop
.L80303708:
	jal     object_c_80303634
	nop
	b       .L80303728
	nop
.L80303718:
	jal     object_c_803031B4
	nop
	b       .L80303728
	nop
.L80303728:
	b       .L80303730
	nop
.L80303730:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80303744
object_c_80303744:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, .L8030377C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L8030396C
	nop
.L8030377C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80338B18)
	lwc1    $f6, %lo(object_c_80338B18)($at)
	lw      $t0, 0x0068($t9)
	lwc1    $f4, 0x002C($t0)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x3333
	lw      $t2, 0x0144($t1)
	lw      $t4, 0x0068($t1)
	multu   $t2, $at
	lw      $t5, 0x00D4($t4)
	mflo    $t3
	addu    $t6, $t3, $t5
	sh      $t6, 0x0022($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t0, %hi(gfx_frame)
	lw      $t0, %lo(gfx_frame)($t0)
	lw      $t8, 0x0144($t7)
	sll     $t2, $t0, 11
	sll     $t9, $t8, 14
	addu    $t1, $t9, $t2
	sh      $t1, 0x0020($sp)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x0024($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0005
	lw      $t3, 0x0144($t4)
	bne     $t3, $at, .L80303848
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80303848
	nop
	li      $at, 0x40000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	lui     $t6, %hi(object)
	swc1    $f18, 0x0030($t5)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0030($t6)
	swc1    $f4, 0x0024($sp)
.L80303848:
	lhu     $t7, 0x0020($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0024($sp)
	sra     $t8, $t7, 4
	sll     $t0, $t8, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x40000000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	li      $at, 0x41C80000
	mtc1    $at, $f4
	lwc1    $f6, 0x0024($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($sp)
	lhu     $t9, 0x0022($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0018($sp)
	sra     $t2, $t9, 4
	sll     $t1, $t2, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f18, $f10, $f16
	lwc1    $f8, 0x001C($sp)
	lw      $t3, 0x0068($t4)
	lwc1    $f4, 0x00F4($t3)
	add.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t7, %hi(object_c_8033297C)
	lwc1    $f4, 0x0024($sp)
	lw      $t6, 0x0144($t5)
	lw      $t8, 0x0068($t5)
	lwc1    $f10, 0x001C($sp)
	addu    $t7, $t7, $t6
	lb      $t7, %lo(object_c_8033297C)($t7)
	lwc1    $f8, 0x00F8($t8)
	mtc1    $t7, $f16
	nop
	cvt.s.w $f18, $f16
	add.s   $f16, $f8, $f10
	mul.s   $f6, $f18, $f4
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x00A4($t5)
	lhu     $t0, 0x0022($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0018($sp)
	sra     $t9, $t0, 4
	sll     $t2, $t9, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f10, $f4, $f8
	lwc1    $f18, 0x001C($sp)
	lw      $t3, 0x0068($t1)
	lwc1    $f6, 0x00A8($t3)
	add.s   $f16, $f10, $f6
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0068($t4)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x00D4($t4)
.L8030396C:
	b       .L80303974
	nop
.L80303974:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80303984
object_c_80303984:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L803039C8
	nop
	lui     $t8, %hi(game_8033B26E)
	lb      $t8, %lo(game_8033B26E)($t8)
	li      $at, 0x0001
	beq     $t8, $at, .L803039C0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L803039C0:
	b       .L80303A08
	nop
.L803039C8:
	li      $at, 0x40000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	la.u    $t1, o_13004988
	la.l    $t1, o_13004988
	li      $t0, 0x008E
	sw      $t0, 0x0018($sp)
	sw      $t1, 0x001C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t9, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f4, 0x0010($sp)
.L80303A08:
	b       .L80303A10
	nop
.L80303A10:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80303A20:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	li      $at, 0xC4080000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A0($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80303AF0
	nop
	lui     $at, %hi(object_c_80338B1C)
	lwc1    $f8, %lo(object_c_80338B1C)($at)
	c.lt.s  $f4, $f8
	nop
	bc1f    .L80303AF0
	nop
	li      $at, 0x44480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t6)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80303AF0
	nop
	li      $at, 0xC4FA0000
	mtc1    $at, $f6
	lwc1    $f18, 0x00A8($t6)
	c.lt.s  $f6, $f18
	nop
	bc1f    .L80303AF0
	nop
	li      $at, 0xC3310000
	mtc1    $at, $f4
	move    $t7, $0
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80303ABC
	nop
	li      $t7, 0x0001
.L80303ABC:
	beqz    $t7, .L80303AF0
	nop
	beqz    $t7, .L80303AF0
	nop
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0001
	bne     $v0, $at, .L80303AF0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L80303AF0:
	b       .L80303AF8
	nop
.L80303AF8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80303B08:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0002
	bne     $v0, $at, .L80303BFC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	li      $at, 0x44E10000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00A0($t8)
	li      $at, 0x45160000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00A4($t9)
	li      $at, 0xC5160000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00A8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x4000
	sw      $t1, 0x00C4($t2)
	li      $at, 0x42700000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F8($t3)
	li      $at, 0x447A0000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00FC($t4)
	li      $at, 0x40000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	la.u    $t7, o_13004988
	la.l    $t7, o_13004988
	li      $t6, 0x008E
	sw      $t6, 0x0018($sp)
	sw      $t7, 0x001C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t5, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f18, 0x0010($sp)
.L80303BFC:
	b       .L80303C04
	nop
.L80303C04:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80303C14:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x60028001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60028001
	li      $at, 0x42F00000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00D0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0160($t7)
	sw      $t8, 0x00D4($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0100($t9)
	beqz    $t0, .L80303CC4
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x42700000
	li      $a2, 0x40400000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80338B20)
	lwc1    $f6, %lo(object_c_80338B20)($at)
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80303CB0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L80303CB0:
	li      $t2, -0x3000
	sh      $t2, 0x001E($sp)
	li      $t3, -0x6000
	b       .L80303EC4
	sh      $t3, 0x001C($sp)
.L80303CC4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f10
	lwc1    $f8, 0x00F8($t4)
	c.eq.s  $f8, $f10
	nop
	bc1t    .L80303E98
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338B24)
	lwc1    $f18, %lo(object_c_80338B24)($at)
	lwc1    $f16, 0x015C($t5)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80303D2C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00C4($t6)
	sh      $t8, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0160($t7)
	b       .L80303E90
	sh      $t9, 0x001C($sp)
.L80303D2C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x00FC($t0)
	lwc1    $f6, 0x015C($t0)
	mov.s   $f12, $f4
	jal     atan2
	sub.s   $f14, $f6, $f4
	li      $t1, 0x4000
	subu    $t2, $t1, $v0
	sh      $t2, 0x001A($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00C8($t3)
	lw      $t5, 0x0160($t3)
	subu    $t6, $t4, $t5
	sll     $t8, $t6, 16
	sra     $t7, $t8, 16
	bgez    $t7, .L80303D84
	nop
	lh      $t9, 0x001A($sp)
	subu    $t0, $0, $t9
	sh      $t0, 0x001A($sp)
.L80303D84:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t3, 0x001A($sp)
	lw      $t2, 0x0160($t1)
	addu    $t4, $t2, $t3
	sh      $t4, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D0($t5)
	sh      $t6, 0x001E($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x43480000
	li      $a2, 0x42480000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00FC
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t8)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80303E90
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0104($t7)
	bnez    $t9, .L80303E1C
	nop
	move    $a0, $0
	li      $a1, 0x0F22
	jal     Na_BGM_play
	move    $a2, $0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x0104($t1)
.L80303E1C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41A00000
	li      $a2, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80303E90
	nop
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	lw      $a1, 0x00D4($t2)
	jal     obj_lib_802A11A8
	lw      $a0, 0x00D4($t3)
	slti    $at, $v0, 0x7001
	bnez    $at, .L80303E90
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x40A00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
.L80303E90:
	b       .L80303EC4
	nop
.L80303E98:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0022
	beqz    $v0, .L80303EC4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x0100($t5)
.L80303EC4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x07D0
	li      $a2, 0x0190
	jal     obj_lib_8029E530
	lh      $a0, 0x01AC($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $v0, 0x01AC($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a0, 0x001E($sp)
	jal     object_c_802FA660
	lh      $a1, 0x01AC($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x07D0
	li      $a2, 0x0064
	jal     obj_lib_8029E530
	lh      $a0, 0x01AE($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $v0, 0x01AE($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $a0, 0x001C($sp)
	jal     obj_lib_8029E5EC
	lh      $a1, 0x01AE($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F8($t3)
	jal     obj_lib_802A2644
	nop
	b       .L80303F54
	nop
.L80303F54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80303F64
object_c_80303F64:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L80304184
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0014
	li      $a2, 0x0028
	li      $a3, 0x0004
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x00F4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	beqz    $t0, .L80304028
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $s0, 0x014C($t1)
	beqz    $s0, .L80303FF0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80304000
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80304010
	nop
	b       .L80304020
	nop
.L80303FF0:
	jal     object_c_80303A20
	nop
	b       .L80304020
	nop
.L80304000:
	jal     object_c_80303B08
	nop
	b       .L80304020
	nop
.L80304010:
	jal     object_c_80303C14
	nop
	b       .L80304020
	nop
.L80304020:
	b       .L80304184
	nop
.L80304028:
	la.u    $t2, _camera_bss+0x178
	la.l    $t2, _camera_bss+0x178
	lui     $at, %hi(object_c_80338B28)
	lwc1    $f4, %lo(object_c_80338B28)($at)
	lwc1    $f6, 0x000C($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	la.u    $t3, _camera_bss+0x178
	la.l    $t3, _camera_bss+0x178
	lui     $at, %hi(object_c_80338B2C)
	lwc1    $f16, %lo(object_c_80338B2C)($at)
	lwc1    $f10, 0x000C($t3)
	c.lt.s  $f10, $f16
	nop
	bc1t    .L80304084
	nop
	lwc1    $f18, 0x0034($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80304094
	nop
.L80304084:
	jal     obj_lib_8029F6BC
	nop
	b       .L80304184
	nop
.L80304094:
	jal     obj_lib_8029F694
	nop
	la.u    $t4, _camera_bss+0x178
	la.l    $t4, _camera_bss+0x178
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, 0x000C($t4)
	swc1    $f6, 0x00A0($t5)
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x0010($t6)
	swc1    $f8, 0x00A4($t7)
	la.u    $t8, _camera_bss+0x178
	la.l    $t8, _camera_bss+0x178
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x0014($t8)
	swc1    $f10, 0x00A8($t9)
	la.u    $t0, _camera_bss+0x178
	la.l    $t0, _camera_bss+0x178
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x0000($t0)
	swc1    $f16, 0x0164($t1)
	la.u    $t2, _camera_bss+0x178
	la.l    $t2, _camera_bss+0x178
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x0008($t2)
	swc1    $f18, 0x016C($t3)
	jal     obj_lib_802A2748
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	subu    $t4, $0, $v0
	sw      $t4, 0x00D4($t5)
	jal     obj_lib_802A1634
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t7, _camera_bss+0x178
	la.l    $t7, _camera_bss+0x178
	lwc1    $f6, 0x0004($t7)
	lwc1    $f4, 0x00A4($t6)
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     atan2
	sub.s   $f14, $f4, $f6
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00D0($t8)
	lui     $at, %hi(object_c_80338B30)
	lwc1    $f8, %lo(object_c_80338B30)($at)
	lwc1    $f10, 0x0034($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t9)
.L80304184:
	b       .L8030418C
	nop
.L8030418C:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

object_c_803041A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029F914
	lw      $a0, 0x0024($sp)
	sll     $t6, $v0, 2
	subu    $t6, $t6, $v0
	lui     $t7, %hi(obj_list)
	lw      $t7, %lo(obj_list)($t7)
	sll     $t6, $t6, 2
	addu    $t6, $t6, $v0
	sll     $t6, $t6, 3
	addu    $t8, $t6, $t7
	sw      $t8, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0060($t9)
	sw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x0020($sp)
	beq     $t1, $t2, .L80304254
	nop
.L80304204:
	lw      $t3, 0x0020($sp)
	lw      $t5, 0x0024($sp)
	lw      $t4, 0x020C($t3)
	bne     $t4, $t5, .L80304238
	nop
	lh      $t6, 0x0074($t3)
	beqz    $t6, .L80304238
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	sw      $t7, 0x0068($t8)
	lw      $t9, 0x0020($sp)
	sw      $t9, 0x001C($sp)
.L80304238:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0060($t0)
	sw      $t1, 0x0020($sp)
	lw      $t2, 0x0018($sp)
	lw      $t4, 0x0020($sp)
	bne     $t2, $t4, .L80304204
	nop
.L80304254:
	b       .L80304264
	lw      $v0, 0x001C($sp)
	b       .L80304264
	nop
.L80304264:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80304274:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0028($sp)
	lui     $t6, %hi(object_c_80361474)
	lw      $t6, %lo(object_c_80361474)($t6)
	sw      $t6, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $t7, 0x0024($sp)
	beqz    $t7, .L80304304
	nop
.L8030429C:
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x00F4($t8)
	bnez    $t9, .L803042EC
	nop
	lw      $t0, 0x0024($sp)
	lui     $at, %hi(object_c_80338B34)
	lwc1    $f6, %lo(object_c_80338B34)($at)
	lwc1    $f4, 0x015C($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L803042EC
	nop
	lwc1    $f8, 0x0028($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    .L803042EC
	nop
	lw      $t1, 0x0020($sp)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0020($sp)
.L803042EC:
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0068($t3)
	sw      $t4, 0x0024($sp)
	lw      $t5, 0x0024($sp)
	bnez    $t5, .L8030429C
	nop
.L80304304:
	lw      $t6, 0x0020($sp)
	beqz    $t6, .L803043D8
	nop
	jal     o_script_80383CB4
	nop
	lw      $t7, 0x0020($sp)
	mtc1    $t7, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f18, $f0, $f16
	trunc.w.s $f6, $f18
	mfc1    $t9, $f6
	nop
	sw      $t9, 0x001C($sp)
	lui     $t0, %hi(object_c_80361474)
	lw      $t0, %lo(object_c_80361474)($t0)
	sw      $t0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $t1, 0x0024($sp)
	beqz    $t1, .L803043D8
	nop
.L80304358:
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x00F4($t2)
	bnez    $t3, .L803043C0
	nop
	lw      $t4, 0x0024($sp)
	lui     $at, %hi(object_c_80338B38)
	lwc1    $f8, %lo(object_c_80338B38)($at)
	lwc1    $f4, 0x015C($t4)
	c.lt.s  $f4, $f8
	nop
	bc1f    .L803043C0
	nop
	lwc1    $f10, 0x0028($sp)
	c.lt.s  $f10, $f4
	nop
	bc1f    .L803043C0
	nop
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	bne     $t5, $t6, .L803043B4
	nop
	b       .L803043E8
	lw      $v0, 0x0024($sp)
.L803043B4:
	lw      $t7, 0x0020($sp)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0020($sp)
.L803043C0:
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0068($t9)
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	bnez    $t1, .L80304358
	nop
.L803043D8:
	b       .L803043E8
	move    $v0, $0
	b       .L803043E8
	nop
.L803043E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803043F8
object_c_803043F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	bne     $t7, $t6, .L80304434
	nop
	la.u    $a0, o_13004A58
	jal     object_c_803041A0
	la.l    $a0, o_13004A58
	lui     $at, %hi(object_c_80361474)
	sw      $v0, %lo(object_c_80361474)($at)
	lui     $at, %hi(object_c_80361478)
	b       .L8030445C
	sw      $0, %lo(object_c_80361478)($at)
.L80304434:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	blez    $t9, .L8030445C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x00F4($t0)
.L8030445C:
	b       .L80304464
	nop
.L80304464:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80304474:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lb      $t6, 0x001B($sp)
	lui     $at, %hi(object_c_80332984+0x03)
	sb      $t6, %lo(object_c_80332984+0x03)($at)
	lb      $t7, 0x001F($sp)
	lui     $at, %hi(object_c_80332984+0x06)
	sb      $t7, %lo(object_c_80332984+0x06)($at)
	la.u    $a0, object_c_80332984+0x00
	jal     obj_lib_802A32AC
	la.l    $a0, object_c_80332984+0x00
	b       .L803044B0
	nop
.L803044B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803044C0
object_c_803044C0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_803044DC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L80304510
	nop
	li      $at, 0x43480000
	mtc1    $at, $f4
	b       .L80304554
	swc1    $f4, 0x0034($sp)
.L80304510:
	la.u    $t8, player_data
	la.l    $t8, player_data
	li      $at, 0x41000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t8)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80304544
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f10
	b       .L80304554
	swc1    $f10, 0x0034($sp)
.L80304544:
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0034($sp)
.L80304554:
	jal     object_c_80304274
	lwc1    $f12, 0x0034($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	move    $s0, $v0
	beqz    $s0, .L803046F4
	sw      $s0, 0x00F4($t9)
	li.u    $a0, 0x90678081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90678081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, -0x0001
	lw      $t2, 0x00F4($t1)
	sw      $t0, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	lwc1    $f18, 0x00A0($t4)
	swc1    $f18, 0x00A0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t7, %hi(object)
	lw      $t6, 0x00F4($t5)
	lwc1    $f20, 0x00A4($t6)
	swc1    $f20, 0x00E8($t5)
	lw      $t7, %lo(object)($t7)
	swc1    $f20, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	lwc1    $f4, 0x00A8($t9)
	swc1    $f4, 0x00A8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D0($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x00F4($t0)
	lw      $t4, 0x0160($t2)
	sw      $t4, 0x00C8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t3)
	c.lt.s  $f8, $f6
	nop
	bc1t    .L80304648
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x0034($sp)
	c.lt.s  $f16, $f10
	nop
	bc1t    .L80304648
	nop
	jal     o_script_80383D1C
	nop
	bgez    $v0, .L80304698
	nop
.L80304648:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t5)
	li      $at, 0x40400000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00E4($t9)
	move    $a0, $0
	jal     object_c_80304474
	li      $a1, 0x000A
	b       .L803046E4
	nop
.L80304698:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t8, 0x0007
	sw      $t8, 0x014C($t1)
	li      $at, 0x42480000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t2)
	li      $at, 0xC0800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t4)
	move    $a0, $0
	jal     object_c_80304474
	li      $a1, 0x0014
.L803046E4:
	jal     obj_lib_8029F694
	nop
	jal     obj_lib_802A05D4
	nop
.L803046F4:
	b       .L803046FC
	nop
.L803046FC:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

object_c_80304710:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42440000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F8($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80304794
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x00E8($t7)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B0($t8)
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L80304794
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
.L80304794:
	b       .L8030479C
	nop
.L8030479C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803047AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA360
	li      $a0, 0x0002
	beqz    $v0, .L8030484C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L8030483C
	nop
	lw      $a0, 0x0160($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t6)
	slti    $at, $v0, 0x4000
	beqz    $at, .L8030483C
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13004A78
	la.l    $a2, o_13004A78
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A1
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	beqz    $t8, .L8030483C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x001C($sp)
	sw      $t9, 0x006C($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0004
	b       .L8030484C
	sw      $t1, 0x014C($t2)
.L8030483C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
.L8030484C:
	b       .L80304854
	nop
.L80304854:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80304864:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA360
	li      $a0, 0x0003
	bnez    $v0, .L80304894
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_c_802F9890
	li      $a1, 0x4000
	beqz    $v0, .L803048D4
	nop
.L80304894:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0005
	sw      $t6, 0x014C($t7)
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t8)
	li      $at, 0xC0C00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00E4($t9)
.L803048D4:
	b       .L803048DC
	nop
.L803048DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803048EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0008
	jal     object_c_802FA39C
	li      $a1, 0x000A
	beqz    $v0, .L80304920
	nop
	li.u    $a0, 0x50220081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50220081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x006C($t6)
.L80304920:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L80304940
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
.L80304940:
	b       .L80304948
	nop
.L80304948:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80304958:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA32C
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC0800000
	mtc1    $at, $f14
	jal     atan2
	lwc1    $f12, 0x00B0($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	subu    $t7, $0, $v0
	sw      $t7, 0x00D0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L803049FC
	nop
	li      $at, 0x42F00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F8($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L803049FC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0006
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E4($t2)
	li      $a0, -0x0050
	jal     object_c_80304474
	li      $a1, 0x000F
.L803049FC:
	b       .L80304A04
	nop
.L80304A04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80304A14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x001E
	lw      $t8, 0x00F4($t7)
	sw      $t6, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t0)
	jal     obj_lib_802A05B4
	nop
	b       .L80304A60
	nop
.L80304A60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80304A70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, .L80304AB0
	nop
	jal     obj_lib_8029F6BC
	nop
	jal     object_c_80304A14
	nop
	b       .L80304AC8
	nop
.L80304AB0:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC0800000
	li      $a2, 0x3F000000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00B0
.L80304AC8:
	b       .L80304AD0
	nop
.L80304AD0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80304AE0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80304B18
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0009
	b       .L80304B90
	nop
.L80304B18:
	jal     object_c_802FA32C
	li      $a0, 0x0004
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F8($t7)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80304B90
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42480000
	mtc1    $at, $f18
	lwc1    $f16, 0x00E8($t8)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f6
	lui     $t2, %hi(object)
	swc1    $f6, 0x00E4($t1)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x00E4($t2)
	swc1    $f8, 0x00B0($t2)
.L80304B90:
	b       .L80304B98
	nop
.L80304B98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80304BA8
object_c_80304BA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $t6, 0x50244081
	li.l    $t6, 0x50244081
	sw      $t6, 0x01C4($t7)
	jal     obj_lib_802A2320
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A4($t8)
	lwc1    $f6, 0x00E8($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00F8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	sltiu   $at, $t0, 0x0008
	beqz    $at, .L80304C94
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(object_c_80338B3C)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_c_80338B3C)($at)
	jr      $t0
	nop
.globl L80304C14
L80304C14:
	jal     object_c_803044DC
	nop
	b       .L80304C94
	nop
.globl L80304C24
L80304C24:
	jal     object_c_80304710
	nop
	b       .L80304C94
	nop
.globl L80304C34
L80304C34:
	jal     object_c_803047AC
	nop
	b       .L80304C94
	nop
.globl L80304C44
L80304C44:
	jal     object_c_80304864
	nop
	b       .L80304C94
	nop
.globl L80304C54
L80304C54:
	jal     object_c_803048EC
	nop
	b       .L80304C94
	nop
.globl L80304C64
L80304C64:
	jal     object_c_80304958
	nop
	b       .L80304C94
	nop
.globl L80304C74
L80304C74:
	jal     object_c_80304A70
	nop
	b       .L80304C94
	nop
.globl L80304C84
L80304C84:
	jal     object_c_80304AE0
	nop
	b       .L80304C94
	nop
.L80304C94:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_80332998
	la.l    $a0, object_c_80332998
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
	beqz    $v0, .L80304E08
	nop
	lui     $t2, %hi(object_c_80361478)
	lw      $t2, %lo(object_c_80361478)($t2)
	beqz    $t2, .L80304DA4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_8036147C)
	lwc1    $f16, %lo(object_c_8036147C)($at)
	lwc1    $f10, 0x00A0($t3)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80361480)
	lwc1    $f6, %lo(object_c_80361480)($at)
	lwc1    $f4, 0x00A4($t4)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80361484)
	lwc1    $f16, %lo(object_c_80361484)($at)
	lwc1    $f10, 0x00A8($t5)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f18, 0x001C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	add.s   $f16, $f6, $f10
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	swc1    $f0, 0x0018($sp)
	lui     $at, %hi(object_c_80338B5C)
	lwc1    $f6, %lo(object_c_80338B5C)($at)
	lwc1    $f8, 0x0018($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80304D9C
	nop
	lui     $t6, %hi(object_c_80361478)
	lw      $t6, %lo(object_c_80361478)($t6)
	li      $at, 0x0007
	bne     $t6, $at, .L80304D94
	nop
	jal     Na_g_803220F0
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003FDC
	la.l    $a2, o_13003FDC
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00D4
.L80304D94:
	b       .L80304DA4
	nop
.L80304D9C:
	lui     $at, %hi(object_c_80361478)
	sw      $0, %lo(object_c_80361478)($at)
.L80304DA4:
	lui     $t7, %hi(object_c_80361478)
	lw      $t7, %lo(object_c_80361478)($t7)
	lui     $at, %hi(object_c_80361478)
	addiu   $t8, $t7, 0x0001
	sw      $t8, %lo(object_c_80361478)($at)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_8036147C)
	lwc1    $f10, 0x00A0($t9)
	swc1    $f10, %lo(object_c_8036147C)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80361480)
	lwc1    $f18, 0x00A4($t0)
	swc1    $f18, %lo(object_c_80361480)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80361484)
	lwc1    $f16, 0x00A8($t1)
	swc1    $f16, %lo(object_c_80361484)($at)
	jal     object_c_80304A14
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x006C($t2)
.L80304E08:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L80304E18
	nop
.L80304E18:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80304E28:
	addiu   $sp, $sp, -0x0008
	li      $at, 0x42A00000
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
	lw      $t1, 0x006C($t0)
	bnez    $t1, .L80304F64
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x015C($t2)
	swc1    $f10, 0x0004($sp)
	li      $at, 0x44160000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80304EC4
	nop
	li      $at, 0x44160000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0004($sp)
.L80304EC4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338B60)
	lwc1    $f8, %lo(object_c_80338B60)($at)
	lw      $t6, 0x0068($t5)
	lwc1    $f6, 0x0004($sp)
	lw      $t7, 0x00C8($t6)
	mul.s   $f10, $f6, $f8
	addiu   $t8, $t7, 0x01F4
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	sub.s   $f4, $f18, $f10
	trunc.w.s $f6, $f4
	mfc1    $t0, $f6
	nop
	sw      $t0, 0x00C8($t5)
	li      $at, 0x42200000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t1)
	lui     $at, %hi(object_c_80338B64)
	lwc1    $f18, %lo(object_c_80338B64)($at)
	lwc1    $f16, 0x0004($sp)
	li      $at, 0x41000000
	mtc1    $at, $f4
	mul.s   $f10, $f16, $f18
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x00B0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00EC($t3)
.L80304F64:
	b       .L80304F6C
	nop
.L80304F6C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_80304F74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x000B
	beqz    $t8, .L80304FB4
	nop
	la.u    $a0, object_c_803329B8
	jal     obj_lib_802A32AC
	la.l    $a0, object_c_803329B8
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L80304FB4:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L80304FC4
	nop
.L80304FC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80304FD4
object_c_80304FD4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, object_c_803329A8
	la.l    $a0, object_c_803329A8
	jal     object_c_802FB938
	lw      $a1, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, .L80305020
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80305030
	nop
	b       .L80305040
	nop
.L80305020:
	jal     object_c_80304E28
	nop
	b       .L80305040
	nop
.L80305030:
	jal     object_c_80304F74
	nop
	b       .L80305040
	nop
.L80305040:
	b       .L80305048
	nop
.L80305048:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030505C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0088($t7)
	addiu   $t9, $t8, 0x0063
	sw      $t9, 0x0088($t7)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030508C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	andi    $t0, $t9, 0x0200
	bnez    $t0, .L803050E8
	nop
	li      $a0, 0x0096
	jal     obj_lib_802A36A4
	li      $a1, 0x0028
	beqz    $v0, .L803050E8
	nop
	jal     object_c_8030505C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0011
	lh      $t2, 0x0002($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0002($t1)
.L803050E8:
	b       .L803050F0
	nop
.L803050F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80305100
object_c_80305100:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L80305214
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0188($t9)
	sra     $t1, $t0, 16
	andi    $t2, $t1, 0xFFFF
	andi    $t3, $t2, 0x000F
	sh      $t3, 0x001E($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0188($t4)
	sra     $t6, $t5, 16
	andi    $t7, $t6, 0xFFFF
	andi    $t8, $t7, 0x0070
	sra     $t9, $t8, 4
	sh      $t9, 0x01B0($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x01B0($t0)
	addiu   $t2, $t1, -0x0001
	sh      $t2, 0x01AC($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $a0, %hi(object_c_803329CC)
	lh      $t5, 0x01B0($t3)
	sll     $t6, $t5, 2
	addu    $a0, $a0, $t6
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_803329CC)($a0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x0218($t7)
	lh      $t8, 0x001E($sp)
	lui     $a0, %hi(object_c_803329DC)
	sll     $t9, $t8, 2
	addu    $a0, $a0, $t9
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_803329DC)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00FC($t4)
	lh      $t1, 0x001E($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $t2, $t1, -0x0004
	sh      $t2, 0x01AE($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x00C8($t3)
	sw      $t5, 0x0144($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lh      $t7, 0x01B0($t6)
	bne     $t7, $at, .L80305214
	nop
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0030($t8)
.L80305214:
	b       .L8030521C
	nop
.L8030521C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030522C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sdc1    $f24, 0x0020($sp)
	sdc1    $f22, 0x0018($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	sw      $t7, 0x0100($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0104($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0088($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object)
	lw      $t1, 0x00FC($t0)
	lh      $t2, 0x0002($t1)
	mtc1    $t2, $f4
	nop
	cvt.s.w $f20, $f4
	swc1    $f20, 0x0164($t0)
	lw      $t3, %lo(object)($t3)
	swc1    $f20, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $t6, %hi(object)
	lw      $t5, 0x00FC($t4)
	lh      $t7, 0x0004($t5)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f20, $f6
	swc1    $f20, 0x0168($t4)
	lw      $t6, %lo(object)($t6)
	swc1    $f20, 0x00A4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t2, %hi(object)
	lw      $t9, 0x00FC($t8)
	lh      $t1, 0x0006($t9)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f20, $f8
	swc1    $f20, 0x016C($t8)
	lw      $t2, %lo(object)($t2)
	swc1    $f20, 0x00A8($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0144($t0)
	sw      $t3, 0x00D4($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f10
	lui     $t7, %hi(object)
	lui     $t4, %hi(object)
	swc1    $f10, 0x00F4($t5)
	lw      $t7, %lo(object)($t7)
	lui     $t6, %hi(object)
	lui     $t9, %hi(object)
	lwc1    $f24, 0x00F4($t7)
	swc1    $f24, 0x00B4($t7)
	lw      $t4, %lo(object)($t4)
	mov.s   $f22, $f24
	mov.s   $f20, $f22
	swc1    $f22, 0x00B0($t4)
	lw      $t6, %lo(object)($t6)
	swc1    $f20, 0x00AC($t6)
	lw      $t9, %lo(object)($t9)
	swc1    $f20, 0x00B8($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x01B2($t1)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t2, 0x01AC($t8)
	beqz    $t2, .L80305374
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00D8($t3)
.L80305374:
	li      $t0, 0x0001
	sw      $t0, 0x003C($sp)
.L8030537C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $a0, 0x003C($sp)
	lw      $a1, 0x0164($t5)
	lw      $a2, 0x0168($t5)
	jal     object_c_802F9A28
	lw      $a3, 0x016C($t5)
	lw      $t7, 0x003C($sp)
	addiu   $t4, $t7, 0x0001
	slti    $at, $t4, 0x0006
	bnez    $at, .L8030537C
	sw      $t4, 0x003C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t9)
	b       .L803053C4
	nop
.L803053C4:
	lw      $ra, 0x002C($sp)
	ldc1    $f20, 0x0010($sp)
	ldc1    $f22, 0x0018($sp)
	ldc1    $f24, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

object_c_803053DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, .L80305430
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0015
	bnez    $at, .L80305428
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
.L80305428:
	b       .L8030545C
	nop
.L80305430:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0074($t3)
	andi    $t5, $t4, 0x0008
	beqz    $t5, .L80305450
	nop
	jal     object_c_8030505C
	nop
.L80305450:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0154($t6)
.L8030545C:
	b       .L80305464
	nop
.L80305464:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80305474:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01AC($t6)
	bnez    $t7, .L803054A4
	nop
	li.u    $a0, 0x400C0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400C0001
	b       .L803054C4
	nop
.L803054A4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AE($t8)
	bnez    $t9, .L803054C4
	nop
	li.u    $a0, 0x40020001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40020001
.L803054C4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0001
	lw      $t1, 0x0104($t0)
	bne     $t1, $at, .L80305508
	nop
	lw      $t2, 0x0188($t0)
	sra     $t3, $t2, 16
	andi    $t4, $t3, 0xFFFF
	andi    $t5, $t4, 0x0100
	bnez    $t5, .L80305508
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	b       .L80305804
	sw      $t6, 0x014C($t7)
.L80305508:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0104($t8)
	beqz    $t9, .L803055AC
	nop
	lh      $t1, 0x01AC($t8)
	bnez    $t1, .L803055AC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0001
	lw      $t2, 0x0104($t0)
	beq     $t2, $at, .L8030554C
	nop
	li      $at, 0x0003
	bne     $t2, $at, .L803055A4
	nop
.L8030554C:
	li.u    $a0, 0x303D0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x303D0081
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0001
	lw      $t5, 0x0104($t4)
	bne     $t5, $at, .L80305594
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	b       .L803055A4
	sw      $0, 0x014C($t6)
.L80305594:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t9)
.L803055A4:
	b       .L80305694
	nop
.L803055AC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t1, 0x01AC($t8)
	bnez    $t1, .L803055DC
	nop
	li      $at, 0x41200000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338B68)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338B68)($at)
	b       .L803055F4
	nop
.L803055DC:
	li      $at, 0x41200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t0)
.L803055F4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x43960000
	addiu   $a0, $t2, 0x00F4
	jal     object_c_802FA544
	lw      $a2, 0x00B8($t2)
	beqz    $v0, .L80305694
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F4($t3)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00F4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x00A0($t4)
	swc1    $f18, 0x0164($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x00A4($t5)
	swc1    $f4, 0x0168($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A8($t6)
	swc1    $f6, 0x016C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0088($t7)
	addiu   $t8, $t9, 0x0001
	andi    $t1, $t8, 0xFFFF
	sw      $t1, 0x0088($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a0, 0x0005
	lw      $a1, 0x0164($t0)
	lw      $a2, 0x0168($t0)
	jal     object_c_802F9A28
	lw      $a3, 0x016C($t0)
.L80305694:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	move    $a0, $0
	lw      $a1, 0x00A0($t2)
	lw      $a2, 0x00A4($t2)
	jal     object_c_802F9A28
	lw      $a3, 0x00A8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0108($t3)
	sw      $t4, 0x00C4($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x010C($t5)
	sw      $t6, 0x00C8($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0188($t9)
	sra     $t1, $t8, 16
	andi    $t7, $t1, 0xFFFF
	andi    $t0, $t7, 0x0400
	bnez    $t0, .L80305770
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x00C8($t2)
	addiu   $t3, $t4, 0x4000
	sh      $t3, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a0, 0x001C($sp)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00D4($t6)
	li      $at, 0x0014
	div     $0, $v0, $at
	mflo    $t5
	sh      $t5, 0x001A($sp)
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x00D4($t9)
	sh      $t8, 0x001E($sp)
	addiu   $a0, $sp, 0x001A
	li      $a1, 0x0064
	jal     object_c_802FA25C
	li      $a2, 0x01F4
	lh      $a0, 0x001C($sp)
	jal     object_c_802FA748
	lh      $a1, 0x001A($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t0, 0x001E($sp)
	lh      $t7, 0x00D6($t1)
	subu    $t2, $t7, $t0
	sw      $t2, 0x0118($t1)
.L80305770:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x0188($t4)
	sra     $t6, $t3, 16
	andi    $t5, $t6, 0xFFFF
	andi    $t9, $t5, 0x0800
	beqz    $t9, .L80305804
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $a0, 0x00C4($t8)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00D8($t8)
	li      $at, 0x0014
	div     $0, $v0, $at
	mflo    $t7
	sh      $t7, 0x0018($sp)
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x00D8($t0)
	sh      $t2, 0x001E($sp)
	addiu   $a0, $sp, 0x0018
	li      $a1, 0x0064
	jal     object_c_802FA25C
	li      $a2, 0x01F4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $a1, 0x0018($sp)
	jal     object_c_802FA7BC
	lw      $a0, 0x00C4($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t6, 0x001E($sp)
	lh      $t3, 0x00DA($t4)
	subu    $t5, $t3, $t6
	sw      $t5, 0x011C($t4)
.L80305804:
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0214($t9)
	beq     $t8, $t7, .L80305830
	nop
	jal     object_c_8030508C
	nop
	b       .L80305854
	nop
.L80305830:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0011
	lh      $t1, 0x0002($t2)
	and     $t3, $t1, $at
	sh      $t3, 0x0002($t2)
.L80305854:
	b       .L8030585C
	nop
.L8030585C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030586C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0015
	bnez    $at, .L80305894
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
.L80305894:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_803058A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A25B4
	nop
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	beq     $t7, $t8, .L803058E0
	nop
	jal     object_c_8030508C
	nop
	b       .L803058EC
	nop
.L803058E0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0154($t9)
.L803058EC:
	b       .L803058F4
	nop
.L803058F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80305904:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $0, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	sw      $t7, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00F8($t8)
	lw      $t9, 0x00D8($t8)
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	addu    $t2, $t9, $t1
	sw      $t2, 0x00D8($t8)
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0214($t3)
	bne     $t4, $t5, .L803059F4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t3, math_sin
	la.l    $t3, math_sin
	lw      $t7, 0x0160($t6)
	lw      $t0, 0x00D4($t6)
	lwc1    $f10, 0x015C($t6)
	li      $at, 0xC0800000
	subu    $t9, $t7, $t0
	andi    $t1, $t9, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t8, $t2, 2
	addu    $t4, $t8, $t3
	lwc1    $f8, 0x0000($t4)
	mtc1    $at, $f18
	lhu     $t0, 0x00CA($t6)
	mul.s   $f16, $f8, $f10
	li      $at, 0xC2480000
	sra     $t9, $t0, 4
	sll     $t1, $t9, 2
	addu    $t2, $t1, $t3
	mul.s   $f4, $f16, $f18
	lwc1    $f18, 0x0000($t2)
	lwc1    $f16, 0x00B8($t6)
	trunc.w.s $f6, $f4
	mul.s   $f4, $f16, $f18
	mfc1    $t7, $f6
	mtc1    $at, $f6
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $t4, $f18
	nop
	sw      $t4, 0x0024($sp)
.L803059F4:
	li      $at, 0x40C00000
	mtc1    $at, $f4
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lw      $a2, 0x0024($sp)
	li      $a3, 0x40A00000
	swc1    $f4, 0x0010($sp)
	addiu   $a0, $t5, 0x00D8
	addiu   $a1, $t5, 0x00F8
	jal     object_c_802FAC18
	swc1    $f6, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC2C80000
	li      $a2, 0x42C80000
	jal     object_c_802FA2BC
	addiu   $a0, $a0, 0x00F8
	b       .L80305A48
	nop
.L80305A48:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80305A58
object_c_80305A58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L80305AE0
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338B6C)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338B6C)($at)
	jr      $t7
	nop
.globl L80305A90
L80305A90:
	jal     object_c_8030522C
	nop
	b       .L80305AE0
	nop
.globl L80305AA0
L80305AA0:
	jal     object_c_803053DC
	nop
	b       .L80305AE0
	nop
.globl L80305AB0
L80305AB0:
	jal     object_c_80305474
	nop
	b       .L80305AE0
	nop
.globl L80305AC0
L80305AC0:
	jal     object_c_8030586C
	nop
	b       .L80305AE0
	nop
.globl L80305AD0
L80305AD0:
	jal     object_c_803058A4
	nop
	b       .L80305AE0
	nop
.L80305AE0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AC($t8)
	bnez    $t9, .L80305B04
	nop
	jal     object_c_80305904
	nop
	b       .L80305B98
	nop
.L80305B04:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x01B0($t0)
	bnez    $t1, .L80305B98
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x01B2($t2)
	bnez    $t3, .L80305B68
	nop
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lw      $t5, 0x0214($t4)
	bne     $t5, $t2, .L80305B68
	nop
	li      $at, 0xC1000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0110($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sh      $t7, 0x01B2($t8)
.L80305B68:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x3F000000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00A4($t9)
	lwc1    $f8, 0x0110($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t9)
.L80305B98:
	b       .L80305BA0
	nop
.L80305BA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80305BB0
object_c_80305BB0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0068($t6)
	lh      $t7, 0x0146($t6)
	lh      $t9, 0x008A($t8)
	subu    $t0, $t7, $t9
	addiu   $t1, $t0, -0x0001
	sh      $t1, 0x001E($sp)
	lh      $t2, 0x001E($sp)
	blez    $t2, .L80305BF0
	nop
	slti    $at, $t2, 0x0006
	bnez    $at, .L80305BFC
	nop
.L80305BF0:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L80305BFC:
	b       .L80305C04
	nop
.L80305C04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80305C14
object_c_80305C14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332A00)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	addu    $a0, $a0, $t8
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332A00)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t1, 0x0144($t0)
	bne     $t1, $at, .L80305C78
	nop
	li      $at, 0x44FA0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0194($t2)
.L80305C78:
	b       .L80305C80
	nop
.L80305C80:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80305C90
object_c_80305C90:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	sw      $t7, 0x002C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00F4($t8)
	lw      $t9, 0x00D0($t8)
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	addu    $t2, $t9, $t1
	sw      $t2, 0x00D0($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     obj_lib_802A3634
	lwc1    $f12, 0x00F4($t3)
	li      $at, 0x41200000
	mtc1    $at, $f8
	nop
	c.lt.s  $f8, $f0
	nop
	bc1f    .L80305D04
	nop
	li.u    $a0, 0x400B0001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x400B0001
.L80305D04:
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0214($t4)
	bne     $t5, $t6, .L80305DE4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lw      $t0, 0x0160($t7)
	lw      $t9, 0x00C8($t7)
	lwc1    $f16, 0x015C($t7)
	subu    $t1, $t0, $t9
	andi    $t2, $t1, 0xFFFF
	sra     $t8, $t2, 4
	sll     $t3, $t8, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0028($sp)
	mtc1    $0, $f10
	lwc1    $f4, 0x00F4($t4)
	mul.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80305D98
	nop
	lui     $at, %hi(object_c_80338B80)
	lwc1    $f18, %lo(object_c_80338B80)($at)
	lwc1    $f16, 0x0028($sp)
	mul.s   $f4, $f16, $f18
	b       .L80305DAC
	swc1    $f4, 0x0028($sp)
.L80305D98:
	lui     $at, %hi(object_c_80338B84)
	lwc1    $f8, %lo(object_c_80338B84)($at)
	lwc1    $f6, 0x0028($sp)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($sp)
.L80305DAC:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f16, 0x00F4($t5)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00F4($t5)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC2480000
	li      $a2, 0x42480000
	jal     object_c_802FA2BC
	addiu   $a0, $a0, 0x00F4
	b       .L80305E14
	nop
.L80305DE4:
	lui     $t6, %hi(object)
	li      $at, 0x40400000
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f6
	mtc1    $at, $f8
	move    $a2, $0
	li      $a3, 0x40C00000
	addiu   $a0, $t6, 0x00D0
	addiu   $a1, $t6, 0x00F4
	swc1    $f6, 0x0010($sp)
	jal     object_c_802FAC18
	swc1    $f8, 0x0014($sp)
.L80305E14:
	b       .L80305E1C
	nop
.L80305E1C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_80305E2C
object_c_80305E2C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332A20+0x00)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $a0, $a0, $t8
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332A20+0x00)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
	sw      $0, 0x0028($sp)
.L80305E6C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object_c_80332A20+0x08)
	la.u    $t4, o_13004B6C
	sw      $t0, 0x0010($sp)
	lw      $t1, 0x0144($t0)
	la.l    $t4, o_13004B6C
	sw      $t4, 0x0018($sp)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t3, $t3, $t2
	lh      $t3, %lo(object_c_80332A20+0x08)($t3)
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t3, 0x0014($sp)
	sw      $v0, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	beqz    $t5, .L80305EF8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332A20+0x04)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $a0, $a0, $t8
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332A20+0x04)($a0)
	lw      $t9, 0x002C($sp)
	sw      $v0, 0x0218($t9)
.L80305EF8:
	lw      $t0, 0x0028($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0004
	bnez    $at, .L80305E6C
	sw      $t1, 0x0028($sp)
	b       .L80305F14
	nop
.L80305F14:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_80305F24
object_c_80305F24:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0068($t6)
	lw      $t7, 0x0144($t6)
	lw      $t0, 0x00D8($t9)
	sll     $t8, $t7, 14
	addu    $t1, $t8, $t0
	sh      $t1, 0x001A($sp)
	lhu     $t2, 0x001A($sp)
	lui     $at, %hi(math_cos)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x001C($sp)
	lw      $t7, 0x0068($t5)
	lhu     $t6, 0x00CA($t7)
	sra     $t9, $t6, 4
	sll     $t8, $t9, 2
	addu    $at, $at, $t8
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x43960000
	mtc1    $at, $f16
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	mul.s   $f18, $f10, $f16
	lwc1    $f6, %lo(math_sin)($at)
	lwc1    $f10, 0x00A0($t7)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t5)
	lhu     $t0, 0x001A($sp)
	lui     $at, %hi(math_sin)
	lui     $t3, %hi(object)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f10
	lw      $t3, %lo(object)($t3)
	mul.s   $f8, $f6, $f10
	lw      $t4, 0x0068($t3)
	lwc1    $f18, 0x00A4($t4)
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x00A4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x001C($sp)
	lw      $t9, 0x0068($t6)
	lhu     $t8, 0x00CA($t9)
	sra     $t7, $t8, 4
	sll     $t5, $t7, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t5
	mul.s   $f10, $f4, $f6
	lwc1    $f18, %lo(math_cos)($at)
	lwc1    $f4, 0x00A8($t9)
	mul.s   $f16, $f8, $f18
	add.s   $f6, $f4, $f16
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x00A8($t6)
	jal     object_c_802F9904
	li      $a0, 0x0001
	b       .L80306074
	nop
.L80306074:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80306084
object_c_80306084:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43480000
	mtc1    $at, $f8
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 1
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0030($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E27C
	lw      $a0, %lo(object)($a0)
	swc1    $f0, 0x0034($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	bnez    $t2, .L80306290
	nop
	lwc1    $f16, 0x0034($sp)
	lwc1    $f18, 0x0030($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80306290
	nop
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	lwc1    $f6, 0x00A4($t1)
	li      $at, 0x447A0000
	lwc1    $f4, 0x00A4($t3)
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80306290
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	beqz    $t5, .L8030616C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	addiu   $t8, $t7, -0x0001
	b       .L80306290
	sw      $t8, 0x00F8($t6)
.L8030616C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t2, o_13004BA8
	la.l    $t2, o_13004BA8
	li      $t0, 0x0054
	sw      $t0, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x07D0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t9, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	beqz    $t3, .L80306290
	nop
	la.u    $t1, player_data
	la.l    $t1, player_data
	li      $at, 0x41E00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t1)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lw      $t5, 0x002C($sp)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0028($sp)
	lhu     $t8, 0x00CA($t7)
	lwc1    $f4, 0x00A0($t7)
	lw      $t0, 0x002C($sp)
	sra     $t6, $t8, 4
	sll     $t9, $t6, 2
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A0($t0)
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x0028($sp)
	lhu     $t3, 0x00CA($t2)
	lwc1    $f18, 0x00A8($t2)
	lw      $t5, 0x002C($sp)
	sra     $t1, $t3, 4
	sll     $t4, $t1, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_cos)($at)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A8($t5)
	la.u    $a2, o_13004BD4
	la.l    $a2, o_13004BD4
	lw      $a0, 0x002C($sp)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0055
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t8, 0x0001
	sw      $t8, 0x00F4($t6)
	move    $a0, $0
	jal     object_c_802FA964
	li      $a1, 0x0032
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00F8($t9)
.L80306290:
	b       .L80306298
	nop
.L80306298:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_c_803062A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lb      $t6, 0x001B($sp)
	lui     $at, %hi(object_c_80332A48+0x03)
	sb      $t6, %lo(object_c_80332A48+0x03)($at)
	lb      $t7, 0x001F($sp)
	lui     $at, %hi(object_c_80332A48+0x05)
	sb      $t7, %lo(object_c_80332A48+0x05)($at)
	lb      $t8, 0x0023($sp)
	lui     $at, %hi(object_c_80332A48+0x06)
	sb      $t8, %lo(object_c_80332A48+0x06)($at)
	la.u    $a0, object_c_80332A48+0x00
	jal     obj_lib_802A32AC
	la.l    $a0, object_c_80332A48+0x00
	b       .L803062F4
	nop
.L803062F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80306304:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x50288081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50288081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00EC($t8)
	li      $at, 0xC2200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t9)
	b       .L80306354
	nop
.L80306354:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80306364:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_c_80332A38
	la.l    $a1, object_c_80332A38
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	bnez    $t8, .L803063AC
	nop
	lw      $t9, 0x00EC($t6)
	andi    $t0, $t9, 0x0008
	beqz    $t0, .L803063E8
	nop
.L803063AC:
	li.u    $a0, 0x5029A081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x5029A081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t1)
	lw      $a2, 0x00A4($t1)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	b       .L803065DC
	sw      $t2, 0x014C($t3)
.L803063E8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t7, $t5, 0x0003
	beqz    $t7, .L803065B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t6, 0x0100($t8)
	bnez    $t6, .L803064E0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0100($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0104($t1)
	lui     $t2, %hi(object)
	li      $at, 0x40400000
	add.s   $f8, $f4, $f6
	mtc1    $at, $f16
	swc1    $f8, 0x0104($t1)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x0104($t2)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80306478
	nop
	li.u    $a0, 0x502E8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502E8081
	b       .L80306484
	nop
.L80306478:
	li.u    $a0, 0x5029A081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x5029A081
.L80306484:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t3)
	lw      $a2, 0x00A4($t3)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0160($t4)
	sw      $t5, 0x00C8($t4)
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t7)
	li      $at, 0xC2200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00FC($t8)
.L803064E0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338B88)
	lwc1    $f8, %lo(object_c_80338B88)($at)
	lwc1    $f6, 0x0104($t6)
	li      $at, 0x41700000
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	lwc1    $f4, 0x00FC($t6)
	sub.s   $f18, $f16, $f10
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00FC($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80338B8C)
	lwc1    $f16, %lo(object_c_80338B8C)($at)
	lwc1    $f8, 0x00FC($t9)
	lwc1    $f4, 0x00F8($t9)
	mul.s   $f10, $f8, $f16
	add.s   $f18, $f4, $f10
	swc1    $f18, 0x00F8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338B90)
	lwc1    $f8, %lo(object_c_80338B90)($at)
	lwc1    $f6, 0x00F8($t0)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8030656C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	b       .L803065AC
	sw      $t1, 0x014C($t2)
.L8030656C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338B94)
	lwc1    $f4, %lo(object_c_80338B94)($at)
	lwc1    $f16, 0x00F8($t3)
	c.lt.s  $f4, $f16
	nop
	bc1f    .L803065AC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338B98)
	lwc1    $f18, %lo(object_c_80338B98)($at)
	lwc1    $f10, 0x00FC($t5)
	mul.s   $f6, $f10, $f18
	swc1    $f6, 0x00B0($t5)
.L803065AC:
	b       .L803065DC
	nop
.L803065B4:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3C03126F
	li.l    $a2, 0x3C03126F
	li      $a1, 0x0000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0100($t4)
.L803065DC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lwc1    $f8, 0x00F8($t7)
	add.s   $f4, $f8, $f16
	swc1    $f4, 0x0030($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x00F8($t8)
	swc1    $f10, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f18, 0x0104($t6)
	c.eq.s  $f18, $f6
	nop
	bc1f    .L80306640
	nop
	li      $at, 0x40800000
	mtc1    $at, $f16
	lwc1    $f8, 0x0024($sp)
	mul.s   $f4, $f8, $f16
	swc1    $f4, 0x0024($sp)
.L80306640:
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f18, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sub.s   $f20, $f10, $f18
	lui     $t0, %hi(object)
	swc1    $f20, 0x0034($t9)
	lw      $t0, %lo(object)($t0)
	swc1    $f20, 0x002C($t0)
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L80306678
	nop
.L80306678:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030668C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0019
	li      $a1, 0x003C
	jal     object_c_803062A8
	li      $a2, 0x000A
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $0, 0x00F4($t7)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L803066C8
	nop
.L803066C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803066D8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0065
	bnez    $at, .L80306710
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L803067CC
	nop
.L80306710:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0007
	beqz    $at, .L8030675C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x0154($t0)
	bne     $t1, $at, .L80306750
	nop
	li      $a0, -0x0014
	li      $a1, 0x000A
	jal     object_c_803062A8
	li      $a2, 0x001E
.L80306750:
	la.u    $a0, object_c_80332A5C
	jal     obj_lib_802A32AC
	la.l    $a0, object_c_80332A5C
.L8030675C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338B9C)
	lwc1    $f6, %lo(object_c_80338B9C)($at)
	lwc1    $f4, 0x0030($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8030679C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338BA0)
	lwc1    $f10, %lo(object_c_80338BA0)($at)
	lwc1    $f8, 0x0030($t3)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0030($t3)
.L8030679C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f4, 0x0030($t4)
	lui     $t5, %hi(object)
	sub.s   $f20, $f18, $f4
	swc1    $f20, 0x0034($t4)
	lw      $t5, %lo(object)($t5)
	swc1    $f20, 0x002C($t5)
	jal     obj_lib_802A31E0
	nop
.L803067CC:
	b       .L803067D4
	nop
.L803067D4:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803067E8
object_c_803067E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L80306818
	nop
	jal     object_c_803066D8
	nop
	b       .L803068A4
	nop
.L80306818:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0030($t8)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00DC($t8)
	jal     obj_lib_802A2320
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0001
	lw      $s0, 0x014C($t9)
	beq     $s0, $at, .L80306874
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80306884
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L80306894
	nop
	b       .L803068A4
	nop
.L80306874:
	jal     object_c_80306304
	nop
	b       .L803068A4
	nop
.L80306884:
	jal     object_c_80306364
	nop
	b       .L803068A4
	nop
.L80306894:
	jal     object_c_8030668C
	nop
	b       .L803068A4
	nop
.L803068A4:
	b       .L803068AC
	nop
.L803068AC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803068C0
object_c_803068C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, .L803068F8
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L80306984
	nop
.L803068F8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lwc1    $f4, 0x00A4($t0)
	lwc1    $f6, 0x00E8($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x001C($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80306940
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x001C($sp)
.L80306940:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	move    $a0, $t1
	jal     obj_lib_8029F120
	lw      $a1, 0x0068($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x001C($sp)
	lw      $t3, 0x0068($t2)
	lwc1    $f4, 0x00E8($t3)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	move    $a0, $t4
	jal     obj_lib_8029F3A8
	lw      $a1, 0x0068($t4)
.L80306984:
	b       .L8030698C
	nop
.L8030698C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_8030699C
object_c_8030699C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332A70)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	addu    $a0, $a0, $t8
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332A70)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	bnez    $t1, .L803069F0
	nop
	li      $t2, 0x0004
	b       .L80306A00
	sw      $t2, 0x00F8($t0)
.L803069F0:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x00F8($t4)
.L80306A00:
	lui     $t5, %hi(object_80361258)
	lh      $t5, %lo(object_80361258)($t5)
	lui     $t6, %hi(object_c_80332A78)
	lui     $t7, %hi(object)
	addu    $t6, $t6, $t5
	lbu     $t6, %lo(object_c_80332A78)($t6)
	lw      $t7, %lo(object)($t7)
	sw      $t6, 0x00FC($t7)
	b       .L80306A28
	nop
.L80306A28:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80306A38
object_c_80306A38:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	li      $at, 0x0003
	beq     $t6, $at, .L80306C90
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	lw      $t9, 0x00FC($t7)
	slt     $at, $t9, $t8
	beqz    $at, .L80306C90
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0104($t0)
	beqz    $t1, .L80306AC4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t5, %hi(object)
	lw      $t3, 0x0104($t2)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x0104($t2)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0104($t5)
	bnez    $t6, .L80306ABC
	nop
	li.u    $a0, 0x80590081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x80590081
.L80306ABC:
	b       .L80306C88
	nop
.L80306AC4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	lwc1    $f4, 0x0100($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80306C18
	nop
	lwc1    $f8, 0x00A4($t7)
	lwc1    $f10, 0x0168($t7)
	c.le.s  $f10, $f8
	nop
	bc1f    .L80306C18
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x47800000
	mtc1    $at, $f10
	lw      $t9, 0x00F4($t8)
	lw      $t0, 0x00F8($t8)
	mtc1    $t9, $f16
	mtc1    $t0, $f4
	cvt.s.w $f18, $f16
	cvt.s.w $f6, $f4
	div.s   $f8, $f18, $f6
	mul.s   $f16, $f8, $f10
	trunc.w.s $f4, $f16
	mfc1    $t3, $f4
	nop
	sw      $t3, 0x002C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x00D8($t4)
	sw      $t2, 0x0028($sp)
	lw      $a0, 0x002C($sp)
	jal     object_c_802FA7BC
	li      $a1, 0x04B0
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0028($sp)
	lw      $t6, 0x00D8($t5)
	subu    $t9, $t6, $t7
	sw      $t9, 0x011C($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x011C($t8)
	bnez    $t0, .L80306C10
	nop
	li.u    $a0, 0x80400081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x80400081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00F4($t1)
	lw      $t2, 0x00F8($t1)
	addiu   $t4, $t3, 0x0001
	div     $0, $t4, $t2
	mfhi    $t6
	sw      $t6, 0x00F4($t1)
	bnez    $t2, .L80306BBC
	nop
	break   7
.L80306BBC:
	li      $at, -0x0001
	bne     $t2, $at, .L80306BD4
	li      $at, 0x80000000
	bne     $t4, $at, .L80306BD4
	nop
	break   6
.L80306BD4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
	lui     $t9, %hi(object_80361258)
	lh      $t9, %lo(object_80361258)($t9)
	li      $at, 0x0002
	bne     $t9, $at, .L80306C10
	nop
	li      $a0, 0x0005
	li      $a1, 0x0014
	jal     object_c_802FA9D8
	li      $a2, 0x0007
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00FC($t5)
.L80306C10:
	b       .L80306C88
	nop
.L80306C18:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f18, 0x0100($t8)
	add.s   $f8, $f18, $f6
	swc1    $f8, 0x0100($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object)
	lwc1    $f10, 0x00A4($t0)
	lwc1    $f16, 0x0100($t0)
	add.s   $f20, $f10, $f16
	swc1    $f20, 0x00A4($t0)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x0168($t3)
	c.le.s  $f4, $f20
	nop
	bc1f    .L80306C88
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x0168($t4)
	swc1    $f18, 0x00A4($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t2, 0x0006
	sw      $t2, 0x0104($t6)
.L80306C88:
	b       .L80306CA8
	nop
.L80306C90:
	li      $at, 0xC0A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0100($t1)
.L80306CA8:
	b       .L80306CB0
	nop
.L80306CB0:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_80306CC4
object_c_80306CC4:
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	li      $at, 0x0003
	beq     $t6, $at, .L80306D14
	nop
	lui     $t7, %hi(object_80361258)
	lh      $t7, %lo(object_80361258)($t7)
	lui     $at, %hi(object_c_80332A7C)
	lui     $t9, %hi(object)
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(object_c_80332A7C)($at)
	lw      $t9, %lo(object)($t9)
	swc1    $f4, 0x0100($t9)
	lui     $at, %hi(object_c_80338BA4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, %lo(object_c_80338BA4)($at)
	b       .L80306D28
	swc1    $f6, 0x00F8($t0)
.L80306D14:
	lui     $at, %hi(object_c_80338BA8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, %lo(object_c_80338BA8)($at)
	swc1    $f8, 0x00F8($t1)
.L80306D28:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_80306D38
object_c_80306D38:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	li      $at, 0x0003
	beq     $t6, $at, .L80306F14
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00FC($t7)
	swc1    $f4, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0108($t8)
	beqz    $t9, .L80306DAC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object)
	lw      $t1, 0x0108($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x0108($t0)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0108($t3)
	bnez    $t4, .L80306DAC
	nop
	li.u    $a0, 0x30380081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30380081
.L80306DAC:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0104($t5)
	beqz    $t6, .L80306DD8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0104($t7)
	addiu   $t9, $t8, -0x0001
	b       .L80306F0C
	sw      $t9, 0x0104($t7)
.L80306DD8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f16
	lwc1    $f6, 0x00F4($t1)
	lwc1    $f8, 0x00F8($t1)
	mul.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80306E14
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x00F4($t2)
	neg.s   $f4, $f18
	swc1    $f4, 0x00F4($t2)
.L80306E14:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0100($t0)
	lwc1    $f8, 0x00F4($t0)
	lwc1    $f16, 0x00FC($t0)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00FC($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	lwc1    $f4, 0x00FC($t3)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L80306EF4
	nop
	lui     $t4, %hi(object_80361258)
	lh      $t4, %lo(object_80361258)($t4)
	li      $at, 0x0002
	bne     $t4, $at, .L80306EE0
	nop
	jal     rand
	nop
	li      $at, 0x0003
	div     $0, $v0, $at
	mfhi    $t5
	beqz    $t5, .L80306E9C
	nop
	li      $at, 0x41500000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f8
	b       .L80306EB4
	swc1    $f8, 0x0100($t6)
.L80306E9C:
	li      $at, 0x42280000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0100($t8)
.L80306EB4:
	jal     rand
	nop
	andi    $t9, $v0, 0x0001
	bnez    $t9, .L80306EE0
	nop
	li      $a0, 0x0005
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x0104($t7)
.L80306EE0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0104($t1)
	addiu   $t0, $t2, 0x000F
	sw      $t0, 0x0108($t1)
.L80306EF4:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00F8($t3)
	lwc1    $f18, 0x00FC($t3)
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x00F8($t3)
.L80306F0C:
	b       .L80306F14
	nop
.L80306F14:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00F8($t4)
	trunc.w.s $f8, $f6
	mfc1    $t6, $f8
	nop
	sw      $t6, 0x00D8($t4)
	b       .L80306F38
	nop
.L80306F38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80306F48
object_c_80306F48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332A8C)
	lw      $t7, 0x0144($t6)
	andi    $t8, $t7, 0x0001
	sll     $t9, $t8, 2
	addu    $a0, $a0, $t9
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332A8C)($a0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x0218($t0)
	la.u    $a0, 0x07016840
	jal     segment_to_virtual
	la.l    $a0, 0x07016840
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00F4($t1)
	la.u    $a0, 0x07016904
	jal     segment_to_virtual
	la.l    $a0, 0x07016904
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00F8($t2)
	lui     $t3, %hi(object_80361258)
	lh      $t3, %lo(object_80361258)($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $s0, %hi(object_c_80332A94)
	sll     $t4, $t3, 1
	addu    $s0, $s0, $t4
	lh      $s0, %lo(object_c_80332A94)($s0)
	lw      $t6, 0x00F8($t5)
	lui     $t7, %hi(object)
	sh      $s0, 0x0000($t6)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F4($t7)
	sh      $s0, 0x0000($t8)
	lui     $at, %hi(object_c_80361488)
	sw      $0, %lo(object_c_80361488)($at)
	b       .L80306FFC
	nop
.L80306FFC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80307010
object_c_80307010:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object_c_80361488)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(object_c_80361488)($t6)
	beq     $t6, $t7, .L8030703C
	nop
	bnez    $t6, .L80307170
	nop
.L8030703C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80361488)
	sw      $t8, %lo(object_c_80361488)($at)
	li.u    $a0, 0x40080001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x40080001
	lui     $t9, %hi(object_80361258)
	lh      $t9, %lo(object_80361258)($t9)
	li      $at, 0x0002
	bne     $t9, $at, .L80307170
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	lw      $t2, 0x0104($t0)
	slt     $at, $t2, $t1
	beqz    $at, .L80307100
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41200000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00FC
	beqz    $v0, .L803070F8
	nop
	li      $a0, 0x000A
	li      $a1, 0x0014
	jal     object_c_802FA9D8
	li      $a2, 0x0007
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x0104($t3)
	jal     o_script_80383D1C
	nop
	mtc1    $v0, $f4
	li      $at, 0x42480000
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0100($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
.L803070F8:
	b       .L80307130
	nop
.L80307100:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0154($t7)
	slti    $at, $t6, 0x0006
	bnez    $at, .L80307130
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a2, 0x41200000
	addiu   $a0, $t8, 0x00FC
	jal     object_c_802FA544
	lw      $a1, 0x0100($t8)
.L80307130:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t4, %hi(object)
	lwc1    $f16, 0x00FC($t9)
	lw      $t3, 0x00F8($t9)
	trunc.w.s $f18, $f16
	mfc1    $s0, $f18
	nop
	sll     $t1, $s0, 16
	move    $s0, $t1
	sra     $t2, $s0, 16
	move    $s0, $t2
	sh      $s0, 0x0000($t3)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	sh      $s0, 0x0000($t5)
.L80307170:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80338BAC)
	lwc1    $f8, %lo(object_c_80338BAC)($at)
	lw      $t6, 0x00F4($t7)
	lh      $t8, 0x0000($t6)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t7)
	b       .L803071A4
	nop
.L803071A4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803071B8
object_c_803071B8:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	lui     $a0, %hi(object_c_80332A9C)
	lui     $t8, %hi(object)
	sll     $t7, $t6, 1
	addu    $a0, $a0, $t7
	lh      $a0, %lo(object_c_80332A9C)($a0)
	lw      $t8, %lo(object)($t8)
	bnez    $a0, .L803071FC
	sw      $a0, 0x00F4($t8)
	li      $at, 0x437A0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00FC($t9)
.L803071FC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 1
	sw      $t2, 0x00F8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t5, 0x4000
	lw      $t4, 0x00C8($t3)
	subu    $t6, $t5, $t4
	sw      $t6, 0x00C8($t3)
	b       .L80307238
	nop
.L80307238:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_80307240:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	beqz    $t7, .L8030732C
	nop
	lw      $t8, 0x0154($t6)
	slt     $at, $t7, $t8
	beqz    $at, .L8030732C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	beqz    $t0, .L8030729C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	addiu   $t3, $t2, -0x0001
	b       .L8030732C
	sw      $t3, 0x00F8($t1)
.L8030729C:
	lui     $t4, %hi(object_80361258)
	lh      $t4, %lo(object_80361258)($t4)
	li      $at, 0x0002
	bne     $t4, $at, .L80307304
	nop
	jal     rand
	nop
	andi    $s0, $v0, 0xFFFF
	andi    $t5, $s0, 0x0003
	lui     $t6, %hi(object_c_80332AA4)
	addu    $t6, $t6, $t5
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lb      $t6, %lo(object_c_80332AA4)($t6)
	sw      $t6, 0x00F4($t8)
	jal     rand
	nop
	andi    $t7, $v0, 0x0001
	bnez    $t7, .L80307304
	nop
	li      $a0, 0x0014
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00F8($t9)
.L80307304:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t2)
	li      $at, 0xC1000000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0100($t3)
.L8030732C:
	b       .L80307334
	nop
.L80307334:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80307348:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338BB0)
	lwc1    $f6, %lo(object_c_80338BB0)($at)
	lwc1    $f4, 0x0100($t6)
	lui     $t7, %hi(object)
	mtc1    $0, $f16
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0100($t6)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0100($t7)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L803073E8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	beqz    $t9, .L803073C0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x00F8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	b       .L803073E8
	swc1    $f18, 0x0100($t3)
.L803073C0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
	li      $at, 0x41E80000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0100($t6)
.L803073E8:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_803073F8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	lui     $t7, %hi(object)
	swc1    $f4, 0x0100($t6)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x0100($t7)
	swc1    $f6, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_80307434:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x437A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00FC($t6)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L80307490
	nop
	li      $at, 0x437A0000
	mtc1    $at, $f8
	mtc1    $at, $f18
	lwc1    $f10, 0x0104($t6)
	sub.s   $f6, $f18, $f4
	sub.s   $f16, $f8, $f10
	mtc1    $0, $f10
	mul.s   $f8, $f16, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    .L803074F4
	nop
.L80307490:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0xC1000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0100($t7)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L803074F4
	nop
	li      $at, 0x41000000
	mtc1    $at, $f16
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    .L803074F4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	b       .L803075E0
	swc1    $f6, 0x0100($t0)
.L803074F4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x437A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00FC($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80307528
	nop
	lui     $at, %hi(object_c_80338BB4)
	lwc1    $f4, %lo(object_c_80338BB4)($at)
	b       .L80307534
	swc1    $f4, 0x001C($sp)
.L80307528:
	lui     $at, %hi(object_c_80338BB8)
	lwc1    $f18, %lo(object_c_80338BB8)($at)
	swc1    $f18, 0x001C($sp)
.L80307534:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x001C($sp)
	mtc1    $0, $f10
	lwc1    $f16, 0x0100($t2)
	mul.s   $f8, $f16, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80307570
	nop
	lui     $at, %hi(object_c_80338BBC)
	lwc1    $f18, %lo(object_c_80338BBC)($at)
	lwc1    $f4, 0x001C($sp)
	mul.s   $f16, $f4, $f18
	swc1    $f16, 0x001C($sp)
.L80307570:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f6, 0x0100($t3)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0100($t3)
	lui     $t4, %hi(object_80361258)
	lh      $t4, %lo(object_80361258)($t4)
	li      $at, 0x0002
	bne     $t4, $at, .L803075E0
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f6
	lwc1    $f4, 0x0104($t5)
	lwc1    $f18, 0x00FC($t5)
	mul.s   $f16, $f4, $f18
	c.lt.s  $f16, $f6
	nop
	bc1f    .L803075E0
	nop
	jal     rand
	nop
	andi    $t6, $v0, 0x0003
	bnez    $t6, .L803075E0
	nop
	jal     object_c_803073F8
	nop
.L803075E0:
	b       .L803075E8
	nop
.L803075E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_803075F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001F
	bnez    $at, .L80307658
	nop
	li      $at, 0xC0A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0100($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f8
	lwc1    $f6, 0x00FC($t9)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80307658
	nop
	jal     object_c_803073F8
	nop
.L80307658:
	b       .L80307660
	nop
.L80307660:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80307670
object_c_80307670:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00FC($t6)
	swc1    $f4, 0x0104($t6)
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00FC($t7)
	lwc1    $f8, 0x0100($t7)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, .L803076EC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L803076FC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8030770C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8030771C
	nop
	b       .L8030772C
	nop
.L803076EC:
	jal     object_c_80307240
	nop
	b       .L8030772C
	nop
.L803076FC:
	jal     object_c_80307348
	nop
	b       .L8030772C
	nop
.L8030770C:
	jal     object_c_80307434
	nop
	b       .L8030772C
	nop
.L8030771C:
	jal     object_c_803075F8
	nop
	b       .L8030772C
	nop
.L8030772C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	jal     object_c_802F9820
	lwc1    $f12, 0x00FC($t9)
	jal     object_c_802F9904
	li      $a0, 0x0001
	b       .L8030774C
	nop
.L8030774C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80307760
object_c_80307760:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332AA8)
	lw      $t7, 0x0144($t6)
	andi    $t8, $t7, 0x0002
	sra     $t9, $t8, 1
	sll     $t0, $t9, 2
	addu    $a0, $a0, $t0
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332AA8)($a0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0218($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t5, %hi(object_c_80332AB0)
	lw      $t3, 0x0144($t2)
	andi    $t4, $t3, 0x0001
	addu    $t5, $t5, $t4
	lb      $t5, %lo(object_c_80332AB0)($t5)
	mtc1    $t5, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00F4($t2)
	b       .L803077D0
	nop
.L803077D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803077E0
object_c_803077E0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lui     $s0, %hi(object_80361258)
	lh      $s0, %lo(object_80361258)($s0)
	beqz    $s0, .L8030782C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030782C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80307864
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L803078D0
	nop
	b       .L803078D8
	nop
.L8030782C:
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	lui     $t8, %hi(object_c_80332AB4)
	lui     $t9, %hi(object)
	sll     $t7, $t6, 1
	addu    $t8, $t8, $t7
	lh      $t8, %lo(object_c_80332AB4)($t8)
	lw      $t9, %lo(object)($t9)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00F8($t9)
	b       .L803078D8
	nop
.L80307864:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a2, 0x42480000
	addiu   $a0, $t0, 0x00F8
	jal     object_c_802FA544
	lw      $a1, 0x00FC($t0)
	beqz    $v0, .L803078D0
	nop
	jal     rand
	nop
	jal     o_script_80383D1C
	andi    $s1, $v0, 0xFFFF
	li      $at, 0x43480000
	mtc1    $at, $f8
	li      $at, 0x0007
	div     $0, $s1, $at
	mfhi    $t1
	mtc1    $t1, $f10
	mtc1    $v0, $f4
	lui     $t2, %hi(object)
	cvt.s.w $f16, $f10
	lw      $t2, %lo(object)($t2)
	cvt.s.w $f6, $f4
	mul.s   $f18, $f8, $f16
	nop
	mul.s   $f10, $f6, $f18
	swc1    $f10, 0x00FC($t2)
.L803078D0:
	b       .L803078D8
	nop
.L803078D8:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x00F4($t3)
	lwc1    $f16, 0x00F8($t3)
	mul.s   $f4, $f8, $f16
	trunc.w.s $f6, $f4
	mfc1    $t5, $f6
	nop
	sw      $t5, 0x0118($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	lw      $t8, 0x0118($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00D4($t6)
	b       .L8030791C
	nop
.L8030791C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl object_c_80307930
object_c_80307930:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332AB8)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	addu    $a0, $a0, $t8
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332AB8)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43A50000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t0)
	lui     $t1, %hi(object_80361258)
	lh      $t1, %lo(object_80361258)($t1)
	li      $at, 0x0003
	bne     $t1, $at, .L803079B0
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43A50000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t2)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t2)
.L803079B0:
	b       .L803079B8
	nop
.L803079B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803079C8
object_c_803079C8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	lw      $t8, 0x00FC($t6)
	slt     $at, $t8, $t7
	beqz    $at, .L80307AC8
	nop
	jal     obj_lib_802A2644
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $a0, $t9, 0x00A4
	lw      $a1, 0x0168($t9)
	jal     object_c_802FA2BC
	lw      $a2, 0x00F4($t9)
	beqz    $v0, .L80307AC8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	xori    $t2, $t1, 0x0001
	sw      $t2, 0x00F8($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t3, %hi(object_80361258)
	lh      $t3, %lo(object_80361258)($t3)
	lw      $t6, 0x00F8($t5)
	lui     $s0, %hi(object_c_80332AC0+2*1)
	sll     $t4, $t3, 3
	andi    $t7, $t6, 0x0001
	sll     $t8, $t7, 2
	addu    $t9, $t4, $t8
	addu    $s0, $s0, $t9
	lh      $s0, %lo(object_c_80332AC0+2*1)($s0)
	bgez    $s0, .L80307A80
	sw      $s0, 0x00FC($t5)
	li      $a0, 0x000A
	li      $a1, 0x0014
	jal     object_c_802FA9D8
	li      $a2, 0x0006
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00FC($t1)
.L80307A80:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t2, %hi(object_80361258)
	lh      $t2, %lo(object_80361258)($t2)
	lw      $t6, 0x00F8($t3)
	lui     $t8, %hi(object_c_80332AC0+2*0)
	sll     $t0, $t2, 3
	sll     $t7, $t6, 2
	addu    $t4, $t0, $t7
	addu    $t8, $t8, $t4
	lh      $t8, %lo(object_c_80332AC0+2*0)($t8)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00B0($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0154($t9)
.L80307AC8:
	b       .L80307AD0
	nop
.L80307AD0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80307AE4
object_c_80307AE4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	beqz    $t9, .L80307B20
	nop
	mtc1    $t9, $f4
	li      $at, 0x42C80000
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	b       .L80307B30
	swc1    $f10, 0x0004($sp)
.L80307B20:
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0004($sp)
.L80307B30:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f18, 0x00A4($t0)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00F8($t0)
	b       .L80307B50
	nop
.L80307B50:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_c_80307B58
object_c_80307B58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object_80361258)
	lh      $t7, %lo(object_80361258)($t7)
	lui     $t8, %hi(object_c_80332AE0)
	lui     $t6, %hi(object)
	addu    $t8, $t8, $t7
	lb      $t8, %lo(object_c_80332AE0)($t8)
	lw      $t6, %lo(object)($t6)
	mtc1    $t8, $f6
	lwc1    $f4, 0x00F4($t6)
	cvt.s.w $f8, $f6
	mul.s   $f10, $f4, $f8
	swc1    $f10, 0x00B0($t6)
	lui     $t9, %hi(object_80361258)
	lh      $t9, %lo(object_80361258)($t9)
	li      $at, 0x0002
	bne     $t9, $at, .L80307C34
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	lw      $t2, 0x00FC($t0)
	slt     $at, $t2, $t1
	beqz    $at, .L80307C08
	nop
	jal     o_script_80383D1C
	nop
	mtc1    $v0, $f16
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00F4($t3)
	li      $a0, 0x001E
	li      $a1, 0x001E
	jal     object_c_802FA9D8
	li      $a2, 0x0006
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00FC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       .L80307C34
	sw      $0, 0x0154($t5)
.L80307C08:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0005
	beqz    $at, .L80307C34
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t6)
.L80307C34:
	jal     obj_lib_802A2644
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $a0, $t9, 0x00A4
	lw      $a1, 0x0168($t9)
	jal     object_c_802FA2BC
	lw      $a2, 0x00F8($t9)
	beqz    $v0, .L80307C70
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x00F4($t0)
	neg.s   $f8, $f4
	swc1    $f8, 0x00F4($t0)
.L80307C70:
	b       .L80307C78
	nop
.L80307C78:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80307C88
object_c_80307C88:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t9, %hi(object_80361258)
	lh      $t9, %lo(object_80361258)($t9)
	lw      $t7, 0x0144($t6)
	lui     $t2, %hi(object_c_80332AE8)
	sll     $t0, $t9, 1
	sll     $t8, $t7, 3
	addu    $t1, $t8, $t0
	addu    $t2, $t2, $t1
	lh      $t2, %lo(object_c_80332AE8)($t2)
	sw      $t2, 0x00F4($t6)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $a0, %hi(object_c_80332AE4)
	lui     $t7, %hi(object)
	lw      $t4, 0x0144($t3)
	sll     $t5, $t4, 1
	addu    $a0, $a0, $t5
	lh      $a0, %lo(object_c_80332AE4)($a0)
	sw      $a0, 0x0108($t3)
	lw      $t7, %lo(object)($t7)
	sw      $a0, 0x00FC($t7)
	b       .L80307CF0
	nop
.L80307CF0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_c_80307CF8
object_c_80307CF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0104($t8)
	beqz    $t9, .L80307D38
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0104($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x0104($t0)
.L80307D38:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	beqz    $t4, .L80307E58
	nop
	lw      $a0, 0x00F8($t3)
	jal     object_c_802FA748
	li      $a1, 0x00C8
	beqz    $v0, .L80307E58
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	lw      $t7, 0x00F4($t5)
	slt     $at, $t7, $t6
	beqz    $at, .L80307E58
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	lw      $t1, 0x00FC($t8)
	addu    $t2, $t9, $t1
	sw      $t2, 0x00F8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
	lui     $t4, %hi(object_80361258)
	lh      $t4, %lo(object_80361258)($t4)
	li      $at, 0x0002
	bne     $t4, $at, .L80307E58
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0104($t3)
	bnez    $t5, .L80307E3C
	nop
	jal     rand
	nop
	andi    $t6, $v0, 0x0003
	beqz    $t6, .L80307E0C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0108($t7)
	sw      $t9, 0x00FC($t7)
	li      $a0, 0x005A
	li      $a1, 0x003C
	jal     object_c_802FA9D8
	li      $a2, 0x0004
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       .L80307E3C
	sw      $v0, 0x0104($t1)
.L80307E0C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t8, 0x0108($t2)
	subu    $t0, $0, $t8
	sw      $t0, 0x00FC($t2)
	li      $a0, 0x001E
	li      $a1, 0x001E
	jal     object_c_802FA9D8
	li      $a2, 0x0003
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0104($t4)
.L80307E3C:
	li      $a0, 0x000A
	li      $a1, 0x0014
	jal     object_c_802FA9D8
	li      $a2, 0x0003
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00F4($t3)
.L80307E58:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t9, 0x001C($sp)
	lw      $t6, 0x00D4($t5)
	subu    $t7, $t6, $t9
	sw      $t7, 0x0118($t5)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t8, 0x0144($t1)
	bnez    $t8, .L80307E8C
	nop
	jal     map_data_803839CC
	nop
.L80307E8C:
	b       .L80307E94
	nop
.L80307E94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80307EA4
object_c_80307EA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	lui     $t8, %hi(object_c_80332AF8)
	lui     $t9, %hi(object)
	sll     $t7, $t6, 1
	addu    $t8, $t8, $t7
	lh      $t8, %lo(object_c_80332AF8)($t8)
	lw      $t9, %lo(object)($t9)
	sw      $t8, 0x0114($t9)
	lui     $t0, %hi(object_80361258)
	lh      $t0, %lo(object_80361258)($t0)
	li      $at, 0x0002
	bne     $t0, $at, .L80307F88
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	lw      $t3, 0x00F8($t1)
	slt     $at, $t3, $t2
	beqz    $at, .L80307F40
	nop
	jal     o_script_80383D1C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00F4($t4)
	li      $a0, 0x001E
	li      $a1, 0x001E
	jal     object_c_802FA9D8
	li      $a2, 0x0004
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00F8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	b       .L80307F88
	sw      $0, 0x0154($t6)
.L80307F40:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0006
	bnez    $at, .L80307F7C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0114($t9)
	lw      $t1, 0x00F4($t9)
	multu   $t0, $t1
	mflo    $t2
	sw      $t2, 0x0114($t9)
	b       .L80307F88
	nop
.L80307F7C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0114($t3)
.L80307F88:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D0($t4)
	lw      $t6, 0x0114($t4)
	addu    $t7, $t5, $t6
	sw      $t7, 0x00D0($t4)
	b       .L80307FA8
	nop
.L80307FA8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80307FB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lb      $t6, 0x001B($sp)
	lui     $at, %hi(object_c_80332B10+0x01)
	sb      $t6, %lo(object_c_80332B10+0x01)($at)
	lb      $t7, 0x001F($sp)
	lui     $at, %hi(object_c_80332B10+0x03)
	sb      $t7, %lo(object_c_80332B10+0x03)($at)
	lb      $t8, 0x0023($sp)
	lui     $at, %hi(object_c_80332B10+0x04)
	sb      $t8, %lo(object_c_80332B10+0x04)($at)
	lb      $t9, 0x0027($sp)
	lui     $at, %hi(object_c_80332B10+0x06)
	sb      $t9, %lo(object_c_80332B10+0x06)($at)
	lb      $t0, 0x002B($sp)
	lui     $at, %hi(object_c_80332B10+0x0C)
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, %lo(object_c_80332B10+0x0C)($at)
	la.u    $a0, object_c_80332B10+0x00
	jal     obj_lib_802A32AC
	la.l    $a0, object_c_80332B10+0x00
	b       .L8030802C
	nop
.L8030802C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030803C
object_c_8030803C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, .L80308098
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0007
	sw      $t8, 0x014C($t9)
	li      $at, 0x41C00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x010C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	b       .L803080F8
	sw      $t2, 0x01AC($t1)
.L80308098:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0144($t3)
	beqz    $t4, .L803080D4
	nop
	jal     save_flag_get
	nop
	li      $at, 0x00080000
	and     $t5, $v0, $at
	beqz    $t5, .L803080D4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x00F0($t7)
.L803080D4:
	li      $at, 0xC3480000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x010C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00F8($t9)
.L803080F8:
	b       .L80308100
	nop
.L80308100:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80308110:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, .L80308198
	nop
	move    $a0, $0
	jal     object_c_802FA39C
	li      $a1, 0x0005
	beqz    $v0, .L80308198
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43190000
	mtc1    $at, $f6
	lwc1    $f4, 0x010C($t8)
	la.u    $t1, o_13004E08
	la.l    $t1, o_13004E08
	add.s   $f8, $f4, $f6
	li      $t0, 0x00A0
	sw      $t0, 0x0014($sp)
	sw      $t1, 0x0018($sp)
	trunc.w.s $f10, $f8
	move    $a0, $0
	li      $a1, -0x0046
	move    $a3, $0
	mfc1    $a2, $f10
	jal     obj_lib_8029EF64
	sw      $t8, 0x0010($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	b       .L80308210
	sw      $v0, 0x00F8($t2)
.L80308198:
	jal     obj_lib_802A0008
	li      $a0, 0x000A
	beqz    $v0, .L803081BC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F8($t3)
	b       .L80308210
	sw      $t4, 0x006C($t3)
.L803081BC:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L80308210
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f18
	lwc1    $f16, 0x010C($t5)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80308200
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	b       .L80308210
	sw      $t6, 0x014C($t7)
.L80308200:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t8)
.L80308210:
	b       .L80308218
	nop
.L80308218:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80308228:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L803082CC
	nop
	li.u    $a0, 0x502B0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502B0081
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0160($t9)
	sw      $t0, 0x00C8($t9)
	li      $at, 0x42280000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t1)
	li      $t2, 0x000A
	sw      $t2, 0x0010($sp)
	li      $a0, 0x0008
	li      $a1, -0x000A
	li      $a2, 0x000F
	jal     object_c_80307FB8
	li      $a3, 0x0014
	jal     obj_lib_8029F694
	nop
	jal     obj_lib_802A05D4
	nop
	b       .L803082D4
	nop
.L803082CC:
	jal     obj_lib_8029F6BC
	nop
.L803082D4:
	b       .L803082DC
	nop
.L803082DC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_803082EC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	beqz    $t7, .L80308320
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0100($t8)
	addiu   $t0, $t9, -0x0001
	b       .L8030843C
	sw      $t0, 0x0100($t8)
.L80308320:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t2, %hi(object)
	li      $at, 0x41C00000
	lwc1    $f4, 0x010C($t1)
	lwc1    $f6, 0x00FC($t1)
	mtc1    $at, $f16
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x010C($t1)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x010C($t2)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L803083D8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41C00000
	mtc1    $at, $f4
	lwc1    $f18, 0x010C($t3)
	lwc1    $f8, 0x00A4($t3)
	sub.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x00A4($t3)
	li      $at, 0x41C00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x010C($t4)
	li      $t5, 0x000A
	sw      $t5, 0x0010($sp)
	li      $a0, 0x0008
	li      $a1, -0x0014
	li      $a2, 0x0014
	jal     object_c_80307FB8
	li      $a3, 0x000F
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x00FC($t9)
	b       .L8030843C
	swc1    $f18, 0x00B0($t9)
.L803083D8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41200000
	mtc1    $at, $f8
	lwc1    $f4, 0x00FC($t0)
	lui     $t8, %hi(object)
	mtc1    $0, $f16
	sub.s   $f6, $f4, $f8
	swc1    $f6, 0x00FC($t0)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x00FC($t8)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8030843C
	nop
	li      $at, 0x423C0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00FC($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0005
	sw      $t2, 0x0100($t3)
.L8030843C:
	b       .L80308444
	nop
.L80308444:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80308454:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, .L8030871C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0600
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0160($t0)
	lw      $t2, 0x00C8($t0)
	subu    $t3, $t1, $t2
	sh      $t3, 0x001E($sp)
	lh      $t4, 0x001E($sp)
	beqz    $t4, .L80308510
	nop
	lh      $t5, 0x001E($sp)
	bgez    $t5, .L803084D8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0108($t6)
	sub.s   $f8, $f4, $f6
	b       .L803084F4
	swc1    $f8, 0x0108($t6)
.L803084D8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0108($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0108($t7)
.L803084F4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x0104($t8)
	lwc1    $f6, 0x0108($t8)
	add.s   $f8, $f4, $f6
	b       .L803085F8
	swc1    $f8, 0x0104($t8)
.L80308510:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	lwc1    $f10, 0x0104($t9)
	c.eq.s  $f10, $f16
	nop
	bc1t    .L803085F8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x0104($t0)
	swc1    $f18, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f6
	lwc1    $f4, 0x0104($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80308580
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x447A0000
	li      $a2, 0x42A00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0108
	b       .L80308598
	nop
.L80308580:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC47A0000
	li      $a2, 0x42A00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0108
.L80308598:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x0104($t2)
	lwc1    $f10, 0x0108($t2)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0104($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x0018($sp)
	mtc1    $0, $f8
	lwc1    $f18, 0x0104($t3)
	mul.s   $f6, $f18, $f4
	c.lt.s  $f6, $f8
	nop
	bc1f    .L803085F8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f10
	lui     $t5, %hi(object)
	swc1    $f10, 0x0108($t4)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x0108($t5)
	swc1    $f16, 0x0104($t5)
.L803085F8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	lwc1    $f18, 0x0104($t6)
	c.eq.s  $f18, $f4
	nop
	bc1t    .L80308670
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     obj_lib_802A3674
	lw      $a0, 0x00D8($t7)
	slti    $at, $v0, 0x3001
	bnez    $at, .L80308668
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0006
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t1, %hi(object)
	sw      $0, 0x00F8($t0)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	sw      $t2, 0x006C($t1)
	jal     obj_lib_802A05B4
	nop
.L80308668:
	b       .L8030871C
	nop
.L80308670:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338BC0)
	lwc1    $f8, %lo(object_c_80338BC0)($at)
	lwc1    $f6, 0x015C($t3)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L803086DC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0005
	sw      $t4, 0x014C($t5)
	li      $at, 0x43960000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t8, %hi(object)
	sw      $0, 0x00F8($t7)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	b       .L8030871C
	sw      $t9, 0x006C($t8)
.L803086DC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0154($t0)
	slti    $at, $t2, 0x003D
	bnez    $at, .L8030871C
	nop
	lw      $a0, 0x0160($t0)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t0)
	slti    $at, $v0, 0x0800
	beqz    $at, .L8030871C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t1, 0x0004
	sw      $t1, 0x014C($t3)
.L8030871C:
	b       .L80308724
	nop
.L80308724:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80308734:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC6800000
	li      $a2, 0x46800000
	jal     object_c_802FA2BC
	addiu   $a0, $a0, 0x0104
	beqz    $v0, .L8030885C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x0108($t6)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L80308854
	nop
	li.u    $a0, 0x502A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502A0081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F0($t7)
	beqz    $t8, .L80308840
	nop
	jal     save_flag_clr
	li      $a0, 0x00080000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t1, o_13003DF8
	la.l    $t1, o_13003DF8
	li      $t0, 0x0088
	sw      $t0, 0x0014($sp)
	sw      $t1, 0x0018($sp)
	move    $a0, $0
	li      $a1, 0x0005
	li      $a2, 0x0069
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t9, 0x0010($sp)
	sw      $v0, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	beqz    $t2, .L80308834
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D8($t3)
	bgez    $t4, .L80308808
	nop
	b       .L8030880C
	li      $s0, 0x4000
.L80308808:
	li      $s0, -0x4000
.L8030880C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x0034($sp)
	lw      $t6, 0x00D4($t5)
	addu    $t7, $s0, $t6
	sw      $t7, 0x00C8($t8)
	li      $at, 0x41200000
	mtc1    $at, $f8
	lw      $t9, 0x0034($sp)
	swc1    $f8, 0x00B8($t9)
.L80308834:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F0($t0)
.L80308840:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0108($t1)
.L80308854:
	b       .L803088D0
	nop
.L8030885C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f18
	lwc1    $f16, 0x0104($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8030889C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x42200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0108($t3)
	sub.s   $f8, $f4, $f6
	b       .L803088B8
	swc1    $f8, 0x0108($t3)
.L8030889C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x42200000
	mtc1    $at, $f16
	lwc1    $f10, 0x0108($t4)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0108($t4)
.L803088B8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x0104($t5)
	lwc1    $f6, 0x0108($t5)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0104($t5)
.L803088D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001E
	bnez    $at, .L80308A58
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x001E
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, .L8030890C
	nop
	li.u    $a0, 0x50744081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50744081
.L8030890C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	lwc1    $f10, 0x00F4($t0)
	c.eq.s  $f10, $f16
	nop
	bc1t    .L803089C4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80338BC4)
	lwc1    $f4, %lo(object_c_80338BC4)($at)
	lwc1    $f18, 0x00F4($t1)
	lui     $t2, %hi(object)
	mtc1    $0, $f10
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x00F4($t1)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x00F4($t2)
	c.le.s  $f8, $f10
	nop
	bc1f    .L803089BC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00F4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0188($t4)
	andi    $t6, $t5, 0xFF00
	bnez    $t6, .L803089BC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a2, 0x41A00000
	move    $a0, $t7
	jal     obj_lib_802A1B8C
	lw      $a1, 0x0198($t7)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_8029CE58
	li      $a1, 0x0001
.L803089BC:
	b       .L80308A58
	nop
.L803089C4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x447A0000
	mtc1    $at, $f4
	lwc1    $f18, 0x015C($t8)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L80308A58
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F4($t0)
	li      $at, 0xC3480000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x010C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00D8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f10
	lui     $t4, %hi(object)
	swc1    $f10, 0x0108($t3)
	lw      $t4, %lo(object)($t4)
	lwc1    $f16, 0x0108($t4)
	swc1    $f16, 0x0104($t4)
.L80308A58:
	b       .L80308A60
	nop
.L80308A60:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_c_80308A74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	jal     object_c_802FA39C
	li      $a1, 0x0007
	beqz    $v0, .L80308ABC
	nop
	li.u    $a0, 0x90444081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x90444081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t7, %hi(object)
	sw      $0, 0x00F8($t6)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F8($t7)
	b       .L80308AD8
	sw      $t8, 0x006C($t7)
.L80308ABC:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L80308AD8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
.L80308AD8:
	b       .L80308AE0
	nop
.L80308AE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80308AF0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0104($t6)
	lwc1    $f6, 0x0108($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0104($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f16
	lwc1    $f10, 0x0104($t7)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80308B50
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43160000
	mtc1    $at, $f4
	lwc1    $f18, 0x0108($t8)
	add.s   $f6, $f18, $f4
	b       .L80308B6C
	swc1    $f6, 0x0108($t8)
.L80308B50:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lwc1    $f8, 0x0108($t9)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0108($t9)
.L80308B6C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC3480000
	li      $a2, 0x40800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x010C
	beqz    $v0, .L80308BA0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
.L80308BA0:
	b       .L80308BA8
	nop
.L80308BA8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80308BB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	beqz    $t7, .L80308CC8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0D48
	jal     obj_lib_8029E5EC
	lw      $a0, 0x01AC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t2, %hi(object)
	lw      $t0, 0x0100($t9)
	addiu   $t1, $t0, -0x0001
	sw      $t1, 0x0100($t9)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	bnez    $t3, .L80308CC0
	nop
	li.u    $a0, 0x504C0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x504C0081
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0110($t4)
	slti    $at, $t5, 0x02BD
	bnez    $at, .L80308C84
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lw      $t7, 0x01AC($t6)
	addu    $t8, $t7, $at
	sw      $t8, 0x01AC($t6)
	li      $at, 0x41C80000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t1, 0x001E
	sw      $t1, 0x0100($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	b       .L80308CC0
	sw      $0, 0x0110($t2)
.L80308C84:
	li      $at, 0x41200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	li      $at, 0x42480000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00EC($t5)
.L80308CC0:
	b       .L80308D54
	nop
.L80308CC8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t6, $t8, 0x0003
	beqz    $t6, .L80308D54
	nop
	li.u    $a0, 0x502A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502A0081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0110($t0)
	beqz    $t1, .L80308D20
	nop
	jal     obj_lib_802A1634
	nop
	trunc.w.s $f10, $f0
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mfc1    $t2, $f10
	b       .L80308D30
	sw      $t2, 0x0110($t3)
.L80308D20:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x02BC
	sw      $t4, 0x0110($t5)
.L80308D30:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t7)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t8, 0x000F
	sw      $t8, 0x0100($t6)
.L80308D54:
	b       .L80308D5C
	nop
.L80308D5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80308D6C
object_c_80308D6C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     obj_lib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0008
	beqz    $at, .L80308E30
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338BC8)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338BC8)($at)
	jr      $t7
	nop
.globl L80308DB0
L80308DB0:
	jal     object_c_80308110
	nop
	b       .L80308E30
	nop
.globl L80308DC0
L80308DC0:
	jal     object_c_80308228
	nop
	b       .L80308E30
	nop
.globl L80308DD0
L80308DD0:
	jal     object_c_803082EC
	nop
	b       .L80308E30
	nop
.globl L80308DE0
L80308DE0:
	jal     object_c_80308454
	nop
	b       .L80308E30
	nop
.globl L80308DF0
L80308DF0:
	jal     object_c_80308A74
	nop
	b       .L80308E30
	nop
.globl L80308E00
L80308E00:
	jal     object_c_80308AF0
	nop
	b       .L80308E30
	nop
.globl L80308E10
L80308E10:
	jal     object_c_80308734
	nop
	b       .L80308E30
	nop
.globl L80308E20
L80308E20:
	jal     object_c_80308BB8
	nop
	b       .L80308E30
	nop
.L80308E30:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x0104($t8)
	trunc.w.s $f6, $f4
	mfc1    $t0, $f6
	nop
	sw      $t0, 0x00D8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00DA($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	nop
	mul.s   $f12, $f8, $f10
	jal     obj_lib_802A3634
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lwc1    $f18, 0x00F4($t5)
	li      $at, 0x42200000
	mtc1    $at, $f6
	sub.s   $f4, $f16, $f18
	lwc1    $f10, 0x010C($t5)
	mov.s   $f20, $f0
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f20
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x00DC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t6)
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a0, object_c_80332B00
	la.l    $a0, object_c_80332B00
	jal     object_c_802FB938
	lw      $a1, 0x014C($t7)
	b       .L80308EF4
	nop
.L80308EF4:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80308F08:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2644
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x006C($t7)
	bne     $t8, $t6, .L80308F7C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	li      $at, 0x433E0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0138($t1)
	li      $at, 0xC2180000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	lui     $t3, %hi(object)
	swc1    $f6, 0x0140($t2)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x0140($t3)
	swc1    $f8, 0x013C($t3)
.L80308F7C:
	b       .L80308F84
	nop
.L80308F84:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80308F94:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x006C($t7)
	bnez    $t8, .L803090A8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0004
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, .L8030908C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x015C($t2)
	swc1    $f4, 0x0004($sp)
	li      $at, 0x44480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0004($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80309008
	nop
	li      $at, 0x44480000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0004($sp)
.L80309008:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x40800000
	mtc1    $at, $f18
	lw      $t4, 0x0068($t3)
	lwc1    $f16, 0x0004($sp)
	lw      $t5, 0x00C8($t4)
	mul.s   $f4, $f16, $f18
	addiu   $t6, $t5, 0x0FA0
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	sub.s   $f10, $f8, $f4
	trunc.w.s $f16, $f10
	mfc1    $t8, $f16
	nop
	sw      $t8, 0x00C8($t3)
	li      $at, 0x42200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t9)
	lui     $at, %hi(object_c_80338BE8)
	lwc1    $f8, %lo(object_c_80338BE8)($at)
	lwc1    $f6, 0x0004($sp)
	li      $at, 0xC1A00000
	mtc1    $at, $f10
	mul.s   $f4, $f6, $f8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x00B0($t0)
.L8030908C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00EC($t4)
.L803090A8:
	b       .L803090B0
	nop
.L803090B0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_803090B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	jal     obj_lib_802A2320
	nop
	la.u    $a0, object_c_80332B24
	la.l    $a0, object_c_80332B24
	jal     object_c_802FB938
	li      $a1, -0x0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0001
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, .L80309100
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x000B
	beqz    $t9, .L80309134
	nop
.L80309100:
	li      $t0, 0x0003
	sw      $t0, 0x0010($sp)
	li      $a0, 0x0006
	move    $a1, $0
	li      $a2, 0x0005
	jal     object_c_80307FB8
	li      $a3, 0x000A
	li.u    $a0, 0x303C0081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x303C0081
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L80309134:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L80309144
	nop
.L80309144:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80309154
object_c_80309154:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L80309194
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L803091A4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L803091B4
	nop
	b       .L803091C4
	nop
.L80309194:
	jal     object_c_80308F08
	nop
	b       .L803091C4
	nop
.L803091A4:
	jal     object_c_80308F94
	nop
	b       .L803091C4
	nop
.L803091B4:
	jal     object_c_803090B8
	nop
	b       .L803091C4
	nop
.L803091C4:
	b       .L803091CC
	nop
.L803091CC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803091E0
object_c_803091E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	andi    $t0, $t9, 0x0380
	sra     $t1, $t0, 7
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	lui     $a0, %hi(object_c_80332B34)
	sll     $t3, $t2, 2
	addu    $a0, $a0, $t3
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332B34)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0218($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lw      $t6, 0x0188($t5)
	sra     $t7, $t6, 16
	andi    $t8, $t7, 0xFFFF
	andi    $t9, $t8, 0x003F
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00F8($t5)
	lw      $t0, 0x001C($sp)
	slti    $at, $t0, 0x0005
	bnez    $at, .L8030927C
	nop
	slti    $at, $t0, 0x0007
	bnez    $at, .L803092D4
	nop
.L8030927C:
	li      $at, 0x41700000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0100($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0188($t2)
	sra     $t4, $t3, 16
	andi    $t6, $t4, 0xFFFF
	andi    $t7, $t6, 0x0040
	beqz    $t7, .L803092CC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x8000
	lw      $t9, 0x00C8($t8)
	addu    $t5, $t9, $at
	sw      $t5, 0x00C8($t8)
.L803092CC:
	b       .L8030933C
	nop
.L803092D4:
	li      $at, 0x41200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0100($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0188($t1)
	sra     $t3, $t2, 16
	andi    $t4, $t3, 0xFFFF
	andi    $t6, $t4, 0x0040
	beqz    $t6, .L80309324
	nop
	li      $at, 0xBF800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	b       .L8030933C
	swc1    $f4, 0x00F4($t7)
.L80309324:
	li      $at, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F4($t9)
.L8030933C:
	b       .L80309344
	nop
.L80309344:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80309354
object_c_80309354:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x000B
	bnez    $at, .L803093D8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00FC($t8)
	lwc1    $f6, 0x0100($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a2, 0x0000
	lwc1    $f10, 0x00F8($t9)
	addiu   $a0, $t9, 0x00FC
	neg.s   $f16, $f10
	mfc1    $a1, $f16
	jal     object_c_802FA2BC
	nop
	beqz    $v0, .L803093D8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x0100($t0)
	neg.s   $f4, $f18
	swc1    $f4, 0x0100($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0154($t1)
.L803093D8:
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f8
	lwc1    $f6, 0x00F4($t2)
	c.eq.s  $f6, $f8
	nop
	bc1t    .L80309424
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00F4($t3)
	lwc1    $f16, 0x00FC($t3)
	lwc1    $f4, 0x0168($t3)
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	b       .L80309434
	swc1    $f6, 0x00A4($t3)
.L80309424:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     object_c_802F9820
	lwc1    $f12, 0x00FC($t4)
.L80309434:
	jal     object_c_802F9904
	li      $a0, 0x0001
	b       .L80309444
	nop
.L80309444:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80309454
object_c_80309454:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332B54)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sll     $t0, $t9, 2
	addu    $a0, $a0, $t0
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332B54)($a0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0218($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t7, %hi(object_c_80332B5C)
	lw      $t3, 0x0188($t2)
	sra     $t4, $t3, 24
	andi    $t5, $t4, 0x00FF
	sll     $t6, $t5, 1
	addu    $t7, $t7, $t6
	lh      $t7, %lo(object_c_80332B5C)($t7)
	sw      $t7, 0x0118($t2)
	b       .L803094C0
	nop
.L803094C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803094D0
object_c_803094D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	lw      $t8, 0x0118($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00D4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_803094F8
object_c_803094F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13001468
	jal     obj_lib_8029F95C
	la.l    $a0, o_13001468
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0068($t6)
	b       .L80309520
	nop
.L80309520:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80309530
object_c_80309530:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	beqz    $t7, .L803095C0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0002
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x014C($t9)
	beq     $t0, $at, .L80309574
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0100($t1)
.L80309574:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	beqz    $t3, .L803095AC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $t7, %hi(object_c_80332BDC)
	lw      $t5, 0x0144($t4)
	sll     $t6, $t5, 1
	addu    $t7, $t7, $t6
	lh      $t7, %lo(object_c_80332BDC)($t7)
	b       .L803095B8
	sw      $t7, 0x00F4($t4)
.L803095AC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F4($t8)
.L803095B8:
	b       .L80309600
	nop
.L803095C0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, .L80309600
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	xori    $t5, $t3, 0x0001
	sw      $t5, 0x00FC($t2)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0100($t7)
.L80309600:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t8, 0x00F4($t4)
	beqz    $t8, .L803096B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	slti    $at, $t0, 0x003C
	beqz    $at, .L80309640
	nop
	li.u    $a0, 0x8055F011
	jal     obj_sfx_802CA190
	li.l    $a0, 0x8055F011
	b       .L8030964C
	nop
.L80309640:
	li.u    $a0, 0x8054F011
	jal     obj_sfx_802CA190
	li.l    $a0, 0x8054F011
.L8030964C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t2, %hi(object)
	lw      $t3, 0x00F4($t1)
	addiu   $t5, $t3, -0x0001
	sw      $t5, 0x00F4($t1)
	lw      $t2, %lo(object)($t2)
	lw      $t6, 0x00F4($t2)
	bnez    $t6, .L80309680
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00FC($t7)
.L80309680:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t8, 0x00F8($t4)
	slti    $at, $t8, 0x0009
	beqz    $at, .L803096AC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	addiu   $t3, $t0, 0x0001
	sw      $t3, 0x00F8($t9)
.L803096AC:
	b       .L803096F8
	nop
.L803096B4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t6, %hi(object)
	lw      $t1, 0x00F8($t5)
	addiu   $t2, $t1, -0x0002
	sw      $t2, 0x00F8($t5)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bgez    $t7, .L803096F8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t8, 0x0001
	sw      $t8, 0x00FC($t0)
.L803096F8:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $a0, %hi(object_c_80332B64+0x00)
	lw      $t9, 0x0144($t3)
	lw      $t2, 0x00F8($t3)
	sll     $t1, $t9, 2
	addu    $t1, $t1, $t9
	sll     $t1, $t1, 3
	bgez    $t2, .L80309728
	sra     $t5, $t2, 1
	addiu   $at, $t2, 0x0001
	sra     $t5, $at, 1
.L80309728:
	sll     $t6, $t5, 3
	addu    $t7, $t1, $t6
	addu    $a0, $a0, $t7
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332B64+0x00)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0218($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $a0, %hi(object_c_80332B64+0x04)
	lw      $t0, 0x0144($t8)
	lw      $t3, 0x00F8($t8)
	sll     $t9, $t0, 2
	addu    $t9, $t9, $t0
	sll     $t9, $t9, 3
	bgez    $t3, .L80309778
	sra     $t2, $t3, 1
	addiu   $at, $t3, 0x0001
	sra     $t2, $at, 1
.L80309778:
	sll     $t5, $t2, 3
	addu    $t1, $t9, $t5
	addu    $a0, $a0, $t1
	jal     obj_lib_802A04C0
	lh      $a0, %lo(object_c_80332B64+0x04)($a0)
	b       .L80309794
	nop
.L80309794:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803097A4
object_c_803097A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	andi    $t0, $t9, 0x0300
	sra     $t1, $t0, 8
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	beqz    $t2, .L803097E8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       .L803097F8
	sw      $0, 0x010C($t3)
.L803097E8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x8000
	sw      $t4, 0x010C($t5)
.L803097F8:
	lw      $t6, 0x001C($sp)
	lui     $a0, %hi(object_c_80332BE4)
	sll     $t7, $t6, 2
	addu    $a0, $a0, $t7
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332BE4)($a0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x0218($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lw      $t0, 0x0188($t9)
	sra     $t1, $t0, 16
	andi    $t2, $t1, 0xFFFF
	andi    $t3, $t2, 0x007F
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00F4($t9)
	lw      $t4, 0x001C($sp)
	li      $at, 0x0002
	bne     $t4, $at, .L8030987C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x41400000
	mtc1    $at, $f18
	lwc1    $f16, 0x00F4($t5)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x00F4($t5)
.L8030987C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t0, $t8, 0xFFFF
	andi    $t1, $t0, 0x0080
	sw      $t1, 0x0108($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D4($t2)
	sw      $t3, 0x0104($t2)
	b       .L803098B0
	nop
.L803098B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_803098C0
object_c_803098C0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, .L803098FC
	nop
	li      $at, 0xC0C00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	b       .L80309914
	swc1    $f4, 0x00B0($t9)
.L803098FC:
	li      $at, 0x40C00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t0)
.L80309914:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	lwc1    $f8, 0x00FC($t1)
	c.eq.s  $f8, $f10
	nop
	bc1t    .L80309A6C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	beqz    $t3, .L80309960
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0100($t4)
	addiu   $t6, $t5, -0x0001
	b       .L80309A64
	sw      $t6, 0x0100($t4)
.L80309960:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x00F8($t7)
	lwc1    $f18, 0x00FC($t7)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0000
	addiu   $a0, $t8, 0x00F8
	jal     object_c_802FA2BC
	lw      $a2, 0x00F4($t8)
	bnez    $v0, .L803099D4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f8
	lwc1    $f6, 0x00FC($t9)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80309A64
	nop
	lui     $at, %hi(object_c_80338BEC)
	lwc1    $f16, %lo(object_c_80338BEC)($at)
	lwc1    $f10, 0x015C($t9)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80309A64
	nop
.L803099D4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0014
	sw      $t0, 0x0100($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	lwc1    $f18, 0x00B0($t2)
	c.lt.s  $f18, $f4
	nop
	bc1t    .L80309A20
	nop
	lwc1    $f6, 0x00FC($t2)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80309A38
	nop
.L80309A20:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00FC($t3)
	neg.s   $f16, $f10
	b       .L80309A4C
	swc1    $f16, 0x00FC($t3)
.L80309A38:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00FC($t5)
.L80309A4C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x00D4($t6)
	lw      $t7, 0x010C($t6)
	addu    $t8, $t4, $t7
	sw      $t8, 0x00D4($t6)
.L80309A64:
	b       .L80309AB4
	nop
.L80309A6C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80309AA4
	nop
	li      $at, 0x41200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t0)
.L80309AA4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0014
	sw      $t1, 0x0100($t2)
.L80309AB4:
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0108($t3)
	beqz    $t5, .L80309AEC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f10, 0x00F8($t4)
	lwc1    $f16, 0x0168($t4)
	add.s   $f18, $f10, $f16
	b       .L80309B44
	swc1    $f18, 0x00A4($t4)
.L80309AEC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00A4($t7)
	lwc1    $f6, 0x00B0($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t8)
	addiu   $a0, $t8, 0x00A4
	sub.s   $f18, $f10, $f16
	mfc1    $a2, $f10
	mfc1    $a1, $f18
	jal     object_c_802FA2BC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00F8($t6)
	jal     object_c_802F9820
	neg.s   $f12, $f12
.L80309B44:
	jal     object_c_802F9904
	li      $a0, 0x0001
	b       .L80309B54
	nop
.L80309B54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80309B64
object_c_80309B64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_c_80332BF0
	la.l    $a1, object_c_80332BF0
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, .L80309C08
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, .L80309BD0
	nop
	li.u    $a0, 0x3064C081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x3064C081
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x00F8($t8)
.L80309BD0:
	la.u    $t1, player_data
	la.l    $t1, player_data
	li      $at, 0x43480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t3, $f10
	nop
	addiu   $t4, $t3, 0x03E8
	b       .L80309C5C
	sw      $t4, 0x0118($t5)
.L80309C08:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t8, %hi(object)
	lw      $t9, 0x0118($t7)
	addiu   $t0, $t9, -0x0032
	sw      $t0, 0x0118($t7)
	lw      $t8, %lo(object)($t8)
	lw      $t1, 0x0118($t8)
	slti    $at, $t1, 0x0190
	beqz    $at, .L80309C5C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0190
	sw      $t2, 0x0118($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F4($t4)
.L80309C5C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t7, %hi(object)
	li      $at, 0x00010000
	lw      $t6, 0x00F4($t5)
	lw      $t9, 0x0118($t5)
	addu    $t0, $t6, $t9
	sw      $t0, 0x00F4($t5)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F4($t7)
	slt     $at, $t8, $at
	bnez    $at, .L80309CBC
	nop
	la.u    $t1, player_data
	la.l    $t1, player_data
	lbu     $t2, 0x00B3($t1)
	addiu   $t3, $t2, 0x0004
	sb      $t3, 0x00B3($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0xFFFF0000
	lw      $t6, 0x00F4($t4)
	addu    $t9, $t6, $at
	sw      $t9, 0x00F4($t4)
.L80309CBC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x00D4($t0)
	lw      $t7, 0x0118($t0)
	addu    $t8, $t5, $t7
	sw      $t8, 0x00D4($t0)
	b       .L80309CDC
	nop
.L80309CDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80309CEC
object_c_80309CEC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, .L80309D24
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L80309EBC
	nop
.L80309D24:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x00D4($t0)
	sw      $t1, 0x00C8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x00C4($t3)
	addiu   $t5, $t4, 0x4000
	sw      $t5, 0x00C4($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00C4($t7)
	sw      $t8, 0x00D0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t1, %hi(object)
	mtc1    $0, $f16
	lwc1    $f4, 0x00F4($t0)
	lwc1    $f6, 0x00B8($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t0)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00F4($t1)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80309DC4
	nop
	jal     obj_lib_802A31E0
	nop
	li      $at, 0xC0A00000
	mtc1    $at, $f12
	li      $at, 0x41900000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	b       .L80309EBC
	nop
.L80309DC4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00F4($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	move    $a0, $t3
	jal     obj_lib_8029F120
	lw      $a1, 0x0068($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0068($t4)
	lw      $t2, 0x00F4($t5)
	beqz    $t2, .L80309EA8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t7)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L80309EA0
	nop
	li      $at, 0x420C0000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t8)
	lui     $a0, %hi(object)
	la.u    $a2, o_13004BA8
	la.l    $a2, o_13004BA8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0054
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L80309E84
	nop
	li      $at, 0xC2C80000
	mtc1    $at, $f10
	lw      $t0, 0x001C($sp)
	swc1    $f10, 0x00B8($t0)
	lui     $at, %hi(object_c_80338BF0)
	lwc1    $f16, %lo(object_c_80338BF0)($at)
	lw      $t1, 0x001C($sp)
	swc1    $f16, 0x0030($t1)
.L80309E84:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a0, 0x0002
	lw      $a1, 0x00A0($t9)
	lw      $a2, 0x00A4($t9)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t9)
.L80309EA0:
	b       .L80309EBC
	nop
.L80309EA8:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
.L80309EBC:
	b       .L80309EC4
	nop
.L80309EC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80309ED4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80309F50
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13004F28
	la.l    $a2, o_13004F28
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x007F
	jal     obj_lib_8029F694
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x1C00
	lui     $t1, %hi(object)
	sw      $t9, 0x00FC($t0)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00FC($t1)
	sw      $t2, 0x00C4($t1)
.L80309F50:
	b       .L80309F58
	nop
.L80309F58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80309F68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338BF4)
	lwc1    $f6, %lo(object_c_80338BF4)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80309FA8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	b       .L8030A0D0
	sw      $t7, 0x014C($t8)
.L80309FA8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	bnez    $t0, .L8030A0D0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	beqz    $t2, .L80309FE8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	addiu   $t5, $t4, -0x0001
	b       .L8030A0D0
	sw      $t5, 0x00F4($t3)
.L80309FE8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0080
	jal     object_c_802FA660
	lw      $a0, 0x00FC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0100
	jal     object_c_802FA748
	lw      $a0, 0x0100($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0102($t8)
	lh      $t0, 0x00D6($t8)
	bne     $t9, $t0, .L8030A0D0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	beqz    $t2, .L8030A054
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	addiu   $t3, $t5, -0x0001
	b       .L8030A0D0
	sw      $t3, 0x00F8($t4)
.L8030A054:
	li.u    $a0, 0x50254081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50254081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0046
	sw      $t6, 0x00F4($t7)
	jal     rand
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	andi    $t8, $v0, 0x0003
	sll     $t9, $t8, 10
	addiu   $t0, $t9, 0x1000
	sw      $t0, 0x00FC($t1)
	jal     rand
	nop
	li      $at, 0x0005
	div     $0, $v0, $at
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mfhi    $t2
	sll     $t5, $t2, 12
	lw      $t4, 0x00C8($t3)
	addu    $t6, $t5, $t4
	addiu   $t7, $t6, -0x2000
	sw      $t7, 0x0100($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x003C
	sw      $t8, 0x00F8($t9)
.L8030A0D0:
	b       .L8030A0D8
	nop
.L8030A0D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030A0E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F6BC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	b       .L8030A10C
	nop
.L8030A10C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030A11C
object_c_8030A11C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x435C0000
	mtc1    $at, $f12
	li      $at, 0x43960000
	mtc1    $at, $f14
	jal     obj_lib_802A390C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L8030A174
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030A184
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8030A194
	nop
	b       .L8030A1A4
	nop
.L8030A174:
	jal     object_c_80309ED4
	nop
	b       .L8030A1A4
	nop
.L8030A184:
	jal     object_c_80309F68
	nop
	b       .L8030A1A4
	nop
.L8030A194:
	jal     object_c_8030A0E8
	nop
	b       .L8030A1A4
	nop
.L8030A1A4:
	b       .L8030A1AC
	nop
.L8030A1AC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030A1C0
object_c_8030A1C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	beq     $t7, $at, .L8030A238
	nop
	la.u    $a0, 0x0700D20C
	jal     segment_to_virtual
	la.l    $a0, 0x0700D20C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	bnez    $t0, .L8030A220
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, -0x1DB0
	b       .L8030A230
	sw      $t1, 0x00D0($t2)
.L8030A220:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
.L8030A230:
	b       .L8030A280
	nop
.L8030A238:
	la.u    $a0, 0x0700D240
	jal     segment_to_virtual
	la.l    $a0, 0x0700D240
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00FC($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x00F0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C8($t0)
	sh      $t1, 0x01B0($t0)
.L8030A280:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	sw      $t3, 0x0100($t2)
	b       .L8030A298
	nop
.L8030A298:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030A2A8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338BF8)
	lwc1    $f6, %lo(object_c_80338BF8)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8030A34C
	nop
	lw      $t7, 0x0150($t6)
	beqz    $t7, .L8030A34C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00FC($t0)
	lh      $t2, 0x0002($t1)
	mtc1    $t2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00A0($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00FC($t3)
	lh      $t5, 0x0004($t4)
	mtc1    $t5, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00A4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	lh      $t8, 0x0006($t7)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	b       .L8030A380
	swc1    $f6, 0x00A8($t6)
.L8030A34C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x442F0000
	mtc1    $at, $f10
	lwc1    $f8, 0x01AC($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8030A380
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0150($t2)
.L8030A380:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030A390:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0178($t6)
	bne     $t7, $at, .L8030A3E8
	nop
	jal     obj_lib_802A0008
	li      $a0, 0x001E
	beqz    $v0, .L8030A3E0
	nop
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
.L8030A3E0:
	b       .L8030A43C
	nop
.L8030A3E8:
	jal     obj_lib_8029FFA4
	nop
	beqz    $v0, .L8030A43C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x0028($sp)
	lw      $t0, 0x014C($t9)
	beq     $t0, $t1, .L8030A434
	nop
	lw      $t2, 0x0104($t9)
	andi    $t3, $t2, 0x00FF
	slti    $at, $t3, 0x0007
	bnez    $at, .L8030A434
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
	b       .L8030A43C
	nop
.L8030A434:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0002
.L8030A43C:
	jal     obj_lib_802A0008
	li      $a0, 0x0006
	beqz    $v0, .L8030A458
	nop
	li.u    $a0, 0x30090081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30090081
.L8030A458:
	jal     obj_lib_802A2C5C
	move    $a0, $0
	li      $at, -0x0001
	bne     $v0, $at, .L8030A47C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0028($sp)
	sw      $t4, 0x014C($t5)
.L8030A47C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a2, 0x0032
	lw      $a0, 0x00C4($t6)
	jal     obj_lib_8029E530
	lw      $a1, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	move    $s0, $v0
	lui     $t8, %hi(object)
	sw      $s0, 0x00D0($t7)
	lw      $t8, %lo(object)($t8)
	sw      $s0, 0x00C4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0078
	jal     obj_lib_8029E5EC
	lw      $a0, 0x010C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a1, 0x2000
	li      $a2, 0x0064
	jal     object_c_802FA900
	lw      $a0, 0x010C($t1)
	li      $at, 0x41200000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338BFC)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338BFC)($at)
	jal     obj_lib_802A31E0
	nop
	b       .L8030A500
	nop
.L8030A500:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030A514:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	sdc1    $f22, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	sw      $t7, 0x0100($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0104($t8)
	jal     obj_lib_802A184C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t0, %hi(object)
	sw      $0, 0x00D0($t9)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D0($t0)
	sw      $t1, 0x00C4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t3, %hi(object)
	lh      $s0, 0x01B0($t2)
	sw      $s0, 0x00D4($t2)
	lw      $t3, %lo(object)($t3)
	sw      $s0, 0x00C8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00D8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f4
	lui     $t7, %hi(object)
	lui     $t6, %hi(object)
	swc1    $f4, 0x00F8($t5)
	lw      $t7, %lo(object)($t7)
	lui     $t8, %hi(object)
	lwc1    $f22, 0x00F8($t7)
	swc1    $f22, 0x00B4($t7)
	lw      $t6, %lo(object)($t6)
	mov.s   $f20, $f22
	swc1    $f20, 0x00AC($t6)
	lw      $t8, %lo(object)($t8)
	swc1    $f20, 0x00B8($t8)
	li      $at, 0xC4480000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t0)
	b       .L8030A5FC
	nop
.L8030A5FC:
	lw      $ra, 0x002C($sp)
	ldc1    $f20, 0x0018($sp)
	ldc1    $f22, 0x0020($sp)
	lw      $s0, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

object_c_8030A614:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00F4($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030A69C
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0006
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41200000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F4($t7)
	lui     $t8, %hi(object)
	mtc1    $0, $f4
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00F4($t7)
	lw      $t8, %lo(object)($t8)
	lwc1    $f18, 0x00F4($t8)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L8030A694
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00F4($t9)
.L8030A694:
	b       .L8030A8BC
	nop
.L8030A69C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f10
	lwc1    $f8, 0x00F4($t0)
	c.eq.s  $f8, $f10
	nop
	bc1f    .L8030A748
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0006
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x003D
	bnez    $at, .L8030A72C
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f18
	lwc1    $f16, 0x01AC($t1)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8030A72C
	nop
	li.u    $a0, 0x524A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x524A0081
	li      $at, 0x41F00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	lui     $t4, %hi(object)
	swc1    $f4, 0x0110($t3)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0110($t4)
	b       .L8030A740
	swc1    $f6, 0x00F8($t4)
.L8030A72C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0110($t5)
.L8030A740:
	b       .L8030A840
	nop
.L8030A748:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f16
	lwc1    $f10, 0x0110($t6)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8030A794
	nop
	jal     object_c_802FA360
	li      $a0, 0x0005
	beqz    $v0, .L8030A78C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0110($t7)
.L8030A78C:
	b       .L8030A840
	nop
.L8030A794:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	lwc1    $f4, 0x0110($t8)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L8030A840
	nop
	jal     obj_lib_8029F4B4
	move    $a0, $0
	jal     obj_lib_8029FFA4
	nop
	beqz    $v0, .L8030A840
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x01AC($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8030A820
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t0, 0x0004
	sw      $t0, 0x014C($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x00F8($t1)
	swc1    $f16, 0x00B8($t1)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	b       .L8030A840
	nop
.L8030A820:
	li      $at, 0xC2480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0110($t3)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0004
.L8030A840:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a2, 0x40800000
	addiu   $a0, $t4, 0x00F8
	jal     object_c_802FA544
	lw      $a1, 0x0110($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t6, %hi(object)
	mtc1    $0, $f16
	lwc1    $f4, 0x00F4($t5)
	lwc1    $f6, 0x00F8($t5)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t5)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, 0x00F4($t6)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8030A8BC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f18
	lui     $t8, %hi(object)
	swc1    $f18, 0x00F8($t7)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00F8($t8)
	swc1    $f4, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0154($t9)
.L8030A8BC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00CA($t0)
	lwc1    $f8, 0x00F4($t0)
	lwc1    $f16, 0x0164($t0)
	sra     $t1, $t2, 4
	sll     $t3, $t1, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A0($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x00CA($t4)
	lwc1    $f6, 0x00F4($t4)
	lwc1    $f10, 0x016C($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A8($t4)
	b       .L8030A92C
	nop
.L8030A92C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030A93C
object_c_8030A93C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01B2($t6)
	bnez    $t7, .L8030A9F4
	nop
	lui     $at, %hi(object_c_80338C00)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, %lo(object_c_80338C00)($at)
	swc1    $f4, 0x01AC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80338C04)
	lwc1    $f8, %lo(object_c_80338C04)($at)
	lwc1    $f6, 0x015C($t9)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8030A9EC
	nop
	li      $t0, -0x0004
	sw      $t0, 0x002C($sp)
.L8030A998:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $t2, o_13004F78
	la.l    $t2, o_13004F78
	sw      $t2, 0x0018($sp)
	lw      $a0, 0x002C($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $0, 0x0014($sp)
	jal     obj_lib_8029EF64
	sw      $t1, 0x0010($sp)
	lw      $t3, 0x002C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0004
	bnez    $at, .L8030A998
	sw      $t4, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sh      $t5, 0x01B2($t6)
.L8030A9EC:
	b       .L8030AA24
	nop
.L8030A9F4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x457A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t7)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8030AA24
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x01B2($t8)
.L8030AA24:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	sltiu   $at, $t0, 0x0005
	beqz    $at, .L8030AAA4
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(object_c_80338C08)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_c_80338C08)($at)
	jr      $t0
	nop
.globl L8030AA54
L8030AA54:
	jal     object_c_8030A2A8
	nop
	b       .L8030AAA4
	nop
.globl L8030AA64
L8030AA64:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     object_c_8030A390
	lw      $a0, 0x014C($t1)
	b       .L8030AAA4
	nop
.globl L8030AA7C
L8030AA7C:
	jal     object_c_8030A514
	nop
.globl L8030AA84
L8030AA84:
	jal     object_c_8030A614
	nop
	b       .L8030AAA4
	nop
.globl L8030AA94
L8030AA94:
	jal     object_c_8030A390
	li      $a0, 0x0002
	b       .L8030AAA4
	nop
.L8030AAA4:
	b       .L8030AAAC
	nop
.L8030AAAC:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_8030AABC
object_c_8030AABC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x01B2($t7)
	bnez    $t8, .L8030AAF0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L8030ACEC
	nop
.L8030AAF0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lw      $t0, 0x0144($t9)
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x001C($sp)
	lw      $t2, 0x0068($t1)
	lhu     $t3, 0x00D2($t2)
	lwc1    $f10, 0x00A4($t2)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f16, %lo(math_sin)($at)
	lui     $at, %hi(object_c_80338C1C)
	lwc1    $f6, %lo(object_c_80338C1C)($at)
	mul.s   $f4, $f16, $f18
	nop
	mul.s   $f8, $f4, $f6
	sub.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x001C($sp)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00D0($t7)
	bgez    $t8, .L8030AB84
	sra     $t9, $t8, 1
	addiu   $at, $t8, 0x0001
	sra     $t9, $at, 1
.L8030AB84:
	andi    $t0, $t9, 0xFFFF
	sra     $t3, $t0, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t4
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x001C($sp)
	lw      $t2, 0x0068($t5)
	lhu     $t1, 0x00D6($t2)
	lwc1    $f18, 0x00A0($t2)
	sra     $t6, $t1, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f16, $f10, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x001C($sp)
	lw      $t9, 0x0068($t8)
	lhu     $t0, 0x00D6($t9)
	lwc1    $f16, 0x00A8($t9)
	sra     $t3, $t0, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f8, $f6, $f10
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x00A8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0004
	lw      $t6, 0x0144($t1)
	bne     $t6, $at, .L8030ACA8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t2, 0x0068($t7)
	lw      $t5, 0x00F0($t2)
	beqz    $t5, .L8030ACA0
	nop
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030ACA0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0068($t0)
	lw      $t4, 0x0188($t3)
	sw      $t4, 0x0188($t0)
	lui     $at, %hi(object_c_80338C20)
	lwc1    $f12, %lo(object_c_80338C20)($at)
	lui     $at, %hi(object_c_80338C24)
	li.u    $a2, 0x450B6000
	li.l    $a2, 0x450B6000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(object_c_80338C24)($at)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0068($t9)
	sw      $0, 0x00F0($t8)
.L8030ACA0:
	b       .L8030ACEC
	nop
.L8030ACA8:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_80332C00
	la.l    $a0, object_c_80332C00
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t2, 0x0144($t6)
	bne     $t2, $at, .L8030ACEC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x015C($t5)
	lw      $t7, 0x0068($t5)
	swc1    $f10, 0x01AC($t7)
.L8030ACEC:
	b       .L8030ACF4
	nop
.L8030ACF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030AD04:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01B0($t6)
	sh      $t7, 0x002E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x01B2($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43B90000
	mtc1    $at, $f6
	nop
	mul.s   $f12, $f4, $f6
	jal     obj_lib_802A3634
	nop
	mov.s   $f20, $f0
	trunc.w.s $f8, $f20
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mfc1    $t5, $f8
	lh      $t3, 0x01B0($t2)
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	subu    $t8, $t3, $t7
	sh      $t8, 0x01B0($t2)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lhu     $t3, 0x002E($sp)
	la.u    $t5, math_cos
	lhu     $t0, 0x01B0($t9)
	la.l    $t5, math_cos
	sra     $t7, $t3, 4
	sra     $t1, $t0, 4
	sll     $t4, $t1, 2
	sll     $t8, $t7, 2
	addu    $t2, $t8, $t5
	addu    $t6, $t4, $t5
	lwc1    $f10, 0x0000($t6)
	lwc1    $f16, 0x0000($t2)
	li      $at, 0x43DC0000
	mtc1    $at, $f4
	sub.s   $f18, $f10, $f16
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0028($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lhu     $t7, 0x002E($sp)
	la.u    $t6, math_sin
	lhu     $t0, 0x01B0($t9)
	la.l    $t6, math_sin
	sra     $t8, $t7, 4
	sra     $t1, $t0, 4
	sll     $t4, $t1, 2
	sll     $t5, $t8, 2
	addu    $t2, $t5, $t6
	addu    $t3, $t4, $t6
	lwc1    $f8, 0x0000($t3)
	lwc1    $f10, 0x0000($t2)
	li      $at, 0x43DC0000
	mtc1    $at, $f18
	sub.s   $f16, $f8, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0028($sp)
	lhu     $t0, 0x00CA($t9)
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	sra     $t1, $t0, 4
	sll     $t4, $t1, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x00A0($t3)
	mul.s   $f10, $f6, $f8
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f18, 0x00A4($t3)
	add.s   $f12, $f10, $f16
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x00A8($t3)
	sub.s   $f14, $f18, $f4
	add.s   $f18, $f10, $f16
	mfc1    $a2, $f18
	jal     mario_pos_set
	nop
	b       .L8030AE88
	nop
.L8030AE88:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_8030AE9C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x001E($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, -0x26F4
	sh      $t8, 0x01B0($t9)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0100($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030AF54
	nop
	lh      $t1, 0x01AC($t0)
	beqz    $t1, .L8030AF54
	nop
	li.u    $a0, 0x50376081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50376081
	la.u    $a0, 0x0600FBB8
	jal     segment_to_virtual
	la.l    $a0, 0x0600FBB8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x0218($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	b       .L8030B088
	sw      $0, 0x0104($t6)
.L8030AF54:
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, .L8030AF8C
	nop
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	lw      $t1, 0x00D4($t0)
	sh      $t1, 0x001C($sp)
	li      $t2, 0x000A
	b       .L8030B008
	sh      $t2, 0x001A($sp)
.L8030AF8C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x44FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x00F4($t3)
	mtc1    $at, $f12
	jal     atan2
	sub.s   $f14, $f10, $f16
	li      $t4, 0x4000
	subu    $t5, $t4, $v0
	sh      $t5, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	lh      $t8, 0x01AE($t6)
	subu    $t9, $t7, $t8
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	bgez    $t1, .L8030AFE8
	nop
	lh      $t2, 0x0018($sp)
	subu    $t3, $0, $t2
	sh      $t3, 0x0018($sp)
.L8030AFE8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t6, 0x0018($sp)
	lh      $t5, 0x01AE($t4)
	addu    $t7, $t5, $t6
	sh      $t7, 0x001C($sp)
	li      $t8, 0x0005
	sh      $t8, 0x001A($sp)
.L8030B008:
	lh      $t9, 0x001A($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f14
	mtc1    $t9, $f18
	jal     object_c_802FA5D0
	cvt.s.w $f12, $f18
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x001C($sp)
	li      $at, 0x0032
	lw      $t2, 0x00C8($t0)
	li      $a2, 0x0005
	lw      $a0, 0x0104($t0)
	subu    $a1, $t1, $t2
	sll     $t3, $a1, 16
	move    $a1, $t3
	sra     $t4, $a1, 16
	move    $a1, $t4
	div     $0, $a1, $at
	mflo    $t5
	move    $a1, $t5
	jal     obj_lib_8029E530
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0104($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00C8($t7)
	lw      $t9, 0x0104($t7)
	addu    $t0, $t8, $t9
	sw      $t0, 0x00C8($t7)
.L8030B088:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t3, 0x001E($sp)
	lw      $t2, 0x00C8($t1)
	subu    $t4, $t2, $t3
	sw      $t4, 0x0118($t1)
	b       .L8030B0A8
	nop
.L8030B0A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030B0B8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $a0, 0x010C($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x01B2($t9)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030B0F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0002
	jal     object_c_802FA39C
	li      $a1, 0x0023
	beqz    $v0, .L8030B1F4
	nop
	jal     obj_lib_8029FE6C
	nop
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, .L8030B1CC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0xC1880000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F8($t9)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L8030B194
	nop
	li      $at, 0x44430000
	mtc1    $at, $f10
	lwc1    $f8, 0x0100($t9)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8030B194
	nop
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0001
	bne     $v0, $at, .L8030B194
	nop
	jal     object_c_8030B0B8
	li      $a0, 0x0001
	b       .L8030B1C4
	nop
.L8030B194:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0100($t0)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L8030B1C4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0154($t1)
.L8030B1C4:
	b       .L8030B1EC
	nop
.L8030B1CC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0097
	bnez    $at, .L8030B1EC
	nop
	jal     object_c_8030B0B8
	move    $a0, $0
.L8030B1EC:
	b       .L8030B208
	nop
.L8030B1F4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x01B0($t4)
	addiu   $t6, $t5, 0x0115
	sh      $t6, 0x01B0($t4)
.L8030B208:
	b       .L8030B210
	nop
.L8030B210:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030B220:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, 0x0600F644
	jal     segment_to_virtual
	la.l    $a0, 0x0600F644
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0218($t6)
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L8030B260
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       .L8030B2DC
	sw      $0, 0x014C($t7)
.L8030B260:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x010C($t8)
	beqz    $t9, .L8030B2DC
	nop
	lh      $t0, 0x0040($t8)
	slti    $at, $t0, 0x004A
	beqz    $at, .L8030B2DC
	nop
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0002
	bne     $v0, $at, .L8030B2D4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01B2($t1)
	addiu   $t3, $t2, 0x01CC
	sh      $t3, 0x01B2($t1)
	jal     obj_lib_802A0008
	li      $a0, 0x0049
	beqz    $v0, .L8030B2C4
	nop
	jal     pl_demo_80257640
	move    $a0, $0
.L8030B2C4:
	jal     object_c_8030AD04
	nop
	b       .L8030B2DC
	nop
.L8030B2D4:
	jal     obj_lib_8029FE6C
	nop
.L8030B2DC:
	b       .L8030B2E4
	nop
.L8030B2E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030B2F4
object_c_8030B2F4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L8030B63C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lw      $t0, 0x0160($t9)
	lw      $t1, 0x00C8($t9)
	lwc1    $f6, 0x015C($t9)
	subu    $t2, $t0, $t1
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0100($t9)
	jal     object_c_802F9904
	move    $a0, $0
	jal     obj_lib_802A2644
	nop
	jal     obj_lib_802A2748
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $v0, 0x01AE($t6)
	jal     obj_lib_802A1634
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t9, math_cos
	la.l    $t9, math_cos
	lw      $t0, 0x00C8($t8)
	lh      $t1, 0x01AE($t8)
	lhu     $t7, 0x01B0($t8)
	li      $at, 0x43DC0000
	subu    $t2, $t0, $t1
	sra     $t0, $t7, 4
	sll     $t1, $t0, 2
	andi    $t3, $t2, 0xFFFF
	addu    $t2, $t1, $t9
	lwc1    $f18, 0x0000($t2)
	mtc1    $at, $f16
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	mul.s   $f4, $f16, $f18
	addu    $t6, $t5, $t9
	lwc1    $f10, 0x0000($t6)
	mul.s   $f6, $f10, $f4
	swc1    $f6, 0x0034($sp)
	lui     $at, %hi(object_c_80338C28)
	lwc1    $f8, %lo(object_c_80338C28)($at)
	lwc1    $f16, 0x0034($sp)
	lui     $at, %hi(object_c_80338C2C)
	lwc1    $f10, %lo(object_c_80338C2C)($at)
	add.s   $f18, $f8, $f16
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	add.s   $f4, $f10, $f16
	mfc1    $a1, $f18
	addiu   $a0, $a0, 0x00F4
	mfc1    $a2, $f4
	jal     object_c_802FA2BC
	nop
	beqz    $v0, .L8030B488
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t4, 0x01AE($t3)
	lwc1    $f8, 0x00F4($t3)
	lwc1    $f10, 0x0164($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f18, $f6, $f8
	sub.s   $f16, $f10, $f18
	swc1    $f16, 0x00A0($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x01AE($t8)
	lwc1    $f6, 0x00F4($t8)
	lwc1    $f10, 0x016C($t8)
	sra     $t0, $t7, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	sub.s   $f18, $f10, $f8
	swc1    $f18, 0x00A8($t8)
.L8030B488:
	jal     obj_lib_802A3754
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $v0, 0x01AC($t9)
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0214($t2)
	bne     $t4, $t5, .L8030B534
	nop
	li      $at, 0xC1880000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00F8($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    .L8030B52C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t7, 0x01AC($t3)
	beqz    $t7, .L8030B514
	nop
	li      $at, 0xC1700000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	b       .L8030B52C
	swc1    $f10, 0x00FC($t0)
.L8030B514:
	li      $at, 0xC0C00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t1)
.L8030B52C:
	b       .L8030B540
	nop
.L8030B534:
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0028($sp)
.L8030B540:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00F8($t8)
	lwc1    $f4, 0x00FC($t8)
	add.s   $f6, $f16, $f4
	swc1    $f6, 0x00F8($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x40400000
	li      $a2, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00FC
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f8
	lwc1    $f10, 0x00FC($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8030B5B8
	nop
	lwc1    $f18, 0x00F8($t9)
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8030B5B8
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x0028($sp)
	swc1    $f4, 0x00F8($t2)
.L8030B5B8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00F8($t4)
	lwc1    $f10, 0x0168($t4)
	add.s   $f8, $f6, $f10
	swc1    $f8, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $s0, 0x014C($t5)
	beqz    $s0, .L8030B604
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030B614
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8030B624
	nop
	b       .L8030B634
	nop
.L8030B604:
	jal     object_c_8030AE9C
	nop
	b       .L8030B634
	nop
.L8030B614:
	jal     object_c_8030B0F0
	nop
	b       .L8030B634
	nop
.L8030B624:
	jal     object_c_8030B220
	nop
	b       .L8030B634
	nop
.L8030B634:
	jal     object_c_802F9904
	li      $a0, 0x0001
.L8030B63C:
	b       .L8030B644
	nop
.L8030B644:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_c_8030B658
object_c_8030B658:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13005024
	la.l    $a0, o_13005024
	jal     obj_lib_8029F9EC
	addiu   $a1, $sp, 0x0018
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L8030B6B0
	nop
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030B6B0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x001C($sp)
	b       .L8030B6C0
	sw      $t7, 0x0068($t8)
.L8030B6B0:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00F4($t0)
.L8030B6C0:
	b       .L8030B6C8
	nop
.L8030B6C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030B6D8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $s1, 0x0020($sp)
	sw      $s0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	beq     $t7, $t6, .L8030B894
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0104($t8)
	bnez    $t9, .L8030B858
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $t0
	jal     obj_lib_8029E27C
	lw      $a1, 0x0068($t0)
	li      $at, 0x437A0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    .L8030B850
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	move    $a0, $t1
	jal     obj_lib_8029E694
	lw      $a1, 0x0068($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sll     $s0, $v0, 16
	sra     $t2, $s0, 16
	lw      $t4, 0x00D4($t3)
	move    $s0, $t2
	subu    $t5, $s0, $t4
	addiu   $t7, $t5, 0x2000
	sh      $t7, 0x0036($sp)
	lh      $t6, 0x0036($sp)
	andi    $t8, $t6, 0x4000
	beqz    $t8, .L8030B7D0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t0, $t9, 0x00D8
	sw      $t0, 0x0100($t9)
	lh      $t1, 0x0036($sp)
	blez    $t1, .L8030B7B8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x4000
	b       .L8030B7C8
	sw      $t2, 0x0104($t3)
.L8030B7B8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, -0x4000
	sw      $t4, 0x0104($t5)
.L8030B7C8:
	b       .L8030B810
	nop
.L8030B7D0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	addiu   $t6, $t7, 0x00D0
	sw      $t6, 0x0100($t7)
	lh      $t8, 0x0036($sp)
	bgez    $t8, .L8030B800
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t0, 0x5000
	b       .L8030B810
	sw      $t0, 0x0104($t9)
.L8030B800:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, -0x4000
	sw      $t1, 0x0104($t2)
.L8030B810:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0104($t3)
	bgez    $t4, .L8030B83C
	nop
	lui     $at, %hi(object_c_80338C30)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, %lo(object_c_80338C30)($at)
	b       .L8030B850
	swc1    $f6, 0x00F8($t5)
.L8030B83C:
	lui     $at, %hi(object_c_80338C34)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, %lo(object_c_80338C34)($at)
	swc1    $f8, 0x00F8($t6)
.L8030B850:
	b       .L8030B88C
	nop
.L8030B858:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	li      $at, 0x40000000
	mtc1    $at, $f16
	lw      $a0, 0x0100($t7)
	lw      $a2, 0x0104($t7)
	li      $a3, 0x457A0000
	addiu   $a1, $t7, 0x00F8
	swc1    $f10, 0x0010($sp)
	jal     object_c_802FAC18
	swc1    $f16, 0x0014($sp)
.L8030B88C:
	b       .L8030BA34
	nop
.L8030B894:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F4($t8)
	beqz    $t0, .L8030B8F0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	lwc1    $f18, 0x015C($t9)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L8030B8E0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	addiu   $t3, $t2, -0x0001
	sw      $t3, 0x00F4($t1)
.L8030B8E0:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	b       .L8030BA34
	sw      $0, 0x0154($t4)
.L8030B8F0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, .L8030B9B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00D0($t8)
	bgez    $t0, .L8030B938
	nop
	li.u    $a0, 0x305F0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x305F0081
	li      $at, 0x40800000
	mtc1    $at, $f6
	b       .L8030B948
	swc1    $f6, 0x0030($sp)
.L8030B938:
	li      $at, 0xC0800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0030($sp)
.L8030B948:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f10, 0x0164($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0164($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f4, 0x016C($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x016C($t2)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f16, 0x0030($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f18, $f10, $f16
	lui     $t4, %hi(object)
	trunc.w.s $f4, $f18
	mfc1    $s1, $f4
	nop
	sw      $s1, 0x00D8($t1)
	lw      $t4, %lo(object)($t4)
	sw      $s1, 0x00D0($t4)
	b       .L8030B9D0
	nop
.L8030B9B4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t6, %hi(object)
	sw      $0, 0x00D8($t5)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	sw      $t7, 0x00D0($t6)
.L8030B9D0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0154($t8)
	slti    $at, $t0, 0x001F
	bnez    $at, .L8030BA34
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00F8($t3)
	li      $at, 0x43480000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0028
	sw      $t4, 0x00F4($t5)
.L8030BA34:
	li      $at, 0x42A00000
	mtc1    $at, $f12
	li      $at, 0x42F00000
	mtc1    $at, $f14
	jal     obj_lib_802A390C
	nop
	b       .L8030BA54
	nop
.L8030BA54:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x001C($sp)
	lw      $s1, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

object_c_8030BA68:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	jal     obj_lib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0046
	beqz    $at, .L8030BB58
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0032
	beqz    $at, .L8030BAC0
	nop
	li      $at, 0x40C00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	b       .L8030BAD4
	swc1    $f4, 0x00B0($t0)
.L8030BAC0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t1)
.L8030BAD4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00E4($t2)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x40000000
	mtc1    $at, $f16
	li      $a2, -0x0FA0
	li      $a3, 0x43480000
	swc1    $f10, 0x0010($sp)
	addiu   $a0, $t3, 0x00D0
	addiu   $a1, $t3, 0x00F8
	jal     object_c_802FAC18
	swc1    $f16, 0x0014($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f18
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	move    $a2, $0
	li      $a3, 0x0000
	swc1    $f18, 0x0010($sp)
	addiu   $a0, $t4, 0x00D8
	addiu   $a1, $t4, 0x00FC
	jal     object_c_802FAC18
	swc1    $f4, 0x0014($sp)
	b       .L8030BC58
	nop
.L8030BB58:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	beqz    $t6, .L8030BC38
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t0, %hi(object)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, -0x0001
	sw      $t9, 0x00F4($t7)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	bnez    $t1, .L8030BBE4
	nop
	li.u    $a0, 0x305D0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x305D0081
	li      $at, 0x42F00000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0160($t3)
	sw      $t4, 0x00C8($t3)
	li      $at, 0x42480000
	mtc1    $at, $f12
	jal     object_c_802FA1F8
	nop
	b       .L8030BC30
	nop
.L8030BBE4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	slti    $at, $t6, 0x0015
	bnez    $at, .L8030BC30
	nop
	lui     $t8, %hi(gfx_frame)
	lw      $t8, %lo(gfx_frame)($t8)
	andi    $t9, $t8, 0x0003
	bnez    $t9, .L8030BC1C
	nop
	li.u    $a0, 0x315C0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x315C0081
.L8030BC1C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x00D4($t7)
	addiu   $t1, $t0, 0x2710
	sw      $t1, 0x00D4($t7)
.L8030BC30:
	b       .L8030BC58
	nop
.L8030BC38:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x00EC($t2)
	andi    $t3, $t4, 0x0203
	beqz    $t3, .L8030BC58
	nop
	jal     object_c_802FB128
	nop
.L8030BC58:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $a0, object_c_80332C10
	la.l    $a0, object_c_80332C10
	jal     object_c_802FB938
	lw      $a1, 0x014C($t5)
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L8030BC80
	nop
.L8030BC80:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_8030BC90
object_c_8030BC90:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L8030BD10
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, .L8030BCDC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030BCEC
	nop
	b       .L8030BCFC
	nop
.L8030BCDC:
	jal     object_c_8030B6D8
	nop
	b       .L8030BCFC
	nop
.L8030BCEC:
	jal     object_c_8030BA68
	nop
	b       .L8030BCFC
	nop
.L8030BCFC:
	li      $at, 0x41F00000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     object_c_802F9E28
	nop
.L8030BD10:
	b       .L8030BD18
	nop
.L8030BD18:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030BD2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030BDBC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0015
	bnez    $at, .L8030BDB4
	nop
	la.u    $t9, player_data
	la.l    $t9, player_data
	li      $at, 0x41200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t9)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8030BDB4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
	jal     obj_lib_802A05D4
	nop
.L8030BDB4:
	b       .L8030BDC8
	nop
.L8030BDBC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0154($t2)
.L8030BDC8:
	li      $at, 0x438C0000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     obj_lib_802A390C
	nop
	b       .L8030BDE8
	nop
.L8030BDE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030BDF8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	li.u    $a2, 0x52564081
	li.l    $a2, 0x52564081
	move    $a0, $0
	jal     object_c_802FA428
	move    $a1, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030BE54
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
.L8030BE54:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0051
	bnez    $at, .L8030BEAC
	nop
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L8030BEAC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t1)
	jal     obj_lib_802A05B4
	nop
	b       .L8030BF98
	nop
.L8030BEAC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x00A0($t2)
	lwc1    $f16, 0x0164($t2)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00A8($t3)
	lwc1    $f6, 0x016C($t3)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	swc1    $f0, 0x001C($sp)
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x001C($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8030BF6C
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f10
	lwc1    $f18, 0x001C($sp)
	div.s   $f16, $f10, $f18
	swc1    $f16, 0x001C($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x001C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x0164($t4)
	add.s   $f18, $f10, $f8
	swc1    $f18, 0x00A0($t4)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f4, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f6, $f16, $f4
	lwc1    $f10, 0x016C($t5)
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x00A8($t5)
.L8030BF6C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0190
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t6)
	li      $at, 0x40A00000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t7)
.L8030BF98:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332C20
	la.l    $a0, object_c_80332C20
	jal     object_c_802FB938
	lw      $a1, 0x014C($t8)
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L8030BFC0
	nop
.L8030BFC0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030BFD0
object_c_8030BFD0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L8030C050
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00C8($t9)
	addiu   $t1, $t0, -0x4000
	sw      $t1, 0x00D4($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $s0, 0x014C($t2)
	beqz    $s0, .L8030C030
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030C040
	nop
	b       .L8030C050
	nop
.L8030C030:
	jal     object_c_8030BD2C
	nop
	b       .L8030C050
	nop
.L8030C040:
	jal     object_c_8030BDF8
	nop
	b       .L8030C050
	nop
.L8030C050:
	b       .L8030C058
	nop
.L8030C058:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030C06C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x43C80000
	mtc1    $at, $f12
	jal     object_c_802F9890
	li      $a1, 0x3000
	beqz    $v0, .L8030C0D8
	nop
	li.u    $a0, 0x502C8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502C8081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D0($t8)
	addiu   $t0, $t9, 0x7FFF
	sw      $t0, 0x00F4($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D8($t1)
	addiu   $t3, $t2, -0x7FFF
	sw      $t3, 0x00F8($t1)
	jal     obj_lib_802A04C0
	li      $a0, 0x0058
.L8030C0D8:
	b       .L8030C0E0
	nop
.L8030C0E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030C0F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	beqz    $v0, .L8030C1F0
	nop
	jal     object_c_802FA360
	li      $a0, 0x0002
	beqz    $v0, .L8030C14C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	b       .L8030C1F0
	swc1    $f4, 0x00B8($t8)
.L8030C14C:
	li      $at, 0x40400000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0006
	bnez    $at, .L8030C1F0
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x07D0
	jal     object_c_802FA6D4
	lw      $a0, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x000A
	bnez    $at, .L8030C1F0
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a1, 0x07D0
	jal     object_c_802FA7BC
	lw      $a0, 0x00F8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0014
	bnez    $at, .L8030C1F0
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	li      $a1, 0x40400000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
.L8030C1F0:
	jal     obj_lib_802A2644
	nop
	b       .L8030C200
	nop
.L8030C200:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030C210:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	jal     obj_lib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L8030C2A8
	nop
	li      $at, 0x42F00000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	li      $a1, 0x03E8
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00C4($t7)
	addiu   $t9, $t8, 0x7FFF
	sw      $t9, 0x00D0($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x03E8
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x001F
	bnez    $at, .L8030C2A8
	nop
	li      $at, 0x42480000
	mtc1    $at, $f12
	jal     object_c_802FA1F8
	nop
.L8030C2A8:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L8030C2B8
	nop
.L8030C2B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030C2C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0180($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0198($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0004
	bnez    $at, .L8030C32C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
	li      $at, 0x42480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t3)
.L8030C32C:
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x40000000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	jal     obj_lib_802A2644
	nop
	b       .L8030C354
	nop
.L8030C354:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030C364
object_c_8030C364:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L8030C494
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $t9, 0x50155081
	li.l    $t9, 0x50155081
	sw      $t9, 0x01C4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x002C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $s0, 0x014C($t2)
	beqz    $s0, .L8030C3EC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030C3FC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8030C40C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8030C41C
	nop
	b       .L8030C42C
	nop
.L8030C3EC:
	jal     object_c_8030C06C
	nop
	b       .L8030C42C
	nop
.L8030C3FC:
	jal     object_c_8030C0F0
	nop
	b       .L8030C42C
	nop
.L8030C40C:
	jal     object_c_8030C210
	nop
	b       .L8030C42C
	nop
.L8030C41C:
	jal     object_c_8030C2C8
	nop
	b       .L8030C42C
	nop
.L8030C42C:
	la.u    $a0, object_c_80332C30
	la.l    $a0, object_c_80332C30
	jal     object_c_802FB938
	li      $a1, -0x0001
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, -0x0001
	lw      $t4, 0x014C($t3)
	beq     $t4, $at, .L8030C464
	nop
	lw      $t5, 0x00EC($t3)
	andi    $t6, $t5, 0x0203
	beqz    $t6, .L8030C478
	nop
.L8030C464:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0198($t7)
	jal     object_c_802FB128
	nop
.L8030C478:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($t8)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00DC($t8)
.L8030C494:
	b       .L8030C49C
	nop
.L8030C49C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030C4B0
object_c_8030C4B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L8030C54C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0029
	bnez    $at, .L8030C54C
	nop
	li      $at, 0x44160000
	mtc1    $at, $f12
	jal     object_c_802F9890
	li      $a1, 0x2000
	beqz    $v0, .L8030C54C
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300506C
	la.l    $a2, o_1300506C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0059
	sw      $v0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	beqz    $t1, .L8030C540
	nop
	lw      $t3, 0x001C($sp)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t3)
	li.u    $a0, 0x502C8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502C8081
.L8030C540:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0154($t4)
.L8030C54C:
	b       .L8030C554
	nop
.L8030C554:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030C564:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L8030C5F4
	nop
	sw      $0, 0x002C($sp)
.L8030C588:
	lw      $t9, 0x002C($sp)
	la.u    $t1, object_c_80332C40
	la.l    $t1, object_c_80332C40
	sll     $t0, $t9, 2
	addu    $t2, $t0, $t1
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $a1, 0x0000($t2)
	lh      $a2, 0x0002($t2)
	la.u    $t5, o_130050F4
	la.l    $t5, o_130050F4
	li      $t4, 0x0059
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	move    $a3, $0
	move    $a0, $t9
	jal     obj_lib_8029EF64
	sw      $t3, 0x0010($sp)
	lw      $t6, 0x002C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0003
	bnez    $at, .L8030C588
	sw      $t7, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
.L8030C5F4:
	b       .L8030C5FC
	nop
.L8030C5FC:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_8030C60C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, .L8030C658
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f12
	jal     object_c_802F9890
	li      $a1, 0x3000
	beqz    $v0, .L8030C650
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x00F8($t9)
.L8030C650:
	b       .L8030C68C
	nop
.L8030C658:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x003D
	bnez    $at, .L8030C68C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
.L8030C68C:
	b       .L8030C694
	nop
.L8030C694:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030C6A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L8030C800
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	bgez    $t0, .L8030C740
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x001F
	bnez    $at, .L8030C710
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t4, %hi(object)
	sw      $0, 0x00F8($t3)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	b       .L8030C738
	sw      $t5, 0x00F4($t4)
.L8030C710:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x000B
	bnez    $at, .L8030C738
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x00F8($t9)
.L8030C738:
	b       .L8030C7F8
	nop
.L8030C740:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	slti    $at, $t1, 0x0003
	bnez    $at, .L8030C7EC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0065
	bnez    $at, .L8030C7C4
	nop
	la.u    $a0, o_130028FC
	jal     obj_lib_8029F95C
	la.l    $a0, o_130028FC
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0068($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t4, 0x0001
	lw      $t7, 0x0068($t6)
	sw      $t4, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lwc1    $f4, 0x00A0($t9)
	swc1    $f4, 0x00A0($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	b       .L8030C7E4
	sw      $t0, 0x014C($t1)
.L8030C7C4:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x001E
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, .L8030C7E4
	nop
	jal     Na_g_803220F0
	nop
.L8030C7E4:
	b       .L8030C7F8
	nop
.L8030C7EC:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
.L8030C7F8:
	b       .L8030C810
	nop
.L8030C800:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t6, 0x0004
	sw      $t6, 0x014C($t4)
.L8030C810:
	b       .L8030C818
	nop
.L8030C818:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030C828:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0056
	bnez    $at, .L8030C854
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	b       .L8030C884
	sw      $t8, 0x014C($t9)
.L8030C854:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lwc1    $f6, 0x00A0($t0)
	lwc1    $f4, 0x00A0($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lwc1    $f10, 0x00A0($t3)
	swc1    $f10, 0x00A0($t2)
.L8030C884:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030C894:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	slti    $at, $t7, 0x0003
	bnez    $at, .L8030C8C8
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L8030C8D4
	nop
.L8030C8C8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L8030C8D4:
	b       .L8030C8DC
	nop
.L8030C8DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030C8EC
object_c_8030C8EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L8030C974
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338C38)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338C38)($at)
	jr      $t7
	nop
.globl L8030C924
L8030C924:
	jal     object_c_8030C564
	nop
	b       .L8030C974
	nop
.globl L8030C934
L8030C934:
	jal     object_c_8030C6A4
	nop
	b       .L8030C974
	nop
.globl L8030C944
L8030C944:
	jal     object_c_8030C60C
	nop
	b       .L8030C974
	nop
.globl L8030C954
L8030C954:
	jal     object_c_8030C828
	nop
	b       .L8030C974
	nop
.globl L8030C964
L8030C964:
	jal     object_c_8030C894
	nop
	b       .L8030C974
	nop
.L8030C974:
	b       .L8030C97C
	nop
.L8030C97C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030C98C
object_c_8030C98C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	li      $at, 0x40000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x002C($t6)
	lui     $at, %hi(object_c_80338C4C)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_c_80338C4C)($at)
	swc1    $f6, 0x0030($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0004
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x014C($t9)
	bne     $t0, $at, .L8030C9F0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L8030CD18
	nop
.L8030C9F0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_80332C4C
	la.l    $a0, object_c_80332C4C
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
	sw      $v0, 0x003C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x00F8($t3)
	bnez    $t4, .L8030CA34
	nop
	lw      $t5, 0x014C($t2)
	li      $at, 0x0001
	bne     $t5, $at, .L8030CB48
	nop
.L8030CA34:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t6)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8030CA68
	nop
	jal     obj_lib_802A05D4
	nop
	b       .L8030CA70
	nop
.L8030CA68:
	jal     obj_lib_802A05B4
	nop
.L8030CA70:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f18
	lwc1    $f16, 0x00F4($t9)
	c.eq.s  $f16, $f18
	nop
	bc1f    .L8030CAAC
	nop
	li.u    $a0, 0x502C8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x502C8081
.L8030CAAC:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x42480000
	li      $a2, 0x41A00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F4
	beqz    $v0, .L8030CB34
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lw      $t3, 0x00F4($t1)
	bltz    $t3, .L8030CB2C
	nop
	lw      $t4, 0x0154($t0)
	slti    $at, $t4, 0x003D
	bnez    $at, .L8030CB2C
	nop
	lw      $t2, 0x003C($sp)
	li      $at, 0x0001
	beq     $t2, $at, .L8030CB1C
	nop
	li      $at, 0x0002
	beq     $t2, $at, .L8030CB1C
	nop
	li      $at, 0x0006
	bne     $t2, $at, .L8030CB2C
	nop
.L8030CB1C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
.L8030CB2C:
	b       .L8030CB40
	nop
.L8030CB34:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
.L8030CB40:
	b       .L8030CCD0
	nop
.L8030CB48:
	jal     obj_lib_802A05B4
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41A00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F4
	beqz    $v0, .L8030CCD0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	beqz    $t9, .L8030CCD0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0068($t1)
	lw      $t3, 0x0144($t1)
	lw      $t4, 0x00F4($t0)
	bne     $t3, $t4, .L8030CBD0
	nop
	li.u    $a0, 0x806AA081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x806AA081
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t5, 0x0068($t2)
	lw      $t6, 0x00F4($t5)
	addiu   $t7, $t6, 0x0001
	b       .L8030CCC4
	sw      $t7, 0x00F4($t5)
.L8030CBD0:
	jal     rand
	nop
	andi    $t8, $v0, 0x0001
	sh      $t8, 0x0036($sp)
	la.u    $t9, player_data
	la.l    $t9, player_data
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0050($t9)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A8($t1)
	add.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t3, $f18
	nop
	sh      $t3, 0x0034($sp)
	li.u    $a0, 0x700E0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x700E0081
	lh      $t4, 0x0034($sp)
	blez    $t4, .L8030CC3C
	nop
	sh      $0, 0x0034($sp)
.L8030CC3C:
	lh      $t2, 0x0036($sp)
	lh      $t8, 0x0034($sp)
	lui     $a0, %hi(object)
	sll     $t6, $t2, 7
	subu    $t6, $t6, $t2
	sll     $t6, $t6, 2
	sll     $t9, $t2, 15
	addiu   $t1, $t9, 0x4000
	addiu   $t7, $t6, -0x08CA
	la.u    $a3, o_1300506C
	li      $t5, 0x037A
	sw      $t5, 0x0014($sp)
	la.l    $a3, o_1300506C
	sw      $t7, 0x0010($sp)
	sw      $t1, 0x0020($sp)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x0059
	sw      $0, 0x001C($sp)
	sw      $0, 0x0024($sp)
	jal     obj_lib_8029E9AC
	sw      $t8, 0x0018($sp)
	sw      $v0, 0x0038($sp)
	lw      $t0, 0x0038($sp)
	beqz    $t0, .L8030CCB0
	nop
	lw      $t4, 0x0038($sp)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
.L8030CCB0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x0001
	lw      $t5, 0x0068($t7)
	sw      $t6, 0x00F4($t5)
.L8030CCC4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
.L8030CCD0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t9, 0x0068($t2)
	lwc1    $f4, 0x00A0($t2)
	lwc1    $f6, 0x00B8($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x016C($t1)
	lwc1    $f16, 0x00F4($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t1)
	li      $at, 0x428C0000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     obj_lib_802A390C
	nop
.L8030CD18:
	b       .L8030CD20
	nop
.L8030CD20:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_c_8030CD30
object_c_8030CD30:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x003C($sp)
	lw      $t7, 0x0040($sp)
	la.u    $t8, o_13005158
	la.l    $t8, o_13005158
	sw      $t8, 0x001C($sp)
	li      $a0, 0x0001
	lh      $a1, 0x0032($sp)
	lh      $a2, 0x0036($sp)
	lh      $a3, 0x003A($sp)
	sw      $t6, 0x0014($sp)
	swc1    $f4, 0x0010($sp)
	jal     obj_lib_8029EFFC
	sw      $t7, 0x0018($sp)
	sw      $v0, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	beqz    $t9, .L8030CDC4
	nop
	lwc1    $f6, 0x0044($sp)
	lw      $t0, 0x002C($sp)
	swc1    $f6, 0x00F4($t0)
	lwc1    $f8, 0x0048($sp)
	lw      $t1, 0x002C($sp)
	swc1    $f8, 0x00F8($t1)
	lw      $t2, 0x0040($sp)
	lw      $t3, 0x002C($sp)
	sw      $t2, 0x00FC($t3)
	lh      $t4, 0x004E($sp)
	lw      $t5, 0x002C($sp)
	sw      $t4, 0x00C4($t5)
.L8030CDC4:
	b       .L8030CDCC
	nop
.L8030CDCC:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_8030CDDC
object_c_8030CDDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80332C6C)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(object_c_80332C6C)($at)
	swc1    $f4, 0x00F4($t6)
	lui     $a0, %hi(object)
	la.u    $a1, object_c_80332C5C
	la.l    $a1, object_c_80332C5C
	jal     obj_lib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0188($t1)
	sra     $t3, $t2, 16
	andi    $t4, $t3, 0xFFFF
	beqz    $t4, .L8030CE98
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x008C($t5)
	ori     $t8, $t7, 0x4000
	sw      $t8, 0x008C($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0184($t0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t1, 0x0188($t6)
	andi    $t2, $t1, 0xFF00
	beqz    $t2, .L8030CE88
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       .L8030CE98
	sw      $0, 0x0198($t3)
.L8030CE88:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t4, 0x0002
	sw      $t4, 0x0198($t7)
.L8030CE98:
	lui     $at, %hi(object_c_80361464)
	sw      $0, %lo(object_c_80361464)($at)
	lui     $at, %hi(object_c_80361460)
	sw      $0, %lo(object_c_80361460)($at)
	b       .L8030CEB0
	nop
.L8030CEB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030CEC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	beqz    $t7, .L8030CF64
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x0104($t8)
	lw      $t9, 0x00C8($t8)
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	addu    $t2, $t9, $t1
	sw      $t2, 0x00C8($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x43480000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0104
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L8030CF5C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t6, %hi(object)
	lw      $t4, 0x0100($t3)
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x0100($t3)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	bnez    $t7, .L8030CF5C
	nop
	li.u    $a0, 0x50744081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50744081
.L8030CF5C:
	b       .L8030D120
	nop
.L8030CF64:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338C50)
	lwc1    $f10, %lo(object_c_80338C50)($at)
	lwc1    $f8, 0x00F4($t0)
	li      $a1, 0x0000
	addiu   $a0, $t0, 0x00F8
	mul.s   $f16, $f8, $f10
	mfc1    $a2, $f16
	jal     object_c_802FA544
	nop
	beqz    $v0, .L8030D120
	nop
	jal     obj_lib_802A05B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x00FC($t9)
	beqz    $t1, .L8030D058
	nop
	lui     $t2, %hi(object_c_80361460)
	lw      $t2, %lo(object_c_80361460)($t2)
	lui     $at, %hi(object_c_80361460)
	addiu   $t8, $t2, -0x0001
	sw      $t8, %lo(object_c_80361460)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00FC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t3, 0x0188($t5)
	sra     $t6, $t3, 16
	andi    $t7, $t6, 0xFFFF
	beqz    $t7, .L8030D050
	nop
	lw      $t0, 0x0184($t5)
	bnez    $t0, .L8030D050
	nop
	lui     $t9, %hi(object_c_80361464)
	lw      $t9, %lo(object_c_80361464)($t9)
	lui     $at, %hi(object_c_80361464)
	addiu   $t1, $t9, 0x0001
	sw      $t1, %lo(object_c_80361464)($at)
	li      $at, 0x0005
	bne     $t1, $at, .L8030D038
	nop
	lui     $at, %hi(object_c_80338C54)
	lwc1    $f12, %lo(object_c_80338C54)($at)
	lui     $at, %hi(object_c_80338C58)
	li.u    $a2, 0xC5C4E000
	li.l    $a2, 0xC5C4E000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(object_c_80338C58)($at)
.L8030D038:
	jal     object_c_802FB128
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_8029CE58
	li      $a1, 0x0001
.L8030D050:
	b       .L8030D120
	nop
.L8030D058:
	lui     $t2, %hi(object_c_80361460)
	lw      $t2, %lo(object_c_80361460)($t2)
	slti    $at, $t2, 0x0002
	beqz    $at, .L8030D118
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t4, 0x0154($t8)
	slti    $at, $t4, 0x0065
	bnez    $at, .L8030D118
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lwc1    $f18, 0x015C($t8)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L8030D118
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	nop
	c.lt.s  $f18, $f6
	nop
	bc1f    .L8030D118
	nop
	li.u    $a0, 0x50542081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50542081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t3, 0x0001
	sw      $t3, 0x00FC($t6)
	lui     $t7, %hi(object_c_80361460)
	lw      $t7, %lo(object_c_80361460)($t7)
	lui     $at, %hi(object_c_80361460)
	addiu   $t5, $t7, 0x0001
	sw      $t5, %lo(object_c_80361460)($at)
	jal     obj_lib_8029F694
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	b       .L8030D120
	sw      $t2, 0x00C8($t1)
.L8030D118:
	jal     obj_lib_8029F6BC
	nop
.L8030D120:
	jal     obj_lib_8029FEA4
	nop
	b       .L8030D130
	nop
.L8030D130:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030D140:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	jal     object_c_802FA32C
	li      $a0, 0x0004
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338C5C)
	lwc1    $f6, %lo(object_c_80338C5C)($at)
	lwc1    $f4, 0x00F4($t6)
	addiu   $a0, $t6, 0x00F8
	mul.s   $f8, $f4, $f6
	mfc1    $a1, $f4
	mfc1    $a2, $f8
	jal     object_c_802FA544
	nop
	beqz    $v0, .L8030D2A4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0051
	bnez    $at, .L8030D1C4
	nop
	li.u    $a0, 0x50334081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50334081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
	jal     obj_lib_8029F4B4
	move    $a0, $0
	b       .L8030D29C
	nop
.L8030D1C4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0032
	beqz    $at, .L8030D1F8
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t2)
	b       .L8030D29C
	nop
.L8030D1F8:
	jal     object_c_802F9730
	nop
	beqz    $v0, .L8030D29C
	nop
	jal     obj_lib_802A0008
	li      $a0, 0x0038
	beqz    $v0, .L8030D29C
	nop
	li.u    $a0, 0x50558081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50558081
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00F4($t3)
	li      $at, 0x430C0000
	mtc1    $at, $f6
	mul.s   $f18, $f10, $f16
	li      $at, 0x40200000
	li      $t6, 0x00CB
	mul.s   $f8, $f10, $f6
	li      $t7, 0x1000
	sw      $t7, 0x001C($sp)
	sw      $t6, 0x0010($sp)
	move    $a0, $0
	trunc.w.s $f4, $f18
	mtc1    $at, $f18
	li      $at, 0x41A00000
	trunc.w.s $f16, $f8
	mfc1    $a1, $f4
	mul.s   $f4, $f10, $f18
	mtc1    $at, $f6
	li      $at, 0x41700000
	mtc1    $at, $f8
	mfc1    $a2, $f16
	swc1    $f6, 0x0014($sp)
	swc1    $f8, 0x0018($sp)
	mfc1    $a3, $f4
	jal     object_c_8030CD30
	nop
.L8030D29C:
	b       .L8030D2D8
	nop
.L8030D2A4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f10, 0x00F4($t8)
	lwc1    $f16, 0x00F8($t8)
	div.s   $f4, $f10, $f18
	c.lt.s  $f4, $f16
	nop
	bc1f    .L8030D2D8
	nop
	jal     obj_lib_802A05D4
	nop
.L8030D2D8:
	b       .L8030D2E0
	nop
.L8030D2E0:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030D2F0
object_c_8030D2F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, .L8030D334
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030D344
	nop
	b       .L8030D354
	nop
.L8030D334:
	jal     object_c_8030CEC0
	nop
	b       .L8030D354
	nop
.L8030D344:
	jal     object_c_8030D140
	nop
	b       .L8030D354
	nop
.L8030D354:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332C5C
	la.l    $a0, object_c_80332C5C
	jal     object_c_802FB938
	lw      $a1, 0x014C($t8)
	beqz    $v0, .L8030D410
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t2, %hi(object)
	lw      $t0, 0x0184($t9)
	addiu   $t1, $t0, -0x0001
	sw      $t1, 0x0184($t9)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0184($t2)
	bgez    $t3, .L8030D3CC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00FC($t4)
	beqz    $t5, .L8030D3C4
	nop
	lui     $t6, %hi(object_c_80361460)
	lw      $t6, %lo(object_c_80361460)($t6)
	lui     $at, %hi(object_c_80361460)
	addiu   $t7, $t6, -0x0001
	sw      $t7, %lo(object_c_80361460)($at)
.L8030D3C4:
	b       .L8030D3D4
	nop
.L8030D3CC:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0002
.L8030D3D4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x000A
	sw      $t0, 0x0100($t1)
	li      $at, 0x45FA0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0104($t9)
	jal     obj_lib_802A05B4
	nop
.L8030D410:
	b       .L8030D418
	nop
.L8030D418:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030D42C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a1, 0x3E4CCCCD
	li.u    $a2, 0x3B03126F
	li.l    $a2, 0x3B03126F
	li.l    $a1, 0x3E4CCCCD
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0097
	bnez    $at, .L8030D4BC
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030D4BC
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0078
	bnez    $t9, .L8030D4BC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
	lui     $at, %hi(object_c_80338C60)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, %lo(object_c_80338C60)($at)
	swc1    $f8, 0x00F4($t2)
.L8030D4BC:
	b       .L8030D4C4
	nop
.L8030D4C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030D4D4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0160($t6)
	sw      $t7, 0x00C8($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a1, 0x3E19999A
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	li.l    $a1, 0x3E19999A
	jal     object_c_802FAAC8
	addiu   $a0, $a0, 0x00F4
	sw      $v0, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	beqz    $t8, .L8030D580
	nop
	lw      $t9, 0x002C($sp)
	bgez    $t9, .L8030D538
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       .L8030D580
	sw      $0, 0x014C($t0)
.L8030D538:
	li.u    $a0, 0x50558081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50558081
	li      $at, 0x41A00000
	mtc1    $at, $f4
	li      $at, 0x41700000
	mtc1    $at, $f6
	li      $t1, 0x00CB
	li      $t2, 0x1000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0010($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	li      $a3, 0x40A00000
	swc1    $f4, 0x0014($sp)
	jal     object_c_8030CD30
	swc1    $f6, 0x0018($sp)
.L8030D580:
	b       .L8030D588
	nop
.L8030D588:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_8030D598
object_c_8030D598:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x002C($t6)
	li      $at, 0x42200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t7)
	jal     obj_lib_802A2320
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, .L8030D5FC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030D60C
	nop
	b       .L8030D61C
	nop
.L8030D5FC:
	jal     object_c_8030D42C
	nop
	b       .L8030D61C
	nop
.L8030D60C:
	jal     object_c_8030D4D4
	nop
	b       .L8030D61C
	nop
.L8030D61C:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L8030D62C
	nop
.L8030D62C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030D640
object_c_8030D640:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	bnez    $t9, .L8030D724
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	blez    $t1, .L8030D68C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L8030D71C
	nop
.L8030D68C:
	jal     o_script_80383CB4
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f4
	nop
	sub.s   $f6, $f0, $f4
	swc1    $f6, 0x002C($sp)
	lui     $at, %hi(object_c_80338C64)
	lwc1    $f8, %lo(object_c_80338C64)($at)
	lwc1    $f10, 0x002C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	mul.s   $f16, $f8, $f10
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x0034($t2)
	add.s   $f4, $f18, $f16
	mul.s   $f8, $f6, $f4
	swc1    $f8, 0x0030($t2)
	li      $at, 0x3F000000
	mtc1    $at, $f10
	lwc1    $f18, 0x002C($sp)
	lui     $at, %hi(object_c_80338C68)
	lwc1    $f6, %lo(object_c_80338C68)($at)
	mul.s   $f16, $f10, $f18
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x0034($t3)
	sub.s   $f4, $f6, $f16
	mul.s   $f10, $f8, $f4
	swc1    $f10, 0x002C($t3)
	jal     rand
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00F0($t4)
.L8030D71C:
	b       .L8030D8A0
	nop
.L8030D724:
	jal     obj_lib_802A2320
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li.u    $a2, 0x3F19999A
	li.l    $a2, 0x3F19999A
	addiu   $a0, $t5, 0x00F4
	jal     object_c_802FA544
	lw      $a1, 0x00F8($t5)
	beqz    $v0, .L8030D764
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0200
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t6)
.L8030D764:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F4($t7)
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80338C6C)
	lwc1    $f6, %lo(object_c_80338C6C)($at)
	lwc1    $f18, 0x002C($t8)
	la.u    $a2, o_13005158
	la.l    $a2, o_13005158
	mul.s   $f16, $f18, $f6
	move    $a0, $t8
	lw      $a1, 0x00FC($t8)
	mfc1    $a3, $f16
	jal     obj_lib_8029EEB8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	lw      $t1, 0x0100($t9)
	slt     $at, $t1, $t0
	beqz    $at, .L8030D834
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t5, o_130051AC
	la.l    $t5, o_130051AC
	lwc1    $f8, 0x00DC($t2)
	lwc1    $f10, 0x002C($t2)
	sw      $t2, 0x0014($sp)
	trunc.w.s $f4, $f8
	swc1    $f10, 0x0010($sp)
	lw      $t4, 0x00FC($t2)
	sw      $t5, 0x001C($sp)
	mfc1    $a2, $f4
	li      $a0, 0x0001
	move    $a1, $0
	move    $a3, $0
	jal     obj_lib_8029EFFC
	sw      $t4, 0x0018($sp)
	li      $a0, 0x0008
	jal     object_c_802FA964
	li      $a1, 0x000F
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0100($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
.L8030D834:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332C74
	la.l    $a0, object_c_80332C74
	jal     object_c_802FB938
	lw      $a1, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x0104($t9)
	lwc1    $f6, 0x00F4($t9)
	add.s   $f16, $f18, $f6
	swc1    $f16, 0x0104($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338C70)
	lwc1    $f4, %lo(object_c_80338C70)($at)
	lwc1    $f8, 0x0104($t0)
	c.lt.s  $f4, $f8
	nop
	bc1t    .L8030D898
	nop
	lw      $t1, 0x00EC($t0)
	andi    $t3, $t1, 0x0278
	beqz    $t3, .L8030D8A0
	nop
.L8030D898:
	jal     object_c_802FB128
	nop
.L8030D8A0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x41700000
	mtc1    $at, $f18
	lwc1    $f10, 0x0030($t2)
	mul.s   $f6, $f10, $f18
	swc1    $f6, 0x00DC($t2)
	b       .L8030D8C4
	nop
.L8030D8C4:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_8030D8D4
object_c_8030D8D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2644
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3F19999A
	li.l    $a2, 0x3F19999A
	li      $a1, 0x0000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, .L8030D914
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L8030D914:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x002C($t6)
	b       .L8030D92C
	nop
.L8030D92C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl s_object_c_8030D93C
s_object_c_8030D93C:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L8030D994
	nop
	lui     $t6, %hi(shape_object)
	lw      $t6, %lo(shape_object)($t6)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0008($a1)
	sw      $t7, 0x0000($sp)
	lw      $t8, 0x0004($sp)
	lw      $t0, 0x0000($sp)
	lh      $t9, 0x01AC($t8)
	sh      $t9, 0x0018($t0)
	lw      $t1, 0x0004($sp)
	lw      $t3, 0x0000($sp)
	lh      $t2, 0x01AE($t1)
	sh      $t2, 0x001A($t3)
	lw      $t4, 0x0004($sp)
	lw      $t6, 0x0000($sp)
	lh      $t5, 0x01B0($t4)
	sh      $t5, 0x001C($t6)
.L8030D994:
	b       .L8030D9A4
	move    $v0, $0
	b       .L8030D9A4
	nop
.L8030D9A4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl s_object_c_8030D9AC
s_object_c_8030D9AC:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L8030D9FC
	nop
	lui     $t6, %hi(shape_object)
	lw      $t6, %lo(shape_object)($t6)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0008($a1)
	sw      $t7, 0x0000($sp)
	lw      $t8, 0x0004($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lh      $t9, 0x01B2($t8)
	lw      $t0, 0x0000($sp)
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0018($t0)
.L8030D9FC:
	b       .L8030DA0C
	move    $v0, $0
	b       .L8030DA0C
	nop
.L8030DA0C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_8030DA14:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	div.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x001C($sp)
	lw      $t0, 0x0154($t9)
	slt     $at, $t1, $t0
	beqz    $at, .L8030DB0C
	nop
	li      $at, 0x44480000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t9)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8030DB0C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	move    $a1, $0
	li      $a2, 0x05DC
	jal     obj_lib_8029E530
	lw      $a0, 0x0104($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x0104($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0258
	li      $a2, 0x000F
	jal     obj_lib_8029E530
	lw      $a0, 0x0108($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0108($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0106($t6)
	bnez    $t7, .L8030DB04
	nop
	lw      $t8, 0x0108($t6)
	li      $at, 0x0258
	bne     $t8, $at, .L8030DB04
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x010C($t9)
.L8030DB04:
	b       .L8030DB20
	nop
.L8030DB0C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	addiu   $t4, $t3, 0x0190
	sw      $t4, 0x0100($t2)
.L8030DB20:
	b       .L8030DB28
	nop
.L8030DB28:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030DB38:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, -0x8000
	li      $a2, 0x0BB8
	jal     obj_lib_8029E530
	lw      $a0, 0x0104($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x0104($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x00A7
	li      $a2, 0x0014
	jal     obj_lib_8029E530
	lw      $a0, 0x0108($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0108($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x8000
	lhu     $t1, 0x0106($t0)
	bne     $t1, $at, .L8030DBC0
	nop
	lw      $t2, 0x0108($t0)
	li      $at, 0x00A7
	bne     $t2, $at, .L8030DBC0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       .L8030DC58
	sw      $0, 0x014C($t3)
.L8030DBC0:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x010C($t4)
	slti    $at, $t5, 0x0003
	beqz    $at, .L8030DC58
	nop
	lw      $t6, 0x0154($t4)
	slti    $at, $t6, 0x0003
	bnez    $at, .L8030DC58
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x010C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x010C($t7)
	li.u    $a0, 0x504D0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x504D0081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $t2, o_1300521C
	la.l    $t2, o_1300521C
	li      $t0, 0x00B4
	sw      $t0, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0014
	li      $a3, 0x0028
	jal     obj_lib_8029EF64
	sw      $t1, 0x0010($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, -0x001E
	sw      $t3, 0x00F4($t5)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0154($t4)
.L8030DC58:
	b       .L8030DC60
	nop
.L8030DC60:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030DC70
object_c_8030DC70:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L8030DFA8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $t9, 0x5072C081
	li.l    $t9, 0x5072C081
	sw      $t9, 0x01C4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030DD4C
	nop
	li      $at, 0x42F00000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	li      $a1, 0x07D0
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x00C6($t2)
	slti    $at, $t3, 0x2001
	bnez    $at, .L8030DD08
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x2000
	b       .L8030DD30
	sw      $t4, 0x00C4($t5)
.L8030DD08:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x00C6($t6)
	slti    $at, $t7, -0x2000
	beqz    $at, .L8030DD30
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, -0x2000
	sw      $t8, 0x00C4($t9)
.L8030DD30:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x07D0
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t0)
	b       .L8030DD6C
	nop
.L8030DD4C:
	move    $a0, $0
	jal     object_c_802FA660
	li      $a1, 0x0200
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	addiu   $t3, $t2, 0x00C8
	sw      $t3, 0x00C8($t1)
.L8030DD6C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00C4($t4)
	sw      $t5, 0x00D0($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L8030DDA4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8030DDB4
	nop
	b       .L8030DDC4
	nop
.L8030DDA4:
	jal     object_c_8030DA14
	nop
	b       .L8030DDC4
	nop
.L8030DDB4:
	jal     object_c_8030DB38
	nop
	b       .L8030DDC4
	nop
.L8030DDC4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lhu     $t8, 0x0102($t7)
	lwc1    $f18, 0x0164($t7)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t7)
	lui     $t2, %hi(gfx_frame)
	lw      $t2, %lo(gfx_frame)($t2)
	lui     $at, %hi(math_cos)
	lui     $t6, %hi(object)
	sll     $t3, $t2, 5
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 5
	andi    $t1, $t3, 0xFFFF
	sra     $t5, $t1, 4
	sll     $t4, $t5, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x41000000
	mtc1    $at, $f8
	lw      $t6, %lo(object)($t6)
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x0168($t6)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x0102($t8)
	lwc1    $f10, 0x016C($t8)
	sra     $t0, $t9, 4
	sll     $t7, $t0, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A8($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, -0x0020
	sh      $t2, 0x01AE($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t5, 0x00F4($t1)
	addiu   $t4, $t5, 0x00B4
	sh      $t4, 0x01B0($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lw      $t8, 0x0108($t6)
	lhu     $t9, 0x0106($t6)
	mtc1    $t8, $f4
	sra     $t0, $t9, 4
	sll     $t7, $t0, 2
	cvt.s.w $f6, $f4
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_cos)($at)
	addiu   $t2, $t8, 0x029A
	mtc1    $t2, $f10
	mul.s   $f8, $f18, $f6
	cvt.s.w $f16, $f10
	add.s   $f4, $f8, $f16
	trunc.w.s $f18, $f4
	mfc1    $t5, $f18
	nop
	sh      $t5, 0x01B2($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t1, 0x01B2($t4)
	slti    $at, $t1, 0x03E9
	bnez    $at, .L8030DF68
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lh      $t0, 0x01B2($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	addiu   $t7, $t0, -0x03E8
	mtc1    $t7, $f6
	nop
	cvt.s.w $f10, $f6
	div.s   $f16, $f10, $f8
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x00F8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t8, 0x03E8
	b       .L8030DF80
	sh      $t8, 0x01B2($t2)
.L8030DF68:
	li      $at, 0x3F800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t3)
.L8030DF80:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, object_c_80332C84
	la.l    $a0, object_c_80332C84
	jal     object_c_802FB938
	lw      $a1, 0x014C($t6)
.L8030DFA8:
	b       .L8030DFB0
	nop
.L8030DFB0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030DFC4
object_c_8030DFC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, .L8030E00C
	nop
	lw      $t9, 0x0154($t6)
	beqz    $t9, .L8030E018
	nop
	lui     $at, %hi(object_c_80338C74)
	lwc1    $f6, %lo(object_c_80338C74)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8030E018
	nop
.L8030E00C:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L8030E018:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f10
	lwc1    $f8, 0x00E4($t0)
	c.eq.s  $f8, $f10
	nop
	bc1f    .L8030E12C
	nop
	jal     obj_lib_802A2320
	nop
	li      $at, 0x42200000
	mtc1    $at, $f12
	jal     object_c_802FA1F8
	nop
	la.u    $a0, object_c_80332C94
	la.l    $a0, object_c_80332C94
	jal     object_c_802FB938
	li      $a1, 0x0001
	beqz    $v0, .L8030E0DC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x8000
	lw      $t2, 0x00C8($t1)
	addu    $t3, $t2, $at
	sw      $t3, 0x00C8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80338C78)
	lwc1    $f18, %lo(object_c_80338C78)($at)
	lwc1    $f16, 0x00B8($t4)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B8($t4)
	li      $at, 0x41F00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t5)
	li      $at, 0xC0800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t7)
	jal     obj_lib_802A05B4
	nop
	b       .L8030E11C
	nop
.L8030E0DC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x014C($t8)
	beq     $t9, $at, .L8030E104
	nop
	lw      $t6, 0x00EC($t8)
	andi    $t0, $t6, 0x0203
	beqz    $t0, .L8030E11C
	nop
.L8030E104:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, -0x0001
	sw      $t2, 0x01C4($t3)
	jal     object_c_802FB128
	nop
.L8030E11C:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L8030E134
	nop
.L8030E12C:
	jal     obj_lib_802A2644
	nop
.L8030E134:
	b       .L8030E13C
	nop
.L8030E13C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030E14C
object_c_8030E14C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sw      $t7, 0x00F4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_8030E16C
object_c_8030E16C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, .L8030E30C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00FC($t9)
	bnez    $t0, .L8030E20C
	nop
	li.u    $a0, 0x500CA081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x500CA081
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x00FC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t3)
	lw      $a2, 0x00A4($t3)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t3)
	jal     obj_lib_802A1634
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	swc1    $f0, 0x00F8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0154($t6)
.L8030E20C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x00F4($t7)
	beqz    $v0, .L8030E2F8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x003D
	bnez    $at, .L8030E2F0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F8($t0)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8030E290
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x8000
	lw      $t2, 0x00F4($t1)
	addu    $t3, $t2, $at
	sw      $t3, 0x00F4($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f10
	b       .L8030E2F0
	swc1    $f10, 0x00F8($t4)
.L8030E290:
	li.u    $a0, 0x50468081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50468081
	li      $at, 0x41300000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t5)
	li      $at, 0x428C0000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t6)
	li      $at, 0xC0800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00EC($t8)
.L8030E2F0:
	b       .L8030E304
	nop
.L8030E2F8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0154($t9)
.L8030E304:
	b       .L8030E350
	nop
.L8030E30C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00FC($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f8
	lwc1    $f6, 0x00B0($t2)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8030E350
	nop
	li      $at, 0xC1800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t3)
.L8030E350:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x00C8($t1)
	addiu   $t5, $t4, 0x4000
	sw      $t5, 0x00D4($t1)
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L8030E374
	nop
.L8030E374:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030E384:
	lui     $t6, %hi(obj_mario)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(obj_mario)($t6)
	mtc1    $a0, $f10
	lwc1    $f6, 0x016C($t7)
	lwc1    $f4, 0x00A8($t6)
	cvt.s.w $f16, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f16
	nop
	bc1f    .L8030E3C8
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L8030E3D0
	nop
.L8030E3C8:
	jr      $ra
	move    $v0, $0
.L8030E3D0:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030E3E0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lh      $t6, 0x0032($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	subu    $at, $0, $t6
	sll     $a1, $at, 5
	subu    $a1, $a1, $at
	sll     $a1, $a1, 2
	addu    $a1, $a1, $at
	li      $at, 0x3FC00000
	mtc1    $at, $f4
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0038($sp)
	sll     $a1, $a1, 2
	move    $a2, $0
	li      $a3, 0x012C
	move    $a0, $t6
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	swc1    $f4, 0x0010($sp)
	jal     obj_lib_8029EFFC
	sw      $t9, 0x001C($sp)
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	beqz    $t0, .L8030E470
	nop
	lw      $t1, 0x002C($sp)
	lh      $t3, 0x0032($sp)
	lw      $t2, 0x00D4($t1)
	sll     $t4, $t3, 14
	subu    $t5, $t2, $t4
	sw      $t5, 0x00D4($t1)
.L8030E470:
	b       .L8030E478
	nop
.L8030E478:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_8030E488:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, .L8030E4D4
	nop
	la.u    $a2, o_130052D0
	la.l    $a2, o_130052D0
	li      $a0, -0x0001
	jal     object_c_8030E3E0
	li      $a1, 0x0058
	la.u    $a2, o_130052D0
	la.l    $a2, o_130052D0
	li      $a0, 0x0001
	jal     object_c_8030E3E0
	li      $a1, 0x0059
	b       .L8030E514
	nop
.L8030E4D4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030E514
	nop
	li.u    $a0, 0x506D0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x506D0081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
.L8030E514:
	b       .L8030E51C
	nop
.L8030E51C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030E52C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x00F8($t6)
	bne     $t7, $at, .L8030E664
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0006
	bnez    $at, .L8030E65C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	bnez    $t1, .L8030E59C
	nop
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SEQ_mute
	li      $a2, 0x0028
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0150($t2)
.L8030E59C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f6
	lwc1    $f4, 0x0110($t5)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L8030E5E0
	nop
	jal     pl_demo_802575A8
	nop
	beqz    $v0, .L8030E5E0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	b       .L8030E65C
	sw      $t6, 0x014C($t7)
.L8030E5E0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0097
	bnez    $at, .L8030E62C
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41200000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
	beqz    $v0, .L8030E624
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
.L8030E624:
	b       .L8030E65C
	nop
.L8030E62C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0154($t1)
	slti    $at, $t3, 0x005B
	bnez    $at, .L8030E65C
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x43960000
	li      $a2, 0x41200000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
.L8030E65C:
	b       .L8030E670
	nop
.L8030E664:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0154($t4)
.L8030E670:
	b       .L8030E678
	nop
.L8030E678:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030E688:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0002
	move    $a1, $0
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0075
	beqz    $v0, .L8030E6BC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
.L8030E6BC:
	b       .L8030E6C4
	nop
.L8030E6C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030E6D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, .L8030E708
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	b       .L8030E9C4
	sw      $t8, 0x014C($t9)
.L8030E708:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x01AC($t0)
	bnez    $t1, .L8030E9C4
	nop
	lw      $t2, 0x0100($t0)
	bnez    $t2, .L8030E9C4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0104($t3)
	beqz    $t4, .L8030E840
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3CA3D70A
	li.l    $a2, 0x3CA3D70A
	li      $a1, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
	beqz    $v0, .L8030E838
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0104($t5)
	bgez    $t6, .L8030E7C4
	nop
	jal     object_c_8030E384
	li      $a0, 0x0190
	bnez    $v0, .L8030E7BC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t1, %hi(object)
	lw      $t8, 0x0104($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0104($t7)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0104($t1)
	bnez    $t0, .L8030E7BC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x0104($t3)
.L8030E7BC:
	b       .L8030E7D8
	nop
.L8030E7C4:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0104($t4)
	addiu   $t6, $t5, -0x0001
	sw      $t6, 0x0104($t4)
.L8030E7D8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0104($t8)
	beqz    $t9, .L8030E838
	nop
	li      $at, 0x0001
	beq     $t9, $at, .L8030E838
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t1, 0x00FC($t7)
	addiu   $t0, $t1, 0x0001
	sw      $t0, 0x00FC($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $s0, 0x00FC($t2)
	andi    $t3, $s0, 0x0001
	move    $s0, $t3
	bnez    $s0, .L8030E838
	sw      $s0, 0x0100($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, -0x0001
	sw      $t5, 0x0100($t6)
.L8030E838:
	b       .L8030E9C4
	nop
.L8030E840:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t8, 0x00FC($t4)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00FC($t4)
	jal     object_c_8030E384
	li      $a0, 0x0190
	beqz    $v0, .L8030E8A0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t1, -0x0008
	sw      $t1, 0x0104($t0)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0110($t7)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	b       .L8030E9C4
	swc1    $f6, 0x0108($t3)
.L8030E8A0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0002
	lw      $t5, 0x00F8($t2)
	bne     $t5, $at, .L8030E998
	nop
	lw      $t6, 0x00FC($t2)
	li      $at, 0x0006
	div     $0, $t6, $at
	mfhi    $t8
	bnez    $t8, .L8030E998
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t9, 0x0008
	sw      $t9, 0x0104($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0110($t1)
	jal     rand
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	andi    $s0, $v0, 0x0001
	beqz    $s0, .L8030E928
	sw      $s0, 0x00FC($t0)
	li      $at, 0xBF800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f10
	b       .L8030E940
	swc1    $f10, 0x0108($t7)
.L8030E928:
	li      $at, 0x3F800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0108($t3)
.L8030E940:
	lui     $t5, %hi(obj_mario)
	lw      $t5, %lo(obj_mario)($t5)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x00A8($t5)
	swc1    $f18, 0x010C($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A8($t6)
	li      $at, 0x44C80000
	mtc1    $at, $f10
	add.s   $f8, $f4, $f6
	addiu   $a0, $t6, 0x010C
	add.s   $f16, $f4, $f10
	mfc1    $a1, $f8
	mfc1    $a2, $f16
	jal     object_c_802FA2BC
	nop
	b       .L8030E9C4
	nop
.L8030E998:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x00FC($t8)
	andi    $t9, $s0, 0x0001
	move    $s0, $t9
	bnez    $s0, .L8030E9C4
	sw      $s0, 0x0100($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t4, -0x0001
	sw      $t4, 0x0100($t1)
.L8030E9C4:
	b       .L8030E9CC
	nop
.L8030E9CC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030E9E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x003C
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, .L8030EA58
	nop
	li      $a0, 0x0002
	move    $a1, $0
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	li      $a3, 0x0076
	beqz    $v0, .L8030EA3C
	nop
	li      $at, 0xC4610000
	mtc1    $at, $f14
	mtc1    $0, $f12
	li.u    $a2, 0xC5674000
	jal     object_b_802F2B88
	li.l    $a2, 0xC5674000
	b       .L8030EA50
	nop
.L8030EA3C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x0154($t8)
.L8030EA50:
	b       .L8030EA84
	nop
.L8030EA58:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0079
	bnez    $at, .L8030EA84
	nop
	jal     Na_BGM_stop
	li      $a0, 0x0416
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L8030EA84:
	b       .L8030EA8C
	nop
.L8030EA8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030EA9C
object_c_8030EA9C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L8030EB24
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338C7C)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338C7C)($at)
	jr      $t7
	nop
.globl L8030EAD4
L8030EAD4:
	jal     object_c_8030E488
	nop
	b       .L8030EB24
	nop
.globl L8030EAE4
L8030EAE4:
	jal     object_c_8030E52C
	nop
	b       .L8030EB24
	nop
.globl L8030EAF4
L8030EAF4:
	jal     object_c_8030E688
	nop
	b       .L8030EB24
	nop
.globl L8030EB04
L8030EB04:
	jal     object_c_8030E6D4
	nop
	b       .L8030EB24
	nop
.globl L8030EB14
L8030EB14:
	jal     object_c_8030E9E0
	nop
	b       .L8030EB24
	nop
.L8030EB24:
	b       .L8030EB2C
	nop
.L8030EB2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030EB3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	beqz    $t7, .L8030EC88
	nop
	lw      $a0, 0x0160($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00D4($t6)
	slti    $at, $v0, 0x3000
	beqz    $at, .L8030EC88
	nop
	li.u    $a0, 0x935A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x935A0081
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t1, %hi(object)
	lw      $t9, 0x0184($t8)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x0184($t8)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0184($t1)
	slti    $at, $t2, 0x0002
	bnez    $at, .L8030EBD0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x000C
	sw      $t3, 0x014C($t4)
	li      $at, 0x41F00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	b       .L8030EC10
	swc1    $f4, 0x00B0($t5)
.L8030EBD0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0068($t7)
	lw      $t9, 0x00F8($t6)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x00F8($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t8, 0x000F
	sw      $t8, 0x014C($t1)
	li      $at, 0x42480000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t2)
.L8030EC10:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338C90)
	lwc1    $f10, %lo(object_c_80338C90)($at)
	lwc1    $f8, 0x00B8($t3)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x8000
	lw      $t5, 0x00D4($t4)
	addu    $t7, $t5, $at
	sw      $t7, 0x00C8($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00EC($t9)
	li      $at, 0xC0800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00E4($t0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t6, 0x0003
	sw      $t6, 0x00F0($t8)
	b       .L8030EC98
	li      $v0, 0x0001
	b       .L8030EC90
	nop
.L8030EC88:
	b       .L8030EC98
	move    $v0, $0
.L8030EC90:
	b       .L8030EC98
	nop
.L8030EC98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030ECA8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x50684081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50684081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t6)
	lw      $a2, 0x00A4($t6)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t6)
	jal     object_a_802AE334
	nop
	b       .L8030ECE8
	nop
.L8030ECE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030ECF8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	beqz    $t8, .L8030EE6C
	nop
	lw      $t9, 0x00F4($t6)
	lui     $t1, %hi(object)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x00F4($t6)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0144($t1)
	lw      $t2, 0x00F4($t1)
	subu    $at, $0, $t3
	sll     $t4, $at, 2
	subu    $t4, $t4, $at
	slt     $at, $t4, $t2
	beqz    $at, .L8030EE6C
	nop
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L8030EDA4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0068($t5)
	lw      $t8, 0x00F8($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F8($t7)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t6)
	la.u    $a0, 0x07028274
	jal     segment_to_virtual
	la.l    $a0, 0x07028274
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       .L8030EE64
	sw      $v0, 0x0218($t1)
.L8030EDA4:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a2, 0x41700000
	addiu   $a0, $t3, 0x00A0
	jal     object_c_802FA544
	lw      $a1, 0x0164($t3)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x00A0($t2)
	lwc1    $f6, 0x0164($t2)
	jal     obj_lib_802A3634
	sub.s   $f12, $f4, $f6
	li      $at, 0x44350000
	mtc1    $at, $f8
	mov.s   $f20, $f0
	li      $at, 0x47000000
	div.s   $f10, $f20, $f8
	mtc1    $at, $f16
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lw      $t6, 0x0144($t0)
	sll     $t1, $t6, 2
	subu    $t1, $t1, $t6
	sll     $t1, $t1, 3
	addu    $t1, $t1, $t6
	sll     $t1, $t1, 3
	addiu   $t3, $t1, 0x0190
	mtc1    $t3, $f8
	mul.s   $f18, $f10, $f16
	cvt.s.w $f10, $f8
	trunc.w.s $f4, $f18
	lwc1    $f18, 0x0168($t0)
	mfc1    $t5, $f4
	nop
	andi    $t8, $t5, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t7, $t9, 2
	addu    $at, $at, $t7
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x0190
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t2)
.L8030EE64:
	b       .L8030EEEC
	nop
.L8030EE6C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0144($t4)
	bgez    $t5, .L8030EE9C
	nop
	la.u    $a0, 0x070284B0
	jal     segment_to_virtual
	la.l    $a0, 0x070284B0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       .L8030EEB4
	sw      $v0, 0x0218($t8)
.L8030EE9C:
	la.u    $a0, 0x07028370
	jal     segment_to_virtual
	la.l    $a0, 0x07028370
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
.L8030EEB4:
	jal     obj_lib_8029FE6C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x44350000
	mtc1    $at, $f10
	lw      $t6, 0x0144($t7)
	lwc1    $f18, 0x0164($t7)
	mtc1    $t6, $f8
	nop
	cvt.s.w $f6, $f8
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t7)
.L8030EEEC:
	b       .L8030EEF4
	nop
.L8030EEF4:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030EF08:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0002
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, .L8030F0E4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x0104($t0)
	beqz    $t1, .L8030EF94
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x0104($t3)
	beq     $t4, $at, .L8030EF8C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x000A
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00E4($t7)
.L8030EF8C:
	b       .L8030F0DC
	nop
.L8030EF94:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x01AC($t9)
	bnez    $t0, .L8030F0DC
	nop
	lw      $t1, 0x0100($t9)
	beqz    $t1, .L8030F0DC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0068($t2)
	lw      $t3, 0x0144($t2)
	lw      $t5, 0x0100($t4)
	bne     $t3, $t5, .L8030F0CC
	nop
	jal     object_c_8030E384
	li      $a0, 0x0190
	bnez    $v0, .L8030EFF8
	nop
	jal     rand
	nop
	andi    $t6, $v0, 0x0001
	beqz    $t6, .L8030F02C
	nop
.L8030EFF8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	sw      $t7, 0x014C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0160($t0)
	sw      $t9, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f6
	b       .L8030F0C4
	swc1    $f6, 0x00E4($t1)
.L8030F02C:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t2, 0x0008
	sw      $t2, 0x014C($t4)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lw      $t5, 0x0068($t3)
	mtc1    $0, $f18
	lwc1    $f10, 0x00A0($t6)
	lwc1    $f8, 0x00A0($t5)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8030F084
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, -0x0800
	b       .L8030F094
	sw      $t7, 0x00C8($t8)
.L8030F084:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0800
	sw      $t9, 0x00C8($t0)
.L8030F094:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	lw      $t4, 0x0160($t1)
	addu    $t3, $t2, $t4
	sw      $t3, 0x00C8($t1)
	li      $at, 0xC0800000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t5)
.L8030F0C4:
	b       .L8030F0DC
	nop
.L8030F0CC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
.L8030F0DC:
	b       .L8030F100
	nop
.L8030F0E4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lwc1    $f8, 0x0168($t8)
	lwc1    $f6, 0x0110($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t8)
.L8030F100:
	b       .L8030F108
	nop
.L8030F108:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F118:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	lw      $t8, 0x0068($t6)
	sw      $t7, 0x01AC($t8)
	jal     object_c_802FA360
	li      $a0, 0x0004
	beqz    $v0, .L8030F204
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x00FC($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x003C
	sw      $t3, 0x0100($t4)
	la.u    $a0, 0x070282F8
	jal     segment_to_virtual
	la.l    $a0, 0x070282F8
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0218($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00F8($t7)
	beq     $t8, $at, .L8030F1F8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0160($t9)
	sh      $t0, 0x001E($sp)
	addiu   $a0, $sp, 0x001E
	li      $a1, -0x3000
	jal     object_c_802FA25C
	li      $a2, 0x3000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t1, 0x001E($sp)
	sw      $t1, 0x00C8($t2)
	li      $at, 0x42480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	b       .L8030F204
	nop
.L8030F1F8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00C8($t4)
.L8030F204:
	b       .L8030F20C
	nop
.L8030F20C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030F21C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0005
	li.u    $a2, 0x524B0081
	li.l    $a2, 0x524B0081
	move    $a0, $0
	jal     object_c_802FA428
	move    $a1, $0
	jal     object_c_8030EB3C
	nop
	bnez    $v0, .L8030F424
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0100($t7)
	bnez    $t8, .L8030F2F4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F0($t9)
	slti    $at, $t0, 0x0003
	beqz    $at, .L8030F29C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F0($t1)
	addiu   $t3, $t2, 0x0001
	b       .L8030F2EC
	sw      $t3, 0x00F0($t1)
.L8030F29C:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L8030F2EC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0160($t4)
	lw      $t6, 0x00D4($t4)
	lw      $t0, 0x0144($t4)
	subu    $t7, $t5, $t6
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	multu   $t0, $t9
	mflo    $t2
	sh      $t2, 0x0026($sp)
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t3, 0x0004
	sw      $t3, 0x014C($t1)
.L8030F2EC:
	b       .L8030F424
	nop
.L8030F2F4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0100($t5)
	lw      $s0, 0x0100($t5)
	addiu   $t7, $t6, -0x0001
	beqz    $s0, .L8030F358
	sw      $t7, 0x0100($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t4, 0x00FC($t8)
	beqz    $t4, .L8030F338
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x00FC($t0)
	addiu   $t2, $t9, -0x0001
	sw      $t2, 0x00FC($t0)
.L8030F338:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t6, %hi(object_c_80332CB4)
	lw      $t1, 0x00FC($t3)
	addu    $t6, $t6, $t1
	lb      $t6, %lo(object_c_80332CB4)($t6)
	b       .L8030F380
	sw      $t6, 0x00F0($t3)
.L8030F358:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t7, 0x0005
	sw      $t7, 0x00FC($t5)
	li      $a0, 0x0014
	jal     object_c_802FA964
	li      $a1, 0x0032
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x0100($t8)
.L8030F380:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0002
	lw      $t9, 0x0068($t4)
	lw      $t2, 0x00F8($t9)
	beq     $t2, $at, .L8030F424
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0800
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t6, 0x0154($t1)
	slti    $at, $t6, 0x000B
	bnez    $at, .L8030F424
	nop
	lui     $t3, %hi(obj_mario)
	lw      $t3, %lo(obj_mario)($t3)
	lwc1    $f4, 0x00A8($t1)
	mtc1    $0, $f10
	lwc1    $f6, 0x00A8($t3)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1t    .L8030F400
	nop
	lw      $t7, 0x00EC($t1)
	andi    $t5, $t7, 0x0400
	beqz    $t5, .L8030F424
	nop
.L8030F400:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t4, 0x0068($t8)
	sw      $0, 0x0100($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t9)
.L8030F424:
	b       .L8030F42C
	nop
.L8030F42C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030F440:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0007
	jal     object_c_802FA39C
	li      $a1, 0x0001
	beqz    $v0, .L8030F4F0
	nop
	la.u    $a0, 0x07028274
	jal     segment_to_virtual
	la.l    $a0, 0x07028274
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0218($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0002
	lw      $t8, 0x0068($t7)
	lw      $t9, 0x00F8($t8)
	beq     $t9, $at, .L8030F4B8
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	lw      $t4, 0x0068($t2)
	b       .L8030F4F0
	sw      $t3, 0x0100($t4)
.L8030F4B8:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x0100($t6)
	bnez    $t7, .L8030F4F0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	sw      $0, 0x01AC($t1)
.L8030F4F0:
	b       .L8030F4F8
	nop
.L8030F4F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F508:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA360
	li      $a0, 0x0003
	beqz    $v0, .L8030F548
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000D
	sw      $t6, 0x014C($t7)
	la.u    $a0, 0x07028274
	jal     segment_to_virtual
	la.l    $a0, 0x07028274
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x0218($t8)
.L8030F548:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0003
	beqz    $t1, .L8030F574
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
.L8030F574:
	b       .L8030F57C
	nop
.L8030F57C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F58C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA360
	move    $a0, $0
	beqz    $v0, .L8030F5B4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000E
	sw      $t6, 0x014C($t7)
.L8030F5B4:
	b       .L8030F5BC
	nop
.L8030F5BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F5CC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0100($t7)
	beqz    $t8, .L8030F5F4
	nop
	lw      $t9, 0x00F8($t7)
	li      $at, 0x0002
	beq     $t9, $at, .L8030F618
	nop
.L8030F5F4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	lw      $t4, 0x0068($t2)
	sw      $t3, 0x0100($t4)
.L8030F618:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030F628:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA360
	li      $a0, 0x0001
	beqz    $v0, .L8030F66C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $0, 0x01AC($t7)
	li      $at, 0x43160000
	mtc1    $at, $f12
	jal     obj_lib_802A4440
	li      $a1, 0x0001
	li.u    $a0, 0x925B0081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x925B0081
.L8030F66C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0003
	beqz    $t0, .L8030F6A4
	nop
	li.u    $a0, 0x50684081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50684081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t1)
.L8030F6A4:
	b       .L8030F6AC
	nop
.L8030F6AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F6BC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A1634
	nop
	swc1    $f0, 0x001C($sp)
	jal     obj_lib_802A2748
	nop
	sh      $v0, 0x001A($sp)
	li      $at, 0x42200000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	mtc1    $0, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	swc1    $f8, 0x001C($sp)
	bc1f    .L8030F70C
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x001C($sp)
.L8030F70C:
	lhu     $t6, 0x001A($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x001C($sp)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f18, %lo(math_sin)($at)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f18, $f4
	lwc1    $f8, 0x0164($t9)
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x00A0($t9)
	lhu     $t0, 0x001A($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x001C($sp)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f16, %lo(math_cos)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f4, $f16, $f18
	lwc1    $f8, 0x016C($t3)
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x00A8($t3)
	move    $a0, $0
	jal     object_c_802FA748
	li      $a1, 0x0190
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a2, 0x41A00000
	addiu   $a0, $t4, 0x00A4
	jal     object_c_802FA544
	lw      $a1, 0x0168($t4)
	beqz    $v0, .L8030F828
	nop
	lwc1    $f10, 0x001C($sp)
	mtc1    $0, $f16
	nop
	c.eq.s  $f10, $f16
	nop
	bc1f    .L8030F828
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D4($t5)
	bnez    $t6, .L8030F828
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t2, 0x0144($t9)
	lw      $t1, 0x0100($t0)
	subu    $t3, $t1, $t2
	sw      $t3, 0x0100($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0068($t4)
	lw      $t5, 0x0144($t4)
	lw      $t7, 0x01AC($t6)
	bne     $t5, $t7, .L8030F828
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	sw      $0, 0x01AC($t9)
.L8030F828:
	b       .L8030F830
	nop
.L8030F830:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030F840:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_8030E384
	li      $a0, 0x0190
	bnez    $v0, .L8030F8F0
	nop
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f10
	lwc1    $f6, 0x00A8($t7)
	lwc1    $f4, 0x00A8($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1t    .L8030F8F0
	nop
	lw      $t8, 0x0068($t6)
	lui     $at, %hi(object_c_80338C94)
	lwc1    $f6, %lo(object_c_80338C94)($at)
	lwc1    $f16, 0x00A8($t8)
	sub.s   $f18, $f4, $f16
	c.lt.s  $f6, $f18
	nop
	bc1t    .L8030F8F0
	nop
	lwc1    $f8, 0x00A0($t6)
	lwc1    $f10, 0x00A0($t8)
	jal     obj_lib_802A3634
	sub.s   $f12, $f8, $f10
	li      $at, 0x44610000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f0
	nop
	bc1t    .L8030F8F0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0200
	beqz    $t1, .L8030F950
	nop
.L8030F8F0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f18, 0x0168($t3)
	li      $a2, 0x41A00000
	addiu   $a0, $t3, 0x00A4
	add.s   $f8, $f18, $f6
	mfc1    $a1, $f8
	jal     object_c_802FA544
	nop
	beqz    $v0, .L8030F948
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0007
	sw      $t4, 0x014C($t5)
.L8030F948:
	b       .L8030F9A8
	nop
.L8030F950:
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43960000
	mtc1    $at, $f4
	lwc1    $f10, 0x0168($t7)
	li      $a2, 0x41A00000
	addiu   $a0, $t7, 0x00A4
	add.s   $f16, $f10, $f4
	mfc1    $a1, $f16
	jal     object_c_802FA544
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0FA0
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t6)
.L8030F9A8:
	b       .L8030F9B0
	nop
.L8030F9B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F9C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0015
	bnez    $at, .L8030FB24
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0003
	beqz    $t0, .L8030FB0C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0xC0800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00E4($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030FA3C
	nop
	jal     object_c_8030ECA8
	nop
	li      $at, 0xC0800000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	b       .L8030FB04
	swc1    $f8, 0x00E4($t2)
.L8030FA3C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $a0, 0x00D4($t3)
	jal     obj_lib_802A11A8
	lw      $a1, 0x0160($t3)
	sh      $v0, 0x001E($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43960000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t4)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8030FAF4
	nop
	lh      $t5, 0x001E($sp)
	slti    $at, $t5, 0x2001
	bnez    $at, .L8030FAF4
	nop
	slti    $at, $t5, 0x6000
	beqz    $at, .L8030FAF4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0009
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D4($t8)
	lw      $t0, 0x0160($t8)
	subu    $t1, $t9, $t0
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	bgez    $t3, .L8030FADC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x4000
	b       .L8030FAEC
	sw      $t4, 0x00C8($t5)
.L8030FADC:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x4000
	sw      $t6, 0x00C8($t7)
.L8030FAEC:
	b       .L8030FB04
	nop
.L8030FAF4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0005
	sw      $t8, 0x014C($t9)
.L8030FB04:
	b       .L8030FB24
	nop
.L8030FB0C:
	li      $at, 0xC1A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00E4($t0)
.L8030FB24:
	b       .L8030FB2C
	nop
.L8030FB2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030FB3C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0006
	bnez    $at, .L8030FC0C
	nop
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	lwc1    $f4, 0x00A8($t6)
	mtc1    $0, $f10
	lwc1    $f6, 0x00A8($t8)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1t    .L8030FB8C
	nop
	lw      $t9, 0x00EC($t6)
	andi    $t0, $t9, 0x0400
	beqz    $t0, .L8030FC0C
	nop
.L8030FB8C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0009
	sw      $t1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t3)
	lui     $t4, %hi(object)
	lui     $t5, %hi(obj_mario)
	lw      $t5, %lo(obj_mario)($t5)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f8
	lwc1    $f4, 0x00A0($t5)
	lwc1    $f18, 0x00A0($t4)
	sub.s   $f6, $f18, $f4
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8030FBF4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x4000
	b       .L8030FC04
	sw      $t7, 0x00C8($t8)
.L8030FBF4:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t6, -0x4000
	sw      $t6, 0x00C8($t9)
.L8030FC04:
	b       .L8030FC24
	nop
.L8030FC0C:
	li      $at, 0x42480000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t0)
.L8030FC24:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030FC34:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x00A8($t6)
	lwc1    $f6, 0x00A8($t7)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	nop
	bc1t    .L8030FC7C
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0400
	beqz    $t9, .L8030FCA0
	nop
.L8030FC7C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	b       .L8030FCDC
	swc1    $f16, 0x00B8($t2)
.L8030FCA0:
	li      $at, 0x40A00000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338C98)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338C98)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338C9C)
	lwc1    $f4, %lo(object_c_80338C9C)($at)
	lwc1    $f18, 0x00B8($t3)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0154($t4)
.L8030FCDC:
	b       .L8030FCE4
	nop
.L8030FCE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030FCF4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0104($t7)
	bltz    $t8, .L8030FD20
	nop
	lw      $t9, 0x0144($t6)
	lw      $t0, 0x0100($t7)
	bne     $t9, $t0, .L8030FD6C
	nop
.L8030FD20:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000B
	sw      $t1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x46800000
	mtc1    $at, $f6
	lw      $t4, 0x0068($t3)
	lw      $t5, 0x00D4($t3)
	lwc1    $f4, 0x0108($t4)
	mtc1    $t5, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	sub.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t6, $f4
	b       .L8030FE28
	sw      $t6, 0x00C8($t3)
.L8030FD6C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lw      $t9, 0x0068($t7)
	lw      $t0, 0x0144($t7)
	li      $at, 0x43340000
	lwc1    $f10, 0x0108($t9)
	mtc1    $t0, $f4
	lwc1    $f8, 0x00A0($t9)
	mul.s   $f16, $f6, $f10
	mtc1    $at, $f10
	cvt.s.w $f6, $f4
	add.s   $f18, $f8, $f16
	mul.s   $f8, $f6, $f10
	sub.s   $f16, $f18, $f8
	swc1    $f16, 0x0004($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0164($t1)
	lw      $t2, 0x0068($t1)
	sub.s   $f10, $f4, $f6
	lwc1    $f18, 0x0110($t2)
	mul.s   $f8, $f18, $f10
	add.s   $f16, $f8, $f6
	swc1    $f16, 0x00A0($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lw      $t5, 0x0068($t4)
	lwc1    $f8, 0x0168($t4)
	lwc1    $f4, 0x0110($t5)
	mul.s   $f10, $f4, $f18
	add.s   $f6, $f10, $f8
	swc1    $f6, 0x00A4($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t6, 0x0068($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f16, 0x010C($t6)
	lwc1    $f10, 0x0110($t6)
	sub.s   $f18, $f16, $f4
	mul.s   $f8, $f10, $f18
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x00A8($t8)
.L8030FE28:
	b       .L8030FE30
	nop
.L8030FE30:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_8030FE38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00F8($t7)
	beq     $t8, $at, .L8030FE70
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	lw      $t1, 0x0068($t9)
	sw      $t0, 0x0100($t1)
.L8030FE70:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x0104($t3)
	bne     $t4, $at, .L8030FEB4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0005
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0144($t7)
	lw      $t9, 0x0068($t7)
	b       .L8030FFE0
	sw      $t8, 0x01AC($t9)
.L8030FEB4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0068($t0)
	lw      $t1, 0x0144($t0)
	lw      $t3, 0x0100($t2)
	bne     $t1, $t3, .L8030FFE0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x0003
	beqz    $t6, .L8030FFA8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0xC1700000
	mtc1    $at, $f6
	lwc1    $f4, 0x00E4($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8030FF50
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	sw      $0, 0x0100($t9)
	jal     object_c_8030ECA8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t0)
	li      $at, 0xC1700000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f10
	b       .L8030FFA0
	swc1    $f10, 0x00E4($t2)
.L8030FF50:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0068($t1)
	jal     obj_lib_802A3634
	lwc1    $f12, 0x0108($t3)
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f18, $f0, $f16
	swc1    $f18, 0x00B8($t4)
	li      $at, 0x42C80000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00EC($t6)
.L8030FFA0:
	b       .L8030FFE0
	nop
.L8030FFA8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f8
	lwc1    $f6, 0x00B0($t7)
	c.le.s  $f6, $f8
	nop
	bc1f    .L8030FFE0
	nop
	li      $at, 0xC1A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t8)
.L8030FFE0:
	b       .L8030FFE8
	nop
.L8030FFE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030FFF8
object_c_8030FFF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x3FC00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x002C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	bnez    $t8, .L8031003C
	nop
	jal     object_c_8030ECF8
	nop
	b       .L80310194
	nop
.L8031003C:
	jal     obj_lib_802A2320
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, -0x0001
	sltiu   $at, $t1, 0x000F
	beqz    $at, .L80310168
	nop
	sll     $t1, $t1, 2
	lui     $at, %hi(object_c_80338CA0)
	addu    $at, $at, $t1
	lw      $t1, %lo(object_c_80338CA0)($at)
	jr      $t1
	nop
.globl L80310078
L80310078:
	jal     object_c_8030EF08
	nop
	b       .L80310168
	nop
.globl L80310088
L80310088:
	jal     object_c_8030F118
	nop
	b       .L80310168
	nop
.globl L80310098
L80310098:
	jal     object_c_8030F21C
	nop
	b       .L80310168
	nop
.globl L803100A8
L803100A8:
	jal     object_c_8030F440
	nop
	b       .L80310168
	nop
.globl L803100B8
L803100B8:
	jal     object_c_8030F6BC
	nop
	b       .L80310168
	nop
.globl L803100C8
L803100C8:
	jal     object_c_8030F840
	nop
	b       .L80310168
	nop
.globl L803100D8
L803100D8:
	jal     object_c_8030F9C0
	nop
	b       .L80310168
	nop
.globl L803100E8
L803100E8:
	jal     object_c_8030FB3C
	nop
	b       .L80310168
	nop
.globl L803100F8
L803100F8:
	jal     object_c_8030FC34
	nop
	b       .L80310168
	nop
.globl L80310108
L80310108:
	jal     object_c_8030FCF4
	nop
	b       .L80310168
	nop
.globl L80310118
L80310118:
	jal     object_c_8030FE38
	nop
	b       .L80310168
	nop
.globl L80310128
L80310128:
	jal     object_c_8030F508
	nop
	b       .L80310168
	nop
.globl L80310138
L80310138:
	jal     object_c_8030F58C
	nop
	b       .L80310168
	nop
.globl L80310148
L80310148:
	jal     object_c_8030F5CC
	nop
	b       .L80310168
	nop
.globl L80310158
L80310158:
	jal     object_c_8030F628
	nop
	b       .L80310168
	nop
.L80310168:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $a0, object_c_80332CA4
	la.l    $a0, object_c_80332CA4
	jal     object_c_802FB938
	lw      $a1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00F8($t3)
	jal     obj_lib_802A2348
	li      $a0, -0x004E
.L80310194:
	jal     map_data_803839CC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3FC00000
	mtc1    $at, $f10
	lw      $t5, 0x0144($t4)
	mtc1    $t5, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($t4)
	b       .L803101CC
	nop
.L803101CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803101DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(obj_mario)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     obj_lib_8029E27C
	lw      $a0, %lo(obj_mario)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x00F4($t6)
	li      $at, 0x437A0000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $v0, 0x01B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0160($t8)
	sh      $t9, 0x01B2($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, -0x003C
	sh      $t0, 0x01AE($t1)
	b       .L80310248
	nop
.L80310248:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80310258:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0006
	lw      $t7, 0x0178($t6)
	bne     $t7, $at, .L80310288
	nop
	jal     object_c_802FA3DC
	li      $a0, 0x0005
	b       .L803102F8
	nop
.L80310288:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0005
	lw      $t9, 0x0178($t8)
	bne     $t9, $at, .L803102D4
	nop
	jal     object_c_802FA3DC
	move    $a0, $0
	beqz    $v0, .L803102CC
	nop
	li.u    $a0, 0x300A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x300A0081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0009
	sh      $t0, 0x0040($t1)
.L803102CC:
	b       .L803102F8
	nop
.L803102D4:
	jal     obj_lib_802A0008
	li      $a0, 0x0009
	beqz    $v0, .L803102F0
	nop
	li.u    $a0, 0x300A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x300A0081
.L803102F0:
	b       .L80310308
	li      $v0, 0x0001
.L803102F8:
	b       .L80310308
	move    $v0, $0
	b       .L80310308
	nop
.L80310308:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80310318:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01AE($t6)
	blez    $t7, .L803103F4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01B0($t8)
	slti    $at, $t9, -0x0190
	beqz    $at, .L8031035C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       .L803103EC
	sh      $0, 0x01AE($t0)
.L8031035C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0178($t1)
	bnez    $t2, .L8031039C
	nop
	jal     obj_lib_802A0008
	li      $a0, 0x0009
	beqz    $v0, .L80310394
	nop
	li.u    $a0, 0x300A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x300A0081
	jal     obj_lib_8029F4B4
	li      $a0, 0x0006
.L80310394:
	b       .L803103E0
	nop
.L8031039C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t6, %hi(object)
	lh      $t4, 0x01AE($t3)
	addiu   $t5, $t4, -0x0001
	sh      $t5, 0x01AE($t3)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01AE($t6)
	bnez    $t7, .L803103E0
	nop
	li      $a0, 0x003C
	jal     object_c_802FA964
	li      $a1, 0x003C
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	subu    $t8, $0, $v0
	sh      $t8, 0x01AE($t9)
.L803103E0:
	li      $a0, 0x0190
	jal     object_c_802FA660
	li      $a1, 0x000A
.L803103EC:
	b       .L80310474
	nop
.L803103F4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0258
	jal     object_c_802FA660
	lh      $a0, 0x01B0($t0)
	jal     object_c_80310258
	nop
	beqz    $v0, .L80310474
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01AE($t1)
	beqz    $t2, .L80310444
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x01AE($t4)
	addiu   $t3, $t5, 0x0001
	b       .L80310474
	sh      $t3, 0x01AE($t4)
.L80310444:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01B0($t6)
	slti    $at, $t7, -0x0063
	bnez    $at, .L80310474
	nop
	li      $a0, 0x003C
	jal     object_c_802FA964
	li      $a1, 0x003C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $v0, 0x01AE($t8)
.L80310474:
	move    $a0, $0
	jal     object_c_802FA6D4
	li      $a1, 0x03E8
	b       .L80310488
	nop
.L80310488:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80310498
object_c_80310498:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L803104C8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	b       .L80310534
	sw      $t8, 0x00F0($t9)
.L803104C8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x00A0($t0)
	swc1    $f4, 0x0104($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x00A4($t1)
	swc1    $f6, 0x0108($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x00A8($t2)
	swc1    $f8, 0x010C($t2)
	jal     save_flag_get
	nop
	li      $at, 0x00020000
	and     $t3, $v0, $at
	beqz    $t3, .L80310524
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	b       .L80310534
	sw      $t4, 0x00F0($t5)
.L80310524:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
.L80310534:
	b       .L8031053C
	nop
.L8031053C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8031054C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $0, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80310650
	nop
	lui     $at, %hi(object_c_80338CDC)
	lwc1    $f8, %lo(object_c_80338CDC)($at)
	swc1    $f8, 0x0018($sp)
	sw      $0, 0x0028($sp)
.L8031058C:
	lw      $t8, 0x0028($sp)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	lui     $at, %hi(object_c_80332CCC+4*0)
	addu    $at, $at, $t9
	lwc1    $f16, %lo(object_c_80332CCC+4*0)($at)
	lwc1    $f10, 0x00A0($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	lui     $at, %hi(object_c_80332CCC+4*2)
	addu    $at, $at, $t2
	lwc1    $f6, %lo(object_c_80332CCC+4*2)($at)
	lwc1    $f4, 0x00A8($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	swc1    $f0, 0x001C($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0018($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80310634
	nop
	lwc1    $f10, 0x001C($sp)
	swc1    $f10, 0x0018($sp)
	lw      $t3, 0x0028($sp)
	sw      $t3, 0x002C($sp)
.L80310634:
	lw      $t4, 0x0028($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0003
	bnez    $at, .L8031058C
	sw      $t5, 0x0028($sp)
	b       .L8031066C
	nop
.L80310650:
	jal     rand
	nop
	li      $at, 0x0003
	div     $0, $v0, $at
	mfhi    $t6
	sw      $t6, 0x002C($sp)
	nop
.L8031066C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x002C($sp)
	lh      $t9, 0x01AC($t8)
	jal     obj_lib_802A3674
	subu    $a0, $t7, $t9
	sll     $t0, $v0, 2
	subu    $t0, $t0, $v0
	sll     $t0, $t0, 3
	addu    $t0, $t0, $v0
	sll     $t0, $t0, 4
	mtc1    $t0, $f18
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	cvt.s.w $f16, $f18
	swc1    $f16, 0x00F8($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x002C($sp)
	sh      $t2, 0x01AC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80332CCC+4*0)
	lh      $t5, 0x01AC($t4)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $at, $at, $t6
	lwc1    $f4, %lo(object_c_80332CCC+4*0)($at)
	swc1    $f4, 0x0164($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80332CCC+4*1)
	lh      $t7, 0x01AC($t8)
	lwc1    $f6, 0x00F8($t8)
	sll     $t9, $t7, 2
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 2
	addu    $at, $at, $t9
	lwc1    $f8, %lo(object_c_80332CCC+4*1)($at)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0168($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80332CCC+4*2)
	lh      $t1, 0x01AC($t0)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $at, $at, $t2
	lwc1    $f18, %lo(object_c_80332CCC+4*2)($at)
	swc1    $f18, 0x016C($t0)
	jal     obj_lib_802A1634
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	div.s   $f4, $f0, $f16
	swc1    $f4, 0x00FC($t3)
	b       .L80310764
	nop
.L80310764:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_80310774:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0030($sp)
	swc1    $f14, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F0($t6)
	beqz    $t7, .L80310818
	nop
	lw      $t8, 0x0154($t6)
	slti    $at, $t8, 0x003D
	bnez    $at, .L803107C8
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1t    .L803107E4
	nop
.L803107C8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	lw      $t1, 0x0110($t9)
	slt     $at, $t0, $t1
	bnez    $at, .L80310818
	nop
.L803107E4:
	jal     object_c_8031054C
	nop
	li      $a0, 0x012C
	jal     object_c_802FA964
	li      $a1, 0x012C
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x0110($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	b       .L80310960
	sw      $t3, 0x014C($t4)
.L80310818:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x0030($sp)
	lwc1    $f10, 0x00F4($t5)
	mov.s   $f12, $f8
	jal     atan2
	sub.s   $f14, $f10, $f8
	li      $t7, 0x4000
	subu    $t8, $t7, $v0
	sh      $t8, 0x002E($sp)
	lui     $at, %hi(object_c_80338CE0)
	lwc1    $f16, %lo(object_c_80338CE0)($at)
	swc1    $f16, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x00C8($t6)
	lh      $t0, 0x01B2($t6)
	subu    $t1, $t9, $t0
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	bgez    $t3, .L8031087C
	nop
	lh      $t4, 0x002E($sp)
	subu    $t5, $0, $t4
	sh      $t5, 0x002E($sp)
.L8031087C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t6, 0x002E($sp)
	lh      $t8, 0x01B2($t7)
	addu    $t9, $t8, $t6
	sh      $t9, 0x01B2($t7)
	jal     object_c_80310318
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $a0, 0x01B2($t0)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sll     $s0, $v0, 16
	sra     $t1, $s0, 16
	lui     $at, %hi(object_c_80338CE4)
	lwc1    $f4, %lo(object_c_80338CE4)($at)
	lwc1    $f18, 0x0100($t2)
	move    $s0, $t1
	mtc1    $s0, $f10
	mul.s   $f6, $f18, $f4
	cvt.s.w $f8, $f10
	mul.s   $f16, $f6, $f8
	trunc.w.s $f18, $f16
	mfc1    $t4, $f18
	nop
	sh      $t4, 0x002E($sp)
	addiu   $a0, $sp, 0x002E
	li      $a1, 0x0190
	jal     object_c_802FA25C
	li      $a2, 0x02BC
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $a1, 0x002E($sp)
	jal     object_c_802FA158
	lh      $a0, 0x01B2($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f4, 0x0100($t8)
	c.lt.s  $f10, $f4
	nop
	bc1f    .L80310948
	nop
	li      $at, 0x40000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0028($sp)
.L80310948:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0028($sp)
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0100
.L80310960:
	b       .L80310968
	nop
.L80310968:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_8031097C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44E10000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L803109BC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       .L80310A64
	sw      $0, 0x014C($t7)
.L803109BC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f10
	lwc1    $f8, 0x00FC($t8)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80310A2C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t0, %hi(object)
	mtc1    $0, $f8
	lwc1    $f16, 0x00FC($t9)
	lwc1    $f18, 0x00B8($t9)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x00FC($t9)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x00FC($t0)
	c.le.s  $f6, $f8
	nop
	bc1f    .L80310A2C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x0168($t1)
	lwc1    $f16, 0x00F8($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0168($t1)
.L80310A2C:
	jal     object_c_80310318
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x0190
	jal     object_c_802FA158
	lh      $a0, 0x01B2($t2)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	lw      $a1, 0x0018($sp)
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0100
.L80310A64:
	b       .L80310A6C
	nop
.L80310A6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80310A7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80310AFC
	nop
	jal     object_c_803101DC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F4($t7)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80310AFC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0009
	lw      $t1, 0x008C($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x008C($t0)
.L80310AFC:
	li      $at, 0x43960000
	mtc1    $at, $f12
	li      $at, 0x42200000
	mtc1    $at, $f14
	jal     object_c_80310774
	nop
	b       .L80310B1C
	nop
.L80310B1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80310B2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_803101DC
	nop
	jal     object_c_80310258
	nop
	beqz    $v0, .L80310BF8
	nop
	jal     obj_lib_8029FFA4
	nop
	beqz    $v0, .L80310BF8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80310BF8
	nop
	lw      $a0, 0x0160($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00D4($t6)
	slti    $at, $v0, 0x0800
	beqz    $at, .L80310BF8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x01B0($t7)
	slti    $at, $t8, 0x0400
	beqz    $at, .L80310BF8
	nop
	li.u    $a0, 0x503F4081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x503F4081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0004
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D4($t1)
	sw      $t2, 0x00C8($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x008C($t3)
	ori     $t5, $t4, 0x0008
	sw      $t5, 0x008C($t3)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
.L80310BF8:
	li      $at, 0x447A0000
	mtc1    $at, $f12
	li      $at, 0x42200000
	mtc1    $at, $f14
	jal     object_c_80310774
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x03E8
	jal     object_c_802FA748
	lw      $a0, 0x0160($t6)
	b       .L80310C2C
	nop
.L80310C2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80310C3C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x42700000
	li      $a2, 0x41200000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0100
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0178($t6)
	bne     $t7, $at, .L80310CE8
	nop
	jal     obj_lib_802A0008
	li      $a0, 0x000B
	beqz    $v0, .L80310C90
	nop
	li.u    $a0, 0x300A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x300A0081
.L80310C90:
	jal     object_c_802FA3DC
	move    $a0, $0
	beqz    $v0, .L80310CE0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F0($t8)
	beqz    $t9, .L80310CD0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       .L80310CE0
	sw      $0, 0x0110($t1)
.L80310CD0:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
.L80310CE0:
	b       .L80310EB0
	nop
.L80310CE8:
	lui     $t4, %hi(object)
	lui     $t5, %hi(obj_mario)
	lw      $t5, %lo(obj_mario)($t5)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00A4($t5)
	lwc1    $f4, 0x00A4($t4)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0178($t6)
	bne     $t7, $at, .L80310D30
	nop
	jal     object_c_802FA3DC
	li      $a0, 0x0004
	b       .L80310D74
	nop
.L80310D30:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B0($t8)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80310D74
	nop
	li      $at, 0x43480000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($sp)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L80310D74
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0002
.L80310D74:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, -0x3000
	sh      $t9, 0x01B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F0($t1)
	bnez    $t2, .L80310EB0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	bnez    $t4, .L80310E04
	nop
	mtc1    $0, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $v0, 0x01B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0160($t6)
	sh      $t7, 0x01B2($t6)
	li      $at, 0x43200000
	mtc1    $at, $f8
	lwc1    $f6, 0x001C($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80310E04
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t8)
.L80310E04:
	la.u    $t1, player_data
	la.l    $t1, player_data
	lw      $t2, 0x000C($t1)
	li.u    $at, 0x0C000203
	li.l    $at, 0x0C000203
	beq     $t2, $at, .L80310EB0
	nop
	li.u    $at, 0x00048000
	li.l    $at, 0x00048000
	and     $t3, $t2, $at
	bnez    $t3, .L80310EB0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t4)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80310EB0
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($sp)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L80310EB0
	nop
	li      $at, 0x42B40000
	mtc1    $at, $f6
	nop
	c.lt.s  $f18, $f6
	nop
	bc1f    .L80310EB0
	nop
	jal     collision_8024CA68
	li      $a0, 0x0001
	beqz    $v0, .L80310EB0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x00F0($t7)
.L80310EB0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0258
	jal     object_c_802FA660
	lh      $a0, 0x01B0($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0258
	jal     object_c_802FA6D4
	lw      $a0, 0x00C4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0258
	jal     object_c_802FA158
	lh      $a0, 0x01B2($t0)
	b       .L80310EF4
	nop
.L80310EF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80310F04:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	move    $a0, $0
	jal     object_c_802FA6D4
	li      $a1, 0x0320
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	li      $a1, 0x0320
	lw      $a0, 0x00C8($t6)
	jal     object_c_802FA748
	addu    $a0, $a0, $at
	move    $a0, $0
	jal     object_c_802FA7BC
	li      $a1, 0x0320
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L80311000
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0007
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00E4($t9)
	jal     object_c_802F9770
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	subu    $t0, $0, $v0
	sw      $t0, 0x00C4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00B0($t2)
	lwc1    $f10, 0x00B8($t2)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f16
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	swc1    $f0, 0x0100($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x00A0($t4)
	swc1    $f18, 0x0164($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t5)
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0168($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x00A8($t6)
	swc1    $f8, 0x016C($t6)
.L80311000:
	b       .L80311008
	nop
.L80311008:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80311018:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x42200000
	li      $a2, 0x41200000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0100
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x03E8
	jal     object_c_802FA660
	lh      $a0, 0x01B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x03E8
	jal     object_c_802FA6D4
	lw      $a0, 0x00C4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0258
	jal     object_c_802FA158
	lh      $a0, 0x01B2($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x03E8
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t9)
	beqz    $v0, .L80311104
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x00D0($t0)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C4($t0)
	bnez    $v0, .L80311104
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0005
	sw      $t1, 0x014C($t2)
	lui     $at, %hi(object_c_80338CE8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, %lo(object_c_80338CE8)($at)
	swc1    $f4, 0x0168($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, -0x0064
	sh      $t4, 0x01AE($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x008C($t6)
	ori     $t8, $t7, 0x0008
	sw      $t8, 0x008C($t6)
	jal     obj_lib_802A05D4
	nop
.L80311104:
	b       .L8031110C
	nop
.L8031110C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8031111C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x012C
	beqz    $at, .L8031115C
	nop
	li      $at, 0x43960000
	mtc1    $at, $f12
	li      $at, 0x41A00000
	mtc1    $at, $f14
	jal     object_c_80310774
	nop
	b       .L80311254
	nop
.L8031115C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	beqz    $t9, .L80311214
	nop
	li      $at, 0xC4FA0000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0164($t0)
	li      $at, 0xC47A0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x016C($t1)
	lui     $at, %hi(object_c_80338CEC)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, %lo(object_c_80338CEC)($at)
	lui     $t3, %hi(object)
	swc1    $f8, 0x00F4($t2)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00F4($t3)
	swc1    $f10, 0x0168($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80338CF0)
	lwc1    $f18, %lo(object_c_80338CF0)($at)
	lwc1    $f16, 0x00A4($t4)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L803111FC
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L8031120C
	nop
.L803111FC:
	li      $at, 0x41A00000
	mtc1    $at, $f12
	jal     object_c_8031097C
	nop
.L8031120C:
	b       .L80311254
	nop
.L80311214:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x0104($t7)
	swc1    $f4, 0x0164($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x0108($t8)
	swc1    $f6, 0x0168($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x010C($t9)
	swc1    $f8, 0x016C($t9)
.L80311254:
	b       .L8031125C
	nop
.L8031125C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8031126C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	lui     $t7, %hi(object)
	swc1    $f4, 0x00B0($t6)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00B0($t7)
	swc1    $f6, 0x00B8($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_8031129C
object_c_8031129C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A1634
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     object_c_802FA1B0
	lwc1    $f12, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $v0, 0x01B0($t8)
	jal     obj_lib_802A2748
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $v0, 0x01B2($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0006
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, .L80311318
	nop
	jal     object_c_80310F04
	nop
	b       .L80311544
	nop
.L80311318:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x0100($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	sltiu   $at, $t4, 0x0008
	beqz    $at, L803113E0
	nop
	sll     $t4, $t4, 2
	lui     $at, %hi(object_c_80338CF4)
	addu    $at, $at, $t4
	lw      $t4, %lo(object_c_80338CF4)($at)
	jr      $t4
	nop
.globl L80311358
L80311358:
	li      $at, 0x43960000
	mtc1    $at, $f12
	li      $at, 0x42200000
	mtc1    $at, $f14
	jal     object_c_80310774
	nop
	b       L803113E0
	nop
.globl L80311378
L80311378:
	li      $at, 0x42480000
	mtc1    $at, $f12
	jal     object_c_8031097C
	nop
	b       L803113E0
	nop
.globl L80311390
L80311390:
	jal     object_c_80310A7C
	nop
	b       L803113E0
	nop
.globl L803113A0
L803113A0:
	jal     object_c_80310B2C
	nop
	b       L803113E0
	nop
.globl L803113B0
L803113B0:
	jal     object_c_80310C3C
	nop
	b       L803113E0
	nop
.globl L803113C0
L803113C0:
	jal     object_c_8031111C
	nop
	b       L803113E0
	nop
.globl L803113D0
L803113D0:
	jal     object_c_80311018
	nop
	b       L803113E0
	nop
.globl L803113E0
L803113E0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $a0, object_c_80332CBC
	la.u    $a2, object_c_80332CF0
	la.l    $a2, object_c_80332CF0
	la.l    $a0, object_c_80332CBC
	jal     object_c_802FB518
	lw      $a1, 0x014C($t5)
	beqz    $v0, .L803114FC
	nop
	li.u    $a0, 0x50406081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50406081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x00F0($t6)
	bne     $t7, $at, .L80311454
	nop
	jal     save_flag_clr
	li      $a0, 0x00020000
	lui     $a0, %hi(object)
	la.u    $a2, o_13003DF8
	la.l    $a2, o_13003DF8
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0088
	b       .L80311488
	nop
.L80311454:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0002
	lw      $t9, 0x00F0($t8)
	bne     $t9, $at, .L80311488
	nop
	lui     $at, %hi(object_c_80338D14)
	lwc1    $f12, %lo(object_c_80338D14)($at)
	li      $at, 0x43960000
	mtc1    $at, $f14
	li.u    $a2, 0xC4688000
	jal     object_b_802F2B88
	li.l    $a2, 0xC4688000
.L80311488:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F0($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0006
	sw      $t1, 0x014C($t2)
	li      $at, 0xC0000000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x8000
	lw      $t5, 0x0160($t4)
	addu    $t6, $t5, $at
	sw      $t6, 0x00C8($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0009
	lw      $t8, 0x008C($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x008C($t7)
	jal     obj_lib_802A05B4
	nop
	b       .L80311544
	nop
.L803114FC:
	la.u    $t0, player_data
	la.l    $t0, player_data
	lw      $t1, 0x000C($t0)
	li.u    $at, 0x0C000203
	li.l    $at, 0x0C000203
	beq     $t1, $at, .L8031152C
	nop
	li.u    $at, 0x00048000
	li.l    $at, 0x00048000
	and     $t2, $t1, $at
	beqz    $t2, .L8031153C
	nop
.L8031152C:
	jal     obj_lib_802A05B4
	nop
	b       .L80311544
	nop
.L8031153C:
	jal     obj_lib_802A05D4
	nop
.L80311544:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x3000
	li      $a2, 0x0258
	jal     object_c_802FA900
	lh      $a0, 0x01B2($t3)
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L8031156C
	nop
.L8031156C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8031157C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L803115B4
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L803116A8
	nop
.L803115B4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	beqz    $t9, .L80311630
	nop
	li.u    $a0, 0x30690081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30690081
	sw      $0, 0x001C($sp)
.L803115D8:
	lui     $a0, %hi(object)
	la.u    $a2, o_13005354
	la.l    $a2, o_13005354
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0054
	lw      $t0, 0x001C($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0006
	bnez    $at, .L803115D8
	sw      $t1, 0x001C($sp)
	li      $at, 0xC1A00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0164($t2)
	lui     $at, %hi(object_c_80338D18)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, %lo(object_c_80338D18)($at)
	swc1    $f10, 0x016C($t3)
.L80311630:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	jal     o_script_80383CB4
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f16
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f18, $f0, $f16
	li      $t8, 0x1388
	trunc.w.s $f4, $f18
	mfc1    $t6, $f4
	nop
	subu    $t9, $t8, $t6
	sw      $t9, 0x00C4($t0)
	jal     rand
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
	li      $at, 0x42200000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F4($t2)
	jal     obj_lib_8029F694
	nop
.L803116A8:
	b       .L803116B0
	nop
.L803116B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_803116C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x45FA0000
	mtc1    $at, $f6
	lw      $t8, 0x0068($t7)
	lwc1    $f4, 0x00A4($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80311714
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L80311854
	nop
.L80311714:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	beqz    $t0, .L80311778
	nop
	jal     obj_lib_802A1634
	nop
	swc1    $f0, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80338D1C)
	lwc1    $f10, %lo(object_c_80338D1C)($at)
	lwc1    $f8, 0x00A4($t1)
	lwc1    $f12, 0x0018($sp)
	jal     atan2
	sub.s   $f14, $f8, $f10
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00F8($t2)
	jal     obj_lib_802A2748
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       .L80311814
	sw      $v0, 0x00FC($t3)
.L80311778:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	move    $a0, $t4
	jal     obj_lib_8029E27C
	lw      $a1, 0x0068($t4)
	swc1    $f0, 0x0018($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f12, 0x0018($sp)
	lw      $t6, 0x0068($t5)
	lwc1    $f16, 0x00A4($t5)
	lwc1    $f18, 0x00A4($t6)
	jal     atan2
	sub.s   $f14, $f16, $f18
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $a0, $t8
	jal     obj_lib_8029E694
	lw      $a1, 0x0068($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00FC($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $t0
	jal     obj_lib_8029E2F8
	lw      $a1, 0x0068($t0)
	lui     $at, %hi(object_c_80338D20)
	lwc1    $f4, %lo(object_c_80338D20)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00F4($t1)
.L80311814:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x008C
	jal     object_c_802FA660
	lw      $a0, 0x00F8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0320
	jal     obj_lib_8029E5EC
	lw      $a0, 0x00FC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x3000
	li      $a2, 0x0258
	jal     object_c_802FA900
	lw      $a0, 0x00FC($t4)
.L80311854:
	jal     obj_lib_802A2644
	nop
	b       .L80311864
	nop
.L80311864:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80311874
object_c_80311874:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L803118A8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L803118B8
	nop
	b       .L803118C8
	nop
.L803118A8:
	jal     object_c_8031157C
	nop
	b       .L803118C8
	nop
.L803118B8:
	jal     object_c_803116C0
	nop
	b       .L803118C8
	nop
.L803118C8:
	b       .L803118D0
	nop
.L803118D0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803118E4
object_c_803118E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li      $at, 0x0078
	lh      $t7, 0x00AA($t6)
	bne     $t7, $at, .L8031193C
	nop
	li      $at, 0x41000000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	li      $at, 0x40A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0030($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0144($t0)
.L8031193C:
	b       .L80311944
	nop
.L80311944:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80311954:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	lw      $t8, 0x00F4($t6)
	slt     $at, $t8, $t7
	beqz    $at, .L803119CC
	nop
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lwc1    $f4, 0x00A4($t6)
	mtc1    $0, $f10
	lwc1    $f6, 0x00A4($t9)
	sub.s   $f8, $f4, $f6
	c.le.s  $f8, $f10
	nop
	bc1f    .L803119CC
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     obj_lib_802A48BC
	nop
	beqz    $v0, .L803119CC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
.L803119CC:
	b       .L803119D4
	nop
.L803119D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803119E4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332CF8)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $a0, $a0, $t8
	jal     object_c_802F97BC
	lh      $a0, %lo(object_c_80332CF8)($a0)
	sw      $v0, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	li      $at, 0x0001
	bne     $t9, $at, .L80311AD0
	nop
	la.u    $a0, o_130053C4
	jal     obj_lib_8029F95C
	la.l    $a0, o_130053C4
	sw      $v0, 0x0028($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0028($sp)
	sw      $t0, 0x0068($t1)
	la.u    $a0, o_130053DC
	jal     obj_lib_8029F95C
	la.l    $a0, o_130053DC
	sw      $v0, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0028($sp)
	sw      $t2, 0x0068($t3)
	la.u    $a0, 0x07023604
	jal     segment_to_virtual
	la.l    $a0, 0x07023604
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	move    $s0, $v0
	lui     $t5, %hi(object)
	sw      $s0, 0x0100($t4)
	lw      $t5, %lo(object)($t5)
	sw      $s0, 0x00FC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0104($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	li      $at, 0x42700000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t9)
	b       .L80311AFC
	nop
.L80311AD0:
	lw      $t0, 0x002C($sp)
	li      $at, 0x0002
	bne     $t0, $at, .L80311AFC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x003C
	sw      $t2, 0x00F4($t3)
.L80311AFC:
	b       .L80311B04
	nop
.L80311B04:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_80311B18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FCC00
	li      $a0, 0x0001
	beqz    $v0, .L80311B58
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	li      $at, 0x41A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
.L80311B58:
	li      $a0, 0x4000
	jal     obj_lib_8029E5EC
	li      $a1, 0x09C4
	b       .L80311B6C
	nop
.L80311B6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80311B7C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	jal     obj_lib_802A2C5C
	move    $a0, $0
	li      $at, -0x0001
	bne     $v0, $at, .L80311BBC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sh      $t6, 0x01B0($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	b       .L80311D74
	sw      $t8, 0x014C($t9)
.L80311BBC:
	lui     $t0, %hi(object)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x00A4($t1)
	lwc1    $f4, 0x00A4($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	li      $at, 0x428C0000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0028($sp)
	li.u    $a0, 0x60050001
	jal     obj_sfx_802CA190
	li.l    $a0, 0x60050001
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f16, 0x002C($sp)
	c.lt.s  $f16, $f18
	nop
	bc1t    .L80311C30
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0104($t2)
	andi    $t4, $t3, 0x00FF
	slti    $at, $t4, 0x0023
	bnez    $at, .L80311C7C
	nop
.L80311C30:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0104($t5)
	andi    $t7, $t6, 0x00FF
	slti    $at, $t7, 0x0023
	bnez    $at, .L80311C5C
	nop
	li      $at, 0x42700000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($sp)
.L80311C5C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC3FA0000
	li      $a2, 0x42C80000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
	b       .L80311C94
	nop
.L80311C7C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x447A0000
	li      $a2, 0x41F00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
.L80311C94:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x002C($sp)
	lui     $at, %hi(object_c_80338D24)
	lwc1    $f6, 0x0110($t8)
	lwc1    $f16, %lo(object_c_80338D24)($at)
	add.s   $f10, $f6, $f8
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0028($sp)
	jal     object_c_802FA2BC
	li      $a2, 0x43160000
	lui     $at, %hi(object_c_80338D28)
	lwc1    $f14, %lo(object_c_80338D28)($at)
	jal     object_c_802FA5D0
	lwc1    $f12, 0x002C($sp)
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x41700000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t9)
	lw      $a0, 0x010C($t9)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $a1, $f10
	jal     obj_lib_8029E5EC
	nop
	jal     obj_lib_8029FFA4
	nop
	beqz    $v0, .L80311D74
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0003
	beqz    $t3, .L80311D74
	nop
	li      $at, 0x40800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	la.u    $t6, o_13002528
	la.l    $t6, o_13002528
	li      $t5, 0x0096
	sw      $t5, 0x0018($sp)
	sw      $t6, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0064
	move    $a3, $0
	sw      $t4, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f16, 0x0010($sp)
.L80311D74:
	jal     obj_lib_802A0114
	nop
	beqz    $v0, .L80311DB4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x003D
	bnez    $at, .L80311DAC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sh      $t9, 0x01B2($t0)
.L80311DAC:
	b       .L80311DC0
	nop
.L80311DB4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0154($t1)
.L80311DC0:
	b       .L80311DC8
	nop
.L80311DC8:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_80311DD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L80311E6C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0006
	bnez    $at, .L80311E64
	nop
	lw      $t9, 0x00EC($t7)
	andi    $t0, $t9, 0x0200
	beqz    $t0, .L80311E64
	nop
	li.u    $a0, 0x50684081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50684081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t1)
	lw      $a2, 0x00A4($t1)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t2)
.L80311E64:
	b       .L80311E8C
	nop
.L80311E6C:
	jal     object_c_802FA360
	li      $a0, 0x0002
	beqz    $v0, .L80311E8C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0005
	sw      $t3, 0x014C($t4)
.L80311E8C:
	b       .L80311E94
	nop
.L80311E94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80311EA4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01AC($t6)
	bnez    $t7, .L80311FB4
	nop
	move    $a0, $0
	jal     obj_lib_8029E5EC
	li      $a1, 0x00C8
	beqz    $v0, .L80311F84
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	li      $at, 0x43C80000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     obj_lib_802A48BC
	nop
	beqz    $v0, .L80311F7C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x01AE($t9)
	beqz    $t0, .L80311F6C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01B2($t1)
	beqz    $t2, .L80311F54
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0084
	sh      $t3, 0x01AC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       .L80311F64
	sh      $0, 0x01AE($t5)
.L80311F54:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0038
	sh      $t6, 0x01AC($t7)
.L80311F64:
	b       .L80311F7C
	nop
.L80311F6C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0025
	sh      $t8, 0x01AC($t9)
.L80311F7C:
	b       .L80311FAC
	nop
.L80311F84:
	jal     obj_lib_8029F4B4
	move    $a0, $0
	jal     object_a_802BED7C
	li      $a0, 0x0001
	li      $at, 0x40800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t0)
.L80311FAC:
	b       .L80312058
	nop
.L80311FB4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01AC($t1)
	blez    $t2, .L80312018
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	lh      $a3, 0x01AC($t3)
	sw      $v0, 0x001C($sp)
	lw      $t4, 0x001C($sp)
	beqz    $t4, .L80312010
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, -0x0001
	sh      $t5, 0x01AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
.L80312010:
	b       .L80312058
	nop
.L80312018:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AE($t8)
	beqz    $t9, .L80312058
	nop
	lui     $at, %hi(object_c_80338D2C)
	lwc1    $f12, %lo(object_c_80338D2C)($at)
	lui     $at, %hi(object_c_80338D30)
	li.u    $a2, 0xC5D3B000
	li.l    $a2, 0xC5D3B000
	lwc1    $f14, %lo(object_c_80338D30)($at)
	jal     obj_lib_802A5588
	li      $a3, 0x43480000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x01AE($t0)
.L80312058:
	b       .L80312060
	nop
.L80312060:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80312070
object_c_80312070:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0006
	beqz    $at, .L80312110
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338D34)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338D34)($at)
	jr      $t7
	nop
.globl L803120B0
L803120B0:
	jal     object_c_80311954
	nop
	b       .L80312110
	nop
.globl L803120C0
L803120C0:
	jal     object_c_803119E4
	nop
	b       .L80312110
	nop
.globl L803120D0
L803120D0:
	jal     object_c_80311B18
	nop
	b       .L80312110
	nop
.globl L803120E0
L803120E0:
	jal     object_c_80311B7C
	nop
	b       .L80312110
	nop
.globl L803120F0
L803120F0:
	jal     object_c_80311DD8
	nop
	b       .L80312110
	nop
.globl L80312100
L80312100:
	jal     object_c_80311EA4
	nop
	b       .L80312110
	nop
.L80312110:
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	jal     obj_lib_802A4F58
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t1, object_c_80332CF8
	la.l    $t1, object_c_80332CF8
	lw      $t9, 0x0144($t8)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t2, $t0, $t1
	lwc1    $f12, 0x0004($t2)
	jal     obj_lib_802A390C
	lwc1    $f14, 0x0008($t2)
	b       .L80312158
	nop
.L80312158:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80312168
object_c_80312168:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x01B0($t7)
	bnez    $t8, .L803121C4
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L803121F0
	nop
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lwc1    $f10, 0x00A8($t6)
	mtc1    $0, $f18
	lwc1    $f8, 0x00A8($t9)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    .L803121F0
	nop
.L803121C4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lh      $t2, 0x01B0($t1)
	bnez    $t2, .L803121F0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	lw      $t5, 0x0068($t4)
	sh      $t3, 0x01AE($t5)
.L803121F0:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_80312200
object_c_80312200:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80312238
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	lw      $t9, 0x0068($t8)
	sh      $t7, 0x01B2($t9)
.L80312238:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_80312248
object_c_80312248:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, .L80312334
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0074($t8)
	andi    $t0, $t9, 0x0008
	bnez    $t0, .L8031232C
	nop
	sw      $0, 0x0030($sp)
.L80312280:
	lw      $t1, 0x0030($sp)
	lui     $t3, %hi(object_c_80332D10+2*1)
	sll     $t2, $t1, 2
	addu    $t3, $t3, $t2
	lh      $t3, %lo(object_c_80332D10+2*1)($t3)
	sh      $t3, 0x002E($sp)
	lw      $t4, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a1, %hi(object_c_80332D10+2*0)
	la.u    $t8, o_13005414
	sll     $t5, $t4, 2
	addu    $a1, $a1, $t5
	la.l    $t8, o_13005414
	li      $t7, 0x003C
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	lh      $a1, %lo(object_c_80332D10+2*0)($a1)
	move    $a2, $0
	lh      $a3, 0x002E($sp)
	andi    $a0, $t4, 0x0001
	jal     obj_lib_8029EF64
	sw      $t6, 0x0010($sp)
	sw      $v0, 0x0034($sp)
	lw      $t9, 0x0034($sp)
	beqz    $t9, .L80312304
	nop
	lh      $t0, 0x002E($sp)
	blez    $t0, .L80312304
	nop
	lw      $t2, 0x0034($sp)
	li      $t1, 0x8000
	sw      $t1, 0x00D4($t2)
.L80312304:
	lw      $t3, 0x0030($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0006
	bnez    $at, .L80312280
	sw      $t4, 0x0030($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
.L8031232C:
	b       .L80312358
	nop
.L80312334:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0074($t8)
	andi    $t0, $t9, 0x0008
	beqz    $t0, .L80312358
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
.L80312358:
	b       .L80312360
	nop
.L80312360:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_c_80312370:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, .L80312614
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D0($t8)
	beqz    $t9, .L8031243C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, -0x07D0
	li      $a2, 0x00C8
	jal     obj_lib_8029E530
	lw      $a0, 0x0114($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0114($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	move    $a0, $0
	lw      $a1, 0x0114($t2)
	jal     object_c_802FA6D4
	subu    $a1, $0, $a1
	beqz    $v0, .L8031242C
	nop
	li.u    $a0, 0x315B0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x315B0081
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D4($t3)
	addiu   $t5, $t4, -0x4000
	sw      $t5, 0x00C8($t3)
	li      $at, 0x43480000
	mtc1    $at, $f12
	jal     object_c_802F9820
	nop
	jal     object_a_802AE334
	nop
	jal     object_c_802F9904
	li      $a0, 0x0002
.L8031242C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	b       .L80312614
	sw      $0, 0x0154($t6)
.L8031243C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lhu     $t8, 0x00D6($t7)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x002C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00D6($t1)
	sra     $t4, $t2, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0028($sp)
	lui     $t3, %hi(obj_mario)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t3, %lo(obj_mario)($t3)
	lwc1    $f10, 0x00A0($t6)
	lwc1    $f8, 0x00A0($t3)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($sp)
	lui     $t7, %hi(obj_mario)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, %lo(obj_mario)($t7)
	lwc1    $f4, 0x00A8($t8)
	lwc1    $f18, 0x00A8($t7)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f16, $f8, $f10
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f16, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f6, 0x0028($sp)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f8, $f16, $f6
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x0018($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x003D
	bnez    $at, .L80312608
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f18, 0x015C($t9)
	c.lt.s  $f16, $f18
	nop
	bc1t    .L8031255C
	nop
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	li.u    $at, 0x00020339
	li.l    $at, 0x00020339
	lw      $t2, 0x000C($t1)
	bne     $t2, $at, .L80312608
	nop
.L8031255C:
	lui     $t4, %hi(obj_mario)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, %lo(obj_mario)($t4)
	li      $at, 0x43480000
	lwc1    $f4, 0x00A4($t5)
	lwc1    $f6, 0x00A4($t4)
	mtc1    $at, $f10
	sub.s   $f8, $f6, $f4
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80312608
	nop
	jal     obj_lib_802A3634
	lwc1    $f12, 0x001C($sp)
	li      $at, 0x430C0000
	mtc1    $at, $f18
	nop
	c.lt.s  $f0, $f18
	nop
	bc1f    .L80312608
	nop
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f16, 0x0018($sp)
	c.lt.s  $f16, $f6
	nop
	bc1f    .L80312608
	nop
	li      $at, 0xC3E10000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f16
	nop
	bc1f    .L80312608
	nop
	li.u    $a0, 0x315A0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x315A0081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t6)
.L80312608:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0114($t7)
.L80312614:
	b       .L8031261C
	nop
.L8031261C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_8031262C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x4000
	lw      $t7, 0x00D0($t6)
	beq     $t7, $at, .L8031268C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x03E8
	li      $a2, 0x00C8
	jal     obj_lib_8029E530
	lw      $a0, 0x0114($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0114($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a0, 0x4000
	jal     object_c_802FA6D4
	lw      $a1, 0x0114($t0)
	b       .L80312734
	nop
.L8031268C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x003D
	bnez    $at, .L803126C0
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	b       .L80312728
	sw      $0, 0x00D8($t4)
.L803126C0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x001F
	bnez    $at, .L80312728
	nop
	lui     $t7, %hi(gfx_frame)
	lw      $t7, %lo(gfx_frame)($t7)
	andi    $t8, $t7, 0x0003
	bnez    $t8, .L803126F8
	nop
	li.u    $a0, 0x315B0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x315B0081
.L803126F8:
	lui     $t9, %hi(gfx_frame)
	lw      $t9, %lo(gfx_frame)($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	andi    $t0, $t9, 0x0001
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 4
	addiu   $t2, $t1, -0x00C8
	sw      $t2, 0x00D8($t3)
.L80312728:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0114($t4)
.L80312734:
	b       .L8031273C
	nop
.L8031273C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8031274C
object_c_8031274C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bnez    $t8, .L80312784
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L803127E8
	nop
.L80312784:
	lui     $at, %hi(object_c_80338D4C)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, %lo(object_c_80338D4C)($at)
	swc1    $f4, 0x0030($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $s0, 0x014C($t0)
	beqz    $s0, .L803127C0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L803127D0
	nop
	b       .L803127E0
	nop
.L803127C0:
	jal     object_c_80312370
	nop
	b       .L803127E0
	nop
.L803127D0:
	jal     object_c_8031262C
	nop
	b       .L803127E0
	nop
.L803127E0:
	jal     map_data_803839CC
	nop
.L803127E8:
	b       .L803127F0
	nop
.L803127F0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80312804:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	jal     object_c_802FA39C
	li      $a1, 0x0019
	beqz    $v0, .L8031285C
	nop
	li.u    $a0, 0x30274081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30274081
	jal     object_a_802AE334
	nop
	jal     obj_lib_802A05D4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000A
	sw      $t6, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       .L803128E8
	sw      $0, 0x0154($t8)
.L8031285C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0097
	bnez    $at, .L803128B0
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L803128B0
	nop
	li.u    $a0, 0x30264081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30264081
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	b       .L803128E8
	sw      $t1, 0x014C($t2)
.L803128B0:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	beqz    $t4, .L803128E8
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	addiu   $t7, $t6, -0x0001
	sw      $t7, 0x00F4($t5)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     obj_lib_802A18DC
	nop
.L803128E8:
	b       .L803128F0
	nop
.L803128F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80312900:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0097
	bnez    $at, .L80312930
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       .L80312A3C
	sw      $0, 0x014C($t8)
.L80312930:
	jal     object_c_802F9730
	nop
	beqz    $v0, .L80312A24
	nop
	li      $a0, 0x0001
	jal     object_c_802FA39C
	li      $a1, 0x0008
	beqz    $v0, .L80312A24
	nop
	li      $t9, -0x2000
	sh      $t9, 0x002E($sp)
.L8031295C:
	lhu     $t0, 0x002E($sp)
	lui     $at, %hi(math_sin)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t4, $f10
	nop
	sh      $t4, 0x002C($sp)
	lhu     $t5, 0x002E($sp)
	lui     $at, %hi(math_cos)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t9, $f6
	nop
	sh      $t9, 0x002A($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $t2, o_130002E4
	la.l    $t2, o_130002E4
	li      $t1, 0x00A8
	sw      $t1, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	lh      $a1, 0x002C($sp)
	li      $a2, 0x001E
	lh      $a3, 0x002A($sp)
	jal     obj_lib_8029EF64
	sw      $t0, 0x0010($sp)
	lh      $t3, 0x002E($sp)
	addiu   $t4, $t3, 0x0555
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	slti    $at, $t6, 0x2000
	bnez    $at, .L8031295C
	sh      $t4, 0x002E($sp)
	b       .L80312A3C
	nop
.L80312A24:
	jal     obj_lib_802A0008
	li      $a0, 0x001E
	beqz    $v0, .L80312A3C
	nop
	jal     obj_lib_802A05B4
	nop
.L80312A3C:
	b       .L80312A44
	nop
.L80312A44:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_80312A54
object_c_80312A54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x3FC00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0030($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, .L80312AA0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80312AB0
	nop
	b       .L80312AC0
	nop
.L80312AA0:
	jal     object_c_80312804
	nop
	b       .L80312AC0
	nop
.L80312AB0:
	jal     object_c_80312900
	nop
	b       .L80312AC0
	nop
.L80312AC0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332D28
	la.l    $a0, object_c_80332D28
	jal     object_c_802FB938
	lw      $a1, 0x014C($t8)
	b       .L80312AE0
	nop
.L80312AE0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80312AF4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $0, 0x002C($sp)
.L80312B00:
	lw      $t6, 0x002C($sp)
	la.u    $t8, object_c_80332D48
	la.l    $t8, object_c_80332D48
	sll     $t7, $t6, 2
	addu    $t9, $t7, $t8
	lh      $a1, 0x0000($t9)
	lh      $a3, 0x0002($t9)
	lui     $at, %hi(object_c_80338D50)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, %lo(object_c_80338D50)($at)
	la.u    $t2, o_130054A0
	la.l    $t2, o_130054A0
	li      $t1, 0x00A6
	sw      $t1, 0x0018($sp)
	sw      $t2, 0x001C($sp)
	move    $a0, $0
	move    $a2, $0
	sw      $t0, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f4, 0x0010($sp)
	lw      $t3, 0x002C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0004
	bnez    $at, .L80312B00
	sw      $t4, 0x002C($sp)
	b       .L80312B70
	nop
.L80312B70:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_80312B80:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, .L80312C00
	nop
	jal     obj_lib_8029F4B4
	li      $a0, 0x0003
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	lw      $t2, 0x0100($t0)
	slt     $at, $t2, $t1
	beqz    $at, .L80312BF8
	nop
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L80312BF8
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
.L80312BF8:
	b       .L80312CF4
	nop
.L80312C00:
	jal     obj_lib_8029F4B4
	li      $a0, 0x0001
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00EC($t5)
	andi    $t7, $t6, 0x0010
	beqz    $t7, .L80312CF4
	nop
	jal     object_c_80312AF4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x003D
	bnez    $at, .L80312CF4
	nop
	lw      $a2, 0x00F4($t8)
	li.u    $a3, 0x3CA3D70A
	li      $t0, 0x0005
	li      $t1, 0x0032
	li      $t2, 0x00C8
	sw      $t2, 0x0018($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	li.l    $a3, 0x3CA3D70A
	addiu   $a0, $t8, 0x01AC
	jal     object_c_802FA830
	addiu   $a1, $t8, 0x00C8
	beqz    $v0, .L80312CF4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0100($t3)
	beqz    $t4, .L80312CA4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0100($t5)
	addiu   $t7, $t6, -0x0001
	b       .L80312CF4
	sw      $t7, 0x0100($t5)
.L80312CA4:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L80312CF4
	nop
	li.u    $a0, 0x504F0081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x504F0081
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t8)
	li      $at, 0x42A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x01AC($t1)
.L80312CF4:
	b       .L80312CFC
	nop
.L80312CFC:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80312D0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0010
	bnez    $t8, .L80312D40
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L80312E8C
	sw      $0, 0x014C($t9)
.L80312D40:
	jal     object_c_80312AF4
	nop
	jal     obj_lib_8029F4B4
	move    $a0, $0
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0200
	beqz    $t2, .L80312DB0
	nop
	jal     obj_lib_802A3268
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00C8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80338D54)
	lwc1    $f6, %lo(object_c_80338D54)($at)
	lwc1    $f4, 0x00B8($t4)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, -0x0009
	lw      $t6, 0x008C($t5)
	and     $t7, $t6, $at
	sw      $t7, 0x008C($t5)
.L80312DB0:
	mtc1    $0, $f12
	lui     $at, %hi(object_c_80338D58)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338D58)($at)
	beqz    $v0, .L80312E8C
	nop
	jal     obj_lib_8029FFA4
	nop
	beqz    $v0, .L80312E8C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D4($t8)
	sw      $t9, 0x00C8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338D5C)
	lwc1    $f16, %lo(object_c_80338D5C)($at)
	lwc1    $f10, 0x015C($t0)
	c.le.s  $f16, $f10
	nop
	bc1f    .L80312E20
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	b       .L80312E54
	sw      $t2, 0x00F4($t1)
.L80312E20:
	jal     rand
	nop
	andi    $s0, $v0, 0xFFFF
	bgez    $s0, .L80312E40
	andi    $a0, $s0, 0x1FFF
	beqz    $a0, .L80312E40
	nop
	addiu   $a0, $a0, -0x2000
.L80312E40:
	jal     object_c_802FAA64
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00F4($t3)
.L80312E54:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
	move    $a0, $0
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0100($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t5, 0x008C($t7)
	ori     $t9, $t5, 0x0008
	sw      $t9, 0x008C($t7)
.L80312E8C:
	b       .L80312E94
	nop
.L80312E94:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80312EA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	bnez    $t8, .L80312EDC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L803130F4
	sw      $0, 0x014C($t9)
.L80312EDC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338D60)
	lwc1    $f14, %lo(object_c_80338D60)($at)
	jal     object_c_802FA5D0
	lwc1    $f12, 0x00FC($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80338D64)
	lwc1    $f6, %lo(object_c_80338D64)($at)
	lwc1    $f4, 0x00B8($t1)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	li      $a0, 0x0002
	jal     obj_lib_8029F514
	lw      $a1, 0x0024($sp)
	li.u    $a2, 0x504E0081
	li.l    $a2, 0x504E0081
	li      $a0, 0x0003
	jal     object_c_802FA428
	li      $a1, 0x000D
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F8($t2)
	beqz    $t3, .L80312F68
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0400
	jal     object_c_802FB0CC
	lw      $a0, 0x00F4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       .L803130E0
	sw      $v0, 0x00F8($t5)
.L80312F68:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338D68)
	lwc1    $f16, %lo(object_c_80338D68)($at)
	lwc1    $f10, 0x015C($t6)
	c.le.s  $f16, $f10
	nop
	bc1f    .L80312FB4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0160($t7)
	sw      $t8, 0x00F4($t7)
	li      $a0, 0x0014
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0100($t9)
.L80312FB4:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x00F4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $s0, $v0
	bnez    $s0, .L803130E0
	sw      $s0, 0x00F8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	lwc1    $f18, 0x015C($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80313024
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0160($t2)
	sw      $t3, 0x00F4($t2)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	b       .L803130E0
	swc1    $f6, 0x00FC($t4)
.L80313024:
	li      $at, 0x41200000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0100($t6)
	beqz    $t8, .L80313068
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0100($t7)
	addiu   $t0, $t9, -0x0001
	b       .L803130E0
	sw      $t0, 0x0100($t7)
.L80313068:
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L803130E0
	nop
	jal     rand
	nop
	andi    $t1, $v0, 0x0003
	beqz    $t1, .L803130BC
	nop
	jal     object_c_802FAA64
	li      $a0, 0x2000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00F4($t3)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	b       .L803130E0
	sw      $v0, 0x0100($t2)
.L803130BC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0100($t5)
.L803130E0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0400
	jal     obj_lib_8029E5EC
	lw      $a0, 0x00F4($t6)
.L803130F4:
	b       .L803130FC
	nop
.L803130FC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80313110
object_c_80313110:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $t6, 0x5072C081
	li.l    $t6, 0x5072C081
	sw      $t6, 0x01C4($t7)
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	jal     obj_lib_802A2320
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, .L8031317C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8031318C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8031319C
	nop
	b       .L803131AC
	nop
.L8031317C:
	jal     object_c_80312B80
	nop
	b       .L803131AC
	nop
.L8031318C:
	jal     object_c_80312D0C
	nop
	b       .L803131AC
	nop
.L8031319C:
	jal     object_c_80312EA8
	nop
	b       .L803131AC
	nop
.L803131AC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $a0, object_c_80332D38
	la.l    $a0, object_c_80332D38
	jal     object_c_802FB938
	lw      $a1, 0x014C($t9)
	jal     obj_lib_802A2348
	li      $a0, -0x004E
	b       .L803131D4
	nop
.L803131D4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803131E8
object_c_803131E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	li      $a1, 0x0000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, .L80313220
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L80313220:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x002C($t6)
	lui     $t7, %hi(gfx_frame)
	lw      $t7, %lo(gfx_frame)($t7)
	li      $at, 0x0006
	lui     $t9, %hi(object)
	divu    $0, $t7, $at
	lw      $t9, %lo(object)($t9)
	mflo    $t8
	sw      $t8, 0x00F0($t9)
	nop
	b       .L8031325C
	nop
.L8031325C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8031326C
object_c_8031326C:
	li      $at, 0x46000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_80313294
object_c_80313294:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	sw      $t7, 0x0004($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D8($t8)
	bgez    $t9, .L803132DC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F8($t0)
	add.s   $f8, $f4, $f6
	b       .L803132F8
	swc1    $f8, 0x00F8($t0)
.L803132DC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x40800000
	mtc1    $at, $f16
	lwc1    $f10, 0x00F8($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00F8($t1)
.L803132F8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x00F4($t2)
	lwc1    $f6, 0x00F8($t2)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00F4($t3)
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x00D8($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0004($sp)
	lw      $t7, 0x00D8($t6)
	subu    $t9, $t7, $t8
	sw      $t9, 0x011C($t6)
	b       .L8031334C
	nop
.L8031334C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_c_80313354
object_c_80313354:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0038($sp)
	sw      $0, 0x003C($sp)
.L80313368:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0038($sp)
	lw      $t8, 0x00F4($t7)
	and     $t0, $t8, $t9
	bnez    $t0, .L803134F8
	nop
	lw      $t2, 0x003C($sp)
	lui     $t4, %hi(object_c_80332D58+2*0)
	lui     $t1, %hi(obj_mario)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 1
	addu    $t4, $t4, $t3
	lh      $t4, %lo(object_c_80332D58+2*0)($t4)
	lw      $t1, %lo(obj_mario)($t1)
	mtc1    $t4, $f6
	lwc1    $f4, 0x00A0($t1)
	cvt.s.w $f8, $f6
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x0034($sp)
	lw      $t6, 0x003C($sp)
	lui     $t8, %hi(object_c_80332D58+2*1)
	lui     $t5, %hi(obj_mario)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 1
	addu    $t8, $t8, $t7
	lh      $t8, %lo(object_c_80332D58+2*1)($t8)
	lw      $t5, %lo(obj_mario)($t5)
	mtc1    $t8, $f18
	lwc1    $f16, 0x00A4($t5)
	cvt.s.w $f6, $f18
	sub.s   $f4, $f16, $f6
	swc1    $f4, 0x0030($sp)
	lw      $t0, 0x003C($sp)
	lui     $t2, %hi(object_c_80332D58+2*2)
	lui     $t9, %hi(obj_mario)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 1
	addu    $t2, $t2, $t1
	lh      $t2, %lo(object_c_80332D58+2*2)($t2)
	lw      $t9, %lo(obj_mario)($t9)
	mtc1    $t2, $f10
	lwc1    $f8, 0x00A8($t9)
	cvt.s.w $f18, $f10
	sub.s   $f16, $f8, $f18
	swc1    $f16, 0x002C($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f16, 0x002C($sp)
	mul.s   $f4, $f6, $f6
	nop
	mul.s   $f8, $f10, $f10
	add.s   $f18, $f4, $f8
	mul.s   $f6, $f16, $f16
	add.s   $f10, $f18, $f6
	swc1    $f10, 0x0028($sp)
	lui     $at, %hi(object_c_80338D6C)
	lwc1    $f8, %lo(object_c_80338D6C)($at)
	lwc1    $f4, 0x0028($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    .L803134F8
	nop
	lui     $at, %hi(object_c_80338D70)
	lwc1    $f16, %lo(object_c_80338D70)($at)
	c.lt.s  $f4, $f16
	nop
	bc1f    .L803134F8
	nop
	lw      $t3, 0x003C($sp)
	la.u    $t5, object_c_80332D58+2*0
	la.l    $t5, object_c_80332D58+2*0
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 1
	addu    $t6, $t4, $t5
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a1, 0x0000($t6)
	lh      $a2, 0x0002($t6)
	lh      $a3, 0x0004($t6)
	la.u    $t9, o_13005504
	la.l    $t9, o_13005504
	li      $t8, 0x003F
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	move    $a0, $t3
	jal     obj_lib_8029EF64
	sw      $t7, 0x0010($sp)
	beqz    $v0, .L803134F8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0038($sp)
	lw      $t1, 0x00F4($t0)
	or      $t3, $t1, $t2
	sw      $t3, 0x00F4($t0)
.L803134F8:
	lw      $t4, 0x003C($sp)
	lw      $t6, 0x0038($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x001F
	sll     $t7, $t6, 1
	sw      $t7, 0x0038($sp)
	bnez    $at, .L80313368
	sw      $t5, 0x003C($sp)
	b       .L80313520
	nop
.L80313520:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_c_80313530
object_c_80313530:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	beqz    $t7, .L80313600
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0003
	bnez    $t9, .L80313578
	nop
	lui     $at, %hi(object_c_80338D74)
	lwc1    $f6, %lo(object_c_80338D74)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80313600
	nop
.L80313578:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x0001
	li      $at, -0x0001
	lw      $t5, 0x0068($t0)
	lw      $t1, 0x0144($t0)
	lw      $t7, 0x00F4($t5)
	sllv    $t3, $t2, $t1
	xor     $t4, $t3, $at
	and     $t8, $t4, $t7
	sw      $t8, 0x00F4($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80338D78)
	lwc1    $f10, %lo(object_c_80338D78)($at)
	lwc1    $f8, 0x015C($t9)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L803135DC
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L803135F8
	nop
.L803135DC:
	li      $at, 0x43160000
	mtc1    $at, $f12
	jal     obj_lib_802A4440
	li      $a1, 0x0001
	li.u    $a0, 0x302E2081
	jal     obj_sfx_802CA144
	li.l    $a0, 0x302E2081
.L803135F8:
	b       .L803136B4
	nop
.L80313600:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f18
	lwc1    $f16, 0x00E4($t6)
	c.eq.s  $f16, $f18
	nop
	bc1f    .L8031369C
	nop
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x0214($t2)
	bne     $t1, $t3, .L80313680
	nop
	li      $at, 0x40800000
	mtc1    $at, $f12
	jal     obj_lib_802A18DC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t4, 0x0154($t0)
	slti    $at, $t4, 0x0010
	bnez    $at, .L80313678
	nop
	lui     $at, %hi(object_c_80338D7C)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, %lo(object_c_80338D7C)($at)
	swc1    $f4, 0x00E4($t7)
.L80313678:
	b       .L80313694
	nop
.L80313680:
	jal     obj_lib_802A184C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
.L80313694:
	b       .L803136AC
	nop
.L8031369C:
	jal     obj_lib_802A2320
	nop
	jal     obj_lib_802A2348
	li      $a0, 0x004E
.L803136AC:
	jal     map_data_803839CC
	nop
.L803136B4:
	b       .L803136BC
	nop
.L803136BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803136CC
object_c_803136CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     save_flag_get
	nop
	andi    $t6, $v0, 0x00A0
	bnez    $t6, .L803136FC
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L8031373C
	nop
.L803136FC:
	li      $at, 0x42C80000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0208($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lw      $t9, 0x0144($t8)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x00F8($t8)
.L8031373C:
	b       .L80313744
	nop
.L80313744:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80313754
object_c_80313754:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0015
	bnez    $at, .L803137CC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00FC($t8)
	lwc1    $f6, 0x00F4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0000
	addiu   $a0, $t9, 0x00FC
	jal     object_c_802FA2BC
	lw      $a2, 0x00F8($t9)
	beqz    $v0, .L803137CC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x00F4($t0)
	neg.s   $f16, $f10
	swc1    $f16, 0x00F4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0154($t1)
.L803137CC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     object_c_802F9820
	lwc1    $f12, 0x00FC($t2)
	b       .L803137E4
	nop
.L803137E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803137F4
object_c_803137F4:
	li      $at, 0x3F400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0034($t6)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8031381C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	andi    $t8, $t7, 0x0003
	sw      $t8, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	bnez    $t9, .L80313868
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L803139D8
	nop
.L80313868:
	lw      $t1, 0x002C($sp)
	bnez    $t1, .L803138E8
	nop
	li      $t2, 0x0001
	sw      $t2, 0x0028($sp)
.L8031387C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $t5, o_13005598
	la.l    $t5, o_13005598
	li      $t4, 0x00BB
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_lib_8029EF64
	sw      $t3, 0x0010($sp)
	lw      $t6, 0x0028($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0003
	bnez    $at, .L8031387C
	sw      $t7, 0x0028($sp)
	jal     rand
	nop
	li      $at, 0x0003
	div     $0, $v0, $at
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mfhi    $t8
	sw      $t8, 0x0110($t9)
	nop
.L803138E8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0068($t0)
	lw      $t1, 0x0144($t0)
	lw      $t3, 0x0110($t2)
	bne     $t1, $t3, .L80313918
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	b       .L80313944
	sw      $t4, 0x0108($t5)
.L80313918:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0144($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L80313944
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t0, -0x0001
	sw      $t0, 0x0108($t2)
.L80313944:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x5555
	lw      $t5, 0x0144($t4)
	multu   $t5, $at
	mflo    $t6
	mtc1    $t6, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00FC($t4)
	move    $a0, $0
	jal     object_c_802FA964
	li      $a1, 0x5555
	mtc1    $v0, $f16
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	cvt.s.w $f18, $f16
	lwc1    $f4, 0x00FC($t7)
	add.s   $f6, $f18, $f4
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sw      $t9, 0x00C8($t7)
	li      $a0, 0x000F
	jal     object_c_802FA964
	li      $a1, 0x000F
	mtc1    $v0, $f10
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	cvt.s.w $f16, $f10
	swc1    $f16, 0x00F8($t0)
	jal     obj_lib_8029F694
	nop
.L803139D8:
	b       .L803139E0
	nop
.L803139E0:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_803139F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338D80)
	lwc1    $f6, %lo(object_c_80338D80)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80313A34
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L80313BC8
	nop
.L80313A34:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41000000
	li      $a2, 0x3F000000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x003C
	beqz    $at, .L80313A7C
	nop
	jal     obj_lib_802A2748
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       .L80313AFC
	sw      $v0, 0x0104($t9)
.L80313A7C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00FC($t0)
	trunc.w.s $f10, $f8
	mfc1    $t2, $f10
	nop
	sw      $t2, 0x0104($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x006F
	bnez    $at, .L80313AFC
	nop
	li      $at, 0x43480000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t3)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80313AFC
	nop
	lw      $t5, 0x0108($t3)
	bltz    $t5, .L80313AFC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00F8($t8)
.L80313AFC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x0168($t9)
	lwc1    $f8, 0x00E8($t9)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80313B2C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00E8($t1)
	swc1    $f10, 0x0168($t1)
.L80313B2C:
	li      $a0, 0x0032
	jal     object_c_802FA964
	li      $a1, 0x0032
	mtc1    $v0, $f18
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	cvt.s.w $f4, $f18
	lwc1    $f6, 0x0168($t2)
	lwc1    $f16, 0x00A4($t2)
	add.s   $f8, $f4, $f6
	c.lt.s  $f16, $f8
	nop
	bc1f    .L80313B78
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t0, -0x2000
	b       .L80313B88
	sw      $t0, 0x0100($t4)
.L80313B78:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x2000
	sw      $t3, 0x0100($t5)
.L80313B88:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0190
	jal     object_c_802FA660
	lw      $a0, 0x0100($t6)
	li      $a0, 0x0190
	jal     object_c_802FA964
	li      $a1, 0x0320
	sll     $s0, $v0, 16
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sra     $t7, $s0, 16
	move    $s0, $t7
	move    $a1, $s0
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0104($t8)
.L80313BC8:
	b       .L80313BD0
	nop
.L80313BD0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80313BE4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0015
	bnez    $at, .L80313E04
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x010C($t8)
	bnez    $t9, .L80313CC4
	nop
	li      $at, 0x3FC00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	la.u    $t2, o_13002528
	la.l    $t2, o_13002528
	li      $t1, 0x0096
	sw      $t1, 0x0018($sp)
	sw      $t2, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0028
	move    $a3, $0
	sw      $t0, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f4, 0x0010($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t6, %hi(object_c_80332E24+0x00)
	lw      $t4, 0x0108($t3)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(object_c_80332E24+0x00)($t6)
	sw      $t6, 0x010C($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     obj_lib_802A04C0
	lw      $a0, 0x010C($t7)
	lui     $a0, %hi(object)
	jal     obj_lib_802A19AC
	lw      $a0, %lo(object)($a0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x00A4($t9)
	b       .L80313D7C
	swc1    $f8, 0x0168($t9)
.L80313CC4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80332E24+0x08)
	lw      $t1, 0x0108($t0)
	lwc1    $f10, 0x00F4($t0)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $at, $at, $t2
	lwc1    $f16, %lo(object_c_80332E24+0x08)($at)
	c.le.s  $f16, $f10
	nop
	bc1f    .L80313D7C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0108($t4)
	beqz    $t5, .L80313D54
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a2, %hi(object_c_80332E24+0x04)
	lw      $t3, 0x0108($t6)
	move    $a0, $t6
	lw      $a1, 0x010C($t6)
	sll     $t7, $t3, 2
	subu    $t7, $t7, $t3
	sll     $t7, $t7, 2
	addu    $a2, $a2, $t7
	jal     obj_lib_8029EDCC
	lw      $a2, %lo(object_c_80332E24+0x04)($a2)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L80313D7C
	nop
.L80313D54:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
	li      $at, 0x42C80000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0128($t0)
.L80313D7C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80332E24+0x08)
	lw      $t2, 0x0108($t1)
	lwc1    $f10, 0x00F4($t1)
	sll     $t4, $t2, 2
	subu    $t4, $t4, $t2
	sll     $t4, $t4, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(object_c_80332E24+0x08)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	nop
	div.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00F4($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0108($t5)
	bnez    $t6, .L80313E04
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x437A0000
	mtc1    $at, $f4
	lwc1    $f18, 0x00F4($t3)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x00DC($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0168($t7)
	lwc1    $f8, 0x00DC($t7)
	sub.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t7)
.L80313E04:
	b       .L80313E0C
	nop
.L80313E0C:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80313E1C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_c_80332E14
	la.l    $a0, object_c_80332E14
	jal     object_c_802FB938
	li      $a1, -0x0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0001
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, .L80313E6C
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0200
	bnez    $t9, .L80313E6C
	nop
	lw      $t0, 0x0154($t6)
	slti    $at, $t0, 0x009E
	bnez    $at, .L80313EB0
	nop
.L80313E6C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x00A4($t1)
	lwc1    $f6, 0x00DC($t1)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t1)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003510
	la.l    $a2, o_13003510
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00CD
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	b       .L80313FA8
	nop
.L80313EB0:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0079
	bnez    $at, .L80313F6C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x01AE($t4)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f10, %lo(math_cos)($at)
	lui     $at, %hi(object_c_80338D84)
	lwc1    $f16, %lo(object_c_80338D84)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x001C($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80313F40
	nop
	li      $at, 0x40900000
	mtc1    $at, $f10
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x01AC($t9)
	addiu   $t0, $t6, 0x2710
	b       .L80313F54
	sw      $t0, 0x01AC($t9)
.L80313F40:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x01AC($t1)
	addiu   $t3, $t2, 0x0FA0
	sw      $t3, 0x01AC($t1)
.L80313F54:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f18, 0x00F4($t4)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00F4($t4)
.L80313F6C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41A00000
	li      $a2, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a1, 0x0320
	jal     obj_lib_8029E5EC
	lw      $a0, 0x0160($t5)
	li      $at, 0xC2C80000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	li      $a1, 0x0320
.L80313FA8:
	b       .L80313FB0
	nop
.L80313FB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80313FC0
object_c_80313FC0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     obj_lib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L80314014
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80314024
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80314034
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L80314044
	nop
	b       .L80314054
	nop
.L80314014:
	jal     object_c_8031381C
	nop
	b       .L80314054
	nop
.L80314024:
	jal     object_c_803139F0
	nop
	b       .L80314054
	nop
.L80314034:
	jal     object_c_80313BE4
	nop
	b       .L80314054
	nop
.L80314044:
	jal     object_c_80313E1C
	nop
	b       .L80314054
	nop
.L80314054:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F8($t8)
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	b       .L80314084
	nop
.L80314084:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80314098:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     obj_lib_802A1634
	nop
	swc1    $f0, 0x0024($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F0($t6)
	jal     object_c_802FA1B0
	lwc1    $f12, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $v0, 0x01AC($t7)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x40A00000
	li      $a2, 0x3F000000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	beqz    $t9, .L80314140
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x00C8($t0)
	jal     obj_lib_802A11A8
	lh      $a1, 0x01AE($t0)
	slti    $at, $v0, 0x0320
	beqz    $at, .L80314138
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00FC($t1)
.L80314138:
	b       .L80314260
	nop
.L80314140:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338D88)
	lwc1    $f6, %lo(object_c_80338D88)($at)
	lwc1    $f4, 0x015C($t2)
	c.le.s  $f6, $f4
	nop
	bc1f    .L8031418C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0160($t3)
	sh      $t4, 0x01AE($t3)
	li      $a0, 0x0014
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00F8($t5)
.L8031418C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x00EC($t6)
	andi    $t7, $s0, 0x0200
	move    $s0, $t7
	beqz    $s0, .L803141C0
	sw      $s0, 0x00FC($t6)
	jal     obj_lib_802A3268
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       .L80314260
	sh      $v0, 0x01AE($t8)
.L803141C0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x001F
	bnez    $at, .L80314208
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80314208
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	b       .L80314260
	sw      $t1, 0x014C($t2)
.L80314208:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x00F8($t4)
	beqz    $t3, .L80314234
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x00F8($t5)
	addiu   $t6, $t7, -0x0001
	b       .L80314260
	sw      $t6, 0x00F8($t5)
.L80314234:
	jal     object_c_802FAA64
	li      $a0, 0x2000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $v0, 0x01AE($t8)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00F8($t0)
.L80314260:
	b       .L80314268
	nop
.L80314268:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8031427C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $at, %hi(object_c_80338D8C)
	jal     object_c_802FBAB4
	lwc1    $f12, %lo(object_c_80338D8C)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338D90)
	lwc1    $f6, %lo(object_c_80338D90)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L803142C8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       .L803145B8
	sw      $0, 0x014C($t7)
.L803142C8:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0100($t8)
	beqz    $t9, .L8031446C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object)
	lw      $t1, 0x0100($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x0100($t0)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0100($t3)
	bnez    $t4, .L80314320
	nop
	li.u    $a0, 0x50734081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x50734081
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       .L80314464
	sw      $0, 0x014C($t5)
.L80314320:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	slti    $at, $t7, 0x000F
	beqz    $at, .L8031434C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	b       .L80314464
	sw      $t8, 0x00F0($t9)
.L8031434C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0014
	lw      $t2, 0x0100($t1)
	bne     $t2, $at, .L8031441C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f12, 0x00A0($t0)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mov.s   $f20, $f0
	li      $at, 0x41A00000
	lwc1    $f8, 0x00A4($t3)
	mtc1    $at, $f16
	li      $t8, 0x2710
	sub.s   $f10, $f20, $f8
	mul.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t5, $f4
	nop
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	subu    $t9, $t8, $t7
	sh      $t9, 0x0026($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t0, 0x0026($sp)
	lh      $t2, 0x01AC($t1)
	subu    $t3, $t2, $t0
	sh      $t3, 0x01AC($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x01AC($t4)
	sw      $t5, 0x00C4($t4)
	li      $at, 0x42200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F4($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F0($t7)
	b       .L80314464
	nop
.L8031441C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x0160($t9)
	sh      $t2, 0x01AE($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0104($t0)
	sh      $t3, 0x01AC($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a1, 0x0190
	jal     obj_lib_8029E5EC
	lh      $a0, 0x01AE($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a1, 0x0190
	jal     object_c_802FA660
	lh      $a0, 0x01AC($t5)
.L80314464:
	b       .L803145B8
	nop
.L8031446C:
	lui     $t4, %hi(obj_mario)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, %lo(obj_mario)($t4)
	lw      $a1, 0x0160($t6)
	jal     obj_lib_802A11A8
	lw      $a0, 0x00D4($t4)
	slti    $at, $v0, 0x3000
	beqz    $at, .L80314510
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x44480000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t8)
	mtc1    $at, $f12
	jal     atan2
	sub.s   $f14, $f8, $f10
	li      $t7, 0x4000
	subu    $t2, $t7, $v0
	sh      $t2, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t3, 0x00C8($t9)
	lw      $t0, 0x0160($t9)
	subu    $t1, $t3, $t0
	sll     $t5, $t1, 16
	sra     $t4, $t5, 16
	bgez    $t4, .L803144F0
	nop
	lh      $t6, 0x0024($sp)
	subu    $t8, $0, $t6
	sh      $t8, 0x0024($sp)
.L803144F0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t9, 0x0024($sp)
	lw      $t2, 0x0160($t7)
	addu    $t3, $t2, $t9
	sh      $t3, 0x01AE($t7)
	b       .L80314520
	nop
.L80314510:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0160($t0)
	sh      $t1, 0x01AE($t0)
.L80314520:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0104($t5)
	sh      $t4, 0x01AC($t5)
	li      $at, 0x43FA0000
	mtc1    $at, $f12
	jal     object_c_802F9890
	li      $a1, 0x0BB8
	beqz    $v0, .L803145A0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a0, 0x01AC($t6)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C4($t6)
	slti    $at, $v0, 0x0BB8
	beqz    $at, .L803145A0
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t8, 0x001E
	sw      $t8, 0x0100($t2)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00F4($t9)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t3, 0x0001
	b       .L803145B8
	sw      $t3, 0x00F0($t7)
.L803145A0:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41A00000
	li      $a2, 0x3F000000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F4
.L803145B8:
	b       .L803145C0
	nop
.L803145C0:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803145D4
object_c_803145D4:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x2001
	lw      $t7, 0x0190($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x0190($t6)
	li      $at, 0x42F00000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0104($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x0160($t0)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t0)
	slti    $at, $v0, 0x1000
	beqz    $at, .L803146B4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $a0, 0x0104($t1)
	lw      $a1, 0x00C4($t1)
	jal     obj_lib_802A11A8
	addiu   $a0, $a0, 0x0800
	slti    $at, $v0, 0x2000
	beqz    $at, .L803146B4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F0($t2)
	beqz    $t3, .L8031469C
	nop
	li      $at, 0x437A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t2)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8031469C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0190($t4)
	ori     $t7, $t5, 0x2000
	sw      $t7, 0x0190($t4)
.L8031469C:
	li      $at, 0x42C80000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	b       .L803146CC
	swc1    $f8, 0x0200($t8)
.L803146B4:
	li      $at, 0x43160000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0200($t6)
.L803146CC:
	jal     obj_lib_802A2320
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, .L803146FC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8031470C
	nop
	b       .L8031471C
	nop
.L803146FC:
	jal     object_c_80314098
	nop
	b       .L8031471C
	nop
.L8031470C:
	jal     object_c_8031427C
	nop
	b       .L8031471C
	nop
.L8031471C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t3, $t1, 0x0078
	beqz    $t3, .L8031492C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t5, 0x00EC($t2)
	andi    $t7, $t5, 0x0008
	beqz    $t7, .L803147AC
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002C14
	la.l    $a2, o_13002C14
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00A7
	sw      $v0, 0x0038($sp)
	lw      $t4, 0x0038($sp)
	beqz    $t4, .L80314780
	nop
	lw      $a0, 0x0038($sp)
	jal     obj_lib_8029F404
	li      $a1, 0x40400000
.L80314780:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00B0($t8)
	swc1    $f16, 0x0108($t8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x010C($t6)
	b       .L803148A4
	nop
.L803147AC:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x40800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0108
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t0, %hi(object)
	li      $at, 0x3F800000
	lwc1    $f4, 0x010C($t9)
	lwc1    $f6, 0x0108($t9)
	mtc1    $at, $f16
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x010C($t9)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x010C($t0)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L803148A4
	nop
	jal     rand
	nop
	sh      $v0, 0x0036($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f18, 0x010C($t1)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x010C($t1)
	lhu     $t3, 0x0036($sp)
	lui     $at, %hi(math_cos)
	lui     $t8, %hi(object)
	sra     $t2, $t3, 4
	sll     $t5, $t2, 2
	addu    $at, $at, $t5
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43160000
	mul.s   $f16, $f8, $f10
	mtc1    $at, $f6
	lw      $t8, %lo(object)($t8)
	la.u    $t9, o_13000444
	mul.s   $f8, $f4, $f6
	la.l    $t9, o_13000444
	li      $t6, 0x00A4
	sw      $t6, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	move    $a0, $0
	trunc.w.s $f18, $f16
	li      $a2, 0x0064
	sw      $t8, 0x0010($sp)
	trunc.w.s $f10, $f8
	mfc1    $a1, $f18
	mfc1    $a3, $f10
	jal     obj_lib_8029EF64
	nop
.L803148A4:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $a3, 0x3D4CCCCD
	li      $t1, 0x000A
	lh      $a2, 0x01AC($t0)
	li      $t3, 0x0032
	li      $t2, 0x07D0
	sw      $t2, 0x0018($sp)
	sw      $t3, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	li.l    $a3, 0x3D4CCCCD
	addiu   $a0, $t0, 0x01B0
	jal     object_c_802FA830
	addiu   $a1, $t0, 0x00C4
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $a3, 0x3D4CCCCD
	li      $t5, 0x000A
	lh      $a2, 0x01AE($t7)
	li      $t4, 0x0032
	li      $t8, 0x07D0
	sw      $t8, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	li.l    $a3, 0x3D4CCCCD
	addiu   $a0, $t7, 0x01B2
	jal     object_c_802FA830
	addiu   $a1, $t7, 0x00C8
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F4($t6)
	b       .L80314990
	nop
.L8031492C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f16, 0x00B0($t9)
	lwc1    $f4, 0x00B8($t9)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f6
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	swc1    $f0, 0x00F4($t0)
	jal     object_c_802F9770
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C4($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0190
	jal     object_c_802FA6D4
	lw      $a0, 0x00C4($t3)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x01B0($t2)
.L80314990:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0190
	jal     object_c_802FA6D4
	lw      $a0, 0x00C4($t7)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $a0, object_c_80332E3C
	la.l    $a0, object_c_80332E3C
	jal     object_c_802FB938
	lw      $a1, 0x014C($t5)
	jal     obj_lib_802A2348
	li      $a0, 0x004E
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lwc1    $f8, 0x00E8($t4)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00E8($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A4($t8)
	lwc1    $f18, 0x00E8($t8)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L80314A10
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00E8($t6)
	swc1    $f6, 0x00A4($t6)
.L80314A10:
	b       .L80314A18
	nop
.L80314A18:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

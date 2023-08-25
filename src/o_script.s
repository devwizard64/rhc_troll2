.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

o_script_80383B70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0018($sp)
	lui     $at, %hi(object_pc)
	sw      $v0, %lo(object_pc)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x01D0($t6)
	b       .L80383BA0
	nop
.L80383BA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* u16 rand(void) */
.globl rand
rand:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(rand_seed)
	lhu     $t6, %lo(rand_seed)($t6)
	li      $at, 0x560A
	bne     $t6, $at, .L80383BD0
	nop
	lui     $at, %hi(rand_seed)
	sh      $0, %lo(rand_seed)($at)
.L80383BD0:
	lui     $t7, %hi(rand_seed)
	lhu     $t7, %lo(rand_seed)($t7)
	andi    $t8, $t7, 0x00FF
	sll     $t9, $t8, 8
	sh      $t9, 0x0006($sp)
	lui     $t1, %hi(rand_seed)
	lhu     $t1, %lo(rand_seed)($t1)
	lhu     $t0, 0x0006($sp)
	xor     $t2, $t0, $t1
	sh      $t2, 0x0006($sp)
	lhu     $t3, 0x0006($sp)
	lui     $at, %hi(rand_seed)
	andi    $t4, $t3, 0x00FF
	andi    $t6, $t3, 0xFF00
	sra     $t7, $t6, 8
	sll     $t5, $t4, 8
	addu    $t8, $t5, $t7
	sh      $t8, %lo(rand_seed)($at)
	lhu     $t9, 0x0006($sp)
	lui     $t2, %hi(rand_seed)
	lhu     $t2, %lo(rand_seed)($t2)
	andi    $t0, $t9, 0x00FF
	sll     $t1, $t0, 1
	xor     $t4, $t1, $t2
	sh      $t4, 0x0006($sp)
	lhu     $t3, 0x0006($sp)
	sra     $t6, $t3, 1
	xori    $t5, $t6, 0xFF80
	sh      $t5, 0x0004($sp)
	lhu     $t7, 0x0006($sp)
	andi    $t8, $t7, 0x0001
	bnez    $t8, .L80383C88
	nop
	lhu     $t9, 0x0004($sp)
	li      $at, 0xAA55
	bne     $t9, $at, .L80383C70
	nop
	lui     $at, %hi(rand_seed)
	b       .L80383C80
	sh      $0, %lo(rand_seed)($at)
.L80383C70:
	lhu     $t0, 0x0004($sp)
	lui     $at, %hi(rand_seed)
	xori    $t1, $t0, 0x1FF4
	sh      $t1, %lo(rand_seed)($at)
.L80383C80:
	b       .L80383C98
	nop
.L80383C88:
	lhu     $t2, 0x0004($sp)
	lui     $at, %hi(rand_seed)
	xori    $t4, $t2, 0x8180
	sh      $t4, %lo(rand_seed)($at)
.L80383C98:
	lui     $v0, %hi(rand_seed)
	b       .L80383CAC
	lhu     $v0, %lo(rand_seed)($v0)
	b       .L80383CAC
	nop
.L80383CAC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl o_script_80383CB4
o_script_80383CB4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     rand
	nop
	mtc1    $v0, $f4
	bgez    $v0, .L80383CE0
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L80383CE0:
	swc1    $f6, 0x001C($sp)
	lwc1    $f10, 0x001C($sp)
	li      $at, 0x40F00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	div.d   $f4, $f16, $f18
	b       .L80383D0C
	cvt.s.d $f0, $f4
	b       .L80383D0C
	nop
.L80383D0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl o_script_80383D1C
o_script_80383D1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     rand
	nop
	slti    $at, $v0, 0x7FFF
	bnez    $at, .L80383D48
	nop
	b       .L80383D58
	li      $v0, 0x0001
	b       .L80383D50
	nop
.L80383D48:
	b       .L80383D58
	li      $v0, -0x0001
.L80383D50:
	b       .L80383D58
	nop
.L80383D58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

o_script_80383D68:
	lwc1    $f4, 0x00A0($a0)
	swc1    $f4, 0x0020($a0)
	lwc1    $f6, 0x00DC($a0)
	lwc1    $f8, 0x00A4($a0)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($a0)
	lwc1    $f16, 0x00A8($a0)
	swc1    $f16, 0x0028($a0)
	lw      $t6, 0x00D0($a0)
	andi    $t7, $t6, 0xFFFF
	sh      $t7, 0x001A($a0)
	lw      $t8, 0x00D4($a0)
	andi    $t9, $t8, 0xFFFF
	sh      $t9, 0x001C($a0)
	lw      $t0, 0x00D8($a0)
	andi    $t1, $t0, 0xFFFF
	sh      $t1, 0x001E($a0)
	jr      $ra
	nop
	jr      $ra
	nop

o_script_80383DBC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01D0($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	sw      $a0, 0x01D4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x01D0($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x01D0($t0)
	jr      $ra
	nop
	jr      $ra
	nop

o_script_80383DF8:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01D0($t6)
	addiu   $t8, $t7, -0x0001
	sw      $t8, 0x01D0($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01D0($t9)
	sll     $t1, $t0, 2
	addu    $t2, $t9, $t1
	lw      $t3, 0x01D4($t2)
	sw      $t3, 0x0004($sp)
	b       .L80383E3C
	lw      $v0, 0x0004($sp)
	b       .L80383E3C
	nop
.L80383E3C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

o_script_80383E44:
	b       o_script_80383E44
	nop
	jr      $ra
	nop
	jr      $ra
	nop

/* int o_script_22(void) */
.globl o_script_22
o_script_22:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F6BC
	nop
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $at, %hi(object_pc)
	addiu   $t7, $t6, 0x0004
	sw      $t7, %lo(object_pc)($at)
	b       .L80383E90
	move    $v0, $0
	b       .L80383E90
	nop
.L80383E90:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int o_script_35(void) */
.globl o_script_35
o_script_35:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0002
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0004
	sw      $t0, %lo(object_pc)($at)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

/* int o_script_21(void) */
.globl o_script_21
o_script_21:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0004
	sh      $t8, 0x0002($t6)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0004
	sw      $t0, %lo(object_pc)($at)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

/* int o_script_1B(void) */
.globl o_script_1B
o_script_1B:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0xFFFF
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	sw      $t0, 0x0004($sp)
	lw      $t2, 0x0004($sp)
	lui     $t1, %hi(shape_table)
	lw      $t1, %lo(shape_table)($t1)
	sll     $t3, $t2, 2
	lui     $t6, %hi(object)
	addu    $t4, $t1, $t3
	lw      $t5, 0x0000($t4)
	lw      $t6, %lo(object)($t6)
	sw      $t5, 0x0014($t6)
	lui     $t7, %hi(object_pc)
	lw      $t7, %lo(object_pc)($t7)
	lui     $at, %hi(object_pc)
	addiu   $t8, $t7, 0x0004
	sw      $t8, %lo(object_pc)($at)
	b       .L80383F8C
	move    $v0, $0
	b       .L80383F8C
	nop
.L80383F8C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_1C(void) */
.globl o_script_1C
o_script_1C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0004($t6)
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(object_pc)
	lw      $t8, %lo(object_pc)($t8)
	lw      $t9, 0x0008($t8)
	sw      $t9, 0x0020($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	lw      $a2, 0x0024($sp)
	jal     obj_lib_8029ED20
	lw      $a3, 0x0020($sp)
	sw      $v0, 0x001C($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     obj_lib_8029F0E0
	lw      $a0, 0x001C($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lui     $at, %hi(object_pc)
	addiu   $t1, $t0, 0x000C
	sw      $t1, %lo(object_pc)($at)
	b       .L8038400C
	move    $v0, $0
	b       .L8038400C
	nop
.L8038400C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int o_script_2C(void) */
.globl o_script_2C
o_script_2C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0004($t6)
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(object_pc)
	lw      $t8, %lo(object_pc)($t8)
	lw      $t9, 0x0008($t8)
	sw      $t9, 0x0020($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	lw      $a2, 0x0024($sp)
	jal     obj_lib_8029ED20
	lw      $a3, 0x0020($sp)
	sw      $v0, 0x001C($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     obj_lib_8029F0E0
	lw      $a0, 0x001C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x001C($sp)
	sw      $t0, 0x006C($t1)
	lui     $t2, %hi(object_pc)
	lw      $t2, %lo(object_pc)($t2)
	lui     $at, %hi(object_pc)
	addiu   $t3, $t2, 0x000C
	sw      $t3, %lo(object_pc)($at)
	b       .L803840A4
	move    $v0, $0
	b       .L803840A4
	nop
.L803840A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int o_script_29(void) */
.globl o_script_29
o_script_29:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0xFFFF
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	sw      $t0, 0x0024($sp)
	lui     $t1, %hi(object_pc)
	lw      $t1, %lo(object_pc)($t1)
	lw      $t2, 0x0004($t1)
	sw      $t2, 0x0020($sp)
	lui     $t3, %hi(object_pc)
	lw      $t3, %lo(object_pc)($t3)
	lw      $t4, 0x0008($t3)
	sw      $t4, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	lw      $a2, 0x0020($sp)
	jal     obj_lib_8029ED20
	lw      $a3, 0x001C($sp)
	sw      $v0, 0x0018($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     obj_lib_8029F0E0
	lw      $a0, 0x0018($sp)
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	sw      $t5, 0x0144($t6)
	lui     $t7, %hi(object_pc)
	lw      $t7, %lo(object_pc)($t7)
	lui     $at, %hi(object_pc)
	addiu   $t8, $t7, 0x000C
	sw      $t8, %lo(object_pc)($at)
	b       .L80384154
	move    $v0, $0
	b       .L80384154
	nop
.L80384154:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int o_script_1D(void) */
.globl o_script_1D
o_script_1D:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
	jr      $ra
	li      $v0, 0x0001
	jr      $ra
	nop
	jr      $ra
	nop

/* int o_script_0A(void) */
.globl o_script_0A
o_script_0A:
	jr      $ra
	li      $v0, 0x0001
	jr      $ra
	nop
	jr      $ra
	nop

/* int o_script_0B(void) */
.globl o_script_0B
o_script_0B:
	jr      $ra
	li      $v0, 0x0001
	jr      $ra
	nop
	jr      $ra
	nop

/* int o_script_02(void) */
.globl o_script_02
o_script_02:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $at, %hi(object_pc)
	addiu   $t7, $t6, 0x0004
	sw      $t7, %lo(object_pc)($at)
	lui     $a0, %hi(object_pc)
	lw      $a0, %lo(object_pc)($a0)
	jal     o_script_80383DBC
	addiu   $a0, $a0, 0x0004
	lui     $t8, %hi(object_pc)
	lw      $t8, %lo(object_pc)($t8)
	jal     segment_to_virtual
	lw      $a0, 0x0000($t8)
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	lui     $at, %hi(object_pc)
	sw      $t9, %lo(object_pc)($at)
	b       .L80384214
	move    $v0, $0
	b       .L80384214
	nop
.L80384214:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int o_script_03(void) */
.globl o_script_03
o_script_03:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     o_script_80383DF8
	nop
	lui     $at, %hi(object_pc)
	sw      $v0, %lo(object_pc)($at)
	b       .L8038424C
	move    $v0, $0
	b       .L8038424C
	nop
.L8038424C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int o_script_01(void) */
.globl o_script_01
o_script_01:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0xFFFF
	sh      $t8, 0x0006($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t1, 0x0006($sp)
	lh      $t0, 0x01F4($t9)
	addiu   $t2, $t1, -0x0001
	slt     $at, $t0, $t2
	beqz    $at, .L803842AC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x01F4($t3)
	addiu   $t5, $t4, 0x0001
	b       .L803842CC
	sh      $t5, 0x01F4($t3)
.L803842AC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x01F4($t6)
	lui     $t7, %hi(object_pc)
	lw      $t7, %lo(object_pc)($t7)
	lui     $at, %hi(object_pc)
	addiu   $t8, $t7, 0x0004
	sw      $t8, %lo(object_pc)($at)
.L803842CC:
	b       .L803842DC
	li      $v0, 0x0001
	b       .L803842DC
	nop
.L803842DC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_25(void) */
.globl o_script_25
o_script_25:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lbu     $t1, 0x0007($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sll     $t2, $t1, 2
	addu    $t3, $t0, $t2
	lw      $t4, 0x0088($t3)
	sw      $t4, 0x0000($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0000($sp)
	lh      $t6, 0x01F4($t5)
	addiu   $t8, $t7, -0x0001
	slt     $at, $t6, $t8
	beqz    $at, .L80384354
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t1, 0x01F4($t9)
	addiu   $t0, $t1, 0x0001
	b       .L80384374
	sh      $t0, 0x01F4($t9)
.L80384354:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x01F4($t2)
	lui     $t3, %hi(object_pc)
	lw      $t3, %lo(object_pc)($t3)
	lui     $at, %hi(object_pc)
	addiu   $t4, $t3, 0x0004
	sw      $t4, %lo(object_pc)($at)
.L80384374:
	b       .L80384384
	li      $v0, 0x0001
	b       .L80384384
	nop
.L80384384:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_04(void) */
.globl o_script_04
o_script_04:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $at, %hi(object_pc)
	addiu   $t7, $t6, 0x0004
	sw      $t7, %lo(object_pc)($at)
	lui     $t8, %hi(object_pc)
	lw      $t8, %lo(object_pc)($t8)
	jal     segment_to_virtual
	lw      $a0, 0x0000($t8)
	lui     $at, %hi(object_pc)
	sw      $v0, %lo(object_pc)($at)
	b       .L803843D0
	move    $v0, $0
	b       .L803843D0
	nop
.L803843D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int o_script_26(void) */
.globl o_script_26
o_script_26:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x001C($sp)
	lui     $a0, %hi(object_pc)
	lw      $a0, %lo(object_pc)($a0)
	jal     o_script_80383DBC
	addiu   $a0, $a0, 0x0004
	jal     o_script_80383DBC
	lw      $a0, 0x001C($sp)
	lui     $t1, %hi(object_pc)
	lw      $t1, %lo(object_pc)($t1)
	lui     $at, %hi(object_pc)
	addiu   $t2, $t1, 0x0004
	sw      $t2, %lo(object_pc)($at)
	b       .L80384440
	move    $v0, $0
	b       .L80384440
	nop
.L80384440:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int o_script_05(void) */
.globl o_script_05
o_script_05:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0xFFFF
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	sw      $t0, 0x001C($sp)
	lui     $a0, %hi(object_pc)
	lw      $a0, %lo(object_pc)($a0)
	jal     o_script_80383DBC
	addiu   $a0, $a0, 0x0004
	jal     o_script_80383DBC
	lw      $a0, 0x001C($sp)
	lui     $t1, %hi(object_pc)
	lw      $t1, %lo(object_pc)($t1)
	lui     $at, %hi(object_pc)
	addiu   $t2, $t1, 0x0004
	sw      $t2, %lo(object_pc)($at)
	b       .L803844B0
	move    $v0, $0
	b       .L803844B0
	nop
.L803844B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int o_script_06(void) */
.globl o_script_06
o_script_06:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     o_script_80383DF8
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	addiu   $t7, $t6, -0x0001
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	beqz    $t8, .L80384518
	nop
	jal     o_script_80383DF8
	nop
	lui     $at, %hi(object_pc)
	sw      $v0, %lo(object_pc)($at)
	lui     $a0, %hi(object_pc)
	jal     o_script_80383DBC
	lw      $a0, %lo(object_pc)($a0)
	jal     o_script_80383DBC
	lw      $a0, 0x001C($sp)
	b       .L80384534
	nop
.L80384518:
	jal     o_script_80383DF8
	nop
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0004
	sw      $t0, %lo(object_pc)($at)
.L80384534:
	b       .L80384544
	li      $v0, 0x0001
	b       .L80384544
	nop
.L80384544:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int o_script_07(void) */
.globl o_script_07
o_script_07:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     o_script_80383DF8
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	addiu   $t7, $t6, -0x0001
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	beqz    $t8, .L803845AC
	nop
	jal     o_script_80383DF8
	nop
	lui     $at, %hi(object_pc)
	sw      $v0, %lo(object_pc)($at)
	lui     $a0, %hi(object_pc)
	jal     o_script_80383DBC
	lw      $a0, %lo(object_pc)($a0)
	jal     o_script_80383DBC
	lw      $a0, 0x001C($sp)
	b       .L803845C8
	nop
.L803845AC:
	jal     o_script_80383DF8
	nop
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0004
	sw      $t0, %lo(object_pc)($at)
.L803845C8:
	b       .L803845D8
	move    $v0, $0
	b       .L803845D8
	nop
.L803845D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int o_script_08(void) */
.globl o_script_08
o_script_08:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object_pc)
	lw      $a0, %lo(object_pc)($a0)
	jal     o_script_80383DBC
	addiu   $a0, $a0, 0x0004
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $at, %hi(object_pc)
	addiu   $t7, $t6, 0x0004
	sw      $t7, %lo(object_pc)($at)
	b       .L80384624
	move    $v0, $0
	b       .L80384624
	nop
.L80384624:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int o_script_09(void) */
.globl o_script_09
o_script_09:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     o_script_80383DF8
	nop
	lui     $at, %hi(object_pc)
	sw      $v0, %lo(object_pc)($at)
	lui     $a0, %hi(object_pc)
	jal     o_script_80383DBC
	lw      $a0, %lo(object_pc)($a0)
	b       .L80384668
	li      $v0, 0x0001
	b       .L80384668
	nop
.L80384668:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int o_script_0C(void) */
.globl o_script_0C
o_script_0C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0004($t6)
	sw      $t7, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	jalr    $t9
	nop
	lui     $t8, %hi(object_pc)
	lw      $t8, %lo(object_pc)($t8)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t8, 0x0008
	sw      $t0, %lo(object_pc)($at)
	b       .L803846C0
	move    $v0, $0
	b       .L803846C0
	nop
.L803846C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int o_script_0E(void) */
.globl o_script_0E
o_script_0E:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	mtc1    $t4, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0000($sp)
	lbu     $t6, 0x0007($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x0000($sp)
	sll     $t7, $t6, 2
	addu    $t8, $t5, $t7
	swc1    $f8, 0x0088($t8)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0004
	sw      $t0, %lo(object_pc)($at)
	b       .L80384754
	move    $v0, $0
	b       .L80384754
	nop
.L80384754:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_10(void) */
.globl o_script_10
o_script_10:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sh      $t2, 0x0004($sp)
	lbu     $t5, 0x0007($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t3, 0x0004($sp)
	sll     $t6, $t5, 2
	addu    $t7, $t4, $t6
	sw      $t3, 0x0088($t7)
	lui     $t8, %hi(object_pc)
	lw      $t8, %lo(object_pc)($t8)
	lui     $at, %hi(object_pc)
	addiu   $t9, $t8, 0x0004
	sw      $t9, %lo(object_pc)($at)
	b       .L803847CC
	move    $v0, $0
	b       .L803847CC
	nop
.L803847CC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_36(void) */
.globl o_script_36
o_script_36:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0xFFFF
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	sw      $t4, 0x0000($sp)
	lbu     $t7, 0x0007($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0000($sp)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	sw      $t5, 0x0088($t9)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lui     $at, %hi(object_pc)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(object_pc)($at)
	b       .L8038484C
	move    $v0, $0
	b       .L8038484C
	nop
.L8038484C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_14(void) */
.globl o_script_14
o_script_14:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0027($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	mtc1    $t4, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0020($sp)
	lui     $t5, %hi(object_pc)
	lw      $t5, %lo(object_pc)($t5)
	lw      $t6, 0x0004($t5)
	srl     $t7, $t6, 16
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	lwc1    $f16, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lbu     $t1, 0x0027($sp)
	mul.s   $f18, $f0, $f16
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sll     $t2, $t1, 2
	addu    $t3, $t0, $t2
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0088($t3)
	lui     $t4, %hi(object_pc)
	lw      $t4, %lo(object_pc)($t4)
	lui     $at, %hi(object_pc)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(object_pc)($at)
	b       .L80384918
	move    $v0, $0
	b       .L80384918
	nop
.L80384918:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int o_script_15(void) */
.globl o_script_15
o_script_15:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0027($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	sw      $t4, 0x0020($sp)
	lui     $t5, %hi(object_pc)
	lw      $t5, %lo(object_pc)($t5)
	lw      $t6, 0x0004($t5)
	srl     $t7, $t6, 16
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	sw      $t9, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	lw      $t0, 0x001C($sp)
	lbu     $t6, 0x0027($sp)
	lui     $t5, %hi(object)
	mtc1    $t0, $f4
	lw      $t5, %lo(object)($t5)
	lw      $t3, 0x0020($sp)
	cvt.s.w $f6, $f4
	sll     $t7, $t6, 2
	addu    $t8, $t5, $t7
	mul.s   $f8, $f0, $f6
	trunc.w.s $f10, $f8
	mfc1    $t2, $f10
	nop
	addu    $t4, $t2, $t3
	sw      $t4, 0x0088($t8)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(object_pc)($at)
	b       .L803849E8
	move    $v0, $0
	b       .L803849E8
	nop
.L803849E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int o_script_13(void) */
.globl o_script_13
o_script_13:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0027($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	sw      $t4, 0x0020($sp)
	lui     $t5, %hi(object_pc)
	lw      $t5, %lo(object_pc)($t5)
	lw      $t6, 0x0004($t5)
	srl     $t7, $t6, 16
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	sw      $t9, 0x001C($sp)
	jal     rand
	nop
	lw      $t0, 0x001C($sp)
	lbu     $t5, 0x0027($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x0020($sp)
	srav    $t1, $v0, $t0
	sll     $t6, $t5, 2
	addu    $t7, $t4, $t6
	addu    $t3, $t1, $t2
	sw      $t3, 0x0088($t7)
	lui     $t8, %hi(object_pc)
	lw      $t8, %lo(object_pc)($t8)
	lui     $at, %hi(object_pc)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(object_pc)($at)
	b       .L80384AA4
	move    $v0, $0
	b       .L80384AA4
	nop
.L80384AA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int o_script_16(void) */
.globl o_script_16
o_script_16:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0027($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	mtc1    $t4, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0020($sp)
	lui     $t5, %hi(object_pc)
	lw      $t5, %lo(object_pc)($t5)
	lw      $t6, 0x0004($t5)
	srl     $t7, $t6, 16
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	lbu     $t1, 0x0027($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x001C($sp)
	sll     $t2, $t1, 2
	addu    $t3, $t0, $t2
	mul.s   $f8, $f0, $f6
	lwc1    $f16, 0x0088($t3)
	lwc1    $f18, 0x0020($sp)
	add.s   $f4, $f16, $f18
	add.s   $f10, $f8, $f4
	swc1    $f10, 0x0088($t3)
	lui     $t4, %hi(object_pc)
	lw      $t4, %lo(object_pc)($t4)
	lui     $at, %hi(object_pc)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(object_pc)($at)
	b       .L80384B80
	move    $v0, $0
	b       .L80384B80
	nop
.L80384B80:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int o_script_17(void) */
.globl o_script_17
o_script_17:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0027($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	sw      $t4, 0x0020($sp)
	lui     $t5, %hi(object_pc)
	lw      $t5, %lo(object_pc)($t5)
	lw      $t6, 0x0004($t5)
	srl     $t7, $t6, 16
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	sw      $t9, 0x001C($sp)
	jal     rand
	nop
	sw      $v0, 0x0018($sp)
	lbu     $t1, 0x0027($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sll     $t2, $t1, 2
	lw      $t5, 0x0020($sp)
	addu    $t3, $t0, $t2
	lw      $t4, 0x0088($t3)
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	addu    $t6, $t4, $t5
	srav    $t9, $t7, $t8
	addu    $t1, $t6, $t9
	sw      $t1, 0x0088($t3)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lui     $at, %hi(object_pc)
	addiu   $t2, $t0, 0x0008
	sw      $t2, %lo(object_pc)($at)
	b       .L80384C4C
	move    $v0, $0
	b       .L80384C4C
	nop
.L80384C4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int o_script_0D(void) */
.globl o_script_0D
o_script_0D:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	mtc1    $t4, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0000($sp)
	lbu     $t6, 0x0007($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sll     $t7, $t6, 2
	lwc1    $f10, 0x0000($sp)
	addu    $t8, $t5, $t7
	lwc1    $f8, 0x0088($t8)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0088($t8)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0004
	sw      $t0, %lo(object_pc)($at)
	b       .L80384CE8
	move    $v0, $0
	b       .L80384CE8
	nop
.L80384CE8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_0F(void) */
.globl o_script_0F
o_script_0F:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sh      $t2, 0x0004($sp)
	lbu     $t4, 0x0007($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sll     $t5, $t4, 2
	lh      $t8, 0x0004($sp)
	addu    $t6, $t3, $t5
	lw      $t7, 0x0088($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x0088($t6)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lui     $at, %hi(object_pc)
	addiu   $t1, $t0, 0x0004
	sw      $t1, %lo(object_pc)($at)
	b       .L80384D68
	move    $v0, $0
	b       .L80384D68
	nop
.L80384D68:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_11(void) */
.globl o_script_11
o_script_11:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	sw      $t4, 0x0000($sp)
	lw      $t5, 0x0000($sp)
	andi    $t6, $t5, 0xFFFF
	sw      $t6, 0x0000($sp)
	lbu     $t8, 0x0007($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sll     $t9, $t8, 2
	lw      $t2, 0x0000($sp)
	addu    $t0, $t7, $t9
	lw      $t1, 0x0088($t0)
	or      $t3, $t1, $t2
	sw      $t3, 0x0088($t0)
	lui     $t4, %hi(object_pc)
	lw      $t4, %lo(object_pc)($t4)
	lui     $at, %hi(object_pc)
	addiu   $t5, $t4, 0x0004
	sw      $t5, %lo(object_pc)($at)
	b       .L80384DFC
	move    $v0, $0
	b       .L80384DFC
	nop
.L80384DFC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_12(void) */
.globl o_script_12
o_script_12:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	sw      $t4, 0x0000($sp)
	lw      $t5, 0x0000($sp)
	andi    $t6, $t5, 0xFFFF
	xori    $t7, $t6, 0xFFFF
	sw      $t7, 0x0000($sp)
	lbu     $t9, 0x0007($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sll     $t0, $t9, 2
	lw      $t3, 0x0000($sp)
	addu    $t1, $t8, $t0
	lw      $t2, 0x0088($t1)
	and     $t4, $t2, $t3
	sw      $t4, 0x0088($t1)
	lui     $t5, %hi(object_pc)
	lw      $t5, %lo(object_pc)($t5)
	lui     $at, %hi(object_pc)
	addiu   $t6, $t5, 0x0004
	sw      $t6, %lo(object_pc)($at)
	b       .L80384E94
	move    $v0, $0
	b       .L80384E94
	nop
.L80384E94:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_27(void) */
.globl o_script_27
o_script_27:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lbu     $t3, 0x0007($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0004($t0)
	sll     $t4, $t3, 2
	addu    $t5, $t2, $t4
	sw      $t1, 0x0088($t5)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $at, %hi(object_pc)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(object_pc)($at)
	b       .L80384F00
	move    $v0, $0
	b       .L80384F00
	nop
.L80384F00:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_28(void) */
.globl o_script_28
o_script_28:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x001C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0120($t1)
	sw      $t2, 0x0018($sp)
	lw      $t3, 0x001C($sp)
	lw      $t5, 0x0018($sp)
	lui     $a0, %hi(object)
	sll     $t4, $t3, 2
	lw      $a0, %lo(object)($a0)
	jal     shape_8037C658
	addu    $a1, $t4, $t5
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $at, %hi(object_pc)
	addiu   $t7, $t6, 0x0004
	sw      $t7, %lo(object_pc)($at)
	b       .L80384F7C
	move    $v0, $0
	b       .L80384F7C
	nop
.L80384F7C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int o_script_1E(void) */
.globl o_script_1E
o_script_1E:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x001C($sp)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x0020($sp)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x001C($sp)
	jal     map_80381794
	add.s   $f14, $f10, $f16
	swc1    $f0, 0x0018($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x0018($sp)
	swc1    $f18, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	ori     $t2, $t1, 0x0002
	sw      $t2, 0x00EC($t0)
	lui     $t3, %hi(object_pc)
	lw      $t3, %lo(object_pc)($t3)
	lui     $at, %hi(object_pc)
	addiu   $t4, $t3, 0x0004
	sw      $t4, %lo(object_pc)($at)
	b       .L8038502C
	move    $v0, $0
	b       .L8038502C
	nop
.L8038502C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int o_script_18(void) */
.globl o_script_18
o_script_18:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lui     $at, %hi(object_pc)
	addiu   $t1, $t0, 0x0004
	sw      $t1, %lo(object_pc)($at)
	b       .L8038507C
	move    $v0, $0
	b       .L8038507C
	nop
.L8038507C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_1A(void) */
.globl o_script_1A
o_script_1A:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lui     $at, %hi(object_pc)
	addiu   $t1, $t0, 0x0004
	sw      $t1, %lo(object_pc)($at)
	b       .L803850C4
	move    $v0, $0
	b       .L803850C4
	nop
.L803850C4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_19(void) */
.globl o_script_19
o_script_19:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lui     $at, %hi(object_pc)
	addiu   $t1, $t0, 0x0004
	sw      $t1, %lo(object_pc)($at)
	b       .L8038510C
	move    $v0, $0
	b       .L8038510C
	nop
.L8038510C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_1F(void) */
.globl o_script_1F
o_script_1F:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x000C($sp)
	lui     $t1, %hi(object_pc)
	lw      $t1, %lo(object_pc)($t1)
	lw      $t2, 0x0000($t1)
	srl     $t3, $t2, 8
	andi    $t4, $t3, 0x00FF
	andi    $t5, $t4, 0x00FF
	sw      $t5, 0x0008($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0x00FF
	andi    $t9, $t8, 0x00FF
	sw      $t9, 0x0004($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0004($sp)
	lw      $t4, 0x0008($sp)
	lw      $t7, 0x000C($sp)
	sll     $t2, $t1, 2
	sll     $t5, $t4, 2
	addu    $t6, $t0, $t5
	addu    $t3, $t0, $t2
	lwc1    $f4, 0x0088($t3)
	lwc1    $f6, 0x0088($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t0, $t8
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0088($t9)
	lui     $t1, %hi(object_pc)
	lw      $t1, %lo(object_pc)($t1)
	lui     $at, %hi(object_pc)
	addiu   $t2, $t1, 0x0004
	sw      $t2, %lo(object_pc)($at)
	b       .L803851C8
	move    $v0, $0
	b       .L803851C8
	nop
.L803851C8:
	jr      $ra
	addiu   $sp, $sp, 0x0010

/* int o_script_20(void) */
.globl o_script_20
o_script_20:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x000C($sp)
	lui     $t1, %hi(object_pc)
	lw      $t1, %lo(object_pc)($t1)
	lw      $t2, 0x0000($t1)
	srl     $t3, $t2, 8
	andi    $t4, $t3, 0x00FF
	andi    $t5, $t4, 0x00FF
	sw      $t5, 0x0008($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0x00FF
	andi    $t9, $t8, 0x00FF
	sw      $t9, 0x0004($sp)
	lw      $t1, 0x0004($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x0008($sp)
	sll     $t2, $t1, 2
	lw      $t1, 0x000C($sp)
	sll     $t6, $t5, 2
	addu    $t7, $t0, $t6
	addu    $t3, $t0, $t2
	lw      $t4, 0x0088($t3)
	lw      $t8, 0x0088($t7)
	sll     $t2, $t1, 2
	addu    $t3, $t0, $t2
	addu    $t9, $t4, $t8
	sw      $t9, 0x0088($t3)
	lui     $t5, %hi(object_pc)
	lw      $t5, %lo(object_pc)($t5)
	lui     $at, %hi(object_pc)
	addiu   $t6, $t5, 0x0004
	sw      $t6, %lo(object_pc)($at)
	b       .L80385284
	move    $v0, $0
	b       .L80385284
	nop
.L80385284:
	jr      $ra
	addiu   $sp, $sp, 0x0010

/* int o_script_23(void) */
.globl o_script_23
o_script_23:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0004($t6)
	srl     $t8, $t7, 16
	sh      $t8, 0x0006($sp)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lw      $t0, 0x0004($t9)
	andi    $t1, $t0, 0xFFFF
	sh      $t1, 0x0004($sp)
	lh      $t2, 0x0006($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $t2, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x01F8($t3)
	lh      $t4, 0x0004($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x01FC($t5)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $at, %hi(object_pc)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(object_pc)($at)
	b       .L80385314
	move    $v0, $0
	b       .L80385314
	nop
.L80385314:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_2E(void) */
.globl o_script_2E
o_script_2E:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0004($t6)
	srl     $t8, $t7, 16
	sh      $t8, 0x0006($sp)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lw      $t0, 0x0004($t9)
	andi    $t1, $t0, 0xFFFF
	sh      $t1, 0x0004($sp)
	lh      $t2, 0x0006($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $t2, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0200($t3)
	lh      $t4, 0x0004($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0204($t5)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $at, %hi(object_pc)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(object_pc)($at)
	b       .L803853A4
	move    $v0, $0
	b       .L803853A4
	nop
.L803853A4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_2B(void) */
.globl o_script_2B
o_script_2B:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0004($t6)
	srl     $t8, $t7, 16
	sh      $t8, 0x0006($sp)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lw      $t0, 0x0004($t9)
	andi    $t1, $t0, 0xFFFF
	sh      $t1, 0x0004($sp)
	lui     $t2, %hi(object_pc)
	lw      $t2, %lo(object_pc)($t2)
	lw      $t3, 0x0008($t2)
	srl     $t4, $t3, 16
	sh      $t4, 0x0002($sp)
	lh      $t5, 0x0006($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $t5, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x01F8($t6)
	lh      $t7, 0x0004($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x01FC($t8)
	lh      $t9, 0x0002($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0208($t0)
	lui     $t1, %hi(object_pc)
	lw      $t1, %lo(object_pc)($t1)
	lui     $at, %hi(object_pc)
	addiu   $t2, $t1, 0x000C
	sw      $t2, %lo(object_pc)($at)
	b       .L80385464
	move    $v0, $0
	b       .L80385464
	nop
.L80385464:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_24(void) */
.globl o_script_24
o_script_24:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	andi    $t0, $t9, 0x00FF
	sh      $t0, 0x0006($sp)
	lui     $t1, %hi(object_pc)
	lw      $t1, %lo(object_pc)($t1)
	lw      $t2, 0x0000($t1)
	andi    $t3, $t2, 0xFFFF
	sh      $t3, 0x0004($sp)
	lui     $t4, %hi(object_pc)
	lw      $t4, %lo(object_pc)($t4)
	lui     $at, %hi(object_pc)
	addiu   $t5, $t4, 0x0004
	sw      $t5, %lo(object_pc)($at)
	b       .L803854C4
	move    $v0, $0
	b       .L803854C4
	nop
.L803854C4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_00(void) */
.globl o_script_00
o_script_00:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13004FD4
	jal     obj_lib_802A14FC
	la.l    $a0, o_13004FD4
	beqz    $v0, .L803854F0
	nop
	jal     obj_lib_802A4120
	nop
.L803854F0:
	la.u    $a0, o_13005024
	jal     obj_lib_802A14FC
	la.l    $a0, o_13005024
	beqz    $v0, .L8038550C
	nop
	jal     obj_lib_802A4120
	nop
.L8038550C:
	la.u    $a0, o_signpost
	jal     obj_lib_802A14FC
	la.l    $a0, o_signpost
	beqz    $v0, .L80385538
	nop
	li      $at, 0x43160000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0194($t6)
.L80385538:
	lui     $t7, %hi(object_pc)
	lw      $t7, %lo(object_pc)($t7)
	lui     $at, %hi(object_pc)
	addiu   $t8, $t7, 0x0004
	sw      $t8, %lo(object_pc)($at)
	b       .L8038555C
	move    $v0, $0
	b       .L8038555C
	nop
.L8038555C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

o_script_8038556C:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0070($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x006F($sp)
	lw      $t0, 0x0070($sp)
	sw      $0, 0x0028($sp)
	bgez    $t0, .L803855AC
	sra     $t1, $t0, 1
	addiu   $at, $t0, 0x0001
	sra     $t1, $at, 1
.L803855AC:
	bltz    $t1, .L80385638
	nop
.L803855B4:
	lw      $t3, 0x0028($sp)
	lui     $t2, %hi(object_pc)
	lw      $t2, %lo(object_pc)($t2)
	sll     $t4, $t3, 2
	addu    $t0, $sp, $t4
	addu    $t5, $t2, $t4
	lw      $t6, 0x0004($t5)
	srl     $t7, $t6, 16
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	sw      $t9, 0x002C($t0)
	lw      $t3, 0x0028($sp)
	lui     $t1, %hi(object_pc)
	lw      $t1, %lo(object_pc)($t1)
	sll     $t2, $t3, 2
	addu    $t4, $sp, $t2
	addu    $t5, $t1, $t2
	lw      $t6, 0x0004($t5)
	andi    $t7, $t6, 0xFFFF
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	sw      $t9, 0x0030($t4)
	lw      $t1, 0x0070($sp)
	lw      $t0, 0x0028($sp)
	addiu   $t3, $t0, 0x0002
	sw      $t3, 0x0028($sp)
	bgez    $t1, .L8038562C
	sra     $t5, $t1, 1
	addiu   $at, $t1, 0x0001
	sra     $t5, $at, 1
.L8038562C:
	slt     $at, $t5, $t3
	beqz    $at, .L803855B4
	nop
.L80385638:
	jal     o_script_80383CB4
	nop
	lw      $t6, 0x0070($sp)
	mov.s   $f20, $f0
	lbu     $t0, 0x006F($sp)
	mtc1    $t6, $f4
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	cvt.s.w $f6, $f4
	sll     $t1, $t0, 2
	addu    $t3, $t4, $t1
	mul.s   $f8, $f20, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sll     $t9, $t8, 2
	addu    $t2, $sp, $t9
	lw      $t2, 0x002C($t2)
	sw      $t2, 0x0088($t3)
	b       .L8038568C
	nop
.L8038568C:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

/* int o_script_2A(void) */
.globl o_script_2A
o_script_2A:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	jal     segment_to_virtual
	lw      $a0, 0x0004($t6)
	sw      $v0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x001C($sp)
	sw      $t7, 0x0218($t8)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(object_pc)($at)
	b       .L803856F0
	move    $v0, $0
	b       .L803856F0
	nop
.L803856F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int o_script_2D(void) */
.globl o_script_2D
o_script_2D:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0004
	sw      $t0, %lo(object_pc)($at)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

/* int o_script_2F(void) */
.globl o_script_2F
o_script_2F:
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0004($t6)
	sw      $t7, 0x0130($t8)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(object_pc)($at)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

/* int o_script_31(void) */
.globl o_script_31
o_script_31:
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0004($t6)
	sw      $t7, 0x0190($t8)
	lui     $t9, %hi(object_pc)
	lw      $t9, %lo(object_pc)($t9)
	lui     $at, %hi(object_pc)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(object_pc)($at)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

/* int o_script_32(void) */
.globl o_script_32
o_script_32:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x001F($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sh      $t2, 0x001C($sp)
	lh      $t3, 0x001C($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	jal     obj_lib_8029F430
	div.s   $f12, $f6, $f8
	lui     $t4, %hi(object_pc)
	lw      $t4, %lo(object_pc)($t4)
	lui     $at, %hi(object_pc)
	addiu   $t5, $t4, 0x0004
	sw      $t5, %lo(object_pc)($at)
	b       .L8038585C
	move    $v0, $0
	b       .L8038585C
	nop
.L8038585C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int o_script_30(void) */
.globl o_script_30
o_script_30:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t7, 0x0004($t6)
	srl     $t8, $t7, 16
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0128($t1)
	lui     $t2, %hi(object_pc)
	lw      $t2, %lo(object_pc)($t2)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lw      $t3, 0x0004($t2)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	andi    $t4, $t3, 0xFFFF
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	mtc1    $t6, $f8
	nop
	cvt.s.w $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x00E4($t7)
	lui     $t8, %hi(object_pc)
	lw      $t8, %lo(object_pc)($t8)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lw      $t9, 0x0008($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	srl     $t0, $t9, 16
	sll     $t1, $t0, 16
	sra     $t2, $t1, 16
	mtc1    $t2, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0158($t3)
	lui     $t4, %hi(object_pc)
	lw      $t4, %lo(object_pc)($t4)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lw      $t5, 0x0008($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	andi    $t6, $t5, 0xFFFF
	sll     $t7, $t6, 16
	sra     $t8, $t7, 16
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x012C($t9)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lw      $t1, 0x000C($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	srl     $t2, $t1, 16
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0170($t5)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lw      $t7, 0x000C($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	andi    $t8, $t7, 0xFFFF
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0174($t1)
	lui     $t2, %hi(object_pc)
	lw      $t2, %lo(object_pc)($t2)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lw      $t3, 0x0010($t2)
	srl     $t4, $t3, 16
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	mtc1    $t6, $f16
	nop
	cvt.s.w $f18, $f16
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x0004($sp)
	lui     $t7, %hi(object_pc)
	lw      $t7, %lo(object_pc)($t7)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lw      $t8, 0x0010($t7)
	andi    $t9, $t8, 0xFFFF
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	mtc1    $t1, $f8
	nop
	cvt.s.w $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0000($sp)
	lui     $t2, %hi(object_pc)
	lw      $t2, %lo(object_pc)($t2)
	lui     $at, %hi(object_pc)
	addiu   $t3, $t2, 0x0014
	sw      $t3, %lo(object_pc)($at)
	b       .L80385A58
	move    $v0, $0
	b       .L80385A58
	nop
.L80385A58:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_33(void) */
.globl o_script_33
o_script_33:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0004($t0)
	sw      $t1, 0x0000($sp)
	lw      $t2, 0x0000($sp)
	li      $at, -0x0001
	xor     $t3, $t2, $at
	sw      $t3, 0x0000($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lbu     $t6, 0x0007($sp)
	lw      $t0, 0x0000($sp)
	lw      $t5, 0x0068($t4)
	sll     $t7, $t6, 2
	addu    $t8, $t5, $t7
	lw      $t9, 0x0088($t8)
	and     $t1, $t9, $t0
	sw      $t1, 0x0088($t8)
	lui     $t2, %hi(object_pc)
	lw      $t2, %lo(object_pc)($t2)
	lui     $at, %hi(object_pc)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(object_pc)($at)
	b       .L80385AE8
	move    $v0, $0
	b       .L80385AE8
	nop
.L80385AE8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int o_script_37(void) */
.globl o_script_37
o_script_37:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0004($t6)
	sw      $t7, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EB04
	lw      $a1, 0x001C($sp)
	lui     $t8, %hi(object_pc)
	lw      $t8, %lo(object_pc)($t8)
	lui     $at, %hi(object_pc)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(object_pc)($at)
	b       .L80385B3C
	move    $v0, $0
	b       .L80385B3C
	nop
.L80385B3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int o_script_34(void) */
.globl o_script_34
o_script_34:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_pc)
	lw      $t6, %lo(object_pc)($t6)
	lw      $t7, 0x0000($t6)
	srl     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0007($sp)
	lui     $t0, %hi(object_pc)
	lw      $t0, %lo(object_pc)($t0)
	lw      $t1, 0x0000($t0)
	andi    $t2, $t1, 0xFFFF
	sh      $t2, 0x0004($sp)
	lui     $t3, %hi(gfx_frame)
	lw      $t3, %lo(gfx_frame)($t3)
	lh      $t4, 0x0004($sp)
	divu    $0, $t3, $t4
	mfhi    $t5
	bnez    $t4, .L80385B9C
	nop
	break   7
.L80385B9C:
	bnez    $t5, .L80385BC4
	nop
	lbu     $t7, 0x0007($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	lw      $t0, 0x0088($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0088($t9)
.L80385BC4:
	lui     $t2, %hi(object_pc)
	lw      $t2, %lo(object_pc)($t2)
	lui     $at, %hi(object_pc)
	addiu   $t3, $t2, 0x0004
	sw      $t3, %lo(object_pc)($at)
	b       .L80385BE8
	move    $v0, $0
	b       .L80385BE8
	nop
.L80385BE8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl o_script_80385BF0
o_script_80385BF0:
	jr      $ra
	nop
	jr      $ra
	nop

.globl o_script_main
o_script_main:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x008C($t6)
	sh      $t7, 0x002A($sp)
	lh      $t8, 0x002A($sp)
	andi    $t9, $t8, 0x0040
	beqz    $t9, .L80385C5C
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E2F8
	lw      $a0, %lo(object)($a0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	swc1    $f0, 0x015C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x015C($t1)
	b       .L80385C68
	swc1    $f4, 0x0024($sp)
.L80385C5C:
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0024($sp)
.L80385C68:
	lh      $t2, 0x002A($sp)
	andi    $t3, $t2, 0x2000
	beqz    $t3, .L80385C98
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0160($t4)
.L80385C98:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x018C($t5)
	lw      $t7, 0x014C($t5)
	beq     $t6, $t7, .L80385CD8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t9, %hi(object)
	lui     $t0, %hi(object)
	sw      $0, 0x0154($t8)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0150($t9)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	sw      $t1, 0x018C($t0)
.L80385CD8:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_pc)
	lw      $t3, 0x01CC($t2)
	sw      $t3, %lo(object_pc)($at)
.L80385CEC:
	lui     $t4, %hi(object_pc)
	lw      $t4, %lo(object_pc)($t4)
	lui     $t8, %hi(o_script_table)
	lw      $t5, 0x0000($t4)
	srl     $t6, $t5, 24
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(o_script_table)($t8)
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	jalr    $t9
	nop
	sw      $v0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	beqz    $t1, .L80385CEC
	nop
	lui     $t0, %hi(object_pc)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, %lo(object_pc)($t0)
	sw      $t0, 0x01CC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li.u    $at, 0x3FFFFFFF
	li.l    $at, 0x3FFFFFFF
	lw      $t4, 0x0154($t3)
	slt     $at, $t4, $at
	beqz    $at, .L80385D74
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0154($t5)
.L80385D74:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x018C($t8)
	lw      $t1, 0x014C($t8)
	beq     $t9, $t1, .L80385DB4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t2, %hi(object)
	lui     $t3, %hi(object)
	sw      $0, 0x0154($t0)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0150($t2)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	sw      $t4, 0x018C($t3)
.L80385DB4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x008C($t6)
	sh      $t7, 0x002A($sp)
	lh      $t5, 0x002A($sp)
	andi    $t8, $t5, 0x0010
	beqz    $t8, .L80385DE0
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_8029F8EC
	lw      $a0, %lo(object)($a0)
.L80385DE0:
	lh      $t9, 0x002A($sp)
	andi    $t1, $t9, 0x0008
	beqz    $t1, .L80385E00
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x00C8($t0)
	sw      $t2, 0x00D4($t0)
.L80385E00:
	lh      $t4, 0x002A($sp)
	andi    $t3, $t4, 0x0002
	beqz    $t3, .L80385E18
	nop
	jal     obj_lib_802A120C
	nop
.L80385E18:
	lh      $t6, 0x002A($sp)
	andi    $t7, $t6, 0x0004
	beqz    $t7, .L80385E30
	nop
	jal     obj_lib_802A12A4
	nop
.L80385E30:
	lh      $t5, 0x002A($sp)
	andi    $t8, $t5, 0x0200
	beqz    $t8, .L80385E4C
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A2A84
	lw      $a0, %lo(object)($a0)
.L80385E4C:
	lh      $t9, 0x002A($sp)
	andi    $t1, $t9, 0x0800
	beqz    $t1, .L80385E68
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A2A18
	lw      $a0, %lo(object)($a0)
.L80385E68:
	lh      $t2, 0x002A($sp)
	andi    $t0, $t2, 0x0001
	beqz    $t0, .L80385E84
	nop
	lui     $a0, %hi(object)
	jal     o_script_80383D68
	lw      $a0, %lo(object)($a0)
.L80385E84:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0001
	lw      $t3, 0x01A0($t4)
	beq     $t3, $at, .L80385EAC
	nop
	jal     obj_lib_802A4210
	nop
	b       .L80385F70
	nop
.L80385EAC:
	lh      $t6, 0x002A($sp)
	andi    $t7, $t6, 0x0040
	beqz    $t7, .L80385F70
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x0218($t5)
	bnez    $t8, .L80385F70
	nop
	lh      $t9, 0x002A($sp)
	andi    $t1, $t9, 0x0080
	bnez    $t1, .L80385F70
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x019C($t2)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80385F30
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0002
	lh      $t4, 0x0002($t0)
	and     $t3, $t4, $at
	sh      $t3, 0x0002($t0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t5, $t7, 0x0002
	b       .L80385F70
	sh      $t5, 0x0074($t6)
.L80385F30:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0124($t8)
	bnez    $t9, .L80385F70
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x0002($t1)
	ori     $t4, $t2, 0x0001
	sh      $t4, 0x0002($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, -0x0003
	lh      $t0, 0x0074($t3)
	and     $t7, $t0, $at
	sh      $t7, 0x0074($t3)
.L80385F70:
	b       .L80385F78
	nop
.L80385F78:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

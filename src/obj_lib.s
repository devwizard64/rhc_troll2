.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl s_obj_lib_8029D890
s_obj_lib_8029D890:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L8029D904
	nop
	lui     $t7, %hi(shape_object)
	lw      $t7, %lo(shape_object)($t7)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x006C($t8)
	beqz    $t9, .L8029D904
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
.L8029D904:
	b       .L8029D914
	move    $v0, $0
	b       .L8029D914
	nop
.L8029D914:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl s_obj_lib_8029D924
s_obj_lib_8029D924:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $0, 0x003C($sp)
	lw      $t6, 0x0040($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L8029DB28
	nop
	lui     $t7, %hi(shape_object)
	lw      $t7, %lo(shape_object)($t7)
	sw      $t7, 0x0034($sp)
	lw      $t8, 0x0044($sp)
	sw      $t8, 0x0030($sp)
	lw      $t9, 0x0044($sp)
	sw      $t9, 0x002C($sp)
	lui     $t0, %hi(shape_hand)
	lw      $t0, %lo(shape_hand)($t0)
	beqz    $t0, .L8029D988
	nop
	lui     $t1, %hi(shape_hand)
	lw      $t1, %lo(shape_hand)($t1)
	lw      $t2, 0x001C($t1)
	sw      $t2, 0x0034($sp)
.L8029D988:
	lw      $t3, 0x0034($sp)
	lw      $t4, 0x017C($t3)
	sw      $t4, 0x0028($sp)
	jal     gfx_alloc
	li      $a0, 0x0018
	sw      $v0, 0x003C($sp)
	lw      $t5, 0x003C($sp)
	sw      $t5, 0x0038($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x00FF
	bne     $t6, $at, .L8029DA04
	nop
	lw      $t7, 0x0030($sp)
	li      $at, 0x0014
	lw      $t8, 0x0018($t7)
	bne     $t8, $at, .L8029D9E4
	nop
	lw      $t9, 0x0030($sp)
	lh      $t0, 0x0002($t9)
	andi    $t1, $t0, 0x00FF
	ori     $t2, $t1, 0x0600
	b       .L8029D9F8
	sh      $t2, 0x0002($t9)
.L8029D9E4:
	lw      $t3, 0x0030($sp)
	lh      $t4, 0x0002($t3)
	andi    $t5, $t4, 0x00FF
	ori     $t6, $t5, 0x0100
	sh      $t6, 0x0002($t3)
.L8029D9F8:
	lw      $t7, 0x0034($sp)
	b       .L8029DAD8
	sw      $0, 0x00F0($t7)
.L8029DA04:
	lw      $t8, 0x0030($sp)
	li      $at, 0x0014
	lw      $t0, 0x0018($t8)
	bne     $t0, $at, .L8029DA30
	nop
	lw      $t1, 0x0030($sp)
	lh      $t2, 0x0002($t1)
	andi    $t9, $t2, 0x00FF
	ori     $t4, $t9, 0x0600
	b       .L8029DA44
	sh      $t4, 0x0002($t1)
.L8029DA30:
	lw      $t5, 0x0030($sp)
	lh      $t6, 0x0002($t5)
	andi    $t3, $t6, 0x00FF
	ori     $t7, $t3, 0x0500
	sh      $t7, 0x0002($t5)
.L8029DA44:
	lw      $t0, 0x0034($sp)
	li      $t8, 0x0001
	sw      $t8, 0x00F0($t0)
	lw      $t2, 0x0028($sp)
	bnez    $t2, .L8029DA84
	nop
	la.u    $a0, o_13001850
	jal     segment_to_virtual
	la.l    $a0, o_13001850
	lw      $t9, 0x0034($sp)
	lw      $t4, 0x020C($t9)
	bne     $v0, $t4, .L8029DA84
	nop
	lw      $t6, 0x0034($sp)
	li      $t1, 0x0002
	sw      $t1, 0x00F0($t6)
.L8029DA84:
	lw      $t3, 0x0030($sp)
	li      $at, 0x000A
	lw      $t7, 0x0018($t3)
	beq     $t7, $at, .L8029DAD8
	nop
	lw      $t5, 0x0034($sp)
	lh      $t8, 0x0074($t5)
	andi    $t0, $t8, 0x0080
	beqz    $t0, .L8029DAD8
	nop
	lw      $t2, 0x0038($sp)
	addiu   $t9, $t2, 0x0008
	sw      $t9, 0x0038($sp)
	sw      $t2, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li.u    $t4, 0xB9000002
	li.l    $t4, 0xB9000002
	sw      $t4, 0x0000($t1)
	lw      $t3, 0x0024($sp)
	li      $t6, 0x0003
	sw      $t6, 0x0004($t3)
.L8029DAD8:
	lw      $t7, 0x0038($sp)
	addiu   $t5, $t7, 0x0008
	sw      $t5, 0x0038($sp)
	sw      $t7, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t0)
	lw      $t2, 0x0028($sp)
	lw      $t1, 0x0020($sp)
	li      $at, -0x0100
	andi    $t9, $t2, 0x00FF
	or      $t4, $t9, $at
	sw      $t4, 0x0004($t1)
	lw      $t6, 0x0038($sp)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t3, 0xB8000000
	sw      $t3, 0x0000($t7)
	lw      $t5, 0x001C($sp)
	sw      $0, 0x0004($t5)
.L8029DB28:
	b       .L8029DB38
	lw      $v0, 0x003C($sp)
	b       .L8029DB38
	nop
.L8029DB38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl s_obj_lib_8029DB48
s_obj_lib_8029DB48:
	addiu   $sp, $sp, -0x0008
	li      $at, 0x0001
	bne     $a0, $at, .L8029DBBC
	nop
	lui     $t6, %hi(shape_object)
	lw      $t6, %lo(shape_object)($t6)
	sw      $t6, 0x0004($sp)
	sw      $a1, 0x0000($sp)
	lui     $t7, %hi(shape_hand)
	lw      $t7, %lo(shape_hand)($t7)
	beqz    $t7, .L8029DB88
	nop
	lui     $t8, %hi(shape_hand)
	lw      $t8, %lo(shape_hand)($t8)
	lw      $t9, 0x001C($t8)
	sw      $t9, 0x0004($sp)
.L8029DB88:
	lw      $t0, 0x0004($sp)
	lw      $t2, 0x0000($sp)
	lw      $t1, 0x00F0($t0)
	lh      $t3, 0x001C($t2)
	slt     $at, $t1, $t3
	bnez    $at, .L8029DBAC
	nop
	lw      $t4, 0x0004($sp)
	sw      $0, 0x00F0($t4)
.L8029DBAC:
	lw      $t5, 0x0004($sp)
	lw      $t7, 0x0000($sp)
	lw      $t6, 0x00F0($t5)
	sh      $t6, 0x001E($t7)
.L8029DBBC:
	b       .L8029DBCC
	move    $v0, $0
	b       .L8029DBCC
	nop
.L8029DBCC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl s_obj_lib_8029DBD4
s_obj_lib_8029DBD4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lui     $t6, %hi(shape_object)
	lw      $t6, %lo(shape_object)($t6)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x002C($sp)
	sw      $t7, 0x0018($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x0001
	bne     $t8, $at, .L8029DCAC
	nop
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	bnez    $t9, .L8029DC24
	nop
	lw      $t0, 0x0018($sp)
	b       .L8029DCA4
	sh      $0, 0x001E($t0)
.L8029DC24:
	li      $t1, 0x0001
	lui     $at, %hi(object_80361182)
	sh      $t1, %lo(object_80361182)($at)
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	addiu   $a3, $sp, 0x0020
	lwc1    $f12, 0x00A0($t2)
	lwc1    $f14, 0x00A4($t2)
	jal     map_80381900
	lw      $a2, 0x00A8($t2)
	lw      $t3, 0x0020($sp)
	beqz    $t3, .L8029DCA4
	nop
	lw      $t4, 0x0020($sp)
	lui     $at, %hi(object_80361250)
	lb      $t5, 0x0005($t4)
	sh      $t5, %lo(object_80361250)($at)
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0005($t6)
	addiu   $t8, $t7, -0x0001
	sh      $t8, 0x0026($sp)
	lw      $t9, 0x0020($sp)
	la.u    $a0, str_obj_lib_areainfo
	la.l    $a0, str_obj_lib_areainfo
	jal     obj_debug_802CA5B8
	lb      $a1, 0x0005($t9)
	lh      $t0, 0x0026($sp)
	bltz    $t0, .L8029DCA4
	nop
	lh      $t1, 0x0026($sp)
	lw      $t2, 0x0018($sp)
	sh      $t1, 0x001E($t2)
.L8029DCA4:
	b       .L8029DCB4
	nop
.L8029DCAC:
	lw      $t3, 0x0018($sp)
	sh      $0, 0x001E($t3)
.L8029DCB4:
	b       .L8029DCC4
	move    $v0, $0
	b       .L8029DCC4
	nop
.L8029DCC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_8029DCD4
obj_lib_8029DCD4:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x0138($a1)
	swc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x013C($a1)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x0140($a1)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f16, 0x0000($a0)
	lwc1    $f4, 0x0008($sp)
	lwc1    $f6, 0x0010($a0)
	mul.s   $f18, $f10, $f16
	lwc1    $f16, 0x0004($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0020($a0)
	mul.s   $f6, $f16, $f4
	add.s   $f10, $f18, $f8
	lwc1    $f8, 0x0030($a0)
	add.s   $f18, $f10, $f6
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x00A0($a1)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f10, 0x0004($a0)
	lwc1    $f8, 0x0008($sp)
	lwc1    $f18, 0x0014($a0)
	mul.s   $f6, $f4, $f10
	lwc1    $f10, 0x0004($sp)
	mul.s   $f16, $f8, $f18
	lwc1    $f8, 0x0024($a0)
	mul.s   $f18, $f10, $f8
	add.s   $f4, $f6, $f16
	lwc1    $f16, 0x0034($a0)
	add.s   $f6, $f4, $f18
	add.s   $f10, $f16, $f6
	swc1    $f10, 0x00A4($a1)
	lwc1    $f8, 0x000C($sp)
	lwc1    $f4, 0x0008($a0)
	lwc1    $f16, 0x0008($sp)
	lwc1    $f6, 0x0018($a0)
	mul.s   $f18, $f8, $f4
	lwc1    $f4, 0x0004($sp)
	mul.s   $f10, $f16, $f6
	lwc1    $f16, 0x0028($a0)
	mul.s   $f6, $f4, $f16
	add.s   $f8, $f18, $f10
	lwc1    $f10, 0x0038($a0)
	add.s   $f18, $f8, $f6
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x00A8($a1)
	b       .L8029DDA0
	nop
.L8029DDA0:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl obj_lib_8029DDA8
obj_lib_8029DDA8:
	lwc1    $f4, 0x002C($a0)
	lwc1    $f6, 0x0000($a2)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($a1)
	lwc1    $f10, 0x0030($a0)
	lwc1    $f16, 0x0010($a2)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0010($a1)
	lwc1    $f4, 0x0034($a0)
	lwc1    $f6, 0x0020($a2)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($a1)
	lwc1    $f10, 0x0030($a2)
	swc1    $f10, 0x0030($a1)
	lwc1    $f16, 0x002C($a0)
	lwc1    $f18, 0x0004($a2)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0004($a1)
	lwc1    $f6, 0x0030($a0)
	lwc1    $f8, 0x0014($a2)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0014($a1)
	lwc1    $f16, 0x0034($a0)
	lwc1    $f18, 0x0024($a2)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($a1)
	lwc1    $f6, 0x0034($a2)
	swc1    $f6, 0x0034($a1)
	lwc1    $f8, 0x002C($a0)
	lwc1    $f10, 0x0008($a2)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0008($a1)
	lwc1    $f18, 0x0030($a0)
	lwc1    $f4, 0x0018($a2)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0018($a1)
	lwc1    $f8, 0x0034($a0)
	lwc1    $f10, 0x0028($a2)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0028($a1)
	lwc1    $f18, 0x0038($a2)
	swc1    $f18, 0x0038($a1)
	lwc1    $f4, 0x000C($a2)
	swc1    $f4, 0x000C($a1)
	lwc1    $f6, 0x001C($a2)
	swc1    $f6, 0x001C($a1)
	lwc1    $f8, 0x002C($a2)
	swc1    $f8, 0x002C($a1)
	lwc1    $f10, 0x003C($a2)
	swc1    $f10, 0x003C($a1)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029DE80
obj_lib_8029DE80:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x0030($a2)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f10, 0x0034($a2)
	lwc1    $f16, 0x0004($a2)
	mul.s   $f8, $f4, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0038($a2)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x000C($sp)
	lwc1    $f18, 0x0030($a2)
	lwc1    $f6, 0x0010($a2)
	lwc1    $f16, 0x0034($a2)
	lwc1    $f4, 0x0014($a2)
	mul.s   $f10, $f18, $f6
	lwc1    $f6, 0x0018($a2)
	mul.s   $f8, $f16, $f4
	lwc1    $f16, 0x0038($a2)
	mul.s   $f4, $f6, $f16
	add.s   $f18, $f10, $f8
	add.s   $f10, $f4, $f18
	swc1    $f10, 0x0008($sp)
	lwc1    $f8, 0x0030($a2)
	lwc1    $f6, 0x0020($a2)
	lwc1    $f4, 0x0034($a2)
	lwc1    $f18, 0x0024($a2)
	mul.s   $f16, $f8, $f6
	lwc1    $f6, 0x0028($a2)
	mul.s   $f10, $f4, $f18
	lwc1    $f4, 0x0038($a2)
	mul.s   $f18, $f6, $f4
	add.s   $f8, $f16, $f10
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x0004($sp)
	lwc1    $f10, 0x0000($a1)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f18, 0x0004($a1)
	lwc1    $f8, 0x0004($a2)
	mul.s   $f4, $f10, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f16, $f18, $f8
	lwc1    $f18, 0x0008($a1)
	mul.s   $f8, $f6, $f18
	add.s   $f10, $f4, $f16
	add.s   $f4, $f8, $f10
	swc1    $f4, 0x0000($a0)
	lwc1    $f16, 0x0000($a1)
	lwc1    $f6, 0x0010($a2)
	lwc1    $f8, 0x0004($a1)
	lwc1    $f10, 0x0014($a2)
	mul.s   $f18, $f16, $f6
	lwc1    $f6, 0x0018($a2)
	mul.s   $f4, $f8, $f10
	lwc1    $f8, 0x0008($a1)
	mul.s   $f10, $f6, $f8
	add.s   $f16, $f18, $f4
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($a0)
	lwc1    $f4, 0x0000($a1)
	lwc1    $f6, 0x0020($a2)
	lwc1    $f10, 0x0004($a1)
	lwc1    $f16, 0x0024($a2)
	mul.s   $f8, $f4, $f6
	lwc1    $f6, 0x0028($a2)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0008($a1)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x0008($a0)
	lwc1    $f18, 0x0010($a1)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f16, 0x0014($a1)
	lwc1    $f4, 0x0004($a2)
	mul.s   $f10, $f18, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f8, $f16, $f4
	lwc1    $f16, 0x0018($a1)
	mul.s   $f4, $f6, $f16
	add.s   $f18, $f10, $f8
	add.s   $f10, $f4, $f18
	swc1    $f10, 0x0010($a0)
	lwc1    $f8, 0x0010($a1)
	lwc1    $f6, 0x0010($a2)
	lwc1    $f4, 0x0014($a1)
	lwc1    $f18, 0x0014($a2)
	mul.s   $f16, $f8, $f6
	lwc1    $f6, 0x0018($a2)
	mul.s   $f10, $f4, $f18
	lwc1    $f4, 0x0018($a1)
	mul.s   $f18, $f6, $f4
	add.s   $f8, $f16, $f10
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x0014($a0)
	lwc1    $f10, 0x0010($a1)
	lwc1    $f6, 0x0020($a2)
	lwc1    $f18, 0x0014($a1)
	lwc1    $f8, 0x0024($a2)
	mul.s   $f4, $f10, $f6
	lwc1    $f6, 0x0028($a2)
	mul.s   $f16, $f18, $f8
	lwc1    $f18, 0x0018($a1)
	mul.s   $f8, $f6, $f18
	add.s   $f10, $f4, $f16
	add.s   $f4, $f8, $f10
	swc1    $f4, 0x0018($a0)
	lwc1    $f16, 0x0020($a1)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f8, 0x0024($a1)
	lwc1    $f10, 0x0004($a2)
	mul.s   $f18, $f16, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f4, $f8, $f10
	lwc1    $f8, 0x0028($a1)
	mul.s   $f10, $f6, $f8
	add.s   $f16, $f18, $f4
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($a0)
	lwc1    $f4, 0x0020($a1)
	lwc1    $f6, 0x0010($a2)
	lwc1    $f10, 0x0024($a1)
	lwc1    $f16, 0x0014($a2)
	mul.s   $f8, $f4, $f6
	lwc1    $f6, 0x0018($a2)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0028($a1)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x0024($a0)
	lwc1    $f18, 0x0020($a1)
	lwc1    $f6, 0x0020($a2)
	lwc1    $f16, 0x0024($a1)
	lwc1    $f4, 0x0024($a2)
	mul.s   $f10, $f18, $f6
	lwc1    $f6, 0x0028($a2)
	mul.s   $f8, $f16, $f4
	lwc1    $f16, 0x0028($a1)
	mul.s   $f4, $f6, $f16
	add.s   $f18, $f10, $f8
	add.s   $f10, $f4, $f18
	swc1    $f10, 0x0028($a0)
	lwc1    $f8, 0x0030($a1)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f4, 0x0034($a1)
	lwc1    $f18, 0x0004($a2)
	mul.s   $f16, $f8, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f10, $f4, $f18
	lwc1    $f4, 0x0038($a1)
	mul.s   $f18, $f6, $f4
	add.s   $f8, $f16, $f10
	lwc1    $f10, 0x000C($sp)
	add.s   $f16, $f18, $f8
	sub.s   $f6, $f16, $f10
	swc1    $f6, 0x0030($a0)
	lwc1    $f4, 0x0030($a1)
	lwc1    $f18, 0x0010($a2)
	lwc1    $f16, 0x0034($a1)
	lwc1    $f10, 0x0014($a2)
	mul.s   $f8, $f4, $f18
	lwc1    $f18, 0x0018($a2)
	mul.s   $f6, $f16, $f10
	lwc1    $f16, 0x0038($a1)
	mul.s   $f10, $f18, $f16
	add.s   $f4, $f8, $f6
	lwc1    $f6, 0x0008($sp)
	add.s   $f8, $f10, $f4
	sub.s   $f18, $f8, $f6
	swc1    $f18, 0x0034($a0)
	lwc1    $f16, 0x0030($a1)
	lwc1    $f10, 0x0020($a2)
	lwc1    $f8, 0x0034($a1)
	lwc1    $f6, 0x0024($a2)
	mul.s   $f4, $f16, $f10
	lwc1    $f10, 0x0028($a2)
	mul.s   $f18, $f8, $f6
	lwc1    $f8, 0x0038($a1)
	mul.s   $f6, $f10, $f8
	add.s   $f16, $f4, $f18
	lwc1    $f18, 0x0004($sp)
	add.s   $f4, $f6, $f16
	sub.s   $f10, $f4, $f18
	swc1    $f10, 0x0038($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x000C($a0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x001C($a0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x002C($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x003C($a0)
	b       .L8029E1A8
	nop
.L8029E1A8:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl obj_lib_8029E1B0
obj_lib_8029E1B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0018($sp)
	sw      $t6, 0x0068($t7)
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x008C($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, .L8029E24C
	nop
	lw      $t2, 0x001C($sp)
	la.u    $t1, o_13003464
	la.l    $t1, o_13003464
	bne     $t1, $t2, .L8029E204
	nop
	lw      $t4, 0x0018($sp)
	li      $t3, 0x0001
	sw      $t3, 0x0124($t4)
.L8029E204:
	lw      $t6, 0x001C($sp)
	la.u    $t5, o_13003474
	la.l    $t5, o_13003474
	bne     $t5, $t6, .L8029E224
	nop
	lw      $t8, 0x0018($sp)
	li      $t7, 0x0002
	sw      $t7, 0x0124($t8)
.L8029E224:
	lw      $t0, 0x001C($sp)
	la.u    $t9, o_1300346C
	la.l    $t9, o_1300346C
	bne     $t9, $t0, .L8029E244
	nop
	lw      $t2, 0x0018($sp)
	li      $t1, 0x0003
	sw      $t1, 0x0124($t2)
.L8029E244:
	b       .L8029E264
	nop
.L8029E24C:
	jal     segment_to_virtual
	lw      $a0, 0x001C($sp)
	lw      $t3, 0x0018($sp)
	sw      $v0, 0x01CC($t3)
	lw      $t4, 0x0018($sp)
	sw      $0, 0x01D0($t4)
.L8029E264:
	b       .L8029E26C
	nop
.L8029E26C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_8029E27C
obj_lib_8029E27C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0024($sp)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0024($sp)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f16, 0x00A8($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f8, 0x0018($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	b       .L8029E2E8
	nop
	b       .L8029E2E8
	nop
.L8029E2E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029E2F8
obj_lib_8029E2F8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	lwc1    $f10, 0x00A4($t8)
	lwc1    $f16, 0x00A4($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x002C($sp)
	lwc1    $f4, 0x00A8($t0)
	lwc1    $f6, 0x00A8($t1)
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
	b       .L8029E388
	nop
	b       .L8029E388
	nop
.L8029E388:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_8029E398
obj_lib_8029E398:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00B8($t6)
	c.le.s  $f12, $f4
	nop
	bc1f    .L8029E3C4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       .L8029E3D8
	swc1    $f12, 0x00B8($t7)
.L8029E3C4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00B8($t8)
	add.s   $f8, $f6, $f14
	swc1    $f8, 0x00B8($t8)
.L8029E3D8:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029E3E8
obj_lib_8029E3E8:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	sw      $a2, 0x0010($sp)
	sw      $0, 0x0004($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0010($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0010($sp)
	mtc1    $0, $f16
	nop
	c.le.s  $f16, $f10
	nop
	bc1f    .L8029E454
	nop
	lwc1    $f18, 0x0000($a0)
	lwc1    $f4, 0x000C($sp)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L8029E44C
	nop
	lwc1    $f6, 0x000C($sp)
	swc1    $f6, 0x0000($a0)
	li      $t6, 0x0001
	sw      $t6, 0x0004($sp)
.L8029E44C:
	b       .L8029E47C
	nop
.L8029E454:
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x000C($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8029E47C
	nop
	lwc1    $f16, 0x000C($sp)
	swc1    $f16, 0x0000($a0)
	li      $t7, 0x0001
	sw      $t7, 0x0004($sp)
.L8029E47C:
	b       .L8029E48C
	lw      $v0, 0x0004($sp)
	b       .L8029E48C
	nop
.L8029E48C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_8029E494
obj_lib_8029E494:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sub.s   $f4, $f14, $f12
	mtc1    $0, $f8
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0004($sp)
	c.le.s  $f8, $f6
	nop
	bc1f    .L8029E4EC
	nop
	lwc1    $f10, 0x0004($sp)
	lwc1    $f16, 0x0010($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8029E4E0
	nop
	lwc1    $f18, 0x0010($sp)
	b       .L8029E4E4
	add.s   $f12, $f12, $f18
.L8029E4E0:
	mov.s   $f12, $f14
.L8029E4E4:
	b       .L8029E518
	nop
.L8029E4EC:
	lwc1    $f6, 0x0010($sp)
	lwc1    $f4, 0x0004($sp)
	neg.s   $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L8029E514
	nop
	lwc1    $f10, 0x0010($sp)
	b       .L8029E518
	sub.s   $f12, $f12, $f10
.L8029E514:
	mov.s   $f12, $f14
.L8029E518:
	b       .L8029E528
	mov.s   $f0, $f12
	b       .L8029E528
	nop
.L8029E528:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_8029E530
obj_lib_8029E530:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	subu    $t6, $a1, $a0
	sh      $t6, 0x0006($sp)
	lh      $t7, 0x0006($sp)
	bltz    $t7, .L8029E59C
	nop
	lh      $t8, 0x0006($sp)
	slt     $at, $a2, $t8
	beqz    $at, .L8029E588
	nop
	addu    $a0, $a0, $a2
	sll     $t9, $a0, 16
	move    $a0, $t9
	sra     $t0, $a0, 16
	b       .L8029E594
	move    $a0, $t0
.L8029E588:
	sll     $a0, $a1, 16
	sra     $t1, $a0, 16
	move    $a0, $t1
.L8029E594:
	b       .L8029E5D4
	nop
.L8029E59C:
	lh      $t2, 0x0006($sp)
	subu    $t3, $0, $a2
	slt     $at, $t2, $t3
	beqz    $at, .L8029E5C8
	nop
	subu    $a0, $a0, $a2
	sll     $t4, $a0, 16
	move    $a0, $t4
	sra     $t5, $a0, 16
	b       .L8029E5D4
	move    $a0, $t5
.L8029E5C8:
	sll     $a0, $a1, 16
	sra     $t6, $a0, 16
	move    $a0, $t6
.L8029E5D4:
	b       .L8029E5E4
	move    $v0, $a0
	b       .L8029E5E4
	nop
.L8029E5E4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_8029E5EC
obj_lib_8029E5EC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x0026($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $a1, 0x002A($sp)
	lh      $a2, 0x002E($sp)
	jal     obj_lib_8029E530
	lw      $a0, 0x00C8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t2, 0x0026($sp)
	lh      $t1, 0x00CA($t0)
	subu    $s0, $t1, $t2
	sll     $t3, $s0, 16
	move    $s0, $t3
	sra     $t4, $s0, 16
	move    $s0, $t4
	bnez    $s0, .L8029E670
	sw      $s0, 0x0118($t0)
	b       .L8029E680
	li      $v0, 0x0001
	b       .L8029E678
	nop
.L8029E670:
	b       .L8029E680
	move    $v0, $0
.L8029E678:
	b       .L8029E680
	nop
.L8029E680:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_8029E694
obj_lib_8029E694:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lwc1    $f4, 0x00A8($t6)
	swc1    $f4, 0x002C($sp)
	lw      $t7, 0x0034($sp)
	lwc1    $f6, 0x00A8($t7)
	swc1    $f6, 0x0024($sp)
	lw      $t8, 0x0030($sp)
	lwc1    $f8, 0x00A0($t8)
	swc1    $f8, 0x0028($sp)
	lw      $t9, 0x0034($sp)
	lwc1    $f10, 0x00A0($t9)
	swc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x0028($sp)
	sub.s   $f12, $f16, $f18
	jal     atan2
	sub.s   $f14, $f4, $f6
	sh      $v0, 0x001E($sp)
	b       .L8029E704
	lh      $v0, 0x001E($sp)
	b       .L8029E704
	nop
.L8029E704:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl obj_lib_8029E714
obj_lib_8029E714:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	sw      $s0, 0x0018($sp)
	lh      $s0, 0x004A($sp)
	li      $at, 0x000F
	beq     $s0, $at, .L8029E76C
	nop
	li      $at, 0x0010
	beq     $s0, $at, .L8029E7FC
	nop
	li      $at, 0x0012
	beq     $s0, $at, .L8029E76C
	nop
	li      $at, 0x0013
	beq     $s0, $at, .L8029E7FC
	nop
	b       .L8029E854
	nop
.L8029E76C:
	lw      $t6, 0x0044($sp)
	lw      $t7, 0x0040($sp)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x003C($sp)
	lw      $t8, 0x0044($sp)
	lw      $t9, 0x0040($sp)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f16, 0x00A8($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f8, 0x0034($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x003C($sp)
	lw      $t0, 0x0040($sp)
	lwc1    $f16, 0x00A4($t0)
	neg.s   $f18, $f16
	swc1    $f18, 0x0038($sp)
	lw      $t1, 0x0044($sp)
	lwc1    $f4, 0x00A4($t1)
	neg.s   $f8, $f4
	swc1    $f8, 0x0030($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f12, 0x003C($sp)
	jal     atan2
	sub.s   $f14, $f6, $f10
	sh      $v0, 0x002A($sp)
	b       .L8029E854
	nop
.L8029E7FC:
	lw      $t2, 0x0040($sp)
	lwc1    $f16, 0x00A8($t2)
	swc1    $f16, 0x003C($sp)
	lw      $t3, 0x0044($sp)
	lwc1    $f18, 0x00A8($t3)
	swc1    $f18, 0x0034($sp)
	lw      $t4, 0x0040($sp)
	lwc1    $f4, 0x00A0($t4)
	swc1    $f4, 0x0038($sp)
	lw      $t5, 0x0044($sp)
	lwc1    $f8, 0x00A0($t5)
	swc1    $f8, 0x0030($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f18, 0x0038($sp)
	sub.s   $f12, $f6, $f10
	jal     atan2
	sub.s   $f14, $f16, $f18
	sh      $v0, 0x002A($sp)
	b       .L8029E854
	nop
.L8029E854:
	lh      $t7, 0x004A($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	lw      $t0, 0x0088($t9)
	sh      $t0, 0x0028($sp)
	lh      $a0, 0x0028($sp)
	lh      $a1, 0x002A($sp)
	jal     obj_lib_8029E530
	lh      $a2, 0x004E($sp)
	lh      $t2, 0x004A($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sll     $t3, $t2, 2
	addu    $t4, $t1, $t3
	sw      $v0, 0x0088($t4)
	b       .L8029E8A8
	lh      $v0, 0x002A($sp)
	b       .L8029E8A8
	nop
.L8029E8A8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl obj_lib_8029E8BC
obj_lib_8029E8BC:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	mtc1    $a1, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0138($a0)
	mtc1    $a2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x013C($a0)
	mtc1    $a3, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0140($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029E914
obj_lib_8029E914:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	mtc1    $a1, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00A0($a0)
	mtc1    $a2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00A4($a0)
	mtc1    $a3, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00A8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029E96C
obj_lib_8029E96C:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sw      $a1, 0x00D0($a0)
	sw      $a2, 0x00D4($a0)
	sw      $a3, 0x00D8($a0)
	sw      $a1, 0x00C4($a0)
	sw      $a2, 0x00C8($a0)
	sw      $a3, 0x00CC($a0)
	jr      $ra
	nop
	jr      $ra
	nop

/* OBJECT *obj_lib_8029E9AC(
	OBJECT *,
	SHORT,
	int shape,
	O_SCRIPT *script,
	SHORT px,
	SHORT py,
	SHORT pz,
	SHORT ax,
	SHORT ay,
	SHORT az
) */
.globl obj_lib_8029E9AC
obj_lib_8029E9AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	lh      $a1, 0x0026($sp)
	lw      $a2, 0x0028($sp)
	jal     obj_lib_8029ED20
	lw      $a3, 0x002C($sp)
	sw      $v0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x0032($sp)
	lh      $a2, 0x0036($sp)
	jal     obj_lib_8029E914
	lh      $a3, 0x003A($sp)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x003E($sp)
	lh      $a2, 0x0042($sp)
	jal     obj_lib_8029E96C
	lh      $a3, 0x0046($sp)
	b       .L8029EA14
	lw      $v0, 0x001C($sp)
	b       .L8029EA14
	nop
.L8029EA14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029EA24
obj_lib_8029EA24:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	lw      $a2, 0x0024($sp)
	jal     obj_lib_8029ED20
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x008C($t6)
	ori     $t8, $t7, 0x0200
	sw      $t8, 0x008C($t6)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x002E($sp)
	lh      $a2, 0x0032($sp)
	jal     obj_lib_8029E8BC
	lh      $a3, 0x0036($sp)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x003A($sp)
	lh      $a2, 0x003E($sp)
	jal     obj_lib_8029E96C
	lh      $a3, 0x0036($sp)
	b       .L8029EA9C
	lw      $v0, 0x001C($sp)
	b       .L8029EA9C
	nop
.L8029EA9C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_lib_8029EAAC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     obj_lib_8029EDCC
	lw      $a2, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x008C($t6)
	ori     $t8, $t7, 0x0820
	sw      $t8, 0x008C($t6)
	b       .L8029EAF4
	lw      $v0, 0x001C($sp)
	b       .L8029EAF4
	nop
.L8029EAF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029EB04
obj_lib_8029EB04:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	lw      $a0, 0x0020($sp)
	lh      $a1, 0x0002($t6)
	jal     obj_lib_8029EDCC
	lw      $a2, 0x0004($t6)
	sw      $v0, 0x0018($sp)
	lw      $t7, 0x0024($sp)
	lh      $t8, 0x0000($t7)
	andi    $t9, $t8, 0x0002
	beqz    $t9, .L8029EB50
	nop
	jal     rand
	nop
	lw      $t0, 0x0018($sp)
	sw      $v0, 0x00C8($t0)
.L8029EB50:
	lw      $t1, 0x0024($sp)
	lh      $t2, 0x0000($t1)
	andi    $t3, $t2, 0x0040
	beqz    $t3, .L8029EBA8
	nop
	lw      $t4, 0x0024($sp)
	lh      $t5, 0x0008($t4)
	mtc1    $t5, $f4
	jal     obj_lib_802A2F14
	cvt.s.w $f12, $f4
	trunc.w.s $f6, $f0
	lw      $t0, 0x0018($sp)
	li      $at, 0x8000
	lw      $t1, 0x00C8($t0)
	mfc1    $t7, $f6
	addu    $t2, $t1, $at
	sll     $t3, $t2, 16
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	sra     $t4, $t3, 16
	addu    $t5, $t9, $t4
	sw      $t5, 0x00C8($t0)
.L8029EBA8:
	lw      $t6, 0x0024($sp)
	lh      $t7, 0x0000($t6)
	andi    $t8, $t7, 0x0080
	beqz    $t8, .L8029EBF0
	nop
	lw      $t1, 0x0024($sp)
	lh      $t2, 0x0008($t1)
	mtc1    $t2, $f8
	jal     obj_lib_802A2F14
	cvt.s.w $f12, $f8
	trunc.w.s $f10, $f0
	lw      $t0, 0x0018($sp)
	mfc1    $t9, $f10
	lh      $t6, 0x00CA($t0)
	sll     $t4, $t9, 16
	sra     $t5, $t4, 16
	addu    $t7, $t5, $t6
	sw      $t7, 0x00C8($t0)
.L8029EBF0:
	lw      $t8, 0x0024($sp)
	lh      $t1, 0x0000($t8)
	andi    $t2, $t1, 0x0020
	beqz    $t2, .L8029EC1C
	nop
	lw      $t3, 0x0018($sp)
	lwc1    $f12, 0x00A0($t3)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t3)
	lw      $t9, 0x0018($sp)
	swc1    $f0, 0x00A4($t9)
.L8029EC1C:
	lw      $t4, 0x0024($sp)
	lh      $t5, 0x0000($t4)
	andi    $t6, $t5, 0x0004
	beqz    $t6, .L8029EC54
	nop
	lw      $t7, 0x0024($sp)
	lw      $a0, 0x0018($sp)
	lh      $t0, 0x000A($t7)
	mtc1    $t0, $f16
	nop
	cvt.s.w $f16, $f16
	mfc1    $a1, $f16
	jal     obj_lib_802A308C
	nop
.L8029EC54:
	lw      $t8, 0x0024($sp)
	lh      $t1, 0x0000($t8)
	andi    $t2, $t1, 0x0008
	beqz    $t2, .L8029EC8C
	nop
	lw      $t3, 0x0024($sp)
	lw      $a0, 0x0018($sp)
	lh      $t9, 0x000A($t3)
	mtc1    $t9, $f18
	nop
	cvt.s.w $f18, $f18
	mfc1    $a1, $f18
	jal     obj_lib_802A2FC0
	nop
.L8029EC8C:
	jal     o_script_80383CB4
	nop
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x0018($sp)
	lwc1    $f4, 0x0010($t4)
	lwc1    $f8, 0x000C($t4)
	mul.s   $f6, $f0, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t5)
	jal     o_script_80383CB4
	nop
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x0018($sp)
	lwc1    $f16, 0x0018($t6)
	lwc1    $f4, 0x0014($t6)
	mul.s   $f18, $f0, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00B0($t7)
	jal     o_script_80383CB4
	nop
	lw      $t0, 0x0024($sp)
	lwc1    $f8, 0x0020($t0)
	lwc1    $f16, 0x001C($t0)
	mul.s   $f10, $f0, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     obj_lib_8029F404
	lw      $a1, 0x001C($sp)
	b       .L8029ED10
	lw      $v0, 0x0018($sp)
	b       .L8029ED10
	nop
.L8029ED10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029ED20
obj_lib_8029ED20:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x002C($sp)
	sw      $v0, 0x0018($sp)
	jal     obj_list_802C9F04
	lw      $a0, 0x0018($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	sw      $t6, 0x0068($t7)
	lw      $t8, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	lb      $t9, 0x0018($t8)
	sb      $t9, 0x0018($t0)
	lw      $t1, 0x0020($sp)
	lw      $t3, 0x001C($sp)
	lb      $t2, 0x0018($t1)
	sb      $t2, 0x0019($t3)
	lw      $t5, 0x0028($sp)
	lui     $t4, %hi(shape_table)
	lw      $t4, %lo(shape_table)($t4)
	sll     $t6, $t5, 2
	la.u    $a2, vecf_0
	la.u    $a3, vecs_0
	addu    $t7, $t4, $t6
	lw      $a1, 0x0000($t7)
	la.l    $a3, vecs_0
	la.l    $a2, vecf_0
	jal     shape_8037C448
	lw      $a0, 0x001C($sp)
	b       .L8029EDBC
	lw      $v0, 0x001C($sp)
	b       .L8029EDBC
	nop
.L8029EDBC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* OBJECT *obj_lib_8029EDCC(OBJECT *, int, O_SCRIPT *script) */
.globl obj_lib_8029EDCC
obj_lib_8029EDCC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	lw      $a2, 0x0024($sp)
	jal     obj_lib_8029ED20
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	jal     obj_lib_8029F0E0
	lw      $a1, 0x0020($sp)
	b       .L8029EE14
	lw      $v0, 0x001C($sp)
	b       .L8029EE14
	nop
.L8029EE14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029EE24
obj_lib_8029EE24:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lui     $t6, %hi(obj_list_free+0x60)
	lw      $t6, %lo(obj_list_free+0x60)($t6)
	beqz    $t6, .L8029EE98
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     obj_lib_8029EDCC
	lw      $a2, 0x0030($sp)
	sw      $v0, 0x001C($sp)
	lh      $t8, 0x0022($sp)
	lw      $t7, 0x001C($sp)
	mtc1    $t8, $f6
	lwc1    $f4, 0x00A4($t7)
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($t7)
	lw      $a0, 0x001C($sp)
	jal     obj_lib_8029F404
	lw      $a1, 0x0024($sp)
	b       .L8029EEA8
	lw      $v0, 0x001C($sp)
	b       .L8029EEA0
	nop
.L8029EE98:
	b       .L8029EEA8
	move    $v0, $0
.L8029EEA0:
	b       .L8029EEA8
	nop
.L8029EEA8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029EEB8
obj_lib_8029EEB8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	lw      $a2, 0x0024($sp)
	jal     obj_lib_8029ED20
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	jal     obj_lib_8029F0E0
	lw      $a1, 0x0020($sp)
	lw      $a0, 0x001C($sp)
	jal     obj_lib_8029F404
	lw      $a1, 0x002C($sp)
	b       .L8029EF10
	lw      $v0, 0x001C($sp)
	b       .L8029EF10
	nop
.L8029EF10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_lib_8029EF20:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x002C
	jal     obj_lib_802A2930
	li      $a2, 0x0012
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0006
	jal     obj_lib_802A2804
	li      $a2, 0x002C
	b       .L8029EF54
	nop
.L8029EF54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_8029EF64
obj_lib_8029EF64:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	move    $a1, $0
	lw      $a2, 0x0034($sp)
	jal     obj_lib_8029ED20
	lw      $a3, 0x0038($sp)
	sw      $v0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	jal     obj_lib_8029F0E0
	lw      $a1, 0x0030($sp)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x0026($sp)
	lh      $a2, 0x002A($sp)
	jal     obj_lib_8029E8BC
	lh      $a3, 0x002E($sp)
	jal     obj_lib_8029EF20
	lw      $a0, 0x001C($sp)
	lh      $t6, 0x0022($sp)
	lw      $t7, 0x001C($sp)
	sw      $t6, 0x0144($t7)
	lh      $t8, 0x0022($sp)
	lw      $t1, 0x001C($sp)
	andi    $t9, $t8, 0x00FF
	sll     $t0, $t9, 16
	sw      $t0, 0x0188($t1)
	b       .L8029EFEC
	lw      $v0, 0x001C($sp)
	b       .L8029EFEC
	nop
.L8029EFEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029EFFC
obj_lib_8029EFFC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lw      $t6, 0x0044($sp)
	lw      $t7, 0x0048($sp)
	lw      $t8, 0x004C($sp)
	lh      $a0, 0x0032($sp)
	lh      $a1, 0x0036($sp)
	lh      $a2, 0x003A($sp)
	lh      $a3, 0x003E($sp)
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	jal     obj_lib_8029EF64
	sw      $t8, 0x0018($sp)
	sw      $v0, 0x002C($sp)
	lw      $a0, 0x002C($sp)
	jal     obj_lib_8029F404
	lw      $a1, 0x0040($sp)
	b       .L8029F060
	lw      $v0, 0x002C($sp)
	b       .L8029F060
	nop
.L8029F060:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

obj_lib_8029F070:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00AC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x00B0($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A8($t8)
	lwc1    $f6, 0x00B4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F0C8
obj_lib_8029F0C8:
	lwc1    $f4, 0x00DC($a1)
	swc1    $f4, 0x00DC($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F0E0
obj_lib_8029F0E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     obj_lib_8029F120
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     obj_lib_8029F148
	lw      $a1, 0x001C($sp)
	b       .L8029F110
	nop
.L8029F110:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_8029F120
obj_lib_8029F120:
	lwc1    $f4, 0x00A0($a1)
	swc1    $f4, 0x00A0($a0)
	lwc1    $f6, 0x00A4($a1)
	swc1    $f6, 0x00A4($a0)
	lwc1    $f8, 0x00A8($a1)
	swc1    $f8, 0x00A8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_8029F148:
	lw      $t6, 0x00C4($a1)
	sw      $t6, 0x00C4($a0)
	lw      $t7, 0x00C8($a1)
	sw      $t7, 0x00C8($a0)
	lw      $t8, 0x00CC($a1)
	sw      $t8, 0x00CC($a0)
	lw      $t9, 0x00D0($a1)
	sw      $t9, 0x00D0($a0)
	lw      $t0, 0x00D4($a1)
	sw      $t0, 0x00D4($a0)
	lw      $t1, 0x00D8($a1)
	sw      $t1, 0x00D8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F188
obj_lib_8029F188:
	lwc1    $f4, 0x00A0($a0)
	swc1    $f4, 0x0020($a0)
	lwc1    $f6, 0x00A4($a0)
	swc1    $f6, 0x0024($a0)
	lwc1    $f8, 0x00A8($a0)
	swc1    $f8, 0x0028($a0)
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_8029F1B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0120($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	sll     $t9, $t8, 2
	jal     shape_8037C658
	addu    $a1, $t9, $t0
	b       .L8029F1F0
	nop
.L8029F1F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void obj_lib_8029F200(MTXF mf, VECF dst, VECF src) */
.globl obj_lib_8029F200
obj_lib_8029F200:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
.L8029F208:
	lw      $t6, 0x0004($sp)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f16, 0x0004($a2)
	sll     $t7, $t6, 2
	addu    $t8, $a0, $t7
	lwc1    $f4, 0x0000($t8)
	addu    $t9, $a0, $t7
	lwc1    $f10, 0x0010($t9)
	mul.s   $f8, $f4, $f6
	addu    $t0, $a0, $t7
	lwc1    $f6, 0x0008($a2)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0020($t0)
	addu    $t1, $a1, $t7
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x0000($t1)
	lw      $t2, 0x0004($sp)
	addiu   $t3, $t2, 0x0001
	slti    $at, $t3, 0x0003
	bnez    $at, .L8029F208
	sw      $t3, 0x0004($sp)
	b       .L8029F26C
	nop
.L8029F26C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void obj_lib_8029F274(MTXF mf, VECF dst, VECF src) */
.globl obj_lib_8029F274
obj_lib_8029F274:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
.L8029F27C:
	lw      $t6, 0x0004($sp)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f16, 0x0004($a2)
	sll     $t7, $t6, 4
	addu    $t8, $a0, $t7
	lwc1    $f4, 0x0000($t8)
	addu    $t9, $a0, $t7
	lwc1    $f10, 0x0004($t9)
	mul.s   $f8, $f4, $f6
	addu    $t0, $a0, $t7
	lwc1    $f6, 0x0008($a2)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0008($t0)
	sll     $t1, $t6, 2
	addu    $t2, $a1, $t1
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x0000($t2)
	lw      $t3, 0x0004($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0003
	bnez    $at, .L8029F27C
	sw      $t4, 0x0004($sp)
	b       .L8029F2E4
	nop
.L8029F2E4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_lib_8029F2EC:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x002C($a0)
	swc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x0030($a0)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x0034($a0)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x021C($a0)
	lwc1    $f16, 0x000C($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x021C($a0)
	lwc1    $f4, 0x0220($a0)
	lwc1    $f6, 0x000C($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0220($a0)
	lwc1    $f10, 0x0224($a0)
	lwc1    $f16, 0x000C($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0224($a0)
	lwc1    $f4, 0x022C($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x022C($a0)
	lwc1    $f10, 0x0230($a0)
	lwc1    $f16, 0x0008($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0230($a0)
	lwc1    $f4, 0x0234($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0234($a0)
	lwc1    $f10, 0x023C($a0)
	lwc1    $f16, 0x0004($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x023C($a0)
	lwc1    $f4, 0x0240($a0)
	lwc1    $f6, 0x0004($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0240($a0)
	lwc1    $f10, 0x0244($a0)
	lwc1    $f16, 0x0004($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0244($a0)
	b       .L8029F3A0
	nop
.L8029F3A0:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl obj_lib_8029F3A8
obj_lib_8029F3A8:
	lwc1    $f4, 0x002C($a1)
	swc1    $f4, 0x002C($a0)
	lwc1    $f6, 0x0030($a1)
	swc1    $f6, 0x0030($a0)
	lwc1    $f8, 0x0034($a1)
	swc1    $f8, 0x0034($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F3D0
obj_lib_8029F3D0:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lwc1    $f4, 0x0004($sp)
	swc1    $f4, 0x002C($a0)
	lwc1    $f6, 0x0008($sp)
	swc1    $f6, 0x0030($a0)
	lwc1    $f8, 0x000C($sp)
	swc1    $f8, 0x0034($a0)
	b       .L8029F3FC
	nop
.L8029F3FC:
	jr      $ra
	nop

.globl obj_lib_8029F404
obj_lib_8029F404:
	sw      $a1, 0x0004($sp)
	lwc1    $f4, 0x0004($sp)
	swc1    $f4, 0x002C($a0)
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x0030($a0)
	lwc1    $f8, 0x0004($sp)
	swc1    $f8, 0x0034($a0)
	b       .L8029F428
	nop
.L8029F428:
	jr      $ra
	nop

.globl obj_lib_8029F430
obj_lib_8029F430:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f12, 0x002C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f12, 0x0030($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	swc1    $f12, 0x0034($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F464
obj_lib_8029F464:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0120($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	lui     $a0, %hi(object)
	sll     $t9, $t8, 2
	lw      $a0, %lo(object)($a0)
	jal     shape_8037C658
	addu    $a1, $t9, $t0
	b       .L8029F4A4
	nop
.L8029F4A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029F4B4
obj_lib_8029F4B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0120($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	lui     $a0, %hi(object)
	sll     $t9, $t8, 2
	lw      $a0, %lo(object)($a0)
	jal     shape_8037C658
	addu    $a1, $t9, $t0
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0020($sp)
	sw      $t1, 0x0178($t2)
	b       .L8029F504
	nop
.L8029F504:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029F514
obj_lib_8029F514:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0120($t6)
	sw      $t7, 0x001C($sp)
	li      $at, 0x47800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	lui     $a0, %hi(object)
	sll     $t1, $t0, 2
	lw      $a0, %lo(object)($a0)
	lw      $a2, 0x0018($sp)
	jal     shape_8037C708
	addu    $a1, $t1, $t2
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x0020($sp)
	sw      $t3, 0x0178($t4)
	b       .L8029F58C
	nop
.L8029F58C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029F59C
obj_lib_8029F59C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0020($sp)
	sw      $t7, 0x0120($t8)
	lw      $t9, 0x0028($sp)
	lw      $t1, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	sll     $t0, $t9, 2
	jal     shape_8037C658
	addu    $a1, $t0, $t1
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	sw      $t2, 0x0178($t3)
	b       .L8029F5F0
	nop
.L8029F5F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_lib_8029F600:
	lh      $t6, 0x0002($a0)
	ori     $t7, $t6, 0x0001
	sh      $t7, 0x0002($a0)
	sw      $0, 0x009C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F620
obj_lib_8029F620:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0001
	sh      $t8, 0x0002($t6)
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_8029F644:
	lh      $t6, 0x0002($a0)
	li      $at, -0x0002
	and     $t7, $t6, $at
	sh      $t7, 0x0002($a0)
	li      $t8, -0x0001
	sw      $t8, 0x009C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F66C
obj_lib_8029F66C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0002
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F694
obj_lib_8029F694:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F6BC
obj_lib_8029F6BC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0010
	sh      $t8, 0x0002($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F6E0
obj_lib_8029F6E0:
	addiu   $sp, $sp, -0x0010
	sw      $a1, 0x0014($sp)
	sw      $a2, 0x0018($sp)
	sw      $a3, 0x001C($sp)
	lhu     $t6, 0x00CA($a0)
	lui     $at, %hi(math_cos)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x000C($sp)
	lhu     $t9, 0x00CA($a0)
	lui     $at, %hi(math_sin)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f18, 0x0014($sp)
	lwc1    $f4, 0x0008($sp)
	mul.s   $f16, $f8, $f10
	nop
	mul.s   $f6, $f18, $f4
	sub.s   $f8, $f16, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f18, 0x0008($sp)
	lwc1    $f16, 0x0014($sp)
	lwc1    $f6, 0x000C($sp)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f8, $f16, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0000($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x00C8($a0)
	sw      $t2, 0x00C8($t3)
	lwc1    $f18, 0x00A0($a0)
	lwc1    $f16, 0x0000($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A0($t4)
	lwc1    $f4, 0x00A4($a0)
	lwc1    $f8, 0x0018($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($t5)
	lwc1    $f18, 0x00A8($a0)
	lwc1    $f16, 0x0004($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A8($t6)
	b       .L8029F7D0
	nop
.L8029F7D0:
	jr      $ra
	addiu   $sp, $sp, 0x0010

obj_lib_8029F7D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a1, 0x0018($sp)
	lw      $a2, 0x001C($sp)
	lw      $a3, 0x0020($sp)
	jal     obj_lib_8029F6E0
	lw      $a0, 0x0068($t6)
	b       .L8029F810
	nop
.L8029F810:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_8029F820
obj_lib_8029F820:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F620
	nop
	b       .L8029F838
	nop
.L8029F838:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_lib_8029F848:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F620
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     map_80381794
	lw      $a2, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(obj_lib_803377BC)
	lwc1    $f6, %lo(obj_lib_803377BC)($at)
	lwc1    $f4, 0x00A4($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8029F8D4
	nop
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     obj_lib_8029F7D8
	li      $a2, 0xC28C0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     map_80381794
	lw      $a2, 0x00A8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	swc1    $f0, 0x00A4($t0)
.L8029F8D4:
	b       .L8029F8DC
	nop
.L8029F8DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_8029F8EC
obj_lib_8029F8EC:
	lw      $t6, 0x00C4($a0)
	sw      $t6, 0x00D0($a0)
	lw      $t7, 0x00C8($a0)
	sw      $t7, 0x00D4($a0)
	lw      $t8, 0x00CC($a0)
	sw      $t8, 0x00D8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029F914
obj_lib_8029F914:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0000($a0)
	srl     $t7, $t6, 24
	bnez    $t7, .L8029F93C
	nop
	lw      $t8, 0x0000($a0)
	srl     $t9, $t8, 16
	andi    $t0, $t9, 0xFFFF
	b       .L8029F944
	sw      $t0, 0x0004($sp)
.L8029F93C:
	li      $t1, 0x0008
	sw      $t1, 0x0004($sp)
.L8029F944:
	b       .L8029F954
	lw      $v0, 0x0004($sp)
	b       .L8029F954
	nop
.L8029F954:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_8029F95C
obj_lib_8029F95C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     obj_lib_8029F9EC
	addiu   $a1, $sp, 0x0018
	sw      $v0, 0x001C($sp)
	b       .L8029F988
	lw      $v0, 0x001C($sp)
	b       .L8029F988
	nop
.L8029F988:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029F998
obj_lib_8029F998:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     obj_lib_8029F9EC
	addiu   $a1, $sp, 0x0018
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	bnez    $t6, .L8029F9CC
	nop
	lui     $at, %hi(obj_lib_803377C0)
	lwc1    $f4, %lo(obj_lib_803377C0)($at)
	swc1    $f4, 0x0018($sp)
.L8029F9CC:
	b       .L8029F9DC
	lwc1    $f0, 0x0018($sp)
	b       .L8029F9DC
	nop
.L8029F9DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_8029F9EC
obj_lib_8029F9EC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	sw      $0, 0x0028($sp)
	li      $at, 0x48000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x001C($sp)
	jal     obj_lib_8029F914
	lw      $a0, 0x002C($sp)
	sll     $t6, $v0, 2
	subu    $t6, $t6, $v0
	lui     $t7, %hi(obj_list)
	lw      $t7, %lo(obj_list)($t7)
	sll     $t6, $t6, 2
	addu    $t6, $t6, $v0
	sll     $t6, $t6, 3
	addu    $t8, $t6, $t7
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x0060($t9)
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0024($sp)
	beq     $t1, $t2, .L8029FAF0
	nop
.L8029FA64:
	lw      $t3, 0x0024($sp)
	lw      $t5, 0x002C($sp)
	lw      $t4, 0x020C($t3)
	bne     $t4, $t5, .L8029FAD4
	nop
	lw      $t6, 0x0024($sp)
	lh      $t7, 0x0074($t6)
	beqz    $t7, .L8029FAD4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	beq     $t6, $t8, .L8029FAD4
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029E2F8
	lw      $a1, 0x0024($sp)
	swc1    $f0, 0x0018($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x001C($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8029FAD4
	nop
	lw      $t9, 0x0024($sp)
	sw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0018($sp)
	swc1    $f10, 0x001C($sp)
.L8029FAD4:
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0060($t0)
	sw      $t1, 0x0024($sp)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0024($sp)
	bne     $t2, $t3, .L8029FA64
	nop
.L8029FAF0:
	lwc1    $f16, 0x001C($sp)
	lw      $t4, 0x0034($sp)
	swc1    $f16, 0x0000($t4)
	b       .L8029FB0C
	lw      $v0, 0x0028($sp)
	b       .L8029FB0C
	nop
.L8029FB0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl obj_lib_8029FB1C
obj_lib_8029FB1C:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(obj_list)
	lw      $t6, %lo(obj_list)($t6)
	addiu   $t7, $t6, 0x04E0
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x0000($sp)
	lw      $t0, 0x0004($sp)
	lw      $t1, 0x0000($sp)
	bne     $t0, $t1, .L8029FB50
	nop
	sw      $0, 0x0000($sp)
.L8029FB50:
	b       .L8029FB60
	lw      $v0, 0x0000($sp)
	b       .L8029FB60
	nop
.L8029FB60:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_lib_8029FB68:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(obj_list)
	lw      $t6, %lo(obj_list)($t6)
	addiu   $t7, $t6, 0x04E0
	sw      $t7, 0x000C($sp)
	lw      $t8, 0x000C($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x0008($sp)
	sw      $0, 0x0004($sp)
	lw      $t0, 0x000C($sp)
	lw      $t1, 0x0008($sp)
	beq     $t0, $t1, .L8029FBC4
	nop
.L8029FB9C:
	lw      $t2, 0x0004($sp)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0004($sp)
	lw      $t4, 0x0008($sp)
	lw      $t5, 0x0060($t4)
	sw      $t5, 0x0008($sp)
	lw      $t6, 0x000C($sp)
	lw      $t7, 0x0008($sp)
	bne     $t6, $t7, .L8029FB9C
	nop
.L8029FBC4:
	b       .L8029FBD4
	lw      $v0, 0x0004($sp)
	b       .L8029FBD4
	nop
.L8029FBD4:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl obj_lib_8029FBDC
obj_lib_8029FBDC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
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
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x0060($t9)
	sw      $t0, 0x001C($sp)
	sw      $0, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	beq     $t1, $t2, .L8029FC7C
	nop
.L8029FC40:
	lw      $t3, 0x001C($sp)
	lw      $t5, 0x0024($sp)
	lw      $t4, 0x020C($t3)
	bne     $t4, $t5, .L8029FC60
	nop
	lw      $t6, 0x0018($sp)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0018($sp)
.L8029FC60:
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	bne     $t0, $t1, .L8029FC40
	nop
.L8029FC7C:
	b       .L8029FC8C
	lw      $v0, 0x0018($sp)
	b       .L8029FC8C
	nop
.L8029FC8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_8029FC9C
obj_lib_8029FC9C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lui     $t6, %hi(obj_list)
	lw      $t6, %lo(obj_list)($t6)
	addiu   $t7, $t6, 0x01A0
	sw      $t7, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x001C($sp)
	sw      $0, 0x0018($sp)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	beq     $t0, $t1, .L8029FD6C
	nop
.L8029FCE8:
	lw      $t2, 0x001C($sp)
	lw      $t4, 0x0024($sp)
	lw      $t3, 0x020C($t2)
	bne     $t3, $t4, .L8029FD50
	nop
	lw      $t5, 0x001C($sp)
	lh      $t6, 0x0074($t5)
	beqz    $t6, .L8029FD50
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0124($t7)
	beqz    $t8, .L8029FD50
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029E2F8
	lw      $a1, 0x001C($sp)
	lwc1    $f4, 0x002C($sp)
	c.lt.s  $f0, $f4
	nop
	bc1f    .L8029FD50
	nop
	lw      $t9, 0x001C($sp)
	sw      $t9, 0x0018($sp)
	b       .L8029FD6C
	nop
.L8029FD50:
	lw      $t0, 0x001C($sp)
	lw      $t1, 0x0060($t0)
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x001C($sp)
	bne     $t2, $t3, .L8029FCE8
	nop
.L8029FD6C:
	b       .L8029FD7C
	lw      $v0, 0x0018($sp)
	b       .L8029FD7C
	nop
.L8029FD7C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

obj_lib_8029FD8C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0154($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0150($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029FDB4
obj_lib_8029FDB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0018($sp)
	sw      $t6, 0x014C($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0018($sp)
	sw      $t8, 0x018C($t9)
	jal     obj_lib_8029FD8C
	nop
	b       .L8029FDF0
	nop
.L8029FDF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_8029FE00
obj_lib_8029FE00:
	addiu   $sp, $sp, -0x0008
	la.u    $t6, player_data
	la.l    $t6, player_data
	lwc1    $f4, 0x0054($t6)
	swc1    $f4, 0x0004($sp)
	mul.s   $f6, $f12, $f14
	swc1    $f6, 0x0000($sp)
	lwc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0000($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8029FE48
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x0000($sp)
	b       .L8029FE5C
	swc1    $f16, 0x00B8($t7)
.L8029FE48:
	lwc1    $f18, 0x0004($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f4, $f18, $f14
	swc1    $f4, 0x00B8($t8)
.L8029FE5C:
	b       .L8029FE64
	nop
.L8029FE64:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_8029FE6C
obj_lib_8029FE6C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	bltz    $t7, .L8029FE94
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0040($t8)
	addiu   $t0, $t9, -0x0001
	sh      $t0, 0x0040($t8)
.L8029FE94:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_8029FEA4
obj_lib_8029FEA4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x0004($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x003C($t8)
	lh      $t0, 0x0008($t9)
	addiu   $t1, $t0, -0x0002
	sw      $t1, 0x0000($sp)
	lw      $t2, 0x0004($sp)
	lw      $t3, 0x0000($sp)
	bne     $t2, $t3, .L8029FEF4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x0040($t4)
	addiu   $t6, $t5, -0x0001
	sh      $t6, 0x0040($t4)
.L8029FEF4:
	b       .L8029FEFC
	nop
.L8029FEFC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_8029FF04
obj_lib_8029FF04:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x003C($t6)
	lh      $t8, 0x0000($t7)
	sw      $t8, 0x000C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0040($t9)
	sw      $t0, 0x0008($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x003C($t1)
	lh      $t3, 0x0008($t2)
	addiu   $t4, $t3, -0x0002
	sw      $t4, 0x0004($sp)
	sw      $0, 0x0000($sp)
	lw      $t5, 0x000C($sp)
	andi    $t6, $t5, 0x0001
	beqz    $t6, .L8029FF74
	nop
	lw      $t7, 0x0004($sp)
	lw      $t9, 0x0008($sp)
	addiu   $t8, $t7, 0x0001
	bne     $t8, $t9, .L8029FF74
	nop
	li      $t0, 0x0001
	sw      $t0, 0x0000($sp)
.L8029FF74:
	lw      $t1, 0x0008($sp)
	lw      $t2, 0x0004($sp)
	bne     $t1, $t2, .L8029FF8C
	nop
	li      $t3, 0x0001
	sw      $t3, 0x0000($sp)
.L8029FF8C:
	b       .L8029FF9C
	lw      $v0, 0x0000($sp)
	b       .L8029FF9C
	nop
.L8029FF9C:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl obj_lib_8029FFA4
obj_lib_8029FFA4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x0004($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x003C($t8)
	lh      $t0, 0x0008($t9)
	addiu   $t1, $t0, -0x0001
	sw      $t1, 0x0000($sp)
	lw      $t2, 0x0004($sp)
	lw      $t3, 0x0000($sp)
	bne     $t2, $t3, .L8029FFF0
	nop
	b       .L802A0000
	li      $v0, 0x0001
	b       .L8029FFF8
	nop
.L8029FFF0:
	b       .L802A0000
	move    $v0, $0
.L8029FFF8:
	b       .L802A0000
	nop
.L802A0000:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int obj_lib_802A0008(int) */
.globl obj_lib_802A0008
obj_lib_802A0008:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	bne     $t8, $a0, .L802A0038
	nop
	b       .L802A0048
	li      $v0, 0x0001
	b       .L802A0040
	nop
.L802A0038:
	b       .L802A0048
	move    $v0, $0
.L802A0040:
	b       .L802A0048
	nop
.L802A0048:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_802A0050
obj_lib_802A0050:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	slt     $at, $t8, $a0
	bnez    $at, .L802A0094
	nop
	addu    $t9, $a0, $a1
	slt     $at, $t8, $t9
	beqz    $at, .L802A0094
	nop
	b       .L802A00A4
	li      $v0, 0x0001
	b       .L802A009C
	nop
.L802A0094:
	b       .L802A00A4
	move    $v0, $0
.L802A009C:
	b       .L802A00A4
	nop
.L802A00A4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_lib_802A00AC:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x0006($sp)
	lh      $t8, 0x0000($a0)
	li      $at, -0x0001
	beq     $t8, $at, .L802A00FC
	nop
.L802A00D0:
	lh      $t9, 0x0000($a0)
	lh      $t0, 0x0006($sp)
	bne     $t9, $t0, .L802A00E8
	nop
	b       .L802A010C
	li      $v0, 0x0001
.L802A00E8:
	addiu   $a0, $a0, 0x0002
	lh      $t1, 0x0000($a0)
	li      $at, -0x0001
	bne     $t1, $at, .L802A00D0
	nop
.L802A00FC:
	b       .L802A010C
	move    $v0, $0
	b       .L802A010C
	nop
.L802A010C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_802A0114
obj_lib_802A0114:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x0800
	beqz    $t8, .L802A013C
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802A0144
	nop
.L802A013C:
	jr      $ra
	move    $v0, $0
.L802A0144:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A0154
obj_lib_802A0154:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x000C($t6)
	li.u    $at, 0x00880456
	li.l    $at, 0x00880456
	bne     $t7, $at, .L802A0180
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802A0188
	nop
.L802A0180:
	jr      $ra
	move    $v0, $0
.L802A0188:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A0198
obj_lib_802A0198:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x001C($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0018($sp)
	swc1    $f4, 0x00B0($t6)
	jal     obj_lib_8029F4B4
	lw      $a0, 0x001C($sp)
	b       .L802A01C8
	nop
.L802A01C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A01D8
obj_lib_802A01D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     obj_lib_802A05B4
	nop
	jal     obj_lib_8029F66C
	nop
	lw      $t6, 0x0018($sp)
	bltz    $t6, .L802A020C
	nop
	jal     obj_lib_8029F4B4
	lw      $a0, 0x0018($sp)
.L802A020C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x001C($sp)
	sw      $t7, 0x014C($t8)
	b       .L802A0224
	nop
.L802A0224:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_lib_802A0234:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00EC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	lwc1    $f12, 0x00A0($t7)
	lw      $a2, 0x00A8($t7)
	jal     map_80381794
	add.s   $f14, $f4, $f6
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	swc1    $f0, 0x00E8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x00E8($t9)
	lwc1    $f10, 0x00A4($t9)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802A02B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, 0x00E8($t0)
	b       .L802A0310
	swc1    $f16, 0x00A4($t0)
.L802A02B4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(obj_lib_803377C4)
	lwc1    $f4, %lo(obj_lib_803377C4)($at)
	lwc1    $f18, 0x00E8($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802A0310
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029F120
	lw      $a0, %lo(object)($a0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f12, 0x00A0($t2)
	lwc1    $f14, 0x00A4($t2)
	jal     map_80381794
	lw      $a2, 0x00A8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	swc1    $f0, 0x00E8($t3)
.L802A0310:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0018($sp)
	swc1    $f6, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x001C($sp)
	swc1    $f8, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B8($t6)
	c.eq.s  $f10, $f16
	nop
	bc1t    .L802A0368
	nop
	li      $at, 0xC0800000
	mtc1    $at, $f12
	lui     $at, %hi(obj_lib_803377C8)
	lwc1    $f14, %lo(obj_lib_803377C8)($at)
	jal     obj_lib_802A0E68
	li      $a2, 0x40000000
.L802A0368:
	b       .L802A0370
	nop
.L802A0370:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A0380
obj_lib_802A0380:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	la.u    $a0, o_13001850
	jal     segment_to_virtual
	la.l    $a0, o_13001850
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x020C($t6)
	bne     $v0, $t7, .L802A03D8
	nop
	lui     $at, %hi(obj_lib_803377CC)
	lwc1    $f12, %lo(obj_lib_803377CC)($at)
	lui     $at, %hi(obj_lib_803377D0)
	li.u    $a2, 0x43A0C9DB
	li.l    $a2, 0x43A0C9DB
	jal     obj_lib_8029F7D8
	lwc1    $f14, %lo(obj_lib_803377D0)($at)
	b       .L802A03D8
	nop
.L802A03D8:
	jal     obj_lib_802A05D4
	nop
	jal     obj_lib_8029F620
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0124($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0190($t9)
	andi    $t1, $t0, 0x0010
	bnez    $t1, .L802A0428
	nop
	lwc1    $f4, 0x0018($sp)
	mtc1    $0, $f6
	nop
	c.eq.s  $f4, $f6
	nop
	bc1f    .L802A0440
	nop
.L802A0428:
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     obj_lib_802A0234
	nop
	b       .L802A045C
	nop
.L802A0440:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x0020($sp)
	sw      $t2, 0x014C($t3)
	lwc1    $f12, 0x0018($sp)
	jal     obj_lib_802A0234
	lwc1    $f14, 0x001C($sp)
.L802A045C:
	b       .L802A0464
	nop
.L802A0464:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A0474
obj_lib_802A0474:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A05D4
	nop
	jal     obj_lib_8029F620
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0124($t6)
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     obj_lib_802A0234
	nop
	b       .L802A04B0
	nop
.L802A04B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A04C0
obj_lib_802A04C0:
	lui     $t6, %hi(shape_table)
	lw      $t6, %lo(shape_table)($t6)
	sll     $t7, $a0, 2
	lui     $t0, %hi(object)
	addu    $t8, $t6, $t7
	lw      $t9, 0x0000($t8)
	lw      $t0, %lo(object)($t0)
	sw      $t9, 0x0014($t0)
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_802A04F0:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x0004($t6)
	or      $t8, $t7, $a0
	sw      $t8, 0x0004($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A0514
obj_lib_802A0514:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	and     $t8, $t7, $a0
	beqz    $t8, .L802A0550
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, -0x0001
	xor     $t1, $a0, $at
	lw      $t0, 0x0134($t9)
	and     $t2, $t0, $t1
	sw      $t2, 0x0134($t9)
	jr      $ra
	li      $v0, 0x0001
.L802A0550:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A0568
obj_lib_802A0568:
	sh      $0, 0x0074($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A057C
obj_lib_802A057C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_8029F66C
	nop
	jal     obj_lib_8029F6BC
	nop
	jal     obj_lib_802A05B4
	nop
	b       .L802A05A4
	nop
.L802A05A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A05B4
obj_lib_802A05B4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x0001
	sw      $t6, 0x009C($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A05D4
obj_lib_802A05D4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x009C($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A05F0
obj_lib_802A05F0:
	sw      $0, 0x009C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A0604
obj_lib_802A0604:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     map_80381900
	lw      $a2, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00E8($t7)
	b       .L802A063C
	nop
.L802A063C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A064C
obj_lib_802A064C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     map_80381900
	lw      $a2, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00E8($t7)
	b       .L802A068C
	lw      $v0, 0x001C($sp)
	b       .L802A068C
	nop
.L802A068C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_lib_802A069C:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	lwc1    $f4, 0x0000($a0)
	mtc1    $0, $f6
	nop
	c.eq.s  $f4, $f6
	nop
	bc1t    .L802A078C
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0000($a0)
	lwc1    $f4, 0x000C($sp)
	lui     $at, %hi(obj_lib_803377D8)
	mul.s   $f16, $f8, $f10
	ldc1    $f8, %lo(obj_lib_803377D8)($at)
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	cvt.d.s $f18, $f16
	mul.d   $f16, $f18, $f10
	cvt.s.d $f4, $f16
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0000($a0)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802A0750
	nop
	lwc1    $f18, 0x0000($a0)
	lwc1    $f10, 0x0004($sp)
	sub.s   $f16, $f18, $f10
	swc1    $f16, 0x0000($a0)
	lwc1    $f4, 0x0000($a0)
	lui     $at, %hi(obj_lib_803377E0)
	ldc1    $f8, %lo(obj_lib_803377E0)($at)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    .L802A0748
	nop
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0000($a0)
.L802A0748:
	b       .L802A078C
	nop
.L802A0750:
	lwc1    $f10, 0x0000($a0)
	lwc1    $f16, 0x0004($sp)
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a0)
	lui     $at, %hi(obj_lib_803377E8)
	ldc1    $f18, %lo(obj_lib_803377E8)($at)
	cvt.d.s $f8, $f6
	c.lt.d  $f18, $f8
	nop
	bc1f    .L802A078C
	nop
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0000($a0)
.L802A078C:
	b       .L802A0794
	nop
.L802A0794:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_802A079C
obj_lib_802A079C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0018($sp)
	jal     obj_lib_802A069C
	addiu   $a0, $a0, 0x00AC
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0018($sp)
	jal     obj_lib_802A069C
	addiu   $a0, $a0, 0x00B4
	b       .L802A07D8
	nop
.L802A07D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_lib_802A07E8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x003C($sp)
	swc1    $f12, 0x0038($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00AC($t6)
	lwc1    $f6, 0x00A0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00B4($t7)
	lwc1    $f16, 0x00A8($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f12, 0x0030($sp)
	lw      $a2, 0x002C($sp)
	addiu   $a3, $sp, 0x0034
	jal     map_80381900
	lwc1    $f14, 0x00A4($t8)
	swc1    $f0, 0x0028($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x00E8($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0401
	lw      $t1, 0x00EC($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x00EC($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, -0x0001
	lw      $t4, 0x01A0($t3)
	beq     $t4, $at, .L802A08D4
	nop
	lw      $t5, 0x0034($sp)
	beqz    $t5, .L802A08D4
	nop
	lw      $t6, 0x0034($sp)
	lb      $t7, 0x0005($t6)
	beqz    $t7, .L802A08D4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x01A0($t8)
	beq     $t9, $t7, .L802A08D4
	nop
	li      $at, 0x0012
	beq     $t7, $at, .L802A08D4
	nop
	b       .L802A0AA0
	move    $v0, $0
.L802A08D4:
	lui     $at, %hi(obj_lib_803377F0)
	lwc1    $f16, %lo(obj_lib_803377F0)($at)
	lwc1    $f10, 0x0028($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802A0914
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	ori     $t0, $t2, 0x0400
	sw      $t0, 0x00EC($t1)
	b       .L802A0AA0
	move    $v0, $0
	b       .L802A0A90
	nop
.L802A0914:
	li      $at, 0x40A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802A0A34
	nop
	lw      $t3, 0x003C($sp)
	bnez    $t3, .L802A096C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0030($sp)
	swc1    $f6, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x002C($sp)
	swc1    $f8, 0x00A8($t5)
	b       .L802A0AA0
	li      $v0, 0x0001
	b       .L802A0A2C
	nop
.L802A096C:
	li      $at, 0xC2480000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802A09C4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0002
	beqz    $t9, .L802A09C4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t2, 0x00EC($t7)
	ori     $t0, $t2, 0x0400
	sw      $t0, 0x00EC($t7)
	b       .L802A0AA0
	move    $v0, $0
	b       .L802A0A2C
	nop
.L802A09C4:
	lw      $t1, 0x0034($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f18, 0x0020($t1)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L802A0A10
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x0030($sp)
	swc1    $f6, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, 0x002C($sp)
	swc1    $f8, 0x00A8($t4)
	b       .L802A0AA0
	li      $v0, 0x0001
	b       .L802A0A2C
	nop
.L802A0A10:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00EC($t5)
	ori     $t8, $t6, 0x0400
	sw      $t8, 0x00EC($t5)
	b       .L802A0AA0
	move    $v0, $0
.L802A0A2C:
	b       .L802A0A90
	nop
.L802A0A34:
	lw      $t9, 0x0034($sp)
	lwc1    $f16, 0x0038($sp)
	lwc1    $f10, 0x0020($t9)
	c.lt.s  $f16, $f10
	swc1    $f10, 0x001C($sp)
	bc1t    .L802A0A70
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f18, 0x00A4($t2)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L802A0A90
	nop
.L802A0A70:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0030($sp)
	swc1    $f6, 0x00A0($t0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x002C($sp)
	swc1    $f8, 0x00A8($t7)
.L802A0A90:
	b       .L802A0AA0
	move    $v0, $0
	b       .L802A0AA0
	nop
.L802A0AA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

obj_lib_802A0AB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00B0($t6)
	mul.s   $f12, $f4, $f4
	jal     sqrtf
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40E00000
	mtc1    $at, $f8
	lwc1    $f6, 0x012C($t7)
	mov.s   $f20, $f0
	li      $at, 0x40590000
	mul.s   $f10, $f6, $f8
	mtc1    $at, $f5
	mtc1    $0, $f4
	mul.s   $f16, $f10, $f20
	cvt.d.s $f18, $f16
	div.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B0($t8)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L802A0B4C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f18, 0x00B0($t9)
	sub.s   $f6, $f18, $f4
	b       .L802A0B64
	swc1    $f6, 0x00B0($t9)
.L802A0B4C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f8, 0x00B0($t0)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00B0($t0)
.L802A0B64:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, 0x00A4($t1)
	lwc1    $f4, 0x00E8($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802A0BAC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00E8($t2)
	swc1    $f6, 0x00A4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00EC($t3)
	ori     $t5, $t4, 0x0040
	b       .L802A0BC0
	sw      $t5, 0x00EC($t3)
.L802A0BAC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	ori     $t8, $t7, 0x0020
	sw      $t8, 0x00EC($t6)
.L802A0BC0:
	b       .L802A0BC8
	nop
.L802A0BC8:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

obj_lib_802A0BDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x2001
	lw      $t7, 0x00EC($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x00EC($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00A4($t9)
	lwc1    $f6, 0x00E8($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A0D0C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, .L802A0C84
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0001
	jal     obj_lib_802A10F0
	addiu   $a0, $a0, 0x00EC
	beqz    $v0, .L802A0C70
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00EC($t3)
	ori     $t5, $t4, 0x0002
	b       .L802A0C84
	sw      $t5, 0x00EC($t3)
.L802A0C70:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	ori     $t6, $t8, 0x0001
	sw      $t6, 0x00EC($t7)
.L802A0C84:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x00E8($t9)
	swc1    $f8, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B0($t0)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802A0CCC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f18, 0x00B0($t1)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x00B0($t1)
.L802A0CCC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x40A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00B0($t2)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802A0D04
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	ori     $t3, $t5, 0x2000
	sw      $t3, 0x00EC($t4)
.L802A0D04:
	b       .L802A0D54
	nop
.L802A0D0C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0002
	lw      $t6, 0x00EC($t8)
	and     $t7, $t6, $at
	sw      $t7, 0x00EC($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0002
	jal     obj_lib_802A10F0
	addiu   $a0, $a0, 0x00EC
	beqz    $v0, .L802A0D54
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	ori     $t1, $t0, 0x0004
	sw      $t1, 0x00EC($t9)
.L802A0D54:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0079
	lw      $t5, 0x00EC($t2)
	and     $t3, $t5, $at
	sw      $t3, 0x00EC($t2)
	b       .L802A0D74
	nop
.L802A0D74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_lib_802A0D84:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x00B0($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0xC29C0000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B0($t7)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802A0DF0
	nop
	li      $at, 0xC29C0000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t8)
.L802A0DF0:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A4($t9)
	lwc1    $f8, 0x00B0($t9)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0074($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, .L802A0E30
	nop
	lui     $at, %hi(obj_lib_803377F4)
	lwc1    $f18, %lo(obj_lib_803377F4)($at)
	b       .L802A0E48
	swc1    $f18, 0x001C($sp)
.L802A0E30:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f12, 0x00A0($t3)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t3)
	swc1    $f0, 0x001C($sp)
.L802A0E48:
	b       .L802A0E58
	lwc1    $f0, 0x001C($sp)
	b       .L802A0E58
	nop
.L802A0E58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A0E68
obj_lib_802A0E68:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0005
	lw      $t7, 0x00EC($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x00EC($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0010
	beqz    $t1, .L802A0EFC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802A0EFC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, -0x0079
	lw      $t4, 0x00EC($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x00EC($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	ori     $t6, $t8, 0x1000
	sw      $t6, 0x00EC($t7)
.L802A0EFC:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0078
	bnez    $t1, .L802A0F8C
	nop
	mtc1    $0, $f14
	jal     obj_lib_802A0D84
	lwc1    $f12, 0x0020($sp)
	swc1    $f0, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x00A4($t2)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802A0F58
	nop
	lwc1    $f12, 0x0020($sp)
	jal     obj_lib_802A0BDC
	lwc1    $f14, 0x0024($sp)
	b       .L802A0F84
	nop
.L802A0F58:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	ori     $t3, $t5, 0x0008
	sw      $t3, 0x00EC($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0004
	lw      $t6, 0x00EC($t8)
	and     $t7, $t6, $at
	sw      $t7, 0x00EC($t8)
.L802A0F84:
	b       .L802A1080
	nop
.L802A0F8C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, -0x0009
	lw      $t0, 0x00EC($t9)
	and     $t1, $t0, $at
	sw      $t1, 0x00EC($t9)
	lwc1    $f12, 0x0020($sp)
	jal     obj_lib_802A0D84
	lwc1    $f14, 0x0028($sp)
	swc1    $f0, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f16, 0x00A4($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802A0FE4
	nop
	jal     obj_lib_802A0AB0
	nop
	b       .L802A1080
	nop
.L802A0FE4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x00A4($t5)
	lwc1    $f6, 0x00E8($t5)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A1030
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x00E8($t3)
	swc1    $f8, 0x00A4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0079
	lw      $t6, 0x00EC($t4)
	and     $t7, $t6, $at
	b       .L802A1080
	sw      $t7, 0x00EC($t4)
.L802A1030:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x001C($sp)
	swc1    $f10, 0x00A4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0061
	lw      $t9, 0x00EC($t1)
	and     $t2, $t9, $at
	sw      $t2, 0x00EC($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t3, 0x00EC($t5)
	ori     $t6, $t3, 0x0010
	sw      $t6, 0x00EC($t5)
.L802A1080:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t4, 0x00EC($t7)
	andi    $t8, $t4, 0x0033
	beqz    $t8, .L802A10B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0081
	lw      $t9, 0x00EC($t0)
	and     $t2, $t9, $at
	b       .L802A10C8
	sw      $t2, 0x00EC($t0)
.L802A10B4:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00EC($t1)
	ori     $t6, $t3, 0x0080
	sw      $t6, 0x00EC($t1)
.L802A10C8:
	b       .L802A10D0
	nop
.L802A10D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_lib_802A10E0:
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_802A10F0:
	lw      $t6, 0x0000($a0)
	and     $t7, $t6, $a1
	beqz    $t7, .L802A1124
	nop
	lw      $t8, 0x0000($a0)
	li      $at, -0x0001
	xor     $t9, $a1, $at
	and     $t0, $t8, $t9
	sw      $t0, 0x0000($a0)
	jr      $ra
	li      $v0, 0x0001
	b       .L802A112C
	nop
.L802A1124:
	jr      $ra
	move    $v0, $0
.L802A112C:
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_802A113C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lwc1    $f4, 0x0024($sp)
	lui     $at, %hi(obj_lib_803377F8)
	ldc1    $f8, %lo(obj_lib_803377F8)($at)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    .L802A1190
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, 0x0024($sp)
	lw      $a3, 0x0020($sp)
	addiu   $a0, $t6, 0x00A0
	addiu   $a1, $t6, 0x00A4
	addiu   $a2, $t6, 0x00A8
	jal     map_80380DE8
	swc1    $f10, 0x0010($sp)
.L802A1190:
	b       .L802A1198
	nop
.L802A1198:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A11A8
obj_lib_802A11A8:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	subu    $t6, $a1, $a0
	sh      $t6, 0x0006($sp)
	lh      $t7, 0x0006($sp)
	li      $at, -0x8000
	bne     $t7, $at, .L802A11DC
	nop
	li      $t8, -0x7FFF
	sh      $t8, 0x0006($sp)
.L802A11DC:
	lh      $t9, 0x0006($sp)
	bgez    $t9, .L802A11F4
	nop
	lh      $t0, 0x0006($sp)
	subu    $t1, $0, $t0
	sh      $t1, 0x0006($sp)
.L802A11F4:
	b       .L802A1204
	lh      $v0, 0x0006($sp)
	b       .L802A1204
	nop
.L802A1204:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_802A120C
obj_lib_802A120C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f6, 0x00B8($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00AC($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f16, 0x00B8($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00A0($t4)
	lwc1    $f6, 0x00AC($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x00A8($t5)
	lwc1    $f16, 0x00B4($t5)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t5)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A12A4
obj_lib_802A12A4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC28C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A12E0
	nop
	li      $at, 0xC28C0000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t7)
.L802A12E0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x00A4($t8)
	lwc1    $f16, 0x00B0($t8)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A1308
obj_lib_802A1308:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f6, 0x00B8($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00AC($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f16, 0x00B8($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B4($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A1370
obj_lib_802A1370:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	sub.s   $f4, $f12, $f14
	mtc1    $0, $f8
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0004($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802A13DC
	nop
	lwc1    $f10, 0x0004($sp)
	lwc1    $f16, 0x0010($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802A13C8
	nop
	mtc1    $0, $f0
	b       .L802A141C
	nop
	b       .L802A13D4
	nop
.L802A13C8:
	lwc1    $f0, 0x0014($sp)
	b       .L802A141C
	neg.s   $f0, $f0
.L802A13D4:
	b       .L802A1414
	nop
.L802A13DC:
	lwc1    $f4, 0x0010($sp)
	lwc1    $f18, 0x0004($sp)
	neg.s   $f6, $f4
	c.lt.s  $f6, $f18
	nop
	bc1f    .L802A140C
	nop
	mtc1    $0, $f0
	b       .L802A141C
	nop
	b       .L802A1414
	nop
.L802A140C:
	b       .L802A141C
	lwc1    $f0, 0x0014($sp)
.L802A1414:
	b       .L802A141C
	nop
.L802A141C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_802A1424
obj_lib_802A1424:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lh      $t6, 0x0076($a0)
	blez    $t6, .L802A1474
	nop
.L802A1438:
	lw      $t7, 0x0004($sp)
	sll     $t8, $t7, 2
	addu    $t9, $a0, $t8
	lw      $t0, 0x0078($t9)
	bne     $t0, $a1, .L802A1458
	nop
	b       .L802A1484
	li      $v0, 0x0001
.L802A1458:
	lw      $t1, 0x0004($sp)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0004($sp)
	lh      $t3, 0x0076($a0)
	slt     $at, $t2, $t3
	bnez    $at, .L802A1438
	nop
.L802A1474:
	b       .L802A1484
	move    $v0, $0
	b       .L802A1484
	nop
.L802A1484:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_802A148C
obj_lib_802A148C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x020C($t6)
	b       .L802A14B4
	nop
.L802A14B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A14C4
obj_lib_802A14C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	sw      $v0, 0x020C($t6)
	b       .L802A14EC
	nop
.L802A14EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A14FC
obj_lib_802A14FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x020C($t6)
	bne     $v0, $t7, .L802A1534
	nop
	b       .L802A1544
	li      $v0, 0x0001
	b       .L802A153C
	nop
.L802A1534:
	b       .L802A1544
	move    $v0, $0
.L802A153C:
	b       .L802A1544
	nop
.L802A1544:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A1554
obj_lib_802A1554:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x020C($t6)
	bne     $v0, $t7, .L802A158C
	nop
	b       .L802A159C
	li      $v0, 0x0001
	b       .L802A1594
	nop
.L802A158C:
	b       .L802A159C
	move    $v0, $0
.L802A1594:
	b       .L802A159C
	nop
.L802A159C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A15AC
obj_lib_802A15AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x0164($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lui     $t8, %hi(object)
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00A8($t9)
	lwc1    $f10, 0x016C($t8)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	b       .L802A1624
	lwc1    $f0, 0x0024($sp)
	b       .L802A1624
	nop
.L802A1624:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_802A1634
obj_lib_802A1634:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x016C($t7)
	lwc1    $f16, 0x00A8($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	b       .L802A169C
	lwc1    $f0, 0x0024($sp)
	b       .L802A169C
	nop
.L802A169C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

obj_lib_802A16AC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f8, 0x00A0($t6)
	sub.s   $f6, $f4, $f12
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802A16D8
	nop
	jr      $ra
	li      $v0, 0x0001
.L802A16D8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0164($t7)
	lwc1    $f18, 0x00A0($t7)
	add.s   $f16, $f10, $f12
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802A1704
	nop
	jr      $ra
	li      $v0, 0x0001
.L802A1704:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f8, 0x00A8($t8)
	sub.s   $f6, $f4, $f12
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802A1730
	nop
	jr      $ra
	li      $v0, 0x0001
.L802A1730:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x016C($t9)
	lwc1    $f18, 0x00A8($t9)
	add.s   $f16, $f10, $f12
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802A175C
	nop
	jr      $ra
	li      $v0, 0x0001
.L802A175C:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_802A1774:
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f8, 0x00A0($t6)
	add.s   $f6, $f4, $f12
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802A17A8
	nop
	b       .L802A1844
	li      $v0, 0x0001
.L802A17A8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0164($t7)
	lwc1    $f18, 0x00A0($t7)
	add.s   $f16, $f10, $f14
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802A17D4
	nop
	b       .L802A1844
	li      $v0, 0x0001
.L802A17D4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f10, 0x00A8($t8)
	add.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802A1804
	nop
	b       .L802A1844
	li      $v0, 0x0001
.L802A1804:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x000C($sp)
	lwc1    $f16, 0x016C($t9)
	lwc1    $f6, 0x00A8($t9)
	add.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A1834
	nop
	b       .L802A1844
	li      $v0, 0x0001
.L802A1834:
	b       .L802A1844
	move    $v0, $0
	b       .L802A1844
	nop
.L802A1844:
	jr      $ra
	nop

.globl obj_lib_802A184C
obj_lib_802A184C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	swc1    $f4, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x0168($t7)
	swc1    $f6, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x016C($t8)
	swc1    $f8, 0x00A8($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A188C
obj_lib_802A188C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A184C
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
	b       .L802A18CC
	nop
.L802A18CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A18DC
obj_lib_802A18DC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	andi    $t8, $t7, 0x0001
	bnez    $t8, .L802A190C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00A4($t9)
	add.s   $f6, $f4, $f12
	b       .L802A1920
	swc1    $f6, 0x00A4($t9)
.L802A190C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00A4($t0)
	sub.s   $f10, $f8, $f12
	swc1    $f10, 0x00A4($t0)
.L802A1920:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A1930
obj_lib_802A1930:
	sw      $a0, 0x0000($sp)
	la.u    $t6, _camera_bss+0x00
	la.l    $t6, _camera_bss+0x00
	sh      $a1, 0x001E($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(camera_8032DF30)
	sw      $t7, %lo(camera_8032DF30)($at)
	b       .L802A1958
	nop
.L802A1958:
	jr      $ra
	nop

obj_lib_802A1960:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A199C
	nop
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x0134($t8)
.L802A199C:
	b       .L802A19A4
	nop
.L802A19A4:
	jr      $ra
	nop

.globl obj_lib_802A19AC
obj_lib_802A19AC:
	lh      $t6, 0x0002($a0)
	ori     $t7, $t6, 0x0004
	sh      $t7, 0x0002($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A19C8
obj_lib_802A19C8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f12, 0x01F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f14, 0x01FC($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A19F0
obj_lib_802A19F0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f12, 0x0200($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f14, 0x0204($t7)
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_802A1A18:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0028($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     map_80381900
	lw      $a2, 0x00A8($t6)
	swc1    $f0, 0x0020($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f6, 0x0020($sp)
	li      $at, 0x42C80000
	lwc1    $f4, 0x00A4($t7)
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802A1A80
	nop
	lw      $t8, 0x0028($sp)
	lwc1    $f16, 0x00A4($t8)
	swc1    $f16, 0x0020($sp)
.L802A1A80:
	lw      $t9, 0x002C($sp)
	sw      $0, 0x0024($sp)
	blez    $t9, .L802A1B1C
	nop
.L802A1A90:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0198($t0)
	bgtz    $t1, .L802A1AA8
	nop
	b       .L802A1B1C
	nop
.L802A1AA8:
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0198($t2)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x0198($t2)
	lw      $a0, 0x0028($sp)
	lh      $a1, 0x003E($sp)
	jal     obj_lib_8029EDCC
	lw      $a2, 0x0034($sp)
	sw      $v0, 0x0018($sp)
	lh      $t5, 0x003A($sp)
	lw      $a0, 0x0018($sp)
	mtc1    $t5, $f18
	nop
	cvt.s.w $f18, $f18
	mfc1    $a1, $f18
	jal     obj_lib_802A308C
	nop
	lwc1    $f4, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	swc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0030($sp)
	lw      $t7, 0x0018($sp)
	swc1    $f6, 0x0110($t7)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x002C($sp)
	addiu   $t9, $t8, 0x0001
	slt     $at, $t9, $t0
	bnez    $at, .L802A1A90
	sw      $t9, 0x0024($sp)
.L802A1B1C:
	b       .L802A1B24
	nop
.L802A1B24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

obj_lib_802A1B34:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lh      $t6, 0x002E($sp)
	la.u    $a3, o_13003104
	li      $t7, 0x0076
	sw      $t7, 0x0014($sp)
	la.l    $a3, o_13003104
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     obj_lib_802A1A18
	sw      $t6, 0x0010($sp)
	b       .L802A1B7C
	nop
.L802A1B7C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A1B8C
obj_lib_802A1B8C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	la.u    $a3, o_130009A4
	li      $t6, 0x0074
	sw      $t6, 0x0014($sp)
	la.l    $a3, o_130009A4
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     obj_lib_802A1A18
	sw      $0, 0x0010($sp)
	b       .L802A1BCC
	nop
.L802A1BCC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A1BDC
obj_lib_802A1BDC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0198($t6)
	bgtz    $t7, .L802A1C00
	nop
	b       .L802A1C58
	nop
.L802A1C00:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0198($t8)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x0198($t8)
	lui     $a0, %hi(object)
	la.u    $a2, o_130009A4
	la.l    $a2, o_130009A4
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0074
	sw      $v0, 0x001C($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lw      $t1, 0x001C($sp)
	swc1    $f4, 0x00B0($t1)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029F120
	lw      $a0, 0x001C($sp)
	b       .L802A1C58
	nop
.L802A1C58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_lib_802A1C68:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0168($t6)
	lwc1    $f6, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0004($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802A1CAC
	nop
	lwc1    $f18, 0x0004($sp)
	neg.s   $f4, $f18
	swc1    $f4, 0x0004($sp)
.L802A1CAC:
	b       .L802A1CBC
	lwc1    $f0, 0x0004($sp)
	b       .L802A1CBC
	nop
.L802A1CBC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_lib_802A1CC4:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x000C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x003C($t8)
	lh      $t0, 0x0008($t9)
	sw      $t0, 0x0008($sp)
	lw      $t1, 0x000C($sp)
	bgez    $t1, .L802A1D00
	nop
	b       .L802A1D28
	sw      $0, 0x000C($sp)
.L802A1D00:
	lw      $t3, 0x000C($sp)
	lw      $t2, 0x0008($sp)
	addiu   $t4, $t3, 0x0001
	bne     $t2, $t4, .L802A1D1C
	nop
	b       .L802A1D28
	sw      $0, 0x000C($sp)
.L802A1D1C:
	lw      $t5, 0x000C($sp)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x000C($sp)
.L802A1D28:
	lw      $t7, 0x000C($sp)
	lw      $t9, 0x0008($sp)
	sll     $t8, $t7, 16
	div     $0, $t8, $t9
	mflo    $t0
	sw      $t0, 0x0004($sp)
	bnez    $t9, .L802A1D4C
	nop
	break   7
.L802A1D4C:
	li      $at, -0x0001
	bne     $t9, $at, .L802A1D64
	li      $at, 0x80000000
	bne     $t8, $at, .L802A1D64
	nop
	break   6
.L802A1D64:
	b       .L802A1D74
	lw      $v0, 0x0004($sp)
	b       .L802A1D74
	nop
.L802A1D74:
	jr      $ra
	addiu   $sp, $sp, 0x0010

obj_lib_802A1D7C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lh      $t6, 0x0032($sp)
	lui     $at, %hi(math_cos)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 1
	andi    $t8, $t7, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	lwc1    $f6, 0x00B8($t1)
	c.eq.s  $f6, $f8
	nop
	bc1t    .L802A1F1C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x00AC($t2)
	lwc1    $f16, 0x00A0($t2)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00B4($t3)
	lwc1    $f6, 0x00A8($t3)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f12, 0x0028($sp)
	lw      $a2, 0x0020($sp)
	addiu   $a3, $sp, 0x002C
	jal     map_80381900
	lwc1    $f14, 0x00A4($t4)
	swc1    $f0, 0x0024($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f16, 0x00E8($t5)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lui     $at, %hi(obj_lib_80337800)
	lwc1    $f6, %lo(obj_lib_80337800)($at)
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A1E90
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lw      $t7, 0x00C8($t6)
	addu    $t8, $t7, $at
	sw      $t8, 0x01B4($t6)
	b       .L802A1F2C
	li      $v0, 0x0002
	b       .L802A1F1C
	nop
.L802A1E90:
	lw      $t9, 0x002C($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f8, 0x0020($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802A1F14
	nop
	lwc1    $f16, 0x001C($sp)
	mtc1    $0, $f18
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    .L802A1F14
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x00A4($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802A1F14
	nop
	lw      $t1, 0x002C($sp)
	lwc1    $f12, 0x0024($t1)
	jal     atan2
	lwc1    $f14, 0x001C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x01B4($t2)
	b       .L802A1F2C
	li      $v0, 0x0001
	b       .L802A1F1C
	nop
.L802A1F14:
	b       .L802A1F2C
	move    $v0, $0
.L802A1F1C:
	b       .L802A1F2C
	move    $v0, $0
	b       .L802A1F2C
	nop
.L802A1F2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl obj_lib_802A1F3C
obj_lib_802A1F3C:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0014($sp)
	li      $at, 0x41200000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0128($t6)
	swc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x0018($sp)
	lui     $at, %hi(obj_lib_80337808)
	ldc1    $f16, %lo(obj_lib_80337808)($at)
	cvt.d.s $f10, $f8
	c.lt.d  $f16, $f10
	nop
	bc1f    .L802A20D4
	nop
	lwc1    $f18, 0x001C($sp)
	swc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x0018($sp)
	swc1    $f4, 0x0030($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A0($t7)
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0020($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x00A4($t2)
	trunc.w.s $f4, $f18
	mfc1    $t4, $f4
	nop
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A8($t7)
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	mtc1    $t1, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x0028($sp)
	jal     map_80380E8C
	addiu   $a0, $sp, 0x0020
	sw      $v0, 0x004C($sp)
	lw      $t2, 0x004C($sp)
	beqz    $t2, .L802A20D4
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x0020($sp)
	swc1    $f6, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, 0x0024($sp)
	swc1    $f8, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x0028($sp)
	swc1    $f10, 0x00A8($t5)
	lh      $t6, 0x0036($sp)
	sll     $t7, $t6, 2
	addu    $t8, $sp, $t7
	lw      $t8, 0x0034($t8)
	sw      $t8, 0x0048($sp)
	lw      $t9, 0x0048($sp)
	lwc1    $f12, 0x0024($t9)
	jal     atan2
	lwc1    $f14, 0x001C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x01B4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $a0, 0x01B4($t1)
	jal     obj_lib_802A11A8
	lw      $a1, 0x00C8($t1)
	slti    $at, $v0, 0x4001
	bnez    $at, .L802A20CC
	nop
	b       .L802A20E4
	li      $v0, 0x0001
	b       .L802A20D4
	nop
.L802A20CC:
	b       .L802A20E4
	move    $v0, $0
.L802A20D4:
	b       .L802A20E4
	move    $v0, $0
	b       .L802A20E4
	nop
.L802A20E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

obj_lib_802A20F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A064C
	nop
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sw      $t6, 0x01C0($t7)
	lw      $t8, 0x001C($sp)
	beqz    $t8, .L802A21A4
	nop
	lw      $t9, 0x001C($sp)
	li      $at, 0x0001
	lh      $t0, 0x0000($t9)
	bne     $t0, $at, .L802A2150
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	ori     $t3, $t2, 0x0800
	b       .L802A2178
	sw      $t3, 0x00EC($t1)
.L802A2150:
	lw      $t4, 0x001C($sp)
	li      $at, 0x000A
	lh      $t5, 0x0000($t4)
	bne     $t5, $at, .L802A2178
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	ori     $t8, $t7, 0x4000
	sw      $t8, 0x00EC($t6)
.L802A2178:
	lw      $t9, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t0, 0x0000($t9)
	sh      $t0, 0x01B8($t2)
	lw      $t3, 0x001C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lb      $t1, 0x0005($t3)
	b       .L802A21BC
	sh      $t1, 0x01BA($t4)
.L802A21A4:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x01B8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x01BA($t7)
.L802A21BC:
	b       .L802A21C4
	nop
.L802A21C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_lib_802A21D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x4801
	lw      $t7, 0x00EC($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x00EC($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0074($t9)
	andi    $t1, $t0, 0x000A
	beqz    $t1, .L802A226C
	nop
	jal     obj_lib_802A20F4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0279
	lw      $t3, 0x00EC($t2)
	and     $t4, $t3, $at
	sw      $t4, 0x00EC($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x00A4($t5)
	lwc1    $f6, 0x00E8($t5)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802A2264
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	ori     $t6, $t8, 0x0080
	sw      $t6, 0x00EC($t7)
.L802A2264:
	b       .L802A2308
	nop
.L802A226C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, -0x0201
	lw      $t0, 0x00EC($t9)
	and     $t1, $t0, $at
	sw      $t1, 0x00EC($t9)
	jal     obj_lib_802A1F3C
	nop
	beqz    $v0, .L802A22A8
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00EC($t3)
	ori     $t2, $t4, 0x0200
	sw      $t2, 0x00EC($t3)
.L802A22A8:
	jal     obj_lib_802A20F4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x00A4($t5)
	lwc1    $f10, 0x00E8($t5)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802A22E4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t6, 0x00EC($t8)
	ori     $t7, $t6, 0x0080
	sw      $t7, 0x00EC($t8)
.L802A22E4:
	jal     obj_lib_802A1D7C
	lh      $a0, 0x001A($sp)
	beqz    $v0, .L802A2308
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	ori     $t9, $t1, 0x0200
	sw      $t9, 0x00EC($t0)
.L802A2308:
	b       .L802A2310
	nop
.L802A2310:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A2320
obj_lib_802A2320:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A21D4
	li      $a0, 0x003C
	b       .L802A2338
	nop
.L802A2338:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A2348
obj_lib_802A2348:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00E4($t6)
	swc1    $f4, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x0158($t7)
	swc1    $f6, 0x0030($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x0174($t8)
	swc1    $f8, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x012C($t9)
	swc1    $f10, 0x0028($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0074($t0)
	andi    $t2, $t1, 0x000A
	bnez    $t2, .L802A24B8
	nop
	lh      $t3, 0x003A($sp)
	bgez    $t3, .L802A23D4
	nop
	li      $t4, 0x0001
	sw      $t4, 0x0020($sp)
	lh      $t5, 0x003A($sp)
	subu    $t6, $0, $t5
	sh      $t6, 0x003A($sp)
.L802A23D4:
	lh      $t7, 0x003A($sp)
	lui     $at, %hi(math_cos)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 3
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	swc1    $f16, 0x0024($sp)
	jal     obj_lib_802A1308
	nop
	jal     obj_lib_802A079C
	lwc1    $f12, 0x0028($sp)
	lwc1    $f12, 0x0024($sp)
	jal     obj_lib_802A07E8
	lw      $a1, 0x0020($sp)
	lwc1    $f12, 0x0034($sp)
	lwc1    $f14, 0x0030($sp)
	jal     obj_lib_802A0E68
	lw      $a2, 0x002C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	lwc1    $f18, 0x00B8($t2)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802A2464
	nop
	li      $t3, 0x0001
	sw      $t3, 0x001C($sp)
.L802A2464:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00B4($t4)
	lwc1    $f10, 0x00AC($t4)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f16
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	swc1    $f0, 0x00B8($t5)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802A24B8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f18, 0x00B8($t7)
	neg.s   $f4, $f18
	swc1    $f4, 0x00B8($t7)
.L802A24B8:
	b       .L802A24C0
	nop
.L802A24C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

obj_lib_802A24D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(obj_lib_80337810)
	lwc1    $f6, %lo(obj_lib_80337810)($at)
	lwc1    $f4, 0x00A0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1t    .L802A250C
	nop
	lui     $at, %hi(obj_lib_80337814)
	lwc1    $f8, %lo(obj_lib_80337814)($at)
	c.lt.s  $f8, $f4
	nop
	bc1f    .L802A2514
	nop
.L802A250C:
	jr      $ra
	move    $v0, $0
.L802A2514:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(obj_lib_80337818)
	lwc1    $f16, %lo(obj_lib_80337818)($at)
	lwc1    $f10, 0x00A4($t7)
	c.lt.s  $f10, $f16
	nop
	bc1t    .L802A2550
	nop
	lui     $at, %hi(obj_lib_8033781C)
	lwc1    $f18, %lo(obj_lib_8033781C)($at)
	c.lt.s  $f18, $f10
	nop
	bc1f    .L802A2558
	nop
.L802A2550:
	jr      $ra
	move    $v0, $0
.L802A2558:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(obj_lib_80337820)
	lwc1    $f8, %lo(obj_lib_80337820)($at)
	lwc1    $f6, 0x00A8($t8)
	c.lt.s  $f6, $f8
	nop
	bc1t    .L802A2594
	nop
	lui     $at, %hi(obj_lib_80337824)
	lwc1    $f4, %lo(obj_lib_80337824)($at)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A259C
	nop
.L802A2594:
	jr      $ra
	move    $v0, $0
.L802A259C:
	jr      $ra
	li      $v0, 0x0001
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A25B4
obj_lib_802A25B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A24D0
	nop
	beqz    $v0, .L802A262C
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
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00B0($t8)
	lwc1    $f6, 0x00E4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A4($t9)
	lwc1    $f16, 0x00B0($t9)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t9)
.L802A262C:
	b       .L802A2634
	nop
.L802A2634:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A2644
obj_lib_802A2644:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     obj_lib_802A1308
	nop
	jal     obj_lib_802A25B4
	nop
	b       .L802A2664
	nop
.L802A2664:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_lib_802A2674:
	addiu   $sp, $sp, -0x0010
	sw      $a2, 0x0018($sp)
	sw      $a3, 0x001C($sp)
	lhu     $t6, 0x00CA($a1)
	lui     $at, %hi(math_cos)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x000C($sp)
	lhu     $t9, 0x00CA($a1)
	lui     $at, %hi(math_sin)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x0008($sp)
	mul.s   $f16, $f8, $f10
	nop
	mul.s   $f6, $f18, $f4
	sub.s   $f8, $f16, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f18, 0x0008($sp)
	lwc1    $f16, 0x0018($sp)
	lwc1    $f6, 0x000C($sp)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f8, $f16, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0000($sp)
	lw      $t2, 0x00C8($a1)
	sw      $t2, 0x00C8($a0)
	lwc1    $f18, 0x00A0($a1)
	lwc1    $f16, 0x0000($sp)
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A0($a0)
	lwc1    $f4, 0x00A4($a1)
	lwc1    $f8, 0x001C($sp)
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($a0)
	lwc1    $f18, 0x00A8($a1)
	lwc1    $f16, 0x0004($sp)
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A8($a0)
	b       .L802A2740
	nop
.L802A2740:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl obj_lib_802A2748
obj_lib_802A2748:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x016C($t7)
	lwc1    $f16, 0x00A8($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f12, 0x001C($sp)
	jal     atan2
	lwc1    $f14, 0x0020($sp)
	sh      $v0, 0x0026($sp)
	b       .L802A27A0
	lh      $v0, 0x0026($sp)
	b       .L802A27A0
	nop
.L802A27A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_802A27B0
obj_lib_802A27B0:
	lwc1    $f4, 0x00A0($a1)
	swc1    $f4, 0x0020($a0)
	lwc1    $f6, 0x00DC($a1)
	lwc1    $f8, 0x00A4($a1)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($a0)
	lwc1    $f16, 0x00A8($a1)
	swc1    $f16, 0x0028($a0)
	lw      $t6, 0x00C4($a1)
	andi    $t7, $t6, 0xFFFF
	sh      $t7, 0x001A($a0)
	lw      $t8, 0x00C8($a1)
	andi    $t9, $t8, 0xFFFF
	sh      $t9, 0x001C($a0)
	lw      $t0, 0x00CC($a1)
	andi    $t1, $t0, 0xFFFF
	sh      $t1, 0x001E($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A2804
obj_lib_802A2804:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0010
	sll     $t6, $a2, 2
	addu    $t7, $a0, $t6
	lwc1    $f4, 0x0088($t7)
	swc1    $f4, 0x000C($sp)
	sll     $t8, $a2, 2
	addu    $t9, $a0, $t8
	lwc1    $f6, 0x008C($t9)
	swc1    $f6, 0x0008($sp)
	sll     $t0, $a2, 2
	addu    $t1, $a0, $t0
	lwc1    $f8, 0x0090($t1)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x021C($a0)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f4, 0x022C($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f16, 0x023C($a0)
	sll     $t2, $a1, 2
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0004($sp)
	addu    $t3, $a0, $t2
	sll     $t4, $a1, 2
	mul.s   $f6, $f16, $f4
	addu    $t5, $a0, $t4
	add.s   $f10, $f18, $f8
	lwc1    $f8, 0x0088($t3)
	add.s   $f18, $f10, $f6
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x0088($t5)
	lwc1    $f4, 0x0220($a0)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f8, 0x0230($a0)
	lwc1    $f18, 0x0008($sp)
	mul.s   $f6, $f4, $f10
	lwc1    $f10, 0x0240($a0)
	sll     $t6, $a1, 2
	mul.s   $f16, $f8, $f18
	lwc1    $f8, 0x0004($sp)
	addu    $t7, $a0, $t6
	sll     $t8, $a1, 2
	mul.s   $f18, $f10, $f8
	addu    $t9, $a0, $t8
	add.s   $f4, $f6, $f16
	lwc1    $f16, 0x008C($t7)
	add.s   $f6, $f4, $f18
	add.s   $f10, $f16, $f6
	swc1    $f10, 0x008C($t9)
	lwc1    $f8, 0x0224($a0)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f16, 0x0234($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f18, $f8, $f4
	lwc1    $f4, 0x0244($a0)
	sll     $t0, $a1, 2
	mul.s   $f10, $f16, $f6
	lwc1    $f16, 0x0004($sp)
	addu    $t1, $a0, $t0
	sll     $t2, $a1, 2
	mul.s   $f6, $f4, $f16
	addu    $t3, $a0, $t2
	add.s   $f8, $f18, $f10
	lwc1    $f10, 0x0090($t1)
	add.s   $f18, $f8, $f6
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x0090($t3)
	b       .L802A2928
	nop
.L802A2928:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl obj_lib_802A2930
obj_lib_802A2930:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lh      $t7, 0x0036($sp)
	lw      $t6, 0x0030($sp)
	addiu   $t0, $sp, 0x0024
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	lwc1    $f4, 0x0088($t9)
	swc1    $f4, 0x0000($t0)
	lh      $t2, 0x0036($sp)
	lw      $t1, 0x0030($sp)
	addiu   $t5, $sp, 0x0024
	sll     $t3, $t2, 2
	addu    $t4, $t1, $t3
	lwc1    $f6, 0x008C($t4)
	swc1    $f6, 0x0004($t5)
	lh      $t6, 0x0036($sp)
	lw      $t7, 0x0030($sp)
	addiu   $t0, $sp, 0x0024
	sll     $t8, $t6, 2
	addu    $t9, $t7, $t8
	lwc1    $f8, 0x0090($t9)
	swc1    $f8, 0x0008($t0)
	lh      $t1, 0x003A($sp)
	lw      $t2, 0x0030($sp)
	addiu   $t6, $sp, 0x001C
	sll     $t3, $t1, 2
	addu    $t4, $t2, $t3
	lw      $t5, 0x0088($t4)
	sh      $t5, 0x0000($t6)
	lh      $t8, 0x003A($sp)
	lw      $t7, 0x0030($sp)
	addiu   $t2, $sp, 0x001C
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	lw      $t1, 0x008C($t0)
	sh      $t1, 0x0002($t2)
	lh      $t4, 0x003A($sp)
	lw      $t3, 0x0030($sp)
	addiu   $t7, $sp, 0x001C
	sll     $t5, $t4, 2
	addu    $t6, $t3, $t5
	lw      $t8, 0x0090($t6)
	sh      $t8, 0x0004($t7)
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0024
	addiu   $a2, $sp, 0x001C
	jal     mtxf_posang
	addiu   $a0, $a0, 0x021C
	b       .L802A2A08
	nop
.L802A2A08:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl obj_lib_802A2A18
obj_lib_802A2A18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x008C($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, .L802A2A50
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0006
	jal     obj_lib_802A2930
	li      $a2, 0x0012
	jal     obj_lib_8029F2EC
	lw      $a0, 0x0018($sp)
.L802A2A50:
	lw      $t9, 0x0018($sp)
	addiu   $t0, $t9, 0x021C
	sw      $t0, 0x0050($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	b       .L802A2A74
	nop
.L802A2A74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A2A84
obj_lib_802A2A84:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x002C
	jal     obj_lib_802A2930
	li      $a2, 0x0012
	jal     obj_lib_8029F2EC
	lw      $a0, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	lw      $a2, 0x001C($sp)
	addiu   $t9, $t8, 0x021C
	move    $a0, $t9
	move    $a1, $t9
	jal     mtxf_cat
	addiu   $a2, $a2, 0x021C
	lw      $t0, 0x0020($sp)
	lwc1    $f4, 0x024C($t0)
	swc1    $f4, 0x00A0($t0)
	lw      $t1, 0x0020($sp)
	lwc1    $f6, 0x0250($t1)
	swc1    $f6, 0x00A4($t1)
	lw      $t2, 0x0020($sp)
	lwc1    $f8, 0x0254($t2)
	swc1    $f8, 0x00A8($t2)
	lw      $t3, 0x0020($sp)
	addiu   $t4, $t3, 0x021C
	sw      $t4, 0x0050($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     obj_lib_8029F430
	nop
	b       .L802A2B18
	nop
.L802A2B18:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_lib_802A2B28:
	lw      $t6, 0x008C($a0)
	li      $at, -0x0201
	and     $t7, $t6, $at
	sw      $t7, 0x008C($a0)
	lw      $t8, 0x008C($a0)
	ori     $t9, $t8, 0x0800
	sw      $t9, 0x008C($a0)
	lwc1    $f4, 0x00A0($a0)
	swc1    $f4, 0x024C($a0)
	lwc1    $f6, 0x00A4($a0)
	swc1    $f6, 0x0250($a0)
	lwc1    $f8, 0x00A8($a0)
	swc1    $f8, 0x0254($a0)
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_802A2B6C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C4($t6)
	lw      $t8, 0x0114($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00C4($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C8($t0)
	lw      $t2, 0x0118($t0)
	addu    $t3, $t1, $t2
	sw      $t3, 0x00C8($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00CC($t4)
	lw      $t7, 0x011C($t4)
	addu    $t8, $t5, $t7
	sw      $t8, 0x00CC($t4)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A2BC4
obj_lib_802A2BC4:
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
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_802A2C1C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C4($t6)
	sw      $t7, 0x00D0($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	sw      $t9, 0x00D4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00CC($t0)
	sw      $t1, 0x00D8($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A2C5C
obj_lib_802A2C5C:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0104($t6)
	bnez    $t7, .L802A2C9C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	sw      $t9, 0x0100($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x8000
	sw      $t0, 0x0104($t1)
.L802A2C9C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	sw      $t3, 0x0044($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0100($t4)
	sw      $t5, 0x0040($sp)
	lw      $t6, 0x0040($sp)
	li      $at, -0x0001
	lh      $t7, 0x0008($t6)
	beq     $t7, $at, .L802A2CE0
	nop
	lw      $t9, 0x0040($sp)
	addiu   $t8, $t9, 0x0008
	b       .L802A2CE8
	sw      $t8, 0x003C($sp)
.L802A2CE0:
	lw      $t0, 0x0044($sp)
	sw      $t0, 0x003C($sp)
.L802A2CE8:
	lw      $t1, 0x0040($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t2, 0x0000($t1)
	ori     $t3, $t2, 0x8000
	sw      $t3, 0x0104($t4)
	lw      $t5, 0x003C($sp)
	lw      $t7, 0x0040($sp)
	lh      $t6, 0x0002($t5)
	lh      $t9, 0x0002($t7)
	subu    $t8, $t6, $t9
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0038($sp)
	lw      $t0, 0x003C($sp)
	lw      $t2, 0x0040($sp)
	lh      $t1, 0x0004($t0)
	lh      $t3, 0x0004($t2)
	subu    $t4, $t1, $t3
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0034($sp)
	lw      $t5, 0x003C($sp)
	lw      $t6, 0x0040($sp)
	lh      $t7, 0x0006($t5)
	lh      $t9, 0x0006($t6)
	subu    $t8, $t7, $t9
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0030($sp)
	lw      $t0, 0x003C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x0002($t0)
	lwc1    $f8, 0x00A0($t1)
	mtc1    $t2, $f4
	nop
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($sp)
	lw      $t3, 0x003C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t4, 0x0004($t3)
	lwc1    $f4, 0x00A4($t5)
	mtc1    $t4, $f16
	nop
	cvt.s.w $f18, $f16
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0020($sp)
	lw      $t6, 0x003C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t7, 0x0006($t6)
	lwc1    $f16, 0x00A8($t9)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0028($sp)
	lwc1    $f12, 0x001C($sp)
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x010C($t8)
	lwc1    $f14, 0x0020($sp)
	lwc1    $f12, 0x0028($sp)
	jal     atan2
	neg.s   $f14, $f14
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x0108($t0)
	lwc1    $f16, 0x0038($sp)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f6, 0x0020($sp)
	mul.s   $f4, $f16, $f18
	lwc1    $f18, 0x0030($sp)
	mul.s   $f10, $f8, $f6
	lwc1    $f8, 0x001C($sp)
	mul.s   $f6, $f18, $f8
	add.s   $f16, $f4, $f10
	mtc1    $0, $f10
	add.s   $f4, $f16, $f6
	c.le.s  $f4, $f10
	nop
	bc1f    .L802A2EB4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x003C($sp)
	sw      $t2, 0x0100($t1)
	lw      $t3, 0x003C($sp)
	li      $at, -0x0001
	lh      $t4, 0x0008($t3)
	bne     $t4, $at, .L802A2EAC
	nop
	b       .L802A2EC4
	li      $v0, -0x0001
	b       .L802A2EB4
	nop
.L802A2EAC:
	b       .L802A2EC4
	li      $v0, 0x0001
.L802A2EB4:
	b       .L802A2EC4
	move    $v0, $0
	b       .L802A2EC4
	nop
.L802A2EC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl obj_lib_802A2ED4
obj_lib_802A2ED4:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0000($a0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0004($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0008($a0)
	sh      $0, 0x000C($a0)
	sh      $0, 0x000E($a0)
	sh      $0, 0x0010($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A2F14
obj_lib_802A2F14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	div.s   $f8, $f4, $f6
	mul.s   $f10, $f0, $f4
	b       .L802A2F4C
	sub.s   $f0, $f10, $f8
	b       .L802A2F4C
	nop
.L802A2F4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A2F5C
obj_lib_802A2F5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     o_script_80383CB4
	nop
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f6, $f0, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	mfc1    $a1, $f16
	mfc1    $a2, $f16
	mfc1    $a3, $f16
	jal     obj_lib_8029F3D0
	nop
	b       .L802A2FB0
	nop
.L802A2FB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A2FC0
obj_lib_802A2FC0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($sp)
	mov.s   $f20, $f0
	lw      $t6, 0x0028($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f18, 0x00A0($t6)
	mul.s   $f10, $f20, $f4
	sub.s   $f16, $f10, $f8
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A0($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f10
	lwc1    $f4, 0x002C($sp)
	mov.s   $f20, $f0
	lw      $t7, 0x0028($sp)
	mul.s   $f8, $f4, $f10
	lwc1    $f6, 0x00A4($t7)
	mul.s   $f18, $f20, $f4
	sub.s   $f16, $f18, $f8
	add.s   $f10, $f6, $f16
	swc1    $f10, 0x00A4($t7)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f18
	lwc1    $f4, 0x002C($sp)
	mov.s   $f20, $f0
	lw      $t8, 0x0028($sp)
	mul.s   $f8, $f4, $f18
	lwc1    $f10, 0x00A8($t8)
	mul.s   $f6, $f20, $f4
	sub.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t8)
	b       .L802A3078
	nop
.L802A3078:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_802A308C
obj_lib_802A308C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($sp)
	mov.s   $f20, $f0
	lw      $t6, 0x0028($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f18, 0x00A0($t6)
	mul.s   $f10, $f20, $f4
	sub.s   $f16, $f10, $f8
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A0($t6)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f10
	lwc1    $f4, 0x002C($sp)
	mov.s   $f20, $f0
	lw      $t7, 0x0028($sp)
	mul.s   $f8, $f4, $f10
	lwc1    $f6, 0x00A8($t7)
	mul.s   $f18, $f20, $f4
	sub.s   $f16, $f18, $f8
	add.s   $f10, $f6, $f16
	swc1    $f10, 0x00A8($t7)
	b       .L802A3110
	nop
.L802A3110:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

obj_lib_802A3124:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x00C0($a0)
	swc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x00BC($a0)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x00B8($a0)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x021C($a0)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f4, 0x022C($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f16, 0x023C($a0)
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0004($sp)
	mul.s   $f6, $f16, $f4
	add.s   $f10, $f18, $f8
	add.s   $f18, $f6, $f10
	swc1    $f18, 0x00AC($a0)
	lwc1    $f8, 0x0220($a0)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f6, 0x0230($a0)
	lwc1    $f10, 0x0008($sp)
	mul.s   $f4, $f8, $f16
	lwc1    $f16, 0x0240($a0)
	mul.s   $f18, $f6, $f10
	lwc1    $f6, 0x0004($sp)
	mul.s   $f10, $f16, $f6
	add.s   $f8, $f4, $f18
	add.s   $f4, $f10, $f8
	swc1    $f4, 0x00B0($a0)
	lwc1    $f18, 0x0224($a0)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f10, 0x0234($a0)
	lwc1    $f8, 0x0008($sp)
	mul.s   $f6, $f18, $f16
	lwc1    $f16, 0x0244($a0)
	mul.s   $f4, $f10, $f8
	lwc1    $f10, 0x0004($sp)
	mul.s   $f8, $f16, $f10
	add.s   $f18, $f6, $f4
	add.s   $f6, $f8, $f18
	swc1    $f6, 0x00B4($a0)
	b       .L802A31D8
	nop
.L802A31D8:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl obj_lib_802A31E0
obj_lib_802A31E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x002C
	jal     obj_lib_802A2930
	li      $a2, 0x000F
	lui     $a0, %hi(object)
	jal     obj_lib_802A3124
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00AC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x00B0($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A8($t8)
	lwc1    $f6, 0x00B4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t8)
	b       .L802A3258
	nop
.L802A3258:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A3268
obj_lib_802A3268:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lh      $t7, 0x00CA($t6)
	lh      $t8, 0x01B6($t6)
	lw      $t0, 0x01B4($t6)
	subu    $t9, $t7, $t8
	subu    $t1, $t0, $t9
	addu    $t2, $t1, $at
	sh      $t2, 0x0006($sp)
	b       .L802A32A4
	lh      $v0, 0x0006($sp)
	b       .L802A32A4
	nop
.L802A32A4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_802A32AC
obj_lib_802A32AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lb      $t7, 0x0001($t6)
	sw      $t7, 0x0018($sp)
	lui     $t8, %hi(object_80361168)
	lh      $t8, %lo(object_80361168)($t8)
	slti    $at, $t8, 0x0097
	bnez    $at, .L802A32F0
	nop
	lw      $t9, 0x0018($sp)
	slti    $at, $t9, 0x000B
	bnez    $at, .L802A32F0
	nop
	li      $t0, 0x000A
	sw      $t0, 0x0018($sp)
.L802A32F0:
	lui     $t1, %hi(object_80361168)
	lh      $t1, %lo(object_80361168)($t1)
	slti    $at, $t1, 0x00D3
	bnez    $at, .L802A3308
	nop
	sw      $0, 0x0018($sp)
.L802A3308:
	lw      $t2, 0x0018($sp)
	sw      $0, 0x0020($sp)
	blez    $t2, .L802A348C
	nop
.L802A3318:
	jal     o_script_80383CB4
	nop
	lw      $t3, 0x0028($sp)
	lui     $at, %hi(obj_lib_80337828)
	lwc1    $f6, %lo(obj_lib_80337828)($at)
	lwc1    $f4, 0x0010($t3)
	lui     $at, %hi(obj_lib_8033782C)
	lwc1    $f18, %lo(obj_lib_8033782C)($at)
	mul.s   $f8, $f4, $f6
	lwc1    $f16, 0x000C($t3)
	mul.s   $f10, $f0, $f8
	nop
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x001C($sp)
	lw      $t4, 0x0028($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130007DC
	la.l    $a2, o_130007DC
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	lbu     $a1, 0x0002($t4)
	sw      $v0, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	lw      $t7, 0x0024($sp)
	lb      $t6, 0x0000($t5)
	sw      $t6, 0x0144($t7)
	jal     rand
	nop
	lw      $t8, 0x0024($sp)
	sw      $v0, 0x00C8($t8)
	lw      $t9, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	lb      $t0, 0x0008($t9)
	mtc1    $t0, $f8
	nop
	cvt.s.w $f16, $f8
	swc1    $f16, 0x00E4($t1)
	lw      $t2, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lb      $t3, 0x0009($t2)
	mtc1    $t3, $f18
	nop
	cvt.s.w $f10, $f18
	swc1    $f10, 0x012C($t4)
	lw      $t6, 0x0028($sp)
	lw      $t5, 0x0024($sp)
	lb      $t7, 0x0003($t6)
	lwc1    $f4, 0x00A4($t5)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f16, $f4, $f8
	swc1    $f16, 0x00A4($t5)
	jal     o_script_80383CB4
	nop
	lw      $t8, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	lb      $t9, 0x0005($t8)
	lb      $t0, 0x0004($t8)
	mtc1    $t9, $f18
	mtc1    $t0, $f4
	cvt.s.w $f10, $f18
	cvt.s.w $f8, $f4
	mul.s   $f6, $f0, $f10
	add.s   $f16, $f6, $f8
	swc1    $f16, 0x00B8($t1)
	jal     o_script_80383CB4
	nop
	lw      $t2, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	lb      $t3, 0x0007($t2)
	lb      $t4, 0x0006($t2)
	mtc1    $t3, $f18
	mtc1    $t4, $f6
	cvt.s.w $f10, $f18
	cvt.s.w $f8, $f6
	mul.s   $f4, $f0, $f10
	add.s   $f16, $f4, $f8
	swc1    $f16, 0x00B0($t6)
	lwc1    $f18, 0x001C($sp)
	lw      $a0, 0x0024($sp)
	mfc1    $a1, $f18
	mfc1    $a2, $f18
	mfc1    $a3, $f18
	jal     obj_lib_8029F3D0
	nop
	lw      $t7, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	addiu   $t5, $t7, 0x0001
	slt     $at, $t5, $t9
	bnez    $at, .L802A3318
	sw      $t5, 0x0020($sp)
.L802A348C:
	b       .L802A3494
	nop
.L802A3494:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_802A34A4
obj_lib_802A34A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x40000000
	lw      $t7, 0x008C($t6)
	and     $t8, $t7, $at
	bnez    $t8, .L802A3528
	nop
	lw      $t9, 0x0018($sp)
	li      $at, 0x40000000
	lw      $t0, 0x008C($t9)
	or      $t1, $t0, $at
	sw      $t1, 0x008C($t9)
	lw      $t2, 0x001C($sp)
	lw      $t4, 0x0018($sp)
	lw      $t3, 0x0000($t2)
	sw      $t3, 0x0130($t4)
	lw      $t5, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	lb      $t6, 0x0005($t5)
	sw      $t6, 0x0180($t7)
	lw      $t8, 0x001C($sp)
	lw      $t1, 0x0018($sp)
	lb      $t0, 0x0006($t8)
	sw      $t0, 0x0184($t1)
	lw      $t9, 0x001C($sp)
	lw      $t3, 0x0018($sp)
	lb      $t2, 0x0007($t9)
	sw      $t2, 0x0198($t3)
	jal     obj_lib_802A05D4
	nop
.L802A3528:
	lw      $t5, 0x001C($sp)
	lw      $t4, 0x0018($sp)
	lh      $t6, 0x0008($t5)
	lwc1    $f4, 0x002C($t4)
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f10, $f4, $f8
	swc1    $f10, 0x01F8($t4)
	lw      $t8, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	lh      $t0, 0x000A($t8)
	lwc1    $f16, 0x0030($t7)
	mtc1    $t0, $f18
	nop
	cvt.s.w $f6, $f18
	mul.s   $f4, $f16, $f6
	swc1    $f4, 0x01FC($t7)
	lw      $t9, 0x001C($sp)
	lw      $t1, 0x0018($sp)
	lh      $t2, 0x000C($t9)
	lwc1    $f8, 0x002C($t1)
	mtc1    $t2, $f10
	nop
	cvt.s.w $f18, $f10
	mul.s   $f16, $f8, $f18
	swc1    $f16, 0x0200($t1)
	lw      $t5, 0x001C($sp)
	lw      $t3, 0x0018($sp)
	lh      $t6, 0x000E($t5)
	lwc1    $f6, 0x0030($t3)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f10, $f4
	mul.s   $f8, $f6, $f10
	swc1    $f8, 0x0204($t3)
	lw      $t8, 0x001C($sp)
	lw      $t4, 0x0018($sp)
	lbu     $t0, 0x0004($t8)
	lwc1    $f18, 0x0030($t4)
	mtc1    $t0, $f16
	bgez    $t0, .L802A35E4
	cvt.s.w $f4, $f16
	li      $at, 0x4F800000
	mtc1    $at, $f6
	nop
	add.s   $f4, $f4, $f6
.L802A35E4:
	mul.s   $f10, $f18, $f4
	swc1    $f10, 0x0208($t4)
	b       .L802A35F4
	nop
.L802A35F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A3604
obj_lib_802A3604:
	bltz    $a0, .L802A361C
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802A3624
	nop
.L802A361C:
	jr      $ra
	li      $v0, -0x0001
.L802A3624:
	jr      $ra
	nop
	jr      $ra
	nop

/* float obj_lib_802A3634(float) */
.globl obj_lib_802A3634
obj_lib_802A3634:
	mtc1    $0, $f4
	nop
	c.le.s  $f4, $f12
	nop
	bc1f    .L802A365C
	nop
	jr      $ra
	mov.s   $f0, $f12
	b       .L802A3664
	nop
.L802A365C:
	jr      $ra
	neg.s   $f0, $f12
.L802A3664:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A3674
obj_lib_802A3674:
	bltz    $a0, .L802A368C
	nop
	jr      $ra
	move    $v0, $a0
	b       .L802A3694
	nop
.L802A368C:
	jr      $ra
	subu    $v0, $0, $a0
.L802A3694:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A36A4
obj_lib_802A36A4:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slt     $at, $t7, $a0
	bnez    $at, .L802A373C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	subu    $t0, $t9, $a0
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L802A3724
	sw      $t0, 0x0000($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0010
	sh      $t4, 0x0002($t2)
	lw      $t5, 0x0000($sp)
	bgez    $t5, .L802A3708
	sra     $t6, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t6, $at, 1
.L802A3708:
	slt     $at, $a1, $t6
	beqz    $at, .L802A371C
	nop
	li      $t7, 0x0001
	sw      $t7, 0x0004($sp)
.L802A371C:
	b       .L802A373C
	nop
.L802A3724:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0011
	lh      $t9, 0x0002($t8)
	and     $t0, $t9, $at
	sh      $t0, 0x0002($t8)
.L802A373C:
	b       .L802A374C
	lw      $v0, 0x0004($sp)
	b       .L802A374C
	nop
.L802A374C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_802A3754
obj_lib_802A3754:
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, .L802A3794
	nop
	la.u    $t9, player_data
	la.l    $t9, player_data
	lw      $t0, 0x000C($t9)
	li.u    $at, 0x0080023C
	li.l    $at, 0x0080023C
	bne     $t0, $at, .L802A3794
	nop
	jr      $ra
	li      $v0, 0x0001
.L802A3794:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A37AC
obj_lib_802A37AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42380000
	b       .L802A37CC
	nop
.L802A37CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A37DC
obj_lib_802A37DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42380000
	jal     obj_sfx_802CA144
	lw      $a0, 0x0018($sp)
	b       .L802A3808
	nop
.L802A3808:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A3818
obj_lib_802A3818:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0028($sp)
	lui     $t6, %hi(obj_mario)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(obj_mario)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t8, %hi(obj_mario)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, %lo(obj_mario)($t8)
	lwc1    $f16, 0x00A8($t9)
	lwc1    $f10, 0x00A8($t8)
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
	lwc1    $f16, 0x001C($sp)
	lwc1    $f18, 0x0028($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802A38F4
	nop
	lwc1    $f4, 0x0028($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f16, 0x0024($sp)
	la.u    $t0, player_data
	sub.s   $f6, $f4, $f8
	la.l    $t0, player_data
	lwc1    $f8, 0x003C($t0)
	div.s   $f10, $f6, $f4
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f8, $f18
	swc1    $f6, 0x003C($t0)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f18, 0x0020($sp)
	la.u    $t1, player_data
	sub.s   $f16, $f4, $f10
	la.l    $t1, player_data
	lwc1    $f10, 0x0044($t1)
	div.s   $f8, $f16, $f4
	mul.s   $f6, $f8, $f18
	add.s   $f16, $f10, $f6
	swc1    $f16, 0x0044($t1)
.L802A38F4:
	b       .L802A38FC
	nop
.L802A38FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_802A390C
obj_lib_802A390C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(obj_mario)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(obj_mario)($t6)
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x001C($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802A3964
	nop
	lwc1    $f18, 0x001C($sp)
	neg.s   $f4, $f18
	swc1    $f4, 0x001C($sp)
.L802A3964:
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L802A3984
	nop
	jal     obj_lib_802A3818
	lwc1    $f12, 0x0020($sp)
.L802A3984:
	b       .L802A398C
	nop
.L802A398C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A399C
obj_lib_802A399C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00AC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x00B0($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A8($t8)
	lwc1    $f6, 0x00B4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x000A
	lw      $t0, 0x00F4($t9)
	bne     $t0, $at, .L802A3A10
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L802A3A10:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x00F4($t1)
	b       .L802A3A2C
	nop
.L802A3A2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_lib_802A3A3C:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A3A4C
obj_lib_802A3A4C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $a0, 0x01AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x01B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x01AC($t8)
	jr      $ra
	lb      $v0, 0x0000($t9)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A3A88
obj_lib_802A3A88:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01AC($t6)
	sw      $t7, 0x0008($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x01B0($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0004($sp)
	lw      $t1, 0x0008($sp)
	lw      $t2, 0x0004($sp)
	li      $at, -0x0001
	addu    $t3, $t1, $t2
	lb      $t4, 0x0000($t3)
	beq     $t4, $at, .L802A3AF8
	nop
	lw      $t5, 0x0008($sp)
	lw      $t6, 0x0004($sp)
	addu    $t7, $t5, $t6
	lb      $t8, 0x0000($t7)
	sb      $t8, 0x000F($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01B0($t9)
	addiu   $t1, $t0, 0x0001
	b       .L802A3B10
	sw      $t1, 0x01B0($t9)
.L802A3AF8:
	lw      $t2, 0x0008($sp)
	lb      $t3, 0x0000($t2)
	sb      $t3, 0x000F($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x01B0($t4)
.L802A3B10:
	b       .L802A3B20
	lb      $v0, 0x000F($sp)
	b       .L802A3B20
	nop
.L802A3B20:
	jr      $ra
	addiu   $sp, $sp, 0x0010

obj_lib_802A3B28:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	b       .L802A3B38
	nop
.L802A3B38:
	jr      $ra
	nop

.globl obj_lib_802A3B40
obj_lib_802A3B40:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	lwc1    $f4, 0x0014($sp)
	lwc1    $f6, 0x0010($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $a1, $f18
	lw      $t7, 0x0154($t6)
	cvt.s.w $f4, $f18
	mtc1    $t7, $f10
	nop
	cvt.s.w $f16, $f10
	div.s   $f6, $f16, $f4
	swc1    $f6, 0x0000($sp)
	andi    $t8, $a0, 0x0001
	beqz    $t8, .L802A3BB0
	nop
	lwc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0000($sp)
	lwc1    $f16, 0x0010($sp)
	lui     $t9, %hi(object)
	mul.s   $f18, $f8, $f10
	lw      $t9, %lo(object)($t9)
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x002C($t9)
.L802A3BB0:
	andi    $t0, $a0, 0x0002
	beqz    $t0, .L802A3BDC
	nop
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0000($sp)
	lwc1    $f18, 0x0010($sp)
	lui     $t1, %hi(object)
	mul.s   $f10, $f6, $f8
	lw      $t1, %lo(object)($t1)
	add.s   $f16, $f10, $f18
	swc1    $f16, 0x0030($t1)
.L802A3BDC:
	andi    $t2, $a0, 0x0004
	beqz    $t2, .L802A3C08
	nop
	lwc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0000($sp)
	lwc1    $f10, 0x0010($sp)
	lui     $t3, %hi(object)
	mul.s   $f8, $f4, $f6
	lw      $t3, %lo(object)($t3)
	add.s   $f18, $f8, $f10
	swc1    $f18, 0x0034($t3)
.L802A3C08:
	b       .L802A3C10
	nop
.L802A3C10:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_lib_802A3C18
obj_lib_802A3C18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $t6, object_8033D280
	la.l    $t6, object_8033D280
	lh      $t7, 0x0050($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $t7, $f4
	lwc1    $f8, 0x0164($t8)
	cvt.s.w $f6, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t8)
	la.u    $t9, object_8033D280
	la.l    $t9, object_8033D280
	lh      $t0, 0x0052($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $t0, $f16
	lwc1    $f4, 0x0168($t1)
	cvt.s.w $f18, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A4($t1)
	la.u    $t2, object_8033D280
	la.l    $t2, object_8033D280
	lh      $t3, 0x0054($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $t3, $f8
	lwc1    $f16, 0x016C($t4)
	cvt.s.w $f10, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t4)
	la.u    $t5, object_8033D280
	la.l    $t5, object_8033D280
	lh      $t6, 0x0056($t5)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	mtc1    $t6, $f4
	li      $at, 0x3FF00000
	mtc1    $at, $f19
	cvt.s.w $f6, $f4
	mtc1    $0, $f18
	div.s   $f10, $f6, $f8
	cvt.d.s $f16, $f10
	add.d   $f4, $f16, $f18
	jal     obj_lib_8029F430
	cvt.s.d $f12, $f4
	b       .L802A3CDC
	nop
.L802A3CDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_lib_802A3CEC:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A3CFC
obj_lib_802A3CFC:
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, .L802A3D28
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802A3D30
	nop
.L802A3D28:
	jr      $ra
	move    $v0, $0
.L802A3D30:
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_802A3D40:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L802A3D78
	nop
	mtc1    $a1, $f6
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	cvt.s.w $f8, $f6
	lwc1    $f4, 0x00A4($t9)
	sub.s   $f10, $f4, $f8
	b       .L802A3D94
	swc1    $f10, 0x00A4($t9)
.L802A3D78:
	mtc1    $a1, $f18
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	cvt.s.w $f6, $f18
	lwc1    $f16, 0x00A4($t0)
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x00A4($t0)
.L802A3D94:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sll     $t3, $a0, 1
	lw      $t2, 0x0154($t1)
	bne     $t2, $t3, .L802A3DBC
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802A3DC4
	nop
.L802A3DBC:
	jr      $ra
	move    $v0, $0
.L802A3DC4:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A3DD4
obj_lib_802A3DD4:
	slti    $at, $a0, 0x0004
	beqz    $at, .L802A3DE8
	nop
	bgez    $a0, .L802A3DF0
	nop
.L802A3DE8:
	jr      $ra
	li      $v0, 0x0001
.L802A3DF0:
	lui     $t7, %hi(obj_lib_80330000)
	addu    $t7, $t7, $a0
	lb      $t7, %lo(obj_lib_80330000)($t7)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $t7, $f6
	lwc1    $f4, 0x00A4($t6)
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($t6)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A3E30
obj_lib_802A3E30:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0020($sp)
	lw      $t8, 0x014C($t7)
	sll     $t9, $t8, 2
	addu    $t0, $t6, $t9
	lw      $t1, 0x0000($t0)
	sw      $t1, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	jalr    $t9
	nop
	b       .L802A3E70
	nop
.L802A3E70:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_lib_802A3E80:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_1300080C
	la.l    $a2, o_1300080C
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x007A
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	sw      $t6, 0x01B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x001C($sp)
	lw      $t9, 0x0188($t8)
	sw      $t9, 0x0188($t0)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	sw      $t1, 0x0144($t2)
	b       .L802A3EE8
	lw      $v0, 0x001C($sp)
	b       .L802A3EE8
	nop
.L802A3EE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_lib_802A3EF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	jal     obj_lib_802A3E80
	move    $a1, $0
	b       .L802A3F14
	nop
.L802A3F14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A3F24
obj_lib_802A3F24:
	sll     $t6, $a0, 1
	lui     $v0, %hi(obj_lib_80330004)
	addu    $v0, $v0, $t6
	jr      $ra
	lh      $v0, %lo(obj_lib_80330004)($v0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A3F48
obj_lib_802A3F48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x0164($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t8, %hi(object)
	lui     $t9, %hi(obj_mario)
	lw      $t9, %lo(obj_mario)($t9)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00A4($t9)
	lwc1    $f10, 0x0168($t8)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $t0, %hi(object)
	lui     $t1, %hi(obj_mario)
	lw      $t1, %lo(obj_mario)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x00A8($t1)
	lwc1    $f4, 0x016C($t0)
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
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x44FA0000
	mtc1    $at, $f16
	lwc1    $f18, 0x015C($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802A402C
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f8
	lwc1    $f4, 0x0018($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    .L802A402C
	nop
	b       .L802A403C
	li      $v0, 0x0001
	b       .L802A4034
	nop
.L802A402C:
	b       .L802A403C
	move    $v0, $0
.L802A4034:
	b       .L802A403C
	nop
.L802A403C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_802A404C
obj_lib_802A404C:
	mtc1    $a0, $f6
	la.u    $t6, player_data
	la.l    $t6, player_data
	cvt.s.w $f8, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f8, $f4
	nop
	bc1f    .L802A4078
	nop
	jr      $ra
	li      $v0, 0x0001
.L802A4078:
	la.u    $t7, player_data
	la.l    $t7, player_data
	lw      $t8, 0x000C($t7)
	andi    $t9, $t8, 0x0800
	beqz    $t9, .L802A40A0
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802A40A8
	nop
.L802A40A0:
	jr      $ra
	move    $v0, $0
.L802A40A8:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A40B8
obj_lib_802A40B8:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	lb      $t6, 0x0000($a1)
	li      $at, -0x0001
	beq     $t6, $at, .L802A40F8
	nop
.L802A40D0:
	lb      $t7, 0x0000($a1)
	bne     $t7, $a0, .L802A40E4
	nop
	jr      $ra
	li      $v0, 0x0001
.L802A40E4:
	addiu   $a1, $a1, 0x0001
	lb      $t8, 0x0000($a1)
	li      $at, -0x0001
	bne     $t8, $at, .L802A40D0
	nop
.L802A40F8:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

obj_lib_802A4110:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A4120
obj_lib_802A4120:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(stage_index)
	la.u    $a1, obj_lib_80330014
	la.l    $a1, obj_lib_80330014
	jal     obj_lib_802A40B8
	lh      $a0, %lo(stage_index)($a0)
	beqz    $v0, .L802A41E8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     map_80381900
	lw      $a2, 0x00A8($t6)
	swc1    $f0, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L802A41E0
	nop
	lw      $t8, 0x001C($sp)
	lb      $t9, 0x0005($t8)
	beqz    $t9, .L802A4198
	nop
	lw      $t0, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lb      $t1, 0x0005($t0)
	b       .L802A41E0
	sw      $t1, 0x01A0($t2)
.L802A4198:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t3)
	lw      $a2, 0x00A8($t3)
	jal     map_80381900
	sub.s   $f14, $f4, $f6
	lw      $t4, 0x001C($sp)
	beqz    $t4, .L802A41E0
	nop
	lw      $t5, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lb      $t6, 0x0005($t5)
	sw      $t6, 0x01A0($t7)
.L802A41E0:
	b       .L802A41F8
	nop
.L802A41E8:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, -0x0001
	sw      $t8, 0x01A0($t9)
.L802A41F8:
	b       .L802A4200
	nop
.L802A4200:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A4210
obj_lib_802A4210:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0001
	lw      $t7, 0x01A0($t6)
	beq     $t7, $at, .L802A4344
	nop
	lui     $t8, %hi(object_80361250)
	lh      $t8, %lo(object_80361250)($t8)
	beqz    $t8, .L802A4344
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t1, %hi(object_80361250)
	lh      $t1, %lo(object_80361250)($t1)
	lw      $t0, 0x01A0($t9)
	bne     $t0, $t1, .L802A4268
	nop
	b       .L802A42D4
	li      $s0, 0x0001
.L802A4268:
	lui     $t4, %hi(object_80361250)
	lh      $t4, %lo(object_80361250)($t4)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t6, %hi(object_803611D8+1*0)
	sll     $t5, $t4, 1
	addu    $t6, $t6, $t5
	lb      $t6, %lo(object_803611D8+1*0)($t6)
	lw      $t3, 0x01A0($t2)
	bne     $t3, $t6, .L802A429C
	nop
	b       .L802A42D4
	li      $s0, 0x0001
.L802A429C:
	lui     $t9, %hi(object_80361250)
	lh      $t9, %lo(object_80361250)($t9)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t1, %hi(object_803611D8+1*1)
	sll     $t0, $t9, 1
	addu    $t1, $t1, $t0
	lb      $t1, %lo(object_803611D8+1*1)($t1)
	lw      $t8, 0x01A0($t7)
	bne     $t8, $t1, .L802A42D0
	nop
	b       .L802A42D4
	li      $s0, 0x0001
.L802A42D0:
	move    $s0, $0
.L802A42D4:
	beqz    $s0, .L802A4314
	nop
	jal     obj_lib_8029F620
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0009
	lh      $t4, 0x0074($t2)
	and     $t5, $t4, $at
	sh      $t5, 0x0074($t2)
	lui     $t3, %hi(object_8036125E)
	lh      $t3, %lo(object_8036125E)($t3)
	lui     $at, %hi(object_8036125E)
	addiu   $t6, $t3, 0x0001
	b       .L802A4344
	sh      $t6, %lo(object_8036125E)($at)
.L802A4314:
	jal     obj_lib_8029F66C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t9, 0x0074($t7)
	ori     $t0, $t9, 0x0008
	sh      $t0, 0x0074($t7)
	lui     $t8, %hi(object_80361260)
	lh      $t8, %lo(object_80361260)($t8)
	lui     $at, %hi(object_80361260)
	addiu   $t1, $t8, 0x0001
	sh      $t1, %lo(object_80361260)($at)
.L802A4344:
	b       .L802A434C
	nop
.L802A434C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_lib_802A4360
obj_lib_802A4360:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $0, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_802A34A4
	lw      $a1, 0x0020($sp)
	lw      $t6, 0x0028($sp)
	beqz    $t6, .L802A43A0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0198($t7)
.L802A43A0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0134($t8)
	andi    $t0, $t9, 0x8000
	beqz    $t0, .L802A4414
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0134($t1)
	andi    $t3, $t2, 0x4000
	beqz    $t3, .L802A440C
	nop
	jal     obj_lib_802A37AC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a2, 0x41A00000
	move    $a0, $t4
	jal     obj_lib_802A1B8C
	lw      $a1, 0x0198($t4)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     obj_sfx_802CA144
	lw      $a0, 0x0024($sp)
	b       .L802A4414
	nop
.L802A440C:
	li      $t5, 0x0001
	sw      $t5, 0x001C($sp)
.L802A4414:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	b       .L802A4430
	lw      $v0, 0x001C($sp)
	b       .L802A4430
	nop
.L802A4430:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A4440
obj_lib_802A4440:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x001C($sp)
	swc1    $f12, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	lw      $a2, 0x0018($sp)
	li      $a0, 0x001E
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802A44B0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a2, 0x41A00000
	move    $a0, $t7
	jal     obj_lib_802A1B8C
	lw      $a1, 0x0198($t7)
	b       .L802A44DC
	nop
.L802A44B0:
	lw      $t8, 0x001C($sp)
	li      $at, 0x0002
	bne     $t8, $at, .L802A44DC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a2, 0x41A00000
	li      $a3, 0x0096
	move    $a0, $t9
	jal     obj_lib_802A1B34
	lw      $a1, 0x0198($t9)
.L802A44DC:
	b       .L802A44E4
	nop
.L802A44E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A44F4
obj_lib_802A44F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	sw      $v0, 0x0218($t6)
	b       .L802A451C
	nop
.L802A451C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A452C
obj_lib_802A452C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, .L802A4554
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01B4($t9)
	sw      $t0, 0x00C8($t9)
.L802A4554:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A4564
obj_lib_802A4564:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	jal     obj_lib_802A3634
	sub.s   $f12, $f4, $f6
	lwc1    $f8, 0x0018($sp)
	c.lt.s  $f0, $f8
	nop
	bc1f    .L802A45BC
	nop
	jal     obj_lib_8029F694
	nop
	b       .L802A45D4
	move    $v0, $0
	b       .L802A45CC
	nop
.L802A45BC:
	jal     obj_lib_8029F6BC
	nop
	b       .L802A45D4
	li      $v0, 0x0001
.L802A45CC:
	b       .L802A45D4
	nop
.L802A45D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl s_obj_lib_802A45E4
s_obj_lib_802A45E4:
	sw      $a2, 0x0008($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L802A4614
	nop
	lw      $t7, 0x0008($a1)
	li      $t6, 0x012C
	sh      $t6, 0x0018($t7)
	lw      $t9, 0x0008($a1)
	li      $t8, 0x012C
	sh      $t8, 0x001A($t9)
	lw      $t0, 0x0008($a1)
	sh      $0, 0x001C($t0)
.L802A4614:
	b       .L802A4624
	move    $v0, $0
	b       .L802A4624
	nop
.L802A4624:
	jr      $ra
	nop

obj_lib_802A462C:
	sw      $a2, 0x0008($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L802A46B4
	nop
	la.u    $t6, object_8033D280
	la.l    $t6, object_8033D280
	lh      $t7, 0x0040($t6)
	lw      $t8, 0x0008($a1)
	sh      $t7, 0x0018($t8)
	la.u    $t9, object_8033D280
	la.l    $t9, object_8033D280
	lh      $t0, 0x0042($t9)
	lw      $t1, 0x0008($a1)
	sh      $t0, 0x001A($t1)
	la.u    $t2, object_8033D280
	la.l    $t2, object_8033D280
	lh      $t3, 0x0044($t2)
	lw      $t4, 0x0008($a1)
	sh      $t3, 0x001C($t4)
	la.u    $t5, object_8033D280
	la.l    $t5, object_8033D280
	lh      $t6, 0x0046($t5)
	lw      $t7, 0x0008($a1)
	sh      $t6, 0x001E($t7)
	la.u    $t8, object_8033D280
	la.l    $t8, object_8033D280
	lh      $t9, 0x0048($t8)
	lw      $t0, 0x0008($a1)
	sh      $t9, 0x0020($t0)
	la.u    $t1, object_8033D280
	la.l    $t1, object_8033D280
	lh      $t2, 0x004A($t1)
	lw      $t3, 0x0008($a1)
	sh      $t2, 0x0022($t3)
.L802A46B4:
	b       .L802A46C4
	move    $v0, $0
	b       .L802A46C4
	nop
.L802A46C4:
	jr      $ra
	nop

.globl obj_lib_802A46CC
obj_lib_802A46CC:
	lh      $t6, 0x0002($a0)
	andi    $t7, $t6, 0x0010
	beqz    $t7, .L802A46EC
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802A46F4
	nop
.L802A46EC:
	jr      $ra
	move    $v0, $0
.L802A46F4:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A4704
obj_lib_802A4704:
	lui     $t6, %hi(object_8033D480)
	lw      $t6, %lo(object_8033D480)($t6)
	lui     $at, %hi(object_8033D480)
	ori     $t7, $t6, 0x0002
	sw      $t7, %lo(object_8033D480)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A4728
obj_lib_802A4728:
	lui     $t6, %hi(object_8033D480)
	lw      $t6, %lo(object_8033D480)($t6)
	li      $at, -0x0003
	and     $t7, $t6, $at
	lui     $at, %hi(object_8033D480)
	sw      $t7, %lo(object_8033D480)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A4750
obj_lib_802A4750:
	lui     $t6, %hi(object_8033D480)
	lw      $t6, %lo(object_8033D480)($t6)
	lui     $at, %hi(object_8033D480)
	or      $t7, $t6, $a0
	sw      $t7, %lo(object_8033D480)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A4774
obj_lib_802A4774:
	lui     $t7, %hi(object_8033D480)
	lw      $t7, %lo(object_8033D480)($t7)
	li      $at, -0x0001
	xor     $t6, $a0, $at
	lui     $at, %hi(object_8033D480)
	and     $t8, $t6, $t7
	sw      $t8, %lo(object_8033D480)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A47A0
obj_lib_802A47A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(obj_lib_80337830)
	lwc1    $f6, %lo(obj_lib_80337830)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A489C
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E27C
	lw      $a0, %lo(object)($a0)
	swc1    $f0, 0x001C($sp)
	lui     $a0, %hi(obj_mario)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(obj_mario)($a0)
	sh      $v0, 0x001A($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0020($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802A489C
	nop
	lui     $t8, %hi(obj_mario)
	lw      $t8, %lo(obj_mario)($t8)
	li      $at, 0x43200000
	mtc1    $at, $f4
	lwc1    $f18, 0x00A4($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	add.s   $f6, $f18, $f4
	lwc1    $f16, 0x00A4($t7)
	c.lt.s  $f16, $f6
	nop
	bc1f    .L802A489C
	nop
	lwc1    $f8, 0x0024($sp)
	add.s   $f10, $f16, $f8
	c.lt.s  $f18, $f10
	nop
	bc1f    .L802A489C
	nop
	la.u    $t9, player_data
	la.l    $t9, player_data
	lw      $t0, 0x000C($t9)
	andi    $t1, $t0, 0x0800
	bnez    $t1, .L802A489C
	nop
	jal     pl_demo_802575A8
	nop
	beqz    $v0, .L802A489C
	nop
	b       .L802A48AC
	li      $v0, 0x0001
.L802A489C:
	b       .L802A48AC
	move    $v0, $0
	b       .L802A48AC
	nop
.L802A48AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A48BC
obj_lib_802A48BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lwc1    $f12, 0x0018($sp)
	lwc1    $f14, 0x001C($sp)
	jal     obj_lib_802A47A0
	li      $a2, 0x1000
	b       .L802A48EC
	nop
	b       .L802A48EC
	nop
.L802A48EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_lib_802A48FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sh      $t6, 0x0090($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0092($t8)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x0092($t8)
	lw      $t1, 0x0018($sp)
	andi    $t2, $t1, 0x0010
	bnez    $t2, .L802A4948
	nop
	jal     pl_demo_80257640
	move    $a0, $0
.L802A4948:
	b       .L802A4950
	nop
.L802A4950:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A4960
obj_lib_802A4960:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	sw      $0, 0x001C($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lhu     $t8, 0x0092($t7)
	sltiu   $at, $t8, 0x0005
	beqz    $at, .L802A4BB0
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(obj_lib_80337834)
	addu    $at, $at, $t8
	lw      $t8, %lo(obj_lib_80337834)($at)
	jr      $t8
	nop
.globl L802A49B4
L802A49B4:
	jal     pl_demo_802575A8
	nop
	bnez    $v0, .L802A49E0
	nop
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	lw      $t0, 0x000C($t9)
	bne     $t0, $at, .L802A4A20
	nop
.L802A49E0:
	lui     $t1, %hi(object_8033D480)
	lw      $t1, %lo(object_8033D480)($t1)
	lui     $at, %hi(object_8033D480)
	ori     $t2, $t1, 0x0002
	sw      $t2, %lo(object_8033D480)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0074($t3)
	ori     $t5, $t4, 0x0020
	sh      $t5, 0x0074($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0092($t6)
	addiu   $t8, $t7, 0x0001
	b       L802A4A28
	sh      $t8, 0x0092($t6)
.L802A4A20:
	b       .L802A4BC4
	nop
.globl L802A4A28
L802A4A28:
	jal     pl_demo_80257640
	lw      $a0, 0x0020($sp)
	li      $at, 0x0002
	bne     $v0, $at, .L802A4A50
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0092($t9)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x0092($t9)
.L802A4A50:
	b       .L802A4BC4
	nop
.globl L802A4A58
L802A4A58:
	lw      $t2, 0x0024($sp)
	andi    $t4, $t2, 0x0004
	beqz    $t4, .L802A4A78
	nop
	jal     message_802D8D48
	lw      $a0, 0x0028($sp)
	b       .L802A4A90
	nop
.L802A4A78:
	lw      $t5, 0x0024($sp)
	andi    $t3, $t5, 0x0002
	beqz    $t3, .L802A4A90
	nop
	jal     message_802D8C88
	lw      $a0, 0x0028($sp)
.L802A4A90:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0092($t7)
	addiu   $t6, $t8, 0x0001
	sh      $t6, 0x0092($t7)
	b       .L802A4BC4
	nop
.globl L802A4AAC
L802A4AAC:
	lw      $t0, 0x0024($sp)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L802A4AE4
	nop
	lui     $t9, %hi(message_803314A0)
	lw      $t9, %lo(message_803314A0)($t9)
	beqz    $t9, .L802A4ADC
	nop
	lui     $a1, %hi(message_803314A0)
	lw      $a1, %lo(message_803314A0)($a1)
	jal     obj_lib_802A48FC
	lw      $a0, 0x0024($sp)
.L802A4ADC:
	b       .L802A4B28
	nop
.L802A4AE4:
	lw      $t2, 0x0024($sp)
	andi    $t4, $t2, 0x0002
	beqz    $t4, .L802A4B1C
	nop
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L802A4B14
	nop
	lw      $a0, 0x0024($sp)
	jal     obj_lib_802A48FC
	li      $a1, 0x0003
.L802A4B14:
	b       .L802A4B28
	nop
.L802A4B1C:
	lw      $a0, 0x0024($sp)
	jal     obj_lib_802A48FC
	li      $a1, 0x0003
.L802A4B28:
	b       .L802A4BC4
	nop
.globl L802A4B30
L802A4B30:
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	lw      $t3, 0x000C($t5)
	bne     $t3, $at, .L802A4B5C
	nop
	lw      $t8, 0x0024($sp)
	andi    $t6, $t8, 0x0010
	beqz    $t6, .L802A4BA8
	nop
.L802A4B5C:
	lui     $t7, %hi(object_8033D480)
	lw      $t7, %lo(object_8033D480)($t7)
	li      $at, -0x0003
	and     $t0, $t7, $at
	lui     $at, %hi(object_8033D480)
	sw      $t0, %lo(object_8033D480)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0021
	lh      $t9, 0x0074($t1)
	and     $t2, $t9, $at
	sh      $t2, 0x0074($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x0090($t4)
	sw      $t5, 0x001C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0092($t3)
.L802A4BA8:
	b       .L802A4BC4
	nop
.L802A4BB0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0092($t8)
	b       .L802A4BC4
	nop
.L802A4BC4:
	b       .L802A4BD4
	lw      $v0, 0x001C($sp)
	b       .L802A4BD4
	nop
.L802A4BD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A4BE4
obj_lib_802A4BE4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $0, 0x002C($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0028($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $s0, 0x0092($t7)
	beqz    $s0, .L802A4C50
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802A4CD0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802A4D90
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802A4E34
	nop
	b       .L802A4EE0
	nop
.L802A4C50:
	jal     pl_demo_802575A8
	nop
	bnez    $v0, .L802A4C7C
	nop
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	lw      $t9, 0x000C($t8)
	bne     $t9, $at, .L802A4CC8
	nop
.L802A4C7C:
	lui     $t0, %hi(object_8033D480)
	lw      $t0, %lo(object_8033D480)($t0)
	lui     $at, %hi(object_8033D480)
	ori     $t1, $t0, 0x0002
	sw      $t1, %lo(object_8033D480)($at)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0074($t2)
	ori     $t4, $t3, 0x0020
	sh      $t4, 0x0074($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x0092($t5)
	addiu   $t7, $t6, 0x0001
	sh      $t7, 0x0092($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       .L802A4CD0
	sh      $0, 0x0090($t8)
.L802A4CC8:
	b       .L802A4EE0
	nop
.L802A4CD0:
	lw      $t9, 0x0034($sp)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802A4D30
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E694
	lw      $a0, %lo(object)($a0)
	sll     $s1, $v0, 16
	sra     $t1, $s1, 16
	move    $s1, $t1
	move    $a0, $s1
	jal     obj_lib_8029E5EC
	li      $a1, 0x0800
	sw      $v0, 0x0028($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0090($t3)
	slti    $at, $t4, 0x0021
	bnez    $at, .L802A4D30
	nop
	li      $t2, 0x0001
	sw      $t2, 0x0028($sp)
.L802A4D30:
	jal     pl_demo_80257640
	lw      $a0, 0x0030($sp)
	li      $at, 0x0002
	bne     $v0, $at, .L802A4D74
	nop
	lw      $t6, 0x0028($sp)
	beqz    $t6, .L802A4D74
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0090($t7)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t8, 0x0092($t5)
	addiu   $t9, $t8, 0x0001
	b       .L802A4D88
	sh      $t9, 0x0092($t5)
.L802A4D74:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0090($t0)
	addiu   $t3, $t1, 0x0001
	sh      $t3, 0x0090($t0)
.L802A4D88:
	b       .L802A4EE0
	nop
.L802A4D90:
	lw      $t4, 0x0038($sp)
	li      $at, 0x00A1
	bne     $t4, $at, .L802A4DE8
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8028FFC8
	lw      $a0, 0x0038($sp)
	sll     $s1, $v0, 16
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sra     $t2, $s1, 16
	move    $s1, $t2
	beqz    $s1, .L802A4DE0
	sh      $s1, 0x0090($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0092($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x0092($t7)
.L802A4DE0:
	b       .L802A4E2C
	nop
.L802A4DE8:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	lw      $a0, 0x0038($sp)
	jal     camera_8028FF04
	lw      $a2, 0x003C($sp)
	sll     $s1, $v0, 16
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sra     $t5, $s1, 16
	move    $s1, $t5
	beqz    $s1, .L802A4E2C
	sh      $s1, 0x0090($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t0, 0x0092($t3)
	addiu   $t4, $t0, 0x0001
	sh      $t4, 0x0092($t3)
.L802A4E2C:
	b       .L802A4EE0
	nop
.L802A4E34:
	lw      $t2, 0x0034($sp)
	andi    $t6, $t2, 0x0010
	beqz    $t6, .L802A4E64
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0090($t8)
	sw      $t9, 0x002C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       .L802A4ED8
	sh      $0, 0x0092($t7)
.L802A4E64:
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	lw      $t1, 0x000C($t5)
	beq     $t1, $at, .L802A4ED0
	nop
	lui     $t0, %hi(object_8033D480)
	lw      $t0, %lo(object_8033D480)($t0)
	li      $at, -0x0003
	and     $t4, $t0, $at
	lui     $at, %hi(object_8033D480)
	sw      $t4, %lo(object_8033D480)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, -0x0021
	lh      $t2, 0x0074($t3)
	and     $t6, $t2, $at
	sh      $t6, 0x0074($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0090($t8)
	sw      $t9, 0x002C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       .L802A4ED8
	sh      $0, 0x0092($t7)
.L802A4ED0:
	jal     pl_demo_80257640
	move    $a0, $0
.L802A4ED8:
	b       .L802A4EE0
	nop
.L802A4EE0:
	b       .L802A4EF0
	lw      $v0, 0x002C($sp)
	b       .L802A4EF0
	nop
.L802A4EF0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl obj_lib_802A4F04
obj_lib_802A4F04:
	andi    $a0, $a0, 0xFFFF
	lui     $t6, %hi(shape_table)
	lw      $t6, %lo(shape_table)($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sll     $t7, $a0, 2
	addu    $t8, $t6, $t7
	lw      $t9, 0x0000($t8)
	lw      $t1, 0x0014($t0)
	bne     $t9, $t1, .L802A4F40
	nop
	jr      $ra
	li      $v0, 0x0001
	b       .L802A4F48
	nop
.L802A4F40:
	jr      $ra
	move    $v0, $0
.L802A4F48:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A4F58
obj_lib_802A4F58:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t7, $sp, 0x001C
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0000($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	addiu   $t9, $sp, 0x001C
	lwc1    $f6, 0x00A4($t8)
	swc1    $f6, 0x0004($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $t1, $sp, 0x001C
	lwc1    $f8, 0x00A8($t0)
	swc1    $f8, 0x0008($t1)
	addiu   $t2, $sp, 0x001C
	lwc1    $f12, 0x0000($t2)
	lwc1    $f14, 0x0004($t2)
	lw      $a2, 0x0008($t2)
	jal     map_80381900
	addiu   $a3, $sp, 0x0034
	lw      $t3, 0x0034($sp)
	beqz    $t3, .L802A501C
	nop
	lw      $t4, 0x0034($sp)
	addiu   $t5, $sp, 0x0028
	lwc1    $f10, 0x001C($t4)
	swc1    $f10, 0x0000($t5)
	lw      $t6, 0x0034($sp)
	addiu   $t7, $sp, 0x0028
	lwc1    $f16, 0x0020($t6)
	swc1    $f16, 0x0004($t7)
	lw      $t8, 0x0034($sp)
	addiu   $t9, $sp, 0x0028
	lwc1    $f18, 0x0024($t8)
	swc1    $f18, 0x0008($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $a1, $sp, 0x0028
	addiu   $a2, $sp, 0x001C
	addiu   $a0, $t0, 0x021C
	jal     mtxf_stand
	lw      $a3, 0x00D4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	addiu   $t2, $t1, 0x021C
	sw      $t2, 0x0050($t1)
.L802A501C:
	b       .L802A5024
	nop
.L802A5024:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

obj_lib_802A5034:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	mtc1    $a0, $f6
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	cvt.s.w $f8, $f6
	lwc1    $f4, 0x00A0($t6)
	c.lt.s  $f4, $f8
	nop
	bc1t    .L802A5094
	nop
	mtc1    $a1, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f16, $f4
	nop
	bc1f    .L802A509C
	nop
.L802A5094:
	jr      $ra
	move    $v0, $0
.L802A509C:
	mtc1    $a2, $f6
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	cvt.s.w $f8, $f6
	lwc1    $f18, 0x00A8($t7)
	c.lt.s  $f18, $f8
	nop
	bc1t    .L802A50DC
	nop
	mtc1    $a3, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802A50E4
	nop
.L802A50DC:
	jr      $ra
	move    $v0, $0
.L802A50E4:
	jr      $ra
	li      $v0, 0x0001
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A50FC
obj_lib_802A50FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x00A0($t6)
	lw      $a2, 0x00A4($t6)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t6)
	b       .L802A512C
	nop
.L802A512C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A513C
obj_lib_802A513C:
	addiu   $sp, $sp, -0x0010
	sw      $0, 0x0004($sp)
	lh      $t6, 0x0076($a0)
	sw      $t6, 0x000C($sp)
	lw      $t7, 0x000C($sp)
	beqz    $t7, .L802A5194
	nop
	lw      $t8, 0x0078($a0)
	sw      $t8, 0x0008($sp)
	lui     $t0, %hi(obj_mario)
	lw      $t0, %lo(obj_mario)($t0)
	lw      $t9, 0x0008($sp)
	beq     $t9, $t0, .L802A5194
	nop
	lw      $t1, 0x0008($sp)
	li.u    $at, 0x0080C001
	li.l    $at, 0x0080C001
	lw      $t2, 0x0134($t1)
	or      $t3, $t2, $at
	sw      $t3, 0x0134($t1)
	li      $t4, 0x0001
	sw      $t4, 0x0004($sp)
.L802A5194:
	b       .L802A51A4
	lw      $v0, 0x0004($sp)
	b       .L802A51A4
	nop
.L802A51A4:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl obj_lib_802A51AC
obj_lib_802A51AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802A51E4
	nop
	andi    $t9, $t7, 0x4000
	beqz    $t9, .L802A51E4
	nop
	li      $t0, 0x0001
	sw      $t0, 0x001C($sp)
.L802A51E4:
	jal     obj_lib_802A3754
	nop
	beqz    $v0, .L802A51FC
	nop
	li      $t1, 0x0001
	sw      $t1, 0x001C($sp)
.L802A51FC:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       .L802A5218
	lw      $v0, 0x001C($sp)
	b       .L802A5218
	nop
.L802A5218:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_lib_802A5228
obj_lib_802A5228:
	lw      $t6, 0x0188($a1)
	sw      $t6, 0x0188($a0)
	lw      $t7, 0x0144($a1)
	sw      $t7, 0x0144($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A5248
obj_lib_802A5248:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     obj_lib_8029F4B4
	lw      $a0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sh      $t6, 0x0040($t7)
	b       .L802A5278
	nop
.L802A5278:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A5288
obj_lib_802A5288:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     obj_lib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     obj_lib_8029FF04
	nop
	b       .L802A52B4
	nop
	b       .L802A52B4
	nop
.L802A52B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A52C4
obj_lib_802A52C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     obj_lib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     obj_lib_8029FEA4
	nop
	b       .L802A52E8
	nop
.L802A52E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A52F8
obj_lib_802A52F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x0800
	beqz    $t8, .L802A5338
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0088($t0)
	jal     obj_lib_802A05B4
	nop
	b       .L802A5348
	li      $v0, 0x0001
.L802A5338:
	b       .L802A5348
	move    $v0, $0
	b       .L802A5348
	nop
.L802A5348:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A5358
obj_lib_802A5358:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x000C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802A538C
	nop
	lui     $at, %hi(obj_lib_80361270)
	sw      $0, %lo(obj_lib_80361270)($at)
.L802A538C:
	lui     $t7, %hi(obj_lib_80361270)
	lw      $t7, %lo(obj_lib_80361270)($t7)
	bnez    $t7, .L802A53D4
	nop
	lui     $t8, %hi(cont_1)
	lw      $t8, %lo(cont_1)($t8)
	li      $at, 0x42200000
	mtc1    $at, $f10
	lwc1    $f8, 0x000C($t8)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802A53D4
	nop
	li      $t9, 0x0001
	lui     $at, %hi(obj_lib_80361270)
	sw      $t9, %lo(obj_lib_80361270)($at)
	li      $t0, 0x0001
	sw      $t0, 0x0004($sp)
.L802A53D4:
	lui     $t1, %hi(cont_1)
	lw      $t1, %lo(cont_1)($t1)
	lhu     $t2, 0x0012($t1)
	andi    $t3, $t2, 0x8000
	beqz    $t3, .L802A53F4
	nop
	li      $t4, 0x0001
	sw      $t4, 0x0004($sp)
.L802A53F4:
	b       .L802A5404
	lw      $v0, 0x0004($sp)
	b       .L802A5404
	nop
.L802A5404:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_lib_802A540C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     obj_lib_802A0008
	lw      $a0, 0x0018($sp)
	bnez    $v0, .L802A5440
	nop
	jal     obj_lib_802A0008
	lw      $a0, 0x001C($sp)
	beqz    $v0, .L802A5448
	nop
.L802A5440:
	jal     obj_sfx_802CA1E0
	lw      $a0, 0x0020($sp)
.L802A5448:
	b       .L802A5450
	nop
.L802A5450:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_lib_802A5460:
	lui     $t6, %hi(object_8033D480)
	lw      $t6, %lo(object_8033D480)($t6)
	lui     $at, %hi(object_8033D480)
	ori     $t7, $t6, 0x000A
	sw      $t7, %lo(object_8033D480)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0074($t8)
	ori     $t0, $t9, 0x0020
	sh      $t0, 0x0074($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A5498
obj_lib_802A5498:
	lui     $t6, %hi(object_8033D480)
	lw      $t6, %lo(object_8033D480)($t6)
	li      $at, -0x000B
	and     $t7, $t6, $at
	lui     $at, %hi(object_8033D480)
	sw      $t7, %lo(object_8033D480)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0021
	lh      $t9, 0x0074($t8)
	and     $t0, $t9, $at
	sh      $t0, 0x0074($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A54D8
obj_lib_802A54D8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L802A550C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
	jr      $ra
	li      $v0, 0x0001
	b       .L802A5514
	nop
.L802A550C:
	jr      $ra
	move    $v0, $0
.L802A5514:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_lib_802A5524
obj_lib_802A5524:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0198($t6)
	slti    $at, $t7, 0x0005
	bnez    $at, .L802A5570
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000830
	la.l    $a2, o_13000830
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0076
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0198($t8)
	addiu   $t0, $t9, -0x0005
	sw      $t0, 0x0198($t8)
.L802A5570:
	b       .L802A5578
	nop
.L802A5578:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_lib_802A5588
obj_lib_802A5588:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A4($t6)
	swc1    $f4, 0x001C($sp)
	la.u    $t7, object_8033D280
	la.l    $t7, object_8033D280
	lh      $t8, 0x0050($t7)
	lwc1    $f6, 0x002C($sp)
	lui     $t9, %hi(object)
	mtc1    $t8, $f8
	lw      $t9, %lo(object)($t9)
	cvt.s.w $f10, $f8
	lwc1    $f18, 0x00A4($t9)
	add.s   $f16, $f6, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A4($t9)
	lwc1    $f12, 0x0020($sp)
	lwc1    $f14, 0x0024($sp)
	jal     object_b_802F2B88
	lw      $a2, 0x0028($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x001C($sp)
	swc1    $f8, 0x00A4($t0)
	b       .L802A5608
	nop
.L802A5608:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

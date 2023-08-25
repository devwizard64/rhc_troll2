.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

obj_list_802C97D0:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0000($sp)
	sw      $a0, 0x0000($a0)
	sw      $a0, 0x0004($a0)
	sw      $a2, 0x0000($a1)
	lw      $t6, 0x0018($sp)
	sw      $0, 0x0004($sp)
	addiu   $t7, $t6, -0x0001
	blez    $t7, .L802C982C
	nop
.L802C97F8:
	lw      $t8, 0x0000($sp)
	addu    $t9, $t8, $a3
	sw      $t9, 0x0000($sp)
	lw      $t0, 0x0000($sp)
	sw      $t0, 0x0000($a2)
	lw      $a2, 0x0000($sp)
	lw      $t1, 0x0004($sp)
	lw      $t3, 0x0018($sp)
	addiu   $t2, $t1, 0x0001
	addiu   $t4, $t3, -0x0001
	slt     $at, $t2, $t4
	bnez    $at, .L802C97F8
	sw      $t2, 0x0004($sp)
.L802C982C:
	sw      $0, 0x0000($a2)
	b       .L802C9838
	nop
.L802C9838:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_list_802C9840:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0000($a1)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	beqz    $t7, .L802C988C
	nop
	lw      $t8, 0x0004($sp)
	lw      $t9, 0x0000($t8)
	sw      $t9, 0x0000($a1)
	lw      $t0, 0x0004($a0)
	lw      $t1, 0x0004($sp)
	sw      $t0, 0x0004($t1)
	lw      $t2, 0x0004($sp)
	sw      $a0, 0x0000($t2)
	lw      $t3, 0x0004($sp)
	lw      $t4, 0x0004($a0)
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0004($sp)
	sw      $t5, 0x0004($a0)
.L802C988C:
	b       .L802C989C
	lw      $v0, 0x0004($sp)
	b       .L802C989C
	nop
.L802C989C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_list_802C98A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x0060($t6)
	beqz    $t7, .L802C9910
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t0, 0x0024($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x0060($t0)
	lw      $t1, 0x0020($sp)
	lw      $t3, 0x001C($sp)
	lw      $t2, 0x0064($t1)
	sw      $t2, 0x0064($t3)
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x001C($sp)
	sw      $t4, 0x0060($t5)
	lw      $t7, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	lw      $t8, 0x0064($t7)
	sw      $t6, 0x0060($t8)
	lw      $t9, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	b       .L802C9918
	sw      $t9, 0x0064($t0)
.L802C9910:
	b       .L802C9940
	move    $v0, $0
.L802C9918:
	jal     shape_8037C0BC
	lw      $a0, 0x001C($sp)
	la.u    $a0, s_script_8038BD88
	la.l    $a0, s_script_8038BD88
	jal     shape_8037C044
	lw      $a1, 0x001C($sp)
	b       .L802C9940
	lw      $v0, 0x001C($sp)
	b       .L802C9940
	nop
.L802C9940:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_list_802C9950:
	lw      $t6, 0x0004($a1)
	lw      $t7, 0x0000($a1)
	sw      $t6, 0x0004($t7)
	lw      $t8, 0x0000($a1)
	lw      $t9, 0x0004($a1)
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0000($a0)
	sw      $t0, 0x0000($a1)
	sw      $a1, 0x0000($a0)
	jr      $ra
	nop
	jr      $ra
	nop

obj_list_802C9984:
	lw      $t6, 0x0064($a1)
	lw      $t7, 0x0060($a1)
	sw      $t6, 0x0064($t7)
	lw      $t8, 0x0060($a1)
	lw      $t9, 0x0064($a1)
	sw      $t8, 0x0060($t9)
	lw      $t0, 0x0060($a0)
	sw      $t0, 0x0060($a1)
	sw      $a1, 0x0060($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_list_802C99B8
obj_list_802C99B8:
	addiu   $sp, $sp, -0x0010
	li      $t6, 0x00F0
	sw      $t6, 0x0008($sp)
	la.u    $t7, object_data
	la.l    $t7, object_data
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	lui     $at, %hi(obj_list_free+0x60)
	sw      $t8, %lo(obj_list_free+0x60)($at)
	lw      $t9, 0x0008($sp)
	sw      $0, 0x000C($sp)
	addiu   $t0, $t9, -0x0001
	blez    $t0, .L802C9A24
	nop
.L802C99F0:
	lw      $t1, 0x0004($sp)
	addiu   $t2, $t1, 0x0260
	sw      $t2, 0x0060($t1)
	lw      $t3, 0x0004($sp)
	addiu   $t4, $t3, 0x0260
	sw      $t4, 0x0004($sp)
	lw      $t5, 0x000C($sp)
	lw      $t7, 0x0008($sp)
	addiu   $t6, $t5, 0x0001
	addiu   $t8, $t7, -0x0001
	slt     $at, $t6, $t8
	bnez    $at, .L802C99F0
	sw      $t6, 0x000C($sp)
.L802C9A24:
	lw      $t9, 0x0004($sp)
	sw      $0, 0x0060($t9)
	b       .L802C9A34
	nop
.L802C9A34:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl obj_list_802C9A3C
obj_list_802C9A3C:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
.L802C9A44:
	lw      $t6, 0x0004($sp)
	sll     $t7, $t6, 2
	sll     $t9, $t6, 2
	subu    $t9, $t9, $t6
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	sll     $t9, $t9, 2
	addu    $t9, $t9, $t6
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	sll     $t9, $t9, 3
	addu    $t0, $a0, $t9
	addu    $t8, $t7, $a0
	sw      $t8, 0x0060($t0)
	lw      $t1, 0x0004($sp)
	sll     $t2, $t1, 2
	sll     $t4, $t1, 2
	subu    $t4, $t4, $t1
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	sll     $t4, $t4, 2
	addu    $t4, $t4, $t1
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 3
	sll     $t4, $t4, 3
	addu    $t5, $a0, $t4
	addu    $t3, $t2, $a0
	sw      $t3, 0x0064($t5)
	lw      $t7, 0x0004($sp)
	addiu   $t6, $t7, 0x0001
	slti    $at, $t6, 0x000D
	bnez    $at, .L802C9A44
	sw      $t6, 0x0004($sp)
	b       .L802C9AD0
	nop
.L802C9AD0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_list_802C9AD8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0010($t7)
	beqz    $t8, .L802C9B0C
	sw      $t8, 0x0024($sp)
	jal     obj_list_802C9AD8
	lw      $a0, 0x0024($sp)
	b       .L802C9B14
	nop
.L802C9B0C:
	jal     obj_list_802CA028
	lw      $a0, 0x0028($sp)
.L802C9B14:
	lw      $t9, 0x0028($sp)
	lw      $t1, 0x001C($sp)
	lw      $t0, 0x0008($t9)
	bne     $t0, $t1, .L802C9B50
	sw      $t0, 0x0020($sp)
.L802C9B28:
	jal     obj_list_802C9AD8
	lw      $a0, 0x0020($sp)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0008($t2)
	sw      $t3, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	lw      $t6, 0x001C($sp)
	lw      $t5, 0x0008($t4)
	beq     $t5, $t6, .L802C9B28
	sw      $t5, 0x0020($sp)
.L802C9B50:
	b       .L802C9B58
	nop
.L802C9B58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_list_802C9B68
obj_list_802C9B68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sh      $0, 0x0074($t6)
	lw      $t7, 0x0018($sp)
	sw      $0, 0x006C($t7)
	lw      $t8, 0x0018($sp)
	sw      $0, 0x0050($t8)
	lw      $a0, 0x0018($sp)
	jal     Na_g_80321584
	addiu   $a0, $a0, 0x0054
	jal     shape_8037C0BC
	lw      $a0, 0x0018($sp)
	la.u    $a0, s_script_8038BD88
	la.l    $a0, s_script_8038BD88
	jal     shape_8037C044
	lw      $a1, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	li      $at, -0x0005
	lh      $t0, 0x0002($t9)
	and     $t1, $t0, $at
	sh      $t1, 0x0002($t9)
	lw      $t2, 0x0018($sp)
	li      $at, -0x0002
	lh      $t3, 0x0002($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0002($t2)
	la.u    $a0, obj_list_free
	la.l    $a0, obj_list_free
	jal     obj_list_802C9984
	lw      $a1, 0x0018($sp)
	b       .L802C9BF0
	nop
.L802C9BF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_list_802C9C00:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $a1, obj_list_free
	la.l    $a1, obj_list_free
	jal     obj_list_802C98A4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	bnez    $t6, .L802C9C84
	nop
	jal     obj_lib_8029FB1C
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	bnez    $t7, .L802C9C54
	nop
.L802C9C44:
	b       .L802C9C44
	nop
	b       .L802C9C84
	nop
.L802C9C54:
	jal     obj_list_802C9B68
	lw      $a0, 0x001C($sp)
	la.u    $a1, obj_list_free
	la.l    $a1, obj_list_free
	jal     obj_list_802C98A4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0020($sp)
	bne     $t8, $t9, .L802C9C84
	nop
.L802C9C84:
	lw      $t1, 0x0020($sp)
	li      $t0, 0x0101
	sh      $t0, 0x0074($t1)
	lw      $t2, 0x0020($sp)
	sw      $t2, 0x0068($t2)
	lw      $t3, 0x0020($sp)
	sw      $0, 0x006C($t3)
	lw      $t4, 0x0020($sp)
	sw      $0, 0x0070($t4)
	lw      $t5, 0x0020($sp)
	sh      $0, 0x0076($t5)
	sw      $0, 0x0024($sp)
.L802C9CB4:
	lw      $t7, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	sw      $0, 0x0088($t9)
	lw      $t0, 0x0024($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0050
	bnez    $at, .L802C9CB4
	sw      $t1, 0x0024($sp)
	lw      $t2, 0x0020($sp)
	sw      $0, 0x01C8($t2)
	lw      $t3, 0x0020($sp)
	sw      $0, 0x01D0($t3)
	lw      $t4, 0x0020($sp)
	sh      $0, 0x01F4($t4)
	li      $at, 0x42480000
	mtc1    $at, $f4
	lw      $t5, 0x0020($sp)
	swc1    $f4, 0x01F8($t5)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lw      $t7, 0x0020($sp)
	swc1    $f6, 0x01FC($t7)
	mtc1    $0, $f8
	lw      $t6, 0x0020($sp)
	swc1    $f8, 0x0200($t6)
	mtc1    $0, $f10
	lw      $t8, 0x0020($sp)
	swc1    $f10, 0x0204($t8)
	mtc1    $0, $f16
	lw      $t9, 0x0020($sp)
	swc1    $f16, 0x0208($t9)
	lw      $t0, 0x0020($sp)
	sw      $0, 0x0210($t0)
	lw      $t1, 0x0020($sp)
	sw      $0, 0x0214($t1)
	lw      $t2, 0x0020($sp)
	sw      $0, 0x0218($t2)
	lw      $t4, 0x0020($sp)
	li      $t3, -0x0001
	sw      $t3, 0x009C($t4)
	lw      $t5, 0x0020($sp)
	sw      $0, 0x0180($t5)
	lw      $t6, 0x0020($sp)
	li      $t7, 0x0800
	sw      $t7, 0x0184($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f18
	lw      $t8, 0x0020($sp)
	swc1    $f18, 0x0194($t8)
	lui     $t9, %hi(stage_index)
	lh      $t9, %lo(stage_index)($t9)
	li      $at, 0x000E
	bne     $t9, $at, .L802C9DA8
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f4
	lw      $t0, 0x0020($sp)
	b       .L802C9DB8
	swc1    $f4, 0x019C($t0)
.L802C9DA8:
	li      $at, 0x457A0000
	mtc1    $at, $f6
	lw      $t1, 0x0020($sp)
	swc1    $f6, 0x019C($t1)
.L802C9DB8:
	lw      $a0, 0x0020($sp)
	jal     mtxf_identity
	addiu   $a0, $a0, 0x021C
	lw      $t2, 0x0020($sp)
	sh      $0, 0x01F6($t2)
	lw      $t3, 0x0020($sp)
	sw      $0, 0x025C($t3)
	lui     $at, %hi(obj_list_80337E00)
	lwc1    $f8, %lo(obj_list_80337E00)($at)
	lw      $t4, 0x0020($sp)
	swc1    $f8, 0x015C($t4)
	lw      $t7, 0x0020($sp)
	li      $t5, -0x0001
	sw      $t5, 0x01A0($t7)
	lw      $t6, 0x0020($sp)
	li      $at, -0x0011
	lh      $t8, 0x0002($t6)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t6)
	lui     $at, %hi(obj_list_80337E04)
	lwc1    $f10, %lo(obj_list_80337E04)($at)
	lw      $t0, 0x0020($sp)
	swc1    $f10, 0x0020($t0)
	lui     $at, %hi(obj_list_80337E08)
	lwc1    $f16, %lo(obj_list_80337E08)($at)
	lw      $t1, 0x0020($sp)
	swc1    $f16, 0x0024($t1)
	lui     $at, %hi(obj_list_80337E0C)
	lwc1    $f18, %lo(obj_list_80337E0C)($at)
	lw      $t2, 0x0020($sp)
	swc1    $f18, 0x0028($t2)
	lw      $t3, 0x0020($sp)
	sw      $0, 0x0050($t3)
	b       .L802C9E4C
	lw      $v0, 0x0020($sp)
	b       .L802C9E4C
	nop
.L802C9E4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

obj_list_802C9E5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     map_80381900
	lw      $a2, 0x00A8($t6)
	lw      $t7, 0x0020($sp)
	swc1    $f0, 0x00E8($t7)
	lw      $t8, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x00E8($t8)
	lwc1    $f10, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802C9EEC
	nop
	li      $at, 0x41200000
	mtc1    $at, $f16
	nop
	sub.s   $f18, $f4, $f16
	c.lt.s  $f18, $f10
	nop
	bc1f    .L802C9EEC
	nop
	lw      $t9, 0x0020($sp)
	lwc1    $f6, 0x00E8($t9)
	swc1    $f6, 0x00A4($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x00EC($t0)
	ori     $t2, $t1, 0x0002
	sw      $t2, 0x00EC($t0)
.L802C9EEC:
	b       .L802C9EF4
	nop
.L802C9EF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_list_802C9F04
obj_list_802C9F04:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	sw      $t6, 0x0028($sp)
	lw      $t7, 0x0038($sp)
	lw      $t8, 0x0000($t7)
	srl     $t9, $t8, 24
	bnez    $t9, .L802C9F48
	nop
	lw      $t0, 0x0038($sp)
	lw      $t1, 0x0000($t0)
	srl     $t2, $t1, 16
	andi    $t3, $t2, 0xFFFF
	b       .L802C9F50
	sw      $t3, 0x0034($sp)
.L802C9F48:
	li      $t4, 0x0008
	sw      $t4, 0x0034($sp)
.L802C9F50:
	lw      $t5, 0x0034($sp)
	lui     $t7, %hi(obj_list)
	lw      $t7, %lo(obj_list)($t7)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $t8, $t6, $t7
	sw      $t8, 0x002C($sp)
	jal     obj_list_802C9C00
	lw      $a0, 0x002C($sp)
	sw      $v0, 0x0030($sp)
	lw      $t9, 0x0038($sp)
	lw      $t0, 0x0030($sp)
	sw      $t9, 0x01CC($t0)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0030($sp)
	sw      $t1, 0x020C($t2)
	lw      $t3, 0x0034($sp)
	li      $at, 0x000C
	bne     $t3, $at, .L802C9FBC
	nop
	lw      $t4, 0x0030($sp)
	lh      $t5, 0x0074($t4)
	ori     $t6, $t5, 0x0010
	sh      $t6, 0x0074($t4)
.L802C9FBC:
	lw      $s0, 0x0034($sp)
	li      $at, 0x0004
	beq     $s0, $at, .L802C9FEC
	nop
	li      $at, 0x0005
	beq     $s0, $at, .L802C9FEC
	nop
	li      $at, 0x000A
	beq     $s0, $at, .L802C9FEC
	nop
	b       .L802C9FFC
	nop
.L802C9FEC:
	jal     obj_list_802C9E5C
	lw      $a0, 0x0030($sp)
	b       .L802CA004
	nop
.L802C9FFC:
	b       .L802CA004
	nop
.L802CA004:
	b       .L802CA014
	lw      $v0, 0x0030($sp)
	b       .L802CA014
	nop
.L802CA014:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl obj_list_802CA028
obj_list_802CA028:
	sh      $0, 0x0074($a0)
	jr      $ra
	nop
	jr      $ra
	nop

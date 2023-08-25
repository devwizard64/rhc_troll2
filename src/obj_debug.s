.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

_802CA370:
	jr      $ra
	nop
	jr      $ra
	nop

_802CA380:
	jr      $ra
	nop
	jr      $ra
	nop

_802CA390:
	jr      $ra
	nop
	jr      $ra
	nop

_802CA3A0:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_debug_802CA3B0
obj_debug_802CA3B0:
	addiu   $sp, $sp, -0x0008
	li      $t6, 0x0000
	li      $t7, 0x0000
	sw      $t7, 0x0004($sp)
	sw      $t6, 0x0000($sp)
	lw      $v0, 0x0000($sp)
	b       .L802CA3D8
	lw      $v1, 0x0004($sp)
	b       .L802CA3D8
	nop
.L802CA3D8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_debug_802CA3E0
obj_debug_802CA3E0:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	sw      $a1, 0x000C($sp)
	li      $t6, 0x0000
	li      $t7, 0x0000
	sw      $t7, 0x0004($sp)
	sw      $t6, 0x0000($sp)
	lw      $v0, 0x0000($sp)
	b       .L802CA410
	lw      $v1, 0x0004($sp)
	b       .L802CA410
	nop
.L802CA410:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_debug_802CA418:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sh      $0, 0x0000($a0)
	sh      $a1, 0x0002($a0)
	sh      $a2, 0x0004($a0)
	sh      $a3, 0x0006($a0)
	lh      $t6, 0x0012($sp)
	sh      $t6, 0x0008($a0)
	lh      $t7, 0x0016($sp)
	sh      $t7, 0x000A($a0)
	jr      $ra
	nop
	jr      $ra
	nop

obj_debug_802CA460:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0000($t6)
	bnez    $t7, .L802CA504
	nop
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x0004($t8)
	lh      $t0, 0x0006($t8)
	slt     $at, $t9, $t0
	bnez    $at, .L802CA4AC
	nop
	lh      $t1, 0x0008($t8)
	slt     $at, $t1, $t9
	beqz    $at, .L802CA4D8
	nop
.L802CA4AC:
	lw      $t2, 0x0018($sp)
	la.u    $a2, str_obj_debug_dprint_over
	la.l    $a2, str_obj_debug_dprint_over
	lh      $a0, 0x0002($t2)
	jal     dprint
	lh      $a1, 0x0004($t2)
	lw      $t3, 0x0018($sp)
	lh      $t4, 0x0000($t3)
	addiu   $t5, $t4, 0x0001
	b       .L802CA504
	sh      $t5, 0x0000($t3)
.L802CA4D8:
	lw      $t6, 0x0018($sp)
	lw      $a2, 0x001C($sp)
	lw      $a3, 0x0020($sp)
	lh      $a0, 0x0002($t6)
	jal     dprintf
	lh      $a1, 0x0004($t6)
	lw      $t7, 0x0018($sp)
	lh      $t0, 0x0004($t7)
	lh      $t8, 0x000A($t7)
	addu    $t1, $t0, $t8
	sh      $t1, 0x0004($t7)
.L802CA504:
	b       .L802CA50C
	nop
.L802CA50C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_debug_802CA51C
obj_debug_802CA51C:
	addiu   $sp, $sp, -0x0008
	la.u    $t6, obj_debug_80361290
	la.l    $t6, obj_debug_80361290
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lh      $t8, 0x0002($t7)
	addu    $t9, $t8, $a0
	sh      $t9, 0x0002($t7)
	lw      $t0, 0x0004($sp)
	lh      $t2, 0x000A($t0)
	lh      $t1, 0x0004($t0)
	multu   $a1, $t2
	mflo    $t3
	addu    $t4, $t1, $t3
	sh      $t4, 0x0004($t0)
	b       .L802CA560
	nop
.L802CA560:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_debug_802CA568
obj_debug_802CA568:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object_debug_flag)
	lw      $t6, %lo(object_debug_flag)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L802CA5A0
	nop
	la.u    $a0, obj_debug_803612A0
	la.l    $a0, obj_debug_803612A0
	lw      $a1, 0x0018($sp)
	jal     obj_debug_802CA460
	lw      $a2, 0x001C($sp)
.L802CA5A0:
	b       .L802CA5A8
	nop
.L802CA5A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_debug_802CA5B8
obj_debug_802CA5B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object_debug_flag)
	lw      $t6, %lo(object_debug_flag)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L802CA600
	nop
	lui     $t8, %hi(obj_debug_80330E94)
	lb      $t8, %lo(obj_debug_80330E94)($t8)
	bnez    $t8, .L802CA600
	nop
	la.u    $a0, obj_debug_80361290
	la.l    $a0, obj_debug_80361290
	lw      $a1, 0x0018($sp)
	jal     obj_debug_802CA460
	lw      $a2, 0x001C($sp)
.L802CA600:
	b       .L802CA608
	nop
.L802CA608:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_debug_802CA618
obj_debug_802CA618:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(obj_debug_80330E98)
	lb      $t6, %lo(obj_debug_80330E98)($t6)
	beqz    $t6, .L802CA640
	nop
	b       .L802CA670
	nop
.L802CA640:
	lui     $t7, %hi(object_debug_flag)
	lw      $t7, %lo(object_debug_flag)($t7)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L802CA668
	nop
	la.u    $a0, obj_debug_80361290
	la.l    $a0, obj_debug_80361290
	lw      $a1, 0x0018($sp)
	jal     obj_debug_802CA460
	lw      $a2, 0x001C($sp)
.L802CA668:
	b       .L802CA670
	nop
.L802CA670:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_debug_802CA680:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object_debug_flag)
	lw      $t6, %lo(object_debug_flag)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L802CA6B8
	nop
	la.u    $a0, obj_debug_80361290
	la.l    $a0, obj_debug_80361290
	lw      $a1, 0x0018($sp)
	jal     obj_debug_802CA460
	lw      $a2, 0x001C($sp)
.L802CA6B8:
	b       .L802CA6C0
	nop
.L802CA6C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_debug_802CA6D0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(obj_debug_80337FF0)
	ldc1    $f8, %lo(obj_debug_80337FF0)($at)
	lw      $t7, 0x00C8($t6)
	mtc1    $t7, $f4
	nop
	cvt.d.w $f6, $f4
	div.d   $f10, $f6, $f8
	trunc.w.d $f16, $f10
	swc1    $f16, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x00A8($t9)
	lwc1    $f6, 0x00A0($t9)
	trunc.w.s $f4, $f18
	trunc.w.s $f8, $f6
	mfc1    $t1, $f4
	nop
	addiu   $t2, $t1, 0x2000
	mfc1    $t6, $f8
	bgez    $t2, .L802CA73C
	sra     $t3, $t2, 10
	addiu   $at, $t2, 0x03FF
	sra     $t3, $at, 10
.L802CA73C:
	addiu   $t7, $t6, 0x2000
	sll     $t4, $t3, 4
	bgez    $t7, .L802CA754
	sra     $t8, $t7, 10
	addiu   $at, $t7, 0x03FF
	sra     $t8, $at, 10
.L802CA754:
	addu    $t0, $t4, $t8
	sw      $t0, 0x0020($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	addiu   $a3, $sp, 0x002C
	lwc1    $f12, 0x00A0($t1)
	lwc1    $f14, 0x00A4($t1)
	jal     map_80381900
	lw      $a2, 0x00A8($t1)
	swc1    $f0, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f12, 0x00A0($t2)
	jal     map_80381BA0
	lwc1    $f14, 0x00A8($t2)
	swc1    $f0, 0x0024($sp)
	la.u    $a0, str_obj_debug_mapinfo
	la.l    $a0, str_obj_debug_mapinfo
	jal     obj_debug_802CA680
	move    $a1, $0
	la.u    $a0, str_obj_debug_area
	la.l    $a0, str_obj_debug_area
	jal     obj_debug_802CA618
	lw      $a1, 0x0020($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $a0, str_obj_debug_wx
	la.l    $a0, str_obj_debug_wx
	lwc1    $f10, 0x00A0($t3)
	trunc.w.s $f16, $f10
	mfc1    $a1, $f16
	jal     obj_debug_802CA618
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $a0, str_obj_debug_wy
	la.l    $a0, str_obj_debug_wy
	lwc1    $f18, 0x00A4($t5)
	trunc.w.s $f4, $f18
	mfc1    $a1, $f4
	jal     obj_debug_802CA618
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a0, str_obj_debug_wz
	la.l    $a0, str_obj_debug_wz
	lwc1    $f6, 0x00A8($t7)
	trunc.w.s $f8, $f6
	mfc1    $a1, $f8
	jal     obj_debug_802CA618
	nop
	lwc1    $f10, 0x0028($sp)
	la.u    $a0, str_obj_debug_bgy
	la.l    $a0, str_obj_debug_bgy
	trunc.w.s $f16, $f10
	mfc1    $a1, $f16
	jal     obj_debug_802CA618
	nop
	la.u    $a0, str_obj_debug_angy
	la.l    $a0, str_obj_debug_angy
	jal     obj_debug_802CA618
	lw      $a1, 0x001C($sp)
	lw      $t0, 0x002C($sp)
	beqz    $t0, .L802CA894
	nop
	lw      $t1, 0x002C($sp)
	la.u    $a0, str_obj_debug_bgcode
	la.l    $a0, str_obj_debug_bgcode
	jal     obj_debug_802CA618
	lh      $a1, 0x0000($t1)
	lw      $t2, 0x002C($sp)
	la.u    $a0, str_obj_debug_bgstatus
	la.l    $a0, str_obj_debug_bgstatus
	jal     obj_debug_802CA618
	lb      $a1, 0x0004($t2)
	lw      $t3, 0x002C($sp)
	la.u    $a0, str_obj_debug_bgarea
	la.l    $a0, str_obj_debug_bgarea
	jal     obj_debug_802CA618
	lb      $a1, 0x0005($t3)
.L802CA894:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f18, 0x00A4($t9)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L802CA8D0
	nop
	lwc1    $f6, 0x0024($sp)
	la.u    $a0, str_obj_debug_water
	la.l    $a0, str_obj_debug_water
	trunc.w.s $f8, $f6
	mfc1    $a1, $f8
	jal     obj_debug_802CA618
	nop
.L802CA8D0:
	b       .L802CA8D8
	nop
.L802CA8D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

obj_debug_802CA8E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_obj_debug_checkinfo
	la.l    $a0, str_obj_debug_checkinfo
	jal     obj_debug_802CA680
	move    $a1, $0
	b       .L802CA908
	nop
.L802CA908:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_debug_802CA918:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     map_80381F08
	lwc1    $f14, 0x00A8($t6)
	b       .L802CA93C
	nop
.L802CA93C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_debug_802CA94C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_obj_debug_stageinfo
	la.l    $a0, str_obj_debug_stageinfo
	jal     obj_debug_802CA680
	move    $a1, $0
	la.u    $a0, str_obj_debug_stage_param
	lui     $a1, %hi(object_80361258)
	lh      $a1, %lo(object_80361258)($a1)
	jal     obj_debug_802CA680
	la.l    $a0, str_obj_debug_stage_param
	b       .L802CA980
	nop
.L802CA980:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_debug_802CA990:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(obj_debug_80330E9C)
	lb      $t6, %lo(obj_debug_80330E9C)($t6)
	bnez    $t6, .L802CAA54
	nop
	lui     $t7, %hi(obj_debug_80330E9C)
	lb      $t7, %lo(obj_debug_80330E9C)($t7)
	lui     $at, %hi(obj_debug_80330E9C)
	addiu   $t8, $t7, 0x0001
	sb      $t8, %lo(obj_debug_80330E9C)($at)
	sw      $0, 0x001C($sp)
.L802CA9C4:
	lui     $t3, %hi(obj_debug_80330E94)
	lb      $t3, %lo(obj_debug_80330E94)($t3)
	lw      $t0, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	sll     $t4, $t3, 4
	sll     $t5, $t0, 1
	addu    $t6, $t4, $t5
	lui     $a1, %hi(object_8033D280)
	sll     $t1, $t0, 2
	addu    $a1, $a1, $t6
	addu    $t2, $t9, $t1
	lw      $a0, 0x0000($t2)
	jal     obj_debug_802CA618
	lh      $a1, %lo(object_8033D280)($a1)
	lw      $t7, 0x001C($sp)
	addiu   $t8, $t7, 0x0001
	slti    $at, $t8, 0x0008
	bnez    $at, .L802CA9C4
	sw      $t8, 0x001C($sp)
	lui     $t9, %hi(obj_debug_80330EA0)
	lb      $t9, %lo(obj_debug_80330EA0)($t9)
	li      $t2, -0x0008
	move    $a0, $0
	subu    $t1, $0, $t9
	jal     obj_debug_802CA51C
	subu    $a1, $t2, $t1
	lw      $t3, 0x0020($sp)
	move    $a1, $0
	jal     obj_debug_802CA618
	lw      $a0, 0x0020($t3)
	lui     $t0, %hi(obj_debug_80330EA0)
	lb      $t0, %lo(obj_debug_80330EA0)($t0)
	li      $t4, 0x0007
	move    $a0, $0
	jal     obj_debug_802CA51C
	subu    $a1, $t4, $t0
.L802CAA54:
	b       .L802CAA5C
	nop
.L802CAA5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_debug_802CAA6C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_obj_debug_effectinfo
	la.l    $a0, str_obj_debug_effectinfo
	jal     obj_debug_802CA680
	move    $a1, $0
	la.u    $a0, obj_debug_80330E40
	jal     obj_debug_802CA990
	la.l    $a0, obj_debug_80330E40
	b       .L802CAA98
	nop
.L802CAA98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_debug_802CAAA8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_obj_debug_enemyinfo
	la.l    $a0, str_obj_debug_enemyinfo
	jal     obj_debug_802CA680
	move    $a1, $0
	la.u    $a0, obj_debug_80330E64
	jal     obj_debug_802CA990
	la.l    $a0, obj_debug_80330E64
	b       .L802CAAD4
	nop
.L802CAAD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_debug_802CAAE4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0010($t6)
	andi    $t8, $t7, 0x0F00
	sw      $t8, 0x0004($sp)
	lw      $t9, 0x0004($sp)
	bnez    $t9, .L802CAB1C
	nop
	lui     $at, %hi(obj_debug_80330E8C)
	sw      $0, %lo(obj_debug_80330E8C)($at)
	lui     $at, %hi(obj_debug_80330E88)
	b       .L802CAB9C
	sw      $0, %lo(obj_debug_80330E88)($at)
.L802CAB1C:
	lui     $t0, %hi(obj_debug_80330E8C)
	lw      $t0, %lo(obj_debug_80330E8C)($t0)
	bnez    $t0, .L802CAB3C
	nop
	lw      $t1, 0x0004($sp)
	lui     $at, %hi(obj_debug_80330E88)
	b       .L802CAB68
	sw      $t1, %lo(obj_debug_80330E88)($at)
.L802CAB3C:
	lui     $t2, %hi(obj_debug_80330E8C)
	lw      $t2, %lo(obj_debug_80330E8C)($t2)
	li      $at, 0x0006
	bne     $t2, $at, .L802CAB60
	nop
	lw      $t3, 0x0004($sp)
	lui     $at, %hi(obj_debug_80330E88)
	b       .L802CAB68
	sw      $t3, %lo(obj_debug_80330E88)($at)
.L802CAB60:
	lui     $at, %hi(obj_debug_80330E88)
	sw      $0, %lo(obj_debug_80330E88)($at)
.L802CAB68:
	lui     $t4, %hi(obj_debug_80330E8C)
	lw      $t4, %lo(obj_debug_80330E8C)($t4)
	lui     $at, %hi(obj_debug_80330E8C)
	addiu   $t5, $t4, 0x0001
	sw      $t5, %lo(obj_debug_80330E8C)($at)
	lui     $t6, %hi(obj_debug_80330E8C)
	lw      $t6, %lo(obj_debug_80330E8C)($t6)
	slti    $at, $t6, 0x0008
	bnez    $at, .L802CAB9C
	nop
	li      $t7, 0x0006
	lui     $at, %hi(obj_debug_80330E8C)
	sw      $t7, %lo(obj_debug_80330E8C)($at)
.L802CAB9C:
	b       .L802CABA4
	nop
.L802CABA4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_debug_802CABAC
obj_debug_802CABAC:
	lui     $t6, %hi(obj_debug_80330E90)
	lb      $t6, %lo(obj_debug_80330E90)($t6)
	bnez    $t6, .L802CAC10
	nop
	lui     $t7, %hi(obj_debug_80330E90)
	lb      $t7, %lo(obj_debug_80330E90)($t7)
	lui     $at, %hi(obj_debug_80330E90)
	addiu   $t8, $t7, 0x0001
	sb      $t8, %lo(obj_debug_80330E90)($at)
	lui     $t9, %hi(debug_stage)
	lb      $t9, %lo(debug_stage)($t9)
	bnez    $t9, .L802CABEC
	nop
	lui     $at, %hi(object_debug_flag)
	b       .L802CABF8
	sw      $0, %lo(object_debug_flag)($at)
.L802CABEC:
	li      $t0, 0x0002
	lui     $at, %hi(object_debug_flag)
	sw      $t0, %lo(object_debug_flag)($at)
.L802CABF8:
	lui     $at, %hi(object_8033D274+0x00)
	sh      $0, %lo(object_8033D274+0x00)($at)
	lui     $at, %hi(object_8033D274+0x02)
	sh      $0, %lo(object_8033D274+0x02)($at)
	lui     $at, %hi(object_8033D274+0x04)
	sh      $0, %lo(object_8033D274+0x04)($at)
.L802CAC10:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_debug_802CAC20
obj_debug_802CAC20:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	lui     $at, %hi(object_8033D264)
	sw      $0, %lo(object_8033D264)($at)
	lui     $at, %hi(object_8033D26C)
	sw      $0, %lo(object_8033D26C)($at)
	lui     $at, %hi(object_8033D270)
	sw      $0, %lo(object_8033D270)($at)
	lui     $at, %hi(obj_debug_80330E9C)
	sb      $0, %lo(obj_debug_80330E9C)($at)
	lui     $at, %hi(object_80361252)
	sh      $0, %lo(object_80361252)($at)
	lui     $at, %hi(object_80361254)
	sh      $0, %lo(object_80361254)($at)
	la.u    $a0, obj_debug_80361290
	li      $t6, 0x00C8
	li      $t7, -0x000F
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a0, obj_debug_80361290
	li      $a1, 0x0014
	li      $a2, 0x00B9
	jal     obj_debug_802CA418
	li      $a3, 0x0028
	la.u    $a0, obj_debug_803612A0
	li      $t8, 0x0096
	li      $t9, 0x000F
	sw      $t9, 0x0014($sp)
	sw      $t8, 0x0010($sp)
	la.l    $a0, obj_debug_803612A0
	li      $a1, 0x00B4
	li      $a2, 0x001E
	jal     obj_debug_802CA418
	move    $a3, $0
	jal     obj_debug_802CAAE4
	nop
	b       .L802CACB8
	nop
.L802CACB8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

obj_debug_802CACC8:
	addiu   $sp, $sp, -0x0008
	la.u    $t6, obj_debug_80330EA8
	la.l    $t6, obj_debug_80330EA8
	sw      $t6, 0x0004($sp)
	lui     $t7, %hi(cont_1)
	lw      $t7, %lo(cont_1)($t7)
	lhu     $t8, 0x0010($t7)
	andi    $t9, $t8, 0x0020
	bnez    $t9, .L802CACFC
	nop
	lui     $at, %hi(obj_debug_80330EA4)
	b       .L802CADB8
	sb      $0, %lo(obj_debug_80330EA4)($at)
.L802CACFC:
	lui     $t0, %hi(cont_1)
	lw      $t0, %lo(cont_1)($t0)
	lhu     $t1, 0x0012($t0)
	andi    $t2, $t1, 0x000F
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	beqz    $t4, .L802CADB8
	sh      $t2, 0x0002($sp)
	lui     $t6, %hi(obj_debug_80330EA4)
	lb      $t6, %lo(obj_debug_80330EA4)($t6)
	lw      $t5, 0x0004($sp)
	lh      $t0, 0x0002($sp)
	sll     $t7, $t6, 1
	addu    $t8, $t5, $t7
	lh      $t9, 0x0000($t8)
	bne     $t9, $t0, .L802CADB0
	nop
	lui     $t1, %hi(obj_debug_80330EA4)
	lb      $t1, %lo(obj_debug_80330EA4)($t1)
	lui     $at, %hi(obj_debug_80330EA4)
	addiu   $t2, $t1, 0x0001
	sb      $t2, %lo(obj_debug_80330EA4)($at)
	lui     $t4, %hi(obj_debug_80330EA4)
	lb      $t4, %lo(obj_debug_80330EA4)($t4)
	lw      $t3, 0x0004($sp)
	li      $at, -0x0001
	sll     $t6, $t4, 1
	addu    $t5, $t3, $t6
	lh      $t7, 0x0000($t5)
	bne     $t7, $at, .L802CADA8
	nop
	lui     $t8, %hi(object_debug_flag)
	lw      $t8, %lo(object_debug_flag)($t8)
	li      $at, 0x00FF
	bne     $t8, $at, .L802CAD9C
	nop
	li      $t9, 0x0002
	lui     $at, %hi(object_debug_flag)
	b       .L802CADA8
	sw      $t9, %lo(object_debug_flag)($at)
.L802CAD9C:
	li      $t0, 0x00FF
	lui     $at, %hi(object_debug_flag)
	sw      $t0, %lo(object_debug_flag)($at)
.L802CADA8:
	b       .L802CADB8
	nop
.L802CADB0:
	lui     $at, %hi(obj_debug_80330EA4)
	sb      $0, %lo(obj_debug_80330EA4)($at)
.L802CADB8:
	b       .L802CADC0
	nop
.L802CADC0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

obj_debug_802CADC8:
	lui     $t6, %hi(object_debug_flag)
	lw      $t6, %lo(object_debug_flag)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L802CAE8C
	nop
	lui     $t8, %hi(cont_1)
	lw      $t8, %lo(cont_1)($t8)
	lhu     $t9, 0x0012($t8)
	andi    $t0, $t9, 0x0200
	beqz    $t0, .L802CAE18
	nop
	lhu     $t1, 0x0010($t8)
	andi    $t2, $t1, 0x0030
	beqz    $t2, .L802CAE18
	nop
	lui     $t3, %hi(obj_debug_80330E94)
	lb      $t3, %lo(obj_debug_80330E94)($t3)
	lui     $at, %hi(obj_debug_80330E94)
	addiu   $t4, $t3, 0x0001
	sb      $t4, %lo(obj_debug_80330E94)($at)
.L802CAE18:
	lui     $t5, %hi(cont_1)
	lw      $t5, %lo(cont_1)($t5)
	lhu     $t6, 0x0012($t5)
	andi    $t7, $t6, 0x0100
	beqz    $t7, .L802CAE54
	nop
	lhu     $t9, 0x0010($t5)
	andi    $t0, $t9, 0x0030
	beqz    $t0, .L802CAE54
	nop
	lui     $t8, %hi(obj_debug_80330E94)
	lb      $t8, %lo(obj_debug_80330E94)($t8)
	lui     $at, %hi(obj_debug_80330E94)
	addiu   $t1, $t8, -0x0001
	sb      $t1, %lo(obj_debug_80330E94)($at)
.L802CAE54:
	lui     $t2, %hi(obj_debug_80330E94)
	lb      $t2, %lo(obj_debug_80330E94)($t2)
	slti    $at, $t2, 0x0006
	bnez    $at, .L802CAE70
	nop
	lui     $at, %hi(obj_debug_80330E94)
	sb      $0, %lo(obj_debug_80330E94)($at)
.L802CAE70:
	lui     $t3, %hi(obj_debug_80330E94)
	lb      $t3, %lo(obj_debug_80330E94)($t3)
	bgez    $t3, .L802CAE8C
	nop
	li      $t4, 0x0005
	lui     $at, %hi(obj_debug_80330E94)
	sb      $t4, %lo(obj_debug_80330E94)($at)
.L802CAE8C:
	jr      $ra
	nop
	jr      $ra
	nop

obj_debug_802CAE9C:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L802CAECC
	nop
	lui     $t9, %hi(obj_debug_80330E98)
	lb      $t9, %lo(obj_debug_80330E98)($t9)
	lui     $at, %hi(obj_debug_80330E98)
	xori    $t0, $t9, 0x0001
	sb      $t0, %lo(obj_debug_80330E98)($at)
.L802CAECC:
	lui     $t1, %hi(cont_1)
	lw      $t1, %lo(cont_1)($t1)
	lhu     $t2, 0x0010($t1)
	andi    $t3, $t2, 0x0030
	bnez    $t3, .L802CB0A0
	nop
	lui     $t4, %hi(obj_debug_80330E98)
	lb      $t4, %lo(obj_debug_80330E98)($t4)
	bnez    $t4, .L802CB0A0
	nop
	li      $t5, 0x0001
	sw      $t5, 0x0004($sp)
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0010($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, .L802CAF1C
	nop
	li      $t9, 0x0064
	sw      $t9, 0x0004($sp)
.L802CAF1C:
	lui     $t0, %hi(obj_debug_80330E88)
	lw      $t0, %lo(obj_debug_80330E88)($t0)
	andi    $t1, $t0, 0x0800
	beqz    $t1, .L802CAF5C
	nop
	lui     $t2, %hi(obj_debug_80330EA0)
	lb      $t2, %lo(obj_debug_80330EA0)($t2)
	lui     $at, %hi(obj_debug_80330EA0)
	addiu   $t3, $t2, -0x0001
	sb      $t3, %lo(obj_debug_80330EA0)($at)
	lui     $t4, %hi(obj_debug_80330EA0)
	lb      $t4, %lo(obj_debug_80330EA0)($t4)
	bgez    $t4, .L802CAF5C
	nop
	lui     $at, %hi(obj_debug_80330EA0)
	sb      $0, %lo(obj_debug_80330EA0)($at)
.L802CAF5C:
	lui     $t5, %hi(obj_debug_80330E88)
	lw      $t5, %lo(obj_debug_80330E88)($t5)
	andi    $t6, $t5, 0x0400
	beqz    $t6, .L802CAFA4
	nop
	lui     $t7, %hi(obj_debug_80330EA0)
	lb      $t7, %lo(obj_debug_80330EA0)($t7)
	lui     $at, %hi(obj_debug_80330EA0)
	addiu   $t8, $t7, 0x0001
	sb      $t8, %lo(obj_debug_80330EA0)($at)
	lui     $t9, %hi(obj_debug_80330EA0)
	lb      $t9, %lo(obj_debug_80330EA0)($t9)
	slti    $at, $t9, 0x0008
	bnez    $at, .L802CAFA4
	nop
	li      $t0, 0x0007
	lui     $at, %hi(obj_debug_80330EA0)
	sb      $t0, %lo(obj_debug_80330EA0)($at)
.L802CAFA4:
	lui     $t1, %hi(obj_debug_80330E88)
	lw      $t1, %lo(obj_debug_80330E88)($t1)
	andi    $t2, $t1, 0x0200
	beqz    $t2, .L802CB04C
	nop
	lui     $t3, %hi(cont_1)
	lw      $t3, %lo(cont_1)($t3)
	lhu     $t4, 0x0010($t3)
	andi    $t5, $t4, 0x8000
	beqz    $t5, .L802CB00C
	nop
	lui     $t6, %hi(obj_debug_80330E94)
	lui     $t8, %hi(obj_debug_80330EA0)
	lb      $t8, %lo(obj_debug_80330EA0)($t8)
	lb      $t6, %lo(obj_debug_80330E94)($t6)
	lui     $t1, %hi(object_8033D380)
	sll     $t9, $t8, 1
	sll     $t7, $t6, 4
	addu    $t0, $t7, $t9
	addu    $t1, $t1, $t0
	lh      $t1, %lo(object_8033D380)($t1)
	addu    $t2, $t7, $t9
	lui     $at, %hi(object_8033D280)
	addu    $at, $at, $t2
	b       .L802CB04C
	sh      $t1, %lo(object_8033D280)($at)
.L802CB00C:
	lui     $t3, %hi(obj_debug_80330E94)
	lui     $t5, %hi(obj_debug_80330EA0)
	lb      $t5, %lo(obj_debug_80330EA0)($t5)
	lb      $t3, %lo(obj_debug_80330E94)($t3)
	la.u    $t0, object_8033D280
	sll     $t6, $t5, 1
	sll     $t4, $t3, 4
	addu    $t8, $t4, $t6
	la.l    $t0, object_8033D280
	addu    $t7, $t8, $t0
	lh      $t9, 0x0000($t7)
	lw      $t1, 0x0004($sp)
	addu    $t3, $t4, $t6
	addu    $t5, $t3, $t0
	subu    $t2, $t9, $t1
	sh      $t2, 0x0000($t5)
.L802CB04C:
	lui     $t8, %hi(obj_debug_80330E88)
	lw      $t8, %lo(obj_debug_80330E88)($t8)
	andi    $t7, $t8, 0x0100
	beqz    $t7, .L802CB0A0
	nop
	lui     $t9, %hi(obj_debug_80330E94)
	lui     $t4, %hi(obj_debug_80330EA0)
	lb      $t4, %lo(obj_debug_80330EA0)($t4)
	lb      $t9, %lo(obj_debug_80330E94)($t9)
	la.u    $t0, object_8033D280
	sll     $t6, $t4, 1
	sll     $t1, $t9, 4
	addu    $t3, $t1, $t6
	la.l    $t0, object_8033D280
	addu    $t2, $t3, $t0
	lh      $t5, 0x0000($t2)
	lw      $t8, 0x0004($sp)
	addu    $t9, $t1, $t6
	addu    $t4, $t9, $t0
	addu    $t7, $t5, $t8
	sh      $t7, 0x0000($t4)
.L802CB0A0:
	b       .L802CB0A8
	nop
.L802CB0A8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl obj_debug_802CB0B0
obj_debug_802CB0B0:
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_debug_802CB0C0
obj_debug_802CB0C0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(obj_mario)
	lw      $t6, %lo(obj_mario)($t6)
	beqz    $t6, .L802CB148
	nop
	lui     $s0, %hi(obj_debug_80330E94)
	lb      $s0, %lo(obj_debug_80330E94)($s0)
	li      $at, 0x0001
	beq     $s0, $at, .L802CB110
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L802CB120
	nop
	li      $at, 0x0005
	beq     $s0, $at, .L802CB130
	nop
	b       .L802CB140
	nop
.L802CB110:
	jal     obj_debug_802CA918
	nop
	b       .L802CB148
	nop
.L802CB120:
	jal     obj_debug_802CAA6C
	nop
	b       .L802CB148
	nop
.L802CB130:
	jal     obj_debug_802CAAA8
	nop
	b       .L802CB148
	nop
.L802CB140:
	b       .L802CB148
	nop
.L802CB148:
	la.u    $a0, str_obj_debug_obj
	lui     $a1, %hi(object_8033D270)
	lw      $a1, %lo(object_8033D270)($a1)
	jal     obj_debug_802CA618
	la.l    $a0, str_obj_debug_obj
	lui     $t7, %hi(object_8033D264)
	lw      $t7, %lo(object_8033D264)($t7)
	beqz    $t7, .L802CB180
	nop
	la.u    $a0, str_obj_debug_nullbg
	lui     $a1, %hi(object_8033D264)
	lw      $a1, %lo(object_8033D264)($a1)
	jal     obj_debug_802CA568
	la.l    $a0, str_obj_debug_nullbg
.L802CB180:
	lui     $t8, %hi(object_8033D26C)
	lw      $t8, %lo(object_8033D26C)($t8)
	beqz    $t8, .L802CB1A4
	nop
	la.u    $a0, str_obj_debug_wall
	lui     $a1, %hi(object_8033D26C)
	lw      $a1, %lo(object_8033D26C)($a1)
	jal     obj_debug_802CA568
	la.l    $a0, str_obj_debug_wall
.L802CB1A4:
	b       .L802CB1AC
	nop
.L802CB1AC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_debug_802CB1C0
obj_debug_802CB1C0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(obj_debug_80330E94)
	lb      $s0, %lo(obj_debug_80330E94)($s0)
	beqz    $s0, .L802CB208
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802CB210
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802CB220
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802CB230
	nop
	b       .L802CB240
	nop
.L802CB208:
	b       .L802CB248
	nop
.L802CB210:
	jal     obj_debug_802CA8E8
	nop
	b       .L802CB248
	nop
.L802CB220:
	jal     obj_debug_802CA6D0
	nop
	b       .L802CB248
	nop
.L802CB230:
	jal     obj_debug_802CA94C
	nop
	b       .L802CB248
	nop
.L802CB240:
	b       .L802CB248
	nop
.L802CB248:
	b       .L802CB250
	nop
.L802CB250:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl obj_debug_802CB264
obj_debug_802CB264:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(obj_debug_80330E94)
	lb      $t6, %lo(obj_debug_80330E94)($t6)
	li      $at, 0x0003
	bne     $t6, $at, .L802CB37C
	nop
	la.u    $t7, object_8033D280
	la.l    $t7, object_8033D280
	lh      $t8, 0x005E($t7)
	li      $at, 0x0001
	bne     $t8, $at, .L802CB37C
	nop
	lui     $t9, %hi(cont_1)
	lw      $t9, %lo(cont_1)($t9)
	lhu     $t0, 0x0012($t9)
	andi    $t1, $t0, 0x0100
	beqz    $t1, .L802CB2E4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t4, o_13001F3C
	la.l    $t4, o_13001F3C
	li      $t3, 0x00BE
	sw      $t3, 0x0014($sp)
	sw      $t4, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0064
	li      $a3, 0x00C8
	jal     obj_lib_8029EF64
	sw      $t2, 0x0010($sp)
.L802CB2E4:
	lui     $t5, %hi(cont_1)
	lw      $t5, %lo(cont_1)($t5)
	lhu     $t6, 0x0012($t5)
	andi    $t7, $t6, 0x0200
	beqz    $t7, .L802CB330
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t0, o_13001650
	la.l    $t0, o_13001650
	li      $t9, 0x0082
	sw      $t9, 0x0014($sp)
	sw      $t0, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0064
	li      $a3, 0x00C8
	jal     obj_lib_8029EF64
	sw      $t8, 0x0010($sp)
.L802CB330:
	lui     $t1, %hi(cont_1)
	lw      $t1, %lo(cont_1)($t1)
	lhu     $t2, 0x0012($t1)
	andi    $t3, $t2, 0x0400
	beqz    $t3, .L802CB37C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $t6, o_13000708
	la.l    $t6, o_13000708
	li      $t5, 0x00BE
	sw      $t5, 0x0014($sp)
	sw      $t6, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0064
	li      $a3, 0x00C8
	jal     obj_lib_8029EF64
	sw      $t4, 0x0010($sp)
.L802CB37C:
	b       .L802CB384
	nop
.L802CB384:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

obj_debug_802CB394:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L802CB3CC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $a0, str_obj_debug_bound
	la.l    $a0, str_obj_debug_bound
	jal     obj_debug_802CA5B8
	lw      $a1, 0x00EC($t9)
.L802CB3CC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L802CB3FC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $a0, str_obj_debug_touch
	la.l    $a0, str_obj_debug_touch
	jal     obj_debug_802CA5B8
	lw      $a1, 0x00EC($t3)
.L802CB3FC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x0004
	beqz    $t6, .L802CB42C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a0, str_obj_debug_takeoff
	la.l    $a0, str_obj_debug_takeoff
	jal     obj_debug_802CA5B8
	lw      $a1, 0x00EC($t7)
.L802CB42C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0008
	beqz    $t0, .L802CB45C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, str_obj_debug_dive
	la.l    $a0, str_obj_debug_dive
	jal     obj_debug_802CA5B8
	lw      $a1, 0x00EC($t1)
.L802CB45C:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00EC($t2)
	andi    $t4, $t3, 0x0010
	beqz    $t4, .L802CB48C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $a0, str_obj_debug_s_water
	la.l    $a0, str_obj_debug_s_water
	jal     obj_debug_802CA5B8
	lw      $a1, 0x00EC($t5)
.L802CB48C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, .L802CB4BC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $a0, str_obj_debug_u_water
	la.l    $a0, str_obj_debug_u_water
	jal     obj_debug_802CA5B8
	lw      $a1, 0x00EC($t9)
.L802CB4BC:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0040
	beqz    $t2, .L802CB4EC
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $a0, str_obj_debug_b_water
	la.l    $a0, str_obj_debug_b_water
	jal     obj_debug_802CA5B8
	lw      $a1, 0x00EC($t3)
.L802CB4EC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x0080
	beqz    $t6, .L802CB51C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a0, str_obj_debug_sky
	la.l    $a0, str_obj_debug_sky
	jal     obj_debug_802CA5B8
	lw      $a1, 0x00EC($t7)
.L802CB51C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0100
	beqz    $t0, .L802CB54C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, str_obj_debug_out_scope
	la.l    $a0, str_obj_debug_out_scope
	jal     obj_debug_802CA5B8
	lw      $a1, 0x00EC($t1)
.L802CB54C:
	b       .L802CB554
	nop
.L802CB554:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

obj_debug_802CB564:
	la.u    $t6, object_8033D280
	la.l    $t6, object_8033D280
	lh      $t7, 0x0052($t6)
	sh      $t7, 0x0008($a0)
	la.u    $t8, object_8033D280
	la.l    $t8, object_8033D280
	lh      $t9, 0x0054($t8)
	sh      $t9, 0x000A($a0)
	la.u    $t0, object_8033D280
	la.l    $t0, object_8033D280
	lh      $t1, 0x0056($t0)
	sh      $t1, 0x000C($a0)
	la.u    $t2, object_8033D280
	la.l    $t2, object_8033D280
	lh      $t3, 0x0058($t2)
	sh      $t3, 0x000E($a0)
	jr      $ra
	nop
	jr      $ra
	nop

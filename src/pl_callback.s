.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

.globl s_stage_weather
s_stage_weather:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	sw      $0, 0x0038($sp)
	lw      $t6, 0x0058($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L80276360
	nop
	lui     $t7, %hi(shape_camera)
	lw      $t7, %lo(shape_camera)($t7)
	beqz    $t7, .L80276360
	nop
	lw      $t8, 0x005C($sp)
	sw      $t8, 0x0034($sp)
	lw      $t9, 0x0034($sp)
	addiu   $t0, $t9, 0x0018
	sw      $t0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	lui     $t3, %hi(draw_timer)
	lhu     $t3, %lo(draw_timer)($t3)
	lhu     $t2, 0x0000($t1)
	beq     $t2, $t3, .L80276358
	nop
	lui     $t4, %hi(shape_camera)
	lw      $t4, %lo(shape_camera)($t4)
	lw      $t5, 0x0018($t4)
	sw      $t5, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	lhu     $t7, 0x0002($t6)
	sw      $t7, 0x0028($sp)
	lui     $a1, %hi(shape_camera)
	lw      $a1, %lo(shape_camera)($a1)
	addiu   $a0, $sp, 0x0040
	jal     vecf_to_vecs
	addiu   $a1, $a1, 0x0028
	lui     $a1, %hi(shape_camera)
	lw      $a1, %lo(shape_camera)($a1)
	addiu   $a0, $sp, 0x0048
	jal     vecf_to_vecs
	addiu   $a1, $a1, 0x001C
	la.u    $a1, _camera_bss+0x00
	la.l    $a1, _camera_bss+0x00
	addiu   $a1, $a1, 0x0004
	jal     vecf_to_vecs
	addiu   $a0, $sp, 0x0050
	lw      $a0, 0x0028($sp)
	addiu   $a1, $sp, 0x0050
	addiu   $a2, $sp, 0x0040
	jal     weather_snow_802DFBC8
	addiu   $a3, $sp, 0x0048
	sw      $v0, 0x003C($sp)
	lw      $t8, 0x003C($sp)
	beqz    $t8, .L80276348
	nop
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0024($sp)
	jal     gfx_alloc
	li      $a0, 0x0010
	sw      $v0, 0x0038($sp)
	lw      $a0, 0x0024($sp)
	jal     mtxf_to_mtx
	lw      $a1, 0x0060($sp)
	lw      $t9, 0x0038($sp)
	sw      $t9, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li.u    $t0, 0x01020040
	li.l    $t0, 0x01020040
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0024($sp)
	lw      $t4, 0x0020($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t4)
	lw      $t5, 0x0038($sp)
	addiu   $t6, $t5, 0x0008
	sw      $t6, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	li      $t7, 0x06010000
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x003C($sp)
	lw      $t1, 0x001C($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t0, $t9, $at
	sw      $t0, 0x0004($t1)
	lw      $t2, 0x0034($sp)
	lh      $t3, 0x0002($t2)
	andi    $t4, $t3, 0x00FF
	ori     $t5, $t4, 0x0400
	sh      $t5, 0x0002($t2)
.L80276348:
	lui     $t6, %hi(draw_timer)
	lhu     $t6, %lo(draw_timer)($t6)
	lw      $t7, 0x0030($sp)
	sh      $t6, 0x0000($t7)
.L80276358:
	b       .L802763B4
	nop
.L80276360:
	lw      $t8, 0x0058($sp)
	li      $at, 0x0004
	bne     $t8, $at, .L802763B4
	nop
	la.u    $a1, vecs_0
	la.l    $a1, vecs_0
	jal     vecs_cpy
	addiu   $a0, $sp, 0x0040
	la.u    $a1, vecs_0
	la.l    $a1, vecs_0
	jal     vecs_cpy
	addiu   $a0, $sp, 0x0048
	la.u    $a1, vecs_0
	la.l    $a1, vecs_0
	jal     vecs_cpy
	addiu   $a0, $sp, 0x0050
	move    $a0, $0
	addiu   $a1, $sp, 0x0050
	addiu   $a2, $sp, 0x0040
	jal     weather_snow_802DFBC8
	addiu   $a3, $sp, 0x0048
.L802763B4:
	b       .L802763C4
	lw      $v0, 0x0038($sp)
	b       .L802763C4
	nop
.L802763C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

.globl s_stage_background
s_stage_background:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $0, 0x003C($sp)
	lw      $t6, 0x0044($sp)
	sw      $t6, 0x0038($sp)
	lw      $t7, 0x0040($sp)
	li      $at, 0x0003
	bne     $t7, $at, .L80276410
	nop
	lw      $t8, 0x0038($sp)
	b       .L80276490
	sw      $0, 0x0018($t8)
.L80276410:
	lw      $t9, 0x0040($sp)
	li      $at, 0x0001
	bne     $t9, $at, .L80276490
	nop
	lui     $t0, %hi(shape_scene)
	lw      $t0, %lo(shape_scene)($t0)
	lw      $t1, 0x0020($t0)
	lw      $t2, 0x0000($t1)
	sw      $t2, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	lw      $t4, 0x000C($t3)
	sw      $t4, 0x0030($sp)
	la.u    $t7, _camera_bss+0x178
	lw      $t5, 0x0038($sp)
	lw      $t6, 0x0030($sp)
	la.l    $t7, _camera_bss+0x178
	lwc1    $f4, 0x0090($t7)
	lw      $a3, 0x008C($t7)
	lw      $a1, 0x001C($t5)
	lw      $a2, 0x001C($t6)
	swc1    $f4, 0x0010($sp)
	lwc1    $f6, 0x0094($t7)
	move    $a0, $0
	swc1    $f6, 0x0014($sp)
	lwc1    $f8, 0x0080($t7)
	swc1    $f8, 0x0018($sp)
	lwc1    $f10, 0x0084($t7)
	swc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x0088($t7)
	jal     background_802CFEF4
	swc1    $f16, 0x0020($sp)
	sw      $v0, 0x003C($sp)
.L80276490:
	b       .L802764A0
	lw      $v0, 0x003C($sp)
	b       .L802764A0
	nop
.L802764A0:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl s_face_main
s_face_main:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $0, 0x0024($sp)
	sh      $0, 0x0022($sp)
	lw      $t6, 0x002C($sp)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0030($sp)
	sw      $t7, 0x0018($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x0001
	bne     $t8, $at, .L8027655C
	nop
	lui     $t9, %hi(cont_1)
	lw      $t9, %lo(cont_1)($t9)
	lw      $t0, 0x0018($t9)
	beqz    $t0, .L80276520
	nop
	lui     $t1, %hi(wipe+0x00)
	lbu     $t1, %lo(wipe+0x00)($t1)
	bnez    $t1, .L80276520
	nop
	lui     $t2, %hi(cont_1)
	lw      $t2, %lo(cont_1)($t2)
	jal     face_gfx_8019C930
	lw      $a0, 0x0018($t2)
.L80276520:
	lw      $t3, 0x001C($sp)
	jal     gdm_gettestdl
	lw      $a0, 0x0018($t3)
	li      $at, 0x80000000
	or      $t4, $v0, $at
	sw      $t4, 0x0024($sp)
	la.u    $t5, face_gfx_8019C874
	la.l    $t5, face_gfx_8019C874
	lui     $at, %hi(gfx_callback)
	sw      $t5, %lo(gfx_callback)($at)
	jal     face_gfx_8019C9C8
	nop
	sh      $v0, 0x0022($sp)
	jal     aud_face_sfx
	lh      $a0, 0x0022($sp)
.L8027655C:
	b       .L8027656C
	lw      $v0, 0x0024($sp)
	b       .L8027656C
	nop
.L8027656C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_callback_8027657C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x442F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802765AC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x010C($t7)
.L802765AC:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x010C($t8)
	bnez    $t9, .L802765EC
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t8)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L802765EC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x0110($t1)
.L802765EC:
	jr      $ra
	nop
	jr      $ra
	nop

pl_callback_802765FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x442F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8027663C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	b       .L8027669C
	sw      $t7, 0x0110($t8)
.L8027663C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x010C($t9)
	bnez    $t0, .L8027669C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x4000
	sw      $t1, 0x0190($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0134($t3)
	andi    $t5, $t4, 0x8000
	beqz    $t5, .L8027669C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0004
	sw      $t7, 0x0110($t8)
	jal     kinopio_seqentry # Na_g_803221F4
	nop
.L8027669C:
	b       .L802766A4
	nop
.L802766A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_callback_802766B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a0, 0x0003
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     obj_lib_802A4BE4
	lw      $a3, 0x0108($t6)
	beqz    $v0, .L8027679C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x010C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x0110($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x004C
	lw      $s0, 0x0108($t1)
	beq     $s0, $at, .L8027675C
	nop
	li      $at, 0x0052
	beq     $s0, $at, .L8027673C
	nop
	li      $at, 0x0053
	beq     $s0, $at, .L8027677C
	nop
.if 1
	li      $at, 0x00AC
	beq     $s0, $at, .Lmsg172
	nop
.endif
	b       .L8027679C
	nop
.L8027673C:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x009A
	sw      $t2, 0x0108($t3)
	jal     object_a_802AB558
	move    $a0, $0
	b       .L8027679C
	nop
.L8027675C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x009B
	sw      $t4, 0x0108($t5)
	jal     object_a_802AB558
	li      $a0, 0x0001
	b       .L8027679C
	nop
.L8027677C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x009C
	sw      $t6, 0x0108($t7)
	jal     object_a_802AB558
	li      $a0, 0x0002
	b       .L8027679C
	nop
.if 1
.Lmsg172:
	jal     kinopioexit
	nop
	b       .L8027679C
	nop
.endif
.L8027679C:
	b       .L802767A4
	nop
.L802767A4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_callback_802767B8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t9, %hi(object)
	li      $at, 0x00FF
	lw      $t7, 0x017C($t6)
	addiu   $t8, $t7, 0x0006
	sw      $t8, 0x017C($t6)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x017C($t9)
	bne     $t0, $at, .L802767F4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0110($t2)
.L802767F4:
	jr      $ra
	nop
	jr      $ra
	nop

pl_callback_80276804:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t9, %hi(object)
	li      $at, 0x0051
	lw      $t7, 0x017C($t6)
	addiu   $t8, $t7, -0x0006
	sw      $t8, 0x017C($t6)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x017C($t9)
	bne     $t0, $at, .L8027683C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0110($t1)
.L8027683C:
	jr      $ra
	nop
	jr      $ra
	nop

.globl pl_callback_8027684C
pl_callback_8027684C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L802768F8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0190($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0110($t0)
	sltiu   $at, $t1, 0x0005
	beqz    $at, .L802768F8
	nop
	sll     $t1, $t1, 2
	lui     $at, %hi(pl_callback_80336F40)
	addu    $at, $at, $t1
	lw      $t1, %lo(pl_callback_80336F40)($at)
	jr      $t1
	nop
.globl L802768A8
L802768A8:
	jal     pl_callback_8027657C
	nop
	b       .L802768F8
	nop
.globl L802768B8
L802768B8:
	jal     pl_callback_802765FC
	nop
	b       .L802768F8
	nop
.globl L802768C8
L802768C8:
	jal     pl_callback_802767B8
	nop
	b       .L802768F8
	nop
.globl L802768D8
L802768D8:
	jal     pl_callback_80276804
	nop
	b       .L802768F8
	nop
.globl L802768E8
L802768E8:
	jal     pl_callback_802766B4
	nop
	b       .L802768F8
	nop
.L802768F8:
	b       .L80276900
	nop
.L80276900:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_callback_80276910
pl_callback_80276910:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     save_flag_get
	nop
	sw      $v0, 0x0034($sp)
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	sw      $v0, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 24
	andi    $t9, $t8, 0x00FF
	sw      $t9, 0x002C($sp)
	li      $t0, 0x0001
	sw      $t0, 0x0028($sp)
	lw      $s0, 0x002C($sp)
	li      $at, 0x004C
	beq     $s0, $at, .L802769C8
	nop
	li      $at, 0x0052
	beq     $s0, $at, .L80276994
	nop
	li      $at, 0x0053
	beq     $s0, $at, .L802769FC
	nop
	b       .L80276A30
	nop
.L80276994:
	lw      $t1, 0x0030($sp)
	slti    $t2, $t1, 0x000C
	xori    $t2, $t2, 0x0001
	sw      $t2, 0x0028($sp)
	lw      $t3, 0x0034($sp)
	li      $at, 0x01000000
	and     $t4, $t3, $at
	beqz    $t4, .L802769C0
	nop
	li      $t5, 0x009A
	sw      $t5, 0x002C($sp)
.L802769C0:
	b       .L80276A30
	nop
.L802769C8:
	lw      $t6, 0x0030($sp)
	slti    $t7, $t6, 0x0019
	xori    $t7, $t7, 0x0001
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x0034($sp)
	li      $at, 0x02000000
	and     $t9, $t8, $at
	beqz    $t9, .L802769F4
	nop
	li      $t0, 0x009B
	sw      $t0, 0x002C($sp)
.L802769F4:
	b       .L80276A30
	nop
.L802769FC:
	lw      $t1, 0x0030($sp)
	slti    $t2, $t1, 0x0023
	xori    $t2, $t2, 0x0001
	sw      $t2, 0x0028($sp)
	lw      $t3, 0x0034($sp)
	li      $at, 0x04000000
	and     $t4, $t3, $at
	beqz    $t4, .L80276A28
	nop
	li      $t5, 0x009C
	sw      $t5, 0x002C($sp)
.L80276A28:
	b       .L80276A30
	nop
.L80276A30:
	lw      $t6, 0x0028($sp)
	beqz    $t6, .L80276A78
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x002C($sp)
	sw      $t7, 0x0108($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x010C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0110($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0051
	b       .L80276A84
	sw      $t1, 0x017C($t2)
.L80276A78:
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L80276A84:
	b       .L80276A8C
	nop
.L80276A8C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_callback_80276AA0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t9, 0x0022($sp)
	lui     $at, %hi(math_sin)
	lw      $t7, 0x010C($t6)
	lw      $t4, 0x001C($sp)
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 11
	addu    $t0, $t8, $t9
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f10, 0x00A0($t4)
	mul.s   $f8, $f6, $f4
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t8, 0x0022($sp)
	lui     $at, %hi(math_cos)
	lw      $t6, 0x010C($t5)
	lw      $t3, 0x001C($sp)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 11
	addu    $t9, $t7, $t8
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f10, 0x00A8($t3)
	mul.s   $f4, $f6, $f18
	add.s   $f8, $f10, $f4
	swc1    $f8, 0x00A8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lw      $t5, 0x010C($t4)
	lw      $t6, 0x001C($sp)
	mtc1    $t5, $f16
	lwc1    $f4, 0x00A4($t6)
	cvt.s.w $f6, $f16
	mul.s   $f10, $f6, $f18
	sub.s   $f8, $f4, $f10
	swc1    $f8, 0x00A4($t6)
	b       .L80276BA8
	nop
.L80276BA8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl pl_callback_80276BB8
pl_callback_80276BB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x010C($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x1000
	sw      $t8, 0x0110($t9)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lh      $t1, 0x002E($t0)
	lui     $at, %hi(math_sin)
	lui     $t6, %hi(object)
	addiu   $t2, $t1, -0x4000
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t6, %lo(object)($t6)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A0($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43200000
	mtc1    $at, $f4
	lwc1    $f18, 0x00A4($t7)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A4($t7)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lh      $t9, 0x002E($t8)
	lui     $at, %hi(math_cos)
	lui     $t4, %hi(object)
	addiu   $t0, $t9, -0x4000
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_cos)($at)
	lw      $t4, %lo(object)($t4)
	mul.s   $f16, $f10, $f8
	lwc1    $f18, 0x00A8($t4)
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A8($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x7800
	sw      $t5, 0x00C8($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029F404
	li      $a1, 0x3F000000
	b       .L80276CBC
	nop
.L80276CBC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_callback_80276CCC
pl_callback_80276CCC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x002A($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0110($t8)
	slti    $at, $t9, 0x2400
	beqz    $at, .L80276D14
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0110($t0)
	addiu   $t2, $t1, 0x0060
	sw      $t2, 0x0110($t0)
.L80276D14:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $s0, 0x0108($t3)
	beqz    $s0, .L80276D54
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80276E18
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80276EA4
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L80276F04
	nop
	b       .L80276F40
	nop
.L80276D54:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(pl_callback_80336F54)
	lwc1    $f6, %lo(pl_callback_80336F54)($at)
	lwc1    $f4, 0x00A4($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00C8($t5)
	lw      $t7, 0x0110($t5)
	addu    $t8, $t6, $t7
	sw      $t8, 0x00C8($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x42480000
	mtc1    $at, $f18
	lw      $t1, 0x010C($t9)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	mtc1    $t1, $f10
	move    $a0, $t9
	cvt.s.w $f16, $f10
	div.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	mfc1    $a1, $f8
	jal     obj_lib_8029F404
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t4, %hi(object)
	li      $at, 0x001E
	lw      $t0, 0x010C($t2)
	addiu   $t3, $t0, 0x0001
	sw      $t3, 0x010C($t2)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x010C($t4)
	bne     $t6, $at, .L80276E10
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x010C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t5, 0x0108($t8)
	addiu   $t9, $t5, 0x0001
	sw      $t9, 0x0108($t8)
.L80276E10:
	b       .L80276F40
	nop
.L80276E18:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x00C8($t1)
	lw      $t3, 0x0110($t1)
	addu    $t2, $t0, $t3
	sw      $t2, 0x00C8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $t5, %hi(object)
	li      $at, 0x001E
	lw      $t6, 0x010C($t4)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x010C($t4)
	lw      $t5, %lo(object)($t5)
	lw      $t9, 0x010C($t5)
	bne     $t9, $at, .L80276E9C
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li.u    $a0, 0x701EFF81
	li.l    $a0, 0x701EFF81
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     obj_lib_8029F6BC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x010C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0108($t0)
	addiu   $t2, $t3, 0x0001
	sw      $t2, 0x0108($t0)
.L80276E9C:
	b       .L80276F40
	nop
.L80276EA4:
	jal     pl_callback_80276AA0
	move    $a0, $0
	jal     pl_callback_80276AA0
	li      $a0, -0x8000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $s0, 0x010C($t1)
	lw      $t7, 0x010C($t1)
	xori    $t6, $s0, 0x0014
	sltiu   $t6, $t6, 0x0001
	move    $s0, $t6
	addiu   $t4, $t7, 0x0001
	beqz    $s0, .L80276EFC
	sw      $t4, 0x010C($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x010C($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0108($t9)
	addiu   $t3, $t8, 0x0001
	sw      $t3, 0x0108($t9)
.L80276EFC:
	b       .L80276F40
	nop
.L80276F04:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $s0, 0x010C($t2)
	lw      $t6, 0x010C($t2)
	xori    $t0, $s0, 0x0032
	sltiu   $t0, $t0, 0x0001
	move    $s0, $t0
	addiu   $t7, $t6, 0x0001
	beqz    $s0, .L80276F38
	sw      $t7, 0x010C($t2)
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L80276F38:
	b       .L80276F40
	nop
.L80276F40:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t4, 0x002A($sp)
	lh      $t5, 0x00CA($t1)
	slt     $at, $t5, $t4
	beqz    $at, .L80276F74
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li.u    $a0, 0x30160091
	li.l    $a0, 0x30160091
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80276F74:
	b       .L80276F7C
	nop
.L80276F7C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_callback_80276F90:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $0, 0x0028($sp)
	lh      $t6, 0x0036($sp)
	li      $at, 0x00FF
	bne     $t6, $at, .L80276FE0
	nop
	lw      $t7, 0x0030($sp)
	lh      $t8, 0x0002($t7)
	andi    $t9, $t8, 0x00FF
	ori     $t0, $t9, 0x0100
	sh      $t0, 0x0002($t7)
	jal     gfx_alloc
	li      $a0, 0x0010
	sw      $v0, 0x0028($sp)
	lw      $t1, 0x0028($sp)
	b       .L80277034
	sw      $t1, 0x002C($sp)
.L80276FE0:
	lw      $t2, 0x0030($sp)
	lh      $t3, 0x0002($t2)
	andi    $t4, $t3, 0x00FF
	ori     $t5, $t4, 0x0500
	sh      $t5, 0x0002($t2)
	jal     gfx_alloc
	li      $a0, 0x0018
	sw      $v0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	sw      $t6, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x002C($sp)
	sw      $t8, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	li.u    $t0, 0xB9000002
	li.l    $t0, 0xB9000002
	sw      $t0, 0x0000($t7)
	lw      $t3, 0x0024($sp)
	li      $t1, 0x0003
	sw      $t1, 0x0004($t3)
.L80277034:
	lw      $t4, 0x002C($sp)
	addiu   $t5, $t4, 0x0008
	sw      $t5, 0x002C($sp)
	sw      $t4, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $t2, 0xFB000000
	sw      $t2, 0x0000($t6)
	lh      $t8, 0x0036($sp)
	lw      $t7, 0x0020($sp)
	li      $at, -0x0100
	andi    $t9, $t8, 0x00FF
	or      $t0, $t9, $at
	sw      $t0, 0x0004($t7)
	lw      $t1, 0x002C($sp)
	sw      $t1, 0x001C($sp)
	lw      $t4, 0x001C($sp)
	li      $t3, 0xB8000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x001C($sp)
	sw      $0, 0x0004($t5)
	b       .L80277094
	lw      $v0, 0x0028($sp)
	b       .L80277094
	nop
.L80277094:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl s_player_alpha
s_player_alpha:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $0, 0x0028($sp)
	lw      $t6, 0x0034($sp)
	sw      $t6, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	la.u    $t0, pl_shape_data
	la.l    $t0, pl_shape_data
	lw      $t8, 0x0018($t7)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t1, $t9, $t0
	sw      $t1, 0x0020($sp)
	lw      $t2, 0x0030($sp)
	li      $at, 0x0001
	bne     $t2, $at, .L80277130
	nop
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x0008($t3)
	andi    $t5, $t4, 0x0100
	beqz    $t5, .L80277118
	nop
	andi    $t6, $t4, 0x00FF
	b       .L80277120
	sh      $t6, 0x001E($sp)
.L80277118:
	li      $t7, 0x00FF
	sh      $t7, 0x001E($sp)
.L80277120:
	lw      $a0, 0x0024($sp)
	jal     pl_callback_80276F90
	lh      $a1, 0x001E($sp)
	sw      $v0, 0x0028($sp)
.L80277130:
	b       .L80277140
	lw      $v0, 0x0028($sp)
	b       .L80277140
	nop
.L80277140:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl s_player_select_lod
s_player_select_lod:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a1, 0x0004($sp)
	lw      $t6, 0x0004($sp)
	la.u    $t9, pl_shape_data
	la.l    $t9, pl_shape_data
	lh      $t7, 0x001C($t6)
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 3
	addu    $t0, $t8, $t9
	sw      $t0, 0x0000($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L802771A4
	nop
	lw      $t1, 0x0000($sp)
	lw      $t5, 0x0004($sp)
	lw      $t2, 0x0000($t1)
	andi    $t3, $t2, 0x0200
	sltiu   $t4, $t3, 0x0001
	sh      $t4, 0x001E($t5)
.L802771A4:
	b       .L802771B4
	move    $v0, $0
	b       .L802771B4
	nop
.L802771B4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl s_player_select_eye
s_player_select_eye:
	addiu   $sp, $sp, -0x0010
	sw      $a2, 0x0018($sp)
	sw      $a1, 0x000C($sp)
	lw      $t6, 0x000C($sp)
	la.u    $t9, pl_shape_data
	la.l    $t9, pl_shape_data
	lh      $t7, 0x001C($t6)
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 3
	addu    $t0, $t8, $t9
	sw      $t0, 0x0008($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L8027727C
	nop
	lw      $t1, 0x0008($sp)
	lb      $t2, 0x0005($t1)
	bnez    $t2, .L80277268
	nop
	lw      $t3, 0x000C($sp)
	lui     $t6, %hi(draw_timer)
	lhu     $t6, %lo(draw_timer)($t6)
	lh      $t4, 0x001C($t3)
	sll     $t5, $t4, 5
	addu    $t7, $t5, $t6
	sra     $t8, $t7, 1
	andi    $t9, $t8, 0x001F
	sh      $t9, 0x0006($sp)
	lh      $t0, 0x0006($sp)
	slti    $at, $t0, 0x0007
	beqz    $at, .L80277258
	nop
	lh      $t1, 0x0006($sp)
	lui     $t2, %hi(pl_callback_8032DD50)
	lw      $t3, 0x000C($sp)
	addu    $t2, $t2, $t1
	lb      $t2, %lo(pl_callback_8032DD50)($t2)
	b       .L80277260
	sh      $t2, 0x001E($t3)
.L80277258:
	lw      $t4, 0x000C($sp)
	sh      $0, 0x001E($t4)
.L80277260:
	b       .L8027727C
	nop
.L80277268:
	lw      $t5, 0x0008($sp)
	lw      $t8, 0x000C($sp)
	lb      $t6, 0x0005($t5)
	addiu   $t7, $t6, -0x0001
	sh      $t7, 0x001E($t8)
.L8027727C:
	b       .L8027728C
	move    $v0, $0
	b       .L8027728C
	nop
.L8027728C:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl s_player_ang_torso
s_player_ang_torso:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x002C($sp)
	sw      $t6, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	la.u    $t0, pl_shape_data
	la.l    $t0, pl_shape_data
	lw      $t8, 0x0018($t7)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t1, $t9, $t0
	sw      $t1, 0x0020($sp)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0000($t2)
	sw      $t3, 0x001C($sp)
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	bne     $t4, $at, .L80277384
	nop
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x0008($t5)
	sw      $t6, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	li.u    $at, 0x00840452
	li.l    $at, 0x00840452
	beq     $t7, $at, .L80277354
	nop
	li.u    $at, 0x00840454
	li.l    $at, 0x00840454
	beq     $t7, $at, .L80277354
	nop
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	beq     $t7, $at, .L80277354
	nop
	li.u    $at, 0x20810446
	li.l    $at, 0x20810446
	beq     $t7, $at, .L80277354
	nop
	lw      $a0, 0x0020($sp)
	la.u    $a1, vecs_0
	la.l    $a1, vecs_0
	jal     vecs_cpy
	addiu   $a0, $a0, 0x000C
.L80277354:
	lw      $t8, 0x0020($sp)
	lw      $t0, 0x0018($sp)
	lh      $t9, 0x000E($t8)
	sh      $t9, 0x0018($t0)
	lw      $t1, 0x0020($sp)
	lw      $t3, 0x0018($sp)
	lh      $t2, 0x0010($t1)
	sh      $t2, 0x001A($t3)
	lw      $t4, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lh      $t5, 0x000C($t4)
	sh      $t5, 0x001C($t6)
.L80277384:
	b       .L80277394
	move    $v0, $0
	b       .L80277394
	nop
.L80277394:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl s_player_ang_head
s_player_ang_head:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lw      $t6, 0x0034($sp)
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	la.u    $t0, pl_shape_data
	la.l    $t0, pl_shape_data
	lw      $t8, 0x0018($t7)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t1, $t9, $t0
	sw      $t1, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0000($t2)
	sw      $t3, 0x0024($sp)
	lw      $t4, 0x0030($sp)
	li      $at, 0x0001
	bne     $t4, $at, .L802774D4
	nop
	lw      $t5, 0x0034($sp)
	lw      $t6, 0x0008($t5)
	sw      $t6, 0x0020($sp)
	lui     $t7, %hi(shape_camera)
	lw      $t7, %lo(shape_camera)($t7)
	lw      $t8, 0x0018($t7)
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $at, 0x0006
	lbu     $t0, 0x0000($t9)
	bne     $t0, $at, .L8027745C
	nop
	la.u    $t1, _camera_bss+0x00
	la.l    $t1, _camera_bss+0x00
	lh      $t2, 0x0018($t1)
	lw      $t3, 0x0020($sp)
	sh      $t2, 0x0018($t3)
	la.u    $t4, _camera_bss+0x00
	la.l    $t4, _camera_bss+0x00
	lh      $t5, 0x0016($t4)
	lw      $t6, 0x0020($sp)
	b       .L802774D4
	sh      $t5, 0x001C($t6)
.L8027745C:
	lw      $t7, 0x0024($sp)
	li      $at, 0x20000000
	and     $t8, $t7, $at
	beqz    $t8, .L802774A4
	nop
	lw      $t9, 0x0028($sp)
	lw      $t1, 0x0020($sp)
	lh      $t0, 0x0014($t9)
	sh      $t0, 0x0018($t1)
	lw      $t2, 0x0028($sp)
	lw      $t4, 0x0020($sp)
	lh      $t3, 0x0016($t2)
	sh      $t3, 0x001A($t4)
	lw      $t5, 0x0028($sp)
	lw      $t7, 0x0020($sp)
	lh      $t6, 0x0012($t5)
	b       .L802774D4
	sh      $t6, 0x001C($t7)
.L802774A4:
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0012
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0018
.L802774D4:
	b       .L802774E4
	move    $v0, $0
	b       .L802774E4
	nop
.L802774E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl s_player_select_glove
s_player_select_glove:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a1, 0x0004($sp)
	la.u    $t6, pl_shape_data
	la.l    $t6, pl_shape_data
	sw      $t6, 0x0000($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L802775B4
	nop
	lw      $t7, 0x0000($sp)
	lb      $t8, 0x0006($t7)
	bnez    $t8, .L80277548
	nop
	lw      $t9, 0x0000($sp)
	li      $at, 0x10000000
	lw      $t3, 0x0004($sp)
	lw      $t0, 0x0000($t9)
	and     $t1, $t0, $at
	sltu    $t2, $0, $t1
	b       .L802775B4
	sh      $t2, 0x001E($t3)
.L80277548:
	lw      $t4, 0x0004($sp)
	lh      $t5, 0x001C($t4)
	bnez    $t5, .L8027758C
	nop
	lw      $t6, 0x0000($sp)
	lb      $t7, 0x0006($t6)
	slti    $at, $t7, 0x0005
	beqz    $at, .L80277578
	nop
	lw      $t8, 0x0004($sp)
	b       .L80277584
	sh      $t7, 0x001E($t8)
.L80277578:
	lw      $t0, 0x0004($sp)
	li      $t9, 0x0001
	sh      $t9, 0x001E($t0)
.L80277584:
	b       .L802775B4
	nop
.L8027758C:
	lw      $t1, 0x0000($sp)
	lb      $t2, 0x0006($t1)
	slti    $at, $t2, 0x0002
	beqz    $at, .L802775AC
	nop
	lw      $t3, 0x0004($sp)
	b       .L802775B4
	sh      $t2, 0x001E($t3)
.L802775AC:
	lw      $t4, 0x0004($sp)
	sh      $0, 0x001E($t4)
.L802775B4:
	b       .L802775C4
	move    $v0, $0
	b       .L802775C4
	nop
.L802775C4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl s_player_scale
s_player_scale:
	addiu   $sp, $sp, -0x0010
	sw      $a2, 0x0018($sp)
	sw      $a1, 0x000C($sp)
	lw      $t6, 0x0008($a1)
	sw      $t6, 0x0008($sp)
	la.u    $t7, pl_shape_data
	la.l    $t7, pl_shape_data
	sw      $t7, 0x0004($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L802776C0
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t8, 0x0008($sp)
	swc1    $f4, 0x0018($t8)
	lw      $t1, 0x0004($sp)
	lw      $t9, 0x000C($sp)
	lbu     $t2, 0x000B($t1)
	lw      $t0, 0x0018($t9)
	sra     $t3, $t2, 6
	bne     $t0, $t3, .L802776C0
	nop
	lui     $t4, %hi(pl_callback_8032DD6C)
	lui     $t5, %hi(draw_timer)
	lhu     $t5, %lo(draw_timer)($t5)
	lh      $t4, %lo(pl_callback_8032DD6C)($t4)
	beq     $t4, $t5, .L80277670
	nop
	lw      $t6, 0x0004($sp)
	lbu     $t7, 0x000B($t6)
	andi    $t8, $t7, 0x003F
	blez    $t8, .L80277670
	nop
	lw      $t9, 0x0004($sp)
	lbu     $t1, 0x000B($t9)
	addiu   $t2, $t1, -0x0001
	sb      $t2, 0x000B($t9)
	lui     $t0, %hi(draw_timer)
	lhu     $t0, %lo(draw_timer)($t0)
	lui     $at, %hi(pl_callback_8032DD6C)
	sh      $t0, %lo(pl_callback_8032DD6C)($at)
.L80277670:
	lw      $t3, 0x000C($sp)
	lw      $t6, 0x0004($sp)
	lui     $t2, %hi(pl_callback_8032DD58)
	lw      $t4, 0x0018($t3)
	lbu     $t7, 0x000B($t6)
	li      $at, 0x41200000
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 1
	andi    $t8, $t7, 0x003F
	addu    $t1, $t5, $t8
	addu    $t2, $t2, $t1
	lb      $t2, %lo(pl_callback_8032DD58)($t2)
	mtc1    $at, $f10
	lw      $t9, 0x0008($sp)
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x0018($t9)
.L802776C0:
	b       .L802776D0
	move    $v0, $0
	b       .L802776D0
	nop
.L802776D0:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl s_player_select_cap
s_player_select_cap:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a1, 0x0004($sp)
	lw      $t6, 0x0004($sp)
	la.u    $t9, pl_shape_data
	la.l    $t9, pl_shape_data
	lh      $t7, 0x001C($t6)
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 3
	addu    $t0, $t8, $t9
	sw      $t0, 0x0000($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L80277728
	nop
	lw      $t1, 0x0000($sp)
	lw      $t4, 0x0004($sp)
	lh      $t2, 0x0008($t1)
	sra     $t3, $t2, 8
	sh      $t3, 0x001E($t4)
.L80277728:
	b       .L80277738
	move    $v0, $0
	b       .L80277738
	nop
.L80277738:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl s_player_select_head
s_player_select_head:
	addiu   $sp, $sp, -0x0010
	sw      $a2, 0x0018($sp)
	lw      $t6, 0x0008($a1)
	sw      $t6, 0x000C($sp)
	sw      $a1, 0x0008($sp)
	lw      $t7, 0x0008($sp)
	la.u    $t0, pl_shape_data
	la.l    $t0, pl_shape_data
	lh      $t8, 0x001C($t7)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t1, $t9, $t0
	sw      $t1, 0x0004($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L8027780C
	nop
	lw      $t2, 0x0004($sp)
	lw      $t5, 0x0008($sp)
	lb      $t3, 0x0004($t2)
	andi    $t4, $t3, 0x0001
	sh      $t4, 0x001E($t5)
	lw      $t6, 0x000C($sp)
	beq     $t6, $a1, .L8027780C
	nop
.L802777A4:
	lw      $t7, 0x000C($sp)
	li      $at, 0x0015
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, .L802777F4
	nop
	lw      $t9, 0x0004($sp)
	lb      $t0, 0x0004($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L802777E0
	nop
	lw      $t2, 0x000C($sp)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0001
	b       .L802777F4
	sh      $t4, 0x0002($t2)
.L802777E0:
	lw      $t5, 0x000C($sp)
	li      $at, -0x0002
	lh      $t6, 0x0002($t5)
	and     $t7, $t6, $at
	sh      $t7, 0x0002($t5)
.L802777F4:
	lw      $t8, 0x000C($sp)
	lw      $t9, 0x0008($t8)
	sw      $t9, 0x000C($sp)
	lw      $t0, 0x000C($sp)
	bne     $t0, $a1, .L802777A4
	nop
.L8027780C:
	b       .L8027781C
	move    $v0, $0
	b       .L8027781C
	nop
.L8027781C:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl s_player_ang_wing
s_player_ang_wing:
	addiu   $sp, $sp, -0x0010
	sw      $a2, 0x0018($sp)
	sw      $a1, 0x0008($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L80277944
	nop
	lw      $t6, 0x0008($a1)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0008($sp)
	lui     $t1, %hi(pl_shape_data+0x07)
	lw      $t8, 0x0018($t7)
	srl     $t9, $t8, 1
	sll     $t0, $t9, 2
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t1, $t1, $t0
	lb      $t1, %lo(pl_shape_data+0x07)($t1)
	bnez    $t1, .L802778C0
	nop
	lui     $t2, %hi(draw_timer)
	lhu     $t2, %lo(draw_timer)($t2)
	lui     $at, %hi(math_cos)
	andi    $t3, $t2, 0x000F
	sll     $t4, $t3, 12
	andi    $t5, $t4, 0xFFFF
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	li      $at, 0x45800000
	mtc1    $at, $f10
	add.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	b       .L80277910
	sh      $t9, 0x000E($sp)
.L802778C0:
	lui     $t0, %hi(draw_timer)
	lhu     $t0, %lo(draw_timer)($t0)
	lui     $at, %hi(math_cos)
	andi    $t1, $t0, 0x0007
	sll     $t2, $t1, 13
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	li      $at, 0x45C00000
	mtc1    $at, $f10
	add.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t7, $f18
	nop
	sh      $t7, 0x000E($sp)
.L80277910:
	lw      $t8, 0x0008($sp)
	lw      $t9, 0x0018($t8)
	andi    $t0, $t9, 0x0001
	bnez    $t0, .L80277938
	nop
	lh      $t1, 0x000E($sp)
	lw      $t3, 0x0004($sp)
	subu    $t2, $0, $t1
	b       .L80277944
	sh      $t2, 0x0018($t3)
.L80277938:
	lh      $t4, 0x000E($sp)
	lw      $t5, 0x0004($sp)
	sh      $t4, 0x0018($t5)
.L80277944:
	b       .L80277954
	move    $v0, $0
	b       .L80277954
	nop
.L80277954:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl s_player_hand
s_player_hand:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0034($sp)
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x0038($sp)
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x002C($sp)
	la.u    $t1, player_data
	la.l    $t1, player_data
	lw      $t9, 0x0018($t8)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t2, $t0, $t1
	sw      $t2, 0x0024($sp)
	lw      $t3, 0x0030($sp)
	li      $at, 0x0001
	bne     $t3, $at, .L80277AC0
	nop
	lw      $t4, 0x002C($sp)
	sw      $0, 0x001C($t4)
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x007C($t5)
	beqz    $t6, .L80277AB8
	nop
	lw      $t7, 0x0024($sp)
	lw      $t9, 0x002C($sp)
	lw      $t8, 0x007C($t7)
	sw      $t8, 0x001C($t9)
	lw      $t0, 0x0024($sp)
	li      $at, 0x0001
	lw      $t1, 0x0098($t0)
	lb      $s0, 0x000A($t1)
	beq     $s0, $at, .L80277A20
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80277A78
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L80277A98
	nop
	b       .L80277AB8
	nop
.L80277A20:
	lw      $t2, 0x0024($sp)
	li      $at, 0x80000000
	lw      $t3, 0x000C($t2)
	and     $t4, $t3, $at
	beqz    $t4, .L80277A58
	nop
	lw      $a0, 0x002C($sp)
	li      $a1, 0x0032
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0020
	b       .L80277A70
	nop
.L80277A58:
	lw      $a0, 0x002C($sp)
	li      $a1, 0x0032
	move    $a2, $0
	li      $a3, 0x006E
	jal     vecs_set
	addiu   $a0, $a0, 0x0020
.L80277A70:
	b       .L80277AB8
	nop
.L80277A78:
	lw      $a0, 0x002C($sp)
	li      $a1, 0x0091
	li      $a2, -0x00AD
	li      $a3, 0x00B4
	jal     vecs_set
	addiu   $a0, $a0, 0x0020
	b       .L80277AB8
	nop
.L80277A98:
	lw      $a0, 0x002C($sp)
	li      $a1, 0x0050
	li      $a2, -0x010E
	li      $a3, 0x04EC
	jal     vecs_set
	addiu   $a0, $a0, 0x0020
	b       .L80277AB8
	nop
.L80277AB8:
	b       .L80277AF0
	nop
.L80277AC0:
	lw      $t5, 0x0030($sp)
	li      $at, 0x0005
	bne     $t5, $at, .L80277AF0
	nop
	lw      $t6, 0x0024($sp)
	lui     $t7, %hi(shape_camera)
	lw      $t7, %lo(shape_camera)($t7)
	lw      $a0, 0x0098($t6)
	lw      $a1, 0x0028($sp)
	lw      $a2, 0x0034($t7)
	jal     vecf_untransform
	addiu   $a0, $a0, 0x0018
.L80277AF0:
	b       .L80277B00
	move    $v0, $0
	b       .L80277B00
	nop
.L80277B00:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl s_inside_mirror
s_inside_mirror:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0020($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0030($sp)
	lw      $s0, 0x0038($sp)
	beqz    $s0, .L80277B74
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80277BDC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80277BC8
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L80277BB0
	nop
	b       .L80277D48
	nop
.L80277B74:
	la.u    $t8, vecs_0
	la.u    $t9, vecf_1
	la.l    $t9, vecf_1
	la.l    $t8, vecs_0
	la.u    $a1, shape_object_mirror
	la.u    $a3, vecf_0
	la.l    $a3, vecf_0
	la.l    $a1, shape_object_mirror
	sw      $t8, 0x0010($sp)
	sw      $t9, 0x0014($sp)
	move    $a0, $0
	jal     shape_8037B9E0
	move    $a2, $0
	b       .L80277D48
	nop
.L80277BB0:
	la.u    $a1, shape_object_mirror
	la.l    $a1, shape_object_mirror
	jal     shape_8037C044
	lw      $a0, 0x003C($sp)
	b       .L80277D48
	nop
.L80277BC8:
	la.u    $a0, shape_object_mirror
	jal     shape_8037C0BC
	la.l    $a0, shape_object_mirror
	b       .L80277D48
	nop
.L80277BDC:
	lw      $t0, 0x0030($sp)
	lui     $at, %hi(pl_callback_80336F58)
	lwc1    $f6, %lo(pl_callback_80336F58)($at)
	lwc1    $f4, 0x0020($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80277D28
	nop
	lw      $t1, 0x0030($sp)
	lui     $at, %hi(shape_object_mirror+0x14)
	lw      $t2, 0x0014($t1)
	sw      $t2, %lo(shape_object_mirror+0x14)($at)
	lw      $t3, 0x0030($sp)
	lui     $at, %hi(shape_object_mirror+0x18)
	lb      $t4, 0x0018($t3)
	sb      $t4, %lo(shape_object_mirror+0x18)($at)
	lw      $a1, 0x0030($sp)
	la.u    $a0, shape_object_mirror
	la.l    $a0, shape_object_mirror
	addiu   $a0, $a0, 0x001A
	jal     vecs_cpy
	addiu   $a1, $a1, 0x001A
	lw      $a1, 0x0030($sp)
	la.u    $a0, shape_object_mirror
	la.l    $a0, shape_object_mirror
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0020
	lw      $a1, 0x0030($sp)
	la.u    $a0, shape_object_mirror
	la.l    $a0, shape_object_mirror
	addiu   $a0, $a0, 0x002C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x002C
	lw      $t6, 0x0030($sp)
	la.u    $t5, shape_object_mirror
	la.l    $t5, shape_object_mirror
	lw      $at, 0x0038($t6)
	sw      $at, 0x0038($t5)
	lw      $t9, 0x003C($t6)
	sw      $t9, 0x003C($t5)
	lw      $at, 0x0040($t6)
	sw      $at, 0x0040($t5)
	lw      $t9, 0x0044($t6)
	sw      $t9, 0x0044($t5)
	lw      $at, 0x0048($t6)
	sw      $at, 0x0048($t5)
	la.u    $t0, shape_object_mirror
	la.l    $t0, shape_object_mirror
	lwc1    $f10, 0x0020($t0)
	lui     $at, %hi(pl_callback_80336F60)
	ldc1    $f8, %lo(pl_callback_80336F60)($at)
	cvt.d.s $f16, $f10
	sub.d   $f18, $f8, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0034($sp)
	lwc1    $f6, 0x0034($sp)
	lui     $at, %hi(pl_callback_80336F68)
	ldc1    $f8, %lo(pl_callback_80336F68)($at)
	cvt.d.s $f10, $f6
	la.u    $t1, shape_object_mirror
	add.d   $f16, $f10, $f8
	la.l    $t1, shape_object_mirror
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0020($t1)
	la.u    $t2, shape_object_mirror
	la.l    $t2, shape_object_mirror
	lh      $t3, 0x001C($t2)
	subu    $t4, $0, $t3
	sh      $t4, 0x001C($t2)
	la.u    $t8, shape_object_mirror
	la.l    $t8, shape_object_mirror
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($t8)
	mul.s   $f10, $f4, $f6
	swc1    $f10, 0x002C($t8)
	la.u    $t7, shape_object_mirror
	la.l    $t7, shape_object_mirror
	lh      $t5, 0x0002($t7)
	ori     $t6, $t5, 0x0001
	b       .L80277D40
	sh      $t6, 0x0002($t7)
.L80277D28:
	la.u    $t9, shape_object_mirror
	la.l    $t9, shape_object_mirror
	lh      $t0, 0x0002($t9)
	li      $at, -0x0002
	and     $t1, $t0, $at
	sh      $t1, 0x0002($t9)
.L80277D40:
	b       .L80277D48
	nop
.L80277D48:
	b       .L80277D58
	move    $v0, $0
	b       .L80277D58
	nop
.L80277D58:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl s_player_mirror
s_player_mirror:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	lw      $t6, 0x003C($sp)
	sw      $t6, 0x0034($sp)
	sw      $0, 0x0030($sp)
	lw      $t7, 0x0038($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L80277EB4
	nop
	lui     $t9, %hi(shape_object)
	lw      $t9, %lo(shape_object)($t9)
	la.u    $t8, shape_object_mirror
	la.l    $t8, shape_object_mirror
	bne     $t8, $t9, .L80277EB4
	nop
	jal     gfx_alloc
	li      $a0, 0x0018
	sw      $v0, 0x0030($sp)
	lw      $t0, 0x0034($sp)
	lw      $t1, 0x0018($t0)
	bnez    $t1, .L80277E3C
	nop
	lw      $t2, 0x0030($sp)
	sw      $t2, 0x002C($sp)
	lw      $t4, 0x002C($sp)
	li      $t3, 0xB6000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x002C($sp)
	li      $t5, 0x2000
	sw      $t5, 0x0004($t6)
	lw      $t7, 0x0030($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	li      $t9, 0xB7000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0028($sp)
	li      $t1, 0x1000
	sw      $t1, 0x0004($t2)
	lw      $t3, 0x0030($sp)
	addiu   $t4, $t3, 0x0010
	sw      $t4, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	li      $t5, 0xB8000000
	sw      $t5, 0x0000($t6)
	lw      $t7, 0x0024($sp)
	sw      $0, 0x0004($t7)
	b       .L80277EA0
	nop
.L80277E3C:
	lw      $t8, 0x0030($sp)
	sw      $t8, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	li      $t9, 0xB6000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0020($sp)
	li      $t1, 0x1000
	sw      $t1, 0x0004($t2)
	lw      $t3, 0x0030($sp)
	addiu   $t4, $t3, 0x0008
	sw      $t4, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $t5, 0xB7000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x001C($sp)
	li      $t7, 0x2000
	sw      $t7, 0x0004($t8)
	lw      $t9, 0x0030($sp)
	addiu   $t0, $t9, 0x0010
	sw      $t0, 0x0018($sp)
	lw      $t2, 0x0018($sp)
	li      $t1, 0xB8000000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x0018($sp)
	sw      $0, 0x0004($t3)
.L80277EA0:
	lw      $t4, 0x0034($sp)
	lh      $t5, 0x0002($t4)
	andi    $t6, $t5, 0x00FF
	ori     $t7, $t6, 0x0100
	sh      $t7, 0x0002($t4)
.L80277EB4:
	b       .L80277EC4
	lw      $v0, 0x0030($sp)
	b       .L80277EC4
	nop
.L80277EC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

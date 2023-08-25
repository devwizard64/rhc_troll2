.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl get_objvalue
get_objvalue:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0034($sp)
	nop
	addu    $t8, $t6, $t7
	sw      $t8, 0x0024($sp)
	lw      $s0, 0x002C($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L8018B884
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8018B8A0
	nop
	b       .L8018B8BC
	nop
.L8018B884:
	lw      $t9, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lw      $t0, 0x0000($t9)
	nop
	sw      $t0, 0x0000($t1)
	b       .L8018B8D0
	nop
.L8018B8A0:
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x0028($sp)
	lwc1    $f4, 0x0000($t2)
	nop
	swc1    $f4, 0x0000($t3)
	b       .L8018B8D0
	nop
.L8018B8BC:
	la.u    $a0, str_face_gadget_801B8130
	la.u    $a1, str_face_gadget_801B8148
	la.l    $a1, str_face_gadget_801B8148
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gadget_801B8130
.L8018B8D0:
	b       .L8018B8D8
	nop
.L8018B8D8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_gadget_8018B8E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetInitPos
	addiu   $a0, $sp, 0x001C
	lui     $at, %hi(_face_bss+0x850)
	lwc1    $f6, %lo(_face_bss+0x850)($at)
	lwc1    $f4, 0x001C($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x854)
	lwc1    $f16, %lo(_face_bss+0x854)($at)
	lwc1    $f10, 0x0020($sp)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $at, %hi(_face_bss+0x858)
	lwc1    $f6, %lo(_face_bss+0x858)($at)
	lwc1    $f4, 0x0024($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     dSetWorldPos
	nop
	b       .L8018B96C
	nop
.L8018B96C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_gadget_8018B97C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	sw      $t6, 0x001C($sp)
	la.u    $a1, face_gadget_8018BDF8
	lw      $a2, 0x001C($sp)
	la.l    $a1, face_gadget_8018BDF8
	jal     face_object_8017E520
	li      $a0, 0x2000
	lui     $a2, %hi(_face_bss+0x570)
	lw      $a2, %lo(_face_bss+0x570)($a2)
	la.u    $a1, face_gfx_801A451C
	la.l    $a1, face_gfx_801A451C
	jal     face_object_8017E520
	li      $a0, 0x4000
	b       .L8018B9C8
	nop
.L8018B9C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gadget_8018B9D8:
	addiu   $sp, $sp, -0x0118
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0118($sp)
	lw      $t6, 0x0118($sp)
	li      $at, 0x0001
	lw      $t7, 0x002C($t6)
	nop
	bne     $t7, $at, .L8018BA28
	nop
	lw      $t8, 0x0118($sp)
	la.u    $a1, str_face_gadget_801B8158
	la.l    $a1, str_face_gadget_801B8158
	addiu   $a0, $sp, 0x0018
	addiu   $a2, $t8, 0x0034
	jal     sprintf
	move    $a3, $t8
	la.u    $a0, _face_bss+0x750
	la.l    $a0, _face_bss+0x750
	jal     face_stdio_8018DF6C
	addiu   $a1, $sp, 0x0018
.L8018BA28:
	b       .L8018BA30
	nop
.L8018BA30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0118
	jr      $ra
	nop

face_gadget_8018BA40:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	la.u    $a0, _face_bss+0x750
	la.u    $a1, str_face_gadget_801B8164
	la.l    $a1, str_face_gadget_801B8164
	jal     face_stdio_8018DDD8
	la.l    $a0, _face_bss+0x750
	la.u    $a1, face_gadget_8018B9D8
	lw      $a2, 0x0030($sp)
	la.l    $a1, face_gadget_8018B9D8
	jal     face_object_8017E520
	li      $a0, 0x0001
	la.u    $a0, _face_bss+0x750
	la.u    $a1, face_gadget_8018B97C
	la.l    $a1, face_gadget_8018B97C
	jal     face_gfx_801A4530
	la.l    $a0, _face_bss+0x750
	sw      $v0, 0x0028($sp)
	la.u    $a0, str_face_gadget_801B817C
	la.u    $a1, face_gfx_801A4550
	la.l    $a1, face_gfx_801A4550
	jal     face_gfx_801A4530
	la.l    $a0, str_face_gadget_801B817C
	sw      $v0, 0x0024($sp)
	la.u    $t6, face_gfx_801A4564
	la.u    $t7, gd_exit
	la.l    $t7, gd_exit
	la.l    $t6, face_gfx_801A4564
	la.u    $a0, str_face_gadget_801B81C8
	la.u    $a1, face_object_8017E3F8
	lw      $a2, 0x0028($sp)
	lw      $a3, 0x0024($sp)
	la.l    $a1, face_object_8017E3F8
	la.l    $a0, str_face_gadget_801B81C8
	sw      $t6, 0x0010($sp)
	jal     face_gfx_801A4530
	sw      $t7, 0x0014($sp)
	sw      $v0, 0x002C($sp)
	lw      $v0, 0x002C($sp)
	b       .L8018BAF0
	nop
	b       .L8018BAF0
	nop
.L8018BAF0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl face_gadget_8018BB00
face_gadget_8018BB00:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     make_object
	li      $a0, 0x8000
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	sw      $0, 0x002C($t6)
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x001C($sp)
	nop
	sw      $t7, 0x0028($t8)
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x001C($sp)
	nop
	sw      $t9, 0x0020($t0)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x001C($sp)
	nop
	sw      $t1, 0x0024($t2)
	lw      $t4, 0x001C($sp)
	li      $t3, 0x0004
	sw      $t3, 0x0030($t4)
	lwc1    $f4, 0x002C($sp)
	lw      $t5, 0x001C($sp)
	nop
	swc1    $f4, 0x0014($t5)
	lwc1    $f6, 0x0030($sp)
	lw      $t6, 0x001C($sp)
	nop
	swc1    $f6, 0x0018($t6)
	lwc1    $f8, 0x0034($sp)
	lw      $t7, 0x001C($sp)
	nop
	swc1    $f8, 0x001C($t7)
	lw      $v0, 0x001C($sp)
	b       .L8018BBB0
	nop
	b       .L8018BBB0
	nop
.L8018BBB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gadget_8018BBC0
face_gadget_8018BBC0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	jal     make_object
	li      $a0, 0x2000
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	sw      $0, 0x004C($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t7, 0x001C($sp)
	nop
	swc1    $f4, 0x003C($t7)
	mtc1    $0, $f6
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f6, 0x0038($t8)
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x001C($sp)
	nop
	sw      $t9, 0x0020($t0)
	lw      $t1, 0x001C($sp)
	nop
	sw      $0, 0x005C($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t2, 0x001C($sp)
	nop
	swc1    $f8, 0x0028($t2)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lw      $t3, 0x001C($sp)
	nop
	swc1    $f10, 0x0040($t3)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lw      $t4, 0x001C($sp)
	nop
	swc1    $f16, 0x0044($t4)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lw      $t5, 0x001C($sp)
	nop
	swc1    $f18, 0x0048($t5)
	lw      $v0, 0x001C($sp)
	b       .L8018BC8C
	nop
	b       .L8018BC8C
	nop
.L8018BC8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

set_objvalue:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0034($sp)
	nop
	addu    $t8, $t6, $t7
	sw      $t8, 0x0024($sp)
	lw      $s0, 0x002C($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L8018BCF0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8018BD0C
	nop
	b       .L8018BD28
	nop
.L8018BCF0:
	lw      $t9, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	lw      $t0, 0x0000($t9)
	nop
	sw      $t0, 0x0000($t1)
	b       .L8018BD3C
	nop
.L8018BD0C:
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0024($sp)
	lwc1    $f4, 0x0000($t2)
	nop
	swc1    $f4, 0x0000($t3)
	b       .L8018BD3C
	nop
.L8018BD28:
	la.u    $a0, str_face_gadget_801B8240
	la.u    $a1, str_face_gadget_801B8258
	la.l    $a1, str_face_gadget_801B8258
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gadget_801B8240
.L8018BD3C:
	b       .L8018BD44
	nop
.L8018BD44:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_gadget_8018BD54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	lw      $s0, 0x001C($t6)
	nop
	beq     $s0, $at, .L8018BDB8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8018BD90
	nop
	b       .L8018BDE0
	nop
.L8018BD90:
	lw      $t7, 0x0028($sp)
	lui     $a0, %hi(_face_bss+0x86C)
	lw      $a0, %lo(_face_bss+0x86C)($a0)
	lw      $a2, 0x0014($t7)
	lw      $a3, 0x0018($t7)
	li      $a1, 0x0002
	jal     set_objvalue
	addiu   $a0, $a0, 0x0030
	b       .L8018BDE0
	nop
.L8018BDB8:
	lw      $t8, 0x0028($sp)
	lui     $a0, %hi(_face_bss+0x86C)
	lw      $a0, %lo(_face_bss+0x86C)($a0)
	lw      $a2, 0x0014($t8)
	lw      $a3, 0x0018($t8)
	li      $a1, 0x0001
	jal     set_objvalue
	addiu   $a0, $a0, 0x0030
	b       .L8018BDE0
	nop
.L8018BDE0:
	b       .L8018BDE8
	nop
.L8018BDE8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_gadget_8018BDF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lui     $at, %hi(_face_bss+0x86C)
	sw      $t6, %lo(_face_bss+0x86C)($at)
	lw      $t7, 0x0020($sp)
	la.u    $a1, face_gadget_8018BD54
	lw      $a2, 0x004C($t7)
	la.l    $a1, face_gadget_8018BD54
	jal     face_object_8017E520
	li      $a0, 0x00020000
	b       .L8018BE30
	nop
.L8018BE30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

adjust_gadget:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	li      $at, 0x0001
	lw      $t7, 0x0024($t6)
	nop
	bne     $t7, $at, .L8018BEC4
	nop
	lui     $t8, %hi(_face_bss+0x498)
	lw      $t8, %lo(_face_bss+0x498)($t8)
	lui     $at, %hi(face_gadget_801B82E0+4)
	lwc1    $f4, 0x0048($t8)
	lwc1    $f11, %lo(face_gadget_801B82E0+0)($at)
	lwc1    $f10, %lo(face_gadget_801B82E0+4)($at)
	lw      $t9, 0x0040($sp)
	neg.s   $f6, $f4
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	mtc1    $t9, $f18
	lw      $t0, 0x0038($sp)
	nop
	lwc1    $f8, 0x0028($t0)
	cvt.d.w $f4, $f18
	mul.d   $f6, $f4, $f16
	cvt.d.s $f10, $f8
	add.d   $f18, $f10, $f6
	cvt.s.d $f4, $f18
	b       .L8018BF2C
	swc1    $f4, 0x0028($t0)
.L8018BEC4:
	lw      $t1, 0x0038($sp)
	li      $at, 0x0002
	lw      $t2, 0x0024($t1)
	nop
	bne     $t2, $at, .L8018BF2C
	nop
	lui     $t3, %hi(_face_bss+0x498)
	lw      $t3, %lo(_face_bss+0x498)($t3)
	lui     $at, %hi(face_gadget_801B82E8+4)
	lwc1    $f16, 0x0048($t3)
	lwc1    $f7, %lo(face_gadget_801B82E8+0)($at)
	lwc1    $f6, %lo(face_gadget_801B82E8+4)($at)
	lw      $t4, 0x003C($sp)
	neg.s   $f8, $f16
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f6
	mtc1    $t4, $f4
	lw      $t5, 0x0038($sp)
	nop
	lwc1    $f10, 0x0028($t5)
	cvt.d.w $f16, $f4
	mul.d   $f8, $f16, $f18
	cvt.d.s $f6, $f10
	add.d   $f4, $f6, $f8
	cvt.s.d $f16, $f4
	swc1    $f16, 0x0028($t5)
.L8018BF2C:
	lw      $t6, 0x0038($sp)
	mtc1    $0, $f10
	lwc1    $f18, 0x0028($t6)
	nop
	c.lt.s  $f18, $f10
	nop
	bc1f    .L8018BF5C
	nop
	mtc1    $0, $f6
	lw      $t7, 0x0038($sp)
	b       .L8018BF94
	swc1    $f6, 0x0028($t7)
.L8018BF5C:
	lw      $t8, 0x0038($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f8, 0x0028($t8)
	nop
	c.lt.s  $f4, $f8
	nop
	bc1f    .L8018BF94
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lw      $t9, 0x0038($sp)
	nop
	swc1    $f16, 0x0028($t9)
.L8018BF94:
	lw      $t0, 0x0038($sp)
	nop
	lwc1    $f18, 0x003C($t0)
	lwc1    $f10, 0x0038($t0)
	nop
	sub.s   $f6, $f18, $f10
	swc1    $f6, 0x002C($sp)
	lw      $t1, 0x0038($sp)
	nop
	lw      $t2, 0x004C($t1)
	nop
	beqz    $t2, .L8018C0D0
	nop
	lw      $t3, 0x0038($sp)
	nop
	lw      $t4, 0x004C($t3)
	nop
	lw      $t5, 0x001C($t4)
	nop
	lw      $t6, 0x0008($t5)
	nop
	sw      $t6, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x0001
	lw      $s0, 0x001C($t7)
	nop
	beq     $s0, $at, .L8018C03C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8018C018
	nop
	b       .L8018C0BC
	nop
.L8018C018:
	lw      $t8, 0x0038($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f8, 0x0028($t8)
	lwc1    $f18, 0x0038($t8)
	mul.s   $f16, $f8, $f4
	add.s   $f10, $f16, $f18
	swc1    $f10, 0x0030($t8)
	b       .L8018C0D0
	nop
.L8018C03C:
	lw      $t9, 0x0038($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f6, 0x0028($t9)
	nop
	mul.s   $f4, $f6, $f8
	lwc1    $f6, 0x0038($t9)
	cfc1    $t0, $31
	nop
	ori     $at, $t0, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f16, $f4
	mfc1    $t1, $f16
	ctc1    $t0, $31
	mtc1    $t1, $f18
	nop
	cvt.s.w $f10, $f18
	add.s   $f8, $f10, $f6
	cfc1    $t2, $31
	nop
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f4, $f8
	mfc1    $t3, $f4
	ctc1    $t2, $31
	sw      $t3, 0x0030($t9)
	nop
	b       .L8018C0D0
	nop
.L8018C0BC:
	la.u    $a0, str_face_gadget_801B8268
	la.u    $a1, str_face_gadget_801B8280
	la.l    $a1, str_face_gadget_801B8280
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gadget_801B8268
.L8018C0D0:
	lw      $a0, 0x0038($sp)
	jal     face_gadget_8018BDF8
	nop
	b       .L8018C0E4
	nop
.L8018C0E4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

.globl reset_gadget
reset_gadget:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0040($sp)
	sw      $s0, 0x0020($sp)
	lw      $t6, 0x0040($sp)
	mtc1    $0, $f10
	lwc1    $f4, 0x003C($t6)
	lwc1    $f6, 0x0038($t6)
	nop
	sub.s   $f8, $f4, $f6
	c.eq.s  $f8, $f10
	nop
	bc1f    .L8018C15C
	nop
	lw      $t7, 0x0040($sp)
	la.u    $a0, str_face_gadget_801B8290
	lwc1    $f16, 0x0038($t7)
	lwc1    $f4, 0x003C($t7)
	cvt.d.s $f18, $f16
	mfc1    $a3, $f18
	mfc1    $a2, $f19
	cvt.d.s $f6, $f4
	swc1    $f6, 0x0014($sp)
	swc1    $f7, 0x0010($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gadget_801B8290
.L8018C15C:
	lw      $t8, 0x0040($sp)
	li      $at, 0x3FF00000
	lwc1    $f8, 0x003C($t8)
	lwc1    $f10, 0x0038($t8)
	mtc1    $at, $f5
	sub.s   $f16, $f8, $f10
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	nop
	div.d   $f6, $f4, $f18
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0034($sp)
	lw      $t9, 0x0040($sp)
	nop
	lw      $t0, 0x004C($t9)
	nop
	beqz    $t0, .L8018C298
	nop
	lw      $t1, 0x0040($sp)
	nop
	lw      $t2, 0x004C($t1)
	nop
	lw      $t3, 0x001C($t2)
	nop
	lw      $t4, 0x0008($t3)
	nop
	sw      $t4, 0x0030($sp)
	lw      $t5, 0x0030($sp)
	li      $at, 0x0001
	lw      $s0, 0x001C($t5)
	nop
	beq     $s0, $at, .L8018C238
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8018C1F4
	nop
	b       .L8018C284
	nop
.L8018C1F4:
	lw      $t6, 0x0030($sp)
	lw      $a0, 0x0040($sp)
	lw      $a2, 0x0014($t6)
	lw      $a3, 0x0018($t6)
	li      $a1, 0x0002
	jal     get_objvalue
	addiu   $a0, $a0, 0x0030
	lw      $t7, 0x0040($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f10, 0x0030($t7)
	lwc1    $f16, 0x0038($t7)
	nop
	sub.s   $f4, $f10, $f16
	mul.s   $f6, $f4, $f18
	swc1    $f6, 0x0028($t7)
	b       .L8018C298
	nop
.L8018C238:
	lw      $t8, 0x0030($sp)
	lw      $a0, 0x0040($sp)
	lw      $a2, 0x0014($t8)
	lw      $a3, 0x0018($t8)
	li      $a1, 0x0001
	jal     get_objvalue
	addiu   $a0, $a0, 0x0030
	lw      $t9, 0x0040($sp)
	lwc1    $f18, 0x0034($sp)
	lw      $t0, 0x0030($t9)
	lwc1    $f16, 0x0038($t9)
	mtc1    $t0, $f8
	nop
	cvt.s.w $f10, $f8
	sub.s   $f4, $f10, $f16
	mul.s   $f6, $f4, $f18
	swc1    $f6, 0x0028($t9)
	b       .L8018C298
	nop
.L8018C284:
	la.u    $a0, str_face_gadget_801B82B4
	la.u    $a1, str_face_gadget_801B82CC
	la.l    $a1, str_face_gadget_801B82CC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gadget_801B82B4
.L8018C298:
	b       .L8018C2A0
	nop
.L8018C2A0:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

.globl face_gadget_8018C2B0
face_gadget_8018C2B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, reset_gadget
	lw      $a2, 0x0018($sp)
	la.l    $a1, reset_gadget
	jal     face_object_8017E520
	li      $a0, 0x2000
	b       .L8018C2D8
	nop
.L8018C2D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop
	nop
	nop

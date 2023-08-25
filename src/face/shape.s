.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_shape_801973C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(_face_bss+0x1334)
	sw      $0, %lo(_face_bss+0x1334)($at)
	lui     $at, %hi(_face_bss+0x1330)
	sw      $0, %lo(_face_bss+0x1330)($at)
	jal     make_group
	move    $a0, $0
	lui     $at, %hi(_face_bss+0x298)
	sw      $v0, %lo(_face_bss+0x298)($at)
	b       .L801973F0
	nop
.L801973F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl calc_facenormal
calc_facenormal:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0018($sp)
	la.u    $a0, str_face_shape_801B8A80
	jal     face_stdio_8018D560
	la.l    $a0, str_face_shape_801B8A80
	lw      $t6, 0x0060($sp)
	nop
	lw      $t7, 0x0030($t6)
	nop
	slti    $at, $t7, 0x0003
	bnez    $at, .L8019762C
	nop
	lw      $t8, 0x0060($sp)
	nop
	lw      $t9, 0x0034($t8)
	nop
	sw      $t9, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	nop
	lwc1    $f6, 0x0020($t0)
	nop
	swc1    $f6, 0x0050($sp)
	lw      $t1, 0x0028($sp)
	nop
	lwc1    $f8, 0x0024($t1)
	nop
	swc1    $f8, 0x0054($sp)
	lw      $t2, 0x0028($sp)
	nop
	lwc1    $f10, 0x0028($t2)
	nop
	swc1    $f10, 0x0058($sp)
	lw      $t3, 0x0060($sp)
	nop
	lw      $t4, 0x0038($t3)
	nop
	sw      $t4, 0x0024($sp)
	lw      $t5, 0x0024($sp)
	nop
	lwc1    $f16, 0x0020($t5)
	nop
	swc1    $f16, 0x0044($sp)
	lw      $t6, 0x0024($sp)
	nop
	lwc1    $f18, 0x0024($t6)
	nop
	swc1    $f18, 0x0048($sp)
	lw      $t7, 0x0024($sp)
	nop
	lwc1    $f4, 0x0028($t7)
	nop
	swc1    $f4, 0x004C($sp)
	lw      $t8, 0x0060($sp)
	nop
	lw      $t9, 0x003C($t8)
	nop
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	nop
	lwc1    $f6, 0x0020($t0)
	nop
	swc1    $f6, 0x0038($sp)
	lw      $t1, 0x0020($sp)
	nop
	lwc1    $f8, 0x0024($t1)
	nop
	swc1    $f8, 0x003C($sp)
	lw      $t2, 0x0020($sp)
	nop
	lwc1    $f10, 0x0028($t2)
	nop
	swc1    $f10, 0x0040($sp)
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0054($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x004C($sp)
	sub.s   $f4, $f16, $f18
	sub.s   $f10, $f6, $f8
	lwc1    $f6, 0x0058($sp)
	mul.s   $f18, $f4, $f10
	lwc1    $f10, 0x003C($sp)
	sub.s   $f4, $f8, $f6
	sub.s   $f8, $f10, $f16
	lwc1    $f16, 0x0018($sp)
	mul.s   $f6, $f4, $f8
	sub.s   $f10, $f18, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x002C($sp)
	lwc1    $f8, 0x004C($sp)
	lwc1    $f18, 0x0058($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f16, 0x0044($sp)
	sub.s   $f6, $f8, $f18
	sub.s   $f4, $f10, $f16
	lwc1    $f10, 0x0050($sp)
	mul.s   $f18, $f6, $f4
	lwc1    $f4, 0x0040($sp)
	sub.s   $f6, $f16, $f10
	sub.s   $f16, $f4, $f8
	lwc1    $f8, 0x0018($sp)
	mul.s   $f10, $f6, $f16
	sub.s   $f4, $f18, $f10
	mul.s   $f6, $f4, $f8
	swc1    $f6, 0x0030($sp)
	lwc1    $f16, 0x0044($sp)
	lwc1    $f18, 0x0050($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f8, 0x0048($sp)
	sub.s   $f10, $f16, $f18
	sub.s   $f6, $f4, $f8
	lwc1    $f4, 0x0054($sp)
	mul.s   $f18, $f10, $f6
	lwc1    $f6, 0x0038($sp)
	sub.s   $f10, $f8, $f4
	sub.s   $f8, $f6, $f16
	lwc1    $f16, 0x0018($sp)
	mul.s   $f4, $f10, $f8
	sub.s   $f6, $f18, $f4
	mul.s   $f10, $f6, $f16
	swc1    $f10, 0x0034($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x002C
	lwc1    $f8, 0x002C($sp)
	lw      $t3, 0x0060($sp)
	nop
	swc1    $f8, 0x0024($t3)
	lwc1    $f18, 0x0030($sp)
	lw      $t4, 0x0060($sp)
	nop
	swc1    $f18, 0x0028($t4)
	lwc1    $f4, 0x0034($sp)
	lw      $t5, 0x0060($sp)
	nop
	swc1    $f4, 0x002C($t5)
.L8019762C:
	jal     imout
	nop
	b       .L8019763C
	nop
.L8019763C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl face_shape_8019764C
face_shape_8019764C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	jal     make_object
	li      $a0, 0x0100
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, -0x2E2C
	sh      $t6, 0x0038($t7)
	lwc1    $f4, 0x0020($sp)
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f4, 0x0020($t8)
	lwc1    $f6, 0x0024($sp)
	lw      $t9, 0x001C($sp)
	nop
	swc1    $f6, 0x0024($t9)
	lwc1    $f8, 0x0028($sp)
	lw      $t0, 0x001C($sp)
	nop
	swc1    $f8, 0x0028($t0)
	lwc1    $f10, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	swc1    $f10, 0x0014($t1)
	lwc1    $f16, 0x0024($sp)
	lw      $t2, 0x001C($sp)
	nop
	swc1    $f16, 0x0018($t2)
	lwc1    $f18, 0x0028($sp)
	lw      $t3, 0x001C($sp)
	nop
	swc1    $f18, 0x001C($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t4, 0x001C($sp)
	nop
	swc1    $f4, 0x003C($t4)
	lw      $t5, 0x001C($sp)
	nop
	sw      $0, 0x0044($t5)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t6, 0x001C($sp)
	nop
	swc1    $f6, 0x0040($t6)
	mtc1    $0, $f8
	lw      $t7, 0x001C($sp)
	nop
	swc1    $f8, 0x002C($t7)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f10, 0x0030($t8)
	mtc1    $0, $f16
	lw      $t9, 0x001C($sp)
	nop
	swc1    $f16, 0x0034($t9)
	lw      $v0, 0x001C($sp)
	b       .L80197754
	nop
	b       .L80197754
	nop
.L80197754:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl make_face
make_face:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	la.u    $a0, str_face_shape_801B8A90
	jal     face_stdio_8018D560
	la.l    $a0, str_face_shape_801B8A90
	jal     make_object
	li      $a0, 0x0080
	sw      $v0, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	nop
	swc1    $f4, 0x0014($t6)
	lwc1    $f6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	nop
	swc1    $f6, 0x0018($t7)
	lwc1    $f8, 0x0028($sp)
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f8, 0x001C($t8)
	lw      $t9, 0x001C($sp)
	nop
	sw      $0, 0x0030($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, -0x0001
	sw      $t0, 0x0044($t1)
	lw      $t2, 0x001C($sp)
	nop
	sw      $0, 0x0048($t2)
	jal     imout
	nop
	lw      $v0, 0x001C($sp)
	b       .L80197800
	nop
	b       .L80197800
	nop
.L80197800:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_shape_80197810:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     make_object
	li      $a0, 0x0080
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	sw      $0, 0x0030($t6)
	lw      $t7, 0x0020($sp)
	lw      $t9, 0x001C($sp)
	lw      $t8, 0x001C($t7)
	nop
	sw      $t8, 0x0044($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x0048($t1)
	lw      $v0, 0x001C($sp)
	b       .L8019786C
	nop
	b       .L8019786C
	nop
.L8019786C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_shape_8019787C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	nop
	sw      $t6, 0x0034($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	nop
	sw      $t8, 0x0038($t9)
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0018($sp)
	nop
	sw      $t0, 0x003C($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0018($sp)
	nop
	sw      $t2, 0x0040($t3)
	lw      $t5, 0x0018($sp)
	li      $t4, 0x0004
	sw      $t4, 0x0030($t5)
	lw      $a0, 0x0018($sp)
	jal     calc_facenormal
	nop
	b       .L801978F4
	nop
.L801978F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_shape_80197904
face_shape_80197904:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	nop
	sw      $t6, 0x0034($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	nop
	sw      $t8, 0x0038($t9)
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0018($sp)
	nop
	sw      $t0, 0x003C($t1)
	lw      $t3, 0x0018($sp)
	li      $t2, 0x0003
	sw      $t2, 0x0030($t3)
	lw      $a0, 0x0018($sp)
	jal     calc_facenormal
	nop
	b       .L8019796C
	nop
.L8019796C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_shape_8019797C
face_shape_8019797C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	jal     make_object
	li      $a0, 0x0010
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x002C($sp)
	nop
	beqz    $t6, .L801979C0
	nop
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x002C($sp)
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x005C
	b       .L801979D4
	nop
.L801979C0:
	lw      $a0, 0x0024($sp)
	la.u    $a1, str_face_shape_801B8A9C
	la.l    $a1, str_face_shape_801B8A9C
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x005C
.L801979D4:
	lui     $t7, %hi(_face_bss+0x1334)
	lw      $t7, %lo(_face_bss+0x1334)($t7)
	lui     $at, %hi(_face_bss+0x1334)
	addiu   $t8, $t7, 0x0001
	sw      $t8, %lo(_face_bss+0x1334)($at)
	lui     $t9, %hi(_face_bss+0x1330)
	lw      $t9, %lo(_face_bss+0x1330)($t9)
	nop
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0024($sp)
	lui     $at, %hi(_face_bss+0x1330)
	sw      $t0, %lo(_face_bss+0x1330)($at)
	lw      $t1, 0x0020($sp)
	nop
	beqz    $t1, .L80197A34
	nop
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0024($sp)
	nop
	sw      $t2, 0x0018($t3)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x0020($sp)
	nop
	sw      $t4, 0x0014($t5)
.L80197A34:
	lui     $t6, %hi(_face_bss+0x1334)
	lw      $t6, %lo(_face_bss+0x1334)($t6)
	lw      $t7, 0x0024($sp)
	nop
	sw      $t6, 0x0040($t7)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0024($sp)
	nop
	sw      $t8, 0x0044($t9)
	lw      $t0, 0x0024($sp)
	nop
	sw      $0, 0x0038($t0)
	lw      $t1, 0x0024($sp)
	nop
	sw      $0, 0x0034($t1)
	lw      $t2, 0x0024($sp)
	nop
	sw      $0, 0x0048($t2)
	lw      $t3, 0x0024($sp)
	nop
	sw      $0, 0x004C($t3)
	lw      $t4, 0x0024($sp)
	nop
	sw      $0, 0x003C($t4)
	lw      $t5, 0x0024($sp)
	nop
	sw      $0, 0x001C($t5)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t6, 0x0024($sp)
	nop
	swc1    $f4, 0x0058($t6)
	lw      $t7, 0x0024($sp)
	nop
	sw      $0, 0x0020($t7)
	lw      $t8, 0x0024($sp)
	nop
	sw      $0, 0x001C($t8)
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x002C($t9)
	lw      $t0, 0x0024($sp)
	nop
	sw      $0, 0x0030($t0)
	lw      $t1, 0x0024($sp)
	nop
	sw      $0, 0x0050($t1)
	lw      $v0, 0x0024($sp)
	b       .L80197B04
	nop
	b       .L80197B04
	nop
.L80197B04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_shape_80197B14:
	lui     $at, %hi(_face_bss+0x1328)
	sw      $0, %lo(_face_bss+0x1328)($at)
	lui     $t7, %hi(_face_bss+0x1328)
	lw      $t7, %lo(_face_bss+0x1328)($t7)
	lui     $at, %hi(_face_bss+0x1228)
	li      $t6, 0x000D
	addu    $at, $at, $t7
	sb      $t6, %lo(_face_bss+0x1228)($at)
	jr      $ra
	nop
	jr      $ra
	nop

face_shape_80197B44:
	lui     $t6, %hi(_face_bss+0x1328)
	lw      $t6, %lo(_face_bss+0x1328)($t6)
	lui     $v0, %hi(_face_bss+0x1228)
	addu    $v0, $v0, $t6
	lb      $v0, %lo(_face_bss+0x1228)($v0)
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_shape_80197B70:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     face_shape_80197B44
	nop
	bnez    $v0, .L80197B94
	nop
	b       .L80197BC4
	move    $v0, $0
.L80197B94:
	lui     $t6, %hi(_face_bss+0x1328)
	lw      $t6, %lo(_face_bss+0x1328)($t6)
	lui     $s0, %hi(_face_bss+0x1228)
	addu    $s0, $s0, $t6
	lb      $s0, %lo(_face_bss+0x1228)($s0)
	lui     $at, %hi(_face_bss+0x1328)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_bss+0x1328)($at)
	b       .L80197BC4
	move    $v0, $s0
	b       .L80197BC4
	nop
.L80197BC4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_shape_80197BD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(_face_bss+0x1328)
	sw      $0, %lo(_face_bss+0x1328)($at)
	lui     $a0, %hi(_face_bss+0x132C)
	lw      $a0, %lo(_face_bss+0x132C)($a0)
	jal     face_stdio_8018E128
	nop
	beqz    $v0, .L80197C14
	nop
	lui     $t6, %hi(_face_bss+0x1328)
	lw      $t6, %lo(_face_bss+0x1328)($t6)
	lui     $at, %hi(_face_bss+0x1228)
	addu    $at, $at, $t6
	b       .L80197C2C
	sb      $0, %lo(_face_bss+0x1228)($at)
.L80197C14:
	lui     $a2, %hi(_face_bss+0x132C)
	lw      $a2, %lo(_face_bss+0x132C)($a2)
	la.u    $a0, _face_bss+0x1228
	la.l    $a0, _face_bss+0x1228
	jal     face_stdio_8018E518
	li      $a1, 0x00FF
.L80197C2C:
	jal     face_shape_80197B44
	nop
	b       .L80197C44
	nop
	b       .L80197C44
	nop
.L80197C44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_80197C54:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	xori    $v0, $a0, 0x000D
	sltiu   $v0, $v0, 0x0001
	bnez    $v0, .L80197C74
	nop
	xori    $v0, $a0, 0x000A
	sltiu   $v0, $v0, 0x0001
.L80197C74:
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_shape_80197C8C:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	xori    $v0, $a0, 0x0020
	sltiu   $v0, $v0, 0x0001
	bnez    $v0, .L80197CAC
	nop
	xori    $v0, $a0, 0x0009
	sltiu   $v0, $v0, 0x0001
.L80197CAC:
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_shape_80197CC4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_shape_80197B44
	nop
	sb      $v0, 0x001F($sp)
	lb      $t6, 0x001F($sp)
	nop
	beqz    $t6, .L80197D84
	nop
.L80197CE8:
	lb      $a0, 0x001F($sp)
	jal     face_shape_80197C8C
	nop
	beqz    $v0, .L80197D0C
	nop
	jal     face_shape_80197B70
	nop
	b       .L80197D68
	nop
.L80197D0C:
	lb      $t7, 0x001F($sp)
	li      $at, 0x001A
	bne     $t7, $at, .L80197D2C
	nop
	b       .L80197DA0
	move    $v0, $0
	b       .L80197D68
	nop
.L80197D2C:
	lb      $a0, 0x001F($sp)
	jal     face_shape_80197C54
	nop
	beqz    $v0, .L80197D60
	nop
	jal     face_shape_80197BD4
	nop
	bnez    $v0, .L80197D58
	nop
	b       .L80197DA0
	move    $v0, $0
.L80197D58:
	b       .L80197D68
	nop
.L80197D60:
	b       .L80197D84
	nop
.L80197D68:
	jal     face_shape_80197B44
	nop
	sb      $v0, 0x001F($sp)
	lb      $t8, 0x001F($sp)
	nop
	bnez    $t8, .L80197CE8
	nop
.L80197D84:
	lb      $v0, 0x001F($sp)
	nop
	sltu    $t9, $0, $v0
	b       .L80197DA0
	move    $v0, $t9
	b       .L80197DA0
	nop
.L80197DA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_shape_80197DB0:
	addiu   $sp, $sp, -0x0120
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0120($sp)
	sw      $0, 0x001C($sp)
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x011F($sp)
	lb      $t6, 0x011F($sp)
	nop
	beqz    $t6, .L80197E50
	nop
.L80197DDC:
	lb      $a0, 0x011F($sp)
	jal     face_shape_80197C8C
	nop
	bnez    $v0, .L80197E04
	nop
	lb      $a0, 0x011F($sp)
	jal     face_shape_80197C54
	nop
	beqz    $v0, .L80197E14
	nop
.L80197E04:
	b       .L80197E50
	nop
	b       .L80197E34
	nop
.L80197E14:
	lw      $t8, 0x001C($sp)
	lb      $t7, 0x011F($sp)
	addu    $t9, $sp, $t8
	sb      $t7, 0x0020($t9)
	lw      $t0, 0x001C($sp)
	nop
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x001C($sp)
.L80197E34:
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x011F($sp)
	lb      $t2, 0x011F($sp)
	nop
	bnez    $t2, .L80197DDC
	nop
.L80197E50:
	lw      $t3, 0x001C($sp)
	nop
	addu    $t4, $sp, $t3
	sb      $0, 0x0020($t4)
	lw      $a0, 0x0120($sp)
	jal     face_stdio_8018DFF0
	addiu   $a1, $sp, 0x0020
	sltiu   $t5, $v0, 0x0001
	b       .L80197E80
	move    $v0, $t5
	b       .L80197E80
	nop
.L80197E80:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0120
	jr      $ra
	nop

getfloat:
	addiu   $sp, $sp, -0x0140
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0140($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, str_face_shape_801B8AA4
	jal     face_stdio_8018D560
	la.l    $a0, str_face_shape_801B8AA4
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t6, $s0, 24
	move    $s0, $t6
	jal     face_shape_80197C54
	move    $a0, $s0
	beqz    $v0, .L80197EDC
	nop
	la.u    $a0, str_face_shape_801B8AB0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8AB0
.L80197EDC:
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t7, $s0, 24
	move    $s0, $t7
	jal     face_shape_80197C8C
	move    $a0, $s0
	beqz    $v0, .L80197F2C
	nop
.L80197F00:
	jal     face_shape_80197B70
	nop
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t8, $s0, 24
	move    $s0, $t8
	jal     face_shape_80197C8C
	move    $a0, $s0
	bnez    $v0, .L80197F00
	nop
.L80197F2C:
	sw      $0, 0x003C($sp)
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x003B($sp)
	lb      $t9, 0x003B($sp)
	nop
	beqz    $t9, .L80197FBC
	nop
.L80197F4C:
	lb      $a0, 0x003B($sp)
	jal     face_shape_80197C8C
	nop
	bnez    $v0, .L80197F98
	nop
	lb      $a0, 0x003B($sp)
	jal     face_shape_80197C54
	nop
	bnez    $v0, .L80197F98
	nop
	lw      $t1, 0x003C($sp)
	lb      $t0, 0x003B($sp)
	addu    $t2, $sp, $t1
	sb      $t0, 0x0040($t2)
	lw      $t3, 0x003C($sp)
	nop
	addiu   $t4, $t3, 0x0001
	b       .L80197FA0
	sw      $t4, 0x003C($sp)
.L80197F98:
	b       .L80197FBC
	nop
.L80197FA0:
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x003B($sp)
	lb      $t5, 0x003B($sp)
	nop
	bnez    $t5, .L80197F4C
	nop
.L80197FBC:
	lw      $t6, 0x003C($sp)
	nop
	addu    $t7, $sp, $t6
	sb      $0, 0x0040($t7)
	addiu   $a0, $sp, 0x0040
	jal     face_stdio_8018D948
	addiu   $a1, $sp, 0x0034
	swc1    $f1, 0x0028($sp)
	swc1    $f0, 0x002C($sp)
	lwc1    $f5, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	lw      $t8, 0x0140($sp)
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0000($t8)
	jal     imout
	nop
	lw      $v0, 0x003C($sp)
	nop
	sltu    $t9, $0, $v0
	b       .L80198018
	move    $v0, $t9
	b       .L80198018
	nop
.L80198018:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0140

getint:
	addiu   $sp, $sp, -0x0128
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0128($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, str_face_shape_801B8ACC
	jal     face_stdio_8018D560
	la.l    $a0, str_face_shape_801B8ACC
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t6, $s0, 24
	move    $s0, $t6
	jal     face_shape_80197C54
	move    $a0, $s0
	beqz    $v0, .L80198074
	nop
	la.u    $a0, str_face_shape_801B8AD4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8AD4
.L80198074:
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t7, $s0, 24
	move    $s0, $t7
	jal     face_shape_80197C8C
	move    $a0, $s0
	beqz    $v0, .L801980C4
	nop
.L80198098:
	jal     face_shape_80197B70
	nop
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t8, $s0, 24
	move    $s0, $t8
	jal     face_shape_80197C8C
	move    $a0, $s0
	bnez    $v0, .L80198098
	nop
.L801980C4:
	sw      $0, 0x0024($sp)
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x0023($sp)
	lb      $t9, 0x0023($sp)
	nop
	beqz    $t9, .L80198150
	nop
.L801980E4:
	lb      $a0, 0x0023($sp)
	jal     face_shape_80197C8C
	nop
	bnez    $v0, .L8019810C
	nop
	lb      $a0, 0x0023($sp)
	jal     face_shape_80197C54
	nop
	beqz    $v0, .L80198114
	nop
.L8019810C:
	b       .L80198150
	nop
.L80198114:
	lw      $t1, 0x0024($sp)
	lb      $t0, 0x0023($sp)
	addu    $t2, $sp, $t1
	sb      $t0, 0x0028($t2)
	lw      $t3, 0x0024($sp)
	nop
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0024($sp)
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x0023($sp)
	lb      $t5, 0x0023($sp)
	nop
	bnez    $t5, .L801980E4
	nop
.L80198150:
	lw      $t6, 0x0024($sp)
	nop
	addu    $t7, $sp, $t6
	sb      $0, 0x0028($t7)
	jal     gd_atoi
	addiu   $a0, $sp, 0x0028
	lw      $t8, 0x0128($sp)
	nop
	sw      $v0, 0x0000($t8)
	jal     imout
	nop
	lw      $v0, 0x0024($sp)
	nop
	sltu    $t9, $0, $v0
	b       .L80198198
	move    $v0, $t9
	b       .L80198198
	nop
.L80198198:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0128

face_shape_801981A8:
	swc1    $f12, 0x0000($sp)
	b       .L801981B4
	nop
.L801981B4:
	jr      $ra
	nop

face_shape_801981BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x1340)
	lwc1    $f12, %lo(_face_bss+0x1340)($at)
	addiu   $a1, $t6, 0x0024
	jal     face_math_801949C0
	addiu   $a2, $t6, 0x0028
	lw      $t7, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x1344)
	lwc1    $f12, %lo(_face_bss+0x1344)($at)
	addiu   $a1, $t7, 0x0020
	jal     face_math_801949C0
	addiu   $a2, $t7, 0x0028
	lw      $t8, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x1348)
	lwc1    $f12, %lo(_face_bss+0x1348)($at)
	addiu   $a1, $t8, 0x0020
	jal     face_math_801949C0
	addiu   $a2, $t8, 0x0024
	b       .L80198218
	nop
.L80198218:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_80198228:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x1340)
	lwc1    $f12, %lo(_face_bss+0x1340)($at)
	addiu   $a1, $t6, 0x0004
	jal     face_math_801949C0
	addiu   $a2, $t6, 0x0008
	lw      $t7, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x1344)
	lwc1    $f12, %lo(_face_bss+0x1344)($at)
	move    $a1, $t7
	jal     face_math_801949C0
	addiu   $a2, $t7, 0x0008
	lw      $t8, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x1348)
	lwc1    $f12, %lo(_face_bss+0x1348)($at)
	move    $a1, $t8
	jal     face_math_801949C0
	addiu   $a2, $t8, 0x0004
	b       .L80198284
	nop
.L80198284:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_80198294:
	sw      $a2, 0x0008($sp)
	lui     $at, %hi(_face_bss+0x1340)
	swc1    $f12, %lo(_face_bss+0x1340)($at)
	lui     $at, %hi(_face_bss+0x1344)
	swc1    $f14, %lo(_face_bss+0x1344)($at)
	lwc1    $f4, 0x0008($sp)
	lui     $at, %hi(_face_bss+0x1348)
	swc1    $f4, %lo(_face_bss+0x1348)($at)
	b       .L801982BC
	nop
.L801982BC:
	jr      $ra
	nop

face_shape_801982C4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lwc1    $f4, 0x002C($sp)
	nop
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x0030($sp)
	nop
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0034($sp)
	nop
	swc1    $f8, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	la.u    $a1, face_shape_801981BC
	lw      $a2, 0x0020($t6)
	la.l    $a1, face_shape_801981BC
	jal     face_object_8017E520
	li      $a0, 0x0100
	b       .L80198320
	nop
.L80198320:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_shape_80198330:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	lw      $t7, 0x000C($t6)
	nop
	bne     $t7, $at, .L8019835C
	nop
	b       .L801983E8
	nop
.L8019835C:
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetRelPos
	addiu   $a0, $sp, 0x001C
	lui     $at, %hi(_face_bss+0x1398)
	lwc1    $f6, %lo(_face_bss+0x1398)($at)
	lwc1    $f4, 0x001C($sp)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x139C)
	lwc1    $f16, %lo(_face_bss+0x139C)($at)
	lwc1    $f10, 0x0020($sp)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $at, %hi(_face_bss+0x13A0)
	lwc1    $f6, %lo(_face_bss+0x13A0)($at)
	lwc1    $f4, 0x0024($sp)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     dSetRelPos
	nop
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     dSetInitPos
	nop
	b       .L801983E8
	nop
.L801983E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_shape_801983F8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetRelPos
	addiu   $a0, $sp, 0x001C
	lui     $at, %hi(_face_bss+0x13A8)
	lwc1    $f6, %lo(_face_bss+0x13A8)($at)
	lwc1    $f4, 0x001C($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x13AC)
	lwc1    $f16, %lo(_face_bss+0x13AC)($at)
	lwc1    $f10, 0x0020($sp)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $at, %hi(_face_bss+0x13B0)
	lwc1    $f6, %lo(_face_bss+0x13B0)($at)
	lwc1    $f4, 0x0024($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     dSetRelPos
	nop
	b       .L8019847C
	nop
.L8019847C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_shape_8019848C
face_shape_8019848C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lwc1    $f4, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x1398)
	swc1    $f4, %lo(_face_bss+0x1398)($at)
	lwc1    $f6, 0x0020($sp)
	lui     $at, %hi(_face_bss+0x139C)
	swc1    $f6, %lo(_face_bss+0x139C)($at)
	lwc1    $f8, 0x0024($sp)
	lui     $at, %hi(_face_bss+0x13A0)
	swc1    $f8, %lo(_face_bss+0x13A0)($at)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x0020($t6)
	nop
	beqz    $t7, .L801984FC
	nop
	lw      $t8, 0x0018($sp)
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_shape_80198330
	lw      $a2, 0x0020($t8)
	la.l    $a1, face_shape_80198330
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
.L801984FC:
	b       .L80198504
	nop
.L80198504:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_80198514:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lwc1    $f4, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x13A8)
	swc1    $f4, %lo(_face_bss+0x13A8)($at)
	lwc1    $f6, 0x0020($sp)
	lui     $at, %hi(_face_bss+0x13AC)
	swc1    $f6, %lo(_face_bss+0x13AC)($at)
	lwc1    $f8, 0x0024($sp)
	lui     $at, %hi(_face_bss+0x13B0)
	swc1    $f8, %lo(_face_bss+0x13B0)($at)
	lw      $t6, 0x0018($sp)
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_shape_801983F8
	lw      $a2, 0x0020($t6)
	la.l    $a1, face_shape_801983F8
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
	b       .L80198574
	nop
.L80198574:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_80198584:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_object_8017BE60
	nop
	lw      $t6, 0x0020($sp)
	nop
	lwc1    $f4, 0x0020($t6)
	lwc1    $f8, 0x0024($t6)
	mul.s   $f6, $f4, $f4
	lwc1    $f18, 0x0028($t6)
	mul.s   $f10, $f8, $f8
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f16, $f6, $f10
	add.s   $f8, $f16, $f4
	cvt.d.s $f6, $f8
	swc1    $f6, 0x001C($sp)
	swc1    $f7, 0x0018($sp)
	lwc1    $f11, 0x0018($sp)
	lwc1    $f10, 0x001C($sp)
	mtc1    $0, $f19
	mtc1    $0, $f18
	nop
	c.eq.d  $f10, $f18
	nop
	bc1t    .L8019864C
	nop
	lwc1    $f13, 0x0018($sp)
	lwc1    $f12, 0x001C($sp)
	jal     face_gfx_8019B49C
	nop
	swc1    $f1, 0x0018($sp)
	swc1    $f0, 0x001C($sp)
	lui     $at, %hi(_face_shape_data+0x388+4)
	lwc1    $f5, %lo(_face_shape_data+0x388+0)($at)
	lwc1    $f4, %lo(_face_shape_data+0x388+4)($at)
	lwc1    $f17, 0x0018($sp)
	lwc1    $f16, 0x001C($sp)
	nop
	c.lt.d  $f4, $f16
	nop
	bc1f    .L8019864C
	nop
	lwc1    $f9, 0x0018($sp)
	lwc1    $f8, 0x001C($sp)
	lui     $at, %hi(_face_shape_data+0x388+4)
	swc1    $f9, %lo(_face_shape_data+0x388+0)($at)
	swc1    $f8, %lo(_face_shape_data+0x388+4)($at)
.L8019864C:
	b       .L80198654
	nop
.L80198654:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_shape_80198664:
	lui     $at, %hi(_face_bss+0x1410)
	lwc1    $f6, %lo(_face_bss+0x1410)($at)
	lwc1    $f4, 0x0020($a0)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($a0)
	lui     $at, %hi(_face_bss+0x1414)
	lwc1    $f16, %lo(_face_bss+0x1414)($at)
	lwc1    $f10, 0x0024($a0)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($a0)
	lui     $at, %hi(_face_bss+0x1418)
	lwc1    $f6, %lo(_face_bss+0x1418)($at)
	lwc1    $f4, 0x0028($a0)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($a0)
	lui     $at, %hi(_face_shape_data+0x388+4)
	lwc1    $f10, 0x0020($a0)
	lwc1    $f19, %lo(_face_shape_data+0x388+0)($at)
	lwc1    $f18, %lo(_face_shape_data+0x388+4)($at)
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0020($a0)
	lui     $at, %hi(_face_shape_data+0x388+4)
	lwc1    $f8, 0x0024($a0)
	lwc1    $f17, %lo(_face_shape_data+0x388+0)($at)
	lwc1    $f16, %lo(_face_shape_data+0x388+4)($at)
	cvt.d.s $f10, $f8
	nop
	div.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0024($a0)
	lui     $at, %hi(_face_shape_data+0x388+4)
	lwc1    $f6, 0x0028($a0)
	lwc1    $f11, %lo(_face_shape_data+0x388+0)($at)
	lwc1    $f10, %lo(_face_shape_data+0x388+4)($at)
	cvt.d.s $f8, $f6
	nop
	div.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0028($a0)
	jr      $ra
	nop
	jr      $ra
	nop

face_shape_80198728:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	mtc1    $0, $f5
	mtc1    $0, $f4
	lui     $at, %hi(_face_shape_data+0x388+4)
	swc1    $f5, %lo(_face_shape_data+0x388+0)($at)
	swc1    $f4, %lo(_face_shape_data+0x388+4)($at)
	jal     face_object_8017BDF0
	nop
	lw      $t6, 0x0030($sp)
	la.u    $a1, face_shape_80198584
	lw      $a2, 0x0020($t6)
	la.l    $a1, face_shape_80198584
	jal     face_object_8017E520
	li      $a0, 0x0100
	jal     face_object_8017BFA0
	addiu   $a0, $sp, 0x0018
	lwc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x0024($sp)
	li      $at, 0x40000000
	add.s   $f10, $f6, $f8
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	lui     $at, %hi(_face_bss+0x1410)
	cvt.s.d $f6, $f4
	swc1    $f6, %lo(_face_bss+0x1410)($at)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0028($sp)
	li      $at, 0x40000000
	add.s   $f16, $f8, $f10
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	nop
	div.d   $f6, $f18, $f4
	lui     $at, %hi(_face_bss+0x1414)
	cvt.s.d $f8, $f6
	swc1    $f8, %lo(_face_bss+0x1414)($at)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x002C($sp)
	li      $at, 0x40000000
	add.s   $f18, $f10, $f16
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	nop
	div.d   $f8, $f4, $f6
	lui     $at, %hi(_face_bss+0x1418)
	cvt.s.d $f10, $f8
	swc1    $f10, %lo(_face_bss+0x1418)($at)
	la.u    $a0, str_face_shape_801B8AF8
	la.u    $a1, _face_bss+0x1410
	la.l    $a1, _face_bss+0x1410
	jal     face_math_801970CC
	la.l    $a0, str_face_shape_801B8AF8
	lw      $t7, 0x0030($sp)
	la.u    $a1, face_shape_80198664
	lw      $a2, 0x0020($t7)
	la.l    $a1, face_shape_80198664
	jal     face_object_8017E520
	li      $a0, 0x0100
	b       .L80198834
	nop
.L80198834:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

get_3DG1_shape:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0080($sp)
	sw      $s0, 0x0020($sp)
	sw      $0, 0x0048($sp)
	sw      $0, 0x0044($sp)
	sw      $0, 0x0040($sp)
	sw      $0, 0x003C($sp)
	jal     make_group
	move    $a0, $0
	lw      $t6, 0x0080($sp)
	nop
	sw      $v0, 0x002C($t6)
	la.u    $a0, str_face_shape_801B8AFC
	jal     face_stdio_8018D560
	la.l    $a0, str_face_shape_801B8AFC
	li.u    $a0, 0x00046500
	jal     gd_malloc
	li.l    $a0, 0x00046500
	sw      $v0, 0x0034($sp)
	li.u    $a0, 0x0004A380
	jal     gd_malloc
	li.l    $a0, 0x0004A380
	sw      $v0, 0x0038($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x006C($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0070($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0074($sp)
	jal     face_shape_80197BD4
	nop
	jal     getint
	addiu   $a0, $sp, 0x0060
	bnez    $v0, .L801988F0
	nop
	la.u    $a0, str_face_shape_801B8B0C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8B0C
.L801988F0:
	jal     face_shape_80197BD4
	nop
	jal     face_shape_80197CC4
	nop
	beqz    $v0, .L80198A14
	nop
.L80198908:
	jal     getfloat
	addiu   $a0, $sp, 0x0050
	addiu   $a0, $sp, 0x0050
	jal     getfloat
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x0050
	jal     getfloat
	addiu   $a0, $a0, 0x0008
	lwc1    $f12, 0x0050($sp)
	lwc1    $f14, 0x0054($sp)
	lw      $a2, 0x0058($sp)
	jal     face_shape_8019764C
	nop
	lw      $t8, 0x0044($sp)
	lw      $t7, 0x0034($sp)
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	sw      $v0, 0x0000($t0)
	lw      $t1, 0x0048($sp)
	nop
	bnez    $t1, .L8019897C
	nop
	lw      $t3, 0x0044($sp)
	lw      $t2, 0x0034($sp)
	sll     $t4, $t3, 2
	addu    $t5, $t2, $t4
	lw      $t6, 0x0000($t5)
	nop
	sw      $t6, 0x0048($sp)
.L8019897C:
	lw      $t7, 0x0044($sp)
	lw      $t8, 0x0034($sp)
	sll     $t9, $t7, 2
	addu    $t0, $t8, $t9
	lw      $a0, 0x0000($t0)
	jal     face_shape_801981BC
	nop
	lw      $t1, 0x0044($sp)
	nop
	addiu   $t3, $t1, 0x0001
	sw      $t3, 0x0044($sp)
	lw      $t2, 0x0044($sp)
	nop
	slti    $at, $t2, 0x0FA0
	bnez    $at, .L801989C8
	nop
	la.u    $a0, str_face_shape_801B8B28
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8B28
.L801989C8:
	lw      $t4, 0x0080($sp)
	nop
	lw      $t5, 0x0038($t4)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0038($t4)
	jal     face_shape_80197B14
	nop
	lw      $t7, 0x0060($sp)
	nop
	addiu   $t8, $t7, -0x0001
	bnez    $t8, .L80198A04
	sw      $t8, 0x0060($sp)
	b       .L80198A14
	nop
.L80198A04:
	jal     face_shape_80197CC4
	nop
	bnez    $v0, .L80198908
	nop
.L80198A14:
	jal     face_shape_80197CC4
	nop
	beqz    $v0, .L80198CD0
	nop
.L80198A24:
	jal     getint
	addiu   $a0, $sp, 0x005C
	bnez    $v0, .L80198A40
	nop
	la.u    $a0, str_face_shape_801B8B48
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8B48
.L80198A40:
	lw      $t9, 0x0080($sp)
	lwc1    $f10, 0x0074($sp)
	lw      $a2, 0x006C($sp)
	lw      $a3, 0x0070($sp)
	lw      $a0, 0x002C($t9)
	move    $a1, $0
	jal     face_shape_801991F4
	swc1    $f10, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     face_shape_80197810
	nop
	sw      $v0, 0x004C($sp)
	lw      $t0, 0x0040($sp)
	nop
	bnez    $t0, .L80198A90
	nop
	lw      $t1, 0x004C($sp)
	nop
	sw      $t1, 0x0040($sp)
.L80198A90:
	lw      $t5, 0x003C($sp)
	lw      $t2, 0x0038($sp)
	lw      $t3, 0x004C($sp)
	sll     $t6, $t5, 2
	addu    $t4, $t2, $t6
	sw      $t3, 0x0000($t4)
	lw      $t7, 0x003C($sp)
	nop
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	nop
	slti    $at, $t9, 0x0FA0
	bnez    $at, .L80198AD8
	nop
	la.u    $a0, str_face_shape_801B8B6C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8B6C
.L80198AD8:
	sw      $0, 0x0068($sp)
	jal     face_shape_80197B44
	nop
	beqz    $v0, .L80198BA0
	nop
.L80198AEC:
	jal     getint
	addiu   $a0, $sp, 0x0064
	lw      $t0, 0x0068($sp)
	nop
	slti    $at, $t0, 0x0004
	bnez    $at, .L80198B18
	nop
	la.u    $a0, str_face_shape_801B8B8C
	lw      $a1, 0x0068($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8B8C
.L80198B18:
	lw      $t5, 0x0064($sp)
	lw      $t1, 0x0034($sp)
	lw      $t7, 0x0068($sp)
	sll     $t2, $t5, 2
	lw      $t4, 0x004C($sp)
	addu    $t6, $t1, $t2
	lw      $t3, 0x0000($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t4, $t8
	sw      $t3, 0x0034($t9)
	lw      $t0, 0x0068($sp)
	nop
	addiu   $t5, $t0, 0x0001
	sw      $t5, 0x0068($sp)
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t1, $s0, 24
	move    $s0, $t1
	jal     face_shape_80197C54
	move    $a0, $s0
	bnez    $v0, .L80198B88
	nop
	lw      $t2, 0x005C($sp)
	nop
	addiu   $t6, $t2, -0x0001
	bnez    $t6, .L80198B90
	sw      $t6, 0x005C($sp)
.L80198B88:
	b       .L80198BA0
	nop
.L80198B90:
	jal     face_shape_80197B44
	nop
	bnez    $v0, .L80198AEC
	nop
.L80198BA0:
	lw      $t7, 0x0068($sp)
	lw      $t4, 0x004C($sp)
	nop
	sw      $t7, 0x0030($t4)
	lw      $t8, 0x004C($sp)
	nop
	lw      $t3, 0x0030($t8)
	nop
	slti    $at, $t3, 0x0004
	bnez    $at, .L80198BE0
	nop
	lw      $t9, 0x004C($sp)
	la.u    $a0, str_face_shape_801B8BAC
	lw      $a1, 0x0030($t9)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8BAC
.L80198BE0:
	lw      $a0, 0x004C($sp)
	jal     calc_facenormal
	nop
	lw      $t0, 0x004C($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x0024($t0)
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80198C1C
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f4
	b       .L80198C28
	swc1    $f4, 0x006C($sp)
.L80198C1C:
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x006C($sp)
.L80198C28:
	lw      $t5, 0x004C($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0028($t5)
	nop
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80198C58
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f16
	b       .L80198C64
	swc1    $f16, 0x0070($sp)
.L80198C58:
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0070($sp)
.L80198C64:
	lw      $t1, 0x004C($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x002C($t1)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80198C94
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f8
	b       .L80198CA0
	swc1    $f8, 0x0074($sp)
.L80198C94:
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0074($sp)
.L80198CA0:
	lw      $t2, 0x0080($sp)
	nop
	lw      $t6, 0x0034($t2)
	nop
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0034($t2)
	jal     face_shape_80197B14
	nop
	jal     face_shape_80197CC4
	nop
	bnez    $v0, .L80198A24
	nop
.L80198CD0:
	lw      $a0, 0x0034($sp)
	jal     gd_free
	nop
	lw      $a0, 0x0038($sp)
	jal     gd_free
	nop
	lw      $a1, 0x0048($sp)
	li      $a0, 0x0100
	jal     face_object_8017D76C
	move    $a2, $0
	lw      $t4, 0x0080($sp)
	nop
	sw      $v0, 0x0020($t4)
	lw      $a1, 0x0040($sp)
	li      $a0, 0x0080
	jal     face_object_8017D76C
	move    $a2, $0
	lw      $t8, 0x0080($sp)
	nop
	sw      $v0, 0x001C($t8)
	jal     imout
	nop
	b       .L80198D30
	nop
.L80198D30:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0080

face_shape_80198D40:
	addiu   $sp, $sp, -0x7D58
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x7D58($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $0, 0x002C($sp)
	sw      $0, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x7D48($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x7D4C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x7D50($sp)
	lui     $at, %hi(_face_bss+0x1328)
	sw      $0, %lo(_face_bss+0x1328)($at)
	jal     face_shape_80197CC4
	nop
	beqz    $v0, .L80199074
	nop
.L80198DA4:
	jal     face_shape_80197B70
	nop
	move    $s0, $v0
	li      $at, 0x0023
	beq     $s0, $at, .L8019904C
	nop
	li      $at, 0x0066
	beq     $s0, $at, .L80198E9C
	nop
	li      $at, 0x0067
	beq     $s0, $at, .L80199044
	nop
	li      $at, 0x0076
	beq     $s0, $at, .L80198DE8
	nop
	b       .L80199054
	nop
.L80198DE8:
	jal     getfloat
	addiu   $a0, $sp, 0x7D34
	addiu   $a0, $sp, 0x7D34
	jal     getfloat
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x7D34
	jal     getfloat
	addiu   $a0, $a0, 0x0008
	lwc1    $f12, 0x7D34($sp)
	lwc1    $f14, 0x7D38($sp)
	lw      $a2, 0x7D3C($sp)
	jal     face_shape_8019764C
	nop
	lw      $t6, 0x0028($sp)
	nop
	sll     $t7, $t6, 2
	addu    $t8, $sp, $t7
	sw      $v0, 0x3EB0($t8)
	lw      $t9, 0x0028($sp)
	nop
	sll     $t0, $t9, 2
	addu    $a0, $sp, $t0
	lw      $a0, 0x3EB0($a0)
	jal     face_shape_801981BC
	nop
	lw      $t1, 0x0028($sp)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	nop
	slti    $at, $t3, 0x0FA0
	bnez    $at, .L80198E7C
	nop
	la.u    $a0, str_face_shape_801B8BCC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8BCC
.L80198E7C:
	lw      $t4, 0x7D58($sp)
	nop
	lw      $t5, 0x0038($t4)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0038($t4)
	b       .L8019905C
	nop
.L80198E9C:
	lwc1    $f12, 0x7D48($sp)
	lwc1    $f14, 0x7D4C($sp)
	lw      $a2, 0x7D50($sp)
	jal     make_face
	nop
	sw      $v0, 0x7D30($sp)
	lw      $t8, 0x002C($sp)
	lw      $t7, 0x7D30($sp)
	sll     $t9, $t8, 2
	addu    $t0, $sp, $t9
	sw      $t7, 0x0030($t0)
	lw      $t1, 0x002C($sp)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	nop
	slti    $at, $t3, 0x0FA0
	bnez    $at, .L80198EF8
	nop
	la.u    $a0, str_face_shape_801B8BEC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8BEC
.L80198EF8:
	sw      $0, 0x7D44($sp)
	jal     face_shape_80197B44
	nop
	beqz    $v0, .L80198FA8
	nop
.L80198F0C:
	jal     getint
	addiu   $a0, $sp, 0x7D40
	lw      $t5, 0x7D44($sp)
	nop
	slti    $at, $t5, 0x0004
	bnez    $at, .L80198F38
	nop
	la.u    $a0, str_face_shape_801B8C0C
	lw      $a1, 0x7D44($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8C0C
.L80198F38:
	lw      $t6, 0x7D40($sp)
	lw      $t9, 0x7D44($sp)
	sll     $t4, $t6, 2
	lw      $t7, 0x7D30($sp)
	addu    $t8, $sp, $t4
	lw      $t8, 0x3EAC($t8)
	sll     $t0, $t9, 2
	addu    $t1, $t7, $t0
	sw      $t8, 0x0034($t1)
	lw      $t2, 0x7D44($sp)
	nop
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x7D44($sp)
	jal     face_shape_80197B44
	nop
	sll     $s1, $v0, 24
	sra     $t5, $s1, 24
	move    $s1, $t5
	jal     face_shape_80197C54
	move    $a0, $s1
	beqz    $v0, .L80198F98
	nop
	b       .L80198FA8
	nop
.L80198F98:
	jal     face_shape_80197B44
	nop
	bnez    $v0, .L80198F0C
	nop
.L80198FA8:
	lwc1    $f10, 0x7D48($sp)
	lw      $t6, 0x7D30($sp)
	nop
	swc1    $f10, 0x0014($t6)
	lwc1    $f16, 0x7D4C($sp)
	lw      $t4, 0x7D30($sp)
	nop
	swc1    $f16, 0x0018($t4)
	lwc1    $f18, 0x7D50($sp)
	lw      $t9, 0x7D30($sp)
	nop
	swc1    $f18, 0x001C($t9)
	lw      $t7, 0x7D44($sp)
	lw      $t0, 0x7D30($sp)
	nop
	sw      $t7, 0x0030($t0)
	lw      $t8, 0x7D30($sp)
	nop
	lw      $t1, 0x0030($t8)
	nop
	slti    $at, $t1, 0x0004
	bnez    $at, .L80199018
	nop
	lw      $t2, 0x7D30($sp)
	la.u    $a0, str_face_shape_801B8C2C
	lw      $a1, 0x0030($t2)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8C2C
.L80199018:
	lw      $a0, 0x7D30($sp)
	jal     calc_facenormal
	nop
	lw      $t3, 0x7D58($sp)
	nop
	lw      $t5, 0x0034($t3)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0034($t3)
	b       .L8019905C
	nop
.L80199044:
	b       .L8019905C
	nop
.L8019904C:
	b       .L8019905C
	nop
.L80199054:
	b       .L8019905C
	nop
.L8019905C:
	jal     face_shape_80197B14
	nop
	jal     face_shape_80197CC4
	nop
	bnez    $v0, .L80198DA4
	nop
.L80199074:
	addiu   $t4, $sp, 0x3EB0
	lw      $a1, 0x0000($t4)
	li      $a0, 0x0100
	jal     face_object_8017D76C
	move    $a2, $0
	lw      $t9, 0x7D58($sp)
	nop
	sw      $v0, 0x0020($t9)
	addiu   $t7, $sp, 0x0030
	lw      $a1, 0x0000($t7)
	li      $a0, 0x0080
	jal     face_object_8017D76C
	move    $a2, $0
	lw      $t0, 0x7D58($sp)
	nop
	sw      $v0, 0x001C($t0)
	b       .L801990BC
	nop
.L801990BC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x7D58

face_shape_801990D0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	jal     make_group
	move    $a0, $0
	sw      $v0, 0x0030($sp)
	lw      $t6, 0x0038($sp)
	nop
	lw      $s0, 0x001C($t6)
	nop
	beqz    $s0, .L801991D0
	nop
.L8019910C:
	lw      $t7, 0x0008($s0)
	nop
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	nop
	sw      $t8, 0x0034($sp)
	lw      $t9, 0x003C($sp)
	nop
	sw      $t9, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	nop
	beqz    $t0, .L801991C0
	nop
.L80199140:
	lw      $t1, 0x002C($sp)
	lw      $t2, 0x0040($sp)
	nop
	bne     $t1, $t2, .L8019915C
	nop
	b       .L801991C0
	nop
.L8019915C:
	lw      $t3, 0x002C($sp)
	li      $at, 0x0080
	lw      $t4, 0x000C($t3)
	nop
	bne     $t4, $at, .L8019919C
	nop
	lw      $t5, 0x002C($sp)
	lw      $t7, 0x0034($sp)
	lw      $t6, 0x0048($t5)
	nop
	bne     $t6, $t7, .L8019919C
	nop
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x002C($sp)
	jal     addto_group
	nop
.L8019919C:
	lw      $t8, 0x002C($sp)
	nop
	lw      $t9, 0x0000($t8)
	nop
	sw      $t9, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	nop
	bnez    $t0, .L80199140
	nop
.L801991C0:
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, .L8019910C
	nop
.L801991D0:
	lw      $v0, 0x0030($sp)
	b       .L801991E4
	nop
	b       .L801991E4
	nop
.L801991E4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

face_shape_801991F4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	nop
	lw      $s0, 0x001C($t6)
	nop
	beqz    $s0, .L801992C8
	nop
.L80199228:
	lw      $t7, 0x0008($s0)
	nop
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0800
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, .L801992B8
	nop
	lw      $t0, 0x0024($sp)
	lwc1    $f6, 0x0038($sp)
	lwc1    $f4, 0x003C($t0)
	nop
	c.eq.s  $f4, $f6
	nop
	bc1f    .L801992B8
	nop
	lw      $t1, 0x0024($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f8, 0x0040($t1)
	nop
	c.eq.s  $f8, $f10
	nop
	bc1f    .L801992B8
	nop
	lw      $t2, 0x0024($sp)
	lwc1    $f18, 0x0040($sp)
	lwc1    $f16, 0x0044($t2)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    .L801992B8
	nop
	lw      $v0, 0x0024($sp)
	b       .L80199320
	nop
.L801992B8:
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, .L80199228
	nop
.L801992C8:
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D22C
	li      $a2, 0x0001
	sw      $v0, 0x002C($sp)
	lw      $a0, 0x002C($sp)
	jal     face_dynlist_80186C84
	nop
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     dSetDiffuse
	nop
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x002C($sp)
	jal     addto_group
	nop
	lw      $v0, 0x002C($sp)
	b       .L80199320
	nop
	b       .L80199320
	nop
.L80199320:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_shape_80199330:
	addiu   $sp, $sp, -0x00D8
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x00D8($sp)
	sw      $a1, 0x00DC($sp)
	sw      $s0, 0x0020($sp)
	sw      $0, 0x0040($sp)
	sw      $0, 0x0038($sp)
	sw      $0, 0x0030($sp)
	sw      $0, 0x002C($sp)
	jal     make_group
	move    $a0, $0
	lw      $t6, 0x00D8($sp)
	nop
	sw      $v0, 0x002C($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0048($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x004C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0050($sp)
	lw      $a0, 0x00DC($sp)
	la.u    $a1, str_face_shape_801B8C4C
	jal     gd_fopen
	la.l    $a1, str_face_shape_801B8C4C
	lui     $at, %hi(_face_bss+0x132C)
	sw      $v0, %lo(_face_bss+0x132C)($at)
	lui     $t7, %hi(_face_bss+0x132C)
	lw      $t7, %lo(_face_bss+0x132C)($t7)
	nop
	bnez    $t7, .L801993D4
	nop
	la.u    $a0, str_face_shape_801B8C50
	lw      $a1, 0x00DC($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8C50
.L801993D4:
	lui     $a3, %hi(_face_bss+0x132C)
	lw      $a3, %lo(_face_bss+0x132C)($a3)
	addiu   $a0, $sp, 0x0090
	li      $a1, 0x0048
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	addiu   $a0, $sp, 0x0090
	jal     face_gfx_801A5AD8
	addiu   $a0, $a0, 0x0040
	addiu   $a0, $sp, 0x0090
	jal     face_gfx_801A5AD8
	addiu   $a0, $a0, 0x0044
	lw      $t8, 0x00D0($sp)
	nop
	slt     $s0, $0, $t8
	addiu   $t9, $t8, -0x0001
	beqz    $s0, .L8019973C
	sw      $t9, 0x00D0($sp)
.L8019941C:
	lui     $a3, %hi(_face_bss+0x132C)
	lw      $a3, %lo(_face_bss+0x132C)($a3)
	addiu   $a0, $sp, 0x0080
	li      $a1, 0x0010
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	jal     face_gfx_801A5B00
	addiu   $a0, $sp, 0x0080
	addiu   $a0, $sp, 0x0080
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x0080
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0008
	addiu   $t0, $sp, 0x0080
	lwc1    $f10, 0x0000($t0)
	nop
	swc1    $f10, 0x0048($sp)
	addiu   $t1, $sp, 0x0080
	lwc1    $f16, 0x0004($t1)
	nop
	swc1    $f16, 0x004C($sp)
	addiu   $t2, $sp, 0x0080
	lwc1    $f18, 0x0008($t2)
	nop
	swc1    $f18, 0x0050($sp)
	lw      $t3, 0x00D8($sp)
	lwc1    $f4, 0x0050($sp)
	lw      $a2, 0x0048($sp)
	lw      $a3, 0x004C($sp)
	lw      $a0, 0x002C($t3)
	move    $a1, $0
	jal     face_shape_801991F4
	swc1    $f4, 0x0010($sp)
	sw      $v0, 0x0034($sp)
	addiu   $a0, $sp, 0x0080
	jal     face_gfx_801A5AD8
	addiu   $a0, $a0, 0x000C
	lw      $t4, 0x008C($sp)
	nop
	slt     $s0, $0, $t4
	addiu   $t5, $t4, -0x0001
	beqz    $s0, .L80199724
	sw      $t5, 0x008C($sp)
.L801994CC:
	lw      $t6, 0x00D8($sp)
	nop
	lw      $t7, 0x0034($t6)
	nop
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0034($t6)
	lui     $a3, %hi(_face_bss+0x132C)
	lw      $a3, %lo(_face_bss+0x132C)($a3)
	addiu   $a0, $sp, 0x0070
	li      $a1, 0x0010
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	addiu   $a0, $sp, 0x0070
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x0070
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0008
	addiu   $a0, $sp, 0x0070
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x000C
	lw      $a0, 0x0034($sp)
	jal     face_shape_80197810
	nop
	sw      $v0, 0x0044($sp)
	lw      $t9, 0x0040($sp)
	nop
	bnez    $t9, .L8019954C
	nop
	lw      $t0, 0x0044($sp)
	nop
	sw      $t0, 0x0040($sp)
.L8019954C:
	jal     face_gfx_801A5AD8
	addiu   $a0, $sp, 0x0070
	lw      $t1, 0x0070($sp)
	nop
	slti    $at, $t1, 0x0004
	bnez    $at, .L801995B8
	nop
	lw      $t2, 0x0070($sp)
	nop
	slt     $s0, $0, $t2
	addiu   $t3, $t2, -0x0001
	beqz    $s0, .L801995B0
	sw      $t3, 0x0070($sp)
.L80199580:
	lui     $a3, %hi(_face_bss+0x132C)
	lw      $a3, %lo(_face_bss+0x132C)($a3)
	addiu   $a0, $sp, 0x0058
	li      $a1, 0x0018
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	lw      $t4, 0x0070($sp)
	nop
	slt     $s0, $0, $t4
	addiu   $t5, $t4, -0x0001
	bnez    $s0, .L80199580
	sw      $t5, 0x0070($sp)
.L801995B0:
	b       .L8019970C
	nop
.L801995B8:
	lw      $t7, 0x0070($sp)
	nop
	slt     $s0, $0, $t7
	addiu   $t8, $t7, -0x0001
	beqz    $s0, .L80199700
	sw      $t8, 0x0070($sp)
.L801995D0:
	lw      $t6, 0x00D8($sp)
	nop
	lw      $t9, 0x0038($t6)
	nop
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0038($t6)
	lui     $a3, %hi(_face_bss+0x132C)
	lw      $a3, %lo(_face_bss+0x132C)($a3)
	addiu   $a0, $sp, 0x0058
	li      $a1, 0x0018
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	jal     face_gfx_801A5B00
	addiu   $a0, $sp, 0x0058
	addiu   $a0, $sp, 0x0058
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x0058
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0008
	addiu   $a0, $sp, 0x0058
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x000C
	addiu   $a0, $sp, 0x0058
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0010
	addiu   $a0, $sp, 0x0058
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0014
	jal     face_shape_80198228
	addiu   $a0, $sp, 0x0058
	addiu   $t1, $sp, 0x0058
	lwc1    $f12, 0x0000($t1)
	lwc1    $f14, 0x0004($t1)
	lw      $a2, 0x0008($t1)
	jal     face_shape_8019764C
	nop
	sw      $v0, 0x003C($sp)
	lw      $t2, 0x0044($sp)
	nop
	lw      $t3, 0x0030($t2)
	nop
	slti    $at, $t3, 0x0004
	bnez    $at, .L80199698
	nop
	lw      $t4, 0x0044($sp)
	la.u    $a0, str_face_shape_801B8C68
	lw      $a1, 0x0030($t4)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8C68
.L80199698:
	lw      $t7, 0x0044($sp)
	lw      $t5, 0x003C($sp)
	lw      $t8, 0x0030($t7)
	nop
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	sw      $t5, 0x0034($t0)
	lw      $t6, 0x0044($sp)
	nop
	lw      $t1, 0x0030($t6)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0030($t6)
	lw      $t3, 0x0038($sp)
	nop
	bnez    $t3, .L801996E8
	nop
	lw      $t4, 0x003C($sp)
	nop
	sw      $t4, 0x0038($sp)
.L801996E8:
	lw      $t8, 0x0070($sp)
	nop
	slt     $s0, $0, $t8
	addiu   $t7, $t8, -0x0001
	bnez    $s0, .L801995D0
	sw      $t7, 0x0070($sp)
.L80199700:
	lw      $a0, 0x0044($sp)
	jal     calc_facenormal
	nop
.L8019970C:
	lw      $t9, 0x008C($sp)
	nop
	slt     $s0, $0, $t9
	addiu   $t5, $t9, -0x0001
	bnez    $s0, .L801994CC
	sw      $t5, 0x008C($sp)
.L80199724:
	lw      $t0, 0x00D0($sp)
	nop
	slt     $s0, $0, $t0
	addiu   $t1, $t0, -0x0001
	bnez    $s0, .L8019941C
	sw      $t1, 0x00D0($sp)
.L8019973C:
	lw      $a1, 0x0038($sp)
	li      $a0, 0x0100
	jal     face_object_8017D76C
	move    $a2, $0
	lw      $t2, 0x00D8($sp)
	nop
	sw      $v0, 0x0020($t2)
	lw      $t6, 0x00D8($sp)
	lw      $a1, 0x0040($sp)
	lw      $a0, 0x002C($t6)
	jal     face_shape_801990D0
	move    $a2, $0
	lw      $t3, 0x00D8($sp)
	nop
	sw      $v0, 0x001C($t3)
	lui     $a0, %hi(_face_bss+0x132C)
	lw      $a0, %lo(_face_bss+0x132C)($a0)
	jal     face_stdio_8018E4A8
	nop
	b       .L80199790
	nop
.L80199790:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00D8

face_shape_801997A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	jal     face_stdio_8018C44C
	nop
	lw      $t6, 0x0018($sp)
	nop
	sw      $0, 0x003C($t6)
	lw      $t7, 0x0018($sp)
	nop
	sw      $0, 0x0034($t7)
	lw      $t8, 0x0018($sp)
	nop
	sw      $0, 0x0038($t8)
	lw      $a0, 0x001C($sp)
	la.u    $a1, str_face_shape_801B8C98
	jal     face_stdio_8018E098
	la.l    $a1, str_face_shape_801B8C98
	beqz    $v0, .L80199810
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     face_shape_80199330
	nop
	b       .L801998B4
	nop
.L80199810:
	lw      $a0, 0x001C($sp)
	la.u    $a1, str_face_shape_801B8CA0
	jal     gd_fopen
	la.l    $a1, str_face_shape_801B8CA0
	lui     $at, %hi(_face_bss+0x132C)
	sw      $v0, %lo(_face_bss+0x132C)($at)
	lui     $t9, %hi(_face_bss+0x132C)
	lw      $t9, %lo(_face_bss+0x132C)($t9)
	nop
	bnez    $t9, .L8019984C
	nop
	la.u    $a0, str_face_shape_801B8CA4
	lw      $a1, 0x001C($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8CA4
.L8019984C:
	lui     $at, %hi(_face_bss+0x1328)
	sw      $0, %lo(_face_bss+0x1328)($at)
	lui     $t0, %hi(_face_bss+0x1328)
	lw      $t0, %lo(_face_bss+0x1328)($t0)
	lui     $at, %hi(_face_bss+0x1228)
	addu    $at, $at, $t0
	sb      $0, %lo(_face_bss+0x1228)($at)
	jal     face_shape_80197BD4
	nop
	la.u    $a0, str_face_shape_801B8CBC
	jal     face_shape_80197DB0
	la.l    $a0, str_face_shape_801B8CBC
	beqz    $v0, .L80199898
	nop
	lw      $a0, 0x0018($sp)
	jal     get_3DG1_shape
	nop
	b       .L801998A4
	nop
.L80199898:
	lw      $a0, 0x0018($sp)
	jal     face_shape_80198D40
	nop
.L801998A4:
	lui     $a0, %hi(_face_bss+0x132C)
	lw      $a0, %lo(_face_bss+0x132C)($a0)
	jal     face_stdio_8018E4A8
	nop
.L801998B4:
	lw      $a0, 0x001C($sp)
	jal     face_stdio_8018C598
	nop
	lui     $v0, %hi(_face_bss+0x132C)
	lw      $v0, %lo(_face_bss+0x132C)($v0)
	b       .L801998D8
	nop
	b       .L801998D8
	nop
.L801998D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_801998E8:
	addiu   $sp, $sp, -0x1078
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x1078($sp)
	sw      $a1, 0x107C($sp)
	sw      $a2, 0x1080($sp)
	sw      $a3, 0x1084($sp)
	sw      $0, 0x004C($sp)
	sw      $0, 0x0040($sp)
	lw      $a0, 0x107C($sp)
	jal     face_draw_80178ED8
	nop
	sw      $v0, 0x0030($sp)
	lw      $a0, 0x1080($sp)
	jal     face_draw_80178ED8
	nop
	sw      $v0, 0x002C($sp)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D22C
	li      $a2, 0x0001
	sw      $v0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	lw      $t6, 0x0030($sp)
	nop
	lwc1    $f12, 0x0000($t6)
	lwc1    $f14, 0x0004($t6)
	lw      $a2, 0x0008($t6)
	jal     dSetDiffuse
	nop
	lw      $t8, 0x0028($sp)
	li      $t7, 0x0040
	sw      $t7, 0x0028($t8)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D22C
	li      $a2, 0x0002
	sw      $v0, 0x0024($sp)
	lw      $a0, 0x0024($sp)
	jal     face_dynlist_80186C84
	nop
	lw      $t9, 0x002C($sp)
	nop
	lwc1    $f12, 0x0000($t9)
	lwc1    $f14, 0x0004($t9)
	lw      $a2, 0x0008($t9)
	jal     dSetDiffuse
	nop
	lw      $t1, 0x0024($sp)
	li      $t0, 0x0040
	sw      $t0, 0x0028($t1)
	lw      $a1, 0x0028($sp)
	lw      $a2, 0x0024($sp)
	jal     make_group
	li      $a0, 0x0002
	sw      $v0, 0x0034($sp)
	la.u    $a1, str_face_shape_801B8CEC
	la.l    $a1, str_face_shape_801B8CEC
	jal     face_shape_8019797C
	move    $a0, $0
	sw      $v0, 0x0048($sp)
	lw      $t2, 0x0048($sp)
	nop
	sw      $0, 0x0034($t2)
	lw      $t3, 0x0048($sp)
	nop
	sw      $0, 0x0038($t3)
	lw      $t4, 0x1084($sp)
	li      $at, 0x40000000
	mtc1    $t4, $f6
	mtc1    $at, $f5
	cvt.d.w $f8, $f6
	mtc1    $0, $f4
	nop
	div.d   $f10, $f4, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0044($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x005C($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x006C($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0070($sp)
	lw      $t5, 0x1088($sp)
	sw      $0, 0x0050($sp)
	bltz    $t5, .L80199C1C
	nop
.L80199A5C:
	lwc1    $f8, 0x005C($sp)
	nop
	swc1    $f8, 0x0068($sp)
	lw      $t6, 0x1084($sp)
	sw      $0, 0x0054($sp)
	bltz    $t6, .L80199BF0
	nop
.L80199A78:
	lw      $t7, 0x0048($sp)
	nop
	lw      $t8, 0x0038($t7)
	nop
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0038($t7)
	lw      $t0, 0x1078($sp)
	li      $at, 0x0100
	bne     $t0, $at, .L80199AD4
	nop
	lwc1    $f12, 0x0068($sp)
	lwc1    $f14, 0x006C($sp)
	lw      $a2, 0x0070($sp)
	jal     face_shape_8019764C
	nop
	lw      $t1, 0x0054($sp)
	lw      $t3, 0x0050($sp)
	sll     $t2, $t1, 7
	sll     $t4, $t3, 2
	addu    $t5, $t2, $t4
	addu    $t6, $sp, $t5
	b       .L80199BC4
	sw      $v0, 0x0074($t6)
.L80199AD4:
	lw      $t8, 0x1078($sp)
	li      $at, 0x0008
	bne     $t8, $at, .L80199BC4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x006C($sp)
	lwc1    $f6, 0x0070($sp)
	add.s   $f18, $f10, $f16
	lw      $a2, 0x0068($sp)
	mfc1    $a3, $f18
	move    $a0, $0
	move    $a1, $0
	jal     face_particle_80182630
	swc1    $f6, 0x0010($sp)
	lw      $t9, 0x0054($sp)
	lw      $t0, 0x0050($sp)
	sll     $t7, $t9, 7
	sll     $t1, $t0, 2
	addu    $t3, $t7, $t1
	addu    $t2, $sp, $t3
	sw      $v0, 0x0074($t2)
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	lwc1    $f4, 0x0068($sp)
	mtc1    $0, $f10
	li      $at, 0x40000000
	cvt.d.s $f8, $f4
	mtc1    $at, $f19
	mtc1    $0, $f18
	add.d   $f16, $f8, $f10
	lw      $t4, 0x0054($sp)
	div.d   $f6, $f16, $f18
	lw      $t6, 0x0050($sp)
	sll     $t5, $t4, 7
	sll     $t8, $t6, 2
	addu    $t9, $t5, $t8
	addu    $t0, $sp, $t9
	lw      $t0, 0x0074($t0)
	cvt.s.d $f4, $f6
	swc1    $f4, 0x0044($t0)
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	lwc1    $f8, 0x0070($sp)
	mtc1    $0, $f16
	li      $at, 0x40000000
	cvt.d.s $f10, $f8
	mtc1    $at, $f7
	mtc1    $0, $f6
	add.d   $f18, $f10, $f16
	lw      $t7, 0x0054($sp)
	div.d   $f4, $f18, $f6
	lw      $t3, 0x0050($sp)
	sll     $t1, $t7, 7
	sll     $t2, $t3, 2
	addu    $t4, $t1, $t2
	addu    $t6, $sp, $t4
	lw      $t6, 0x0074($t6)
	cvt.s.d $f8, $f4
	swc1    $f8, 0x0048($t6)
.L80199BC4:
	lwc1    $f10, 0x0068($sp)
	lwc1    $f16, 0x0044($sp)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0068($sp)
	lw      $t5, 0x0054($sp)
	lw      $t9, 0x1084($sp)
	addiu   $t8, $t5, 0x0001
	slt     $at, $t9, $t8
	beqz    $at, .L80199A78
	sw      $t8, 0x0054($sp)
.L80199BF0:
	lwc1    $f6, 0x0070($sp)
	lwc1    $f4, 0x0044($sp)
	nop
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0070($sp)
	lw      $t0, 0x0050($sp)
	lw      $t3, 0x1088($sp)
	addiu   $t7, $t0, 0x0001
	slt     $at, $t3, $t7
	beqz    $at, .L80199A5C
	sw      $t7, 0x0050($sp)
.L80199C1C:
	lw      $t1, 0x1088($sp)
	sw      $0, 0x0050($sp)
	blez    $t1, .L80199DE8
	nop
.L80199C2C:
	lw      $t2, 0x1084($sp)
	sw      $0, 0x0054($sp)
	blez    $t2, .L80199DD0
	nop
.L80199C3C:
	lw      $t4, 0x0048($sp)
	nop
	lw      $t6, 0x0034($t4)
	nop
	addiu   $t5, $t6, 0x0002
	sw      $t5, 0x0034($t4)
	lw      $t8, 0x107C($sp)
	lw      $t9, 0x1080($sp)
	nop
	beq     $t8, $t9, .L80199CE0
	nop
	lw      $t0, 0x0054($sp)
	lw      $t7, 0x0050($sp)
	nop
	addu    $t3, $t0, $t7
	andi    $t1, $t3, 0x0001
	beqz    $t1, .L80199CB0
	nop
	lw      $a0, 0x0028($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_bss+0x137C)
	sw      $v0, %lo(_face_bss+0x137C)($at)
	lw      $a0, 0x0028($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_bss+0x1380)
	b       .L80199CD8
	sw      $v0, %lo(_face_bss+0x1380)($at)
.L80199CB0:
	lw      $a0, 0x0024($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_bss+0x137C)
	sw      $v0, %lo(_face_bss+0x137C)($at)
	lw      $a0, 0x0024($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_bss+0x1380)
	sw      $v0, %lo(_face_bss+0x1380)($at)
.L80199CD8:
	b       .L80199D08
	nop
.L80199CE0:
	lw      $a0, 0x0028($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_bss+0x137C)
	sw      $v0, %lo(_face_bss+0x137C)($at)
	lw      $a0, 0x0024($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_bss+0x1380)
	sw      $v0, %lo(_face_bss+0x1380)($at)
.L80199D08:
	lw      $t2, 0x0040($sp)
	nop
	bnez    $t2, .L80199D28
	nop
	lui     $t6, %hi(_face_bss+0x137C)
	lw      $t6, %lo(_face_bss+0x137C)($t6)
	nop
	sw      $t6, 0x0040($sp)
.L80199D28:
	lw      $t5, 0x0054($sp)
	lw      $t8, 0x0050($sp)
	sll     $t4, $t5, 7
	sll     $t9, $t8, 2
	addiu   $t7, $sp, 0x0074
	addu    $t0, $t4, $t9
	addu    $t1, $t4, $t9
	addu    $t6, $t4, $t9
	addu    $t5, $t6, $t7
	addu    $t2, $t1, $t7
	addu    $t3, $t0, $t7
	lui     $a0, %hi(_face_bss+0x137C)
	lw      $a0, %lo(_face_bss+0x137C)($a0)
	lw      $a1, 0x0004($t3)
	lw      $a2, 0x0084($t2)
	lw      $a3, 0x0000($t5)
	jal     face_shape_80197904
	nop
	lw      $t8, 0x0054($sp)
	lw      $t3, 0x0050($sp)
	sll     $t0, $t8, 7
	sll     $t1, $t3, 2
	addiu   $t4, $sp, 0x0074
	addu    $t2, $t0, $t1
	addu    $t6, $t0, $t1
	addu    $t5, $t0, $t1
	addu    $t8, $t5, $t4
	addu    $t7, $t6, $t4
	addu    $t9, $t2, $t4
	lui     $a0, %hi(_face_bss+0x1380)
	lw      $a0, %lo(_face_bss+0x1380)($a0)
	lw      $a1, 0x0084($t9)
	lw      $a2, 0x0080($t7)
	lw      $a3, 0x0000($t8)
	jal     face_shape_80197904
	nop
	lw      $t3, 0x0054($sp)
	lw      $t9, 0x1084($sp)
	addiu   $t2, $t3, 0x0001
	slt     $at, $t2, $t9
	bnez    $at, .L80199C3C
	sw      $t2, 0x0054($sp)
.L80199DD0:
	lw      $t6, 0x0050($sp)
	lw      $t0, 0x1088($sp)
	addiu   $t7, $t6, 0x0001
	slt     $at, $t7, $t0
	bnez    $at, .L80199C2C
	sw      $t7, 0x0050($sp)
.L80199DE8:
	lw      $t1, 0x1078($sp)
	li      $at, 0x0008
	bne     $t1, $at, .L80199F08
	nop
	lw      $t5, 0x1084($sp)
	sw      $0, 0x0058($sp)
	bltz    $t5, .L80199E80
	nop
.L80199E08:
	lw      $t4, 0x0058($sp)
	nop
	sll     $t8, $t4, 7
	addu    $t3, $sp, $t8
	lw      $t3, 0x0074($t3)
	nop
	lw      $t2, 0x0054($t3)
	nop
	ori     $t9, $t2, 0x0002
	sw      $t9, 0x0054($t3)
	lw      $t6, 0x0058($sp)
	lw      $t0, 0x1088($sp)
	sll     $t7, $t6, 7
	sll     $t1, $t0, 2
	addu    $t5, $t7, $t1
	addiu   $t4, $sp, 0x0074
	addu    $t8, $t5, $t4
	lw      $t2, 0x0000($t8)
	addu    $t6, $t7, $t1
	lw      $t9, 0x0054($t2)
	addu    $t0, $t6, $t4
	lw      $t5, 0x0000($t0)
	ori     $t3, $t9, 0x0002
	sw      $t3, 0x0054($t5)
	lw      $t8, 0x0058($sp)
	lw      $t9, 0x1084($sp)
	addiu   $t2, $t8, 0x0001
	slt     $at, $t9, $t2
	beqz    $at, .L80199E08
	sw      $t2, 0x0058($sp)
.L80199E80:
	lw      $t7, 0x1088($sp)
	sw      $0, 0x0058($sp)
	bltz    $t7, .L80199F08
	nop
.L80199E90:
	lw      $t1, 0x0058($sp)
	nop
	sll     $t6, $t1, 2
	addu    $t4, $sp, $t6
	lw      $t4, 0x0074($t4)
	nop
	lw      $t0, 0x0054($t4)
	nop
	ori     $t3, $t0, 0x0002
	sw      $t3, 0x0054($t4)
	lw      $t5, 0x1084($sp)
	lw      $t2, 0x0058($sp)
	sll     $t8, $t5, 7
	sll     $t9, $t2, 2
	addu    $t7, $t8, $t9
	addiu   $t1, $sp, 0x0074
	addu    $t6, $t7, $t1
	lw      $t0, 0x0000($t6)
	addu    $t5, $t8, $t9
	lw      $t3, 0x0054($t0)
	addu    $t2, $t5, $t1
	lw      $t7, 0x0000($t2)
	ori     $t4, $t3, 0x0002
	sw      $t4, 0x0054($t7)
	lw      $t6, 0x0058($sp)
	lw      $t3, 0x1088($sp)
	addiu   $t0, $t6, 0x0001
	slt     $at, $t3, $t0
	beqz    $at, .L80199E90
	sw      $t0, 0x0058($sp)
.L80199F08:
	addiu   $t8, $sp, 0x0074
	lw      $a1, 0x0000($t8)
	lw      $a0, 0x1078($sp)
	jal     face_object_8017D76C
	move    $a2, $0
	sw      $v0, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	lw      $t5, 0x0048($sp)
	nop
	sw      $t9, 0x0020($t5)
	lw      $t1, 0x0034($sp)
	lw      $t2, 0x0048($sp)
	nop
	sw      $t1, 0x002C($t2)
	lw      $t4, 0x0048($sp)
	lw      $a1, 0x0040($sp)
	lw      $a0, 0x002C($t4)
	jal     face_shape_801990D0
	move    $a2, $0
	lw      $t7, 0x0048($sp)
	nop
	sw      $v0, 0x001C($t7)
	lw      $v0, 0x0048($sp)
	b       .L80199F74
	nop
	b       .L80199F74
	nop
.L80199F74:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x1078
	jr      $ra
	nop

face_shape_80199F84:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     make_group
	li      $a0, 0x0002
	sw      $v0, 0x001C($sp)
	b       .L80199FB8
	nop
.L80199FB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_shape_80199FC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	jal     face_object_8017CF7C
	move    $a0, $0
	lui     $at, %hi(_face_bss+0x1354)
	sw      $v0, %lo(_face_bss+0x1354)($at)
	lui     $t6, %hi(_face_bss+0x1358)
	lw      $t6, %lo(_face_bss+0x1358)($t6)
	nop
	bnez    $t6, .L8019A00C
	nop
	lui     $t7, %hi(_face_bss+0x1354)
	lw      $t7, %lo(_face_bss+0x1354)($t7)
	lui     $at, %hi(_face_bss+0x1358)
	sw      $t7, %lo(_face_bss+0x1358)($at)
.L8019A00C:
	b       .L8019A014
	nop
.L8019A014:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl make_netfromshape
make_netfromshape:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	bnez    $t6, .L8019A04C
	nop
	la.u    $a0, str_face_shape_801B8D10
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8D10
.L8019A04C:
	lui     $at, %hi(_face_bss+0x1358)
	sw      $0, %lo(_face_bss+0x1358)($at)
	lw      $t7, 0x0028($sp)
	la.u    $a1, face_shape_80199FC8
	lw      $a2, 0x001C($t7)
	la.l    $a1, face_shape_80199FC8
	jal     face_object_8017E520
	li      $a0, 0x0080
	lui     $a1, %hi(_face_bss+0x1358)
	lw      $a1, %lo(_face_bss+0x1358)($a1)
	li      $a0, 0x0040
	jal     face_object_8017D76C
	move    $a2, $0
	lui     $at, %hi(_face_bss+0x13E8)
	sw      $v0, %lo(_face_bss+0x13E8)($at)
	lw      $t8, 0x0028($sp)
	lui     $a3, %hi(_face_bss+0x13E8)
	lw      $t9, 0x0020($t8)
	lw      $a3, %lo(_face_bss+0x13E8)($a3)
	move    $a0, $0
	move    $a2, $0
	move    $a1, $t8
	jal     face_net_801924F4
	sw      $t9, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $t0, 0x0001
	sw      $t0, 0x01EC($t1)
	lw      $v0, 0x0024($sp)
	b       .L8019A0D0
	nop
	b       .L8019A0D0
	nop
.L8019A0D0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_shape_8019A0E0
face_shape_8019A0E0:
	addiu   $sp, $sp, -0x0008
	lw      $a1, 0x004C($a0)
	nop
	beqz    $a1, .L8019A108
	nop
	li      $at, 0x0001
	beq     $a1, $at, .L8019A130
	nop
	b       .L8019A198
	nop
.L8019A108:
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($a0)
	li      $t6, 0x0001
	sw      $t6, 0x0020($a0)
	li      $t7, 0x0001
	sw      $t7, 0x004C($a0)
	b       .L8019A198
	nop
.L8019A130:
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($a0)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($a0)
	li      $at, 0x43260000
	mtc1    $at, $f18
	lwc1    $f16, 0x0028($a0)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    .L8019A190
	nop
	li      $at, 0x428A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($a0)
	li      $t8, 0x0004
	sw      $t8, 0x004C($a0)
	la.u    $t9, face_shape_8019A1A8
	la.l    $t9, face_shape_8019A1A8
	sw      $t9, 0x0048($a0)
	sw      $0, 0x0020($a0)
.L8019A190:
	b       .L8019A198
	nop
.L8019A198:
	b       .L8019A1A0
	nop
.L8019A1A0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_shape_8019A1A8
face_shape_8019A1A8:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(_face_bss+0xD8)
	lw      $t6, %lo(_face_bss+0xD8)($t6)
	nop
	srl     $t7, $t6, 31
	sw      $t7, 0x0000($sp)
	lw      $t8, 0x004C($a0)
	nop
	sltiu   $at, $t8, 0x0008
	beqz    $at, L8019A48C
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(face_shape_801B8DF4)
	addu    $at, $at, $t8
	lw      $t8, %lo(face_shape_801B8DF4)($at)
	nop
	jr      $t8
	nop
.globl L8019A1F4
L8019A1F4:
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($a0)
	sw      $0, 0x0020($a0)
	li      $t9, 0x0002
	sw      $t9, 0x0004($sp)
	li      $t0, 0x0005
	sw      $t0, 0x0050($a0)
	b       L8019A48C
	nop
.globl L8019A220
L8019A220:
	lw      $t1, 0x0000($sp)
	nop
	beqz    $t1, .L8019A238
	nop
	li      $t2, 0x0005
	sw      $t2, 0x0004($sp)
.L8019A238:
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($a0)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($a0)
	lui     $at, %hi(face_shape_801B8E14)
	lwc1    $f18, %lo(face_shape_801B8E14)($at)
	lwc1    $f16, 0x0028($a0)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    .L8019A2A8
	nop
	lui     $at, %hi(face_shape_801B8E18)
	lwc1    $f4, %lo(face_shape_801B8E18)($at)
	nop
	swc1    $f4, 0x0028($a0)
	lw      $t3, 0x0050($a0)
	nop
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x0050($a0)
	lw      $t5, 0x0050($a0)
	nop
	bnez    $t5, .L8019A2A8
	nop
	li      $t6, 0x0003
	sw      $t6, 0x0004($sp)
.L8019A2A8:
	b       L8019A48C
	nop
.globl L8019A2B0
L8019A2B0:
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($a0)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($a0)
	li      $at, 0x444D0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0028($a0)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    .L8019A300
	nop
	li      $at, 0x428A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($a0)
	li      $t7, 0x0004
	sw      $t7, 0x0004($sp)
.L8019A300:
	b       L8019A48C
	nop
.globl L8019A308
L8019A308:
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($a0)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($a0)
	li      $at, 0x44250000
	mtc1    $at, $f18
	lwc1    $f16, 0x0028($a0)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    .L8019A360
	nop
	lui     $at, %hi(face_shape_801B8E1C)
	lwc1    $f4, %lo(face_shape_801B8E1C)($at)
	nop
	swc1    $f4, 0x0028($a0)
	li      $t8, 0x0002
	sw      $t8, 0x0004($sp)
	li      $t9, 0x0005
	sw      $t9, 0x0050($a0)
.L8019A360:
	b       L8019A48C
	nop
.globl L8019A368
L8019A368:
	li      $at, 0x44250000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($a0)
	nop
	c.eq.s  $f6, $f8
	nop
	bc1f    .L8019A394
	nop
	li      $t0, 0x0007
	b       .L8019A408
	sw      $t0, 0x0004($sp)
.L8019A394:
	li      $at, 0x44250000
	mtc1    $at, $f16
	lwc1    $f10, 0x0028($a0)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8019A3D0
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f18, 0x0028($a0)
	nop
	sub.s   $f6, $f18, $f4
	b       .L8019A408
	swc1    $f6, 0x0028($a0)
.L8019A3D0:
	li      $at, 0x44250000
	mtc1    $at, $f10
	lwc1    $f8, 0x0028($a0)
	nop
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8019A408
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0028($a0)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0028($a0)
.L8019A408:
	li      $t1, 0x0096
	sw      $t1, 0x0054($a0)
	b       L8019A48C
	nop
.globl L8019A418
L8019A418:
	lw      $t2, 0x0000($sp)
	nop
	beqz    $t2, .L8019A434
	nop
	li      $t3, 0x012C
	b       .L8019A45C
	sw      $t3, 0x0054($a0)
.L8019A434:
	lw      $t4, 0x0054($a0)
	nop
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x0054($a0)
	lw      $t6, 0x0054($a0)
	nop
	bnez    $t6, .L8019A45C
	nop
	li      $t7, 0x0006
	sw      $t7, 0x0004($sp)
.L8019A45C:
	li      $at, 0x44250000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0028($a0)
	b       L8019A48C
	nop
.globl L8019A474
L8019A474:
	li      $t8, 0x0002
	sw      $t8, 0x0004($sp)
	li      $t9, 0x0005
	sw      $t9, 0x0050($a0)
	b       L8019A48C
	nop
.globl L8019A48C
L8019A48C:
	lw      $t0, 0x0004($sp)
	nop
	beqz    $t0, .L8019A4A8
	nop
	lw      $t1, 0x0004($sp)
	nop
	sw      $t1, 0x004C($a0)
.L8019A4A8:
	b       .L8019A4B0
	nop
.L8019A4B0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_shape_8019A4B8
face_shape_8019A4B8:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	la.u    $a0, str_face_shape_801B8D34
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_shape_801B8D34
	la.u    $a0, str_face_shape_801B8D40
	jal     face_dynlist_8018435C
	la.l    $a0, str_face_shape_801B8D40
	jal     face_dynlist_80186E5C
	li      $a0, 0x0001
	li      $a0, 0x000E
	jal     dMakeObj
	li      $a1, 0x03E9
	sw      $v0, 0x0028($sp)
	lw      $t6, 0x0058($sp)
	lw      $t7, 0x0028($sp)
	nop
	sw      $t6, 0x0048($t7)
	jal     face_dynlist_80186E5C
	move    $a0, $0
	la.u    $a0, 0x04004F90
	jal     load_dynlist
	la.l    $a0, 0x04004F90
	lui     $at, %hi(_face_shape_data+0x00)
	sw      $v0, %lo(_face_shape_data+0x00)($at)
	la.u    $a0, str_face_shape_801B8D44
	jal     face_stdio_8018C598
	la.l    $a0, str_face_shape_801B8D44
	li      $a0, 0x0004
	jal     dMakeObj
	move    $a1, $0
	sw      $v0, 0x002C($sp)
	li      $at, 0x43480000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     dSetRelPos
	li      $a2, 0x44FA0000
	li      $at, 0x43480000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     dSetWorldPos
	li      $a2, 0x44FA0000
	jal     dSetFlags
	li      $a0, 0x0004
	mtc1    $0, $f4
	lw      $t8, 0x002C($sp)
	nop
	swc1    $f4, 0x0034($t8)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lw      $t9, 0x002C($sp)
	nop
	swc1    $f6, 0x0038($t9)
	mtc1    $0, $f8
	lw      $t0, 0x002C($sp)
	nop
	swc1    $f8, 0x003C($t0)
	lui     $a0, %hi(_face_shape_data+0x00)
	lw      $a0, %lo(_face_shape_data+0x00)($a0)
	lw      $a1, 0x002C($sp)
	jal     addto_group
	nop
	lui     $a0, %hi(_face_shape_data+0x00)
	lw      $a0, %lo(_face_shape_data+0x00)($a0)
	lw      $a1, 0x0028($sp)
	jal     addto_group
	nop
	jal     face_dynlist_8018435C
	move    $a0, $0
	mtc1    $0, $f10
	move    $a0, $0
	li      $a1, 0x0001
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     face_particle_80182630
	swc1    $f10, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	li      $t1, 0x0003
	sw      $t1, 0x0060($t2)
	lw      $t4, 0x0024($sp)
	li      $t3, 0x0003
	sw      $t3, 0x0064($t4)
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x00BC($t6)
	lui     $t7, %hi(_face_shape_data+0x10)
	lw      $t7, %lo(_face_shape_data+0x10)($t7)
	lw      $t8, 0x0024($sp)
	nop
	sw      $t7, 0x001C($t8)
	lui     $a0, %hi(_face_bss+0x298)
	lw      $a0, %lo(_face_bss+0x298)($a0)
	lw      $a1, 0x0024($sp)
	jal     addto_group
	nop
	mtc1    $0, $f16
	move    $a0, $0
	li      $a1, 0x0001
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     face_particle_80182630
	swc1    $f16, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	li      $t9, 0x0003
	sw      $t9, 0x0060($t0)
	lw      $t2, 0x0024($sp)
	li      $t1, 0x0002
	sw      $t1, 0x0064($t2)
	la.u    $a0, str_face_shape_801B8D50
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D50
	lw      $t3, 0x0024($sp)
	nop
	sw      $v0, 0x00BC($t3)
	lui     $t4, %hi(_face_shape_data+0x10)
	lw      $t4, %lo(_face_shape_data+0x10)($t4)
	lw      $t5, 0x0024($sp)
	nop
	sw      $t4, 0x001C($t5)
	lui     $a0, %hi(_face_bss+0x298)
	lw      $a0, %lo(_face_bss+0x298)($a0)
	lw      $a1, 0x0024($sp)
	jal     addto_group
	nop
	mtc1    $0, $f18
	move    $a0, $0
	li      $a1, 0x0002
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     face_particle_80182630
	swc1    $f18, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	li      $t6, 0x0003
	sw      $t6, 0x0060($t7)
	lw      $t9, 0x0024($sp)
	li      $t8, 0x0002
	sw      $t8, 0x0064($t9)
	la.u    $a0, str_face_shape_801B8D58
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D58
	lw      $t0, 0x0024($sp)
	nop
	sw      $v0, 0x00BC($t0)
	lui     $t1, %hi(_face_shape_data+0x0C)
	lw      $t1, %lo(_face_shape_data+0x0C)($t1)
	lw      $t2, 0x0024($sp)
	nop
	sw      $t1, 0x001C($t2)
	lui     $a0, %hi(_face_bss+0x298)
	lw      $a0, %lo(_face_bss+0x298)($a0)
	lw      $a1, 0x0024($sp)
	jal     addto_group
	nop
	la.u    $a0, str_face_shape_801B8D60
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D60
	sw      $v0, 0x003C($sp)
	lw      $a0, 0x003C($sp)
	jal     face_draw_8017B168
	nop
	lui     $t3, %hi(_face_bss+0x56C)
	lw      $t3, %lo(_face_bss+0x56C)($t3)
	nop
	sw      $t3, 0x0038($sp)
	li      $at, 0xC3160000
	mtc1    $at, $f4
	lui     $a0, %hi(_face_shape_data+0x08)
	lw      $a0, %lo(_face_shape_data+0x08)($a0)
	move    $a1, $0
	li      $a2, 0xC3FA0000
	li      $a3, 0x0000
	jal     face_joint_8018F388
	swc1    $f4, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8D68
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D68
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t4, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t4)
	li      $at, 0xC3160000
	mtc1    $at, $f6
	lui     $a0, %hi(_face_shape_data+0x08)
	lw      $a0, %lo(_face_shape_data+0x08)($a0)
	move    $a1, $0
	li      $a2, 0x43FA0000
	li      $a3, 0x0000
	jal     face_joint_8018F388
	swc1    $f6, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8D70
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D70
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t5, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t5)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lui     $a0, %hi(_face_shape_data+0x08)
	lw      $a0, %lo(_face_shape_data+0x08)($a0)
	move    $a1, $0
	li      $a2, 0x0000
	li      $a3, 0x442F0000
	jal     face_joint_8018F388
	swc1    $f8, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8D78
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D78
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t6, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t6)
	la.u    $a0, str_face_shape_801B8D80
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D80
	sw      $v0, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t7)
	jal     addto_group
	nop
	la.u    $a0, str_face_shape_801B8D88
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D88
	sw      $v0, 0x0034($sp)
	lw      $t8, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t8)
	jal     addto_group
	nop
	la.u    $a0, str_face_shape_801B8D90
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D90
	sw      $v0, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t9)
	jal     addto_group
	nop
	la.u    $a0, str_face_shape_801B8D98
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D98
	sw      $v0, 0x0034($sp)
	lw      $t0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t0)
	jal     addto_group
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	lui     $a0, %hi(_face_shape_data+0x08)
	lw      $a0, %lo(_face_shape_data+0x08)($a0)
	move    $a1, $0
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     face_joint_8018F388
	swc1    $f10, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DA0
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DA0
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t1, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t1)
	li      $at, 0x43960000
	mtc1    $at, $f16
	lui     $a0, %hi(_face_shape_data+0x08)
	lw      $a0, %lo(_face_shape_data+0x08)($a0)
	move    $a1, $0
	li      $a2, 0x0000
	li      $a3, 0xC3960000
	jal     face_joint_8018F388
	swc1    $f16, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DA8
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DA8
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t2, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t2)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lui     $a0, %hi(_face_shape_data+0x08)
	lw      $a0, %lo(_face_shape_data+0x08)($a0)
	move    $a1, $0
	li      $a2, 0x437A0000
	li      $a3, 0xC3160000
	jal     face_joint_8018F388
	swc1    $f18, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DB0
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DB0
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t3, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t3)
	la.u    $a0, str_face_shape_801B8DB8
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DB8
	sw      $v0, 0x0034($sp)
	lw      $t4, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t4)
	jal     addto_group
	nop
	li      $at, 0x43960000
	mtc1    $at, $f4
	lui     $a0, %hi(_face_shape_data+0x08)
	lw      $a0, %lo(_face_shape_data+0x08)($a0)
	move    $a1, $0
	li      $a2, 0xC37A0000
	li      $a3, 0xC3160000
	jal     face_joint_8018F388
	swc1    $f4, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DC0
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DC0
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t5, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t5)
	la.u    $a0, str_face_shape_801B8DC8
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DC8
	sw      $v0, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t6)
	jal     addto_group
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lui     $a0, %hi(_face_shape_data+0x08)
	lw      $a0, %lo(_face_shape_data+0x08)($a0)
	move    $a1, $0
	li      $a2, 0x42C80000
	li      $a3, 0x43480000
	jal     face_joint_8018F388
	swc1    $f6, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DCC
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DCC
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t7, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t7)
	lw      $t9, 0x0030($sp)
	la.u    $t8, face_joint_8018ED28
	la.l    $t8, face_joint_8018ED28
	sw      $t8, 0x002C($t9)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0030($sp)
	nop
	sw      $t0, 0x01D0($t1)
	lw      $t2, 0x0030($sp)
	li      $at, -0x0009
	lhu     $t3, 0x0012($t2)
	nop
	and     $t4, $t3, $at
	sh      $t4, 0x0012($t2)
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lui     $a0, %hi(_face_shape_data+0x08)
	lw      $a0, %lo(_face_shape_data+0x08)($a0)
	move    $a1, $0
	li      $a2, 0xC2C80000
	li      $a3, 0x43480000
	jal     face_joint_8018F388
	swc1    $f8, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DD4
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DD4
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t5, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t5)
	lw      $t7, 0x0030($sp)
	la.u    $t6, face_joint_8018ED28
	la.l    $t6, face_joint_8018ED28
	sw      $t6, 0x002C($t7)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	nop
	sw      $t8, 0x01D0($t9)
	lw      $t0, 0x0030($sp)
	li      $at, -0x0009
	lhu     $t1, 0x0012($t0)
	nop
	and     $t3, $t1, $at
	sh      $t3, 0x0012($t0)
	lw      $a1, 0x0038($sp)
	li      $a0, 0x0004
	jal     face_object_8017D76C
	move    $a2, $0
	sw      $v0, 0x0048($sp)
	lw      $a2, 0x0048($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a3, $0
	jal     face_net_801924F4
	sw      $0, 0x0010($sp)
	sw      $v0, 0x0054($sp)
	lw      $t2, 0x0054($sp)
	li      $t4, 0x0003
	sw      $t4, 0x01EC($t2)
	lui     $a0, %hi(_face_shape_data+0x00)
	lw      $a0, %lo(_face_shape_data+0x00)($a0)
	lw      $a1, 0x0048($sp)
	jal     addto_group
	nop
	lui     $a0, %hi(_face_shape_data+0x00)
	lw      $a0, %lo(_face_shape_data+0x00)($a0)
	lw      $a1, 0x0054($sp)
	jal     addto_groupfirst
	nop
	b       .L8019ABE8
	move    $v0, $0
	b       .L8019ABE8
	nop
.L8019ABE8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

.globl load_shapes2
load_shapes2:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_shape_801B8DDC
	jal     face_stdio_8018D560
	la.l    $a0, str_face_shape_801B8DDC
	jal     face_dynlist_80183AB0
	nop
	jal     face_shape_801973C0
	nop
	la.u    $a1, str_face_shape_801B8DEC
	la.l    $a1, str_face_shape_801B8DEC
	jal     face_shape_8019797C
	move    $a0, $0
	lui     $at, %hi(_face_bss+0x121C)
	sw      $v0, %lo(_face_bss+0x121C)($at)
	la.u    $a0, 0x04000650
	jal     load_dynlist
	la.l    $a0, 0x04000650
	lui     $at, %hi(_face_shape_data+0x04)
	sw      $v0, %lo(_face_shape_data+0x04)($at)
	lui     $a0, %hi(_face_shape_data+0x04)
	lw      $a0, %lo(_face_shape_data+0x04)($a0)
	li      $a1, 0x43480000
	li      $a2, 0x43480000
	jal     face_shape_8019848C
	li      $a3, 0x43480000
	la.u    $a0, 0x04000000
	jal     load_dynlist
	la.l    $a0, 0x04000000
	lui     $at, %hi(_face_shape_data+0x08)
	sw      $v0, %lo(_face_shape_data+0x08)($at)
	lui     $a0, %hi(_face_shape_data+0x08)
	lw      $a0, %lo(_face_shape_data+0x08)($a0)
	li      $a1, 0x41F00000
	li      $a2, 0x41F00000
	jal     face_shape_8019848C
	li      $a3, 0x41F00000
	lui     $a1, %hi(_face_bss+0x121C)
	lw      $a1, %lo(_face_bss+0x121C)($a1)
	li      $a0, 0x0010
	jal     face_object_8017D76C
	move    $a2, $0
	lui     $at, %hi(_face_bss+0x120C)
	sw      $v0, %lo(_face_bss+0x120C)($at)
	lui     $a0, %hi(_face_bss+0x120C)
	lw      $a0, %lo(_face_bss+0x120C)($a0)
	jal     face_draw_8017B168
	nop
	jal     imout
	nop
	b       .L8019ACC8
	nop
.L8019ACC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_8019ACD8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(_face_bss+0x56C)
	lw      $t6, %lo(_face_bss+0x56C)($t6)
	nop
	sw      $t6, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D2D4
	move    $a2, $0
	sw      $v0, 0x0024($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lw      $t7, 0x0024($sp)
	nop
	swc1    $f4, 0x0074($t7)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lw      $t8, 0x0024($sp)
	nop
	swc1    $f6, 0x0078($t8)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lw      $t9, 0x0024($sp)
	nop
	swc1    $f8, 0x007C($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $t0, 0x0024($sp)
	nop
	swc1    $f10, 0x0050($t0)
	mtc1    $0, $f16
	lw      $t1, 0x0024($sp)
	nop
	swc1    $f16, 0x0054($t1)
	mtc1    $0, $f18
	lw      $t2, 0x0024($sp)
	nop
	swc1    $f18, 0x0058($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t3, 0x0024($sp)
	nop
	swc1    $f4, 0x0030($t3)
	lui     $at, %hi(face_shape_801B8E20)
	lwc1    $f6, %lo(face_shape_801B8E20)($at)
	lw      $t4, 0x0024($sp)
	nop
	swc1    $f6, 0x0068($t4)
	lui     $at, %hi(face_shape_801B8E24)
	lwc1    $f8, %lo(face_shape_801B8E24)($at)
	lw      $t5, 0x0024($sp)
	nop
	swc1    $f8, 0x006C($t5)
	li      $at, 0x40800000
	mtc1    $at, $f10
	lw      $t6, 0x0024($sp)
	nop
	swc1    $f10, 0x0080($t6)
	li      $at, 0x40800000
	mtc1    $at, $f16
	lw      $t7, 0x0024($sp)
	nop
	swc1    $f16, 0x0084($t7)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lw      $t8, 0x0024($sp)
	nop
	swc1    $f18, 0x0088($t8)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D2D4
	li      $a2, 0x0001
	sw      $v0, 0x0020($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lw      $t9, 0x0020($sp)
	nop
	swc1    $f4, 0x0074($t9)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lw      $t0, 0x0020($sp)
	nop
	swc1    $f6, 0x0078($t0)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lw      $t1, 0x0020($sp)
	nop
	swc1    $f8, 0x007C($t1)
	mtc1    $0, $f10
	lw      $t2, 0x0020($sp)
	nop
	swc1    $f10, 0x0050($t2)
	mtc1    $0, $f16
	lw      $t3, 0x0020($sp)
	nop
	swc1    $f16, 0x0054($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t4, 0x0020($sp)
	nop
	swc1    $f18, 0x0058($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t5, 0x0020($sp)
	nop
	swc1    $f4, 0x0030($t5)
	li      $at, 0xC0800000
	mtc1    $at, $f6
	lw      $t6, 0x0020($sp)
	nop
	swc1    $f6, 0x0080($t6)
	li      $at, 0x40800000
	mtc1    $at, $f8
	lw      $t7, 0x0020($sp)
	nop
	swc1    $f8, 0x0084($t7)
	li      $at, 0xC0000000
	mtc1    $at, $f10
	lw      $t8, 0x0020($sp)
	nop
	swc1    $f10, 0x0088($t8)
	lw      $a1, 0x001C($sp)
	li      $a0, 0x00080000
	jal     face_object_8017D76C
	move    $a2, $0
	lui     $at, %hi(_face_bss+0x298)
	sw      $v0, %lo(_face_bss+0x298)($at)
	lui     $v0, %hi(_face_bss+0x298)
	lw      $v0, %lo(_face_bss+0x298)($v0)
	b       .L8019AEF4
	nop
	b       .L8019AEF4
	nop
.L8019AEF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_shape_8019AF04:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D2D4
	move    $a2, $0
	sw      $v0, 0x0024($sp)
	lui     $t6, %hi(_face_bss+0x56C)
	lw      $t6, %lo(_face_bss+0x56C)($t6)
	nop
	sw      $t6, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D2D4
	move    $a2, $0
	sw      $v0, 0x0020($sp)
	mtc1    $0, $f4
	lw      $t7, 0x0020($sp)
	nop
	swc1    $f4, 0x0074($t7)
	li      $at, 0xC3FA0000
	mtc1    $at, $f6
	lw      $t8, 0x0020($sp)
	nop
	swc1    $f6, 0x0078($t8)
	mtc1    $0, $f8
	lw      $t9, 0x0020($sp)
	nop
	swc1    $f8, 0x007C($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $t0, 0x0020($sp)
	nop
	swc1    $f10, 0x0050($t0)
	mtc1    $0, $f16
	lw      $t1, 0x0020($sp)
	nop
	swc1    $f16, 0x0054($t1)
	mtc1    $0, $f18
	lw      $t2, 0x0020($sp)
	nop
	swc1    $f18, 0x0058($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t3, 0x0020($sp)
	nop
	swc1    $f4, 0x0030($t3)
	lw      $a1, 0x001C($sp)
	li      $a0, 0x00080000
	jal     face_object_8017D76C
	move    $a2, $0
	lui     $at, %hi(_face_bss+0x298)
	sw      $v0, %lo(_face_bss+0x298)($at)
	lui     $v0, %hi(_face_bss+0x298)
	lw      $v0, %lo(_face_bss+0x298)($v0)
	b       .L8019AFF4
	nop
	b       .L8019AFF4
	nop
.L8019AFF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_shape_8019B004:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(_face_bss+0x56C)
	lw      $t6, %lo(_face_bss+0x56C)($t6)
	nop
	sw      $t6, 0x001C($sp)
	jal     make_group
	move    $a0, $0
	lui     $at, %hi(_face_bss+0x298)
	sw      $v0, %lo(_face_bss+0x298)($at)
	lui     $v0, %hi(_face_bss+0x298)
	lw      $v0, %lo(_face_bss+0x298)($v0)
	b       .L8019B048
	nop
	b       .L8019B048
	nop
.L8019B048:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
	nop
	nop

.data
.align 4

.globl _face_shape_data
_face_shape_data:
.incbin "src/face/shape.data.bin"

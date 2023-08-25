.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_draw_80178280:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     face_gfx_801A047C
	li      $a0, 0x0002
	li      $a0, 0x000C
	li      $a1, 0x3F000000
	li      $a2, 0x3F000000
	jal     gd_setproperty
	li      $a3, 0x3F000000
	li      $a0, 0x0010
	li      $a1, 0x3F800000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	b       .L8017830C
	nop
	li      $a0, 0x0011
	li      $a1, 0x40000000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	li      $a0, 0x0016
	li      $a1, 0x41C00000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	li      $a0, 0x0010
	li      $a1, 0x3F800000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	b       .L8017830C
	nop
	b       .L8017830C
	nop
.L8017830C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_8017831C:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0048($sp)
	nop
	lw      $t7, 0x0030($t6)
	nop
	lw      $s0, 0x001C($t7)
	nop
	beqz    $s0, .L801785C4
	nop
.L8017834C:
	lw      $t8, 0x0008($s0)
	nop
	sw      $t8, 0x0020($sp)
	lui     $t9, %hi(_face_bss+0x298)
	lw      $t9, %lo(_face_bss+0x298)($t9)
	nop
	lw      $t0, 0x001C($t9)
	nop
	lw      $t1, 0x0008($t0)
	nop
	sw      $t1, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	nop
	lwc1    $f4, 0x0074($t2)
	nop
	swc1    $f4, 0x003C($sp)
	lw      $t3, 0x0028($sp)
	nop
	lwc1    $f6, 0x0078($t3)
	nop
	swc1    $f6, 0x0040($sp)
	lw      $t4, 0x0028($sp)
	nop
	lwc1    $f8, 0x007C($t4)
	nop
	swc1    $f8, 0x0044($sp)
	lw      $t5, 0x0020($sp)
	nop
	sw      $t5, 0x0038($sp)
	lw      $t6, 0x0038($sp)
	nop
	lw      $a0, 0x0034($t6)
	lw      $a1, 0x0030($t6)
	addiu   $a0, $a0, 0x0024
	jal     face_math_80194EF8
	addiu   $a1, $a1, 0x0020
	swc1    $f0, 0x0034($sp)
	lw      $t7, 0x0038($sp)
	addiu   $a1, $sp, 0x003C
	lw      $a0, 0x0034($t7)
	jal     face_math_80194EF8
	addiu   $a0, $a0, 0x0024
	swc1    $f0, 0x0030($sp)
	lw      $t8, 0x0038($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f16, 0x0034($sp)
	lw      $t9, 0x0034($t8)
	sub.s   $f18, $f10, $f16
	lwc1    $f4, 0x0024($t9)
	lwc1    $f8, 0x003C($sp)
	mul.s   $f6, $f4, $f18
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x003C($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f4, 0x0034($sp)
	lw      $t1, 0x0034($t0)
	sub.s   $f18, $f16, $f4
	lwc1    $f8, 0x0028($t1)
	lwc1    $f10, 0x0040($sp)
	mul.s   $f6, $f8, $f18
	sub.s   $f16, $f10, $f6
	swc1    $f16, 0x0040($sp)
	lw      $t2, 0x0038($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f8, 0x0034($sp)
	lw      $t3, 0x0034($t2)
	sub.s   $f18, $f4, $f8
	lwc1    $f10, 0x002C($t3)
	lwc1    $f16, 0x0044($sp)
	mul.s   $f6, $f10, $f18
	sub.s   $f4, $f16, $f6
	swc1    $f4, 0x0044($sp)
	lw      $t4, 0x0038($sp)
	lwc1    $f8, 0x003C($sp)
	lw      $t5, 0x0030($t4)
	nop
	swc1    $f8, 0x0020($t5)
	lw      $t6, 0x0038($sp)
	lwc1    $f10, 0x0040($sp)
	lw      $t7, 0x0030($t6)
	nop
	swc1    $f10, 0x0024($t7)
	lw      $t8, 0x0038($sp)
	lwc1    $f18, 0x0044($sp)
	lw      $t9, 0x0030($t8)
	nop
	swc1    $f18, 0x0028($t9)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f6, 0x0034($sp)
	mtc1    $0, $f8
	sub.s   $f4, $f16, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L801784D8
	nop
	neg.s   $f10, $f4
	b       .L801784EC
	swc1    $f10, 0x002C($sp)
.L801784D8:
	lwc1    $f18, 0x0030($sp)
	lwc1    $f16, 0x0034($sp)
	nop
	sub.s   $f6, $f18, $f16
	swc1    $f6, 0x002C($sp)
.L801784EC:
	li      $at, 0x44160000
	mtc1    $at, $f4
	lwc1    $f8, 0x002C($sp)
	nop
	c.lt.s  $f4, $f8
	nop
	bc1f    .L8017851C
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x002C($sp)
.L8017851C:
	lui     $at, %hi(face_draw_801B58B0+4)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f7, %lo(face_draw_801B58B0+0)($at)
	lwc1    $f6, %lo(face_draw_801B58B0+4)($at)
	cvt.d.s $f16, $f18
	nop
	div.d   $f8, $f16, $f6
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	nop
	sub.d   $f10, $f4, $f8
	cvt.s.d $f18, $f10
	swc1    $f18, 0x002C($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f16, 0x005C($t0)
	lw      $t1, 0x0038($sp)
	mul.s   $f4, $f16, $f6
	lw      $t2, 0x0030($t1)
	nop
	swc1    $f4, 0x002C($t2)
	lw      $t3, 0x0028($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f8, 0x0060($t3)
	lw      $t4, 0x0038($sp)
	mul.s   $f18, $f8, $f10
	lw      $t5, 0x0030($t4)
	nop
	swc1    $f18, 0x0030($t5)
	lw      $t6, 0x0028($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f16, 0x0064($t6)
	lw      $t7, 0x0038($sp)
	mul.s   $f4, $f16, $f6
	lw      $t8, 0x0030($t7)
	nop
	swc1    $f4, 0x0034($t8)
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, .L8017834C
	nop
.L801785C4:
	b       .L801785CC
	nop
.L801785CC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

Draw_Shape:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	la.u    $a0, str_face_draw_801B5610
	jal     restart_timer
	la.l    $a0, str_face_draw_801B5610
	lui     $t6, %hi(_face_bss+0x3D0)
	lw      $t6, %lo(_face_bss+0x3D0)($t6)
	lui     $at, %hi(_face_bss+0x3D0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_bss+0x3D0)($at)
	lw      $t8, 0x0030($sp)
	nop
	bnez    $t8, .L8017862C
	nop
	b       .L8017893C
	nop
.L8017862C:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0024($sp)
	swc1    $f4, 0x0020($sp)
	swc1    $f4, 0x001C($sp)
	lw      $t9, 0x0034($sp)
	nop
	andi    $t0, $t9, 0x0002
	beqz    $t0, .L801786A4
	nop
	lwc1    $f12, 0x0044($sp)
	lwc1    $f14, 0x0048($sp)
	lw      $a2, 0x004C($sp)
	jal     face_gfx_8019F2DC
	nop
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0044($sp)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x0048($sp)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f8, 0x004C($sp)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($sp)
.L801786A4:
	lw      $t1, 0x0034($sp)
	nop
	andi    $t2, $t1, 0x0010
	beqz    $t2, .L8017871C
	nop
	lw      $t3, 0x006C($sp)
	nop
	beqz    $t3, .L8017871C
	nop
	lw      $a0, 0x006C($sp)
	jal     face_gfx_8019F054
	nop
	lw      $t4, 0x006C($sp)
	lwc1    $f16, 0x001C($sp)
	lwc1    $f18, 0x0030($t4)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x001C($sp)
	lw      $t5, 0x006C($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0034($t5)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($sp)
	lw      $t6, 0x006C($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f18, 0x0038($t6)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($sp)
.L8017871C:
	lw      $t7, 0x0034($sp)
	nop
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L801787A8
	nop
	lwc1    $f6, 0x0060($sp)
	mtc1    $0, $f8
	nop
	c.eq.s  $f6, $f8
	nop
	bc1t    .L80178758
	nop
	lwc1    $f12, 0x0060($sp)
	jal     face_gfx_8019F404
	li      $a1, 0x0079
.L80178758:
	lwc1    $f10, 0x005C($sp)
	mtc1    $0, $f16
	nop
	c.eq.s  $f10, $f16
	nop
	bc1t    .L80178780
	nop
	lwc1    $f12, 0x005C($sp)
	jal     face_gfx_8019F404
	li      $a1, 0x0078
.L80178780:
	lwc1    $f18, 0x0064($sp)
	mtc1    $0, $f4
	nop
	c.eq.s  $f18, $f4
	nop
	bc1t    .L801787A8
	nop
	lwc1    $f12, 0x0064($sp)
	jal     face_gfx_8019F404
	li      $a1, 0x007A
.L801787A8:
	lw      $t9, 0x0068($sp)
	nop
	beqz    $t9, .L8017881C
	nop
	li      $t0, 0x0001
	lui     $at, %hi(_face_bss+0x2E4)
	sw      $t0, %lo(_face_bss+0x2E4)($at)
	lw      $a0, 0x0068($sp)
	jal     face_draw_80178ED8
	nop
	lui     $at, %hi(_face_draw_data+0x84)
	sw      $v0, %lo(_face_draw_data+0x84)($at)
	lui     $t1, %hi(_face_draw_data+0x84)
	lw      $t1, %lo(_face_draw_data+0x84)($t1)
	nop
	beqz    $t1, .L80178808
	nop
	lui     $a1, %hi(_face_draw_data+0x84)
	lw      $a1, %lo(_face_draw_data+0x84)($a1)
	li      $a0, -0x0001
	jal     face_gfx_801A09AC
	li      $a2, 0x0040
	b       .L80178814
	nop
.L80178808:
	la.u    $a0, str_face_draw_801B561C
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_draw_801B561C
.L80178814:
	b       .L8017882C
	nop
.L8017881C:
	lui     $at, %hi(_face_bss+0x2E4)
	sw      $0, %lo(_face_bss+0x2E4)($at)
	lui     $at, %hi(_face_draw_data+0x84)
	sw      $0, %lo(_face_draw_data+0x84)($at)
.L8017882C:
	lui     $t2, %hi(_face_bss+0x460)
	lw      $t2, %lo(_face_bss+0x460)($t2)
	nop
	beqz    $t2, .L801788C4
	nop
	lw      $t3, 0x0030($sp)
	nop
	lw      $t4, 0x002C($t3)
	nop
	beqz    $t4, .L801788C4
	nop
	lw      $t5, 0x006C($sp)
	nop
	beqz    $t5, .L801788A4
	nop
	lw      $t6, 0x006C($sp)
	nop
	lwc1    $f6, 0x0030($t6)
	nop
	swc1    $f6, 0x001C($sp)
	lw      $t7, 0x006C($sp)
	nop
	lwc1    $f8, 0x0034($t7)
	nop
	swc1    $f8, 0x0020($sp)
	lw      $t8, 0x006C($sp)
	nop
	lwc1    $f10, 0x0038($t8)
	b       .L801788B8
	swc1    $f10, 0x0024($sp)
.L801788A4:
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0024($sp)
	swc1    $f16, 0x0020($sp)
	swc1    $f16, 0x001C($sp)
.L801788B8:
	lw      $a0, 0x0030($sp)
	jal     updateshaders
	addiu   $a1, $sp, 0x001C
.L801788C4:
	lw      $t9, 0x0034($sp)
	nop
	andi    $t0, $t9, 0x0004
	beqz    $t0, .L801788EC
	nop
	lwc1    $f12, 0x0050($sp)
	lwc1    $f14, 0x0054($sp)
	lw      $a2, 0x0058($sp)
	jal     face_gfx_8019F224
	nop
.L801788EC:
	lw      $t1, 0x0034($sp)
	nop
	andi    $t2, $t1, 0x0001
	beqz    $t2, .L80178914
	nop
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     face_gfx_8019F398
	nop
.L80178914:
	lw      $a0, 0x0030($sp)
	jal     face_draw_8017A358
	nop
	lui     $at, %hi(_face_bss+0x2E4)
	sw      $0, %lo(_face_bss+0x2E4)($at)
	la.u    $a0, str_face_draw_801B5638
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5638
	b       .L8017893C
	nop
.L8017893C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

Draw_Shape2D:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	la.u    $a0, str_face_draw_801B5644
	jal     restart_timer
	la.l    $a0, str_face_draw_801B5644
	lui     $t6, %hi(_face_bss+0x3D0)
	lw      $t6, %lo(_face_bss+0x3D0)($t6)
	lui     $at, %hi(_face_bss+0x3D0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_bss+0x3D0)($at)
	lw      $t8, 0x0030($sp)
	nop
	bnez    $t8, .L8017899C
	nop
	b       .L80178A30
	nop
.L8017899C:
	lw      $t9, 0x0034($sp)
	nop
	andi    $t0, $t9, 0x0002
	beqz    $t0, .L80178A10
	nop
	lwc1    $f4, 0x0044($sp)
	nop
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x0048($sp)
	nop
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x004C($sp)
	nop
	swc1    $f8, 0x0024($sp)
	lui     $t1, %hi(_face_draw_data+0x88)
	lw      $t1, %lo(_face_draw_data+0x88)($t1)
	nop
	beqz    $t1, .L801789FC
	nop
	lui     $a1, %hi(_face_draw_data+0x88)
	lw      $a1, %lo(_face_draw_data+0x88)($a1)
	addiu   $a0, $sp, 0x001C
	jal     face_math_80196570
	addiu   $a1, $a1, 0x00E8
.L801789FC:
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     face_gfx_8019F2DC
	nop
.L80178A10:
	lw      $a0, 0x0030($sp)
	jal     face_draw_8017A358
	nop
	la.u    $a0, str_face_draw_801B5650
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5650
	b       .L80178A30
	nop
.L80178A30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl face_draw_80178A40
face_draw_80178A40:
	addiu   $sp, $sp, -0x00A0
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x00A0($sp)
	lui     $t6, %hi(_face_bss+0x2E0)
	lw      $t6, %lo(_face_bss+0x2E0)($t6)
	li      $at, 0x001B
	bne     $t6, $at, .L80178A68
	nop
	b       .L80178C4C
	nop
.L80178A68:
	lw      $t7, 0x00A0($sp)
	la.u    $t8, _face_draw_data+0x78
	lwc1    $f4, 0x005C($t7)
	la.l    $t8, _face_draw_data+0x78
	swc1    $f4, 0x0000($t8)
	lw      $t9, 0x00A0($sp)
	la.u    $t0, _face_draw_data+0x78
	lwc1    $f6, 0x0060($t9)
	la.l    $t0, _face_draw_data+0x78
	swc1    $f6, 0x0004($t0)
	lw      $t1, 0x00A0($sp)
	la.u    $t2, _face_draw_data+0x78
	lwc1    $f8, 0x0064($t1)
	la.l    $t2, _face_draw_data+0x78
	swc1    $f8, 0x0008($t2)
	lw      $t3, 0x00A0($sp)
	nop
	lw      $t4, 0x002C($t3)
	nop
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L80178B64
	nop
	jal     face_math_801963C0
	addiu   $a0, $sp, 0x0054
	lw      $t6, 0x00A0($sp)
	nop
	lwc1    $f10, 0x0080($t6)
	nop
	neg.s   $f16, $f10
	swc1    $f16, 0x0094($sp)
	lw      $t7, 0x00A0($sp)
	nop
	lwc1    $f18, 0x0084($t7)
	nop
	neg.s   $f4, $f18
	swc1    $f4, 0x0098($sp)
	lw      $t8, 0x00A0($sp)
	nop
	lwc1    $f6, 0x0088($t8)
	nop
	neg.s   $f8, $f6
	swc1    $f8, 0x009C($sp)
	addiu   $a0, $sp, 0x0054
	addiu   $a1, $sp, 0x0094
	jal     face_math_80194498
	li      $a2, 0x0000
	lw      $t9, 0x00A0($sp)
	lui     $at, %hi(face_draw_801B58B8+4)
	lwc1    $f10, 0x0038($t9)
	lwc1    $f19, %lo(face_draw_801B58B8+0)($at)
	lwc1    $f18, %lo(face_draw_801B58B8+4)($at)
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x004C($sp)
	lui     $t0, %hi(_face_shape_data+0x04)
	lw      $t0, %lo(_face_shape_data+0x04)($t0)
	nop
	sw      $t0, 0x0048($sp)
	addiu   $t1, $sp, 0x0054
	b       .L80178BCC
	sw      $t1, 0x0050($sp)
.L80178B64:
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x004C($sp)
	lw      $t2, 0x00A0($sp)
	nop
	lw      $t3, 0x009C($t2)
	nop
	sw      $t3, 0x0048($sp)
	sw      $0, 0x0050($sp)
	lui     $t4, %hi(_face_draw_data+0x130)
	lw      $t4, %lo(_face_draw_data+0x130)($t4)
	lui     $at, %hi(_face_draw_data+0x130)
	addiu   $t5, $t4, 0x0001
	sw      $t5, %lo(_face_draw_data+0x130)($at)
	slti    $at, $t5, 0x0011
	bnez    $at, .L80178BB8
	nop
	li      $t6, 0x0001
	lui     $at, %hi(_face_draw_data+0x130)
	sw      $t6, %lo(_face_draw_data+0x130)($at)
.L80178BB8:
	lui     $t7, %hi(_face_draw_data+0x130)
	lw      $t7, %lo(_face_draw_data+0x130)($t7)
	lw      $t8, 0x0048($sp)
	nop
	sw      $t7, 0x0050($t8)
.L80178BCC:
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $t9, 0x00A0($sp)
	swc1    $f10, 0x0010($sp)
	lwc1    $f16, 0x0074($t9)
	mtc1    $0, $f10
	swc1    $f16, 0x0014($sp)
	lwc1    $f18, 0x0078($t9)
	mtc1    $0, $f16
	swc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x007C($t9)
	mtc1    $0, $f18
	swc1    $f4, 0x001C($sp)
	mtc1    $0, $f4
	mtc1    $0, $f6
	mtc1    $0, $f8
	lw      $a0, 0x0048($sp)
	li      $t0, -0x0001
	sw      $t0, 0x0038($sp)
	sw      $0, 0x003C($sp)
	li      $a1, 0x0002
	li      $a2, 0x3F800000
	li      $a3, 0x3F800000
	swc1    $f10, 0x0028($sp)
	swc1    $f16, 0x002C($sp)
	swc1    $f18, 0x0030($sp)
	swc1    $f4, 0x0034($sp)
	swc1    $f6, 0x0020($sp)
	jal     Draw_Shape2D
	swc1    $f8, 0x0024($sp)
	b       .L80178C4C
	nop
.L80178C4C:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x00A0
	jr      $ra
	nop

.globl Draw_Material
Draw_Material:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x0028($t6)
	nop
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0010
	bne     $t8, $at, .L80178D30
	nop
	lui     $t9, %hi(_face_bss+0x3D8)
	lw      $t9, %lo(_face_bss+0x3D8)($t9)
	nop
	beqz    $t9, .L80178D28
	nop
	lwc1    $f4, 0x0030($t9)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80178D28
	nop
	lui     $t0, %hi(_face_draw_data+0x88)
	lw      $t0, %lo(_face_draw_data+0x88)($t0)
	nop
	beqz    $t0, .L80178D14
	nop
	lw      $t1, 0x0028($sp)
	lui     $t2, %hi(_face_bss+0x3D8)
	lw      $t2, %lo(_face_bss+0x3D8)($t2)
	lui     $a1, %hi(_face_draw_data+0x88)
	la.u    $t3, _face_bss+0x3E0
	lw      $a0, 0x005C($t1)
	la.l    $t3, _face_bss+0x3E0
	lw      $a1, %lo(_face_draw_data+0x88)($a1)
	la.u    $a3, _face_bss+0x3F0
	addiu   $t4, $t2, 0x005C
	sw      $t4, 0x0014($sp)
	la.l    $a3, _face_bss+0x3F0
	sw      $t3, 0x0010($sp)
	jal     face_gfx_801A05B8
	addiu   $a2, $t2, 0x0074
	b       .L80178D20
	nop
.L80178D14:
	la.u    $a0, str_face_draw_801B565C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_draw_801B565C
.L80178D20:
	b       .L80178D30
	nop
.L80178D28:
	li      $t5, 0x0004
	sw      $t5, 0x0024($sp)
.L80178D30:
	lui     $t6, %hi(_face_bss+0x2E4)
	lw      $t6, %lo(_face_bss+0x2E4)($t6)
	nop
	bnez    $t6, .L80178D60
	nop
	lw      $t7, 0x0028($sp)
	lw      $a2, 0x0024($sp)
	lw      $a0, 0x005C($t7)
	jal     face_gfx_801A09AC
	addiu   $a1, $t7, 0x003C
	b       .L80178D78
	nop
.L80178D60:
	lw      $t8, 0x0028($sp)
	lui     $a1, %hi(_face_draw_data+0x84)
	lw      $a1, %lo(_face_draw_data+0x84)($a1)
	lw      $a0, 0x005C($t8)
	jal     face_gfx_801A09AC
	li      $a2, 0x0040
.L80178D78:
	b       .L80178D80
	nop
.L80178D80:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_draw_80178D90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x005C($t6)
	nop
	bnez    $t7, .L80178DD4
	nop
	lw      $t8, 0x0018($sp)
	nop
	lw      $a0, 0x0028($t8)
	jal     face_gfx_801A0494
	nop
	lw      $t9, 0x0018($sp)
	nop
	sw      $v0, 0x005C($t9)
.L80178DD4:
	b       .L80178DDC
	nop
.L80178DDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_80178DEC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	sw      $0, 0x0024($sp)
	lw      $t7, 0x0030($t6)
	nop
	blez    $t7, .L80178EC0
	nop
.L80178E10:
	lw      $t9, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	sll     $t0, $t9, 2
	addu    $t1, $t8, $t0
	lw      $t2, 0x0034($t1)
	nop
	sw      $t2, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	li      $at, 0x0027
	bne     $t3, $at, .L80178E50
	nop
	la.u    $a0, str_face_draw_801B5688
	jal     gd_printf
	la.l    $a0, str_face_draw_801B5688
	b       .L80178EC8
	nop
.L80178E50:
	lw      $t4, 0x0020($sp)
	li      $at, 0x3F800000
	lw      $t5, 0x0044($t4)
	nop
	bne     $t5, $at, .L80178E9C
	nop
	lw      $t6, 0x0020($sp)
	la.u    $a0, str_face_draw_801B5690
	lwc1    $f4, 0x003C($t6)
	lh      $t7, 0x0038($t6)
	cvt.d.s $f6, $f4
	sw      $t7, 0x0010($sp)
	lw      $t9, 0x000C($t6)
	mfc1    $a3, $f6
	mfc1    $a2, $f7
	la.l    $a0, str_face_draw_801B5690
	move    $a1, $t6
	jal     face_stdio_8018D298
	sw      $t9, 0x0014($sp)
.L80178E9C:
	lw      $t8, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x0024($sp)
	lw      $t2, 0x0030($t1)
	nop
	slt     $at, $t0, $t2
	bnez    $at, .L80178E10
	nop
.L80178EC0:
	b       .L80178EC8
	nop
.L80178EC8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_draw_80178ED8
face_draw_80178ED8:
	addiu   $t6, $a0, 0x0001
	sltiu   $at, $t6, 0x000C
	beqz    $at, .L80178FF4
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_draw_801B58C0)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_draw_801B58C0)($at)
	nop
	jr      $t6
	nop
.globl L80178F04
L80178F04:
	la.u    $v0, _face_draw_data+0x48
	jr      $ra
	la.l    $v0, _face_draw_data+0x48
	b       .L80178FFC
	nop
.globl L80178F18
L80178F18:
	la.u    $v0, _face_draw_data+0x00
	jr      $ra
	la.l    $v0, _face_draw_data+0x00
	b       .L80178FFC
	nop
.globl L80178F2C
L80178F2C:
	la.u    $v0, _face_draw_data+0x0C
	jr      $ra
	la.l    $v0, _face_draw_data+0x0C
	b       .L80178FFC
	nop
.globl L80178F40
L80178F40:
	la.u    $v0, _face_draw_data+0x18
	jr      $ra
	la.l    $v0, _face_draw_data+0x18
	b       .L80178FFC
	nop
.globl L80178F54
L80178F54:
	la.u    $v0, _face_draw_data+0x24
	jr      $ra
	la.l    $v0, _face_draw_data+0x24
	b       .L80178FFC
	nop
.globl L80178F68
L80178F68:
	la.u    $v0, _face_draw_data+0x54
	jr      $ra
	la.l    $v0, _face_draw_data+0x54
	b       .L80178FFC
	nop
.globl L80178F7C
L80178F7C:
	la.u    $v0, _face_draw_data+0x60
	jr      $ra
	la.l    $v0, _face_draw_data+0x60
	b       .L80178FFC
	nop
.globl L80178F90
L80178F90:
	la.u    $v0, _face_draw_data+0x30
	jr      $ra
	la.l    $v0, _face_draw_data+0x30
	b       .L80178FFC
	nop
.globl L80178FA4
L80178FA4:
	la.u    $v0, _face_draw_data+0x48
	jr      $ra
	la.l    $v0, _face_draw_data+0x48
	b       .L80178FFC
	nop
.globl L80178FB8
L80178FB8:
	la.u    $v0, _face_draw_data+0x6C
	jr      $ra
	la.l    $v0, _face_draw_data+0x6C
	b       .L80178FFC
	nop
.globl L80178FCC
L80178FCC:
	la.u    $v0, _face_draw_data+0x3C
	jr      $ra
	la.l    $v0, _face_draw_data+0x3C
	b       .L80178FFC
	nop
.globl L80178FE0
L80178FE0:
	la.u    $v0, _face_draw_data+0x78
	jr      $ra
	la.l    $v0, _face_draw_data+0x78
	b       .L80178FFC
	nop
.L80178FF4:
	jr      $ra
	move    $v0, $0
.L80178FFC:
	jr      $ra
	nop
	jr      $ra
	nop

face_draw_8017900C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	swc1    $f12, 0x0040($sp)
	swc1    $f14, 0x0044($sp)
	lwc1    $f4, 0x0050($sp)
	lwc1    $f6, 0x0044($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x003C($sp)
	lwc1    $f10, 0x004C($sp)
	lwc1    $f16, 0x0040($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0038($sp)
	lwc1    $f4, 0x0054($sp)
	lwc1    $f6, 0x0048($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lwc1    $f6, 0x0054($sp)
	lwc1    $f4, 0x0050($sp)
	lui     $at, %hi(face_draw_801B58F0+0)
	lwc1    $f8, 0x003C($sp)
	swc1    $f6, 0x0014($sp)
	lwc1    $f6, %lo(face_draw_801B58F0+4)($at)
	lwc1    $f7, %lo(face_draw_801B58F0+0)($at)
	swc1    $f4, 0x0010($sp)
	cvt.d.s $f4, $f8
	mul.d   $f8, $f4, $f6
	lwc1    $f10, 0x0040($sp)
	lui     $at, %hi(face_draw_801B58F8+0)
	cvt.d.s $f4, $f10
	lwc1    $f16, 0x0044($sp)
	add.d   $f6, $f4, $f8
	lwc1    $f4, 0x0038($sp)
	mov.s   $f12, $f10
	cvt.s.d $f10, $f6
	lwc1    $f6, %lo(face_draw_801B58F8+4)($at)
	lwc1    $f7, %lo(face_draw_801B58F8+0)($at)
	swc1    $f10, 0x0018($sp)
	cvt.d.s $f8, $f4
	mul.d   $f10, $f8, $f6
	cvt.d.s $f4, $f16
	lui     $at, %hi(face_draw_801B5900+0)
	mov.s   $f14, $f16
	lwc1    $f16, 0x0034($sp)
	add.d   $f8, $f4, $f10
	lwc1    $f10, %lo(face_draw_801B5900+4)($at)
	lwc1    $f11, %lo(face_draw_801B5900+0)($at)
	cvt.s.d $f6, $f8
	lwc1    $f18, 0x0048($sp)
	cvt.d.s $f4, $f16
	mul.d   $f8, $f4, $f10
	swc1    $f6, 0x001C($sp)
	cvt.d.s $f6, $f18
	lw      $a3, 0x004C($sp)
	mfc1    $a2, $f18
	add.d   $f16, $f6, $f8
	cvt.s.d $f4, $f16
	jal     face_gfx_801A0094
	swc1    $f4, 0x0020($sp)
	b       .L80179110
	nop
.L80179110:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl Draw_Face
Draw_Face:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	la.u    $a0, str_face_draw_801B56A4
	jal     face_stdio_8018D560
	la.l    $a0, str_face_draw_801B56A4
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(_face_bss+0x2E4)
	lw      $t6, %lo(_face_bss+0x2E4)($t6)
	nop
	bnez    $t6, .L801791E0
	nop
	lw      $t7, 0x0040($sp)
	nop
	lw      $t8, 0x0044($t7)
	nop
	bltz    $t8, .L801791E0
	nop
	lw      $t9, 0x0040($sp)
	nop
	lw      $t0, 0x0048($t9)
	nop
	beqz    $t0, .L801791D8
	nop
	lw      $t1, 0x0040($sp)
	nop
	lw      $t2, 0x0048($t1)
	nop
	lw      $t3, 0x005C($t2)
	nop
	beqz    $t3, .L801791D8
	sw      $t3, 0x0020($sp)
	lui     $t5, %hi(_face_bss+0x3CC)
	lw      $t5, %lo(_face_bss+0x3CC)($t5)
	lw      $t4, 0x0020($sp)
	nop
	beq     $t4, $t5, .L801791D8
	nop
	jal     face_gfx_801A01B0
	nop
	lw      $a0, 0x0020($sp)
	jal     face_gfx_801A0588
	nop
	lw      $t6, 0x0020($sp)
	lui     $at, %hi(_face_bss+0x3CC)
	sw      $t6, %lo(_face_bss+0x3CC)($at)
.L801791D8:
	b       .L801791E0
	nop
.L801791E0:
	lw      $t7, 0x0040($sp)
	nop
	lw      $a0, 0x0030($t7)
	jal     face_gfx_8019FB18
	nop
	lui     $t8, %hi(face_shade_smooth)
	lw      $t8, %lo(face_shade_smooth)($t8)
	nop
	bnez    $t8, .L80179214
	nop
	lw      $a0, 0x0040($sp)
	jal     face_gfx_801A1728
	addiu   $a0, $a0, 0x0024
.L80179214:
	lw      $t9, 0x0040($sp)
	sw      $0, 0x0020($sp)
	lw      $t0, 0x0030($t9)
	nop
	blez    $t0, .L80179340
	nop
.L8017922C:
	lw      $t2, 0x0020($sp)
	lw      $t1, 0x0040($sp)
	sll     $t3, $t2, 2
	addu    $t4, $t1, $t3
	lw      $t5, 0x0034($t4)
	nop
	sw      $t5, 0x003C($sp)
	lw      $t6, 0x003C($sp)
	nop
	lwc1    $f4, 0x0020($t6)
	nop
	swc1    $f4, 0x0030($sp)
	lw      $t7, 0x003C($sp)
	nop
	lwc1    $f6, 0x0024($t7)
	nop
	swc1    $f6, 0x0034($sp)
	lw      $t8, 0x003C($sp)
	nop
	lwc1    $f8, 0x0028($t8)
	nop
	swc1    $f8, 0x0038($sp)
	lui     $t9, %hi(face_shade_smooth)
	lw      $t9, %lo(face_shade_smooth)($t9)
	nop
	beqz    $t9, .L801792A4
	nop
	lw      $a0, 0x003C($sp)
	jal     face_gfx_801A1804
	addiu   $a0, $a0, 0x002C
.L801792A4:
	lw      $t0, 0x001C($sp)
	nop
	beqz    $t0, .L801792CC
	nop
	lw      $t2, 0x003C($sp)
	nop
	lwc1    $f12, 0x0044($t2)
	lwc1    $f14, 0x0048($t2)
	jal     face_gfx_801A5C98
	nop
.L801792CC:
	lw      $t1, 0x003C($sp)
	lwc1    $f12, 0x0030($sp)
	lwc1    $f14, 0x0034($sp)
	lw      $a2, 0x0038($sp)
	lw      $a3, 0x0040($t1)
	jal     face_gfx_8019FBA0
	nop
	sw      $v0, 0x0018($sp)
	lw      $t3, 0x0018($sp)
	nop
	beqz    $t3, .L8017931C
	nop
	lw      $t4, 0x003C($sp)
	lw      $a1, 0x0018($sp)
	lw      $a0, 0x0044($t4)
	jal     face_object_8017CA00
	nop
	lw      $t5, 0x003C($sp)
	nop
	sw      $v0, 0x0044($t5)
.L8017931C:
	lw      $t6, 0x0020($sp)
	lw      $t8, 0x0040($sp)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0020($sp)
	lw      $t9, 0x0030($t8)
	nop
	slt     $at, $t7, $t9
	bnez    $at, .L8017922C
	nop
.L80179340:
	jal     face_gfx_801A0030
	nop
	jal     imout
	nop
	b       .L80179358
	nop
.L80179358:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

face_draw_80179368:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     face_draw_80178ED8
	nop
	move    $s0, $v0
	jal     face_gfx_8019E438
	move    $a0, $s0
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0030($sp)
	lw      $a2, 0x0034($sp)
	lw      $a3, 0x0038($sp)
	jal     face_gfx_8019D4A0
	nop
	b       .L801793BC
	nop
.L801793BC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_draw_801793CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     face_draw_80178ED8
	nop
	move    $s0, $v0
	jal     face_gfx_8019E438
	move    $a0, $s0
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0030($sp)
	lw      $a2, 0x0034($sp)
	lw      $a3, 0x0038($sp)
	jal     face_gfx_8019D848
	nop
	b       .L80179420
	nop
.L80179420:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_draw_80179430:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	lw      $a1, 0x0048($sp)
	jal     face_object_8017D838
	addiu   $a0, $sp, 0x0028
	lw      $a0, 0x0048($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x001C
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     face_gfx_801A4578
	nop
	jal     face_gfx_801A4A18
	addiu   $a0, $sp, 0x0028
	b       .L80179480
	nop
.L80179480:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl face_draw_80179490
face_draw_80179490:
	addiu   $sp, $sp, -0x0150
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0150($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0150($sp)
	nop
	lw      $t7, 0x002C($t6)
	nop
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0150($sp)
	nop
	lw      $t9, 0x0028($t8)
	nop
	beqz    $t9, .L80179680
	sw      $t9, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	li      $at, 0x00040000
	lw      $t1, 0x0020($t0)
	nop
	bne     $t1, $at, .L80179508
	nop
	lw      $t2, 0x0030($sp)
	nop
	lw      $a0, 0x0014($t2)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0144
	b       .L8017951C
	nop
.L80179508:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x014C($sp)
	swc1    $f4, 0x0148($sp)
	swc1    $f4, 0x0144($sp)
.L8017951C:
	lw      $t3, 0x0030($sp)
	li      $at, 0x0001
	lw      $s0, 0x001C($t3)
	nop
	beq     $s0, $at, .L801795C0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80179548
	nop
	b       .L8017962C
	nop
.L80179548:
	lw      $t4, 0x0030($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a2, 0x0014($t4)
	lw      $a3, 0x0018($t4)
	jal     get_objvalue
	li      $a1, 0x0002
	lw      $t5, 0x0024($sp)
	nop
	beqz    $t5, .L80179598
	nop
	addiu   $t6, $sp, 0x0028
	lw      $at, 0x0000($t6)
	lw      $t9, 0x0024($sp)
	sw      $at, 0x0008($sp)
	lw      $t8, 0x0004($t6)
	lw      $a2, 0x0008($sp)
	sw      $t8, 0x000C($sp)
	lw      $a3, 0x000C($sp)
	jalr    $t9
	move    $a0, $t6
.L80179598:
	lwc1    $f6, 0x0028($sp)
	lw      $t0, 0x0150($sp)
	cvt.d.s $f8, $f6
	mfc1    $a3, $f8
	mfc1    $a2, $f9
	lw      $a1, 0x0020($t0)
	jal     sprintf
	addiu   $a0, $sp, 0x0044
	b       .L80179678
	nop
.L801795C0:
	lw      $t1, 0x0030($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a2, 0x0014($t1)
	lw      $a3, 0x0018($t1)
	jal     get_objvalue
	li      $a1, 0x0001
	lw      $t2, 0x0024($sp)
	nop
	beqz    $t2, .L80179610
	nop
	addiu   $t3, $sp, 0x0028
	lw      $at, 0x0000($t3)
	lw      $t9, 0x0024($sp)
	sw      $at, 0x0008($sp)
	lw      $t5, 0x0004($t3)
	lw      $a2, 0x0008($sp)
	sw      $t5, 0x000C($sp)
	lw      $a3, 0x000C($sp)
	jalr    $t9
	move    $a0, $t3
.L80179610:
	lw      $t7, 0x0150($sp)
	lw      $a2, 0x0028($sp)
	lw      $a1, 0x0020($t7)
	jal     sprintf
	addiu   $a0, $sp, 0x0044
	b       .L80179678
	nop
.L8017962C:
	lw      $t6, 0x0150($sp)
	nop
	lw      $t8, 0x0020($t6)
	nop
	beqz    $t8, .L80179660
	nop
	lw      $t0, 0x0150($sp)
	addiu   $a0, $sp, 0x0044
	lw      $a1, 0x0020($t0)
	jal     face_stdio_8018DDD8
	nop
	b       .L80179670
	nop
.L80179660:
	la.u    $a1, str_face_draw_801B56B0
	la.l    $a1, str_face_draw_801B56B0
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0044
.L80179670:
	b       .L80179678
	nop
.L80179678:
	b       .L801796D8
	nop
.L80179680:
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x014C($sp)
	swc1    $f10, 0x0148($sp)
	swc1    $f10, 0x0144($sp)
	lw      $t1, 0x0150($sp)
	nop
	lw      $t2, 0x0020($t1)
	nop
	beqz    $t2, .L801796C8
	nop
	lw      $t4, 0x0150($sp)
	addiu   $a0, $sp, 0x0044
	lw      $a1, 0x0020($t4)
	jal     face_stdio_8018DDD8
	nop
	b       .L801796D8
	nop
.L801796C8:
	la.u    $a1, str_face_draw_801B56B8
	la.l    $a1, str_face_draw_801B56B8
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0044
.L801796D8:
	lw      $t3, 0x0150($sp)
	lwc1    $f16, 0x0144($sp)
	lwc1    $f18, 0x0014($t3)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0144($sp)
	lw      $t5, 0x0150($sp)
	lwc1    $f6, 0x0148($sp)
	lwc1    $f8, 0x0018($t5)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0148($sp)
	lw      $t9, 0x0150($sp)
	lwc1    $f16, 0x014C($sp)
	lwc1    $f18, 0x001C($t9)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x014C($sp)
	lwc1    $f12, 0x0144($sp)
	lwc1    $f14, 0x0148($sp)
	lw      $a2, 0x014C($sp)
	jal     face_gfx_801A4578
	nop
	lw      $t7, 0x0150($sp)
	nop
	lw      $a0, 0x0030($t7)
	jal     face_gfx_801A4A04
	nop
	jal     face_gfx_801A4A18
	addiu   $a0, $sp, 0x0044
	b       .L80179758
	nop
.L80179758:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0150

.globl face_draw_80179768
face_draw_80179768:
	addiu   $sp, $sp, -0x00A0
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x00A0($sp)
	lw      $t6, 0x00A0($sp)
	nop
	sw      $t6, 0x009C($sp)
	lui     $t7, %hi(_face_bss+0x2E0)
	lw      $t7, %lo(_face_bss+0x2E0)($t7)
	li      $at, 0x001B
	bne     $t7, $at, .L8017979C
	nop
	b       .L8017989C
	nop
.L8017979C:
	lw      $t8, 0x009C($sp)
	nop
	lhu     $t9, 0x0012($t8)
	nop
	andi    $t0, $t9, 0x0010
	beqz    $t0, .L801797C4
	nop
	li      $t1, 0x0008
	b       .L801797D8
	sw      $t1, 0x0098($sp)
.L801797C4:
	lw      $t2, 0x009C($sp)
	nop
	lw      $t3, 0x0040($t2)
	nop
	sw      $t3, 0x0098($sp)
.L801797D8:
	lw      $t4, 0x009C($sp)
	nop
	lw      $t5, 0x01A8($t4)
	nop
	beqz    $t5, .L80179868
	nop
	lw      $t6, 0x009C($sp)
	mtc1    $0, $f4
	lw      $a0, 0x01A8($t6)
	mtc1    $0, $f6
	mtc1    $0, $f8
	mtc1    $0, $f10
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	swc1    $f8, 0x0018($sp)
	swc1    $f10, 0x001C($sp)
	mtc1    $0, $f10
	mtc1    $0, $f8
	mtc1    $0, $f6
	mtc1    $0, $f4
	mtc1    $0, $f16
	mtc1    $0, $f18
	lw      $t7, 0x0098($sp)
	addiu   $t8, $t6, 0x0168
	sw      $t8, 0x003C($sp)
	li      $a1, 0x0010
	li      $a2, 0x0000
	li      $a3, 0x0000
	swc1    $f10, 0x0034($sp)
	swc1    $f8, 0x0030($sp)
	swc1    $f6, 0x002C($sp)
	swc1    $f4, 0x0028($sp)
	swc1    $f16, 0x0020($sp)
	swc1    $f18, 0x0024($sp)
	jal     Draw_Shape
	sw      $t7, 0x0038($sp)
.L80179868:
	lw      $t9, 0x009C($sp)
	nop
	lw      $t0, 0x01C8($t9)
	nop
	beqz    $t0, .L80179894
	nop
	lw      $t1, 0x009C($sp)
	nop
	lw      $a0, 0x01C8($t1)
	jal     Draw_Group
	nop
.L80179894:
	b       .L8017989C
	nop
.L8017989C:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x00A0
	jr      $ra
	nop

.globl face_draw_801798AC
face_draw_801798AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $0, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x005C($t6)
	nop
	beqz    $t7, .L801798E8
	nop
	lw      $t8, 0x0028($sp)
	nop
	lw      $t9, 0x005C($t8)
	nop
	sw      $t9, 0x0024($sp)
.L801798E8:
	lw      $t0, 0x0028($sp)
	lw      $a0, 0x0024($sp)
	lwc1    $f8, 0x0028($t0)
	lwc1    $f10, 0x0040($t0)
	lwc1    $f4, 0x0014($t0)
	mul.s   $f16, $f8, $f10
	lwc1    $f6, 0x0018($t0)
	lwc1    $f8, 0x0044($t0)
	mfc1    $a1, $f4
	add.s   $f18, $f4, $f16
	mfc1    $a2, $f6
	add.s   $f10, $f6, $f8
	mfc1    $a3, $f18
	jal     face_draw_80179368
	swc1    $f10, 0x0010($sp)
	lw      $t1, 0x0028($sp)
	nop
	lhu     $t2, 0x0012($t1)
	nop
	andi    $t3, $t2, 0x0010
	beqz    $t3, .L8017997C
	nop
	lw      $t4, 0x0028($sp)
	li      $a0, 0x0008
	lwc1    $f18, 0x0028($t4)
	lwc1    $f6, 0x0040($t4)
	lwc1    $f4, 0x0014($t4)
	mul.s   $f8, $f18, $f6
	lwc1    $f16, 0x0018($t4)
	lwc1    $f18, 0x0044($t4)
	mfc1    $a1, $f4
	add.s   $f10, $f4, $f8
	mfc1    $a2, $f16
	add.s   $f6, $f16, $f18
	mfc1    $a3, $f10
	jal     face_draw_801793CC
	swc1    $f6, 0x0010($sp)
.L8017997C:
	lw      $t5, 0x0028($sp)
	li      $at, -0x0011
	lhu     $t6, 0x0012($t5)
	nop
	and     $t7, $t6, $at
	sh      $t7, 0x0012($t5)
	b       .L8017999C
	nop
.L8017999C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl Draw_Camera
Draw_Camera:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0050($sp)
	swc1    $f23, 0x0028($sp)
	swc1    $f22, 0x002C($sp)
	swc1    $f21, 0x0020($sp)
	swc1    $f20, 0x0024($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0040($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0044($sp)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0048($sp)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x004C($sp)
	lw      $t6, 0x0050($sp)
	nop
	lw      $t7, 0x0030($t6)
	nop
	beqz    $t7, .L80179A7C
	nop
	lw      $t8, 0x0050($sp)
	nop
	lw      $a0, 0x0030($t8)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0044
	lw      $t9, 0x0050($sp)
	lwc1    $f16, 0x0044($sp)
	lwc1    $f18, 0x0034($t9)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0044($sp)
	lw      $t0, 0x0050($sp)
	lwc1    $f6, 0x0048($sp)
	lwc1    $f8, 0x0038($t0)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0048($sp)
	lw      $t1, 0x0050($sp)
	lwc1    $f16, 0x004C($sp)
	lwc1    $f18, 0x003C($t1)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x004C($sp)
	b       .L80179AB8
	nop
.L80179A7C:
	lw      $t2, 0x0050($sp)
	nop
	lwc1    $f6, 0x0034($t2)
	nop
	swc1    $f6, 0x0044($sp)
	lw      $t3, 0x0050($sp)
	nop
	lwc1    $f8, 0x0038($t3)
	nop
	swc1    $f8, 0x0048($sp)
	lw      $t4, 0x0050($sp)
	nop
	lwc1    $f10, 0x003C($t4)
	nop
	swc1    $f10, 0x004C($sp)
.L80179AB8:
	b       .L80179B00
	nop
	lw      $t5, 0x0050($sp)
	la.u    $a0, str_face_draw_801B56C0
	lwc1    $f4, 0x0018($t5)
	lwc1    $f16, 0x0014($t5)
	cvt.d.s $f6, $f4
	swc1    $f6, 0x0014($sp)
	swc1    $f7, 0x0010($sp)
	lwc1    $f8, 0x001C($t5)
	cvt.d.s $f18, $f16
	mfc1    $a3, $f18
	mfc1    $a2, $f19
	cvt.d.s $f10, $f8
	swc1    $f10, 0x001C($sp)
	swc1    $f11, 0x0018($sp)
	jal     gd_printf
	la.l    $a0, str_face_draw_801B56C0
.L80179B00:
	lw      $t6, 0x0050($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f16, 0x0014($t6)
	mtc1    $0, $f6
	sub.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80179B2C
	nop
	b       .L80179B40
	neg.s   $f22, $f4
.L80179B2C:
	lw      $t7, 0x0050($sp)
	lwc1    $f10, 0x0044($sp)
	lwc1    $f8, 0x0014($t7)
	nop
	sub.s   $f22, $f8, $f10
.L80179B40:
	lw      $t8, 0x0050($sp)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f16, 0x001C($t8)
	mtc1    $0, $f4
	sub.s   $f6, $f16, $f18
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80179B6C
	nop
	b       .L80179B80
	neg.s   $f20, $f6
.L80179B6C:
	lw      $t9, 0x0050($sp)
	lwc1    $f10, 0x004C($sp)
	lwc1    $f8, 0x001C($t9)
	nop
	sub.s   $f20, $f8, $f10
.L80179B80:
	add.s   $f16, $f20, $f22
	mtc1    $0, $f18
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    .L80179BB0
	nop
	la.u    $a0, str_face_draw_801B56CC
	jal     gd_printf
	la.l    $a0, str_face_draw_801B56CC
	b       .L80179BF0
	nop
.L80179BB0:
	lw      $t0, 0x0050($sp)
	lwc1    $f4, 0x0044($sp)
	lw      $a1, 0x0014($t0)
	lw      $a2, 0x0018($t0)
	lw      $a3, 0x001C($t0)
	lwc1    $f6, 0x0048($sp)
	lwc1    $f8, 0x004C($sp)
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	swc1    $f8, 0x0018($sp)
	lwc1    $f10, 0x00A4($t0)
	move    $a0, $t0
	jal     face_gfx_8019F458
	swc1    $f10, 0x001C($sp)
	b       .L80179BF0
	nop
.L80179BF0:
	lw      $ra, 0x0034($sp)
	lwc1    $f21, 0x0020($sp)
	lwc1    $f20, 0x0024($sp)
	lwc1    $f23, 0x0028($sp)
	lwc1    $f22, 0x002C($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0050

face_draw_80179C0C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0020
	lw      $t7, 0x000C($t6)
	nop
	bne     $t7, $at, .L80179C6C
	nop
	b       .L80179C38
	nop
.L80179C38:
	lw      $t8, 0x0018($sp)
	nop
	lw      $t9, 0x01C8($t8)
	nop
	beqz    $t9, .L80179C64
	nop
	lw      $t0, 0x0018($sp)
	nop
	lw      $a0, 0x01C8($t0)
	jal     face_draw_80179CA4
	nop
.L80179C64:
	b       .L80179C74
	nop
.L80179C6C:
	b       .L80179C74
	nop
.L80179C74:
	lw      $t1, 0x0018($sp)
	li      $at, -0x0002
	lhu     $t2, 0x0012($t1)
	nop
	and     $t3, $t2, $at
	sh      $t3, 0x0012($t1)
	b       .L80179C94
	nop
.L80179C94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_80179CA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, face_draw_80179C0C
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_draw_80179C0C
	jal     face_object_8017E520
	li      $a0, 0xA226
	b       .L80179CCC
	nop
.L80179CCC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_draw_80179CDC
face_draw_80179CDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     face_math_80196570
	addiu   $a1, $a1, 0x00E8
	lw      $t6, 0x0018($sp)
	li      $at, 0xC3800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80179D2C
	nop
	b       .L80179DF8
	nop
.L80179D2C:
	lw      $t7, 0x0018($sp)
	li      $at, 0x40700000
	lwc1    $f10, 0x0008($t7)
	mtc1    $at, $f9
	mtc1    $0, $f8
	neg.s   $f16, $f10
	cvt.d.s $f18, $f16
	nop
	div.d   $f4, $f8, $f18
	lwc1    $f6, 0x0000($t7)
	nop
	cvt.d.s $f10, $f6
	mul.d   $f16, $f10, $f4
	cvt.s.d $f8, $f16
	swc1    $f8, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	li      $at, 0x40700000
	lwc1    $f6, 0x0008($t8)
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f10, $f6
	nop
	div.d   $f4, $f18, $f10
	lwc1    $f16, 0x0004($t8)
	nop
	cvt.d.s $f8, $f16
	mul.d   $f6, $f8, $f4
	cvt.s.d $f18, $f6
	swc1    $f18, 0x0004($t8)
	lw      $t9, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t9)
	lw      $t0, 0x0018($sp)
	div.s   $f8, $f10, $f16
	lwc1    $f4, 0x0000($t0)
	nop
	add.s   $f6, $f4, $f8
	swc1    $f6, 0x0000($t0)
	lw      $t1, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f18, 0x0058($t1)
	lw      $t2, 0x0018($sp)
	div.s   $f16, $f18, $f10
	lwc1    $f4, 0x0004($t2)
	nop
	add.s   $f8, $f4, $f16
	swc1    $f8, 0x0004($t2)
	b       .L80179DF8
	nop
.L80179DF8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_80179E08:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lui     $t6, %hi(_face_draw_data+0x88)
	lw      $t6, %lo(_face_draw_data+0x88)($t6)
	nop
	bnez    $t6, .L80179E38
	nop
	b       .L80179FFC
	nop
.L80179E38:
	lw      $t7, 0x0048($sp)
	nop
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	nop
	lhu     $t9, 0x0012($t8)
	nop
	andi    $t0, $t9, 0x0008
	bnez    $t0, .L80179E68
	nop
	b       .L80179FFC
	nop
.L80179E68:
	lw      $a0, 0x002C($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0028($sp)
	lw      $t1, 0x0028($sp)
	nop
	lwc1    $f4, 0x0030($t1)
	nop
	swc1    $f4, 0x003C($sp)
	lw      $t2, 0x0028($sp)
	nop
	lwc1    $f6, 0x0034($t2)
	nop
	swc1    $f6, 0x0040($sp)
	lw      $t3, 0x0028($sp)
	nop
	lwc1    $f8, 0x0038($t3)
	nop
	swc1    $f8, 0x0044($sp)
	lui     $a1, %hi(_face_draw_data+0x88)
	lui     $a2, %hi(_face_bss+0x3C4)
	lw      $a2, %lo(_face_bss+0x3C4)($a2)
	lw      $a1, %lo(_face_draw_data+0x88)($a1)
	jal     face_draw_80179CDC
	addiu   $a0, $sp, 0x003C
	lui     $t4, %hi(_face_bss+0xD0)
	lw      $t4, %lo(_face_bss+0xD0)($t4)
	lwc1    $f18, 0x003C($sp)
	mtc1    $t4, $f10
	mtc1    $0, $f6
	cvt.s.w $f16, $f10
	sub.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80179F08
	nop
	b       .L80179F24
	neg.s   $f20, $f4
.L80179F08:
	lui     $t5, %hi(_face_bss+0xD0)
	lw      $t5, %lo(_face_bss+0xD0)($t5)
	lwc1    $f16, 0x003C($sp)
	mtc1    $t5, $f8
	nop
	cvt.s.w $f10, $f8
	sub.s   $f20, $f10, $f16
.L80179F24:
	li      $at, 0x41A00000
	mtc1    $at, $f18
	nop
	c.lt.s  $f20, $f18
	nop
	bc1f    .L80179FF4
	nop
	lui     $t6, %hi(_face_bss+0xD4)
	lw      $t6, %lo(_face_bss+0xD4)($t6)
	lwc1    $f8, 0x0040($sp)
	mtc1    $t6, $f6
	mtc1    $0, $f16
	cvt.s.w $f4, $f6
	sub.s   $f10, $f4, $f8
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80179F74
	nop
	b       .L80179F90
	neg.s   $f20, $f10
.L80179F74:
	lui     $t7, %hi(_face_bss+0xD4)
	lw      $t7, %lo(_face_bss+0xD4)($t7)
	lwc1    $f4, 0x0040($sp)
	mtc1    $t7, $f18
	nop
	cvt.s.w $f6, $f18
	sub.s   $f20, $f6, $f4
.L80179F90:
	li      $at, 0x41A00000
	mtc1    $at, $f8
	nop
	c.lt.s  $f20, $f8
	nop
	bc1f    .L80179FF4
	nop
	jal     face_gfx_801A5B44
	li      $a0, 0x0002
	lw      $t8, 0x002C($sp)
	nop
	lw      $a0, 0x000C($t8)
	jal     face_gfx_801A5B44
	nop
	lw      $t9, 0x002C($sp)
	nop
	lh      $a0, 0x0010($t9)
	jal     face_gfx_801A5B44
	nop
	lwc1    $f16, 0x003C($sp)
	lui     $at, %hi(_face_bss+0x468)
	swc1    $f16, %lo(_face_bss+0x468)($at)
	lwc1    $f10, 0x0040($sp)
	lui     $at, %hi(_face_bss+0x46C)
	swc1    $f10, %lo(_face_bss+0x46C)($at)
.L80179FF4:
	b       .L80179FFC
	nop
.L80179FFC:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

draw_scene:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	la.u    $a0, str_face_draw_801B56F0
	jal     restart_timer
	la.l    $a0, str_face_draw_801B56F0
	la.u    $a0, str_face_draw_801B56FC
	jal     face_stdio_8018D560
	la.l    $a0, str_face_draw_801B56FC
	lui     $at, %hi(_face_draw_data+0x90)
	sw      $0, %lo(_face_draw_data+0x90)($at)
	lui     $at, %hi(_face_bss+0x3C8)
	sw      $0, %lo(_face_bss+0x3C8)($at)
	la.u    $a0, str_face_draw_801B570C
	jal     restart_timer
	la.l    $a0, str_face_draw_801B570C
	jal     face_gfx_801A18F0
	li      $a0, 0x0005
	lui     $t6, %hi(_face_bss+0x3C4)
	lw      $t6, %lo(_face_bss+0x3C4)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0038($t6)
	nop
	bne     $t7, $at, .L8017A0AC
	nop
	lui     $t8, %hi(_face_bss+0x3C4)
	lw      $t8, %lo(_face_bss+0x3C4)($t8)
	nop
	lwc1    $f4, 0x0054($t8)
	lwc1    $f6, 0x0058($t8)
	lwc1    $f12, 0x0068($t8)
	lw      $a2, 0x0060($t8)
	lw      $a3, 0x0064($t8)
	jal     face_gfx_801A3DCC
	div.s   $f14, $f4, $f6
	b       .L8017A14C
	nop
.L8017A0AC:
	lui     $t9, %hi(_face_bss+0x3C4)
	lw      $t9, %lo(_face_bss+0x3C4)($t9)
	li      $at, 0x40000000
	lwc1    $f8, 0x0054($t9)
	mtc1    $at, $f19
	mtc1    $0, $f18
	neg.s   $f10, $f8
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	mtc1    $0, $f10
	mtc1    $at, $f11
	cvt.d.s $f6, $f8
	lwc1    $f18, 0x0058($t9)
	div.d   $f16, $f6, $f10
	cvt.s.d $f12, $f4
	mtc1    $0, $f6
	mtc1    $at, $f7
	neg.s   $f4, $f18
	cvt.d.s $f8, $f4
	cvt.d.s $f4, $f18
	nop
	div.d   $f10, $f8, $f6
	mtc1    $0, $f8
	mtc1    $at, $f9
	cvt.s.d $f14, $f16
	nop
	div.d   $f6, $f4, $f8
	cvt.s.d $f16, $f10
	mfc1    $a2, $f16
	lwc1    $f16, 0x0060($t9)
	nop
	swc1    $f16, 0x0010($sp)
	lwc1    $f18, 0x0064($t9)
	nop
	swc1    $f18, 0x0014($sp)
	cvt.s.d $f10, $f6
	mfc1    $a3, $f10
	jal     face_gfx_801A3C30
	nop
.L8017A14C:
	lw      $t0, 0x0038($sp)
	nop
	beqz    $t0, .L8017A184
	nop
	jal     face_gfx_801A18F0
	li      $a0, 0x0006
	li.u    $a0, 0x00080008
	la.u    $a1, face_draw_8017A9E0
	lw      $a2, 0x0038($sp)
	la.l    $a1, face_draw_8017A9E0
	jal     face_object_8017E520
	li.l    $a0, 0x00080008
	jal     face_gfx_801A18F0
	li      $a0, 0x0005
.L8017A184:
	lui     $t1, %hi(_face_draw_data+0x88)
	lw      $t1, %lo(_face_draw_data+0x88)($t1)
	nop
	beqz    $t1, .L8017A1B0
	nop
	lui     $a0, %hi(_face_draw_data+0x88)
	lw      $a0, %lo(_face_draw_data+0x88)($a0)
	jal     Draw_Camera
	nop
	b       .L8017A1C0
	nop
.L8017A1B0:
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     face_gfx_8019F224
	li      $a2, 0xC47A0000
.L8017A1C0:
	jal     face_draw_80178280
	nop
	jal     face_gfx_801A18F0
	li      $a0, 0x0006
	jal     face_gfx_8019F16C
	nop
	lw      $t2, 0x0030($sp)
	lui     $at, %hi(_face_bss+0x2E0)
	sw      $t2, %lo(_face_bss+0x2E0)($at)
	lui     $t3, %hi(_face_bss+0x3C4)
	lw      $t3, %lo(_face_bss+0x3C4)($t3)
	li      $at, 0x00200000
	lw      $t4, 0x0034($t3)
	nop
	and     $t5, $t4, $at
	lui     $at, %hi(_face_bss+0x460)
	beqz    $t5, .L8017A224
	sw      $t5, %lo(_face_bss+0x460)($at)
	lui     $t6, %hi(_face_bss+0x3C4)
	lw      $t6, %lo(_face_bss+0x3C4)($t6)
	li.u    $at, 0xFFDFFFFF
	lw      $t7, 0x0034($t6)
	li.l    $at, 0xFFDFFFFF
	and     $t8, $t7, $at
	sw      $t8, 0x0034($t6)
.L8017A224:
	li      $t9, 0x0001
	lui     $at, %hi(_face_bss+0x460)
	sw      $t9, %lo(_face_bss+0x460)($at)
	lui     $a2, %hi(_face_bss+0x298)
	lw      $a2, %lo(_face_bss+0x298)($a2)
	la.u    $a1, face_draw_8017AA5C
	la.l    $a1, face_draw_8017AA5C
	jal     face_object_8017E520
	li      $a0, 0x00080000
	la.u    $a0, str_face_draw_801B5714
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5714
	la.u    $a0, str_face_draw_801B571C
	jal     restart_timer
	la.l    $a0, str_face_draw_801B571C
	la.u    $a0, str_face_draw_801B5724
	jal     face_stdio_8018D560
	la.l    $a0, str_face_draw_801B5724
	lui     $t0, %hi(_face_bss+0x2E0)
	lw      $t0, %lo(_face_bss+0x2E0)($t0)
	li      $at, 0x001B
	bne     $t0, $at, .L8017A2A0
	nop
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_draw_80179E08
	lw      $a2, 0x0034($sp)
	la.l    $a1, face_draw_80179E08
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
	b       .L8017A2B8
	nop
.L8017A2A0:
	li.u    $a0, 0x00082028
	la.u    $a1, face_draw_8017A9E0
	lw      $a2, 0x0034($sp)
	la.l    $a1, face_draw_8017A9E0
	jal     face_object_8017E520
	li.l    $a0, 0x00082028
.L8017A2B8:
	jal     imout
	nop
	la.u    $a0, str_face_draw_801B5734
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5734
	li      $a0, 0x000B
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	la.u    $a1, face_draw_8017A9E0
	lw      $a2, 0x0034($sp)
	la.l    $a1, face_draw_8017A9E0
	jal     face_object_8017E520
	li      $a0, 0x8000
	li      $a0, 0x000B
	li      $a1, 0x3F800000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	jal     face_gfx_8019F1D8
	nop
	jal     imout
	nop
	la.u    $a0, str_face_draw_801B573C
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B573C
	b       .L8017A334
	nop
	b       .L8017A334
	nop
.L8017A334:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl face_draw_8017A344
face_draw_8017A344:
	sw      $a0, 0x0000($sp)
	b       .L8017A350
	nop
.L8017A350:
	jr      $ra
	nop

face_draw_8017A358:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x3CC)
	sw      $0, %lo(_face_bss+0x3CC)($at)
	lui     $at, %hi(_face_bss+0x3C8)
	sw      $0, %lo(_face_bss+0x3C8)($at)
	jal     face_gfx_801A24B4
	move    $a0, $0
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_draw_data+0x90)
	lw      $t7, 0x0044($t6)
	nop
	andi    $t8, $t7, 0x0001
	sw      $t8, %lo(_face_draw_data+0x90)($at)
	lw      $t9, 0x0018($sp)
	nop
	lwc1    $f12, 0x0058($t9)
	jal     face_gfx_801A03F8
	nop
	lui     $t1, %hi(_face_gfx_data+0x40)
	lw      $t1, %lo(_face_gfx_data+0x40)($t1)
	lw      $t0, 0x0018($sp)
	sll     $t2, $t1, 2
	addu    $t3, $t0, $t2
	lw      $t4, 0x0048($t3)
	nop
	beqz    $t4, .L8017A3F8
	nop
	lui     $t6, %hi(_face_gfx_data+0x40)
	lw      $t6, %lo(_face_gfx_data+0x40)($t6)
	lw      $t5, 0x0018($sp)
	sll     $t7, $t6, 2
	addu    $t8, $t5, $t7
	lw      $a0, 0x0048($t8)
	lw      $a1, 0x0050($t5)
	jal     face_gfx_8019BE4C
	nop
	b       .L8017A434
	nop
.L8017A3F8:
	lw      $t9, 0x0018($sp)
	nop
	lw      $t1, 0x001C($t9)
	nop
	beqz    $t1, .L8017A434
	nop
	jal     face_gfx_801A0178
	nop
	lw      $t0, 0x0018($sp)
	nop
	lw      $a0, 0x001C($t0)
	jal     Draw_Group
	nop
	jal     face_gfx_801A01B0
	nop
.L8017A434:
	b       .L8017A43C
	nop
.L8017A43C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_draw_8017A44C
face_draw_8017A44C:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x0078($sp)
	lw      $t6, 0x0078($sp)
	nop
	sw      $t6, 0x0074($sp)
	lw      $t7, 0x0074($sp)
	nop
	lw      $t8, 0x005C($t7)
	nop
	blez    $t8, .L8017A55C
	nop
	la.u    $t9, _face_draw_data+0x94
	la.l    $t9, _face_draw_data+0x94
	lw      $t0, 0x0000($t9)
	nop
	sw      $t0, 0x0060($sp)
	la.u    $t1, _face_draw_data+0xA8
	la.l    $t1, _face_draw_data+0xA8
	lw      $t2, 0x0004($t1)
	nop
	sw      $t2, 0x005C($sp)
	lw      $t3, 0x0074($sp)
	li      $at, 0x40240000
	lw      $t4, 0x005C($t3)
	mtc1    $at, $f9
	mtc1    $t4, $f4
	mtc1    $0, $f8
	cvt.d.w $f6, $f4
	nop
	div.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0058($sp)
	lw      $t5, 0x0060($sp)
	lw      $t6, 0x005C($sp)
	lwc1    $f18, 0x0000($t5)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f8, 0x0058($sp)
	sub.s   $f6, $f18, $f4
	la.u    $t7, _face_draw_data+0x78
	mul.s   $f10, $f6, $f8
	la.l    $t7, _face_draw_data+0x78
	add.s   $f16, $f10, $f4
	swc1    $f16, 0x0000($t7)
	lw      $t8, 0x0060($sp)
	lw      $t9, 0x005C($sp)
	lwc1    $f18, 0x0004($t8)
	lwc1    $f6, 0x0004($t9)
	lwc1    $f10, 0x0058($sp)
	sub.s   $f8, $f18, $f6
	la.u    $t0, _face_draw_data+0x78
	mul.s   $f4, $f8, $f10
	la.l    $t0, _face_draw_data+0x78
	add.s   $f16, $f4, $f6
	swc1    $f16, 0x0004($t0)
	lw      $t1, 0x0060($sp)
	lw      $t2, 0x005C($sp)
	lwc1    $f18, 0x0008($t1)
	lwc1    $f8, 0x0008($t2)
	lwc1    $f4, 0x0058($sp)
	sub.s   $f10, $f18, $f8
	la.u    $t3, _face_draw_data+0x78
	mul.s   $f6, $f10, $f4
	la.l    $t3, _face_draw_data+0x78
	add.s   $f16, $f6, $f8
	swc1    $f16, 0x0008($t3)
	b       .L8017A58C
	nop
.L8017A55C:
	mtc1    $0, $f18
	la.u    $t4, _face_draw_data+0x78
	la.l    $t4, _face_draw_data+0x78
	swc1    $f18, 0x0000($t4)
	mtc1    $0, $f10
	la.u    $t5, _face_draw_data+0x78
	la.l    $t5, _face_draw_data+0x78
	swc1    $f10, 0x0004($t5)
	mtc1    $0, $f4
	la.u    $t6, _face_draw_data+0x78
	la.l    $t6, _face_draw_data+0x78
	swc1    $f4, 0x0008($t6)
.L8017A58C:
	lw      $t7, 0x0074($sp)
	nop
	lw      $t8, 0x005C($t7)
	nop
	blez    $t8, .L8017A634
	nop
	lw      $t9, 0x0074($sp)
	nop
	lw      $t0, 0x005C($t9)
	lw      $t1, 0x001C($t9)
	nop
	sw      $t0, 0x0050($t1)
	lw      $t2, 0x0074($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $a0, 0x001C($t2)
	swc1    $f6, 0x0010($sp)
	lwc1    $f8, 0x0020($t2)
	mtc1    $0, $f6
	swc1    $f8, 0x0014($sp)
	lwc1    $f16, 0x0024($t2)
	mtc1    $0, $f8
	swc1    $f16, 0x0018($sp)
	lwc1    $f18, 0x0028($t2)
	mtc1    $0, $f16
	swc1    $f18, 0x001C($sp)
	mtc1    $0, $f18
	mtc1    $0, $f10
	mtc1    $0, $f4
	li      $t3, -0x0001
	sw      $t3, 0x0038($sp)
	sw      $0, 0x003C($sp)
	li      $a1, 0x0002
	li      $a2, 0x3F800000
	li      $a3, 0x3F800000
	swc1    $f6, 0x0028($sp)
	swc1    $f8, 0x002C($sp)
	swc1    $f16, 0x0030($sp)
	swc1    $f18, 0x0034($sp)
	swc1    $f10, 0x0020($sp)
	jal     Draw_Shape2D
	swc1    $f4, 0x0024($sp)
.L8017A634:
	lw      $t4, 0x0074($sp)
	li      $at, 0x0003
	lw      $t5, 0x0060($t4)
	nop
	bne     $t5, $at, .L8017A678
	nop
	lw      $t6, 0x0074($sp)
	nop
	lw      $t7, 0x006C($t6)
	nop
	beqz    $t7, .L8017A678
	nop
	lw      $t8, 0x0074($sp)
	nop
	lw      $a0, 0x006C($t8)
	jal     Draw_Group
	nop
.L8017A678:
	b       .L8017A680
	nop
.L8017A680:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

.globl face_draw_8017A690
face_draw_8017A690:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x0068($sp)
	lw      $t6, 0x0068($sp)
	nop
	sw      $t6, 0x0064($sp)
	b       .L8017A7D4
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x004C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0050($sp)
	lw      $t7, 0x0064($sp)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F8($t7)
	nop
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($sp)
	lw      $t8, 0x0064($sp)
	nop
	lhu     $t9, 0x0012($t8)
	nop
	andi    $t0, $t9, 0x0010
	beqz    $t0, .L8017A714
	nop
	li      $t1, 0x0008
	b       .L8017A728
	sw      $t1, 0x005C($sp)
.L8017A714:
	lw      $t2, 0x0064($sp)
	nop
	lw      $t3, 0x0100($t2)
	nop
	sw      $t3, 0x005C($sp)
.L8017A728:
	lw      $t4, 0x0064($sp)
	li      $at, -0x0011
	lhu     $t5, 0x0012($t4)
	nop
	and     $t6, $t5, $at
	sh      $t6, 0x0012($t4)
	lui     $t7, %hi(_face_bss+0x2E0)
	lw      $t7, %lo(_face_bss+0x2E0)($t7)
	li      $at, 0x001B
	beq     $t7, $at, .L8017A7CC
	nop
	lw      $t8, 0x0064($sp)
	lwc1    $f18, 0x0054($sp)
	lw      $a0, 0x00F0($t8)
	swc1    $f18, 0x0010($sp)
	lwc1    $f4, 0x0014($t8)
	mtc1    $0, $f18
	swc1    $f4, 0x0014($sp)
	lwc1    $f6, 0x0018($t8)
	mtc1    $0, $f10
	swc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x001C($t8)
	mtc1    $0, $f16
	swc1    $f18, 0x0028($sp)
	swc1    $f10, 0x0020($sp)
	swc1    $f8, 0x001C($sp)
	swc1    $f16, 0x0024($sp)
	lwc1    $f4, 0x0028($t8)
	lw      $t9, 0x005C($sp)
	swc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x002C($t8)
	lw      $a2, 0x004C($sp)
	swc1    $f6, 0x0030($sp)
	lwc1    $f8, 0x0030($t8)
	lw      $a3, 0x0050($sp)
	addiu   $t0, $t8, 0x0070
	sw      $t0, 0x003C($sp)
	li      $a1, 0x001B
	sw      $t9, 0x0038($sp)
	jal     Draw_Shape
	swc1    $f8, 0x0034($sp)
.L8017A7CC:
	b       .L8017A7D4
	nop
.L8017A7D4:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

.globl face_draw_8017A7E4
face_draw_8017A7E4:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x0088($sp)
	lw      $t6, 0x0088($sp)
	nop
	sw      $t6, 0x0084($sp)
	li      $at, 0x428C0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x007C($sp)
	li      $t7, 0x0001
	sw      $t7, 0x0074($sp)
	lw      $t8, 0x0084($sp)
	nop
	lw      $t9, 0x0020($t8)
	nop
	bnez    $t9, .L8017A834
	sw      $t9, 0x0064($sp)
	b       .L8017A8F0
	nop
.L8017A834:
	lw      $t0, 0x0084($sp)
	nop
	lhu     $t1, 0x0012($t0)
	nop
	andi    $t2, $t1, 0x0010
	beqz    $t2, .L8017A85C
	nop
	li      $t3, 0x0008
	b       .L8017A870
	sw      $t3, 0x0070($sp)
.L8017A85C:
	lw      $t4, 0x0084($sp)
	nop
	lw      $t5, 0x01C8($t4)
	nop
	sw      $t5, 0x0070($sp)
.L8017A870:
	mtc1    $0, $f6
	mtc1    $0, $f8
	mtc1    $0, $f10
	mtc1    $0, $f16
	lw      $t7, 0x0084($sp)
	swc1    $f6, 0x0010($sp)
	swc1    $f8, 0x0014($sp)
	swc1    $f10, 0x0018($sp)
	swc1    $f16, 0x001C($sp)
	mtc1    $0, $f16
	mtc1    $0, $f10
	mtc1    $0, $f8
	mtc1    $0, $f6
	mtc1    $0, $f18
	mtc1    $0, $f4
	lw      $t6, 0x0070($sp)
	lw      $a0, 0x0064($sp)
	addiu   $t8, $t7, 0x0128
	sw      $t8, 0x003C($sp)
	li      $a1, 0x0010
	li      $a2, 0x0000
	li      $a3, 0x0000
	swc1    $f16, 0x0034($sp)
	swc1    $f10, 0x0030($sp)
	swc1    $f8, 0x002C($sp)
	swc1    $f6, 0x0028($sp)
	swc1    $f18, 0x0020($sp)
	swc1    $f4, 0x0024($sp)
	jal     Draw_Shape
	sw      $t6, 0x0038($sp)
	b       .L8017A8F0
	nop
.L8017A8F0:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

.globl Draw_Group
Draw_Group:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	bnez    $t6, .L8017A928
	nop
	la.u    $a0, str_face_draw_801B5748
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_draw_801B5748
.L8017A928:
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_draw_8017A9E0
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_draw_8017A9E0
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
	b       .L8017A948
	nop
.L8017A948:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_draw_8017A958
face_draw_8017A958:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	nop
	lhu     $t8, 0x0012($t7)
	nop
	andi    $t9, $t8, 0x0010
	beqz    $t9, .L8017A9AC
	nop
	lw      $t0, 0x0020($sp)
	li      $at, -0x0011
	lhu     $t1, 0x0012($t0)
	nop
	and     $t2, $t1, $at
	sh      $t2, 0x0012($t0)
	b       .L8017A9B4
	nop
.L8017A9AC:
	lui     $at, %hi(_face_bss+0x2E4)
	sw      $0, %lo(_face_bss+0x2E4)($at)
.L8017A9B4:
	lw      $t3, 0x001C($sp)
	nop
	lw      $a0, 0x0040($t3)
	jal     Draw_Face
	nop
	b       .L8017A9D0
	nop
.L8017A9D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_draw_8017A9E0
face_draw_8017A9E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	bnez    $t6, .L8017AA08
	nop
	la.u    $a0, str_face_draw_801B576C
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_draw_801B576C
.L8017AA08:
	lw      $t7, 0x0018($sp)
	nop
	lhu     $t8, 0x0012($t7)
	nop
	andi    $t9, $t8, 0x0002
	beqz    $t9, .L8017AA2C
	nop
	b       .L8017AA4C
	nop
.L8017AA2C:
	lw      $t0, 0x0018($sp)
	nop
	lw      $t9, 0x0008($t0)
	move    $a0, $t0
	jalr    $t9
	nop
	b       .L8017AA4C
	nop
.L8017AA4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_8017AA5C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $a0, 0x001C($t6)
	jal     face_gfx_801A0464
	nop
	li      $a0, 0x000B
	li      $a1, 0x40000000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	lw      $t7, 0x0018($sp)
	nop
	lw      $t8, 0x002C($t7)
	nop
	andi    $t9, $t8, 0x0010
	beqz    $t9, .L8017AAC0
	nop
	lui     $t0, %hi(_face_bss+0x460)
	lw      $t0, %lo(_face_bss+0x460)($t0)
	lui     $at, %hi(_face_bss+0x460)
	addiu   $t1, $t0, 0x0001
	sw      $t1, %lo(_face_bss+0x460)($at)
.L8017AAC0:
	lw      $t2, 0x0018($sp)
	li      $at, -0x0011
	lw      $t3, 0x002C($t2)
	nop
	and     $t4, $t3, $at
	sw      $t4, 0x002C($t2)
	b       .L8017AAE0
	nop
.L8017AAE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_8017AAF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	lwc1    $f4, 0x0050($t6)
	lwc1    $f6, 0x0030($t6)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x005C($t6)
	lw      $t7, 0x0028($sp)
	nop
	lwc1    $f10, 0x0054($t7)
	lwc1    $f16, 0x0030($t7)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0060($t7)
	lw      $t8, 0x0028($sp)
	nop
	lwc1    $f4, 0x0058($t8)
	lwc1    $f6, 0x0030($t8)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0064($t8)
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(_face_bss+0x3F0)
	lw      $t0, 0x001C($t9)
	lwc1    $f16, %lo(_face_bss+0x3F0)($at)
	lwc1    $f10, 0x0074($t9)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sub.s   $f18, $f10, $f16
	sll     $t1, $t1, 2
	lui     $at, %hi(_face_bss+0x400)
	addu    $at, $at, $t1
	swc1    $f18, %lo(_face_bss+0x400)($at)
	lw      $t2, 0x0028($sp)
	lui     $at, %hi(_face_bss+0x3F4)
	lw      $t3, 0x001C($t2)
	lwc1    $f6, %lo(_face_bss+0x3F4)($at)
	lwc1    $f4, 0x0078($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sub.s   $f8, $f4, $f6
	sll     $t4, $t4, 2
	lui     $at, %hi(_face_bss+0x404)
	addu    $at, $at, $t4
	swc1    $f8, %lo(_face_bss+0x404)($at)
	lw      $t5, 0x0028($sp)
	lui     $at, %hi(_face_bss+0x3F8)
	lw      $t6, 0x001C($t5)
	lwc1    $f16, %lo(_face_bss+0x3F8)($at)
	lwc1    $f10, 0x007C($t5)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sub.s   $f18, $f10, $f16
	sll     $t7, $t7, 2
	lui     $at, %hi(_face_bss+0x408)
	addu    $at, $at, $t7
	swc1    $f18, %lo(_face_bss+0x408)($at)
	lw      $t8, 0x0028($sp)
	la.u    $t1, _face_bss+0x400
	lw      $t9, 0x001C($t8)
	la.l    $t1, _face_bss+0x400
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	jal     face_math_80194D34
	addu    $a0, $t0, $t1
	lw      $t2, 0x0028($sp)
	nop
	lw      $t3, 0x002C($t2)
	nop
	andi    $t4, $t3, 0x0020
	beqz    $t4, .L8017ACB0
	nop
	lw      $t5, 0x0028($sp)
	lui     $at, %hi(_face_bss+0x400)
	lw      $t6, 0x001C($t5)
	nop
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(_face_bss+0x400)($at)
	lui     $at, %hi(_face_bss+0x3E0)
	swc1    $f4, %lo(_face_bss+0x3E0)($at)
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(_face_bss+0x404)
	lw      $t9, 0x001C($t8)
	nop
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(_face_bss+0x404)($at)
	lui     $at, %hi(_face_bss+0x3E4)
	swc1    $f6, %lo(_face_bss+0x3E4)($at)
	lw      $t1, 0x0028($sp)
	lui     $at, %hi(_face_bss+0x408)
	lw      $t2, 0x001C($t1)
	nop
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(_face_bss+0x408)($at)
	lui     $at, %hi(_face_bss+0x3E8)
	swc1    $f8, %lo(_face_bss+0x3E8)($at)
	lw      $t4, 0x0028($sp)
	lui     $at, %hi(_face_bss+0x3D8)
	sw      $t4, %lo(_face_bss+0x3D8)($at)
.L8017ACB0:
	lw      $t5, 0x0028($sp)
	nop
	lwc1    $f10, 0x0030($t5)
	nop
	swc1    $f10, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x002C($t6)
	nop
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L8017AE2C
	nop
	lw      $t9, 0x0028($sp)
	la.u    $t2, _face_bss+0x400
	lw      $t0, 0x001C($t9)
	la.l    $t2, _face_bss+0x400
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $a0, $t1, $t2
	jal     face_math_80194EF8
	addiu   $a1, $t9, 0x0080
	neg.s   $f16, $f0
	swc1    $f16, 0x0020($sp)
	lw      $t3, 0x0028($sp)
	lui     $at, %hi(face_draw_801B5908+4)
	lwc1    $f18, 0x0038($t3)
	lwc1    $f7, %lo(face_draw_801B5908+0)($at)
	lwc1    $f6, %lo(face_draw_801B5908+4)($at)
	cvt.d.s $f4, $f18
	nop
	div.d   $f8, $f4, $f6
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	nop
	sub.d   $f16, $f10, $f8
	cvt.s.d $f18, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x001C($sp)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8017AE0C
	nop
	lwc1    $f10, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x3FF00000
	sub.s   $f16, $f10, $f8
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	cvt.d.s $f6, $f8
	mtc1    $0, $f16
	mtc1    $at, $f17
	sub.d   $f10, $f4, $f6
	nop
	div.d   $f8, $f16, $f10
	mul.d   $f4, $f18, $f8
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0020($sp)
	lwc1    $f16, 0x0020($sp)
	li      $at, 0x3FF00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f10, $f16
	c.lt.d  $f18, $f10
	nop
	bc1f    .L8017ADDC
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f8
	b       .L8017AE04
	swc1    $f8, 0x0020($sp)
.L8017ADDC:
	lwc1    $f4, 0x0020($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8017AE04
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0020($sp)
.L8017AE04:
	b       .L8017AE18
	nop
.L8017AE0C:
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0020($sp)
.L8017AE18:
	lwc1    $f18, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	nop
	mul.s   $f4, $f18, $f8
	swc1    $f4, 0x0024($sp)
.L8017AE2C:
	lw      $t4, 0x0028($sp)
	nop
	lw      $a0, 0x001C($t4)
	jal     face_gfx_801A0464
	nop
	lw      $t5, 0x0028($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f6, 0x0050($t5)
	lwc1    $f18, 0x0054($t5)
	mul.s   $f10, $f6, $f16
	lwc1    $f4, 0x0058($t5)
	li      $a0, 0x000D
	mul.s   $f8, $f18, $f16
	mfc1    $a1, $f10
	mul.s   $f6, $f4, $f16
	mfc1    $a2, $f8
	mfc1    $a3, $f6
	jal     gd_setproperty
	nop
	lw      $t6, 0x0028($sp)
	la.u    $t0, _face_bss+0x400
	lw      $t7, 0x001C($t6)
	la.l    $t0, _face_bss+0x400
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $t1, $t8, $t0
	lw      $a1, 0x0000($t1)
	lw      $a2, 0x0004($t1)
	lw      $a3, 0x0008($t1)
	jal     gd_setproperty
	li      $a0, 0x000F
	li      $a0, 0x000B
	li      $a1, 0x40000000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	b       .L8017AEC8
	nop
.L8017AEC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

updateshaders:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	la.u    $a0, str_face_draw_801B5778
	jal     restart_timer
	la.l    $a0, str_face_draw_801B5778
	jal     face_gfx_8019E9B4
	nop
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x3F0)
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, %lo(_face_bss+0x3F0)($at)
	lw      $t7, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x3F4)
	lwc1    $f6, 0x0004($t7)
	nop
	swc1    $f6, %lo(_face_bss+0x3F4)($at)
	lw      $t8, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x3F8)
	lwc1    $f8, 0x0008($t8)
	nop
	swc1    $f8, %lo(_face_bss+0x3F8)($at)
	lui     $at, %hi(_face_bss+0x3D8)
	sw      $0, %lo(_face_bss+0x3D8)($at)
	lui     $t9, %hi(_face_bss+0x298)
	lw      $t9, %lo(_face_bss+0x298)($t9)
	nop
	beqz    $t9, .L8017AF6C
	nop
	lui     $a2, %hi(_face_bss+0x298)
	lw      $a2, %lo(_face_bss+0x298)($a2)
	la.u    $a1, face_draw_8017AAF0
	la.l    $a1, face_draw_8017AAF0
	jal     face_object_8017E520
	li      $a0, 0x00080000
.L8017AF6C:
	lw      $t0, 0x0018($sp)
	nop
	lw      $t1, 0x002C($t0)
	nop
	beqz    $t1, .L8017AF9C
	nop
	lw      $t2, 0x0018($sp)
	la.u    $a1, face_draw_8017A9E0
	lw      $a2, 0x002C($t2)
	la.l    $a1, face_draw_8017A9E0
	jal     face_object_8017E520
	li      $a0, 0x0800
.L8017AF9C:
	jal     face_gfx_8019E9D4
	nop
	la.u    $a0, str_face_draw_801B5788
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5788
	b       .L8017AFB8
	nop
.L8017AFB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_8017AFC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x002C($t6)
	nop
	beqz    $t7, .L8017B004
	nop
	lw      $t8, 0x0018($sp)
	la.u    $a1, face_draw_80178D90
	lw      $a2, 0x002C($t8)
	la.l    $a1, face_draw_80178D90
	jal     face_object_8017E520
	li      $a0, 0x0800
.L8017B004:
	b       .L8017B00C
	nop
.L8017B00C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_8017B01C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $s0, 0x001C($t6)
	nop
	beqz    $s0, .L8017B070
	nop
.L8017B044:
	lw      $t7, 0x0008($s0)
	nop
	sw      $t7, 0x0020($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0020($sp)
	jal     face_object_8017C010
	nop
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, .L8017B044
	nop
.L8017B070:
	b       .L8017B078
	nop
.L8017B078:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_draw_8017B088:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	sw      $t6, 0x0024($sp)
	lw      $a0, 0x0024($sp)
	jal     face_draw_8017AFC8
	nop
	jal     gd_startdisplist
	li      $a0, 0x0007
	sw      $v0, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	nop
	bnez    $t7, .L8017B0D0
	nop
	b       .L8017B158
	li      $v0, -0x0001
.L8017B0D0:
	jal     face_draw_80178280
	nop
	lui     $at, %hi(_face_bss+0x2E4)
	sw      $0, %lo(_face_bss+0x2E4)($at)
	lw      $t8, 0x0024($sp)
	nop
	lw      $t9, 0x003C($t8)
	nop
	bnez    $t9, .L8017B104
	nop
	lw      $a0, 0x0024($sp)
	jal     face_draw_8017A358
	nop
.L8017B104:
	jal     face_gfx_8019EBAC
	nop
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0024($sp)
	nop
	sw      $t0, 0x0048($t1)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0024($sp)
	nop
	sw      $t2, 0x004C($t3)
	lw      $t4, 0x0024($sp)
	nop
	lb      $t5, 0x005C($t4)
	nop
	beqz    $t5, .L8017B150
	nop
	b       .L8017B150
	nop
.L8017B150:
	b       .L8017B158
	nop
.L8017B158:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_draw_8017B168
face_draw_8017B168:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a1, face_draw_8017B088
	lw      $a2, 0x0020($sp)
	la.l    $a1, face_draw_8017B088
	jal     face_object_8017E520
	li      $a0, 0x0010
	sw      $v0, 0x001C($sp)
	b       .L8017B194
	nop
.L8017B194:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_draw_8017B1A4
face_draw_8017B1A4:
	addiu   $sp, $sp, -0x0018
	lw      $a2, 0x001C($a0)
	nop
	beqz    $a2, .L8017B248
	nop
.L8017B1B8:
	lw      $t6, 0x0008($a2)
	nop
	sw      $t6, 0x000C($sp)
	lw      $t7, 0x000C($sp)
	nop
	sw      $t7, 0x0014($sp)
	lw      $a3, 0x001C($a1)
	nop
	beqz    $a3, .L8017B220
	nop
.L8017B1E0:
	lw      $t8, 0x0008($a3)
	nop
	sw      $t8, 0x0004($sp)
	lw      $t9, 0x0004($sp)
	lw      $t1, 0x0014($sp)
	lw      $t0, 0x001C($t9)
	lw      $t2, 0x0044($t1)
	nop
	bne     $t0, $t2, .L8017B210
	nop
	b       .L8017B220
	nop
.L8017B210:
	lw      $a3, 0x0004($a3)
	nop
	bnez    $a3, .L8017B1E0
	nop
.L8017B220:
	beqz    $a3, .L8017B238
	nop
	lw      $t3, 0x0004($sp)
	lw      $t4, 0x0014($sp)
	nop
	sw      $t3, 0x0048($t4)
.L8017B238:
	lw      $a2, 0x0004($a2)
	nop
	bnez    $a2, .L8017B1B8
	nop
.L8017B248:
	b       .L8017B250
	nop
.L8017B250:
	jr      $ra
	addiu   $sp, $sp, 0x0018

face_draw_8017B258:
	addiu   $sp, $sp, -0x0018
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0034($a0)
	lwc1    $f12, 0x0034($a0)
	nop
	swc1    $f12, 0x0030($a0)
	swc1    $f12, 0x002C($a0)
	sw      $0, 0x0010($sp)
	lw      $a2, 0x001C($a1)
	nop
	beqz    $a2, .L8017B35C
	nop
.L8017B28C:
	lw      $t6, 0x0008($a2)
	nop
	sw      $t6, 0x0008($sp)
	lw      $t7, 0x0008($sp)
	sw      $0, 0x0014($sp)
	lw      $t8, 0x0030($t7)
	nop
	blez    $t8, .L8017B34C
	nop
.L8017B2B0:
	lw      $t0, 0x0014($sp)
	lw      $t9, 0x0008($sp)
	sll     $t1, $t0, 2
	addu    $t2, $t9, $t1
	lw      $t3, 0x0034($t2)
	nop
	bne     $t3, $a0, .L8017B328
	nop
	lw      $t4, 0x0008($sp)
	lwc1    $f6, 0x002C($a0)
	lwc1    $f8, 0x0024($t4)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x002C($a0)
	lw      $t5, 0x0008($sp)
	lwc1    $f16, 0x0030($a0)
	lwc1    $f18, 0x0028($t5)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0030($a0)
	lw      $t6, 0x0008($sp)
	lwc1    $f6, 0x0034($a0)
	lwc1    $f8, 0x002C($t6)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0034($a0)
	lw      $t7, 0x0010($sp)
	nop
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0010($sp)
.L8017B328:
	lw      $t0, 0x0014($sp)
	lw      $t1, 0x0008($sp)
	addiu   $t9, $t0, 0x0001
	sw      $t9, 0x0014($sp)
	lw      $t2, 0x0030($t1)
	nop
	slt     $at, $t9, $t2
	bnez    $at, .L8017B2B0
	nop
.L8017B34C:
	lw      $a2, 0x0004($a2)
	nop
	bnez    $a2, .L8017B28C
	nop
.L8017B35C:
	lw      $t3, 0x0010($sp)
	nop
	beqz    $t3, .L8017B3CC
	nop
	lw      $t4, 0x0010($sp)
	lwc1    $f16, 0x002C($a0)
	mtc1    $t4, $f18
	nop
	cvt.s.w $f4, $f18
	nop
	div.s   $f6, $f16, $f4
	swc1    $f6, 0x002C($a0)
	lw      $t5, 0x0010($sp)
	lwc1    $f8, 0x0030($a0)
	mtc1    $t5, $f10
	nop
	cvt.s.w $f18, $f10
	nop
	div.s   $f16, $f8, $f18
	swc1    $f16, 0x0030($a0)
	lw      $t6, 0x0010($sp)
	lwc1    $f4, 0x0034($a0)
	mtc1    $t6, $f6
	nop
	cvt.s.w $f10, $f6
	nop
	div.s   $f8, $f4, $f10
	swc1    $f8, 0x0034($a0)
.L8017B3CC:
	b       .L8017B3D4
	nop
.L8017B3D4:
	jr      $ra
	addiu   $sp, $sp, 0x0018

find_thisface_verts:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	sw      $0, 0x002C($sp)
	lw      $t7, 0x0030($t6)
	nop
	blez    $t7, .L8017B514
	nop
.L8017B408:
	lw      $t8, 0x0034($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x0024($sp)
	sw      $0, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	nop
	beqz    $t0, .L8017B4B8
	nop
.L8017B430:
	lw      $t1, 0x0024($sp)
	li      $at, 0x0100
	lw      $t2, 0x0008($t1)
	nop
	lw      $t3, 0x000C($t2)
	nop
	beq     $t3, $at, .L8017B45C
	nop
	li      $at, 0x0008
	bne     $t3, $at, .L8017B494
	nop
.L8017B45C:
	lw      $t5, 0x002C($sp)
	lw      $t4, 0x0030($sp)
	sll     $t6, $t5, 2
	addu    $t7, $t4, $t6
	lw      $t8, 0x0034($t7)
	lw      $t9, 0x0028($sp)
	nop
	xor     $s0, $t8, $t9
	sltiu   $s0, $s0, 0x0001
	addiu   $t0, $t9, 0x0001
	beqz    $s0, .L8017B494
	sw      $t0, 0x0028($sp)
	b       .L8017B4B8
	nop
.L8017B494:
	lw      $t1, 0x0024($sp)
	nop
	lw      $t2, 0x0004($t1)
	nop
	sw      $t2, 0x0024($sp)
	lw      $t3, 0x0024($sp)
	nop
	bnez    $t3, .L8017B430
	nop
.L8017B4B8:
	lw      $t5, 0x0024($sp)
	nop
	bnez    $t5, .L8017B4D4
	nop
	la.u    $a0, str_face_draw_801B580C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_draw_801B580C
.L8017B4D4:
	lw      $t4, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t7, 0x0030($sp)
	lw      $t6, 0x0008($t4)
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	sw      $t6, 0x0034($t0)
	lw      $t1, 0x002C($sp)
	lw      $t3, 0x0030($sp)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x002C($sp)
	lw      $t5, 0x0030($t3)
	nop
	slt     $at, $t2, $t5
	bnez    $at, .L8017B408
	nop
.L8017B514:
	lw      $a0, 0x0030($sp)
	jal     calc_facenormal
	nop
	b       .L8017B528
	nop
.L8017B528:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl map_vertices
map_vertices:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	la.u    $a0, str_face_draw_801B5834
	jal     face_stdio_8018D560
	la.l    $a0, str_face_draw_801B5834
	lw      $t6, 0x0030($sp)
	nop
	lw      $s0, 0x001C($t6)
	nop
	beqz    $s0, .L8017B5A0
	nop
.L8017B574:
	lw      $t7, 0x0008($s0)
	nop
	sw      $t7, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0034($sp)
	jal     find_thisface_verts
	nop
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, .L8017B574
	nop
.L8017B5A0:
	lw      $t8, 0x0034($sp)
	nop
	lw      $s1, 0x001C($t8)
	nop
	beqz    $s1, .L8017B5E4
	nop
.L8017B5B8:
	lw      $t9, 0x0008($s1)
	nop
	sw      $t9, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0030($sp)
	jal     face_draw_8017B258
	nop
	lw      $s1, 0x0004($s1)
	nop
	bnez    $s1, .L8017B5B8
	nop
.L8017B5E4:
	jal     imout
	nop
	b       .L8017B5F4
	nop
.L8017B5F4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_draw_8017B608:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0004($sp)
	lw      $t6, 0x0004($sp)
	nop
	lhu     $t7, 0x0012($t6)
	nop
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L8017B644
	nop
	lw      $t9, 0x0004($sp)
	li      $at, -0x0015
	lhu     $t0, 0x0012($t9)
	nop
	and     $t1, $t0, $at
	sh      $t1, 0x0012($t9)
.L8017B644:
	b       .L8017B64C
	nop
.L8017B64C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_draw_8017B654:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	nop
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	nop
	lhu     $t8, 0x0012($t7)
	nop
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L8017B718
	nop
	lw      $t0, 0x002C($sp)
	lui     $t2, %hi(_face_bss+0x3B0)
	lw      $t2, %lo(_face_bss+0x3B0)($t2)
	lh      $t1, 0x0010($t0)
	nop
	bne     $t1, $t2, .L8017B718
	nop
	lui     $t3, %hi(_face_draw_data+0x88)
	lw      $t3, %lo(_face_draw_data+0x88)($t3)
	nop
	beqz    $t3, .L8017B6D4
	nop
	lui     $a0, %hi(_face_draw_data+0x88)
	lw      $a0, %lo(_face_draw_data+0x88)($a0)
	lw      $a1, 0x002C($sp)
	jal     face_dynlist_8018B6BC
	nop
	b       .L8017B6E0
	swc1    $f0, 0x001C($sp)
.L8017B6D4:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x001C($sp)
.L8017B6E0:
	lui     $at, %hi(_face_bss+0x3B4)
	lwc1    $f8, %lo(_face_bss+0x3B4)($at)
	lwc1    $f6, 0x001C($sp)
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8017B718
	nop
	lwc1    $f10, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x3B4)
	swc1    $f10, %lo(_face_bss+0x3B4)($at)
	lw      $t4, 0x002C($sp)
	lui     $at, %hi(_face_bss+0x3B8)
	sw      $t4, %lo(_face_bss+0x3B8)($at)
.L8017B718:
	b       .L8017B720
	nop
.L8017B720:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

face_draw_8017B730:
	lui     $t6, %hi(_face_draw_data+0x88)
	lw      $t6, %lo(_face_draw_data+0x88)($t6)
	nop
	beqz    $t6, .L8017B74C
	nop
	jr      $ra
	nop
.L8017B74C:
	lui     $at, %hi(_face_draw_data+0x88)
	sw      $a0, %lo(_face_draw_data+0x88)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl UpdateView
UpdateView:
	addiu   $sp, $sp, -0x0140
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0140($sp)
	sw      $s0, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x3D0)
	sw      $0, %lo(_face_bss+0x3D0)($at)
	lui     $at, %hi(_face_bss+0x3D4)
	sw      $0, %lo(_face_bss+0x3D4)($at)
	lw      $t6, 0x0140($sp)
	nop
	lw      $t7, 0x0034($t6)
	nop
	andi    $t8, $t7, 0x0800
	bnez    $t8, .L8017B7C0
	nop
	lw      $t9, 0x0140($sp)
	li.u    $at, 0xFFEFFFFF
	lw      $t0, 0x0034($t9)
	li.l    $at, 0xFFEFFFFF
	and     $t1, $t0, $at
	sw      $t1, 0x0034($t9)
	b       .L8017BDC4
	nop
.L8017B7C0:
	la.u    $a0, str_face_draw_801B5844
	jal     face_stdio_8018D560
	la.l    $a0, str_face_draw_801B5844
	lw      $t2, 0x0140($sp)
	nop
	lw      $t3, 0x0098($t2)
	nop
	beqz    $t3, .L8017B7FC
	nop
	lw      $t4, 0x0140($sp)
	nop
	lw      $t9, 0x0098($t4)
	move    $a0, $t4
	jalr    $t9
	nop
.L8017B7FC:
	lw      $t5, 0x0140($sp)
	li      $at, 0x00100000
	lw      $t6, 0x0034($t5)
	nop
	and     $t7, $t6, $at
	bnez    $t7, .L8017B830
	nop
	lw      $t8, 0x0140($sp)
	li      $at, 0x00100000
	lw      $t0, 0x0034($t8)
	nop
	or      $t1, $t0, $at
	sw      $t1, 0x0034($t8)
.L8017B830:
	lui     $at, %hi(_face_draw_data+0x88)
	sw      $0, %lo(_face_draw_data+0x88)($at)
	lw      $t2, 0x0140($sp)
	nop
	lw      $t3, 0x0028($t2)
	nop
	beqz    $t3, .L8017B8A8
	nop
	lw      $t4, 0x0140($sp)
	la.u    $a1, face_draw_8017B730
	lw      $a2, 0x0028($t4)
	la.l    $a1, face_draw_8017B730
	jal     face_object_8017E520
	li      $a0, 0x0200
	lui     $t9, %hi(_face_draw_data+0x88)
	lw      $t9, %lo(_face_draw_data+0x88)($t9)
	lw      $t5, 0x0140($sp)
	nop
	sw      $t9, 0x0024($t5)
	lw      $t6, 0x0140($sp)
	nop
	lw      $t7, 0x0024($t6)
	nop
	beqz    $t7, .L8017B8A8
	nop
	lui     $t1, %hi(_face_draw_data+0x88)
	lw      $t1, %lo(_face_draw_data+0x88)($t1)
	lw      $t0, 0x0140($sp)
	nop
	sw      $t0, 0x018C($t1)
.L8017B8A8:
	lw      $t8, 0x0140($sp)
	li      $at, 0x00040000
	lw      $t2, 0x0034($t8)
	nop
	and     $t3, $t2, $at
	beqz    $t3, .L8017B914
	nop
	la.u    $a0, str_face_draw_801B5854
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5854
	la.u    $a0, str_face_draw_801B585C
	jal     restart_timer
	la.l    $a0, str_face_draw_801B585C
	lw      $a0, 0x0140($sp)
	jal     face_object_8018159C
	nop
	la.u    $a0, str_face_draw_801B5868
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5868
	la.u    $a0, str_face_draw_801B5874
	jal     restart_timer
	la.l    $a0, str_face_draw_801B5874
	lw      $t4, 0x0140($sp)
	lui     $at, %hi(_face_draw_data+0x88)
	lw      $t9, 0x0024($t4)
	nop
	sw      $t9, %lo(_face_draw_data+0x88)($at)
.L8017B914:
	lw      $t5, 0x0140($sp)
	li      $at, 0x00080000
	lw      $t6, 0x0034($t5)
	nop
	and     $t7, $t6, $at
	bnez    $t7, .L8017B940
	nop
	jal     imout
	nop
	b       .L8017BDC4
	nop
.L8017B940:
	lw      $t0, 0x0140($sp)
	lui     $at, %hi(_face_bss+0x3C4)
	sw      $t0, %lo(_face_bss+0x3C4)($at)
	lw      $a0, 0x0140($sp)
	jal     face_gfx_801A4A30
	nop
	jal     gd_startdisplist
	li      $a0, 0x0008
	lw      $t1, 0x0140($sp)
	nop
	sw      $v0, 0x0070($t1)
	lui     $a0, %hi(_face_bss+0x3C4)
	lw      $a0, %lo(_face_bss+0x3C4)($a0)
	jal     face_gfx_801A2588
	nop
	jal     gd_shading
	li      $a0, 0x0009
	lw      $t8, 0x0140($sp)
	nop
	lw      $t2, 0x0034($t8)
	nop
	andi    $t3, $t2, 0x6000
	beqz    $t3, .L8017B9A8
	nop
	jal     face_gfx_801A2450
	nop
.L8017B9A8:
	lw      $t4, 0x0140($sp)
	nop
	lw      $t9, 0x0028($t4)
	nop
	beqz    $t9, .L8017BD9C
	nop
	lui     $t5, %hi(_face_bss+0xD8)
	lw      $t5, %lo(_face_bss+0xD8)($t5)
	nop
	srl     $t6, $t5, 31
	beqz    $t6, .L8017BD0C
	nop
	li      $a0, 0x0003
	jal     gd_getproperty
	move    $a1, $0
	beqz    $v0, .L8017BCEC
	nop
	lui     $t7, %hi(_face_bss+0xD8)
	lw      $t7, %lo(_face_bss+0xD8)($t7)
	nop
	sll     $t0, $t7, 3
	srl     $t1, $t0, 31
	beqz    $t1, .L8017BCEC
	nop
	la.u    $a0, _face_bss+0x2E8
	la.l    $a0, _face_bss+0x2E8
	jal     face_gfx_801A5B14
	li      $a1, 0x0064
	lui     $t8, %hi(_face_bss+0x3C4)
	lw      $t8, %lo(_face_bss+0x3C4)($t8)
	li      $a0, 0x001B
	lw      $a1, 0x0028($t8)
	jal     draw_scene
	move    $a2, $0
	la.u    $a0, _face_bss+0x2E8
	jal     face_gfx_801A5B8C
	la.l    $a0, _face_bss+0x2E8
	sw      $v0, 0x0138($sp)
	lui     $at, %hi(_face_bss+0x3B0)
	sw      $0, %lo(_face_bss+0x3B0)($at)
	lui     $at, %hi(_face_bss+0x3B8)
	sw      $0, %lo(_face_bss+0x3B8)($at)
	lui     $at, %hi(face_draw_801B5910)
	lwc1    $f4, %lo(face_draw_801B5910)($at)
	lui     $at, %hi(_face_bss+0x3B4)
	swc1    $f4, %lo(_face_bss+0x3B4)($at)
	lw      $t2, 0x0138($sp)
	nop
	bgez    $t2, .L8017BA84
	nop
	la.u    $a0, str_face_draw_801B587C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_draw_801B587C
	b       .L8017BC20
	nop
.L8017BA84:
	lw      $t3, 0x0138($sp)
	nop
	blez    $t3, .L8017BC20
	nop
	sw      $0, 0x012C($sp)
	lw      $t4, 0x0138($sp)
	sw      $0, 0x013C($sp)
	blez    $t4, .L8017BC20
	nop
.L8017BAA8:
	lw      $t9, 0x012C($sp)
	lui     $t6, %hi(_face_bss+0x2E8)
	sll     $t5, $t9, 1
	addu    $t6, $t6, $t5
	lh      $t6, %lo(_face_bss+0x2E8)($t6)
	addiu   $t7, $t9, 0x0001
	sw      $t7, 0x012C($sp)
	sw      $t6, 0x0134($sp)
	lw      $t0, 0x0134($sp)
	nop
	beqz    $t0, .L8017BB84
	nop
	lw      $t1, 0x012C($sp)
	lui     $t2, %hi(_face_bss+0x2E8)
	sll     $t8, $t1, 1
	addu    $t2, $t2, $t8
	lh      $t2, %lo(_face_bss+0x2E8)($t2)
	li      $at, 0x0004
	addiu   $t3, $t1, 0x0001
	move    $s0, $t2
	sw      $t3, 0x012C($sp)
	beq     $s0, $at, .L8017BB24
	sw      $t2, 0x0128($sp)
	li      $at, 0x0008
	beq     $s0, $at, .L8017BB54
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8017BB3C
	nop
	b       .L8017BB6C
	nop
.L8017BB24:
	la.u    $a1, str_face_draw_801B58A0
	la.l    $a1, str_face_draw_801B58A0
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0028
	b       .L8017BB84
	nop
.L8017BB3C:
	la.u    $a1, str_face_draw_801B58A4
	la.l    $a1, str_face_draw_801B58A4
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0028
	b       .L8017BB84
	nop
.L8017BB54:
	la.u    $a1, str_face_draw_801B58A8
	la.l    $a1, str_face_draw_801B58A8
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0028
	b       .L8017BB84
	nop
.L8017BB6C:
	la.u    $a1, str_face_draw_801B58AC
	la.l    $a1, str_face_draw_801B58AC
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0028
	b       .L8017BB84
	nop
.L8017BB84:
	lw      $t4, 0x0134($sp)
	nop
	slti    $at, $t4, 0x0002
	bnez    $at, .L8017BC08
	nop
	lw      $t5, 0x0134($sp)
	sw      $0, 0x0130($sp)
	addiu   $t6, $t5, -0x0001
	blez    $t6, .L8017BC08
	nop
.L8017BBAC:
	lw      $t9, 0x012C($sp)
	lui     $t0, %hi(_face_bss+0x2E8)
	sll     $t7, $t9, 1
	addu    $t0, $t0, $t7
	lh      $t0, %lo(_face_bss+0x2E8)($t0)
	lui     $at, %hi(_face_bss+0x3B0)
	addiu   $t8, $t9, 0x0001
	sw      $t8, 0x012C($sp)
	sw      $t0, %lo(_face_bss+0x3B0)($at)
	lui     $t2, %hi(_face_bss+0x3C4)
	lw      $t2, %lo(_face_bss+0x3C4)($t2)
	lw      $a0, 0x0128($sp)
	la.u    $a1, face_draw_8017B654
	lw      $a2, 0x0028($t2)
	jal     face_object_8017E520
	la.l    $a1, face_draw_8017B654
	lw      $t1, 0x0130($sp)
	lw      $t4, 0x0134($sp)
	addiu   $t3, $t1, 0x0001
	addiu   $t5, $t4, -0x0001
	slt     $at, $t3, $t5
	bnez    $at, .L8017BBAC
	sw      $t3, 0x0130($sp)
.L8017BC08:
	lw      $t6, 0x013C($sp)
	lw      $t0, 0x0138($sp)
	addiu   $t7, $t6, 0x0001
	slt     $at, $t7, $t0
	bnez    $at, .L8017BAA8
	sw      $t7, 0x013C($sp)
.L8017BC20:
	lui     $t9, %hi(_face_bss+0x3B8)
	lw      $t9, %lo(_face_bss+0x3B8)($t9)
	nop
	beqz    $t9, .L8017BCEC
	nop
	lui     $t8, %hi(_face_bss+0x3B8)
	lw      $t8, %lo(_face_bss+0x3B8)($t8)
	nop
	lhu     $t2, 0x0012($t8)
	nop
	ori     $t1, $t2, 0x0004
	sh      $t1, 0x0012($t8)
	lui     $t4, %hi(_face_bss+0x3B8)
	lw      $t4, %lo(_face_bss+0x3B8)($t4)
	nop
	lhu     $t3, 0x0012($t4)
	nop
	ori     $t5, $t3, 0x0010
	sh      $t5, 0x0012($t4)
	lui     $t6, %hi(_face_bss+0x3B8)
	lui     $t7, %hi(_face_bss+0x3C4)
	lw      $t7, %lo(_face_bss+0x3C4)($t7)
	lw      $t6, %lo(_face_bss+0x3B8)($t6)
	nop
	sw      $t6, 0x0030($t7)
	cfc1    $t0, $31
	lui     $at, %hi(_face_bss+0x468)
	lwc1    $f6, %lo(_face_bss+0x468)($at)
	ori     $at, $t0, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $at, %hi(_face_bss+0xD0)
	cvt.w.s $f8, $f6
	mfc1    $t9, $f8
	ctc1    $t0, $31
	sw      $t9, %lo(_face_bss+0xD0)($at)
	lui     $at, %hi(_face_bss+0xB8)
	sw      $t9, %lo(_face_bss+0xB8)($at)
	cfc1    $t2, $31
	lui     $at, %hi(_face_bss+0x46C)
	lwc1    $f10, %lo(_face_bss+0x46C)($at)
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $at, %hi(_face_bss+0xD4)
	cvt.w.s $f16, $f10
	mfc1    $t1, $f16
	ctc1    $t2, $31
	sw      $t1, %lo(_face_bss+0xD4)($at)
	lui     $at, %hi(_face_bss+0xBC)
	sw      $t1, %lo(_face_bss+0xBC)($at)
.L8017BCEC:
	lui     $t8, %hi(_face_bss+0x3C4)
	lw      $t8, %lo(_face_bss+0x3C4)($t8)
	nop
	lw      $a0, 0x0028($t8)
	jal     face_object_80180AB4
	nop
	b       .L8017BD80
	nop
.L8017BD0C:
	lui     $t3, %hi(_face_bss+0x3C4)
	lw      $t3, %lo(_face_bss+0x3C4)($t3)
	nop
	lw      $t5, 0x0030($t3)
	nop
	beqz    $t5, .L8017BD80
	nop
	lui     $t4, %hi(_face_bss+0x3C4)
	lw      $t4, %lo(_face_bss+0x3C4)($t4)
	li      $at, -0x0005
	lw      $t6, 0x0030($t4)
	nop
	lhu     $t7, 0x0012($t6)
	nop
	and     $t0, $t7, $at
	sh      $t0, 0x0012($t6)
	lui     $t9, %hi(_face_bss+0x3C4)
	lw      $t9, %lo(_face_bss+0x3C4)($t9)
	li      $at, -0x0011
	lw      $t2, 0x0030($t9)
	nop
	lhu     $t1, 0x0012($t2)
	nop
	and     $t8, $t1, $at
	sh      $t8, 0x0012($t2)
	lui     $t3, %hi(_face_bss+0x3C4)
	lw      $t3, %lo(_face_bss+0x3C4)($t3)
	nop
	sw      $0, 0x0030($t3)
.L8017BD80:
	lui     $t5, %hi(_face_bss+0x3C4)
	lw      $t5, %lo(_face_bss+0x3C4)($t5)
	li      $a0, 0x001A
	lw      $a1, 0x0028($t5)
	lw      $a2, 0x002C($t5)
	jal     draw_scene
	nop
.L8017BD9C:
	jal     face_gfx_801A3620
	nop
	jal     face_gfx_8019EBAC
	nop
	jal     imout
	nop
	b       .L8017BDC4
	nop
	b       .L8017BDC4
	nop
.L8017BDC4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0140

face_draw_8017BDD4:
	jr      $ra
	nop
	jr      $ra
	nop

.data
.align 4

.globl _face_draw_data
_face_draw_data:
.incbin "src/face/draw.data.bin"

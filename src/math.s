.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

/* VECF *vecf_cpy(VECF dst, VECF src) */
.globl vecf_cpy
vecf_cpy:
	sw      $a0, 0x0000($sp)
	lwc1    $f4, 0x0000($a1)
	lw      $t6, 0x0000($sp)
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0004($a1)
	lw      $t7, 0x0000($sp)
	swc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0008($a1)
	lw      $t8, 0x0000($sp)
	swc1    $f8, 0x0008($t8)
	b       .L80378838
	addiu   $v0, $sp, 0x0000
	b       .L80378838
	nop
.L80378838:
	jr      $ra
	nop

/* VECF *vecf_set(VECF vf, float x, float y, float z) */
.globl vecf_set
vecf_set:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lwc1    $f4, 0x0004($sp)
	lw      $t6, 0x0000($sp)
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0008($sp)
	lw      $t7, 0x0000($sp)
	swc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x000C($sp)
	lw      $t8, 0x0000($sp)
	swc1    $f8, 0x0008($t8)
	b       .L80378884
	addiu   $v0, $sp, 0x0000
	b       .L80378884
	nop
.L80378884:
	jr      $ra
	nop

/* VECF *vecf_add(VECF vf, VECF a) */
.globl vecf_add
vecf_add:
	sw      $a0, 0x0000($sp)
	lw      $t6, 0x0000($sp)
	lwc1    $f6, 0x0000($a1)
	lwc1    $f4, 0x0000($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t6)
	lw      $t7, 0x0000($sp)
	lwc1    $f16, 0x0004($a1)
	lwc1    $f10, 0x0004($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t7)
	lw      $t8, 0x0000($sp)
	lwc1    $f6, 0x0008($a1)
	lwc1    $f4, 0x0008($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t8)
	b       .L803788DC
	addiu   $v0, $sp, 0x0000
	b       .L803788DC
	nop
.L803788DC:
	jr      $ra
	nop

/* VECF *vecf_addto(VECF vf, VECF a, VECF b) */
.globl vecf_addto
vecf_addto:
	sw      $a0, 0x0000($sp)
	lwc1    $f4, 0x0000($a2)
	lwc1    $f6, 0x0000($a1)
	lw      $t6, 0x0000($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t6)
	lwc1    $f10, 0x0004($a2)
	lwc1    $f16, 0x0004($a1)
	lw      $t7, 0x0000($sp)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t7)
	lwc1    $f4, 0x0008($a2)
	lwc1    $f6, 0x0008($a1)
	lw      $t8, 0x0000($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t8)
	b       .L80378934
	addiu   $v0, $sp, 0x0000
	b       .L80378934
	nop
.L80378934:
	jr      $ra
	nop

/* VECS *vecs_cpy(VECS dst, VECS src) */
.globl vecs_cpy
vecs_cpy:
	sw      $a0, 0x0000($sp)
	lh      $t6, 0x0000($a1)
	lw      $t7, 0x0000($sp)
	sh      $t6, 0x0000($t7)
	lh      $t8, 0x0002($a1)
	lw      $t9, 0x0000($sp)
	sh      $t8, 0x0002($t9)
	lh      $t0, 0x0004($a1)
	lw      $t1, 0x0000($sp)
	sh      $t0, 0x0004($t1)
	b       .L80378974
	addiu   $v0, $sp, 0x0000
	b       .L80378974
	nop
.L80378974:
	jr      $ra
	nop

/* VECS *vecs_set(VECS vs, SHORT x, SHORT y, SHORT z) */
.globl vecs_set
vecs_set:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sw      $a0, 0x0000($sp)
	lw      $t6, 0x0000($sp)
	sh      $a1, 0x0000($t6)
	lw      $t7, 0x0000($sp)
	sh      $a2, 0x0002($t7)
	lw      $t8, 0x0000($sp)
	sh      $a3, 0x0004($t8)
	b       .L803789C0
	addiu   $v0, $sp, 0x0000
	b       .L803789C0
	nop
.L803789C0:
	jr      $ra
	nop

/* VECS *vecs_add(VECS vs, VECS a) */
.globl vecs_add
vecs_add:
	sw      $a0, 0x0000($sp)
	lw      $t6, 0x0000($sp)
	lh      $t8, 0x0000($a1)
	lh      $t7, 0x0000($t6)
	addu    $t9, $t7, $t8
	sh      $t9, 0x0000($t6)
	lw      $t0, 0x0000($sp)
	lh      $t2, 0x0002($a1)
	lh      $t1, 0x0002($t0)
	addu    $t3, $t1, $t2
	sh      $t3, 0x0002($t0)
	lw      $t4, 0x0000($sp)
	lh      $t7, 0x0004($a1)
	lh      $t5, 0x0004($t4)
	addu    $t8, $t5, $t7
	sh      $t8, 0x0004($t4)
	b       .L80378A18
	addiu   $v0, $sp, 0x0000
	b       .L80378A18
	nop
.L80378A18:
	jr      $ra
	nop

/* VECS *vecs_addto(VECS vs, VECS a, VECS b) */
.globl vecs_addto
vecs_addto:
	sw      $a0, 0x0000($sp)
	lh      $t6, 0x0000($a2)
	lh      $t7, 0x0000($a1)
	lw      $t9, 0x0000($sp)
	addu    $t8, $t6, $t7
	sh      $t8, 0x0000($t9)
	lh      $t0, 0x0002($a2)
	lh      $t1, 0x0002($a1)
	lw      $t3, 0x0000($sp)
	addu    $t2, $t0, $t1
	sh      $t2, 0x0002($t3)
	lh      $t4, 0x0004($a2)
	lh      $t5, 0x0004($a1)
	lw      $t7, 0x0000($sp)
	addu    $t6, $t4, $t5
	sh      $t6, 0x0004($t7)
	b       .L80378A70
	addiu   $v0, $sp, 0x0000
	b       .L80378A70
	nop
.L80378A70:
	jr      $ra
	nop

/* VECS *vecs_sub(VECS vs, VECS a) */
.globl vecs_sub
vecs_sub:
	sw      $a0, 0x0000($sp)
	lw      $t6, 0x0000($sp)
	lh      $t8, 0x0000($a1)
	lh      $t7, 0x0000($t6)
	subu    $t9, $t7, $t8
	sh      $t9, 0x0000($t6)
	lw      $t0, 0x0000($sp)
	lh      $t2, 0x0002($a1)
	lh      $t1, 0x0002($t0)
	subu    $t3, $t1, $t2
	sh      $t3, 0x0002($t0)
	lw      $t4, 0x0000($sp)
	lh      $t7, 0x0004($a1)
	lh      $t5, 0x0004($t4)
	subu    $t8, $t5, $t7
	sh      $t8, 0x0004($t4)
	b       .L80378AC8
	addiu   $v0, $sp, 0x0000
	b       .L80378AC8
	nop
.L80378AC8:
	jr      $ra
	nop

/* VECF *vecs_to_vecf(VECF dst, VECS src) */
.globl vecs_to_vecf
vecs_to_vecf:
	sw      $a0, 0x0000($sp)
	lh      $t6, 0x0000($a1)
	lw      $t7, 0x0000($sp)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0000($t7)
	lh      $t8, 0x0002($a1)
	lw      $t9, 0x0000($sp)
	mtc1    $t8, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0004($t9)
	lh      $t0, 0x0004($a1)
	lw      $t1, 0x0000($sp)
	mtc1    $t0, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0008($t1)
	b       .L80378B2C
	addiu   $v0, $sp, 0x0000
	b       .L80378B2C
	nop
.L80378B2C:
	jr      $ra
	nop

/* VECS *vecf_to_vecs(VECS dst, VECF src) */
.globl vecf_to_vecs
vecf_to_vecs:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	lwc1    $f4, 0x0000($a1)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80378B68
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f12
	b       .L80378B74
	nop
.L80378B68:
	li      $at, 0xBF000000
	mtc1    $at, $f12
	nop
.L80378B74:
	lwc1    $f8, 0x0000($a1)
	lw      $t8, 0x0008($sp)
	add.s   $f10, $f12, $f8
	trunc.w.s $f16, $f10
	mfc1    $t7, $f16
	nop
	sh      $t7, 0x0000($t8)
	lwc1    $f18, 0x0004($a1)
	mtc1    $0, $f4
	nop
	c.lt.s  $f4, $f18
	nop
	bc1f    .L80378BBC
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f12
	b       .L80378BC8
	nop
.L80378BBC:
	li      $at, 0xBF000000
	mtc1    $at, $f12
	nop
.L80378BC8:
	lwc1    $f6, 0x0004($a1)
	lw      $t1, 0x0008($sp)
	add.s   $f8, $f12, $f6
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sh      $t0, 0x0002($t1)
	lwc1    $f16, 0x0008($a1)
	mtc1    $0, $f18
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80378C10
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f12
	b       .L80378C1C
	nop
.L80378C10:
	li      $at, 0xBF000000
	mtc1    $at, $f12
	nop
.L80378C1C:
	lwc1    $f4, 0x0008($a1)
	lw      $t4, 0x0008($sp)
	add.s   $f6, $f12, $f4
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	sh      $t3, 0x0004($t4)
	b       .L80378C48
	addiu   $v0, $sp, 0x0008
	b       .L80378C48
	nop
.L80378C48:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* VECF *vecf_normal(VECF vf, VECF v0, VECF v1, VECF v2) */
.globl vecf_normal
vecf_normal:
	sw      $a0, 0x0000($sp)
	lwc1    $f4, 0x0004($a2)
	lwc1    $f6, 0x0004($a1)
	lwc1    $f10, 0x0008($a3)
	lwc1    $f16, 0x0008($a2)
	sub.s   $f8, $f4, $f6
	lwc1    $f6, 0x0008($a2)
	lw      $t6, 0x0000($sp)
	sub.s   $f18, $f10, $f16
	lwc1    $f10, 0x0008($a1)
	mul.s   $f4, $f8, $f18
	lwc1    $f18, 0x0004($a2)
	lwc1    $f8, 0x0004($a3)
	sub.s   $f16, $f6, $f10
	sub.s   $f6, $f8, $f18
	mul.s   $f10, $f16, $f6
	sub.s   $f8, $f4, $f10
	swc1    $f8, 0x0000($t6)
	lwc1    $f18, 0x0008($a2)
	lwc1    $f16, 0x0008($a1)
	lwc1    $f4, 0x0000($a3)
	lwc1    $f10, 0x0000($a2)
	sub.s   $f6, $f18, $f16
	lwc1    $f16, 0x0000($a2)
	lw      $t7, 0x0000($sp)
	sub.s   $f8, $f4, $f10
	lwc1    $f4, 0x0000($a1)
	mul.s   $f18, $f6, $f8
	lwc1    $f8, 0x0008($a2)
	lwc1    $f6, 0x0008($a3)
	sub.s   $f10, $f16, $f4
	sub.s   $f16, $f6, $f8
	mul.s   $f4, $f10, $f16
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0000($a2)
	lwc1    $f10, 0x0000($a1)
	lwc1    $f18, 0x0004($a3)
	lwc1    $f4, 0x0004($a2)
	sub.s   $f16, $f8, $f10
	lwc1    $f10, 0x0004($a2)
	lw      $t8, 0x0000($sp)
	sub.s   $f6, $f18, $f4
	lwc1    $f18, 0x0004($a1)
	mul.s   $f8, $f16, $f6
	lwc1    $f6, 0x0000($a2)
	lwc1    $f16, 0x0000($a3)
	sub.s   $f4, $f10, $f18
	sub.s   $f10, $f16, $f6
	mul.s   $f18, $f4, $f10
	sub.s   $f16, $f8, $f18
	swc1    $f16, 0x0008($t8)
	b       .L80378D30
	addiu   $v0, $sp, 0x0000
	b       .L80378D30
	nop
.L80378D30:
	jr      $ra
	nop

/* VECF *vecf_cross(VECF vf, VECF a, VECF b) */
.globl vecf_cross
vecf_cross:
	sw      $a0, 0x0000($sp)
	lwc1    $f4, 0x0004($a1)
	lwc1    $f6, 0x0008($a2)
	lwc1    $f10, 0x0008($a1)
	lwc1    $f16, 0x0004($a2)
	mul.s   $f8, $f4, $f6
	lw      $t6, 0x0000($sp)
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0008($a1)
	lwc1    $f10, 0x0000($a2)
	lwc1    $f8, 0x0000($a1)
	lwc1    $f18, 0x0008($a2)
	mul.s   $f16, $f6, $f10
	lw      $t7, 0x0000($sp)
	mul.s   $f4, $f8, $f18
	sub.s   $f6, $f16, $f4
	swc1    $f6, 0x0004($t7)
	lwc1    $f10, 0x0000($a1)
	lwc1    $f8, 0x0004($a2)
	lwc1    $f16, 0x0004($a1)
	lwc1    $f4, 0x0000($a2)
	mul.s   $f18, $f10, $f8
	lw      $t8, 0x0000($sp)
	mul.s   $f6, $f16, $f4
	sub.s   $f10, $f18, $f6
	swc1    $f10, 0x0008($t8)
	b       .L80378DB8
	addiu   $v0, $sp, 0x0000
	b       .L80378DB8
	nop
.L80378DB8:
	jr      $ra
	nop

/* VECF *vecf_normalise(VECF vf) */
.globl vecf_normalise
vecf_normalise:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f8, 0x0004($t6)
	lwc1    $f18, 0x0008($t6)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	add.s   $f16, $f6, $f10
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f4, $f16
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	div.s   $f6, $f8, $f0
	swc1    $f6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f10, 0x0000($t7)
	mul.s   $f4, $f10, $f18
	swc1    $f4, 0x0000($t7)
	lw      $t8, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f16, 0x0004($t8)
	mul.s   $f6, $f16, $f8
	swc1    $f6, 0x0004($t8)
	lw      $t9, 0x0020($sp)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f10, 0x0008($t9)
	mul.s   $f4, $f10, $f18
	swc1    $f4, 0x0008($t9)
	b       .L80378E58
	addiu   $v0, $sp, 0x0020
	b       .L80378E58
	nop
.L80378E58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void mtxf_cpy(MTXF dst, MTXF src) */
.globl mtxf_cpy
mtxf_cpy:
	addiu   $sp, $sp, -0x0010
	move    $a3, $a0
	move    $t0, $a1
	move    $a2, $0
	slti    $at, $a2, 0x0010
	beqz    $at, .L80378EA4
	nop
.L80378E84:
	lw      $t6, 0x0000($t0)
	addiu   $a3, $a3, 0x0004
	addiu   $t0, $t0, 0x0004
	sw      $t6, -0x0004($a3)
	addiu   $a2, $a2, 0x0001
	slti    $at, $a2, 0x0010
	bnez    $at, .L80378E84
	nop
.L80378EA4:
	b       .L80378EAC
	nop
.L80378EAC:
	jr      $ra
	addiu   $sp, $sp, 0x0010

/* void mtxf_identity(MTXF mf) */
.globl mtxf_identity
mtxf_identity:
	addiu   $sp, $sp, -0x0008
	move    $a1, $0
	slti    $at, $a1, 0x000E
	beqz    $at, .L80378EE4
	addiu   $a2, $a0, 0x0004
.L80378EC8:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0000($a2)
	addiu   $a1, $a1, 0x0001
	slti    $at, $a1, 0x000E
	bnez    $at, .L80378EC8
	addiu   $a2, $a2, 0x0004
.L80378EE4:
	move    $a1, $0
	slti    $at, $a1, 0x0004
	beqz    $at, .L80378F14
	move    $a2, $a0
.L80378EF4:
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0000($a2)
	addiu   $a1, $a1, 0x0001
	slti    $at, $a1, 0x0004
	bnez    $at, .L80378EF4
	addiu   $a2, $a2, 0x0014
.L80378F14:
	b       .L80378F1C
	nop
.L80378F1C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void mtxf_pos(MTXF mf, VECF pos) */
.globl mtxf_pos
mtxf_pos:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     mtxf_identity
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	lwc1    $f4, 0x0000($t6)
	swc1    $f4, 0x0030($t7)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0018($sp)
	lwc1    $f6, 0x0004($t8)
	swc1    $f6, 0x0034($t9)
	lw      $t0, 0x001C($sp)
	lw      $t1, 0x0018($sp)
	lwc1    $f8, 0x0008($t0)
	swc1    $f8, 0x0038($t1)
	b       .L80378F74
	nop
.L80378F74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void mtxf_lookat(MTXF mf, VECF eye, VECF look, SHORT rz) */
.globl mtxf_lookat
mtxf_lookat:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	sw      $a3, 0x005C($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x0058($sp)
	lw      $t7, 0x0054($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0048($sp)
	lw      $t8, 0x0058($sp)
	lw      $t9, 0x0054($sp)
	lwc1    $f10, 0x0008($t8)
	lwc1    $f16, 0x0008($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0044($sp)
	lwc1    $f4, 0x0048($sp)
	lwc1    $f8, 0x0044($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	li      $at, 0xBFF00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f18, $f0
	div.d   $f4, $f16, $f18
	cvt.s.d $f20, $f4
	lwc1    $f8, 0x0048($sp)
	mul.s   $f6, $f8, $f20
	swc1    $f6, 0x0048($sp)
	lwc1    $f10, 0x0044($sp)
	mul.s   $f16, $f10, $f20
	swc1    $f16, 0x0044($sp)
	lhu     $t0, 0x005E($sp)
	lui     $at, %hi(math_cos)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f18, %lo(math_cos)($at)
	swc1    $f18, 0x003C($sp)
	lhu     $t3, 0x005E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0044($sp)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f6, $f4, $f8
	swc1    $f6, 0x0040($sp)
	lhu     $t6, 0x005E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x0048($sp)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f10, %lo(math_sin)($at)
	neg.s   $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0038($sp)
	lw      $t9, 0x0058($sp)
	lw      $t0, 0x0054($sp)
	lwc1    $f8, 0x0000($t9)
	lwc1    $f6, 0x0000($t0)
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x0034($sp)
	lw      $t1, 0x0058($sp)
	lw      $t2, 0x0054($sp)
	lwc1    $f16, 0x0004($t1)
	lwc1    $f18, 0x0004($t2)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0030($sp)
	lw      $t3, 0x0058($sp)
	lw      $t4, 0x0054($sp)
	lwc1    $f8, 0x0008($t3)
	lwc1    $f6, 0x0008($t4)
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x002C($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f10, 0x002C($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f8, $f4, $f4
	add.s   $f6, $f18, $f8
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f6, $f16
	li      $at, 0xBFF00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f0
	div.d   $f8, $f4, $f18
	cvt.s.d $f20, $f8
	lwc1    $f10, 0x0034($sp)
	mul.s   $f6, $f10, $f20
	swc1    $f6, 0x0034($sp)
	lwc1    $f16, 0x0030($sp)
	mul.s   $f4, $f16, $f20
	swc1    $f4, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f8, $f18, $f20
	swc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f18, 0x0030($sp)
	mul.s   $f16, $f10, $f6
	nop
	mul.s   $f8, $f4, $f18
	sub.s   $f10, $f16, $f8
	swc1    $f10, 0x0028($sp)
	lwc1    $f6, 0x0038($sp)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f8, 0x002C($sp)
	mul.s   $f18, $f6, $f4
	nop
	mul.s   $f10, $f16, $f8
	sub.s   $f6, $f18, $f10
	swc1    $f6, 0x0024($sp)
	lwc1    $f4, 0x0040($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f18, 0x003C($sp)
	lwc1    $f10, 0x0034($sp)
	mul.s   $f8, $f4, $f16
	nop
	mul.s   $f6, $f18, $f10
	sub.s   $f4, $f8, $f6
	swc1    $f4, 0x0020($sp)
	lwc1    $f16, 0x0028($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f4, 0x0020($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f8, $f10, $f10
	add.s   $f6, $f18, $f8
	mul.s   $f16, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f6, $f16
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f18, $f0
	div.d   $f8, $f10, $f18
	cvt.s.d $f20, $f8
	lwc1    $f4, 0x0028($sp)
	mul.s   $f6, $f4, $f20
	swc1    $f6, 0x0028($sp)
	lwc1    $f16, 0x0024($sp)
	mul.s   $f10, $f16, $f20
	swc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	mul.s   $f8, $f18, $f20
	swc1    $f8, 0x0020($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f18, 0x0024($sp)
	mul.s   $f16, $f4, $f6
	nop
	mul.s   $f8, $f10, $f18
	sub.s   $f4, $f16, $f8
	swc1    $f4, 0x0040($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f8, 0x0020($sp)
	mul.s   $f18, $f6, $f10
	nop
	mul.s   $f4, $f16, $f8
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x003C($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f18, 0x0030($sp)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f8, $f10, $f16
	nop
	mul.s   $f6, $f18, $f4
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x0038($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f10, 0x0038($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f8, $f4, $f4
	add.s   $f6, $f18, $f8
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f6, $f16
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f0
	div.d   $f8, $f4, $f18
	cvt.s.d $f20, $f8
	lwc1    $f10, 0x0040($sp)
	mul.s   $f6, $f10, $f20
	swc1    $f6, 0x0040($sp)
	lwc1    $f16, 0x003C($sp)
	mul.s   $f4, $f16, $f20
	swc1    $f4, 0x003C($sp)
	lwc1    $f18, 0x0038($sp)
	mul.s   $f8, $f18, $f20
	swc1    $f8, 0x0038($sp)
	lwc1    $f10, 0x0028($sp)
	lw      $t5, 0x0050($sp)
	swc1    $f10, 0x0000($t5)
	lwc1    $f6, 0x0024($sp)
	lw      $t6, 0x0050($sp)
	swc1    $f6, 0x0010($t6)
	lwc1    $f16, 0x0020($sp)
	lw      $t7, 0x0050($sp)
	swc1    $f16, 0x0020($t7)
	lw      $t8, 0x0054($sp)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f4, 0x0000($t8)
	lwc1    $f10, 0x0004($t8)
	lw      $t9, 0x0050($sp)
	mul.s   $f8, $f4, $f18
	lwc1    $f18, 0x0008($t8)
	mul.s   $f16, $f10, $f6
	lwc1    $f10, 0x0020($sp)
	mul.s   $f6, $f18, $f10
	add.s   $f4, $f8, $f16
	add.s   $f8, $f6, $f4
	neg.s   $f16, $f8
	swc1    $f16, 0x0030($t9)
	lwc1    $f18, 0x0040($sp)
	lw      $t0, 0x0050($sp)
	swc1    $f18, 0x0004($t0)
	lwc1    $f10, 0x003C($sp)
	lw      $t1, 0x0050($sp)
	swc1    $f10, 0x0014($t1)
	lwc1    $f6, 0x0038($sp)
	lw      $t2, 0x0050($sp)
	swc1    $f6, 0x0024($t2)
	lw      $t3, 0x0054($sp)
	lwc1    $f8, 0x0040($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f4, 0x0000($t3)
	lwc1    $f18, 0x0004($t3)
	lw      $t4, 0x0050($sp)
	mul.s   $f16, $f4, $f8
	lwc1    $f8, 0x0008($t3)
	mul.s   $f6, $f18, $f10
	lwc1    $f18, 0x0038($sp)
	mul.s   $f10, $f8, $f18
	add.s   $f4, $f16, $f6
	add.s   $f16, $f10, $f4
	neg.s   $f6, $f16
	swc1    $f6, 0x0034($t4)
	lwc1    $f8, 0x0034($sp)
	lw      $t5, 0x0050($sp)
	swc1    $f8, 0x0008($t5)
	lwc1    $f18, 0x0030($sp)
	lw      $t6, 0x0050($sp)
	swc1    $f18, 0x0018($t6)
	lwc1    $f10, 0x002C($sp)
	lw      $t7, 0x0050($sp)
	swc1    $f10, 0x0028($t7)
	lw      $t8, 0x0054($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f18, 0x0030($sp)
	lwc1    $f4, 0x0000($t8)
	lwc1    $f8, 0x0004($t8)
	lw      $t9, 0x0050($sp)
	mul.s   $f6, $f4, $f16
	lwc1    $f16, 0x0008($t8)
	mul.s   $f10, $f8, $f18
	lwc1    $f8, 0x002C($sp)
	mul.s   $f18, $f16, $f8
	add.s   $f4, $f6, $f10
	add.s   $f6, $f18, $f4
	neg.s   $f10, $f6
	swc1    $f10, 0x0038($t9)
	mtc1    $0, $f16
	lw      $t0, 0x0050($sp)
	swc1    $f16, 0x000C($t0)
	mtc1    $0, $f8
	lw      $t1, 0x0050($sp)
	swc1    $f8, 0x001C($t1)
	mtc1    $0, $f18
	lw      $t2, 0x0050($sp)
	swc1    $f18, 0x002C($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t3, 0x0050($sp)
	swc1    $f4, 0x003C($t3)
	b       .L8037942C
	nop
.L8037942C:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

/* void mtxf_posang(MTXF mf, VECF pos, VECS ang) */
.globl mtxf_posang
mtxf_posang:
	addiu   $sp, $sp, -0x0020
	lhu     $t6, 0x0000($a2)
	lui     $at, %hi(math_sin)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f12, %lo(math_sin)($at)
	lhu     $t9, 0x0000($a2)
	lui     $at, %hi(math_cos)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f14, %lo(math_cos)($at)
	lhu     $t2, 0x0002($a2)
	lui     $at, %hi(math_sin)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_sin)($at)
	lhu     $t5, 0x0002($a2)
	lui     $at, %hi(math_cos)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_cos)($at)
	lhu     $t8, 0x0004($a2)
	lui     $at, %hi(math_sin)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_sin)($at)
	swc1    $f4, 0x000C($sp)
	lhu     $t1, 0x0004($a2)
	lui     $at, %hi(math_cos)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_cos)($at)
	swc1    $f6, 0x0008($sp)
	mul.s   $f8, $f12, $f16
	lwc1    $f10, 0x000C($sp)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f4, $f8, $f10
	nop
	mul.s   $f8, $f18, $f6
	add.s   $f10, $f8, $f4
	swc1    $f10, 0x0000($a0)
	lwc1    $f8, 0x000C($sp)
	neg.s   $f6, $f18
	mul.s   $f4, $f6, $f8
	lwc1    $f6, 0x0008($sp)
	mul.s   $f10, $f12, $f16
	nop
	mul.s   $f8, $f10, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0010($a0)
	mul.s   $f6, $f14, $f16
	swc1    $f6, 0x0020($a0)
	lwc1    $f4, 0x0000($a1)
	swc1    $f4, 0x0030($a0)
	lwc1    $f8, 0x000C($sp)
	mul.s   $f10, $f14, $f8
	swc1    $f10, 0x0004($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f4, $f14, $f6
	swc1    $f4, 0x0014($a0)
	neg.s   $f8, $f12
	swc1    $f8, 0x0024($a0)
	lwc1    $f10, 0x0004($a1)
	swc1    $f10, 0x0034($a0)
	lwc1    $f4, 0x0008($sp)
	neg.s   $f6, $f16
	mul.s   $f8, $f6, $f4
	lwc1    $f6, 0x000C($sp)
	mul.s   $f10, $f12, $f18
	nop
	mul.s   $f4, $f10, $f6
	add.s   $f10, $f8, $f4
	swc1    $f10, 0x0008($a0)
	mul.s   $f6, $f12, $f18
	lwc1    $f8, 0x0008($sp)
	lwc1    $f10, 0x000C($sp)
	mul.s   $f4, $f6, $f8
	nop
	mul.s   $f6, $f16, $f10
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0018($a0)
	mul.s   $f10, $f14, $f18
	swc1    $f10, 0x0028($a0)
	lwc1    $f6, 0x0008($a1)
	swc1    $f6, 0x0038($a0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x002C($a0)
	lwc1    $f8, 0x002C($a0)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0004($sp)
	swc1    $f10, 0x001C($a0)
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x000C($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x003C($a0)
	b       .L803795E8
	nop
.L803795E8:
	jr      $ra
	addiu   $sp, $sp, 0x0020

/* void mtxf_joint(MTXF mf, VECF pos, VECS ang) */
.globl mtxf_joint
mtxf_joint:
	addiu   $sp, $sp, -0x0018
	lhu     $t6, 0x0000($a2)
	lui     $at, %hi(math_sin)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f12, %lo(math_sin)($at)
	lhu     $t9, 0x0000($a2)
	lui     $at, %hi(math_cos)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f14, %lo(math_cos)($at)
	lhu     $t2, 0x0002($a2)
	lui     $at, %hi(math_sin)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_sin)($at)
	lhu     $t5, 0x0002($a2)
	lui     $at, %hi(math_cos)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_cos)($at)
	lhu     $t8, 0x0004($a2)
	lui     $at, %hi(math_sin)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_sin)($at)
	swc1    $f4, 0x0004($sp)
	lhu     $t1, 0x0004($a2)
	lui     $at, %hi(math_cos)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_cos)($at)
	swc1    $f6, 0x0000($sp)
	lwc1    $f8, 0x0000($sp)
	mul.s   $f10, $f18, $f8
	swc1    $f10, 0x0000($a0)
	lwc1    $f4, 0x0004($sp)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0004($a0)
	neg.s   $f8, $f16
	swc1    $f8, 0x0008($a0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x000C($a0)
	mul.s   $f4, $f12, $f16
	lwc1    $f6, 0x0000($sp)
	lwc1    $f10, 0x0004($sp)
	mul.s   $f8, $f4, $f6
	nop
	mul.s   $f4, $f14, $f10
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x0010($a0)
	mul.s   $f10, $f12, $f16
	lwc1    $f8, 0x0004($sp)
	lwc1    $f6, 0x0000($sp)
	mul.s   $f4, $f10, $f8
	nop
	mul.s   $f10, $f14, $f6
	add.s   $f8, $f4, $f10
	swc1    $f8, 0x0014($a0)
	mul.s   $f6, $f12, $f18
	swc1    $f6, 0x0018($a0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x001C($a0)
	mul.s   $f10, $f14, $f16
	lwc1    $f8, 0x0000($sp)
	lwc1    $f4, 0x0004($sp)
	mul.s   $f6, $f10, $f8
	nop
	mul.s   $f10, $f12, $f4
	add.s   $f8, $f6, $f10
	swc1    $f8, 0x0020($a0)
	mul.s   $f4, $f14, $f16
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0000($sp)
	mul.s   $f10, $f4, $f6
	nop
	mul.s   $f4, $f12, $f8
	sub.s   $f6, $f10, $f4
	swc1    $f6, 0x0024($a0)
	mul.s   $f8, $f14, $f18
	swc1    $f8, 0x0028($a0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x002C($a0)
	lwc1    $f4, 0x0000($a1)
	swc1    $f4, 0x0030($a0)
	lwc1    $f6, 0x0004($a1)
	swc1    $f6, 0x0034($a0)
	lwc1    $f8, 0x0008($a1)
	swc1    $f8, 0x0038($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x003C($a0)
	b       .L80379790
	nop
.L80379790:
	jr      $ra
	addiu   $sp, $sp, 0x0018

/* void mtxf_billboard(MTXF dst, MTXF src, VECF pos, SHORT rz) */
.globl mtxf_billboard
mtxf_billboard:
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	andi    $t6, $a3, 0xFFFF
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0000($a0)
	andi    $t9, $a3, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0004($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0008($a0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x000C($a0)
	lwc1    $f16, 0x0004($a0)
	neg.s   $f18, $f16
	swc1    $f18, 0x0010($a0)
	lwc1    $f4, 0x0000($a0)
	swc1    $f4, 0x0014($a0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0018($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x001C($a0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0020($a0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0024($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0028($a0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x002C($a0)
	lwc1    $f6, 0x0000($a1)
	lwc1    $f8, 0x0000($a2)
	lwc1    $f16, 0x0010($a1)
	lwc1    $f18, 0x0004($a2)
	mul.s   $f10, $f6, $f8
	lwc1    $f8, 0x0020($a1)
	mul.s   $f4, $f16, $f18
	lwc1    $f16, 0x0008($a2)
	mul.s   $f18, $f8, $f16
	add.s   $f6, $f10, $f4
	lwc1    $f4, 0x0030($a1)
	add.s   $f10, $f6, $f18
	add.s   $f8, $f4, $f10
	swc1    $f8, 0x0030($a0)
	lwc1    $f16, 0x0004($a1)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f4, 0x0014($a1)
	lwc1    $f10, 0x0004($a2)
	mul.s   $f18, $f16, $f6
	lwc1    $f6, 0x0024($a1)
	mul.s   $f8, $f4, $f10
	lwc1    $f4, 0x0008($a2)
	mul.s   $f10, $f6, $f4
	add.s   $f16, $f18, $f8
	lwc1    $f8, 0x0034($a1)
	add.s   $f18, $f16, $f10
	add.s   $f6, $f8, $f18
	swc1    $f6, 0x0034($a0)
	lwc1    $f4, 0x0008($a1)
	lwc1    $f16, 0x0000($a2)
	lwc1    $f8, 0x0018($a1)
	lwc1    $f18, 0x0004($a2)
	mul.s   $f10, $f4, $f16
	lwc1    $f16, 0x0028($a1)
	mul.s   $f6, $f8, $f18
	lwc1    $f8, 0x0008($a2)
	mul.s   $f18, $f16, $f8
	add.s   $f4, $f10, $f6
	lwc1    $f6, 0x0038($a1)
	add.s   $f10, $f4, $f18
	add.s   $f16, $f6, $f10
	swc1    $f16, 0x0038($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x003C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

/* void mtxf_stand(MTXF mf, VECF normal, VECF pos, SHORT ang) */
.globl mtxf_stand
mtxf_stand:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	lhu     $t6, 0x004E($sp)
	lui     $a1, %hi(math_sin)
	lui     $a3, %hi(math_cos)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $a1, $a1, $t8
	addu    $a3, $a3, $t8
	lw      $a3, %lo(math_cos)($a3)
	lw      $a1, %lo(math_sin)($a1)
	addiu   $a0, $sp, 0x0034
	jal     vecf_set
	li      $a2, 0x0000
	jal     vecf_normalise
	lw      $a0, 0x0044($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a1, 0x0044($sp)
	jal     vecf_cross
	addiu   $a2, $sp, 0x0034
	jal     vecf_normalise
	addiu   $a0, $sp, 0x0028
	addiu   $a0, $sp, 0x001C
	addiu   $a1, $sp, 0x0028
	jal     vecf_cross
	lw      $a2, 0x0044($sp)
	jal     vecf_normalise
	addiu   $a0, $sp, 0x001C
	addiu   $t9, $sp, 0x0028
	lwc1    $f4, 0x0000($t9)
	lw      $t0, 0x0040($sp)
	swc1    $f4, 0x0000($t0)
	addiu   $t1, $sp, 0x0028
	lwc1    $f6, 0x0004($t1)
	lw      $t2, 0x0040($sp)
	swc1    $f6, 0x0004($t2)
	addiu   $t3, $sp, 0x0028
	lwc1    $f8, 0x0008($t3)
	lw      $t4, 0x0040($sp)
	swc1    $f8, 0x0008($t4)
	lw      $t5, 0x0048($sp)
	lw      $t6, 0x0040($sp)
	lwc1    $f10, 0x0000($t5)
	swc1    $f10, 0x0030($t6)
	lw      $t7, 0x0044($sp)
	lw      $t8, 0x0040($sp)
	lwc1    $f16, 0x0000($t7)
	swc1    $f16, 0x0010($t8)
	lw      $t9, 0x0044($sp)
	lw      $t0, 0x0040($sp)
	lwc1    $f18, 0x0004($t9)
	swc1    $f18, 0x0014($t0)
	lw      $t1, 0x0044($sp)
	lw      $t2, 0x0040($sp)
	lwc1    $f4, 0x0008($t1)
	swc1    $f4, 0x0018($t2)
	lw      $t3, 0x0048($sp)
	lw      $t4, 0x0040($sp)
	lwc1    $f6, 0x0004($t3)
	swc1    $f6, 0x0034($t4)
	addiu   $t5, $sp, 0x001C
	lwc1    $f8, 0x0000($t5)
	lw      $t6, 0x0040($sp)
	swc1    $f8, 0x0020($t6)
	addiu   $t7, $sp, 0x001C
	lwc1    $f10, 0x0004($t7)
	lw      $t8, 0x0040($sp)
	swc1    $f10, 0x0024($t8)
	addiu   $t9, $sp, 0x001C
	lwc1    $f16, 0x0008($t9)
	lw      $t0, 0x0040($sp)
	swc1    $f16, 0x0028($t0)
	lw      $t1, 0x0048($sp)
	lw      $t2, 0x0040($sp)
	lwc1    $f18, 0x0008($t1)
	swc1    $f18, 0x0038($t2)
	mtc1    $0, $f4
	lw      $t3, 0x0040($sp)
	swc1    $f4, 0x000C($t3)
	mtc1    $0, $f6
	lw      $t4, 0x0040($sp)
	swc1    $f6, 0x001C($t4)
	mtc1    $0, $f8
	lw      $t5, 0x0040($sp)
	swc1    $f8, 0x002C($t5)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $t6, 0x0040($sp)
	swc1    $f10, 0x003C($t6)
	b       .L80379A94
	nop
.L80379A94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

/* void mtxf_ground(MTXF mf, VECF pos, SHORT ang, float radius) */
.globl mtxf_ground
mtxf_ground:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0078($sp)
	sw      $a1, 0x007C($sp)
	sw      $a2, 0x0080($sp)
	sw      $a3, 0x0084($sp)
	lwc1    $f4, 0x0084($sp)
	li      $at, 0x40400000
	mtc1    $at, $f8
	neg.s   $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0018($sp)
	lh      $t6, 0x0082($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x0084($sp)
	addiu   $t7, $t6, 0x2AAA
	andi    $t8, $t7, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f16, %lo(math_sin)($at)
	lw      $t1, 0x007C($sp)
	addiu   $t2, $sp, 0x0068
	mul.s   $f4, $f16, $f18
	lwc1    $f6, 0x0000($t1)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t2)
	lh      $t3, 0x0082($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0084($sp)
	addiu   $t4, $t3, 0x2AAA
	andi    $t5, $t4, 0xFFFF
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_cos)($at)
	lw      $t8, 0x007C($sp)
	addiu   $t9, $sp, 0x0068
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0008($t8)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0008($t9)
	lh      $t0, 0x0082($sp)
	li      $at, 0x8000
	lwc1    $f10, 0x0084($sp)
	addu    $t1, $t0, $at
	andi    $t2, $t1, 0xFFFF
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_sin)($at)
	lw      $t5, 0x007C($sp)
	addiu   $t6, $sp, 0x005C
	mul.s   $f16, $f8, $f10
	lwc1    $f18, 0x0000($t5)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($t6)
	lh      $t7, 0x0082($sp)
	li      $at, 0x8000
	lwc1    $f8, 0x0084($sp)
	addu    $t8, $t7, $at
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_cos)($at)
	lw      $t2, 0x007C($sp)
	addiu   $t3, $sp, 0x005C
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x0008($t2)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($t3)
	lh      $t4, 0x0082($sp)
	li      $at, 0xD555
	lwc1    $f6, 0x0084($sp)
	addu    $t5, $t4, $at
	andi    $t6, $t5, 0xFFFF
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	lw      $t9, 0x007C($sp)
	addiu   $t0, $sp, 0x0050
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x0000($t9)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0000($t0)
	lh      $t1, 0x0082($sp)
	li      $at, 0xD555
	lwc1    $f4, 0x0084($sp)
	addu    $t2, $t1, $at
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t5
	lwc1    $f18, %lo(math_cos)($at)
	lw      $t6, 0x007C($sp)
	addiu   $t7, $sp, 0x0050
	mul.s   $f6, $f18, $f4
	lwc1    $f8, 0x0008($t6)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0008($t7)
	lw      $t9, 0x007C($sp)
	li      $at, 0x43160000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($t9)
	addiu   $t8, $sp, 0x0068
	lwc1    $f12, 0x0000($t8)
	lw      $a2, 0x0008($t8)
	addiu   $a3, $sp, 0x0074
	jal     map_80381900
	add.s   $f14, $f16, $f18
	addiu   $t0, $sp, 0x0068
	swc1    $f0, 0x0004($t0)
	lw      $t2, 0x007C($sp)
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f4, 0x0004($t2)
	addiu   $t1, $sp, 0x005C
	lwc1    $f12, 0x0000($t1)
	lw      $a2, 0x0008($t1)
	addiu   $a3, $sp, 0x0074
	jal     map_80381900
	add.s   $f14, $f4, $f6
	addiu   $t3, $sp, 0x005C
	swc1    $f0, 0x0004($t3)
	lw      $t5, 0x007C($sp)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($t5)
	addiu   $t4, $sp, 0x0050
	lwc1    $f12, 0x0000($t4)
	lw      $a2, 0x0008($t4)
	addiu   $a3, $sp, 0x0074
	jal     map_80381900
	add.s   $f14, $f8, $f10
	addiu   $t6, $sp, 0x0050
	swc1    $f0, 0x0004($t6)
	lw      $t9, 0x007C($sp)
	addiu   $t7, $sp, 0x0068
	lwc1    $f16, 0x0004($t7)
	lwc1    $f18, 0x0004($t9)
	lwc1    $f6, 0x0018($sp)
	sub.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80379D14
	nop
	lw      $t8, 0x007C($sp)
	addiu   $t0, $sp, 0x0068
	lwc1    $f8, 0x0004($t8)
	swc1    $f8, 0x0004($t0)
.L80379D14:
	lw      $t1, 0x007C($sp)
	addiu   $t2, $sp, 0x005C
	lwc1    $f10, 0x0004($t2)
	lwc1    $f16, 0x0004($t1)
	lwc1    $f4, 0x0018($sp)
	sub.s   $f18, $f10, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80379D4C
	nop
	lw      $t3, 0x007C($sp)
	addiu   $t5, $sp, 0x005C
	lwc1    $f6, 0x0004($t3)
	swc1    $f6, 0x0004($t5)
.L80379D4C:
	lw      $t6, 0x007C($sp)
	addiu   $t4, $sp, 0x0050
	lwc1    $f8, 0x0004($t4)
	lwc1    $f10, 0x0004($t6)
	lwc1    $f18, 0x0018($sp)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80379D84
	nop
	lw      $t7, 0x007C($sp)
	addiu   $t9, $sp, 0x0050
	lwc1    $f4, 0x0004($t7)
	swc1    $f4, 0x0004($t9)
.L80379D84:
	addiu   $t8, $sp, 0x0068
	addiu   $t0, $sp, 0x005C
	lwc1    $f8, 0x0004($t0)
	lwc1    $f6, 0x0004($t8)
	addiu   $t2, $sp, 0x0050
	lwc1    $f16, 0x0004($t2)
	add.s   $f10, $f6, $f8
	li      $at, 0x40400000
	mtc1    $at, $f4
	add.s   $f18, $f16, $f10
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x001C($sp)
	lhu     $t1, 0x0082($sp)
	lui     $a1, %hi(math_sin)
	lui     $a3, %hi(math_cos)
	sra     $t3, $t1, 4
	sll     $t5, $t3, 2
	addu    $a1, $a1, $t5
	addu    $a3, $a3, $t5
	lw      $a3, %lo(math_cos)($a3)
	lw      $a1, %lo(math_sin)($a1)
	addiu   $a0, $sp, 0x0044
	jal     vecf_set
	li      $a2, 0x0000
	addiu   $a0, $sp, 0x002C
	addiu   $a1, $sp, 0x0068
	addiu   $a2, $sp, 0x005C
	jal     vecf_normal
	addiu   $a3, $sp, 0x0050
	jal     vecf_normalise
	addiu   $a0, $sp, 0x002C
	addiu   $a0, $sp, 0x0038
	addiu   $a1, $sp, 0x002C
	jal     vecf_cross
	addiu   $a2, $sp, 0x0044
	jal     vecf_normalise
	addiu   $a0, $sp, 0x0038
	addiu   $a0, $sp, 0x0020
	addiu   $a1, $sp, 0x0038
	jal     vecf_cross
	addiu   $a2, $sp, 0x002C
	jal     vecf_normalise
	addiu   $a0, $sp, 0x0020
	addiu   $t4, $sp, 0x0038
	lwc1    $f8, 0x0000($t4)
	lw      $t6, 0x0078($sp)
	swc1    $f8, 0x0000($t6)
	addiu   $t7, $sp, 0x0038
	lwc1    $f16, 0x0004($t7)
	lw      $t9, 0x0078($sp)
	swc1    $f16, 0x0004($t9)
	addiu   $t8, $sp, 0x0038
	lwc1    $f10, 0x0008($t8)
	lw      $t0, 0x0078($sp)
	swc1    $f10, 0x0008($t0)
	lw      $t2, 0x007C($sp)
	lw      $t1, 0x0078($sp)
	lwc1    $f18, 0x0000($t2)
	swc1    $f18, 0x0030($t1)
	addiu   $t3, $sp, 0x002C
	lwc1    $f4, 0x0000($t3)
	lw      $t5, 0x0078($sp)
	swc1    $f4, 0x0010($t5)
	addiu   $t4, $sp, 0x002C
	lwc1    $f6, 0x0004($t4)
	lw      $t6, 0x0078($sp)
	swc1    $f6, 0x0014($t6)
	addiu   $t7, $sp, 0x002C
	lwc1    $f8, 0x0008($t7)
	lw      $t9, 0x0078($sp)
	swc1    $f8, 0x0018($t9)
	lw      $t8, 0x007C($sp)
	lwc1    $f16, 0x001C($sp)
	lwc1    $f10, 0x0004($t8)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80379EC8
	nop
	lw      $t0, 0x0078($sp)
	b       .L80379ED4
	swc1    $f10, 0x0034($t0)
.L80379EC8:
	lwc1    $f18, 0x001C($sp)
	lw      $t2, 0x0078($sp)
	swc1    $f18, 0x0034($t2)
.L80379ED4:
	addiu   $t1, $sp, 0x0020
	lwc1    $f4, 0x0000($t1)
	lw      $t3, 0x0078($sp)
	swc1    $f4, 0x0020($t3)
	addiu   $t5, $sp, 0x0020
	lwc1    $f6, 0x0004($t5)
	lw      $t4, 0x0078($sp)
	swc1    $f6, 0x0024($t4)
	addiu   $t6, $sp, 0x0020
	lwc1    $f8, 0x0008($t6)
	lw      $t7, 0x0078($sp)
	swc1    $f8, 0x0028($t7)
	lw      $t9, 0x007C($sp)
	lw      $t8, 0x0078($sp)
	lwc1    $f16, 0x0008($t9)
	swc1    $f16, 0x0038($t8)
	mtc1    $0, $f10
	lw      $t0, 0x0078($sp)
	swc1    $f10, 0x000C($t0)
	mtc1    $0, $f18
	lw      $t2, 0x0078($sp)
	swc1    $f18, 0x001C($t2)
	mtc1    $0, $f4
	lw      $t1, 0x0078($sp)
	swc1    $f4, 0x002C($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t3, 0x0078($sp)
	swc1    $f6, 0x003C($t3)
	b       .L80379F50
	nop
.L80379F50:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

/* void mtxf_cat(MTXF mf, MTXF a, MTXF b) */
.globl mtxf_cat
mtxf_cat:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0088($sp)
	sw      $a1, 0x008C($sp)
	sw      $a2, 0x0090($sp)
	sdc1    $f26, 0x0028($sp)
	sdc1    $f24, 0x0020($sp)
	sdc1    $f22, 0x0018($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x008C($sp)
	lwc1    $f20, 0x0000($t6)
	lw      $t7, 0x008C($sp)
	lwc1    $f22, 0x0004($t7)
	lw      $t8, 0x008C($sp)
	lwc1    $f24, 0x0008($t8)
	lw      $t9, 0x0090($sp)
	addiu   $t0, $sp, 0x0048
	lwc1    $f4, 0x0000($t9)
	lwc1    $f8, 0x0010($t9)
	lwc1    $f18, 0x0020($t9)
	mul.s   $f6, $f20, $f4
	nop
	mul.s   $f10, $f22, $f8
	add.s   $f16, $f6, $f10
	mul.s   $f4, $f18, $f24
	add.s   $f8, $f4, $f16
	swc1    $f8, 0x0000($t0)
	lw      $t1, 0x0090($sp)
	addiu   $t2, $sp, 0x0048
	lwc1    $f6, 0x0004($t1)
	lwc1    $f18, 0x0014($t1)
	lwc1    $f8, 0x0024($t1)
	mul.s   $f10, $f20, $f6
	nop
	mul.s   $f4, $f22, $f18
	add.s   $f16, $f10, $f4
	mul.s   $f6, $f8, $f24
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x0004($t2)
	lw      $t3, 0x0090($sp)
	addiu   $t4, $sp, 0x0048
	lwc1    $f10, 0x0008($t3)
	lwc1    $f8, 0x0018($t3)
	lwc1    $f18, 0x0028($t3)
	mul.s   $f4, $f20, $f10
	nop
	mul.s   $f6, $f22, $f8
	add.s   $f16, $f4, $f6
	mul.s   $f10, $f18, $f24
	add.s   $f8, $f10, $f16
	swc1    $f8, 0x0008($t4)
	lw      $t5, 0x008C($sp)
	lwc1    $f20, 0x0010($t5)
	lw      $t6, 0x008C($sp)
	lwc1    $f22, 0x0014($t6)
	lw      $t7, 0x008C($sp)
	lwc1    $f24, 0x0018($t7)
	lw      $t8, 0x0090($sp)
	addiu   $t9, $sp, 0x0048
	lwc1    $f4, 0x0000($t8)
	lwc1    $f18, 0x0010($t8)
	lwc1    $f8, 0x0020($t8)
	mul.s   $f6, $f20, $f4
	nop
	mul.s   $f10, $f22, $f18
	add.s   $f16, $f6, $f10
	mul.s   $f4, $f8, $f24
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x0010($t9)
	lw      $t0, 0x0090($sp)
	addiu   $t1, $sp, 0x0048
	lwc1    $f6, 0x0004($t0)
	lwc1    $f8, 0x0014($t0)
	lwc1    $f18, 0x0024($t0)
	mul.s   $f10, $f20, $f6
	nop
	mul.s   $f4, $f22, $f8
	add.s   $f16, $f10, $f4
	mul.s   $f6, $f18, $f24
	add.s   $f8, $f6, $f16
	swc1    $f8, 0x0014($t1)
	lw      $t2, 0x0090($sp)
	addiu   $t3, $sp, 0x0048
	lwc1    $f10, 0x0008($t2)
	lwc1    $f18, 0x0018($t2)
	lwc1    $f8, 0x0028($t2)
	mul.s   $f4, $f20, $f10
	nop
	mul.s   $f6, $f22, $f18
	add.s   $f16, $f4, $f6
	mul.s   $f10, $f8, $f24
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($t3)
	lw      $t4, 0x008C($sp)
	lwc1    $f20, 0x0020($t4)
	lw      $t5, 0x008C($sp)
	lwc1    $f22, 0x0024($t5)
	lw      $t6, 0x008C($sp)
	lwc1    $f24, 0x0028($t6)
	lw      $t7, 0x0090($sp)
	addiu   $t8, $sp, 0x0048
	lwc1    $f4, 0x0000($t7)
	lwc1    $f8, 0x0010($t7)
	lwc1    $f18, 0x0020($t7)
	mul.s   $f6, $f20, $f4
	nop
	mul.s   $f10, $f22, $f8
	add.s   $f16, $f6, $f10
	mul.s   $f4, $f18, $f24
	add.s   $f8, $f4, $f16
	swc1    $f8, 0x0020($t8)
	lw      $t9, 0x0090($sp)
	addiu   $t0, $sp, 0x0048
	lwc1    $f6, 0x0004($t9)
	lwc1    $f18, 0x0014($t9)
	lwc1    $f8, 0x0024($t9)
	mul.s   $f10, $f20, $f6
	nop
	mul.s   $f4, $f22, $f18
	add.s   $f16, $f10, $f4
	mul.s   $f6, $f8, $f24
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x0024($t0)
	lw      $t1, 0x0090($sp)
	addiu   $t2, $sp, 0x0048
	lwc1    $f10, 0x0008($t1)
	lwc1    $f8, 0x0018($t1)
	lwc1    $f18, 0x0028($t1)
	mul.s   $f4, $f20, $f10
	nop
	mul.s   $f6, $f22, $f8
	add.s   $f16, $f4, $f6
	mul.s   $f10, $f18, $f24
	add.s   $f8, $f10, $f16
	swc1    $f8, 0x0028($t2)
	lw      $t3, 0x008C($sp)
	lwc1    $f20, 0x0030($t3)
	lw      $t4, 0x008C($sp)
	lwc1    $f22, 0x0034($t4)
	lw      $t5, 0x008C($sp)
	lwc1    $f24, 0x0038($t5)
	lw      $t6, 0x0090($sp)
	addiu   $t7, $sp, 0x0048
	lwc1    $f4, 0x0000($t6)
	lwc1    $f18, 0x0010($t6)
	lwc1    $f8, 0x0020($t6)
	mul.s   $f6, $f20, $f4
	nop
	mul.s   $f10, $f22, $f18
	add.s   $f16, $f6, $f10
	mul.s   $f4, $f24, $f8
	lwc1    $f6, 0x0030($t6)
	add.s   $f18, $f16, $f4
	add.s   $f10, $f6, $f18
	swc1    $f10, 0x0030($t7)
	lw      $t8, 0x0090($sp)
	addiu   $t9, $sp, 0x0048
	lwc1    $f8, 0x0004($t8)
	lwc1    $f4, 0x0014($t8)
	lwc1    $f10, 0x0024($t8)
	mul.s   $f16, $f20, $f8
	nop
	mul.s   $f6, $f22, $f4
	add.s   $f18, $f16, $f6
	mul.s   $f8, $f24, $f10
	lwc1    $f16, 0x0034($t8)
	add.s   $f4, $f18, $f8
	add.s   $f6, $f16, $f4
	swc1    $f6, 0x0034($t9)
	lw      $t0, 0x0090($sp)
	addiu   $t1, $sp, 0x0048
	lwc1    $f10, 0x0008($t0)
	lwc1    $f8, 0x0018($t0)
	lwc1    $f6, 0x0028($t0)
	mul.s   $f18, $f20, $f10
	nop
	mul.s   $f16, $f22, $f8
	add.s   $f4, $f18, $f16
	mul.s   $f10, $f24, $f6
	lwc1    $f18, 0x0038($t0)
	add.s   $f8, $f4, $f10
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x0038($t1)
	mtc1    $0, $f6
	addiu   $t2, $sp, 0x0048
	addiu   $t3, $sp, 0x0048
	swc1    $f6, 0x002C($t2)
	lwc1    $f26, 0x002C($t3)
	addiu   $t4, $sp, 0x0048
	swc1    $f26, 0x001C($t3)
	swc1    $f26, 0x000C($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	addiu   $t5, $sp, 0x0048
	swc1    $f4, 0x003C($t5)
	lw      $a0, 0x0088($sp)
	jal     mtxf_cpy
	addiu   $a1, $sp, 0x0048
	b       .L8037A280
	nop
.L8037A280:
	lw      $ra, 0x0034($sp)
	ldc1    $f20, 0x0010($sp)
	ldc1    $f22, 0x0018($sp)
	ldc1    $f24, 0x0020($sp)
	ldc1    $f26, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0088

/* void mtxf_scale(MTXF dst, MTXF src, VECF scale) */
.globl mtxf_scale
mtxf_scale:
	addiu   $sp, $sp, -0x0008
	move    $a3, $0
	slti    $at, $a3, 0x0004
	beqz    $at, .L8037A338
	nop
.L8037A2B0:
	sll     $t6, $a3, 2
	addu    $t7, $a1, $t6
	lwc1    $f6, 0x0000($t7)
	lwc1    $f4, 0x0000($a2)
	sll     $t8, $a3, 2
	addu    $t9, $a0, $t8
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t9)
	sll     $t0, $a3, 2
	addu    $t1, $a1, $t0
	lwc1    $f16, 0x0010($t1)
	lwc1    $f10, 0x0004($a2)
	sll     $t2, $a3, 2
	addu    $t3, $a0, $t2
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0010($t3)
	sll     $t4, $a3, 2
	addu    $t5, $a1, $t4
	lwc1    $f6, 0x0020($t5)
	lwc1    $f4, 0x0008($a2)
	sll     $t6, $a3, 2
	addu    $t7, $a0, $t6
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t7)
	sll     $t8, $a3, 2
	addu    $t9, $a1, $t8
	lwc1    $f10, 0x0030($t9)
	sll     $t0, $a3, 2
	addu    $t1, $a0, $t0
	swc1    $f10, 0x0030($t1)
	addiu   $a3, $a3, 0x0001
	slti    $at, $a3, 0x0004
	bnez    $at, .L8037A2B0
	nop
.L8037A338:
	b       .L8037A340
	nop
.L8037A340:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void mtxf_transform(MTXF mf, VECS vs) */
.globl mtxf_transform
mtxf_transform:
	addiu   $sp, $sp, -0x0010
	lh      $t6, 0x0000($a1)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f12, $f4
	lh      $t7, 0x0002($a1)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f14, $f6
	lh      $t8, 0x0004($a1)
	mtc1    $t8, $f8
	nop
	cvt.s.w $f16, $f8
	lwc1    $f10, 0x0000($a0)
	lwc1    $f4, 0x0010($a0)
	mul.s   $f18, $f12, $f10
	lwc1    $f10, 0x0020($a0)
	mul.s   $f6, $f14, $f4
	add.s   $f8, $f18, $f6
	mul.s   $f4, $f16, $f10
	lwc1    $f6, 0x0030($a0)
	add.s   $f18, $f8, $f4
	add.s   $f10, $f6, $f18
	trunc.w.s $f8, $f10
	mfc1    $t0, $f8
	nop
	sh      $t0, 0x0000($a1)
	lwc1    $f4, 0x0004($a0)
	lwc1    $f18, 0x0014($a0)
	mul.s   $f6, $f12, $f4
	lwc1    $f4, 0x0024($a0)
	mul.s   $f10, $f14, $f18
	add.s   $f8, $f6, $f10
	mul.s   $f18, $f16, $f4
	lwc1    $f10, 0x0034($a0)
	add.s   $f6, $f8, $f18
	add.s   $f4, $f10, $f6
	trunc.w.s $f8, $f4
	mfc1    $t2, $f8
	nop
	sh      $t2, 0x0002($a1)
	lwc1    $f18, 0x0008($a0)
	lwc1    $f6, 0x0018($a0)
	mul.s   $f10, $f12, $f18
	lwc1    $f18, 0x0028($a0)
	mul.s   $f4, $f14, $f6
	add.s   $f8, $f10, $f4
	mul.s   $f6, $f16, $f18
	lwc1    $f4, 0x0038($a0)
	add.s   $f10, $f8, $f6
	add.s   $f18, $f4, $f10
	trunc.w.s $f8, $f18
	mfc1    $t4, $f8
	nop
	sh      $t4, 0x0004($a1)
	b       .L8037A42C
	nop
.L8037A42C:
	jr      $ra
	addiu   $sp, $sp, 0x0010

/* void mtxf_to_mtx(Mtx *m, MTXF mf) */
.globl mtxf_to_mtx
mtxf_to_mtx:
	addiu   $sp, $sp, -0x0018
	move    $a3, $a0
	addiu   $t0, $a0, 0x0020
	move    $t1, $a1
	move    $a2, $0
	slti    $at, $a2, 0x0010
	beqz    $at, .L8037A4A8
	nop
.L8037A454:
	li      $at, 0x47800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0000($t1)
	addiu   $t1, $t1, 0x0004
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t7, $f10
	nop
	sw      $t7, 0x0014($sp)
	addiu   $t8, $sp, 0x0014
	lh      $t9, 0x0000($t8)
	addiu   $a3, $a3, 0x0002
	sh      $t9, -0x0002($a3)
	addiu   $t2, $sp, 0x0014
	lh      $t3, 0x0002($t2)
	addiu   $t0, $t0, 0x0002
	sh      $t3, -0x0002($t0)
	addiu   $a2, $a2, 0x0001
	slti    $at, $a2, 0x0010
	bnez    $at, .L8037A454
	nop
.L8037A4A8:
	b       .L8037A4B0
	nop
.L8037A4B0:
	jr      $ra
	addiu   $sp, $sp, 0x0018

/* void mtx_rz(Mtx *m, SHORT rz) */
.globl mtx_rz
mtx_rz:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	jal     mtxf_identity
	addiu   $a0, $sp, 0x0018
	lhu     $t6, 0x005E($sp)
	lui     $at, %hi(math_cos)
	addiu   $t9, $sp, 0x0018
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0000($t9)
	lhu     $t0, 0x005E($sp)
	lui     $at, %hi(math_sin)
	addiu   $t3, $sp, 0x0018
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0004($t3)
	addiu   $t4, $sp, 0x0018
	lwc1    $f8, 0x0004($t4)
	neg.s   $f10, $f8
	swc1    $f10, 0x0010($t4)
	addiu   $t5, $sp, 0x0018
	lwc1    $f16, 0x0000($t5)
	swc1    $f16, 0x0014($t5)
	lw      $a0, 0x0058($sp)
	jal     mtxf_to_mtx
	addiu   $a1, $sp, 0x0018
	b       .L8037A540
	nop
.L8037A540:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

/* void vecf_untransform(VECF vf, MTXF mf, MTXF cam) */
.globl vecf_untransform
vecf_untransform:
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
	lwc1    $f10, 0x0030($a1)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f18, 0x0034($a1)
	lwc1    $f8, 0x0004($a2)
	mul.s   $f4, $f10, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f16, $f18, $f8
	lwc1    $f18, 0x0038($a1)
	mul.s   $f8, $f6, $f18
	add.s   $f10, $f4, $f16
	lwc1    $f16, 0x000C($sp)
	add.s   $f4, $f8, $f10
	sub.s   $f6, $f4, $f16
	swc1    $f6, 0x0000($a0)
	lwc1    $f18, 0x0030($a1)
	lwc1    $f8, 0x0010($a2)
	lwc1    $f4, 0x0034($a1)
	lwc1    $f16, 0x0014($a2)
	mul.s   $f10, $f18, $f8
	lwc1    $f8, 0x0018($a2)
	mul.s   $f6, $f4, $f16
	lwc1    $f4, 0x0038($a1)
	mul.s   $f16, $f8, $f4
	add.s   $f18, $f10, $f6
	lwc1    $f6, 0x0008($sp)
	add.s   $f10, $f16, $f18
	sub.s   $f8, $f10, $f6
	swc1    $f8, 0x0004($a0)
	lwc1    $f4, 0x0030($a1)
	lwc1    $f16, 0x0020($a2)
	lwc1    $f10, 0x0034($a1)
	lwc1    $f6, 0x0024($a2)
	mul.s   $f18, $f4, $f16
	lwc1    $f16, 0x0028($a2)
	mul.s   $f8, $f10, $f6
	lwc1    $f10, 0x0038($a1)
	mul.s   $f6, $f16, $f10
	add.s   $f4, $f18, $f8
	lwc1    $f8, 0x0004($sp)
	add.s   $f18, $f6, $f4
	sub.s   $f16, $f18, $f8
	swc1    $f16, 0x0008($a0)
	b       .L8037A694
	nop
.L8037A694:
	jr      $ra
	addiu   $sp, $sp, 0x0010

/* void cartesian_to_polar(VECF a, VECF b, float *dist, short *ax, short *ay) */
.globl cartesian_to_polar
cartesian_to_polar:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	sdc1    $f26, 0x0028($sp)
	sdc1    $f24, 0x0020($sp)
	sdc1    $f22, 0x0018($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x004C($sp)
	lw      $t7, 0x0048($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f20, $f4, $f6
	lw      $t8, 0x004C($sp)
	lw      $t9, 0x0048($sp)
	lwc1    $f8, 0x0004($t8)
	lwc1    $f10, 0x0004($t9)
	sub.s   $f22, $f8, $f10
	lw      $t0, 0x004C($sp)
	lw      $t1, 0x0048($sp)
	lwc1    $f16, 0x0008($t0)
	lwc1    $f18, 0x0008($t1)
	sub.s   $f24, $f16, $f18
	mul.s   $f4, $f20, $f20
	nop
	mul.s   $f6, $f22, $f22
	add.s   $f8, $f4, $f6
	mul.s   $f10, $f24, $f24
	jal     sqrtf
	add.s   $f12, $f8, $f10
	lw      $t2, 0x0050($sp)
	swc1    $f0, 0x0000($t2)
	mul.s   $f16, $f20, $f20
	nop
	mul.s   $f18, $f24, $f24
	jal     sqrtf
	add.s   $f12, $f16, $f18
	mov.s   $f26, $f0
	mov.s   $f12, $f26
	jal     atan2
	mov.s   $f14, $f22
	lw      $t3, 0x0054($sp)
	sh      $v0, 0x0000($t3)
	mov.s   $f12, $f24
	jal     atan2
	mov.s   $f14, $f20
	lw      $t4, 0x0058($sp)
	sh      $v0, 0x0000($t4)
	b       .L8037A76C
	nop
.L8037A76C:
	lw      $ra, 0x0034($sp)
	ldc1    $f20, 0x0010($sp)
	ldc1    $f22, 0x0018($sp)
	ldc1    $f24, 0x0020($sp)
	ldc1    $f26, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

/* void polar_to_cartesian(VECF a, VECF b, float dist, SHORT ax, SHORT ay) */
.globl polar_to_cartesian
polar_to_cartesian:
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sw      $a2, 0x0008($sp)
	andi    $t6, $a3, 0xFFFF
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	lwc1    $f4, 0x0008($sp)
	lhu     $t9, 0x0012($sp)
	lui     $at, %hi(math_sin)
	mul.s   $f8, $f4, $f6
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f18, 0x0000($a0)
	mul.s   $f16, $f10, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($a1)
	andi    $t2, $a3, 0xFFFF
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	lwc1    $f10, 0x0008($sp)
	lwc1    $f16, 0x0004($a0)
	mul.s   $f8, $f6, $f10
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x0004($a1)
	andi    $t5, $a3, 0xFFFF
	sra     $t6, $t5, 4
	la.u    $t8, math_cos
	la.l    $t8, math_cos
	sll     $t7, $t6, 2
	addu    $t9, $t7, $t8
	lwc1    $f6, 0x0000($t9)
	lwc1    $f4, 0x0008($sp)
	lhu     $t0, 0x0012($sp)
	lwc1    $f18, 0x0008($a0)
	mul.s   $f10, $f4, $f6
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $t3, $t2, $t8
	lwc1    $f8, 0x0000($t3)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0008($a1)
	b       .L8037A858
	nop
.L8037A858:
	jr      $ra
	nop

/* int converge_i(int x, int dst, int inc, int dec) */
.globl converge_i
converge_i:
	slt     $at, $a0, $a1
	beqz    $at, .L8037A888
	nop
	addu    $a0, $a0, $a2
	slt     $at, $a1, $a0
	beqz    $at, .L8037A880
	nop
	move    $a0, $a1
.L8037A880:
	b       .L8037A89C
	nop
.L8037A888:
	subu    $a0, $a0, $a3
	slt     $at, $a0, $a1
	beqz    $at, .L8037A89C
	nop
	move    $a0, $a1
.L8037A89C:
	jr      $ra
	move    $v0, $a0
	jr      $ra
	nop
	jr      $ra
	nop

/* float converge_f(float x, float dst, float inc, float dec) */
.globl converge_f
converge_f:
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	c.lt.s  $f12, $f14
	nop
	bc1f    .L8037A8F0
	nop
	lwc1    $f4, 0x0008($sp)
	add.s   $f12, $f12, $f4
	c.lt.s  $f14, $f12
	nop
	bc1f    .L8037A8E8
	nop
	mov.s   $f12, $f14
.L8037A8E8:
	b       .L8037A90C
	nop
.L8037A8F0:
	lwc1    $f6, 0x000C($sp)
	sub.s   $f12, $f12, $f6
	c.lt.s  $f12, $f14
	nop
	bc1f    .L8037A90C
	nop
	mov.s   $f12, $f14
.L8037A90C:
	b       .L8037A91C
	mov.s   $f0, $f12
	b       .L8037A91C
	nop
.L8037A91C:
	jr      $ra
	nop

/* USHORT atan_yx(float x, float y) */
atan_yx:
	addiu   $sp, $sp, -0x0008
	mtc1    $0, $f4
	nop
	c.eq.s  $f14, $f4
	nop
	bc1f    .L8037A954
	nop
	la.u    $t6, math_atan
	la.l    $t6, math_atan
	lh      $t7, 0x0000($t6)
	b       .L8037A990
	sh      $t7, 0x0006($sp)
.L8037A954:
	div.s   $f6, $f12, $f14
	li      $at, 0x44800000
	mtc1    $at, $f8
	li      $at, 0x3F000000
	mtc1    $at, $f16
	lui     $t1, %hi(math_atan)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sll     $t0, $t9, 1
	addu    $t1, $t1, $t0
	lh      $t1, %lo(math_atan)($t1)
	sh      $t1, 0x0006($sp)
.L8037A990:
	b       .L8037A9A0
	lhu     $v0, 0x0006($sp)
	b       .L8037A9A0
	nop
.L8037A9A0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* SHORT atan2(float x, float y) */
.globl atan2
atan2:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lwc1    $f4, 0x0024($sp)
	mtc1    $0, $f6
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    .L8037AA98
	nop
	lwc1    $f8, 0x0020($sp)
	mtc1    $0, $f10
	nop
	c.le.s  $f10, $f8
	nop
	bc1f    .L8037AA3C
	nop
	lwc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x0024($sp)
	c.le.s  $f18, $f16
	nop
	bc1f    .L8037AA1C
	nop
	lwc1    $f12, 0x0024($sp)
	jal     atan_yx
	lwc1    $f14, 0x0020($sp)
	b       .L8037AA34
	sh      $v0, 0x001E($sp)
.L8037AA1C:
	lwc1    $f12, 0x0020($sp)
	jal     atan_yx
	lwc1    $f14, 0x0024($sp)
	li      $t6, 0x4000
	subu    $t7, $t6, $v0
	sh      $t7, 0x001E($sp)
.L8037AA34:
	b       .L8037AA90
	nop
.L8037AA3C:
	lwc1    $f4, 0x0020($sp)
	neg.s   $f6, $f4
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8037AA78
	nop
	lwc1    $f12, 0x0020($sp)
	jal     atan_yx
	lwc1    $f14, 0x0024($sp)
	addiu   $t8, $v0, 0x4000
	b       .L8037AA90
	sh      $t8, 0x001E($sp)
.L8037AA78:
	lwc1    $f12, 0x0024($sp)
	jal     atan_yx
	lwc1    $f14, 0x0020($sp)
	li      $t9, 0x8000
	subu    $t0, $t9, $v0
	sh      $t0, 0x001E($sp)
.L8037AA90:
	b       .L8037AB68
	nop
.L8037AA98:
	lwc1    $f16, 0x0024($sp)
	neg.s   $f18, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x0020($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8037AB20
	nop
	lwc1    $f8, 0x0020($sp)
	neg.s   $f10, $f8
	swc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x0024($sp)
	c.le.s  $f18, $f16
	nop
	bc1f    .L8037AB00
	nop
	lwc1    $f12, 0x0024($sp)
	jal     atan_yx
	lwc1    $f14, 0x0020($sp)
	li      $at, 0x8000
	addu    $t1, $v0, $at
	b       .L8037AB18
	sh      $t1, 0x001E($sp)
.L8037AB00:
	lwc1    $f12, 0x0020($sp)
	jal     atan_yx
	lwc1    $f14, 0x0024($sp)
	li      $t2, 0xC000
	subu    $t3, $t2, $v0
	sh      $t3, 0x001E($sp)
.L8037AB18:
	b       .L8037AB68
	nop
.L8037AB20:
	lwc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8037AB54
	nop
	lwc1    $f12, 0x0020($sp)
	jal     atan_yx
	lwc1    $f14, 0x0024($sp)
	li      $at, 0xC000
	addu    $t4, $v0, $at
	b       .L8037AB68
	sh      $t4, 0x001E($sp)
.L8037AB54:
	lwc1    $f12, 0x0024($sp)
	jal     atan_yx
	lwc1    $f14, 0x0020($sp)
	subu    $t5, $0, $v0
	sh      $t5, 0x001E($sp)
.L8037AB68:
	b       .L8037AB78
	lh      $v0, 0x001E($sp)
	b       .L8037AB78
	nop
.L8037AB78:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* float atan2f(float x, float y) */
.globl atan2f
atan2f:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lwc1    $f12, 0x0018($sp)
	jal     atan2
	lwc1    $f14, 0x001C($sp)
	mtc1    $v0, $f4
	lui     $at, %hi(math_8038BA90)
	ldc1    $f10, %lo(math_8038BA90)($at)
	cvt.s.w $f6, $f4
	li      $at, 0x40E00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	div.d   $f4, $f16, $f18
	b       .L8037ABDC
	cvt.s.d $f0, $f4
	b       .L8037ABDC
	nop
.L8037ABDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void bspline_curve(float dst[4], float phase, int mode) */
bspline_curve:
	addiu   $sp, $sp, -0x0018
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f6, 0x001C($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0014($sp)
	lwc1    $f10, 0x0014($sp)
	mul.s   $f16, $f10, $f10
	swc1    $f16, 0x0010($sp)
	lwc1    $f18, 0x0010($sp)
	lwc1    $f4, 0x0014($sp)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x000C($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f10, $f8, $f8
	swc1    $f10, 0x0008($sp)
	lwc1    $f16, 0x0008($sp)
	lwc1    $f18, 0x001C($sp)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0004($sp)
	lui     $t6, %hi(bspline_mode)
	lw      $t6, %lo(bspline_mode)($t6)
	addiu   $t7, $t6, -0x0001
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L8037AFA8
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(math_8038BA98)
	addu    $at, $at, $t7
	lw      $t7, %lo(math_8038BA98)($at)
	jr      $t7
	nop
.globl L8037AC74
L8037AC74:
	lwc1    $f6, 0x000C($sp)
	swc1    $f6, 0x0000($a0)
	li      $at, 0x3FE00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($sp)
	li      $at, 0x40900000
	mtc1    $at, $f4
	mul.s   $f16, $f8, $f10
	lwc1    $f18, 0x0008($sp)
	li      $at, 0x40400000
	lwc1    $f10, 0x001C($sp)
	mul.s   $f6, $f18, $f4
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f10, $f18
	sub.s   $f8, $f16, $f6
	add.s   $f16, $f8, $f4
	swc1    $f16, 0x0004($a0)
	lwc1    $f6, 0x0004($sp)
	lui     $at, %hi(math_8038BAAC)
	lwc1    $f18, %lo(math_8038BAAC)($at)
	neg.s   $f10, $f6
	li      $at, 0x3FC00000
	mul.s   $f8, $f10, $f18
	mtc1    $at, $f16
	lwc1    $f4, 0x0008($sp)
	mul.s   $f6, $f4, $f16
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0008($a0)
	lui     $at, %hi(math_8038BAB0)
	lwc1    $f4, %lo(math_8038BAB0)($at)
	lwc1    $f18, 0x0004($sp)
	mul.s   $f16, $f18, $f4
	swc1    $f16, 0x000C($a0)
	b       .L8037AFA8
	nop
.globl L8037AD04
L8037AD04:
	li      $at, 0x3E800000
	mtc1    $at, $f6
	lwc1    $f8, 0x000C($sp)
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x0000($a0)
	lui     $at, %hi(math_8038BAB4)
	lwc1    $f4, %lo(math_8038BAB4)($at)
	lwc1    $f18, 0x0004($sp)
	li      $at, 0x3FA00000
	mtc1    $at, $f6
	mul.s   $f16, $f18, $f4
	lwc1    $f8, 0x0008($sp)
	li      $at, 0x3E800000
	lwc1    $f4, 0x001C($sp)
	mul.s   $f10, $f8, $f6
	mtc1    $at, $f8
	lui     $at, %hi(math_8038BAB8)
	mul.s   $f6, $f4, $f8
	sub.s   $f18, $f16, $f10
	lwc1    $f10, %lo(math_8038BAB8)($at)
	add.s   $f16, $f18, $f6
	add.s   $f4, $f16, $f10
	swc1    $f4, 0x0004($a0)
	lwc1    $f8, 0x0004($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	neg.s   $f18, $f8
	mtc1    $at, $f4
	mul.s   $f16, $f18, $f6
	lwc1    $f10, 0x0008($sp)
	lwc1    $f6, 0x001C($sp)
	mul.s   $f8, $f10, $f4
	mtc1    $at, $f10
	lui     $at, %hi(math_8038BABC)
	mul.s   $f4, $f6, $f10
	add.s   $f18, $f16, $f8
	lwc1    $f8, %lo(math_8038BABC)($at)
	add.s   $f16, $f18, $f4
	add.s   $f6, $f16, $f8
	swc1    $f6, 0x0008($a0)
	lui     $at, %hi(math_8038BAC0)
	lwc1    $f18, %lo(math_8038BAC0)($at)
	lwc1    $f10, 0x0004($sp)
	mul.s   $f4, $f10, $f18
	swc1    $f4, 0x000C($a0)
	b       .L8037AFA8
	nop
.globl L8037ADC0
L8037ADC0:
	lui     $at, %hi(math_8038BAC4)
	lwc1    $f8, %lo(math_8038BAC4)($at)
	lwc1    $f16, 0x000C($sp)
	mul.s   $f6, $f16, $f8
	swc1    $f6, 0x0000($a0)
	li      $at, 0x3F000000
	mtc1    $at, $f18
	lwc1    $f10, 0x0004($sp)
	lwc1    $f16, 0x0008($sp)
	lui     $at, %hi(math_8038BAC8)
	mul.s   $f4, $f10, $f18
	lwc1    $f6, %lo(math_8038BAC8)($at)
	sub.s   $f8, $f4, $f16
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0004($a0)
	lwc1    $f18, 0x0004($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	neg.s   $f4, $f18
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f16
	lwc1    $f6, 0x0008($sp)
	lwc1    $f16, 0x001C($sp)
	mul.s   $f18, $f6, $f10
	mtc1    $at, $f6
	lui     $at, %hi(math_8038BACC)
	mul.s   $f10, $f16, $f6
	add.s   $f4, $f8, $f18
	lwc1    $f18, %lo(math_8038BACC)($at)
	add.s   $f8, $f4, $f10
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x0008($a0)
	lui     $at, %hi(math_8038BAD0)
	lwc1    $f4, %lo(math_8038BAD0)($at)
	lwc1    $f6, 0x0004($sp)
	mul.s   $f10, $f6, $f4
	swc1    $f10, 0x000C($a0)
	b       .L8037AFA8
	nop
.globl L8037AE5C
L8037AE5C:
	lui     $at, %hi(math_8038BAD4)
	lwc1    $f18, %lo(math_8038BAD4)($at)
	lwc1    $f8, 0x000C($sp)
	mul.s   $f16, $f8, $f18
	swc1    $f16, 0x0000($a0)
	lwc1    $f6, 0x000C($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f10
	neg.s   $f4, $f6
	mtc1    $at, $f16
	mul.s   $f8, $f4, $f10
	lwc1    $f18, 0x0010($sp)
	lwc1    $f10, 0x0014($sp)
	mul.s   $f6, $f18, $f16
	mtc1    $at, $f18
	lui     $at, %hi(math_8038BAD8)
	mul.s   $f16, $f10, $f18
	add.s   $f4, $f8, $f6
	lwc1    $f6, %lo(math_8038BAD8)($at)
	add.s   $f8, $f4, $f16
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0004($a0)
	lui     $at, %hi(math_8038BADC)
	lwc1    $f4, %lo(math_8038BADC)($at)
	lwc1    $f18, 0x000C($sp)
	li      $at, 0x3FA00000
	mtc1    $at, $f6
	mul.s   $f16, $f18, $f4
	lwc1    $f8, 0x0010($sp)
	li      $at, 0x3E800000
	lwc1    $f4, 0x0014($sp)
	mul.s   $f10, $f8, $f6
	mtc1    $at, $f8
	lui     $at, %hi(math_8038BAE0)
	mul.s   $f6, $f4, $f8
	sub.s   $f18, $f16, $f10
	lwc1    $f10, %lo(math_8038BAE0)($at)
	add.s   $f16, $f18, $f6
	add.s   $f4, $f16, $f10
	swc1    $f4, 0x0008($a0)
	li      $at, 0x3E800000
	mtc1    $at, $f18
	lwc1    $f8, 0x0004($sp)
	mul.s   $f6, $f8, $f18
	swc1    $f6, 0x000C($a0)
	b       .L8037AFA8
	nop
.globl L8037AF18
L8037AF18:
	lui     $at, %hi(math_8038BAE4)
	lwc1    $f10, %lo(math_8038BAE4)($at)
	lwc1    $f16, 0x000C($sp)
	mul.s   $f4, $f16, $f10
	swc1    $f4, 0x0000($a0)
	lwc1    $f8, 0x000C($sp)
	lui     $at, %hi(math_8038BAE8)
	lwc1    $f6, %lo(math_8038BAE8)($at)
	neg.s   $f18, $f8
	li      $at, 0x3FC00000
	mul.s   $f16, $f18, $f6
	mtc1    $at, $f4
	lwc1    $f10, 0x0010($sp)
	mul.s   $f8, $f10, $f4
	add.s   $f18, $f16, $f8
	swc1    $f18, 0x0004($a0)
	li      $at, 0x3FE00000
	mtc1    $at, $f10
	lwc1    $f6, 0x000C($sp)
	li      $at, 0x40900000
	mtc1    $at, $f8
	mul.s   $f4, $f6, $f10
	lwc1    $f16, 0x0010($sp)
	li      $at, 0x40400000
	lwc1    $f10, 0x0014($sp)
	mul.s   $f18, $f16, $f8
	mtc1    $at, $f16
	nop
	mul.s   $f8, $f10, $f16
	sub.s   $f6, $f4, $f18
	add.s   $f4, $f6, $f8
	swc1    $f4, 0x0008($a0)
	lwc1    $f18, 0x0004($sp)
	swc1    $f18, 0x000C($a0)
	b       .L8037AFA8
	nop
.L8037AFA8:
	b       .L8037AFB0
	nop
.L8037AFB0:
	jr      $ra
	addiu   $sp, $sp, 0x0018

/* void bspline_init(BSPLINE *b) */
.globl bspline_init
bspline_init:
	lui     $at, %hi(bspline)
	sw      $a0, %lo(bspline)($at)
	mtc1    $0, $f4
	lui     $at, %hi(bspline_phase)
	swc1    $f4, %lo(bspline_phase)($at)
	li      $t6, 0x0001
	lui     $at, %hi(bspline_mode)
	sw      $t6, %lo(bspline_mode)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* int bspline_update(VECF dst) */
.globl bspline_update
bspline_update:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0028($sp)
	la.u    $a1, vecf_0
	la.l    $a1, vecf_0
	jal     vecf_cpy
	lw      $a0, 0x0040($sp)
	lui     $a1, %hi(bspline_phase)
	lui     $a2, %hi(bspline_mode)
	lw      $a2, %lo(bspline_mode)($a2)
	lw      $a1, %lo(bspline_phase)($a1)
	jal     bspline_curve
	addiu   $a0, $sp, 0x0030
	sw      $0, 0x002C($sp)
.L8037B028:
	lw      $t7, 0x002C($sp)
	lui     $t6, %hi(bspline)
	lw      $t6, %lo(bspline)($t6)
	sll     $t8, $t7, 3
	sll     $t1, $t7, 2
	addu    $t9, $t6, $t8
	lh      $t0, 0x0002($t9)
	addu    $t2, $sp, $t1
	lwc1    $f8, 0x0030($t2)
	mtc1    $t0, $f4
	lw      $t3, 0x0040($sp)
	cvt.s.w $f6, $f4
	lwc1    $f16, 0x0000($t3)
	mul.s   $f10, $f8, $f6
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0000($t3)
	lw      $t5, 0x002C($sp)
	lui     $t4, %hi(bspline)
	lw      $t4, %lo(bspline)($t4)
	sll     $t6, $t5, 3
	sll     $t0, $t5, 2
	addu    $t8, $t4, $t6
	lh      $t9, 0x0004($t8)
	addu    $t7, $sp, $t0
	lwc1    $f6, 0x0030($t7)
	mtc1    $t9, $f4
	lw      $t1, 0x0040($sp)
	cvt.s.w $f8, $f4
	lwc1    $f10, 0x0004($t1)
	mul.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t1)
	lw      $t3, 0x002C($sp)
	lui     $t2, %hi(bspline)
	lw      $t2, %lo(bspline)($t2)
	sll     $t4, $t3, 3
	sll     $t9, $t3, 2
	addu    $t6, $t2, $t4
	lh      $t8, 0x0006($t6)
	addu    $t5, $sp, $t9
	lwc1    $f8, 0x0030($t5)
	mtc1    $t8, $f4
	lw      $t0, 0x0040($sp)
	cvt.s.w $f6, $f4
	lwc1    $f16, 0x0008($t0)
	mul.s   $f10, $f8, $f6
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0008($t0)
	lw      $t7, 0x002C($sp)
	addiu   $t1, $t7, 0x0001
	slti    $at, $t1, 0x0004
	bnez    $at, .L8037B028
	sw      $t1, 0x002C($sp)
	lui     $t2, %hi(bspline)
	lw      $t2, %lo(bspline)($t2)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lh      $t4, 0x0000($t2)
	lui     $at, %hi(bspline_phase)
	lwc1    $f10, %lo(bspline_phase)($at)
	mtc1    $t4, $f4
	nop
	cvt.s.w $f8, $f4
	div.s   $f16, $f8, $f6
	add.s   $f18, $f10, $f16
	swc1    $f18, %lo(bspline_phase)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	c.le.s  $f4, $f18
	nop
	bc1f    .L8037B1F8
	nop
	lui     $t6, %hi(bspline)
	lw      $t6, %lo(bspline)($t6)
	lui     $at, %hi(bspline)
	addiu   $t8, $t6, 0x0008
	sw      $t8, %lo(bspline)($at)
	lui     $at, %hi(bspline_phase)
	lwc1    $f8, %lo(bspline_phase)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lui     $at, %hi(bspline_phase)
	sub.s   $f10, $f8, $f6
	swc1    $f10, %lo(bspline_phase)($at)
	lui     $s0, %hi(bspline_mode)
	lw      $s0, %lo(bspline_mode)($s0)
	li      $at, 0x0003
	beq     $s0, $at, .L8037B1B4
	nop
	li      $at, 0x0005
	beq     $s0, $at, .L8037B1A4
	nop
	b       .L8037B1DC
	nop
.L8037B1A4:
	li      $t3, 0x0001
	sw      $t3, 0x0028($sp)
	b       .L8037B1F8
	nop
.L8037B1B4:
	lui     $t9, %hi(bspline)
	lw      $t9, %lo(bspline)($t9)
	lh      $t5, 0x0010($t9)
	bnez    $t5, .L8037B1D4
	nop
	li      $t0, 0x0004
	lui     $at, %hi(bspline_mode)
	sw      $t0, %lo(bspline_mode)($at)
.L8037B1D4:
	b       .L8037B1F8
	nop
.L8037B1DC:
	lui     $t7, %hi(bspline_mode)
	lw      $t7, %lo(bspline_mode)($t7)
	lui     $at, %hi(bspline_mode)
	addiu   $t1, $t7, 0x0001
	sw      $t1, %lo(bspline_mode)($at)
	b       .L8037B1F8
	nop
.L8037B1F8:
	b       .L8037B208
	lw      $v0, 0x0028($sp)
	b       .L8037B208
	nop
.L8037B208:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

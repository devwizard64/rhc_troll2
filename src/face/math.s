.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_math_80193C70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lwc1    $f4, 0x0018($sp)
	jal     face_gfx_8019B49C
	cvt.d.s $f12, $f4
	b       .L80193C98
	cvt.s.d $f0, $f0
	b       .L80193C98
	nop
.L80193C98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_math_80193CA8
face_math_80193CA8:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0068($sp)
	sw      $a1, 0x006C($sp)
	sw      $a2, 0x0070($sp)
	sw      $a3, 0x0074($sp)
	swc1    $f25, 0x0020($sp)
	swc1    $f24, 0x0024($sp)
	swc1    $f23, 0x0018($sp)
	swc1    $f22, 0x001C($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lw      $a0, 0x0068($sp)
	jal     face_math_801963C0
	nop
	lwc1    $f4, 0x0078($sp)
	lwc1    $f6, 0x006C($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0060($sp)
	lwc1    $f10, 0x007C($sp)
	lwc1    $f16, 0x0070($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x005C($sp)
	lwc1    $f4, 0x0080($sp)
	lwc1    $f6, 0x0074($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0058($sp)
	lwc1    $f10, 0x005C($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80193D44
	nop
	b       .L80193D4C
	neg.s   $f24, $f10
.L80193D44:
	lwc1    $f24, 0x005C($sp)
	nop
.L80193D4C:
	lwc1    $f18, 0x0060($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80193D70
	nop
	b       .L80193D78
	neg.s   $f22, $f18
.L80193D70:
	lwc1    $f22, 0x0060($sp)
	nop
.L80193D78:
	lwc1    $f6, 0x0058($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80193D9C
	nop
	b       .L80193DA4
	neg.s   $f20, $f6
.L80193D9C:
	lwc1    $f20, 0x0058($sp)
	nop
.L80193DA4:
	add.s   $f16, $f22, $f24
	add.s   $f10, $f20, $f16
	swc1    $f10, 0x0064($sp)
	lui     $at, %hi(face_math_801B8A2C)
	lwc1    $f18, %lo(face_math_801B8A2C)($at)
	lwc1    $f4, 0x0064($sp)
	nop
	c.lt.s  $f18, $f4
	nop
	bc1t    .L80193DEC
	nop
	li      $at, 0x41200000
	mtc1    $at, $f8
	nop
	c.lt.s  $f4, $f8
	nop
	bc1f    .L80193E84
	nop
.L80193DEC:
	lwc1    $f6, 0x0060($sp)
	nop
	swc1    $f6, 0x0040($sp)
	lwc1    $f16, 0x005C($sp)
	nop
	swc1    $f16, 0x0044($sp)
	lwc1    $f10, 0x0058($sp)
	nop
	swc1    $f10, 0x0048($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x0040
	lui     $at, %hi(face_math_801B8A30)
	lwc1    $f4, %lo(face_math_801B8A30)($at)
	lwc1    $f18, 0x0040($sp)
	nop
	mul.s   $f8, $f18, $f4
	swc1    $f8, 0x0040($sp)
	lui     $at, %hi(face_math_801B8A34)
	lwc1    $f16, %lo(face_math_801B8A34)($at)
	lwc1    $f6, 0x0044($sp)
	nop
	mul.s   $f10, $f6, $f16
	swc1    $f10, 0x0044($sp)
	lui     $at, %hi(face_math_801B8A38)
	lwc1    $f4, %lo(face_math_801B8A38)($at)
	lwc1    $f18, 0x0048($sp)
	nop
	mul.s   $f8, $f18, $f4
	swc1    $f8, 0x0048($sp)
	lwc1    $f6, 0x0040($sp)
	nop
	swc1    $f6, 0x0060($sp)
	lwc1    $f16, 0x0044($sp)
	nop
	swc1    $f16, 0x005C($sp)
	lwc1    $f10, 0x0048($sp)
	nop
	swc1    $f10, 0x0058($sp)
.L80193E84:
	lwc1    $f18, 0x0060($sp)
	lwc1    $f8, 0x005C($sp)
	mul.s   $f4, $f18, $f18
	lwc1    $f10, 0x0058($sp)
	mul.s   $f6, $f8, $f8
	nop
	mul.s   $f18, $f10, $f10
	add.s   $f16, $f4, $f6
	jal     face_math_80193C70
	add.s   $f12, $f16, $f18
	li      $at, 0xBFF00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f4, $f0
	nop
	div.d   $f6, $f8, $f4
	cvt.s.d $f10, $f6
	swc1    $f10, 0x0064($sp)
	lwc1    $f16, 0x0060($sp)
	lwc1    $f18, 0x0064($sp)
	nop
	mul.s   $f8, $f16, $f18
	swc1    $f8, 0x0060($sp)
	lwc1    $f4, 0x005C($sp)
	lwc1    $f6, 0x0064($sp)
	nop
	mul.s   $f10, $f4, $f6
	swc1    $f10, 0x005C($sp)
	lwc1    $f16, 0x0058($sp)
	lwc1    $f18, 0x0064($sp)
	nop
	mul.s   $f8, $f16, $f18
	swc1    $f8, 0x0058($sp)
	lwc1    $f4, 0x0088($sp)
	lwc1    $f6, 0x0058($sp)
	lwc1    $f16, 0x008C($sp)
	mul.s   $f10, $f4, $f6
	lwc1    $f18, 0x005C($sp)
	nop
	mul.s   $f8, $f16, $f18
	sub.s   $f4, $f10, $f8
	swc1    $f4, 0x0054($sp)
	lwc1    $f6, 0x008C($sp)
	lwc1    $f16, 0x0060($sp)
	lwc1    $f10, 0x0084($sp)
	mul.s   $f18, $f6, $f16
	lwc1    $f8, 0x0058($sp)
	nop
	mul.s   $f4, $f10, $f8
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0050($sp)
	lwc1    $f16, 0x0084($sp)
	lwc1    $f10, 0x005C($sp)
	lwc1    $f18, 0x0088($sp)
	mul.s   $f8, $f16, $f10
	lwc1    $f4, 0x0060($sp)
	nop
	mul.s   $f6, $f18, $f4
	sub.s   $f16, $f8, $f6
	swc1    $f16, 0x004C($sp)
	lwc1    $f10, 0x0054($sp)
	lwc1    $f4, 0x0050($sp)
	mul.s   $f18, $f10, $f10
	lwc1    $f16, 0x004C($sp)
	mul.s   $f8, $f4, $f4
	nop
	mul.s   $f10, $f16, $f16
	add.s   $f6, $f18, $f8
	jal     face_math_80193C70
	add.s   $f12, $f6, $f10
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f0
	nop
	div.d   $f8, $f4, $f18
	cvt.s.d $f16, $f8
	swc1    $f16, 0x0064($sp)
	lwc1    $f6, 0x0054($sp)
	lwc1    $f10, 0x0064($sp)
	nop
	mul.s   $f4, $f6, $f10
	swc1    $f4, 0x0054($sp)
	lwc1    $f18, 0x0050($sp)
	lwc1    $f8, 0x0064($sp)
	nop
	mul.s   $f16, $f18, $f8
	swc1    $f16, 0x0050($sp)
	lwc1    $f6, 0x004C($sp)
	lwc1    $f10, 0x0064($sp)
	nop
	mul.s   $f4, $f6, $f10
	swc1    $f4, 0x004C($sp)
	lwc1    $f18, 0x005C($sp)
	lwc1    $f8, 0x004C($sp)
	lwc1    $f6, 0x0058($sp)
	mul.s   $f16, $f18, $f8
	lwc1    $f10, 0x0050($sp)
	nop
	mul.s   $f4, $f6, $f10
	sub.s   $f18, $f16, $f4
	swc1    $f18, 0x0084($sp)
	lwc1    $f8, 0x0058($sp)
	lwc1    $f6, 0x0054($sp)
	lwc1    $f16, 0x0060($sp)
	mul.s   $f10, $f8, $f6
	lwc1    $f4, 0x004C($sp)
	nop
	mul.s   $f18, $f16, $f4
	sub.s   $f8, $f10, $f18
	swc1    $f8, 0x0088($sp)
	lwc1    $f6, 0x0060($sp)
	lwc1    $f16, 0x0050($sp)
	lwc1    $f10, 0x005C($sp)
	mul.s   $f4, $f6, $f16
	lwc1    $f18, 0x0054($sp)
	nop
	mul.s   $f8, $f10, $f18
	sub.s   $f6, $f4, $f8
	swc1    $f6, 0x008C($sp)
	lwc1    $f16, 0x0084($sp)
	lwc1    $f18, 0x0088($sp)
	mul.s   $f10, $f16, $f16
	lwc1    $f6, 0x008C($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f16, $f6, $f6
	add.s   $f8, $f10, $f4
	jal     face_math_80193C70
	add.s   $f12, $f8, $f16
	li      $at, 0x3FF00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f10, $f0
	nop
	div.d   $f4, $f18, $f10
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0064($sp)
	lwc1    $f8, 0x0084($sp)
	lwc1    $f16, 0x0064($sp)
	nop
	mul.s   $f18, $f8, $f16
	swc1    $f18, 0x0084($sp)
	lwc1    $f10, 0x0088($sp)
	lwc1    $f4, 0x0064($sp)
	nop
	mul.s   $f6, $f10, $f4
	swc1    $f6, 0x0088($sp)
	lwc1    $f8, 0x008C($sp)
	lwc1    $f16, 0x0064($sp)
	nop
	mul.s   $f18, $f8, $f16
	swc1    $f18, 0x008C($sp)
	lwc1    $f10, 0x0054($sp)
	lw      $t6, 0x0068($sp)
	nop
	swc1    $f10, 0x0000($t6)
	lwc1    $f4, 0x0050($sp)
	lw      $t7, 0x0068($sp)
	nop
	swc1    $f4, 0x0010($t7)
	lwc1    $f6, 0x004C($sp)
	lw      $t8, 0x0068($sp)
	nop
	swc1    $f6, 0x0020($t8)
	lwc1    $f8, 0x006C($sp)
	lwc1    $f16, 0x0054($sp)
	lwc1    $f10, 0x0070($sp)
	mul.s   $f18, $f8, $f16
	lwc1    $f4, 0x0050($sp)
	lwc1    $f16, 0x0074($sp)
	lw      $t9, 0x0068($sp)
	mul.s   $f6, $f10, $f4
	lwc1    $f10, 0x004C($sp)
	nop
	mul.s   $f4, $f16, $f10
	add.s   $f8, $f18, $f6
	add.s   $f18, $f8, $f4
	neg.s   $f6, $f18
	swc1    $f6, 0x0030($t9)
	lwc1    $f16, 0x0084($sp)
	lw      $t0, 0x0068($sp)
	nop
	swc1    $f16, 0x0004($t0)
	lwc1    $f10, 0x0088($sp)
	lw      $t1, 0x0068($sp)
	nop
	swc1    $f10, 0x0014($t1)
	lwc1    $f8, 0x008C($sp)
	lw      $t2, 0x0068($sp)
	nop
	swc1    $f8, 0x0024($t2)
	lwc1    $f4, 0x006C($sp)
	lwc1    $f18, 0x0084($sp)
	lwc1    $f16, 0x0070($sp)
	mul.s   $f6, $f4, $f18
	lwc1    $f10, 0x0088($sp)
	lwc1    $f18, 0x0074($sp)
	lw      $t3, 0x0068($sp)
	mul.s   $f8, $f16, $f10
	lwc1    $f16, 0x008C($sp)
	nop
	mul.s   $f10, $f18, $f16
	add.s   $f4, $f6, $f8
	add.s   $f6, $f4, $f10
	neg.s   $f8, $f6
	swc1    $f8, 0x0034($t3)
	lwc1    $f18, 0x0060($sp)
	lw      $t4, 0x0068($sp)
	nop
	swc1    $f18, 0x0008($t4)
	lwc1    $f16, 0x005C($sp)
	lw      $t5, 0x0068($sp)
	nop
	swc1    $f16, 0x0018($t5)
	lwc1    $f4, 0x0058($sp)
	lw      $t6, 0x0068($sp)
	nop
	swc1    $f4, 0x0028($t6)
	lwc1    $f10, 0x006C($sp)
	lwc1    $f6, 0x0060($sp)
	lwc1    $f18, 0x0070($sp)
	mul.s   $f8, $f10, $f6
	lwc1    $f16, 0x005C($sp)
	lwc1    $f6, 0x0074($sp)
	lw      $t7, 0x0068($sp)
	mul.s   $f4, $f18, $f16
	lwc1    $f18, 0x0058($sp)
	nop
	mul.s   $f16, $f6, $f18
	add.s   $f10, $f8, $f4
	add.s   $f8, $f10, $f16
	neg.s   $f4, $f8
	swc1    $f4, 0x0038($t7)
	mtc1    $0, $f6
	lw      $t8, 0x0068($sp)
	nop
	swc1    $f6, 0x000C($t8)
	mtc1    $0, $f18
	lw      $t9, 0x0068($sp)
	nop
	swc1    $f18, 0x001C($t9)
	mtc1    $0, $f10
	lw      $t0, 0x0068($sp)
	nop
	swc1    $f10, 0x002C($t0)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lw      $t1, 0x0068($sp)
	nop
	swc1    $f16, 0x003C($t1)
	b       .L80194278
	nop
.L80194278:
	lw      $ra, 0x002C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	lwc1    $f23, 0x0018($sp)
	lwc1    $f22, 0x001C($sp)
	lwc1    $f25, 0x0020($sp)
	lwc1    $f24, 0x0024($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0068

.globl face_math_8019429C
face_math_8019429C:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a1)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0004($a0)
	lwc1    $f16, 0x0000($a1)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($a0)
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x0000($a1)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($a0)
	lwc1    $f10, 0x0010($a0)
	lwc1    $f16, 0x0004($a1)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0010($a0)
	lwc1    $f4, 0x0014($a0)
	lwc1    $f6, 0x0004($a1)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0014($a0)
	lwc1    $f10, 0x0018($a0)
	lwc1    $f16, 0x0004($a1)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($a0)
	lwc1    $f4, 0x0020($a0)
	lwc1    $f6, 0x0008($a1)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($a0)
	lwc1    $f10, 0x0024($a0)
	lwc1    $f16, 0x0008($a1)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($a0)
	lwc1    $f4, 0x0028($a0)
	lwc1    $f6, 0x0008($a1)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_math_80194360
face_math_80194360:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0000($t6)
	nop
	c.eq.s  $f4, $f6
	nop
	bc1t    .L801943A4
	nop
	lw      $t7, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lw      $a2, 0x0000($t7)
	jal     absrot_matrix4
	move    $a1, $0
.L801943A4:
	lw      $t8, 0x001C($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0004($t8)
	nop
	c.eq.s  $f8, $f10
	nop
	bc1t    .L801943D8
	nop
	lw      $t9, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lw      $a2, 0x0004($t9)
	jal     absrot_matrix4
	li      $a1, 0x0001
.L801943D8:
	lw      $t0, 0x001C($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x0008($t0)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1t    .L8019440C
	nop
	lw      $t1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lw      $a2, 0x0008($t1)
	jal     absrot_matrix4
	li      $a1, 0x0002
.L8019440C:
	b       .L80194414
	nop
.L80194414:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_math_80194424
face_math_80194424:
	addiu   $sp, $sp, -0x0050
	lwc1    $f4, 0x0000($a1)
	nop
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0004($a1)
	nop
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x0008($a1)
	nop
	swc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x0030($a0)
	lwc1    $f16, 0x0004($sp)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($a0)
	lwc1    $f4, 0x0034($a0)
	lwc1    $f6, 0x0008($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($a0)
	lwc1    $f10, 0x0038($a0)
	lwc1    $f16, 0x000C($sp)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0038($a0)
	b       .L80194490
	nop
.L80194490:
	jr      $ra
	addiu   $sp, $sp, 0x0050

.globl face_math_80194498
face_math_80194498:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	lui     $at, %hi(face_math_801B8A3C)
	lwc1    $f4, %lo(face_math_801B8A3C)($at)
	nop
	swc1    $f4, 0x0024($sp)
	lw      $t6, 0x003C($sp)
	nop
	lwc1    $f6, 0x0000($t6)
	nop
	swc1    $f6, 0x0018($sp)
	lw      $t7, 0x003C($sp)
	nop
	lwc1    $f8, 0x0004($t7)
	nop
	swc1    $f8, 0x001C($sp)
	lw      $t8, 0x003C($sp)
	nop
	lwc1    $f10, 0x0008($t8)
	nop
	swc1    $f10, 0x0020($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x0018
	lwc1    $f16, 0x0018($sp)
	lwc1    $f4, 0x0020($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f6, $f4, $f4
	jal     face_math_80193C70
	add.s   $f12, $f18, $f6
	swc1    $f0, 0x0030($sp)
	lwc1    $f8, 0x0040($sp)
	lwc1    $f10, 0x0024($sp)
	nop
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0040($sp)
	lwc1    $f4, 0x0040($sp)
	jal     face_gfx_8019B41C
	cvt.d.s $f12, $f4
	cvt.s.d $f18, $f0
	swc1    $f18, 0x0028($sp)
	lwc1    $f6, 0x0040($sp)
	jal     face_gfx_8019B45C
	cvt.d.s $f12, $f6
	cvt.s.d $f8, $f0
	swc1    $f8, 0x002C($sp)
	lw      $a0, 0x0038($sp)
	jal     face_math_801963C0
	nop
	lwc1    $f10, 0x0030($sp)
	mtc1    $0, $f16
	nop
	c.eq.s  $f10, $f16
	nop
	bc1t    .L80194740
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f18, 0x0030($sp)
	nop
	div.s   $f6, $f4, $f18
	swc1    $f6, 0x0034($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f16, 0x002C($sp)
	neg.s   $f10, $f8
	mul.s   $f4, $f10, $f16
	lwc1    $f18, 0x0028($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f10, 0x0018($sp)
	mul.s   $f8, $f18, $f6
	lwc1    $f6, 0x0034($sp)
	lw      $t9, 0x0038($sp)
	mul.s   $f16, $f8, $f10
	sub.s   $f18, $f4, $f16
	mul.s   $f8, $f18, $f6
	swc1    $f8, 0x0000($t9)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f16, $f10, $f4
	lwc1    $f6, 0x001C($sp)
	lwc1    $f10, 0x0018($sp)
	lw      $t0, 0x0038($sp)
	mul.s   $f8, $f18, $f6
	lwc1    $f6, 0x0034($sp)
	mul.s   $f4, $f8, $f10
	sub.s   $f18, $f16, $f4
	mul.s   $f8, $f18, $f6
	swc1    $f8, 0x0010($t0)
	lwc1    $f10, 0x0018($sp)
	lw      $t1, 0x0038($sp)
	neg.s   $f16, $f10
	swc1    $f16, 0x0020($t1)
	mtc1    $0, $f4
	lw      $t2, 0x0038($sp)
	nop
	swc1    $f4, 0x0030($t2)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f6, 0x0030($sp)
	lw      $t3, 0x0038($sp)
	mul.s   $f8, $f18, $f6
	swc1    $f8, 0x0004($t3)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f16, 0x0030($sp)
	lw      $t4, 0x0038($sp)
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x0014($t4)
	lwc1    $f18, 0x001C($sp)
	lw      $t5, 0x0038($sp)
	neg.s   $f6, $f18
	swc1    $f6, 0x0024($t5)
	mtc1    $0, $f8
	lw      $t6, 0x0038($sp)
	nop
	swc1    $f8, 0x0034($t6)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f16, 0x0018($sp)
	lwc1    $f18, 0x0028($sp)
	mul.s   $f4, $f10, $f16
	lwc1    $f6, 0x001C($sp)
	lwc1    $f10, 0x0020($sp)
	lw      $t7, 0x0038($sp)
	mul.s   $f8, $f18, $f6
	lwc1    $f6, 0x0034($sp)
	mul.s   $f16, $f8, $f10
	sub.s   $f18, $f4, $f16
	mul.s   $f8, $f18, $f6
	swc1    $f8, 0x0008($t7)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f16, 0x0018($sp)
	neg.s   $f4, $f10
	mul.s   $f18, $f4, $f16
	lwc1    $f6, 0x002C($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	mul.s   $f10, $f6, $f8
	lwc1    $f8, 0x0034($sp)
	lw      $t8, 0x0038($sp)
	mul.s   $f16, $f10, $f4
	sub.s   $f6, $f18, $f16
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0018($t8)
	lwc1    $f4, 0x0020($sp)
	lw      $t9, 0x0038($sp)
	neg.s   $f18, $f4
	swc1    $f18, 0x0028($t9)
	mtc1    $0, $f16
	lw      $t0, 0x0038($sp)
	nop
	swc1    $f16, 0x0038($t0)
	mtc1    $0, $f6
	lw      $t1, 0x0038($sp)
	nop
	swc1    $f6, 0x000C($t1)
	mtc1    $0, $f8
	lw      $t2, 0x0038($sp)
	nop
	swc1    $f8, 0x001C($t2)
	mtc1    $0, $f10
	lw      $t3, 0x0038($sp)
	nop
	swc1    $f10, 0x002C($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t4, 0x0038($sp)
	b       .L80194850
	swc1    $f4, 0x003C($t4)
.L80194740:
	mtc1    $0, $f18
	lw      $t5, 0x0038($sp)
	nop
	swc1    $f18, 0x0000($t5)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lw      $t6, 0x0038($sp)
	nop
	swc1    $f16, 0x0010($t6)
	mtc1    $0, $f6
	lw      $t7, 0x0038($sp)
	nop
	swc1    $f6, 0x0020($t7)
	mtc1    $0, $f8
	lw      $t8, 0x0038($sp)
	nop
	swc1    $f8, 0x0030($t8)
	mtc1    $0, $f10
	lw      $t9, 0x0038($sp)
	nop
	swc1    $f10, 0x0004($t9)
	mtc1    $0, $f4
	lw      $t0, 0x0038($sp)
	nop
	swc1    $f4, 0x0014($t0)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t1, 0x0038($sp)
	nop
	swc1    $f18, 0x0024($t1)
	mtc1    $0, $f16
	lw      $t2, 0x0038($sp)
	nop
	swc1    $f16, 0x0034($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t3, 0x0038($sp)
	nop
	swc1    $f6, 0x0008($t3)
	mtc1    $0, $f8
	lw      $t4, 0x0038($sp)
	nop
	swc1    $f8, 0x0018($t4)
	mtc1    $0, $f10
	lw      $t5, 0x0038($sp)
	nop
	swc1    $f10, 0x0028($t5)
	mtc1    $0, $f4
	lw      $t6, 0x0038($sp)
	nop
	swc1    $f4, 0x0038($t6)
	mtc1    $0, $f18
	lw      $t7, 0x0038($sp)
	nop
	swc1    $f18, 0x000C($t7)
	mtc1    $0, $f16
	lw      $t8, 0x0038($sp)
	nop
	swc1    $f16, 0x001C($t8)
	mtc1    $0, $f6
	lw      $t9, 0x0038($sp)
	nop
	swc1    $f6, 0x002C($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t0, 0x0038($sp)
	nop
	swc1    $f8, 0x003C($t0)
.L80194850:
	b       .L80194858
	nop
.L80194858:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl face_math_80194868
face_math_80194868:
	c.lt.s  $f14, $f12
	nop
	bc1f    .L80194880
	nop
	b       .L80194898
	mov.s   $f12, $f14
.L80194880:
	neg.s   $f4, $f14
	c.lt.s  $f12, $f4
	nop
	bc1f    .L80194898
	nop
	neg.s   $f12, $f14
.L80194898:
	jr      $ra
	mov.s   $f0, $f12
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_math_801948B0
face_math_801948B0:
	sw      $a1, 0x0004($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0004($sp)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L801948DC
	nop
	lwc1    $f8, 0x0004($sp)
	b       .L80194908
	swc1    $f8, 0x0000($a0)
.L801948DC:
	lwc1    $f16, 0x0004($sp)
	lwc1    $f10, 0x0000($a0)
	neg.s   $f18, $f16
	c.lt.s  $f10, $f18
	nop
	bc1f    .L80194908
	nop
	lwc1    $f4, 0x0004($sp)
	nop
	neg.s   $f6, $f4
	swc1    $f6, 0x0000($a0)
.L80194908:
	lwc1    $f8, 0x0004($a0)
	lwc1    $f16, 0x0004($sp)
	nop
	c.lt.s  $f16, $f8
	nop
	bc1f    .L80194930
	nop
	lwc1    $f10, 0x0004($sp)
	b       .L8019495C
	swc1    $f10, 0x0004($a0)
.L80194930:
	lwc1    $f4, 0x0004($sp)
	lwc1    $f18, 0x0004($a0)
	neg.s   $f6, $f4
	c.lt.s  $f18, $f6
	nop
	bc1f    .L8019495C
	nop
	lwc1    $f8, 0x0004($sp)
	nop
	neg.s   $f16, $f8
	swc1    $f16, 0x0004($a0)
.L8019495C:
	lwc1    $f10, 0x0008($a0)
	lwc1    $f4, 0x0004($sp)
	nop
	c.lt.s  $f4, $f10
	nop
	bc1f    .L80194984
	nop
	lwc1    $f18, 0x0004($sp)
	b       .L801949B0
	swc1    $f18, 0x0008($a0)
.L80194984:
	lwc1    $f8, 0x0004($sp)
	lwc1    $f6, 0x0008($a0)
	neg.s   $f16, $f8
	c.lt.s  $f6, $f16
	nop
	bc1f    .L801949B0
	nop
	lwc1    $f10, 0x0004($sp)
	nop
	neg.s   $f4, $f10
	swc1    $f4, 0x0008($a0)
.L801949B0:
	b       .L801949B8
	nop
.L801949B8:
	jr      $ra
	nop

.globl face_math_801949C0
face_math_801949C0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lui     $at, %hi(face_math_801B8A40+4)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f9, %lo(face_math_801B8A40+0)($at)
	lwc1    $f8, %lo(face_math_801B8A40+4)($at)
	cvt.d.s $f6, $f4
	nop
	div.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x002C($sp)
	jal     face_gfx_8019B45C
	cvt.d.s $f12, $f18
	lwc1    $f4, 0x002C($sp)
	mov.d   $f20, $f0
	jal     face_gfx_8019B41C
	cvt.d.s $f12, $f4
	lw      $t6, 0x003C($sp)
	lw      $t7, 0x0040($sp)
	lwc1    $f6, 0x0000($t6)
	lwc1    $f16, 0x0000($t7)
	cvt.d.s $f8, $f6
	mul.d   $f10, $f8, $f20
	cvt.d.s $f18, $f16
	mul.d   $f4, $f0, $f18
	sub.d   $f6, $f10, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0034($sp)
	lwc1    $f16, 0x002C($sp)
	jal     face_gfx_8019B41C
	cvt.d.s $f12, $f16
	lwc1    $f18, 0x002C($sp)
	mov.d   $f20, $f0
	jal     face_gfx_8019B45C
	cvt.d.s $f12, $f18
	lw      $t8, 0x0040($sp)
	lw      $t9, 0x003C($sp)
	lwc1    $f10, 0x0000($t8)
	lwc1    $f8, 0x0000($t9)
	cvt.d.s $f4, $f10
	mul.d   $f6, $f0, $f4
	cvt.d.s $f16, $f8
	mul.d   $f18, $f16, $f20
	add.d   $f10, $f6, $f18
	cvt.s.d $f4, $f10
	swc1    $f4, 0x0030($sp)
	lwc1    $f8, 0x0034($sp)
	lw      $t0, 0x003C($sp)
	nop
	swc1    $f8, 0x0000($t0)
	lwc1    $f16, 0x0030($sp)
	lw      $t1, 0x0040($sp)
	nop
	swc1    $f16, 0x0000($t1)
	b       .L80194AB8
	nop
.L80194AB8:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

face_math_80194ACC:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0068($sp)
	sw      $a1, 0x006C($sp)
	sw      $a2, 0x0070($sp)
	lw      $t7, 0x006C($sp)
	lw      $t6, 0x0068($sp)
	sll     $t8, $t7, 4
	addu    $t9, $t6, $t8
	lwc1    $f4, 0x0000($t9)
	nop
	swc1    $f4, 0x001C($sp)
	lw      $t1, 0x006C($sp)
	lw      $t0, 0x0068($sp)
	sll     $t2, $t1, 4
	addu    $t3, $t0, $t2
	lwc1    $f6, 0x0004($t3)
	nop
	swc1    $f6, 0x0020($sp)
	lw      $t5, 0x006C($sp)
	lw      $t4, 0x0068($sp)
	sll     $t7, $t5, 4
	addu    $t6, $t4, $t7
	lwc1    $f8, 0x0008($t6)
	nop
	swc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x0070($sp)
	li      $at, 0x40000000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	addiu   $a0, $sp, 0x0028
	addiu   $a1, $sp, 0x001C
	cvt.s.d $f6, $f4
	mfc1    $a2, $f6
	jal     face_math_80196334
	nop
	lw      $t8, 0x0068($sp)
	addiu   $a1, $sp, 0x0028
	move    $a0, $t8
	jal     face_math_80196754
	move    $a2, $t8
	b       .L80194B84
	nop
.L80194B84:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

.globl absrot_matrix4
absrot_matrix4:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0070($sp)
	sw      $a1, 0x0074($sp)
	sw      $a2, 0x0078($sp)
	sw      $s0, 0x0018($sp)
	lw      $s0, 0x0074($sp)
	nop
	beqz    $s0, .L80194BDC
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80194C0C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80194C3C
	nop
	b       .L80194C6C
	nop
.L80194BDC:
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0028($sp)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x002C($sp)
	b       .L80194C78
	nop
.L80194C0C:
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0024($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0028($sp)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x002C($sp)
	b       .L80194C78
	nop
.L80194C3C:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0024($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x002C($sp)
	b       .L80194C78
	nop
.L80194C6C:
	la.u    $a0, str_face_math_801B8970
	jal     face_stdio_8018D298
	la.l    $a0, str_face_math_801B8970
.L80194C78:
	lwc1    $f10, 0x0078($sp)
	li      $at, 0x40000000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	addiu   $a0, $sp, 0x0030
	addiu   $a1, $sp, 0x0024
	cvt.s.d $f6, $f4
	mfc1    $a2, $f6
	jal     face_math_80196334
	nop
	lw      $t6, 0x0070($sp)
	addiu   $a1, $sp, 0x0030
	move    $a0, $t6
	jal     face_math_80196754
	move    $a2, $t6
	b       .L80194CC8
	nop
.L80194CC8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0070

.globl face_math_80194CD8
face_math_80194CD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lwc1    $f4, 0x0000($t6)
	lwc1    $f8, 0x0004($t6)
	mul.s   $f6, $f4, $f4
	lwc1    $f18, 0x0008($t6)
	mul.s   $f10, $f8, $f8
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f16, $f6, $f10
	jal     face_math_80193C70
	add.s   $f12, $f16, $f4
	b       .L80194D24
	nop
	b       .L80194D24
	nop
.L80194D24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_math_80194D34
face_math_80194D34:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	lwc1    $f4, 0x0000($t6)
	lwc1    $f8, 0x0004($t6)
	mul.s   $f6, $f4, $f4
	lwc1    $f18, 0x0008($t6)
	mul.s   $f10, $f8, $f8
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f16, $f6, $f10
	mtc1    $0, $f6
	add.s   $f8, $f16, $f4
	c.eq.s  $f8, $f6
	swc1    $f8, 0x001C($sp)
	bc1f    .L80194D88
	nop
	b       .L80194E44
	move    $v0, $0
.L80194D88:
	lwc1    $f12, 0x001C($sp)
	jal     face_math_80193C70
	nop
	swc1    $f0, 0x001C($sp)
	lwc1    $f10, 0x001C($sp)
	mtc1    $0, $f18
	nop
	c.eq.s  $f10, $f18
	nop
	bc1f    .L80194DEC
	nop
	mtc1    $0, $f16
	lw      $t7, 0x0020($sp)
	nop
	swc1    $f16, 0x0000($t7)
	mtc1    $0, $f4
	lw      $t8, 0x0020($sp)
	nop
	swc1    $f4, 0x0004($t8)
	mtc1    $0, $f8
	lw      $t9, 0x0020($sp)
	nop
	swc1    $f8, 0x0008($t9)
	b       .L80194E44
	move    $v0, $0
.L80194DEC:
	lw      $t0, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f6, 0x0000($t0)
	nop
	div.s   $f18, $f6, $f10
	swc1    $f18, 0x0000($t0)
	lw      $t1, 0x0020($sp)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f16, 0x0004($t1)
	nop
	div.s   $f8, $f16, $f4
	swc1    $f8, 0x0004($t1)
	lw      $t2, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f6, 0x0008($t2)
	nop
	div.s   $f18, $f6, $f10
	swc1    $f18, 0x0008($t2)
	b       .L80194E44
	li      $v0, 0x0001
	b       .L80194E44
	nop
.L80194E44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_math_80194E54
face_math_80194E54:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x0004($a0)
	lwc1    $f6, 0x0008($a1)
	lwc1    $f10, 0x0008($a0)
	mul.s   $f8, $f4, $f6
	lwc1    $f16, 0x0004($a1)
	nop
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0008($a0)
	lwc1    $f10, 0x0000($a1)
	lwc1    $f8, 0x0000($a0)
	mul.s   $f16, $f6, $f10
	lwc1    $f18, 0x0008($a1)
	nop
	mul.s   $f4, $f8, $f18
	sub.s   $f6, $f16, $f4
	swc1    $f6, 0x0008($sp)
	lwc1    $f10, 0x0000($a0)
	lwc1    $f8, 0x0004($a1)
	lwc1    $f16, 0x0004($a0)
	mul.s   $f18, $f10, $f8
	lwc1    $f4, 0x0000($a1)
	nop
	mul.s   $f6, $f16, $f4
	sub.s   $f10, $f18, $f6
	swc1    $f10, 0x000C($sp)
	lwc1    $f8, 0x0004($sp)
	nop
	swc1    $f8, 0x0000($a2)
	lwc1    $f16, 0x0008($sp)
	nop
	swc1    $f16, 0x0004($a2)
	lwc1    $f4, 0x000C($sp)
	nop
	swc1    $f4, 0x0008($a2)
	b       .L80194EF0
	nop
.L80194EF0:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl face_math_80194EF8
face_math_80194EF8:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a1)
	lwc1    $f10, 0x0004($a0)
	mul.s   $f8, $f4, $f6
	lwc1    $f16, 0x0004($a1)
	lwc1    $f6, 0x0008($a0)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0008($a1)
	nop
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	jr      $ra
	add.s   $f0, $f4, $f16
	jr      $ra
	nop
	jr      $ra
	nop

face_math_80194F3C:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
.L80194F44:
	sw      $0, 0x0000($sp)
.L80194F48:
	lw      $t6, 0x0004($sp)
	lw      $t9, 0x0000($sp)
	sll     $t7, $t6, 4
	addu    $t8, $a0, $t7
	sll     $t0, $t9, 2
	addu    $t1, $t8, $t0
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0000($t1)
	addu    $t2, $a1, $t7
	div.s   $f8, $f6, $f4
	addu    $t3, $t2, $t0
	swc1    $f8, 0x0000($t3)
	lw      $t4, 0x0000($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0004
	bnez    $at, .L80194F48
	sw      $t5, 0x0000($sp)
	lw      $t6, 0x0004($sp)
	nop
	addiu   $t9, $t6, 0x0001
	slti    $at, $t9, 0x0004
	bnez    $at, .L80194F44
	sw      $t9, 0x0004($sp)
	b       .L80194FB4
	nop
.L80194FB4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_math_80194FBC
face_math_80194FBC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	jal     face_math_801950D0
	nop
	lw      $a0, 0x0034($sp)
	jal     face_math_801956B8
	nop
	swc1    $f0, 0x0024($sp)
	lwc1    $f4, 0x0024($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80195018
	nop
	b       .L80195020
	neg.s   $f20, $f4
.L80195018:
	lwc1    $f20, 0x0024($sp)
	nop
.L80195020:
	lui     $at, %hi(face_math_801B8A48+4)
	lwc1    $f11, %lo(face_math_801B8A48+0)($at)
	lwc1    $f10, %lo(face_math_801B8A48+4)($at)
	cvt.d.s $f8, $f20
	c.lt.d  $f8, $f10
	nop
	bc1f    .L8019504C
	nop
	la.u    $a0, str_face_math_801B8990
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_math_801B8990
.L8019504C:
	sw      $0, 0x002C($sp)
.L80195050:
	sw      $0, 0x0028($sp)
.L80195054:
	lw      $t7, 0x002C($sp)
	lw      $t6, 0x0034($sp)
	lw      $t0, 0x0028($sp)
	sll     $t8, $t7, 4
	addu    $t9, $t6, $t8
	sll     $t1, $t0, 2
	addu    $t2, $t9, $t1
	lwc1    $f16, 0x0000($t2)
	lwc1    $f18, 0x0024($sp)
	nop
	div.s   $f6, $f16, $f18
	swc1    $f6, 0x0000($t2)
	lw      $t3, 0x0028($sp)
	nop
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0004
	bnez    $at, .L80195054
	sw      $t4, 0x0028($sp)
	lw      $t5, 0x002C($sp)
	nop
	addiu   $t7, $t5, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, .L80195050
	sw      $t7, 0x002C($sp)
	b       .L801950BC
	nop
.L801950BC:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_math_801950D0:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0070($sp)
	sw      $a1, 0x0074($sp)
	lw      $t6, 0x0070($sp)
	nop
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, 0x006C($sp)
	lw      $t7, 0x0070($sp)
	nop
	lwc1    $f6, 0x0004($t7)
	nop
	swc1    $f6, 0x005C($sp)
	lw      $t8, 0x0070($sp)
	nop
	lwc1    $f8, 0x0008($t8)
	nop
	swc1    $f8, 0x004C($sp)
	lw      $t9, 0x0070($sp)
	nop
	lwc1    $f10, 0x000C($t9)
	nop
	swc1    $f10, 0x003C($sp)
	lw      $t0, 0x0070($sp)
	nop
	lwc1    $f16, 0x0010($t0)
	nop
	swc1    $f16, 0x0068($sp)
	lw      $t1, 0x0070($sp)
	nop
	lwc1    $f18, 0x0014($t1)
	nop
	swc1    $f18, 0x0058($sp)
	lw      $t2, 0x0070($sp)
	nop
	lwc1    $f4, 0x0018($t2)
	nop
	swc1    $f4, 0x0048($sp)
	lw      $t3, 0x0070($sp)
	nop
	lwc1    $f6, 0x001C($t3)
	nop
	swc1    $f6, 0x0038($sp)
	lw      $t4, 0x0070($sp)
	nop
	lwc1    $f8, 0x0020($t4)
	nop
	swc1    $f8, 0x0064($sp)
	lw      $t5, 0x0070($sp)
	nop
	lwc1    $f10, 0x0024($t5)
	nop
	swc1    $f10, 0x0054($sp)
	lw      $t6, 0x0070($sp)
	nop
	lwc1    $f16, 0x0028($t6)
	nop
	swc1    $f16, 0x0044($sp)
	lw      $t7, 0x0070($sp)
	nop
	lwc1    $f18, 0x002C($t7)
	nop
	swc1    $f18, 0x0034($sp)
	lw      $t8, 0x0070($sp)
	nop
	lwc1    $f4, 0x0030($t8)
	nop
	swc1    $f4, 0x0060($sp)
	lw      $t9, 0x0070($sp)
	nop
	lwc1    $f6, 0x0034($t9)
	nop
	swc1    $f6, 0x0050($sp)
	lw      $t0, 0x0070($sp)
	nop
	lwc1    $f8, 0x0038($t0)
	nop
	swc1    $f8, 0x0040($sp)
	lw      $t1, 0x0070($sp)
	nop
	lwc1    $f10, 0x003C($t1)
	nop
	swc1    $f10, 0x0030($sp)
	lwc1    $f16, 0x0044($sp)
	lwc1    $f18, 0x0040($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f8, 0x0030($sp)
	lwc1    $f12, 0x0058($sp)
	lwc1    $f14, 0x0054($sp)
	lw      $a2, 0x0050($sp)
	lw      $a3, 0x0048($sp)
	swc1    $f16, 0x0010($sp)
	swc1    $f18, 0x0014($sp)
	swc1    $f4, 0x0018($sp)
	swc1    $f6, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f8, 0x0020($sp)
	lw      $t2, 0x0074($sp)
	nop
	swc1    $f0, 0x0000($t2)
	lwc1    $f10, 0x0044($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x0038($sp)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f12, 0x0068($sp)
	lwc1    $f14, 0x0064($sp)
	lw      $a2, 0x0060($sp)
	lw      $a3, 0x0048($sp)
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	swc1    $f18, 0x0018($sp)
	swc1    $f4, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f6, 0x0020($sp)
	lw      $t3, 0x0074($sp)
	neg.s   $f8, $f0
	swc1    $f8, 0x0010($t3)
	lwc1    $f10, 0x0054($sp)
	lwc1    $f16, 0x0050($sp)
	lwc1    $f18, 0x0038($sp)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f12, 0x0068($sp)
	lwc1    $f14, 0x0064($sp)
	lw      $a2, 0x0060($sp)
	lw      $a3, 0x0058($sp)
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	swc1    $f18, 0x0018($sp)
	swc1    $f4, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f6, 0x0020($sp)
	lw      $t4, 0x0074($sp)
	nop
	swc1    $f0, 0x0020($t4)
	lwc1    $f8, 0x0054($sp)
	lwc1    $f10, 0x0050($sp)
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f4, 0x0040($sp)
	lwc1    $f12, 0x0068($sp)
	lwc1    $f14, 0x0064($sp)
	lw      $a2, 0x0060($sp)
	lw      $a3, 0x0058($sp)
	swc1    $f8, 0x0010($sp)
	swc1    $f10, 0x0014($sp)
	swc1    $f16, 0x0018($sp)
	swc1    $f18, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f4, 0x0020($sp)
	lw      $t5, 0x0074($sp)
	neg.s   $f6, $f0
	swc1    $f6, 0x0030($t5)
	lwc1    $f8, 0x0044($sp)
	lwc1    $f10, 0x0040($sp)
	lwc1    $f16, 0x003C($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f12, 0x005C($sp)
	lwc1    $f14, 0x0054($sp)
	lw      $a2, 0x0050($sp)
	lw      $a3, 0x004C($sp)
	swc1    $f8, 0x0010($sp)
	swc1    $f10, 0x0014($sp)
	swc1    $f16, 0x0018($sp)
	swc1    $f18, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f4, 0x0020($sp)
	lw      $t6, 0x0074($sp)
	neg.s   $f6, $f0
	swc1    $f6, 0x0004($t6)
	lwc1    $f8, 0x0044($sp)
	lwc1    $f10, 0x0040($sp)
	lwc1    $f16, 0x003C($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f12, 0x006C($sp)
	lwc1    $f14, 0x0064($sp)
	lw      $a2, 0x0060($sp)
	lw      $a3, 0x004C($sp)
	swc1    $f8, 0x0010($sp)
	swc1    $f10, 0x0014($sp)
	swc1    $f16, 0x0018($sp)
	swc1    $f18, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f4, 0x0020($sp)
	lw      $t7, 0x0074($sp)
	nop
	swc1    $f0, 0x0014($t7)
	lwc1    $f6, 0x0054($sp)
	lwc1    $f8, 0x0050($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f18, 0x0030($sp)
	lwc1    $f12, 0x006C($sp)
	lwc1    $f14, 0x0064($sp)
	lw      $a2, 0x0060($sp)
	lw      $a3, 0x005C($sp)
	swc1    $f6, 0x0010($sp)
	swc1    $f8, 0x0014($sp)
	swc1    $f10, 0x0018($sp)
	swc1    $f16, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f18, 0x0020($sp)
	lw      $t8, 0x0074($sp)
	neg.s   $f4, $f0
	swc1    $f4, 0x0024($t8)
	lwc1    $f6, 0x0054($sp)
	lwc1    $f8, 0x0050($sp)
	lwc1    $f10, 0x004C($sp)
	lwc1    $f16, 0x0044($sp)
	lwc1    $f18, 0x0040($sp)
	lwc1    $f12, 0x006C($sp)
	lwc1    $f14, 0x0064($sp)
	lw      $a2, 0x0060($sp)
	lw      $a3, 0x005C($sp)
	swc1    $f6, 0x0010($sp)
	swc1    $f8, 0x0014($sp)
	swc1    $f10, 0x0018($sp)
	swc1    $f16, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f18, 0x0020($sp)
	lw      $t9, 0x0074($sp)
	nop
	swc1    $f0, 0x0034($t9)
	lwc1    $f4, 0x0048($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x003C($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f12, 0x005C($sp)
	lwc1    $f14, 0x0058($sp)
	lw      $a2, 0x0050($sp)
	lw      $a3, 0x004C($sp)
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	swc1    $f8, 0x0018($sp)
	swc1    $f10, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f16, 0x0020($sp)
	lw      $t0, 0x0074($sp)
	nop
	swc1    $f0, 0x0008($t0)
	lwc1    $f18, 0x0048($sp)
	lwc1    $f4, 0x0040($sp)
	lwc1    $f6, 0x003C($sp)
	lwc1    $f8, 0x0038($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f12, 0x006C($sp)
	lwc1    $f14, 0x0068($sp)
	lw      $a2, 0x0060($sp)
	lw      $a3, 0x004C($sp)
	swc1    $f18, 0x0010($sp)
	swc1    $f4, 0x0014($sp)
	swc1    $f6, 0x0018($sp)
	swc1    $f8, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f10, 0x0020($sp)
	lw      $t1, 0x0074($sp)
	neg.s   $f16, $f0
	swc1    $f16, 0x0018($t1)
	lwc1    $f18, 0x0058($sp)
	lwc1    $f4, 0x0050($sp)
	lwc1    $f6, 0x003C($sp)
	lwc1    $f8, 0x0038($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f12, 0x006C($sp)
	lwc1    $f14, 0x0068($sp)
	lw      $a2, 0x0060($sp)
	lw      $a3, 0x005C($sp)
	swc1    $f18, 0x0010($sp)
	swc1    $f4, 0x0014($sp)
	swc1    $f6, 0x0018($sp)
	swc1    $f8, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f10, 0x0020($sp)
	lw      $t2, 0x0074($sp)
	nop
	swc1    $f0, 0x0028($t2)
	lwc1    $f16, 0x0058($sp)
	lwc1    $f18, 0x0050($sp)
	lwc1    $f4, 0x004C($sp)
	lwc1    $f6, 0x0048($sp)
	lwc1    $f8, 0x0040($sp)
	lwc1    $f12, 0x006C($sp)
	lwc1    $f14, 0x0068($sp)
	lw      $a2, 0x0060($sp)
	lw      $a3, 0x005C($sp)
	swc1    $f16, 0x0010($sp)
	swc1    $f18, 0x0014($sp)
	swc1    $f4, 0x0018($sp)
	swc1    $f6, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f8, 0x0020($sp)
	lw      $t3, 0x0074($sp)
	neg.s   $f10, $f0
	swc1    $f10, 0x0038($t3)
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f12, 0x005C($sp)
	lwc1    $f14, 0x0058($sp)
	lw      $a2, 0x0054($sp)
	lw      $a3, 0x004C($sp)
	swc1    $f16, 0x0010($sp)
	swc1    $f18, 0x0014($sp)
	swc1    $f4, 0x0018($sp)
	swc1    $f6, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f8, 0x0020($sp)
	lw      $t4, 0x0074($sp)
	neg.s   $f10, $f0
	swc1    $f10, 0x000C($t4)
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f12, 0x006C($sp)
	lwc1    $f14, 0x0068($sp)
	lw      $a2, 0x0064($sp)
	lw      $a3, 0x004C($sp)
	swc1    $f16, 0x0010($sp)
	swc1    $f18, 0x0014($sp)
	swc1    $f4, 0x0018($sp)
	swc1    $f6, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f8, 0x0020($sp)
	lw      $t5, 0x0074($sp)
	nop
	swc1    $f0, 0x001C($t5)
	lwc1    $f10, 0x0058($sp)
	lwc1    $f16, 0x0054($sp)
	lwc1    $f18, 0x003C($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f12, 0x006C($sp)
	lwc1    $f14, 0x0068($sp)
	lw      $a2, 0x0064($sp)
	lw      $a3, 0x005C($sp)
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	swc1    $f18, 0x0018($sp)
	swc1    $f4, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f6, 0x0020($sp)
	lw      $t6, 0x0074($sp)
	neg.s   $f8, $f0
	swc1    $f8, 0x002C($t6)
	lwc1    $f10, 0x0058($sp)
	lwc1    $f16, 0x0054($sp)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f4, 0x0048($sp)
	lwc1    $f6, 0x0044($sp)
	lwc1    $f12, 0x006C($sp)
	lwc1    $f14, 0x0068($sp)
	lw      $a2, 0x0064($sp)
	lw      $a3, 0x005C($sp)
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	swc1    $f18, 0x0018($sp)
	swc1    $f4, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f6, 0x0020($sp)
	lw      $t7, 0x0074($sp)
	nop
	swc1    $f0, 0x003C($t7)
	b       .L801956A8
	nop
.L801956A8:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

face_math_801956B8:
	addiu   $sp, $sp, -0x0098
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x0098($sp)
	swc1    $f25, 0x0038($sp)
	swc1    $f24, 0x003C($sp)
	swc1    $f23, 0x0030($sp)
	swc1    $f22, 0x0034($sp)
	swc1    $f21, 0x0028($sp)
	swc1    $f20, 0x002C($sp)
	lw      $t6, 0x0098($sp)
	nop
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, 0x0090($sp)
	lw      $t7, 0x0098($sp)
	nop
	lwc1    $f6, 0x0004($t7)
	nop
	swc1    $f6, 0x0080($sp)
	lw      $t8, 0x0098($sp)
	nop
	lwc1    $f8, 0x0008($t8)
	nop
	swc1    $f8, 0x0070($sp)
	lw      $t9, 0x0098($sp)
	nop
	lwc1    $f10, 0x000C($t9)
	nop
	swc1    $f10, 0x0060($sp)
	lw      $t0, 0x0098($sp)
	nop
	lwc1    $f16, 0x0010($t0)
	nop
	swc1    $f16, 0x008C($sp)
	lw      $t1, 0x0098($sp)
	nop
	lwc1    $f18, 0x0014($t1)
	nop
	swc1    $f18, 0x007C($sp)
	lw      $t2, 0x0098($sp)
	nop
	lwc1    $f4, 0x0018($t2)
	nop
	swc1    $f4, 0x006C($sp)
	lw      $t3, 0x0098($sp)
	nop
	lwc1    $f6, 0x001C($t3)
	nop
	swc1    $f6, 0x005C($sp)
	lw      $t4, 0x0098($sp)
	nop
	lwc1    $f8, 0x0020($t4)
	nop
	swc1    $f8, 0x0088($sp)
	lw      $t5, 0x0098($sp)
	nop
	lwc1    $f10, 0x0024($t5)
	nop
	swc1    $f10, 0x0078($sp)
	lw      $t6, 0x0098($sp)
	nop
	lwc1    $f16, 0x0028($t6)
	nop
	swc1    $f16, 0x0068($sp)
	lw      $t7, 0x0098($sp)
	nop
	lwc1    $f18, 0x002C($t7)
	nop
	swc1    $f18, 0x0058($sp)
	lw      $t8, 0x0098($sp)
	nop
	lwc1    $f4, 0x0030($t8)
	nop
	swc1    $f4, 0x0084($sp)
	lw      $t9, 0x0098($sp)
	nop
	lwc1    $f6, 0x0034($t9)
	nop
	swc1    $f6, 0x0074($sp)
	lw      $t0, 0x0098($sp)
	nop
	lwc1    $f8, 0x0038($t0)
	nop
	swc1    $f8, 0x0064($sp)
	lw      $t1, 0x0098($sp)
	nop
	lwc1    $f10, 0x003C($t1)
	nop
	swc1    $f10, 0x0054($sp)
	lwc1    $f16, 0x0078($sp)
	lwc1    $f18, 0x0074($sp)
	lwc1    $f4, 0x005C($sp)
	lwc1    $f6, 0x0058($sp)
	lwc1    $f8, 0x0054($sp)
	lwc1    $f12, 0x008C($sp)
	lwc1    $f14, 0x0088($sp)
	lw      $a2, 0x0084($sp)
	lw      $a3, 0x007C($sp)
	swc1    $f16, 0x0010($sp)
	swc1    $f18, 0x0014($sp)
	swc1    $f4, 0x0018($sp)
	swc1    $f6, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x0068($sp)
	lwc1    $f16, 0x0064($sp)
	lwc1    $f18, 0x005C($sp)
	lwc1    $f4, 0x0058($sp)
	lwc1    $f6, 0x0054($sp)
	lwc1    $f12, 0x008C($sp)
	lwc1    $f14, 0x0088($sp)
	lw      $a2, 0x0084($sp)
	lw      $a3, 0x006C($sp)
	mov.s   $f24, $f0
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	swc1    $f18, 0x0018($sp)
	swc1    $f4, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0068($sp)
	lwc1    $f10, 0x0064($sp)
	lwc1    $f16, 0x005C($sp)
	lwc1    $f18, 0x0058($sp)
	lwc1    $f4, 0x0054($sp)
	lwc1    $f12, 0x007C($sp)
	lwc1    $f14, 0x0078($sp)
	lw      $a2, 0x0074($sp)
	lw      $a3, 0x006C($sp)
	mov.s   $f22, $f0
	swc1    $f8, 0x0010($sp)
	swc1    $f10, 0x0014($sp)
	swc1    $f16, 0x0018($sp)
	swc1    $f18, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x0078($sp)
	lwc1    $f8, 0x0074($sp)
	lwc1    $f10, 0x006C($sp)
	lwc1    $f16, 0x0068($sp)
	lwc1    $f18, 0x0064($sp)
	lwc1    $f12, 0x008C($sp)
	lwc1    $f14, 0x0088($sp)
	lw      $a2, 0x0084($sp)
	lw      $a3, 0x007C($sp)
	mov.s   $f20, $f0
	swc1    $f6, 0x0010($sp)
	swc1    $f8, 0x0014($sp)
	swc1    $f10, 0x0018($sp)
	swc1    $f16, 0x001C($sp)
	jal     face_math_80195984
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0090($sp)
	lwc1    $f8, 0x0080($sp)
	mul.s   $f6, $f4, $f20
	lwc1    $f18, 0x0070($sp)
	mul.s   $f10, $f8, $f22
	sub.s   $f16, $f6, $f10
	lwc1    $f6, 0x0060($sp)
	mul.s   $f4, $f18, $f24
	nop
	mul.s   $f10, $f0, $f6
	add.s   $f8, $f16, $f4
	sub.s   $f18, $f8, $f10
	swc1    $f18, 0x0094($sp)
	lwc1    $f0, 0x0094($sp)
	b       .L80195960
	nop
	b       .L80195960
	nop
.L80195960:
	lw      $ra, 0x0044($sp)
	lwc1    $f21, 0x0028($sp)
	lwc1    $f20, 0x002C($sp)
	lwc1    $f23, 0x0030($sp)
	lwc1    $f22, 0x0034($sp)
	lwc1    $f25, 0x0038($sp)
	lwc1    $f24, 0x003C($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0098

face_math_80195984:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f14, 0x003C($sp)
	swc1    $f23, 0x0018($sp)
	swc1    $f22, 0x001C($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lwc1    $f12, 0x003C($sp)
	lwc1    $f14, 0x0040($sp)
	lw      $a2, 0x0054($sp)
	lw      $a3, 0x0058($sp)
	jal     face_math_80195A4C
	nop
	lwc1    $f12, 0x0048($sp)
	lwc1    $f14, 0x004C($sp)
	lw      $a2, 0x0054($sp)
	lw      $a3, 0x0058($sp)
	jal     face_math_80195A4C
	mov.s   $f22, $f0
	lwc1    $f12, 0x003C($sp)
	lwc1    $f14, 0x0040($sp)
	lw      $a2, 0x0048($sp)
	lw      $a3, 0x004C($sp)
	jal     face_math_80195A4C
	mov.s   $f20, $f0
	lwc1    $f4, 0x0038($sp)
	lwc1    $f8, 0x0044($sp)
	mul.s   $f6, $f4, $f20
	lwc1    $f18, 0x0050($sp)
	mul.s   $f10, $f8, $f22
	nop
	mul.s   $f4, $f0, $f18
	sub.s   $f16, $f6, $f10
	add.s   $f8, $f4, $f16
	swc1    $f8, 0x0034($sp)
	lwc1    $f0, 0x0034($sp)
	b       .L80195A30
	nop
	b       .L80195A30
	nop
.L80195A30:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	lwc1    $f23, 0x0018($sp)
	lwc1    $f22, 0x001C($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

face_math_80195A4C:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	lwc1    $f4, 0x0014($sp)
	lwc1    $f8, 0x0010($sp)
	mul.s   $f6, $f12, $f4
	nop
	mul.s   $f10, $f14, $f8
	sub.s   $f16, $f6, $f10
	swc1    $f16, 0x0004($sp)
	lwc1    $f0, 0x0004($sp)
	b       .L80195A88
	nop
	b       .L80195A88
	nop
.L80195A88:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_math_80195A90:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	lwc1    $f4, 0x0010($sp)
	nop
	neg.s   $f6, $f4
	swc1    $f6, 0x0000($a1)
	lwc1    $f8, 0x0014($sp)
	nop
	neg.s   $f10, $f8
	swc1    $f10, 0x0004($a1)
	lwc1    $f16, 0x0018($sp)
	nop
	neg.s   $f18, $f16
	swc1    $f18, 0x0008($a1)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0000($a0)
	li      $t6, 0x0001
	sw      $t6, 0x0004($sp)
.L80195AE4:
	lw      $t7, 0x0004($sp)
	mtc1    $0, $f6
	sll     $t8, $t7, 2
	addu    $t9, $a0, $t8
	swc1    $f6, 0x0000($t9)
	lw      $t0, 0x0004($sp)
	nop
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0004
	bnez    $at, .L80195AE4
	sw      $t1, 0x0004($sp)
	b       .L80195B18
	nop
.L80195B18:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_math_80195B20:
	addiu   $sp, $sp, -0x0028
	sw      $a2, 0x0030($sp)
	lwc1    $f4, 0x0000($a1)
	nop
	swc1    $f4, 0x0000($sp)
	lwc1    $f6, 0x0004($a1)
	nop
	swc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0008($a1)
	nop
	swc1    $f8, 0x0008($sp)
	lw      $t6, 0x0038($sp)
	nop
	bgez    $t6, .L80195B64
	nop
	b       .L80195C10
	nop
.L80195B64:
	addiu   $t7, $a3, 0x0001
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	nop
	slti    $at, $t8, 0x0004
	bnez    $at, .L80195B88
	nop
	li      $t9, 0x0001
	sw      $t9, 0x0024($sp)
.L80195B88:
	lw      $t0, 0x0024($sp)
	nop
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0004
	bnez    $at, .L80195BA8
	sw      $t1, 0x0020($sp)
	li      $t2, 0x0001
	sw      $t2, 0x0020($sp)
.L80195BA8:
	lw      $t3, 0x0024($sp)
	nop
	sll     $t4, $t3, 2
	addu    $t5, $a0, $t4
	lwc1    $f10, 0x0000($t5)
	nop
	swc1    $f10, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	nop
	sll     $t7, $t6, 2
	addu    $t8, $a0, $t7
	lwc1    $f16, 0x0000($t8)
	nop
	swc1    $f16, 0x0018($sp)
	lwc1    $f18, 0x0000($a0)
	nop
	swc1    $f18, 0x000C($sp)
	sll     $t9, $a3, 2
	addu    $t0, $a0, $t9
	lwc1    $f4, 0x0000($t0)
	nop
	swc1    $f4, 0x0010($sp)
	lwc1    $f6, 0x0030($sp)
	nop
	add.s   $f8, $f6, $f6
	swc1    $f8, 0x0014($sp)
.L80195C10:
	lwc1    $f10, 0x0000($sp)
	nop
	swc1    $f10, 0x0000($a1)
	lwc1    $f16, 0x0004($sp)
	nop
	swc1    $f16, 0x0004($a1)
	lwc1    $f18, 0x0008($sp)
	nop
	swc1    $f18, 0x0008($a1)
	b       .L80195C3C
	nop
.L80195C3C:
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_math_80195C44:
	addiu   $sp, $sp, -0x0018
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	nop
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, .L80195C74
	sw      $t7, 0x0014($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0014($sp)
.L80195C74:
	lw      $t9, 0x0014($sp)
	nop
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x0004
	bnez    $at, .L80195C94
	sw      $t0, 0x0010($sp)
	li      $t1, 0x0001
	sw      $t1, 0x0010($sp)
.L80195C94:
	lw      $t2, 0x0028($sp)
	nop
	sll     $t3, $t2, 2
	addu    $t4, $a0, $t3
	lwc1    $f4, 0x0000($t4)
	nop
	swc1    $f4, 0x000C($sp)
	lw      $t5, 0x002C($sp)
	lwc1    $f10, 0x0024($sp)
	mtc1    $t5, $f6
	lwc1    $f18, 0x0000($a0)
	cvt.s.w $f8, $f6
	lwc1    $f6, 0x000C($sp)
	lw      $t6, 0x0028($sp)
	mul.s   $f16, $f8, $f10
	lwc1    $f8, 0x0020($sp)
	sll     $t7, $t6, 2
	addu    $t8, $a0, $t7
	mul.s   $f4, $f18, $f16
	nop
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f4, $f10
	swc1    $f18, 0x0000($t8)
	lw      $t9, 0x002C($sp)
	lwc1    $f16, 0x0000($a0)
	lwc1    $f6, 0x0020($sp)
	mtc1    $t9, $f4
	mul.s   $f8, $f16, $f6
	lwc1    $f18, 0x0024($sp)
	lwc1    $f6, 0x000C($sp)
	cvt.s.w $f10, $f4
	mul.s   $f16, $f10, $f18
	nop
	mul.s   $f4, $f16, $f6
	sub.s   $f10, $f8, $f4
	swc1    $f10, 0x0000($a0)
	lw      $t0, 0x0014($sp)
	nop
	sll     $t1, $t0, 2
	addu    $t2, $a0, $t1
	lwc1    $f18, 0x0000($t2)
	nop
	swc1    $f18, 0x000C($sp)
	lw      $t3, 0x0010($sp)
	lwc1    $f6, 0x0024($sp)
	sll     $t4, $t3, 2
	addu    $t5, $a0, $t4
	lwc1    $f16, 0x0000($t5)
	lwc1    $f4, 0x000C($sp)
	mul.s   $f8, $f16, $f6
	lwc1    $f10, 0x0020($sp)
	lw      $t6, 0x0014($sp)
	mul.s   $f18, $f4, $f10
	sll     $t7, $t6, 2
	addu    $t8, $a0, $t7
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x0000($t8)
	lw      $t9, 0x0010($sp)
	lwc1    $f4, 0x0020($sp)
	sll     $t0, $t9, 2
	addu    $t1, $a0, $t0
	lwc1    $f6, 0x0000($t1)
	lwc1    $f8, 0x0024($sp)
	mul.s   $f10, $f6, $f4
	lwc1    $f18, 0x000C($sp)
	addu    $t2, $a0, $t0
	mul.s   $f16, $f8, $f18
	sub.s   $f6, $f10, $f16
	swc1    $f6, 0x0000($t2)
	b       .L80195DB0
	nop
.L80195DB0:
	jr      $ra
	addiu   $sp, $sp, 0x0018

face_math_80195DB8:
	addiu   $sp, $sp, -0x0018
	sw      $0, 0x0014($sp)
.L80195DC0:
	lw      $t6, 0x0014($sp)
	nop
	sll     $t7, $t6, 2
	addu    $t8, $a0, $t7
	lwc1    $f4, 0x0004($t8)
	addu    $t9, $sp, $t7
	swc1    $f4, 0x0004($t9)
	lw      $t0, 0x0014($sp)
	nop
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0003
	bnez    $at, .L80195DC0
	sw      $t1, 0x0014($sp)
	li      $t2, 0x0001
	sw      $t2, 0x0014($sp)
.L80195DFC:
	li      $t3, 0x0001
	sw      $t3, 0x0010($sp)
.L80195E04:
	lw      $t4, 0x0014($sp)
	lw      $t8, 0x0010($sp)
	sll     $t5, $t4, 4
	addu    $t6, $a0, $t5
	sll     $t7, $t8, 2
	addu    $t9, $t6, $t7
	lwc1    $f6, 0x0000($t9)
	addu    $t0, $a0, $t5
	addu    $t1, $t0, $t7
	swc1    $f6, -0x0014($t1)
	lw      $t2, 0x0010($sp)
	nop
	addiu   $t3, $t2, 0x0001
	slti    $at, $t3, 0x0004
	bnez    $at, .L80195E04
	sw      $t3, 0x0010($sp)
	lw      $t4, 0x0014($sp)
	nop
	addiu   $t8, $t4, 0x0001
	slti    $at, $t8, 0x0004
	bnez    $at, .L80195DFC
	sw      $t8, 0x0014($sp)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x000C($a0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x001C($a0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x002C($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x003C($a0)
	sw      $0, 0x0014($sp)
.L80195E94:
	lw      $t6, 0x0014($sp)
	nop
	sll     $t9, $t6, 2
	addu    $t5, $sp, $t9
	lwc1    $f4, 0x0004($t5)
	addu    $t0, $a0, $t9
	swc1    $f4, 0x0030($t0)
	lw      $t7, 0x0014($sp)
	nop
	addiu   $t1, $t7, 0x0001
	slti    $at, $t1, 0x0003
	bnez    $at, .L80195E94
	sw      $t1, 0x0014($sp)
	b       .L80195ED0
	nop
.L80195ED0:
	jr      $ra
	addiu   $sp, $sp, 0x0018

face_math_80195ED8:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $0, 0x0024($sp)
.L80195EF0:
	lw      $t7, 0x0024($sp)
	lw      $t6, 0x0040($sp)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	lwc1    $f4, 0x0000($t9)
	addu    $t0, $sp, $t8
	mul.s   $f6, $f4, $f4
	swc1    $f6, 0x0028($t0)
	lw      $t1, 0x0024($sp)
	nop
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x0004
	bnez    $at, .L80195EF0
	sw      $t2, 0x0024($sp)
	li      $t3, 0x0001
	sw      $t3, 0x0024($sp)
.L80195F30:
	lw      $t4, 0x0024($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0004
	bnez    $at, .L80195F50
	sw      $t5, 0x0020($sp)
	li      $t7, 0x0001
	sw      $t7, 0x0020($sp)
.L80195F50:
	lw      $t6, 0x0020($sp)
	nop
	addiu   $t9, $t6, 0x0001
	slti    $at, $t9, 0x0004
	bnez    $at, .L80195F70
	sw      $t9, 0x001C($sp)
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
.L80195F70:
	lw      $t4, 0x0024($sp)
	lw      $t0, 0x0040($sp)
	sll     $t5, $t4, 2
	addu    $t7, $t0, $t5
	lwc1    $f16, 0x0000($t7)
	li      $at, 0x40000000
	mtc1    $at, $f5
	lw      $t1, 0x0020($sp)
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	mul.d   $f6, $f4, $f18
	sll     $t2, $t1, 2
	addu    $t3, $t0, $t2
	lwc1    $f8, 0x0000($t3)
	nop
	cvt.d.s $f10, $f8
	mul.d   $f8, $f10, $f6
	cvt.s.d $f16, $f8
	swc1    $f16, 0x003C($sp)
	lw      $t9, 0x001C($sp)
	lw      $t6, 0x0040($sp)
	sll     $t8, $t9, 2
	addu    $t1, $t6, $t8
	lwc1    $f4, 0x0000($t1)
	li      $at, 0x40000000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f18, $f4
	mul.d   $f6, $f10, $f18
	lwc1    $f8, 0x0000($t6)
	nop
	cvt.d.s $f16, $f8
	mul.d   $f4, $f16, $f6
	cvt.s.d $f10, $f4
	swc1    $f10, 0x0038($sp)
	lw      $t3, 0x0020($sp)
	lwc1    $f18, 0x003C($sp)
	lwc1    $f8, 0x0038($sp)
	lw      $t2, 0x0048($sp)
	lw      $t5, 0x0024($sp)
	sll     $t4, $t3, 4
	sub.s   $f16, $f18, $f8
	addu    $t0, $t2, $t4
	sll     $t7, $t5, 2
	addu    $t9, $t0, $t7
	swc1    $f16, 0x0000($t9)
	lw      $t1, 0x0024($sp)
	lwc1    $f6, 0x003C($sp)
	lwc1    $f4, 0x0038($sp)
	lw      $t8, 0x0048($sp)
	lw      $t2, 0x0020($sp)
	sll     $t6, $t1, 4
	add.s   $f10, $f6, $f4
	addu    $t3, $t8, $t6
	sll     $t4, $t2, 2
	addu    $t5, $t3, $t4
	swc1    $f10, 0x0000($t5)
	lw      $t0, 0x0024($sp)
	lw      $t8, 0x0020($sp)
	addiu   $t9, $sp, 0x0028
	sll     $t7, $t0, 2
	addu    $t1, $t7, $t9
	lwc1    $f18, 0x0000($t1)
	lwc1    $f8, 0x0000($t9)
	lw      $t3, 0x001C($sp)
	sll     $t6, $t8, 2
	addu    $t2, $t6, $t9
	lwc1    $f6, 0x0000($t2)
	add.s   $f16, $f18, $f8
	sll     $t4, $t3, 2
	addu    $t5, $t4, $t9
	lwc1    $f10, 0x0000($t5)
	lw      $t1, 0x0048($sp)
	sub.s   $f4, $f16, $f6
	sll     $t8, $t0, 4
	sub.s   $f18, $f4, $f10
	addu    $t6, $t1, $t8
	addu    $t2, $t6, $t7
	swc1    $f18, 0x0000($t2)
	lw      $t4, 0x0024($sp)
	lw      $t3, 0x0048($sp)
	mtc1    $0, $f8
	sll     $t9, $t4, 4
	addu    $t5, $t3, $t9
	swc1    $f8, 0x0000($t5)
	lw      $t0, 0x0024($sp)
	nop
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0004
	bnez    $at, .L80195F30
	sw      $t1, 0x0024($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lw      $t8, 0x0048($sp)
	nop
	swc1    $f16, 0x0000($t8)
	lw      $a0, 0x0048($sp)
	jal     face_math_80195DB8
	nop
	b       .L80196104
	nop
.L80196104:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

face_math_80196114:
	addiu   $sp, $sp, -0x0010
	sw      $a2, 0x0018($sp)
	sw      $a3, 0x001C($sp)
	lwc1    $f4, 0x0000($a1)
	nop
	swc1    $f4, 0x0008($sp)
	lwc1    $f6, 0x0004($a1)
	nop
	swc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0008($a1)
	nop
	swc1    $f8, 0x0000($sp)
	lwc1    $f16, 0x001C($sp)
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f18, $f16
	sub.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x000C($sp)
	lwc1    $f8, 0x000C($sp)
	lwc1    $f16, 0x0008($sp)
	lwc1    $f4, 0x001C($sp)
	mul.s   $f10, $f8, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0000($a0)
	lwc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x0008($sp)
	lwc1    $f18, 0x0004($sp)
	mul.s   $f16, $f8, $f10
	lwc1    $f8, 0x0000($sp)
	lwc1    $f6, 0x0018($sp)
	mul.s   $f4, $f16, $f18
	nop
	mul.s   $f10, $f6, $f8
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x0004($a0)
	lwc1    $f18, 0x000C($sp)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f4, 0x0000($sp)
	mul.s   $f8, $f18, $f6
	lwc1    $f18, 0x0004($sp)
	lwc1    $f16, 0x0018($sp)
	mul.s   $f10, $f8, $f4
	nop
	mul.s   $f6, $f16, $f18
	sub.s   $f8, $f10, $f6
	swc1    $f8, 0x0008($a0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x000C($a0)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f18, 0x0008($sp)
	lwc1    $f6, 0x0004($sp)
	mul.s   $f10, $f16, $f18
	lwc1    $f16, 0x0000($sp)
	lwc1    $f4, 0x0018($sp)
	mul.s   $f8, $f10, $f6
	nop
	mul.s   $f18, $f4, $f16
	sub.s   $f10, $f8, $f18
	swc1    $f10, 0x0010($a0)
	lwc1    $f6, 0x000C($sp)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f18, 0x001C($sp)
	mul.s   $f16, $f6, $f4
	nop
	mul.s   $f8, $f16, $f4
	add.s   $f10, $f8, $f18
	swc1    $f10, 0x0014($a0)
	lwc1    $f6, 0x000C($sp)
	lwc1    $f16, 0x0004($sp)
	lwc1    $f8, 0x0000($sp)
	mul.s   $f4, $f6, $f16
	lwc1    $f6, 0x0008($sp)
	lwc1    $f10, 0x0018($sp)
	mul.s   $f18, $f4, $f8
	nop
	mul.s   $f16, $f10, $f6
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0018($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x001C($a0)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f16, 0x0000($sp)
	mul.s   $f18, $f10, $f6
	lwc1    $f10, 0x0004($sp)
	lwc1    $f8, 0x0018($sp)
	mul.s   $f4, $f18, $f16
	nop
	mul.s   $f6, $f8, $f10
	add.s   $f18, $f4, $f6
	swc1    $f18, 0x0020($a0)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f8, 0x0004($sp)
	lwc1    $f4, 0x0000($sp)
	mul.s   $f10, $f16, $f8
	lwc1    $f16, 0x0008($sp)
	lwc1    $f18, 0x0018($sp)
	mul.s   $f6, $f10, $f4
	nop
	mul.s   $f8, $f18, $f16
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($a0)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f18, 0x0000($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f4, $f18
	nop
	mul.s   $f6, $f16, $f18
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($a0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x002C($a0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0030($a0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0034($a0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0038($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x003C($a0)
	b       .L8019632C
	nop
.L8019632C:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl face_math_80196334
face_math_80196334:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $at, %hi(face_math_801B8A50+4)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f9, %lo(face_math_801B8A50+0)($at)
	lwc1    $f8, %lo(face_math_801B8A50+4)($at)
	cvt.d.s $f6, $f4
	jal     face_gfx_8019B41C
	div.d   $f12, $f6, $f8
	cvt.s.d $f10, $f0
	swc1    $f10, 0x001C($sp)
	lui     $at, %hi(face_math_801B8A58+4)
	lwc1    $f16, 0x0028($sp)
	lwc1    $f5, %lo(face_math_801B8A58+0)($at)
	lwc1    $f4, %lo(face_math_801B8A58+4)($at)
	cvt.d.s $f18, $f16
	jal     face_gfx_8019B45C
	div.d   $f12, $f18, $f4
	cvt.s.d $f6, $f0
	swc1    $f6, 0x0018($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x001C($sp)
	lw      $a3, 0x0018($sp)
	jal     face_math_80196114
	nop
	b       .L801963B0
	nop
.L801963B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_math_801963C0
face_math_801963C0:
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0000($a0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0004($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0008($a0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x000C($a0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0010($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0014($a0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0018($a0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x001C($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0020($a0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0024($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0028($a0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x002C($a0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0030($a0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0034($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0038($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x003C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_math_801964A0
face_math_801964A0:
	lwc1    $f4, 0x0000($a0)
	nop
	swc1    $f4, 0x0000($a1)
	lwc1    $f6, 0x0004($a0)
	nop
	swc1    $f6, 0x0004($a1)
	lwc1    $f8, 0x0008($a0)
	nop
	swc1    $f8, 0x0008($a1)
	lwc1    $f10, 0x000C($a0)
	nop
	swc1    $f10, 0x000C($a1)
	lwc1    $f16, 0x0010($a0)
	nop
	swc1    $f16, 0x0010($a1)
	lwc1    $f18, 0x0014($a0)
	nop
	swc1    $f18, 0x0014($a1)
	lwc1    $f4, 0x0018($a0)
	nop
	swc1    $f4, 0x0018($a1)
	lwc1    $f6, 0x001C($a0)
	nop
	swc1    $f6, 0x001C($a1)
	lwc1    $f8, 0x0020($a0)
	nop
	swc1    $f8, 0x0020($a1)
	lwc1    $f10, 0x0024($a0)
	nop
	swc1    $f10, 0x0024($a1)
	lwc1    $f16, 0x0028($a0)
	nop
	swc1    $f16, 0x0028($a1)
	lwc1    $f18, 0x002C($a0)
	nop
	swc1    $f18, 0x002C($a1)
	lwc1    $f4, 0x0030($a0)
	nop
	swc1    $f4, 0x0030($a1)
	lwc1    $f6, 0x0034($a0)
	nop
	swc1    $f6, 0x0034($a1)
	lwc1    $f8, 0x0038($a0)
	nop
	swc1    $f8, 0x0038($a1)
	lwc1    $f10, 0x003C($a0)
	nop
	swc1    $f10, 0x003C($a1)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_math_80196570
face_math_80196570:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x0000($a1)
	lwc1    $f6, 0x0000($a0)
	lwc1    $f10, 0x0010($a1)
	mul.s   $f8, $f4, $f6
	lwc1    $f16, 0x0004($a0)
	lwc1    $f6, 0x0020($a1)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0008($a0)
	nop
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x0004($sp)
	lwc1    $f18, 0x0004($a1)
	lwc1    $f6, 0x0000($a0)
	lwc1    $f16, 0x0014($a1)
	mul.s   $f10, $f18, $f6
	lwc1    $f4, 0x0004($a0)
	lwc1    $f6, 0x0024($a1)
	mul.s   $f8, $f16, $f4
	lwc1    $f16, 0x0008($a0)
	nop
	mul.s   $f4, $f6, $f16
	add.s   $f18, $f10, $f8
	add.s   $f10, $f4, $f18
	swc1    $f10, 0x0008($sp)
	lwc1    $f8, 0x0008($a1)
	lwc1    $f6, 0x0000($a0)
	lwc1    $f4, 0x0018($a1)
	mul.s   $f16, $f8, $f6
	lwc1    $f18, 0x0004($a0)
	lwc1    $f6, 0x0028($a1)
	mul.s   $f10, $f4, $f18
	lwc1    $f4, 0x0008($a0)
	nop
	mul.s   $f18, $f6, $f4
	add.s   $f8, $f16, $f10
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x000C($sp)
	lwc1    $f10, 0x0004($sp)
	lwc1    $f6, 0x0030($a1)
	nop
	add.s   $f4, $f10, $f6
	swc1    $f4, 0x0004($sp)
	lwc1    $f18, 0x0008($sp)
	lwc1    $f8, 0x0034($a1)
	nop
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x0008($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f6, 0x0038($a1)
	nop
	add.s   $f4, $f10, $f6
	swc1    $f4, 0x000C($sp)
	lwc1    $f18, 0x0004($sp)
	nop
	swc1    $f18, 0x0000($a0)
	lwc1    $f8, 0x0008($sp)
	nop
	swc1    $f8, 0x0004($a0)
	lwc1    $f16, 0x000C($sp)
	nop
	swc1    $f16, 0x0008($a0)
	b       .L80196678
	nop
.L80196678:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl face_math_80196680
face_math_80196680:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x0000($a1)
	lwc1    $f6, 0x0000($a0)
	lwc1    $f10, 0x0010($a1)
	mul.s   $f8, $f4, $f6
	lwc1    $f16, 0x0004($a0)
	lwc1    $f6, 0x0020($a1)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0008($a0)
	nop
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x0004($sp)
	lwc1    $f18, 0x0004($a1)
	lwc1    $f6, 0x0000($a0)
	lwc1    $f16, 0x0014($a1)
	mul.s   $f10, $f18, $f6
	lwc1    $f4, 0x0004($a0)
	lwc1    $f6, 0x0024($a1)
	mul.s   $f8, $f16, $f4
	lwc1    $f16, 0x0008($a0)
	nop
	mul.s   $f4, $f6, $f16
	add.s   $f18, $f10, $f8
	add.s   $f10, $f4, $f18
	swc1    $f10, 0x0008($sp)
	lwc1    $f8, 0x0008($a1)
	lwc1    $f6, 0x0000($a0)
	lwc1    $f4, 0x0018($a1)
	mul.s   $f16, $f8, $f6
	lwc1    $f18, 0x0004($a0)
	lwc1    $f6, 0x0028($a1)
	mul.s   $f10, $f4, $f18
	lwc1    $f4, 0x0008($a0)
	nop
	mul.s   $f18, $f6, $f4
	add.s   $f8, $f16, $f10
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x000C($sp)
	lwc1    $f10, 0x0004($sp)
	nop
	swc1    $f10, 0x0000($a0)
	lwc1    $f6, 0x0008($sp)
	nop
	swc1    $f6, 0x0004($a0)
	lwc1    $f4, 0x000C($sp)
	nop
	swc1    $f4, 0x0008($a0)
	b       .L8019674C
	nop
.L8019674C:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl face_math_80196754
face_math_80196754:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	lw      $t6, 0x005C($sp)
	lw      $t7, 0x0058($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	addiu   $t8, $sp, 0x0018
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t8)
	lw      $t9, 0x0058($sp)
	lw      $t0, 0x005C($sp)
	lwc1    $f10, 0x0004($t9)
	lwc1    $f16, 0x0010($t0)
	addiu   $t1, $sp, 0x0018
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0000($t1)
	nop
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0000($t1)
	lw      $t2, 0x0058($sp)
	lw      $t3, 0x005C($sp)
	lwc1    $f8, 0x0008($t2)
	lwc1    $f10, 0x0020($t3)
	addiu   $t4, $sp, 0x0018
	mul.s   $f16, $f8, $f10
	lwc1    $f4, 0x0000($t4)
	nop
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x0000($t4)
	lw      $t5, 0x0058($sp)
	lw      $t6, 0x005C($sp)
	lwc1    $f6, 0x000C($t5)
	lwc1    $f8, 0x0030($t6)
	addiu   $t7, $sp, 0x0018
	mul.s   $f10, $f6, $f8
	lwc1    $f4, 0x0000($t7)
	nop
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x0000($t7)
	lw      $t8, 0x005C($sp)
	lw      $t9, 0x0058($sp)
	lwc1    $f18, 0x0004($t8)
	lwc1    $f6, 0x0000($t9)
	addiu   $t0, $sp, 0x0018
	mul.s   $f8, $f18, $f6
	swc1    $f8, 0x0004($t0)
	lw      $t1, 0x0058($sp)
	lw      $t2, 0x005C($sp)
	lwc1    $f4, 0x0004($t1)
	lwc1    $f10, 0x0014($t2)
	addiu   $t3, $sp, 0x0018
	mul.s   $f16, $f4, $f10
	lwc1    $f18, 0x0004($t3)
	nop
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x0004($t3)
	lw      $t4, 0x0058($sp)
	lw      $t5, 0x005C($sp)
	lwc1    $f8, 0x0008($t4)
	lwc1    $f4, 0x0024($t5)
	addiu   $t6, $sp, 0x0018
	mul.s   $f10, $f8, $f4
	lwc1    $f18, 0x0004($t6)
	nop
	add.s   $f16, $f18, $f10
	swc1    $f16, 0x0004($t6)
	lw      $t7, 0x0058($sp)
	lw      $t8, 0x005C($sp)
	lwc1    $f6, 0x000C($t7)
	lwc1    $f8, 0x0034($t8)
	addiu   $t9, $sp, 0x0018
	mul.s   $f4, $f6, $f8
	lwc1    $f18, 0x0004($t9)
	nop
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0004($t9)
	lw      $t0, 0x005C($sp)
	lw      $t1, 0x0058($sp)
	lwc1    $f16, 0x0008($t0)
	lwc1    $f6, 0x0000($t1)
	addiu   $t2, $sp, 0x0018
	mul.s   $f8, $f16, $f6
	swc1    $f8, 0x0008($t2)
	lw      $t3, 0x0058($sp)
	lw      $t4, 0x005C($sp)
	lwc1    $f18, 0x0004($t3)
	lwc1    $f4, 0x0018($t4)
	addiu   $t5, $sp, 0x0018
	mul.s   $f10, $f18, $f4
	lwc1    $f16, 0x0008($t5)
	nop
	add.s   $f6, $f16, $f10
	swc1    $f6, 0x0008($t5)
	lw      $t6, 0x0058($sp)
	lw      $t7, 0x005C($sp)
	lwc1    $f8, 0x0008($t6)
	lwc1    $f18, 0x0028($t7)
	addiu   $t8, $sp, 0x0018
	mul.s   $f4, $f8, $f18
	lwc1    $f16, 0x0008($t8)
	nop
	add.s   $f10, $f16, $f4
	swc1    $f10, 0x0008($t8)
	lw      $t9, 0x0058($sp)
	lw      $t0, 0x005C($sp)
	lwc1    $f6, 0x000C($t9)
	lwc1    $f8, 0x0038($t0)
	addiu   $t1, $sp, 0x0018
	mul.s   $f18, $f6, $f8
	lwc1    $f16, 0x0008($t1)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0008($t1)
	lw      $t2, 0x005C($sp)
	lw      $t3, 0x0058($sp)
	lwc1    $f10, 0x000C($t2)
	lwc1    $f6, 0x0000($t3)
	addiu   $t4, $sp, 0x0018
	mul.s   $f8, $f10, $f6
	swc1    $f8, 0x000C($t4)
	lw      $t5, 0x0058($sp)
	lw      $t6, 0x005C($sp)
	lwc1    $f16, 0x0004($t5)
	lwc1    $f18, 0x001C($t6)
	addiu   $t7, $sp, 0x0018
	mul.s   $f4, $f16, $f18
	lwc1    $f10, 0x000C($t7)
	nop
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x000C($t7)
	lw      $t8, 0x0058($sp)
	lw      $t9, 0x005C($sp)
	lwc1    $f8, 0x0008($t8)
	lwc1    $f16, 0x002C($t9)
	addiu   $t0, $sp, 0x0018
	mul.s   $f18, $f8, $f16
	lwc1    $f10, 0x000C($t0)
	nop
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x000C($t0)
	lw      $t1, 0x0058($sp)
	lw      $t2, 0x005C($sp)
	lwc1    $f6, 0x000C($t1)
	lwc1    $f8, 0x003C($t2)
	addiu   $t3, $sp, 0x0018
	mul.s   $f16, $f6, $f8
	lwc1    $f10, 0x000C($t3)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x000C($t3)
	lw      $t4, 0x005C($sp)
	lw      $t5, 0x0058($sp)
	lwc1    $f4, 0x0000($t4)
	lwc1    $f6, 0x0010($t5)
	addiu   $t6, $sp, 0x0018
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0010($t6)
	lw      $t7, 0x0058($sp)
	lw      $t8, 0x005C($sp)
	lwc1    $f10, 0x0014($t7)
	lwc1    $f16, 0x0010($t8)
	addiu   $t9, $sp, 0x0018
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0010($t9)
	nop
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0010($t9)
	lw      $t0, 0x0058($sp)
	lw      $t1, 0x005C($sp)
	lwc1    $f8, 0x0018($t0)
	lwc1    $f10, 0x0020($t1)
	addiu   $t2, $sp, 0x0018
	mul.s   $f16, $f8, $f10
	lwc1    $f4, 0x0010($t2)
	nop
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x0010($t2)
	lw      $t3, 0x0058($sp)
	lw      $t4, 0x005C($sp)
	lwc1    $f6, 0x001C($t3)
	lwc1    $f8, 0x0030($t4)
	addiu   $t5, $sp, 0x0018
	mul.s   $f10, $f6, $f8
	lwc1    $f4, 0x0010($t5)
	nop
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x0010($t5)
	lw      $t6, 0x005C($sp)
	lw      $t7, 0x0058($sp)
	lwc1    $f18, 0x0004($t6)
	lwc1    $f6, 0x0010($t7)
	addiu   $t8, $sp, 0x0018
	mul.s   $f8, $f18, $f6
	swc1    $f8, 0x0014($t8)
	lw      $t9, 0x0058($sp)
	lw      $t0, 0x005C($sp)
	lwc1    $f4, 0x0014($t9)
	lwc1    $f10, 0x0014($t0)
	addiu   $t1, $sp, 0x0018
	mul.s   $f16, $f4, $f10
	lwc1    $f18, 0x0014($t1)
	nop
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x0014($t1)
	lw      $t2, 0x0058($sp)
	lw      $t3, 0x005C($sp)
	lwc1    $f8, 0x0018($t2)
	lwc1    $f4, 0x0024($t3)
	addiu   $t4, $sp, 0x0018
	mul.s   $f10, $f8, $f4
	lwc1    $f18, 0x0014($t4)
	nop
	add.s   $f16, $f18, $f10
	swc1    $f16, 0x0014($t4)
	lw      $t5, 0x0058($sp)
	lw      $t6, 0x005C($sp)
	lwc1    $f6, 0x001C($t5)
	lwc1    $f8, 0x0034($t6)
	addiu   $t7, $sp, 0x0018
	mul.s   $f4, $f6, $f8
	lwc1    $f18, 0x0014($t7)
	nop
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0014($t7)
	lw      $t8, 0x005C($sp)
	lw      $t9, 0x0058($sp)
	lwc1    $f16, 0x0008($t8)
	lwc1    $f6, 0x0010($t9)
	addiu   $t0, $sp, 0x0018
	mul.s   $f8, $f16, $f6
	swc1    $f8, 0x0018($t0)
	lw      $t1, 0x0058($sp)
	lw      $t2, 0x005C($sp)
	lwc1    $f18, 0x0014($t1)
	lwc1    $f4, 0x0018($t2)
	addiu   $t3, $sp, 0x0018
	mul.s   $f10, $f18, $f4
	lwc1    $f16, 0x0018($t3)
	nop
	add.s   $f6, $f16, $f10
	swc1    $f6, 0x0018($t3)
	lw      $t4, 0x0058($sp)
	lw      $t5, 0x005C($sp)
	lwc1    $f8, 0x0018($t4)
	lwc1    $f18, 0x0028($t5)
	addiu   $t6, $sp, 0x0018
	mul.s   $f4, $f8, $f18
	lwc1    $f16, 0x0018($t6)
	nop
	add.s   $f10, $f16, $f4
	swc1    $f10, 0x0018($t6)
	lw      $t7, 0x0058($sp)
	lw      $t8, 0x005C($sp)
	lwc1    $f6, 0x001C($t7)
	lwc1    $f8, 0x0038($t8)
	addiu   $t9, $sp, 0x0018
	mul.s   $f18, $f6, $f8
	lwc1    $f16, 0x0018($t9)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0018($t9)
	lw      $t0, 0x005C($sp)
	lw      $t1, 0x0058($sp)
	lwc1    $f10, 0x000C($t0)
	lwc1    $f6, 0x0010($t1)
	addiu   $t2, $sp, 0x0018
	mul.s   $f8, $f10, $f6
	swc1    $f8, 0x001C($t2)
	lw      $t3, 0x0058($sp)
	lw      $t4, 0x005C($sp)
	lwc1    $f16, 0x0014($t3)
	lwc1    $f18, 0x001C($t4)
	addiu   $t5, $sp, 0x0018
	mul.s   $f4, $f16, $f18
	lwc1    $f10, 0x001C($t5)
	nop
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x001C($t5)
	lw      $t6, 0x0058($sp)
	lw      $t7, 0x005C($sp)
	lwc1    $f8, 0x0018($t6)
	lwc1    $f16, 0x002C($t7)
	addiu   $t8, $sp, 0x0018
	mul.s   $f18, $f8, $f16
	lwc1    $f10, 0x001C($t8)
	nop
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x001C($t8)
	lw      $t9, 0x0058($sp)
	lw      $t0, 0x005C($sp)
	lwc1    $f6, 0x001C($t9)
	lwc1    $f8, 0x003C($t0)
	addiu   $t1, $sp, 0x0018
	mul.s   $f16, $f6, $f8
	lwc1    $f10, 0x001C($t1)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($t1)
	lw      $t2, 0x005C($sp)
	lw      $t3, 0x0058($sp)
	lwc1    $f4, 0x0000($t2)
	lwc1    $f6, 0x0020($t3)
	addiu   $t4, $sp, 0x0018
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t4)
	lw      $t5, 0x0058($sp)
	lw      $t6, 0x005C($sp)
	lwc1    $f10, 0x0024($t5)
	lwc1    $f16, 0x0010($t6)
	addiu   $t7, $sp, 0x0018
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0020($t7)
	nop
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0020($t7)
	lw      $t8, 0x0058($sp)
	lw      $t9, 0x005C($sp)
	lwc1    $f8, 0x0028($t8)
	lwc1    $f10, 0x0020($t9)
	addiu   $t0, $sp, 0x0018
	mul.s   $f16, $f8, $f10
	lwc1    $f4, 0x0020($t0)
	nop
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x0020($t0)
	lw      $t1, 0x0058($sp)
	lw      $t2, 0x005C($sp)
	lwc1    $f6, 0x002C($t1)
	lwc1    $f8, 0x0030($t2)
	addiu   $t3, $sp, 0x0018
	mul.s   $f10, $f6, $f8
	lwc1    $f4, 0x0020($t3)
	nop
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x0020($t3)
	lw      $t4, 0x005C($sp)
	lw      $t5, 0x0058($sp)
	lwc1    $f18, 0x0004($t4)
	lwc1    $f6, 0x0020($t5)
	addiu   $t6, $sp, 0x0018
	mul.s   $f8, $f18, $f6
	swc1    $f8, 0x0024($t6)
	lw      $t7, 0x0058($sp)
	lw      $t8, 0x005C($sp)
	lwc1    $f4, 0x0024($t7)
	lwc1    $f10, 0x0014($t8)
	addiu   $t9, $sp, 0x0018
	mul.s   $f16, $f4, $f10
	lwc1    $f18, 0x0024($t9)
	nop
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x0024($t9)
	lw      $t0, 0x0058($sp)
	lw      $t1, 0x005C($sp)
	lwc1    $f8, 0x0028($t0)
	lwc1    $f4, 0x0024($t1)
	addiu   $t2, $sp, 0x0018
	mul.s   $f10, $f8, $f4
	lwc1    $f18, 0x0024($t2)
	nop
	add.s   $f16, $f18, $f10
	swc1    $f16, 0x0024($t2)
	lw      $t3, 0x0058($sp)
	lw      $t4, 0x005C($sp)
	lwc1    $f6, 0x002C($t3)
	lwc1    $f8, 0x0034($t4)
	addiu   $t5, $sp, 0x0018
	mul.s   $f4, $f6, $f8
	lwc1    $f18, 0x0024($t5)
	nop
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0024($t5)
	lw      $t6, 0x005C($sp)
	lw      $t7, 0x0058($sp)
	lwc1    $f16, 0x0008($t6)
	lwc1    $f6, 0x0020($t7)
	addiu   $t8, $sp, 0x0018
	mul.s   $f8, $f16, $f6
	swc1    $f8, 0x0028($t8)
	lw      $t9, 0x0058($sp)
	lw      $t0, 0x005C($sp)
	lwc1    $f18, 0x0024($t9)
	lwc1    $f4, 0x0018($t0)
	addiu   $t1, $sp, 0x0018
	mul.s   $f10, $f18, $f4
	lwc1    $f16, 0x0028($t1)
	nop
	add.s   $f6, $f16, $f10
	swc1    $f6, 0x0028($t1)
	lw      $t2, 0x0058($sp)
	lw      $t3, 0x005C($sp)
	lwc1    $f8, 0x0028($t2)
	lwc1    $f18, 0x0028($t3)
	addiu   $t4, $sp, 0x0018
	mul.s   $f4, $f8, $f18
	lwc1    $f16, 0x0028($t4)
	nop
	add.s   $f10, $f16, $f4
	swc1    $f10, 0x0028($t4)
	lw      $t5, 0x0058($sp)
	lw      $t6, 0x005C($sp)
	lwc1    $f6, 0x002C($t5)
	lwc1    $f8, 0x0038($t6)
	addiu   $t7, $sp, 0x0018
	mul.s   $f18, $f6, $f8
	lwc1    $f16, 0x0028($t7)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0028($t7)
	lw      $t8, 0x005C($sp)
	lw      $t9, 0x0058($sp)
	lwc1    $f10, 0x000C($t8)
	lwc1    $f6, 0x0020($t9)
	addiu   $t0, $sp, 0x0018
	mul.s   $f8, $f10, $f6
	swc1    $f8, 0x002C($t0)
	lw      $t1, 0x0058($sp)
	lw      $t2, 0x005C($sp)
	lwc1    $f16, 0x0024($t1)
	lwc1    $f18, 0x001C($t2)
	addiu   $t3, $sp, 0x0018
	mul.s   $f4, $f16, $f18
	lwc1    $f10, 0x002C($t3)
	nop
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x002C($t3)
	lw      $t4, 0x0058($sp)
	lw      $t5, 0x005C($sp)
	lwc1    $f8, 0x0028($t4)
	lwc1    $f16, 0x002C($t5)
	addiu   $t6, $sp, 0x0018
	mul.s   $f18, $f8, $f16
	lwc1    $f10, 0x002C($t6)
	nop
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x002C($t6)
	lw      $t7, 0x0058($sp)
	lw      $t8, 0x005C($sp)
	lwc1    $f6, 0x002C($t7)
	lwc1    $f8, 0x003C($t8)
	addiu   $t9, $sp, 0x0018
	mul.s   $f16, $f6, $f8
	lwc1    $f10, 0x002C($t9)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($t9)
	lw      $t0, 0x005C($sp)
	lw      $t1, 0x0058($sp)
	lwc1    $f4, 0x0000($t0)
	lwc1    $f6, 0x0030($t1)
	addiu   $t2, $sp, 0x0018
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($t2)
	lw      $t3, 0x0058($sp)
	lw      $t4, 0x005C($sp)
	lwc1    $f10, 0x0034($t3)
	lwc1    $f16, 0x0010($t4)
	addiu   $t5, $sp, 0x0018
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0030($t5)
	nop
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0030($t5)
	lw      $t6, 0x0058($sp)
	lw      $t7, 0x005C($sp)
	lwc1    $f8, 0x0038($t6)
	lwc1    $f10, 0x0020($t7)
	addiu   $t8, $sp, 0x0018
	mul.s   $f16, $f8, $f10
	lwc1    $f4, 0x0030($t8)
	nop
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x0030($t8)
	lw      $t9, 0x0058($sp)
	lw      $t0, 0x005C($sp)
	lwc1    $f6, 0x003C($t9)
	lwc1    $f8, 0x0030($t0)
	addiu   $t1, $sp, 0x0018
	mul.s   $f10, $f6, $f8
	lwc1    $f4, 0x0030($t1)
	nop
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x0030($t1)
	lw      $t2, 0x005C($sp)
	lw      $t3, 0x0058($sp)
	lwc1    $f18, 0x0004($t2)
	lwc1    $f6, 0x0030($t3)
	addiu   $t4, $sp, 0x0018
	mul.s   $f8, $f18, $f6
	swc1    $f8, 0x0034($t4)
	lw      $t5, 0x0058($sp)
	lw      $t6, 0x005C($sp)
	lwc1    $f4, 0x0034($t5)
	lwc1    $f10, 0x0014($t6)
	addiu   $t7, $sp, 0x0018
	mul.s   $f16, $f4, $f10
	lwc1    $f18, 0x0034($t7)
	nop
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x0034($t7)
	lw      $t8, 0x0058($sp)
	lw      $t9, 0x005C($sp)
	lwc1    $f8, 0x0038($t8)
	lwc1    $f4, 0x0024($t9)
	addiu   $t0, $sp, 0x0018
	mul.s   $f10, $f8, $f4
	lwc1    $f18, 0x0034($t0)
	nop
	add.s   $f16, $f18, $f10
	swc1    $f16, 0x0034($t0)
	lw      $t1, 0x0058($sp)
	lw      $t2, 0x005C($sp)
	lwc1    $f6, 0x003C($t1)
	lwc1    $f8, 0x0034($t2)
	addiu   $t3, $sp, 0x0018
	mul.s   $f4, $f6, $f8
	lwc1    $f18, 0x0034($t3)
	nop
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0034($t3)
	lw      $t4, 0x005C($sp)
	lw      $t5, 0x0058($sp)
	lwc1    $f16, 0x0008($t4)
	lwc1    $f6, 0x0030($t5)
	addiu   $t6, $sp, 0x0018
	mul.s   $f8, $f16, $f6
	swc1    $f8, 0x0038($t6)
	lw      $t7, 0x0058($sp)
	lw      $t8, 0x005C($sp)
	lwc1    $f18, 0x0034($t7)
	lwc1    $f4, 0x0018($t8)
	addiu   $t9, $sp, 0x0018
	mul.s   $f10, $f18, $f4
	lwc1    $f16, 0x0038($t9)
	nop
	add.s   $f6, $f16, $f10
	swc1    $f6, 0x0038($t9)
	lw      $t0, 0x0058($sp)
	lw      $t1, 0x005C($sp)
	lwc1    $f8, 0x0038($t0)
	lwc1    $f18, 0x0028($t1)
	addiu   $t2, $sp, 0x0018
	mul.s   $f4, $f8, $f18
	lwc1    $f16, 0x0038($t2)
	nop
	add.s   $f10, $f16, $f4
	swc1    $f10, 0x0038($t2)
	lw      $t3, 0x0058($sp)
	lw      $t4, 0x005C($sp)
	lwc1    $f6, 0x003C($t3)
	lwc1    $f8, 0x0038($t4)
	addiu   $t5, $sp, 0x0018
	mul.s   $f18, $f6, $f8
	lwc1    $f16, 0x0038($t5)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0038($t5)
	lw      $t6, 0x005C($sp)
	lw      $t7, 0x0058($sp)
	lwc1    $f10, 0x000C($t6)
	lwc1    $f6, 0x0030($t7)
	addiu   $t8, $sp, 0x0018
	mul.s   $f8, $f10, $f6
	swc1    $f8, 0x003C($t8)
	lw      $t9, 0x0058($sp)
	lw      $t0, 0x005C($sp)
	lwc1    $f16, 0x0034($t9)
	lwc1    $f18, 0x001C($t0)
	addiu   $t1, $sp, 0x0018
	mul.s   $f4, $f16, $f18
	lwc1    $f10, 0x003C($t1)
	nop
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x003C($t1)
	lw      $t2, 0x0058($sp)
	lw      $t3, 0x005C($sp)
	lwc1    $f8, 0x0038($t2)
	lwc1    $f16, 0x002C($t3)
	addiu   $t4, $sp, 0x0018
	mul.s   $f18, $f8, $f16
	lwc1    $f10, 0x003C($t4)
	nop
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x003C($t4)
	lw      $t5, 0x0058($sp)
	lw      $t6, 0x005C($sp)
	lwc1    $f6, 0x003C($t5)
	lwc1    $f8, 0x003C($t6)
	addiu   $t7, $sp, 0x0018
	mul.s   $f16, $f6, $f8
	lwc1    $f10, 0x003C($t7)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x003C($t7)
	lw      $a1, 0x0060($sp)
	jal     face_math_801964A0
	addiu   $a0, $sp, 0x0018
	b       .L801970BC
	nop
.L801970BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

.globl face_math_801970CC
face_math_801970CC:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	sw      $a1, 0x000C($sp)
	b       .L801970E0
	nop
.L801970E0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_math_801970E8
face_math_801970E8:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	sw      $a1, 0x000C($sp)
	b       .L801970FC
	nop
.L801970FC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_math_80197104
face_math_80197104:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
.L80197118:
	sw      $0, 0x0018($sp)
.L8019711C:
	lw      $t7, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lw      $t0, 0x0018($sp)
	sll     $t8, $t7, 4
	addu    $t9, $t6, $t8
	sll     $t1, $t0, 2
	addu    $t2, $t9, $t1
	lwc1    $f4, 0x0000($t2)
	la.u    $a0, str_face_math_801B8A1C
	cvt.d.s $f6, $f4
	mfc1    $a3, $f6
	mfc1    $a2, $f7
	jal     gd_printf
	la.l    $a0, str_face_math_801B8A1C
	lw      $t3, 0x0018($sp)
	nop
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0004
	bnez    $at, .L8019711C
	sw      $t4, 0x0018($sp)
	la.u    $a0, str_face_math_801B8A20
	jal     gd_printf
	la.l    $a0, str_face_math_801B8A20
	lw      $t5, 0x001C($sp)
	nop
	addiu   $t7, $t5, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, .L80197118
	sw      $t7, 0x001C($sp)
	b       .L80197198
	nop
.L80197198:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_math_801971A8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $a0, 0x0020($sp)
	jal     gd_printf
	nop
	sw      $0, 0x001C($sp)
.L801971C8:
	lw      $t7, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	lwc1    $f4, 0x0000($t9)
	la.u    $a0, str_face_math_801B8A24
	cvt.d.s $f6, $f4
	mfc1    $a3, $f6
	mfc1    $a2, $f7
	jal     gd_printf
	la.l    $a0, str_face_math_801B8A24
	lw      $t0, 0x001C($sp)
	nop
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0004
	bnez    $at, .L801971C8
	sw      $t1, 0x001C($sp)
	la.u    $a0, str_face_math_801B8A28
	jal     gd_printf
	la.l    $a0, str_face_math_801B8A28
	b       .L80197220
	nop
.L80197220:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_math_80197230:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0078($sp)
	sw      $a1, 0x007C($sp)
	sw      $a2, 0x0080($sp)
	sw      $a3, 0x0084($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0074($sp)
	lwc1    $f6, 0x007C($sp)
	lwc1    $f10, 0x0080($sp)
	mul.s   $f8, $f6, $f6
	lwc1    $f4, 0x0084($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f6, $f4, $f4
	add.s   $f18, $f8, $f16
	jal     face_math_80193C70
	add.s   $f12, $f18, $f6
	swc1    $f0, 0x0028($sp)
	lwc1    $f10, 0x0028($sp)
	mtc1    $0, $f8
	nop
	c.eq.s  $f10, $f8
	nop
	bc1f    .L801972C4
	nop
	lw      $t6, 0x0088($sp)
	nop
	beqz    $t6, .L801972BC
	nop
	lw      $a0, 0x0078($sp)
	jal     face_math_801963C0
	nop
.L801972BC:
	b       .L801973A8
	nop
.L801972C4:
	lwc1    $f16, 0x0074($sp)
	lwc1    $f18, 0x0028($sp)
	mul.s   $f4, $f16, $f16
	nop
	mul.s   $f6, $f18, $f18
	jal     face_math_80193C70
	add.s   $f12, $f4, $f6
	swc1    $f0, 0x0024($sp)
	lwc1    $f10, 0x0074($sp)
	lwc1    $f8, 0x0024($sp)
	nop
	div.s   $f16, $f10, $f8
	swc1    $f16, 0x0030($sp)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x0024($sp)
	nop
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x002C($sp)
	lwc1    $f10, 0x0080($sp)
	lwc1    $f16, 0x0028($sp)
	neg.s   $f8, $f10
	nop
	div.s   $f18, $f8, $f16
	swc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x007C($sp)
	lwc1    $f10, 0x0028($sp)
	neg.s   $f6, $f4
	nop
	div.s   $f8, $f6, $f10
	swc1    $f8, 0x001C($sp)
	lwc1    $f16, 0x0084($sp)
	lwc1    $f4, 0x0028($sp)
	neg.s   $f18, $f16
	nop
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x0020($sp)
	lw      $a2, 0x002C($sp)
	lw      $a3, 0x0030($sp)
	addiu   $a0, $sp, 0x0034
	jal     face_math_80196114
	addiu   $a1, $sp, 0x0018
	lw      $t7, 0x0088($sp)
	nop
	bnez    $t7, .L80197394
	nop
	lw      $t8, 0x0078($sp)
	addiu   $a1, $sp, 0x0034
	move    $a0, $t8
	jal     face_math_80196754
	move    $a2, $t8
	b       .L801973A0
	nop
.L80197394:
	lw      $a1, 0x0078($sp)
	jal     face_math_801964A0
	addiu   $a0, $sp, 0x0034
.L801973A0:
	b       .L801973A8
	nop
.L801973A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop
	nop
	nop

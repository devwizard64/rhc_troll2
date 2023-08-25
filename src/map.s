.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

map_80380690:
	addiu   $sp, $sp, -0x0040
	lwc1    $f14, 0x0010($a1)
	lwc1    $f16, 0x0000($a1)
	lwc1    $f4, 0x0004($a1)
	lwc1    $f6, 0x000C($a1)
	add.s   $f18, $f4, $f6
	lwc1    $f8, 0x0008($a1)
	swc1    $f8, 0x0028($sp)
	sw      $0, 0x0004($sp)
	li      $at, 0x43480000
	mtc1    $at, $f10
	nop
	c.lt.s  $f10, $f14
	nop
	bc1f    .L803806DC
	nop
	li      $at, 0x43480000
	mtc1    $at, $f14
	nop
.L803806DC:
	beqz    $a0, .L80380DD0
	nop
.L803806E4:
	lw      $a2, 0x0004($a0)
	lw      $a0, 0x0000($a0)
	lh      $t6, 0x0006($a2)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f18, $f6
	nop
	bc1t    .L8038072C
	nop
	lh      $t7, 0x0008($a2)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	c.lt.s  $f10, $f18
	nop
	bc1f    .L80380734
	nop
.L8038072C:
	b       .L80380DC8
	nop
.L80380734:
	lwc1    $f4, 0x001C($a2)
	lwc1    $f8, 0x0020($a2)
	mul.s   $f6, $f4, $f16
	nop
	mul.s   $f10, $f8, $f18
	lwc1    $f8, 0x0024($a2)
	add.s   $f4, $f6, $f10
	lwc1    $f6, 0x0028($sp)
	mul.s   $f10, $f8, $f6
	lwc1    $f6, 0x0028($a2)
	add.s   $f8, $f4, $f10
	add.s   $f12, $f8, $f6
	neg.s   $f4, $f14
	c.lt.s  $f12, $f4
	nop
	bc1t    .L80380788
	nop
	c.lt.s  $f14, $f12
	nop
	bc1f    .L80380790
	nop
.L80380788:
	b       .L80380DC8
	nop
.L80380790:
	swc1    $f16, 0x0024($sp)
	lwc1    $f10, 0x0028($sp)
	swc1    $f10, 0x0020($sp)
	lb      $t8, 0x0004($a2)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80380A3C
	nop
	lh      $t0, 0x000E($a2)
	subu    $t1, $0, $t0
	mtc1    $t1, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x001C($sp)
	lh      $t2, 0x0014($a2)
	subu    $t3, $0, $t2
	mtc1    $t3, $f4
	nop
	cvt.s.w $f10, $f4
	swc1    $f10, 0x0018($sp)
	lh      $t4, 0x001A($a2)
	subu    $t5, $0, $t4
	mtc1    $t5, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x0014($sp)
	lh      $t6, 0x000C($a2)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f10, $f4
	swc1    $f10, 0x0010($sp)
	lh      $t7, 0x0012($a2)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x000C($sp)
	lh      $t8, 0x0018($a2)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f10, $f4
	swc1    $f10, 0x0008($sp)
	lwc1    $f8, 0x001C($a2)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80380944
	nop
	lwc1    $f10, 0x0020($sp)
	lwc1    $f4, 0x001C($sp)
	neg.s   $f8, $f10
	lwc1    $f10, 0x000C($sp)
	sub.s   $f6, $f4, $f8
	lwc1    $f8, 0x0010($sp)
	sub.s   $f10, $f10, $f8
	mul.s   $f6, $f6, $f10
	lwc1    $f10, 0x0018($sp)
	sub.s   $f10, $f10, $f4
	sub.s   $f4, $f8, $f18
	mul.s   $f8, $f4, $f10
	mtc1    $0, $f10
	sub.s   $f4, $f8, $f6
	c.lt.s  $f10, $f4
	nop
	bc1f    .L8038089C
	nop
	b       .L80380DC8
	nop
.L8038089C:
	lwc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0018($sp)
	neg.s   $f4, $f6
	lwc1    $f6, 0x0008($sp)
	sub.s   $f10, $f8, $f4
	lwc1    $f4, 0x000C($sp)
	sub.s   $f6, $f6, $f4
	mul.s   $f10, $f10, $f6
	lwc1    $f6, 0x0014($sp)
	sub.s   $f6, $f6, $f8
	sub.s   $f8, $f4, $f18
	mul.s   $f4, $f8, $f6
	mtc1    $0, $f6
	sub.s   $f8, $f4, $f10
	c.lt.s  $f6, $f8
	nop
	bc1f    .L803808EC
	nop
	b       .L80380DC8
	nop
.L803808EC:
	lwc1    $f10, 0x0020($sp)
	lwc1    $f4, 0x0014($sp)
	neg.s   $f8, $f10
	lwc1    $f10, 0x0010($sp)
	sub.s   $f6, $f4, $f8
	lwc1    $f8, 0x0008($sp)
	sub.s   $f10, $f10, $f8
	mul.s   $f6, $f6, $f10
	lwc1    $f10, 0x001C($sp)
	sub.s   $f10, $f10, $f4
	sub.s   $f4, $f8, $f18
	mul.s   $f8, $f4, $f10
	mtc1    $0, $f10
	sub.s   $f4, $f8, $f6
	c.lt.s  $f10, $f4
	nop
	bc1f    .L8038093C
	nop
	b       .L80380DC8
	nop
.L8038093C:
	b       .L80380A34
	nop
.L80380944:
	lwc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	neg.s   $f4, $f6
	lwc1    $f6, 0x000C($sp)
	sub.s   $f10, $f8, $f4
	lwc1    $f4, 0x0010($sp)
	sub.s   $f6, $f6, $f4
	mul.s   $f10, $f10, $f6
	lwc1    $f6, 0x0018($sp)
	sub.s   $f6, $f6, $f8
	sub.s   $f8, $f4, $f18
	mul.s   $f4, $f8, $f6
	mtc1    $0, $f6
	sub.s   $f8, $f4, $f10
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80380994
	nop
	b       .L80380DC8
	nop
.L80380994:
	lwc1    $f10, 0x0020($sp)
	lwc1    $f4, 0x0018($sp)
	neg.s   $f8, $f10
	lwc1    $f10, 0x0008($sp)
	sub.s   $f6, $f4, $f8
	lwc1    $f8, 0x000C($sp)
	sub.s   $f10, $f10, $f8
	mul.s   $f6, $f6, $f10
	lwc1    $f10, 0x0014($sp)
	sub.s   $f10, $f10, $f4
	sub.s   $f4, $f8, $f18
	mul.s   $f8, $f4, $f10
	mtc1    $0, $f10
	sub.s   $f4, $f8, $f6
	c.lt.s  $f4, $f10
	nop
	bc1f    .L803809E4
	nop
	b       .L80380DC8
	nop
.L803809E4:
	lwc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0014($sp)
	neg.s   $f4, $f6
	lwc1    $f6, 0x0010($sp)
	sub.s   $f10, $f8, $f4
	lwc1    $f4, 0x0008($sp)
	sub.s   $f6, $f6, $f4
	mul.s   $f10, $f10, $f6
	lwc1    $f6, 0x001C($sp)
	sub.s   $f6, $f6, $f8
	sub.s   $f8, $f4, $f18
	mul.s   $f4, $f8, $f6
	mtc1    $0, $f6
	sub.s   $f8, $f4, $f10
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80380A34
	nop
	b       .L80380DC8
	nop
.L80380A34:
	b       .L80380CA0
	nop
.L80380A3C:
	lh      $t9, 0x000A($a2)
	mtc1    $t9, $f4
	nop
	cvt.s.w $f10, $f4
	swc1    $f10, 0x001C($sp)
	lh      $t0, 0x0010($a2)
	mtc1    $t0, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x0018($sp)
	lh      $t1, 0x0016($a2)
	mtc1    $t1, $f4
	nop
	cvt.s.w $f10, $f4
	swc1    $f10, 0x0014($sp)
	lh      $t2, 0x000C($a2)
	mtc1    $t2, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x0010($sp)
	lh      $t3, 0x0012($a2)
	mtc1    $t3, $f4
	nop
	cvt.s.w $f10, $f4
	swc1    $f10, 0x000C($sp)
	lh      $t4, 0x0018($a2)
	mtc1    $t4, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x0008($sp)
	lwc1    $f4, 0x0024($a2)
	mtc1    $0, $f10
	nop
	c.lt.s  $f10, $f4
	nop
	bc1f    .L80380BBC
	nop
	lwc1    $f8, 0x001C($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f10, 0x000C($sp)
	sub.s   $f4, $f8, $f6
	lwc1    $f6, 0x0010($sp)
	sub.s   $f10, $f10, $f6
	mul.s   $f4, $f4, $f10
	lwc1    $f10, 0x0018($sp)
	sub.s   $f10, $f10, $f8
	sub.s   $f8, $f6, $f18
	mul.s   $f6, $f8, $f10
	mtc1    $0, $f10
	sub.s   $f8, $f6, $f4
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80380B1C
	nop
	b       .L80380DC8
	nop
.L80380B1C:
	lwc1    $f6, 0x0018($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f10, 0x0008($sp)
	sub.s   $f8, $f6, $f4
	lwc1    $f4, 0x000C($sp)
	sub.s   $f10, $f10, $f4
	mul.s   $f8, $f8, $f10
	lwc1    $f10, 0x0014($sp)
	sub.s   $f10, $f10, $f6
	sub.s   $f6, $f4, $f18
	mul.s   $f4, $f6, $f10
	mtc1    $0, $f10
	sub.s   $f6, $f4, $f8
	c.lt.s  $f10, $f6
	nop
	bc1f    .L80380B68
	nop
	b       .L80380DC8
	nop
.L80380B68:
	lwc1    $f4, 0x0014($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x0010($sp)
	sub.s   $f6, $f4, $f8
	lwc1    $f8, 0x0008($sp)
	sub.s   $f10, $f10, $f8
	mul.s   $f6, $f6, $f10
	lwc1    $f10, 0x001C($sp)
	sub.s   $f10, $f10, $f4
	sub.s   $f4, $f8, $f18
	mul.s   $f8, $f4, $f10
	mtc1    $0, $f10
	sub.s   $f4, $f8, $f6
	c.lt.s  $f10, $f4
	nop
	bc1f    .L80380BB4
	nop
	b       .L80380DC8
	nop
.L80380BB4:
	b       .L80380CA0
	nop
.L80380BBC:
	lwc1    $f8, 0x001C($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f10, 0x000C($sp)
	sub.s   $f4, $f8, $f6
	lwc1    $f6, 0x0010($sp)
	sub.s   $f10, $f10, $f6
	mul.s   $f4, $f4, $f10
	lwc1    $f10, 0x0018($sp)
	sub.s   $f10, $f10, $f8
	sub.s   $f8, $f6, $f18
	mul.s   $f6, $f8, $f10
	mtc1    $0, $f10
	sub.s   $f8, $f6, $f4
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80380C08
	nop
	b       .L80380DC8
	nop
.L80380C08:
	lwc1    $f6, 0x0018($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f10, 0x0008($sp)
	sub.s   $f8, $f6, $f4
	lwc1    $f4, 0x000C($sp)
	sub.s   $f10, $f10, $f4
	mul.s   $f8, $f8, $f10
	lwc1    $f10, 0x0014($sp)
	sub.s   $f10, $f10, $f6
	sub.s   $f6, $f4, $f18
	mul.s   $f4, $f6, $f10
	mtc1    $0, $f10
	sub.s   $f6, $f4, $f8
	c.lt.s  $f6, $f10
	nop
	bc1f    .L80380C54
	nop
	b       .L80380DC8
	nop
.L80380C54:
	lwc1    $f4, 0x0014($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x0010($sp)
	sub.s   $f6, $f4, $f8
	lwc1    $f8, 0x0008($sp)
	sub.s   $f10, $f10, $f8
	mul.s   $f6, $f6, $f10
	lwc1    $f10, 0x001C($sp)
	sub.s   $f10, $f10, $f4
	sub.s   $f4, $f8, $f18
	mul.s   $f8, $f4, $f10
	mtc1    $0, $f10
	sub.s   $f4, $f8, $f6
	c.lt.s  $f4, $f10
	nop
	bc1f    .L80380CA0
	nop
	b       .L80380DC8
	nop
.L80380CA0:
	lui     $t5, %hi(object_80361180)
	lh      $t5, %lo(object_80361180)($t5)
	beqz    $t5, .L80380CD0
	nop
	lb      $t6, 0x0004($a2)
	andi    $t7, $t6, 0x0002
	beqz    $t7, .L80380CC8
	nop
	b       .L80380DC8
	nop
.L80380CC8:
	b       .L80380D60
	nop
.L80380CD0:
	lh      $t8, 0x0000($a2)
	li      $at, 0x0072
	bne     $t8, $at, .L80380CE8
	nop
	b       .L80380DC8
	nop
.L80380CE8:
	lh      $t9, 0x0000($a2)
	li      $at, 0x007B
	bne     $t9, $at, .L80380D60
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	beqz    $t0, .L80380D20
	nop
	lh      $t1, 0x0074($t0)
	andi    $t2, $t1, 0x0040
	beqz    $t2, .L80380D20
	nop
	b       .L80380DC8
	nop
.L80380D20:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	beqz    $t3, .L80380D60
	nop
	lui     $t4, %hi(obj_mario)
	lw      $t4, %lo(obj_mario)($t4)
	bne     $t3, $t4, .L80380D60
	nop
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	lw      $t6, 0x0004($t5)
	andi    $t7, $t6, 0x0002
	beqz    $t7, .L80380D60
	nop
	b       .L80380DC8
	nop
.L80380D60:
	sub.s   $f6, $f14, $f12
	lwc1    $f8, 0x001C($a2)
	lwc1    $f10, 0x0000($a1)
	mul.s   $f4, $f8, $f6
	add.s   $f8, $f10, $f4
	swc1    $f8, 0x0000($a1)
	sub.s   $f10, $f14, $f12
	lwc1    $f6, 0x0024($a2)
	lwc1    $f8, 0x0008($a1)
	mul.s   $f4, $f6, $f10
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x0008($a1)
	lh      $t8, 0x0016($a1)
	slti    $at, $t8, 0x0004
	beqz    $at, .L80380DBC
	nop
	lh      $t9, 0x0016($a1)
	sll     $t0, $t9, 2
	addu    $t1, $a1, $t0
	sw      $a2, 0x0018($t1)
	lh      $t2, 0x0016($a1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x0016($a1)
.L80380DBC:
	lw      $t4, 0x0004($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0004($sp)
.L80380DC8:
	bnez    $a0, .L803806E4
	nop
.L80380DD0:
	b       .L80380DE0
	lw      $v0, 0x0004($sp)
	b       .L80380DE0
	nop
.L80380DE0:
	jr      $ra
	addiu   $sp, $sp, 0x0040

.globl map_80380DE8
map_80380DE8:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	sw      $0, 0x001C($sp)
	lwc1    $f4, 0x0054($sp)
	swc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x0058($sp)
	swc1    $f6, 0x0030($sp)
	lw      $t6, 0x0048($sp)
	lwc1    $f8, 0x0000($t6)
	swc1    $f8, 0x0020($sp)
	lw      $t7, 0x004C($sp)
	lwc1    $f10, 0x0000($t7)
	swc1    $f10, 0x0024($sp)
	lw      $t8, 0x0050($sp)
	lwc1    $f16, 0x0000($t8)
	swc1    $f16, 0x0028($sp)
	sh      $0, 0x0036($sp)
	jal     map_80380E8C
	addiu   $a0, $sp, 0x0020
	sw      $v0, 0x001C($sp)
	lwc1    $f18, 0x0020($sp)
	lw      $t9, 0x0048($sp)
	swc1    $f18, 0x0000($t9)
	lwc1    $f4, 0x0024($sp)
	lw      $t0, 0x004C($sp)
	swc1    $f4, 0x0000($t0)
	lwc1    $f6, 0x0028($sp)
	lw      $t1, 0x0050($sp)
	swc1    $f6, 0x0000($t1)
	b       .L80380E7C
	lw      $v0, 0x001C($sp)
	b       .L80380E7C
	nop
.L80380E7C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl map_80380E8C
map_80380E8C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x002C($sp)
	lw      $t6, 0x0038($sp)
	lwc1    $f4, 0x0000($t6)
	trunc.w.s $f6, $f4
	mfc1    $t8, $f6
	nop
	sh      $t8, 0x002A($sp)
	lw      $t9, 0x0038($sp)
	lwc1    $f8, 0x0008($t9)
	trunc.w.s $f10, $f8
	mfc1    $t1, $f10
	nop
	sh      $t1, 0x0028($sp)
	lw      $t2, 0x0038($sp)
	sh      $0, 0x0016($t2)
	lh      $t3, 0x002A($sp)
	slti    $at, $t3, -0x1FFF
	bnez    $at, .L80380EF4
	nop
	slti    $at, $t3, 0x2000
	bnez    $at, .L80380EFC
	nop
.L80380EF4:
	b       .L80381024
	lw      $v0, 0x002C($sp)
.L80380EFC:
	lh      $t4, 0x0028($sp)
	slti    $at, $t4, -0x1FFF
	bnez    $at, .L80380F18
	nop
	slti    $at, $t4, 0x2000
	bnez    $at, .L80380F20
	nop
.L80380F18:
	b       .L80381024
	lw      $v0, 0x002C($sp)
.L80380F20:
	lh      $t5, 0x002A($sp)
	addiu   $t6, $t5, 0x2000
	bgez    $t6, .L80380F38
	sra     $t7, $t6, 10
	addiu   $at, $t6, 0x03FF
	sra     $t7, $at, 10
.L80380F38:
	andi    $t8, $t7, 0x000F
	sh      $t8, 0x0032($sp)
	lh      $t9, 0x0028($sp)
	addiu   $t0, $t9, 0x2000
	bgez    $t0, .L80380F58
	sra     $t1, $t0, 10
	addiu   $at, $t0, 0x03FF
	sra     $t1, $at, 10
.L80380F58:
	andi    $t2, $t1, 0x000F
	sh      $t2, 0x0030($sp)
	lh      $t3, 0x0030($sp)
	lh      $t5, 0x0032($sp)
	lui     $t8, %hi(map_data_8038D698+0x10)
	sll     $t4, $t3, 2
	sll     $t6, $t5, 2
	subu    $t4, $t4, $t3
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	sll     $t4, $t4, 7
	addu    $t7, $t4, $t6
	addu    $t8, $t8, $t7
	lw      $t8, %lo(map_data_8038D698+0x10)($t8)
	sw      $t8, 0x0034($sp)
	lw      $a0, 0x0034($sp)
	jal     map_80380690
	lw      $a1, 0x0038($sp)
	lw      $t9, 0x002C($sp)
	move    $s0, $v0
	addu    $t0, $t9, $s0
	sw      $t0, 0x002C($sp)
	lh      $t1, 0x0030($sp)
	lh      $t3, 0x0032($sp)
	lui     $t6, %hi(map_data_8038BE98+0x10)
	sll     $t2, $t1, 2
	sll     $t5, $t3, 2
	subu    $t2, $t2, $t1
	subu    $t5, $t5, $t3
	sll     $t5, $t5, 3
	sll     $t2, $t2, 7
	addu    $t4, $t2, $t5
	addu    $t6, $t6, $t4
	lw      $t6, %lo(map_data_8038BE98+0x10)($t6)
	sw      $t6, 0x0034($sp)
	lw      $a0, 0x0034($sp)
	jal     map_80380690
	lw      $a1, 0x0038($sp)
	lw      $t7, 0x002C($sp)
	move    $s0, $v0
	addu    $t8, $t7, $s0
	sw      $t8, 0x002C($sp)
	lui     $t9, %hi(object_8033D274+0x04)
	lh      $t9, %lo(object_8033D274+0x04)($t9)
	lui     $at, %hi(object_8033D274+0x04)
	addiu   $t0, $t9, 0x0001
	sh      $t0, %lo(object_8033D274+0x04)($at)
	b       .L80381024
	lw      $v0, 0x002C($sp)
	b       .L80381024
	nop
.L80381024:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

map_80381038:
	addiu   $sp, $sp, -0x0038
	sw      $0, 0x0018($sp)
	sw      $0, 0x0018($sp)
	beqz    $a0, .L8038124C
	nop
.L8038104C:
	lw      $t0, 0x0004($a0)
	lw      $a0, 0x0000($a0)
	lh      $t1, 0x000A($t0)
	lh      $t2, 0x000E($t0)
	lh      $t4, 0x0014($t0)
	lh      $t3, 0x0010($t0)
	subu    $t6, $t2, $a3
	subu    $t7, $t3, $t1
	multu   $t6, $t7
	subu    $t6, $t4, $t2
	subu    $t9, $t1, $a1
	mflo    $t8
	nop
	nop
	multu   $t9, $t6
	mflo    $t7
	subu    $t9, $t8, $t7
	blez    $t9, .L803810A0
	nop
	b       .L80381244
	nop
.L803810A0:
	lh      $t5, 0x0016($t0)
	lh      $t6, 0x001A($t0)
	sw      $t6, 0x001C($sp)
	subu    $t8, $t4, $a3
	subu    $t7, $t5, $t3
	multu   $t8, $t7
	lw      $t8, 0x001C($sp)
	subu    $t6, $t3, $a1
	subu    $t7, $t8, $t4
	mflo    $t9
	nop
	nop
	multu   $t6, $t7
	mflo    $t8
	subu    $t6, $t9, $t8
	blez    $t6, .L803810EC
	nop
	b       .L80381244
	nop
.L803810EC:
	lw      $t7, 0x001C($sp)
	subu    $t8, $t1, $t5
	subu    $t9, $t7, $a3
	multu   $t9, $t8
	subu    $t9, $t5, $a1
	subu    $t8, $t2, $t7
	mflo    $t6
	nop
	nop
	multu   $t9, $t8
	mflo    $t7
	subu    $t9, $t6, $t7
	blez    $t9, .L8038112C
	nop
	b       .L80381244
	nop
.L8038112C:
	lui     $t8, %hi(object_80361180)
	lh      $t8, %lo(object_80361180)($t8)
	beqz    $t8, .L8038115C
	nop
	lb      $t6, 0x0004($t0)
	andi    $t7, $t6, 0x0002
	beqz    $t7, .L80381154
	nop
	b       .L80381244
	nop
.L80381154:
	b       .L80381174
	nop
.L8038115C:
	lh      $t9, 0x0000($t0)
	li      $at, 0x0072
	bne     $t9, $at, .L80381174
	nop
	b       .L80381244
	nop
.L80381174:
	lwc1    $f4, 0x001C($t0)
	swc1    $f4, 0x0014($sp)
	lwc1    $f6, 0x0020($t0)
	swc1    $f6, 0x0010($sp)
	lwc1    $f8, 0x0024($t0)
	swc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x0028($t0)
	swc1    $f10, 0x0008($sp)
	lwc1    $f16, 0x0010($sp)
	mtc1    $0, $f18
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    .L803811B8
	nop
	b       .L80381244
	nop
.L803811B8:
	mtc1    $a1, $f4
	mtc1    $a3, $f18
	lwc1    $f8, 0x0014($sp)
	cvt.s.w $f6, $f4
	lwc1    $f16, 0x000C($sp)
	cvt.s.w $f4, $f18
	mul.s   $f10, $f6, $f8
	lwc1    $f18, 0x0008($sp)
	mul.s   $f6, $f16, $f4
	add.s   $f8, $f10, $f6
	lwc1    $f10, 0x0010($sp)
	add.s   $f16, $f8, $f18
	neg.s   $f4, $f16
	div.s   $f6, $f4, $f10
	swc1    $f6, 0x0004($sp)
	mtc1    $a2, $f4
	li      $at, 0xC29C0000
	mtc1    $at, $f18
	lwc1    $f8, 0x0004($sp)
	cvt.s.w $f10, $f4
	sub.s   $f16, $f8, $f18
	mtc1    $0, $f8
	sub.s   $f6, $f10, $f16
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8038122C
	nop
	b       .L80381244
	nop
.L8038122C:
	lwc1    $f18, 0x0004($sp)
	lw      $t8, 0x0048($sp)
	swc1    $f18, 0x0000($t8)
	sw      $t0, 0x0018($sp)
	b       .L8038124C
	nop
.L80381244:
	bnez    $a0, .L8038104C
	nop
.L8038124C:
	b       .L8038125C
	lw      $v0, 0x0018($sp)
	b       .L8038125C
	nop
.L8038125C:
	jr      $ra
	addiu   $sp, $sp, 0x0038

.globl map_80381264
map_80381264:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	swc1    $f12, 0x0040($sp)
	swc1    $f14, 0x0044($sp)
	lui     $at, %hi(map_8038BB94)
	lwc1    $f4, %lo(map_8038BB94)($at)
	swc1    $f4, 0x002C($sp)
	lui     $at, %hi(map_8038BB98)
	lwc1    $f6, %lo(map_8038BB98)($at)
	swc1    $f6, 0x0028($sp)
	lwc1    $f8, 0x0040($sp)
	trunc.w.s $f10, $f8
	mfc1    $t7, $f10
	nop
	sh      $t7, 0x0026($sp)
	lwc1    $f16, 0x0044($sp)
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sh      $t9, 0x0024($sp)
	lwc1    $f4, 0x0048($sp)
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	sh      $t1, 0x0022($sp)
	lw      $t2, 0x004C($sp)
	sw      $0, 0x0000($t2)
	lh      $t3, 0x0026($sp)
	slti    $at, $t3, -0x1FFF
	bnez    $at, .L803812F4
	nop
	slti    $at, $t3, 0x2000
	bnez    $at, .L803812FC
	nop
.L803812F4:
	b       .L80381460
	lwc1    $f0, 0x002C($sp)
.L803812FC:
	lh      $t4, 0x0022($sp)
	slti    $at, $t4, -0x1FFF
	bnez    $at, .L80381318
	nop
	slti    $at, $t4, 0x2000
	bnez    $at, .L80381320
	nop
.L80381318:
	b       .L80381460
	lwc1    $f0, 0x002C($sp)
.L80381320:
	lh      $t5, 0x0026($sp)
	addiu   $t6, $t5, 0x2000
	bgez    $t6, .L80381338
	sra     $t7, $t6, 10
	addiu   $at, $t6, 0x03FF
	sra     $t7, $at, 10
.L80381338:
	andi    $t8, $t7, 0x000F
	sh      $t8, 0x003C($sp)
	lh      $t9, 0x0022($sp)
	addiu   $t0, $t9, 0x2000
	bgez    $t0, .L80381358
	sra     $t1, $t0, 10
	addiu   $at, $t0, 0x03FF
	sra     $t1, $at, 10
.L80381358:
	andi    $t2, $t1, 0x000F
	sh      $t2, 0x003E($sp)
	lh      $t3, 0x003E($sp)
	lh      $t5, 0x003C($sp)
	lui     $t8, %hi(map_data_8038D698+0x08)
	sll     $t4, $t3, 2
	sll     $t6, $t5, 2
	subu    $t4, $t4, $t3
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	sll     $t4, $t4, 7
	addu    $t7, $t4, $t6
	addu    $t8, $t8, $t7
	lw      $t8, %lo(map_data_8038D698+0x08)($t8)
	sw      $t8, 0x0030($sp)
	addiu   $t9, $sp, 0x0028
	sw      $t9, 0x0010($sp)
	lw      $a0, 0x0030($sp)
	lh      $a1, 0x0026($sp)
	lh      $a2, 0x0024($sp)
	jal     map_80381038
	lh      $a3, 0x0022($sp)
	sw      $v0, 0x0034($sp)
	lh      $t0, 0x003E($sp)
	lh      $t2, 0x003C($sp)
	lui     $t4, %hi(map_data_8038BE98+0x08)
	sll     $t1, $t0, 2
	sll     $t3, $t2, 2
	subu    $t1, $t1, $t0
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 3
	sll     $t1, $t1, 7
	addu    $t5, $t1, $t3
	addu    $t4, $t4, $t5
	lw      $t4, %lo(map_data_8038BE98+0x08)($t4)
	sw      $t4, 0x0030($sp)
	addiu   $t6, $sp, 0x002C
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0030($sp)
	lh      $a1, 0x0026($sp)
	lh      $a2, 0x0024($sp)
	jal     map_80381038
	lh      $a3, 0x0022($sp)
	sw      $v0, 0x0038($sp)
	lwc1    $f8, 0x0028($sp)
	lwc1    $f10, 0x002C($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80381430
	nop
	lw      $t7, 0x0034($sp)
	sw      $t7, 0x0038($sp)
	lwc1    $f16, 0x0028($sp)
	swc1    $f16, 0x002C($sp)
.L80381430:
	lw      $t8, 0x0038($sp)
	lw      $t9, 0x004C($sp)
	sw      $t8, 0x0000($t9)
	lui     $t0, %hi(object_8033D274+0x02)
	lh      $t0, %lo(object_8033D274+0x02)($t0)
	lui     $at, %hi(object_8033D274+0x02)
	addiu   $t2, $t0, 0x0001
	sh      $t2, %lo(object_8033D274+0x02)($at)
	b       .L80381460
	lwc1    $f0, 0x002C($sp)
	b       .L80381460
	nop
.L80381460:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

map_80381470:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     map_80381900
	lw      $a2, 0x00A8($t6)
	swc1    $f0, 0x0018($sp)
	b       .L803814A8
	lwc1    $f0, 0x0018($sp)
	b       .L803814A8
	nop
.L803814A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl map_803814B8
map_803814B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lwc1    $f12, 0x0020($sp)
	lwc1    $f14, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     map_80381900
	addiu   $a3, $sp, 0x001C
	swc1    $f0, 0x0018($sp)
	lw      $t6, 0x002C($sp)
	sw      $0, 0x0000($t6)
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8038154C
	nop
	lw      $t8, 0x001C($sp)
	lui     $at, %hi(map_8038BE30+0x10)
	lwc1    $f4, 0x001C($t8)
	swc1    $f4, %lo(map_8038BE30+0x10)($at)
	lw      $t9, 0x001C($sp)
	lui     $at, %hi(map_8038BE30+0x14)
	lwc1    $f6, 0x0020($t9)
	swc1    $f6, %lo(map_8038BE30+0x14)($at)
	lw      $t0, 0x001C($sp)
	lui     $at, %hi(map_8038BE30+0x18)
	lwc1    $f8, 0x0024($t0)
	swc1    $f8, %lo(map_8038BE30+0x18)($at)
	lw      $t1, 0x001C($sp)
	lui     $at, %hi(map_8038BE30+0x1C)
	lwc1    $f10, 0x0028($t1)
	swc1    $f10, %lo(map_8038BE30+0x1C)($at)
	lw      $t3, 0x002C($sp)
	la.u    $t2, map_8038BE30
	la.l    $t2, map_8038BE30
	sw      $t2, 0x0000($t3)
.L8038154C:
	b       .L8038155C
	lwc1    $f0, 0x0018($sp)
	b       .L8038155C
	nop
.L8038155C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

map_8038156C:
	addiu   $sp, $sp, -0x0038
	sw      $0, 0x0004($sp)
	beqz    $a0, .L8038177C
	nop
.L8038157C:
	lw      $t0, 0x0004($a0)
	lw      $a0, 0x0000($a0)
	lh      $t1, 0x000A($t0)
	lh      $t2, 0x000E($t0)
	lh      $t3, 0x0010($t0)
	lh      $t4, 0x0014($t0)
	subu    $t6, $t2, $a3
	subu    $t7, $t3, $t1
	multu   $t6, $t7
	subu    $t6, $t4, $t2
	subu    $t9, $t1, $a1
	mflo    $t8
	nop
	nop
	multu   $t9, $t6
	mflo    $t7
	subu    $t9, $t8, $t7
	bgez    $t9, .L803815D0
	nop
	b       .L80381774
	nop
.L803815D0:
	lh      $t5, 0x0016($t0)
	lh      $t6, 0x001A($t0)
	sw      $t6, 0x001C($sp)
	subu    $t8, $t4, $a3
	subu    $t7, $t5, $t3
	multu   $t8, $t7
	lw      $t8, 0x001C($sp)
	subu    $t6, $t3, $a1
	subu    $t7, $t8, $t4
	mflo    $t9
	nop
	nop
	multu   $t6, $t7
	mflo    $t8
	subu    $t6, $t9, $t8
	bgez    $t6, .L8038161C
	nop
	b       .L80381774
	nop
.L8038161C:
	lw      $t7, 0x001C($sp)
	subu    $t8, $t1, $t5
	subu    $t9, $t7, $a3
	multu   $t9, $t8
	subu    $t9, $t5, $a1
	subu    $t8, $t2, $t7
	mflo    $t6
	nop
	nop
	multu   $t9, $t8
	mflo    $t7
	subu    $t9, $t6, $t7
	bgez    $t9, .L8038165C
	nop
	b       .L80381774
	nop
.L8038165C:
	lui     $t8, %hi(object_80361180)
	lh      $t8, %lo(object_80361180)($t8)
	beqz    $t8, .L8038168C
	nop
	lb      $t6, 0x0004($t0)
	andi    $t7, $t6, 0x0002
	beqz    $t7, .L80381684
	nop
	b       .L80381774
	nop
.L80381684:
	b       .L803816A4
	nop
.L8038168C:
	lh      $t9, 0x0000($t0)
	li      $at, 0x0072
	bne     $t9, $at, .L803816A4
	nop
	b       .L80381774
	nop
.L803816A4:
	lwc1    $f4, 0x001C($t0)
	swc1    $f4, 0x0018($sp)
	lwc1    $f6, 0x0020($t0)
	swc1    $f6, 0x0014($sp)
	lwc1    $f8, 0x0024($t0)
	swc1    $f8, 0x0010($sp)
	lwc1    $f10, 0x0028($t0)
	swc1    $f10, 0x000C($sp)
	lwc1    $f16, 0x0014($sp)
	mtc1    $0, $f18
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    .L803816E8
	nop
	b       .L80381774
	nop
.L803816E8:
	mtc1    $a1, $f4
	mtc1    $a3, $f18
	lwc1    $f8, 0x0018($sp)
	cvt.s.w $f6, $f4
	lwc1    $f16, 0x0010($sp)
	cvt.s.w $f4, $f18
	mul.s   $f10, $f6, $f8
	lwc1    $f18, 0x000C($sp)
	mul.s   $f6, $f16, $f4
	add.s   $f8, $f10, $f6
	lwc1    $f10, 0x0014($sp)
	add.s   $f16, $f8, $f18
	neg.s   $f4, $f16
	div.s   $f6, $f4, $f10
	swc1    $f6, 0x0008($sp)
	mtc1    $a2, $f4
	li      $at, 0xC29C0000
	mtc1    $at, $f18
	lwc1    $f8, 0x0008($sp)
	cvt.s.w $f10, $f4
	add.s   $f16, $f8, $f18
	mtc1    $0, $f8
	sub.s   $f6, $f10, $f16
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8038175C
	nop
	b       .L80381774
	nop
.L8038175C:
	lwc1    $f18, 0x0008($sp)
	lw      $t8, 0x0048($sp)
	swc1    $f18, 0x0000($t8)
	sw      $t0, 0x0004($sp)
	b       .L8038177C
	nop
.L80381774:
	bnez    $a0, .L8038157C
	nop
.L8038177C:
	b       .L8038178C
	lw      $v0, 0x0004($sp)
	b       .L8038178C
	nop
.L8038178C:
	jr      $ra
	addiu   $sp, $sp, 0x0038

.globl map_80381794
map_80381794:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lwc1    $f12, 0x0020($sp)
	lwc1    $f14, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     map_80381900
	addiu   $a3, $sp, 0x001C
	swc1    $f0, 0x0018($sp)
	b       .L803817D0
	lwc1    $f0, 0x0018($sp)
	b       .L803817D0
	nop
.L803817D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

map_803817E0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f14, 0x003C($sp)
	lui     $at, %hi(map_8038BB9C)
	lwc1    $f4, %lo(map_8038BB9C)($at)
	swc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x0038($sp)
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x002A($sp)
	lwc1    $f10, 0x003C($sp)
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sh      $t9, 0x0028($sp)
	lwc1    $f18, 0x0040($sp)
	trunc.w.s $f4, $f18
	mfc1    $t1, $f4
	nop
	sh      $t1, 0x0026($sp)
	lh      $t2, 0x002A($sp)
	addiu   $t3, $t2, 0x2000
	bgez    $t3, .L80381858
	sra     $t4, $t3, 10
	addiu   $at, $t3, 0x03FF
	sra     $t4, $at, 10
.L80381858:
	andi    $t5, $t4, 0x000F
	sh      $t5, 0x0024($sp)
	lh      $t6, 0x0026($sp)
	addiu   $t7, $t6, 0x2000
	bgez    $t7, .L80381878
	sra     $t8, $t7, 10
	addiu   $at, $t7, 0x03FF
	sra     $t8, $at, 10
.L80381878:
	andi    $t9, $t8, 0x000F
	sh      $t9, 0x0022($sp)
	lh      $t0, 0x0022($sp)
	lh      $t2, 0x0024($sp)
	lui     $t5, %hi(map_data_8038D698)
	sll     $t1, $t0, 2
	sll     $t3, $t2, 2
	subu    $t1, $t1, $t0
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 3
	sll     $t1, $t1, 7
	addu    $t4, $t1, $t3
	addu    $t5, $t5, $t4
	lw      $t5, %lo(map_data_8038D698)($t5)
	sw      $t5, 0x0034($sp)
	addiu   $t6, $sp, 0x002C
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0034($sp)
	lh      $a1, 0x002A($sp)
	lh      $a2, 0x0028($sp)
	jal     map_8038156C
	lh      $a3, 0x0026($sp)
	sw      $v0, 0x0030($sp)
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0044($sp)
	sw      $t7, 0x0000($t8)
	b       .L803818F0
	lwc1    $f0, 0x002C($sp)
	b       .L803818F0
	nop
.L803818F0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* float map_80381900(float x, float y, float z, MAP_PLANE **ground) */
.globl map_80381900
map_80381900:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	swc1    $f12, 0x0040($sp)
	swc1    $f14, 0x0044($sp)
	lui     $at, %hi(map_8038BBA0)
	lwc1    $f4, %lo(map_8038BBA0)($at)
	swc1    $f4, 0x002C($sp)
	lui     $at, %hi(map_8038BBA4)
	lwc1    $f6, %lo(map_8038BBA4)($at)
	swc1    $f6, 0x0028($sp)
	lwc1    $f8, 0x0040($sp)
	trunc.w.s $f10, $f8
	mfc1    $t7, $f10
	nop
	sh      $t7, 0x0026($sp)
	lwc1    $f16, 0x0044($sp)
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sh      $t9, 0x0024($sp)
	lwc1    $f4, 0x0048($sp)
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	sh      $t1, 0x0022($sp)
	lw      $t2, 0x004C($sp)
	sw      $0, 0x0000($t2)
	lh      $t3, 0x0026($sp)
	slti    $at, $t3, -0x1FFF
	bnez    $at, .L80381990
	nop
	slti    $at, $t3, 0x2000
	bnez    $at, .L80381998
	nop
.L80381990:
	b       .L80381B90
	lwc1    $f0, 0x002C($sp)
.L80381998:
	lh      $t4, 0x0022($sp)
	slti    $at, $t4, -0x1FFF
	bnez    $at, .L803819B4
	nop
	slti    $at, $t4, 0x2000
	bnez    $at, .L803819BC
	nop
.L803819B4:
	b       .L80381B90
	lwc1    $f0, 0x002C($sp)
.L803819BC:
	lh      $t5, 0x0026($sp)
	addiu   $t6, $t5, 0x2000
	bgez    $t6, .L803819D4
	sra     $t7, $t6, 10
	addiu   $at, $t6, 0x03FF
	sra     $t7, $at, 10
.L803819D4:
	andi    $t8, $t7, 0x000F
	sh      $t8, 0x003C($sp)
	lh      $t9, 0x0022($sp)
	addiu   $t0, $t9, 0x2000
	bgez    $t0, .L803819F4
	sra     $t1, $t0, 10
	addiu   $at, $t0, 0x03FF
	sra     $t1, $at, 10
.L803819F4:
	andi    $t2, $t1, 0x000F
	sh      $t2, 0x003E($sp)
	lh      $t3, 0x003E($sp)
	lh      $t5, 0x003C($sp)
	lui     $t8, %hi(map_data_8038D698)
	sll     $t4, $t3, 2
	sll     $t6, $t5, 2
	subu    $t4, $t4, $t3
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	sll     $t4, $t4, 7
	addu    $t7, $t4, $t6
	addu    $t8, $t8, $t7
	lw      $t8, %lo(map_data_8038D698)($t8)
	sw      $t8, 0x0030($sp)
	addiu   $t9, $sp, 0x0028
	sw      $t9, 0x0010($sp)
	lw      $a0, 0x0030($sp)
	lh      $a1, 0x0026($sp)
	lh      $a2, 0x0024($sp)
	jal     map_8038156C
	lh      $a3, 0x0022($sp)
	sw      $v0, 0x0034($sp)
	lh      $t0, 0x003E($sp)
	lh      $t2, 0x003C($sp)
	lui     $t4, %hi(map_data_8038BE98)
	sll     $t1, $t0, 2
	sll     $t3, $t2, 2
	subu    $t1, $t1, $t0
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 3
	sll     $t1, $t1, 7
	addu    $t5, $t1, $t3
	addu    $t4, $t4, $t5
	lw      $t4, %lo(map_data_8038BE98)($t4)
	sw      $t4, 0x0030($sp)
	addiu   $t6, $sp, 0x002C
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0030($sp)
	lh      $a1, 0x0026($sp)
	lh      $a2, 0x0024($sp)
	jal     map_8038156C
	lh      $a3, 0x0022($sp)
	sw      $v0, 0x0038($sp)
	lui     $t7, %hi(object_80361182)
	lh      $t7, %lo(object_80361182)($t7)
	bnez    $t7, .L80381B10
	nop
	lw      $t8, 0x0038($sp)
	beqz    $t8, .L80381B08
	nop
	lh      $t9, 0x0000($t8)
	li      $at, 0x0012
	bne     $t9, $at, .L80381B08
	nop
	li      $at, 0x43480000
	mtc1    $at, $f10
	lwc1    $f8, 0x002C($sp)
	addiu   $t2, $sp, 0x002C
	sw      $t2, 0x0010($sp)
	sub.s   $f16, $f8, $f10
	lw      $a0, 0x0030($sp)
	lh      $a1, 0x0026($sp)
	lh      $a3, 0x0022($sp)
	trunc.w.s $f18, $f16
	mfc1    $a2, $f18
	jal     map_8038156C
	nop
	sw      $v0, 0x0038($sp)
.L80381B08:
	b       .L80381B18
	nop
.L80381B10:
	lui     $at, %hi(object_80361182)
	sh      $0, %lo(object_80361182)($at)
.L80381B18:
	lw      $t1, 0x0038($sp)
	bnez    $t1, .L80381B38
	nop
	lui     $t3, %hi(object_8033D264)
	lw      $t3, %lo(object_8033D264)($t3)
	lui     $at, %hi(object_8033D264)
	addiu   $t5, $t3, 0x0001
	sw      $t5, %lo(object_8033D264)($at)
.L80381B38:
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x002C($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80381B60
	nop
	lw      $t4, 0x0034($sp)
	sw      $t4, 0x0038($sp)
	lwc1    $f8, 0x0028($sp)
	swc1    $f8, 0x002C($sp)
.L80381B60:
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x004C($sp)
	sw      $t6, 0x0000($t7)
	lui     $t8, %hi(object_8033D274)
	lh      $t8, %lo(object_8033D274)($t8)
	lui     $at, %hi(object_8033D274)
	addiu   $t9, $t8, 0x0001
	sh      $t9, %lo(object_8033D274)($at)
	b       .L80381B90
	lwc1    $f0, 0x002C($sp)
	b       .L80381B90
	nop
.L80381B90:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl map_80381BA0
map_80381BA0:
	addiu   $sp, $sp, -0x0028
	lui     $at, %hi(map_8038BBA8)
	lwc1    $f4, %lo(map_8038BBA8)($at)
	swc1    $f4, 0x0008($sp)
	lui     $t6, %hi(object_80361184)
	lw      $t6, %lo(object_80361184)($t6)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	beqz    $t7, .L80381D24
	nop
	lw      $t8, 0x0004($sp)
	lh      $t9, 0x0000($t8)
	addiu   $t0, $t8, 0x0002
	sw      $t0, 0x0004($sp)
	sw      $t9, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	sw      $0, 0x0024($sp)
	blez    $t1, .L80381D24
	nop
.L80381BEC:
	lw      $t2, 0x0004($sp)
	lh      $t3, 0x0000($t2)
	addiu   $t4, $t2, 0x0002
	sw      $t4, 0x0004($sp)
	sh      $t3, 0x001E($sp)
	lw      $t5, 0x0004($sp)
	lh      $t6, 0x0000($t5)
	addiu   $t7, $t5, 0x0002
	sw      $t7, 0x0004($sp)
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0018($sp)
	lw      $t9, 0x0004($sp)
	lh      $t8, 0x0000($t9)
	addiu   $t0, $t9, 0x0002
	sw      $t0, 0x0004($sp)
	mtc1    $t8, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0010($sp)
	lw      $t1, 0x0004($sp)
	lh      $t3, 0x0000($t1)
	addiu   $t2, $t1, 0x0002
	sw      $t2, 0x0004($sp)
	mtc1    $t3, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x0014($sp)
	lw      $t4, 0x0004($sp)
	lh      $t6, 0x0000($t4)
	addiu   $t5, $t4, 0x0002
	sw      $t5, 0x0004($sp)
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x0018($sp)
	c.lt.s  $f10, $f12
	nop
	bc1f    .L80381D00
	nop
	lwc1    $f16, 0x0014($sp)
	c.lt.s  $f12, $f16
	nop
	bc1f    .L80381D00
	nop
	lwc1    $f18, 0x0010($sp)
	c.lt.s  $f18, $f14
	nop
	bc1f    .L80381D00
	nop
	lwc1    $f4, 0x000C($sp)
	c.lt.s  $f14, $f4
	nop
	bc1f    .L80381D00
	nop
	lh      $t7, 0x001E($sp)
	slti    $at, $t7, 0x0032
	beqz    $at, .L80381D00
	nop
	lw      $t8, 0x0004($sp)
	lh      $t9, 0x0000($t8)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0008($sp)
	b       .L80381D24
	nop
.L80381D00:
	lw      $t0, 0x0004($sp)
	addiu   $t3, $t0, 0x0002
	sw      $t3, 0x0004($sp)
	lw      $t1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	addiu   $t2, $t1, 0x0001
	slt     $at, $t2, $t6
	bnez    $at, .L80381BEC
	sw      $t2, 0x0024($sp)
.L80381D24:
	b       .L80381D34
	lwc1    $f0, 0x0008($sp)
	b       .L80381D34
	nop
.L80381D34:
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl map_80381D3C
map_80381D3C:
	addiu   $sp, $sp, -0x0028
	lui     $at, %hi(map_8038BBAC)
	lwc1    $f4, %lo(map_8038BBAC)($at)
	swc1    $f4, 0x0004($sp)
	lui     $t6, %hi(object_80361184)
	lw      $t6, %lo(object_80361184)($t6)
	sw      $t6, 0x0000($sp)
	lw      $t7, 0x0000($sp)
	beqz    $t7, .L80381EB0
	nop
	lw      $t8, 0x0000($sp)
	lh      $t9, 0x0000($t8)
	addiu   $t0, $t8, 0x0002
	sw      $t0, 0x0000($sp)
	sw      $t9, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	sw      $0, 0x0024($sp)
	blez    $t1, .L80381EB0
	nop
.L80381D88:
	lw      $t2, 0x0000($sp)
	lh      $t3, 0x0000($t2)
	sh      $t3, 0x001A($sp)
	lh      $t4, 0x001A($sp)
	slti    $at, $t4, 0x0032
	bnez    $at, .L80381E8C
	nop
	lw      $t5, 0x0000($sp)
	lh      $t6, 0x0002($t5)
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0014($sp)
	lw      $t7, 0x0000($sp)
	lh      $t9, 0x0004($t7)
	mtc1    $t9, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x000C($sp)
	lw      $t8, 0x0000($sp)
	lh      $t0, 0x0006($t8)
	mtc1    $t0, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x0010($sp)
	lw      $t1, 0x0000($sp)
	lh      $t2, 0x0008($t1)
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0008($sp)
	lwc1    $f10, 0x0014($sp)
	c.lt.s  $f10, $f12
	nop
	bc1f    .L80381E8C
	nop
	lwc1    $f16, 0x0010($sp)
	c.lt.s  $f12, $f16
	nop
	bc1f    .L80381E8C
	nop
	lwc1    $f18, 0x000C($sp)
	c.lt.s  $f18, $f14
	nop
	bc1f    .L80381E8C
	nop
	lwc1    $f4, 0x0008($sp)
	c.lt.s  $f14, $f4
	nop
	bc1f    .L80381E8C
	nop
	lh      $t3, 0x001A($sp)
	li      $at, 0x000A
	div     $0, $t3, $at
	mfhi    $t4
	bnez    $t4, .L80381E8C
	nop
	lw      $t5, 0x0000($sp)
	lh      $t6, 0x000A($t5)
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0004($sp)
	b       .L80381EB0
	nop
.L80381E8C:
	lw      $t7, 0x0000($sp)
	addiu   $t9, $t7, 0x000C
	sw      $t9, 0x0000($sp)
	lw      $t8, 0x0024($sp)
	lw      $t1, 0x0020($sp)
	addiu   $t0, $t8, 0x0001
	slt     $at, $t0, $t1
	bnez    $at, .L80381D88
	sw      $t0, 0x0024($sp)
.L80381EB0:
	b       .L80381EC0
	lwc1    $f0, 0x0004($sp)
	b       .L80381EC0
	nop
.L80381EC0:
	jr      $ra
	addiu   $sp, $sp, 0x0028

map_80381EC8:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	beqz    $a0, .L80381EF0
	nop
.L80381ED8:
	lw      $a0, 0x0000($a0)
	lw      $t6, 0x0004($sp)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0004($sp)
	bnez    $a0, .L80381ED8
	nop
.L80381EF0:
	b       .L80381F00
	lw      $v0, 0x0004($sp)
	b       .L80381F00
	nop
.L80381F00:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl map_80381F08
map_80381F08:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0040($sp)
	swc1    $f14, 0x0044($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0038($sp)
	sw      $0, 0x0034($sp)
	sw      $0, 0x0030($sp)
	li      $at, 0x46000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0040($sp)
	li      $at, 0x44800000
	mtc1    $at, $f10
	add.s   $f8, $f4, $f6
	div.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t7, $f18
	nop
	sw      $t7, 0x002C($sp)
	li      $at, 0x46000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0044($sp)
	li      $at, 0x44800000
	mtc1    $at, $f10
	add.s   $f8, $f4, $f6
	div.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sw      $t9, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	lw      $t3, 0x002C($sp)
	lui     $t7, %hi(map_data_8038BE98)
	andi    $t1, $t0, 0x000F
	andi    $t4, $t3, 0x000F
	sll     $t5, $t4, 2
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 3
	sll     $t2, $t2, 7
	addu    $t6, $t2, $t5
	addu    $t7, $t7, $t6
	lw      $t7, %lo(map_data_8038BE98)($t7)
	sw      $t7, 0x003C($sp)
	jal     map_80381EC8
	lw      $a0, 0x003C($sp)
	lw      $t8, 0x0038($sp)
	move    $s0, $v0
	addu    $t9, $t8, $s0
	sw      $t9, 0x0038($sp)
	lw      $t0, 0x0028($sp)
	lw      $t4, 0x002C($sp)
	lui     $t7, %hi(map_data_8038D698)
	andi    $t1, $t0, 0x000F
	andi    $t2, $t4, 0x000F
	sll     $t5, $t2, 2
	sll     $t3, $t1, 2
	subu    $t3, $t3, $t1
	subu    $t5, $t5, $t2
	sll     $t5, $t5, 3
	sll     $t3, $t3, 7
	addu    $t6, $t3, $t5
	addu    $t7, $t7, $t6
	lw      $t7, %lo(map_data_8038D698)($t7)
	sw      $t7, 0x003C($sp)
	jal     map_80381EC8
	lw      $a0, 0x003C($sp)
	lw      $t8, 0x0038($sp)
	move    $s0, $v0
	addu    $t9, $t8, $s0
	sw      $t9, 0x0038($sp)
	lw      $t0, 0x0028($sp)
	lw      $t2, 0x002C($sp)
	lui     $t7, %hi(map_data_8038BE98+0x10)
	andi    $t1, $t0, 0x000F
	andi    $t3, $t2, 0x000F
	sll     $t5, $t3, 2
	sll     $t4, $t1, 2
	subu    $t4, $t4, $t1
	subu    $t5, $t5, $t3
	sll     $t5, $t5, 3
	sll     $t4, $t4, 7
	addu    $t6, $t4, $t5
	addu    $t7, $t7, $t6
	lw      $t7, %lo(map_data_8038BE98+0x10)($t7)
	sw      $t7, 0x003C($sp)
	jal     map_80381EC8
	lw      $a0, 0x003C($sp)
	lw      $t8, 0x0034($sp)
	move    $s0, $v0
	addu    $t9, $t8, $s0
	sw      $t9, 0x0034($sp)
	lw      $t0, 0x0028($sp)
	lw      $t3, 0x002C($sp)
	lui     $t7, %hi(map_data_8038D698+0x10)
	andi    $t1, $t0, 0x000F
	andi    $t4, $t3, 0x000F
	sll     $t5, $t4, 2
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 3
	sll     $t2, $t2, 7
	addu    $t6, $t2, $t5
	addu    $t7, $t7, $t6
	lw      $t7, %lo(map_data_8038D698+0x10)($t7)
	sw      $t7, 0x003C($sp)
	jal     map_80381EC8
	lw      $a0, 0x003C($sp)
	lw      $t8, 0x0034($sp)
	move    $s0, $v0
	addu    $t9, $t8, $s0
	sw      $t9, 0x0034($sp)
	lw      $t0, 0x0028($sp)
	lw      $t4, 0x002C($sp)
	lui     $t7, %hi(map_data_8038BE98+0x08)
	andi    $t1, $t0, 0x000F
	andi    $t2, $t4, 0x000F
	sll     $t5, $t2, 2
	sll     $t3, $t1, 2
	subu    $t3, $t3, $t1
	subu    $t5, $t5, $t2
	sll     $t5, $t5, 3
	sll     $t3, $t3, 7
	addu    $t6, $t3, $t5
	addu    $t7, $t7, $t6
	lw      $t7, %lo(map_data_8038BE98+0x08)($t7)
	sw      $t7, 0x003C($sp)
	jal     map_80381EC8
	lw      $a0, 0x003C($sp)
	lw      $t8, 0x0030($sp)
	move    $s0, $v0
	addu    $t9, $t8, $s0
	sw      $t9, 0x0030($sp)
	lw      $t0, 0x0028($sp)
	lw      $t2, 0x002C($sp)
	lui     $t7, %hi(map_data_8038D698+0x08)
	andi    $t1, $t0, 0x000F
	andi    $t3, $t2, 0x000F
	sll     $t5, $t3, 2
	sll     $t4, $t1, 2
	subu    $t4, $t4, $t1
	subu    $t5, $t5, $t3
	sll     $t5, $t5, 3
	sll     $t4, $t4, 7
	addu    $t6, $t4, $t5
	addu    $t7, $t7, $t6
	lw      $t7, %lo(map_data_8038D698+0x08)($t7)
	sw      $t7, 0x003C($sp)
	jal     map_80381EC8
	lw      $a0, 0x003C($sp)
	lw      $t8, 0x0030($sp)
	move    $s0, $v0
	addu    $t9, $t8, $s0
	sw      $t9, 0x0030($sp)
	lw      $t0, 0x0028($sp)
	lw      $t2, 0x002C($sp)
	la.u    $a0, str_map_area
	sll     $t1, $t0, 4
	la.l    $a0, str_map_area
	jal     obj_debug_802CA618
	addu    $a1, $t1, $t2
	la.u    $a0, str_map_dg
	la.l    $a0, str_map_dg
	jal     obj_debug_802CA618
	lw      $a1, 0x0038($sp)
	la.u    $a0, str_map_dw
	la.l    $a0, str_map_dw
	jal     obj_debug_802CA618
	lw      $a1, 0x0034($sp)
	la.u    $a0, str_map_dr
	la.l    $a0, str_map_dr
	jal     obj_debug_802CA618
	lw      $a1, 0x0030($sp)
	li      $a0, 0x0050
	jal     obj_debug_802CA51C
	li      $a1, -0x0003
	la.u    $a0, str_map_x
	lui     $a1, %hi(object_8033D274)
	lh      $a1, %lo(object_8033D274)($a1)
	jal     obj_debug_802CA618
	la.l    $a0, str_map_x
	la.u    $a0, str_map_y
	lui     $a1, %hi(object_8033D274+0x04)
	lh      $a1, %lo(object_8033D274+0x04)($a1)
	jal     obj_debug_802CA618
	la.l    $a0, str_map_y
	la.u    $a0, str_map_z
	lui     $a1, %hi(object_8033D274+0x02)
	lh      $a1, %lo(object_8033D274+0x02)($a1)
	jal     obj_debug_802CA618
	la.l    $a0, str_map_z
	li      $a0, -0x0050
	jal     obj_debug_802CA51C
	move    $a1, $0
	la.u    $a0, str_map_listal
	lui     $a1, %hi(object_8036116C)
	lw      $a1, %lo(object_8036116C)($a1)
	jal     obj_debug_802CA618
	la.l    $a0, str_map_listal
	la.u    $a0, str_map_statbg
	lui     $a1, %hi(object_80361178)
	lw      $a1, %lo(object_80361178)($a1)
	jal     obj_debug_802CA618
	la.l    $a0, str_map_statbg
	lui     $t3, %hi(object_80361170)
	lui     $t4, %hi(object_80361178)
	lw      $t4, %lo(object_80361178)($t4)
	lw      $t3, %lo(object_80361170)($t3)
	la.u    $a0, str_map_movebg
	la.l    $a0, str_map_movebg
	jal     obj_debug_802CA618
	subu    $a1, $t3, $t4
	lui     $at, %hi(object_8033D274)
	sh      $0, %lo(object_8033D274)($at)
	lui     $at, %hi(object_8033D274+0x02)
	sh      $0, %lo(object_8033D274+0x02)($at)
	lui     $at, %hi(object_8033D274+0x04)
	sh      $0, %lo(object_8033D274+0x04)($at)
	b       .L80382280
	nop
.L80382280:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

map_80382294:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	lw      $t6, 0x0044($sp)
	lwc1    $f4, 0x0000($t6)
	swc1    $f4, 0x002C($sp)
	lw      $t7, 0x0048($sp)
	lwc1    $f6, 0x0000($t7)
	swc1    $f6, 0x0028($sp)
	lw      $t8, 0x004C($sp)
	lwc1    $f8, 0x0000($t8)
	swc1    $f8, 0x0024($sp)
	lw      $t9, 0x0054($sp)
	sw      $0, 0x0000($t9)
	lw      $t0, 0x0040($sp)
	beqz    $t0, .L80382304
	nop
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0028($sp)
	lw      $a2, 0x0024($sp)
	jal     map_80381264
	lw      $a3, 0x0054($sp)
	lw      $t1, 0x0058($sp)
	b       .L80382320
	swc1    $f0, 0x0000($t1)
.L80382304:
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0028($sp)
	lw      $a2, 0x0024($sp)
	jal     map_80381900
	lw      $a3, 0x0054($sp)
	lw      $t2, 0x0058($sp)
	swc1    $f0, 0x0000($t2)
.L80382320:
	lw      $t3, 0x0054($sp)
	lw      $t4, 0x0000($t3)
	bnez    $t4, .L80382338
	nop
	b       .L8038247C
	li      $v0, -0x0001
.L80382338:
	lw      $t5, 0x0054($sp)
	lw      $t6, 0x0000($t5)
	lwc1    $f10, 0x001C($t6)
	swc1    $f10, 0x003C($sp)
	lw      $t7, 0x0054($sp)
	lw      $t8, 0x0000($t7)
	lwc1    $f16, 0x0020($t8)
	swc1    $f16, 0x0038($sp)
	lw      $t9, 0x0054($sp)
	lw      $t0, 0x0000($t9)
	lwc1    $f18, 0x0024($t0)
	swc1    $f18, 0x0034($sp)
	lw      $t1, 0x0054($sp)
	lw      $t2, 0x0000($t1)
	lwc1    $f4, 0x0028($t2)
	swc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x003C($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f16, 0x0038($sp)
	lwc1    $f18, 0x0028($sp)
	mul.s   $f10, $f6, $f8
	lwc1    $f8, 0x0034($sp)
	mul.s   $f4, $f16, $f18
	lwc1    $f16, 0x0024($sp)
	mul.s   $f18, $f8, $f16
	add.s   $f6, $f10, $f4
	lwc1    $f4, 0x0030($sp)
	add.s   $f10, $f6, $f18
	add.s   $f8, $f10, $f4
	swc1    $f8, 0x0020($sp)
	lwc1    $f16, 0x0020($sp)
	mtc1    $0, $f6
	nop
	c.le.s  $f6, $f16
	nop
	bc1f    .L803823D4
	nop
	b       .L803823E0
	swc1    $f16, 0x001C($sp)
.L803823D4:
	lwc1    $f18, 0x0020($sp)
	neg.s   $f10, $f18
	swc1    $f10, 0x001C($sp)
.L803823E0:
	lwc1    $f4, 0x001C($sp)
	lwc1    $f8, 0x0050($sp)
	c.lt.s  $f4, $f8
	nop
	bc1f    .L8038246C
	nop
	lwc1    $f6, 0x0050($sp)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f10, 0x003C($sp)
	lw      $t3, 0x0044($sp)
	sub.s   $f18, $f6, $f16
	lwc1    $f8, 0x0000($t3)
	mul.s   $f4, $f10, $f18
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x0000($t3)
	lwc1    $f16, 0x0050($sp)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f8, 0x0038($sp)
	lw      $t4, 0x0048($sp)
	sub.s   $f18, $f16, $f10
	lwc1    $f6, 0x0000($t4)
	mul.s   $f4, $f8, $f18
	add.s   $f16, $f6, $f4
	swc1    $f16, 0x0000($t4)
	lwc1    $f10, 0x0050($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f6, 0x0034($sp)
	lw      $t5, 0x004C($sp)
	sub.s   $f18, $f10, $f8
	lwc1    $f16, 0x0000($t5)
	mul.s   $f4, $f6, $f18
	add.s   $f10, $f16, $f4
	swc1    $f10, 0x0000($t5)
	b       .L8038247C
	li      $v0, 0x0001
.L8038246C:
	b       .L8038247C
	move    $v0, $0
	b       .L8038247C
	nop
.L8038247C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

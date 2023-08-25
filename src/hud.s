.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

hud_802E2CF0:
	addiu   $sp, $sp, -0x0018
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0014($sp)
	lw      $t9, 0x0014($sp)
	li      $t8, 0xE7000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0014($sp)
	sw      $0, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0010($sp)
	lw      $t4, 0x0010($sp)
	li      $t3, 0xFD100000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0010($sp)
	sw      $a2, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x000C($sp)
	lw      $t9, 0x000C($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x000C($sp)
	la.u    $t0, gfx_dprint_copy_char
	la.l    $t0, gfx_dprint_copy_char
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0008($sp)
	addiu   $t4, $a0, 0x000F
	sll     $t5, $t4, 2
	andi    $t6, $t5, 0x0FFF
	addiu   $t9, $a1, 0x000F
	lw      $t3, 0x0008($sp)
	sll     $t0, $t9, 2
	sll     $t7, $t6, 12
	li      $at, 0xE4000000
	or      $t8, $t7, $at
	andi    $t1, $t0, 0x0FFF
	or      $t2, $t8, $t1
	sw      $t2, 0x0000($t3)
	sll     $t4, $a0, 2
	lw      $t8, 0x0008($sp)
	andi    $t5, $t4, 0x0FFF
	sll     $t7, $a1, 2
	andi    $t9, $t7, 0x0FFF
	sll     $t6, $t5, 12
	or      $t0, $t6, $t9
	sw      $t0, 0x0004($t8)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0004($sp)
	lw      $t4, 0x0004($sp)
	li      $t3, 0xB3000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0004($sp)
	sw      $0, 0x0004($t5)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t7, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t7, 0x0000($sp)
	lw      $t0, 0x0000($sp)
	li      $t9, 0xB2000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0000($sp)
	li.u    $t8, 0x10000400
	li.l    $t8, 0x10000400
	sw      $t8, 0x0004($t1)
	b       .L802E2E50
	nop
.L802E2E50:
	jr      $ra
	addiu   $sp, $sp, 0x0018

hud_802E2E58:
	addiu   $sp, $sp, -0x0030
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	li      $t8, 0xF5100000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x002C($sp)
	li      $t0, 0x07000000
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0028($sp)
	lw      $t5, 0x0028($sp)
	li      $t4, 0xE8000000
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x0028($sp)
	sw      $0, 0x0004($t6)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	li.u    $t9, 0xF5100400
	li.l    $t9, 0xF5100400
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0024($sp)
	li.u    $t1, 0x0008C230
	li.l    $t1, 0x0008C230
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $t5, 0xF2000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0020($sp)
	li.u    $t7, 0x0001C01C
	li.l    $t7, 0x0001C01C
	sw      $t7, 0x0004($t8)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	li      $t1, 0xE7000000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x001C($sp)
	sw      $0, 0x0004($t3)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0xFD100000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	sw      $a2, 0x0004($t8)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0014($sp)
	lw      $t2, 0x0014($sp)
	li      $t1, 0xE6000000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x0014($sp)
	sw      $0, 0x0004($t3)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0010($sp)
	lw      $t7, 0x0010($sp)
	li      $t6, 0xF3000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0010($sp)
	li.u    $t8, 0x0703F400
	li.l    $t8, 0x0703F400
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x000C($sp)
	addiu   $t2, $a0, 0x0007
	sll     $t3, $t2, 2
	andi    $t4, $t3, 0x0FFF
	addiu   $t7, $a1, 0x0007
	lw      $t1, 0x000C($sp)
	sll     $t8, $t7, 2
	sll     $t5, $t4, 12
	li      $at, 0xE4000000
	or      $t6, $t5, $at
	andi    $t9, $t8, 0x0FFF
	or      $t0, $t6, $t9
	sw      $t0, 0x0000($t1)
	sll     $t2, $a0, 2
	lw      $t6, 0x000C($sp)
	andi    $t3, $t2, 0x0FFF
	sll     $t5, $a1, 2
	andi    $t7, $t5, 0x0FFF
	sll     $t4, $t3, 12
	or      $t8, $t4, $t7
	sw      $t8, 0x0004($t6)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0008($sp)
	lw      $t2, 0x0008($sp)
	li      $t1, 0xB3000000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x0008($sp)
	sw      $0, 0x0004($t3)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t5, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t5, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	li      $t7, 0xB2000000
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0004($sp)
	li.u    $t6, 0x10000400
	li.l    $t6, 0x10000400
	sw      $t6, 0x0004($t9)
	b       .L802E30AC
	nop
.L802E30AC:
	jr      $ra
	addiu   $sp, $sp, 0x0030

hud_802E30B4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	la.u    $a0, txt_meter_n
	jal     segment_to_virtual
	la.l    $a0, txt_meter_n
	sw      $v0, 0x0034($sp)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	li      $t8, 0xE7000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0030($sp)
	sw      $0, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x002C($sp)
	lw      $t4, 0x002C($sp)
	li      $t3, 0xFD100000
	sw      $t3, 0x0000($t4)
	lh      $t6, 0x003A($sp)
	lw      $t5, 0x0034($sp)
	lw      $t0, 0x002C($sp)
	sll     $t7, $t6, 2
	addu    $t8, $t5, $t7
	lw      $t9, -0x0004($t8)
	sw      $t9, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $t3, 0xE6000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x0028($sp)
	sw      $0, 0x0004($t6)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t5, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t5, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	li      $t8, 0xF3000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0024($sp)
	li.u    $t0, 0x073FF100
	li.l    $t0, 0x073FF100
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $t4, 0xBF000000
	sw      $t4, 0x0000($t6)
	lw      $t7, 0x0020($sp)
	li      $t5, 0x0A14
	sw      $t5, 0x0004($t7)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li      $t0, 0xBF000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x001C($sp)
	li      $t2, 0x141E
	sw      $t2, 0x0004($t3)
	b       .L802E3204
	nop
.L802E3204:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

hud_802E3214:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	bnez    $t6, .L802E3240
	nop
	b       .L802E33A8
	nop
.L802E3240:
	lui     $t7, %hi(meter+0x02)
	lui     $t8, %hi(meter+0x04)
	lh      $t8, %lo(meter+0x04)($t8)
	lh      $t7, %lo(meter+0x02)($t7)
	lw      $a0, 0x002C($sp)
	mtc1    $t8, $f6
	mtc1    $t7, $f4
	li      $a3, 0x0000
	cvt.s.w $f6, $f6
	cvt.s.w $f4, $f4
	mfc1    $a2, $f6
	mfc1    $a1, $f4
	jal     guTranslate
	nop
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	li.u    $t1, 0x01040040
	li.l    $t1, 0x01040040
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x002C($sp)
	lw      $t5, 0x0028($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t4, $t3, $at
	sw      $t4, 0x0004($t5)
	lw      $t6, 0x002C($sp)
	addiu   $t7, $t6, 0x0040
	sw      $t7, 0x002C($sp)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0024($sp)
	la.u    $t2, gfx_meter_0
	la.l    $t2, gfx_meter_0
	sw      $t2, 0x0004($t3)
	lh      $t4, 0x0032($sp)
	beqz    $t4, .L802E3374
	nop
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x0020($sp)
	la.u    $t9, gfx_meter_n
	la.l    $t9, gfx_meter_n
	sw      $t9, 0x0004($t0)
	jal     hud_802E30B4
	lh      $a0, 0x0032($sp)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x001C($sp)
	lw      $t4, 0x001C($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x001C($sp)
	la.u    $t5, gfx_meter_end
	la.l    $t5, gfx_meter_end
	sw      $t5, 0x0004($t6)
.L802E3374:
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	li      $t9, 0xBD000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0018($sp)
	sw      $0, 0x0004($t1)
	b       .L802E33A8
	nop
.L802E33A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

hud_802E33B8:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(hud+0x0A)
	lh      $t6, %lo(hud+0x0A)($t6)
	sh      $t6, 0x0006($sp)
	lh      $t7, 0x0006($sp)
	andi    $t8, $t7, 0x8000
	bnez    $t8, .L802E3418
	nop
	lui     $t9, %hi(hud_803325FC)
	lw      $t9, %lo(hud_803325FC)($t9)
	lui     $at, %hi(hud_803383C0)
	ldc1    $f8, %lo(hud_803383C0)($at)
	mtc1    $t9, $f4
	nop
	cvt.d.w $f6, $f4
	c.eq.d  $f6, $f8
	nop
	bc1f    .L802E3410
	nop
	li      $t0, 0x0002
	lui     $at, %hi(meter+0x00)
	sb      $t0, %lo(meter+0x00)($at)
.L802E3410:
	b       .L802E3420
	nop
.L802E3418:
	lui     $at, %hi(hud_803325FC)
	sw      $0, %lo(hud_803325FC)($at)
.L802E3420:
	b       .L802E3428
	nop
.L802E3428:
	jr      $ra
	addiu   $sp, $sp, 0x0008

hud_802E3430:
	addiu   $sp, $sp, -0x0008
	li      $t6, 0x0005
	sh      $t6, 0x0006($sp)
	lui     $t7, %hi(meter+0x04)
	lh      $t7, %lo(meter+0x04)($t7)
	slti    $at, $t7, 0x00B5
	bnez    $at, .L802E3458
	nop
	li      $t8, 0x0003
	sh      $t8, 0x0006($sp)
.L802E3458:
	lui     $t9, %hi(meter+0x04)
	lh      $t9, %lo(meter+0x04)($t9)
	slti    $at, $t9, 0x00BF
	bnez    $at, .L802E3474
	nop
	li      $t0, 0x0002
	sh      $t0, 0x0006($sp)
.L802E3474:
	lui     $t1, %hi(meter+0x04)
	lh      $t1, %lo(meter+0x04)($t1)
	slti    $at, $t1, 0x00C4
	bnez    $at, .L802E3490
	nop
	li      $t2, 0x0001
	sh      $t2, 0x0006($sp)
.L802E3490:
	lui     $t3, %hi(meter+0x04)
	lh      $t3, %lo(meter+0x04)($t3)
	lh      $t4, 0x0006($sp)
	lui     $at, %hi(meter+0x04)
	addu    $t5, $t3, $t4
	sh      $t5, %lo(meter+0x04)($at)
	lui     $t6, %hi(meter+0x04)
	lh      $t6, %lo(meter+0x04)($t6)
	slti    $at, $t6, 0x00C9
	bnez    $at, .L802E34D4
	nop
	li      $t7, 0x00C8
	lui     $at, %hi(meter+0x04)
	sh      $t7, %lo(meter+0x04)($at)
	li      $t8, 0x0004
	lui     $at, %hi(meter+0x00)
	sb      $t8, %lo(meter+0x00)($at)
.L802E34D4:
	b       .L802E34DC
	nop
.L802E34DC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

hud_802E34E4:
	lui     $t6, %hi(meter+0x04)
	lh      $t6, %lo(meter+0x04)($t6)
	lui     $at, %hi(meter+0x04)
	addiu   $t7, $t6, 0x0014
	sh      $t7, %lo(meter+0x04)($at)
	lui     $t8, %hi(meter+0x04)
	lh      $t8, %lo(meter+0x04)($t8)
	slti    $at, $t8, 0x012D
	bnez    $at, .L802E351C
	nop
	lui     $at, %hi(meter+0x00)
	sb      $0, %lo(meter+0x00)($at)
	lui     $at, %hi(hud_803325FC)
	sw      $0, %lo(hud_803325FC)($at)
.L802E351C:
	jr      $ra
	nop
	jr      $ra
	nop

hud_802E352C:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	slti    $at, $a0, 0x0008
	beqz    $at, .L802E357C
	nop
	lui     $t6, %hi(hud_80361440)
	lh      $t6, %lo(hud_80361440)($t6)
	li      $at, 0x0008
	bne     $t6, $at, .L802E357C
	nop
	lui     $t7, %hi(meter+0x00)
	lb      $t7, %lo(meter+0x00)($t7)
	bnez    $t7, .L802E357C
	nop
	li      $t8, 0x0001
	lui     $at, %hi(meter+0x00)
	sb      $t8, %lo(meter+0x00)($at)
	li      $t9, 0x00A6
	lui     $at, %hi(meter+0x04)
	sh      $t9, %lo(meter+0x04)($at)
.L802E357C:
	li      $at, 0x0008
	bne     $a0, $at, .L802E35A4
	nop
	lui     $t0, %hi(hud_80361440)
	lh      $t0, %lo(hud_80361440)($t0)
	li      $at, 0x0007
	bne     $t0, $at, .L802E35A4
	nop
	lui     $at, %hi(hud_803325FC)
	sw      $0, %lo(hud_803325FC)($at)
.L802E35A4:
	li      $at, 0x0008
	bne     $a0, $at, .L802E35E8
	nop
	lui     $t1, %hi(hud_803325FC)
	lw      $t1, %lo(hud_803325FC)($t1)
	lui     $at, %hi(hud_803383C8)
	ldc1    $f8, %lo(hud_803383C8)($at)
	mtc1    $t1, $f4
	nop
	cvt.d.w $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    .L802E35E8
	nop
	li      $t2, 0x0003
	lui     $at, %hi(meter+0x00)
	sb      $t2, %lo(meter+0x00)($at)
.L802E35E8:
	lui     $at, %hi(hud_80361440)
	sh      $a0, %lo(hud_80361440)($at)
	la.u    $t3, _camera_bss+0x00
	la.l    $t3, _camera_bss+0x00
	lw      $t4, 0x0000($t3)
	andi    $t5, $t4, 0x2000
	beqz    $t5, .L802E3644
	nop
	lui     $t6, %hi(meter+0x00)
	lb      $t6, %lo(meter+0x00)($t6)
	beqz    $t6, .L802E3624
	nop
	li      $at, 0x0001
	bne     $t6, $at, .L802E363C
	nop
.L802E3624:
	li      $t7, 0x0002
	lui     $at, %hi(meter+0x00)
	sb      $t7, %lo(meter+0x00)($at)
	li      $t8, 0x00A6
	lui     $at, %hi(meter+0x04)
	sh      $t8, %lo(meter+0x04)($at)
.L802E363C:
	lui     $at, %hi(hud_803325FC)
	sw      $0, %lo(hud_803325FC)($at)
.L802E3644:
	jr      $ra
	nop
	jr      $ra
	nop

hud_802E3654:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(hud+0x06)
	lh      $t6, %lo(hud+0x06)($t6)
	sh      $t6, 0x0026($sp)
	lui     $t7, %hi(meter+0x00)
	lb      $t7, %lo(meter+0x00)($t7)
	li      $at, 0x0003
	beq     $t7, $at, .L802E3688
	nop
	jal     hud_802E352C
	lh      $a0, 0x0026($sp)
.L802E3688:
	lui     $t8, %hi(meter+0x00)
	lb      $t8, %lo(meter+0x00)($t8)
	bnez    $t8, .L802E36A0
	nop
	b       .L802E3730
	nop
.L802E36A0:
	lui     $s0, %hi(meter+0x00)
	lb      $s0, %lo(meter+0x00)($s0)
	li      $at, 0x0001
	beq     $s0, $at, .L802E36D4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802E36E4
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802E36F4
	nop
	b       .L802E3704
	nop
.L802E36D4:
	jal     hud_802E33B8
	nop
	b       .L802E370C
	nop
.L802E36E4:
	jal     hud_802E3430
	nop
	b       .L802E370C
	nop
.L802E36F4:
	jal     hud_802E34E4
	nop
	b       .L802E370C
	nop
.L802E3704:
	b       .L802E370C
	nop
.L802E370C:
	jal     hud_802E3214
	lh      $a0, 0x0026($sp)
	lui     $t9, %hi(hud_803325FC)
	lw      $t9, %lo(hud_803325FC)($t9)
	lui     $at, %hi(hud_803325FC)
	addiu   $t0, $t9, 0x0001
	sw      $t0, %lo(hud_803325FC)($at)
	b       .L802E3730
	nop
.L802E3730:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

hud_802E3744:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a2, str_hud_life_icon
	la.l    $a2, str_hud_life_icon
	li      $a0, 0x0016
	jal     dprint
	li      $a1, 0x00D1
	la.u    $a2, str_hud_life_x
	la.l    $a2, str_hud_life_x
	li      $a0, 0x0026
	jal     dprint
	li      $a1, 0x00D1
	la.u    $a2, str_hud_life_fmt
	lui     $a3, %hi(hud+0x00)
	lh      $a3, %lo(hud+0x00)($a3)
	la.l    $a2, str_hud_life_fmt
	li      $a0, 0x0036
	jal     dprintf
	li      $a1, 0x00D1
	b       .L802E3798
	nop
.L802E3798:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

hud_802E37A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a2, str_hud_coin_icon
	la.l    $a2, str_hud_coin_icon
	li      $a0, 0x00A8
	jal     dprint
	li      $a1, 0x00D1
	la.u    $a2, str_hud_coin_x
	la.l    $a2, str_hud_coin_x
	li      $a0, 0x00B8
	jal     dprint
	li      $a1, 0x00D1
	la.u    $a2, str_hud_coin_fmt
	lui     $a3, %hi(hud+0x02)
	lh      $a3, %lo(hud+0x02)($a3)
	la.l    $a2, str_hud_coin_fmt
	li      $a0, 0x00C6
	jal     dprintf
	li      $a1, 0x00D1
	b       .L802E37FC
	nop
.L802E37FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

hud_802E380C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sb      $0, 0x001F($sp)
	lui     $t6, %hi(message_803316D4)
	lb      $t6, %lo(message_803316D4)($t6)
	li      $at, 0x0001
	bne     $t6, $at, .L802E3848
	nop
	lui     $t7, %hi(gfx_frame)
	lw      $t7, %lo(gfx_frame)($t7)
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L802E3848
	nop
	b       .L802E38D4
	nop
.L802E3848:
	lui     $t9, %hi(hud+0x04)
	lh      $t9, %lo(hud+0x04)($t9)
	slti    $at, $t9, 0x0064
	beqz    $at, .L802E3864
	nop
	li      $t0, 0x0001
	sb      $t0, 0x001F($sp)
.L802E3864:
	la.u    $a2, str_hud_star_icon
	la.l    $a2, str_hud_star_icon
	li      $a0, 0x00F2
	jal     dprint
	li      $a1, 0x00D1
	lb      $t1, 0x001F($sp)
	li      $at, 0x0001
	bne     $t1, $at, .L802E389C
	nop
	la.u    $a2, str_hud_star_x
	la.l    $a2, str_hud_star_x
	li      $a0, 0x0102
	jal     dprint
	li      $a1, 0x00D1
.L802E389C:
	lb      $a0, 0x001F($sp)
	la.u    $a2, str_hud_star_fmt
	lui     $a3, %hi(hud+0x04)
	sll     $t2, $a0, 3
	subu    $t2, $t2, $a0
	sll     $t2, $t2, 1
	move    $a0, $t2
	addiu   $a0, $a0, 0x0102
	lh      $a3, %lo(hud+0x04)($a3)
	la.l    $a2, str_hud_star_fmt
	jal     dprintf
	li      $a1, 0x00D1
	b       .L802E38D4
	nop
.L802E38D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

hud_802E38E4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(hud+0x08)
	lh      $t6, %lo(hud+0x08)($t6)
	sh      $0, 0x001E($sp)
	blez    $t6, .L802E3944
	nop
.L802E3900:
	lh      $a0, 0x001E($sp)
	la.u    $a2, str_hud_key
	la.l    $a2, str_hud_key
	sll     $t7, $a0, 4
	move    $a0, $t7
	addiu   $a0, $a0, 0x00DC
	jal     dprint
	li      $a1, 0x008E
	lh      $t8, 0x001E($sp)
	lui     $t2, %hi(hud+0x08)
	lh      $t2, %lo(hud+0x08)($t2)
	addiu   $t9, $t8, 0x0001
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	slt     $at, $t1, $t2
	bnez    $at, .L802E3900
	sh      $t9, 0x001E($sp)
.L802E3944:
	b       .L802E394C
	nop
.L802E394C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

hud_802E395C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	la.u    $a0, txt_dprint
	jal     segment_to_virtual
	la.l    $a0, txt_dprint
	sw      $v0, 0x002C($sp)
	lui     $t6, %hi(hud+0x0C)
	lhu     $t6, %lo(hud+0x0C)($t6)
	sh      $t6, 0x002A($sp)
	lhu     $t7, 0x002A($sp)
	li      $at, 0x0708
	div     $0, $t7, $at
	mflo    $t8
	sh      $t8, 0x0028($sp)
	nop
	lhu     $t0, 0x0028($sp)
	lhu     $t9, 0x002A($sp)
	li      $at, 0x001E
	sll     $t1, $t0, 3
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 5
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	subu    $t2, $t9, $t1
	div     $0, $t2, $at
	mflo    $t3
	sh      $t3, 0x0026($sp)
	nop
	lhu     $t5, 0x0028($sp)
	lhu     $t8, 0x0026($sp)
	lhu     $t4, 0x002A($sp)
	sll     $t6, $t5, 3
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 5
	addu    $t6, $t6, $t5
	sll     $t0, $t8, 4
	sll     $t6, $t6, 3
	subu    $t0, $t0, $t8
	sll     $t0, $t0, 1
	subu    $t7, $t4, $t6
	subu    $t9, $t7, $t0
	andi    $t1, $t9, 0xFFFF
	li      $at, 0x0003
	div     $0, $t1, $at
	mflo    $t2
	sh      $t2, 0x0024($sp)
	nop
	la.u    $a2, str_hud_time_text
	la.l    $a2, str_hud_time_text
	li      $a0, 0x00AA
	jal     dprint
	li      $a1, 0x00B9
	la.u    $a2, str_hud_time_min
	la.l    $a2, str_hud_time_min
	li      $a0, 0x00E5
	li      $a1, 0x00B9
	jal     dprintf
	lhu     $a3, 0x0028($sp)
	la.u    $a2, str_hud_time_sec
	la.l    $a2, str_hud_time_sec
	li      $a0, 0x00F9
	li      $a1, 0x00B9
	jal     dprintf
	lhu     $a3, 0x0026($sp)
	la.u    $a2, str_hud_time_frc
	la.l    $a2, str_hud_time_frc
	li      $a0, 0x011B
	li      $a1, 0x00B9
	jal     dprintf
	lhu     $a3, 0x0024($sp)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t3, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t3, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t6)
	lw      $t7, 0x0020($sp)
	la.u    $t8, gfx_dprint_copy_start
	la.l    $t8, gfx_dprint_copy_start
	sw      $t8, 0x0004($t7)
	lw      $t0, 0x002C($sp)
	li      $a0, 0x00EF
	li      $a1, 0x0020
	jal     hud_802E2CF0
	lw      $a2, 0x00E0($t0)
	lw      $t9, 0x002C($sp)
	li      $a0, 0x0112
	li      $a1, 0x0020
	jal     hud_802E2CF0
	lw      $a2, 0x00E4($t9)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t5)
	lw      $t6, 0x001C($sp)
	la.u    $t4, gfx_dprint_copy_end
	la.l    $t4, gfx_dprint_copy_end
	sw      $t4, 0x0004($t6)
	b       .L802E3B0C
	nop
.L802E3B0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl hud_802E3B1C
hud_802E3B1C:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	lui     $at, %hi(hud_80332608)
	sh      $a0, %lo(hud_80332608)($at)
	jr      $ra
	nop
	jr      $ra
	nop

hud_802E3B3C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, txt_camera
	jal     segment_to_virtual
	la.l    $a0, txt_camera
	sw      $v0, 0x0034($sp)
	li      $t6, 0x010A
	sw      $t6, 0x0030($sp)
	li      $t7, 0x00CD
	sw      $t7, 0x002C($sp)
	lui     $t8, %hi(hud_80332608)
	lh      $t8, %lo(hud_80332608)($t8)
	bnez    $t8, .L802E3B80
	nop
	b       .L802E3D18
	nop
.L802E3B80:
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x0028($sp)
	la.u    $t3, gfx_dprint_copy_start
	la.l    $t3, gfx_dprint_copy_start
	sw      $t3, 0x0004($t4)
	lw      $t5, 0x0034($sp)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x002C($sp)
	jal     hud_802E2CF0
	lw      $a2, 0x0000($t5)
	lui     $s0, %hi(hud_80332608)
	lh      $s0, %lo(hud_80332608)($s0)
	li      $at, 0x0001
	andi    $t6, $s0, 0x0007
	move    $s0, $t6
	beq     $s0, $at, .L802E3C04
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802E3C24
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L802E3C44
	nop
	b       .L802E3C64
	nop
.L802E3C04:
	lw      $a0, 0x0030($sp)
	lw      $t7, 0x0034($sp)
	lw      $a1, 0x002C($sp)
	addiu   $a0, $a0, 0x0010
	jal     hud_802E2CF0
	lw      $a2, 0x0004($t7)
	b       .L802E3C64
	nop
.L802E3C24:
	lw      $a0, 0x0030($sp)
	lw      $t8, 0x0034($sp)
	lw      $a1, 0x002C($sp)
	addiu   $a0, $a0, 0x0010
	jal     hud_802E2CF0
	lw      $a2, 0x0008($t8)
	b       .L802E3C64
	nop
.L802E3C44:
	lw      $a0, 0x0030($sp)
	lw      $t9, 0x0034($sp)
	lw      $a1, 0x002C($sp)
	addiu   $a0, $a0, 0x0010
	jal     hud_802E2CF0
	lw      $a2, 0x000C($t9)
	b       .L802E3C64
	nop
.L802E3C64:
	lui     $s0, %hi(hud_80332608)
	lh      $s0, %lo(hud_80332608)($s0)
	li      $at, 0x0008
	andi    $t0, $s0, 0x0018
	move    $s0, $t0
	beq     $s0, $at, .L802E3C94
	nop
	li      $at, 0x0010
	beq     $s0, $at, .L802E3CB8
	nop
	b       .L802E3CDC
	nop
.L802E3C94:
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x002C($sp)
	lw      $t1, 0x0034($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     hud_802E2E58
	lw      $a2, 0x0014($t1)
	b       .L802E3CDC
	nop
.L802E3CB8:
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x002C($sp)
	lw      $t2, 0x0034($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, -0x0008
	jal     hud_802E2E58
	lw      $a2, 0x0010($t2)
	b       .L802E3CDC
	nop
.L802E3CDC:
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0024($sp)
	la.u    $t7, gfx_dprint_copy_end
	la.l    $t7, gfx_dprint_copy_end
	sw      $t7, 0x0004($t8)
	b       .L802E3D18
	nop
.L802E3D18:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* void hud_draw(void) */
.globl hud_draw
hud_draw:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(hud+0x0A)
	lh      $t6, %lo(hud+0x0A)($t6)
	sh      $t6, 0x001E($sp)
	lh      $t7, 0x001E($sp)
	bnez    $t7, .L802E3D6C
	nop
	lui     $at, %hi(meter+0x00)
	sb      $0, %lo(meter+0x00)($at)
	li      $t8, 0x0008
	lui     $at, %hi(hud_80361440)
	sh      $t8, %lo(hud_80361440)($at)
	lui     $at, %hi(hud_803325FC)
	b       .L802E3E38
	sw      $0, %lo(hud_803325FC)($at)
.L802E3D6C:
	jal     message_802D7384
	nop
	lui     $t9, %hi(scene)
	lw      $t9, %lo(scene)($t9)
	beqz    $t9, .L802E3DA0
	nop
	lw      $t0, 0x0024($t9)
	li      $at, 0x000A
	lbu     $t1, 0x0000($t0)
	bne     $t1, $at, .L802E3DA0
	nop
	jal     message_802DB08C
	nop
.L802E3DA0:
	lh      $t2, 0x001E($sp)
	andi    $t3, $t2, 0x0001
	beqz    $t3, .L802E3DB8
	nop
	jal     hud_802E3744
	nop
.L802E3DB8:
	lh      $t4, 0x001E($sp)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L802E3DD0
	nop
	jal     hud_802E37A8
	nop
.L802E3DD0:
	lh      $t6, 0x001E($sp)
	andi    $t7, $t6, 0x0004
	beqz    $t7, .L802E3DE8
	nop
	jal     hud_802E380C
	nop
.L802E3DE8:
	lh      $t8, 0x001E($sp)
	andi    $t9, $t8, 0x0010
	beqz    $t9, .L802E3E00
	nop
	jal     hud_802E38E4
	nop
.L802E3E00:
	lh      $t0, 0x001E($sp)
	andi    $t1, $t0, 0x0008
	beqz    $t1, .L802E3E20
	nop
	jal     hud_802E3654
	nop
	jal     hud_802E3B3C
	nop
.L802E3E20:
	lh      $t2, 0x001E($sp)
	andi    $t3, $t2, 0x0040
	beqz    $t3, .L802E3E38
	nop
	jal     hud_802E395C
	nop
.L802E3E38:
	b       .L802E3E40
	nop
.L802E3E40:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

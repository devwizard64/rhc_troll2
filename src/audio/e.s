.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

Na_e_8031AEE0:
	jr      $ra
	nop

.globl Na_e_8031AEE8
Na_e_8031AEE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lhu     $t6, 0x000E($a0)
	la.u    $t3, _Na_bss+0x4E38
	la.l    $t3, _Na_bss+0x4E38
	beqz    $t6, .L8031AFB0
	move    $a3, $0
	lwc1    $f4, 0x0018($a0)
	lwc1    $f6, 0x001C($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f2
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($a0)
	lwc1    $f0, 0x0018($a0)
	c.lt.s  $f2, $f0
	nop
	bc1fl   .L8031AF3C
	mtc1    $0, $f2
	swc1    $f2, 0x0018($a0)
	lwc1    $f0, 0x0018($a0)
	mtc1    $0, $f2
.L8031AF3C:
	nop
	c.lt.s  $f0, $f2
	nop
	bc1fl   .L8031AF58
	lhu     $t7, 0x000E($a0)
	swc1    $f2, 0x0018($a0)
	lhu     $t7, 0x000E($a0)
.L8031AF58:
	addiu   $t8, $t7, -0x0001
	andi    $t9, $t8, 0xFFFF
	bnez    $t9, .L8031AFB0
	sh      $t8, 0x000E($a0)
	lbu     $v0, 0x0002($a0)
	li      $t1, 0x0001
	li      $at, 0x0002
	beq     $v0, $t1, .L8031AF9C
	nop
	beq     $v0, $at, .L8031AFAC
	li      $at, 0x0003
	beq     $v0, $at, .L8031AFAC
	li      $at, 0x0004
	beql    $v0, $at, .L8031AFB4
	li      $at, 0x3F800000
	b       .L8031AFB4
	li      $at, 0x3F800000
.L8031AF9C:
	jal     Na_f_8031BE44
	nop
	b       .L8031B0C0
	lw      $ra, 0x0014($sp)
.L8031AFAC:
	sb      $0, 0x0002($a0)
.L8031AFB0:
	li      $at, 0x3F800000
.L8031AFB4:
	mtc1    $at, $f16
	li      $t1, 0x0001
	move    $t0, $a0
	li      $t2, 0x0040
	li      $a2, 0x0010
.L8031AFC8:
	lw      $v0, 0x002C($t0)
	addiu   $a3, $a3, 0x0004
	xor     $t4, $t3, $v0
	sltu    $t4, $0, $t4
	bne     $t1, $t4, .L8031B0B4
	nop
	lw      $t5, 0x0000($v0)
	srl     $t6, $t5, 31
	bne     $t1, $t6, .L8031B0B4
	nop
	lwc1    $f10, 0x0020($v0)
	lwc1    $f18, 0x001C($v0)
	lw      $v1, 0x0040($v0)
	move    $a1, $v0
	mul.s   $f4, $f10, $f18
	lwc1    $f6, 0x0018($v1)
	lw      $t7, 0x0000($v1)
	sll     $t9, $t7, 2
	mul.s   $f0, $f6, $f4
	bgezl   $t9, .L8031B03C
	lwc1    $f14, 0x0028($a1)
	lbu     $t4, 0x0002($v0)
	andi    $t5, $t4, 0x0020
	beqzl   $t5, .L8031B03C
	lwc1    $f14, 0x0028($a1)
	lwc1    $f8, 0x0024($v1)
	mul.s   $f0, $f0, $f8
	nop
	lwc1    $f14, 0x0028($a1)
.L8031B03C:
	lwc1    $f10, 0x0024($a1)
	move    $v1, $0
	move    $a0, $a1
	mul.s   $f2, $f14, $f10
	sub.s   $f12, $f16, $f14
.L8031B050:
	lw      $v0, 0x0044($a0)
	addiu   $v1, $v1, 0x0004
	beqz    $v0, .L8031B0AC
	nop
	lw      $t6, 0x0000($v0)
	srl     $t7, $t6, 31
	beqz    $t7, .L8031B0AC
	nop
	lw      $t8, 0x0044($v0)
	beqz    $t8, .L8031B0AC
	nop
	lwc1    $f18, 0x002C($a1)
	lwc1    $f6, 0x0020($v0)
	lwc1    $f8, 0x0024($v0)
	mul.s   $f4, $f18, $f6
	lwc1    $f18, 0x0028($v0)
	mul.s   $f10, $f8, $f0
	nop
	mul.s   $f6, $f18, $f12
	swc1    $f4, 0x0034($v0)
	swc1    $f10, 0x002C($v0)
	add.s   $f4, $f6, $f2
	swc1    $f4, 0x0030($v0)
.L8031B0AC:
	bne     $v1, $a2, .L8031B050
	addiu   $a0, $a0, 0x0004
.L8031B0B4:
	bne     $a3, $t2, .L8031AFC8
	addiu   $t0, $t0, 0x0004
	lw      $ra, 0x0014($sp)
.L8031B0C0:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_e_8031B0CC:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x3F800000
	bnezl   $t6, .L8031B0EC
	lwc1    $f4, 0x0004($a0)
	mtc1    $at, $f0
	jr      $ra
	nop
	lwc1    $f4, 0x0004($a0)
.L8031B0EC:
	lwc1    $f6, 0x0008($a0)
	li      $v0, 0x0001
	li      $at, 0x4F000000
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($a0)
	cfc1    $t7, $31
	ctc1    $v0, $31
	lwc1    $f10, 0x0004($a0)
	cvt.w.s $f16, $f10
	cfc1    $v0, $31
	nop
	andi    $v0, $v0, 0x0078
	beqzl   $v0, .L8031B16C
	mfc1    $v0, $f16
	mtc1    $at, $f16
	li      $v0, 0x0001
	sub.s   $f16, $f10, $f16
	ctc1    $v0, $31
	nop
	cvt.w.s $f16, $f16
	cfc1    $v0, $31
	nop
	andi    $v0, $v0, 0x0078
	bnez    $v0, .L8031B160
	nop
	mfc1    $v0, $f16
	li      $at, 0x80000000
	b       .L8031B178
	or      $v0, $v0, $at
.L8031B160:
	b       .L8031B178
	li      $v0, -0x0001
	mfc1    $v0, $f16
.L8031B16C:
	nop
	bltz    $v0, .L8031B160
	nop
.L8031B178:
	ctc1    $t7, $31
	sltiu   $at, $v0, 0x007F
	bnezl   $at, .L8031B190
	li      $at, 0x3F800000
	li      $v0, 0x007F
	li      $at, 0x3F800000
.L8031B190:
	mtc1    $at, $f12
	lui     $at, %hi(Na_data_80333598+4*127)
	sll     $t8, $v0, 2
	addu    $at, $at, $t8
	lwc1    $f18, %lo(Na_data_80333598+4*127)($at)
	lwc1    $f6, 0x000C($a0)
	sub.s   $f4, $f18, $f12
	mul.s   $f8, $f4, $f6
	add.s   $f2, $f8, $f12
	mov.s   $f0, $f2
	jr      $ra
	nop

Na_e_8031B1C0:
	lw      $t6, 0x0004($a0)
	lhu     $t7, 0x000E($a0)
	li      $at, 0x0010
	addu    $t8, $t6, $t7
	srl     $t9, $t8, 10
	andi    $v1, $t9, 0x003F
	andi    $v0, $v1, 0x0030
	beqz    $v0, .L8031B20C
	sw      $t8, 0x0004($a0)
	beq     $v0, $at, .L8031B208
	li      $t1, 0x001F
	li      $at, 0x0020
	beq     $v0, $at, .L8031B21C
	li      $at, 0x0030
	beq     $v0, $at, .L8031B224
	li      $t4, 0x003F
	b       .L8031B22C
	lw      $t5, 0x0008($a0)
.L8031B208:
	subu    $v1, $t1, $v1
.L8031B20C:
	lw      $t2, 0x0008($a0)
	addu    $t3, $t2, $v1
	jr      $ra
	lb      $v0, 0x0000($t3)
.L8031B21C:
	b       .L8031B228
	addiu   $v1, $v1, -0x0020
.L8031B224:
	subu    $v1, $t4, $v1
.L8031B228:
	lw      $t5, 0x0008($a0)
.L8031B22C:
	addu    $t6, $t5, $v1
	lb      $v0, 0x0000($t6)
	subu    $v0, $0, $v0
	sll     $t7, $v0, 24
	sra     $v0, $t7, 24
	jr      $ra
	nop

Na_e_8031B248:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lhu     $v0, 0x0016($a0)
	li      $at, 0x3F800000
	beqzl   $v0, .L8031B274
	lhu     $v1, 0x0014($a0)
	addiu   $t6, $v0, -0x0001
	mtc1    $at, $f0
	b       .L8031B430
	sh      $t6, 0x0016($a0)
	lhu     $v1, 0x0014($a0)
.L8031B274:
	li      $at, 0x0001
	beqzl   $v1, .L8031B2F4
	lw      $a1, 0x0000($a0)
	bne     $v1, $at, .L8031B29C
	move    $a1, $v1
	lw      $t7, 0x0000($a0)
	lhu     $v1, 0x0014($a0)
	lhu     $t8, 0x000E($t7)
	b       .L8031B2E0
	sh      $t8, 0x0010($a0)
.L8031B29C:
	lw      $t9, 0x0000($a0)
	lhu     $v0, 0x0010($a0)
	lhu     $t0, 0x000E($t9)
	subu    $t1, $t0, $v0
	div     $0, $t1, $a1
	mflo    $t2
	addu    $t3, $v0, $t2
	sh      $t3, 0x0010($a0)
	bnez    $a1, .L8031B2C8
	nop
	break   7
.L8031B2C8:
	li      $at, -0x0001
	bne     $a1, $at, .L8031B2E0
	li      $at, 0x80000000
	bne     $t1, $at, .L8031B2E0
	nop
	break   6
.L8031B2E0:
	addiu   $t4, $v1, -0x0001
	sh      $t4, 0x0014($a0)
	b       .L8031B31C
	lw      $a1, 0x0000($a0)
	lw      $a1, 0x0000($a0)
.L8031B2F4:
	lhu     $t6, 0x0010($a0)
	lhu     $t5, 0x000E($a1)
	beql    $t5, $t6, .L8031B320
	lhu     $v1, 0x0012($a0)
	lhu     $t7, 0x0012($a1)
	andi    $t8, $t7, 0xFFFF
	bnez    $t8, .L8031B31C
	sh      $t7, 0x0014($a0)
	lhu     $t9, 0x000E($a1)
	sh      $t9, 0x0010($a0)
.L8031B31C:
	lhu     $v1, 0x0012($a0)
.L8031B320:
	li      $at, 0x0001
	beqzl   $v1, .L8031B394
	lhu     $t6, 0x000C($a1)
	bne     $v1, $at, .L8031B344
	move    $a2, $v1
	lhu     $t0, 0x000C($a1)
	lhu     $v1, 0x0012($a0)
	b       .L8031B384
	sh      $t0, 0x000E($a0)
.L8031B344:
	lhu     $v0, 0x000E($a0)
	lhu     $t1, 0x000C($a1)
	subu    $t2, $t1, $v0
	div     $0, $t2, $a2
	mflo    $t3
	addu    $t4, $v0, $t3
	sh      $t4, 0x000E($a0)
	bnez    $a2, .L8031B36C
	nop
	break   7
.L8031B36C:
	li      $at, -0x0001
	bne     $a2, $at, .L8031B384
	li      $at, 0x80000000
	bne     $t2, $at, .L8031B384
	nop
	break   6
.L8031B384:
	addiu   $t5, $v1, -0x0001
	b       .L8031B3B8
	sh      $t5, 0x0012($a0)
	lhu     $t6, 0x000C($a1)
.L8031B394:
	lhu     $t7, 0x000E($a0)
	beql    $t6, $t7, .L8031B3BC
	lhu     $t1, 0x0010($a0)
	lhu     $t8, 0x0010($a1)
	andi    $t9, $t8, 0xFFFF
	bnez    $t9, .L8031B3B8
	sh      $t8, 0x0012($a0)
	lhu     $t0, 0x000C($a1)
	sh      $t0, 0x000E($a0)
.L8031B3B8:
	lhu     $t1, 0x0010($a0)
.L8031B3BC:
	li      $at, 0x3F800000
	bnez    $t1, .L8031B3D4
	nop
	mtc1    $at, $f0
	b       .L8031B434
	lw      $ra, 0x0014($sp)
.L8031B3D4:
	jal     Na_e_8031B1C0
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f14
	lhu     $t2, 0x0010($a0)
	li      $at, 0x4F800000
	sll     $t3, $v0, 2
	mtc1    $t2, $f4
	bgez    $t2, .L8031B40C
	cvt.s.w $f6, $f4
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L8031B40C:
	li      $at, 0x39800000
	mtc1    $at, $f10
	lui     $at, %hi(Na_data_80333598+4*127)
	addu    $at, $at, $t3
	mul.s   $f2, $f6, $f10
	lwc1    $f16, %lo(Na_data_80333598+4*127)($at)
	sub.s   $f18, $f16, $f14
	mul.s   $f4, $f18, $f2
	add.s   $f0, $f4, $f14
.L8031B430:
	lw      $ra, 0x0014($sp)
.L8031B434:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_e_8031B440
Na_e_8031B440:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lbu     $t6, 0x0090($a0)
	move    $a1, $a0
	addiu   $a0, $a0, 0x0074
	beqzl   $t6, .L8031B494
	lw      $ra, 0x0014($sp)
	jal     Na_e_8031B0CC
	sw      $a1, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	li      $at, -0x0001
	lw      $t7, 0x002C($a1)
	swc1    $f0, 0x0018($a1)
	addiu   $a0, $a1, 0x0084
	beql    $t7, $at, .L8031B494
	lw      $ra, 0x0014($sp)
	jal     Na_e_8031B248
	sw      $a1, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	swc1    $f0, 0x001C($a1)
	lw      $ra, 0x0014($sp)
.L8031B494:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_e_8031B4A0
Na_e_8031B4A0:
	li      $at, 0x3F800000
	mtc1    $at, $f0
	lw      $v0, 0x002C($a0)
	la.u    $t0, Na_data_80333BB4
	swc1    $f0, 0x001C($a0)
	swc1    $f0, 0x0018($a0)
	lw      $v1, 0x0050($v0)
	li      $t9, 0x0001
	la.l    $t0, Na_data_80333BB4
	lhu     $t6, 0x000A($v1)
	bnezl   $t6, .L8031B4F4
	addiu   $v0, $a0, 0x0084
	lhu     $t7, 0x000E($v1)
	bnezl   $t7, .L8031B4F4
	addiu   $v0, $a0, 0x0084
	lbu     $t8, 0x0004($v0)
	bnezl   $t8, .L8031B4F4
	addiu   $v0, $a0, 0x0084
	jr      $ra
	sb      $0, 0x0090($a0)
	addiu   $v0, $a0, 0x0084
.L8031B4F4:
	sb      $t9, 0x000C($v0)
	sw      $0, 0x0004($v0)
	sw      $t0, 0x0008($v0)
	lw      $t1, 0x002C($a0)
	lw      $t2, 0x0050($t1)
	sw      $t2, 0x0000($v0)
	lhu     $t3, 0x0012($t2)
	move    $v1, $t2
	andi    $t4, $t3, 0xFFFF
	bnez    $t4, .L8031B52C
	sh      $t3, 0x0014($v0)
	lhu     $t5, 0x000E($t2)
	b       .L8031B534
	sh      $t5, 0x0010($v0)
.L8031B52C:
	lhu     $t6, 0x000A($v1)
	sh      $t6, 0x0010($v0)
.L8031B534:
	lhu     $t7, 0x0010($v1)
	andi    $t8, $t7, 0xFFFF
	bnez    $t8, .L8031B550
	sh      $t7, 0x0012($v0)
	lhu     $t9, 0x000C($v1)
	b       .L8031B558
	sh      $t9, 0x000E($v0)
.L8031B550:
	lhu     $t0, 0x0008($v1)
	sh      $t0, 0x000E($v0)
.L8031B558:
	lhu     $t1, 0x0014($v1)
	sh      $t1, 0x0016($v0)
	lw      $t2, 0x002C($a0)
	lw      $at, 0x0004($t2)
	sw      $at, 0x0074($a0)
	lw      $t4, 0x0008($t2)
	sw      $t4, 0x0078($a0)
	lw      $at, 0x000C($t2)
	sw      $at, 0x007C($a0)
	lw      $t4, 0x0010($t2)
	sw      $t4, 0x0080($a0)
	jr      $ra
	nop

.globl Na_e_8031B58C
Na_e_8031B58C:
	sb      $0, 0x0000($a0)
	sb      $0, 0x0001($a0)
	sh      $0, 0x0002($a0)
	sh      $0, 0x000A($a0)
	sw      $0, 0x0010($a0)
	sw      $a1, 0x001C($a0)
	jr      $ra
	sw      $a2, 0x0018($a0)

.globl Na_e_8031B5AC
Na_e_8031B5AC:
	lbu     $t6, 0x0001($a0)
	lbu     $v0, 0x0000($a0)
	sltiu   $at, $t6, 0x0009
	beqz    $at, .L8031B7E4
	move    $a1, $v0
	sll     $t6, $t6, 2
	lui     $at, %hi(Na_e_80338E30)
	addu    $at, $at, $t6
	lw      $t6, %lo(Na_e_80338E30)($at)
	jr      $t6
	nop
.globl L8031B5D8
L8031B5D8:
	jr      $ra
	move    $v0, $0
.globl L8031B5E0
L8031B5E0:
	lh      $v1, 0x0002($a0)
	andi    $t7, $v0, 0x0040
	move    $a1, $v0
	sh      $v1, 0x0006($a0)
	beqz    $t7, L8031B604
	sh      $v1, 0x0004($a0)
	li      $t8, 0x0005
	b       .L8031B7E4
	sb      $t8, 0x0001($a0)
.globl L8031B604
L8031B604:
	lh      $t9, 0x0006($a0)
	li      $t1, 0x0003
	sh      $0, 0x0008($a0)
	sll     $t0, $t9, 16
	sw      $t0, 0x0014($a0)
	sb      $t1, 0x0001($a0)
.globl L8031B61C
L8031B61C:
	lh      $v1, 0x0008($a0)
	lw      $t2, 0x001C($a0)
	li      $at, -0x0003
	sll     $t3, $v1, 2
	addu    $a1, $t2, $t3
	lh      $t4, 0x0000($a1)
	li      $t5, 0x0001
	sh      $t4, 0x000A($a0)
	lh      $a3, 0x000A($a0)
	beq     $a3, $at, .L8031B6E4
	move    $a2, $a3
	li      $at, -0x0002
	beq     $a3, $at, .L8031B6D8
	li      $at, -0x0001
	beql    $a3, $at, .L8031B6D0
	li      $t3, 0x0005
	beqz    $a3, .L8031B6C4
	nop
	lh      $t5, 0x0002($a1)
	lh      $t7, 0x0006($a0)
	li      $t1, 0x0004
	sh      $t5, 0x0004($a0)
	lh      $t6, 0x0004($a0)
	addiu   $t2, $v1, 0x0001
	sh      $t2, 0x0008($a0)
	subu    $t8, $t6, $t7
	sll     $t9, $t8, 16
	div     $0, $t9, $a3
	mflo    $t0
	sw      $t0, 0x0010($a0)
	bnez    $a3, .L8031B6A0
	nop
	break   7
.L8031B6A0:
	li      $at, -0x0001
	bne     $a3, $at, .L8031B6B8
	li      $at, 0x80000000
	bne     $t9, $at, .L8031B6B8
	nop
	break   6
.L8031B6B8:
	sb      $t1, 0x0001($a0)
	b       .L8031B6EC
	lbu     $t6, 0x0001($a0)
.L8031B6C4:
	b       .L8031B6E8
	sb      $0, 0x0001($a0)
	li      $t3, 0x0005
.L8031B6D0:
	b       .L8031B6E8
	sb      $t3, 0x0001($a0)
.L8031B6D8:
	lh      $t4, 0x0002($a1)
	b       .L8031B6E8
	sh      $t4, 0x0008($a0)
.L8031B6E4:
	sb      $t5, 0x0001($a0)
.L8031B6E8:
	lbu     $t6, 0x0001($a0)
.L8031B6EC:
	li      $at, 0x0004
	beql    $t6, $at, .L8031B704
	lh      $t2, 0x000A($a0)
	b       .L8031B7E4
	move    $a1, $v0
.globl L8031B700
L8031B700:
	lh      $t2, 0x000A($a0)
.L8031B704:
	lw      $t7, 0x0014($a0)
	lw      $t8, 0x0010($a0)
	addiu   $t3, $t2, -0x0001
	sh      $t3, 0x000A($a0)
	lh      $t4, 0x000A($a0)
	addu    $t9, $t7, $t8
	sra     $t1, $t9, 16
	sw      $t9, 0x0014($a0)
	bgtz    $t4, L8031B734
	sh      $t1, 0x0006($a0)
	li      $t5, 0x0003
	sb      $t5, 0x0001($a0)
.globl L8031B734
L8031B734:
	b       .L8031B7E4
	move    $a1, $v0
.globl L8031B73C
L8031B73C:
	lh      $t6, 0x0006($a0)
	lh      $t7, 0x000E($a0)
	lh      $v1, 0x000C($a0)
	subu    $t8, $t6, $t7
	beqz    $v1, .L8031B79C
	sh      $t8, 0x0006($a0)
	lbu     $t9, 0x0001($a0)
	li      $at, 0x0006
	bnel    $t9, $at, .L8031B7A0
	lh      $t3, 0x0006($a0)
	lh      $t0, 0x0006($a0)
	li      $t2, 0x0008
	slt     $at, $t0, $v1
	beqz    $at, .L8031B794
	nop
	sh      $v1, 0x0006($a0)
	bgez    $v1, .L8031B78C
	sra     $t1, $v1, 4
	addiu   $at, $v1, 0x000F
	sra     $t1, $at, 4
.L8031B78C:
	sh      $t1, 0x000A($a0)
	sb      $t2, 0x0001($a0)
.L8031B794:
	b       .L8031B7E4
	move    $a1, $v0
.L8031B79C:
	lh      $t3, 0x0006($a0)
.L8031B7A0:
	slti    $at, $t3, 0x0064
	beqz    $at, .L8031B7B4
	nop
	sh      $0, 0x0006($a0)
	sb      $0, 0x0001($a0)
.L8031B7B4:
	b       .L8031B7E4
	move    $a1, $v0
.globl L8031B7BC
L8031B7BC:
	lh      $t4, 0x000A($a0)
	li      $t7, 0x0007
	addiu   $t5, $t4, -0x0001
	sh      $t5, 0x000A($a0)
	lh      $t6, 0x000A($a0)
	bnez    $t6, .L8031B7DC
	nop
	sb      $t7, 0x0001($a0)
.L8031B7DC:
	b       .L8031B7E4
	move    $a1, $v0
.L8031B7E4:
	andi    $t8, $a1, 0x0020
	beqz    $t8, .L8031B800
	andi    $t1, $a1, 0x0010
	li      $t9, 0x0006
	andi    $t0, $a1, 0xFFDF
	sb      $t9, 0x0001($a0)
	sb      $t0, 0x0000($a0)
.L8031B800:
	beqz    $t1, .L8031B814
	li      $t2, 0x0007
	andi    $t3, $a1, 0xFFCF
	sb      $t2, 0x0001($a0)
	sb      $t3, 0x0000($a0)
.L8031B814:
	lh      $t4, 0x0006($a0)
	lw      $t5, 0x0018($a0)
	move    $v0, $0
	sh      $t4, 0x0000($t5)
	jr      $ra
	nop

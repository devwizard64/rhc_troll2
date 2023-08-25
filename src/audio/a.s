.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

Na_a_80314A30:
	la.u    $t0, _Na_bss+0x102
	la.l    $t0, _Na_bss+0x102
	lb      $t6, 0x0000($t0)
	addiu   $sp, $sp, -0x0020
	li      $at, 0x0001
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	beq     $t6, $at, .L80314BE0
	sw      $a1, 0x0024($sp)
	la.u    $a3, _Na_bss+0x10
	la.l    $a3, _Na_bss+0x10
	lbu     $t7, 0x0002($a3)
	sll     $t3, $a1, 2
	addu    $t3, $t3, $a1
	bnezl   $t7, .L80314BE4
	lw      $t1, 0x0020($sp)
	lbu     $t8, 0x0003($a3)
	sll     $t3, $t3, 2
	li      $a1, 0x0280
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 4
	addu    $t1, $a3, $t9
	addu    $a2, $t1, $t3
	addiu   $a2, $a2, 0x002C
	lw      $a0, 0x0004($a2)
	jal     osInvalDCache
	sw      $a2, 0x001C($sp)
	lw      $a2, 0x001C($sp)
	la.u    $a3, _Na_bss+0x10
	la.u    $t0, _Na_bss+0x102
	lh      $t4, 0x0010($a2)
	la.l    $t0, _Na_bss+0x102
	la.l    $a3, _Na_bss+0x10
	move    $a1, $0
	move    $v1, $0
	bgez    $t4, .L80314AD0
	sra     $t5, $t4, 1
	addiu   $at, $t4, 0x0001
	sra     $t5, $at, 1
.L80314AD0:
	blezl   $t5, .L80314B60
	lh      $t3, 0x0012($a2)
	lw      $t6, 0x0004($a2)
.L80314ADC:
	lw      $t9, 0x0014($a3)
	lw      $t3, 0x000C($a2)
	sll     $v0, $a1, 1
	addu    $t7, $t6, $v0
	lh      $t8, 0x0000($t7)
	sll     $t2, $v1, 1
	addu    $t1, $t9, $t2
	sll     $t4, $t3, 1
	addu    $t5, $t1, $t4
	sh      $t8, 0x0000($t5)
	lw      $t6, 0x0008($a2)
	lw      $t4, 0x000C($a2)
	lw      $t2, 0x0018($a3)
	addu    $t7, $t6, $v0
	lh      $t9, 0x0000($t7)
	sll     $t3, $v1, 1
	sll     $t8, $t4, 1
	addu    $t1, $t2, $t3
	addu    $t5, $t1, $t8
	sh      $t9, 0x0000($t5)
	lh      $t7, 0x0010($a2)
	lb      $t6, 0x0000($t0)
	addiu   $v1, $v1, 0x0001
	addu    $a1, $a1, $t6
	bgez    $t7, .L80314B4C
	sra     $t2, $t7, 1
	addiu   $at, $t7, 0x0001
	sra     $t2, $at, 1
.L80314B4C:
	slt     $at, $v1, $t2
	bnezl   $at, .L80314ADC
	lw      $t6, 0x0004($a2)
	move    $v1, $0
	lh      $t3, 0x0012($a2)
.L80314B60:
	bgez    $t3, .L80314B70
	sra     $t4, $t3, 1
	addiu   $at, $t3, 0x0001
	sra     $t4, $at, 1
.L80314B70:
	blezl   $t4, .L80314BE4
	lw      $t1, 0x0020($sp)
	move    $a0, $0
	lw      $t1, 0x0004($a2)
.L80314B80:
	sll     $v0, $a1, 1
	lw      $t5, 0x0014($a3)
	addu    $t8, $t1, $v0
	lh      $t9, 0x0000($t8)
	addu    $t6, $t5, $a0
	addiu   $v1, $v1, 0x0001
	sh      $t9, 0x0000($t6)
	lw      $t7, 0x0008($a2)
	lw      $t4, 0x0018($a3)
	addu    $t2, $t7, $v0
	lh      $t3, 0x0000($t2)
	addu    $t1, $t4, $a0
	addiu   $a0, $a0, 0x0002
	sh      $t3, 0x0000($t1)
	lh      $t5, 0x0012($a2)
	lb      $t8, 0x0000($t0)
	addu    $a1, $a1, $t8
	bgez    $t5, .L80314BD4
	sra     $t9, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t9, $at, 1
.L80314BD4:
	slt     $at, $v1, $t9
	bnezl   $at, .L80314B80
	lw      $t1, 0x0004($a2)
.L80314BE0:
	lw      $t1, 0x0020($sp)
.L80314BE4:
	lb      $t8, 0x0000($t0)
	la.u    $a3, _Na_bss+0x10
	la.l    $a3, _Na_bss+0x10
	div     $0, $t1, $t8
	lbu     $t6, 0x0003($a3)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x0008($a3)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	lw      $t6, 0x0010($a3)
	sll     $t3, $t4, 2
	sll     $t7, $t7, 4
	mflo    $v0
	addu    $t3, $t3, $t4
	sll     $t3, $t3, 2
	addu    $t2, $a3, $t7
	addu    $t9, $v0, $t5
	addu    $a2, $t2, $t3
	subu    $a0, $t9, $t6
	addiu   $a2, $a2, 0x002C
	bnez    $t8, .L80314C40
	nop
	break   7
.L80314C40:
	li      $at, -0x0001
	bne     $t8, $at, .L80314C58
	li      $at, 0x80000000
	bne     $t1, $at, .L80314C58
	nop
	break   6
.L80314C58:
	move    $v1, $v0
	bgez    $a0, .L80314C88
	sll     $t5, $a0, 1
	sll     $t7, $v0, 1
	sh      $t7, 0x0010($a2)
	sh      $0, 0x0012($a2)
	lw      $t4, 0x0008($a3)
	sw      $t4, 0x000C($a2)
	lw      $t2, 0x0008($a3)
	addu    $t3, $t2, $v0
	b       .L80314CA4
	sw      $t3, 0x0008($a3)
.L80314C88:
	subu    $t1, $v1, $a0
	sll     $t8, $t1, 1
	sh      $t8, 0x0010($a2)
	sh      $t5, 0x0012($a2)
	lw      $t9, 0x0008($a3)
	sw      $t9, 0x000C($a2)
	sw      $a0, 0x0008($a3)
.L80314CA4:
	sh      $v1, 0x0000($a2)
	lw      $t6, 0x0020($sp)
	sh      $t6, 0x0002($a2)
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

Na_a_80314CC0:
	sw      $a0, 0x0000($sp)
	andi    $t6, $a0, 0xFFFF
	sw      $a1, 0x0004($sp)
	andi    $t7, $a1, 0xFFFF
	li      $at, 0x0080
	move    $a1, $t7
	beq     $a2, $at, .L80314D34
	move    $a0, $t6
	li      $at, 0x0088
	beq     $a2, $at, .L80314D70
	sra     $t8, $a1, 8
	li      $at, 0x0090
	beq     $a2, $at, .L80314DA8
	sra     $t0, $a0, 8
	sra     $t8, $t6, 8
	sll     $t9, $t8, 2
	lui     $at, %hi(Na_rate_136B)
	addu    $at, $at, $t9
	lwc1    $f4, %lo(Na_rate_136B)($at)
	sra     $t0, $t7, 8
	sll     $t1, $t0, 2
	lui     $at, %hi(Na_rate_136A)
	addu    $at, $at, $t1
	lwc1    $f6, %lo(Na_rate_136A)($at)
	mul.s   $f0, $f4, $f6
	trunc.w.s $f8, $f0
	mfc1    $v0, $f8
	jr      $ra
	nop
.L80314D34:
	sra     $t2, $a0, 8
	sll     $t3, $t2, 2
	lui     $at, %hi(Na_rate_128B)
	addu    $at, $at, $t3
	lwc1    $f8, %lo(Na_rate_128B)($at)
	sra     $t4, $a1, 8
	sll     $t5, $t4, 2
	lui     $at, %hi(Na_rate_128A)
	addu    $at, $at, $t5
	lwc1    $f10, %lo(Na_rate_128A)($at)
	mul.s   $f0, $f8, $f10
	trunc.w.s $f8, $f0
	mfc1    $v0, $f8
	jr      $ra
	nop
.L80314D70:
	sra     $t6, $a0, 8
	sll     $t7, $t6, 2
	lui     $at, %hi(Na_rate_136B)
	addu    $at, $at, $t7
	lwc1    $f16, %lo(Na_rate_136B)($at)
	lui     $at, %hi(Na_rate_136A)
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f18, %lo(Na_rate_136A)($at)
	mul.s   $f0, $f16, $f18
	trunc.w.s $f8, $f0
	mfc1    $v0, $f8
	jr      $ra
	nop
.L80314DA8:
	sll     $t1, $t0, 2
	lui     $at, %hi(Na_rate_144B)
	addu    $at, $at, $t1
	lwc1    $f4, %lo(Na_rate_144B)($at)
	sra     $t2, $a1, 8
	sll     $t3, $t2, 2
	lui     $at, %hi(Na_rate_144A)
	addu    $at, $at, $t3
	lwc1    $f6, %lo(Na_rate_144A)($at)
	mul.s   $f0, $f4, $f6
	nop
	trunc.w.s $f8, $f0
	mfc1    $v0, $f8
	jr      $ra
	nop

.globl Na_a_80314DE4
Na_a_80314DE4:
	addiu   $sp, $sp, -0x0040
	sw      $s5, 0x002C($sp)
	sw      $ra, 0x003C($sp)
	sw      $s8, 0x0038($sp)
	sw      $s7, 0x0034($sp)
	sw      $s6, 0x0030($sp)
	sw      $s4, 0x0028($sp)
	sw      $s3, 0x0024($sp)
	sw      $s2, 0x0020($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	la.u    $s5, _Na_bss+0x5DDE
	li      $t7, 0x07000000
	la.l    $s5, _Na_bss+0x5DDE
	sw      $t7, 0x0000($a0)
	sw      $0, 0x0004($a0)
	lb      $s1, 0x0000($s5)
	move    $s2, $a3
	move    $s4, $a2
	addiu   $s6, $a0, 0x0008
	blez    $s1, .L80314EF8
	move    $t6, $a0
	la.u    $s7, _Na_bss+0x10
	la.l    $s7, _Na_bss+0x10
	li      $s8, 0x0001
.L80314E50:
	bne     $s1, $s8, .L80314E60
	addiu   $s3, $s1, -0x0001
	b       .L80314EA4
	move    $s0, $s2
.L80314E60:
	div     $0, $s2, $s1
	bnez    $s1, .L80314E70
	nop
	break   7
.L80314E70:
	li      $at, -0x0001
	bne     $s1, $at, .L80314E88
	li      $at, 0x80000000
	bne     $s2, $at, .L80314E88
	nop
	break   6
.L80314E88:
	mflo    $v0
	andi    $v1, $v0, 0x0007
	subu    $a0, $v0, $v1
	slti    $at, $v1, 0x0004
	bnez    $at, .L80314EA4
	move    $s0, $a0
	addiu   $s0, $a0, 0x0008
.L80314EA4:
	jal     Na_f_8031E240
	move    $a0, $s3
	lbu     $t8, 0x0001($s7)
	beqzl   $t8, .L80314ECC
	lb      $t0, 0x0000($s5)
	lb      $t9, 0x0000($s5)
	move    $a0, $s0
	jal     Na_a_80314A30
	subu    $a1, $t9, $s1
	lb      $t0, 0x0000($s5)
.L80314ECC:
	move    $a0, $s4
	move    $a1, $s0
	move    $a2, $s6
	jal     Na_a_80314F64
	subu    $a3, $t0, $s1
	sll     $t1, $s0, 2
	move    $s1, $s3
	move    $s6, $v0
	subu    $s2, $s2, $s0
	bgtz    $s3, .L80314E50
	addu    $s4, $s4, $t1
.L80314EF8:
	la.u    $s7, _Na_bss+0x10
	la.l    $s7, _Na_bss+0x10
	lbu     $v0, 0x0002($s7)
	beqz    $v0, .L80314F10
	addiu   $t2, $v0, -0x0001
	sb      $t2, 0x0002($s7)
.L80314F10:
	lbu     $t3, 0x0003($s7)
	lw      $t5, 0x0040($sp)
	lw      $t8, 0x0044($sp)
	xori    $t4, $t3, 0x0001
	subu    $t7, $s6, $t5
	sb      $t4, 0x0003($s7)
	sra     $t6, $t7, 3
	sw      $t6, 0x0000($t8)
	lw      $ra, 0x003C($sp)
	move    $v0, $s6
	lw      $s6, 0x0030($sp)
	lw      $s8, 0x0038($sp)
	lw      $s7, 0x0034($sp)
	lw      $s5, 0x002C($sp)
	lw      $s4, 0x0028($sp)
	lw      $s3, 0x0024($sp)
	lw      $s2, 0x0020($sp)
	lw      $s1, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

Na_a_80314F64:
	la.u    $t0, _Na_bss+0x10
	la.l    $t0, _Na_bss+0x10
	lbu     $t7, 0x0003($t0)
	sll     $t6, $a3, 2
	addiu   $sp, $sp, -0x00D0
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	lbu     $t7, 0x0001($t0)
	sll     $t8, $t8, 4
	addu    $t6, $t6, $a3
	sll     $t6, $t6, 2
	addu    $t9, $t0, $t8
	addu    $v1, $t9, $t6
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x00D0($sp)
	sw      $a1, 0x00D4($sp)
	addiu   $v1, $v1, 0x002C
	bnez    $t7, .L80314FE0
	sw      $t6, 0x001C($sp)
	move    $v0, $a2
	li.u    $t8, 0x020004C0
	li.l    $t8, 0x020004C0
	li      $t9, 0x0280
	sw      $t9, 0x0004($v0)
	sw      $t8, 0x0000($v0)
	addiu   $a2, $a2, 0x0008
	lw      $a1, 0x00D4($sp)
	jal     Na_a_80315590
	lw      $a0, 0x00D0($sp)
	b       .L8031557C
	move    $a2, $v0
.L80314FE0:
	lui     $t6, %hi(_Na_bss+0x102)
	lb      $t6, %lo(_Na_bss+0x102)($t6)
	li      $at, 0x0001
	li      $t2, 0x04000000
	bne     $t6, $at, .L80315184
	li      $t3, 0x80000000
	move    $v0, $a2
	li.u    $t7, 0x08000740
	li      $t5, 0x0140
	li.l    $t7, 0x08000740
	addiu   $a2, $a2, 0x0008
	li      $t2, 0x04000000
	move    $a0, $a2
	sw      $t7, 0x0000($v0)
	sw      $t5, 0x0004($v0)
	sw      $t2, 0x0000($a0)
	lw      $t8, 0x000C($v1)
	lw      $t6, 0x0014($t0)
	li      $t3, 0x80000000
	sll     $t9, $t8, 1
	addiu   $a2, $a2, 0x0008
	addu    $t7, $t9, $t6
	addu    $t8, $t7, $t3
	move    $a1, $a2
	sw      $t8, 0x0004($a0)
	li.u    $t9, 0x08000880
	li.l    $t9, 0x08000880
	addiu   $a2, $a2, 0x0008
	move    $a3, $a2
	sw      $t9, 0x0000($a1)
	sw      $t5, 0x0004($a1)
	sw      $t2, 0x0000($a3)
	lw      $t6, 0x000C($v1)
	lw      $t8, 0x0018($t0)
	addiu   $a2, $a2, 0x0008
	sll     $t7, $t6, 1
	addu    $t9, $t7, $t8
	addu    $t6, $t9, $t3
	sw      $t6, 0x0004($a3)
	lh      $t7, 0x0012($v1)
	li      $t1, 0x0140
	li      $at, 0x8000
	beqzl   $t7, .L80315120
	move    $v0, $a2
	lh      $t8, 0x0010($v1)
	li      $t5, 0x08000000
	move    $v0, $a2
	addiu   $t9, $t8, 0x0740
	andi    $t6, $t9, 0xFFFF
	or      $t7, $t6, $t5
	sw      $t7, 0x0000($v0)
	lh      $t8, 0x0010($v1)
	addiu   $a2, $a2, 0x0008
	move    $a0, $a2
	subu    $t9, $t1, $t8
	andi    $t6, $t9, 0xFFFF
	sw      $t6, 0x0004($v0)
	sw      $t2, 0x0000($a0)
	lw      $t7, 0x0014($t0)
	addiu   $a2, $a2, 0x0008
	move    $a1, $a2
	addu    $t8, $t7, $t3
	sw      $t8, 0x0004($a0)
	lh      $t9, 0x0010($v1)
	addiu   $a2, $a2, 0x0008
	move    $a3, $a2
	addiu   $t6, $t9, 0x0880
	andi    $t7, $t6, 0xFFFF
	or      $t8, $t7, $t5
	sw      $t8, 0x0000($a1)
	lh      $t9, 0x0010($v1)
	addiu   $a2, $a2, 0x0008
	subu    $t6, $t1, $t9
	andi    $t7, $t6, 0xFFFF
	sw      $t7, 0x0004($a1)
	sw      $t2, 0x0000($a3)
	lw      $t8, 0x0018($t0)
	addu    $t9, $t8, $t3
	sw      $t9, 0x0004($a3)
	move    $v0, $a2
.L80315120:
	li.u    $t6, 0x0A000740
	li.u    $t7, 0x04C00280
	li.l    $t7, 0x04C00280
	li.l    $t6, 0x0A000740
	addiu   $a2, $a2, 0x0008
	sw      $t6, 0x0000($v0)
	sw      $t7, 0x0004($v0)
	move    $a0, $a2
	li      $t5, 0x08000000
	li      $t8, 0x0280
	sw      $t8, 0x0004($a0)
	sw      $t5, 0x0000($a0)
	lhu     $t9, 0x0004($t0)
	addiu   $a2, $a2, 0x0008
	move    $a1, $a2
	addu    $t6, $t9, $at
	andi    $t7, $t6, 0xFFFF
	li      $at, 0x0C000000
	li.u    $t9, 0x07400740
	li.l    $t9, 0x07400740
	or      $t8, $t7, $at
	sw      $t8, 0x0000($a1)
	sw      $t9, 0x0004($a1)
	b       .L803153E4
	addiu   $a2, $a2, 0x0008
.L80315184:
	lw      $t4, 0x000C($v1)
	lh      $t6, 0x0010($v1)
	move    $v0, $a2
	andi    $t7, $t4, 0x0007
	sll     $t8, $t7, 17
	sra     $t4, $t8, 16
	addu    $ra, $t6, $t4
	li.u    $t6, 0x08000740
	li      $t5, 0x0140
	addiu   $ra, $ra, 0x000F
	li.l    $t6, 0x08000740
	addiu   $a2, $a2, 0x0008
	andi    $t7, $ra, 0xFFF0
	move    $a0, $a2
	sw      $t6, 0x0000($v0)
	sw      $t5, 0x0004($v0)
	sll     $t8, $t7, 16
	sw      $t2, 0x0000($a0)
	lw      $t7, 0x000C($v1)
	sra     $t9, $t8, 16
	li      $at, -0x0010
	lw      $t6, 0x0014($t0)
	move    $ra, $t9
	addiu   $a2, $a2, 0x0008
	bgez    $t4, .L803151F4
	sra     $a3, $t4, 1
	addiu   $at, $t4, 0x0001
	sra     $a3, $at, 1
.L803151F4:
	subu    $t8, $t7, $a3
	sll     $t9, $t8, 1
	addu    $t7, $t9, $t6
	addu    $t8, $t7, $t3
	move    $a1, $a2
	sw      $t8, 0x0004($a0)
	li.u    $t9, 0x08000880
	li.l    $t9, 0x08000880
	addiu   $a2, $a2, 0x0008
	move    $t1, $a2
	sw      $t9, 0x0000($a1)
	sw      $t5, 0x0004($a1)
	sw      $t2, 0x0000($t1)
	lw      $t6, 0x000C($v1)
	lw      $t9, 0x0018($t0)
	addiu   $a2, $a2, 0x0008
	subu    $t7, $t6, $a3
	sll     $t8, $t7, 1
	addu    $t6, $t8, $t9
	addu    $t7, $t6, $t3
	sw      $t7, 0x0004($t1)
	lh      $t8, 0x0012($v1)
	li      $t5, 0x08000000
	move    $v0, $a2
	beqz    $t8, .L803152D0
	li      $at, 0x04C00000
	addiu   $t9, $ra, 0x0740
	andi    $t6, $t9, 0xFFFF
	li      $t8, 0x0140
	subu    $a0, $t8, $ra
	andi    $t9, $a0, 0xFFFF
	or      $t7, $t6, $t5
	addiu   $a2, $a2, 0x0008
	move    $a1, $a2
	sw      $t7, 0x0000($v0)
	sw      $t9, 0x0004($v0)
	sw      $t2, 0x0000($a1)
	lw      $t6, 0x0014($t0)
	addiu   $a2, $a2, 0x0008
	move    $a3, $a2
	move    $a0, $t9
	addiu   $t8, $ra, 0x0880
	addu    $t7, $t6, $t3
	sw      $t7, 0x0004($a1)
	andi    $t9, $t8, 0xFFFF
	or      $t6, $t9, $t5
	addiu   $a2, $a2, 0x0008
	move    $t1, $a2
	sw      $t6, 0x0000($a3)
	sw      $a0, 0x0004($a3)
	sw      $t2, 0x0000($t1)
	lw      $t7, 0x0018($t0)
	addiu   $a2, $a2, 0x0008
	addu    $t8, $t7, $t3
	sw      $t8, 0x0004($t1)
.L803152D0:
	addiu   $t9, $t4, 0x0740
	li      $t5, 0x08000000
	andi    $t6, $t9, 0xFFFF
	or      $t7, $t6, $t5
	move    $v0, $a2
	sw      $t7, 0x0000($v0)
	lw      $a0, 0x00D4($sp)
	li      $ra, 0x05000000
	addiu   $a2, $a2, 0x0008
	sll     $t8, $a0, 1
	andi    $a0, $t8, 0xFFFF
	or      $t6, $a0, $at
	sw      $t6, 0x0004($v0)
	lbu     $t8, 0x0000($t0)
	move    $a1, $a2
	addiu   $a2, $a2, 0x0008
	sll     $t9, $t8, 16
	lhu     $t8, 0x0006($t0)
	or      $t6, $t9, $ra
	li      $t2, 0x06000000
	or      $t9, $t6, $t8
	sw      $t9, 0x0000($a1)
	lw      $t7, 0x001C($t0)
	addiu   $t8, $t4, 0x0880
	andi    $t9, $t8, 0xFFFF
	addu    $t6, $t7, $t3
	sw      $t6, 0x0004($a1)
	move    $a3, $a2
	or      $t6, $a0, $t2
	or      $t7, $t9, $t5
	sw      $t7, 0x0000($a3)
	sw      $t6, 0x0004($a3)
	lbu     $t9, 0x0000($t0)
	addiu   $a2, $a2, 0x0008
	move    $t1, $a2
	sll     $t7, $t9, 16
	lhu     $t9, 0x0006($t0)
	or      $t6, $t7, $ra
	addiu   $a2, $a2, 0x0008
	or      $t7, $t6, $t9
	sw      $t7, 0x0000($t1)
	lw      $t8, 0x0020($t0)
	move    $v0, $a2
	li      $t9, 0x0280
	addu    $t6, $t8, $t3
	sw      $t6, 0x0004($t1)
	sw      $t9, 0x0004($v0)
	sw      $t5, 0x0000($v0)
	lhu     $t7, 0x0004($t0)
	li      $at, 0x8000
	addiu   $a2, $a2, 0x0008
	addu    $t8, $t7, $at
	andi    $t6, $t8, 0xFFFF
	li      $at, 0x0C000000
	move    $a0, $a2
	addiu   $a2, $a2, 0x0008
	or      $t9, $t6, $at
	li.u    $t7, 0x04C004C0
	li.l    $t7, 0x04C004C0
	move    $a1, $a2
	sw      $t7, 0x0004($a0)
	sw      $t9, 0x0000($a0)
	li.u    $t6, 0x07400280
	li.u    $t8, 0x0A0004C0
	li.l    $t8, 0x0A0004C0
	li.l    $t6, 0x07400280
	sw      $t6, 0x0004($a1)
	sw      $t8, 0x0000($a1)
	addiu   $a2, $a2, 0x0008
.L803153E4:
	lw      $a0, 0x00D0($sp)
	lw      $a1, 0x00D4($sp)
	jal     Na_a_80315590
	sw      $v1, 0x00BC($sp)
	lui     $t9, %hi(_Na_bss+0x102)
	lb      $t9, %lo(_Na_bss+0x102)($t9)
	la.u    $t0, _Na_bss+0x10
	li      $at, 0x0001
	la.l    $t0, _Na_bss+0x10
	lw      $v1, 0x00BC($sp)
	li      $t2, 0x06000000
	li      $t3, 0x80000000
	bne     $t9, $at, .L80315530
	li      $t5, 0x08000000
	sw      $t5, 0x0000($v0)
	lh      $t7, 0x0010($v1)
	li      $at, 0x07400000
	addiu   $a2, $v0, 0x0008
	andi    $t8, $t7, 0xFFFF
	or      $t6, $t8, $at
	sw      $t6, 0x0004($v0)
	move    $a1, $a2
	sw      $t2, 0x0000($a1)
	lw      $t9, 0x000C($v1)
	lw      $t8, 0x0014($t0)
	addiu   $a2, $a2, 0x0008
	sll     $t7, $t9, 1
	addu    $t6, $t7, $t8
	addu    $t9, $t6, $t3
	sw      $t9, 0x0004($a1)
	move    $a3, $a2
	sw      $t5, 0x0000($a3)
	lh      $t7, 0x0010($v1)
	li      $at, 0x08800000
	addiu   $a2, $a2, 0x0008
	andi    $t8, $t7, 0xFFFF
	or      $t6, $t8, $at
	sw      $t6, 0x0004($a3)
	move    $t1, $a2
	sw      $t2, 0x0000($t1)
	lw      $t9, 0x000C($v1)
	lw      $t8, 0x0018($t0)
	addiu   $a2, $a2, 0x0008
	sll     $t7, $t9, 1
	addu    $t6, $t7, $t8
	addu    $t9, $t6, $t3
	sw      $t9, 0x0004($t1)
	lh      $t7, 0x0012($v1)
	move    $v0, $a2
	beqzl   $t7, .L80315580
	lw      $ra, 0x0014($sp)
	sw      $t5, 0x0000($v0)
	lh      $t8, 0x0012($v1)
	lh      $t9, 0x0010($v1)
	addiu   $a2, $a2, 0x0008
	andi    $t6, $t8, 0xFFFF
	addiu   $t8, $t9, 0x0740
	sll     $t9, $t8, 16
	or      $t7, $t6, $t9
	sw      $t7, 0x0004($v0)
	move    $a0, $a2
	sw      $t2, 0x0000($a0)
	lw      $t8, 0x0014($t0)
	addiu   $a2, $a2, 0x0008
	move    $a1, $a2
	addu    $t6, $t8, $t3
	sw      $t6, 0x0004($a0)
	sw      $t5, 0x0000($a1)
	lh      $t9, 0x0012($v1)
	lh      $t8, 0x0010($v1)
	addiu   $a2, $a2, 0x0008
	andi    $t7, $t9, 0xFFFF
	addiu   $t9, $t8, 0x0880
	sll     $t8, $t9, 16
	or      $t6, $t7, $t8
	sw      $t6, 0x0004($a1)
	move    $a3, $a2
	sw      $t2, 0x0000($a3)
	lw      $t9, 0x0018($t0)
	addiu   $a2, $a2, 0x0008
	addu    $t7, $t9, $t3
	b       .L8031557C
	sw      $t7, 0x0004($a3)
.L80315530:
	li.u    $t8, 0x07400280
	li.l    $t8, 0x07400280
	addiu   $a2, $v0, 0x0008
	sw      $t8, 0x0004($v0)
	sw      $t5, 0x0000($v0)
	move    $a0, $a2
	sw      $t2, 0x0000($a0)
	lbu     $t6, 0x0003($t0)
	lw      $t8, 0x001C($sp)
	addiu   $a2, $a2, 0x0008
	sll     $t9, $t6, 2
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 4
	addu    $t7, $t0, $t9
	addu    $t6, $t7, $t8
	lw      $t9, 0x0030($t6)
	addu    $t7, $t9, $t3
	sw      $t7, 0x0004($a0)
	sb      $0, 0x0000($t0)
.L8031557C:
	lw      $ra, 0x0014($sp)
.L80315580:
	addiu   $sp, $sp, 0x00D0
	move    $v0, $a2
	jr      $ra
	nop

Na_a_80315590:
	addiu   $sp, $sp, -0x0170
	lui     $t6, %hi(_Na_bss+0x5DD0)
	lw      $t6, %lo(_Na_bss+0x5DD0)($t6)
	sw      $s4, 0x0030($sp)
	move    $s4, $a2
	sw      $ra, 0x0044($sp)
	sw      $s8, 0x0040($sp)
	sw      $s7, 0x003C($sp)
	sw      $s6, 0x0038($sp)
	sw      $s5, 0x0034($sp)
	sw      $s3, 0x002C($sp)
	sw      $s2, 0x0028($sp)
	sw      $s1, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	sw      $a0, 0x0170($sp)
	sw      $a1, 0x0174($sp)
	sw      $0, 0x016C($sp)
	blez    $t6, .L80315F6C
	sw      $0, 0x0154($sp)
	sw      $0, 0x0064($sp)
.L803155E0:
	lui     $t8, %hi(_Na_bss+0x1870)
	lw      $t8, %lo(_Na_bss+0x1870)($t8)
	lw      $t7, 0x0064($sp)
	addu    $s7, $t7, $t8
	lw      $t9, 0x0000($s7)
	srl     $t6, $t9, 31
	beqzl   $t6, .L8031563C
	lw      $t9, 0x0000($s7)
	lbu     $v0, 0x0007($s7)
	lui     $t7, %hi(_Na_bss+0x730)
	lw      $t6, 0x016C($sp)
	addu    $t7, $t7, $v0
	lbu     $t7, %lo(_Na_bss+0x730)($t7)
	li      $at, 0x01000000
	slti    $t8, $t7, 0x0002
	beqz    $t8, .L80315638
	sll     $t9, $v0, 8
	addu    $t7, $t9, $t6
	addu    $t8, $t7, $at
	lui     $at, %hi(Na_g_80332E50)
	b       .L80315F44
	sw      $t8, %lo(Na_g_80332E50)($at)
.L80315638:
	lw      $t9, 0x0000($s7)
.L8031563C:
	srl     $t6, $t9, 31
	beqzl   $t6, .L80315F48
	lw      $t9, 0x016C($sp)
	lw      $t7, 0x0174($sp)
	sw      $0, 0x0140($sp)
	li      $at, 0x0001
	sll     $t8, $t7, 1
	sw      $t8, 0x0048($sp)
	lw      $t9, 0x0000($s7)
	li      $t8, 0x0001
	move    $a0, $s4
	sll     $t6, $t9, 1
	srl     $t7, $t6, 31
	bne     $t7, $at, .L80315684
	move    $a1, $s7
	sw      $t8, 0x0140($sp)
	sw      $0, 0x0014($s7)
	sh      $0, 0x0020($s7)
.L80315684:
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f0, 0x0038($s7)
	lui     $at, %hi(Na_a_80338DA8)
	c.lt.s  $f0, $f4
	nop
	bc1f    .L803156D8
	nop
	lui     $at, %hi(Na_a_80338DA0)
	lwc1    $f6, %lo(Na_a_80338DA0)($at)
	li      $t9, 0x0001
	sw      $t9, 0x00E0($sp)
	c.lt.s  $f6, $f0
	lui     $at, %hi(Na_a_80338DA4)
	bc1f    .L803156D0
	nop
	lwc1    $f8, %lo(Na_a_80338DA4)($at)
	swc1    $f8, 0x0038($s7)
	lwc1    $f0, 0x0038($s7)
.L803156D0:
	b       .L80315714
	mov.s   $f2, $f0
.L803156D8:
	lwc1    $f10, %lo(Na_a_80338DA8)($at)
	li      $t6, 0x0002
	sw      $t6, 0x00E0($sp)
	c.le.s  $f10, $f0
	lui     $at, %hi(Na_a_80338DAC)
	bc1fl   .L80315704
	li      $at, 0x3F000000
	lwc1    $f16, %lo(Na_a_80338DAC)($at)
	swc1    $f16, 0x0038($s7)
	lwc1    $f0, 0x0038($s7)
	li      $at, 0x3F000000
.L80315704:
	mtc1    $at, $f18
	nop
	mul.s   $f2, $f0, $f18
	nop
.L80315714:
	li      $at, 0x47000000
	mtc1    $at, $f4
	lw      $t6, 0x0174($sp)
	mul.s   $f6, $f2, $f4
	trunc.w.s $f8, $f6
	mfc1    $t8, $f8
	nop
	andi    $t9, $t8, 0xFFFF
	multu   $t9, $t6
	sw      $t9, 0x005C($sp)
	lhu     $t9, 0x0020($s7)
	lw      $v0, 0x0024($s7)
	mflo    $t7
	sll     $t8, $t7, 1
	addu    $v1, $t9, $t8
	bnez    $v0, .L8031578C
	sh      $v1, 0x0020($s7)
	srl     $s0, $v1, 16
	move    $a2, $s0
	jal     Na_a_80316010
	sw      $0, 0x0140($sp)
	lw      $t1, 0x0014($s7)
	move    $s4, $v0
	sll     $t7, $t1, 1
	addiu   $t9, $t7, 0x0180
	sh      $t9, 0x00CE($sp)
	addu    $t8, $t1, $s0
	sw      $t8, 0x0014($s7)
	b       .L80315E6C
	lw      $a1, 0x0000($s7)
.L8031578C:
	lw      $t6, 0x0000($v0)
	srl     $v0, $v1, 16
	sw      $t6, 0x015C($sp)
	lw      $ra, 0x0008($t6)
	lw      $t9, 0x0004($ra)
	sw      $t9, 0x0108($sp)
	lw      $t8, 0x0004($t6)
	lw      $t6, 0x00E0($sp)
	sw      $0, 0x00D0($sp)
	sw      $0, 0x00DC($sp)
	blez    $t6, .L80315E64
	sw      $t8, 0x0118($sp)
	xori    $t9, $t6, 0x0001
	sltiu   $t9, $t9, 0x0001
	sw      $t9, 0x0054($sp)
	sw      $v0, 0x0058($sp)
	lw      $t7, 0x015C($sp)
.L803157D0:
	lw      $t8, 0x0054($sp)
	lw      $v0, 0x0058($sp)
	lw      $a0, 0x000C($t7)
	move    $s8, $0
	move    $s5, $0
	beqz    $t8, .L803157F4
	addiu   $a1, $a0, 0x0008
	b       .L80315818
	move    $t5, $v0
.L803157F4:
	andi    $t6, $v0, 0x0001
	beqz    $t6, .L80315818
	move    $t5, $v0
	lw      $t7, 0x00DC($sp)
	li      $at, -0x0002
	and     $t9, $v0, $at
	sll     $t8, $t7, 1
	b       .L80315818
	addu    $t5, $t9, $t8
.L80315818:
	lw      $t6, 0x0154($sp)
	sw      $v0, 0x0058($sp)
	beq     $t6, $a1, .L80315870
	nop
	sw      $a1, 0x0154($sp)
	lw      $t9, 0x0000($a0)
	lw      $t7, 0x0004($a0)
	li.u    $at, 0x00FFFFFF
	li.l    $at, 0x00FFFFFF
	multu   $t7, $t9
	move    $v0, $s4
	addiu   $s4, $s4, 0x0008
	mflo    $v1
	sll     $t8, $v1, 4
	and     $t6, $t8, $at
	li      $at, 0x0B000000
	or      $t7, $t6, $at
	sw      $t7, 0x0000($v0)
	lw      $t9, 0x0154($sp)
	li      $at, 0x80000000
	addu    $t8, $t9, $at
	sw      $t8, 0x0004($v0)
.L80315870:
	beqz    $t5, .L80315C7C
	lw      $v0, 0x0058($sp)
	sw      $v0, 0x0058($sp)
	lw      $t1, 0x0014($s7)
.L80315880:
	lw      $t6, 0x0108($sp)
	subu    $a0, $t5, $s8
	andi    $s2, $t1, 0x000F
	move    $t2, $0
	move    $t3, $0
	move    $t4, $a0
	bnez    $s2, .L803158B4
	subu    $v1, $t6, $t1
	lw      $t7, 0x0000($s7)
	sll     $t8, $t7, 2
	bltzl   $t8, .L803158B8
	li      $t6, 0x0010
	li      $s2, 0x0010
.L803158B4:
	li      $t6, 0x0010
.L803158B8:
	subu    $a1, $t6, $s2
	slt     $at, $a0, $v1
	beqz    $at, .L803158F4
	move    $s6, $a1
	subu    $v0, $a0, $a1
	addiu   $v0, $v0, 0x000F
	bgez    $v0, .L803158E0
	sra     $t7, $v0, 4
	addiu   $at, $v0, 0x000F
	sra     $t7, $at, 4
.L803158E0:
	sll     $s0, $t7, 4
	addu    $t9, $a1, $s0
	move    $t0, $t7
	b       .L80315938
	subu    $s3, $t9, $a0
.L803158F4:
	addu    $v0, $v1, $s2
	addiu   $s0, $v0, -0x0010
	bgtz    $s0, .L8031590C
	move    $s3, $0
	move    $s0, $0
	move    $s6, $v1
.L8031590C:
	addiu   $t0, $s0, 0x000F
	lw      $t6, 0x0008($ra)
	bgez    $t0, .L80315924
	sra     $t8, $t0, 4
	addiu   $at, $t0, 0x000F
	sra     $t8, $at, 4
.L80315924:
	beqz    $t6, .L80315934
	move    $t0, $t8
	b       .L80315938
	li      $t3, 0x0001
.L80315934:
	li      $t2, 0x0001
.L80315938:
	beqz    $t0, .L80315A04
	li      $v1, 0x0009
	subu    $v0, $t1, $s2
	addiu   $v0, $v0, 0x0010
	bgez    $v0, .L80315958
	sra     $t7, $v0, 4
	addiu   $at, $v0, 0x000F
	sra     $t7, $at, 4
.L80315958:
	multu   $t7, $v1
	lw      $t8, 0x0118($sp)
	sw      $ra, 0x0158($sp)
	lw      $a2, 0x0140($sp)
	addiu   $a3, $s7, 0x0003
	sw      $t2, 0x0148($sp)
	sw      $t3, 0x0144($sp)
	sw      $t4, 0x0104($sp)
	sw      $t5, 0x0110($sp)
	mflo    $t9
	addu    $a0, $t9, $t8
	nop
	multu   $t0, $v1
	mflo    $s1
	move    $a1, $s1
	jal     Na_c_80318300
	nop
	andi    $a3, $v0, 0x000F
	move    $a0, $s4
	li.u    $t6, 0x080003F0
	lw      $t2, 0x0148($sp)
	lw      $t3, 0x0144($sp)
	lw      $t4, 0x0104($sp)
	lw      $t5, 0x0110($sp)
	lw      $ra, 0x0158($sp)
	li.l    $t6, 0x080003F0
	addu    $t7, $s1, $a3
	andi    $t9, $t7, 0xFFFF
	sw      $t6, 0x0000($a0)
	addiu   $s4, $s4, 0x0008
	sw      $t9, 0x0004($a0)
	move    $a1, $s4
	subu    $t6, $v0, $a3
	li      $at, 0x80000000
	addu    $t7, $t6, $at
	li      $t8, 0x04000000
	sw      $t8, 0x0000($a1)
	sw      $t7, 0x0004($a1)
	lw      $a2, 0x0000($s7)
	addiu   $s4, $s4, 0x0008
	sll     $t9, $a2, 2
	b       .L80315A18
	srl     $a2, $t9, 31
.L80315A04:
	lw      $a2, 0x0000($s7)
	move    $s0, $0
	move    $a3, $0
	sll     $t6, $a2, 2
	srl     $a2, $t6, 31
.L80315A18:
	beqz    $a2, .L80315A58
	move    $v0, $s4
	li      $t9, 0x0F000000
	sw      $t9, 0x0000($v0)
	lw      $t8, 0x015C($sp)
	li.u    $at, 0x80000010
	li.l    $at, 0x80000010
	lw      $t6, 0x0008($t8)
	li      $t9, 0x0002
	addiu   $s4, $s4, 0x0008
	addu    $t7, $t6, $at
	sw      $t7, 0x0004($v0)
	sw      $t9, 0x0140($sp)
	lbu     $t8, 0x0000($s7)
	andi    $t6, $t8, 0xFFDF
	sb      $t6, 0x0000($s7)
.L80315A58:
	bnez    $s8, .L80315ACC
	move    $v0, $s4
	addiu   $t7, $a3, 0x03F0
	andi    $t9, $t7, 0xFFFF
	li      $at, 0x08000000
	or      $t8, $t9, $at
	sll     $a2, $s0, 1
	andi    $t6, $a2, 0xFFFF
	li      $at, 0x01800000
	move    $v0, $s4
	or      $t7, $t6, $at
	sw      $t7, 0x0004($v0)
	sw      $t8, 0x0000($v0)
	lw      $t9, 0x0140($sp)
	addiu   $s4, $s4, 0x0008
	li      $at, 0x01000000
	andi    $t8, $t9, 0x00FF
	sll     $t6, $t8, 16
	or      $t7, $t6, $at
	move    $v1, $s4
	sw      $t7, 0x0000($v1)
	lw      $t9, 0x0034($s7)
	li      $at, 0x80000000
	sll     $t6, $s2, 1
	addu    $t8, $t9, $at
	sw      $t8, 0x0004($v1)
	addiu   $s4, $s4, 0x0008
	b       .L80315B88
	sw      $t6, 0x0128($sp)
.L80315ACC:
	addiu   $t7, $a3, 0x03F0
	andi    $t9, $t7, 0xFFFF
	li      $at, 0x08000000
	or      $t8, $t9, $at
	li      $at, -0x0020
	addiu   $v1, $s5, 0x001F
	and     $t6, $v1, $at
	addiu   $t9, $t6, 0x0180
	move    $v1, $t6
	sw      $t8, 0x0000($v0)
	sll     $a2, $s0, 1
	andi    $t6, $a2, 0xFFFF
	sll     $t8, $t9, 16
	or      $t7, $t8, $t6
	sw      $t7, 0x0004($v0)
	lw      $t9, 0x0140($sp)
	addiu   $s4, $s4, 0x0008
	li      $at, 0x01000000
	andi    $t8, $t9, 0x00FF
	sll     $t6, $t8, 16
	or      $t7, $t6, $at
	move    $a0, $s4
	sw      $t7, 0x0000($a0)
	lw      $t9, 0x0034($s7)
	li      $at, 0x80000000
	sll     $t6, $s2, 1
	addu    $t8, $t9, $at
	li.u    $at, 0x00FFFFFF
	addu    $t7, $v1, $t6
	sw      $t8, 0x0004($a0)
	addiu   $t9, $t7, 0x0180
	li.l    $at, 0x00FFFFFF
	and     $t8, $t9, $at
	addiu   $s4, $s4, 0x0008
	li      $at, 0x0A000000
	or      $t6, $t8, $at
	move    $a1, $s4
	sw      $t6, 0x0000($a1)
	addu    $t6, $s0, $s6
	addiu   $t9, $s5, 0x0180
	sll     $t8, $t9, 16
	subu    $t7, $t6, $s3
	sll     $t9, $t7, 1
	andi    $t6, $t9, 0xFFFF
	or      $t7, $t8, $t6
	sw      $t7, 0x0004($a1)
	addiu   $s4, $s4, 0x0008
.L80315B88:
	lw      $t6, 0x0140($sp)
	addu    $t9, $s8, $s0
	addu    $t8, $t9, $s6
	li      $at, 0x0001
	beq     $t6, $at, .L80315BBC
	subu    $s8, $t8, $s3
	xori    $v0, $t6, 0x0002
	addu    $t7, $s0, $s6
	subu    $v1, $t7, $s3
	beqz    $v0, .L80315BCC
	sw      $0, 0x0140($sp)
	b       .L80315BD8
	sll     $t8, $v1, 1
.L80315BBC:
	sw      $0, 0x0128($sp)
	addu    $s5, $s5, $a2
	b       .L80315BF4
	sw      $0, 0x0140($sp)
.L80315BCC:
	sll     $t9, $v1, 1
	b       .L80315BF4
	addu    $s5, $s5, $t9
.L80315BD8:
	beqzl   $s5, .L80315BEC
	addu    $s5, $v1, $s2
	b       .L80315BF4
	addu    $s5, $s5, $t8
	addu    $s5, $v1, $s2
.L80315BEC:
	sll     $t6, $s5, 1
	move    $s5, $t6
.L80315BF4:
	beqz    $t2, .L80315C48
	li.u    $at, 0x00FFFFFF
	li.l    $at, 0x00FFFFFF
	addiu   $t7, $s5, 0x0180
	and     $t9, $t7, $at
	li      $at, 0x02000000
	move    $v0, $s4
	subu    $t6, $t5, $s8
	sll     $t7, $t6, 1
	or      $t8, $t9, $at
	sw      $t8, 0x0000($v0)
	sw      $t7, 0x0004($v0)
	lbu     $t8, 0x0000($s7)
	addiu   $s4, $s4, 0x0008
	sw      $0, 0x0014($s7)
	ori     $t6, $t8, 0x0010
	sb      $t6, 0x0000($s7)
	lbu     $t7, 0x0000($s7)
	andi    $t9, $t7, 0xFF7F
	b       .L80315C7C
	sb      $t9, 0x0000($s7)
.L80315C48:
	beqzl   $t3, .L80315C6C
	lw      $t8, 0x0014($s7)
	lbu     $t6, 0x0000($s7)
	ori     $t7, $t6, 0x0020
	sb      $t7, 0x0000($s7)
	lw      $t9, 0x0000($ra)
	b       .L80315C74
	sw      $t9, 0x0014($s7)
	lw      $t8, 0x0014($s7)
.L80315C6C:
	addu    $t6, $t8, $t4
	sw      $t6, 0x0014($s7)
.L80315C74:
	bnel    $s8, $t5, .L80315880
	lw      $t1, 0x0014($s7)
.L80315C7C:
	lw      $t7, 0x0054($sp)
	lw      $t9, 0x00E0($sp)
	li      $at, 0x0002
	bnez    $t7, .L80315CAC
	lw      $t6, 0x0128($sp)
	beq     $t9, $at, .L80315CC8
	lw      $t8, 0x00DC($sp)
	lw      $a1, 0x0000($s7)
	sll     $a2, $a1, 3
	srl     $t8, $a2, 31
	b       .L80315E40
	move    $a2, $t8
.L80315CAC:
	addiu   $t7, $t6, 0x0180
	sh      $t7, 0x00CE($sp)
	lw      $a1, 0x0000($s7)
	sll     $a2, $a1, 3
	srl     $t9, $a2, 31
	b       .L80315E40
	move    $a2, $t9
.L80315CC8:
	beqz    $t8, .L80315CF0
	move    $v0, $s4
	li      $at, 0x0001
	beq     $t8, $at, .L80315DA8
	move    $v0, $s4
	lw      $a1, 0x0000($s7)
	sll     $a2, $a1, 3
	srl     $t6, $a2, 31
	b       .L80315E40
	move    $a2, $t6
.L80315CF0:
	lw      $t7, 0x0128($sp)
	li      $at, 0x08000000
	addiu   $v1, $t5, 0x0004
	addiu   $t9, $t7, 0x0180
	andi    $t8, $t9, 0xFFFF
	or      $t6, $t8, $at
	li      $at, 0x00200000
	andi    $t7, $v1, 0xFFFF
	or      $t9, $t7, $at
	addiu   $s4, $s4, 0x0008
	li.u    $t8, 0x0501FF60
	sw      $t9, 0x0004($v0)
	sw      $t6, 0x0000($v0)
	li.l    $t8, 0x0501FF60
	move    $a0, $s4
	sw      $t8, 0x0000($a0)
	lw      $t6, 0x0034($s7)
	li.u    $at, 0x800000F0
	li.l    $at, 0x800000F0
	addu    $t7, $t6, $at
	sw      $t7, 0x0004($a0)
	li      $t9, 0x0024
	sw      $v1, 0x00D0($sp)
	sh      $t9, 0x00CE($sp)
	lw      $a1, 0x0000($s7)
	addiu   $s4, $s4, 0x0008
	move    $v0, $s4
	sll     $a2, $a1, 3
	srl     $t8, $a2, 31
	beqz    $t8, .L80315E40
	move    $a2, $t8
	li.u    $at, 0x00FFFFFF
	li.l    $at, 0x00FFFFFF
	addiu   $t6, $t5, 0x0024
	and     $t7, $t6, $at
	li      $at, 0x02000000
	or      $t9, $t7, $at
	addiu   $t8, $t5, 0x0010
	sw      $t8, 0x0004($v0)
	sw      $t9, 0x0000($v0)
	lw      $a1, 0x0000($s7)
	addiu   $s4, $s4, 0x0008
	sll     $a2, $a1, 3
	srl     $t6, $a2, 31
	b       .L80315E40
	move    $a2, $t6
.L80315DA8:
	lw      $t7, 0x0128($sp)
	li      $at, 0x08000000
	addiu   $s4, $s4, 0x0008
	addiu   $t9, $t7, 0x0180
	andi    $t8, $t9, 0xFFFF
	or      $t6, $t8, $at
	addiu   $t7, $t5, 0x0008
	andi    $t9, $t7, 0xFFFF
	sw      $t6, 0x0000($v0)
	li      $at, 0x01600000
	or      $t8, $t9, $at
	li.u    $t6, 0x0501FF60
	sw      $t8, 0x0004($v0)
	li.l    $t6, 0x0501FF60
	move    $v1, $s4
	sw      $t6, 0x0000($v1)
	lw      $t7, 0x0034($s7)
	li.u    $at, 0x800000F0
	li.l    $at, 0x800000F0
	addiu   $s4, $s4, 0x0008
	li.u    $t8, 0x0A000164
	addu    $t9, $t7, $at
	sw      $t9, 0x0004($v1)
	li.l    $t8, 0x0A000164
	move    $a0, $s4
	sw      $t8, 0x0000($a0)
	lw      $t6, 0x00D0($sp)
	addiu   $s4, $s4, 0x0008
	addiu   $t9, $t6, 0x0020
	addiu   $t6, $t5, 0x0004
	andi    $t7, $t6, 0xFFFF
	sll     $t8, $t9, 16
	or      $t9, $t8, $t7
	sw      $t9, 0x0004($a0)
	lw      $a1, 0x0000($s7)
	sll     $a2, $a1, 3
	srl     $t6, $a2, 31
	move    $a2, $t6
.L80315E40:
	beqz    $a2, .L80315E50
	lw      $v0, 0x00DC($sp)
	b       .L80315E6C
	sw      $0, 0x0140($sp)
.L80315E50:
	lw      $t8, 0x00E0($sp)
	addiu   $v0, $v0, 0x0001
	sw      $v0, 0x00DC($sp)
	bnel    $v0, $t8, .L803157D0
	lw      $t7, 0x015C($sp)
.L80315E64:
	sw      $0, 0x0140($sp)
	lw      $a1, 0x0000($s7)
.L80315E6C:
	sll     $t7, $a1, 1
	srl     $t9, $t7, 31
	li      $at, 0x0001
	bne     $t9, $at, .L80315E94
	move    $a0, $s4
	li      $t6, 0x0001
	sw      $t6, 0x0140($sp)
	lbu     $t8, 0x0000($s7)
	andi    $t7, $t8, 0xFFBF
	sb      $t7, 0x0000($s7)
.L80315E94:
	lw      $s1, 0x0048($sp)
	lhu     $t9, 0x00CE($sp)
	lw      $t6, 0x0140($sp)
	move    $a1, $s7
	lhu     $a3, 0x005E($sp)
	move    $a2, $s1
	sw      $t9, 0x0010($sp)
	jal     Na_a_803160DC
	sw      $t6, 0x0014($sp)
	lhu     $t8, 0x000C($s7)
	move    $s4, $v0
	move    $a0, $s4
	bnez    $t8, .L80315ED8
	move    $a1, $s7
	lhu     $t7, 0x0010($s7)
	beqzl   $t7, .L80315EE4
	lhu     $t9, 0x000E($s7)
.L80315ED8:
	b       .L80315F04
	li      $s0, 0x0001
	lhu     $t9, 0x000E($s7)
.L80315EE4:
	bnez    $t9, .L80315EFC
	nop
	lhu     $t6, 0x0012($s7)
	move    $s0, $0
	beqz    $t6, .L80315F04
	nop
.L80315EFC:
	b       .L80315F04
	li      $s0, 0x0002
.L80315F04:
	lw      $t8, 0x0140($sp)
	lw      $a2, 0x0174($sp)
	move    $a3, $0
	sw      $s0, 0x0010($sp)
	jal     Na_a_80316138
	sw      $t8, 0x0014($sp)
	lbu     $t7, 0x0001($s7)
	move    $s4, $v0
	move    $a0, $v0
	beqz    $t7, .L80315F44
	move    $a1, $s7
	move    $a2, $s1
	lw      $a3, 0x0140($sp)
	jal     Na_a_803166FC
	sw      $s0, 0x0010($sp)
	move    $s4, $v0
.L80315F44:
	lw      $t9, 0x016C($sp)
.L80315F48:
	lw      $t8, 0x0064($sp)
	addiu   $t6, $t9, 0x0001
	lui     $t9, %hi(_Na_bss+0x5DD0)
	lw      $t9, %lo(_Na_bss+0x5DD0)($t9)
	addiu   $t7, $t8, 0x00C0
	sw      $t7, 0x0064($sp)
	slt     $at, $t6, $t9
	bnez    $at, .L803155E0
	sw      $t6, 0x016C($sp)
.L80315F6C:
	li      $t0, 0x08000000
	move    $a0, $s4
	sw      $t0, 0x0000($a0)
	lw      $v1, 0x0174($sp)
	addiu   $s4, $s4, 0x0008
	move    $a1, $s4
	sll     $t8, $v1, 1
	andi    $t7, $t8, 0xFFFF
	sw      $t7, 0x0004($a0)
	addiu   $s4, $s4, 0x0008
	li      $t6, 0x0D000000
	li.u    $t9, 0x04C00600
	li.l    $t9, 0x04C00600
	sw      $t6, 0x0000($a1)
	move    $a2, $s4
	sw      $t9, 0x0004($a1)
	sll     $t8, $t8, 1
	andi    $t7, $t8, 0xFFFF
	addiu   $s4, $s4, 0x0008
	sw      $t7, 0x0004($a2)
	sw      $t0, 0x0000($a2)
	move    $a3, $s4
	li      $t6, 0x06000000
	sw      $t6, 0x0000($a3)
	lw      $t9, 0x0170($sp)
	li      $at, 0x80000000
	addiu   $v0, $s4, 0x0008
	addu    $t8, $t9, $at
	sw      $t8, 0x0004($a3)
	lw      $ra, 0x0044($sp)
	lw      $s8, 0x0040($sp)
	lw      $s7, 0x003C($sp)
	lw      $s6, 0x0038($sp)
	lw      $s5, 0x0034($sp)
	lw      $s4, 0x0030($sp)
	lw      $s3, 0x002C($sp)
	lw      $s2, 0x0028($sp)
	lw      $s1, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0170

Na_a_80316010:
	move    $v0, $a0
	li.u    $t6, 0x08000180
	li.l    $t6, 0x08000180
	addiu   $a0, $a0, 0x0008
	li      $t7, 0x0080
	sw      $t7, 0x0004($v0)
	sw      $t6, 0x0000($v0)
	move    $v1, $a0
	li      $t8, 0x04000000
	sw      $t8, 0x0000($v1)
	lw      $t9, 0x0034($a1)
	li.u    $at, 0x80000110
	li.l    $at, 0x80000110
	addu    $t0, $t9, $at
	sw      $t0, 0x0004($v1)
	lbu     $t1, 0x0005($a1)
	lw      $t3, 0x0014($a1)
	li      $t6, 0x0040
	addiu   $t2, $t1, -0x0001
	and     $t4, $t2, $t3
	subu    $a3, $t6, $t4
	slt     $at, $a3, $a2
	addiu   $a0, $a0, 0x0008
	beqz    $at, .L803160D4
	sw      $t4, 0x0014($a1)
	subu    $v1, $a2, $a3
	addiu   $v1, $v1, 0x003F
	move    $v0, $0
	bgez    $v1, .L80316090
	sra     $t7, $v1, 6
	addiu   $at, $v1, 0x003F
	sra     $t7, $at, 6
.L80316090:
	addiu   $v1, $t7, -0x0001
	bltz    $v1, .L803160D4
	li      $a1, 0x0200
	sll     $a2, $v1, 7
	li.u    $v1, 0x0A000180
	li.l    $v1, 0x0A000180
	addiu   $a2, $a2, 0x0200
.L803160AC:
	move    $t8, $a1
	addiu   $a1, $a1, 0x0080
	sll     $t9, $t8, 16
	move    $v0, $a0
	slt     $at, $a2, $a1
	ori     $t0, $t9, 0x0080
	sw      $t0, 0x0004($v0)
	sw      $v1, 0x0000($v0)
	beqz    $at, .L803160AC
	addiu   $a0, $a0, 0x0008
.L803160D4:
	jr      $ra
	move    $v0, $a0

Na_a_803160DC:
	lhu     $t8, 0x0012($sp)
	sw      $a3, 0x000C($sp)
	li      $at, 0x08000000
	andi    $t1, $a2, 0xFFFF
	or      $t9, $t8, $at
	sw      $t9, 0x0000($a0)
	sw      $t1, 0x0004($a0)
	lw      $t2, 0x0014($sp)
	li      $at, 0x05000000
	andi    $t6, $a3, 0xFFFF
	andi    $t3, $t2, 0x00FF
	sll     $t4, $t3, 16
	or      $t5, $t4, $at
	addiu   $t0, $a0, 0x0008
	or      $t7, $t5, $t6
	sw      $t7, 0x0000($t0)
	lw      $t8, 0x0034($a1)
	li.u    $at, 0x80000020
	li.l    $at, 0x80000020
	addu    $t9, $t8, $at
	sw      $t9, 0x0004($t0)
	jr      $ra
	addiu   $v0, $t0, 0x0008

Na_a_80316138:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a3, 0x0044($sp)
	lh      $t7, 0x009C($a1)
	andi    $t6, $a3, 0xFFFF
	addiu   $t4, $sp, 0x0020
	sh      $t7, 0x0020($sp)
	lh      $t8, 0x009E($a1)
	move    $a3, $t6
	sh      $t8, 0x0022($sp)
	lhu     $t1, 0x003C($a1)
	sh      $t1, 0x0024($sp)
	lhu     $t0, 0x003E($a1)
	sh      $t0, 0x0026($sp)
	sh      $t1, 0x009C($a1)
	lhu     $t2, 0x0026($sp)
	sh      $t2, 0x009E($a1)
	lw      $t3, 0x0048($sp)
	sw      $t4, 0x0014($sp)
	jal     Na_a_8031619C
	sw      $t3, 0x0010($sp)
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

Na_a_8031619C:
	addiu   $sp, $sp, -0x00C0
	sw      $ra, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $a3, 0x00CC($sp)
	lbu     $t6, 0x0001($a1)
	move    $s0, $a0
	move    $s1, $a1
	beqz    $t6, .L803162E8
	lw      $v1, 0x00D0($sp)
	li.u    $t7, 0x02000200
	li.l    $t7, 0x02000200
	li      $t8, 0x0140
	li      $at, 0x0001
	sw      $t8, 0x0004($a0)
	sw      $t7, 0x0000($a0)
	beq     $v1, $at, .L80316244
	addiu   $s0, $a0, 0x0008
	li      $at, 0x0002
	beq     $v1, $at, .L80316298
	li      $t2, 0x08000000
	lhu     $t3, 0x00CE($sp)
	move    $v0, $s0
	sll     $a3, $a2, 1
	andi    $t5, $a3, 0xFFFF
	addiu   $s0, $s0, 0x0008
	li      $t2, 0x08000000
	li      $at, 0x04C00000
	or      $t6, $t5, $at
	move    $v1, $s0
	li.u    $t7, 0x08080600
	li.u    $t8, 0x07400880
	or      $t4, $t3, $t2
	sw      $t4, 0x0000($v0)
	li.l    $t8, 0x07400880
	li.l    $t7, 0x08080600
	sw      $t6, 0x0004($v0)
	sw      $t8, 0x0004($v1)
	sw      $t7, 0x0000($v1)
	addiu   $s0, $s0, 0x0008
	b       .L8031642C
	move    $a3, $t5
.L80316244:
	lhu     $t3, 0x00CE($sp)
	move    $v0, $s0
	sll     $a3, $a2, 1
	li      $t2, 0x08000000
	andi    $t5, $a3, 0xFFFF
	addiu   $s0, $s0, 0x0008
	li      $at, 0x02000000
	or      $t6, $t5, $at
	move    $v1, $s0
	li.u    $t7, 0x08080600
	li.u    $t8, 0x07400880
	or      $t4, $t3, $t2
	sw      $t4, 0x0000($v0)
	sw      $t6, 0x0004($v0)
	li.l    $t8, 0x07400880
	li.l    $t7, 0x08080600
	move    $a3, $t5
	sw      $t7, 0x0000($v1)
	sw      $t8, 0x0004($v1)
	b       .L8031642C
	addiu   $s0, $s0, 0x0008
.L80316298:
	lhu     $t3, 0x00CE($sp)
	move    $v0, $s0
	sll     $a3, $a2, 1
	andi    $t5, $a3, 0xFFFF
	addiu   $s0, $s0, 0x0008
	li      $at, 0x04C00000
	or      $t6, $t5, $at
	move    $v1, $s0
	li.u    $t7, 0x08080200
	li.u    $t8, 0x07400880
	or      $t4, $t3, $t2
	sw      $t4, 0x0000($v0)
	sw      $t6, 0x0004($v0)
	li.l    $t8, 0x07400880
	li.l    $t7, 0x08080200
	move    $a3, $t5
	sw      $t7, 0x0000($v1)
	sw      $t8, 0x0004($v1)
	b       .L8031642C
	addiu   $s0, $s0, 0x0008
.L803162E8:
	lw      $v0, 0x0000($s1)
	li      $t2, 0x08000000
	li.u    $t4, 0x02000200
	sll     $t3, $v0, 5
	bgez    $t3, .L80316368
	sll     $t7, $v0, 6
	move    $v0, $s0
	li.l    $t4, 0x02000200
	li      $t5, 0x0280
	sw      $t5, 0x0004($v0)
	sw      $t4, 0x0000($v0)
	lhu     $t7, 0x00CE($sp)
	addiu   $s0, $s0, 0x0008
	move    $v1, $s0
	sll     $a3, $a2, 1
	andi    $t9, $a3, 0xFFFF
	addiu   $s0, $s0, 0x0008
	li      $at, 0x02000000
	or      $t3, $t9, $at
	move    $a0, $s0
	li.u    $t4, 0x08080600
	li.u    $t5, 0x03400880
	or      $t8, $t7, $t2
	sw      $t8, 0x0000($v1)
	sw      $t3, 0x0004($v1)
	li.l    $t5, 0x03400880
	li.l    $t4, 0x08080600
	move    $a3, $t9
	sw      $t4, 0x0000($a0)
	sw      $t5, 0x0004($a0)
	b       .L8031642C
	addiu   $s0, $s0, 0x0008
.L80316368:
	bgez    $t7, .L803163E0
	li      $t2, 0x08000000
	move    $v0, $s0
	li.u    $t8, 0x02000200
	li.l    $t8, 0x02000200
	li      $t9, 0x0280
	sw      $t9, 0x0004($v0)
	sw      $t8, 0x0000($v0)
	lhu     $t4, 0x00CE($sp)
	addiu   $s0, $s0, 0x0008
	move    $v1, $s0
	sll     $a3, $a2, 1
	li      $t2, 0x08000000
	andi    $t6, $a3, 0xFFFF
	addiu   $s0, $s0, 0x0008
	li      $at, 0x04C00000
	or      $t7, $t6, $at
	move    $a0, $s0
	li.u    $t8, 0x08080200
	li.u    $t9, 0x07400340
	or      $t5, $t4, $t2
	sw      $t5, 0x0000($v1)
	sw      $t7, 0x0004($v1)
	li.l    $t9, 0x07400340
	li.l    $t8, 0x08080200
	move    $a3, $t6
	sw      $t8, 0x0000($a0)
	sw      $t9, 0x0004($a0)
	b       .L8031642C
	addiu   $s0, $s0, 0x0008
.L803163E0:
	lhu     $t4, 0x00CE($sp)
	move    $v0, $s0
	sll     $a3, $a2, 1
	andi    $t6, $a3, 0xFFFF
	addiu   $s0, $s0, 0x0008
	li      $at, 0x04C00000
	or      $t7, $t6, $at
	move    $v1, $s0
	or      $t5, $t4, $t2
	sw      $t5, 0x0000($v0)
	sw      $t7, 0x0004($v0)
	li.u    $t8, 0x08080600
	li.u    $t9, 0x07400880
	li.l    $t9, 0x07400880
	li.l    $t8, 0x08080600
	move    $a3, $t6
	sw      $t8, 0x0000($v1)
	sw      $t9, 0x0004($v1)
	addiu   $s0, $s0, 0x0008
.L8031642C:
	lw      $v1, 0x00D4($sp)
	li      $t1, 0x0001
	lhu     $a1, 0x0004($v1)
	lhu     $a0, 0x0000($v1)
	bnel    $a1, $a0, .L80316470
	sw      $a2, 0x00C8($sp)
	lhu     $t3, 0x0006($v1)
	lhu     $t4, 0x0002($v1)
	bnel    $t3, $t4, .L80316470
	sw      $a2, 0x00C8($sp)
	lw      $t5, 0x0000($s1)
	sll     $t7, $t5, 4
	bltzl   $t7, .L80316470
	sw      $a2, 0x00C8($sp)
	b       .L80316544
	move    $t1, $0
	sw      $a2, 0x00C8($sp)
.L80316470:
	sw      $a3, 0x0020($sp)
	jal     Na_a_80314CC0
	sb      $t1, 0x00BB($sp)
	lw      $v1, 0x00D4($sp)
	sw      $v0, 0x00AC($sp)
	lw      $a2, 0x00C8($sp)
	lhu     $a1, 0x0006($v1)
	jal     Na_a_80314CC0
	lhu     $a0, 0x0002($v1)
	lw      $v1, 0x00D4($sp)
	lw      $a3, 0x0020($sp)
	lbu     $t1, 0x00BB($sp)
	lhu     $t9, 0x0000($v1)
	move    $a0, $s0
	li      $at, 0x09060000
	or      $t3, $t9, $at
	sw      $t3, 0x0000($a0)
	sw      $0, 0x0004($a0)
	lhu     $t5, 0x0002($v1)
	addiu   $s0, $s0, 0x0008
	move    $a1, $s0
	li      $at, 0x09040000
	or      $t6, $t5, $at
	sw      $t6, 0x0000($a1)
	sw      $0, 0x0004($a1)
	lhu     $t8, 0x0004($v1)
	addiu   $s0, $s0, 0x0008
	li      $at, 0x09020000
	move    $a2, $s0
	or      $t9, $t8, $at
	sw      $t9, 0x0000($a2)
	lw      $t3, 0x00AC($sp)
	addiu   $s0, $s0, 0x0008
	move    $t0, $s0
	sw      $t3, 0x0004($a2)
	lhu     $t5, 0x0006($v1)
	li      $at, 0x09000000
	sw      $v0, 0x0004($t0)
	or      $t6, $t5, $at
	sw      $t6, 0x0000($t0)
	lui     $t7, %hi(_Na_bss+0x100)
	lh      $t7, %lo(_Na_bss+0x100)($t7)
	addiu   $s0, $s0, 0x0008
	li      $at, 0x09080000
	andi    $t8, $t7, 0xFFFF
	or      $t9, $t8, $at
	move    $v1, $s0
	sw      $t9, 0x0000($v1)
	lh      $t3, 0x00A0($s1)
	li      $t2, 0x08000000
	addiu   $s0, $s0, 0x0008
	andi    $t4, $t3, 0xFFFF
	sw      $t4, 0x0004($v1)
.L80316544:
	lui     $t5, %hi(_Na_bss+0x11)
	lbu     $t5, %lo(_Na_bss+0x11)($t5)
	andi    $t7, $t1, 0x00FF
	sll     $t8, $t7, 16
	beqz    $t5, .L80316648
	move    $v1, $s0
	lbu     $t6, 0x0040($s1)
	li      $at, 0x03000000
	beqzl   $t6, .L8031664C
	li      $at, 0x03000000
	ori     $t7, $t1, 0x0008
	andi    $t8, $t7, 0x00FF
	sll     $t9, $t8, 16
	or      $t3, $t9, $at
	move    $v1, $s0
	sw      $t3, 0x0000($v1)
	lw      $t4, 0x0034($s1)
	li.u    $at, 0x80000040
	li.l    $at, 0x80000040
	addu    $t5, $t4, $at
	sw      $t5, 0x0004($v1)
	lw      $v0, 0x0000($s1)
	addiu   $s0, $s0, 0x0008
	li.u    $a1, 0x0C008000
	sll     $t7, $v0, 5
	bgez    $t7, .L803165F8
	sll     $t4, $v0, 6
	move    $v0, $s0
	addiu   $s0, $s0, 0x0008
	move    $v1, $s0
	sw      $t2, 0x0000($v0)
	sw      $a3, 0x0004($v0)
	addiu   $s0, $s0, 0x0008
	li.u    $t8, 0x020004C0
	li.l    $a1, 0x0C008000
	li.l    $t8, 0x020004C0
	move    $a0, $s0
	li.u    $t9, 0x03400740
	sw      $t8, 0x0004($v1)
	sw      $a1, 0x0000($v1)
	li.l    $t9, 0x03400740
	sw      $t9, 0x0004($a0)
	sw      $a1, 0x0000($a0)
	b       .L803166E4
	addiu   $s0, $s0, 0x0008
.L803165F8:
	bgez    $t4, .L803166E4
	li.u    $a1, 0x0C008000
	move    $v0, $s0
	addiu   $s0, $s0, 0x0008
	move    $v1, $s0
	sw      $t2, 0x0000($v0)
	sw      $a3, 0x0004($v0)
	addiu   $s0, $s0, 0x0008
	li.u    $t5, 0x02000600
	li.l    $a1, 0x0C008000
	li.l    $t5, 0x02000600
	move    $a0, $s0
	li.u    $t6, 0x03400880
	sw      $t5, 0x0004($v1)
	sw      $a1, 0x0000($v1)
	li.l    $t6, 0x03400880
	sw      $t6, 0x0004($a0)
	sw      $a1, 0x0000($a0)
	b       .L803166E4
	addiu   $s0, $s0, 0x0008
.L80316648:
	li      $at, 0x03000000
.L8031664C:
	or      $t9, $t8, $at
	sw      $t9, 0x0000($v1)
	lw      $t3, 0x0034($s1)
	li.u    $at, 0x80000040
	li.l    $at, 0x80000040
	addu    $t4, $t3, $at
	sw      $t4, 0x0004($v1)
	lw      $v0, 0x0000($s1)
	addiu   $s0, $s0, 0x0008
	li.u    $a1, 0x0C008000
	sll     $t6, $v0, 5
	bgez    $t6, .L803166B0
	sll     $t9, $v0, 6
	move    $v0, $s0
	addiu   $s0, $s0, 0x0008
	move    $v1, $s0
	li.u    $t7, 0x020004C0
	li.l    $a1, 0x0C008000
	sw      $t2, 0x0000($v0)
	sw      $a3, 0x0004($v0)
	li.l    $t7, 0x020004C0
	sw      $t7, 0x0004($v1)
	sw      $a1, 0x0000($v1)
	b       .L803166E4
	addiu   $s0, $s0, 0x0008
.L803166B0:
	bgez    $t9, .L803166E4
	li.u    $a1, 0x0C008000
	move    $v0, $s0
	addiu   $s0, $s0, 0x0008
	move    $v1, $s0
	sw      $t2, 0x0000($v0)
	sw      $a3, 0x0004($v0)
	li.u    $t3, 0x02000600
	li.l    $a1, 0x0C008000
	li.l    $t3, 0x02000600
	sw      $t3, 0x0004($v1)
	sw      $a1, 0x0000($v1)
	addiu   $s0, $s0, 0x0008
.L803166E4:
	lw      $ra, 0x001C($sp)
	move    $v0, $s0
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00C0

Na_a_803166FC:
	addiu   $sp, $sp, -0x0050
	lw      $t6, 0x0060($sp)
	sw      $s0, 0x0004($sp)
	li      $v0, 0x0001
	move    $s0, $a2
	beq     $t6, $v0, .L8031672C
	sw      $a3, 0x005C($sp)
	li      $at, 0x0002
	beq     $t6, $at, .L80316744
	li      $t0, 0x0600
	b       .L80316ABC
	move    $v0, $a0
.L8031672C:
	lhu     $a2, 0x000C($a1)
	lhu     $a3, 0x0010($a1)
	li      $t0, 0x04C0
	sh      $0, 0x0012($a1)
	b       .L80316760
	sh      $a2, 0x0010($a1)
.L80316744:
	lhu     $a2, 0x000E($a1)
	lhu     $a3, 0x0012($a1)
	sh      $0, 0x0010($a1)
	b       .L80316760
	sh      $a2, 0x0012($a1)
	b       .L80316ABC
	move    $v0, $a0
.L80316760:
	lw      $t7, 0x005C($sp)
	move    $v1, $a0
	li      $t9, 0x0A000000
	beq     $t7, $v0, .L803169F8
	li.u    $t6, 0x02000200
	bnez    $a3, .L8031688C
	move    $v1, $a3
	move    $t2, $a0
	li.u    $v0, 0x0A000200
	addiu   $a0, $a0, 0x0008
	li      $t8, 0x0008
	li.l    $v0, 0x0A000200
	sw      $t8, 0x0004($t2)
	move    $t3, $a0
	li.u    $t9, 0x02000008
	sw      $v0, 0x0000($t2)
	li.l    $t9, 0x02000008
	addiu   $a0, $a0, 0x0008
	sw      $t9, 0x0000($t3)
	li      $t6, 0x0008
	move    $t4, $a0
	sw      $t6, 0x0004($t3)
	addiu   $a0, $a0, 0x0008
	li.u    $t7, 0x00100010
	li.l    $t7, 0x00100010
	move    $t5, $a0
	sw      $t7, 0x0004($t4)
	sw      $v0, 0x0000($t4)
	li      $t9, 0x0020
	li      $t8, 0x08000000
	sw      $t8, 0x0000($t5)
	sw      $t9, 0x0004($t5)
	addiu   $a0, $a0, 0x0008
	sw      $a0, 0x0008($sp)
	lw      $t7, 0x0008($sp)
	li      $t6, 0x06000000
	li.u    $t1, 0x80000090
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0034($a1)
	li.l    $t1, 0x80000090
	addiu   $a0, $a0, 0x0008
	addu    $t9, $t8, $t1
	addu    $t8, $a2, $s0
	sw      $t9, 0x0004($t7)
	subu    $t3, $t8, $v1
	sll     $t9, $s0, 15
	addiu   $t7, $t3, 0x0008
	div     $0, $t9, $t7
	move    $t2, $a0
	li.u    $t6, 0x08000208
	mflo    $t8
	li.l    $t6, 0x08000208
	addiu   $a0, $a0, 0x0008
	andi    $v0, $t3, 0xFFFF
	sw      $v0, 0x0004($t2)
	sw      $t6, 0x0000($t2)
	move    $t4, $a0
	addiu   $a0, $a0, 0x0008
	bnez    $t7, .L80316854
	nop
	break   7
.L80316854:
	li      $at, -0x0001
	bne     $t7, $at, .L8031686C
	li      $at, 0x80000000
	bne     $t9, $at, .L8031686C
	nop
	break   6
.L8031686C:
	li      $at, 0x05000000
	andi    $t9, $t8, 0xFFFF
	or      $t7, $t9, $at
	sw      $t7, 0x0000($t4)
	lw      $t6, 0x0034($a1)
	addu    $t8, $t6, $t1
	b       .L80316968
	sw      $t8, 0x0004($t4)
.L8031688C:
	bnez    $a2, .L803168E0
	move    $v0, $a2
	subu    $t7, $s0, $v1
	addiu   $t6, $t7, -0x0004
	sll     $t9, $s0, 15
	div     $0, $t9, $t6
	mflo    $t2
	andi    $t8, $t2, 0xFFFF
	bnez    $t6, .L803168B8
	nop
	break   7
.L803168B8:
	li      $at, -0x0001
	bne     $t6, $at, .L803168D0
	li      $at, 0x80000000
	bne     $t9, $at, .L803168D0
	nop
	break   6
.L803168D0:
	addu    $t7, $v0, $s0
	subu    $t3, $t7, $v1
	b       .L80316920
	move    $t2, $t8
.L803168E0:
	addu    $t9, $s0, $v0
	subu    $t3, $t9, $v1
	sll     $t6, $s0, 15
	div     $0, $t6, $t3
	mflo    $t2
	andi    $t8, $t2, 0xFFFF
	move    $t2, $t8
	bnez    $t3, .L80316908
	nop
	break   7
.L80316908:
	li      $at, -0x0001
	bne     $t3, $at, .L80316920
	li      $at, 0x80000000
	bne     $t6, $at, .L80316920
	nop
	break   6
.L80316920:
	move    $t4, $a0
	li.u    $t7, 0x08000200
	li.l    $t7, 0x08000200
	addiu   $a0, $a0, 0x0008
	andi    $v0, $t3, 0xFFFF
	andi    $t9, $t2, 0xFFFF
	li      $at, 0x05000000
	sw      $v0, 0x0004($t4)
	sw      $t7, 0x0000($t4)
	or      $t6, $t9, $at
	move    $t5, $a0
	sw      $t6, 0x0000($t5)
	lw      $t8, 0x0034($a1)
	li.u    $t1, 0x80000090
	li.l    $t1, 0x80000090
	addu    $t7, $t8, $t1
	sw      $t7, 0x0004($t5)
	addiu   $a0, $a0, 0x0008
.L80316968:
	beqz    $v1, .L803169D8
	li      $t8, 0x0A000000
	move    $t1, $a0
	li.u    $t9, 0x08000200
	li.l    $t9, 0x08000200
	addiu   $a0, $a0, 0x0008
	andi    $t6, $a3, 0xFFFF
	sw      $t6, 0x0004($t1)
	sw      $t9, 0x0000($t1)
	move    $t2, $a0
	li      $t8, 0x04000000
	sw      $t8, 0x0000($t2)
	lw      $t7, 0x0034($a1)
	li.u    $at, 0x800000B0
	li.l    $at, 0x800000B0
	addu    $t9, $t7, $at
	sw      $t9, 0x0004($t2)
	addiu   $a0, $a0, 0x0008
	move    $t3, $a0
	addiu   $t7, $v1, 0x0200
	li      $t6, 0x0A000000
	sw      $t6, 0x0000($t3)
	sll     $t9, $t7, 16
	or      $t6, $t9, $v0
	sw      $t6, 0x0004($t3)
	addiu   $a0, $a0, 0x0008
	b       .L80316A40
	andi    $a3, $s0, 0xFFFF
.L803169D8:
	move    $v1, $a0
	li      $at, 0x02000000
	or      $t7, $v0, $at
	sw      $t7, 0x0004($v1)
	sw      $t8, 0x0000($v1)
	addiu   $a0, $a0, 0x0008
	b       .L80316A40
	andi    $a3, $s0, 0xFFFF
.L803169F8:
	li.u    $v0, 0x0A000200
	addiu   $a0, $a0, 0x0008
	li.l    $v0, 0x0A000200
	andi    $a3, $s0, 0xFFFF
	move    $t1, $a0
	sw      $a3, 0x0004($v1)
	sw      $v0, 0x0000($v1)
	addiu   $t8, $a2, 0x0200
	sll     $t7, $t8, 16
	sw      $t9, 0x0000($t1)
	addiu   $a0, $a0, 0x0008
	or      $t9, $t7, $a3
	move    $t2, $a0
	sw      $t9, 0x0004($t1)
	li.l    $t6, 0x02000200
	sw      $t6, 0x0000($t2)
	sw      $a2, 0x0004($t2)
	addiu   $a0, $a0, 0x0008
.L80316A40:
	beqz    $a2, .L80316A8C
	move    $v0, $a0
	li      $t8, 0x08000000
	sw      $t8, 0x0000($v0)
	addiu   $t9, $s0, 0x0200
	sll     $t6, $t9, 16
	andi    $t8, $a2, 0xFFFF
	or      $t7, $t6, $t8
	addiu   $a0, $a0, 0x0008
	sw      $t7, 0x0004($v0)
	move    $v1, $a0
	li      $t9, 0x06000000
	sw      $t9, 0x0000($v1)
	lw      $t6, 0x0034($a1)
	li.u    $at, 0x800000B0
	li.l    $at, 0x800000B0
	addu    $t8, $t6, $at
	sw      $t8, 0x0004($v1)
	addiu   $a0, $a0, 0x0008
.L80316A8C:
	addiu   $a1, $a0, 0x0008
	li      $t7, 0x08000000
	sw      $t7, 0x0000($a0)
	sw      $a3, 0x0004($a0)
	li.u    $t9, 0x0C007FFF
	andi    $t6, $t0, 0xFFFF
	li      $at, 0x02000000
	or      $t8, $t6, $at
	li.l    $t9, 0x0C007FFF
	sw      $t9, 0x0000($a1)
	sw      $t8, 0x0004($a1)
	addiu   $v0, $a1, 0x0008
.L80316ABC:
	lw      $s0, 0x0004($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0050

.globl Na_a_80316AC8
Na_a_80316AC8:
	mtc1    $0, $f4
	li      $v0, 0x0001
	sh      $0, 0x003C($a0)
	sh      $0, 0x003E($a0)
	sb      $0, 0x0040($a0)
	sh      $0, 0x00A0($a0)
	sh      $0, 0x00A2($a0)
	sh      $v0, 0x009C($a0)
	sh      $v0, 0x009E($a0)
	jr      $ra
	swc1    $f4, 0x0038($a0)

.globl Na_a_80316AF4
Na_a_80316AF4:
	sw      $a3, 0x000C($sp)
	lbu     $v0, 0x0000($a0)
	mtc1    $a1, $f14
	mtc1    $a2, $f12
	andi    $t6, $a3, 0x00FF
	andi    $v1, $v0, 0x0001
	beqz    $v1, .L80316BE0
	move    $a3, $t6
	lui     $t7, %hi(_Na_bss+0x5DDF)
	lb      $t7, %lo(_Na_bss+0x5DDF)($t7)
	li      $at, 0x0001
	lui     $t2, %hi(Na_data_80333DE0)
	bne     $t7, $at, .L80316BE0
	lui     $t4, %hi(Na_data_80333DE0+2*9)
	li      $at, 0x41200000
	mtc1    $at, $f4
	andi    $t6, $v0, 0xFFFB
	li      $a1, 0x0009
	mul.s   $f6, $f12, $f4
	andi    $t7, $t6, 0x00FD
	trunc.w.s $f8, $f6
	mfc1    $v1, $f8
	nop
	sll     $t9, $v1, 24
	sra     $t0, $t9, 24
	slti    $at, $t0, 0x0009
	beqz    $at, .L80316B74
	nop
	sll     $a1, $t0, 24
	sra     $t1, $a1, 24
	b       .L80316B74
	move    $a1, $t1
.L80316B74:
	li      $at, 0x42FF0000
	mtc1    $at, $f10
	sll     $v1, $a1, 1
	addu    $t2, $t2, $v1
	mul.s   $f16, $f12, $f10
	lhu     $t2, %lo(Na_data_80333DE0)($t2)
	subu    $t3, $0, $v1
	addu    $t4, $t4, $t3
	sh      $t2, 0x000E($a0)
	lhu     $t4, %lo(Na_data_80333DE0+2*9)($t4)
	sb      $t6, 0x0000($a0)
	trunc.w.s $f18, $f16
	li      $t8, 0x0001
	lui     $at, %hi(Na_pan_phone)
	sb      $t7, 0x0000($a0)
	mfc1    $a2, $f18
	sb      $t8, 0x0001($a0)
	sh      $t4, 0x000C($a0)
	andi    $t0, $a2, 0x007F
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f0, %lo(Na_pan_phone)($at)
	lui     $at, %hi(Na_pan_phone+4*127)
	subu    $t2, $0, $t1
	addu    $at, $at, $t2
	b       .L80316CE8
	lwc1    $f2, %lo(Na_pan_phone+4*127)($at)
.L80316BE0:
	lui     $v0, %hi(_Na_bss+0x5DDF)
	beqz    $v1, .L80316C94
	lb      $v0, %lo(_Na_bss+0x5DDF)($v0)
	bnez    $v0, .L80316C94
	li      $at, 0x42FF0000
	mtc1    $at, $f4
	lui     $at, %hi(Na_pan_wide)
	sh      $0, 0x000E($a0)
	mul.s   $f6, $f12, $f4
	sh      $0, 0x000C($a0)
	sb      $0, 0x0001($a0)
	move    $v1, $0
	move    $a1, $0
	trunc.w.s $f8, $f6
	mfc1    $v0, $f8
	nop
	andi    $t4, $v0, 0x007F
	sll     $a2, $t4, 2
	addu    $at, $at, $a2
	lwc1    $f0, %lo(Na_pan_wide)($at)
	lui     $at, %hi(Na_pan_wide+4*127)
	subu    $t5, $0, $a2
	addu    $at, $at, $t5
	lwc1    $f2, %lo(Na_pan_wide+4*127)($at)
	slti    $at, $t4, 0x0020
	beqz    $at, .L80316C54
	move    $v0, $t4
	b       .L80316C64
	li      $v1, 0x0001
.L80316C54:
	slti    $at, $v0, 0x0061
	bnezl   $at, .L80316C68
	lbu     $t9, 0x0000($a0)
	li      $a1, 0x0001
.L80316C64:
	lbu     $t9, 0x0000($a0)
.L80316C68:
	sll     $t7, $a1, 2
	andi    $t8, $t7, 0x0004
	andi    $t0, $t9, 0xFFFB
	or      $t5, $t8, $t0
	sll     $t3, $v1, 1
	andi    $t4, $t3, 0x0002
	andi    $t6, $t5, 0x00FD
	sb      $t5, 0x0000($a0)
	or      $t7, $t4, $t6
	b       .L80316CE8
	sb      $t7, 0x0000($a0)
.L80316C94:
	li      $at, 0x0003
	bne     $v0, $at, .L80316CAC
	lui     $at, %hi(Na_a_80338DB0)
	lwc1    $f2, %lo(Na_a_80338DB0)($at)
	b       .L80316CE8
	mov.s   $f0, $f2
.L80316CAC:
	li      $at, 0x42FF0000
	mtc1    $at, $f10
	lui     $at, %hi(Na_pan_stereo)
	mul.s   $f16, $f12, $f10
	trunc.w.s $f18, $f16
	mfc1    $a2, $f18
	nop
	andi    $t8, $a2, 0x007F
	sll     $t0, $t8, 2
	addu    $at, $at, $t0
	lwc1    $f0, %lo(Na_pan_stereo)($at)
	lui     $at, %hi(Na_pan_stereo+4*127)
	subu    $t1, $0, $t0
	addu    $at, $at, $t1
	lwc1    $f2, %lo(Na_pan_stereo+4*127)($at)
.L80316CE8:
	mtc1    $0, $f12
	sll     $t3, $a3, 8
	c.lt.s  $f12, $f14
	nop
	bc1t    .L80316D04
	nop
	mov.s   $f14, $f12
.L80316D04:
	mul.s   $f4, $f14, $f0
	nop
	mul.s   $f8, $f14, $f2
	trunc.w.s $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $t5, $f6
	mfc1    $t9, $f10
	andi    $t4, $t5, 0x7F00
	andi    $v0, $t4, 0xFFFF
	andi    $t8, $t9, 0x7F00
	sh      $t4, 0x003C($a0)
	bnez    $v0, .L80316D40
	sh      $t8, 0x003E($a0)
	addiu   $t0, $v0, 0x0001
	sh      $t0, 0x003C($a0)
.L80316D40:
	lhu     $v0, 0x003E($a0)
	bnez    $v0, .L80316D50
	addiu   $t1, $v0, 0x0001
	sh      $t1, 0x003E($a0)
.L80316D50:
	lbu     $t2, 0x0040($a0)
	beql    $a3, $t2, .L80316D78
	lw      $t7, 0x0000($a0)
	lbu     $t4, 0x0000($a0)
	sb      $a3, 0x0040($a0)
	sh      $t3, 0x00A0($a0)
	ori     $t6, $t4, 0x0008
	jr      $ra
	sb      $t6, 0x0000($a0)
	lw      $t7, 0x0000($a0)
.L80316D78:
	sll     $t8, $t7, 1
	bgezl   $t8, .L80316D98
	lbu     $t3, 0x0000($a0)
	lbu     $t1, 0x0000($a0)
	ori     $t2, $t1, 0x0008
	jr      $ra
	sb      $t2, 0x0000($a0)
	lbu     $t3, 0x0000($a0)
.L80316D98:
	andi    $t5, $t3, 0xFFF7
	sb      $t5, 0x0000($a0)
	jr      $ra
	nop

.globl Na_a_80316DA8
Na_a_80316DA8:
	mtc1    $a1, $f12
	jr      $ra
	swc1    $f12, 0x0038($a0)

.globl Na_a_80316DB4
Na_a_80316DB4:
	lbu     $t7, 0x0000($a0)
	sb      $0, 0x0001($a0)
	sh      $0, 0x000E($a0)
	ori     $t0, $t7, 0x0080
	ori     $t2, $t0, 0x0040
	sb      $t0, 0x0000($a0)
	andi    $t4, $t2, 0x00DF
	sb      $t2, 0x0000($a0)
	andi    $t6, $t4, 0x00EF
	sb      $t4, 0x0000($a0)
	andi    $t8, $t6, 0x00FB
	sb      $t6, 0x0000($a0)
	sb      $t8, 0x0000($a0)
	andi    $t9, $t8, 0x00FD
	sb      $t9, 0x0000($a0)
	sh      $0, 0x000C($a0)
	sh      $0, 0x0010($a0)
	jr      $ra
	sh      $0, 0x0012($a0)

.globl Na_a_80316E00
Na_a_80316E00:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lw      $t6, 0x0000($a0)
	li      $at, 0x0001
	li      $a1, 0x0000
	sll     $t7, $t6, 1
	srl     $t8, $t7, 31
	bne     $t8, $at, .L80316E34
	li      $a2, 0x3F000000
	lbu     $t9, 0x0000($a0)
	andi    $t0, $t9, 0xFFBF
	b       .L80316E44
	sb      $t0, 0x0000($a0)
.L80316E34:
	move    $a3, $0
	jal     Na_a_80316AF4
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
.L80316E44:
	lbu     $t1, 0x0000($a0)
	li      $v0, -0x0001
	sb      $0, 0x0004($a0)
	andi    $t3, $t1, 0xFF7F
	sb      $t3, 0x0000($a0)
	andi    $t4, $t3, 0x00EF
	sb      $t4, 0x0000($a0)
	sw      $v0, 0x002C($a0)
	sw      $v0, 0x0028($a0)
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

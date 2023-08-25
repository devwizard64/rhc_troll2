.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

Na_f_8031B830:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lbu     $t6, 0x0000($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f0
	andi    $t8, $t6, 0xFF7F
	andi    $t0, $t8, 0x00BF
	sb      $t8, 0x0000($a0)
	andi    $t2, $t0, 0x00DF
	sb      $t0, 0x0000($a0)
	andi    $t4, $t2, 0x00EF
	sb      $t2, 0x0000($a0)
	andi    $t6, $t4, 0x00F7
	li      $at, 0x3F000000
	mtc1    $at, $f4
	sb      $t4, 0x0000($a0)
	andi    $t8, $t6, 0x00FB
	sb      $t6, 0x0000($a0)
	sb      $t8, 0x0000($a0)
	andi    $t9, $t8, 0x00FD
	move    $a1, $a0
	sh      $0, 0x001A($a0)
	sb      $t9, 0x0000($a0)
	sb      $0, 0x0074($a0)
	swc1    $f0, 0x0020($a0)
	swc1    $f0, 0x001C($a0)
	swc1    $f0, 0x002C($a0)
	swc1    $f4, 0x0024($a0)
	la.u    $t1, env_default
	li      $t0, 0x0003
	la.l    $t1, env_default
	li      $t2, 0x0020
	sw      $0, 0x0034($a1)
	sb      $0, 0x0003($a1)
	sb      $t0, 0x0004($a1)
	sh      $0, 0x0016($a1)
	sw      $t1, 0x007C($a1)
	sb      $t2, 0x0078($a1)
	sh      $0, 0x007A($a1)
	lui     $t3, %hi(_Na_bss+0x5DDE)
	swc1    $f0, 0x0028($a1)
	lb      $t3, %lo(_Na_bss+0x5DDE)($t3)
	li      $a0, 0x0800
	sh      $a0, 0x000C($a1)
	sh      $a0, 0x0008($a1)
	sh      $0, 0x000E($a1)
	sh      $0, 0x000A($a1)
	sh      $0, 0x0010($a1)
	sh      $0, 0x0012($a1)
	sh      $0, 0x0014($a1)
	li      $a0, -0x0001
	move    $v1, $a1
	move    $v0, $0
	li      $a2, 0x0008
	sb      $t3, 0x0006($a1)
.L8031B90C:
	addiu   $v0, $v0, 0x0001
	addiu   $v1, $v1, 0x0001
	bne     $v0, $a2, .L8031B90C
	sb      $a0, 0x0053($v1)
	lbu     $t4, 0x0000($a1)
	addiu   $a0, $a1, 0x0080
	andi    $t5, $t4, 0xFFFE
	jal     Na_d_8031A264
	sb      $t5, 0x0000($a1)
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_f_8031B940:
	addiu   $sp, $sp, -0x0020
	sll     $t7, $a1, 2
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	addu    $a2, $a0, $t7
	lw      $a3, 0x0044($a2)
	bnez    $a3, .L8031B988
	move    $a0, $a3
	la.u    $a0, _Na_bss+0x4EF8
	la.l    $a0, _Na_bss+0x4EF8
	jal     Na_f_8031BF54
	sw      $a2, 0x0018($sp)
	lw      $a2, 0x0018($sp)
	bnez    $v0, .L8031B994
	sw      $v0, 0x0044($a2)
	sw      $0, 0x0044($a2)
	b       .L8031BA20
	li      $v0, -0x0001
.L8031B988:
	jal     Na_d_80319F64
	sw      $a2, 0x0018($sp)
	lw      $a2, 0x0018($sp)
.L8031B994:
	lw      $v1, 0x0044($a2)
	lw      $t8, 0x0020($sp)
	mtc1    $0, $f4
	lbu     $t3, 0x0000($v1)
	sw      $t8, 0x0050($v1)
	lw      $t9, 0x0020($sp)
	ori     $t5, $t3, 0x0080
	andi    $t7, $t5, 0x00DF
	lw      $at, 0x0078($t9)
	andi    $t0, $t7, 0x00EF
	move    $v0, $0
	sw      $at, 0x0014($v1)
	lw      $t1, 0x007C($t9)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	sb      $t5, 0x0000($v1)
	sb      $t7, 0x0000($v1)
	sw      $t1, 0x0018($v1)
	andi    $t9, $t0, 0x00BF
	li      $t1, 0x0080
	sb      $t0, 0x0000($v1)
	sb      $0, 0x0014($v1)
	sb      $t9, 0x0000($v1)
	sb      $0, 0x0004($v1)
	sb      $0, 0x006C($v1)
	sb      $0, 0x0001($v1)
	sb      $t1, 0x0002($v1)
	sh      $0, 0x001E($v1)
	sh      $0, 0x003C($v1)
	sh      $0, 0x003E($v1)
	sh      $0, 0x0040($v1)
	sw      $0, 0x0044($v1)
	sw      $0, 0x0048($v1)
	swc1    $f4, 0x0024($v1)
	swc1    $f6, 0x0028($v1)
.L8031BA20:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl Na_f_8031BA30
Na_f_8031BA30:
	addiu   $sp, $sp, -0x0018
	beqz    $a0, .L8031BA5C
	sw      $ra, 0x0014($sp)
	jal     Na_d_80319F64
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	lbu     $t6, 0x0000($a0)
	andi    $t9, $t6, 0xFF7F
	ori     $t0, $t9, 0x0040
	sb      $t9, 0x0000($a0)
	sb      $t0, 0x0000($a0)
.L8031BA5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_f_8031BA6C:
	addiu   $sp, $sp, -0x0028
	sll     $t6, $a1, 2
	sw      $ra, 0x0014($sp)
	addu    $a3, $a0, $t6
	lw      $a2, 0x0044($a3)
	beqz    $a2, .L8031BAE0
	move    $a0, $a2
	lw      $t7, 0x0070($a2)
	la.u    $v1, _Na_bss+0x4EF8
	la.l    $v1, _Na_bss+0x4EF8
	bnez    $t7, .L8031BAD0
	nop
	lw      $t8, 0x0000($v1)
	addiu   $v0, $a2, 0x0070
	lui     $at, %hi(_Na_bss+0x4EF8)
	sw      $v0, 0x0004($t8)
	lw      $t9, 0x0000($v1)
	sw      $v1, 0x0004($v0)
	sw      $t9, 0x0000($v0)
	sw      $v0, %lo(_Na_bss+0x4EF8)($at)
	lw      $t0, 0x0008($v1)
	lw      $t2, 0x000C($v1)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0008($v1)
	sw      $t2, 0x000C($v0)
.L8031BAD0:
	jal     Na_f_8031BA30
	sw      $a3, 0x001C($sp)
	lw      $a3, 0x001C($sp)
	sw      $0, 0x0044($a3)
.L8031BAE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl Na_f_8031BAF0
Na_f_8031BAF0:
	addiu   $sp, $sp, -0x0028
	sw      $s2, 0x0020($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	move    $s1, $a0
	sw      $ra, 0x0024($sp)
	move    $s0, $0
	li      $s2, 0x0004
	move    $a0, $s1
.L8031BB14:
	jal     Na_f_8031BA6C
	move    $a1, $s0
	addiu   $s0, $s0, 0x0001
	bnel    $s0, $s2, .L8031BB14
	move    $a0, $s1
	jal     Na_d_8031A368
	addiu   $a0, $s1, 0x0080
	lbu     $t6, 0x0000($s1)
	andi    $t9, $t6, 0xFF7F
	sb      $t9, 0x0000($s1)
	ori     $t0, $t9, 0x0040
	sb      $t0, 0x0000($s1)
	lw      $ra, 0x0024($sp)
	lw      $s2, 0x0020($sp)
	lw      $s1, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

Na_f_8031BB5C:
	la.u    $a0, _Na_bss+0x1C38
	la.u    $v0, _Na_bss+0x3438
	la.l    $v0, _Na_bss+0x3438
	la.l    $a0, _Na_bss+0x1C38
	move    $v1, $0
.L8031BB70:
	lw      $t6, 0x0040($a0)
	addiu   $a0, $a0, 0x00C0
	bnez    $t6, .L8031BB8C
	la.u    $t7, _Na_bss+0x1C38
	la.l    $t7, _Na_bss+0x1C38
	jr      $ra
	addu    $v0, $v1, $t7
.L8031BB8C:
	bne     $a0, $v0, .L8031BB70
	addiu   $v1, $v1, 0x00C0
	la.u    $v0, _Na_bss+0x4E38
	la.l    $v0, _Na_bss+0x4E38
	jr      $ra
	nop

Na_f_8031BBA4:
	addiu   $sp, $sp, -0x0040
	sw      $s8, 0x0038($sp)
	sw      $s7, 0x0034($sp)
	sw      $s6, 0x0030($sp)
	sw      $s3, 0x0024($sp)
	sw      $s1, 0x001C($sp)
	sw      $a1, 0x0044($sp)
	andi    $t6, $a1, 0xFFFF
	la.u    $s7, _Na_bss+0x4E38
	la.u    $s8, Na_g_80332E50
	move    $a1, $t6
	move    $s1, $a0
	sw      $ra, 0x003C($sp)
	sw      $s5, 0x002C($sp)
	sw      $s4, 0x0028($sp)
	sw      $s2, 0x0020($sp)
	sw      $s0, 0x0018($sp)
	la.l    $s8, Na_g_80332E50
	la.l    $s7, _Na_bss+0x4E38
	move    $s3, $0
	li      $s6, 0x0001
.L8031BBF8:
	andi    $t7, $a1, 0x0001
	beqz    $t7, .L8031BC88
	move    $s5, $a1
	sll     $t8, $s3, 2
	addu    $s2, $s1, $t8
	lw      $s0, 0x002C($s2)
	move    $s4, $s7
	xor     $t9, $s0, $s7
	sltu    $t9, $0, $t9
	bne     $s6, $t9, .L8031BC3C
	nop
	lw      $t0, 0x0040($s0)
	bne     $s1, $t0, .L8031BC3C
	nop
	jal     Na_f_8031BAF0
	move    $a0, $s0
	sw      $0, 0x0040($s0)
.L8031BC3C:
	jal     Na_f_8031BB5C
	nop
	bne     $v0, $s4, .L8031BC60
	move    $s0, $v0
	li      $at, 0x00010000
	addu    $t2, $s3, $at
	sw      $t2, 0x0000($s8)
	b       .L8031BC88
	sw      $v0, 0x002C($s2)
.L8031BC60:
	jal     Na_f_8031B830
	move    $a0, $s0
	sw      $s0, 0x002C($s2)
	sw      $s1, 0x0040($s0)
	lbu     $t3, 0x0006($s1)
	sb      $t3, 0x0005($s0)
	lbu     $t4, 0x0004($s1)
	sb      $t4, 0x0002($s0)
	lbu     $t5, 0x0003($s1)
	sb      $t5, 0x0001($s0)
.L8031BC88:
	srl     $a1, $s5, 1
	addiu   $s3, $s3, 0x0001
	li      $at, 0x0010
	andi    $t6, $a1, 0xFFFF
	bne     $s3, $at, .L8031BBF8
	move    $a1, $t6
	lw      $ra, 0x003C($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s4, 0x0028($sp)
	lw      $s5, 0x002C($sp)
	lw      $s6, 0x0030($sp)
	lw      $s7, 0x0034($sp)
	lw      $s8, 0x0038($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

Na_f_8031BCD0:
	addiu   $sp, $sp, -0x0038
	sw      $s5, 0x0028($sp)
	sw      $s7, 0x0030($sp)
	sw      $s6, 0x002C($sp)
	sw      $s4, 0x0024($sp)
	sw      $s2, 0x001C($sp)
	sw      $a1, 0x003C($sp)
	andi    $t6, $a1, 0xFFFF
	la.u    $s5, _Na_bss+0x4E38
	move    $a1, $t6
	move    $s4, $a0
	sw      $ra, 0x0034($sp)
	sw      $s3, 0x0020($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	la.l    $s5, _Na_bss+0x4E38
	move    $s2, $0
	li      $s6, 0x0001
	li      $s7, 0x0010
.L8031BD1C:
	andi    $t7, $a1, 0x0001
	beqz    $t7, .L8031BD60
	move    $s3, $a1
	sll     $t8, $s2, 2
	addu    $s1, $s4, $t8
	lw      $s0, 0x002C($s1)
	xor     $t9, $s0, $s5
	sltu    $t9, $0, $t9
	bnel    $s6, $t9, .L8031BD64
	srl     $a1, $s3, 1
	lw      $t0, 0x0040($s0)
	bnel    $s4, $t0, .L8031BD60
	sw      $s5, 0x002C($s1)
	jal     Na_f_8031BAF0
	move    $a0, $s0
	sw      $0, 0x0040($s0)
	sw      $s5, 0x002C($s1)
.L8031BD60:
	srl     $a1, $s3, 1
.L8031BD64:
	addiu   $s2, $s2, 0x0001
	andi    $t1, $a1, 0xFFFF
	bne     $s2, $s7, .L8031BD1C
	move    $a1, $t1
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	lw      $s4, 0x0024($sp)
	lw      $s5, 0x0028($sp)
	lw      $s6, 0x002C($sp)
	lw      $s7, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

Na_f_8031BDA0:
	addiu   $sp, $sp, -0x0028
	andi    $t6, $a1, 0x00FF
	sll     $t7, $t6, 2
	sw      $ra, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s2, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $a1, 0x002C($sp)
	addu    $t8, $a0, $t7
	lw      $s2, 0x002C($t8)
	la.u    $t9, _Na_bss+0x4E38
	la.l    $t9, _Na_bss+0x4E38
	beq     $s2, $t9, .L8031BE28
	move    $s0, $0
	lbu     $t2, 0x0000($s2)
	sb      $0, 0x0074($s2)
	sw      $a2, 0x005C($s2)
	ori     $t4, $t2, 0x0080
	sb      $t4, 0x0000($s2)
	andi    $t5, $t4, 0x00BF
	sb      $t5, 0x0000($s2)
	sh      $0, 0x0016($s2)
	move    $s1, $s2
	li      $s3, 0x0004
.L8031BE04:
	lw      $t6, 0x0044($s1)
	move    $a0, $s2
	beqzl   $t6, .L8031BE20
	addiu   $s0, $s0, 0x0001
	jal     Na_f_8031BA6C
	move    $a1, $s0
	addiu   $s0, $s0, 0x0001
.L8031BE20:
	bne     $s0, $s3, .L8031BE04
	addiu   $s1, $s1, 0x0004
.L8031BE28:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl Na_f_8031BE44
Na_f_8031BE44:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     Na_f_8031BCD0
	li      $a1, 0xFFFF
	lw      $a2, 0x0018($sp)
	jal     Na_d_8031A368
	addiu   $a0, $a2, 0x0090
	lw      $a2, 0x0018($sp)
	la.u    $t2, _Na_bss+0x770
	la.l    $t2, _Na_bss+0x770
	lbu     $t7, 0x0000($a2)
	lbu     $t1, 0x0005($a2)
	la.u    $a0, _Na_bss+0x358
	ori     $t8, $t7, 0x0040
	sb      $t8, 0x0000($a2)
	lbu     $t9, 0x0000($a2)
	addu    $v0, $t1, $t2
	li      $t4, 0x0003
	andi    $t0, $t9, 0xFF7F
	sb      $t0, 0x0000($a2)
	lbu     $t3, 0x0000($v0)
	li      $t7, 0x0003
	la.l    $a0, _Na_bss+0x358
	slti    $at, $t3, 0x0002
	bnez    $at, .L8031BEB4
	li      $t9, 0x0001
	sb      $t4, 0x0000($v0)
.L8031BEB4:
	lbu     $v0, 0x0006($a2)
	la.u    $t5, _Na_bss+0x730
	la.l    $t5, _Na_bss+0x730
	addu    $v1, $v0, $t5
	lbu     $t6, 0x0000($v1)
	slti    $at, $t6, 0x0002
	bnezl   $at, .L8031BEE0
	lw      $t8, 0x01B0($a0)
	sb      $t7, 0x0000($v1)
	lbu     $v0, 0x0006($a2)
	lw      $t8, 0x01B0($a0)
.L8031BEE0:
	move    $v1, $v0
	bnel    $t8, $v0, .L8031BEF8
	lw      $t0, 0x01BC($a0)
	b       .L8031BF04
	sw      $t9, 0x0194($a0)
	lw      $t0, 0x01BC($a0)
.L8031BEF8:
	bnel    $t0, $v1, .L8031BF08
	lw      $ra, 0x0014($sp)
	sw      $0, 0x0194($a0)
.L8031BF04:
	lw      $ra, 0x0014($sp)
.L8031BF08:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_f_8031BF14
Na_f_8031BF14:
	lw      $t6, 0x0000($a1)
	bnez    $t6, .L8031BF4C
	nop
	lw      $t7, 0x0000($a0)
	sw      $a1, 0x0004($t7)
	lw      $t8, 0x0000($a0)
	sw      $a0, 0x0004($a1)
	sw      $t8, 0x0000($a1)
	lw      $t9, 0x0008($a0)
	lw      $t1, 0x000C($a0)
	sw      $a1, 0x0000($a0)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0008($a0)
	sw      $t1, 0x000C($a1)
.L8031BF4C:
	jr      $ra
	nop

.globl Na_f_8031BF54
Na_f_8031BF54:
	lw      $v1, 0x0000($a0)
	bnel    $v1, $a0, .L8031BF6C
	lw      $t6, 0x0000($v1)
	jr      $ra
	move    $v0, $0
	lw      $t6, 0x0000($v1)
.L8031BF6C:
	sw      $a0, 0x0004($t6)
	lw      $t7, 0x0000($v1)
	sw      $t7, 0x0000($a0)
	sw      $0, 0x0000($v1)
	lw      $t8, 0x0008($a0)
	addiu   $t9, $t8, -0x0001
	sw      $t9, 0x0008($a0)
	lw      $v0, 0x0008($v1)
	jr      $ra
	nop

Na_f_8031BF94:
	addiu   $sp, $sp, -0x0030
	sw      $s3, 0x0020($sp)
	la.u    $s3, _Na_bss+0x4EF8
	la.l    $s3, _Na_bss+0x4EF8
	sw      $s4, 0x0024($sp)
	sw      $s2, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s5, 0x0028($sp)
	sw      $s0, 0x0014($sp)
	la.u    $s1, _Na_bss+0x3438
	la.u    $s2, _Na_bss+0x34A8
	la.u    $s4, _Na_bss+0x3438
	sw      $ra, 0x002C($sp)
	sw      $s3, 0x0000($s3)
	sw      $s3, 0x0004($s3)
	sw      $0, 0x0008($s3)
	sw      $0, 0x000C($s3)
	la.l    $s4, _Na_bss+0x3438
	la.l    $s2, _Na_bss+0x34A8
	la.l    $s1, _Na_bss+0x3438
	move    $s0, $0
	li      $s5, 0x0034
.L8031BFEC:
	sll     $t6, $s0, 7
	addu    $t7, $s4, $t6
	sw      $t7, 0x0078($s1)
	sw      $0, 0x0070($s1)
	move    $a0, $s3
	jal     Na_f_8031BF14
	move    $a1, $s2
	addiu   $s0, $s0, 0x0001
	addiu   $s1, $s1, 0x0080
	bne     $s0, $s5, .L8031BFEC
	addiu   $s2, $s2, 0x0080
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	lw      $s4, 0x0024($sp)
	lw      $s5, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

Na_f_8031C03C:
	lw      $a1, 0x0000($a0)
	addiu   $t6, $a1, 0x0001
	sw      $t6, 0x0000($a0)
	jr      $ra
	lbu     $v0, 0x0000($a1)

Na_f_8031C050:
	lw      $a1, 0x0000($a0)
	lbu     $v1, 0x0000($a1)
	addiu   $t9, $a1, 0x0001
	sw      $t9, 0x0000($a0)
	lbu     $t0, 0x0000($t9)
	sll     $t8, $v1, 8
	addiu   $t3, $t9, 0x0001
	or      $v1, $t0, $t8
	sll     $t1, $v1, 16
	sra     $v0, $t1, 16
	jr      $ra
	sw      $t3, 0x0000($a0)

Na_f_8031C080:
	lw      $v0, 0x0000($a0)
	lbu     $v1, 0x0000($v0)
	addiu   $t6, $v0, 0x0001
	sw      $t6, 0x0000($a0)
	andi    $t7, $v1, 0x0080
	beqz    $t7, .L8031C0BC
	move    $a1, $v1
	lbu     $t0, 0x0000($t6)
	sll     $v1, $a1, 8
	andi    $t9, $v1, 0x7F00
	or      $v1, $t0, $t9
	andi    $t1, $v1, 0xFFFF
	addiu   $t2, $t6, 0x0001
	sw      $t2, 0x0000($a0)
	move    $v1, $t1
.L8031C0BC:
	jr      $ra
	move    $v0, $v1

Na_f_8031C0C4:
	addiu   $sp, $sp, -0x0060
	li      $t6, 0x0001
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	sb      $t6, 0x003F($sp)
	lw      $v0, 0x0000($a0)
	move    $s0, $a0
	srl     $t7, $v0, 31
	beqzl   $t7, .L8031CE44
	lw      $ra, 0x001C($sp)
	lh      $v1, 0x003C($a0)
	sll     $t6, $v0, 2
	sll     $t9, $v0, 3
	slti    $at, $v1, 0x0002
	bnez    $at, .L8031C138
	addiu   $t8, $v1, -0x0001
	bltz    $t6, .L8031CE40
	sh      $t8, 0x003C($a0)
	lh      $t7, 0x003E($a0)
	lh      $t8, 0x003C($a0)
	slt     $at, $t7, $t8
	bnezl   $at, .L8031CE44
	lw      $ra, 0x001C($sp)
	jal     Na_d_80319F64
	nop
	lbu     $t6, 0x0000($s0)
	ori     $t7, $t6, 0x0020
	b       .L8031CE40
	sb      $t7, 0x0000($s0)
.L8031C138:
	bltzl   $t9, .L8031C14C
	lbu     $v0, 0x0004($s0)
	jal     Na_d_80319F64
	move    $a0, $s0
	lbu     $v0, 0x0004($s0)
.L8031C14C:
	li      $at, -0x0081
	la.u    $ra, _Na_bss+0x5DC0
	and     $t6, $v0, $at
	li      $at, 0x0001
	beq     $t6, $at, .L8031C170
	la.l    $ra, _Na_bss+0x5DC0
	li      $at, 0x0002
	bnel    $t6, $at, .L8031C178
	lw      $t5, 0x0050($s0)
.L8031C170:
	sb      $0, 0x0004($s0)
	lw      $t5, 0x0050($s0)
.L8031C178:
	li      $at, 0x3C000000
	la.u    $t3, _Na_bss+0x358
	mtc1    $at, $f0
	la.l    $t3, _Na_bss+0x358
	lhu     $t2, 0x003A($sp)
	li      $t1, 0x00FF
	lw      $t4, 0x0040($t5)
.L8031C194:
	lw      $v0, 0x0054($s0)
.L8031C198:
	addiu   $t7, $v0, 0x0001
	sw      $t7, 0x0054($s0)
	lbu     $a0, 0x0000($v0)
	slti    $at, $a0, 0x00C1
	bnez    $at, .L8031C704
	move    $a1, $a0
	slti    $at, $a0, 0x00CB
	bnez    $at, .L8031C1E0
	addiu   $t9, $a1, -0x00C1
	addiu   $t8, $a0, -0x00F7
	sltiu   $at, $t8, 0x0009
	beqz    $at, L8031C6A0
	sll     $t8, $t8, 2
	lui     $at, %hi(Na_f_80338E60)
	addu    $at, $at, $t8
	lw      $t8, %lo(Na_f_80338E60)($at)
	jr      $t8
	nop
.L8031C1E0:
	sltiu   $at, $t9, 0x000A
	beqz    $at, L8031C6A0
	sll     $t9, $t9, 2
	lui     $at, %hi(Na_f_80338E84)
	addu    $at, $at, $t9
	lw      $t9, %lo(Na_f_80338E84)($at)
	jr      $t9
	nop
.globl L8031C200
L8031C200:
	addiu   $v0, $s0, 0x0054
	lbu     $v1, 0x0018($v0)
	bnez    $v1, .L8031C220
	addiu   $t6, $v1, -0x0001
	jal     Na_f_8031BA30
	move    $a0, $s0
	b       .L8031CE44
	lw      $ra, 0x001C($sp)
.L8031C220:
	andi    $t7, $t6, 0x00FF
	sll     $t8, $t7, 2
	addu    $t9, $v0, $t8
	sb      $t6, 0x0018($v0)
	lw      $t6, 0x0004($t9)
	b       .L8031C194
	sw      $t6, 0x0000($v0)
.globl L8031C23C
L8031C23C:
	addiu   $v0, $s0, 0x0054
	lw      $v1, 0x0000($v0)
	lbu     $a0, 0x0000($v1)
	addiu   $t6, $v1, 0x0001
	sw      $t6, 0x0000($v0)
	lbu     $t7, 0x0000($t6)
	sll     $t9, $a0, 8
	or      $a1, $t7, $t9
	lbu     $t7, 0x0018($v0)
	addiu   $t9, $t6, 0x0001
	sw      $t9, 0x0000($v0)
	addiu   $t8, $t7, 0x0001
	andi    $t6, $t8, 0x00FF
	sll     $t7, $t6, 2
	sb      $t8, 0x0018($v0)
	addu    $t8, $v0, $t7
	sw      $t9, 0x0000($t8)
	lw      $t6, 0x0014($t4)
	andi    $t7, $a1, 0xFFFF
	andi    $t2, $a1, 0xFFFF
	addu    $t9, $t6, $t7
	b       .L8031C194
	sw      $t9, 0x0000($v0)
.globl L8031C298
L8031C298:
	addiu   $v0, $s0, 0x0054
	lw      $v1, 0x0000($v0)
	lbu     $t6, 0x0018($v0)
	addiu   $t8, $v1, 0x0001
	sw      $t8, 0x0000($v0)
	lbu     $a1, 0x0000($v1)
	addu    $t7, $v0, $t6
	sb      $a1, 0x0014($t7)
	lbu     $t9, 0x0018($v0)
	lw      $t6, 0x0000($v0)
	addiu   $t8, $t9, 0x0001
	andi    $t7, $t8, 0x00FF
	sll     $t9, $t7, 2
	sb      $t8, 0x0018($v0)
	addu    $t8, $v0, $t9
	b       .L8031C194
	sw      $t6, 0x0000($t8)
.globl L8031C2DC
L8031C2DC:
	addiu   $v0, $s0, 0x0054
	lbu     $t7, 0x0018($v0)
	addu    $a0, $v0, $t7
	lbu     $t9, 0x0013($a0)
	addiu   $t6, $t9, -0x0001
	sb      $t6, 0x0013($a0)
	lbu     $v1, 0x0018($v0)
	addu    $t8, $v0, $v1
	lbu     $t7, 0x0013($t8)
	move    $a1, $v1
	sll     $t9, $a1, 2
	beqz    $t7, .L8031C31C
	addu    $t6, $v0, $t9
	lw      $t8, 0x0000($t6)
	b       .L8031C194
	sw      $t8, 0x0000($v0)
.L8031C31C:
	addiu   $t7, $v1, -0x0001
	b       .L8031C194
	sb      $t7, 0x0018($v0)
.globl L8031C328
L8031C328:
	addiu   $v0, $s0, 0x0054
	lw      $v1, 0x0000($v0)
	lbu     $a0, 0x0000($v1)
	addiu   $t7, $v1, 0x0001
	sw      $t7, 0x0000($v0)
	lbu     $t9, 0x0000($t7)
	sll     $t8, $a0, 8
	addiu   $t7, $t7, 0x0001
	or      $t6, $t9, $t8
	sw      $t7, 0x0000($v0)
	lw      $t9, 0x0014($t4)
	move    $t8, $t6
	andi    $t2, $t8, 0xFFFF
	andi    $t6, $t8, 0xFFFF
	addu    $t8, $t9, $t6
	b       .L8031C194
	sw      $t8, 0x0000($v0)
.globl L8031C36C
L8031C36C:
	addiu   $v0, $s0, 0x0054
	lw      $v1, 0x0000($v0)
	li      $at, 0x00C1
	lbu     $a0, 0x0000($v1)
	addiu   $t7, $v1, 0x0001
	bne     $a1, $at, .L8031C3A4
	sw      $t7, 0x0000($v0)
	multu   $a0, $a0
	mflo    $t9
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	b       .L8031C194
	swc1    $f6, 0x0024($s0)
.L8031C3A4:
	mtc1    $a0, $f8
	nop
	cvt.s.w $f10, $f8
	mul.s   $f16, $f10, $f0
	b       .L8031C194
	swc1    $f16, 0x0028($s0)
.globl L8031C3BC
L8031C3BC:
	addiu   $v0, $s0, 0x0054
	lw      $v1, 0x0000($v0)
	li      $at, 0x00C9
	lbu     $a0, 0x0000($v1)
	addiu   $t6, $v1, 0x0001
	bne     $a1, $at, .L8031C3E0
	sw      $t6, 0x0000($v0)
	b       .L8031C194
	sb      $a0, 0x0002($s0)
.L8031C3E0:
	b       .L8031C194
	sh      $a0, 0x001E($s0)
.globl L8031C3E8
L8031C3E8:
	li      $at, 0x00C4
	bne     $a1, $at, .L8031C3FC
	move    $a0, $s0
	b       .L8031C400
	li      $v0, 0x0001
.L8031C3FC:
	move    $v0, $0
.L8031C400:
	lbu     $t6, 0x0000($s0)
	sll     $t7, $v0, 4
	andi    $t9, $t7, 0x0010
	andi    $t8, $t6, 0xFFEF
	or      $t7, $t9, $t8
	sb      $t7, 0x0000($s0)
	sw      $t5, 0x0058($sp)
	sw      $t4, 0x005C($sp)
	jal     Na_d_80319F64
	sh      $t2, 0x003A($sp)
	li      $at, 0x3C000000
	mtc1    $at, $f0
	la.u    $t3, _Na_bss+0x358
	la.u    $ra, _Na_bss+0x5DC0
	la.l    $ra, _Na_bss+0x5DC0
	la.l    $t3, _Na_bss+0x358
	li      $t1, 0x00FF
	lhu     $t2, 0x003A($sp)
	lw      $t4, 0x005C($sp)
	b       .L8031C194
	lw      $t5, 0x0058($sp)
.globl L8031C454
L8031C454:
	addiu   $v0, $s0, 0x0054
	lw      $v1, 0x0000($v0)
	lbu     $a0, 0x0000($v1)
	addiu   $t6, $v1, 0x0001
	sw      $t6, 0x0000($v0)
	andi    $t9, $a0, 0x0080
	beqz    $t9, .L8031C498
	move    $a1, $a0
	move    $v1, $t6
	lbu     $t6, 0x0000($t6)
	sll     $a0, $a1, 8
	andi    $t7, $a0, 0x7F00
	or      $a0, $t6, $t7
	andi    $a1, $a0, 0xFFFF
	addiu   $t8, $v1, 0x0001
	sw      $t8, 0x0000($v0)
	move    $a0, $a1
.L8031C498:
	andi    $t2, $a0, 0xFFFF
	b       .L8031C194
	sh      $a1, 0x0038($s0)
.globl L8031C4A4
L8031C4A4:
	addiu   $v0, $s0, 0x0054
	lw      $v1, 0x0000($v0)
	addiu   $t7, $v1, 0x0001
	sw      $t7, 0x0000($v0)
	lbu     $a1, 0x0000($v1)
	slti    $at, $a1, 0x007F
	beqzl   $at, .L8031C198
	lw      $v0, 0x0054($s0)
	lbu     $t9, 0x0005($t5)
	lw      $t6, 0x0000($ra)
	andi    $v0, $a1, 0x00FF
	sll     $t8, $t9, 2
	subu    $t8, $t8, $t9
	sll     $t8, $t8, 2
	addu    $a3, $t6, $t8
	lbu     $v1, 0x0001($a3)
	slt     $at, $a1, $v1
	bnezl   $at, .L8031C50C
	lw      $v1, 0x0004($a3)
	andi    $v0, $v1, 0x00FF
	beqzl   $v0, .L8031C198
	lw      $v0, 0x0054($s0)
	addiu   $v0, $v0, -0x0001
	andi    $t7, $v0, 0x00FF
	move    $v0, $t7
	lw      $v1, 0x0004($a3)
.L8031C50C:
	sll     $t9, $v0, 2
	addiu   $a1, $s0, 0x0048
	addu    $t6, $v1, $t9
	lw      $a0, 0x0000($t6)
	bnezl   $a0, .L8031C550
	lw      $v1, 0x0004($t3)
	beq     $t1, $v0, .L8031C54C
.L8031C528:
	sll     $t8, $v0, 2
	addu    $t7, $v1, $t8
	lw      $a0, 0x0000($t7)
	bnezl   $a0, .L8031C550
	lw      $v1, 0x0004($t3)
	addiu   $v0, $v0, -0x0001
	andi    $t9, $v0, 0x00FF
	bne     $t1, $t9, .L8031C528
	move    $v0, $t9
.L8031C54C:
	lw      $v1, 0x0004($t3)
.L8031C550:
	sltu    $at, $a0, $v1
	bnezl   $at, .L8031C574
	lw      $v1, 0x0198($t3)
	lw      $t6, 0x000C($t3)
	addu    $t8, $v1, $t6
	sltu    $at, $t8, $a0
	beqzl   $at, .L8031C598
	lw      $t6, 0x0004($a0)
	lw      $v1, 0x0198($t3)
.L8031C574:
	sltu    $at, $a0, $v1
	bnezl   $at, .L8031C5B4
	li      $at, 0x00020000
	lw      $t7, 0x01A0($t3)
	addu    $t9, $v1, $t7
	sltu    $at, $t9, $a0
	bnezl   $at, .L8031C5B4
	li      $at, 0x00020000
	lw      $t6, 0x0004($a0)
.L8031C598:
	addiu   $v0, $s0, 0x0014
	sw      $t6, 0x0004($v0)
	lbu     $t8, 0x0003($a0)
	sb      $t8, 0x0000($v0)
	b       .L8031C194
	sw      $a0, 0x0000($a1)
	li      $at, 0x00020000
.L8031C5B4:
	addu    $t7, $v0, $at
	lui     $at, %hi(Na_g_80332E50)
	sw      $t7, %lo(Na_g_80332E50)($at)
	b       .L8031C194
	sw      $0, 0x0000($a1)
.globl L8031C5C8
L8031C5C8:
	addiu   $v0, $s0, 0x0054
	lw      $v1, 0x0000($v0)
	addiu   $t9, $v1, 0x0001
	sw      $t9, 0x0000($v0)
	lbu     $a1, 0x0000($v1)
	sb      $a1, 0x0004($s0)
	lw      $v1, 0x0000($v0)
	addiu   $t6, $v1, 0x0001
	sw      $t6, 0x0000($v0)
	lh      $t8, 0x001A($t5)
	lbu     $a3, 0x0000($v1)
	lh      $t9, 0x001E($s0)
	addu    $t7, $t8, $a3
	lh      $t8, 0x0010($t4)
	addu    $t6, $t7, $t9
	addu    $t0, $t6, $t8
	andi    $t7, $t0, 0x00FF
	slti    $at, $t7, 0x0080
	bnez    $at, .L8031C61C
	move    $t0, $t7
	move    $t0, $0
.L8031C61C:
	lbu     $t9, 0x0004($s0)
	sb      $t0, 0x0003($s0)
	andi    $t6, $t9, 0x0080
	beqzl   $t6, .L8031C650
	lw      $v1, 0x0000($v0)
	lw      $t8, 0x0000($v0)
	lbu     $t7, 0x0000($t8)
	sh      $t7, 0x001C($s0)
	lw      $t9, 0x0000($v0)
	addiu   $t6, $t9, 0x0001
	b       .L8031C194
	sw      $t6, 0x0000($v0)
	lw      $v1, 0x0000($v0)
.L8031C650:
	lbu     $a0, 0x0000($v1)
	addiu   $t8, $v1, 0x0001
	sw      $t8, 0x0000($v0)
	andi    $t7, $a0, 0x0080
	beqz    $t7, .L8031C68C
	move    $a1, $a0
	move    $v1, $t8
	lbu     $t8, 0x0000($t8)
	sll     $a0, $a1, 8
	andi    $t6, $a0, 0x7F00
	or      $a0, $t8, $t6
	andi    $t7, $a0, 0xFFFF
	addiu   $t9, $v1, 0x0001
	sw      $t9, 0x0000($v0)
	move    $a0, $t7
.L8031C68C:
	andi    $t2, $a0, 0xFFFF
	b       .L8031C194
	sh      $a0, 0x001C($s0)
.globl L8031C698
L8031C698:
	b       .L8031C194
	sb      $0, 0x0004($s0)
.globl L8031C6A0
L8031C6A0:
	andi    $v0, $a1, 0x00F0
	li      $at, 0x00D0
	beq     $v0, $at, .L8031C6C0
	li      $at, 0x00E0
	beql    $v0, $at, .L8031C6F0
	lw      $t6, 0x008C($t4)
	b       .L8031C198
	lw      $v0, 0x0054($s0)
.L8031C6C0:
	lw      $t6, 0x0088($t4)
	andi    $t8, $a1, 0x000F
	addu    $t7, $t6, $t8
	lbu     $t2, 0x0000($t7)
	multu   $t2, $t2
	mflo    $t9
	mtc1    $t9, $f18
	nop
	cvt.s.w $f4, $f18
	b       .L8031C194
	swc1    $f4, 0x0024($s0)
	lw      $t6, 0x008C($t4)
.L8031C6F0:
	andi    $t8, $a1, 0x000F
	addu    $t7, $t6, $t8
	lbu     $t9, 0x0000($t7)
	b       .L8031C194
	sb      $t9, 0x0002($s0)
.L8031C704:
	li      $at, 0x00C0
	bne     $a1, $at, .L8031C760
	addiu   $v0, $s0, 0x0054
	lw      $v1, 0x0000($v0)
	lbu     $a0, 0x0000($v1)
	addiu   $t6, $v1, 0x0001
	sw      $t6, 0x0000($v0)
	andi    $t8, $a0, 0x0080
	beqz    $t8, .L8031C74C
	move    $a1, $a0
	move    $v1, $t6
	lbu     $t6, 0x0000($t6)
	sll     $a0, $a0, 8
	andi    $t9, $a0, 0x7F00
	addiu   $t7, $v1, 0x0001
	or      $a0, $t6, $t9
	andi    $a1, $a0, 0xFFFF
	sw      $t7, 0x0000($v0)
.L8031C74C:
	lbu     $t6, 0x0000($s0)
	sh      $a1, 0x003C($s0)
	ori     $t8, $t6, 0x0020
	b       .L8031CD60
	sb      $t8, 0x0000($s0)
.L8031C760:
	lbu     $t7, 0x0000($s0)
	li      $at, 0x0001
	andi    $t1, $a1, 0x00C0
	andi    $t9, $t7, 0xFFDF
	sb      $t9, 0x0000($s0)
	lw      $t6, 0x0000($t5)
	sll     $t8, $t6, 6
	srl     $t7, $t8, 31
	bne     $t7, $at, .L8031C8E0
	nop
	andi    $t1, $a1, 0x00C0
	beqz    $t1, .L8031C7B4
	addiu   $v0, $s0, 0x0054
	li      $at, 0x0040
	beq     $t1, $at, .L8031C828
	addiu   $v0, $s0, 0x0054
	li      $at, 0x0080
	beq     $t1, $at, .L8031C88C
	addiu   $v0, $s0, 0x0054
	b       .L8031C8BC
	move    $a0, $t2
.L8031C7B4:
	lw      $v1, 0x0000($v0)
	lbu     $a2, 0x0000($v1)
	addiu   $t9, $v1, 0x0001
	sw      $t9, 0x0000($v0)
	andi    $t6, $a2, 0x0080
	beqz    $t6, .L8031C7F4
	move    $a3, $a2
	move    $v1, $t9
	lbu     $t9, 0x0000($t9)
	sll     $a2, $a3, 8
	andi    $t7, $a2, 0x7F00
	or      $a2, $t9, $t7
	andi    $a3, $a2, 0xFFFF
	addiu   $t8, $v1, 0x0001
	sw      $t8, 0x0000($v0)
	move    $a2, $a3
.L8031C7F4:
	lw      $v1, 0x0000($v0)
	andi    $t2, $a2, 0xFFFF
	move    $a0, $t2
	lbu     $t3, 0x0000($v1)
	addiu   $t7, $v1, 0x0001
	sw      $t7, 0x0000($v0)
	lbu     $t6, 0x0000($t7)
	sb      $t6, 0x0002($s0)
	lw      $t8, 0x0000($v0)
	addiu   $t7, $t8, 0x0001
	sw      $t7, 0x0000($v0)
	b       .L8031C8C0
	sh      $a3, 0x003A($s0)
.L8031C828:
	lw      $v1, 0x0000($v0)
	lbu     $a2, 0x0000($v1)
	addiu   $t9, $v1, 0x0001
	sw      $t9, 0x0000($v0)
	andi    $t6, $a2, 0x0080
	beqz    $t6, .L8031C868
	move    $a3, $a2
	move    $v1, $t9
	lbu     $t9, 0x0000($t9)
	sll     $a2, $a3, 8
	andi    $t7, $a2, 0x7F00
	or      $a2, $t9, $t7
	andi    $a3, $a2, 0xFFFF
	addiu   $t8, $v1, 0x0001
	sw      $t8, 0x0000($v0)
	move    $a2, $a3
.L8031C868:
	lw      $v1, 0x0000($v0)
	andi    $t2, $a2, 0xFFFF
	move    $a0, $t2
	lbu     $t3, 0x0000($v1)
	addiu   $t7, $v1, 0x0001
	sw      $t7, 0x0000($v0)
	sb      $0, 0x0002($s0)
	b       .L8031C8C0
	sh      $a3, 0x003A($s0)
.L8031C88C:
	lw      $v1, 0x0000($v0)
	lhu     $t2, 0x003A($s0)
	lbu     $t3, 0x0000($v1)
	addiu   $t9, $v1, 0x0001
	sw      $t9, 0x0000($v0)
	lbu     $t8, 0x0000($t9)
	move    $a0, $t2
	sb      $t8, 0x0002($s0)
	lw      $t7, 0x0000($v0)
	addiu   $t9, $t7, 0x0001
	b       .L8031C8C0
	sw      $t9, 0x0000($v0)
.L8031C8BC:
	lw      $t3, 0x0030($sp)
.L8031C8C0:
	multu   $t3, $t3
	subu    $v1, $a1, $t1
	mflo    $t6
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	b       .L8031C96C
	swc1    $f8, 0x0024($s0)
.L8031C8E0:
	beqz    $t1, .L8031C904
	addiu   $v0, $s0, 0x0054
	li      $at, 0x0040
	beq     $t1, $at, .L8031C954
	li      $at, 0x0080
	beql    $t1, $at, .L8031C964
	lhu     $t2, 0x003A($s0)
	b       .L8031C968
	move    $a0, $t2
.L8031C904:
	lw      $v1, 0x0000($v0)
	lbu     $a2, 0x0000($v1)
	addiu   $t8, $v1, 0x0001
	sw      $t8, 0x0000($v0)
	andi    $t7, $a2, 0x0080
	beqz    $t7, .L8031C944
	move    $a3, $a2
	move    $v1, $t8
	lbu     $t8, 0x0000($t8)
	sll     $a2, $a3, 8
	andi    $t6, $a2, 0x7F00
	or      $a2, $t8, $t6
	andi    $a3, $a2, 0xFFFF
	addiu   $t9, $v1, 0x0001
	sw      $t9, 0x0000($v0)
	move    $a2, $a3
.L8031C944:
	andi    $t2, $a2, 0xFFFF
	sh      $a3, 0x003A($s0)
	b       .L8031C968
	move    $a0, $t2
.L8031C954:
	lhu     $t2, 0x0038($s0)
	b       .L8031C968
	move    $a0, $t2
	lhu     $t2, 0x003A($s0)
.L8031C964:
	move    $a0, $t2
.L8031C968:
	subu    $v1, $a1, $t1
.L8031C96C:
	lbu     $t6, 0x0002($s0)
	sh      $a0, 0x003C($s0)
	multu   $t6, $a0
	mflo    $t8
	bgez    $t8, .L8031C98C
	sra     $t7, $t8, 8
	addiu   $at, $t8, 0x00FF
	sra     $t7, $at, 8
.L8031C98C:
	sh      $t7, 0x003E($s0)
	lw      $t9, 0x0000($t4)
	sll     $t8, $t9, 2
	bgezl   $t8, .L8031C9B4
	lw      $v0, 0x0000($t5)
	lbu     $t7, 0x0002($t5)
	andi    $t9, $t7, 0x0040
	bnezl   $t9, .L8031C9CC
	lbu     $t8, 0x0000($s0)
	lw      $v0, 0x0000($t5)
.L8031C9B4:
	sll     $t8, $v0, 3
	bltz    $t8, .L8031C9C8
	sll     $t9, $v0, 4
	bltzl   $t9, .L8031C9DC
	lh      $t9, 0x0018($t5)
.L8031C9C8:
	lbu     $t8, 0x0000($s0)
.L8031C9CC:
	ori     $t7, $t8, 0x0020
	b       .L8031CD60
	sb      $t7, 0x0000($s0)
	lh      $t9, 0x0018($t5)
.L8031C9DC:
	bnezl   $t9, .L8031CAB4
	lh      $t8, 0x0010($t4)
	lh      $t8, 0x001A($t5)
	lh      $t9, 0x001E($s0)
	addu    $t7, $v1, $t8
	addu    $t0, $t7, $t9
	lbu     $t7, 0x0005($t5)
	lw      $t8, 0x0000($ra)
	andi    $t6, $t0, 0x00FF
	sll     $t9, $t7, 2
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 2
	addu    $a3, $t8, $t9
	lbu     $v0, 0x0002($a3)
	move    $t0, $t6
	slt     $at, $t6, $v0
	bnezl   $at, .L8031CA50
	lw      $t6, 0x0008($a3)
	andi    $t0, $v0, 0x00FF
	bnezl   $t0, .L8031CA44
	addiu   $t0, $t0, -0x0001
	lbu     $t7, 0x0000($s0)
	ori     $t8, $t7, 0x0020
	b       .L8031CD58
	sb      $t8, 0x0000($s0)
	addiu   $t0, $t0, -0x0001
.L8031CA44:
	andi    $t9, $t0, 0x00FF
	move    $t0, $t9
	lw      $t6, 0x0008($a3)
.L8031CA50:
	sll     $t7, $t0, 2
	addu    $t8, $t6, $t7
	lw      $v0, 0x0000($t8)
	bnezl   $v0, .L8031CA78
	lw      $t8, 0x000C($v0)
	lbu     $t6, 0x0000($s0)
	ori     $t7, $t6, 0x0020
	b       .L8031CD58
	sb      $t7, 0x0000($s0)
	lw      $t8, 0x000C($v0)
.L8031CA78:
	addiu   $v1, $v0, 0x0004
	sw      $t8, 0x0018($s0)
	lbu     $t9, 0x0000($v0)
	sb      $t9, 0x0014($s0)
	lbu     $t6, 0x0001($v0)
	sw      $v1, 0x004C($s0)
	mtc1    $t6, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f18, $f16, $f0
	swc1    $f18, 0x0028($s0)
	lwc1    $f4, 0x0004($v1)
	b       .L8031CD58
	swc1    $f4, 0x0020($s0)
	lh      $t8, 0x0010($t4)
.L8031CAB4:
	lh      $t6, 0x001A($t5)
	addu    $t9, $v1, $t8
	lh      $t8, 0x001E($s0)
	addu    $t7, $t9, $t6
	addu    $t0, $t7, $t8
	andi    $v0, $t0, 0x00FF
	slti    $at, $v0, 0x0080
	bnez    $at, .L8031CAE8
	move    $t0, $v0
	lbu     $t7, 0x0000($s0)
	ori     $t8, $t7, 0x0020
	b       .L8031CD58
	sb      $t8, 0x0000($s0)
.L8031CAE8:
	lw      $v1, 0x0048($s0)
	bnezl   $v1, .L8031CAFC
	lbu     $t9, 0x0004($s0)
	lw      $v1, 0x003C($t5)
	lbu     $t9, 0x0004($s0)
.L8031CAFC:
	beqz    $t9, .L8031CCCC
	nop
	lbu     $a0, 0x0003($s0)
	slt     $at, $a0, $v0
	beqz    $at, .L8031CB1C
	move    $a1, $a0
	b       .L8031CB1C
	move    $a1, $v0
.L8031CB1C:
	beqz    $v1, .L8031CB7C
	li      $at, 0x3F800000
	lbu     $t6, 0x0001($v1)
	andi    $v0, $a1, 0x00FF
	slt     $at, $v0, $t6
	beqzl   $at, .L8031CB44
	lbu     $t7, 0x0002($v1)
	b       .L8031CB60
	addiu   $v0, $v1, 0x0008
	lbu     $t7, 0x0002($v1)
.L8031CB44:
	addiu   $a0, $v1, 0x0018
	slt     $at, $t7, $v0
	bnez    $at, .L8031CB5C
	nop
	b       .L8031CB5C
	addiu   $a0, $v1, 0x0010
.L8031CB5C:
	move    $v0, $a0
.L8031CB60:
	lw      $t8, 0x004C($s0)
	xor     $t9, $v0, $t8
	sltiu   $t9, $t9, 0x0001
	sb      $t9, 0x003F($sp)
	sw      $v0, 0x004C($s0)
	b       .L8031CB84
	lwc1    $f0, 0x0004($v0)
.L8031CB7C:
	mtc1    $at, $f0
	sw      $0, 0x004C($s0)
.L8031CB84:
	la.u    $v1, Na_freq_data
	la.l    $v1, Na_freq_data
	sll     $t6, $t0, 2
	lbu     $t8, 0x0003($s0)
	addu    $t7, $v1, $t6
	lwc1    $f6, 0x0000($t7)
	lbu     $t7, 0x0004($s0)
	sll     $t9, $t8, 2
	addu    $t6, $v1, $t9
	lwc1    $f8, 0x0000($t6)
	mul.s   $f2, $f6, $f0
	li      $at, -0x0081
	and     $t8, $t7, $at
	addiu   $t9, $t8, -0x0001
	sltiu   $at, $t9, 0x0005
	mul.s   $f12, $f8, $f0
	beqz    $at, .L8031CBF8
	sll     $t9, $t9, 2
	lui     $at, %hi(Na_f_80338EAC)
	addu    $at, $at, $t9
	lw      $t9, %lo(Na_f_80338EAC)($at)
	jr      $t9
	nop
.globl L8031CBE0
L8031CBE0:
	swc1    $f2, 0x0024($sp)
	b       .L8031CBFC
	mov.s   $f0, $f12
.globl L8031CBEC
L8031CBEC:
	mov.s   $f0, $f2
	b       .L8031CBFC
	swc1    $f12, 0x0024($sp)
.L8031CBF8:
	lwc1    $f0, 0x0028($sp)
.L8031CBFC:
	lwc1    $f10, 0x0024($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	div.s   $f16, $f10, $f0
	addiu   $v0, $s0, 0x0004
	li      $at, 0x46FE0000
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x000C($v0)
	lbu     $t6, 0x0004($s0)
	andi    $t7, $t6, 0x0080
	beqzl   $t7, .L8031CC84
	lhu     $t8, 0x001C($s0)
	lhu     $t8, 0x000A($t4)
	lui     $t6, %hi(_Na_bss+0x5DDC)
	lh      $t6, %lo(_Na_bss+0x5DDC)($t6)
	mtc1    $t8, $f8
	lh      $t9, 0x003C($s0)
	mtc1    $at, $f6
	cvt.s.w $f10, $f8
	mtc1    $t6, $f8
	mtc1    $t9, $f18
	lhu     $t7, 0x001C($s0)
	cvt.s.w $f4, $f18
	mul.s   $f16, $f6, $f10
	mtc1    $t7, $f18
	cvt.s.w $f6, $f8
	cvt.s.w $f8, $f18
	mul.s   $f10, $f4, $f6
	nop
	mul.s   $f4, $f8, $f10
	div.s   $f6, $f16, $f4
	b       .L8031CCA0
	swc1    $f6, 0x0008($v0)
	lhu     $t8, 0x001C($s0)
.L8031CC84:
	li      $at, 0x42FE0000
	mtc1    $at, $f18
	mtc1    $t8, $f8
	nop
	cvt.s.w $f10, $f8
	div.s   $f16, $f18, $f10
	swc1    $f16, 0x0008($v0)
.L8031CCA0:
	mtc1    $0, $f4
	li      $at, -0x0081
	swc1    $f4, 0x0004($v0)
	lbu     $t9, 0x0004($s0)
	swc1    $f0, 0x0020($s0)
	and     $t6, $t9, $at
	li      $at, 0x0005
	bnel    $t6, $at, .L8031CD5C
	lh      $t7, 0x003C($s0)
	b       .L8031CD58
	sb      $t0, 0x0003($s0)
.L8031CCCC:
	beqz    $v1, .L8031CD40
	sll     $t9, $t0, 2
	lbu     $t7, 0x0001($v1)
	slt     $at, $v0, $t7
	beqz    $at, .L8031CCEC
	sll     $t7, $t0, 2
	b       .L8031CD0C
	addiu   $v0, $v1, 0x0008
.L8031CCEC:
	lbu     $t8, 0x0002($v1)
	addiu   $a0, $v1, 0x0018
	slt     $at, $t8, $v0
	bnez    $at, .L8031CD08
	nop
	b       .L8031CD08
	addiu   $a0, $v1, 0x0010
.L8031CD08:
	move    $v0, $a0
.L8031CD0C:
	lw      $t9, 0x004C($s0)
	la.u    $v1, Na_freq_data
	la.l    $v1, Na_freq_data
	xor     $t6, $v0, $t9
	sltiu   $t6, $t6, 0x0001
	sb      $t6, 0x003F($sp)
	sw      $v0, 0x004C($s0)
	addu    $t8, $v1, $t7
	lwc1    $f8, 0x0000($t8)
	lwc1    $f6, 0x0004($v0)
	mul.s   $f18, $f6, $f8
	b       .L8031CD58
	swc1    $f18, 0x0020($s0)
.L8031CD40:
	la.u    $v1, Na_freq_data
	la.l    $v1, Na_freq_data
	sw      $0, 0x004C($s0)
	addu    $t6, $v1, $t9
	lwc1    $f10, 0x0000($t6)
	swc1    $f10, 0x0020($s0)
.L8031CD58:
	lh      $t7, 0x003C($s0)
.L8031CD5C:
	sh      $t7, 0x0040($s0)
.L8031CD60:
	lw      $v0, 0x0000($s0)
	li      $at, 0x0001
	sll     $t8, $v0, 2
	srl     $t9, $t8, 31
	bnel    $t9, $at, .L8031CDA4
	sll     $t6, $v0, 3
	lw      $t6, 0x0044($s0)
	sll     $t8, $v0, 3
	bnez    $t6, .L8031CD90
	nop
	bgezl   $t8, .L8031CE44
	lw      $ra, 0x001C($sp)
.L8031CD90:
	jal     Na_d_80319F64
	move    $a0, $s0
	b       .L8031CE44
	lw      $ra, 0x001C($sp)
	sll     $t6, $v0, 3
.L8031CDA4:
	bltz    $t6, .L8031CDB4
	move    $t0, $0
	b       .L8031CE0C
	li      $t0, 0x0001
.L8031CDB4:
	lw      $a0, 0x0044($s0)
	beqz    $a0, .L8031CDD0
	nop
	lbu     $t7, 0x0001($s0)
	lbu     $t8, 0x003F($sp)
	bnez    $t7, .L8031CDD8
	nop
.L8031CDD0:
	b       .L8031CE0C
	li      $t0, 0x0001
.L8031CDD8:
	bnezl   $t8, .L8031CDF4
	lw      $t9, 0x004C($s0)
	jal     Na_d_80319F64
	move    $a0, $s0
	b       .L8031CE0C
	li      $t0, 0x0001
	lw      $t9, 0x004C($s0)
.L8031CDF4:
	move    $a1, $s0
	bnez    $t9, .L8031CE0C
	nop
	jal     Na_d_8031A1D0
	sb      $t0, 0x003D($sp)
	lbu     $t0, 0x003D($sp)
.L8031CE0C:
	beqzl   $t0, .L8031CE24
	lw      $a0, 0x0044($s0)
	jal     Na_d_8031A94C
	move    $a0, $s0
	sw      $v0, 0x0044($s0)
	lw      $a0, 0x0044($s0)
.L8031CE24:
	beqzl   $a0, .L8031CE44
	lw      $ra, 0x001C($sp)
	lw      $t6, 0x002C($a0)
	bnel    $s0, $t6, .L8031CE44
	lw      $ra, 0x001C($sp)
	jal     Na_e_8031B4A0
	nop
.L8031CE40:
	lw      $ra, 0x001C($sp)
.L8031CE44:
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

Na_f_8031CE54:
	addiu   $sp, $sp, -0x00D8
	sw      $a1, 0x00DC($sp)
	sw      $a2, 0x00E0($sp)
	lbu     $t7, 0x0005($a0)
	lui     $v0, %hi(_Na_bss+0x5DC0)
	lw      $v0, %lo(_Na_bss+0x5DC0)($v0)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $v1, $v0, $t8
	lbu     $t0, 0x0001($v1)
	andi    $t6, $a1, 0x00FF
	move    $a1, $t6
	slt     $at, $t6, $t0
	bnezl   $at, .L8031CEB8
	lw      $t1, 0x0004($v1)
	andi    $a1, $t0, 0x00FF
	bnezl   $a1, .L8031CEAC
	addiu   $a1, $a1, -0x0001
	b       .L8031CFCC
	move    $v0, $0
	addiu   $a1, $a1, -0x0001
.L8031CEAC:
	andi    $t9, $a1, 0x00FF
	move    $a1, $t9
	lw      $t1, 0x0004($v1)
.L8031CEB8:
	sll     $t2, $a1, 2
	li      $t0, 0x00FF
	addu    $t3, $t1, $t2
	lw      $a2, 0x0000($t3)
	addiu   $t4, $sp, 0x0010
	move    $t7, $a0
	bnez    $a2, .L8031CF3C
	addiu   $t6, $a0, 0x00C0
.L8031CED8:
	lw      $at, 0x0000($t7)
	addiu   $t7, $t7, 0x000C
	addiu   $t4, $t4, 0x000C
	sw      $at, -0x000C($t4)
	lw      $at, -0x0008($t7)
	sw      $at, -0x0008($t4)
	lw      $at, -0x0004($t7)
	bne     $t7, $t6, .L8031CED8
	sw      $at, -0x0004($t4)
	beq     $t0, $a1, .L8031CF3C
	lbu     $t8, 0x0015($sp)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t1, $v0, $t9
	lw      $v1, 0x0004($t1)
.L8031CF18:
	sll     $t2, $a1, 2
	addu    $t3, $v1, $t2
	lw      $a2, 0x0000($t3)
	bnez    $a2, .L8031CF3C
	nop
	addiu   $a1, $a1, -0x0001
	andi    $t5, $a1, 0x00FF
	bne     $t0, $t5, .L8031CF18
	move    $a1, $t5
.L8031CF3C:
	la.u    $v1, _Na_bss+0x358
	la.l    $v1, _Na_bss+0x358
	lw      $v0, 0x0004($v1)
	sltu    $at, $a2, $v0
	bnezl   $at, .L8031CF6C
	lw      $v0, 0x0198($v1)
	lw      $t6, 0x000C($v1)
	addu    $t7, $v0, $t6
	sltu    $at, $t7, $a2
	beqzl   $at, .L8031CF90
	lw      $t9, 0x0004($a2)
	lw      $v0, 0x0198($v1)
.L8031CF6C:
	sltu    $at, $a2, $v0
	bnezl   $at, .L8031CFB4
	li      $at, 0x00020000
	lw      $t4, 0x01A0($v1)
	addu    $t8, $v0, $t4
	sltu    $at, $t8, $a2
	bnezl   $at, .L8031CFB4
	li      $at, 0x00020000
	lw      $t9, 0x0004($a2)
.L8031CF90:
	addiu   $a1, $a1, 0x0001
	andi    $v0, $a1, 0x00FF
	sw      $t9, 0x0004($a3)
	lbu     $t1, 0x0003($a2)
	sb      $t1, 0x0000($a3)
	lw      $t2, 0x00E0($sp)
	b       .L8031CFCC
	sw      $a2, 0x0000($t2)
	li      $at, 0x00020000
.L8031CFB4:
	lw      $t6, 0x00E0($sp)
	addu    $t5, $a1, $at
	lui     $at, %hi(Na_g_80332E50)
	sw      $t5, %lo(Na_g_80332E50)($at)
	move    $v0, $0
	sw      $0, 0x0000($t6)
.L8031CFCC:
	jr      $ra
	addiu   $sp, $sp, 0x00D8

Na_f_8031CFD4:
	addiu   $sp, $sp, -0x0018
	andi    $t6, $a1, 0x00FF
	sw      $a1, 0x001C($sp)
	slti    $at, $t6, 0x0080
	move    $a1, $t6
	sw      $ra, 0x0014($sp)
	bnez    $at, .L8031D000
	move    $v0, $t6
	sh      $t6, 0x0018($a0)
	b       .L8031D04C
	sw      $0, 0x003C($a0)
.L8031D000:
	li      $at, 0x007F
	bne     $v0, $at, .L8031D01C
	addiu   $a2, $a0, 0x003C
	li      $t7, 0x0001
	sh      $0, 0x0018($a0)
	b       .L8031D04C
	sw      $t7, 0x003C($a0)
.L8031D01C:
	addiu   $a3, $a0, 0x0078
	jal     Na_f_8031CE54
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	sh      $v0, 0x0018($a0)
	lh      $t8, 0x0018($a0)
	bnezl   $t8, .L8031D050
	lbu     $t2, 0x0000($a0)
	lbu     $t9, 0x0000($a0)
	andi    $t0, $t9, 0xFFF7
	b       .L8031D058
	sb      $t0, 0x0000($a0)
.L8031D04C:
	lbu     $t2, 0x0000($a0)
.L8031D050:
	ori     $t3, $t2, 0x0008
	sb      $t3, 0x0000($a0)
.L8031D058:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_f_8031D068:
	andi    $t6, $a1, 0x00FF
	mtc1    $t6, $f4
	li      $at, 0x42FE0000
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	sw      $a1, 0x0004($sp)
	div.s   $f10, $f6, $f8
	jr      $ra
	swc1    $f10, 0x0020($a0)

Na_f_8031D08C:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x002C($sp)
	sw      $s5, 0x0028($sp)
	sw      $s4, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s2, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lw      $v0, 0x0000($a0)
	move    $s2, $a0
	srl     $t6, $v0, 31
	beqz    $t6, .L8031D9C8
	sll     $t8, $v0, 2
	bgez    $t8, .L8031D0F8
	move    $s0, $0
	move    $s1, $a0
	li      $s2, 0x0010
.L8031D0D0:
	lw      $a0, 0x0044($s1)
	beqzl   $a0, .L8031D0E8
	addiu   $s0, $s0, 0x0004
	jal     Na_f_8031C0C4
	nop
	addiu   $s0, $s0, 0x0004
.L8031D0E8:
	bne     $s0, $s2, .L8031D0D0
	addiu   $s1, $s1, 0x0004
	b       .L8031D9CC
	lw      $ra, 0x002C($sp)
.L8031D0F8:
	lw      $s4, 0x0040($s2)
	lw      $t9, 0x0000($s4)
	sll     $t2, $t9, 2
	bgezl   $t2, .L8031D120
	lhu     $v1, 0x0016($s2)
	lbu     $t3, 0x0002($s2)
	andi    $t4, $t3, 0x0080
	bnezl   $t4, .L8031D9CC
	lw      $ra, 0x002C($sp)
	lhu     $v1, 0x0016($s2)
.L8031D120:
	addiu   $s0, $s2, 0x005C
	li      $s5, -0x0001
	beqz    $v1, .L8031D13C
	move    $v0, $v1
	addiu   $t5, $v1, -0x0001
	sh      $t5, 0x0016($s2)
	andi    $v0, $t5, 0xFFFF
.L8031D13C:
	bnez    $v0, .L8031D99C
	lb      $s3, 0x004B($sp)
.globl L8031D144
L8031D144:
	jal     Na_f_8031C03C
	move    $a0, $s0
	li      $at, 0x00FF
	andi    $s1, $v0, 0x00FF
	bne     $v0, $at, .L8031D190
	move    $v1, $v0
	lbu     $a0, 0x0018($s0)
	bnez    $a0, .L8031D178
	addiu   $t6, $a0, -0x0001
	jal     Na_f_8031BAF0
	move    $a0, $s2
	b       .L8031D9A0
	move    $s1, $s2
.L8031D178:
	andi    $t7, $t6, 0x00FF
	sll     $t8, $t7, 2
	addu    $t9, $s0, $t8
	sb      $t6, 0x0018($s0)
	lw      $t1, 0x0004($t9)
	sw      $t1, 0x0000($s0)
.L8031D190:
	li      $at, 0x00FE
	beq     $v1, $at, .L8031D99C
	li      $at, 0x00FD
	bne     $v1, $at, .L8031D1B4
	andi    $t9, $v1, 0x00F0
	jal     Na_f_8031C080
	move    $a0, $s0
	b       .L8031D99C
	sh      $v0, 0x0016($s2)
.L8031D1B4:
	li      $at, 0x00F3
	bne     $v1, $at, .L8031D1D0
	addiu   $t5, $v1, -0x00C1
	lbu     $t3, 0x0000($s2)
	ori     $t4, $t3, 0x0020
	b       .L8031D99C
	sb      $t4, 0x0000($s2)
.L8031D1D0:
	slti    $at, $v1, 0x00C1
	bnez    $at, .L8031D790
	sltiu   $at, $t5, 0x003F
	beqz    $at, L8031D144
	sll     $t5, $t5, 2
	lui     $at, %hi(Na_f_80338EC0)
	addu    $at, $at, $t5
	lw      $t5, %lo(Na_f_80338EC0)($at)
	jr      $t5
	nop
.globl L8031D1F8
L8031D1F8:
	jal     Na_f_8031C050
	move    $a0, $s0
	lbu     $t6, 0x0018($s0)
	lw      $t8, 0x0000($s0)
	andi    $t4, $v0, 0xFFFF
	addiu   $t7, $t6, 0x0001
	andi    $t9, $t7, 0x00FF
	sll     $t1, $t9, 2
	addu    $t2, $s0, $t1
	sb      $t7, 0x0018($s0)
	sw      $t8, 0x0000($t2)
	lw      $t3, 0x0014($s4)
	addu    $t5, $t3, $t4
	b       L8031D144
	sw      $t5, 0x0000($s0)
.globl L8031D234
L8031D234:
	jal     Na_f_8031C03C
	move    $a0, $s0
	lbu     $t6, 0x0018($s0)
	addu    $t7, $s0, $t6
	sb      $v0, 0x0014($t7)
	lbu     $t9, 0x0018($s0)
	lw      $t8, 0x0000($s0)
	addiu   $t1, $t9, 0x0001
	andi    $t2, $t1, 0x00FF
	sll     $t3, $t2, 2
	addu    $t4, $s0, $t3
	sb      $t1, 0x0018($s0)
	b       L8031D144
	sw      $t8, 0x0000($t4)
.globl L8031D26C
L8031D26C:
	lbu     $t5, 0x0018($s0)
	addu    $v0, $s0, $t5
	lbu     $t6, 0x0013($v0)
	addiu   $t7, $t6, -0x0001
	sb      $t7, 0x0013($v0)
	lbu     $a0, 0x0018($s0)
	addu    $t9, $s0, $a0
	lbu     $t1, 0x0013($t9)
	move    $v1, $a0
	sll     $t2, $v1, 2
	beqz    $t1, .L8031D2AC
	addiu   $t4, $a0, -0x0001
	addu    $t3, $s0, $t2
	lw      $t8, 0x0000($t3)
	b       L8031D144
	sw      $t8, 0x0000($s0)
.L8031D2AC:
	b       L8031D144
	sb      $t4, 0x0018($s0)
.globl L8031D2B4
L8031D2B4:
	lbu     $t5, 0x0018($s0)
	addiu   $t6, $t5, -0x0001
	b       L8031D144
	sb      $t6, 0x0018($s0)
.globl L8031D2C4
L8031D2C4:
	jal     Na_f_8031C050
	move    $a0, $s0
	li      $at, 0x00FA
	bne     $s1, $at, .L8031D2E0
	move    $v1, $s1
	bnez    $s3, L8031D144
	nop
.L8031D2E0:
	li      $at, 0x00F9
	bnel    $v1, $at, .L8031D2F8
	li      $at, 0x00F5
	bgez    $s3, L8031D144
	nop
	li      $at, 0x00F5
.L8031D2F8:
	bnel    $v1, $at, .L8031D30C
	lw      $t7, 0x0014($s4)
	bltz    $s3, L8031D144
	nop
	lw      $t7, 0x0014($s4)
.L8031D30C:
	andi    $t9, $v0, 0xFFFF
	addu    $t1, $t7, $t9
	b       L8031D144
	sw      $t1, 0x0000($s0)
.globl L8031D31C
L8031D31C:
	addiu   $s1, $s2, 0x0080
	jal     Na_d_8031A368
	move    $a0, $s1
	jal     Na_f_8031C03C
	move    $a0, $s0
	move    $a0, $s1
	jal     Na_d_8031A494
	move    $a1, $v0
	b       L8031D144
	nop
.globl L8031D344
L8031D344:
	jal     Na_d_8031A368
	addiu   $a0, $s2, 0x0080
	b       L8031D144
	nop
.globl L8031D354
L8031D354:
	jal     Na_f_8031C050
	move    $a0, $s0
	lw      $t2, 0x0014($s4)
	andi    $t3, $v0, 0xFFFF
	addu    $t8, $t2, $t3
	b       L8031D144
	sw      $t8, 0x0030($s2)
.globl L8031D370
L8031D370:
	beq     $s3, $s5, L8031D144
	nop
	lw      $t4, 0x0030($s2)
	sll     $t5, $s3, 1
	lw      $t2, 0x0014($s4)
	addu    $v0, $t4, $t5
	lbu     $t7, 0x0000($v0)
	lbu     $t6, 0x0001($v0)
	sll     $t9, $t7, 8
	addu    $a3, $t6, $t9
	andi    $t1, $a3, 0xFFFF
	addu    $t3, $t2, $t1
	b       L8031D144
	sw      $t3, 0x0030($s2)
.globl L8031D3A8
L8031D3A8:
	jal     Na_f_8031C03C
	move    $a0, $s0
	move    $a0, $s2
	jal     Na_f_8031CFD4
	andi    $a1, $v0, 0x00FF
	b       L8031D144
	nop
.globl L8031D3C4
L8031D3C4:
	lbu     $t8, 0x0000($s2)
	andi    $t4, $t8, 0xFFFD
	b       L8031D144
	sb      $t4, 0x0000($s2)
.globl L8031D3D4
L8031D3D4:
	lbu     $t7, 0x0000($s2)
	ori     $t6, $t7, 0x0002
	b       L8031D144
	sb      $t6, 0x0000($s2)
.globl L8031D3E4
L8031D3E4:
	jal     Na_f_8031C03C
	move    $a0, $s0
	move    $a0, $s2
	jal     Na_f_8031D068
	andi    $a1, $v0, 0x00FF
	b       L8031D144
	nop
.globl L8031D400
L8031D400:
	jal     Na_f_8031C03C
	move    $a0, $s0
	mtc1    $v0, $f4
	li      $at, 0x3C000000
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	b       L8031D144
	swc1    $f10, 0x001C($s2)
.globl L8031D424
L8031D424:
	jal     Na_f_8031C050
	move    $a0, $s0
	andi    $t9, $v0, 0xFFFF
	mtc1    $t9, $f16
	li      $at, 0x47000000
	mtc1    $at, $f4
	cvt.s.w $f18, $f16
	div.s   $f6, $f18, $f4
	b       L8031D144
	swc1    $f6, 0x002C($s2)
.globl L8031D44C
L8031D44C:
	jal     Na_f_8031C03C
	move    $a0, $s0
	addiu   $t1, $v0, 0x007F
	andi    $t2, $t1, 0x00FF
	sll     $t3, $t2, 2
	lui     $at, %hi(Na_data_80333598)
	addu    $at, $at, $t3
	lwc1    $f8, %lo(Na_data_80333598)($at)
	b       L8031D144
	swc1    $f8, 0x002C($s2)
.globl L8031D474
L8031D474:
	jal     Na_f_8031C03C
	move    $a0, $s0
	mtc1    $v0, $f10
	li      $at, 0x3C000000
	mtc1    $at, $f18
	cvt.s.w $f16, $f10
	mul.s   $f4, $f16, $f18
	b       L8031D144
	swc1    $f4, 0x0024($s2)
.globl L8031D498
L8031D498:
	jal     Na_f_8031C03C
	move    $a0, $s0
	mtc1    $v0, $f6
	li      $at, 0x3C000000
	mtc1    $at, $f10
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	b       L8031D144
	swc1    $f16, 0x0028($s2)
.globl L8031D4BC
L8031D4BC:
	lw      $v0, 0x0000($s0)
	lb      $v1, 0x0000($v0)
	addiu   $t8, $v0, 0x0001
	sw      $t8, 0x0000($s0)
	b       L8031D144
	sh      $v1, 0x001A($s2)
.globl L8031D4D4
L8031D4D4:
	jal     Na_f_8031C050
	move    $a0, $s0
	lw      $t4, 0x0014($s4)
	andi    $t5, $v0, 0xFFFF
	addu    $t7, $t4, $t5
	b       L8031D144
	sw      $t7, 0x007C($s2)
.globl L8031D4F0
L8031D4F0:
	jal     Na_f_8031C03C
	move    $a0, $s0
	b       L8031D144
	sb      $v0, 0x0078($s2)
.globl L8031D500
L8031D500:
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t6, $v0, 3
	sh      $t6, 0x000E($s2)
	sh      $0, 0x000A($s2)
	b       L8031D144
	sh      $0, 0x0012($s2)
.globl L8031D51C
L8031D51C:
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $v1, $v0, 5
	sh      $v1, 0x000C($s2)
	sh      $v1, 0x0008($s2)
	b       L8031D144
	sh      $0, 0x0010($s2)
.globl L8031D538
L8031D538:
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t9, $v0, 3
	sh      $t9, 0x000A($s2)
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t1, $v0, 3
	sh      $t1, 0x000E($s2)
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t2, $v0, 4
	b       L8031D144
	sh      $t2, 0x0012($s2)
.globl L8031D56C
L8031D56C:
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t3, $v0, 5
	sh      $t3, 0x0008($s2)
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t8, $v0, 5
	sh      $t8, 0x000C($s2)
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t4, $v0, 4
	b       L8031D144
	sh      $t4, 0x0010($s2)
.globl L8031D5A0
L8031D5A0:
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t5, $v0, 4
	b       L8031D144
	sh      $t5, 0x0014($s2)
.globl L8031D5B4
L8031D5B4:
	jal     Na_f_8031C03C
	move    $a0, $s0
	bnez    $v0, .L8031D5CC
	andi    $s1, $v0, 0x00FF
	lui     $s1, %hi(_Na_bss+0x5DDE)
	lbu     $s1, %lo(_Na_bss+0x5DDE)($s1)
.L8031D5CC:
	b       L8031D144
	sb      $s1, 0x0006($s2)
.globl L8031D5D4
L8031D5D4:
	jal     Na_f_8031C03C
	move    $a0, $s0
	b       L8031D144
	sb      $v0, 0x0003($s2)
.globl L8031D5E4
L8031D5E4:
	jal     Na_f_8031C03C
	move    $a0, $s0
	lbu     $t7, 0x0005($s4)
	lui     $v1, %hi(_Na_bss+0x5DB8)
	lw      $v1, %lo(_Na_bss+0x5DB8)($v1)
	sll     $t6, $t7, 1
	la.u    $a0, _Na_bss+0x358
	addu    $t9, $v1, $t6
	lhu     $a3, 0x0000($t9)
	la.l    $a0, _Na_bss+0x358
	li      $a1, 0x0002
	addu    $t1, $a3, $v1
	lbu     $t0, 0x0000($t1)
	addu    $t2, $a3, $t0
	subu    $t3, $t2, $v0
	addu    $t8, $t3, $v1
	lbu     $s1, 0x0000($t8)
	jal     Na_b_8031782C
	move    $a2, $s1
	beqz    $v0, L8031D144
	nop
	b       L8031D144
	sb      $s1, 0x0005($s2)
.globl L8031D640
L8031D640:
	andi    $t4, $s3, 0x00FF
	sw      $t4, 0x0030($sp)
	jal     Na_f_8031C03C
	move    $a0, $s0
	andi    $s1, $v0, 0x00FF
	jal     Na_f_8031C050
	move    $a0, $s0
	lw      $t5, 0x0014($s4)
	lw      $t6, 0x0030($sp)
	andi    $t7, $v0, 0xFFFF
	addu    $v1, $t5, $t7
	addu    $t9, $t6, $s1
	b       L8031D144
	sb      $t9, 0x0000($v1)
.globl L8031D678
L8031D678:
	jal     Na_f_8031C03C
	move    $a0, $s0
	li      $at, 0x00C8
	bne     $s1, $at, .L8031D69C
	move    $v1, $s1
	subu    $s3, $s3, $v0
	sll     $t3, $s3, 24
	b       L8031D144
	sra     $s3, $t3, 24
.L8031D69C:
	li      $at, 0x00CC
	bne     $v1, $at, .L8031D6B8
	and     $s3, $s3, $v0
	sll     $s3, $v0, 24
	sra     $t4, $s3, 24
	b       L8031D144
	move    $s3, $t4
.L8031D6B8:
	sll     $t6, $s3, 24
	b       L8031D144
	sra     $s3, $t6, 24
.globl L8031D6C4
L8031D6C4:
	jal     Na_f_8031C03C
	move    $a0, $s0
	b       L8031D144
	sb      $v0, 0x0002($s2)
.globl L8031D6D4
L8031D6D4:
	jal     Na_f_8031C050
	move    $a0, $s0
	lw      $t1, 0x0014($s4)
	andi    $t2, $v0, 0xFFFF
	addu    $t3, $t2, $s3
	addu    $t8, $t1, $t3
	b       L8031D144
	lb      $s3, 0x0000($t8)
.globl L8031D6F4
L8031D6F4:
	jal     Na_f_8031C03C
	move    $a0, $s0
	lbu     $t6, 0x0000($s2)
	sll     $t5, $v0, 2
	andi    $t7, $t5, 0x0004
	andi    $t9, $t6, 0xFFFB
	or      $t2, $t7, $t9
	b       L8031D144
	sb      $t2, 0x0000($s2)
.globl L8031D718
L8031D718:
	jal     Na_f_8031C03C
	move    $a0, $s0
	b       L8031D144
	sb      $v0, 0x0001($s2)
.globl L8031D728
L8031D728:
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t1, $v0, 8
	b       L8031D144
	sh      $t1, 0x007A($s2)
.globl L8031D73C
L8031D73C:
	beq     $s3, $s5, L8031D144
	sll     $t8, $s3, 1
	lbu     $t4, 0x0018($s0)
	lw      $t3, 0x0030($s2)
	lw      $t6, 0x0000($s0)
	addiu   $t5, $t4, 0x0001
	andi    $t7, $t5, 0x00FF
	sll     $t9, $t7, 2
	addu    $t2, $s0, $t9
	sb      $t5, 0x0018($s0)
	addu    $v0, $t3, $t8
	sw      $t6, 0x0000($t2)
	lbu     $t3, 0x0000($v0)
	lbu     $t1, 0x0001($v0)
	lw      $t5, 0x0014($s4)
	sll     $t8, $t3, 8
	addu    $a3, $t1, $t8
	andi    $t4, $a3, 0xFFFF
	addu    $t7, $t5, $t4
	b       L8031D144
	sw      $t7, 0x0000($s0)
.L8031D790:
	andi    $a0, $v1, 0x000F
	sltiu   $at, $t9, 0x00B1
	beqz    $at, L8031D144
	andi    $t0, $a0, 0x00FF
	sll     $t9, $t9, 2
	lui     $at, %hi(Na_f_80338FBC)
	addu    $at, $at, $t9
	lw      $t9, %lo(Na_f_80338FBC)($at)
	jr      $t9
	nop
.globl L8031D7B8
L8031D7B8:
	andi    $t6, $a0, 0x00FF
	sll     $t2, $t6, 2
	addu    $t3, $s2, $t2
	lw      $v1, 0x0044($t3)
	beqz    $v1, L8031D144
	nop
	lw      $s3, 0x0000($v1)
	sll     $t1, $s3, 1
	srl     $t8, $t1, 31
	sll     $t4, $t8, 24
	b       L8031D144
	sra     $s3, $t4, 24
.globl L8031D7E8
L8031D7E8:
	andi    $t7, $a0, 0x00FF
	addu    $t9, $s2, $t7
	b       L8031D144
	sb      $s3, 0x0054($t9)
.globl L8031D7F8
L8031D7F8:
	andi    $v1, $a0, 0x00FF
	addu    $a1, $s2, $v1
	slti    $at, $v1, 0x0004
	beqz    $at, L8031D144
	lb      $s3, 0x0054($a1)
	b       L8031D144
	sb      $s5, 0x0054($a1)
.globl L8031D814
L8031D814:
	andi    $t6, $a0, 0x00FF
	addu    $t2, $s2, $t6
	lb      $t3, 0x0054($t2)
	subu    $s3, $s3, $t3
	sll     $t1, $s3, 24
	b       L8031D144
	sra     $s3, $t1, 24
.globl L8031D830
L8031D830:
	jal     Na_f_8031C050
	move    $a0, $s0
	move    $v1, $s1
	andi    $a1, $v1, 0x000F
	move    $v1, $a1
	sw      $a1, 0x0030($sp)
	move    $a0, $s2
	jal     Na_f_8031B940
	sh      $v0, 0x0052($sp)
	lw      $v1, 0x0030($sp)
	bnez    $v0, L8031D144
	lhu     $a3, 0x0052($sp)
	lw      $t5, 0x0014($s4)
	sll     $t9, $v1, 2
	addu    $t6, $s2, $t9
	lw      $t2, 0x0044($t6)
	addu    $t7, $t5, $a3
	b       L8031D144
	sw      $t7, 0x0054($t2)
.globl L8031D87C
L8031D87C:
	move    $a1, $s1
	andi    $t3, $a1, 0x000F
	move    $a1, $t3
	jal     Na_f_8031BA6C
	move    $a0, $s2
	b       L8031D144
	nop
.globl L8031D898
L8031D898:
	beq     $s3, $s5, L8031D144
	move    $a0, $s2
	move    $v1, $s1
	andi    $a1, $v1, 0x000F
	move    $v1, $a1
	jal     Na_f_8031B940
	sw      $a1, 0x0030($sp)
	beq     $v0, $s5, L8031D144
	lw      $v1, 0x0030($sp)
	lw      $t8, 0x0030($s2)
	sll     $t4, $s3, 1
	lw      $t2, 0x0014($s4)
	addu    $v0, $t8, $t4
	lbu     $t9, 0x0000($v0)
	lbu     $t5, 0x0001($v0)
	sll     $t1, $v1, 2
	sll     $t6, $t9, 8
	addu    $t8, $s2, $t1
	addu    $a3, $t5, $t6
	lw      $t4, 0x0044($t8)
	andi    $t7, $a3, 0xFFFF
	addu    $t3, $t2, $t7
	b       L8031D144
	sw      $t3, 0x0054($t4)
.globl L8031D8F8
L8031D8F8:
	b       L8031D144
	sb      $a0, 0x0004($s2)
.globl L8031D900
L8031D900:
	jal     Na_f_8031C050
	move    $a0, $s0
	lw      $t5, 0x0014($s4)
	move    $a1, $s1
	andi    $t9, $a1, 0x000F
	andi    $t6, $v0, 0xFFFF
	move    $a1, $t9
	move    $a0, $s4
	jal     Na_f_8031BDA0
	addu    $a2, $t5, $t6
	b       L8031D144
	nop
.globl L8031D930
L8031D930:
	andi    $t2, $s1, 0x000F
	sll     $t1, $t2, 2
	addu    $t8, $s4, $t1
	jal     Na_f_8031BAF0
	lw      $a0, 0x002C($t8)
	b       L8031D144
	nop
.globl L8031D94C
L8031D94C:
	move    $a0, $s0
	jal     Na_f_8031C03C
	sb      $t0, 0x0055($sp)
	lbu     $t0, 0x0055($sp)
	sll     $t3, $t0, 2
	addu    $t4, $s4, $t3
	lw      $t9, 0x002C($t4)
	addu    $t5, $t9, $v0
	b       L8031D144
	sb      $s3, 0x0054($t5)
.globl L8031D974
L8031D974:
	move    $a0, $s0
	jal     Na_f_8031C03C
	sb      $t0, 0x0055($sp)
	lbu     $t0, 0x0055($sp)
	sll     $t6, $t0, 2
	addu    $t7, $s4, $t6
	lw      $t2, 0x002C($t7)
	addu    $t1, $t2, $v0
	b       L8031D144
	lb      $s3, 0x0054($t1)
.L8031D99C:
	move    $s1, $s2
.L8031D9A0:
	li      $s2, 0x0010
	move    $s0, $0
.L8031D9A8:
	lw      $a0, 0x0044($s1)
	beqzl   $a0, .L8031D9C0
	addiu   $s0, $s0, 0x0004
	jal     Na_f_8031C0C4
	nop
	addiu   $s0, $s0, 0x0004
.L8031D9C0:
	bne     $s0, $s2, .L8031D9A8
	addiu   $s1, $s1, 0x0004
.L8031D9C8:
	lw      $ra, 0x002C($sp)
.L8031D9CC:
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	lw      $s4, 0x0024($sp)
	lw      $s5, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

Na_f_8031D9EC:
	addiu   $sp, $sp, -0x0068
	sw      $s1, 0x002C($sp)
	move    $s1, $a0
	sw      $ra, 0x0034($sp)
	sw      $s2, 0x0030($sp)
	sw      $s0, 0x0028($sp)
	sdc1    $f20, 0x0020($sp)
	lw      $t6, 0x0000($s1)
	srl     $t7, $t6, 31
	beqzl   $t7, .L8031E228
	lw      $ra, 0x0034($sp)
	lw      $v0, 0x0000($s1)
	li      $a2, 0x0001
	sll     $t8, $v0, 4
	srl     $t9, $t8, 31
	bne     $a2, $t9, .L8031DB58
	sll     $t4, $v0, 3
	lw      $t0, 0x0118($s1)
	beqzl   $t0, .L8031E228
	lw      $ra, 0x0034($sp)
	lw      $t1, 0x013C($s1)
	lui     $t4, %hi(_Na_bss+0x5DB4)
	bnezl   $t1, .L8031DB20
	addiu   $s0, $s1, 0x0100
	lbu     $t2, 0x0000($s1)
	lbu     $t5, 0x0007($s1)
	lw      $a0, 0x0134($s1)
	andi    $t3, $t2, 0xFFF7
	sb      $t3, 0x0000($s1)
	lw      $t4, %lo(_Na_bss+0x5DB4)($t4)
	sll     $t6, $t5, 3
	lbu     $a2, 0x0008($s1)
	addu    $t7, $t4, $t6
	lw      $a1, 0x0004($t7)
	jal     Na_c_803188F4
	lbu     $a3, 0x0009($s1)
	lbu     $t0, 0x0007($s1)
	li      $v1, 0x000C
	la.u    $v0, _Na_bss+0x5DC0
	multu   $t0, $v1
	la.l    $v0, _Na_bss+0x5DC0
	lw      $t9, 0x0000($v0)
	lbu     $t8, 0x0008($s1)
	la.u    $a0, _Na_bss+0x730
	la.l    $a0, _Na_bss+0x730
	li      $a1, 0x0002
	mflo    $t1
	addu    $t2, $t9, $t1
	sb      $t8, 0x0001($t2)
	lbu     $t4, 0x0007($s1)
	lw      $t5, 0x0000($v0)
	lbu     $t3, 0x0009($s1)
	multu   $t4, $v1
	mflo    $t6
	addu    $t7, $t5, $t6
	sb      $t3, 0x0002($t7)
	lbu     $t8, 0x0007($s1)
	lw      $t1, 0x0000($v0)
	lw      $t0, 0x0134($s1)
	multu   $t8, $v1
	addiu   $t9, $t0, 0x0004
	mflo    $t2
	addu    $t4, $t1, $t2
	sw      $t9, 0x0004($t4)
	lbu     $t7, 0x0007($s1)
	lw      $t5, 0x0134($s1)
	lw      $t3, 0x0000($v0)
	multu   $t7, $v1
	lw      $t6, 0x0000($t5)
	mflo    $t0
	addu    $t8, $t3, $t0
	sw      $t6, 0x0008($t8)
	lbu     $t1, 0x0007($s1)
	addu    $t2, $a0, $t1
	b       .L8031E224
	sb      $a1, 0x0000($t2)
	addiu   $s0, $s1, 0x0100
.L8031DB20:
	move    $a0, $s0
	addiu   $a1, $s1, 0x0118
	jal     osCreateMesgQueue
	li      $a2, 0x0001
	sw      $0, 0x0118($s1)
	addiu   $t9, $s1, 0x011C
	sw      $t9, 0x0010($sp)
	addiu   $a0, $s1, 0x0138
	addiu   $a1, $s1, 0x0130
	addiu   $a2, $s1, 0x013C
	jal     Na_c_80318130
	move    $a3, $s0
	b       .L8031E228
	lw      $ra, 0x0034($sp)
.L8031DB58:
	srl     $t5, $t4, 31
	bnel    $a2, $t5, .L8031DB94
	lbu     $t8, 0x0005($s1)
	lw      $t7, 0x00E8($s1)
	li      $a1, 0x0002
	beqzl   $t7, .L8031E228
	lw      $ra, 0x0034($sp)
	lbu     $t3, 0x0000($s1)
	lbu     $t6, 0x0005($s1)
	lui     $at, %hi(_Na_bss+0x770)
	andi    $t0, $t3, 0xFFEF
	sb      $t0, 0x0000($s1)
	addu    $at, $at, $t6
	sb      $a1, %lo(_Na_bss+0x770)($at)
	lbu     $t8, 0x0005($s1)
.L8031DB94:
	la.u    $t1, _Na_bss+0x770
	la.l    $t1, _Na_bss+0x770
	addu    $v0, $t8, $t1
	lbu     $t2, 0x0000($v0)
	li      $a1, 0x0002
	slti    $t9, $t2, 0x0002
	bnez    $t9, .L8031DBD4
	nop
	lbu     $t4, 0x0006($s1)
	la.u    $a0, _Na_bss+0x730
	la.l    $a0, _Na_bss+0x730
	addu    $t5, $a0, $t4
	lbu     $t7, 0x0000($t5)
	slti    $t3, $t7, 0x0002
	beqzl   $t3, .L8031DBE8
	sb      $a1, 0x0000($v0)
.L8031DBD4:
	jal     Na_f_8031BE44
	move    $a0, $s1
	b       .L8031E228
	lw      $ra, 0x0034($sp)
	sb      $a1, 0x0000($v0)
.L8031DBE8:
	lbu     $t0, 0x0006($s1)
	addu    $t6, $a0, $t0
	sb      $a1, 0x0000($t6)
	lw      $t8, 0x0000($s1)
	sll     $t2, $t8, 2
	bgezl   $t2, .L8031DC18
	lhu     $t5, 0x000C($s1)
	lbu     $t9, 0x0004($s1)
	andi    $t4, $t9, 0x0080
	bnezl   $t4, .L8031E228
	lw      $ra, 0x0034($sp)
	lhu     $t5, 0x000C($s1)
.L8031DC18:
	lhu     $t7, 0x000A($s1)
	lui     $v1, %hi(_Na_bss+0x5DDC)
	addu    $t3, $t5, $t7
	sh      $t3, 0x000C($s1)
	lh      $v1, %lo(_Na_bss+0x5DDC)($v1)
	andi    $v0, $t3, 0xFFFF
	slt     $at, $v0, $v1
	bnezl   $at, .L8031E228
	lw      $ra, 0x0034($sp)
	lhu     $a0, 0x0012($s1)
	subu    $t6, $v0, $v1
	sh      $t6, 0x000C($s1)
	slti    $at, $a0, 0x0002
	bnez    $at, .L8031DC60
	addiu   $s0, $s1, 0x006C
	addiu   $t8, $a0, -0x0001
	b       .L8031E1E4
	sh      $t8, 0x0012($s1)
.L8031DC60:
	li      $at, 0x42FE0000
	mtc1    $at, $f20
	lw      $s2, 0x0060($sp)
.globl L8031DC6C
L8031DC6C:
	jal     Na_f_8031C03C
	move    $a0, $s0
	li      $at, 0x00FF
	andi    $a3, $v0, 0x00FF
	bne     $v0, $at, .L8031DCB8
	move    $a0, $v0
	lbu     $v1, 0x0018($s0)
	bnez    $v1, .L8031DCA0
	addiu   $t1, $v1, -0x0001
	jal     Na_f_8031BE44
	move    $a0, $s1
	b       .L8031E1E8
	move    $v0, $0
.L8031DCA0:
	andi    $t2, $t1, 0x00FF
	sll     $t9, $t2, 2
	addu    $t4, $s0, $t9
	sb      $t1, 0x0018($s0)
	lw      $t5, 0x0004($t4)
	sw      $t5, 0x0000($s0)
.L8031DCB8:
	li      $at, 0x00FD
	bne     $a0, $at, .L8031DCD4
	andi    $v1, $a0, 0x00F0
	jal     Na_f_8031C080
	move    $a0, $s0
	b       .L8031E1E4
	sh      $v0, 0x0012($s1)
.L8031DCD4:
	li      $at, 0x00FE
	bne     $a0, $at, .L8031DCEC
	addiu   $t3, $a0, -0x00C8
	li      $t7, 0x0001
	b       .L8031E1E4
	sh      $t7, 0x0012($s1)
.L8031DCEC:
	slti    $at, $a0, 0x00C0
	bnez    $at, .L8031E0D0
	sltiu   $at, $t3, 0x0038
	beqz    $at, L8031DC6C
	sll     $t3, $t3, 2
	lui     $at, %hi(Na_f_80339280)
	addu    $at, $at, $t3
	lw      $t3, %lo(Na_f_80339280)($at)
	jr      $t3
	nop
.globl L8031DD14
L8031DD14:
	jal     Na_f_8031C050
	move    $a0, $s0
	lbu     $t0, 0x0018($s0)
	lw      $t8, 0x0000($s0)
	andi    $t5, $v0, 0xFFFF
	addiu   $t6, $t0, 0x0001
	andi    $t1, $t6, 0x00FF
	sll     $t2, $t1, 2
	addu    $t9, $s0, $t2
	sb      $t6, 0x0018($s0)
	sw      $t8, 0x0000($t9)
	lw      $t4, 0x0014($s1)
	addu    $t7, $t4, $t5
	b       L8031DC6C
	sw      $t7, 0x0000($s0)
.globl L8031DD50
L8031DD50:
	jal     Na_f_8031C03C
	move    $a0, $s0
	lbu     $t3, 0x0018($s0)
	addu    $t0, $s0, $t3
	sb      $v0, 0x0014($t0)
	lbu     $t6, 0x0018($s0)
	lw      $t2, 0x0000($s0)
	addiu   $t1, $t6, 0x0001
	andi    $t8, $t1, 0x00FF
	sll     $t9, $t8, 2
	addu    $t4, $s0, $t9
	sb      $t1, 0x0018($s0)
	b       L8031DC6C
	sw      $t2, 0x0000($t4)
.globl L8031DD88
L8031DD88:
	lbu     $t5, 0x0018($s0)
	addu    $v0, $s0, $t5
	lbu     $t7, 0x0013($v0)
	addiu   $t3, $t7, -0x0001
	sb      $t3, 0x0013($v0)
	lbu     $v1, 0x0018($s0)
	addu    $t0, $s0, $v1
	lbu     $t6, 0x0013($t0)
	move    $a0, $v1
	sll     $t1, $a0, 2
	beqz    $t6, .L8031DDC8
	addiu   $t2, $v1, -0x0001
	addu    $t8, $s0, $t1
	lw      $t9, 0x0000($t8)
	b       L8031DC6C
	sw      $t9, 0x0000($s0)
.L8031DDC8:
	b       L8031DC6C
	sb      $t2, 0x0018($s0)
.globl L8031DDD0
L8031DDD0:
	move    $a0, $s0
	jal     Na_f_8031C050
	sb      $a3, 0x0067($sp)
	lbu     $v1, 0x0067($sp)
	li      $at, 0x00FA
	bnel    $v1, $at, .L8031DDF8
	li      $at, 0x00F9
	bnez    $s2, L8031DC6C
	nop
	li      $at, 0x00F9
.L8031DDF8:
	bnel    $v1, $at, .L8031DE0C
	li      $at, 0x00F5
	bgez    $s2, L8031DC6C
	nop
	li      $at, 0x00F5
.L8031DE0C:
	bnel    $v1, $at, .L8031DE20
	lw      $t4, 0x0014($s1)
	bltz    $s2, L8031DC6C
	nop
	lw      $t4, 0x0014($s1)
.L8031DE20:
	andi    $t5, $v0, 0xFFFF
	addu    $t7, $t4, $t5
	b       L8031DC6C
	sw      $t7, 0x0000($s0)
.globl L8031DE30
L8031DE30:
	addiu   $a0, $s1, 0x0090
	jal     Na_d_8031A368
	sw      $a0, 0x0040($sp)
	jal     Na_f_8031C03C
	move    $a0, $s0
	lw      $a0, 0x0040($sp)
	jal     Na_d_8031A494
	move    $a1, $v0
	b       L8031DC6C
	nop
.globl L8031DE58
L8031DE58:
	jal     Na_d_8031A368
	addiu   $a0, $s1, 0x0090
	b       L8031DC6C
	nop
.globl L8031DE68
L8031DE68:
	sh      $0, 0x0010($s1)
.globl L8031DE6C
L8031DE6C:
	jal     Na_f_8031C03C
	move    $a0, $s0
	lh      $t3, 0x0010($s1)
	sll     $t0, $v0, 24
	sra     $t6, $t0, 24
	addu    $t1, $t3, $t6
	b       L8031DC6C
	sh      $t1, 0x0010($s1)
.globl L8031DE8C
L8031DE8C:
	move    $a0, $s0
	jal     Na_f_8031C03C
	sb      $a3, 0x0067($sp)
	lbu     $a3, 0x0067($sp)
	li      $at, 0x00DD
	sll     $t2, $v0, 24
	bne     $a3, $at, .L8031DEC0
	lui     $v1, %hi(_Na_bss+0x5DDC)
	sll     $t8, $v0, 2
	subu    $t8, $t8, $v0
	sll     $t8, $t8, 4
	b       .L8031DEDC
	sh      $t8, 0x000A($s1)
.L8031DEC0:
	sra     $t4, $t2, 24
	lhu     $t9, 0x000A($s1)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 4
	addu    $t7, $t9, $t5
	sh      $t7, 0x000A($s1)
.L8031DEDC:
	lh      $v1, %lo(_Na_bss+0x5DDC)($v1)
	lhu     $v0, 0x000A($s1)
	li      $t6, 0x0001
	slt     $at, $v1, $v0
	beqzl   $at, .L8031DF00
	sll     $t0, $v0, 16
	sh      $v1, 0x000A($s1)
	andi    $v0, $v1, 0xFFFF
	sll     $t0, $v0, 16
.L8031DF00:
	sra     $t3, $t0, 16
	bgtz    $t3, L8031DC6C
	nop
	b       L8031DC6C
	sh      $t6, 0x000A($s1)
.globl L8031DF14
L8031DF14:
	jal     Na_f_8031C03C
	move    $a0, $s0
	lbu     $v1, 0x0002($s1)
	li      $at, 0x0001
	beqzl   $v1, .L8031DF84
	mtc1    $v0, $f8
	beq     $v1, $at, .L8031DF98
	li      $at, 0x0002
	beq     $v1, $at, .L8031DF4C
	li      $at, 0x0004
	beql    $v1, $at, .L8031DF9C
	mtc1    $v0, $f16
	b       L8031DC6C
	nop
.L8031DF4C:
	lhu     $v1, 0x000E($s1)
	beqzl   $v1, .L8031DF84
	mtc1    $v0, $f8
	mtc1    $v0, $f4
	mtc1    $v1, $f18
	lwc1    $f10, 0x0018($s1)
	cvt.s.w $f6, $f4
	cvt.s.w $f4, $f18
	div.s   $f8, $f6, $f20
	sub.s   $f16, $f8, $f10
	div.s   $f6, $f16, $f4
	b       L8031DC6C
	swc1    $f6, 0x001C($s1)
	mtc1    $v0, $f8
.L8031DF84:
	nop
	cvt.s.w $f10, $f8
	div.s   $f18, $f10, $f20
	b       L8031DC6C
	swc1    $f18, 0x0018($s1)
.L8031DF98:
	mtc1    $v0, $f16
.L8031DF9C:
	nop
	cvt.s.w $f4, $f16
	div.s   $f6, $f4, $f20
	b       L8031DC6C
	swc1    $f6, 0x0020($s1)
.globl L8031DFB0
L8031DFB0:
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t1, $v0, 24
	sra     $t8, $t1, 24
	mtc1    $t8, $f10
	lwc1    $f8, 0x0018($s1)
	cvt.s.w $f18, $f10
	div.s   $f16, $f18, $f20
	add.s   $f4, $f8, $f16
	b       L8031DC6C
	swc1    $f4, 0x0018($s1)
.globl L8031DFDC
L8031DFDC:
	jal     Na_f_8031C050
	move    $a0, $s0
	move    $a0, $s1
	jal     Na_f_8031BBA4
	andi    $a1, $v0, 0xFFFF
	b       L8031DC6C
	nop
.globl L8031DFF8
L8031DFF8:
	jal     Na_f_8031C050
	move    $a0, $s0
	move    $a0, $s1
	jal     Na_f_8031BCD0
	andi    $a1, $v0, 0xFFFF
	b       L8031DC6C
	nop
.globl L8031E014
L8031E014:
	jal     Na_f_8031C03C
	move    $a0, $s0
	sll     $t2, $v0, 24
	sra     $t4, $t2, 24
	mtc1    $t4, $f6
	nop
	cvt.s.w $f10, $f6
	div.s   $f18, $f10, $f20
	b       L8031DC6C
	swc1    $f18, 0x0024($s1)
.globl L8031E03C
L8031E03C:
	lbu     $t5, 0x0000($s1)
	ori     $t7, $t5, 0x0020
	b       L8031DC6C
	sb      $t7, 0x0000($s1)
.globl L8031E04C
L8031E04C:
	jal     Na_f_8031C03C
	move    $a0, $s0
	b       L8031DC6C
	sb      $v0, 0x0004($s1)
.globl L8031E05C
L8031E05C:
	move    $a0, $s0
	jal     Na_f_8031C050
	sb      $a3, 0x0067($sp)
	lbu     $a3, 0x0067($sp)
	lw      $t0, 0x0014($s1)
	andi    $t3, $v0, 0xFFFF
	li      $at, 0x00D2
	bne     $a3, $at, .L8031E088
	addu    $v1, $t0, $t3
	b       L8031DC6C
	sw      $v1, 0x0088($s1)
.L8031E088:
	b       L8031DC6C
	sw      $v1, 0x008C($s1)
.globl L8031E090
L8031E090:
	jal     Na_f_8031C03C
	move    $a0, $s0
	b       L8031DC6C
	sb      $v0, 0x0003($s1)
.globl L8031E0A0
L8031E0A0:
	jal     Na_f_8031C03C
	move    $a0, $s0
	b       L8031DC6C
	move    $s2, $v0
.globl L8031E0B0
L8031E0B0:
	jal     Na_f_8031C03C
	move    $a0, $s0
	b       L8031DC6C
	and     $s2, $v0, $s2
.globl L8031E0C0
L8031E0C0:
	jal     Na_f_8031C03C
	move    $a0, $s0
	b       L8031DC6C
	subu    $s2, $s2, $v0
.L8031E0D0:
	slti    $at, $v1, 0x0021
	bnez    $at, .L8031E134
	slti    $at, $v1, 0x00D9
	bnez    $at, .L8031E0F4
	li      $at, 0x00D9
	beq     $v1, $at, L8031DC6C
	nop
	b       L8031DC6C
	nop
.L8031E0F4:
	slti    $at, $v1, 0x00A1
	bnez    $at, .L8031E114
	addiu   $t6, $v1, -0x0040
	li      $at, 0x00D8
	beq     $v1, $at, L8031DC6C
	nop
	b       L8031DC6C
	nop
.L8031E114:
	sltiu   $at, $t6, 0x0061
	beqz    $at, L8031DC6C
	sll     $t6, $t6, 2
	lui     $at, %hi(Na_f_80339360)
	addu    $at, $at, $t6
	lw      $t6, %lo(Na_f_80339360)($at)
	jr      $t6
	nop
.L8031E134:
	beqz    $v1, .L8031E15C
	andi    $t8, $a0, 0x000F
	li      $at, 0x0010
	beq     $v1, $at, L8031DC6C
	nop
	li      $at, 0x0020
	beq     $v1, $at, L8031DC6C
	nop
	b       L8031DC6C
	nop
.L8031E15C:
	sll     $t2, $t8, 2
	addu    $t4, $s1, $t2
	lw      $v1, 0x002C($t4)
	la.u    $t9, _Na_bss+0x4E38
	la.l    $t9, _Na_bss+0x4E38
	xor     $t5, $t9, $v1
	sltu    $t5, $0, $t5
	li      $at, 0x0001
	bne     $t5, $at, L8031DC6C
	nop
	lw      $s2, 0x0000($v1)
	sll     $t7, $s2, 1
	b       L8031DC6C
	srl     $s2, $t7, 31
.globl L8031E194
L8031E194:
	lb      $t3, 0x0001($s1)
	b       L8031DC6C
	subu    $s2, $s2, $t3
.globl L8031E1A0
L8031E1A0:
	b       L8031DC6C
	sb      $s2, 0x0001($s1)
.globl L8031E1A8
L8031E1A8:
	b       L8031DC6C
	lb      $s2, 0x0001($s1)
.globl L8031E1B0
L8031E1B0:
	move    $a0, $s0
	jal     Na_f_8031C050
	sb      $a3, 0x0067($sp)
	lbu     $a1, 0x0067($sp)
	lw      $t1, 0x0014($s1)
	andi    $t8, $v0, 0xFFFF
	andi    $t6, $a1, 0x000F
	move    $a1, $t6
	move    $a0, $s1
	jal     Na_f_8031BDA0
	addu    $a2, $t1, $t8
	b       L8031DC6C
	nop
.L8031E1E4:
	move    $v0, $0
.L8031E1E8:
	move    $v1, $s1
	li      $s0, 0x0040
.L8031E1F0:
	lw      $a0, 0x002C($v1)
	la.u    $t2, _Na_bss+0x4E38
	la.l    $t2, _Na_bss+0x4E38
	beql    $t2, $a0, .L8031E21C
	addiu   $v0, $v0, 0x0004
	sw      $v0, 0x0040($sp)
	jal     Na_f_8031D08C
	sw      $v1, 0x003C($sp)
	lw      $v0, 0x0040($sp)
	lw      $v1, 0x003C($sp)
	addiu   $v0, $v0, 0x0004
.L8031E21C:
	bne     $v0, $s0, .L8031E1F0
	addiu   $v1, $v1, 0x0004
.L8031E224:
	lw      $ra, 0x0034($sp)
.L8031E228:
	ldc1    $f20, 0x0020($sp)
	lw      $s0, 0x0028($sp)
	lw      $s1, 0x002C($sp)
	lw      $s2, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0068

.globl Na_f_8031E240
Na_f_8031E240:
	addiu   $sp, $sp, -0x0030
	sw      $s5, 0x0028($sp)
	sw      $s4, 0x0024($sp)
	sw      $s1, 0x0018($sp)
	sw      $s3, 0x0020($sp)
	sw      $s2, 0x001C($sp)
	la.u    $s1, _Na_bss+0x1878
	la.u    $s4, _Na_bss+0x1878
	la.u    $s5, _Na_bss+0x1C38
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	la.l    $s5, _Na_bss+0x1C38
	la.l    $s4, _Na_bss+0x1878
	la.l    $s1, _Na_bss+0x1878
	move    $s2, $0
	li      $s3, 0x0001
.L8031E284:
	lw      $t6, 0x0000($s1)
	addu    $s0, $s4, $s2
	srl     $t7, $t6, 31
	bnel    $s3, $t7, .L8031E2AC
	addiu   $s1, $s1, 0x0140
	jal     Na_f_8031D9EC
	move    $a0, $s0
	jal     Na_e_8031AEE8
	move    $a0, $s0
	addiu   $s1, $s1, 0x0140
.L8031E2AC:
	bne     $s1, $s5, .L8031E284
	addiu   $s2, $s2, 0x0140
	jal     Na_d_8031AC34
	nop
	jal     Na_d_803199B8
	nop
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	lw      $s4, 0x0024($sp)
	lw      $s5, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl Na_f_8031E2E8
Na_f_8031E2E8:
	sll     $t6, $a0, 2
	addu    $t6, $t6, $a0
	la.u    $t7, _Na_bss+0x1878
	la.l    $t7, _Na_bss+0x1878
	sll     $t6, $t6, 6
	addu    $v0, $t6, $t7
	li      $at, 0x3F800000
	lbu     $t8, 0x0000($v0)
	mtc1    $at, $f4
	mtc1    $0, $f0
	li      $at, 0x3F000000
	mtc1    $at, $f6
	la.u    $t2, Na_data_80333B94
	la.u    $t3, Na_data_80333BA4
	li      $t0, 0x1680
	li      $t1, 0x00E0
	la.l    $t2, Na_data_80333B94
	la.l    $t3, Na_data_80333BA4
	andi    $t9, $t8, 0xFFDF
	sb      $t9, 0x0000($v0)
	sh      $0, 0x0012($v0)
	sb      $0, 0x0002($v0)
	sh      $0, 0x000E($v0)
	sh      $0, 0x000C($v0)
	sh      $t0, 0x000A($v0)
	sh      $0, 0x0010($v0)
	sb      $t1, 0x0004($v0)
	sb      $0, 0x0003($v0)
	sw      $t2, 0x0088($v0)
	sw      $t3, 0x008C($v0)
	swc1    $f4, 0x0018($v0)
	swc1    $f0, 0x001C($v0)
	swc1    $f0, 0x0020($v0)
	jr      $ra
	swc1    $f6, 0x0024($v0)

.globl Na_f_8031E374
Na_f_8031E374:
	addiu   $sp, $sp, -0x0038
	la.u    $v0, _Na_bss+0x1C38
	la.u    $v1, _Na_bss+0x3438
	sw      $ra, 0x0034($sp)
	sw      $s7, 0x0030($sp)
	sw      $s6, 0x002C($sp)
	sw      $s5, 0x0028($sp)
	sw      $s4, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s2, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	la.l    $v1, _Na_bss+0x3438
	la.l    $v0, _Na_bss+0x1C38
.L8031E3AC:
	lbu     $t6, 0x0000($v0)
	addiu   $v0, $v0, 0x00C0
	sltu    $at, $v0, $v1
	andi    $t7, $t6, 0xFF7F
	sw      $0, -0x0080($v0)
	bnez    $at, .L8031E3AC
	sb      $t7, -0x00C0($v0)
	la.u    $a1, _Na_bss+0x1C38
	la.u    $a2, _Na_bss+0x3438
	la.l    $a2, _Na_bss+0x3438
	la.l    $a1, _Na_bss+0x1C38
	li      $a0, 0x0034
	move    $v0, $0
.L8031E3E0:
	move    $v1, $a1
.L8031E3E4:
	addiu   $v0, $v0, 0x0001
	addiu   $v1, $v1, 0x0004
	bne     $v0, $a0, .L8031E3E4
	sw      $0, 0x0040($v1)
	addiu   $a1, $a1, 0x00C0
	sltu    $at, $a1, $a2
	bnezl   $at, .L8031E3E0
	move    $v0, $0
	jal     Na_f_8031BF94
	nop
	la.u    $v0, _Na_bss+0x3438
	la.u    $v1, _Na_bss+0x4E38
	la.l    $v1, _Na_bss+0x4E38
	la.l    $v0, _Na_bss+0x3438
.L8031E41C:
	lbu     $t8, 0x0000($v0)
	addiu   $v0, $v0, 0x0080
	sltu    $at, $v0, $v1
	andi    $t9, $t8, 0xFF7F
	sw      $0, -0x0030($v0)
	bnez    $at, .L8031E41C
	sb      $t9, -0x0080($v0)
	lui     $t0, %hi(_Na_bss+0x1878)
	addiu   $s2, $t0, %lo(_Na_bss+0x1878)
	la.u    $s5, _Na_bss+0x1908
	la.u    $s0, _Na_bss+0x4E38
	la.l    $s0, _Na_bss+0x4E38
	la.l    $s5, _Na_bss+0x1908
	move    $s4, $s2
	move    $s3, $0
	li      $s7, 0x0003
	li      $s6, -0x0001
	li      $s1, 0x0010
.L8031E464:
	move    $v0, $0
	move    $v1, $s4
.L8031E46C:
	addiu   $v0, $v0, 0x0001
	addiu   $v1, $v1, 0x0004
	bne     $v0, $s1, .L8031E46C
	sw      $s0, 0x0028($v1)
	lbu     $t1, 0x0000($s2)
	sb      $s6, 0x0001($s2)
	move    $a0, $s5
	andi    $t3, $t1, 0xFFF7
	sb      $t3, 0x0000($s2)
	andi    $t4, $t3, 0x00EF
	jal     Na_d_8031A264
	sb      $t4, 0x0000($s2)
	jal     Na_f_8031E2E8
	move    $a0, $s3
	addiu   $s3, $s3, 0x0001
	addiu   $s4, $s4, 0x0140
	addiu   $s2, $s2, 0x0140
	bne     $s3, $s7, .L8031E464
	addiu   $s5, $s5, 0x0140
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	lw      $s4, 0x0024($sp)
	lw      $s5, 0x0028($sp)
	lw      $s6, 0x002C($sp)
	lw      $s7, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

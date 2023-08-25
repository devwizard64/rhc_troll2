.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

map_data_80382490:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_8036116C)
	lw      $t6, %lo(object_8036116C)($t6)
	lui     $t8, %hi(map_data_8038EE98)
	lw      $t8, %lo(map_data_8038EE98)($t8)
	sll     $t7, $t6, 3
	addu    $t9, $t7, $t8
	sw      $t9, 0x0004($sp)
	lui     $t0, %hi(object_8036116C)
	lw      $t0, %lo(object_8036116C)($t0)
	lui     $at, %hi(object_8036116C)
	addiu   $t1, $t0, 0x0001
	sw      $t1, %lo(object_8036116C)($at)
	lw      $t2, 0x0004($sp)
	sw      $0, 0x0000($t2)
	lui     $t3, %hi(object_8036116C)
	lw      $t3, %lo(object_8036116C)($t3)
	slti    $at, $t3, 0x1B58
	bnez    $at, .L803824E0
	nop
.L803824E0:
	b       .L803824F0
	lw      $v0, 0x0004($sp)
	b       .L803824F0
	nop
.L803824F0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

map_data_803824F8:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_80361170)
	lw      $t6, %lo(object_80361170)($t6)
	lui     $t8, %hi(map_data_8038EE9C)
	lw      $t8, %lo(map_data_8038EE9C)($t8)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 4
	addu    $t9, $t7, $t8
	sw      $t9, 0x0004($sp)
	lui     $t0, %hi(object_80361170)
	lw      $t0, %lo(object_80361170)($t0)
	lui     $at, %hi(object_80361170)
	addiu   $t1, $t0, 0x0001
	sw      $t1, %lo(object_80361170)($at)
	lui     $t2, %hi(object_80361170)
	lui     $t3, %hi(map_data_8038EEA0)
	lh      $t3, %lo(map_data_8038EEA0)($t3)
	lw      $t2, %lo(object_80361170)($t2)
	slt     $at, $t2, $t3
	bnez    $at, .L80382550
	nop
.L80382550:
	lw      $t4, 0x0004($sp)
	sh      $0, 0x0000($t4)
	lw      $t5, 0x0004($sp)
	sh      $0, 0x0002($t5)
	lw      $t6, 0x0004($sp)
	sb      $0, 0x0004($t6)
	lw      $t7, 0x0004($sp)
	sb      $0, 0x0005($t7)
	lw      $t8, 0x0004($sp)
	sw      $0, 0x002C($t8)
	b       .L80382588
	lw      $v0, 0x0004($sp)
	b       .L80382588
	nop
.L80382588:
	jr      $ra
	addiu   $sp, $sp, 0x0008

map_data_80382590:
	addiu   $sp, $sp, -0x0008
	li      $a1, 0x0100
	move    $a2, $a1
	beqz    $a2, .L803825C0
	addiu   $a1, $a1, -0x0001
.L803825A4:
	sw      $0, 0x0000($a0)
	sw      $0, 0x0008($a0)
	sw      $0, 0x0010($a0)
	addiu   $a0, $a0, 0x0018
	move    $a2, $a1
	bnez    $a2, .L803825A4
	addiu   $a1, $a1, -0x0001
.L803825C0:
	b       .L803825C8
	nop
.L803825C8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

map_data_803825D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, map_data_8038BE98
	jal     map_data_80382590
	la.l    $a0, map_data_8038BE98
	b       .L803825EC
	nop
.L803825EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

map_data_803825FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	jal     map_data_80382490
	nop
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0034($sp)
	lui     $at, %hi(map_data_8038BBB0)
	ldc1    $f8, %lo(map_data_8038BBB0)($at)
	lwc1    $f4, 0x0020($t6)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    .L80382654
	nop
	sh      $0, 0x0018($sp)
	li      $t7, 0x0001
	b       .L803826E4
	sh      $t7, 0x001A($sp)
.L80382654:
	lw      $t8, 0x0034($sp)
	lui     $at, %hi(map_data_8038BBB8)
	ldc1    $f18, %lo(map_data_8038BBB8)($at)
	lwc1    $f10, 0x0020($t8)
	cvt.d.s $f16, $f10
	c.lt.d  $f16, $f18
	nop
	bc1f    .L8038268C
	nop
	li      $t9, 0x0001
	sh      $t9, 0x0018($sp)
	li      $t0, -0x0001
	b       .L803826E4
	sh      $t0, 0x001A($sp)
.L8038268C:
	li      $t1, 0x0002
	sh      $t1, 0x0018($sp)
	sh      $0, 0x001A($sp)
	lw      $t2, 0x0034($sp)
	lui     $at, %hi(map_data_8038BBC0)
	ldc1    $f8, %lo(map_data_8038BBC0)($at)
	lwc1    $f4, 0x001C($t2)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1t    .L803826D4
	nop
	lui     $at, %hi(map_data_8038BBC8)
	ldc1    $f10, %lo(map_data_8038BBC8)($at)
	c.lt.d  $f10, $f6
	nop
	bc1f    .L803826E4
	nop
.L803826D4:
	lw      $t3, 0x0034($sp)
	lb      $t4, 0x0004($t3)
	ori     $t5, $t4, 0x0008
	sb      $t5, 0x0004($t3)
.L803826E4:
	lw      $t6, 0x0034($sp)
	lh      $t8, 0x001A($sp)
	lh      $t7, 0x000C($t6)
	multu   $t7, $t8
	mflo    $t9
	sh      $t9, 0x001E($sp)
	nop
	lw      $t0, 0x0034($sp)
	lw      $t1, 0x0024($sp)
	sw      $t0, 0x0004($t1)
	lh      $t2, 0x002A($sp)
	beqz    $t2, .L8038275C
	nop
	lh      $t4, 0x0032($sp)
	lh      $t3, 0x002E($sp)
	lh      $t8, 0x0018($sp)
	sll     $t5, $t4, 2
	sll     $t6, $t3, 2
	subu    $t5, $t5, $t4
	subu    $t6, $t6, $t3
	sll     $t6, $t6, 3
	sll     $t5, $t5, 7
	addu    $t7, $t5, $t6
	la.u    $t1, map_data_8038D698
	sll     $t9, $t8, 3
	addu    $t0, $t7, $t9
	la.l    $t1, map_data_8038D698
	addu    $t2, $t0, $t1
	b       .L8038279C
	sw      $t2, 0x0020($sp)
.L8038275C:
	lh      $t4, 0x0032($sp)
	lh      $t5, 0x002E($sp)
	lh      $t7, 0x0018($sp)
	sll     $t3, $t4, 2
	sll     $t6, $t5, 2
	subu    $t3, $t3, $t4
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	sll     $t3, $t3, 7
	addu    $t8, $t3, $t6
	la.u    $t1, map_data_8038BE98
	sll     $t9, $t7, 3
	addu    $t0, $t8, $t9
	la.l    $t1, map_data_8038BE98
	addu    $t2, $t0, $t1
	sw      $t2, 0x0020($sp)
.L8038279C:
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x0000($t4)
	beqz    $t5, .L80382808
	nop
.L803827AC:
	lw      $t3, 0x0020($sp)
	lh      $t9, 0x001A($sp)
	lw      $t6, 0x0000($t3)
	lw      $t7, 0x0004($t6)
	lh      $t8, 0x000C($t7)
	multu   $t8, $t9
	mflo    $t0
	sh      $t0, 0x001C($sp)
	nop
	lh      $t1, 0x001E($sp)
	lh      $t2, 0x001C($sp)
	slt     $at, $t2, $t1
	beqz    $at, .L803827EC
	nop
	b       .L80382808
	nop
.L803827EC:
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x0000($t4)
	sw      $t5, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	lw      $t6, 0x0000($t3)
	bnez    $t6, .L803827AC
	nop
.L80382808:
	lw      $t7, 0x0020($sp)
	lw      $t9, 0x0024($sp)
	lw      $t8, 0x0000($t7)
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0020($sp)
	sw      $t0, 0x0000($t1)
	b       .L8038282C
	nop
.L8038282C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

map_data_8038283C:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	slt     $at, $a1, $a0
	beqz    $at, .L8038286C
	nop
	sll     $a0, $a1, 16
	sra     $t6, $a0, 16
	move    $a0, $t6
.L8038286C:
	slt     $at, $a2, $a0
	beqz    $at, .L80382884
	nop
	sll     $a0, $a2, 16
	sra     $t7, $a0, 16
	move    $a0, $t7
.L80382884:
	jr      $ra
	move    $v0, $a0
	jr      $ra
	nop
	jr      $ra
	nop

map_data_8038289C:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	slt     $at, $a0, $a1
	beqz    $at, .L803828CC
	nop
	sll     $a0, $a1, 16
	sra     $t6, $a0, 16
	move    $a0, $t6
.L803828CC:
	slt     $at, $a0, $a2
	beqz    $at, .L803828E4
	nop
	sll     $a0, $a2, 16
	sra     $t7, $a0, 16
	move    $a0, $t7
.L803828E4:
	jr      $ra
	move    $v0, $a0
	jr      $ra
	nop
	jr      $ra
	nop

map_data_803828FC:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	addiu   $a0, $a0, 0x2000
	sll     $t6, $a0, 16
	move    $a0, $t6
	sra     $t7, $a0, 16
	move    $a0, $t7
	bgez    $a0, .L80382928
	nop
	move    $a0, $0
.L80382928:
	bgez    $a0, .L80382938
	sra     $t8, $a0, 10
	addiu   $at, $a0, 0x03FF
	sra     $t8, $at, 10
.L80382938:
	sh      $t8, 0x0006($sp)
	bgez    $a0, .L80382950
	andi    $t9, $a0, 0x03FF
	beqz    $t9, .L80382950
	nop
	addiu   $t9, $t9, -0x0400
.L80382950:
	slti    $at, $t9, 0x0032
	beqz    $at, .L80382968
	nop
	lh      $t0, 0x0006($sp)
	addiu   $t1, $t0, -0x0001
	sh      $t1, 0x0006($sp)
.L80382968:
	lh      $t2, 0x0006($sp)
	bgez    $t2, .L80382978
	nop
	sh      $0, 0x0006($sp)
.L80382978:
	b       .L80382988
	lh      $v0, 0x0006($sp)
	b       .L80382988
	nop
.L80382988:
	jr      $ra
	addiu   $sp, $sp, 0x0008

map_data_80382990:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	addiu   $a0, $a0, 0x2000
	sll     $t6, $a0, 16
	move    $a0, $t6
	sra     $t7, $a0, 16
	move    $a0, $t7
	bgez    $a0, .L803829BC
	nop
	move    $a0, $0
.L803829BC:
	bgez    $a0, .L803829CC
	sra     $t8, $a0, 10
	addiu   $at, $a0, 0x03FF
	sra     $t8, $at, 10
.L803829CC:
	sh      $t8, 0x0006($sp)
	bgez    $a0, .L803829E4
	andi    $t9, $a0, 0x03FF
	beqz    $t9, .L803829E4
	nop
	addiu   $t9, $t9, -0x0400
.L803829E4:
	slti    $at, $t9, 0x03CF
	bnez    $at, .L803829FC
	nop
	lh      $t0, 0x0006($sp)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x0006($sp)
.L803829FC:
	lh      $t2, 0x0006($sp)
	slti    $at, $t2, 0x0010
	bnez    $at, .L80382A14
	nop
	li      $t3, 0x000F
	sh      $t3, 0x0006($sp)
.L80382A14:
	b       .L80382A24
	lh      $v0, 0x0006($sp)
	b       .L80382A24
	nop
.L80382A24:
	jr      $ra
	addiu   $sp, $sp, 0x0008

map_data_80382A2C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	lh      $a0, 0x000A($t6)
	lh      $a1, 0x0010($t6)
	jal     map_data_8038283C
	lh      $a2, 0x0016($t6)
	sh      $v0, 0x002E($sp)
	lw      $t7, 0x0038($sp)
	lh      $a0, 0x000E($t7)
	lh      $a1, 0x0014($t7)
	jal     map_data_8038283C
	lh      $a2, 0x001A($t7)
	sh      $v0, 0x002C($sp)
	lw      $t8, 0x0038($sp)
	lh      $a0, 0x000A($t8)
	lh      $a1, 0x0010($t8)
	jal     map_data_8038289C
	lh      $a2, 0x0016($t8)
	sh      $v0, 0x002A($sp)
	lw      $t9, 0x0038($sp)
	lh      $a0, 0x000E($t9)
	lh      $a1, 0x0014($t9)
	jal     map_data_8038289C
	lh      $a2, 0x001A($t9)
	sh      $v0, 0x0028($sp)
	jal     map_data_803828FC
	lh      $a0, 0x002E($sp)
	sh      $v0, 0x0026($sp)
	jal     map_data_80382990
	lh      $a0, 0x002A($sp)
	sh      $v0, 0x0022($sp)
	jal     map_data_803828FC
	lh      $a0, 0x002C($sp)
	sh      $v0, 0x0024($sp)
	jal     map_data_80382990
	lh      $a0, 0x0028($sp)
	sh      $v0, 0x0020($sp)
	lh      $t0, 0x0024($sp)
	lh      $t1, 0x0020($sp)
	sh      $t0, 0x001E($sp)
	slt     $at, $t1, $t0
	bnez    $at, .L80382B54
	nop
.L80382AE8:
	lh      $t2, 0x0026($sp)
	lh      $t3, 0x0022($sp)
	sh      $t2, 0x001C($sp)
	slt     $at, $t3, $t2
	bnez    $at, .L80382B34
	nop
.L80382B00:
	lw      $a0, 0x003C($sp)
	lh      $a1, 0x001C($sp)
	lh      $a2, 0x001E($sp)
	jal     map_data_803825FC
	lw      $a3, 0x0038($sp)
	lh      $t4, 0x001C($sp)
	lh      $t8, 0x0022($sp)
	addiu   $t5, $t4, 0x0001
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	slt     $at, $t8, $t7
	beqz    $at, .L80382B00
	sh      $t5, 0x001C($sp)
.L80382B34:
	lh      $t9, 0x001E($sp)
	lh      $t3, 0x0020($sp)
	addiu   $t0, $t9, 0x0001
	sll     $t1, $t0, 16
	sra     $t2, $t1, 16
	slt     $at, $t3, $t2
	beqz    $at, .L80382AE8
	sh      $t0, 0x001E($sp)
.L80382B54:
	b       .L80382B5C
	nop
.L80382B5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

map_data_80382B6C:
	jr      $ra
	nop
	jr      $ra
	nop

map_data_80382B7C:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0080($sp)
	sw      $a1, 0x0084($sp)
	sw      $s7, 0x0030($sp)
	sw      $s6, 0x002C($sp)
	sw      $s5, 0x0028($sp)
	sw      $s4, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s2, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lw      $t6, 0x0084($sp)
	lw      $t7, 0x0000($t6)
	lh      $t8, 0x0000($t7)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sh      $t9, 0x003E($sp)
	lw      $t0, 0x0084($sp)
	lw      $t1, 0x0000($t0)
	lh      $t2, 0x0002($t1)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sh      $t3, 0x003C($sp)
	lw      $t4, 0x0084($sp)
	lw      $t5, 0x0000($t4)
	lh      $t6, 0x0004($t5)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sh      $t7, 0x003A($sp)
	lh      $t9, 0x003E($sp)
	lw      $t8, 0x0080($sp)
	sll     $t0, $t9, 1
	addu    $t1, $t8, $t0
	lh      $s0, 0x0000($t1)
	lh      $t3, 0x003E($sp)
	lw      $t2, 0x0080($sp)
	sll     $t4, $t3, 1
	addu    $t5, $t2, $t4
	lh      $s1, 0x0002($t5)
	lh      $t7, 0x003E($sp)
	lw      $t6, 0x0080($sp)
	sll     $t9, $t7, 1
	addu    $t8, $t6, $t9
	lh      $s2, 0x0004($t8)
	lh      $t1, 0x003C($sp)
	lw      $t0, 0x0080($sp)
	sll     $t3, $t1, 1
	addu    $t2, $t0, $t3
	lh      $s3, 0x0000($t2)
	lh      $t5, 0x003C($sp)
	lw      $t4, 0x0080($sp)
	sll     $t7, $t5, 1
	addu    $t6, $t4, $t7
	lh      $s4, 0x0002($t6)
	lh      $t8, 0x003C($sp)
	lw      $t9, 0x0080($sp)
	sll     $t1, $t8, 1
	addu    $t0, $t9, $t1
	lh      $s5, 0x0004($t0)
	lh      $t2, 0x003A($sp)
	lw      $t3, 0x0080($sp)
	sll     $t5, $t2, 1
	addu    $t4, $t3, $t5
	lh      $s6, 0x0000($t4)
	lh      $t6, 0x003A($sp)
	lw      $t7, 0x0080($sp)
	sll     $t8, $t6, 1
	addu    $t9, $t7, $t8
	lh      $s7, 0x0002($t9)
	lh      $t0, 0x003A($sp)
	lw      $t1, 0x0080($sp)
	sll     $t2, $t0, 1
	addu    $t3, $t1, $t2
	lh      $t5, 0x0004($t3)
	sw      $t5, 0x0058($sp)
	lw      $t6, 0x0058($sp)
	subu    $t4, $s4, $s1
	subu    $t9, $s5, $s2
	subu    $t7, $t6, $s5
	multu   $t4, $t7
	subu    $t0, $s7, $s4
	mflo    $t8
	nop
	nop
	multu   $t9, $t0
	mflo    $t1
	subu    $t2, $t8, $t1
	mtc1    $t2, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x004C($sp)
	subu    $t3, $s5, $s2
	subu    $t5, $s6, $s3
	multu   $t3, $t5
	lw      $t7, 0x0058($sp)
	subu    $t4, $s3, $s0
	subu    $t9, $t7, $s5
	mflo    $t6
	nop
	nop
	multu   $t4, $t9
	mflo    $t0
	subu    $t8, $t6, $t0
	mtc1    $t8, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0048($sp)
	subu    $t1, $s3, $s0
	subu    $t2, $s7, $s4
	multu   $t1, $t2
	subu    $t5, $s4, $s1
	subu    $t7, $s6, $s3
	mflo    $t3
	nop
	nop
	multu   $t5, $t7
	mflo    $t4
	subu    $t9, $t3, $t4
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0044($sp)
	lwc1    $f4, 0x004C($sp)
	lwc1    $f8, 0x0048($sp)
	lwc1    $f18, 0x0044($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	add.s   $f16, $f6, $f10
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	swc1    $f0, 0x0040($sp)
	sw      $s1, 0x0050($sp)
	lw      $t6, 0x0050($sp)
	slt     $at, $s4, $t6
	beqz    $at, .L80382DAC
	nop
	sw      $s4, 0x0050($sp)
.L80382DAC:
	lw      $t0, 0x0050($sp)
	slt     $at, $s7, $t0
	beqz    $at, .L80382DC0
	nop
	sw      $s7, 0x0050($sp)
.L80382DC0:
	sw      $s1, 0x0054($sp)
	lw      $t8, 0x0054($sp)
	slt     $at, $t8, $s4
	beqz    $at, .L80382DD8
	nop
	sw      $s4, 0x0054($sp)
.L80382DD8:
	lw      $t1, 0x0054($sp)
	slt     $at, $t1, $s7
	beqz    $at, .L80382DEC
	nop
	sw      $s7, 0x0054($sp)
.L80382DEC:
	lwc1    $f8, 0x0040($sp)
	lui     $at, %hi(map_data_8038BBD0)
	ldc1    $f10, %lo(map_data_8038BBD0)($at)
	cvt.d.s $f6, $f8
	c.lt.d  $f6, $f10
	nop
	bc1f    .L80382E14
	nop
	b       .L80382F58
	move    $v0, $0
.L80382E14:
	lwc1    $f16, 0x0040($sp)
	li      $at, 0x3FF00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f4, $f16
	div.d   $f8, $f18, $f4
	cvt.s.d $f6, $f8
	swc1    $f6, 0x0040($sp)
	lwc1    $f10, 0x004C($sp)
	lwc1    $f16, 0x0040($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x004C($sp)
	lwc1    $f4, 0x0048($sp)
	lwc1    $f8, 0x0040($sp)
	mul.s   $f6, $f4, $f8
	swc1    $f6, 0x0048($sp)
	lwc1    $f10, 0x0044($sp)
	lwc1    $f16, 0x0040($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0044($sp)
	jal     map_data_803824F8
	nop
	sw      $v0, 0x007C($sp)
	lw      $t2, 0x007C($sp)
	sh      $s0, 0x000A($t2)
	lw      $t5, 0x007C($sp)
	sh      $s3, 0x0010($t5)
	lw      $t7, 0x007C($sp)
	sh      $s6, 0x0016($t7)
	lw      $t3, 0x007C($sp)
	sh      $s1, 0x000C($t3)
	lw      $t4, 0x007C($sp)
	sh      $s4, 0x0012($t4)
	lw      $t9, 0x007C($sp)
	sh      $s7, 0x0018($t9)
	lw      $t6, 0x007C($sp)
	sh      $s2, 0x000E($t6)
	lw      $t0, 0x007C($sp)
	sh      $s5, 0x0014($t0)
	lw      $t8, 0x0058($sp)
	lw      $t1, 0x007C($sp)
	sh      $t8, 0x001A($t1)
	lwc1    $f4, 0x004C($sp)
	lw      $t2, 0x007C($sp)
	swc1    $f4, 0x001C($t2)
	lwc1    $f8, 0x0048($sp)
	lw      $t5, 0x007C($sp)
	swc1    $f8, 0x0020($t5)
	lwc1    $f6, 0x0044($sp)
	lw      $t7, 0x007C($sp)
	swc1    $f6, 0x0024($t7)
	mtc1    $s0, $f10
	mtc1    $s1, $f6
	lwc1    $f18, 0x004C($sp)
	cvt.s.w $f16, $f10
	lwc1    $f8, 0x0048($sp)
	lw      $t3, 0x007C($sp)
	cvt.s.w $f10, $f6
	mul.s   $f4, $f16, $f18
	lwc1    $f6, 0x0044($sp)
	mul.s   $f16, $f8, $f10
	mtc1    $s2, $f8
	nop
	cvt.s.w $f10, $f8
	add.s   $f18, $f4, $f16
	mul.s   $f4, $f6, $f10
	add.s   $f16, $f18, $f4
	neg.s   $f8, $f16
	swc1    $f8, 0x0028($t3)
	lw      $t4, 0x0050($sp)
	lw      $t6, 0x007C($sp)
	addiu   $t9, $t4, -0x0005
	sh      $t9, 0x0006($t6)
	lw      $t0, 0x0054($sp)
	lw      $t1, 0x007C($sp)
	addiu   $t8, $t0, 0x0005
	sh      $t8, 0x0008($t1)
	b       .L80382F58
	lw      $v0, 0x007C($sp)
	b       .L80382F58
	nop
.L80382F58:
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
	addiu   $sp, $sp, 0x0080

map_data_80382F84:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	addiu   $t6, $a0, -0x0004
	sltiu   $at, $t6, 0x002A
	beqz    $at, L80382FCC
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(map_data_8038BBD8)
	addu    $at, $at, $t6
	lw      $t6, %lo(map_data_8038BBD8)($at)
	jr      $t6
	nop
.globl L80382FBC
L80382FBC:
	li      $t7, 0x0001
	sw      $t7, 0x0004($sp)
	b       .L80382FD4
	nop
.globl L80382FCC
L80382FCC:
	b       .L80382FD4
	nop
.L80382FD4:
	b       .L80382FE4
	lw      $v0, 0x0004($sp)
	b       .L80382FE4
	nop
.L80382FE4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

map_data_80382FEC:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	move    $a1, $a0
	li      $at, 0x0076
	beq     $a1, $at, .L80383038
	nop
	li      $at, 0x0077
	beq     $a1, $at, .L80383038
	nop
	li      $at, 0x0078
	beq     $a1, $at, .L80383038
	nop
	li      $at, 0x007A
	beq     $a1, $at, .L80383038
	nop
	b       .L80383048
	nop
.L80383038:
	li      $t6, 0x0002
	sw      $t6, 0x0004($sp)
	b       .L80383050
	nop
.L80383048:
	b       .L80383050
	nop
.L80383050:
	b       .L80383060
	lw      $v0, 0x0004($sp)
	b       .L80383060
	nop
.L80383060:
	jr      $ra
	addiu   $sp, $sp, 0x0008

map_data_80383068:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sb      $0, 0x0023($sp)
	jal     map_data_80382F84
	lh      $a0, 0x003A($sp)
	sh      $v0, 0x0020($sp)
	jal     map_data_80382FEC
	lh      $a0, 0x003A($sp)
	sh      $v0, 0x001E($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0000($t6)
	lh      $t8, 0x0000($t7)
	sw      $t8, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	lw      $t0, 0x0000($t9)
	addiu   $t1, $t0, 0x0002
	sw      $t1, 0x0000($t9)
	lw      $t2, 0x0028($sp)
	sw      $0, 0x002C($sp)
	blez    $t2, .L803831B8
	nop
.L803830CC:
	lw      $t3, 0x003C($sp)
	lw      $t4, 0x0000($t3)
	beqz    $t4, .L803830FC
	nop
	lw      $t5, 0x003C($sp)
	lw      $t6, 0x0000($t5)
	lb      $t7, 0x0000($t6)
	sb      $t7, 0x0023($sp)
	lw      $t8, 0x003C($sp)
	lw      $t0, 0x0000($t8)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0000($t8)
.L803830FC:
	lw      $a0, 0x0034($sp)
	jal     map_data_80382B7C
	lw      $a1, 0x0030($sp)
	sw      $v0, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	beqz    $t9, .L80383174
	nop
	lb      $t2, 0x0023($sp)
	lw      $t3, 0x0024($sp)
	sb      $t2, 0x0005($t3)
	lh      $t4, 0x003A($sp)
	lw      $t5, 0x0024($sp)
	sh      $t4, 0x0000($t5)
	lh      $t6, 0x001E($sp)
	lw      $t7, 0x0024($sp)
	sb      $t6, 0x0004($t7)
	lh      $t0, 0x0020($sp)
	beqz    $t0, .L80383160
	nop
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0024($sp)
	lw      $t8, 0x0000($t1)
	lh      $t9, 0x0006($t8)
	b       .L80383168
	sh      $t9, 0x0002($t2)
.L80383160:
	lw      $t3, 0x0024($sp)
	sh      $0, 0x0002($t3)
.L80383168:
	lw      $a0, 0x0024($sp)
	jal     map_data_80382A2C
	move    $a1, $0
.L80383174:
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0000($t4)
	addiu   $t6, $t5, 0x0006
	sw      $t6, 0x0000($t4)
	lh      $t7, 0x0020($sp)
	beqz    $t7, .L803831A0
	nop
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0000($t0)
	addiu   $t8, $t1, 0x0002
	sw      $t8, 0x0000($t0)
.L803831A0:
	lw      $t9, 0x002C($sp)
	lw      $t3, 0x0028($sp)
	addiu   $t2, $t9, 0x0001
	slt     $at, $t2, $t3
	bnez    $at, .L803830CC
	sw      $t2, 0x002C($sp)
.L803831B8:
	b       .L803831C0
	nop
.L803831C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

map_data_803831D0:
	addiu   $sp, $sp, -0x0018
	lw      $t6, 0x0000($a0)
	lh      $t7, 0x0000($t6)
	sw      $t7, 0x0014($sp)
	lw      $t8, 0x0000($a0)
	addiu   $t9, $t8, 0x0002
	sw      $t9, 0x0000($a0)
	lw      $t0, 0x0000($a0)
	sw      $t0, 0x0000($sp)
	lw      $t2, 0x0014($sp)
	lw      $t1, 0x0000($a0)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t4, $t3, 1
	addu    $t5, $t1, $t4
	sw      $t5, 0x0000($a0)
	b       .L80383220
	lw      $v0, 0x0000($sp)
	b       .L80383220
	nop
.L80383220:
	jr      $ra
	addiu   $sp, $sp, 0x0018

map_data_80383228:
	addiu   $sp, $sp, -0x0018
	lw      $t6, 0x0000($a0)
	lui     $at, %hi(object_80361184)
	sw      $t6, %lo(object_80361184)($at)
	lw      $t7, 0x0000($a0)
	lh      $t8, 0x0000($t7)
	sw      $t8, 0x0014($sp)
	lw      $t9, 0x0000($a0)
	addiu   $t0, $t9, 0x0002
	sw      $t0, 0x0000($a0)
	lw      $t1, 0x0014($sp)
	slti    $at, $t1, 0x0015
	bnez    $at, .L80383260
	nop
.L80383260:
	lw      $t2, 0x0014($sp)
	sw      $0, 0x0010($sp)
	blez    $t2, .L80383330
	nop
.L80383270:
	lw      $t3, 0x0000($a0)
	lh      $t4, 0x0000($t3)
	sh      $t4, 0x000E($sp)
	lw      $t5, 0x0000($a0)
	addiu   $t6, $t5, 0x0002
	sw      $t6, 0x0000($a0)
	lw      $t7, 0x0000($a0)
	lh      $t8, 0x0000($t7)
	sh      $t8, 0x000C($sp)
	lw      $t9, 0x0000($a0)
	addiu   $t0, $t9, 0x0002
	sw      $t0, 0x0000($a0)
	lw      $t1, 0x0000($a0)
	lh      $t2, 0x0000($t1)
	sh      $t2, 0x0008($sp)
	lw      $t3, 0x0000($a0)
	addiu   $t4, $t3, 0x0002
	sw      $t4, 0x0000($a0)
	lw      $t5, 0x0000($a0)
	lh      $t6, 0x0000($t5)
	sh      $t6, 0x000A($sp)
	lw      $t7, 0x0000($a0)
	addiu   $t8, $t7, 0x0002
	sw      $t8, 0x0000($a0)
	lw      $t9, 0x0000($a0)
	lh      $t0, 0x0000($t9)
	sh      $t0, 0x0006($sp)
	lw      $t1, 0x0000($a0)
	addiu   $t2, $t1, 0x0002
	sw      $t2, 0x0000($a0)
	lw      $t3, 0x0000($a0)
	lh      $t4, 0x0000($t3)
	sh      $t4, 0x0004($sp)
	lw      $t5, 0x0000($a0)
	addiu   $t6, $t5, 0x0002
	sw      $t6, 0x0000($a0)
	lw      $t8, 0x0010($sp)
	lh      $t7, 0x0004($sp)
	lui     $at, %hi(object_80361188)
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	sw      $t7, %lo(object_80361188)($at)
	lw      $t0, 0x0010($sp)
	lw      $t2, 0x0014($sp)
	addiu   $t1, $t0, 0x0001
	slt     $at, $t1, $t2
	bnez    $at, .L80383270
	sw      $t1, 0x0010($sp)
.L80383330:
	b       .L80383338
	nop
.L80383338:
	jr      $ra
	addiu   $sp, $sp, 0x0018

.globl map_data_80383340
map_data_80383340:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $t6, 0x08FC
	lui     $at, %hi(map_data_8038EEA0)
	sh      $t6, %lo(map_data_8038EEA0)($at)
	li      $a0, 0xDAC0
	jal     mem_alloc
	move    $a1, $0
	lui     $at, %hi(map_data_8038EE98)
	sw      $v0, %lo(map_data_8038EE98)($at)
	lui     $a0, %hi(map_data_8038EEA0)
	lh      $a0, %lo(map_data_8038EEA0)($a0)
	move    $a1, $0
	sll     $t7, $a0, 2
	subu    $t7, $t7, $a0
	sll     $t7, $t7, 4
	jal     mem_alloc
	move    $a0, $t7
	lui     $at, %hi(map_data_8038EE9C)
	sw      $v0, %lo(map_data_8038EE9C)($at)
	lui     $at, %hi(object_8036125C)
	sh      $0, %lo(object_8036125C)($at)
	jal     message_802DB350
	nop
	b       .L803833A8
	nop
.L803833A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void map_data_803833B8(
	SHORT scene,
	MAP_DATA *map_data,
	AREA_DATA *area_data,
	OBJ_DATA *obj_data
) */
.globl map_data_803833B8
map_data_803833B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lui     $at, %hi(object_80361184)
	sw      $0, %lo(object_80361184)($at)
	lui     $at, %hi(map_data_8038BE90)
	sw      $0, %lo(map_data_8038BE90)($at)
	lui     $at, %hi(object_8036116C)
	sw      $0, %lo(object_8036116C)($at)
	lui     $at, %hi(object_80361170)
	sw      $0, %lo(object_80361170)($at)
	jal     map_data_803825D0
	nop
.L803833F8:
	lw      $t6, 0x002C($sp)
	lh      $t7, 0x0000($t6)
	sh      $t7, 0x0026($sp)
	lw      $t8, 0x002C($sp)
	addiu   $t9, $t8, 0x0002
	sw      $t9, 0x002C($sp)
	lh      $t0, 0x0026($sp)
	slti    $at, $t0, 0x0040
	beqz    $at, .L8038343C
	nop
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0020($sp)
	lh      $a2, 0x0026($sp)
	jal     map_data_80383068
	addiu   $a3, $sp, 0x0030
	b       .L8038350C
	nop
.L8038343C:
	lh      $t1, 0x0026($sp)
	li      $at, 0x0040
	bne     $t1, $at, .L8038345C
	nop
	jal     map_data_803831D0
	addiu   $a0, $sp, 0x002C
	b       .L8038350C
	sw      $v0, 0x0020($sp)
.L8038345C:
	lh      $t2, 0x0026($sp)
	li      $at, 0x0043
	bne     $t2, $at, .L80383480
	nop
	lh      $a0, 0x002A($sp)
	jal     map_obj_main
	addiu   $a1, $sp, 0x002C
	b       .L8038350C
	nop
.L80383480:
	lh      $t3, 0x0026($sp)
	li      $at, 0x0044
	bne     $t3, $at, .L803834A0
	nop
	jal     map_data_80383228
	addiu   $a0, $sp, 0x002C
	b       .L8038350C
	nop
.L803834A0:
	lh      $t4, 0x0026($sp)
	li      $at, 0x0041
	bne     $t4, $at, .L803834C0
	nop
	b       .L8038350C
	nop
	b       .L8038350C
	nop
.L803834C0:
	lh      $t5, 0x0026($sp)
	li      $at, 0x0042
	bne     $t5, $at, .L803834E0
	nop
	b       .L80383514
	nop
	b       .L8038350C
	nop
.L803834E0:
	lh      $t6, 0x0026($sp)
	slti    $at, $t6, 0x0065
	bnez    $at, .L8038350C
	nop
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0020($sp)
	lh      $a2, 0x0026($sp)
	jal     map_data_80383068
	addiu   $a3, $sp, 0x0030
	b       .L8038350C
	nop
.L8038350C:
	b       .L803833F8
	nop
.L80383514:
	lw      $t7, 0x0034($sp)
	beqz    $t7, .L8038356C
	nop
	lh      $t8, 0x0000($t7)
	li      $at, -0x0001
	beq     $t8, $at, .L8038356C
	nop
	lw      $t9, 0x0034($sp)
	lh      $t0, 0x0000($t9)
	bltz    $t0, .L80383560
	nop
	slti    $at, $t0, 0x001E
	beqz    $at, .L80383560
	nop
	lh      $a0, 0x002A($sp)
	jal     obj_data_main
	lw      $a1, 0x0034($sp)
	b       .L8038356C
	nop
.L80383560:
	lh      $a0, 0x002A($sp)
	jal     prg_obj_main
	lw      $a1, 0x0034($sp)
.L8038356C:
	lui     $t1, %hi(object_8036116C)
	lw      $t1, %lo(object_8036116C)($t1)
	lui     $at, %hi(object_80361174)
	sw      $t1, %lo(object_80361174)($at)
	lui     $t2, %hi(object_80361170)
	lw      $t2, %lo(object_80361170)($t2)
	lui     $at, %hi(object_80361178)
	sw      $t2, %lo(object_80361178)($at)
	b       .L80383594
	nop
.L80383594:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl map_data_803835A4
map_data_803835A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_8033D480)
	lw      $t6, %lo(object_8033D480)($t6)
	andi    $t7, $t6, 0x0040
	bnez    $t7, .L803835EC
	nop
	lui     $t8, %hi(object_80361178)
	lw      $t8, %lo(object_80361178)($t8)
	lui     $at, %hi(object_80361170)
	sw      $t8, %lo(object_80361170)($at)
	lui     $t9, %hi(object_80361174)
	lw      $t9, %lo(object_80361174)($t9)
	lui     $at, %hi(object_8036116C)
	sw      $t9, %lo(object_8036116C)($at)
	la.u    $a0, map_data_8038D698
	jal     map_data_80382590
	la.l    $a0, map_data_8038D698
.L803835EC:
	b       .L803835F4
	nop
.L803835F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

map_data_80383604:
	jr      $ra
	nop
	jr      $ra
	nop

map_data_80383614:
	addiu   $sp, $sp, -0x00A0
	sw      $ra, 0x003C($sp)
	sw      $a0, 0x00A0($sp)
	sw      $a1, 0x00A4($sp)
	sw      $s2, 0x0038($sp)
	sw      $s1, 0x0034($sp)
	sw      $s0, 0x0030($sp)
	sdc1    $f24, 0x0028($sp)
	sdc1    $f22, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t7, $t6, 0x021C
	sw      $t7, 0x0088($sp)
	lw      $t8, 0x00A0($sp)
	lw      $t9, 0x0000($t8)
	lh      $s1, 0x0000($t9)
	lw      $t0, 0x00A0($sp)
	lw      $t1, 0x0000($t0)
	addiu   $t2, $t1, 0x0002
	sw      $t2, 0x0000($t0)
	lw      $t3, 0x00A0($sp)
	lw      $s0, 0x0000($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0050($t4)
	bnez    $t5, .L803836A8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0088($sp)
	sw      $t6, 0x0050($t7)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0006
	jal     obj_lib_802A2930
	li      $a2, 0x0012
.L803836A8:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x0048
	jal     obj_lib_8029DDA8
	lw      $a2, 0x0088($sp)
	move    $s2, $s1
	beqz    $s2, .L803837F4
	addiu   $s1, $s1, -0x0001
.L803836C8:
	lh      $t8, 0x0000($s0)
	addiu   $s0, $s0, 0x0002
	mtc1    $t8, $f4
	nop
	cvt.s.w $f20, $f4
	lh      $t9, 0x0000($s0)
	addiu   $s0, $s0, 0x0002
	mtc1    $t9, $f6
	nop
	cvt.s.w $f22, $f6
	lh      $t1, 0x0000($s0)
	addiu   $s0, $s0, 0x0002
	mtc1    $t1, $f8
	nop
	cvt.s.w $f24, $f8
	addiu   $t2, $sp, 0x0048
	lwc1    $f10, 0x0000($t2)
	lwc1    $f18, 0x0010($t2)
	lwc1    $f8, 0x0020($t2)
	mul.s   $f16, $f20, $f10
	lw      $t4, 0x00A4($sp)
	mul.s   $f4, $f22, $f18
	add.s   $f6, $f16, $f4
	mul.s   $f10, $f24, $f8
	lwc1    $f16, 0x0030($t2)
	add.s   $f18, $f6, $f10
	add.s   $f4, $f16, $f18
	trunc.w.s $f8, $f4
	mfc1    $t3, $f8
	nop
	sh      $t3, 0x0000($t4)
	lw      $t5, 0x00A4($sp)
	addiu   $t6, $t5, 0x0002
	sw      $t6, 0x00A4($sp)
	addiu   $t7, $sp, 0x0048
	lwc1    $f6, 0x0004($t7)
	lwc1    $f16, 0x0014($t7)
	lwc1    $f8, 0x0024($t7)
	mul.s   $f10, $f20, $f6
	lw      $t1, 0x00A4($sp)
	mul.s   $f18, $f22, $f16
	add.s   $f4, $f10, $f18
	mul.s   $f6, $f24, $f8
	lwc1    $f10, 0x0034($t7)
	add.s   $f16, $f4, $f6
	add.s   $f18, $f10, $f16
	trunc.w.s $f8, $f18
	mfc1    $t9, $f8
	nop
	sh      $t9, 0x0000($t1)
	lw      $t2, 0x00A4($sp)
	addiu   $t0, $t2, 0x0002
	sw      $t0, 0x00A4($sp)
	addiu   $t3, $sp, 0x0048
	lwc1    $f4, 0x0008($t3)
	lwc1    $f10, 0x0018($t3)
	lwc1    $f8, 0x0028($t3)
	mul.s   $f6, $f20, $f4
	lw      $t6, 0x00A4($sp)
	mul.s   $f16, $f22, $f10
	add.s   $f18, $f6, $f16
	mul.s   $f4, $f24, $f8
	lwc1    $f6, 0x0038($t3)
	add.s   $f10, $f18, $f4
	add.s   $f16, $f6, $f10
	trunc.w.s $f8, $f16
	mfc1    $t5, $f8
	nop
	sh      $t5, 0x0000($t6)
	lw      $t7, 0x00A4($sp)
	addiu   $t8, $t7, 0x0002
	sw      $t8, 0x00A4($sp)
	move    $s2, $s1
	bnez    $s2, .L803836C8
	addiu   $s1, $s1, -0x0001
.L803837F4:
	lw      $t9, 0x00A0($sp)
	sw      $s0, 0x0000($t9)
	b       .L80383804
	nop
.L80383804:
	lw      $ra, 0x003C($sp)
	ldc1    $f20, 0x0018($sp)
	ldc1    $f22, 0x0020($sp)
	ldc1    $f24, 0x0028($sp)
	lw      $s0, 0x0030($sp)
	lw      $s1, 0x0034($sp)
	lw      $s2, 0x0038($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00A0

map_data_80383828:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0000($t6)
	lh      $t8, 0x0000($t7)
	sw      $t8, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	lw      $t0, 0x0000($t9)
	addiu   $t1, $t0, 0x0002
	sw      $t1, 0x0000($t9)
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0000($t2)
	lh      $t4, 0x0000($t3)
	sw      $t4, 0x0024($sp)
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0000($t5)
	addiu   $t7, $t6, 0x0002
	sw      $t7, 0x0000($t5)
	jal     map_data_80382F84
	lw      $a0, 0x002C($sp)
	sh      $v0, 0x0022($sp)
	jal     map_data_80382FEC
	lw      $a0, 0x002C($sp)
	sh      $v0, 0x0020($sp)
	lh      $t8, 0x0020($sp)
	ori     $t0, $t8, 0x0001
	sh      $t0, 0x0020($sp)
	la.u    $a0, o_13001C34
	jal     segment_to_virtual
	la.l    $a0, o_13001C34
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t9, 0x020C($t1)
	bne     $v0, $t9, .L803838C8
	nop
	li      $t2, 0x0005
	b       .L803838CC
	sh      $t2, 0x001E($sp)
.L803838C8:
	sh      $0, 0x001E($sp)
.L803838CC:
	lw      $t3, 0x0024($sp)
	sw      $0, 0x0028($sp)
	blez    $t3, .L803839B4
	nop
.L803838DC:
	lw      $a0, 0x0034($sp)
	jal     map_data_80382B7C
	lw      $a1, 0x0030($sp)
	sw      $v0, 0x0018($sp)
	lw      $t4, 0x0018($sp)
	beqz    $t4, .L8038396C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0018($sp)
	sw      $t6, 0x002C($t7)
	lw      $t5, 0x002C($sp)
	lw      $t8, 0x0018($sp)
	sh      $t5, 0x0000($t8)
	lh      $t0, 0x0022($sp)
	beqz    $t0, .L80383938
	nop
	lw      $t1, 0x0030($sp)
	lw      $t3, 0x0018($sp)
	lw      $t9, 0x0000($t1)
	lh      $t2, 0x0006($t9)
	b       .L80383940
	sh      $t2, 0x0002($t3)
.L80383938:
	lw      $t4, 0x0018($sp)
	sh      $0, 0x0002($t4)
.L80383940:
	lw      $t6, 0x0018($sp)
	lh      $t5, 0x0020($sp)
	lb      $t7, 0x0004($t6)
	or      $t8, $t7, $t5
	sb      $t8, 0x0004($t6)
	lh      $t0, 0x001E($sp)
	lw      $t1, 0x0018($sp)
	sb      $t0, 0x0005($t1)
	lw      $a0, 0x0018($sp)
	jal     map_data_80382A2C
	li      $a1, 0x0001
.L8038396C:
	lh      $t9, 0x0022($sp)
	beqz    $t9, .L8038398C
	nop
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0000($t2)
	addiu   $t4, $t3, 0x0008
	b       .L8038399C
	sw      $t4, 0x0000($t2)
.L8038398C:
	lw      $t7, 0x0030($sp)
	lw      $t5, 0x0000($t7)
	addiu   $t8, $t5, 0x0006
	sw      $t8, 0x0000($t7)
.L8038399C:
	lw      $t6, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	addiu   $t0, $t6, 0x0001
	slt     $at, $t0, $t1
	bnez    $at, .L803838DC
	sw      $t0, 0x0028($sp)
.L803839B4:
	b       .L803839BC
	nop
.L803839BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl map_data_803839CC
map_data_803839CC:
	addiu   $sp, $sp, -0x04D8
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0218($t6)
	sw      $t7, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x015C($t8)
	swc1    $f4, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x0194($t9)
	swc1    $f6, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(map_data_8038BC80)
	lwc1    $f10, %lo(map_data_8038BC80)($at)
	lwc1    $f8, 0x015C($t0)
	c.eq.s  $f8, $f10
	nop
	bc1f    .L80383A40
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(obj_mario)
	lw      $a1, %lo(obj_mario)($a1)
	jal     obj_lib_8029E2F8
	lw      $a0, %lo(object)($a0)
	swc1    $f0, 0x001C($sp)
.L80383A40:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x457A0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0194($t1)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80383A74
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x0194($t2)
	swc1    $f4, 0x019C($t2)
.L80383A74:
	lui     $t3, %hi(object_8033D480)
	lw      $t3, %lo(object_8033D480)($t3)
	andi    $t4, $t3, 0x0040
	bnez    $t4, .L80383B04
	nop
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0018($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80383B04
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x0074($t5)
	andi    $t7, $t6, 0x0008
	bnez    $t7, .L80383B04
	nop
	lw      $t8, 0x0020($sp)
	addiu   $t9, $t8, 0x0002
	sw      $t9, 0x0020($sp)
	addiu   $a0, $sp, 0x0020
	jal     map_data_80383614
	addiu   $a1, $sp, 0x0024
	lw      $t0, 0x0020($sp)
	li      $at, 0x0041
	lh      $t1, 0x0000($t0)
	beq     $t1, $at, .L80383B04
	nop
.L80383AE4:
	addiu   $a0, $sp, 0x0020
	jal     map_data_80383828
	addiu   $a1, $sp, 0x0024
	lw      $t2, 0x0020($sp)
	li      $at, 0x0041
	lh      $t3, 0x0000($t2)
	bne     $t3, $at, .L80383AE4
	nop
.L80383B04:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x019C($t4)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80383B3C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x0002($t5)
	ori     $t7, $t6, 0x0001
	b       .L80383B54
	sh      $t7, 0x0002($t5)
.L80383B3C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0002
	lh      $t9, 0x0002($t8)
	and     $t0, $t9, $at
	sh      $t0, 0x0002($t8)
.L80383B54:
	b       .L80383B5C
	nop
.L80383B5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x04D8
	jr      $ra
	nop

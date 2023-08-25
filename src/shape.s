.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

shape_8037B220:
	sh      $a1, 0x0000($a0)
	li      $t6, 0x0001
	sh      $t6, 0x0002($a0)
	sw      $a0, 0x0004($a0)
	sw      $a0, 0x0008($a0)
	sw      $0, 0x000C($a0)
	sw      $0, 0x0010($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl shape_8037B24C
shape_8037B24C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B280
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0024
	sw      $v0, 0x001C($sp)
.L8037B280:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B2EC
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0001
	lh      $t8, 0x0022($sp)
	lw      $t9, 0x001C($sp)
	sb      $t8, 0x0014($t9)
	lw      $t0, 0x001C($sp)
	sb      $0, 0x0015($t0)
	lh      $t1, 0x0026($sp)
	lw      $t2, 0x001C($sp)
	sh      $t1, 0x0016($t2)
	lh      $t3, 0x002A($sp)
	lw      $t4, 0x001C($sp)
	sh      $t3, 0x0018($t4)
	lh      $t5, 0x002E($sp)
	lw      $t6, 0x001C($sp)
	sh      $t5, 0x001A($t6)
	lh      $t7, 0x0032($sp)
	lw      $t8, 0x001C($sp)
	sh      $t7, 0x001C($t8)
	lw      $t9, 0x001C($sp)
	sw      $0, 0x0020($t9)
	lw      $t0, 0x001C($sp)
	sh      $0, 0x001E($t0)
.L8037B2EC:
	b       .L8037B2FC
	lw      $v0, 0x001C($sp)
	b       .L8037B2FC
	nop
.L8037B2FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B30C
shape_8037B30C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B33C
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0018
	sw      $v0, 0x001C($sp)
.L8037B33C:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B360
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0002
	lwc1    $f4, 0x0020($sp)
	lw      $t8, 0x001C($sp)
	swc1    $f4, 0x0014($t8)
.L8037B360:
	b       .L8037B370
	lw      $v0, 0x001C($sp)
	b       .L8037B370
	nop
.L8037B370:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B380
shape_8037B380:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B3B4
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0024
	sw      $v0, 0x001C($sp)
.L8037B3B4:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B428
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0103
	lwc1    $f4, 0x0020($sp)
	lw      $t8, 0x001C($sp)
	swc1    $f4, 0x001C($t8)
	lh      $t9, 0x0026($sp)
	lw      $t0, 0x001C($sp)
	sh      $t9, 0x0020($t0)
	lh      $t1, 0x002A($sp)
	lw      $t2, 0x001C($sp)
	sh      $t1, 0x0022($t2)
	lw      $t3, 0x002C($sp)
	lw      $t4, 0x001C($sp)
	sw      $t3, 0x0014($t4)
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x001C($sp)
	sw      $t5, 0x0018($t6)
	lw      $t7, 0x002C($sp)
	beqz    $t7, .L8037B428
	nop
	lw      $t9, 0x002C($sp)
	move    $a0, $0
	lw      $a1, 0x001C($sp)
	jalr    $t9
	lw      $a2, 0x0018($sp)
.L8037B428:
	b       .L8037B438
	lw      $v0, 0x001C($sp)
	b       .L8037B438
	nop
.L8037B438:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B448
shape_8037B448:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B474
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0014
	sw      $v0, 0x001C($sp)
.L8037B474:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B48C
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x000A
.L8037B48C:
	b       .L8037B49C
	lw      $v0, 0x001C($sp)
	b       .L8037B49C
	nop
.L8037B49C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B4AC
shape_8037B4AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B4DC
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0054
	sw      $v0, 0x001C($sp)
.L8037B4DC:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B510
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0004
	lh      $t8, 0x0022($sp)
	beqz    $t8, .L8037B510
	nop
	lw      $t9, 0x001C($sp)
	lh      $t0, 0x0002($t9)
	ori     $t1, $t0, 0x0008
	sh      $t1, 0x0002($t9)
.L8037B510:
	b       .L8037B520
	lw      $v0, 0x001C($sp)
	b       .L8037B520
	nop
.L8037B520:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B530
shape_8037B530:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B564
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0018
	sw      $v0, 0x001C($sp)
.L8037B564:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B594
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x000B
	lh      $t8, 0x0022($sp)
	lw      $t9, 0x001C($sp)
	sh      $t8, 0x0014($t9)
	lh      $t0, 0x0026($sp)
	lw      $t1, 0x001C($sp)
	sh      $t0, 0x0016($t1)
.L8037B594:
	b       .L8037B5A4
	lw      $v0, 0x001C($sp)
	b       .L8037B5A4
	nop
.L8037B5A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B5B4
shape_8037B5B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B5E8
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0020
	sw      $v0, 0x001C($sp)
.L8037B5E8:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B650
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x010C
	lh      $t8, 0x0022($sp)
	lw      $t9, 0x001C($sp)
	sh      $t8, 0x001C($t9)
	lh      $t0, 0x0026($sp)
	lw      $t1, 0x001C($sp)
	sh      $t0, 0x001E($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x001C($sp)
	sw      $t2, 0x0014($t3)
	lw      $t4, 0x002C($sp)
	lw      $t5, 0x001C($sp)
	sw      $t4, 0x0018($t5)
	lw      $t6, 0x0028($sp)
	beqz    $t6, .L8037B650
	nop
	lw      $t9, 0x0028($sp)
	move    $a0, $0
	lw      $a1, 0x001C($sp)
	jalr    $t9
	lw      $a2, 0x0018($sp)
.L8037B650:
	b       .L8037B660
	lw      $v0, 0x001C($sp)
	b       .L8037B660
	nop
.L8037B660:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B670
shape_8037B670:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B6A4
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x003C
	sw      $v0, 0x001C($sp)
.L8037B6A4:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B724
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0114
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0020($sp)
	jal     vecf_cpy
	addiu   $a0, $a0, 0x001C
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0024($sp)
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0028
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x001C($sp)
	sw      $t8, 0x0014($t9)
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x001C($sp)
	sw      $t0, 0x0018($t1)
	lw      $t2, 0x001C($sp)
	sh      $0, 0x0038($t2)
	lw      $t3, 0x001C($sp)
	sh      $0, 0x003A($t3)
	lw      $t4, 0x0028($sp)
	beqz    $t4, .L8037B724
	nop
	lw      $t9, 0x0028($sp)
	move    $a0, $0
	lw      $a1, 0x001C($sp)
	jalr    $t9
	lw      $a2, 0x0018($sp)
.L8037B724:
	b       .L8037B734
	lw      $v0, 0x001C($sp)
	b       .L8037B734
	nop
.L8037B734:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B744
shape_8037B744:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B778
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0024
	sw      $v0, 0x001C($sp)
.L8037B778:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B7D8
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0015
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0028($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x0018
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x002C($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x001E
	lw      $t0, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t3, $t9, $t2
	sh      $t3, 0x0002($t0)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	sw      $t4, 0x0014($t5)
.L8037B7D8:
	b       .L8037B7E8
	lw      $v0, 0x001C($sp)
	b       .L8037B7E8
	nop
.L8037B7E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B7F8
shape_8037B7F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B82C
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0020
	sw      $v0, 0x001C($sp)
.L8037B82C:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B87C
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0016
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0028($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x0018
	lw      $t0, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t3, $t9, $t2
	sh      $t3, 0x0002($t0)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	sw      $t4, 0x0014($t5)
.L8037B87C:
	b       .L8037B88C
	lw      $v0, 0x001C($sp)
	b       .L8037B88C
	nop
.L8037B88C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B89C
shape_8037B89C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B8D0
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0020
	sw      $v0, 0x001C($sp)
.L8037B8D0:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B920
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0017
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0028($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x0018
	lw      $t0, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t3, $t9, $t2
	sh      $t3, 0x0002($t0)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	sw      $t4, 0x0014($t5)
.L8037B920:
	b       .L8037B930
	lw      $v0, 0x001C($sp)
	b       .L8037B930
	nop
.L8037B930:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B940
shape_8037B940:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037B974
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x001C
	sw      $v0, 0x001C($sp)
.L8037B974:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037B9C0
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x001C
	lw      $t0, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t3, $t9, $t2
	sh      $t3, 0x0002($t0)
	lwc1    $f4, 0x0028($sp)
	lw      $t4, 0x001C($sp)
	swc1    $f4, 0x0018($t4)
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	sw      $t5, 0x0014($t6)
.L8037B9C0:
	b       .L8037B9D0
	lw      $v0, 0x001C($sp)
	b       .L8037B9D0
	nop
.L8037B9D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037B9E0
shape_8037B9E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037BA14
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0060
	sw      $v0, 0x001C($sp)
.L8037BA14:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037BAB4
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0018
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0024($sp)
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x002C($sp)
	jal     vecf_cpy
	addiu   $a0, $a0, 0x002C
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0028($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x001A
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x001C($sp)
	sw      $t8, 0x0014($t9)
	lw      $t0, 0x001C($sp)
	sw      $0, 0x0050($t0)
	lw      $t1, 0x001C($sp)
	sh      $0, 0x0038($t1)
	lw      $t2, 0x001C($sp)
	sw      $0, 0x003C($t2)
	lw      $t3, 0x001C($sp)
	sh      $0, 0x0040($t3)
	lw      $t4, 0x001C($sp)
	sw      $0, 0x0044($t4)
	lw      $t6, 0x001C($sp)
	li      $t5, 0x00010000
	sw      $t5, 0x0048($t6)
	lw      $t7, 0x001C($sp)
	sh      $0, 0x0042($t7)
	lw      $t8, 0x001C($sp)
	lh      $t9, 0x0002($t8)
	ori     $t0, $t9, 0x0020
	sh      $t0, 0x0002($t8)
.L8037BAB4:
	b       .L8037BAC4
	lw      $v0, 0x001C($sp)
	b       .L8037BAC4
	nop
.L8037BAC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037BAD4
shape_8037BAD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037BB04
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0018
	sw      $v0, 0x001C($sp)
.L8037BB04:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037BB28
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x002F
	lh      $t8, 0x0022($sp)
	lw      $t9, 0x001C($sp)
	sh      $t8, 0x0014($t9)
.L8037BB28:
	b       .L8037BB38
	lw      $v0, 0x001C($sp)
	b       .L8037BB38
	nop
.L8037BB38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037BB48
shape_8037BB48:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037BB7C
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0020
	sw      $v0, 0x001C($sp)
.L8037BB7C:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037BBCC
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0019
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0028($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x0018
	lw      $t0, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t3, $t9, $t2
	sh      $t3, 0x0002($t0)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	sw      $t4, 0x0014($t5)
.L8037BBCC:
	b       .L8037BBDC
	lw      $v0, 0x001C($sp)
	b       .L8037BBDC
	nop
.L8037BBDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037BBEC
shape_8037BBEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037BC20
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0020
	sw      $v0, 0x001C($sp)
.L8037BC20:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037BC70
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x001A
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0028($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x0018
	lw      $t0, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t3, $t9, $t2
	sh      $t3, 0x0002($t0)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	sw      $t4, 0x0014($t5)
.L8037BC70:
	b       .L8037BC80
	lw      $v0, 0x001C($sp)
	b       .L8037BC80
	nop
.L8037BC80:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037BC90
shape_8037BC90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037BCC4
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0018
	sw      $v0, 0x001C($sp)
.L8037BCC4:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037BD04
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x001B
	lw      $t0, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lh      $t1, 0x0002($t0)
	sll     $t9, $t8, 8
	andi    $t2, $t1, 0x00FF
	or      $t3, $t9, $t2
	sh      $t3, 0x0002($t0)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	sw      $t4, 0x0014($t5)
.L8037BD04:
	b       .L8037BD14
	lw      $v0, 0x001C($sp)
	b       .L8037BD14
	nop
.L8037BD14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037BD24
shape_8037BD24:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037BD58
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0018
	sw      $v0, 0x001C($sp)
.L8037BD58:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037BD94
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0028
	lh      $t8, 0x0022($sp)
	lw      $t9, 0x001C($sp)
	sh      $t8, 0x0014($t9)
	lbu     $t0, 0x0027($sp)
	lw      $t1, 0x001C($sp)
	sb      $t0, 0x0016($t1)
	lbu     $t2, 0x002B($sp)
	lw      $t3, 0x001C($sp)
	sb      $t2, 0x0017($t3)
.L8037BD94:
	b       .L8037BDA4
	lw      $v0, 0x001C($sp)
	b       .L8037BDA4
	nop
.L8037BDA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037BDB4
shape_8037BDB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037BDE4
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0018
	sw      $v0, 0x001C($sp)
.L8037BDE4:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037BE08
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x0029
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x001C($sp)
	sw      $t8, 0x0014($t9)
.L8037BE08:
	b       .L8037BE18
	lw      $v0, 0x001C($sp)
	b       .L8037BE18
	nop
.L8037BE18:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037BE28
shape_8037BE28:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037BE5C
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x001C
	sw      $v0, 0x001C($sp)
.L8037BE5C:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037BEAC
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x012A
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x001C($sp)
	sw      $t8, 0x0014($t9)
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x001C($sp)
	sw      $t0, 0x0018($t1)
	lw      $t2, 0x0020($sp)
	beqz    $t2, .L8037BEAC
	nop
	lw      $t9, 0x0020($sp)
	move    $a0, $0
	lw      $a1, 0x001C($sp)
	jalr    $t9
	lw      $a2, 0x0018($sp)
.L8037BEAC:
	b       .L8037BEBC
	lw      $v0, 0x001C($sp)
	b       .L8037BEBC
	nop
.L8037BEBC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037BECC
shape_8037BECC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037BF00
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0020
	sw      $v0, 0x001C($sp)
.L8037BF00:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037BF64
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x012C
	lhu     $t8, 0x0022($sp)
	lw      $t1, 0x001C($sp)
	sll     $t9, $t8, 16
	or      $t0, $t9, $t8
	sw      $t0, 0x001C($t1)
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x001C($sp)
	sw      $t2, 0x0014($t3)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x001C($sp)
	sw      $t4, 0x0018($t5)
	lw      $t6, 0x0024($sp)
	beqz    $t6, .L8037BF64
	nop
	lw      $t9, 0x0024($sp)
	move    $a0, $0
	lw      $a1, 0x001C($sp)
	jalr    $t9
	lw      $a2, 0x0018($sp)
.L8037BF64:
	b       .L8037BF74
	lw      $v0, 0x001C($sp)
	b       .L8037BF74
	nop
.L8037BF74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037BF84
shape_8037BF84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037BFB8
	nop
	lw      $a0, 0x0018($sp)
	jal     arena_alloc
	li      $a1, 0x0028
	sw      $v0, 0x001C($sp)
.L8037BFB8:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8037C024
	nop
	lw      $a0, 0x001C($sp)
	jal     shape_8037B220
	li      $a1, 0x012E
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0024($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x001C($sp)
	sw      $t8, 0x001C($t9)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x001C($sp)
	sw      $t0, 0x0014($t1)
	lw      $t2, 0x002C($sp)
	lw      $t3, 0x001C($sp)
	sw      $t2, 0x0018($t3)
	lw      $t4, 0x0028($sp)
	beqz    $t4, .L8037C024
	nop
	lw      $t9, 0x0028($sp)
	move    $a0, $0
	lw      $a1, 0x001C($sp)
	jalr    $t9
	lw      $a2, 0x0018($sp)
.L8037C024:
	b       .L8037C034
	lw      $v0, 0x001C($sp)
	b       .L8037C034
	nop
.L8037C034:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037C044
shape_8037C044:
	addiu   $sp, $sp, -0x0008
	beqz    $a1, .L8037C0A4
	nop
	sw      $a0, 0x000C($a1)
	lw      $t6, 0x0010($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	bnez    $t7, .L8037C078
	nop
	sw      $a1, 0x0010($a0)
	sw      $a1, 0x0004($a1)
	b       .L8037C0A4
	sw      $a1, 0x0008($a1)
.L8037C078:
	lw      $t8, 0x0004($sp)
	lw      $t9, 0x0004($t8)
	sw      $t9, 0x0000($sp)
	lw      $t0, 0x0000($sp)
	sw      $t0, 0x0004($a1)
	lw      $t1, 0x0004($sp)
	sw      $t1, 0x0008($a1)
	lw      $t2, 0x0004($sp)
	sw      $a1, 0x0004($t2)
	lw      $t3, 0x0000($sp)
	sw      $a1, 0x0008($t3)
.L8037C0A4:
	b       .L8037C0B4
	move    $v0, $a1
	b       .L8037C0B4
	nop
.L8037C0B4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl shape_8037C0BC
shape_8037C0BC:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x000C($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	addiu   $t8, $t7, 0x0010
	sw      $t8, 0x0000($sp)
	lw      $t9, 0x0008($a0)
	lw      $t0, 0x0004($a0)
	sw      $t9, 0x0008($t0)
	lw      $t1, 0x0004($a0)
	lw      $t2, 0x0008($a0)
	sw      $t1, 0x0004($t2)
	lw      $t3, 0x0000($sp)
	lw      $t4, 0x0000($t3)
	bne     $t4, $a0, .L8037C120
	nop
	lw      $t5, 0x0008($a0)
	bne     $t5, $a0, .L8037C114
	nop
	lw      $t6, 0x0000($sp)
	b       .L8037C120
	sw      $0, 0x0000($t6)
.L8037C114:
	lw      $t7, 0x0008($a0)
	lw      $t8, 0x0000($sp)
	sw      $t7, 0x0000($t8)
.L8037C120:
	b       .L8037C130
	lw      $v0, 0x0004($sp)
	b       .L8037C130
	nop
.L8037C130:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl shape_8037C138
shape_8037C138:
	addiu   $sp, $sp, -0x0010
	lw      $t6, 0x000C($a0)
	sw      $t6, 0x0008($sp)
	lw      $t7, 0x0008($sp)
	addiu   $t8, $t7, 0x0010
	sw      $t8, 0x0004($sp)
	lw      $t9, 0x0004($sp)
	lw      $t0, 0x0000($t9)
	beq     $t0, $a0, .L8037C1CC
	nop
	lw      $t1, 0x0004($sp)
	lw      $t2, 0x0000($t1)
	lw      $t3, 0x0004($t2)
	beq     $t3, $a0, .L8037C1C4
	nop
	lw      $t4, 0x0008($a0)
	lw      $t5, 0x0004($a0)
	sw      $t4, 0x0008($t5)
	lw      $t6, 0x0004($a0)
	lw      $t7, 0x0008($a0)
	sw      $t6, 0x0004($t7)
	lw      $t8, 0x0004($sp)
	lw      $t9, 0x0000($t8)
	lw      $t0, 0x0004($t9)
	sw      $t0, 0x000C($sp)
	lw      $t1, 0x000C($sp)
	sw      $t1, 0x0004($a0)
	lw      $t2, 0x0004($sp)
	lw      $t3, 0x0000($t2)
	sw      $t3, 0x0008($a0)
	lw      $t4, 0x0004($sp)
	lw      $t5, 0x0000($t4)
	sw      $a0, 0x0004($t5)
	lw      $t6, 0x000C($sp)
	sw      $a0, 0x0008($t6)
.L8037C1C4:
	lw      $t7, 0x0004($sp)
	sw      $a0, 0x0000($t7)
.L8037C1CC:
	b       .L8037C1DC
	lw      $v0, 0x0008($sp)
	b       .L8037C1DC
	nop
.L8037C1DC:
	jr      $ra
	addiu   $sp, $sp, 0x0010

shape_8037C1E4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	sw      $t6, 0x0028($sp)
.L8037C200:
	lw      $t7, 0x0028($sp)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x0000($t8)
	andi    $t0, $t9, 0x0100
	beqz    $t0, .L8037C248
	nop
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0014($t1)
	beqz    $t2, .L8037C248
	nop
	lw      $t3, 0x0024($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0028($sp)
	lw      $t9, 0x0014($t3)
	move    $a2, $0
	jalr    $t9
	nop
.L8037C248:
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0010($t4)
	beqz    $t5, .L8037C330
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x0004
	lh      $s0, 0x0000($t6)
	beq     $s0, $at, .L8037C298
	nop
	li      $at, 0x0018
	beq     $s0, $at, .L8037C2D4
	nop
	li      $at, 0x0103
	beq     $s0, $at, .L8037C2AC
	nop
	li      $at, 0x0114
	beq     $s0, $at, .L8037C2C0
	nop
	b       .L8037C2E8
	nop
.L8037C298:
	la.u    $t7, shape_layer
	la.l    $t7, shape_layer
	sw      $t7, 0x002C($sp)
	b       .L8037C2F4
	nop
.L8037C2AC:
	la.u    $t8, shape_persp
	la.l    $t8, shape_persp
	sw      $t8, 0x002C($sp)
	b       .L8037C2F4
	nop
.L8037C2C0:
	la.u    $t0, shape_camera
	la.l    $t0, shape_camera
	sw      $t0, 0x002C($sp)
	b       .L8037C2F4
	nop
.L8037C2D4:
	la.u    $t1, shape_object
	la.l    $t1, shape_object
	sw      $t1, 0x002C($sp)
	b       .L8037C2F4
	nop
.L8037C2E8:
	sw      $0, 0x002C($sp)
	b       .L8037C2F4
	nop
.L8037C2F4:
	lw      $t2, 0x002C($sp)
	beqz    $t2, .L8037C30C
	nop
	lw      $t3, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	sw      $t3, 0x0000($t9)
.L8037C30C:
	lw      $t4, 0x0028($sp)
	lw      $a1, 0x0034($sp)
	jal     shape_8037C1E4
	lw      $a0, 0x0010($t4)
	lw      $t5, 0x002C($sp)
	beqz    $t5, .L8037C330
	nop
	lw      $t6, 0x002C($sp)
	sw      $0, 0x0000($t6)
.L8037C330:
	lw      $t7, 0x0028($sp)
	lw      $t0, 0x0030($sp)
	lw      $t8, 0x0008($t7)
	bne     $t8, $t0, .L8037C200
	sw      $t8, 0x0028($sp)
	b       .L8037C34C
	nop
.L8037C34C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void shape_8037C360(SHAPE_SCENE *scene, int code) */
.globl shape_8037C360
shape_8037C360:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L8037C3B8
	nop
	lw      $t9, 0x0018($sp)
	lui     $at, %hi(shape_scene)
	sw      $t9, %lo(shape_scene)($at)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0010($t0)
	beqz    $t1, .L8037C3B0
	nop
	lw      $t2, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     shape_8037C1E4
	lw      $a0, 0x0010($t2)
.L8037C3B0:
	lui     $at, %hi(shape_scene)
	sw      $0, %lo(shape_scene)($at)
.L8037C3B8:
	b       .L8037C3C0
	nop
.L8037C3C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037C3D0
shape_8037C3D0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $t6, vecs_0
	la.u    $t7, vecf_1
	la.l    $t7, vecf_1
	la.l    $t6, vecs_0
	la.u    $a3, vecf_0
	la.l    $a3, vecf_0
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	move    $a0, $0
	lw      $a1, 0x0020($sp)
	jal     shape_8037B9E0
	move    $a2, $0
	la.u    $a0, s_script_8038BD88
	la.l    $a0, s_script_8038BD88
	jal     shape_8037C044
	lw      $a1, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	li      $at, -0x0002
	lh      $t9, 0x0002($t8)
	and     $t0, $t9, $at
	sh      $t0, 0x0002($t8)
	b       .L8037C438
	nop
.L8037C438:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl shape_8037C448
shape_8037C448:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x3F800000
	li      $a2, 0x3F800000
	li      $a3, 0x3F800000
	jal     vecf_set
	addiu   $a0, $a0, 0x002C
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0024($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x001A
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	sw      $t6, 0x0014($t7)
	lw      $t8, 0x0018($sp)
	sw      $0, 0x004C($t8)
	lw      $t9, 0x0018($sp)
	sw      $0, 0x0050($t9)
	lw      $t0, 0x0018($sp)
	sw      $0, 0x003C($t0)
	lw      $t1, 0x0018($sp)
	lh      $t2, 0x0002($t1)
	ori     $t3, $t2, 0x0001
	sh      $t3, 0x0002($t1)
	lw      $t4, 0x0018($sp)
	li      $at, -0x0011
	lh      $t5, 0x0002($t4)
	and     $t6, $t5, $at
	sh      $t6, 0x0002($t4)
	lw      $t7, 0x0018($sp)
	lh      $t8, 0x0002($t7)
	ori     $t9, $t8, 0x0020
	sh      $t9, 0x0002($t7)
	lw      $t0, 0x0018($sp)
	li      $at, -0x0005
	lh      $t2, 0x0002($t0)
	and     $t3, $t2, $at
	sh      $t3, 0x0002($t0)
	b       .L8037C50C
	nop
.L8037C50C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037C51C
shape_8037C51C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x3F800000
	li      $a2, 0x3F800000
	li      $a3, 0x3F800000
	jal     vecf_set
	addiu   $a0, $a0, 0x002C
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	addiu   $a0, $a0, 0x001A
	jal     vecs_cpy
	addiu   $a1, $a1, 0x0006
	lw      $t6, 0x001C($sp)
	lw      $t8, 0x0018($sp)
	lh      $t7, 0x0000($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0020($t8)
	lw      $t9, 0x001C($sp)
	lw      $t1, 0x0018($sp)
	lh      $t0, 0x0002($t9)
	mtc1    $t0, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0024($t1)
	lw      $t2, 0x001C($sp)
	lw      $t4, 0x0018($sp)
	lh      $t3, 0x0004($t2)
	mtc1    $t3, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0028($t4)
	lw      $t5, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	lb      $t6, 0x000C($t5)
	sb      $t6, 0x0018($t7)
	lw      $t8, 0x001C($sp)
	lw      $t0, 0x0018($sp)
	lb      $t9, 0x000D($t8)
	sb      $t9, 0x0019($t0)
	lw      $t1, 0x001C($sp)
	lw      $t3, 0x0018($sp)
	lw      $t2, 0x0018($t1)
	sw      $t2, 0x0014($t3)
	lw      $t4, 0x001C($sp)
	lw      $t5, 0x0018($sp)
	sw      $t4, 0x004C($t5)
	lw      $t6, 0x0018($sp)
	sw      $0, 0x0050($t6)
	lw      $t7, 0x0018($sp)
	sw      $0, 0x003C($t7)
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x0002($t8)
	ori     $t0, $t9, 0x0001
	sh      $t0, 0x0002($t8)
	lw      $t1, 0x0018($sp)
	li      $at, -0x0011
	lh      $t2, 0x0002($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0002($t1)
	lw      $t4, 0x0018($sp)
	lh      $t5, 0x0002($t4)
	ori     $t6, $t5, 0x0020
	sh      $t6, 0x0002($t4)
	lw      $t7, 0x0018($sp)
	li      $at, -0x0005
	lh      $t9, 0x0002($t7)
	and     $t0, $t9, $at
	sh      $t0, 0x0002($t7)
	b       .L8037C648
	nop
.L8037C648:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl shape_8037C658
shape_8037C658:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0034($sp)
	sw      $v0, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0000($t6)
	sw      $v0, 0x0028($sp)
	lw      $t7, 0x0030($sp)
	lw      $t9, 0x0028($sp)
	lw      $t8, 0x003C($t7)
	beq     $t8, $t9, .L8037C6EC
	nop
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0030($sp)
	sw      $t0, 0x003C($t1)
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0000($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, .L8037C6C4
	nop
	b       .L8037C6C8
	li      $s0, 0x0001
.L8037C6C4:
	li      $s0, -0x0001
.L8037C6C8:
	lw      $t5, 0x0028($sp)
	lw      $t8, 0x0030($sp)
	lh      $t6, 0x0004($t5)
	addu    $t7, $s0, $t6
	sh      $t7, 0x0040($t8)
	lw      $t9, 0x0030($sp)
	sw      $0, 0x0048($t9)
	lw      $t0, 0x0030($sp)
	sh      $0, 0x003A($t0)
.L8037C6EC:
	b       .L8037C6F4
	nop
.L8037C6F4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl shape_8037C708
shape_8037C708:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0034($sp)
	sw      $v0, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0000($t6)
	sw      $v0, 0x0028($sp)
	lw      $t7, 0x0030($sp)
	lw      $t9, 0x0028($sp)
	lw      $t8, 0x003C($t7)
	beq     $t8, $t9, .L8037C7B0
	nop
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0030($sp)
	sw      $t0, 0x003C($t1)
	lw      $t2, 0x0030($sp)
	sh      $0, 0x003A($t2)
	lw      $t3, 0x0028($sp)
	lh      $t4, 0x0000($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L8037C780
	nop
	b       .L8037C788
	lw      $s0, 0x0038($sp)
.L8037C780:
	lw      $s0, 0x0038($sp)
	subu    $s0, $0, $s0
.L8037C788:
	lw      $t6, 0x0028($sp)
	lw      $t0, 0x0030($sp)
	lh      $t7, 0x0004($t6)
	sll     $t8, $t7, 16
	addu    $t9, $s0, $t8
	sw      $t9, 0x0044($t0)
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0044($t1)
	sra     $t3, $t2, 16
	sh      $t3, 0x0040($t1)
.L8037C7B0:
	lw      $t4, 0x0038($sp)
	lw      $t5, 0x0030($sp)
	sw      $t4, 0x0048($t5)
	b       .L8037C7C4
	nop
.L8037C7C4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* int shape_8037C7D8(int frame, u16 **tbl) */
.globl shape_8037C7D8
shape_8037C7D8:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0000($a1)
	lhu     $t7, 0x0000($t6)
	slt     $at, $a0, $t7
	beqz    $at, .L8037C804
	nop
	lw      $t8, 0x0000($a1)
	lhu     $t9, 0x0002($t8)
	addu    $t0, $t9, $a0
	b       .L8037C820
	sw      $t0, 0x0004($sp)
.L8037C804:
	lw      $t1, 0x0000($a1)
	lw      $t3, 0x0000($a1)
	lhu     $t2, 0x0000($t1)
	lhu     $t4, 0x0002($t3)
	addu    $t5, $t2, $t4
	addiu   $t6, $t5, -0x0001
	sw      $t6, 0x0004($sp)
.L8037C820:
	lw      $t7, 0x0000($a1)
	addiu   $t8, $t7, 0x0004
	sw      $t8, 0x0000($a1)
	b       .L8037C83C
	lw      $v0, 0x0004($sp)
	b       .L8037C83C
	nop
.L8037C83C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* int shape_8037C844(SKELETON *skeleton, s32 *dst) */
.globl shape_8037C844
shape_8037C844:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0004($a0)
	sw      $t6, 0x0000($sp)
	lui     $t8, %hi(draw_timer)
	lhu     $t8, %lo(draw_timer)($t8)
	lhu     $t7, 0x000A($a0)
	beq     $t7, $t8, .L8037C878
	nop
	lw      $t9, 0x0000($sp)
	lh      $t0, 0x0000($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L8037C890
	nop
.L8037C878:
	beqz    $a1, .L8037C888
	nop
	lw      $t2, 0x000C($a0)
	sw      $t2, 0x0000($a1)
.L8037C888:
	b       .L8037C9E0
	lh      $v0, 0x0008($a0)
.L8037C890:
	lw      $t3, 0x0000($sp)
	lh      $t4, 0x0000($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, .L8037C934
	nop
	lw      $t6, 0x0010($a0)
	beqz    $t6, .L8037C8C4
	nop
	lw      $t7, 0x000C($a0)
	lw      $t8, 0x0010($a0)
	subu    $t9, $t7, $t8
	b       .L8037C8D4
	sw      $t9, 0x0004($sp)
.L8037C8C4:
	lh      $t0, 0x0008($a0)
	addiu   $t1, $t0, -0x0001
	sll     $t2, $t1, 16
	sw      $t2, 0x0004($sp)
.L8037C8D4:
	lw      $t5, 0x0000($sp)
	addiu   $t3, $sp, 0x0004
	lh      $t4, 0x0000($t3)
	lh      $t6, 0x0006($t5)
	slt     $at, $t4, $t6
	beqz    $at, .L8037C92C
	nop
	lw      $t7, 0x0000($sp)
	lh      $t8, 0x0000($t7)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L8037C918
	nop
	lw      $t0, 0x0000($sp)
	addiu   $t2, $sp, 0x0004
	lh      $t1, 0x0006($t0)
	b       .L8037C92C
	sh      $t1, 0x0000($t2)
.L8037C918:
	lw      $t3, 0x0000($sp)
	addiu   $t6, $sp, 0x0004
	lh      $t5, 0x0008($t3)
	addiu   $t4, $t5, -0x0001
	sh      $t4, 0x0000($t6)
.L8037C92C:
	b       .L8037C9BC
	nop
.L8037C934:
	lw      $t7, 0x0010($a0)
	beqz    $t7, .L8037C954
	nop
	lw      $t8, 0x000C($a0)
	lw      $t9, 0x0010($a0)
	addu    $t0, $t8, $t9
	b       .L8037C964
	sw      $t0, 0x0004($sp)
.L8037C954:
	lh      $t1, 0x0008($a0)
	addiu   $t2, $t1, 0x0001
	sll     $t3, $t2, 16
	sw      $t3, 0x0004($sp)
.L8037C964:
	lw      $t6, 0x0000($sp)
	addiu   $t5, $sp, 0x0004
	lh      $t4, 0x0000($t5)
	lh      $t7, 0x0008($t6)
	slt     $at, $t4, $t7
	bnez    $at, .L8037C9BC
	nop
	lw      $t8, 0x0000($sp)
	lh      $t9, 0x0000($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L8037C9AC
	nop
	lw      $t1, 0x0000($sp)
	addiu   $t5, $sp, 0x0004
	lh      $t2, 0x0008($t1)
	addiu   $t3, $t2, -0x0001
	b       .L8037C9BC
	sh      $t3, 0x0000($t5)
.L8037C9AC:
	lw      $t6, 0x0000($sp)
	addiu   $t7, $sp, 0x0004
	lh      $t4, 0x0006($t6)
	sh      $t4, 0x0000($t7)
.L8037C9BC:
	beqz    $a1, .L8037C9CC
	nop
	lw      $t8, 0x0004($sp)
	sw      $t8, 0x0000($a1)
.L8037C9CC:
	addiu   $t9, $sp, 0x0004
	b       .L8037C9E0
	lh      $v0, 0x0000($t9)
	b       .L8037C9E0
	nop
.L8037C9E0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

shape_8037C9E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x003C($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	beqz    $t8, .L8037CAE4
	nop
	lw      $t9, 0x0024($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0010($t9)
	sw      $v0, 0x0020($sp)
	lw      $t0, 0x0024($sp)
	jal     segment_to_virtual
	lw      $a0, 0x000C($t0)
	sw      $v0, 0x001C($sp)
	lw      $t1, 0x0028($sp)
	lh      $t2, 0x0040($t1)
	sh      $t2, 0x001A($sp)
	lh      $t3, 0x001A($sp)
	bgez    $t3, .L8037CA4C
	nop
	sh      $0, 0x001A($sp)
.L8037CA4C:
	lh      $a0, 0x001A($sp)
	jal     shape_8037C7D8
	addiu   $a1, $sp, 0x0020
	lw      $t4, 0x001C($sp)
	sll     $t5, $v0, 1
	lw      $t8, 0x002C($sp)
	addu    $t6, $t4, $t5
	lh      $t7, 0x0000($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0000($t8)
	lh      $a0, 0x001A($sp)
	jal     shape_8037C7D8
	addiu   $a1, $sp, 0x0020
	lw      $t9, 0x001C($sp)
	sll     $t0, $v0, 1
	lw      $t3, 0x002C($sp)
	addu    $t1, $t9, $t0
	lh      $t2, 0x0000($t1)
	mtc1    $t2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0004($t3)
	lh      $a0, 0x001A($sp)
	jal     shape_8037C7D8
	addiu   $a1, $sp, 0x0020
	lw      $t4, 0x001C($sp)
	sll     $t5, $v0, 1
	lw      $t8, 0x002C($sp)
	addu    $t6, $t4, $t5
	lh      $t7, 0x0000($t6)
	mtc1    $t7, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0008($t8)
	b       .L8037CAF8
	nop
.L8037CAE4:
	lw      $a0, 0x002C($sp)
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
.L8037CAF8:
	b       .L8037CB00
	nop
.L8037CB00:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

shape_8037CB10:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lw      $t6, 0x000C($a0)
	beqz    $t6, .L8037CB34
	nop
.L8037CB24:
	lw      $a0, 0x000C($a0)
	lw      $t7, 0x000C($a0)
	bnez    $t7, .L8037CB24
	nop
.L8037CB34:
	lh      $t8, 0x0000($a0)
	li      $at, 0x0001
	bne     $t8, $at, .L8037CB48
	nop
	sw      $a0, 0x0004($sp)
.L8037CB48:
	b       .L8037CB58
	lw      $v0, 0x0004($sp)
	b       .L8037CB58
	nop
.L8037CB58:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl shape_8037CB60
shape_8037CB60:
	lh      $t6, 0x0000($a1)
	addiu   $a1, $a1, 0x0002
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0000($a0)
	lh      $t7, 0x0000($a1)
	addiu   $a1, $a1, 0x0002
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0004($a0)
	lh      $t8, 0x0000($a1)
	addiu   $a1, $a1, 0x0002
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0008($a0)
	jr      $ra
	move    $v0, $a1
	jr      $ra
	nop
	jr      $ra
	nop

.globl shape_8037CBC0
shape_8037CBC0:
	lh      $t6, 0x0000($a1)
	addiu   $a1, $a1, 0x0002
	sh      $t6, 0x0000($a0)
	lh      $t7, 0x0000($a1)
	addiu   $a1, $a1, 0x0002
	sh      $t7, 0x0002($a0)
	lh      $t8, 0x0000($a1)
	addiu   $a1, $a1, 0x0002
	sh      $t8, 0x0004($a0)
	jr      $ra
	move    $v0, $a1
	jr      $ra
	nop
	jr      $ra
	nop

.globl shape_8037CBFC
shape_8037CBFC:
	lh      $t6, 0x0000($a1)
	li      $at, 0x00B4
	addiu   $a1, $a1, 0x0002
	sll     $t7, $t6, 15
	div     $0, $t7, $at
	mflo    $t8
	sh      $t8, 0x0000($a0)
	nop
	lh      $t9, 0x0000($a1)
	li      $at, 0x00B4
	addiu   $a1, $a1, 0x0002
	sll     $t0, $t9, 15
	div     $0, $t0, $at
	mflo    $t1
	sh      $t1, 0x0002($a0)
	nop
	lh      $t2, 0x0000($a1)
	li      $at, 0x00B4
	addiu   $a1, $a1, 0x0002
	sll     $t3, $t2, 15
	div     $0, $t3, $at
	mflo    $t4
	sh      $t4, 0x0004($a0)
	nop
	jr      $ra
	move    $v0, $a1
	jr      $ra
	nop
	jr      $ra
	nop

.globl shape_8037CC74
shape_8037CC74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8037CD48
	nop
	lui     $t8, %hi(s_script_8038BD78)
	lh      $t8, %lo(s_script_8038BD78)($t8)
	lw      $t7, 0x0018($sp)
	lui     $at, %hi(s_script_8038BCF8)
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	sw      $t7, %lo(s_script_8038BCF8)($at)
	lui     $t0, %hi(s_script_8038BD78)
	lh      $t0, %lo(s_script_8038BD78)($t0)
	bnez    $t0, .L8037CCDC
	nop
	lui     $t1, %hi(s_script_8038BCA4)
	lw      $t1, %lo(s_script_8038BCA4)($t1)
	bnez    $t1, .L8037CCD4
	nop
	lw      $t2, 0x0018($sp)
	lui     $at, %hi(s_script_8038BCA4)
	sw      $t2, %lo(s_script_8038BCA4)($at)
.L8037CCD4:
	b       .L8037CD48
	nop
.L8037CCDC:
	lui     $t3, %hi(s_script_8038BD78)
	lh      $t3, %lo(s_script_8038BD78)($t3)
	lui     $t5, %hi(s_script_8038BCF8-4)
	li      $at, 0x0029
	sll     $t4, $t3, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(s_script_8038BCF8-4)($t5)
	lh      $t6, 0x0000($t5)
	bne     $t6, $at, .L8037CD28
	nop
	lui     $t7, %hi(s_script_8038BD78)
	lh      $t7, %lo(s_script_8038BD78)($t7)
	lui     $t0, %hi(s_script_8038BCF8-4)
	lw      $t8, 0x0018($sp)
	sll     $t9, $t7, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(s_script_8038BCF8-4)($t0)
	b       .L8037CD48
	sw      $t8, 0x0014($t0)
.L8037CD28:
	lui     $t1, %hi(s_script_8038BD78)
	lh      $t1, %lo(s_script_8038BD78)($t1)
	lui     $a0, %hi(s_script_8038BCF8-4)
	lw      $a1, 0x0018($sp)
	sll     $t2, $t1, 2
	addu    $a0, $a0, $t2
	jal     shape_8037C044
	lw      $a0, %lo(s_script_8038BCF8-4)($a0)
.L8037CD48:
	b       .L8037CD50
	nop
.L8037CD50:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

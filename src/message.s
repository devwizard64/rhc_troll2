.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

message_802D6F20:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	bnez    $t6, .L802D6F48
	nop
	b       .L802D7060
	nop
.L802D6F48:
	lw      $t8, 0x0024($sp)
	li      $t7, 0x00010000
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0024($sp)
	sw      $0, 0x0010($t9)
	lw      $t0, 0x0024($sp)
	sw      $0, 0x0020($t0)
	lw      $t1, 0x0024($sp)
	sw      $0, 0x0030($t1)
	lw      $t2, 0x0024($sp)
	sw      $0, 0x0004($t2)
	lw      $t4, 0x0024($sp)
	li      $t3, 0x00010000
	sw      $t3, 0x0014($t4)
	lw      $t5, 0x0024($sp)
	sw      $0, 0x0024($t5)
	lw      $t6, 0x0024($sp)
	sw      $0, 0x0034($t6)
	lw      $t8, 0x0024($sp)
	li      $t7, 0x0001
	sw      $t7, 0x0008($t8)
	lw      $t9, 0x0024($sp)
	sw      $0, 0x0018($t9)
	lw      $t0, 0x0024($sp)
	sw      $0, 0x0028($t0)
	lw      $t1, 0x0024($sp)
	sw      $0, 0x0038($t1)
	lw      $t2, 0x0024($sp)
	sw      $0, 0x000C($t2)
	lw      $t4, 0x0024($sp)
	li      $t3, 0x0001
	sw      $t3, 0x001C($t4)
	lw      $t5, 0x0024($sp)
	sw      $0, 0x002C($t5)
	lw      $t6, 0x0024($sp)
	sw      $0, 0x003C($t6)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	li.u    $t9, 0x01020040
	li.l    $t9, 0x01020040
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0024($sp)
	lw      $t3, 0x0020($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t2, $t1, $at
	sw      $t2, 0x0004($t3)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li.u    $t6, 0x01030040
	li.l    $t6, 0x01030040
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x001C($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t0)
	b       .L802D7060
	nop
.L802D7060:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl message_802D7070
message_802D7070:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	bnez    $t6, .L802D70A8
	nop
	b       .L802D7164
	nop
.L802D70A8:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	jal     guTranslate
	lw      $a3, 0x0034($sp)
	lb      $t7, 0x002B($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L802D710C
	nop
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li.u    $t0, 0x01040040
	li.l    $t0, 0x01040040
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0024($sp)
	lw      $t4, 0x0020($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t4)
.L802D710C:
	lb      $t5, 0x002B($sp)
	li      $at, 0x0002
	bne     $t5, $at, .L802D715C
	nop
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li.u    $t8, 0x01000040
	li.l    $t8, 0x01000040
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0024($sp)
	lw      $t2, 0x001C($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t1, $t0, $at
	sw      $t1, 0x0004($t2)
.L802D715C:
	b       .L802D7164
	nop
.L802D7164:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

message_802D7174:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	bnez    $t6, .L802D71AC
	nop
	b       .L802D7270
	nop
.L802D71AC:
	lwc1    $f4, 0x0040($sp)
	lw      $a0, 0x002C($sp)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0038($sp)
	lw      $a3, 0x003C($sp)
	jal     guRotate
	swc1    $f4, 0x0010($sp)
	lb      $t7, 0x0033($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L802D7218
	nop
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0028($sp)
	lw      $t1, 0x0028($sp)
	li.u    $t0, 0x01040040
	li.l    $t0, 0x01040040
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x002C($sp)
	lw      $t4, 0x0028($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t4)
.L802D7218:
	lb      $t5, 0x0033($sp)
	li      $at, 0x0002
	bne     $t5, $at, .L802D7268
	nop
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	li.u    $t8, 0x01000040
	li.l    $t8, 0x01000040
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x002C($sp)
	lw      $t2, 0x0024($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t1, $t0, $at
	sw      $t1, 0x0004($t2)
.L802D7268:
	b       .L802D7270
	nop
.L802D7270:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

message_802D7280:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	bnez    $t6, .L802D72B8
	nop
	b       .L802D7374
	nop
.L802D72B8:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	jal     guScale
	lw      $a3, 0x0034($sp)
	lb      $t7, 0x002B($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L802D731C
	nop
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li.u    $t0, 0x01040040
	li.l    $t0, 0x01040040
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0024($sp)
	lw      $t4, 0x0020($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t4)
.L802D731C:
	lb      $t5, 0x002B($sp)
	li      $at, 0x0002
	bne     $t5, $at, .L802D736C
	nop
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li.u    $t8, 0x01000040
	li.l    $t8, 0x01000040
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0024($sp)
	lw      $t2, 0x001C($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t1, $t0, $at
	sw      $t1, 0x0004($t2)
.L802D736C:
	b       .L802D7374
	nop
.L802D7374:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl message_802D7384
message_802D7384:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0034($sp)
	lw      $t6, 0x0034($sp)
	bnez    $t6, .L802D73AC
	nop
	b       .L802D7470
	nop
.L802D73AC:
	jal     message_802D6F20
	nop
	li      $at, 0x43700000
	mtc1    $at, $f4
	li      $at, 0xC1200000
	mtc1    $at, $f6
	li      $at, 0x41200000
	mtc1    $at, $f8
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $a0, 0x0034($sp)
	li      $a1, 0x0000
	li      $a2, 0x43A00000
	li      $a3, 0x0000
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	swc1    $f8, 0x0018($sp)
	jal     guOrtho
	swc1    $f10, 0x001C($sp)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	li      $t9, 0xB4000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0030($sp)
	li      $t1, 0xFFFF
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	li.u    $t5, 0x01010040
	li.l    $t5, 0x01010040
	sw      $t5, 0x0000($t6)
	lw      $t7, 0x0034($sp)
	lw      $t9, 0x002C($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t8, $t7, $at
	sw      $t8, 0x0004($t9)
	b       .L802D7470
	nop
.L802D7470:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

message_802D7480:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sh      $0, 0x001A($sp)
	lh      $t6, 0x002E($sp)
	lh      $t7, 0x0032($sp)
	multu   $t6, $t7
	mflo    $a0
	jal     gfx_alloc
	nop
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	bnez    $t8, .L802D74C8
	nop
	b       .L802D75CC
	move    $v0, $0
.L802D74C8:
	lh      $t9, 0x002E($sp)
	lh      $t0, 0x0032($sp)
	sw      $0, 0x0024($sp)
	multu   $t9, $t0
	mflo    $t1
	bgez    $t1, .L802D74EC
	sra     $t2, $t1, 4
	addiu   $at, $t1, 0x000F
	sra     $t2, $at, 4
.L802D74EC:
	blez    $t2, .L802D75BC
	nop
.L802D74F4:
	li      $t3, 0x8000
	sh      $t3, 0x0022($sp)
	lhu     $t4, 0x0022($sp)
	beqz    $t4, .L802D7584
	nop
.L802D7508:
	lw      $t6, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	lhu     $t0, 0x0022($sp)
	sll     $t7, $t6, 1
	addu    $t8, $t5, $t7
	lhu     $t9, 0x0000($t8)
	and     $t1, $t9, $t0
	beqz    $t1, .L802D7544
	nop
	lw      $t3, 0x001C($sp)
	lh      $t4, 0x001A($sp)
	li      $t2, 0x00FF
	addu    $t6, $t3, $t4
	b       .L802D7554
	sb      $t2, 0x0000($t6)
.L802D7544:
	lw      $t5, 0x001C($sp)
	lh      $t7, 0x001A($sp)
	addu    $t8, $t5, $t7
	sb      $0, 0x0000($t8)
.L802D7554:
	lhu     $t9, 0x0022($sp)
	bgez    $t9, .L802D7568
	sra     $t0, $t9, 1
	addiu   $at, $t9, 0x0001
	sra     $t0, $at, 1
.L802D7568:
	sh      $t0, 0x0022($sp)
	lh      $t1, 0x001A($sp)
	addiu   $t3, $t1, 0x0001
	sh      $t3, 0x001A($sp)
	lhu     $t4, 0x0022($sp)
	bnez    $t4, .L802D7508
	nop
.L802D7584:
	lh      $t5, 0x002E($sp)
	lh      $t7, 0x0032($sp)
	lw      $t2, 0x0024($sp)
	multu   $t5, $t7
	addiu   $t6, $t2, 0x0001
	sw      $t6, 0x0024($sp)
	mflo    $t8
	bgez    $t8, .L802D75B0
	sra     $t9, $t8, 4
	addiu   $at, $t8, 0x000F
	sra     $t9, $at, 4
.L802D75B0:
	slt     $at, $t6, $t9
	bnez    $at, .L802D74F4
	nop
.L802D75BC:
	b       .L802D75CC
	lw      $v0, 0x001C($sp)
	b       .L802D75CC
	nop
.L802D75CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.if 0
message_802D75DC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	la.u    $a0, txt_msg16
	jal     segment_to_virtual
	la.l    $a0, txt_msg16
	sw      $v0, 0x002C($sp)
	lbu     $t7, 0x0033($sp)
	lw      $t6, 0x002C($sp)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	jal     segment_to_virtual
	lw      $a0, 0x0000($t9)
	sw      $v0, 0x0028($sp)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0024($sp)
	lw      $t3, 0x0024($sp)
	li      $t2, 0xE7000000
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x0024($sp)
	sw      $0, 0x0004($t4)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t5, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t5, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	li      $t6, 0xFD700000
	sw      $t6, 0x0000($t8)
	lw      $t9, 0x0028($sp)
	lw      $t1, 0x0020($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t0, $t9, $at
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x001C($sp)
	la.u    $t7, gfx_message_char
	la.l    $t7, gfx_message_char
	sw      $t7, 0x0004($t6)
	b       .L802D76B8
	nop
.L802D76B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop
.endif

message_802D76C8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $t7, str_803314A4
	la.l    $t7, str_803314A4
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x001C
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lhu     $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sh      $at, 0x0008($t6)
	lb      $t0, 0x002B($sp)
	sb      $0, 0x0027($sp)
	sll     $t1, $t0, 2
	addu    $t1, $t1, $t0
	addu    $t2, $sp, $t1
	lbu     $t2, 0x001C($t2)
	blez    $t2, .L802D77C4
	nop
.L802D7718:
	lb      $t3, 0x002B($sp)
	lb      $t5, 0x0027($sp)
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	addu    $t8, $t4, $t5
	addu    $a0, $sp, $t8
	jal     message_802D75DC
	lbu     $a0, 0x001D($a0)
	lb      $t6, 0x002B($sp)
	lb      $t9, 0x0027($sp)
	lui     $t2, %hi(message_80331370)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	addu    $t0, $t7, $t9
	addu    $t1, $sp, $t0
	lbu     $t1, 0x001D($t1)
	li      $a0, 0x0002
	addu    $t2, $t2, $t1
	lbu     $t2, %lo(message_80331370)($t2)
	mtc1    $t2, $f4
	bgez    $t2, .L802D7780
	cvt.s.w $f4, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f6
	nop
	add.s   $f4, $f4, $f6
.L802D7780:
	mfc1    $a1, $f4
	li      $a2, 0x0000
	jal     message_802D7070
	li      $a3, 0x0000
	lb      $t6, 0x002B($sp)
	lb      $t3, 0x0027($sp)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	addiu   $t4, $t3, 0x0001
	sb      $t4, 0x0027($sp)
	addu    $t9, $sp, $t7
	lbu     $t9, 0x001C($t9)
	sll     $t5, $t4, 24
	sra     $t8, $t5, 24
	slt     $at, $t8, $t9
	bnez    $at, .L802D7718
	nop
.L802D77C4:
	b       .L802D77CC
	nop
.L802D77CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl message_802D77DC
message_802D77DC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	sb      $0, 0x003F($sp)
	sw      $0, 0x0038($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0037($sp)
	lh      $t7, 0x0042($sp)
	lh      $t8, 0x0046($sp)
	li      $a0, 0x0001
	mtc1    $t7, $f4
	mtc1    $t8, $f6
	li      $a3, 0x0000
	cvt.s.w $f4, $f4
	cvt.s.w $f6, $f6
	mfc1    $a1, $f4
	mfc1    $a2, $f6
	jal     message_802D7070
	nop
	lw      $t9, 0x0048($sp)
	lw      $t0, 0x0038($sp)
	li      $at, 0x00FF
	addu    $t1, $t9, $t0
	lbu     $t2, 0x0000($t1)
	beq     $t2, $at, .L802D7B3C
	nop
.L802D7850:
	lw      $t3, 0x0048($sp)
	lw      $t4, 0x0038($sp)
	li      $at, 0x006E
	addu    $t5, $t3, $t4
	lbu     $s0, 0x0000($t5)
	beq     $s0, $at, .L802D7964
	nop
	li      $at, 0x009E
	beq     $s0, $at, .L802D7A0C
	nop
	li      $at, 0x00D0
	beq     $s0, $at, .L802D79B4
	nop
	li      $at, 0x00D1
	beq     $s0, $at, .L802D79EC
	nop
	li      $at, 0x00D2
	beq     $s0, $at, .L802D79FC
	nop
	li      $at, 0x00F0
	beq     $s0, $at, .L802D78C8
	nop
	li      $at, 0x00F1
	beq     $s0, $at, .L802D78D8
	nop
	li      $at, 0x00FE
	beq     $s0, $at, .L802D78E8
	nop
	b       .L802D7A50
	nop
.L802D78C8:
	li      $t6, 0x0001
	sb      $t6, 0x003F($sp)
	b       .L802D7B14
	nop
.L802D78D8:
	li      $t7, 0x0002
	sb      $t7, 0x003F($sp)
	b       .L802D7B14
	nop
.L802D78E8:
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	li      $t0, 0xBD000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0030($sp)
	sw      $0, 0x0004($t2)
	lbu     $t5, 0x0037($sp)
	lh      $t4, 0x0046($sp)
	lh      $t3, 0x0042($sp)
	sll     $t6, $t5, 4
	subu    $t7, $t4, $t6
	mtc1    $t7, $f10
	mtc1    $t3, $f8
	li      $a0, 0x0001
	cvt.s.w $f10, $f10
	li      $a3, 0x0000
	cvt.s.w $f8, $f8
	mfc1    $a2, $f10
	mfc1    $a1, $f8
	jal     message_802D7070
	nop
	lbu     $t8, 0x0037($sp)
	addiu   $t9, $t8, 0x0001
	sb      $t9, 0x0037($sp)
	b       .L802D7B14
	nop
.L802D7964:
	li      $a0, 0x0001
	li      $a1, 0xC0000000
	li      $a2, 0xC0A00000
	jal     message_802D7070
	li      $a3, 0x0000
	jal     message_802D75DC
	li      $a0, 0x00F1
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	li      $t2, 0xBD000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x002C($sp)
	sw      $0, 0x0004($t5)
	b       .L802D7B14
	nop
.L802D79B4:
	la.u    $t4, message_80331370
	la.l    $t4, message_80331370
	lbu     $t6, 0x009E($t4)
	li      $a0, 0x0002
	li      $a2, 0x0000
	sll     $t7, $t6, 1
	mtc1    $t7, $f16
	li      $a3, 0x0000
	cvt.s.w $f16, $f16
	mfc1    $a1, $f16
	jal     message_802D7070
	nop
	b       .L802D7B14
	nop
.L802D79EC:
	jal     message_802D76C8
	move    $a0, $0
	b       .L802D7B14
	nop
.L802D79FC:
	jal     message_802D76C8
	li      $a0, 0x0001
	b       .L802D7B14
	nop
.L802D7A0C:
	la.u    $t8, message_80331370
	la.l    $t8, message_80331370
	lbu     $t9, 0x009E($t8)
	li      $a0, 0x0002
	mtc1    $t9, $f18
	bgez    $t9, .L802D7A38
	cvt.s.w $f18, $f18
	li      $at, 0x4F800000
	mtc1    $at, $f4
	nop
	add.s   $f18, $f18, $f4
.L802D7A38:
	mfc1    $a1, $f18
	li      $a2, 0x0000
	jal     message_802D7070
	li      $a3, 0x0000
	b       .L802D7B14
	nop
.L802D7A50:
	lw      $t0, 0x0048($sp)
	lw      $t1, 0x0038($sp)
	addu    $t2, $t0, $t1
	jal     message_802D75DC
	lbu     $a0, 0x0000($t2)
	lb      $t3, 0x003F($sp)
	beqz    $t3, .L802D7AC0
	nop
	li      $a0, 0x0001
	li      $a1, 0x40A00000
	li      $a2, 0x40A00000
	jal     message_802D7070
	li      $a3, 0x0000
	lb      $a0, 0x003F($sp)
	jal     message_802D75DC
	addiu   $a0, $a0, 0x00EF
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t5, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t5, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	li      $t6, 0xBD000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0028($sp)
	sw      $0, 0x0004($t8)
	sb      $0, 0x003F($sp)
.L802D7AC0:
	lw      $t9, 0x0048($sp)
	lw      $t0, 0x0038($sp)
	lui     $t3, %hi(message_80331370)
	li      $a0, 0x0002
	addu    $t1, $t9, $t0
	lbu     $t2, 0x0000($t1)
	addu    $t3, $t3, $t2
	lbu     $t3, %lo(message_80331370)($t3)
	mtc1    $t3, $f6
	bgez    $t3, .L802D7AFC
	cvt.s.w $f6, $f6
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L802D7AFC:
	mfc1    $a1, $f6
	li      $a2, 0x0000
	jal     message_802D7070
	li      $a3, 0x0000
	b       .L802D7B14
	nop
.L802D7B14:
	lw      $t5, 0x0038($sp)
	addiu   $t4, $t5, 0x0001
	sw      $t4, 0x0038($sp)
	lw      $t6, 0x0048($sp)
	lw      $t7, 0x0038($sp)
	li      $at, 0x00FF
	addu    $t8, $t6, $t7
	lbu     $t9, 0x0000($t8)
	bne     $t9, $at, .L802D7850
	nop
.L802D7B3C:
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0024($sp)
	lw      $t3, 0x0024($sp)
	li      $t2, 0xBD000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0024($sp)
	sw      $0, 0x0004($t5)
	b       .L802D7B70
	nop
.L802D7B70:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl message_802D7B84
message_802D7B84:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	sw      $a3, 0x005C($sp)
	sw      $0, 0x004C($sp)
	la.u    $a0, txt_print
	jal     segment_to_virtual
	la.l    $a0, txt_print
	sw      $v0, 0x0048($sp)
	la.u    $a0, txt_dprint
	jal     segment_to_virtual
	la.l    $a0, txt_dprint
	sw      $v0, 0x0044($sp)
	lh      $t6, 0x0056($sp)
	sw      $t6, 0x0040($sp)
	lh      $t7, 0x005A($sp)
	sw      $t7, 0x003C($sp)
	lb      $t8, 0x0053($sp)
	li      $at, 0x0001
	bne     $t8, $at, .L802D7BEC
	nop
	li      $t9, 0x0010
	b       .L802D7BF4
	sw      $t9, 0x0038($sp)
.L802D7BEC:
	li      $t0, 0x000C
	sw      $t0, 0x0038($sp)
.L802D7BF4:
	lw      $t1, 0x005C($sp)
	lw      $t2, 0x004C($sp)
	li      $at, 0x00FF
	addu    $t3, $t1, $t2
	lbu     $t4, 0x0000($t3)
	beq     $t4, $at, .L802D7E70
	nop
.L802D7C10:
	lw      $t5, 0x005C($sp)
	lw      $t6, 0x004C($sp)
	li      $at, 0x009E
	addu    $t7, $t5, $t6
	lbu     $t8, 0x0000($t7)
	bne     $t8, $at, .L802D7C48
	nop
	b       .L802D7C34
	nop
.L802D7C34:
	lw      $t9, 0x0040($sp)
	addiu   $t0, $t9, 0x0008
	sw      $t0, 0x0040($sp)
	b       .L802D7E48
	nop
.L802D7C48:
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0034($sp)
	lw      $t4, 0x0034($sp)
	li      $t3, 0xE7000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0034($sp)
	sw      $0, 0x0004($t5)
	lb      $t6, 0x0053($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802D7CD0
	nop
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	li      $t9, 0xFD100000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x005C($sp)
	lw      $t2, 0x004C($sp)
	lw      $t6, 0x0048($sp)
	lw      $t9, 0x0030($sp)
	addu    $t3, $t1, $t2
	lbu     $t4, 0x0000($t3)
	sll     $t5, $t4, 2
	addu    $t7, $t6, $t5
	lw      $t8, 0x0000($t7)
	sw      $t8, 0x0004($t9)
.L802D7CD0:
	lb      $t0, 0x0053($sp)
	li      $at, 0x0002
	bne     $t0, $at, .L802D7D2C
	nop
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x002C($sp)
	lw      $t4, 0x002C($sp)
	li      $t3, 0xFD100000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x005C($sp)
	lw      $t5, 0x004C($sp)
	lw      $t0, 0x0044($sp)
	lw      $t3, 0x002C($sp)
	addu    $t7, $t6, $t5
	lbu     $t8, 0x0000($t7)
	sll     $t9, $t8, 2
	addu    $t1, $t0, $t9
	lw      $t2, 0x0000($t1)
	sw      $t2, 0x0004($t3)
.L802D7D2C:
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t4, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t4, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t7)
	lw      $t0, 0x0028($sp)
	la.u    $t8, gfx_dprint_1cyc_char
	la.l    $t8, gfx_dprint_1cyc_char
	sw      $t8, 0x0004($t0)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t9, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t9, 0x0024($sp)
	lw      $t2, 0x0040($sp)
	lw      $t8, 0x003C($sp)
	li      $at, 0xE4000000
	addiu   $t3, $t2, 0x0010
	sll     $t4, $t3, 2
	andi    $t6, $t4, 0x0FFF
	addiu   $t0, $t8, 0x0010
	lw      $t3, 0x0024($sp)
	sll     $t9, $t0, 2
	sll     $t5, $t6, 12
	or      $t7, $t5, $at
	andi    $t1, $t9, 0x0FFF
	or      $t2, $t7, $t1
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x0040($sp)
	lw      $t0, 0x003C($sp)
	lw      $t2, 0x0024($sp)
	sll     $t6, $t4, 2
	andi    $t5, $t6, 0x0FFF
	sll     $t9, $t0, 2
	andi    $t7, $t9, 0x0FFF
	sll     $t8, $t5, 12
	or      $t1, $t8, $t7
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x0020($sp)
	lw      $t5, 0x0020($sp)
	li      $t6, 0xB3000000
	sw      $t6, 0x0000($t5)
	lw      $t0, 0x0020($sp)
	sw      $0, 0x0004($t0)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t9, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t9, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li      $t7, 0xB2000000
	sw      $t7, 0x0000($t1)
	lw      $t3, 0x001C($sp)
	li.u    $t2, 0x04000400
	li.l    $t2, 0x04000400
	sw      $t2, 0x0004($t3)
	lw      $t4, 0x0040($sp)
	lw      $t6, 0x0038($sp)
	addu    $t5, $t4, $t6
	sw      $t5, 0x0040($sp)
.L802D7E48:
	lw      $t0, 0x004C($sp)
	addiu   $t9, $t0, 0x0001
	sw      $t9, 0x004C($sp)
	lw      $t8, 0x005C($sp)
	lw      $t7, 0x004C($sp)
	li      $at, 0x00FF
	addu    $t1, $t8, $t7
	lbu     $t2, 0x0000($t1)
	bne     $t2, $at, .L802D7C10
	nop
.L802D7E70:
	b       .L802D7E78
	nop
.L802D7E78:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

.globl message_802D7E88
message_802D7E88:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0068($sp)
	sw      $a1, 0x006C($sp)
	sw      $a2, 0x0070($sp)
	sw      $s0, 0x0018($sp)
	sb      $0, 0x0067($sp)
	sw      $0, 0x0060($sp)
	lh      $t6, 0x006A($sp)
	sw      $t6, 0x005C($sp)
	lh      $t7, 0x006E($sp)
	sw      $t7, 0x0058($sp)
	la.u    $a0, txt_msg8
	jal     segment_to_virtual
	la.l    $a0, txt_msg8
	sw      $v0, 0x0054($sp)
	lw      $t8, 0x0070($sp)
	lw      $t9, 0x0060($sp)
	li      $at, 0x00FF
	addu    $t0, $t8, $t9
	lbu     $t1, 0x0000($t0)
	beq     $t1, $at, .L802D82B8
	nop
.L802D7EE4:
	lw      $t2, 0x0070($sp)
	lw      $t3, 0x0060($sp)
	li      $at, 0x009E
	addu    $t4, $t2, $t3
	lbu     $s0, 0x0000($t4)
	beq     $s0, $at, .L802D7F40
	nop
	li      $at, 0x00F0
	beq     $s0, $at, .L802D7F20
	nop
	li      $at, 0x00F1
	beq     $s0, $at, .L802D7F30
	nop
	b       .L802D7F54
	nop
.L802D7F20:
	li      $t5, 0x0001
	sb      $t5, 0x0067($sp)
	b       .L802D8290
	nop
.L802D7F30:
	li      $t6, 0x0002
	sb      $t6, 0x0067($sp)
	b       .L802D8290
	nop
.L802D7F40:
	lw      $t7, 0x005C($sp)
	addiu   $t8, $t7, 0x0004
	sw      $t8, 0x005C($sp)
	b       .L802D8290
	nop
.L802D7F54:
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0050($sp)
	lw      $t2, 0x0050($sp)
	li      $t1, 0xFD680000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x0070($sp)
	lw      $t4, 0x0060($sp)
	lw      $t8, 0x0054($sp)
	lw      $t1, 0x0050($sp)
	addu    $t5, $t3, $t4
	lbu     $t6, 0x0000($t5)
	sll     $t7, $t6, 2
	addu    $t9, $t8, $t7
	lw      $t0, 0x0000($t9)
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x004C($sp)
	lw      $t5, 0x004C($sp)
	li      $t4, 0xE6000000
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x004C($sp)
	sw      $0, 0x0004($t6)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t8, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t8, 0x0048($sp)
	lw      $t0, 0x0048($sp)
	li      $t9, 0xF3000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0048($sp)
	li.u    $t1, 0x0703F800
	li.l    $t1, 0x0703F800
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x0044($sp)
	lw      $t5, 0x005C($sp)
	lw      $t1, 0x0058($sp)
	li      $at, 0xE4000000
	addiu   $t6, $t5, 0x0008
	sll     $t8, $t6, 2
	andi    $t7, $t8, 0x0FFF
	addiu   $t2, $t1, 0x0008
	lw      $t6, 0x0044($sp)
	sll     $t3, $t2, 2
	sll     $t9, $t7, 12
	or      $t0, $t9, $at
	andi    $t4, $t3, 0x0FFF
	or      $t5, $t0, $t4
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x005C($sp)
	lw      $t2, 0x0058($sp)
	lw      $t5, 0x0044($sp)
	sll     $t7, $t8, 2
	andi    $t9, $t7, 0x0FFF
	sll     $t3, $t2, 2
	andi    $t0, $t3, 0x0FFF
	sll     $t1, $t9, 12
	or      $t4, $t1, $t0
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t6, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t6, 0x0040($sp)
	lw      $t9, 0x0040($sp)
	li      $t7, 0xB3000000
	sw      $t7, 0x0000($t9)
	lw      $t2, 0x0040($sp)
	sw      $0, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t3, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t3, 0x003C($sp)
	lw      $t4, 0x003C($sp)
	li      $t0, 0xB2000000
	sw      $t0, 0x0000($t4)
	lw      $t6, 0x003C($sp)
	li.u    $t5, 0x04000400
	li.l    $t5, 0x04000400
	sw      $t5, 0x0004($t6)
	lb      $t8, 0x0067($sp)
	beqz    $t8, .L802D8268
	nop
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t7, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t7, 0x0038($sp)
	lw      $t3, 0x0038($sp)
	li      $t2, 0xFD680000
	sw      $t2, 0x0000($t3)
	lb      $t0, 0x0067($sp)
	lw      $t1, 0x0054($sp)
	lw      $t8, 0x0038($sp)
	sll     $t4, $t0, 2
	addu    $t5, $t1, $t4
	lw      $t6, 0x03BC($t5)
	sw      $t6, 0x0004($t8)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t7, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t7, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	li      $t2, 0xE6000000
	sw      $t2, 0x0000($t3)
	lw      $t0, 0x0034($sp)
	sw      $0, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t1, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t1, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	li      $t5, 0xF3000000
	sw      $t5, 0x0000($t6)
	lw      $t7, 0x0030($sp)
	li.u    $t8, 0x0703F800
	li.l    $t8, 0x0703F800
	sw      $t8, 0x0004($t7)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t9, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t9, 0x002C($sp)
	lw      $t3, 0x005C($sp)
	lw      $t8, 0x0058($sp)
	li      $at, 0xE4000000
	addiu   $t0, $t3, 0x000E
	sll     $t1, $t0, 2
	andi    $t4, $t1, 0x0FFF
	addiu   $t7, $t8, 0x0001
	lw      $t0, 0x002C($sp)
	sll     $t9, $t7, 2
	sll     $t5, $t4, 12
	or      $t6, $t5, $at
	andi    $t2, $t9, 0x0FFF
	or      $t3, $t6, $t2
	sw      $t3, 0x0000($t0)
	lw      $t1, 0x005C($sp)
	lw      $t9, 0x0058($sp)
	addiu   $t4, $t1, 0x0006
	sll     $t5, $t4, 2
	addiu   $t6, $t9, -0x0007
	lw      $t1, 0x002C($sp)
	sll     $t2, $t6, 2
	andi    $t8, $t5, 0x0FFF
	sll     $t7, $t8, 12
	andi    $t3, $t2, 0x0FFF
	or      $t0, $t7, $t3
	sw      $t0, 0x0004($t1)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t8, 0xB3000000
	sw      $t8, 0x0000($t9)
	lw      $t6, 0x0028($sp)
	sw      $0, 0x0004($t6)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t2, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t2, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	li      $t3, 0xB2000000
	sw      $t3, 0x0000($t0)
	lw      $t4, 0x0024($sp)
	li.u    $t1, 0x04000400
	li.l    $t1, 0x04000400
	sw      $t1, 0x0004($t4)
	sb      $0, 0x0067($sp)
.L802D8268:
	lw      $t5, 0x0070($sp)
	lw      $t8, 0x0060($sp)
	lui     $t2, %hi(message_80331370)
	lw      $t7, 0x005C($sp)
	addu    $t9, $t5, $t8
	lbu     $t6, 0x0000($t9)
	addu    $t2, $t2, $t6
	lbu     $t2, %lo(message_80331370)($t2)
	addu    $t3, $t7, $t2
	sw      $t3, 0x005C($sp)
.L802D8290:
	lw      $t0, 0x0060($sp)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0060($sp)
	lw      $t4, 0x0070($sp)
	lw      $t5, 0x0060($sp)
	li      $at, 0x00FF
	addu    $t8, $t4, $t5
	lbu     $t9, 0x0000($t8)
	bne     $t9, $at, .L802D7EE4
	nop
.L802D82B8:
	b       .L802D82C0
	nop
.L802D82C0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

message_802D82D4:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	sw      $0, 0x0054($sp)
	la.u    $a0, txt_staff
	jal     segment_to_virtual
	la.l    $a0, txt_staff
	sw      $v0, 0x0050($sp)
	lh      $t6, 0x005A($sp)
	sw      $t6, 0x004C($sp)
	lh      $t7, 0x005E($sp)
	sw      $t7, 0x0048($sp)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0044($sp)
	lw      $t1, 0x0044($sp)
	li      $t0, 0xF5100000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0044($sp)
	li      $t2, 0x07000000
	sw      $t2, 0x0004($t3)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0040($sp)
	lw      $t7, 0x0040($sp)
	li      $t6, 0xE8000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0040($sp)
	sw      $0, 0x0004($t8)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x003C($sp)
	lw      $t2, 0x003C($sp)
	li.u    $t1, 0xF5100400
	li.l    $t1, 0xF5100400
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x003C($sp)
	li.u    $t3, 0x0008C230
	li.l    $t3, 0x0008C230
	sw      $t3, 0x0004($t4)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0038($sp)
	lw      $t8, 0x0038($sp)
	li      $t7, 0xF2000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x0038($sp)
	li.u    $t9, 0x0001C01C
	li.l    $t9, 0x0001C01C
	sw      $t9, 0x0004($t0)
	lw      $t1, 0x0060($sp)
	lw      $t2, 0x0054($sp)
	li      $at, 0x00FF
	addu    $t3, $t1, $t2
	lbu     $t4, 0x0000($t3)
	beq     $t4, $at, .L802D8614
	nop
.L802D83F0:
	lw      $t5, 0x0060($sp)
	lw      $t6, 0x0054($sp)
	li      $at, 0x009E
	addu    $t7, $t5, $t6
	lbu     $t8, 0x0000($t7)
	bne     $t8, $at, .L802D8428
	nop
	b       .L802D8414
	nop
.L802D8414:
	lw      $t9, 0x004C($sp)
	addiu   $t0, $t9, 0x0004
	sw      $t0, 0x004C($sp)
	b       .L802D85EC
	nop
.L802D8428:
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0034($sp)
	lw      $t4, 0x0034($sp)
	li      $t3, 0xE7000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0034($sp)
	sw      $0, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	li      $t8, 0xFD100000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0060($sp)
	lw      $t1, 0x0054($sp)
	lw      $t5, 0x0050($sp)
	lw      $t8, 0x0030($sp)
	addu    $t2, $t0, $t1
	lbu     $t3, 0x0000($t2)
	sll     $t4, $t3, 2
	addu    $t6, $t5, $t4
	lw      $t7, 0x0000($t6)
	sw      $t7, 0x0004($t8)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x002C($sp)
	lw      $t2, 0x002C($sp)
	li      $t1, 0xE6000000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x002C($sp)
	sw      $0, 0x0004($t3)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t5, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t5, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	li      $t6, 0xF3000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0028($sp)
	li.u    $t8, 0x0703F400
	li.l    $t8, 0x0703F400
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0024($sp)
	lw      $t2, 0x004C($sp)
	lw      $t8, 0x0048($sp)
	li      $at, 0xE4000000
	addiu   $t3, $t2, 0x0008
	sll     $t5, $t3, 2
	andi    $t4, $t5, 0x0FFF
	addiu   $t9, $t8, 0x0008
	lw      $t3, 0x0024($sp)
	sll     $t0, $t9, 2
	sll     $t6, $t4, 12
	or      $t7, $t6, $at
	andi    $t1, $t0, 0x0FFF
	or      $t2, $t7, $t1
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x004C($sp)
	lw      $t9, 0x0048($sp)
	lw      $t2, 0x0024($sp)
	sll     $t4, $t5, 2
	andi    $t6, $t4, 0x0FFF
	sll     $t0, $t9, 2
	andi    $t7, $t0, 0x0FFF
	sll     $t8, $t6, 12
	or      $t1, $t8, $t7
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t3, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t3, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $t4, 0xB3000000
	sw      $t4, 0x0000($t6)
	lw      $t9, 0x0020($sp)
	sw      $0, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t0, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li      $t7, 0xB2000000
	sw      $t7, 0x0000($t1)
	lw      $t3, 0x001C($sp)
	li.u    $t2, 0x04000400
	li.l    $t2, 0x04000400
	sw      $t2, 0x0004($t3)
	lw      $t5, 0x004C($sp)
	addiu   $t4, $t5, 0x0007
	sw      $t4, 0x004C($sp)
	b       .L802D85EC
	nop
.L802D85EC:
	lw      $t6, 0x0054($sp)
	addiu   $t9, $t6, 0x0001
	sw      $t9, 0x0054($sp)
	lw      $t0, 0x0060($sp)
	lw      $t8, 0x0054($sp)
	li      $at, 0x00FF
	addu    $t7, $t0, $t8
	lbu     $t1, 0x0000($t7)
	bne     $t1, $at, .L802D83F0
	nop
.L802D8614:
	b       .L802D861C
	nop
.L802D861C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

.globl message_802D862C
message_802D862C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	sb      $0, 0x001F($sp)
	lb      $t6, 0x0023($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L802D86A8
	nop
	lui     $t7, %hi(controller)
	lw      $t7, %lo(controller)($t7)
	lh      $t8, 0x0002($t7)
	slti    $at, $t8, 0x003D
	bnez    $at, .L802D867C
	nop
	lbu     $t9, 0x001F($sp)
	addiu   $t0, $t9, 0x0001
	sb      $t0, 0x001F($sp)
.L802D867C:
	lui     $t1, %hi(controller)
	lw      $t1, %lo(controller)($t1)
	lh      $t2, 0x0002($t1)
	slti    $at, $t2, -0x003C
	beqz    $at, .L802D86A0
	nop
	lbu     $t3, 0x001F($sp)
	addiu   $t4, $t3, 0x0002
	sb      $t4, 0x001F($sp)
.L802D86A0:
	b       .L802D8700
	nop
.L802D86A8:
	lb      $t5, 0x0023($sp)
	li      $at, 0x0002
	bne     $t5, $at, .L802D8700
	nop
	lui     $t6, %hi(controller)
	lw      $t6, %lo(controller)($t6)
	lh      $t7, 0x0000($t6)
	slti    $at, $t7, 0x003D
	bnez    $at, .L802D86DC
	nop
	lbu     $t8, 0x001F($sp)
	addiu   $t9, $t8, 0x0002
	sb      $t9, 0x001F($sp)
.L802D86DC:
	lui     $t0, %hi(controller)
	lw      $t0, %lo(controller)($t0)
	lh      $t1, 0x0000($t0)
	slti    $at, $t1, -0x003C
	beqz    $at, .L802D8700
	nop
	lbu     $t2, 0x001F($sp)
	addiu   $t3, $t2, 0x0001
	sb      $t3, 0x001F($sp)
.L802D8700:
	lui     $t5, %hi(message_80331498)
	lbu     $t5, %lo(message_80331498)($t5)
	lbu     $t4, 0x001F($sp)
	li      $at, 0x0002
	xor     $t6, $t4, $t5
	and     $t7, $t6, $t4
	bne     $t7, $at, .L802D8768
	nop
	lw      $t8, 0x0024($sp)
	lb      $t0, 0x002F($sp)
	lb      $t9, 0x0000($t8)
	bne     $t9, $t0, .L802D8744
	nop
	lb      $t1, 0x002F($sp)
	lw      $t2, 0x0024($sp)
	b       .L802D8768
	sb      $t1, 0x0000($t2)
.L802D8744:
	li.u    $a0, 0x7000F881
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x7000F881
	lw      $t3, 0x0024($sp)
	lb      $t5, 0x0000($t3)
	addiu   $t6, $t5, 0x0001
	sb      $t6, 0x0000($t3)
.L802D8768:
	lui     $t7, %hi(message_80331498)
	lbu     $t7, %lo(message_80331498)($t7)
	lbu     $t4, 0x001F($sp)
	li      $at, 0x0001
	xor     $t8, $t4, $t7
	and     $t9, $t8, $t4
	bne     $t9, $at, .L802D87C8
	nop
	lw      $t0, 0x0024($sp)
	lb      $t2, 0x002B($sp)
	lb      $t1, 0x0000($t0)
	bne     $t1, $t2, .L802D87A4
	nop
	b       .L802D87C8
	nop
.L802D87A4:
	li.u    $a0, 0x7000F881
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x7000F881
	lw      $t5, 0x0024($sp)
	lb      $t6, 0x0000($t5)
	addiu   $t3, $t6, -0x0001
	sb      $t3, 0x0000($t5)
.L802D87C8:
	lui     $t7, %hi(message_8033149C)
	lbu     $t7, %lo(message_8033149C)($t7)
	li      $at, 0x000A
	bne     $t7, $at, .L802D87F4
	nop
	li      $t8, 0x0008
	lui     $at, %hi(message_8033149C)
	sb      $t8, %lo(message_8033149C)($at)
	lui     $at, %hi(message_80331498)
	b       .L802D8814
	sb      $0, %lo(message_80331498)($at)
.L802D87F4:
	lui     $t4, %hi(message_8033149C)
	lbu     $t4, %lo(message_8033149C)($t4)
	lui     $at, %hi(message_8033149C)
	addiu   $t9, $t4, 0x0001
	sb      $t9, %lo(message_8033149C)($at)
	lbu     $t0, 0x001F($sp)
	lui     $at, %hi(message_80331498)
	sb      $t0, %lo(message_80331498)($at)
.L802D8814:
	lbu     $t1, 0x001F($sp)
	andi    $t2, $t1, 0x0003
	bnez    $t2, .L802D882C
	nop
	lui     $at, %hi(message_8033149C)
	sb      $0, %lo(message_8033149C)($at)
.L802D882C:
	b       .L802D8834
	nop
.L802D8834:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl message_802D8844
message_802D8844:
	addiu   $sp, $sp, -0x0008
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	sw      $a2, 0x0010($sp)
	sh      $0, 0x0006($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0000($sp)
	lh      $t6, 0x0006($sp)
	li      $at, 0x00FF
	addu    $t7, $t6, $a1
	lbu     $t8, 0x0000($t7)
	beq     $t8, $at, .L802D88E0
	nop
.L802D887C:
	lh      $t9, 0x0006($sp)
	lui     $t2, %hi(message_80331370)
	lwc1    $f6, 0x0000($sp)
	addu    $t0, $a1, $t9
	lbu     $t1, 0x0000($t0)
	addu    $t2, $t2, $t1
	lbu     $t2, %lo(message_80331370)($t2)
	mtc1    $t2, $f8
	bgez    $t2, .L802D88B4
	cvt.s.w $f10, $f8
	li      $at, 0x4F800000
	mtc1    $at, $f16
	nop
	add.s   $f10, $f10, $f16
.L802D88B4:
	add.s   $f18, $f6, $f10
	swc1    $f18, 0x0000($sp)
	lh      $t3, 0x0006($sp)
	addiu   $t4, $t3, 0x0001
	sh      $t4, 0x0006($sp)
	lh      $t5, 0x0006($sp)
	li      $at, 0x00FF
	addu    $t6, $t5, $a1
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, .L802D887C
	nop
.L802D88E0:
	lwc1    $f4, 0x0000($sp)
	li      $at, 0x40000000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f8, $f4
	div.d   $f6, $f8, $f16
	trunc.w.d $f10, $f6
	mfc1    $t9, $f10
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	subu    $v0, $a0, $t1
	sll     $t2, $v0, 16
	move    $v0, $t2
	sra     $t3, $v0, 16
	b       .L802D892C
	move    $v0, $t3
	b       .L802D892C
	nop
.L802D892C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

message_802D8934:
	addiu   $sp, $sp, -0x0008
	sh      $0, 0x0006($sp)
	sh      $0, 0x0004($sp)
	lh      $t6, 0x0006($sp)
	li      $at, 0x00FF
	addu    $t7, $t6, $a0
	lbu     $t8, 0x0000($t7)
	beq     $t8, $at, .L802D89A0
	nop
.L802D8958:
	lh      $t0, 0x0006($sp)
	lui     $t3, %hi(message_80331370)
	lh      $t9, 0x0004($sp)
	addu    $t1, $a0, $t0
	lbu     $t2, 0x0000($t1)
	addu    $t3, $t3, $t2
	lbu     $t3, %lo(message_80331370)($t3)
	addu    $t4, $t9, $t3
	sh      $t4, 0x0004($sp)
	lh      $t5, 0x0006($sp)
	addiu   $t6, $t5, 0x0001
	sh      $t6, 0x0006($sp)
	lh      $t7, 0x0006($sp)
	li      $at, 0x00FF
	addu    $t8, $t7, $a0
	lbu     $t0, 0x0000($t8)
	bne     $t0, $at, .L802D8958
	nop
.L802D89A0:
	b       .L802D89B0
	lh      $v0, 0x0004($sp)
	b       .L802D89B0
	nop
.L802D89B0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl message_802D89B8
message_802D89B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $t6, 0x0020($sp)
	bnez    $t6, .L802D89F4
	nop
	jal     save_hiscore_get
	lb      $a0, 0x002B($sp)
	andi    $t7, $v0, 0xFFFF
	andi    $t8, $t7, 0xFFFF
	b       .L802D8A04
	sh      $t8, 0x001A($sp)
.L802D89F4:
	lb      $a0, 0x0027($sp)
	jal     save_file_coin_get
	lb      $a1, 0x002B($sp)
	sh      $v0, 0x001A($sp)
.L802D8A04:
	lh      $t9, 0x001A($sp)
	beqz    $t9, .L802D8A68
	nop
	la.u    $a3, str_803314B0
	la.l    $a3, str_803314B0
	li      $a0, 0x0002
	lh      $a1, 0x002E($sp)
	jal     message_802D7B84
	lh      $a2, 0x0032($sp)
	lh      $a1, 0x002E($sp)
	la.u    $a3, str_803314B4
	la.l    $a3, str_803314B4
	li      $a0, 0x0002
	lh      $a2, 0x0032($sp)
	jal     message_802D7B84
	addiu   $a1, $a1, 0x0010
	lh      $a0, 0x001A($sp)
	jal     message_802D8B34
	addiu   $a1, $sp, 0x001C
	lh      $a1, 0x002E($sp)
	li      $a0, 0x0002
	lh      $a2, 0x0032($sp)
	addiu   $a3, $sp, 0x001C
	jal     message_802D7B84
	addiu   $a1, $a1, 0x0020
.L802D8A68:
	b       .L802D8A70
	nop
.L802D8A70:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

message_802D8A80:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lui     $t6, %hi(str_803314B8)
	lhu     $t6, %lo(str_803314B8)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(str_803314BC)
	lhu     $t7, %lo(str_803314BC)($t7)
	sh      $t7, 0x001C($sp)
	lb      $a0, 0x002B($sp)
	jal     save_file_star_count
	lb      $a1, 0x002F($sp)
	sh      $v0, 0x0022($sp)
	lh      $t8, 0x0022($sp)
	beqz    $t8, .L802D8B1C
	nop
	li      $a0, 0x0002
	lh      $a1, 0x0032($sp)
	lh      $a2, 0x0036($sp)
	jal     message_802D7B84
	addiu   $a3, $sp, 0x0020
	lh      $a1, 0x0032($sp)
	li      $a0, 0x0002
	lh      $a2, 0x0036($sp)
	addiu   $a3, $sp, 0x001C
	jal     message_802D7B84
	addiu   $a1, $a1, 0x0010
	lh      $a0, 0x0022($sp)
	jal     message_802D8B34
	addiu   $a1, $sp, 0x0024
	lh      $a1, 0x0032($sp)
	li      $a0, 0x0002
	lh      $a2, 0x0036($sp)
	addiu   $a3, $sp, 0x0024
	jal     message_802D7B84
	addiu   $a1, $a1, 0x0020
.L802D8B1C:
	b       .L802D8B24
	nop
.L802D8B24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl message_802D8B34
message_802D8B34:
	addiu   $sp, $sp, -0x0010
	sb      $0, 0x0003($sp)
	slti    $at, $a0, 0x03E8
	bnez    $at, .L802D8B5C
	nop
	sb      $0, 0x0000($a1)
	li      $t6, 0x00FF
	sb      $t6, 0x0001($a1)
	b       .L802D8C64
	nop
.L802D8B5C:
	li      $at, 0x0064
	div     $0, $a0, $at
	mflo    $t7
	sw      $t7, 0x000C($sp)
	nop
	lw      $t8, 0x000C($sp)
	li      $at, 0x000A
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	subu    $t0, $a0, $t9
	div     $0, $t0, $at
	mflo    $t1
	sw      $t1, 0x0008($sp)
	nop
	lw      $t2, 0x000C($sp)
	lw      $t5, 0x0008($sp)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 3
	addu    $t3, $t3, $t2
	sll     $t6, $t5, 2
	sll     $t3, $t3, 2
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 1
	subu    $t4, $a0, $t3
	subu    $t7, $t4, $t6
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x000C($sp)
	beqz    $t8, .L802D8BFC
	nop
	lb      $t0, 0x0003($sp)
	lw      $t9, 0x000C($sp)
	addu    $t1, $a1, $t0
	sb      $t9, 0x0000($t1)
	lb      $t2, 0x0003($sp)
	addiu   $t3, $t2, 0x0001
	sb      $t3, 0x0003($sp)
.L802D8BFC:
	lw      $t5, 0x0008($sp)
	bnez    $t5, .L802D8C14
	nop
	lw      $t4, 0x000C($sp)
	beqz    $t4, .L802D8C30
	nop
.L802D8C14:
	lb      $t7, 0x0003($sp)
	lw      $t6, 0x0008($sp)
	addu    $t8, $a1, $t7
	sb      $t6, 0x0000($t8)
	lb      $t0, 0x0003($sp)
	addiu   $t9, $t0, 0x0001
	sb      $t9, 0x0003($sp)
.L802D8C30:
	lb      $t2, 0x0003($sp)
	lw      $t1, 0x0004($sp)
	addu    $t3, $a1, $t2
	sb      $t1, 0x0000($t3)
	lb      $t5, 0x0003($sp)
	addiu   $t4, $t5, 0x0001
	sb      $t4, 0x0003($sp)
	lb      $t6, 0x0003($sp)
	li      $t7, 0x00FF
	addu    $t8, $a1, $t6
	sb      $t7, 0x0000($t8)
	b       .L802D8C64
	nop
.L802D8C64:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl message_802D8C6C
message_802D8C6C:
	lui     $v0, %hi(message_80331484)
	jr      $ra
	lh      $v0, %lo(message_80331484)($v0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl message_802D8C88
message_802D8C88:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	lui     $t6, %hi(message_80331484)
	lh      $t6, %lo(message_80331484)($t6)
	li      $at, -0x0001
	bne     $t6, $at, .L802D8CB4
	nop
	lui     $at, %hi(message_80331484)
	sh      $a0, %lo(message_80331484)($at)
	lui     $at, %hi(message_80331480)
	sb      $0, %lo(message_80331480)($at)
.L802D8CB4:
	jr      $ra
	nop
	jr      $ra
	nop

.globl message_802D8CC4
message_802D8CC4:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	lui     $t6, %hi(message_80331484)
	lh      $t6, %lo(message_80331484)($t6)
	li      $at, -0x0001
	bne     $t6, $at, .L802D8CF8
	nop
	lui     $at, %hi(message_80331484)
	sh      $a0, %lo(message_80331484)($at)
	lui     $at, %hi(message_803613F4)
	sw      $a1, %lo(message_803613F4)($at)
	lui     $at, %hi(message_80331480)
	sb      $0, %lo(message_80331480)($at)
.L802D8CF8:
	jr      $ra
	nop
	jr      $ra
	nop

.globl message_802D8D08
message_802D8D08:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	lui     $t6, %hi(message_80331484)
	lh      $t6, %lo(message_80331484)($t6)
	li      $at, -0x0001
	bne     $t6, $at, .L802D8D38
	nop
	lui     $at, %hi(message_80331484)
	sh      $a0, %lo(message_80331484)($at)
	li      $t7, 0x0001
	lui     $at, %hi(message_80331480)
	sb      $t7, %lo(message_80331480)($at)
.L802D8D38:
	jr      $ra
	nop
	jr      $ra
	nop

.globl message_802D8D48
message_802D8D48:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	lui     $t6, %hi(message_80331484)
	lh      $t6, %lo(message_80331484)($t6)
	li      $at, -0x0001
	bne     $t6, $at, .L802D8D80
	nop
	lui     $at, %hi(message_80331484)
	sh      $a0, %lo(message_80331484)($at)
	lui     $at, %hi(message_80331480)
	sb      $0, %lo(message_80331480)($at)
	li      $t7, 0x0001
	lui     $at, %hi(message_80331494)
	sb      $t7, %lo(message_80331494)($at)
.L802D8D80:
	jr      $ra
	nop
	jr      $ra
	nop

.globl message_802D8D90
message_802D8D90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	jal     game_8024B798
	move    $a1, $0
	lui     $t6, %hi(message_80331480)
	lb      $t6, %lo(message_80331480)($t6)
	li      $at, 0x0001
	bne     $t6, $at, .L802D8DC0
	nop
	jal     camera_8028BD34
	li      $a0, 0x0002
.L802D8DC0:
	li      $at, 0x41980000
	mtc1    $at, $f4
	lui     $at, %hi(message_80331478)
	swc1    $f4, %lo(message_80331478)($at)
	li      $at, 0x42B40000
	mtc1    $at, $f6
	lui     $at, %hi(message_80331474)
	swc1    $f6, %lo(message_80331474)($at)
	lui     $at, %hi(message_80331470)
	sb      $0, %lo(message_80331470)($at)
	li      $t7, -0x0001
	lui     $at, %hi(message_80331484)
	sh      $t7, %lo(message_80331484)($at)
	lui     $at, %hi(message_8033148C)
	sh      $0, %lo(message_8033148C)($at)
	lui     $at, %hi(message_80331494)
	sb      $0, %lo(message_80331494)($at)
	lui     $at, %hi(message_80331488)
	sh      $0, %lo(message_80331488)($at)
	lui     $at, %hi(message_803314A0)
	sw      $0, %lo(message_803314A0)($at)
	b       .L802D8E1C
	nop
.L802D8E1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

message_802D8E2C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $s0, 0x0020($sp)
	lw      $t6, 0x0040($sp)
	li      $a0, 0x0002
	li      $a3, 0x0000
	lh      $t7, 0x0006($t6)
	lh      $t8, 0x0008($t6)
	mtc1    $t7, $f4
	mtc1    $t8, $f6
	cvt.s.w $f4, $f4
	cvt.s.w $f6, $f6
	mfc1    $a1, $f4
	mfc1    $a2, $f6
	jal     message_802D7070
	nop
	lui     $s0, %hi(message_80331480)
	lb      $s0, %lo(message_80331480)($s0)
	beqz    $s0, .L802D8E98
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802D8F70
	nop
	b       .L802D9070
	nop
.L802D8E98:
	lui     $t9, %hi(message_80331470)
	lb      $t9, %lo(message_80331470)($t9)
	beqz    $t9, .L802D8EB4
	nop
	li      $at, 0x0003
	bne     $t9, $at, .L802D8F38
	nop
.L802D8EB4:
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	lui     $at, %hi(message_80331478)
	lwc1    $f10, %lo(message_80331478)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mtc1    $0, $f8
	mtc1    $0, $f6
	cvt.d.s $f16, $f10
	li      $a0, 0x0002
	div.d   $f18, $f8, $f16
	li      $a3, 0x3F800000
	div.d   $f10, $f6, $f16
	cvt.s.d $f4, $f18
	mfc1    $a1, $f4
	cvt.s.d $f8, $f10
	mfc1    $a2, $f8
	jal     message_802D7280
	nop
	lui     $at, %hi(message_80331474)
	lwc1    $f18, %lo(message_80331474)($at)
	li      $at, 0x40800000
	mtc1    $at, $f4
	li      $at, 0x3F800000
	mtc1    $at, $f16
	mul.s   $f6, $f18, $f4
	li      $a0, 0x0002
	li      $a2, 0x0000
	li      $a3, 0x0000
	swc1    $f16, 0x0010($sp)
	mfc1    $a1, $f6
	jal     message_802D7174
	nop
.L802D8F38:
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0038($sp)
	lw      $t3, 0x0038($sp)
	li      $t2, 0xFB000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0038($sp)
	li      $t4, 0x0096
	sw      $t4, 0x0004($t5)
	b       .L802D9070
	nop
.L802D8F70:
	lui     $t7, %hi(message_80331470)
	lb      $t7, %lo(message_80331470)($t7)
	beqz    $t7, .L802D8F8C
	nop
	li      $at, 0x0003
	bne     $t7, $at, .L802D9038
	nop
.L802D8F8C:
	lui     $at, %hi(message_803381A0)
	ldc1    $f10, %lo(message_803381A0)($at)
	lui     $at, %hi(message_80331478)
	lwc1    $f8, %lo(message_80331478)($at)
	lui     $at, %hi(message_803381A8)
	ldc1    $f6, %lo(message_803381A8)($at)
	cvt.d.s $f18, $f8
	li      $at, 0x40440000
	div.d   $f4, $f10, $f18
	mtc1    $0, $f10
	mtc1    $at, $f11
	li      $a0, 0x0002
	li      $a3, 0x0000
	sub.d   $f16, $f6, $f4
	mtc1    $0, $f4
	mtc1    $at, $f5
	div.d   $f6, $f10, $f18
	cvt.s.d $f8, $f16
	mfc1    $a1, $f8
	sub.d   $f16, $f6, $f4
	cvt.s.d $f8, $f16
	mfc1    $a2, $f8
	jal     message_802D7070
	nop
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	lui     $at, %hi(message_80331478)
	lwc1    $f18, %lo(message_80331478)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	mtc1    $0, $f10
	mtc1    $0, $f8
	cvt.d.s $f6, $f18
	li      $a0, 0x0002
	div.d   $f4, $f10, $f6
	li      $a3, 0x3F800000
	div.d   $f18, $f8, $f6
	cvt.s.d $f16, $f4
	mfc1    $a1, $f16
	cvt.s.d $f10, $f18
	mfc1    $a2, $f10
	jal     message_802D7280
	nop
.L802D9038:
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t6, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t6, 0x0034($sp)
	lw      $t0, 0x0034($sp)
	li      $t9, 0xFB000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0034($sp)
	li      $t1, -0x006A
	sw      $t1, 0x0004($t2)
	b       .L802D9070
	nop
.L802D9070:
	li      $a0, 0x0001
	li      $a1, 0xC0E00000
	li      $a2, 0x40A00000
	jal     message_802D7070
	li      $a3, 0x0000
	lb      $t3, 0x0047($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f8
	mtc1    $t3, $f4
	lui     $at, %hi(message_803381B0)
	ldc1    $f10, %lo(message_803381B0)($at)
	cvt.s.w $f16, $f4
	li.u    $a1, 0x3F8CCCCD
	li.l    $a1, 0x3F8CCCCD
	li      $a0, 0x0002
	li      $a3, 0x3F800000
	div.s   $f6, $f16, $f8
	cvt.d.s $f18, $f6
	add.d   $f4, $f18, $f10
	cvt.s.d $f16, $f4
	mfc1    $a2, $f16
	jal     message_802D7280
	nop
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t6)
	lw      $t9, 0x0030($sp)
	la.u    $t8, gfx_message_box
	la.l    $t8, gfx_message_box
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	li      $t2, 0xBD000000
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x002C($sp)
	sw      $0, 0x0004($t4)
	b       .L802D9134
	nop
.L802D9134:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

message_802D9148:
	sll     $a0, $a0, 24
	sll     $a1, $a1, 24
	sra     $a1, $a1, 24
	sra     $a0, $a0, 24
	addiu   $sp, $sp, -0x0018
	li      $at, 0x0001
	bne     $a0, $at, .L802D9314
	nop
	li      $at, 0x0001
	bne     $a1, $at, .L802D91AC
	nop
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0010($sp)
	lw      $t9, 0x0010($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0010($sp)
	li      $t0, -0x0001
	sw      $t0, 0x0004($t1)
	b       .L802D930C
	nop
.L802D91AC:
	lui     $t2, %hi(message_80331490)
	lb      $t2, %lo(message_80331490)($t2)
	bne     $a1, $t2, .L802D92D8
	nop
	lui     $t3, %hi(message_803613F0)
	lhu     $t3, %lo(message_803613F0)($t3)
	lui     $at, %hi(math_sin)
	li      $t7, 0x0001
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42480000
	mtc1    $at, $f6
	li      $at, 0x43480000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	cfc1    $t6, $31
	ctc1    $t7, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $t7, $31
	nop
	andi    $at, $t7, 0x0004
	andi    $t7, $t7, 0x0078
	beqz    $t7, .L802D9268
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t7, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t7, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t7, $31
	nop
	andi    $at, $t7, 0x0004
	andi    $t7, $t7, 0x0078
	bnez    $t7, .L802D9260
	nop
	mfc1    $t7, $f18
	li      $at, 0x80000000
	b       .L802D9278
	or      $t7, $t7, $at
.L802D9260:
	b       .L802D9278
	li      $t7, -0x0001
.L802D9268:
	mfc1    $t7, $f18
	nop
	bltz    $t7, .L802D9260
	nop
.L802D9278:
	ctc1    $t6, $31
	sb      $t7, 0x0017($sp)
	nop
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x000C($sp)
	lw      $t1, 0x000C($sp)
	li      $t0, 0xFB000000
	sw      $t0, 0x0000($t1)
	lbu     $t2, 0x0017($sp)
	lw      $t0, 0x000C($sp)
	andi    $t3, $t2, 0x00FF
	sll     $t4, $t3, 24
	sll     $t5, $t3, 16
	or      $t6, $t4, $t5
	sll     $t7, $t3, 8
	or      $t8, $t6, $t7
	ori     $t9, $t8, 0x00FF
	sw      $t9, 0x0004($t0)
	b       .L802D930C
	nop
.L802D92D8:
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0008($sp)
	lw      $t5, 0x0008($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x0008($sp)
	li.u    $t3, 0xC8C8C8FF
	li.l    $t3, 0xC8C8C8FF
	sw      $t3, 0x0004($t6)
.L802D930C:
	b       .L802D9378
	nop
.L802D9314:
	lui     $a2, %hi(message_80331480)
	lb      $a2, %lo(message_80331480)($a2)
	beqz    $a2, .L802D9338
	nop
	li      $at, 0x0001
	beq     $a2, $at, .L802D9340
	nop
	b       .L802D9378
	nop
.L802D9338:
	b       .L802D9378
	nop
.L802D9340:
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0004($sp)
	lw      $t0, 0x0004($sp)
	li      $t9, 0xFB000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0004($sp)
	li      $t1, 0x00FF
	sw      $t1, 0x0004($t2)
	b       .L802D9378
	nop
.L802D9378:
	b       .L802D9380
	nop
.L802D9380:
	jr      $ra
	addiu   $sp, $sp, 0x0018

message_802D9388:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $t8, 0xBD000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x001C($sp)
	sw      $0, 0x0004($t0)
	lb      $t1, 0x0023($sp)
	lb      $t2, 0x0027($sp)
	bne     $t1, $t2, .L802D93F0
	nop
	lw      $t4, 0x0028($sp)
	li      $t3, 0x0001
	sb      $t3, 0x0000($t4)
	b       .L802D943C
	nop
.L802D93F0:
	lb      $t5, 0x0023($sp)
	li      $t7, 0x0002
	li      $a0, 0x0001
	sll     $t6, $t5, 4
	subu    $t8, $t7, $t6
	mtc1    $t8, $f4
	li      $a1, 0x0000
	li      $a3, 0x0000
	cvt.s.w $f4, $f4
	mfc1    $a2, $f4
	jal     message_802D7070
	nop
	lw      $t9, 0x0030($sp)
	sh      $0, 0x0000($t9)
	lw      $t1, 0x002C($sp)
	li      $t0, 0x0001
	sb      $t0, 0x0000($t1)
	b       .L802D943C
	nop
.L802D943C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

message_802D944C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(message_803613F4)
	lw      $t6, %lo(message_803613F4)($t6)
	li      $at, 0x000A
	div     $0, $t6, $at
	mflo    $t7
	sb      $t7, 0x001F($sp)
	nop
	lb      $t9, 0x001F($sp)
	lui     $t8, %hi(message_803613F4)
	lw      $t8, %lo(message_803613F4)($t8)
	sll     $t0, $t9, 2
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 1
	subu    $t1, $t8, $t0
	sb      $t1, 0x001E($sp)
	lb      $t2, 0x001F($sp)
	beqz    $t2, .L802D9560
	nop
	lw      $t3, 0x0020($sp)
	li      $at, 0x0001
	lb      $t4, 0x0000($t3)
	beq     $t4, $at, .L802D94F8
	nop
	lw      $t5, 0x0020($sp)
	la.u    $t7, message_80331370
	la.l    $t7, message_80331370
	lbu     $t9, 0x009E($t7)
	lb      $t6, 0x0000($t5)
	li      $a0, 0x0002
	li      $a2, 0x0000
	multu   $t6, $t9
	li      $a3, 0x0000
	mflo    $t8
	mtc1    $t8, $f4
	nop
	cvt.s.w $f4, $f4
	mfc1    $a1, $f4
	jal     message_802D7070
	nop
.L802D94F8:
	jal     message_802D75DC
	lb      $a0, 0x001F($sp)
	lb      $t0, 0x001F($sp)
	lui     $t1, %hi(message_80331370)
	li      $a0, 0x0002
	addu    $t1, $t1, $t0
	lbu     $t1, %lo(message_80331370)($t1)
	mtc1    $t1, $f6
	bgez    $t1, .L802D9530
	cvt.s.w $f6, $f6
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L802D9530:
	mfc1    $a1, $f6
	li      $a2, 0x0000
	jal     message_802D7070
	li      $a3, 0x0000
	lw      $t3, 0x0020($sp)
	li      $t2, 0x0001
	sb      $t2, 0x0000($t3)
	lw      $t4, 0x0024($sp)
	lh      $t5, 0x0000($t4)
	addiu   $t7, $t5, 0x0001
	b       .L802D9560
	sh      $t7, 0x0000($t4)
.L802D9560:
	lw      $t6, 0x0020($sp)
	li      $at, 0x0001
	lb      $t9, 0x0000($t6)
	beq     $t9, $at, .L802D95B8
	nop
	lw      $t8, 0x0020($sp)
	la.u    $t2, message_80331370
	la.l    $t2, message_80331370
	lb      $t0, 0x0000($t8)
	lbu     $t3, 0x009E($t2)
	li      $a0, 0x0002
	addiu   $t1, $t0, -0x0001
	multu   $t1, $t3
	li      $a2, 0x0000
	li      $a3, 0x0000
	mflo    $t5
	mtc1    $t5, $f10
	nop
	cvt.s.w $f10, $f10
	mfc1    $a1, $f10
	jal     message_802D7070
	nop
.L802D95B8:
	jal     message_802D75DC
	lb      $a0, 0x001E($sp)
	lb      $t7, 0x001E($sp)
	lui     $t4, %hi(message_80331370)
	li      $a0, 0x0002
	addu    $t4, $t4, $t7
	lbu     $t4, %lo(message_80331370)($t4)
	mtc1    $t4, $f16
	bgez    $t4, .L802D95F0
	cvt.s.w $f16, $f16
	li      $at, 0x4F800000
	mtc1    $at, $f18
	nop
	add.s   $f16, $f16, $f18
.L802D95F0:
	mfc1    $a1, $f16
	li      $a2, 0x0000
	jal     message_802D7070
	li      $a3, 0x0000
	lw      $t6, 0x0024($sp)
	lh      $t9, 0x0000($t6)
	addiu   $t8, $t9, 0x0001
	sh      $t8, 0x0000($t6)
	lw      $t2, 0x0020($sp)
	li      $t0, 0x0001
	sb      $t0, 0x0000($t2)
	b       .L802D9624
	nop
.L802D9624:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

message_802D9634:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	la.u    $t7, str_803314C0
	la.l    $t7, str_803314C0
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x001C
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lhu     $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sh      $at, 0x0008($t6)
	lb      $t0, 0x002F($sp)
	lb      $t1, 0x003F($sp)
	slt     $at, $t0, $t1
	bnez    $at, .L802D97C4
	nop
	lb      $t2, 0x0037($sp)
	addu    $t3, $t1, $t2
	slt     $at, $t3, $t0
	bnez    $at, .L802D97C4
	nop
	lw      $t4, 0x0030($sp)
	lh      $t5, 0x0000($t4)
	bnez    $t5, .L802D96B8
	nop
	lb      $t8, 0x003B($sp)
	li      $at, 0x0001
	beq     $t8, $at, .L802D96F8
	nop
.L802D96B8:
	la.u    $t6, message_80331370
	lb      $t9, 0x003B($sp)
	la.l    $t6, message_80331370
	lbu     $t7, 0x009E($t6)
	addiu   $t1, $t9, -0x0001
	li      $a0, 0x0002
	multu   $t7, $t1
	li      $a2, 0x0000
	li      $a3, 0x0000
	mflo    $t2
	mtc1    $t2, $f4
	nop
	cvt.s.w $f4, $f4
	mfc1    $a1, $f4
	jal     message_802D7070
	nop
.L802D96F8:
	lb      $t0, 0x002B($sp)
	sb      $0, 0x0027($sp)
	sll     $t3, $t0, 2
	addu    $t3, $t3, $t0
	addu    $t4, $sp, $t3
	lbu     $t4, 0x001C($t4)
	blez    $t4, .L802D97C4
	nop
.L802D9718:
	lb      $t5, 0x002B($sp)
	lb      $t6, 0x0027($sp)
	sll     $t8, $t5, 2
	addu    $t8, $t8, $t5
	addu    $t9, $t8, $t6
	addu    $a0, $sp, $t9
	jal     message_802D75DC
	lbu     $a0, 0x001D($a0)
	lb      $t7, 0x002B($sp)
	lb      $t2, 0x0027($sp)
	lui     $t4, %hi(message_80331370)
	sll     $t1, $t7, 2
	addu    $t1, $t1, $t7
	addu    $t0, $t1, $t2
	addu    $t3, $sp, $t0
	lbu     $t3, 0x001D($t3)
	li      $a0, 0x0002
	addu    $t4, $t4, $t3
	lbu     $t4, %lo(message_80331370)($t4)
	mtc1    $t4, $f6
	bgez    $t4, .L802D9780
	cvt.s.w $f6, $f6
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L802D9780:
	mfc1    $a1, $f6
	li      $a2, 0x0000
	jal     message_802D7070
	li      $a3, 0x0000
	lb      $t7, 0x002B($sp)
	lb      $t5, 0x0027($sp)
	sll     $t1, $t7, 2
	addu    $t1, $t1, $t7
	addiu   $t8, $t5, 0x0001
	sb      $t8, 0x0027($sp)
	addu    $t2, $sp, $t1
	lbu     $t2, 0x001C($t2)
	sll     $t6, $t8, 24
	sra     $t9, $t6, 24
	slt     $at, $t9, $t2
	bnez    $at, .L802D9718
	nop
.L802D97C4:
	lb      $t3, 0x002B($sp)
	lw      $t0, 0x0030($sp)
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	addu    $t5, $sp, $t4
	lbu     $t5, 0x001C($t5)
	sll     $t8, $t5, 1
	addu    $t6, $t0, $t8
	sw      $t6, 0x0030($sp)
	b       .L802D97F0
	nop
.L802D97F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

message_802D9800:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	bgez    $a0, .L802D9814
	nop
	move    $a0, $0
.L802D9814:
	jr      $ra
	move    $v0, $a0
	jr      $ra
	nop
	jr      $ra
	nop

message_802D982C:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	sw      $s0, 0x0020($sp)
	lw      $t6, 0x005C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x000C($t6)
	sw      $v0, 0x0048($sp)
	li      $t7, 0x0001
	sb      $t7, 0x0047($sp)
	sb      $0, 0x0045($sp)
	sb      $0, 0x0044($sp)
	li      $t8, 0x0001
	sb      $t8, 0x0043($sp)
	lw      $t9, 0x005C($sp)
	lb      $t0, 0x0004($t9)
	sb      $t0, 0x0042($sp)
	sh      $0, 0x003E($sp)
	lui     $t1, %hi(message_80331470)
	lb      $t1, %lo(message_80331470)($t1)
	li      $at, 0x0002
	bne     $t1, $at, .L802D98A4
	nop
	lb      $t2, 0x0042($sp)
	sll     $t3, $t2, 1
	addiu   $t4, $t3, 0x0001
	b       .L802D98B0
	sb      $t4, 0x0046($sp)
.L802D98A4:
	lb      $t5, 0x0042($sp)
	addiu   $t6, $t5, 0x0001
	sb      $t6, 0x0046($sp)
.L802D98B0:
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0038($sp)
	lw      $t0, 0x0038($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0038($sp)
	la.u    $t1, gfx_message_start
	la.l    $t1, gfx_message_start
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(message_8033148C)
	lh      $t3, %lo(message_8033148C)($t3)
	sh      $t3, 0x0040($sp)
	lui     $t4, %hi(message_80331470)
	lb      $t4, %lo(message_80331470)($t4)
	li      $at, 0x0002
	bne     $t4, $at, .L802D992C
	nop
	lui     $t5, %hi(message_8033147C)
	lh      $t5, %lo(message_8033147C)($t5)
	li      $a0, 0x0002
	li      $a1, 0x0000
	mtc1    $t5, $f4
	li      $a3, 0x0000
	cvt.s.w $f4, $f4
	mfc1    $a2, $f4
	jal     message_802D7070
	nop
.L802D992C:
	lb      $t6, 0x0047($sp)
	li      $t8, 0x0002
	li      $a0, 0x0001
	sll     $t7, $t6, 4
	subu    $t9, $t8, $t7
	mtc1    $t9, $f6
	li      $a1, 0x0000
	li      $a3, 0x0000
	cvt.s.w $f6, $f6
	mfc1    $a2, $f6
	jal     message_802D7070
	nop
	lb      $t0, 0x0045($sp)
	bnez    $t0, .L802D9C14
	nop
.L802D9968:
	lb      $a0, 0x005B($sp)
	jal     message_802D9148
	lb      $a1, 0x0047($sp)
	lh      $t1, 0x0040($sp)
	lw      $t2, 0x0048($sp)
	addu    $t3, $t1, $t2
	lbu     $t4, 0x0000($t3)
	sb      $t4, 0x004F($sp)
	lbu     $s0, 0x004F($sp)
	slti    $at, $s0, 0x009F
	bnez    $at, .L802D99C0
	nop
	addiu   $t5, $s0, -0x00D0
	sltiu   $at, $t5, 0x0030
	beqz    $at, L802D9B1C
	nop
	sll     $t5, $t5, 2
	lui     $at, %hi(message_803381B8)
	addu    $at, $at, $t5
	lw      $t5, %lo(message_803381B8)($at)
	jr      $t5
	nop
.L802D99C0:
	li      $at, 0x009E
	beq     $s0, $at, .L802D9A60
	nop
	b       L802D9B1C
	nop
.globl L802D99D4
L802D99D4:
	li      $t6, 0x0002
	sb      $t6, 0x0045($sp)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t8, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t8, 0x0034($sp)
	lw      $t0, 0x0034($sp)
	li      $t9, 0xBD000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0034($sp)
	sw      $0, 0x0004($t1)
	b       .L802D9BFC
	nop
.globl L802D9A10
L802D9A10:
	lb      $t2, 0x0047($sp)
	addiu   $t3, $t2, 0x0001
	sb      $t3, 0x0047($sp)
	addiu   $t4, $sp, 0x003E
	sw      $t4, 0x0010($sp)
	lb      $a0, 0x0047($sp)
	lb      $a1, 0x0046($sp)
	addiu   $a2, $sp, 0x0045
	jal     message_802D9388
	addiu   $a3, $sp, 0x0043
.if 1
	sb      $0, 0x0044($sp)
	lui     $at, %hi(message_gfx)
	sb      $0, %lo(message_gfx)($at)
.endif
	b       .L802D9BFC
	nop
.globl L802D9A40
L802D9A40:
	li      $t5, 0x0001
	sb      $t5, 0x0044($sp)
	b       .L802D9BFC
	nop
.globl L802D9A50
L802D9A50:
	li      $t6, 0x0002
	sb      $t6, 0x0044($sp)
	b       .L802D9BFC
	nop
.L802D9A60:
	lb      $t8, 0x0043($sp)
	addiu   $t7, $t8, 0x0001
	sb      $t7, 0x0043($sp)
	lh      $t9, 0x003E($sp)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x003E($sp)
	b       .L802D9BFC
	nop
.globl L802D9A80
L802D9A80:
	lb      $t1, 0x0043($sp)
	addiu   $t2, $t1, 0x0002
	sb      $t2, 0x0043($sp)
	lh      $t3, 0x003E($sp)
	addiu   $t4, $t3, 0x0002
	sh      $t4, 0x003E($sp)
	b       .L802D9BFC
	nop
.globl L802D9AA0
L802D9AA0:
	lb      $t5, 0x0043($sp)
	lb      $t6, 0x0063($sp)
	move    $a0, $0
	lb      $a1, 0x0047($sp)
	addiu   $a2, $sp, 0x003E
	lb      $a3, 0x0042($sp)
	sw      $t5, 0x0010($sp)
	jal     message_802D9634
	sw      $t6, 0x0014($sp)
	li      $t8, 0x0001
	sb      $t8, 0x0043($sp)
	b       .L802D9BFC
	nop
.globl L802D9AD4
L802D9AD4:
	lb      $t7, 0x0043($sp)
	lb      $t9, 0x0063($sp)
	li      $a0, 0x0001
	lb      $a1, 0x0047($sp)
	addiu   $a2, $sp, 0x003E
	lb      $a3, 0x0042($sp)
	sw      $t7, 0x0010($sp)
	jal     message_802D9634
	sw      $t9, 0x0014($sp)
	li      $t0, 0x0001
	sb      $t0, 0x0043($sp)
	b       .L802D9BFC
	nop
.globl L802D9B08
L802D9B08:
	addiu   $a0, $sp, 0x0043
	jal     message_802D944C
	addiu   $a1, $sp, 0x003E
	b       .L802D9BFC
	nop
.if 1
.globl Lmessagefmtstr
Lmessagefmtstr:
	lb      $a0, 0x0047($sp)
	addiu   $a1, $sp, 0x0043
	addiu   $a2, $sp, 0x003E
	jal     message_fmtstr
	addiu   $a3, $sp, 0x0044
	sb      $v0, 0x0047($sp)
	b       .L802D9BFC
	nop
.endif
.globl L802D9B1C
L802D9B1C:
	lb      $t1, 0x0047($sp)
	lb      $t2, 0x0063($sp)
	slt     $at, $t1, $t2
	bnez    $at, .L802D9BFC
	nop
	lb      $t3, 0x0042($sp)
	addu    $t4, $t2, $t3
	slt     $at, $t4, $t1
	bnez    $at, .L802D9BFC
	nop
	lh      $t5, 0x003E($sp)
	bnez    $t5, .L802D9B60
	nop
	lb      $t6, 0x0043($sp)
	li      $at, 0x0001
	beq     $t6, $at, .L802D9BA0
	nop
.L802D9B60:
	la.u    $t8, message_80331370
	lb      $t9, 0x0043($sp)
	la.l    $t8, message_80331370
	lbu     $t7, 0x009E($t8)
	addiu   $t0, $t9, -0x0001
	li      $a0, 0x0002
	multu   $t7, $t0
	li      $a2, 0x0000
	li      $a3, 0x0000
	mflo    $t2
	mtc1    $t2, $f8
	nop
	cvt.s.w $f8, $f8
	mfc1    $a1, $f8
	jal     message_802D7070
	nop
.L802D9BA0:
.if 0
	jal     message_802D75DC
	lbu     $a0, 0x004F($sp)
.else
	lbu     $a0, 0x004F($sp)
	jal     message_802D75DCnew
	lb      $a1, 0x0044($sp)
	sb      $v0, 0x004F($sp)
	sb      $0, 0x0044($sp)
.endif
	lbu     $t3, 0x004F($sp)
	lui     $t1, %hi(message_80331370)
	li      $a0, 0x0002
	addu    $t1, $t1, $t3
	lbu     $t1, %lo(message_80331370)($t1)
	mtc1    $t1, $f10
	bgez    $t1, .L802D9BD8
	cvt.s.w $f10, $f10
	li      $at, 0x4F800000
	mtc1    $at, $f16
	nop
	add.s   $f10, $f10, $f16
.L802D9BD8:
	mfc1    $a1, $f10
	li      $a2, 0x0000
	jal     message_802D7070
	li      $a3, 0x0000
	li      $t4, 0x0001
	sb      $t4, 0x0043($sp)
	lh      $t5, 0x003E($sp)
	addiu   $t6, $t5, 0x0001
	sh      $t6, 0x003E($sp)
.L802D9BFC:
	lh      $t8, 0x0040($sp)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x0040($sp)
	lb      $t7, 0x0045($sp)
	beqz    $t7, .L802D9968
	nop
.L802D9C14:
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t0, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t1)
	lw      $t5, 0x0030($sp)
	la.u    $t4, gfx_message_end
	la.l    $t4, gfx_message_end
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(message_80331470)
	lb      $t6, %lo(message_80331470)($t6)
	li      $at, 0x0001
	bne     $t6, $at, .L802D9C88
	nop
	lb      $t8, 0x0045($sp)
	li      $at, 0x0002
	bne     $t8, $at, .L802D9C7C
	nop
	li      $t9, -0x0001
	lui     $at, %hi(message_80331488)
	b       .L802D9C88
	sh      $t9, %lo(message_80331488)($at)
.L802D9C7C:
	lh      $t7, 0x0040($sp)
	lui     $at, %hi(message_80331488)
	sh      $t7, %lo(message_80331488)($at)
.L802D9C88:
	lb      $t0, 0x0047($sp)
	lui     $at, %hi(message_803613F2)
	sb      $t0, %lo(message_803613F2)($at)
	b       .L802D9C9C
	nop
.L802D9C9C:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

message_802D9CB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(message_80331470)
	lb      $t6, %lo(message_80331470)($t6)
	li      $at, 0x0001
	bne     $t6, $at, .L802D9CE4
	nop
	la.u    $a1, message_80331490
	la.l    $a1, message_80331490
	li      $a0, 0x0002
	li      $a2, 0x0001
	jal     message_802D862C
	li      $a3, 0x0002
.L802D9CE4:
	lui     $t7, %hi(message_80331490)
	lb      $t7, %lo(message_80331490)($t7)
	lui     $t0, %hi(message_803613F2)
	lb      $t0, %lo(message_803613F2)($t0)
	sll     $t8, $t7, 3
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 3
	li      $t2, 0x0002
	sll     $t1, $t0, 4
	subu    $t3, $t2, $t1
	addiu   $t9, $t8, -0x002F
	mtc1    $t9, $f4
	mtc1    $t3, $f6
	li      $a0, 0x0002
	cvt.s.w $f4, $f4
	li      $a3, 0x0000
	cvt.s.w $f6, $f6
	mfc1    $a1, $f4
	mfc1    $a2, $f6
	jal     message_802D7070
	nop
	lui     $t4, %hi(message_80331480)
	lb      $t4, %lo(message_80331480)($t4)
	bnez    $t4, .L802D9D80
	nop
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $t7, 0xFB000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x0024($sp)
	li      $t9, -0x0001
	sw      $t9, 0x0004($t0)
	b       .L802D9DB0
	nop
.L802D9D80:
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t2, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t2, 0x0020($sp)
	lw      $t4, 0x0020($sp)
	li      $t3, 0xFB000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x0020($sp)
	li      $t5, 0x00FF
	sw      $t5, 0x0004($t6)
.L802D9DB0:
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x001C($sp)
	la.u    $t2, gfx_message_cursor
	la.l    $t2, gfx_message_cursor
	sw      $t2, 0x0004($t1)
	b       .L802D9DEC
	nop
.L802D9DEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

message_802D9DFC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x0034($sp)
	lw      $t7, 0x0034($sp)
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L802D9E2C
	nop
	b       .L802D9F74
	nop
.L802D9E2C:
	lb      $t9, 0x003B($sp)
	li      $a0, 0x0001
	li      $a1, 0x42EC0000
	subu    $at, $0, $t9
	sll     $t0, $at, 4
	addiu   $t1, $t0, 0x0005
	mtc1    $t1, $f4
	li      $a3, 0x0000
	cvt.s.w $f4, $f4
	mfc1    $a2, $f4
	jal     message_802D7070
	nop
	li.u    $a1, 0x3F4CCCCD
	li.l    $a1, 0x3F4CCCCD
	addu    $a2, $a1, $0
	li      $a0, 0x0002
	jal     message_802D7280
	li      $a3, 0x3F800000
	li      $at, 0x3F800000
	mtc1    $at, $f6
	li      $a0, 0x0002
	li      $a1, 0xC2B40000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     message_802D7174
	swc1    $f6, 0x0010($sp)
	lui     $t2, %hi(message_80331480)
	lb      $t2, %lo(message_80331480)($t2)
	bnez    $t2, .L802D9EDC
	nop
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	li      $t5, 0xFB000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0030($sp)
	li      $t7, -0x0001
	sw      $t7, 0x0004($t8)
	b       .L802D9F0C
	nop
.L802D9EDC:
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x002C($sp)
	lw      $t2, 0x002C($sp)
	li      $t1, 0xFB000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x002C($sp)
	li      $t3, 0x00FF
	sw      $t3, 0x0004($t4)
.L802D9F0C:
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0028($sp)
	lw      $t8, 0x0028($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x0028($sp)
	la.u    $t9, gfx_message_cursor
	la.l    $t9, gfx_message_cursor
	sw      $t9, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0024($sp)
	lw      $t4, 0x0024($sp)
	li      $t3, 0xBD000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0024($sp)
	sw      $0, 0x0004($t5)
	b       .L802D9F74
	nop
.L802D9F74:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

message_802D9F84:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	la.u    $t7, message_803314CC
	la.l    $t7, message_803314CC
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x003C
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lhu     $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sh      $at, 0x0008($t6)
	la.u    $t1, message_803314D8
	la.l    $t1, message_803314D8
	lw      $at, 0x0000($t1)
	lw      $t3, 0x0004($t1)
	addiu   $t0, $sp, 0x0034
	sw      $at, 0x0000($t0)
	sw      $t3, 0x0004($t0)
	la.u    $t5, message_803314E0
	la.l    $t5, message_803314E0
	lw      $at, 0x0000($t5)
	addiu   $t4, $sp, 0x0028
	lw      $t6, 0x0004($t5)
	sw      $at, 0x0000($t4)
	lhu     $at, 0x0008($t5)
	sw      $t6, 0x0004($t4)
	sh      $at, 0x0008($t4)
	la.u    $t9, message_803314EC
	la.l    $t9, message_803314EC
	lw      $at, 0x0000($t9)
	addiu   $t7, $sp, 0x001C
	lw      $t0, 0x0004($t9)
	sw      $at, 0x0000($t7)
	lhu     $at, 0x0008($t9)
	sw      $t0, 0x0004($t7)
	sh      $at, 0x0008($t7)
	sh      $0, 0x001A($sp)
.L802DA01C:
	lh      $t1, 0x001A($sp)
	lh      $t4, 0x004A($sp)
	sll     $t3, $t1, 1
	addu    $t8, $sp, $t3
	lh      $t8, 0x003C($t8)
	bne     $t8, $t4, .L802DA05C
	nop
	move    $a0, $0
	jal     Na_SEQ_unmute
	li      $a1, 0x003C
	move    $a0, $0
	li      $a1, 0x0416
	jal     Na_BGM_play
	move    $a2, $0
	b       .L802DA19C
	nop
.L802DA05C:
	lh      $t5, 0x001A($sp)
	addiu   $t6, $t5, 0x0001
	sll     $t2, $t6, 16
	sra     $t7, $t2, 16
	slti    $at, $t7, 0x0005
	bnez    $at, .L802DA01C
	sh      $t6, 0x001A($sp)
	sh      $0, 0x001A($sp)
.L802DA07C:
	lh      $t9, 0x001A($sp)
	lh      $t3, 0x004A($sp)
	sll     $t0, $t9, 1
	addu    $t1, $sp, $t0
	lh      $t1, 0x0034($t1)
	bne     $t1, $t3, .L802DA0BC
	nop
	lui     $t8, %hi(message_80331490)
	lb      $t8, %lo(message_80331490)($t8)
	li      $at, 0x0001
	bne     $t8, $at, .L802DA0BC
	nop
	jal     Na_g_803221B8
	nop
	b       .L802DA19C
	nop
.L802DA0BC:
	lh      $t4, 0x001A($sp)
	addiu   $t5, $t4, 0x0001
	sll     $t6, $t5, 16
	sra     $t2, $t6, 16
	slti    $at, $t2, 0x0004
	bnez    $at, .L802DA07C
	sh      $t5, 0x001A($sp)
	sh      $0, 0x001A($sp)
.L802DA0DC:
	lh      $t7, 0x001A($sp)
	lh      $t1, 0x004A($sp)
	sll     $t9, $t7, 1
	addu    $t0, $sp, $t9
	lh      $t0, 0x0028($t0)
	bne     $t0, $t1, .L802DA128
	nop
	lui     $t3, %hi(message_80331490)
	lb      $t3, %lo(message_80331490)($t3)
	li      $at, 0x0001
	bne     $t3, $at, .L802DA128
	nop
	li.u    $a0, 0x701EFF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x701EFF81
	b       .L802DA19C
	nop
.L802DA128:
	lh      $t8, 0x001A($sp)
	addiu   $t4, $t8, 0x0001
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	slti    $at, $t6, 0x0005
	bnez    $at, .L802DA0DC
	sh      $t4, 0x001A($sp)
	sh      $0, 0x001A($sp)
.L802DA148:
	lh      $t2, 0x001A($sp)
	lh      $t0, 0x004A($sp)
	sll     $t7, $t2, 1
	addu    $t9, $sp, $t7
	lh      $t9, 0x001C($t9)
	bne     $t9, $t0, .L802DA178
	nop
	move    $a0, $0
	jal     Na_SEQ_fadeout
	li      $a1, 0x0001
	b       .L802DA19C
	nop
.L802DA178:
	lh      $t1, 0x001A($sp)
	addiu   $t3, $t1, 0x0001
	sll     $t8, $t3, 16
	sra     $t4, $t8, 16
	slti    $at, $t4, 0x0005
	bnez    $at, .L802DA148
	sh      $t3, 0x001A($sp)
	b       .L802DA19C
	nop
.L802DA19C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

message_802DA1AC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, msg_table
	jal     segment_to_virtual
	la.l    $a0, msg_table
	sw      $v0, 0x0034($sp)
	lui     $t7, %hi(message_80331484)
	lh      $t7, %lo(message_80331484)($t7)
	lw      $t6, 0x0034($sp)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	jal     segment_to_virtual
	lw      $a0, 0x0000($t9)
	sw      $v0, 0x0030($sp)
	jal     segment_to_virtual
	move    $a0, $0
	lw      $t0, 0x0030($sp)
	bne     $v0, $t0, .L802DA210
	nop
	li      $t1, -0x0001
	lui     $at, %hi(message_80331484)
	sh      $t1, %lo(message_80331484)($at)
	b       .L802DA7FC
	nop
.L802DA210:
	lui     $s0, %hi(message_80331470)
	lb      $s0, %lo(message_80331470)($s0)
	beqz    $s0, .L802DA24C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802DA38C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802DA41C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802DA4A8
	nop
	b       .L802DA5B8
	nop
.L802DA24C:
	lui     $at, %hi(message_80331474)
	lwc1    $f4, %lo(message_80331474)($at)
	li      $at, 0x42B40000
	mtc1    $at, $f6
	nop
	c.eq.s  $f4, $f6
	nop
	bc1f    .L802DA290
	nop
	lui     $a0, %hi(message_80331484)
	jal     Na_g_803218F4
	lh      $a0, %lo(message_80331484)($a0)
	li.u    $a0, 0x70040081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70040081
.L802DA290:
	lui     $t2, %hi(message_80331480)
	lb      $t2, %lo(message_80331480)($t2)
	bnez    $t2, .L802DA2F4
	nop
	lui     $at, %hi(message_80331474)
	lwc1    $f8, %lo(message_80331474)($at)
	li      $at, 0x401E0000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	lui     $at, %hi(message_80331474)
	sub.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, %lo(message_80331474)($at)
	lui     $at, %hi(message_80331478)
	lwc1    $f6, %lo(message_80331478)($at)
	li      $at, 0x3FF80000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	lui     $at, %hi(message_80331478)
	sub.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	b       .L802DA344
	swc1    $f18, %lo(message_80331478)($at)
.L802DA2F4:
	lui     $at, %hi(message_80331474)
	lwc1    $f4, %lo(message_80331474)($at)
	li      $at, 0x40240000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	lui     $at, %hi(message_80331474)
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, %lo(message_80331474)($at)
	lui     $at, %hi(message_80331478)
	lwc1    $f18, %lo(message_80331478)($at)
	li      $at, 0x40000000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	lui     $at, %hi(message_80331478)
	sub.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, %lo(message_80331478)($at)
.L802DA344:
	lui     $at, %hi(message_80331474)
	lwc1    $f16, %lo(message_80331474)($at)
	mtc1    $0, $f18
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    .L802DA37C
	nop
	li      $t3, 0x0001
	lui     $at, %hi(message_80331470)
	sb      $t3, %lo(message_80331470)($at)
	li      $t4, 0x0001
	lui     $at, %hi(message_80331490)
	sb      $t4, %lo(message_80331490)($at)
.L802DA37C:
	li      $t5, 0x0001
	sb      $t5, 0x002F($sp)
	b       .L802DA5B8
	nop
.L802DA38C:
	mtc1    $0, $f4
	lui     $at, %hi(message_80331474)
	swc1    $f4, %lo(message_80331474)($at)
	lui     $t7, %hi(controller)
	lw      $t7, %lo(controller)($t7)
	lhu     $t6, 0x0012($t7)
	andi    $t8, $t6, 0x8000
	bnez    $t8, .L802DA3BC
	nop
	andi    $t9, $t6, 0x4000
	beqz    $t9, .L802DA40C
	nop
.L802DA3BC:
	lui     $t0, %hi(message_80331488)
	lh      $t0, %lo(message_80331488)($t0)
	li      $at, -0x0001
	bne     $t0, $at, .L802DA3EC
	nop
	lui     $a0, %hi(message_80331484)
	jal     message_802D9F84
	lh      $a0, %lo(message_80331484)($a0)
	li      $t1, 0x0003
	lui     $at, %hi(message_80331470)
	b       .L802DA40C
	sb      $t1, %lo(message_80331470)($at)
.L802DA3EC:
	li      $t2, 0x0002
	lui     $at, %hi(message_80331470)
	sb      $t2, %lo(message_80331470)($at)
	li.u    $a0, 0x70130081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70130081
.L802DA40C:
	li      $t3, 0x0001
	sb      $t3, 0x002F($sp)
	b       .L802DA5B8
	nop
.L802DA41C:
	lw      $t5, 0x0030($sp)
	lui     $t4, %hi(message_8033147C)
	lh      $t4, %lo(message_8033147C)($t4)
	lb      $t7, 0x0004($t5)
	lui     $at, %hi(message_8033147C)
	sll     $t8, $t7, 1
	addu    $t6, $t4, $t8
	sh      $t6, %lo(message_8033147C)($at)
	lw      $t0, 0x0030($sp)
	lui     $t9, %hi(message_8033147C)
	lh      $t9, %lo(message_8033147C)($t9)
	lb      $t1, 0x0004($t0)
	sll     $t2, $t1, 4
	slt     $at, $t9, $t2
	bnez    $at, .L802DA480
	nop
	lui     $t3, %hi(message_80331488)
	lh      $t3, %lo(message_80331488)($t3)
	lui     $at, %hi(message_8033148C)
	sh      $t3, %lo(message_8033148C)($at)
	li      $t5, 0x0001
	lui     $at, %hi(message_80331470)
	sb      $t5, %lo(message_80331470)($at)
	lui     $at, %hi(message_8033147C)
	sh      $0, %lo(message_8033147C)($at)
.L802DA480:
	lui     $t7, %hi(message_8033147C)
	lh      $t7, %lo(message_8033147C)($t7)
	bgez    $t7, .L802DA498
	sra     $t4, $t7, 4
	addiu   $at, $t7, 0x000F
	sra     $t4, $at, 4
.L802DA498:
	addiu   $t8, $t4, 0x0001
	sb      $t8, 0x002F($sp)
	b       .L802DA5B8
	nop
.L802DA4A8:
	lui     $at, %hi(message_80331474)
	lwc1    $f6, %lo(message_80331474)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	nop
	c.eq.s  $f6, $f8
	nop
	bc1f    .L802DA518
	nop
	move    $a0, $0
	jal     game_8024B798
	move    $a1, $0
	li.u    $a0, 0x70050081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70050081
	lui     $t6, %hi(message_80331480)
	lb      $t6, %lo(message_80331480)($t6)
	li      $at, 0x0001
	bne     $t6, $at, .L802DA508
	nop
	jal     camera_8028BD34
	li      $a0, 0x0002
.L802DA508:
	lui     $t0, %hi(message_80331490)
	lb      $t0, %lo(message_80331490)($t0)
	lui     $at, %hi(message_803314A0)
	sw      $t0, %lo(message_803314A0)($at)
.L802DA518:
	lui     $at, %hi(message_80331474)
	lwc1    $f10, %lo(message_80331474)($at)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lui     $at, %hi(message_80331474)
	add.s   $f18, $f10, $f16
	swc1    $f18, %lo(message_80331474)($at)
	lui     $at, %hi(message_80331478)
	lwc1    $f4, %lo(message_80331478)($at)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lui     $at, %hi(message_80331478)
	add.s   $f8, $f4, $f6
	swc1    $f8, %lo(message_80331478)($at)
	lui     $at, %hi(message_80331474)
	lwc1    $f10, %lo(message_80331474)($at)
	li      $at, 0x42B40000
	mtc1    $at, $f16
	nop
	c.eq.s  $f10, $f16
	nop
	bc1f    .L802DA5A8
	nop
	lui     $at, %hi(message_80331470)
	sb      $0, %lo(message_80331470)($at)
	li      $t1, -0x0001
	lui     $at, %hi(message_80331484)
	sh      $t1, %lo(message_80331484)($at)
	lui     $at, %hi(message_8033148C)
	sh      $0, %lo(message_8033148C)($at)
	lui     $at, %hi(message_80331494)
	sb      $0, %lo(message_80331494)($at)
	lui     $at, %hi(message_80331488)
	sh      $0, %lo(message_80331488)($at)
	lui     $at, %hi(message_803314A0)
	sw      $0, %lo(message_803314A0)($at)
.L802DA5A8:
	li      $t9, 0x0001
	sb      $t9, 0x002F($sp)
	b       .L802DA5B8
	nop
.L802DA5B8:
	lw      $t2, 0x0030($sp)
	move    $a0, $t2
	jal     message_802D8E2C
	lb      $a1, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t3, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t3, 0x0028($sp)
	lw      $t7, 0x0030($sp)
	jal     message_802D9800
	lh      $a0, 0x0006($t7)
	lw      $t4, 0x0030($sp)
	li      $t6, 0x00F0
	move    $s0, $v0
	lh      $t8, 0x0008($t4)
	jal     message_802D9800
	subu    $a0, $t6, $t8
	mtc1    $v0, $f18
	bgez    $v0, .L802DA620
	cvt.s.w $f4, $f18
	li      $at, 0x4F800000
	mtc1    $at, $f6
	nop
	add.s   $f4, $f4, $f6
.L802DA620:
	li      $at, 0x40800000
	mtc1    $at, $f8
	mtc1    $s0, $f18
	mul.s   $f10, $f4, $f8
	cvt.s.w $f6, $f18
	trunc.w.s $f16, $f10
	mfc1    $t1, $f16
	bgez    $s0, .L802DA654
	andi    $t9, $t1, 0x0FFF
	li      $at, 0x4F800000
	mtc1    $at, $f4
	nop
	add.s   $f6, $f6, $f4
.L802DA654:
	li      $at, 0x40800000
	mtc1    $at, $f8
	lw      $t8, 0x0028($sp)
	li      $at, 0xED000000
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t3, $f16
	nop
	andi    $t5, $t3, 0x0FFF
	sll     $t7, $t5, 12
	or      $t4, $t7, $at
	or      $t6, $t9, $t4
	sw      $t6, 0x0000($t8)
	lw      $t0, 0x0030($sp)
	lh      $a0, 0x0006($t0)
	jal     message_802D9800new # message_802D9800
	addiu   $a0, $a0, 0x0084
	lw      $t1, 0x0030($sp)
	li      $at, 0x0005
	move    $s0, $v0
	lb      $t2, 0x0004($t1)
	lh      $t7, 0x0008($t1)
	sll     $t3, $t2, 2
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 4
	div     $0, $t3, $at
	mflo    $t5
	subu    $a0, $t5, $t7
	jal     message_802D9800
	addiu   $a0, $a0, 0x00F0
	mtc1    $v0, $f18
	bgez    $v0, .L802DA6E8
	cvt.s.w $f4, $f18
	li      $at, 0x4F800000
	mtc1    $at, $f6
	nop
	add.s   $f4, $f4, $f6
.L802DA6E8:
	li      $at, 0x40800000
	mtc1    $at, $f8
	mtc1    $s0, $f18
	mul.s   $f10, $f4, $f8
	cvt.s.w $f6, $f18
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	bgez    $s0, .L802DA71C
	andi    $t6, $t4, 0x0FFF
	li      $at, 0x4F800000
	mtc1    $at, $f4
	nop
	add.s   $f6, $f6, $f4
.L802DA71C:
	li      $at, 0x40800000
	mtc1    $at, $f8
	lw      $t5, 0x0028($sp)
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t0, $f16
	nop
	andi    $t2, $t0, 0x0FFF
	sll     $t3, $t2, 12
	or      $t1, $t6, $t3
	sw      $t1, 0x0004($t5)
	move    $a0, $0
	lw      $a1, 0x0030($sp)
	jal     message_802D982C
	lb      $a2, 0x002F($sp)
	lui     $t7, %hi(message_80331488)
	lh      $t7, %lo(message_80331488)($t7)
	li      $at, -0x0001
	bne     $t7, $at, .L802DA788
	nop
	lui     $t9, %hi(message_80331494)
	lb      $t9, %lo(message_80331494)($t9)
	li      $at, 0x0001
	bne     $t9, $at, .L802DA788
	nop
	jal     message_802D9CB0
	nop
.L802DA788:
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t4, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t4, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	li.u    $t0, 0xED008008
	li.l    $t0, 0xED008008
	sw      $t0, 0x0000($t2)
	lw      $t3, 0x0024($sp)
	li.u    $t6, 0x004F03B0
	li.l    $t6, 0x004F03B0
	sw      $t6, 0x0004($t3)
	lui     $t1, %hi(message_80331488)
	lh      $t1, %lo(message_80331488)($t1)
	li      $at, -0x0001
	beq     $t1, $at, .L802DA7F4
	nop
	lui     $t5, %hi(message_80331470)
	lb      $t5, %lo(message_80331470)($t5)
	li      $at, 0x0001
	bne     $t5, $at, .L802DA7F4
	nop
	lw      $t7, 0x0030($sp)
	jal     message_802D9DFC
	lb      $a0, 0x0004($t7)
.L802DA7F4:
	b       .L802DA7FC
	nop
.L802DA7FC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl message_802DA810
message_802DA810:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	lui     $t6, %hi(message_803314F8)
	lh      $t6, %lo(message_803314F8)($t6)
	li      $at, -0x0001
	bne     $t6, $at, .L802DA834
	nop
	lui     $at, %hi(message_803314F8)
	sh      $a0, %lo(message_803314F8)($at)
.L802DA834:
	jr      $ra
	nop
	jr      $ra
	nop

.globl message_802DA844
message_802DA844:
	lui     $at, %hi(message_8033160C)
	sh      $0, %lo(message_8033160C)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl message_802DA85C
message_802DA85C:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0004($sp)
	lw      $t9, 0x0004($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0004($sp)
	la.u    $t0, gfx_dprint_1cyc_start
	la.l    $t0, gfx_dprint_1cyc_start
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0000($sp)
	lw      $t5, 0x0000($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(message_8033160C)
	lhu     $t6, %lo(message_8033160C)($t6)
	lw      $t9, 0x0000($sp)
	li      $at, -0x0100
	andi    $t7, $t6, 0x00FF
	or      $t8, $t7, $at
	sw      $t8, 0x0004($t9)
	b       .L802DA8DC
	nop
.L802DA8DC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl message_802DA8E4
message_802DA8E4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0004($sp)
	lw      $t9, 0x0004($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0004($sp)
	la.u    $t0, gfx_dprint_1cyc_end
	la.l    $t0, gfx_dprint_1cyc_end
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(message_8033160C)
	lhu     $t2, %lo(message_8033160C)($t2)
	slti    $at, $t2, 0x00FA
	beqz    $at, .L802DA948
	nop
	lui     $t3, %hi(message_8033160C)
	lhu     $t3, %lo(message_8033160C)($t3)
	lui     $at, %hi(message_8033160C)
	addiu   $t4, $t3, 0x0019
	b       .L802DA954
	sh      $t4, %lo(message_8033160C)($at)
.L802DA948:
	li      $t5, 0x00FF
	lui     $at, %hi(message_8033160C)
	sh      $t5, %lo(message_8033160C)($at)
.L802DA954:
	b       .L802DA95C
	nop
.L802DA95C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

message_802DA964:
	andi    $a0, $a0, 0x00FF
	slti    $at, $a0, 0x0041
	bnez    $at, .L802DA990
	nop
	slti    $at, $a0, 0x005B
	beqz    $at, .L802DA990
	nop
	addiu   $v0, $a0, -0x0037
	andi    $t6, $v0, 0x00FF
	jr      $ra
	move    $v0, $t6
.L802DA990:
	slti    $at, $a0, 0x0061
	bnez    $at, .L802DA9B8
	nop
	slti    $at, $a0, 0x007B
	beqz    $at, .L802DA9B8
	nop
	addiu   $v0, $a0, -0x0057
	andi    $t7, $v0, 0x00FF
	jr      $ra
	move    $v0, $t7
.L802DA9B8:
	li      $at, 0x0020
	bne     $a0, $at, .L802DA9CC
	nop
	jr      $ra
	li      $v0, 0x009E
.L802DA9CC:
	li      $at, 0x002E
	bne     $a0, $at, .L802DA9E0
	nop
	jr      $ra
	li      $v0, 0x0024
.L802DA9E0:
	li      $at, 0x0033
	bne     $a0, $at, .L802DA9F4
	nop
	jr      $ra
	li      $v0, 0x0003
.L802DA9F4:
	li      $at, 0x0034
	bne     $a0, $at, .L802DAA08
	nop
	jr      $ra
	li      $v0, 0x0004
.L802DAA08:
	li      $at, 0x0036
	bne     $a0, $at, .L802DAA1C
	nop
	jr      $ra
	li      $v0, 0x0006
.L802DAA1C:
	jr      $ra
	li      $v0, 0x009E
	jr      $ra
	nop
	jr      $ra
	nop

.globl message_802DAA34
message_802DAA34:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0088($sp)
	sw      $a1, 0x008C($sp)
	sw      $a2, 0x0090($sp)
	sw      $0, 0x0084($sp)
	lw      $t6, 0x0090($sp)
	lw      $t7, 0x0084($sp)
	addu    $t8, $t6, $t7
	lb      $t9, 0x0000($t8)
	sb      $t9, 0x0083($sp)
	lbu     $t0, 0x0083($sp)
	beqz    $t0, .L802DAAAC
	nop
.L802DAA6C:
	jal     message_802DA964
	lbu     $a0, 0x0083($sp)
	lw      $t1, 0x0084($sp)
	addu    $t2, $sp, $t1
	sb      $v0, 0x001C($t2)
	lw      $t3, 0x0084($sp)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0084($sp)
	lw      $t5, 0x0090($sp)
	lw      $t6, 0x0084($sp)
	addu    $t7, $t5, $t6
	lb      $t8, 0x0000($t7)
	sb      $t8, 0x0083($sp)
	lbu     $t9, 0x0083($sp)
	bnez    $t9, .L802DAA6C
	nop
.L802DAAAC:
	lw      $t1, 0x0084($sp)
	li      $t0, 0x00FF
	addu    $t2, $sp, $t1
	sb      $t0, 0x001C($t2)
	lh      $a0, 0x008A($sp)
	lh      $a1, 0x008E($sp)
	jal     message_802D82D4
	addiu   $a2, $sp, 0x001C
	b       .L802DAAD4
	nop
.L802DAAD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

.globl message_802DAAE4
message_802DAAE4:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	lui     $t6, %hi(message_80331610)
	lh      $t6, %lo(message_80331610)($t6)
	li      $at, -0x0001
	bne     $t6, $at, .L802DAB48
	nop
	lui     $at, %hi(message_80331610)
	sh      $a2, %lo(message_80331610)($at)
	lui     $at, %hi(message_80331614)
	sh      $a3, %lo(message_80331614)($at)
	lui     $at, %hi(message_80331618)
	sh      $0, %lo(message_80331618)($at)
	lui     $at, %hi(message_803613FA)
	sh      $a0, %lo(message_803613FA)($at)
	lui     $at, %hi(message_803613FC)
	sh      $a1, %lo(message_803613FC)($at)
	lui     $at, %hi(message_8033160C)
	sh      $0, %lo(message_8033160C)($at)
.L802DAB48:
	jr      $ra
	nop
	jr      $ra
	nop

/* void message_802DAB58(void) */
.globl message_802DAB58
message_802DAB58:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(message_80331610)
	lh      $t6, %lo(message_80331610)($t6)
	li      $at, -0x0001
	bne     $t6, $at, .L802DAB7C
	nop
	b       .L802DAD44
	nop
.L802DAB7C:
	jal     message_802D7384
	nop
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0020($sp)
	la.u    $t1, gfx_message_start
	la.l    $t1, gfx_message_start
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $t5, 0xFB000000
	sw      $t5, 0x0000($t6)
	lui     $t7, %hi(message_8033160C)
	lhu     $t7, %lo(message_8033160C)($t7)
	lw      $t0, 0x001C($sp)
	li      $at, -0x0100
	andi    $t8, $t7, 0x00FF
	or      $t9, $t8, $at
	sw      $t9, 0x0004($t0)
	lui     $t1, %hi(message_80331610)
	lh      $t1, %lo(message_80331610)($t1)
	lui     $a1, %hi(str_803315E4)
	lui     $a0, %hi(message_803613FA)
	sll     $t2, $t1, 2
	addu    $a1, $a1, $t2
	lw      $a1, %lo(str_803315E4)($a1)
	lh      $a0, %lo(message_803613FA)($a0)
	jal     message_802D8844
	li      $a2, 0x41200000
	sh      $v0, 0x0026($sp)
	lui     $t5, %hi(message_80331610)
	lh      $t5, %lo(message_80331610)($t5)
	lui     $t3, %hi(message_803613FC)
	lh      $t3, %lo(message_803613FC)($t3)
	lui     $a2, %hi(str_803315E4)
	sll     $t6, $t5, 2
	addu    $a2, $a2, $t6
	li      $t4, 0x00F0
	lw      $a2, %lo(str_803315E4)($a2)
	lh      $a0, 0x0026($sp)
	jal     message_802D77DC
	subu    $a1, $t4, $t3
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0018($sp)
	la.u    $t1, gfx_message_end
	la.l    $t1, gfx_message_end
	sw      $t1, 0x0004($t2)
	lui     $t4, %hi(message_80331618)
	lh      $t4, %lo(message_80331618)($t4)
	slti    $at, $t4, 0x0005
	beqz    $at, .L802DACB0
	nop
	lui     $t3, %hi(message_8033160C)
	lhu     $t3, %lo(message_8033160C)($t3)
	lui     $at, %hi(message_8033160C)
	addiu   $t5, $t3, 0x0032
	sh      $t5, %lo(message_8033160C)($at)
.L802DACB0:
	lui     $t7, %hi(message_80331614)
	lh      $t7, %lo(message_80331614)($t7)
	lui     $t6, %hi(message_80331618)
	lh      $t6, %lo(message_80331618)($t6)
	addiu   $t8, $t7, 0x0005
	slt     $at, $t8, $t6
	beqz    $at, .L802DACE4
	nop
	lui     $t9, %hi(message_8033160C)
	lhu     $t9, %lo(message_8033160C)($t9)
	lui     $at, %hi(message_8033160C)
	addiu   $t0, $t9, -0x0032
	sh      $t0, %lo(message_8033160C)($at)
.L802DACE4:
	lui     $t2, %hi(message_80331614)
	lh      $t2, %lo(message_80331614)($t2)
	lui     $t1, %hi(message_80331618)
	lh      $t1, %lo(message_80331618)($t1)
	addiu   $t4, $t2, 0x000A
	slt     $at, $t4, $t1
	beqz    $at, .L802DAD28
	nop
	li      $t3, -0x0001
	lui     $at, %hi(message_80331610)
	sh      $t3, %lo(message_80331610)($at)
	lui     $at, %hi(message_8033160C)
	sh      $0, %lo(message_8033160C)($at)
	lui     $at, %hi(message_80331618)
	sh      $0, %lo(message_80331618)($at)
	b       .L802DAD44
	nop
.L802DAD28:
	lui     $t5, %hi(message_80331618)
	lh      $t5, %lo(message_80331618)($t5)
	lui     $at, %hi(message_80331618)
	addiu   $t7, $t5, 0x0001
	sh      $t7, %lo(message_80331618)($at)
	b       .L802DAD44
	nop
.L802DAD44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

message_802DAD54:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	la.u    $a0, msg_table
	jal     segment_to_virtual
	la.l    $a0, msg_table
	sw      $v0, 0x0044($sp)
	lui     $t7, %hi(message_80331484)
	lh      $t7, %lo(message_80331484)($t7)
	lw      $t6, 0x0044($sp)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	jal     segment_to_virtual
	lw      $a0, 0x0000($t9)
	sw      $v0, 0x0040($sp)
	lw      $t0, 0x0040($sp)
	jal     segment_to_virtual
	lw      $a0, 0x000C($t0)
	sw      $v0, 0x003C($sp)
	li      $a0, 0x0001
	li      $a1, 0x42C20000
	li      $a2, 0x42EC0000
	jal     message_802D7070
	li      $a3, 0x0000
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0038($sp)
	lw      $t4, 0x0038($sp)
	li      $t3, 0xFB000000
	sw      $t3, 0x0000($t4)
	lui     $t5, %hi(message_8033160C)
	lhu     $t5, %lo(message_8033160C)($t5)
	lw      $t8, 0x0038($sp)
	li      $at, -0x0100
	andi    $t7, $t5, 0x00FF
	or      $t6, $t7, $at
	sw      $t6, 0x0004($t8)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x0034($sp)
	la.u    $t3, 0x0700EA58
	la.l    $t3, 0x0700EA58
	sw      $t3, 0x0004($t4)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t5, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t5, 0x0030($sp)
	lw      $t8, 0x0030($sp)
	li      $t6, 0xBD000000
	sw      $t6, 0x0000($t8)
	lw      $t9, 0x0030($sp)
	sw      $0, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x002C($sp)
	la.u    $t4, gfx_message_start
	la.l    $t4, gfx_message_start
	sw      $t4, 0x0004($t5)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t7, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t7, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t9)
	lui     $t0, %hi(message_8033160C)
	lhu     $t0, %lo(message_8033160C)($t0)
	lw      $t3, 0x0028($sp)
	li.u    $at, 0x14141400
	li.l    $at, 0x14141400
	andi    $t1, $t0, 0x00FF
	or      $t2, $t1, $at
	sw      $t2, 0x0004($t3)
	li      $a0, 0x0026
	li      $a1, 0x008E
	jal     message_802D77DC
	lw      $a2, 0x003C($sp)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	li      $t7, 0xFB000000
	sw      $t7, 0x0000($t6)
	lw      $t9, 0x0024($sp)
	li      $t8, -0x0001
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0020($sp)
	la.u    $t4, gfx_message_end
	la.l    $t4, gfx_message_end
	sw      $t4, 0x0004($t5)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t7, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t7, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t9)
	lui     $t0, %hi(message_8033160C)
	lhu     $t0, %lo(message_8033160C)($t0)
	lw      $t3, 0x001C($sp)
	li.u    $at, 0xC8507800
	li.l    $at, 0xC8507800
	andi    $t1, $t0, 0x00FF
	or      $t2, $t1, $at
	sw      $t2, 0x0004($t3)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t6)
	lw      $t9, 0x0018($sp)
	la.u    $t8, 0x0700F2E8
	la.l    $t8, 0x0700F2E8
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(message_80331618)
	lh      $t0, %lo(message_80331618)($t0)
	bnez    $t0, .L802DAFCC
	nop
	lui     $at, %hi(message_8033160C)
	sh      $0, %lo(message_8033160C)($at)
.L802DAFCC:
	lui     $t1, %hi(message_80331618)
	lh      $t1, %lo(message_80331618)($t1)
	slti    $at, $t1, 0x0014
	beqz    $at, .L802DAFF4
	nop
	lui     $t2, %hi(message_8033160C)
	lhu     $t2, %lo(message_8033160C)($t2)
	lui     $at, %hi(message_8033160C)
	addiu   $t3, $t2, 0x000A
	sh      $t3, %lo(message_8033160C)($at)
.L802DAFF4:
	lui     $t4, %hi(message_80331618)
	lh      $t4, %lo(message_80331618)($t4)
	slti    $at, $t4, 0x00FB
	bnez    $at, .L802DB01C
	nop
	lui     $t5, %hi(message_8033160C)
	lhu     $t5, %lo(message_8033160C)($t5)
	lui     $at, %hi(message_8033160C)
	addiu   $t7, $t5, -0x000A
	sh      $t7, %lo(message_8033160C)($at)
.L802DB01C:
	lui     $t6, %hi(message_80331618)
	lh      $t6, %lo(message_80331618)($t6)
	slti    $at, $t6, 0x010F
	bnez    $at, .L802DB060
	nop
	li      $t8, -0x0001
	lui     $at, %hi(message_80331610)
	sh      $t8, %lo(message_80331610)($at)
	lui     $at, %hi(message_8033160C)
	sh      $0, %lo(message_8033160C)($at)
	li      $t9, -0x0001
	lui     $at, %hi(message_80331484)
	sh      $t9, %lo(message_80331484)($at)
	lui     $at, %hi(message_80331618)
	sh      $0, %lo(message_80331618)($at)
	b       .L802DB07C
	nop
.L802DB060:
	lui     $t0, %hi(message_80331618)
	lh      $t0, %lo(message_80331618)($t0)
	lui     $at, %hi(message_80331618)
	addiu   $t1, $t0, 0x0001
	sh      $t1, %lo(message_80331618)($at)
	b       .L802DB07C
	nop
.L802DB07C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl message_802DB08C
message_802DB08C:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	li      $a0, 0x0001
	li      $a1, 0x43200000
	li      $a2, 0x42F00000
	jal     message_802D7070
	li      $a3, 0x0000
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0044($sp)
	lw      $t9, 0x0044($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0044($sp)
	li.u    $t0, 0x323232B4
	li.l    $t0, 0x323232B4
	sw      $t0, 0x0004($t1)
	li      $a0, 0x0001
	li      $a1, 0xC1A00000
	li      $a2, 0xC1000000
	jal     message_802D7070
	li      $a3, 0x0000
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0040($sp)
	lw      $t5, 0x0040($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0040($sp)
	la.u    $t6, gfx_message_cursor
	la.l    $t6, gfx_message_cursor
	sw      $t6, 0x0004($t7)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x003C($sp)
	lw      $t1, 0x003C($sp)
	li      $t0, 0xBD000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x003C($sp)
	sw      $0, 0x0004($t2)
	li      $a0, 0x0001
	li      $a1, 0x41A00000
	li      $a2, 0x41000000
	jal     message_802D7070
	li      $a3, 0x0000
	li      $at, 0x3F800000
	mtc1    $at, $f4
	li      $a0, 0x0002
	li      $a1, 0x43340000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     message_802D7174
	swc1    $f4, 0x0010($sp)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x0038($sp)
	lw      $t6, 0x0038($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0038($sp)
	la.u    $t7, gfx_message_cursor
	la.l    $t7, gfx_message_cursor
	sw      $t7, 0x0004($t8)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	li      $t1, 0xBD000000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x0034($sp)
	sw      $0, 0x0004($t3)
	li      $a0, 0x0001
	li      $a1, 0x41000000
	li      $a2, 0xC1A00000
	jal     message_802D7070
	li      $a3, 0x0000
	li      $at, 0x3F800000
	mtc1    $at, $f6
	li      $a0, 0x0002
	li      $a1, 0x42B40000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     message_802D7174
	swc1    $f6, 0x0010($sp)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0030($sp)
	lw      $t7, 0x0030($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0030($sp)
	la.u    $t8, gfx_message_cursor
	la.l    $t8, gfx_message_cursor
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	li      $t2, 0xBD000000
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x002C($sp)
	sw      $0, 0x0004($t4)
	li      $a0, 0x0001
	li      $a1, 0xC1000000
	li      $a2, 0x41A00000
	jal     message_802D7070
	li      $a3, 0x0000
	li      $at, 0x3F800000
	mtc1    $at, $f8
	li      $a0, 0x0002
	li      $a1, 0xC2B40000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     message_802D7174
	swc1    $f8, 0x0010($sp)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0028($sp)
	lw      $t8, 0x0028($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t8)
	lw      $t0, 0x0028($sp)
	la.u    $t9, gfx_message_cursor
	la.l    $t9, gfx_message_cursor
	sw      $t9, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0024($sp)
	lw      $t4, 0x0024($sp)
	li      $t3, 0xBD000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0024($sp)
	sw      $0, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	li      $t8, 0xBD000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0020($sp)
	sw      $0, 0x0004($t0)
	b       .L802DB340
	nop
.L802DB340:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl message_802DB350
message_802DB350:
	lui     $at, %hi(message_803613FE)
	sb      $0, %lo(message_803613FE)($at)
	jr      $ra
	nop
	jr      $ra
	nop

message_802DB368:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, .L802DB394
	nop
	li      $t6, 0x0001
	lui     $at, %hi(message_8033161C)
	b       .L802DB3A0
	sb      $t6, %lo(message_8033161C)($at)
.L802DB394:
	li      $t7, 0x0002
	lui     $at, %hi(message_8033161C)
	sb      $t7, %lo(message_8033161C)($at)
.L802DB3A0:
	b       .L802DB3A8
	nop
.L802DB3A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

message_802DB3B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x0000
	li      $a2, 0x43700000
	jal     message_802D7070
	li      $a3, 0x0000
	li.u    $a1, 0x40266666
	li.u    $a2, 0x4059999A
	li.l    $a2, 0x4059999A
	li.l    $a1, 0x40266666
	li      $a0, 0x0002
	jal     message_802D7280
	li      $a3, 0x3F800000
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0024($sp)
	li      $t0, 0x006E
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0020($sp)
	lw      $t5, 0x0020($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0020($sp)
	la.u    $t6, gfx_message_box
	la.l    $t6, gfx_message_box
	sw      $t6, 0x0004($t7)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li      $t0, 0xBD000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x001C($sp)
	sw      $0, 0x0004($t2)
	b       .L802DB488
	nop
.L802DB488:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

message_802DB498:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x0044($sp)
	lh      $t7, 0x004A($sp)
	lh      $t8, 0x004E($sp)
	li      $a0, 0x0001
	mtc1    $t7, $f4
	mtc1    $t8, $f6
	li      $a3, 0x0000
	cvt.s.w $f4, $f4
	cvt.s.w $f6, $f6
	mfc1    $a1, $f4
	mfc1    $a2, $f6
	jal     message_802D7070
	nop
	li.u    $a1, 0x3E4CCCCD
	li.l    $a1, 0x3E4CCCCD
	addu    $a2, $a1, $0
	li      $a0, 0x0002
	jal     message_802D7280
	li      $a3, 0x3F800000
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0040($sp)
	lw      $t2, 0x0040($sp)
	li.u    $t1, 0xB900031D
	li.l    $t1, 0xB900031D
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x0040($sp)
	li.u    $t3, 0x0F0A7008
	li.l    $t3, 0x0F0A7008
	sw      $t3, 0x0004($t4)
	lw      $s0, 0x0044($sp)
	andi    $t5, $s0, 0x0006
	move    $s0, $t5
	beqz    $s0, .L802DB578
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802DB5B4
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L802DB5F0
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L802DB62C
	nop
	b       .L802DB668
	nop
.L802DB578:
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x003C($sp)
	la.u    $t0, gfx_coin_red_0
	la.l    $t0, gfx_coin_red_0
	sw      $t0, 0x0004($t1)
	b       .L802DB668
	nop
.L802DB5B4:
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0038($sp)
	lw      $t5, 0x0038($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0038($sp)
	la.u    $t6, gfx_coin_red_1
	la.l    $t6, gfx_coin_red_1
	sw      $t6, 0x0004($t7)
	b       .L802DB668
	nop
.L802DB5F0:
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0034($sp)
	lw      $t1, 0x0034($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0034($sp)
	la.u    $t2, gfx_coin_red_2
	la.l    $t2, gfx_coin_red_2
	sw      $t2, 0x0004($t3)
	b       .L802DB668
	nop
.L802DB62C:
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0030($sp)
	lw      $t7, 0x0030($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0030($sp)
	la.u    $t8, gfx_coin_red_3
	la.l    $t8, gfx_coin_red_3
	sw      $t8, 0x0004($t9)
	b       .L802DB668
	nop
.L802DB668:
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	li.u    $t2, 0xB900031D
	li.l    $t2, 0xB900031D
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x002C($sp)
	li.u    $t4, 0x00552078
	li.l    $t4, 0x00552078
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t8, 0xBD000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0028($sp)
	sw      $0, 0x0004($t0)
	b       .L802DB6D4
	nop
.L802DB6D4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

message_802DB6E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(message_803613FE)
	lb      $t6, %lo(message_803613FE)($t6)
	sb      $0, 0x001F($sp)
	blez    $t6, .L802DB748
	nop
.L802DB704:
	lb      $t7, 0x001F($sp)
	li      $t9, 0x0122
	li      $a1, 0x0010
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	jal     message_802DB498
	subu    $a0, $t9, $t8
	lb      $t0, 0x001F($sp)
	lui     $t4, %hi(message_803613FE)
	lb      $t4, %lo(message_803613FE)($t4)
	addiu   $t1, $t0, 0x0001
	sll     $t2, $t1, 24
	sra     $t3, $t2, 24
	slt     $at, $t3, $t4
	bnez    $at, .L802DB704
	sb      $t1, 0x001F($sp)
.L802DB748:
	b       .L802DB750
	nop
.L802DB750:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

message_802DB760:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x001C($sp)
	la.u    $t7, str_80331624
	la.l    $t7, str_80331624
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0068
	sw      $at, 0x0000($t6)
	lwr     $at, 0x0006($t7)
	swr     $at, 0x0006($t6)
	la.u    $t2, str_8033162C
	la.l    $t2, str_8033162C
	lw      $at, 0x0000($t2)
	addiu   $t1, $sp, 0x005C
	lw      $t5, 0x0004($t2)
	sw      $at, 0x0000($t1)
	lbu     $at, 0x0008($t2)
	sw      $t5, 0x0004($t1)
	sb      $at, 0x0008($t1)
	lui     $t9, %hi(str_80331638)
	lhu     $t9, %lo(str_80331638)($t9)
	sh      $t9, 0x0058($sp)
	lui     $t8, %hi(str_8033163C)
	lhu     $t8, %lo(str_8033163C)($t8)
	sh      $t8, 0x0054($sp)
	la.u    $a0, str_course
	jal     segment_to_virtual
	la.l    $a0, str_course
	sw      $v0, 0x004C($sp)
	la.u    $a0, str_level
	jal     segment_to_virtual
	la.l    $a0, str_level
	sw      $v0, 0x0044($sp)
	lui     $t6, %hi(course_index)
	lh      $t6, %lo(course_index)($t6)
	addiu   $t7, $t6, -0x0001
	sb      $t7, 0x003F($sp)
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	sb      $v0, 0x003E($sp)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t0, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t0, 0x0038($sp)
	lw      $t1, 0x0038($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t1)
	lw      $t5, 0x0038($sp)
	la.u    $t2, gfx_dprint_1cyc_start
	la.l    $t2, gfx_dprint_1cyc_start
	sw      $t2, 0x0004($t5)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t9, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t9, 0x0034($sp)
	lw      $t7, 0x0034($sp)
	li      $t6, 0xFB000000
	sw      $t6, 0x0000($t7)
	lui     $t0, %hi(message_803613F8)
	lhu     $t0, %lo(message_803613F8)($t0)
	lw      $t1, 0x0034($sp)
	li      $at, -0x0100
	andi    $t4, $t0, 0x00FF
	or      $t3, $t4, $at
	sw      $t3, 0x0004($t1)
	lbu     $t2, 0x003F($sp)
	slti    $at, $t2, 0x000F
	beqz    $at, .L802DB8D4
	nop
	lui     $a1, %hi(save_index)
	lh      $a1, %lo(save_index)($a1)
	li      $t5, 0x0067
	sw      $t5, 0x0010($sp)
	li      $a0, 0x0001
	lbu     $a2, 0x003F($sp)
	li      $a3, 0x00B2
	jal     message_802D89B8
	addiu   $a1, $a1, -0x0001
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	lbu     $a1, 0x003F($sp)
	li      $a2, 0x0076
	li      $a3, 0x0067
	jal     message_802D8A80
	addiu   $a0, $a0, -0x0001
.L802DB8D4:
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t9, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t9, 0x0030($sp)
	lw      $t7, 0x0030($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t4, 0x0030($sp)
	la.u    $t0, gfx_dprint_1cyc_end
	la.l    $t0, gfx_dprint_1cyc_end
	sw      $t0, 0x0004($t4)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t3, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t3, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t5)
	lw      $t8, 0x002C($sp)
	la.u    $t9, gfx_message_start
	la.l    $t9, gfx_message_start
	sw      $t9, 0x0004($t8)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $t0, 0xFB000000
	sw      $t0, 0x0000($t4)
	lui     $t3, %hi(message_803613F8)
	lhu     $t3, %lo(message_803613F8)($t3)
	lw      $t5, 0x0028($sp)
	li      $at, -0x0100
	andi    $t1, $t3, 0x00FF
	or      $t2, $t1, $at
	sw      $t2, 0x0004($t5)
	lbu     $t9, 0x003F($sp)
	slti    $at, $t9, 0x000F
	beqz    $at, .L802DB9B8
	nop
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $t9
	jal     save_file_star_count
	addiu   $a0, $a0, -0x0001
	beqz    $v0, .L802DB9B8
	nop
	li      $a0, 0x003E
	li      $a1, 0x0079
	jal     message_802D77DC
	addiu   $a2, $sp, 0x005C
.L802DB9B8:
	lbu     $t6, 0x003F($sp)
	lw      $t8, 0x004C($sp)
	sll     $t7, $t6, 2
	addu    $t0, $t8, $t7
	jal     segment_to_virtual
	lw      $a0, 0x0000($t0)
	sw      $v0, 0x0048($sp)
	lbu     $t4, 0x003F($sp)
	slti    $at, $t4, 0x000F
	beqz    $at, .L802DBAC4
	nop
	li      $a0, 0x003F
	li      $a1, 0x009D
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0068
	lui     $a0, %hi(course_index)
	lh      $a0, %lo(course_index)($a0)
	jal     message_802D8B34
	addiu   $a1, $sp, 0x0050
	li      $a0, 0x0064
	li      $a1, 0x009D
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0050
	lui     $t3, %hi(course_index)
	lh      $t3, %lo(course_index)($t3)
	lui     $t2, %hi(message_80331620)
	lb      $t2, %lo(message_80331620)($t2)
	sll     $t1, $t3, 2
	subu    $t1, $t1, $t3
	lw      $t6, 0x0044($sp)
	sll     $t1, $t1, 1
	addu    $t5, $t1, $t2
	sll     $t9, $t5, 2
	addu    $t8, $t6, $t9
	jal     segment_to_virtual
	lw      $a0, -0x001C($t8)
	sw      $v0, 0x0040($sp)
	lui     $t0, %hi(message_80331620)
	lb      $t0, %lo(message_80331620)($t0)
	lbu     $t7, 0x003E($sp)
	li      $t3, 0x0001
	addiu   $t4, $t0, 0x001F
	sllv    $t1, $t3, $t4
	and     $t2, $t7, $t1
	beqz    $t2, .L802DBA88
	nop
	li      $a0, 0x0062
	li      $a1, 0x008C
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0058
	b       .L802DBA98
	nop
.L802DBA88:
	li      $a0, 0x0062
	li      $a1, 0x008C
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0054
.L802DBA98:
	li      $a0, 0x0074
	li      $a1, 0x008C
	jal     message_802D77DC
	lw      $a2, 0x0040($sp)
	lw      $a2, 0x0048($sp)
	li      $a0, 0x0075
	li      $a1, 0x009D
	jal     message_802D77DC
	addiu   $a2, $a2, 0x0003
	b       .L802DBAD8
	nop
.L802DBAC4:
	lw      $a2, 0x0048($sp)
	li      $a0, 0x005E
	li      $a1, 0x009D
	jal     message_802D77DC
	addiu   $a2, $a2, 0x0003
.L802DBAD8:
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t8)
	lw      $t3, 0x0024($sp)
	la.u    $t0, gfx_message_end
	la.l    $t0, gfx_message_end
	sw      $t0, 0x0004($t3)
	b       .L802DBB14
	nop
.L802DBB14:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

message_802DBB24:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0080($sp)
	sw      $a1, 0x0084($sp)
	sw      $a2, 0x0088($sp)
	sw      $a3, 0x008C($sp)
	sw      $s0, 0x0018($sp)
	la.u    $t7, str_80331640
	la.l    $t7, str_80331640
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0070
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lwr     $at, 0x000E($t7)
	swr     $at, 0x000E($t6)
	la.u    $t1, str_80331650
	la.l    $t1, str_80331650
	lw      $at, 0x0000($t1)
	addiu   $t0, $sp, 0x0060
	lw      $t3, 0x0004($t1)
	sw      $at, 0x0000($t0)
	lw      $at, 0x0008($t1)
	sw      $t3, 0x0004($t0)
	sw      $at, 0x0008($t0)
	lhu     $at, 0x000C($t1)
	sh      $at, 0x000C($t0)
	la.u    $t5, str_80331660
	la.l    $t5, str_80331660
	lw      $at, 0x0000($t5)
	addiu   $t4, $sp, 0x004C
	lw      $t6, 0x0004($t5)
	sw      $at, 0x0000($t4)
	lw      $at, 0x0008($t5)
	sw      $t6, 0x0004($t4)
	lw      $t6, 0x000C($t5)
	sw      $at, 0x0008($t4)
	lwr     $at, 0x0012($t5)
	sw      $t6, 0x000C($t4)
	swr     $at, 0x0012($t4)
	la.u    $t9, str_80331674
	la.l    $t9, str_80331674
	lw      $at, 0x0000($t9)
	lw      $t0, 0x0004($t9)
	addiu   $t7, $sp, 0x003C
	sw      $at, 0x0000($t7)
	sw      $t0, 0x0004($t7)
	lw      $t0, 0x000C($t9)
	lw      $at, 0x0008($t9)
	sw      $t0, 0x000C($t7)
	sw      $at, 0x0008($t7)
	li      $a0, 0x0002
	lw      $a1, 0x0088($sp)
	li      $a2, 0x0001
	jal     message_802D862C
	li      $a3, 0x0002
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t1, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t1, 0x0038($sp)
	lw      $t4, 0x0038($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t4)
	lw      $t6, 0x0038($sp)
	la.u    $t5, gfx_message_start
	la.l    $t5, gfx_message_start
	sw      $t5, 0x0004($t6)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t2, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t2, 0x0034($sp)
	lw      $t0, 0x0034($sp)
	li      $t9, 0xFB000000
	sw      $t9, 0x0000($t0)
	lui     $t1, %hi(message_803613F8)
	lhu     $t1, %lo(message_803613F8)($t1)
	lw      $t4, 0x0034($sp)
	li      $at, -0x0100
	andi    $t3, $t1, 0x00FF
	or      $t8, $t3, $at
	sw      $t8, 0x0004($t4)
	lh      $a0, 0x0082($sp)
	lh      $a1, 0x0086($sp)
	addiu   $a2, $sp, 0x0070
	addiu   $a0, $a0, 0x000E
	jal     message_802D77DC
	addiu   $a1, $a1, 0x0002
	lh      $a0, 0x0082($sp)
	lh      $a1, 0x0086($sp)
	addiu   $a2, $sp, 0x004C
	addiu   $a0, $a0, 0x0003
	jal     message_802D77DC
	addiu   $a1, $a1, -0x000D
	lh      $a0, 0x0082($sp)
	lh      $a1, 0x0086($sp)
	addiu   $a2, $sp, 0x0060
	addiu   $a0, $a0, 0x007C
	jal     message_802D77DC
	addiu   $a1, $a1, 0x0002
	lh      $a0, 0x0082($sp)
	lh      $a1, 0x0086($sp)
	addiu   $a2, $sp, 0x003C
	addiu   $a0, $a0, 0x0077
	jal     message_802D77DC
	addiu   $a1, $a1, -0x000D
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0030($sp)
	lw      $t7, 0x0030($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t7)
	lw      $t0, 0x0030($sp)
	la.u    $t9, gfx_message_end
	la.l    $t9, gfx_message_end
	sw      $t9, 0x0004($t0)
	lw      $t1, 0x0088($sp)
	lh      $t4, 0x008E($sp)
	lh      $t6, 0x0082($sp)
	lb      $t3, 0x0000($t1)
	lh      $t7, 0x0086($sp)
	li      $a0, 0x0001
	addiu   $t8, $t3, -0x0001
	multu   $t8, $t4
	addiu   $t9, $t7, 0x0002
	mtc1    $t9, $f6
	li      $a3, 0x0000
	cvt.s.w $f6, $f6
	mflo    $t5
	addu    $t2, $t5, $t6
	mtc1    $t2, $f4
	mfc1    $a2, $f6
	cvt.s.w $f4, $f4
	mfc1    $a1, $f4
	jal     message_802D7070
	nop
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	li      $t3, 0xFB000000
	sw      $t3, 0x0000($t8)
	lui     $t4, %hi(message_803613F8)
	lhu     $t4, %lo(message_803613F8)($t4)
	lw      $t2, 0x002C($sp)
	li      $at, -0x0100
	andi    $t5, $t4, 0x00FF
	or      $t6, $t5, $at
	sw      $t6, 0x0004($t2)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t7, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t7, 0x0028($sp)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t8, 0x0028($sp)
	la.u    $t3, gfx_message_cursor
	la.l    $t3, gfx_message_cursor
	sw      $t3, 0x0004($t8)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	li      $t6, 0xBD000000
	sw      $t6, 0x0000($t2)
	lw      $t7, 0x0024($sp)
	sw      $0, 0x0004($t7)
	lw      $t9, 0x0088($sp)
	li      $at, 0x0001
	lb      $s0, 0x0000($t9)
	beq     $s0, $at, .L802DBE2C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802DBE3C
	nop
	b       .L802DBE4C
	nop
.L802DBE2C:
	jal     camera_80288624
	li      $a0, 0x0001
	b       .L802DBE4C
	nop
.L802DBE3C:
	jal     camera_80288624
	li      $a0, 0x0002
	b       .L802DBE4C
	nop
.L802DBE4C:
	b       .L802DBE54
	nop
.L802DBE54:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0080
	jr      $ra
	nop

message_802DBE68:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	sw      $a3, 0x006C($sp)
	la.u    $t7, str_80331684
	la.l    $t7, str_80331684
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0054
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lbu     $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sb      $at, 0x0008($t6)
	la.u    $t1, str_80331690
	la.l    $t1, str_80331690
	lw      $at, 0x0000($t1)
	addiu   $t0, $sp, 0x0048
	lw      $t3, 0x0004($t1)
	sw      $at, 0x0000($t0)
	lw      $at, 0x0008($t1)
	sw      $t3, 0x0004($t0)
	sw      $at, 0x0008($t0)
	la.u    $t5, str_8033169C
	la.l    $t5, str_8033169C
	lw      $at, 0x0000($t5)
	lw      $t6, 0x0004($t5)
	addiu   $t4, $sp, 0x0030
	sw      $at, 0x0000($t4)
	sw      $t6, 0x0004($t4)
	lw      $t6, 0x000C($t5)
	lw      $at, 0x0008($t5)
	sw      $t6, 0x000C($t4)
	sw      $at, 0x0008($t4)
	lw      $at, 0x0010($t5)
	lw      $t6, 0x0014($t5)
	sw      $at, 0x0010($t4)
	sw      $t6, 0x0014($t4)
	li      $a0, 0x0001
	lw      $a1, 0x0068($sp)
	li      $a2, 0x0001
	jal     message_802D862C
	li      $a3, 0x0003
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t7, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t7, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t0)
	lw      $t3, 0x002C($sp)
	la.u    $t1, gfx_message_start
	la.l    $t1, gfx_message_start
	sw      $t1, 0x0004($t3)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t8, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t8, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $t5, 0xFB000000
	sw      $t5, 0x0000($t6)
	lui     $t7, %hi(message_803613F8)
	lhu     $t7, %lo(message_803613F8)($t7)
	lw      $t0, 0x0028($sp)
	li      $at, -0x0100
	andi    $t9, $t7, 0x00FF
	or      $t2, $t9, $at
	sw      $t2, 0x0004($t0)
	lh      $a0, 0x0062($sp)
	lh      $a1, 0x0066($sp)
	addiu   $a2, $sp, 0x0054
	addiu   $a0, $a0, 0x000A
	jal     message_802D77DC
	addiu   $a1, $a1, -0x0002
	lh      $a0, 0x0062($sp)
	lh      $a1, 0x0066($sp)
	addiu   $a2, $sp, 0x0048
	addiu   $a0, $a0, 0x000A
	jal     message_802D77DC
	addiu   $a1, $a1, -0x0011
	lw      $t1, 0x0068($sp)
	li      $at, 0x0003
	lb      $t3, 0x0000($t1)
	beq     $t3, $at, .L802DC110
	nop
	lh      $a0, 0x0062($sp)
	lh      $a1, 0x0066($sp)
	addiu   $a2, $sp, 0x0030
	addiu   $a0, $a0, 0x000A
	jal     message_802D77DC
	addiu   $a1, $a1, -0x0021
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t8, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t8, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t6)
	lw      $t9, 0x0024($sp)
	la.u    $t7, gfx_message_end
	la.l    $t7, gfx_message_end
	sw      $t7, 0x0004($t9)
	lw      $t1, 0x0068($sp)
	lh      $t4, 0x006E($sp)
	lh      $t6, 0x0066($sp)
	lb      $t3, 0x0000($t1)
	lh      $t2, 0x0062($sp)
	li      $a0, 0x0001
	addiu   $t8, $t3, -0x0001
	multu   $t8, $t4
	addiu   $t0, $t2, -0x0004
	mtc1    $t0, $f4
	li      $a3, 0x0000
	cvt.s.w $f4, $f4
	mflo    $t5
	subu    $t7, $t6, $t5
	addiu   $t9, $t7, -0x0002
	mtc1    $t9, $f6
	mfc1    $a1, $f4
	cvt.s.w $f6, $f6
	mfc1    $a2, $f6
	jal     message_802D7070
	nop
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t2, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t2, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	li      $t1, 0xFB000000
	sw      $t1, 0x0000($t3)
	lui     $t8, %hi(message_803613F8)
	lhu     $t8, %lo(message_803613F8)($t8)
	lw      $t5, 0x0020($sp)
	li      $at, -0x0100
	andi    $t4, $t8, 0x00FF
	or      $t6, $t4, $at
	sw      $t6, 0x0004($t5)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t7, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t7, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t0)
	lw      $t3, 0x001C($sp)
	la.u    $t1, gfx_message_cursor
	la.l    $t1, gfx_message_cursor
	sw      $t1, 0x0004($t3)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t8, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t8, 0x0018($sp)
	lw      $t5, 0x0018($sp)
	li      $t6, 0xBD000000
	sw      $t6, 0x0000($t5)
	lw      $t7, 0x0018($sp)
	sw      $0, 0x0004($t7)
.L802DC110:
	lw      $t9, 0x0068($sp)
	li      $at, 0x0003
	lb      $t2, 0x0000($t9)
	bne     $t2, $at, .L802DC144
	nop
	lh      $a0, 0x0062($sp)
	lh      $a1, 0x0066($sp)
	la.u    $a2, message_8033161C
	la.l    $a2, message_8033161C
	li      $a3, 0x006E
	addiu   $a0, $a0, -0x002A
	jal     message_802DBB24
	addiu   $a1, $a1, -0x002A
.L802DC144:
	b       .L802DC14C
	nop
.L802DC14C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

message_802DC15C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	lh      $t6, 0x0042($sp)
	lh      $t8, 0x0046($sp)
	li      $a0, 0x0001
	addiu   $t7, $t6, -0x004E
	addiu   $t9, $t8, -0x0020
	mtc1    $t9, $f6
	mtc1    $t7, $f4
	li      $a3, 0x0000
	cvt.s.w $f6, $f6
	cvt.s.w $f4, $f4
	mfc1    $a2, $f6
	mfc1    $a1, $f4
	jal     message_802D7070
	nop
	li.u    $a1, 0x3F99999A
	li.u    $a2, 0x3F4CCCCD
	li.l    $a2, 0x3F4CCCCD
	li.l    $a1, 0x3F99999A
	li      $a0, 0x0002
	jal     message_802D7280
	li      $a3, 0x3F800000
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x003C($sp)
	lw      $t3, 0x003C($sp)
	li      $t2, 0xFB000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x003C($sp)
	li      $t4, 0x0069
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0038($sp)
	lw      $t9, 0x0038($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0038($sp)
	la.u    $t0, gfx_message_box
	la.l    $t0, gfx_message_box
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0034($sp)
	lw      $t5, 0x0034($sp)
	li      $t4, 0xBD000000
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x0034($sp)
	sw      $0, 0x0004($t6)
	lh      $t7, 0x0042($sp)
	lh      $t9, 0x0046($sp)
	li      $a0, 0x0001
	addiu   $t8, $t7, 0x0006
	addiu   $t0, $t9, -0x001C
	mtc1    $t0, $f10
	mtc1    $t8, $f8
	li      $a3, 0x0000
	cvt.s.w $f10, $f10
	cvt.s.w $f8, $f8
	mfc1    $a2, $f10
	mfc1    $a1, $f8
	jal     message_802D7070
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f16
	li      $a0, 0x0002
	li      $a1, 0x42B40000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     message_802D7174
	swc1    $f16, 0x0010($sp)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0030($sp)
	lw      $t4, 0x0030($sp)
	li      $t3, 0xFB000000
	sw      $t3, 0x0000($t4)
	lui     $t5, %hi(message_803613F8)
	lhu     $t5, %lo(message_803613F8)($t5)
	lw      $t8, 0x0030($sp)
	li      $at, -0x0100
	andi    $t6, $t5, 0x00FF
	or      $t7, $t6, $at
	sw      $t7, 0x0004($t8)
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x002C($sp)
	lw      $t2, 0x002C($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x002C($sp)
	la.u    $t3, gfx_message_cursor
	la.l    $t3, gfx_message_cursor
	sw      $t3, 0x0004($t4)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0028($sp)
	lw      $t8, 0x0028($sp)
	li      $t7, 0xBD000000
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0028($sp)
	sw      $0, 0x0004($t9)
	lh      $t0, 0x0042($sp)
	lh      $t2, 0x0046($sp)
	li      $a0, 0x0001
	addiu   $t1, $t0, -0x0009
	addiu   $t3, $t2, -0x0065
	mtc1    $t3, $f4
	mtc1    $t1, $f18
	li      $a3, 0x0000
	cvt.s.w $f4, $f4
	cvt.s.w $f18, $f18
	mfc1    $a2, $f4
	mfc1    $a1, $f18
	jal     message_802D7070
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f6
	li      $a0, 0x0002
	li      $a1, 0x43870000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     message_802D7174
	swc1    $f6, 0x0010($sp)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0024($sp)
	la.u    $t8, gfx_message_cursor
	la.l    $t8, gfx_message_cursor
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	li      $t2, 0xBD000000
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x0020($sp)
	sw      $0, 0x0004($t4)
	b       .L802DC408
	nop
.L802DC408:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

message_802DC418:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(save_course)
	lbu     $t6, %lo(save_course)($t6)
	bnez    $t6, .L802DC434
	nop
	b       .L802DC45C
	sb      $0, 0x0007($sp)
.L802DC434:
	lui     $t7, %hi(save_course)
	lbu     $t7, %lo(save_course)($t7)
	addiu   $t8, $t7, -0x0001
	sb      $t8, 0x0007($sp)
	lbu     $t9, 0x0007($sp)
	slti    $at, $t9, 0x000F
	bnez    $at, .L802DC45C
	nop
	li      $t0, 0x000F
	sb      $t0, 0x0007($sp)
.L802DC45C:
	lbu     $t1, 0x0007($sp)
	lui     $at, %hi(message_80331490)
	sb      $t1, %lo(message_80331490)($at)
	b       .L802DC470
	nop
.L802DC470:
	jr      $ra
	addiu   $sp, $sp, 0x0008

message_802DC478:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	la.u    $t7, str_803316B4
	la.l    $t7, str_803316B4
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0028
	sw      $at, 0x0000($t6)
	lhu     $at, 0x0004($t7)
	sh      $at, 0x0004($t6)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t1, 0x0024($sp)
	lw      $t4, 0x0024($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t4)
	lw      $t9, 0x0024($sp)
	la.u    $t5, gfx_dprint_1cyc_start
	la.l    $t5, gfx_dprint_1cyc_start
	sw      $t5, 0x0004($t9)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t8, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t8, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	li      $t7, 0xFB000000
	sw      $t7, 0x0000($t0)
	lui     $t1, %hi(message_803613F8)
	lhu     $t1, %lo(message_803613F8)($t1)
	lw      $t4, 0x0020($sp)
	li      $at, -0x0100
	andi    $t2, $t1, 0x00FF
	or      $t3, $t2, $at
	sw      $t3, 0x0004($t4)
	li      $a0, 0x0002
	li      $a1, 0x007B
	li      $a2, 0x0051
	jal     message_802D7B84
	addiu   $a3, $sp, 0x0028
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t5, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t5, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t6)
	lw      $t0, 0x001C($sp)
	la.u    $t7, gfx_dprint_1cyc_end
	la.l    $t7, gfx_dprint_1cyc_end
	sw      $t7, 0x0004($t0)
	b       .L802DC560
	nop
.L802DC560:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

message_802DC570:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	sh      $0, 0x0046($sp)
	lui     $t6, %hi(str_803316BC)
	lhu     $t6, %lo(str_803316BC)($t6)
	sh      $t6, 0x0024($sp)
	lh      $a0, 0x0052($sp)
	jal     save_file_star_get
	lh      $a1, 0x0056($sp)
	sb      $v0, 0x0023($sp)
	lh      $a0, 0x0052($sp)
	jal     save_file_star_count
	lh      $a1, 0x0056($sp)
	sh      $v0, 0x0020($sp)
	sh      $0, 0x001E($sp)
	lbu     $t7, 0x0023($sp)
	andi    $t8, $t7, 0x0040
	beqz    $t8, .L802DC5F0
	nop
	lhu     $t9, 0x0020($sp)
	addiu   $t0, $t9, -0x0001
	sh      $t0, 0x0020($sp)
	lh      $a0, 0x004A($sp)
	lh      $a1, 0x004E($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a0, $a0, 0x0059
	jal     message_802D77DC
	addiu   $a1, $a1, -0x0005
.L802DC5F0:
	lh      $t1, 0x0046($sp)
	lhu     $t2, 0x0020($sp)
	beq     $t1, $t2, .L802DC684
	nop
.L802DC600:
	lhu     $t4, 0x001E($sp)
	lbu     $t3, 0x0023($sp)
	li      $t5, 0x0001
	sllv    $t6, $t5, $t4
	and     $t7, $t3, $t6
	beqz    $t7, .L802DC640
	nop
	lhu     $t9, 0x001E($sp)
	li      $t8, 0x00FA
	sll     $t0, $t9, 1
	addu    $t1, $sp, $t0
	sb      $t8, 0x0028($t1)
	lh      $t2, 0x0046($sp)
	addiu   $t5, $t2, 0x0001
	b       .L802DC654
	sh      $t5, 0x0046($sp)
.L802DC640:
	lhu     $t3, 0x001E($sp)
	li      $t4, 0x00FD
	sll     $t6, $t3, 1
	addu    $t7, $sp, $t6
	sb      $t4, 0x0028($t7)
.L802DC654:
	lhu     $t8, 0x001E($sp)
	li      $t9, 0x009E
	sll     $t0, $t8, 1
	addu    $t1, $sp, $t0
	sb      $t9, 0x0029($t1)
	lhu     $t2, 0x001E($sp)
	addiu   $t5, $t2, 0x0001
	sh      $t5, 0x001E($sp)
	lh      $t3, 0x0046($sp)
	lhu     $t4, 0x0020($sp)
	bne     $t3, $t4, .L802DC600
	nop
.L802DC684:
	lhu     $t6, 0x0020($sp)
	lhu     $t7, 0x001E($sp)
	bne     $t6, $t7, .L802DC6D4
	nop
	li      $at, 0x0006
	beq     $t6, $at, .L802DC6D4
	nop
	lhu     $t9, 0x001E($sp)
	li      $t8, 0x00FD
	sll     $t0, $t9, 1
	addu    $t1, $sp, $t0
	sb      $t8, 0x0028($t1)
	lhu     $t5, 0x001E($sp)
	li      $t2, 0x009E
	sll     $t3, $t5, 1
	addu    $t4, $sp, $t3
	sb      $t2, 0x0029($t4)
	lhu     $t7, 0x001E($sp)
	addiu   $t6, $t7, 0x0001
	sh      $t6, 0x001E($sp)
.L802DC6D4:
	lhu     $t8, 0x001E($sp)
	li      $t9, 0x00FF
	sll     $t0, $t8, 1
	addu    $t1, $sp, $t0
	sb      $t9, 0x0028($t1)
	lh      $a0, 0x004A($sp)
	lh      $a1, 0x004E($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a0, $a0, 0x000E
	jal     message_802D77DC
	addiu   $a1, $a1, 0x000D
	b       .L802DC708
	nop
.L802DC708:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

message_802DC718:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, str_course
	jal     segment_to_virtual
	la.l    $a0, str_course
	sw      $v0, 0x004C($sp)
	la.u    $t7, str_803316C0
	la.l    $t7, str_803316C0
	lwr     $at, 0x0002($t7)
	addiu   $t6, $sp, 0x0048
	swr     $at, 0x0002($t6)
	lui     $t1, %hi(message_80331490)
	lb      $t1, %lo(message_80331490)($t1)
	sh      $t1, 0x003A($sp)
	la.u    $a1, message_80331490
	la.l    $a1, message_80331490
	li      $a0, 0x0001
	li      $a2, -0x0001
	jal     message_802D862C
	li      $a3, 0x0010
	lui     $t2, %hi(message_80331490)
	lb      $t2, %lo(message_80331490)($t2)
	li      $at, 0x0010
	bne     $t2, $at, .L802DC790
	nop
	lui     $at, %hi(message_80331490)
	sb      $0, %lo(message_80331490)($at)
.L802DC790:
	lui     $t3, %hi(message_80331490)
	lb      $t3, %lo(message_80331490)($t3)
	li      $at, -0x0001
	bne     $t3, $at, .L802DC7B0
	nop
	li      $t4, 0x000F
	lui     $at, %hi(message_80331490)
	sb      $t4, %lo(message_80331490)($at)
.L802DC7B0:
	lui     $t5, %hi(message_80331490)
	lb      $t5, %lo(message_80331490)($t5)
	li      $at, 0x000F
	beq     $t5, $at, .L802DC87C
	nop
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	lui     $a1, %hi(message_80331490)
	lb      $a1, %lo(message_80331490)($a1)
	jal     save_file_star_count
	addiu   $a0, $a0, -0x0001
	bnez    $v0, .L802DC87C
	nop
.L802DC7E4:
	lui     $t9, %hi(message_80331490)
	lb      $t9, %lo(message_80331490)($t9)
	lh      $t8, 0x003A($sp)
	slt     $at, $t9, $t8
	bnez    $at, .L802DC814
	nop
	lui     $t6, %hi(message_80331490)
	lb      $t6, %lo(message_80331490)($t6)
	lui     $at, %hi(message_80331490)
	addiu   $t7, $t6, 0x0001
	b       .L802DC828
	sb      $t7, %lo(message_80331490)($at)
.L802DC814:
	lui     $t0, %hi(message_80331490)
	lb      $t0, %lo(message_80331490)($t0)
	lui     $at, %hi(message_80331490)
	addiu   $t1, $t0, -0x0001
	sb      $t1, %lo(message_80331490)($at)
.L802DC828:
	lui     $t2, %hi(message_80331490)
	lb      $t2, %lo(message_80331490)($t2)
	li      $at, 0x000F
	beq     $t2, $at, .L802DC848
	nop
	li      $at, -0x0001
	bne     $t2, $at, .L802DC85C
	nop
.L802DC848:
	li      $t3, 0x000F
	lui     $at, %hi(message_80331490)
	sb      $t3, %lo(message_80331490)($at)
	b       .L802DC87C
	nop
.L802DC85C:
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	lui     $a1, %hi(message_80331490)
	lb      $a1, %lo(message_80331490)($a1)
	jal     save_file_star_count
	addiu   $a0, $a0, -0x0001
	beqz    $v0, .L802DC7E4
	nop
.L802DC87C:
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0034($sp)
	lw      $t8, 0x0034($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t8)
	lw      $t7, 0x0034($sp)
	la.u    $t6, gfx_message_start
	la.l    $t6, gfx_message_start
	sw      $t6, 0x0004($t7)
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0030($sp)
	lw      $t3, 0x0030($sp)
	li      $t2, 0xFB000000
	sw      $t2, 0x0000($t3)
	lui     $t4, %hi(message_803613F8)
	lhu     $t4, %lo(message_803613F8)($t4)
	lw      $t8, 0x0030($sp)
	li      $at, -0x0100
	andi    $t5, $t4, 0x00FF
	or      $t9, $t5, $at
	sw      $t9, 0x0004($t8)
	lui     $t6, %hi(message_80331490)
	lb      $t6, %lo(message_80331490)($t6)
	slti    $at, $t6, 0x000F
	beqz    $at, .L802DC9A4
	nop
	lui     $t0, %hi(message_80331490)
	lb      $t0, %lo(message_80331490)($t0)
	lw      $t7, 0x004C($sp)
	sll     $t1, $t0, 2
	addu    $t2, $t7, $t1
	jal     segment_to_virtual
	lw      $a0, 0x0000($t2)
	sw      $v0, 0x0044($sp)
	lui     $a2, %hi(save_index)
	lh      $a2, %lo(save_index)($a2)
	lui     $a3, %hi(message_80331490)
	lb      $a3, %lo(message_80331490)($a3)
	lh      $a0, 0x0052($sp)
	lh      $a1, 0x0056($sp)
	jal     message_802DC570
	addiu   $a2, $a2, -0x0001
	lh      $a0, 0x0052($sp)
	lh      $a1, 0x0056($sp)
	addiu   $a2, $sp, 0x0048
	addiu   $a0, $a0, 0x0022
	jal     message_802D77DC
	addiu   $a1, $a1, -0x0005
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	lui     $a1, %hi(message_80331490)
	lb      $a1, %lo(message_80331490)($a1)
	jal     save_file_coin_get
	addiu   $a0, $a0, -0x0001
	move    $s0, $v0
	move    $a0, $s0
	jal     message_802D8B34
	addiu   $a1, $sp, 0x003C
	lh      $a0, 0x0052($sp)
	lh      $a1, 0x0056($sp)
	addiu   $a2, $sp, 0x003C
	addiu   $a0, $a0, 0x0036
	jal     message_802D77DC
	addiu   $a1, $a1, -0x0005
	b       .L802DCA20
	nop
.L802DC9A4:
	la.u    $t4, str_803316C4
	la.l    $t4, str_803316C4
	lwr     $at, 0x0002($t4)
	addiu   $t3, $sp, 0x002C
	swr     $at, 0x0002($t3)
	lw      $t6, 0x004C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0064($t6)
	sw      $v0, 0x0044($sp)
	lh      $a0, 0x0052($sp)
	lh      $a1, 0x0056($sp)
	addiu   $a2, $sp, 0x002C
	addiu   $a0, $a0, 0x0028
	jal     message_802D77DC
	addiu   $a1, $a1, 0x000D
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	li      $a1, 0x000F
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	move    $s0, $v0
	move    $a0, $s0
	jal     message_802D8B34
	addiu   $a1, $sp, 0x003C
	lh      $a0, 0x0052($sp)
	lh      $a1, 0x0056($sp)
	addiu   $a2, $sp, 0x003C
	addiu   $a0, $a0, 0x003C
	jal     message_802D77DC
	addiu   $a1, $a1, 0x000D
.L802DCA20:
	lh      $a0, 0x0052($sp)
	lh      $a1, 0x0056($sp)
	lw      $a2, 0x0044($sp)
	addiu   $a0, $a0, -0x0009
	jal     message_802D77DC
	addiu   $a1, $a1, 0x001E
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t0, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t0, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t5, 0x0028($sp)
	la.u    $t9, gfx_message_end
	la.l    $t9, gfx_message_end
	sw      $t9, 0x0004($t5)
	b       .L802DCA74
	nop
.L802DCA74:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

message_802DCA88:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(message_80331470)
	lb      $s0, %lo(message_80331470)($s0)
	beqz    $s0, .L802DCAC4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802DCB48
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802DCC28
	nop
	b       .L802DCCB8
	nop
.L802DCAC4:
	li      $t6, 0x0001
	lui     $at, %hi(message_80331490)
	sb      $t6, %lo(message_80331490)($at)
	lui     $at, %hi(message_803613F8)
	sh      $0, %lo(message_803613F8)($at)
	li      $a0, -0x0001
	jal     game_8024B798
	move    $a1, $0
	li.u    $a0, 0x7002FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x7002FF81
	lui     $t7, %hi(course_index)
	lh      $t7, %lo(course_index)($t7)
	blez    $t7, .L802DCB2C
	nop
	slti    $at, $t7, 0x001A
	beqz    $at, .L802DCB2C
	nop
	jal     message_802DB368
	nop
	li      $t8, 0x0001
	lui     $at, %hi(message_80331470)
	b       .L802DCB40
	sb      $t8, %lo(message_80331470)($at)
.L802DCB2C:
	jal     message_802DC418
	nop
	li      $t9, 0x0002
	lui     $at, %hi(message_80331470)
	sb      $t9, %lo(message_80331470)($at)
.L802DCB40:
	b       .L802DCCB8
	nop
.L802DCB48:
	jal     message_802DB3B8
	nop
	jal     message_802DB760
	nop
	jal     message_802DB6E8
	nop
	la.u    $t0, player_data
	la.l    $t0, player_data
	lw      $t1, 0x000C($t0)
	li      $at, 0x08000000
	and     $t2, $t1, $at
	beqz    $t2, .L802DCB94
	nop
	la.u    $a2, message_80331490
	la.l    $a2, message_80331490
	li      $a0, 0x0063
	li      $a1, 0x005D
	jal     message_802DBE68
	li      $a3, 0x000F
.L802DCB94:
	lui     $t3, %hi(controller)
	lw      $t3, %lo(controller)($t3)
	lhu     $t4, 0x0012($t3)
	andi    $t5, $t4, 0x8000
	bnez    $t5, .L802DCBB8
	nop
	andi    $t6, $t4, 0x1000
	beqz    $t6, .L802DCC20
	nop
.L802DCBB8:
.if 1
	jal     canpause
	nop
	beqz    $v0, .L802DCC20
	nop
.endif
	move    $a0, $0
	jal     game_8024B798
	move    $a1, $0
	li.u    $a0, 0x7003FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x7003FF81
	lui     $at, %hi(message_80331470)
	sb      $0, %lo(message_80331470)($at)
	li      $t7, -0x0001
	lui     $at, %hi(message_803314F8)
	sh      $t7, %lo(message_803314F8)($at)
	lui     $t8, %hi(message_80331490)
	lb      $t8, %lo(message_80331490)($t8)
	li      $at, 0x0002
	bne     $t8, $at, .L802DCC10
	nop
	lui     $t9, %hi(message_80331490)
	lb      $t9, %lo(message_80331490)($t9)
	b       .L802DCC18
	sh      $t9, 0x0026($sp)
.L802DCC10:
	li      $t0, 0x0001
	sh      $t0, 0x0026($sp)
.L802DCC18:
	b       .L802DCCF0
	lh      $v0, 0x0026($sp)
.L802DCC20:
	b       .L802DCCB8
	nop
.L802DCC28:
	jal     message_802DB3B8
	nop
	jal     message_802DC478
	nop
	li      $a0, 0x00A0
	jal     message_802DC15C
	li      $a1, 0x008F
	li      $a0, 0x0068
	jal     message_802DC718
	li      $a1, 0x003C
	lui     $t1, %hi(controller)
	lw      $t1, %lo(controller)($t1)
	lhu     $t2, 0x0012($t1)
	andi    $t3, $t2, 0x8000
	bnez    $t3, .L802DCC74
	nop
	andi    $t5, $t2, 0x1000
	beqz    $t5, .L802DCCB0
	nop
.L802DCC74:
	move    $a0, $0
	jal     game_8024B798
	move    $a1, $0
	li.u    $a0, 0x7003FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x7003FF81
	li      $t4, -0x0001
	lui     $at, %hi(message_803314F8)
	sh      $t4, %lo(message_803314F8)($at)
	lui     $at, %hi(message_80331470)
	sb      $0, %lo(message_80331470)($at)
	b       .L802DCCF0
	li      $v0, 0x0001
.L802DCCB0:
	b       .L802DCCB8
	nop
.L802DCCB8:
	lui     $t6, %hi(message_803613F8)
	lhu     $t6, %lo(message_803613F8)($t6)
	slti    $at, $t6, 0x00FA
	beqz    $at, .L802DCCE0
	nop
	lui     $t7, %hi(message_803613F8)
	lhu     $t7, %lo(message_803613F8)($t7)
	lui     $at, %hi(message_803613F8)
	addiu   $t8, $t7, 0x0019
	sh      $t8, %lo(message_803613F8)($at)
.L802DCCE0:
	b       .L802DCCF0
	move    $v0, $0
	b       .L802DCCF0
	nop
.L802DCCF0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

message_802DCD04:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	la.u    $t7, str_803316D8
	la.l    $t7, str_803316D8
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x003C
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lbu     $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sb      $at, 0x0008($t6)
	la.u    $t1, str_803316E4
	la.l    $t1, str_803316E4
	lw      $at, 0x0000($t1)
	lw      $t3, 0x0004($t1)
	addiu   $t0, $sp, 0x002C
	sw      $at, 0x0000($t0)
	sw      $t3, 0x0004($t0)
	lw      $t3, 0x000C($t1)
	lw      $at, 0x0008($t1)
	sw      $t3, 0x000C($t0)
	sw      $at, 0x0008($t0)
	lui     $t4, %hi(message_803613F0)
	lhu     $t4, %lo(message_803613F0)($t4)
	lui     $at, %hi(math_sin)
	li      $t7, 0x0001
	sra     $t5, $t4, 4
	sll     $t8, $t5, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42480000
	mtc1    $at, $f6
	li      $at, 0x43480000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	cfc1    $t6, $31
	ctc1    $t7, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $t7, $31
	nop
	andi    $at, $t7, 0x0004
	andi    $t7, $t7, 0x0078
	beqz    $t7, .L802DCE0C
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t7, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t7, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t7, $31
	nop
	andi    $at, $t7, 0x0004
	andi    $t7, $t7, 0x0078
	bnez    $t7, .L802DCE04
	nop
	mfc1    $t7, $f18
	li      $at, 0x80000000
	b       .L802DCE1C
	or      $t7, $t7, $at
.L802DCE04:
	b       .L802DCE1C
	li      $t7, -0x0001
.L802DCE0C:
	mfc1    $t7, $f18
	nop
	bltz    $t7, .L802DCE04
	nop
.L802DCE1C:
	ctc1    $t6, $31
	sb      $t7, 0x002B($sp)
	nop
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t9, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t9, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t4, 0x0024($sp)
	la.u    $t3, gfx_dprint_1cyc_start
	la.l    $t3, gfx_dprint_1cyc_start
	sw      $t3, 0x0004($t4)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t5, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t5, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	li      $t6, 0xFB000000
	sw      $t6, 0x0000($t7)
	lbu     $t9, 0x002B($sp)
	lw      $t6, 0x0020($sp)
	andi    $t2, $t9, 0x00FF
	sll     $t0, $t2, 24
	sll     $t1, $t2, 16
	or      $t3, $t0, $t1
	sll     $t4, $t2, 8
	or      $t5, $t3, $t4
	ori     $t8, $t5, 0x00FF
	sw      $t8, 0x0004($t6)
	lb      $t7, 0x004B($sp)
	bnez    $t7, .L802DCED0
	nop
	li      $a0, 0x0002
	li      $a1, 0x006D
	li      $a2, 0x0024
	jal     message_802D7B84
	addiu   $a3, $sp, 0x003C
	b       .L802DCEE4
	nop
.L802DCED0:
	li      $a0, 0x0002
	li      $a1, 0x0046
	li      $a2, 0x0043
	jal     message_802D7B84
	addiu   $a3, $sp, 0x002C
.L802DCEE4:
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x001C($sp)
	la.u    $t3, gfx_dprint_1cyc_end
	la.l    $t3, gfx_dprint_1cyc_end
	sw      $t3, 0x0004($t4)
	b       .L802DCF20
	nop
.L802DCF20:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

message_802DCF30:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lui     $t6, %hi(str_803316F4)
	lhu     $t6, %lo(str_803316F4)($t6)
	sh      $t6, 0x0028($sp)
	lui     $t7, %hi(str_803316F8)
	lhu     $t7, %lo(str_803316F8)($t7)
	sh      $t7, 0x0024($sp)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t8, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0020($sp)
	la.u    $t2, gfx_dprint_1cyc_start
	la.l    $t2, gfx_dprint_1cyc_start
	sw      $t2, 0x0004($t3)
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0xFB000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x001C($sp)
	li      $t8, -0x0001
	sw      $t8, 0x0004($t9)
	li      $a0, 0x0002
	lh      $a1, 0x0032($sp)
	lh      $a2, 0x0036($sp)
	jal     message_802D7B84
	addiu   $a3, $sp, 0x0028
	lh      $a1, 0x0032($sp)
	li      $a0, 0x0002
	lh      $a2, 0x0036($sp)
	addiu   $a3, $sp, 0x0024
	jal     message_802D7B84
	addiu   $a1, $a1, 0x0010
	lui     $a0, %hi(message_803316D0)
	lw      $a0, %lo(message_803316D0)($a0)
	jal     message_802D8B34
	addiu   $a1, $sp, 0x002C
	lh      $a1, 0x0032($sp)
	li      $a0, 0x0002
	lh      $a2, 0x0036($sp)
	addiu   $a3, $sp, 0x002C
	jal     message_802D7B84
	addiu   $a1, $a1, 0x0020
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0018($sp)
	lw      $t3, 0x0018($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0018($sp)
	la.u    $t4, gfx_dprint_1cyc_end
	la.l    $t4, gfx_dprint_1cyc_end
	sw      $t4, 0x0004($t5)
	lui     $t6, %hi(message_803316D0)
	lui     $t7, %hi(hud+0x02)
	lh      $t7, %lo(hud+0x02)($t7)
	lw      $t6, %lo(message_803316D0)($t6)
	slt     $at, $t6, $t7
	bnez    $at, .L802DD09C
	nop
	li      $t8, 0x0001
	lui     $at, %hi(message_803316C8)
	sb      $t8, %lo(message_803316C8)($at)
	lui     $t9, %hi(hud+0x02)
	lh      $t9, %lo(hud+0x02)($t9)
	lui     $at, %hi(message_803316D0)
	sw      $t9, %lo(message_803316D0)($at)
	lui     $t0, %hi(save_myscore)
	lbu     $t0, %lo(save_myscore)($t0)
	beqz    $t0, .L802DD094
	nop
	jal     message_802DCD04
	move    $a0, $0
.L802DD094:
	b       .L802DD17C
	nop
.L802DD09C:
	lui     $t1, %hi(message_803316CC)
	lw      $t1, %lo(message_803316CC)($t1)
	andi    $t2, $t1, 0x0001
	bnez    $t2, .L802DD0C4
	nop
	lui     $t3, %hi(hud+0x02)
	lh      $t3, %lo(hud+0x02)($t3)
	slti    $at, $t3, 0x0047
	bnez    $at, .L802DD140
	nop
.L802DD0C4:
	lui     $t4, %hi(message_803316D0)
	lw      $t4, %lo(message_803316D0)($t4)
	lui     $at, %hi(message_803316D0)
	addiu   $t5, $t4, 0x0001
	sw      $t5, %lo(message_803316D0)($at)
	li.u    $a0, 0x70150081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70150081
	lui     $t6, %hi(message_803316D0)
	lw      $t6, %lo(message_803316D0)($t6)
	li      $at, 0x0032
	beq     $t6, $at, .L802DD118
	nop
	li      $at, 0x0064
	beq     $t6, $at, .L802DD118
	nop
	li      $at, 0x0096
	bne     $t6, $at, .L802DD140
	nop
.L802DD118:
	li.u    $a0, 0x3058FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x3058FF81
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lb      $t8, 0x00AD($t7)
	addiu   $t9, $t8, 0x0001
	sb      $t9, 0x00AD($t7)
.L802DD140:
	lui     $t0, %hi(hud+0x02)
	lui     $t1, %hi(message_803316D0)
	lw      $t1, %lo(message_803316D0)($t1)
	lh      $t0, %lo(hud+0x02)($t0)
	bne     $t0, $t1, .L802DD17C
	nop
	lui     $t2, %hi(save_myscore)
	lbu     $t2, %lo(save_myscore)($t2)
	beqz    $t2, .L802DD17C
	nop
	li.u    $a0, 0x70222081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70222081
.L802DD17C:
	b       .L802DD184
	nop
.L802DD184:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

message_802DD194:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(hud+0x02)
	lui     $t7, %hi(message_803316D0)
	lw      $t7, %lo(message_803316D0)($t7)
	lh      $t6, %lo(hud+0x02)($t6)
	bne     $t6, $t7, .L802DD1F8
	nop
	lui     $t8, %hi(save_star)
	lbu     $t8, %lo(save_star)($t8)
	lbu     $t9, 0x001F($sp)
	and     $t0, $t8, $t9
	bnez    $t0, .L802DD1F8
	nop
	lui     $t1, %hi(message_803316D4)
	lb      $t1, %lo(message_803316D4)($t1)
	bnez    $t1, .L802DD1F8
	nop
	jal     Na_g_8032212C
	nop
	lw      $t2, 0x0018($sp)
	lui     $at, %hi(message_803316D4)
	sb      $t2, %lo(message_803316D4)($at)
.L802DD1F8:
	b       .L802DD200
	nop
.L802DD200:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

message_802DD210:
	addiu   $sp, $sp, -0x0090
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	la.u    $t7, str_803316FC
	la.l    $t7, str_803316FC
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0088
	sw      $at, 0x0000($t6)
	lwr     $at, 0x0006($t7)
	swr     $at, 0x0006($t6)
	la.u    $t1, str_80331704
	la.l    $t1, str_80331704
	lw      $at, 0x0000($t1)
	addiu   $t0, $sp, 0x0080
	sw      $at, 0x0000($t0)
	lhu     $at, 0x0004($t1)
	sh      $at, 0x0004($t0)
	la.u    $t5, str_8033170C
	la.l    $t5, str_8033170C
	lw      $at, 0x0000($t5)
	addiu   $t4, $sp, 0x0078
	sw      $at, 0x0000($t4)
	lhu     $at, 0x0004($t5)
	sh      $at, 0x0004($t4)
	lui     $t7, %hi(str_80331714)
	lhu     $t7, %lo(str_80331714)($t7)
	sh      $t7, 0x0074($sp)
	la.u    $a0, str_level
	jal     segment_to_virtual
	la.l    $a0, str_level
	sw      $v0, 0x0070($sp)
	la.u    $a0, str_course
	jal     segment_to_virtual
	la.l    $a0, str_course
	sw      $v0, 0x006C($sp)
	lui     $t9, %hi(save_course)
	lbu     $t9, %lo(save_course)($t9)
	slti    $at, $t9, 0x0010
	beqz    $at, .L802DD470
	nop
	li      $a0, 0x0076
	jal     message_802DCF30
	li      $a1, 0x0067
	lui     $t2, %hi(save_level)
	lbu     $t2, %lo(save_level)($t2)
	li      $t1, 0x0001
	li      $a0, 0x0001
	addiu   $t0, $t2, 0x001F
	jal     message_802DD194
	sllv    $a1, $t1, $t0
	lui     $t3, %hi(save_level)
	lbu     $t3, %lo(save_level)($t3)
	li      $at, 0x0007
	bne     $t3, $at, .L802DD300
	nop
	lw      $t8, 0x0070($sp)
	jal     segment_to_virtual
	lw      $a0, 0x016C($t8)
	b       .L802DD338
	sw      $v0, 0x0068($sp)
.L802DD300:
	lui     $t4, %hi(save_course)
	lbu     $t4, %lo(save_course)($t4)
	lui     $t6, %hi(save_level)
	lbu     $t6, %lo(save_level)($t6)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	lw      $t2, 0x0070($sp)
	sll     $t5, $t5, 1
	addu    $t7, $t5, $t6
	sll     $t9, $t7, 2
	addu    $t1, $t2, $t9
	jal     segment_to_virtual
	lw      $a0, -0x001C($t1)
	sw      $v0, 0x0068($sp)
.L802DD338:
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t0, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t0, 0x0060($sp)
	lw      $t4, 0x0060($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t4)
	lw      $t6, 0x0060($sp)
	la.u    $t5, gfx_message_start
	la.l    $t5, gfx_message_start
	sw      $t5, 0x0004($t6)
	lui     $a0, %hi(save_course)
	lbu     $a0, %lo(save_course)($a0)
	jal     message_802D8B34
	addiu   $a1, $sp, 0x0064
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t7, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t7, 0x005C($sp)
	lw      $t1, 0x005C($sp)
	li      $t9, 0xFB000000
	sw      $t9, 0x0000($t1)
	lui     $t0, %hi(message_803613F8)
	lhu     $t0, %lo(message_803613F8)($t0)
	lw      $t8, 0x005C($sp)
	andi    $t3, $t0, 0x00FF
	sw      $t3, 0x0004($t8)
	li      $a0, 0x0041
	li      $a1, 0x00A5
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0088
	li      $a0, 0x0068
	li      $a1, 0x00A5
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0064
	lui     $t4, %hi(gfx_ptr)
	lw      $t4, %lo(gfx_ptr)($t4)
	lui     $at, %hi(gfx_ptr)
	addiu   $t5, $t4, 0x0008
	sw      $t5, %lo(gfx_ptr)($at)
	sw      $t4, 0x0058($sp)
	lw      $t7, 0x0058($sp)
	li      $t6, 0xFB000000
	sw      $t6, 0x0000($t7)
	lui     $t2, %hi(message_803613F8)
	lhu     $t2, %lo(message_803613F8)($t2)
	lw      $t0, 0x0058($sp)
	li      $at, -0x0100
	andi    $t9, $t2, 0x00FF
	or      $t1, $t9, $at
	sw      $t1, 0x0004($t0)
	li      $a0, 0x003F
	li      $a1, 0x00A7
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0088
	li      $a0, 0x0066
	li      $a1, 0x00A7
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0064
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t3, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t3, 0x0054($sp)
	lw      $t5, 0x0054($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0054($sp)
	la.u    $t6, gfx_message_end
	la.l    $t6, gfx_message_end
	sw      $t6, 0x0004($t7)
	b       .L802DD660
	nop
.L802DD470:
	lui     $t2, %hi(save_course)
	lbu     $t2, %lo(save_course)($t2)
	li      $at, 0x0010
	beq     $t2, $at, .L802DD490
	nop
	li      $at, 0x0011
	bne     $t2, $at, .L802DD628
	nop
.L802DD490:
	lui     $t1, %hi(save_course)
	lbu     $t1, %lo(save_course)($t1)
	lw      $t9, 0x006C($sp)
	sll     $t0, $t1, 2
	addu    $t3, $t9, $t0
	jal     segment_to_virtual
	lw      $a0, -0x0004($t3)
	sw      $v0, 0x0068($sp)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t8, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t8, 0x0050($sp)
	lw      $t6, 0x0050($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t6)
	lw      $t2, 0x0050($sp)
	la.u    $t7, gfx_message_start
	la.l    $t7, gfx_message_start
	sw      $t7, 0x0004($t2)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t1, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t1, 0x004C($sp)
	lw      $t3, 0x004C($sp)
	li      $t0, 0xFB000000
	sw      $t0, 0x0000($t3)
	lui     $t8, %hi(message_803613F8)
	lhu     $t8, %lo(message_803613F8)($t8)
	lw      $t5, 0x004C($sp)
	andi    $t4, $t8, 0x00FF
	sw      $t4, 0x0004($t5)
	li      $a0, 0x0047
	li      $a1, 0x0082
	jal     message_802D77DC
	lw      $a2, 0x0068($sp)
	jal     message_802D8934
	lw      $a0, 0x0068($sp)
	sll     $s0, $v0, 16
	sra     $t6, $s0, 16
	move    $s0, $t6
	addiu   $a0, $s0, 0x0051
	li      $a1, 0x0082
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0078
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t7, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t7, 0x0048($sp)
	lw      $t9, 0x0048($sp)
	li      $t1, 0xFB000000
	sw      $t1, 0x0000($t9)
	lui     $t0, %hi(message_803613F8)
	lhu     $t0, %lo(message_803613F8)($t0)
	lw      $t4, 0x0048($sp)
	li      $at, -0x0100
	andi    $t3, $t0, 0x00FF
	or      $t8, $t3, $at
	sw      $t8, 0x0004($t4)
	li      $a0, 0x0045
	li      $a1, 0x0084
	jal     message_802D77DC
	lw      $a2, 0x0068($sp)
	jal     message_802D8934
	lw      $a0, 0x0068($sp)
	sll     $s0, $v0, 16
	sra     $t5, $s0, 16
	move    $s0, $t5
	addiu   $a0, $s0, 0x004F
	li      $a1, 0x0084
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0078
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0044($sp)
	lw      $t1, 0x0044($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t1)
	lw      $t0, 0x0044($sp)
	la.u    $t9, gfx_message_end
	la.l    $t9, gfx_message_end
	sw      $t9, 0x0004($t0)
	jal     message_802DCD04
	li      $a0, 0x0001
	li      $a0, 0x0076
	jal     message_802DCF30
	li      $a1, 0x006F
	li      $a0, 0x0002
	jal     message_802DD194
	move    $a1, $0
	b       .L802DD824
	nop
	b       .L802DD660
	nop
.L802DD628:
	lw      $t3, 0x0070($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0168($t3)
	sw      $v0, 0x0068($sp)
	li      $a0, 0x0076
	jal     message_802DCF30
	li      $a1, 0x0067
	lui     $t8, %hi(save_level)
	lbu     $t8, %lo(save_level)($t8)
	li      $t5, 0x0001
	li      $a0, 0x0001
	addiu   $t4, $t8, 0x001F
	jal     message_802DD194
	sllv    $a1, $t5, $t4
.L802DD660:
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0040($sp)
	lw      $t1, 0x0040($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t1)
	lw      $t0, 0x0040($sp)
	la.u    $t9, gfx_dprint_1cyc_start
	la.l    $t9, gfx_dprint_1cyc_start
	sw      $t9, 0x0004($t0)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t3, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t3, 0x003C($sp)
	lw      $t4, 0x003C($sp)
	li      $t5, 0xFB000000
	sw      $t5, 0x0000($t4)
	lui     $t6, %hi(message_803613F8)
	lhu     $t6, %lo(message_803613F8)($t6)
	lw      $t1, 0x003C($sp)
	li      $at, -0x0100
	andi    $t7, $t6, 0x00FF
	or      $t2, $t7, $at
	sw      $t2, 0x0004($t1)
	li      $a0, 0x0002
	li      $a1, 0x0037
	li      $a2, 0x004D
	jal     message_802D7B84
	addiu   $a3, $sp, 0x0074
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t9, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t9, 0x0038($sp)
	lw      $t8, 0x0038($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t8)
	lw      $t4, 0x0038($sp)
	la.u    $t5, gfx_dprint_1cyc_end
	la.l    $t5, gfx_dprint_1cyc_end
	sw      $t5, 0x0004($t4)
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0034($sp)
	lw      $t1, 0x0034($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t1)
	lw      $t0, 0x0034($sp)
	la.u    $t9, gfx_message_start
	la.l    $t9, gfx_message_start
	sw      $t9, 0x0004($t0)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t3, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t3, 0x0030($sp)
	lw      $t4, 0x0030($sp)
	li      $t5, 0xFB000000
	sw      $t5, 0x0000($t4)
	lui     $t6, %hi(message_803613F8)
	lhu     $t6, %lo(message_803613F8)($t6)
	lw      $t2, 0x0030($sp)
	andi    $t7, $t6, 0x00FF
	sw      $t7, 0x0004($t2)
	li      $a0, 0x004C
	li      $a1, 0x0091
	jal     message_802D77DC
	lw      $a2, 0x0068($sp)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t1, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t1, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	li      $t0, 0xFB000000
	sw      $t0, 0x0000($t3)
	lui     $t8, %hi(message_803613F8)
	lhu     $t8, %lo(message_803613F8)($t8)
	lw      $t6, 0x002C($sp)
	li      $at, -0x0100
	andi    $t5, $t8, 0x00FF
	or      $t4, $t5, $at
	sw      $t4, 0x0004($t6)
	li      $a0, 0x004A
	li      $a1, 0x0093
	jal     message_802D77DC
	lw      $a2, 0x0068($sp)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t7, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t7, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t9)
	lw      $t3, 0x0028($sp)
	la.u    $t0, gfx_message_end
	la.l    $t0, gfx_message_end
	sw      $t0, 0x0004($t3)
	b       .L802DD824
	nop
.L802DD824:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0090
	jr      $ra
	nop

message_802DD838:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0068($sp)
	sw      $a1, 0x006C($sp)
	sw      $a2, 0x0070($sp)
	sw      $a3, 0x0074($sp)
	la.u    $t7, str_80331718
	la.l    $t7, str_80331718
	lw      $at, 0x0000($t7)
	lw      $t9, 0x0004($t7)
	addiu   $t6, $sp, 0x0058
	sw      $at, 0x0000($t6)
	sw      $t9, 0x0004($t6)
	lw      $t9, 0x000C($t7)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x000C($t6)
	sw      $at, 0x0008($t6)
	la.u    $t1, str_80331728
	la.l    $t1, str_80331728
	lw      $at, 0x0000($t1)
	addiu   $t0, $sp, 0x004C
	lw      $t3, 0x0004($t1)
	sw      $at, 0x0000($t0)
	lw      $at, 0x0008($t1)
	sw      $t3, 0x0004($t0)
	sw      $at, 0x0008($t0)
	la.u    $t5, str_80331734
	la.l    $t5, str_80331734
	lw      $at, 0x0000($t5)
	addiu   $t4, $sp, 0x0034
	lw      $t6, 0x0004($t5)
	sw      $at, 0x0000($t4)
	lw      $at, 0x0008($t5)
	sw      $t6, 0x0004($t4)
	lw      $t6, 0x000C($t5)
	sw      $at, 0x0008($t4)
	lw      $at, 0x0010($t5)
	sw      $t6, 0x000C($t4)
	sw      $at, 0x0010($t4)
	lbu     $at, 0x0014($t5)
	sb      $at, 0x0014($t4)
	li      $a0, 0x0001
	lw      $a1, 0x0070($sp)
	li      $a2, 0x0001
	jal     message_802D862C
	li      $a3, 0x0003
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t7, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t7, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t0)
	lw      $t3, 0x0030($sp)
	la.u    $t1, gfx_message_start
	la.l    $t1, gfx_message_start
	sw      $t1, 0x0004($t3)
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t8, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t8, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	li      $t5, 0xFB000000
	sw      $t5, 0x0000($t6)
	lui     $t7, %hi(message_803613F8)
	lhu     $t7, %lo(message_803613F8)($t7)
	lw      $t0, 0x002C($sp)
	li      $at, -0x0100
	andi    $t9, $t7, 0x00FF
	or      $t2, $t9, $at
	sw      $t2, 0x0004($t0)
	lh      $a0, 0x006A($sp)
	lh      $a1, 0x006E($sp)
	addiu   $a2, $sp, 0x0058
	jal     message_802D77DC
	addiu   $a0, $a0, 0x000C
	lh      $a0, 0x006A($sp)
	lh      $a1, 0x006E($sp)
	addiu   $a2, $sp, 0x004C
	addiu   $a0, $a0, 0x000C
	jal     message_802D77DC
	addiu   $a1, $a1, -0x0014
	lh      $a0, 0x006A($sp)
	lh      $a1, 0x006E($sp)
	addiu   $a2, $sp, 0x0034
	addiu   $a0, $a0, 0x000C
	jal     message_802D77DC
	addiu   $a1, $a1, -0x0028
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t1, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t1, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t4)
	lw      $t6, 0x0028($sp)
	la.u    $t5, gfx_message_end
	la.l    $t5, gfx_message_end
	sw      $t5, 0x0004($t6)
	lw      $t9, 0x0070($sp)
	lh      $t1, 0x0076($sp)
	lh      $t8, 0x006E($sp)
	lb      $t2, 0x0000($t9)
	lh      $t7, 0x006A($sp)
	li      $a0, 0x0001
	addiu   $t0, $t2, -0x0001
	multu   $t0, $t1
	mtc1    $t7, $f4
	li      $a3, 0x0000
	cvt.s.w $f4, $f4
	mflo    $t3
	subu    $t4, $t8, $t3
	mtc1    $t4, $f6
	mfc1    $a1, $f4
	cvt.s.w $f6, $f6
	mfc1    $a2, $f6
	jal     message_802D7070
	nop
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t5, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t5, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	li      $t7, 0xFB000000
	sw      $t7, 0x0000($t9)
	lui     $t2, %hi(message_803613F8)
	lhu     $t2, %lo(message_803613F8)($t2)
	lw      $t8, 0x0024($sp)
	li      $at, -0x0100
	andi    $t0, $t2, 0x00FF
	or      $t1, $t0, $at
	sw      $t1, 0x0004($t8)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t6)
	lw      $t9, 0x0020($sp)
	la.u    $t7, gfx_message_cursor
	la.l    $t7, gfx_message_cursor
	sw      $t7, 0x0004($t9)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t2, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t2, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	li      $t1, 0xBD000000
	sw      $t1, 0x0000($t8)
	lw      $t3, 0x001C($sp)
	sw      $0, 0x0004($t3)
	b       .L802DDAD0
	nop
.L802DDAD0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

message_802DDAE0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(message_80331470)
	lb      $s0, %lo(message_80331470)($s0)
	beqz    $s0, .L802DDB10
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802DDB74
	nop
	b       .L802DDC44
	nop
.L802DDB10:
	jal     message_802DD210
	nop
	lui     $t6, %hi(message_803316CC)
	lw      $t6, %lo(message_803316CC)($t6)
	slti    $at, $t6, 0x0065
	bnez    $at, .L802DDB6C
	nop
	lui     $t7, %hi(message_803316C8)
	lb      $t7, %lo(message_803316C8)($t7)
	li      $at, 0x0001
	bne     $t7, $at, .L802DDB6C
	nop
	li      $t8, 0x0001
	lui     $at, %hi(message_80331470)
	sb      $t8, %lo(message_80331470)($at)
	li      $a0, -0x0001
	jal     game_8024B798
	move    $a1, $0
	lui     $at, %hi(message_803613F8)
	sh      $0, %lo(message_803613F8)($at)
	li      $t9, 0x0001
	lui     $at, %hi(message_80331490)
	sb      $t9, %lo(message_80331490)($at)
.L802DDB6C:
	b       .L802DDC44
	nop
.L802DDB74:
	jal     message_802DB3B8
	nop
	jal     message_802DD210
	nop
	la.u    $a2, message_80331490
	la.l    $a2, message_80331490
	li      $a0, 0x0064
	li      $a1, 0x0056
	jal     message_802DD838
	li      $a3, 0x0014
	lui     $t0, %hi(message_803316CC)
	lw      $t0, %lo(message_803316CC)($t0)
	slti    $at, $t0, 0x006F
	bnez    $at, .L802DDC3C
	nop
	lui     $t1, %hi(controller)
	lw      $t1, %lo(controller)($t1)
	lhu     $t2, 0x0012($t1)
	andi    $t3, $t2, 0x8000
	bnez    $t3, .L802DDBD4
	nop
	andi    $t4, $t2, 0x1000
	beqz    $t4, .L802DDC3C
	nop
.L802DDBD4:
	move    $a0, $0
	jal     game_8024B798
	move    $a1, $0
	li.u    $a0, 0x701EFF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x701EFF81
	lui     $at, %hi(message_80331470)
	sb      $0, %lo(message_80331470)($at)
	li      $t5, -0x0001
	lui     $at, %hi(message_803314F8)
	sh      $t5, %lo(message_803314F8)($at)
	lui     $t6, %hi(message_80331490)
	lb      $t6, %lo(message_80331490)($t6)
	sh      $t6, 0x0026($sp)
	lui     $at, %hi(message_803316CC)
	sw      $0, %lo(message_803316CC)($at)
	lui     $at, %hi(message_803316D0)
	sw      $0, %lo(message_803316D0)($at)
	lui     $at, %hi(message_803316C8)
	sb      $0, %lo(message_803316C8)($at)
	lui     $at, %hi(message_803316D4)
	sb      $0, %lo(message_803316D4)($at)
	b       .L802DDC90
	lh      $v0, 0x0026($sp)
.L802DDC3C:
	b       .L802DDC44
	nop
.L802DDC44:
	lui     $t7, %hi(message_803613F8)
	lhu     $t7, %lo(message_803613F8)($t7)
	slti    $at, $t7, 0x00FA
	beqz    $at, .L802DDC6C
	nop
	lui     $t8, %hi(message_803613F8)
	lhu     $t8, %lo(message_803613F8)($t8)
	lui     $at, %hi(message_803613F8)
	addiu   $t9, $t8, 0x0019
	sh      $t9, %lo(message_803613F8)($at)
.L802DDC6C:
	lui     $t0, %hi(message_803316CC)
	lw      $t0, %lo(message_803316CC)($t0)
	lui     $at, %hi(message_803316CC)
	addiu   $t1, $t0, 0x0001
	sw      $t1, %lo(message_803316CC)($at)
	b       .L802DDC90
	move    $v0, $0
	b       .L802DDC90
	nop
.L802DDC90:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* SHORT message_802DDCA4(void) */
.globl message_802DDCA4
message_802DDCA4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	sh      $0, 0x0026($sp)
	jal     message_802D7384
	nop
	lui     $t6, %hi(message_803314F8)
	lh      $t6, %lo(message_803314F8)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L802DDD74
	nop
	lui     $s0, %hi(message_803314F8)
	lh      $s0, %lo(message_803314F8)($s0)
	beqz    $s0, .L802DDD0C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802DDD20
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L802DDD34
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L802DDD48
	nop
	b       .L802DDD5C
	nop
.L802DDD0C:
	jal     message_802DCA88
	nop
	sh      $v0, 0x0026($sp)
	b       .L802DDD5C
	nop
.L802DDD20:
	jal     message_802DCA88
	nop
	sh      $v0, 0x0026($sp)
	b       .L802DDD5C
	nop
.L802DDD34:
	jal     message_802DDAE0
	nop
	sh      $v0, 0x0026($sp)
	b       .L802DDD5C
	nop
.L802DDD48:
	jal     message_802DDAE0
	nop
	sh      $v0, 0x0026($sp)
	b       .L802DDD5C
	nop
.L802DDD5C:
	lui     $t7, %hi(message_803613F0)
	lh      $t7, %lo(message_803613F0)($t7)
	lui     $at, %hi(message_803613F0)
	addiu   $t8, $t7, 0x1000
	b       .L802DDDC8
	sh      $t8, %lo(message_803613F0)($at)
.L802DDD74:
	lui     $t9, %hi(message_80331484)
	lh      $t9, %lo(message_80331484)($t9)
	li      $at, -0x0001
	beq     $t9, $at, .L802DDDC8
	nop
	lui     $t0, %hi(message_80331484)
	lh      $t0, %lo(message_80331484)($t0)
	li      $at, 0x0014
	bne     $t0, $at, .L802DDDAC
	nop
	jal     message_802DAD54
	nop
	b       .L802DDDD8
	lh      $v0, 0x0026($sp)
.L802DDDAC:
	jal     message_802DA1AC
	nop
	lui     $t1, %hi(message_803613F0)
	lh      $t1, %lo(message_803613F0)($t1)
	lui     $at, %hi(message_803613F0)
	addiu   $t2, $t1, 0x1000
	sh      $t2, %lo(message_803613F0)($at)
.L802DDDC8:
	b       .L802DDDD8
	lh      $v0, 0x0026($sp)
	b       .L802DDDD8
	nop
.L802DDDD8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

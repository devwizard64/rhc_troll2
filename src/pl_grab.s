.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_grab_80274EB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	lw      $a1, 0x001C($sp)
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80274EF8
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80274EF8:
	b       .L80274F00
	nop
.L80274F00:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_grab_80274F10
pl_grab_80274F10:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80274F4C
	nop
	li.u    $t9, 0x04000440
	li.u    $t0, 0x04808459
	li.l    $t0, 0x04808459
	li.l    $t9, 0x04000440
	sw      $t9, 0x0024($sp)
	b       .L80274F64
	sw      $t0, 0x0020($sp)
.L80274F4C:
	li.u    $t1, 0x0C400201
	li.u    $t2, 0x0C008220
	li.l    $t2, 0x0C008220
	li.l    $t1, 0x0C400201
	sw      $t1, 0x0024($sp)
	sw      $t2, 0x0020($sp)
.L80274F64:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x001C($t3)
	sltiu   $at, $t4, 0x000A
	beqz    $at, L80275308
	nop
	sll     $t4, $t4, 2
	lui     $at, %hi(pl_grab_80336ED0)
	addu    $at, $at, $t4
	lw      $t4, %lo(pl_grab_80336ED0)($at)
	jr      $t4
	nop
.globl L80274F90
L80274F90:
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x241E8081
	li.l    $a0, 0x241E8081
	lw      $a1, 0x0088($t5)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.globl L80274FA8
L80274FA8:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0067
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80274FD4
	nop
	lw      $t7, 0x0028($sp)
	li      $t6, 0x0002
	b       .L80274FE0
	sw      $t6, 0x001C($t7)
.L80274FD4:
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0001
	sw      $t8, 0x001C($t9)
.L80274FE0:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0088($t0)
	lh      $t2, 0x0040($t1)
	slti    $at, $t2, 0x0002
	bnez    $at, .L80275024
	nop
	jal     collision_8024CC7C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80275010
	nop
	b       .L80275318
	li      $v0, 0x0001
.L80275010:
	lw      $t3, 0x0028($sp)
	li      $at, 0x00100000
	lw      $t4, 0x0004($t3)
	or      $t5, $t4, $at
	sw      $t5, 0x0004($t3)
.L80275024:
	lw      $t6, 0x0028($sp)
	li      $at, 0x0002
	lw      $t7, 0x001C($t6)
	bne     $t7, $at, .L80275048
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0004
	lw      $t0, 0x0098($t9)
	sb      $t8, 0x000B($t0)
.L80275048:
	b       L80275308
	nop
.globl L80275050
L80275050:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0069
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0088($t1)
	lh      $t4, 0x0040($t2)
	bgtz    $t4, .L80275084
	nop
	lw      $t5, 0x0028($sp)
	li      $at, 0x00100000
	lw      $t3, 0x0004($t5)
	or      $t6, $t3, $at
	sw      $t6, 0x0004($t5)
.L80275084:
	lw      $t7, 0x0028($sp)
	lhu     $t9, 0x0002($t7)
	andi    $t8, $t9, 0x2000
	beqz    $t8, .L802750A4
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0003
	sw      $t0, 0x001C($t1)
.L802750A4:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802750C4
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	jal     player_80252CF4
	move    $a2, $0
.L802750C4:
	b       L80275308
	nop
.globl L802750CC
L802750CC:
	lw      $t2, 0x0028($sp)
	li.u    $a0, 0x24248081
	li.l    $a0, 0x24248081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.globl L802750E4
L802750E4:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0068
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80275110
	nop
	lw      $t3, 0x0028($sp)
	li      $t4, 0x0005
	b       .L8027511C
	sw      $t4, 0x001C($t3)
.L80275110:
	lw      $t5, 0x0028($sp)
	li      $t6, 0x0004
	sw      $t6, 0x001C($t5)
.L8027511C:
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x0088($t7)
	lh      $t8, 0x0040($t9)
	blez    $t8, .L80275144
	nop
	lw      $t0, 0x0028($sp)
	li      $at, 0x00100000
	lw      $t1, 0x0004($t0)
	or      $t2, $t1, $at
	sw      $t2, 0x0004($t0)
.L80275144:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0005
	lw      $t3, 0x001C($t4)
	bne     $t3, $at, .L80275168
	nop
	lw      $t5, 0x0028($sp)
	li      $t6, 0x0044
	lw      $t7, 0x0098($t5)
	sb      $t6, 0x000B($t7)
.L80275168:
	b       L80275308
	nop
.globl L80275170
L80275170:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x006A
	lw      $t9, 0x0028($sp)
	lw      $t8, 0x0088($t9)
	lh      $t1, 0x0040($t8)
	bgtz    $t1, .L802751A4
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x00100000
	lw      $t0, 0x0004($t2)
	or      $t4, $t0, $at
	sw      $t4, 0x0004($t2)
.L802751A4:
	lw      $t3, 0x0028($sp)
	lhu     $t5, 0x0002($t3)
	andi    $t6, $t5, 0x2000
	beqz    $t6, .L802751C4
	nop
	lw      $t9, 0x0028($sp)
	li      $t7, 0x0006
	sw      $t7, 0x001C($t9)
.L802751C4:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L802751E4
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	jal     player_80252CF4
	move    $a2, $0
.L802751E4:
	b       L80275308
	nop
.globl L802751EC
L802751EC:
	li.u    $a1, 0x241F8081
	li.l    $a1, 0x241F8081
	lw      $a0, 0x0028($sp)
	jal     player_80251444
	li      $a2, 0x0001
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0066
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	bnez    $t8, .L8027522C
	nop
	lw      $t0, 0x0028($sp)
	li      $t1, 0x0086
	lw      $t4, 0x0098($t0)
	sb      $t1, 0x000B($t4)
.L8027522C:
	lw      $t2, 0x001C($sp)
	bltz    $t2, .L80275258
	nop
	slti    $at, $t2, 0x0008
	beqz    $at, .L80275258
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x00200000
	lw      $t5, 0x0004($t3)
	or      $t6, $t5, $at
	sw      $t6, 0x0004($t3)
.L80275258:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80275278
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80275278:
	b       L80275308
	nop
.globl L80275280
L80275280:
	li.u    $a1, 0x241F8081
	li.l    $a1, 0x241F8081
	lw      $a0, 0x0028($sp)
	jal     player_80251444
	li      $a2, 0x0001
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0071
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x0088($t7)
	lh      $t8, 0x0040($t9)
	sw      $t8, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	slti    $at, $t0, 0x0002
	bnez    $at, .L802752E0
	nop
	slti    $at, $t0, 0x0008
	beqz    $at, .L802752E0
	nop
	lw      $t1, 0x0028($sp)
	li      $at, 0x00400000
	lw      $t4, 0x0004($t1)
	or      $t2, $t4, $at
	sw      $t2, 0x0004($t1)
.L802752E0:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80275300
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80275300:
	b       L80275308
	nop
.globl L80275308
L80275308:
	b       .L80275318
	move    $v0, $0
	b       .L80275318
	nop
.L80275318:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_grab_80275328:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80275364
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8027545C
	nop
.L80275364:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x000F
	beqz    $t1, .L80275388
	nop
	jal     player_80253218
	lw      $a0, 0x0018($sp)
	b       .L8027545C
	nop
.L80275388:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0018($t2)
	bnez    $t3, .L802753C4
	nop
	lhu     $t4, 0x0002($t2)
	andi    $t5, $t4, 0x0080
	beqz    $t5, .L802753C4
	nop
	li.u    $a1, 0x018008AC
	li.l    $a1, 0x018008AC
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8027545C
	nop
.L802753C4:
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x001C($t8)
	bnez    $t9, .L802753EC
	nop
	lw      $t1, 0x0018($sp)
	li      $t0, 0x0007
	sh      $t0, 0x001A($t1)
.L802753EC:
	lw      $t3, 0x0018($sp)
	lui     $t4, %hi(pl_grab_8032DD40)
	lhu     $t2, 0x001A($t3)
	move    $a0, $t3
	addu    $t4, $t4, $t2
	lb      $t4, %lo(pl_grab_8032DD40)($t4)
	mtc1    $t4, $f4
	nop
	cvt.s.w $f4, $f4
	mfc1    $a1, $f4
	jal     player_80251708
	nop
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x001A($t5)
	blez    $t6, .L8027543C
	nop
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t9, $t8, -0x0001
	sh      $t9, 0x001A($t7)
.L8027543C:
	jal     pl_grab_80274F10
	lw      $a0, 0x0018($sp)
	jal     pl_physics_80255D88
	lw      $a0, 0x0018($sp)
	b       .L8027545C
	move    $v0, $0
	b       .L8027545C
	nop
.L8027545C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_grab_8027546C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L802754A8
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802755EC
	nop
.L802754A8:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L802754D8
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802755EC
	nop
.L802754D8:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0018($t2)
	bnez    $t3, .L80275520
	nop
	jal     player_80250940
	move    $a0, $t2
	beqz    $v0, .L80275520
	nop
	jal     collision_8024C66C
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x24068081
	li.l    $a1, 0x24068081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t5, 0x0018($sp)
	li      $t4, 0x0001
	sh      $t4, 0x0018($t5)
.L80275520:
	lw      $t6, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t7, 0x0018($t6)
	bne     $t7, $at, .L802755D4
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x007C($t8)
	lw      $t0, 0x0190($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80275594
	nop
	lw      $t2, 0x0018($sp)
	li      $t3, 0x0002
	lw      $t4, 0x0098($t2)
	sb      $t3, 0x000A($t4)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0059
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8027558C
	nop
	li.u    $a1, 0x08000208
	li.l    $a1, 0x08000208
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8027558C:
	b       .L802755D4
	nop
.L80275594:
	lw      $t6, 0x0018($sp)
	li      $t5, 0x0001
	lw      $t7, 0x0098($t6)
	sb      $t5, 0x000A($t7)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x006B
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L802755D4
	nop
	li.u    $a1, 0x08000207
	li.l    $a1, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L802755D4:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	b       .L802755EC
	move    $v0, $0
	b       .L802755EC
	nop
.L802755EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_grab_802755FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80275638
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802756B8
	nop
.L80275638:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80275668
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802756B8
	nop
.L80275668:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0008
	beqz    $t4, .L80275694
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L802756B8
	nop
.L80275694:
	li.u    $a2, 0x08000207
	li.l    $a2, 0x08000207
	lw      $a0, 0x0018($sp)
	jal     pl_grab_80274EB0
	li      $a1, 0x008B
	b       .L802756B8
	move    $v0, $0
	b       .L802756B8
	nop
.L802756B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_grab_802756C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L80275704
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80275784
	nop
.L80275704:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80275734
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80275784
	nop
.L80275734:
	lw      $t2, 0x0018($sp)
	li      $at, 0x0008
	lhu     $t3, 0x001A($t2)
	addiu   $t4, $t3, 0x0001
	sh      $t4, 0x001A($t2)
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x001A($t5)
	bne     $t6, $at, .L80275760
	nop
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
.L80275760:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_grab_80274EB0
	li      $a1, 0x006E
	b       .L80275784
	move    $v0, $0
	b       .L80275784
	nop
.L80275784:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_grab_80275794:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	beqz    $t7, .L802757D8
	nop
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0010
	beqz    $t9, .L802757D8
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0387
	jal     player_80252CF4
	move    $a2, $0
	b       .L802758B0
	nop
.L802757D8:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, .L80275808
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802758B0
	nop
.L80275808:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0004
	beqz    $t5, .L80275838
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802758B0
	nop
.L80275838:
	lw      $t6, 0x0018($sp)
	li      $at, 0x0007
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, .L8027588C
	nop
	jal     collision_8024C780
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x24078081
	li.l    $a1, 0x24078081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	li.u    $a1, 0x04358081
	li.l    $a1, 0x04358081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
.L8027588C:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_grab_80274EB0
	li      $a1, 0x0065
	b       .L802758B0
	move    $v0, $0
	b       .L802758B0
	nop
.L802758B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_grab_802758C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L802758FC
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802759A4
	nop
.L802758FC:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L8027592C
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L802759A4
	nop
.L8027592C:
	lw      $t2, 0x0018($sp)
	li      $at, 0x000D
	lhu     $t3, 0x001A($t2)
	addiu   $t4, $t3, 0x0001
	sh      $t4, 0x001A($t2)
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x001A($t5)
	bne     $t6, $at, .L80275980
	nop
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x24078081
	li.l    $a1, 0x24078081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	li.u    $a1, 0x04358081
	li.l    $a1, 0x04358081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
.L80275980:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_grab_80274EB0
	li      $a1, 0x00B9
	b       .L802759A4
	move    $v0, $0
	b       .L802759A4
	nop
.L802759A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_grab_802759B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L802759F0
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80275A70
	nop
.L802759F0:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80275A20
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80275A70
	nop
.L80275A20:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0008
	beqz    $t4, .L80275A4C
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     player_80252CF4
	move    $a2, $0
	b       .L80275A70
	nop
.L80275A4C:
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_grab_80274EB0
	li      $a1, 0x005A
	b       .L80275A70
	move    $v0, $0
	b       .L80275A70
	nop
.L80275A70:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_grab_80275A80:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L80275AE0
	nop
	lw      $t9, 0x0018($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
	lw      $t0, 0x0018($sp)
	sh      $0, 0x0034($t0)
	lw      $t2, 0x0018($sp)
	li      $t1, 0x0003
	lw      $t3, 0x0098($t2)
	sb      $t1, 0x000A($t3)
	jal     collision_8024C66C
	lw      $a0, 0x0018($sp)
	lw      $t4, 0x0018($sp)
	li.u    $a0, 0x24068081
	li.l    $a0, 0x24068081
	lw      $a1, 0x0088($t4)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80275AE0:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00B5
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80275B0C
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0391
	jal     player_80252CF4
	move    $a2, $0
.L80275B0C:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	b       .L80275B24
	move    $v0, $0
	b       .L80275B24
	nop
.L80275B24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_grab_80275B34:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, .L80275BC8
	nop
	lw      $t9, 0x0028($sp)
	lh      $t0, 0x0034($t9)
	slti    $at, $t0, -0x0DFF
	bnez    $at, .L80275B78
	nop
	slti    $at, $t0, 0x0E00
	bnez    $at, .L80275B98
	nop
.L80275B78:
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x24368081
	li.l    $a0, 0x24368081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L80275BB0
	nop
.L80275B98:
	lw      $t2, 0x0028($sp)
	li.u    $a0, 0x240C8081
	li.l    $a0, 0x240C8081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80275BB0:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0392
	jal     player_80252CF4
	move    $a2, $0
	b       .L80275E64
	nop
.L80275BC8:
	lw      $t3, 0x0028($sp)
	lh      $t4, 0x0034($t3)
	bnez    $t4, .L80275C28
	nop
	lw      $t5, 0x0028($sp)
	li      $at, 0x0078
	lhu     $s0, 0x001A($t5)
	lhu     $t7, 0x001A($t5)
	slt     $t6, $at, $s0
	move    $s0, $t6
	addiu   $t8, $t7, 0x0001
	beqz    $s0, .L80275C14
	sh      $t8, 0x001A($t5)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0392
	jal     player_80252CF4
	li      $a2, 0x0001
	b       .L80275E64
	nop
.L80275C14:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00B8
	b       .L80275C3C
	nop
.L80275C28:
	lw      $t9, 0x0028($sp)
	sh      $0, 0x001A($t9)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00B6
.L80275C3C:
	lw      $t0, 0x0028($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80275D4C
	nop
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x001C($t1)
	bnez    $t2, .L80275C88
	nop
	lw      $t4, 0x0028($sp)
	li      $t3, 0x0001
	sw      $t3, 0x001C($t4)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x0024($t6)
	b       .L80275D44
	sh      $t7, 0x003A($t6)
.L80275C88:
	lw      $t8, 0x0028($sp)
	lh      $t5, 0x0024($t8)
	lh      $t9, 0x003A($t8)
	subu    $t0, $t5, $t9
	sll     $t1, $t0, 16
	sra     $t2, $t1, 16
	bgez    $t2, .L80275CB0
	sra     $t3, $t2, 7
	addiu   $at, $t2, 0x007F
	sra     $t3, $at, 7
.L80275CB0:
	sh      $t3, 0x0026($sp)
	lh      $t4, 0x0026($sp)
	slti    $at, $t4, -0x0080
	beqz    $at, .L80275CCC
	nop
	li      $t7, -0x0080
	sh      $t7, 0x0026($sp)
.L80275CCC:
	lh      $t6, 0x0026($sp)
	slti    $at, $t6, 0x0081
	bnez    $at, .L80275CE4
	nop
	li      $t8, 0x0080
	sh      $t8, 0x0026($sp)
.L80275CE4:
	lw      $t5, 0x0028($sp)
	lh      $t9, 0x0024($t5)
	sh      $t9, 0x003A($t5)
	lw      $t0, 0x0028($sp)
	lh      $t2, 0x0026($sp)
	lh      $t1, 0x0034($t0)
	addu    $t3, $t1, $t2
	sh      $t3, 0x0034($t0)
	lw      $t4, 0x0028($sp)
	lh      $t7, 0x0034($t4)
	slti    $at, $t7, 0x1001
	bnez    $at, .L80275D24
	nop
	lw      $t8, 0x0028($sp)
	li      $t6, 0x1000
	sh      $t6, 0x0034($t8)
.L80275D24:
	lw      $t9, 0x0028($sp)
	lh      $t5, 0x0034($t9)
	slti    $at, $t5, -0x1000
	beqz    $at, .L80275D44
	nop
	lw      $t2, 0x0028($sp)
	li      $t1, -0x1000
	sh      $t1, 0x0034($t2)
.L80275D44:
	b       .L80275D74
	nop
.L80275D4C:
	lw      $t3, 0x0028($sp)
	sw      $0, 0x001C($t3)
	lw      $t0, 0x0028($sp)
	move    $a1, $0
	li      $a2, 0x0040
	li      $a3, 0x0040
	jal     converge_i
	lh      $a0, 0x0034($t0)
	lw      $t4, 0x0028($sp)
	sh      $v0, 0x0034($t4)
.L80275D74:
	lw      $t7, 0x0028($sp)
	lh      $t6, 0x002E($t7)
	sh      $t6, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x002E($t8)
	lh      $t5, 0x0034($t8)
	addu    $t1, $t9, $t5
	sh      $t1, 0x002E($t8)
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0034($t2)
	slti    $at, $t3, -0x00FF
	beqz    $at, .L80275DD4
	nop
	lh      $t0, 0x0026($sp)
	lh      $t4, 0x002E($t2)
	slt     $at, $t0, $t4
	beqz    $at, .L80275DD4
	nop
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x50070081
	li.l    $a0, 0x50070081
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80275DD4:
	lw      $t6, 0x0028($sp)
	lh      $t9, 0x0034($t6)
	slti    $at, $t9, 0x0100
	bnez    $at, .L80275E14
	nop
	lh      $t5, 0x0026($sp)
	lh      $t1, 0x002E($t6)
	slt     $at, $t1, $t5
	beqz    $at, .L80275E14
	nop
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x50070081
	li.l    $a0, 0x50070081
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80275E14:
	jal     pl_physics_80255A34
	lw      $a0, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	lh      $t2, 0x0034($t3)
	bltz    $t2, .L80275E44
	nop
	lw      $t0, 0x0028($sp)
	lh      $t4, 0x0034($t0)
	lw      $t9, 0x0088($t0)
	subu    $t7, $0, $t4
	b       .L80275E54
	sh      $t7, 0x001A($t9)
.L80275E44:
	lw      $t6, 0x0028($sp)
	lh      $t5, 0x0034($t6)
	lw      $t1, 0x0088($t6)
	sh      $t5, 0x001A($t1)
.L80275E54:
	b       .L80275E64
	move    $v0, $0
	b       .L80275E64
	nop
.L80275E64:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_grab_80275E78:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, .L80275ED0
	nop
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x001C($t1)
	bnez    $t2, .L80275EC8
	nop
	jal     collision_8024C780
	lw      $a0, 0x0018($sp)
	b       .L80275ED0
	nop
.L80275EC8:
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
.L80275ED0:
	lw      $t3, 0x0018($sp)
	sh      $0, 0x0034($t3)
	li.u    $a2, 0x0C400201
	li.l    $a2, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_grab_80274EB0
	li      $a1, 0x00B7
	b       .L80275EFC
	move    $v0, $0
	b       .L80275EFC
	nop
.L80275EFC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_grab_80275F0C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0076($t6)
	addiu   $t8, $t7, -0x0064
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x0040($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80275F60
	nop
	jal     player_80253488
	lw      $a0, 0x0020($sp)
	b       .L80275FD0
	nop
.L80275F60:
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0040
	beqz    $t2, .L80275F90
	nop
	li.u    $a1, 0x00020339
	li.l    $a1, 0x00020339
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80275FD0
	nop
.L80275F90:
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x00AE($t3)
	slti    $at, $t4, 0x0100
	beqz    $at, .L80275FC0
	nop
	li.u    $a1, 0x00021311
	li.l    $a1, 0x00021311
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L80275FD0
	nop
.L80275FC0:
	b       .L80275FD0
	move    $v0, $0
	b       .L80275FD0
	nop
.L80275FD0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl pl_grab_main
pl_grab_main:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_grab_80275F0C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80276008
	nop
	b       .L802761BC
	li      $v0, 0x0001
.L80276008:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80255414
	li      $a1, 0x3F000000
	beqz    $v0, .L80276024
	nop
	b       .L802761BC
	li      $v0, 0x0001
.L80276024:
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x00800381
	li.l    $at, 0x00800381
	lw      $s0, 0x000C($t6)
	sltu    $at, $s0, $at
	bnez    $at, .L80276068
	nop
	li.u    $at, 0x80000588
	li.l    $at, 0x80000588
	beq     $s0, $at, .L80276118
	nop
	li.u    $at, 0x80000589
	li.l    $at, 0x80000589
	beq     $s0, $at, .L8027612C
	nop
	b       L8027617C
	nop
.L80276068:
	sltiu   $at, $s0, 0x0393
	bnez    $at, .L8027608C
	nop
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	beq     $s0, $at, .L802760B4
	nop
	b       L8027617C
	nop
.L8027608C:
	addiu   $t7, $s0, -0x0383
	sltiu   $at, $t7, 0x0010
	beqz    $at, L8027617C
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_grab_80336EF8)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_grab_80336EF8)($at)
	jr      $t7
	nop
.L802760B4:
	jal     pl_grab_80275328
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L802760C8
L802760C8:
	jal     pl_grab_8027546C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L802760DC
L802760DC:
	jal     pl_grab_802755FC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L802760F0
L802760F0:
	jal     pl_grab_802759B4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L80276104
L80276104:
	jal     pl_grab_802756C8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.L80276118:
	jal     pl_grab_80275794
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.L8027612C:
	jal     pl_grab_802758C0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L80276140
L80276140:
	jal     pl_grab_80275A80
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L80276154
L80276154:
	jal     pl_grab_80275B34
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L80276168
L80276168:
	jal     pl_grab_80275E78
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8027617C
	nop
.globl L8027617C
L8027617C:
	lw      $t8, 0x0024($sp)
	bnez    $t8, .L802761AC
	nop
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0200
	beqz    $t1, .L802761AC
	nop
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0008($t2)
	ori     $t4, $t3, 0x0080
	sw      $t4, 0x0008($t2)
.L802761AC:
	b       .L802761BC
	lw      $v0, 0x0024($sp)
	b       .L802761BC
	nop
.L802761BC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

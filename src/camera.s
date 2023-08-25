.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

.globl camera_8027F590
camera_8027F590:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sdc1    $f20, 0x0010($sp)
	lh      $t6, 0x002A($sp)
	addiu   $t7, $t6, -0x0001
	sltiu   $at, $t7, 0x000A
	beqz    $at, L8027F89C
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(camera_803370F0)
	addu    $at, $at, $t7
	lw      $t7, %lo(camera_803370F0)($at)
	jr      $t7
	nop
.globl L8027F5CC
L8027F5CC:
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x21C)
	swc1    $f4, %lo(_camera_bss+0x21C)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss+0x224)
	swc1    $f6, %lo(_camera_bss+0x224)($at)
	b       L8027F89C
	nop
.globl L8027F5EC
L8027F5EC:
	li      $a0, 0x0060
	li      $a1, 0x0003
	jal     camera_8028AEF0
	li      $a2, -0x8000
	li      $a0, 0x0060
	li      $a1, 0x0003
	jal     camera_8028B00C
	li      $a2, -0x8000
	b       L8027F89C
	nop
.globl L8027F614
L8027F614:
	li      $a0, 0x0060
	li      $a1, 0x000C
	jal     camera_8028AEF0
	li      $a2, -0x8000
	b       L8027F89C
	nop
.globl L8027F62C
L8027F62C:
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lw      $t9, 0x0000($t8)
	andi    $t0, $t9, 0x6000
	beqz    $t0, .L8027F67C
	nop
	li      $a0, 0x0200
	li      $a1, 0x0010
	jal     camera_8028AF4C
	li      $a2, 0x1000
	li      $a0, 0x0400
	li      $a1, 0x0020
	jal     camera_8028B00C
	li      $a2, 0x1000
	li      $a0, 0x0100
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       .L8027F6AC
	nop
.L8027F67C:
	li      $a0, 0x0080
	li      $a1, 0x0008
	jal     camera_8028AF4C
	li      $a2, 0x4000
	li      $a0, 0x0080
	li      $a1, 0x0008
	jal     camera_8028B00C
	li      $a2, 0x4000
	li      $a0, 0x0100
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
.L8027F6AC:
	mtc1    $0, $f8
	lui     $at, %hi(_camera_bss+0x21C)
	swc1    $f8, %lo(_camera_bss+0x21C)($at)
	mtc1    $0, $f10
	lui     $at, %hi(_camera_bss+0x224)
	swc1    $f10, %lo(_camera_bss+0x224)($at)
	b       L8027F89C
	nop
.globl L8027F6CC
L8027F6CC:
	lui     $t1, %hi(camera_8032DF60)
	lw      $t1, %lo(camera_8032DF60)($t1)
	lw      $t2, 0x0000($t1)
	andi    $t3, $t2, 0x6000
	beqz    $t3, .L8027F71C
	nop
	li      $a0, 0x0400
	li      $a1, 0x0020
	jal     camera_8028AF4C
	li      $a2, 0x1000
	li      $a0, 0x0600
	li      $a1, 0x0030
	jal     camera_8028B00C
	li      $a2, 0x1000
	li      $a0, 0x0180
	li      $a1, 0x0040
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       .L8027F74C
	nop
.L8027F71C:
	li      $a0, 0x0100
	li      $a1, 0x0010
	jal     camera_8028AF4C
	li      $a2, 0x4000
	li      $a0, 0x0100
	li      $a1, 0x0010
	jal     camera_8028B00C
	li      $a2, 0x4000
	li      $a0, 0x0180
	li      $a1, 0x0040
	jal     camera_8029A3B4
	li      $a2, -0x8000
.L8027F74C:
	mtc1    $0, $f16
	lui     $at, %hi(_camera_bss+0x21C)
	swc1    $f16, %lo(_camera_bss+0x21C)($at)
	mtc1    $0, $f18
	lui     $at, %hi(_camera_bss+0x224)
	swc1    $f18, %lo(_camera_bss+0x224)($at)
	b       L8027F89C
	nop
.globl L8027F76C
L8027F76C:
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	lw      $t5, 0x0000($t4)
	andi    $t6, $t5, 0x6000
	beqz    $t6, .L8027F7BC
	nop
	li      $a0, 0x0600
	li      $a1, 0x0030
	jal     camera_8028AF4C
	li      $a2, 0x1000
	li      $a0, 0x0800
	li      $a1, 0x0040
	jal     camera_8028B00C
	li      $a2, 0x1000
	li      $a0, 0x0200
	li      $a1, 0x0050
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       .L8027F7EC
	nop
.L8027F7BC:
	li      $a0, 0x0180
	li      $a1, 0x0020
	jal     camera_8028AF4C
	li      $a2, 0x4000
	li      $a0, 0x0200
	li      $a1, 0x0020
	jal     camera_8028B00C
	li      $a2, 0x4000
	li      $a0, 0x0200
	li      $a1, 0x0050
	jal     camera_8029A3B4
	li      $a2, -0x8000
.L8027F7EC:
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x21C)
	swc1    $f4, %lo(_camera_bss+0x21C)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss+0x224)
	swc1    $f6, %lo(_camera_bss+0x224)($at)
	b       L8027F89C
	nop
.globl L8027F80C
L8027F80C:
	lui     $at, %hi(camera_80337118)
	lwc1    $f8, %lo(camera_80337118)($at)
	lui     $at, %hi(_camera_bss+0x21C)
	swc1    $f8, %lo(_camera_bss+0x21C)($at)
	lui     $at, %hi(camera_8033711C)
	lwc1    $f10, %lo(camera_8033711C)($at)
	lui     $at, %hi(_camera_bss+0x224)
	swc1    $f10, %lo(_camera_bss+0x224)($at)
	b       L8027F89C
	nop
.globl L8027F834
L8027F834:
	jal     o_script_80383CB4
	nop
	li      $at, 0x42800000
	mtc1    $at, $f16
	mov.s   $f20, $f0
	li      $a1, 0x0008
	mul.s   $f18, $f20, $f16
	li      $a2, -0x8000
	trunc.w.s $f4, $f18
	mfc1    $a0, $f4
	jal     camera_8028AEF0
	nop
	jal     o_script_80383CB4
	nop
	li      $at, 0x42800000
	mtc1    $at, $f6
	mov.s   $f20, $f0
	li      $a1, 0x0008
	mul.s   $f8, $f20, $f6
	li      $a2, -0x8000
	trunc.w.s $f10, $f8
	mfc1    $a0, $f10
	jal     camera_8028AF4C
	nop
	b       L8027F89C
	nop
.globl L8027F89C
L8027F89C:
	b       .L8027F8A4
	nop
.L8027F8A4:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl camera_8027F8B8
camera_8027F8B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lh      $t6, 0x001A($sp)
	addiu   $t7, $t6, -0x0001
	sltiu   $at, $t7, 0x000A
	beqz    $at, L8027F9D8
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(camera_80337120)
	addu    $at, $at, $t7
	lw      $t7, %lo(camera_80337120)($at)
	jr      $t7
	nop
.globl L8027F8F0
L8027F8F0:
	li      $a0, 0x0060
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x4000
	b       L8027F9D8
	nop
.globl L8027F908
L8027F908:
	li      $a0, 0x00C0
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x4000
	b       L8027F9D8
	nop
.globl L8027F920
L8027F920:
	li      $a0, 0x0100
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x3000
	b       L8027F9D8
	nop
.globl L8027F938
L8027F938:
	li      $a0, 0x0080
	li      $a1, 0x0010
	jal     camera_8028B00C
	li      $a2, 0x3000
	b       L8027F9D8
	nop
.globl L8027F950
L8027F950:
	li      $a0, 0x0020
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, -0x8000
	b       L8027F9D8
	nop
.globl L8027F968
L8027F968:
	li      $a0, 0x0040
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, -0x8000
	b       L8027F9D8
	nop
.globl L8027F980
L8027F980:
	li      $a0, 0x0020
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, -0x8000
	li      $a0, 0x0400
	li      $a1, 0x0010
	jal     camera_8028B00C
	li      $a2, 0x0100
	b       L8027F9D8
	nop
.globl L8027F9A8
L8027F9A8:
	li      $a0, 0x0040
	li      $a1, 0x0002
	jal     camera_8028AEF0
	li      $a2, -0x8000
	b       L8027F9D8
	nop
.globl L8027F9C0
L8027F9C0:
	li      $a0, -0x0200
	li      $a1, 0x0080
	jal     camera_8028AF4C
	li      $a2, 0x0200
	b       L8027F9D8
	nop
.globl L8027F9D8
L8027F9D8:
	b       .L8027F9E0
	nop
.L8027F9E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_8027F9F0
camera_8027F9F0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	sw      $s0, 0x0028($sp)
	lh      $s0, 0x003A($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L8027FA7C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8027FAC4
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8027FB10
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L8027FA48
	nop
	b       .L8027FB58
	nop
.L8027FA48:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x0044($sp)
	li      $a0, 0x0028
	li      $a1, 0x0008
	li      $a2, 0x4000
	li      $a3, 0x44FA0000
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	jal     camera_8028B068
	swc1    $f8, 0x0018($sp)
	b       .L8027FB58
	nop
.L8027FA7C:
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x0044($sp)
	li      $a0, 0x0080
	li      $a1, 0x0008
	li      $a2, 0x4000
	li      $a3, 0x457A0000
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	jal     camera_8028B068
	swc1    $f18, 0x0018($sp)
	li      $a0, 0x0001
	lw      $a1, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     camera_8029AC30
	lw      $a3, 0x0044($sp)
	b       .L8027FB58
	nop
.L8027FAC4:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x0044($sp)
	li.u    $a3, 0x45BB8000
	li.l    $a3, 0x45BB8000
	li      $a0, 0x00C0
	li      $a1, 0x0008
	li      $a2, 0x4000
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	jal     camera_8028B068
	swc1    $f8, 0x0018($sp)
	li      $a0, 0x0003
	lw      $a1, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     camera_8029AC30
	lw      $a3, 0x0044($sp)
	b       .L8027FB58
	nop
.L8027FB10:
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x0044($sp)
	li      $a0, 0x0100
	li      $a1, 0x0008
	li      $a2, 0x3000
	li      $a3, 0x45FA0000
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	jal     camera_8028B068
	swc1    $f18, 0x0018($sp)
	li      $a0, 0x0004
	lw      $a1, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     camera_8029AC30
	lw      $a3, 0x0044($sp)
	b       .L8027FB58
	nop
.L8027FB58:
	b       .L8027FB60
	nop
.L8027FB60:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8027FB74:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lh      $s0, 0x002A($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L8027FBB4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8027FBCC
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8027FBE4
	nop
	b       .L8027FBFC
	nop
.L8027FBB4:
	li      $a0, 0x0060
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x4000
	b       .L8027FBFC
	nop
.L8027FBCC:
	li      $a0, 0x00C0
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x4000
	b       .L8027FBFC
	nop
.L8027FBE4:
	li      $a0, 0x0100
	li      $a1, 0x0008
	jal     camera_8028AEF0
	li      $a2, 0x3000
	b       .L8027FBFC
	nop
.L8027FBFC:
	b       .L8027FC04
	nop
.L8027FC04:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8027FC18:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f4, %lo(_camera_bss+0xCC)($at)
	swc1    $f4, 0x0024($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0x4000
	bnez    $t8, .L8027FC8C
	nop
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	lwc1    $f12, 0x0004($t9)
	jal     map_80381BA0
	lwc1    $f14, 0x000C($t9)
	swc1    $f0, 0x0020($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8027FC8C
	nop
	lwc1    $f10, 0x0020($sp)
	swc1    $f10, 0x0024($sp)
.L8027FC8C:
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	li      $at, 0x00100000
	lw      $t1, 0x0000($t0)
	and     $t2, $t1, $at
	beqz    $t2, .L8027FD10
	nop
	la.u    $t3, player_data
	la.l    $t3, player_data
	lw      $t4, 0x0080($t3)
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f16, %lo(_camera_bss+0xCC)($at)
	lwc1    $f18, 0x00A4($t4)
	c.le.s  $f18, $f16
	nop
	bc1f    .L8027FD10
	nop
	lui     $at, %hi(camera_80337148)
	lwc1    $f6, %lo(camera_80337148)($at)
	lwc1    $f8, 0x01FC($t4)
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	mul.s   $f10, $f6, $f8
	lwc1    $f4, 0x0008($t5)
	add.s   $f16, $f18, $f10
	c.lt.s  $f4, $f16
	nop
	bc1f    .L8027FD10
	nop
	li      $at, 0x44960000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0030($sp)
.L8027FD10:
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f18, 0x0008($t6)
	lw      $t7, 0x0028($sp)
	sub.s   $f10, $f8, $f18
	mul.s   $f16, $f10, $f4
	swc1    $f16, 0x0000($t7)
	lw      $t8, 0x0028($sp)
	lwc1    $f8, 0x0030($sp)
	lwc1    $f6, 0x0000($t8)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8027FD5C
	nop
	lwc1    $f18, 0x0030($sp)
	lw      $t9, 0x0028($sp)
	swc1    $f18, 0x0000($t9)
.L8027FD5C:
	lw      $t0, 0x0028($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f10, 0x0000($t0)
	neg.s   $f16, $f4
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8027FD8C
	nop
	lwc1    $f6, 0x0030($sp)
	lw      $t1, 0x0028($sp)
	neg.s   $f8, $f6
	swc1    $f8, 0x0000($t1)
.L8027FD8C:
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f16, 0x0038($sp)
	lwc1    $f4, 0x0008($t2)
	lw      $t3, 0x0034($sp)
	sub.s   $f10, $f18, $f4
	mul.s   $f6, $f10, $f16
	swc1    $f6, 0x0000($t3)
	lw      $t5, 0x0034($sp)
	lwc1    $f18, 0x003C($sp)
	lwc1    $f8, 0x0000($t5)
	c.lt.s  $f18, $f8
	nop
	bc1f    .L8027FDD8
	nop
	lwc1    $f4, 0x003C($sp)
	lw      $t4, 0x0034($sp)
	swc1    $f4, 0x0000($t4)
.L8027FDD8:
	lw      $t6, 0x0034($sp)
	lwc1    $f16, 0x003C($sp)
	lwc1    $f10, 0x0000($t6)
	neg.s   $f6, $f16
	c.lt.s  $f10, $f6
	nop
	bc1f    .L8027FE08
	nop
	lwc1    $f8, 0x003C($sp)
	lw      $t7, 0x0034($sp)
	neg.s   $f18, $f8
	swc1    $f18, 0x0000($t7)
.L8027FE08:
	b       .L8027FE10
	nop
.L8027FE10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8027FE20:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	addiu   $t7, $sp, 0x0024
	lwc1    $f4, 0x0004($t6)
	swc1    $f4, 0x0000($t7)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lwc1    $f8, 0x0038($sp)
	addiu   $t9, $sp, 0x0024
	lwc1    $f6, 0x0008($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0004($t9)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	addiu   $t1, $sp, 0x0024
	lwc1    $f16, 0x000C($t0)
	swc1    $f16, 0x0008($t1)
	lui     $t3, %hi(_camera_bss+0x240)
	lh      $t3, %lo(_camera_bss+0x240)($t3)
	lh      $t2, 0x0046($sp)
	lh      $t4, 0x004A($sp)
	addiu   $a0, $sp, 0x0024
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0040($sp)
	addu    $a3, $t2, $t3
	jal     polar_to_cartesian
	sw      $t4, 0x0010($sp)
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f18, 0x0004($t5)
	swc1    $f18, 0x0000($t6)
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lwc1    $f6, 0x003C($sp)
	lw      $t8, 0x0030($sp)
	lwc1    $f4, 0x0008($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($t8)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f10, 0x000C($t9)
	swc1    $f10, 0x0008($t0)
	b       .L8027FEF0
	nop
.L8027FEF0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8027FF00:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	addiu   $a0, $sp, 0x0034
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	addiu   $t6, $sp, 0x0034
	lwc1    $f4, 0x0004($t6)
	lwc1    $f6, 0x0048($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($t6)
	lui     $t8, %hi(_camera_bss+0x240)
	lh      $t8, %lo(_camera_bss+0x240)($t8)
	lh      $t7, 0x0056($sp)
	lh      $t9, 0x005A($sp)
	addiu   $a0, $sp, 0x0034
	lw      $a1, 0x0044($sp)
	lw      $a2, 0x0050($sp)
	addu    $a3, $t7, $t8
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	addiu   $t0, $sp, 0x0028
	sw      $t0, 0x0010($sp)
	lw      $a0, 0x0044($sp)
	addiu   $a2, $sp, 0x0030
	addiu   $a3, $sp, 0x002A
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0004
	addiu   $t1, $sp, 0x0024
	sw      $t1, 0x0010($sp)
	lw      $a0, 0x0044($sp)
	lw      $a1, 0x0040($sp)
	addiu   $a2, $sp, 0x002C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0026
	lh      $t2, 0x0024($sp)
	lw      $a0, 0x0044($sp)
	lw      $a1, 0x0040($sp)
	lw      $a2, 0x002C($sp)
	lh      $a3, 0x0026($sp)
	jal     polar_to_cartesian
	sw      $t2, 0x0010($sp)
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	lwc1    $f16, 0x004C($sp)
	lw      $t4, 0x0040($sp)
	lwc1    $f10, 0x0008($t3)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t4)
	b       .L8027FFE8
	nop
.L8027FFE8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

camera_8027FFF8:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lw      $t7, 0x0000($t6)
	sh      $t7, 0x002E($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($sp)
	la.u    $t9, _camera_bss+0x178
	lw      $t8, 0x0048($sp)
	la.l    $t9, _camera_bss+0x178
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($t9)
	addiu   $a3, $sp, 0x0044
	lwc1    $f12, 0x0010($t8)
	lw      $a2, 0x0018($t8)
	jal     map_80381264
	sub.s   $f14, $f6, $f8
	swc1    $f0, 0x0024($sp)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	li      $at, 0x00200000
	lw      $t1, 0x0000($t0)
	and     $t2, $t1, $at
	beqz    $t2, .L80280148
	nop
	lui     $at, %hi(_camera_bss+0xDC)
	lwc1    $f10, %lo(_camera_bss+0xDC)($at)
	swc1    $f10, 0x003C($sp)
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f16, %lo(_camera_bss+0xCC)($at)
	swc1    $f16, 0x0040($sp)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x003C($sp)
	lwc1    $f18, 0x0040($sp)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f18, $f8
	nop
	bc1f    .L802800C8
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x003C($sp)
	sub.s   $f4, $f10, $f16
	swc1    $f4, 0x0040($sp)
.L802800C8:
	lwc1    $f6, 0x003C($sp)
	lwc1    $f18, 0x0040($sp)
	lui     $at, %hi(camera_8033714C)
	lwc1    $f10, %lo(camera_8033714C)($at)
	sub.s   $f8, $f6, $f18
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x004C($sp)
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x0008($t3)
	lwc1    $f16, 0x004C($sp)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80280130
	nop
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	li      $at, 0x43C80000
	mtc1    $at, $f4
	lwc1    $f18, 0x0008($t4)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x004C($sp)
.L80280130:
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x004C($sp)
	jal     camera_8028C8F0
	li      $a2, 0x40A00000
	b       .L8028034C
	nop
.L80280148:
	lw      $t5, 0x0048($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lwc1    $f8, 0x0014($t5)
	addiu   $a3, $sp, 0x0044
	lwc1    $f12, 0x0010($t5)
	lw      $a2, 0x0018($t5)
	jal     map_80381900
	add.s   $f14, $f8, $f10
	lwc1    $f16, 0x0028($sp)
	add.s   $f18, $f0, $f16
	swc1    $f18, 0x0038($sp)
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f6, %lo(_camera_bss+0xCC)($at)
	lwc1    $f4, 0x0028($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0040($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f16, 0x0040($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802801AC
	nop
	lwc1    $f18, 0x0040($sp)
	swc1    $f18, 0x0038($sp)
.L802801AC:
	lwc1    $f4, 0x004C($sp)
	lwc1    $f6, 0x0038($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802801D8
	nop
	lwc1    $f8, 0x0038($sp)
	swc1    $f8, 0x004C($sp)
	lwc1    $f10, 0x004C($sp)
	lw      $t6, 0x0048($sp)
	swc1    $f10, 0x0014($t6)
.L802801D8:
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	li.u    $at, 0x0002033B
	li.l    $at, 0x0002033B
	lw      $t9, 0x0000($t7)
	beq     $t9, $at, .L80280214
	nop
	li.u    $at, 0x0002033A
	li.l    $at, 0x0002033A
	beq     $t9, $at, .L80280214
	nop
	li.u    $at, 0x0002033C
	li.l    $at, 0x0002033C
	bne     $t9, $at, .L8028027C
	nop
.L80280214:
	lw      $t8, 0x0048($sp)
	lwc1    $f18, 0x004C($sp)
	mtc1    $0, $f6
	lwc1    $f16, 0x0014($t8)
	sub.s   $f4, $f16, $f18
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80280240
	nop
	b       .L80280254
	mov.s   $f20, $f4
.L80280240:
	lw      $t0, 0x0048($sp)
	lwc1    $f10, 0x004C($sp)
	lwc1    $f8, 0x0014($t0)
	sub.s   $f20, $f8, $f10
	neg.s   $f20, $f20
.L80280254:
	li      $at, 0x447A0000
	mtc1    $at, $f16
	nop
	c.lt.s  $f16, $f20
	nop
	bc1f    .L8028027C
	nop
	lwc1    $f18, 0x004C($sp)
	lw      $t1, 0x0048($sp)
	swc1    $f18, 0x0014($t1)
.L8028027C:
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x004C($sp)
	jal     camera_8028C8F0
	li      $a2, 0x41A00000
	lui     $at, %hi(camera_80337150)
	lwc1    $f4, %lo(camera_80337150)($at)
	lwc1    $f6, 0x0024($sp)
	c.eq.s  $f6, $f4
	nop
	bc1t    .L8028034C
	nop
	lwc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x0028($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($sp)
	lw      $t2, 0x0048($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f18, 0x0014($t2)
	c.lt.s  $f6, $f18
	nop
	bc1f    .L802802F4
	nop
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f4, %lo(_camera_bss+0xCC)($at)
	lwc1    $f8, 0x0028($sp)
	add.s   $f10, $f4, $f8
	c.lt.s  $f10, $f6
	nop
	bc1t    .L80280340
	nop
.L802802F4:
	lui     $at, %hi(_camera_bss+0xDC)
	lwc1    $f16, %lo(_camera_bss+0xDC)($at)
	lui     $at, %hi(camera_80337154)
	lwc1    $f18, %lo(camera_80337154)($at)
	c.eq.s  $f16, $f18
	nop
	bc1t    .L8028034C
	nop
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f4, $f16
	nop
	bc1f    .L8028034C
	nop
	lw      $t3, 0x0048($sp)
	lwc1    $f8, 0x0014($t3)
	c.lt.s  $f4, $f8
	nop
	bc1f    .L8028034C
	nop
.L80280340:
	lwc1    $f10, 0x0024($sp)
	lw      $t4, 0x0048($sp)
	swc1    $f10, 0x0014($t4)
.L8028034C:
	b       .L80280354
	nop
.L80280354:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_80280368:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	li      $t6, 0x05B0
	sh      $t6, 0x003E($sp)
	lhu     $t7, 0x004A($sp)
	lui     $at, %hi(math_sin)
	lui     $t0, %hi(camera_8032DF60)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42200000
	mtc1    $at, $f6
	lw      $t0, %lo(camera_8032DF60)($t0)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x0004($t0)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0038($sp)
	lhu     $t1, 0x004A($sp)
	lui     $at, %hi(math_cos)
	lui     $t4, %hi(camera_8032DF60)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x42200000
	mtc1    $at, $f4
	lw      $t4, %lo(camera_8032DF60)($t4)
	mul.s   $f6, $f18, $f4
	lwc1    $f8, 0x000C($t4)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0034($sp)
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	lwc1    $f12, 0x0038($sp)
	lw      $a2, 0x0034($sp)
	addiu   $a3, $sp, 0x0044
	jal     map_80381900
	lwc1    $f14, 0x0008($t5)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	mov.s   $f20, $f0
	lwc1    $f16, 0x0008($t6)
	sub.s   $f18, $f20, $f16
	swc1    $f18, 0x0040($sp)
	lw      $t7, 0x0044($sp)
	beqz    $t7, .L802804D0
	nop
	lw      $t8, 0x0044($sp)
	li      $at, 0x0028
	lh      $t9, 0x0000($t8)
	beq     $t9, $at, .L802804D0
	nop
	lwc1    $f4, 0x0040($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802804D0
	nop
	lw      $t0, 0x0044($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0024($t0)
	c.eq.s  $f8, $f10
	nop
	bc1f    .L802804A8
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f16, 0x0040($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802804A8
	nop
	li      $t1, 0x05B0
	b       .L802804D0
	sh      $t1, 0x003E($sp)
.L802804A8:
	li      $at, 0x42200000
	mtc1    $at, $f12
	jal     atan2
	lwc1    $f14, 0x0040($sp)
	lh      $t3, 0x003E($sp)
	sll     $s0, $v0, 16
	sra     $t2, $s0, 16
	move    $s0, $t2
	addu    $t4, $t3, $s0
	sh      $t4, 0x003E($sp)
.L802804D0:
	b       .L802804E0
	lh      $v0, 0x003E($sp)
	b       .L802804E0
	nop
.L802804E0:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

camera_802804F4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	la.u    $t7, camera_8032DFF0
	la.l    $t7, camera_8032DFF0
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0024
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0038($sp)
	addiu   $t0, $sp, 0x0030
	sw      $t0, 0x0010($sp)
	addiu   $a2, $sp, 0x0034
	addiu   $a3, $sp, 0x0032
	addiu   $a1, $a1, 0x0004
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0010
	la.u    $t1, math_sin
	la.l    $t1, math_sin
	lwc1    $f4, 0x0300($t1)
	lwc1    $f6, 0x0034($sp)
	addiu   $t2, $sp, 0x0024
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t2)
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	addiu   $t3, $sp, 0x0024
	move    $a0, $t3
	move    $a1, $t3
	jal     camera_8028AD4C
	lh      $a2, 0x0012($t4)
	lh      $t5, 0x0030($sp)
	subu    $t8, $0, $t5
	sh      $t8, 0x0030($sp)
	addiu   $t6, $sp, 0x0024
	move    $a0, $t6
	move    $a1, $t6
	jal     camera_8028AD4C
	lh      $a2, 0x0030($sp)
	mtc1    $0, $f10
	addiu   $t7, $sp, 0x0024
	swc1    $f10, 0x0008($t7)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	li.u    $at, 0x03000888
	li.l    $at, 0x03000888
	lw      $t0, 0x0000($t9)
	beq     $t0, $at, .L802805EC
	nop
	li.u    $at, 0x00100345
	li.l    $at, 0x00100345
	beq     $t0, $at, .L802805FC
	nop
	li      $at, 0x00100000
	and     $t1, $t0, $at
	beqz    $t1, .L802805FC
	nop
.L802805EC:
	addiu   $t2, $sp, 0x0024
	lwc1    $f16, 0x0000($t2)
	neg.s   $f18, $f16
	swc1    $f18, 0x0000($t2)
.L802805FC:
	lui     $t3, %hi(_camera_bss+0x32A)
	lh      $t3, %lo(_camera_bss+0x32A)($t3)
	andi    $t4, $t3, 0x0040
	beqz    $t4, .L80280630
	nop
	la.u    $a0, _camera_bss+0x25C
	li.u    $a2, 0x3CCCCCCD
	li.l    $a2, 0x3CCCCCCD
	la.l    $a0, _camera_bss+0x25C
	jal     camera_802893F4
	li      $a1, 0x0000
	b       .L8028064C
	nop
.L80280630:
	la.u    $a0, _camera_bss+0x25C
	addiu   $t5, $sp, 0x0024
	li.u    $a2, 0x3CCCCCCD
	li.l    $a2, 0x3CCCCCCD
	lw      $a1, 0x0000($t5)
	jal     camera_802893F4
	la.l    $a0, _camera_bss+0x25C
.L8028064C:
	lui     $at, %hi(_camera_bss+0x25C)
	lwc1    $f4, %lo(_camera_bss+0x25C)($at)
	addiu   $t8, $sp, 0x0024
	swc1    $f4, 0x0000($t8)
	lh      $t6, 0x0030($sp)
	subu    $t7, $0, $t6
	sh      $t7, 0x0030($sp)
	addiu   $t9, $sp, 0x0024
	move    $a0, $t9
	move    $a1, $t9
	jal     camera_8028AD4C
	lh      $a2, 0x0030($sp)
	lw      $a0, 0x0038($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_add
	addiu   $a0, $a0, 0x0004
	b       .L80280694
	nop
.L80280694:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_802806A4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0201 # 0x0091
	beq     $s0, $at, .L8028073C
	nop
	li      $at, 0x00B1
	beq     $s0, $at, .L802806FC
	nop
	li      $at, 0x00D1
	beq     $s0, $at, .L80280774
	nop
	li      $at, 0x00D2
	beq     $s0, $at, .L802807AC
	nop
	b       .L802807EC
	nop
.L802806FC:
	lui     $at, %hi(camera_80337158)
	lwc1    $f4, %lo(camera_80337158)($at)
	lui     $at, %hi(camera_8033715C)
	lwc1    $f6, %lo(camera_8033715C)($at)
	li.u    $a2, 0x458CE000
	li.u    $a3, 0xC569B000
	li.l    $a3, 0xC569B000
	li.l    $a2, 0x458CE000
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	swc1    $f4, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f6, 0x0014($sp)
	sh      $v0, 0x003A($sp)
	b       .L802807EC
	nop
.L8028073C:
	lui     $at, %hi(camera_80337160)
	lwc1    $f8, %lo(camera_80337160)($at)
	li      $at, 0xC5FA0000
	mtc1    $at, $f10
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	li      $a2, 0x45FA0000
	li      $a3, 0xC5FA0000
	swc1    $f8, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f10, 0x0014($sp)
	sh      $v0, 0x003A($sp)
	b       .L802807EC
	nop
.L80280774:
	li      $at, 0x46000000
	mtc1    $at, $f16
	li      $at, 0xC6000000
	mtc1    $at, $f18
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	li      $a2, 0x46000000
	li      $a3, 0xC6000000
	swc1    $f16, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f18, 0x0014($sp)
	sh      $v0, 0x003A($sp)
	b       .L802807EC
	nop
.L802807AC:
	lui     $at, %hi(camera_80337164)
	lwc1    $f4, %lo(camera_80337164)($at)
	lui     $at, %hi(camera_80337168)
	lwc1    $f6, %lo(camera_80337168)($at)
	li.u    $a2, 0x4519A000
	li.u    $a3, 0xC519A000
	li.l    $a3, 0xC519A000
	li.l    $a2, 0x4519A000
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	swc1    $f4, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f6, 0x0014($sp)
	sh      $v0, 0x003A($sp)
	b       .L802807EC
	nop
.L802807EC:
	b       .L802807FC
	lh      $v0, 0x003A($sp)
	b       .L802807FC
	nop
.L802807FC:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* int camera_80280810(struct camera *cam, VECF, VECF) */
.globl camera_80280810
camera_80280810:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lw      $t7, 0x0050($sp)
	lwc1    $f4, 0x0004($t6)
	lwc1    $f6, 0x0028($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($sp)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lw      $t9, 0x0050($sp)
	lwc1    $f10, 0x000C($t8)
	lwc1    $f16, 0x002C($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0048($sp)
	lwc1    $f12, 0x0048($sp)
	jal     atan2
	lwc1    $f14, 0x004C($sp)
	lui     $t0, %hi(_camera_bss+0x252)
	lh      $t0, %lo(_camera_bss+0x252)($t0)
	addu    $t1, $v0, $t0
	sh      $t1, 0x0046($sp)
	jal     camera_80280368
	lh      $a0, 0x0046($sp)
	sh      $v0, 0x0044($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x002C($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0028($sp)
	lui     $t3, %hi(_camera_bss+0x252)
	lh      $t3, %lo(_camera_bss+0x252)($t3)
	lh      $t2, 0x0046($sp)
	lui     $at, %hi(_camera_bss+0x23A)
	subu    $t4, $t2, $t3
	sh      $t4, %lo(_camera_bss+0x23A)($at)
	lui     $at, %hi(camera_8033716C)
	lwc1    $f8, %lo(camera_8033716C)($at)
	li      $at, 0x43480000
	mtc1    $at, $f10
	addiu   $a0, $sp, 0x003C
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	addiu   $a3, $sp, 0x0038
	swc1    $f8, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f10, 0x0014($sp)
	lui     $t5, %hi(_camera_bss+0x23E)
	lh      $t5, %lo(_camera_bss+0x23E)($t5)
	lwc1    $f16, 0x003C($sp)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t5, $f10
	lwc1    $f6, 0x0038($sp)
	add.s   $f4, $f16, $f18
	lh      $t6, 0x0044($sp)
	lh      $t7, 0x0046($sp)
	cvt.s.w $f16, $f10
	mfc1    $a2, $f4
	lwc1    $f4, 0x0028($sp)
	lw      $a0, 0x0054($sp)
	lw      $a1, 0x0058($sp)
	add.s   $f8, $f6, $f18
	sw      $t6, 0x0014($sp)
	sw      $t7, 0x0018($sp)
	add.s   $f6, $f16, $f4
	mfc1    $a3, $f8
	jal     camera_8027FE20
	swc1    $f6, 0x0010($sp)
	lw      $a0, 0x0058($sp)
	lw      $a1, 0x0054($sp)
	jal     camera_802806A4
	lh      $a2, 0x0046($sp)
	sh      $v0, 0x0046($sp)
	b       .L80280960
	lh      $v0, 0x0046($sp)
	b       .L80280960
	nop
.L80280960:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

/* int camera_80280970(struct camera *cam, VECF, VECF) */
.globl camera_80280970
camera_80280970:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lw      $t7, 0x0050($sp)
	lwc1    $f4, 0x0004($t6)
	lwc1    $f6, 0x0028($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($sp)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lw      $t9, 0x0050($sp)
	lwc1    $f10, 0x000C($t8)
	lwc1    $f16, 0x002C($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0048($sp)
	lui     $t0, %hi(_camera_bss+0x256)
	lui     $t1, %hi(_camera_bss+0x258)
	lh      $t1, %lo(_camera_bss+0x258)($t1)
	lh      $t0, %lo(_camera_bss+0x256)($t0)
	addu    $t2, $t0, $t1
	sh      $t2, 0x0046($sp)
	jal     camera_80280368
	lh      $a0, 0x0046($sp)
	sh      $v0, 0x0044($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x002C($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0028($sp)
	lh      $t3, 0x0046($sp)
	lui     $at, %hi(_camera_bss+0x23A)
	sh      $t3, %lo(_camera_bss+0x23A)($at)
	lui     $at, %hi(camera_80337170)
	lwc1    $f8, %lo(camera_80337170)($at)
	li      $at, 0x43480000
	mtc1    $at, $f10
	addiu   $a0, $sp, 0x0040
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	addiu   $a3, $sp, 0x003C
	swc1    $f8, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f10, 0x0014($sp)
	lui     $t4, %hi(_camera_bss+0x23E)
	lh      $t4, %lo(_camera_bss+0x23E)($t4)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t4, $f10
	lwc1    $f6, 0x003C($sp)
	add.s   $f4, $f16, $f18
	lh      $t5, 0x0044($sp)
	lh      $t6, 0x0046($sp)
	cvt.s.w $f16, $f10
	mfc1    $a2, $f4
	lwc1    $f4, 0x0028($sp)
	lw      $a0, 0x0054($sp)
	lw      $a1, 0x0058($sp)
	add.s   $f8, $f6, $f18
	sw      $t5, 0x0014($sp)
	sw      $t6, 0x0018($sp)
	add.s   $f6, $f16, $f4
	mfc1    $a3, $f8
	jal     camera_8027FE20
	swc1    $f6, 0x0010($sp)
	jal     camera_802804F4
	lw      $a0, 0x0050($sp)
	lui     $t7, %hi(camera_stagescene)
	lw      $t7, %lo(camera_stagescene)($t7)
	li      $at, 0x0172
	bne     $t7, $at, .L80280AE0
	nop
	lui     $at, %hi(camera_80337174)
	lwc1    $f18, %lo(camera_80337174)($at)
	lui     $at, %hi(camera_80337178)
	lwc1    $f8, %lo(camera_80337178)($at)
	li.u    $a2, 0x45D5B800
	li.u    $a3, 0x4478C000
	li.l    $a3, 0x4478C000
	li.l    $a2, 0x45D5B800
	lw      $a0, 0x0058($sp)
	lw      $a1, 0x0054($sp)
	swc1    $f18, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f8, 0x0014($sp)
	sh      $v0, 0x0046($sp)
.L80280AE0:
	b       .L80280AF0
	lh      $v0, 0x0046($sp)
	b       .L80280AF0
	nop
.L80280AF0:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

camera_80280B00:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x2AAA
	sh      $t6, 0x0046($sp)
	li      $t7, -0x2AAA
	sh      $t7, 0x0044($sp)
	li      $t8, 0x1000
	sh      $t8, 0x0042($sp)
	sh      $0, 0x003A($sp)
	sw      $0, 0x0034($sp)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	lw      $t0, 0x0048($sp)
	lwc1    $f4, 0x0004($t9)
	lwc1    $f6, 0x0028($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lui     $t1, %hi(camera_8032DF60)
	lw      $t1, %lo(camera_8032DF60)($t1)
	lw      $t2, 0x0048($sp)
	lwc1    $f10, 0x000C($t1)
	lwc1    $f16, 0x002C($t2)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0048($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	sll     $s0, $v0, 16
	sra     $t3, $s0, 16
	move    $s0, $t3
	lwc1    $f12, 0x002C($sp)
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	subu    $t4, $s0, $v0
	sh      $t4, 0x0026($sp)
	lh      $t5, 0x0026($sp)
	lh      $t6, 0x0046($sp)
	slt     $at, $t6, $t5
	beqz    $at, .L80280BBC
	nop
	lh      $t7, 0x0046($sp)
	sh      $t7, 0x0026($sp)
.L80280BBC:
	lh      $t8, 0x0026($sp)
	lh      $t9, 0x0044($sp)
	slt     $at, $t8, $t9
	beqz    $at, .L80280BD8
	nop
	lh      $t0, 0x0044($sp)
	sh      $t0, 0x0026($sp)
.L80280BD8:
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	andi    $t2, $t1, 0x000D
	bnez    $t2, .L80280CA0
	nop
	lui     $t3, %hi(_camera_bss+0xD0)
	lh      $t3, %lo(_camera_bss+0xD0)($t3)
	li      $at, 0x006E
	bne     $t3, $at, .L80280C28
	nop
	lui     $t4, %hi(_camera_bss+0xE8)
	lh      $t4, %lo(_camera_bss+0xE8)($t4)
	li      $at, 0x006E
	beq     $t4, $at, .L80280C28
	nop
	lui     $t5, %hi(_camera_bss+0x328)
	lh      $t5, %lo(_camera_bss+0x328)($t5)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t6, $t5, 0x0011
	sh      $t6, %lo(_camera_bss+0x328)($at)
.L80280C28:
	lui     $t7, %hi(_camera_bss+0xD0)
	lh      $t7, %lo(_camera_bss+0xD0)($t7)
	li      $at, 0x006F
	bne     $t7, $at, .L80280C64
	nop
	lui     $t8, %hi(_camera_bss+0xE8)
	lh      $t8, %lo(_camera_bss+0xE8)($t8)
	li      $at, 0x006F
	beq     $t8, $at, .L80280C64
	nop
	lui     $t9, %hi(_camera_bss+0x328)
	lh      $t9, %lo(_camera_bss+0x328)($t9)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t0, $t9, 0x0014
	sh      $t0, %lo(_camera_bss+0x328)($at)
.L80280C64:
	lui     $t1, %hi(_camera_bss+0xD0)
	lh      $t1, %lo(_camera_bss+0xD0)($t1)
	li      $at, 0x0070
	bne     $t1, $at, .L80280CA0
	nop
	lui     $t2, %hi(_camera_bss+0xE8)
	lh      $t2, %lo(_camera_bss+0xE8)($t2)
	li      $at, 0x0070
	beq     $t2, $at, .L80280CA0
	nop
	lui     $t3, %hi(_camera_bss+0x328)
	lh      $t3, %lo(_camera_bss+0x328)($t3)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t4, $t3, 0x0018
	sh      $t4, %lo(_camera_bss+0x328)($at)
.L80280CA0:
	lui     $t5, %hi(_camera_bss+0x328)
	lh      $t5, %lo(_camera_bss+0x328)($t5)
	andi    $t6, $t5, 0x0010
	beqz    $t6, .L80280CBC
	nop
	li      $t7, 0x0200
	sh      $t7, 0x0042($sp)
.L80280CBC:
	lw      $t8, 0x0048($sp)
	li      $at, 0x0002
	lbu     $t9, 0x0000($t8)
	bne     $t9, $at, .L80280CE8
	nop
	lwc1    $f4, 0x0030($sp)
	neg.s   $f6, $f4
	swc1    $f6, 0x0030($sp)
	lwc1    $f8, 0x002C($sp)
	neg.s   $f10, $f8
	swc1    $f10, 0x002C($sp)
.L80280CE8:
	lw      $t0, 0x0048($sp)
	addiu   $a2, $sp, 0x0040
	li      $a3, 0x0400
	move    $a0, $t0
	jal     camera_8028F914
	addiu   $a1, $t0, 0x0010
	sw      $v0, 0x003C($sp)
	lw      $t1, 0x003C($sp)
	li      $at, 0x0003
	bne     $t1, $at, .L80280D98
	nop
	lwc1    $f12, 0x002C($sp)
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	lh      $t2, 0x0040($sp)
	subu    $t3, $t2, $v0
	addiu   $t4, $t3, 0x4000
	bgez    $t4, .L80280D44
	nop
	lh      $t5, 0x0040($sp)
	li      $at, 0x8000
	addu    $t6, $t5, $at
	sh      $t6, 0x0040($sp)
.L80280D44:
	lwc1    $f12, 0x002C($sp)
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	lh      $t8, 0x0040($sp)
	sll     $s0, $v0, 16
	sra     $t7, $s0, 16
	move    $s0, $t7
	subu    $t9, $t8, $s0
	sh      $t9, 0x0040($sp)
	lh      $t0, 0x0040($sp)
	slti    $at, $t0, 0x4AAB
	bnez    $at, .L80280D80
	nop
	li      $t1, 0x4AAA
	sh      $t1, 0x0040($sp)
.L80280D80:
	lh      $t2, 0x0040($sp)
	slti    $at, $t2, -0x4AAA
	beqz    $at, .L80280D98
	nop
	li      $t3, -0x4AAA
	sh      $t3, 0x0040($sp)
.L80280D98:
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	andi    $t5, $t4, 0x0001
	beqz    $t5, .L80280DE8
	nop
	la.u    $a0, _camera_bss+0x252
	la.l    $a0, _camera_bss+0x252
	move    $a1, $0
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
	bnez    $v0, .L80280DE0
	nop
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	li      $at, -0x0002
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t7, %lo(_camera_bss+0x328)($at)
.L80280DE0:
	b       .L80281050
	nop
.L80280DE8:
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L80280E4C
	nop
	lw      $t0, 0x003C($sp)
	li      $at, 0x0003
	bne     $t0, $at, .L80280E4C
	nop
	lh      $t2, 0x0040($sp)
	lui     $t1, %hi(_camera_bss+0x252)
	lh      $t1, %lo(_camera_bss+0x252)($t1)
	addiu   $t3, $t2, 0x0010
	slt     $at, $t3, $t1
	beqz    $at, .L80280E4C
	nop
	lh      $t4, 0x0040($sp)
	lui     $at, %hi(_camera_bss+0x252)
	sh      $t4, %lo(_camera_bss+0x252)($at)
	lui     $t5, %hi(_camera_bss+0x328)
	lh      $t5, %lo(_camera_bss+0x328)($t5)
	li      $at, -0x0015
	and     $t6, $t5, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t6, %lo(_camera_bss+0x328)($at)
.L80280E4C:
	lui     $t7, %hi(_camera_bss+0x328)
	lh      $t7, %lo(_camera_bss+0x328)($t7)
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L80280EB0
	nop
	lw      $t9, 0x003C($sp)
	li      $at, 0x0003
	bne     $t9, $at, .L80280EB0
	nop
	lh      $t2, 0x0040($sp)
	lui     $t0, %hi(_camera_bss+0x252)
	lh      $t0, %lo(_camera_bss+0x252)($t0)
	addiu   $t1, $t2, -0x0010
	slt     $at, $t0, $t1
	beqz    $at, .L80280EB0
	nop
	lh      $t3, 0x0040($sp)
	lui     $at, %hi(_camera_bss+0x252)
	sh      $t3, %lo(_camera_bss+0x252)($at)
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	li      $at, -0x0019
	and     $t5, $t4, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t5, %lo(_camera_bss+0x328)($at)
.L80280EB0:
	lui     $t6, %hi(_camera_bss+0x168)
	lh      $t6, %lo(_camera_bss+0x168)($t6)
	andi    $t7, $t6, 0x0004
	bnez    $t7, .L80280F0C
	nop
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L80280F0C
	nop
	la.u    $a0, _camera_bss+0x252
	la.l    $a0, _camera_bss+0x252
	lh      $a1, 0x0046($sp)
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
	bnez    $v0, .L80280F0C
	nop
	lui     $t2, %hi(_camera_bss+0x328)
	lh      $t2, %lo(_camera_bss+0x328)($t2)
	li      $at, -0x0015
	and     $t0, $t2, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t0, %lo(_camera_bss+0x328)($at)
.L80280F0C:
	lui     $t1, %hi(_camera_bss+0x168)
	lh      $t1, %lo(_camera_bss+0x168)($t1)
	andi    $t3, $t1, 0x0008
	bnez    $t3, .L80280F68
	nop
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	andi    $t5, $t4, 0x0008
	beqz    $t5, .L80280F68
	nop
	la.u    $a0, _camera_bss+0x252
	la.l    $a0, _camera_bss+0x252
	lh      $a1, 0x0044($sp)
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
	bnez    $v0, .L80280F68
	nop
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	li      $at, -0x0019
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t7, %lo(_camera_bss+0x328)($at)
.L80280F68:
	lui     $t8, %hi(_camera_bss+0x168)
	lh      $t8, %lo(_camera_bss+0x168)($t8)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L80280FDC
	nop
	lui     $t2, %hi(_camera_bss+0x328)
	lh      $t2, %lo(_camera_bss+0x328)($t2)
	andi    $t0, $t2, 0x0004
	beqz    $t0, .L80280FDC
	nop
	la.u    $a0, _camera_bss+0x252
	la.l    $a0, _camera_bss+0x252
	li      $a1, 0x4AAA
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
	bnez    $v0, .L80280FDC
	nop
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	li      $at, -0x0015
	and     $t3, $t1, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t3, %lo(_camera_bss+0x328)($at)
	lui     $t4, %hi(_camera_bss+0x168)
	lh      $t4, %lo(_camera_bss+0x168)($t4)
	li      $at, -0x0005
	and     $t5, $t4, $at
	lui     $at, %hi(_camera_bss+0x168)
	sh      $t5, %lo(_camera_bss+0x168)($at)
.L80280FDC:
	lui     $t6, %hi(_camera_bss+0x168)
	lh      $t6, %lo(_camera_bss+0x168)($t6)
	andi    $t7, $t6, 0x0008
	beqz    $t7, .L80281050
	nop
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80281050
	nop
	la.u    $a0, _camera_bss+0x252
	la.l    $a0, _camera_bss+0x252
	li      $a1, -0x4AAA
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
	bnez    $v0, .L80281050
	nop
	lui     $t2, %hi(_camera_bss+0x328)
	lh      $t2, %lo(_camera_bss+0x328)($t2)
	li      $at, -0x0019
	and     $t0, $t2, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t0, %lo(_camera_bss+0x328)($at)
	lui     $t1, %hi(_camera_bss+0x168)
	lh      $t1, %lo(_camera_bss+0x168)($t1)
	li      $at, -0x0009
	and     $t3, $t1, $at
	lui     $at, %hi(_camera_bss+0x168)
	sh      $t3, %lo(_camera_bss+0x168)($at)
.L80281050:
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	andi    $t5, $t4, 0x000D
	bnez    $t5, .L8028112C
	nop
	lw      $t6, 0x003C($sp)
	li      $at, 0x0003
	bne     $t6, $at, .L80281090
	nop
	la.u    $a0, _camera_bss+0x252
	la.l    $a0, _camera_bss+0x252
	lh      $a1, 0x0040($sp)
	jal     camera_802894B4
	li      $a2, 0x000A
	b       .L8028112C
	nop
.L80281090:
	lw      $t7, 0x0048($sp)
	li      $at, 0x0001
	lbu     $t8, 0x0000($t7)
	bne     $t8, $at, .L802810EC
	nop
	la.u    $t9, player_data
	la.l    $t9, player_data
	li      $at, 0x42000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t9)
	li      $at, 0x43000000
	mtc1    $at, $f6
	div.s   $f4, $f16, $f18
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sh      $t0, 0x0042($sp)
	la.u    $a0, _camera_bss+0x252
	la.l    $a0, _camera_bss+0x252
	lh      $a1, 0x0026($sp)
	jal     camera_8028976C
	lh      $a2, 0x0042($sp)
.L802810EC:
	lw      $t1, 0x0048($sp)
	li      $at, 0x0002
	lbu     $t3, 0x0000($t1)
	bne     $t3, $at, .L8028112C
	nop
	lwc1    $f12, 0x002C($sp)
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	sll     $s0, $v0, 16
	sra     $t4, $s0, 16
	move    $s0, $t4
	move    $a1, $s0
	jal     camera_8028B50C
	lw      $a0, 0x0048($sp)
	lui     $at, %hi(_camera_bss+0x252)
	sh      $v0, %lo(_camera_bss+0x252)($at)
.L8028112C:
	lui     $t5, %hi(_camera_bss+0x252)
	lh      $t5, %lo(_camera_bss+0x252)($t5)
	slti    $at, $t5, 0x5555
	bnez    $at, .L8028114C
	nop
	li      $t6, 0x5554
	lui     $at, %hi(_camera_bss+0x252)
	sh      $t6, %lo(_camera_bss+0x252)($at)
.L8028114C:
	lui     $t7, %hi(_camera_bss+0x252)
	lh      $t7, %lo(_camera_bss+0x252)($t7)
	slti    $at, $t7, -0x5554
	beqz    $at, .L8028116C
	nop
	li      $t8, -0x5554
	lui     $at, %hi(_camera_bss+0x252)
	sh      $t8, %lo(_camera_bss+0x252)($at)
.L8028116C:
	b       .L80281174
	nop
.L80281174:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_80281188:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	lui     $t6, %hi(_camera_bss+0x23E)
	lh      $t6, %lo(_camera_bss+0x23E)($t6)
	bgez    $t6, .L802811D0
	nop
	lui     $t7, %hi(_camera_bss+0x23E)
	lh      $t7, %lo(_camera_bss+0x23E)($t7)
	lui     $at, %hi(_camera_bss+0x23E)
	addiu   $t8, $t7, 0x001E
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	blez    $t0, .L802811C8
	sh      $t8, %lo(_camera_bss+0x23E)($at)
	lui     $at, %hi(_camera_bss+0x23E)
	sh      $0, %lo(_camera_bss+0x23E)($at)
.L802811C8:
	b       .L802812D0
	nop
.L802811D0:
	lui     $t1, %hi(_camera_bss+0x23E)
	lh      $t1, %lo(_camera_bss+0x23E)($t1)
	mtc1    $t1, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f12, $f6
	nop
	bc1f    .L80281244
	nop
	lui     $t2, %hi(_camera_bss+0x23E)
	lh      $t2, %lo(_camera_bss+0x23E)($t2)
	lui     $at, %hi(_camera_bss+0x23E)
	addiu   $t3, $t2, -0x001E
	sll     $t4, $t3, 16
	sra     $t5, $t4, 16
	mtc1    $t5, $f8
	sh      $t3, %lo(_camera_bss+0x23E)($at)
	cvt.s.w $f10, $f8
	c.lt.s  $f10, $f12
	nop
	bc1f    .L8028123C
	nop
	trunc.w.s $f16, $f12
	lui     $at, %hi(_camera_bss+0x23E)
	mfc1    $t7, $f16
	nop
	sh      $t7, %lo(_camera_bss+0x23E)($at)
.L8028123C:
	b       .L802812D0
	nop
.L80281244:
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	andi    $t9, $t8, 0x0002
	beqz    $t9, .L802812A8
	nop
	lui     $t0, %hi(_camera_bss+0x23E)
	lh      $t0, %lo(_camera_bss+0x23E)($t0)
	lui     $at, %hi(_camera_bss+0x23E)
	addiu   $t1, $t0, 0x001E
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	mtc1    $t3, $f18
	sh      $t1, %lo(_camera_bss+0x23E)($at)
	cvt.s.w $f4, $f18
	c.lt.s  $f12, $f4
	nop
	bc1f    .L802812A0
	nop
	trunc.w.s $f6, $f12
	lui     $at, %hi(_camera_bss+0x23E)
	mfc1    $t5, $f6
	nop
	sh      $t5, %lo(_camera_bss+0x23E)($at)
.L802812A0:
	b       .L802812D0
	nop
.L802812A8:
	lui     $t6, %hi(_camera_bss+0x23E)
	lh      $t6, %lo(_camera_bss+0x23E)($t6)
	lui     $at, %hi(_camera_bss+0x23E)
	addiu   $t7, $t6, -0x001E
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	bgez    $t9, .L802812D0
	sh      $t7, %lo(_camera_bss+0x23E)($at)
	lui     $at, %hi(_camera_bss+0x23E)
	sh      $0, %lo(_camera_bss+0x23E)($at)
.L802812D0:
	lui     $t0, %hi(camera_stagescene)
	lw      $t0, %lo(camera_stagescene)($t0)
	li      $at, 0x0082
	bne     $t0, $at, .L80281320
	nop
	lui     $t1, %hi(_camera_bss+0x6B0)
	lw      $t1, %lo(_camera_bss+0x6B0)($t1)
	li      $at, 0x0002
	lbu     $t2, 0x0000($t1)
	bne     $t2, $at, .L80281320
	nop
	bgez    $a1, .L8028130C
	sra     $t3, $a1, 1
	addiu   $at, $a1, 0x0001
	sra     $t3, $at, 1
.L8028130C:
	move    $a1, $t3
	sll     $t4, $a1, 16
	move    $a1, $t4
	sra     $t5, $a1, 16
	move    $a1, $t5
.L80281320:
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	andi    $t7, $t6, 0x0002
	beqz    $t7, .L80281378
	nop
	li      $at, 0x000D
	div     $0, $a1, $at
	lui     $t8, %hi(_camera_bss+0x240)
	lh      $t8, %lo(_camera_bss+0x240)($t8)
	mflo    $t9
	lui     $at, %hi(_camera_bss+0x240)
	addu    $t0, $t8, $t9
	sll     $t1, $t0, 16
	sra     $t2, $t1, 16
	sh      $t0, %lo(_camera_bss+0x240)($at)
	slt     $at, $a1, $t2
	beqz    $at, .L80281370
	nop
	lui     $at, %hi(_camera_bss+0x240)
	sh      $a1, %lo(_camera_bss+0x240)($at)
.L80281370:
	b       .L802813AC
	nop
.L80281378:
	li      $at, 0x000D
	div     $0, $a1, $at
	lui     $t3, %hi(_camera_bss+0x240)
	lh      $t3, %lo(_camera_bss+0x240)($t3)
	mflo    $t4
	lui     $at, %hi(_camera_bss+0x240)
	subu    $t5, $t3, $t4
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	bgez    $t7, .L802813AC
	sh      $t5, %lo(_camera_bss+0x240)($at)
	lui     $at, %hi(_camera_bss+0x240)
	sh      $0, %lo(_camera_bss+0x240)($at)
.L802813AC:
	jr      $ra
	nop
	jr      $ra
	nop

camera_802813BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028B9C4
	li      $a1, 0x0000
	b       .L802813DC
	nop
.L802813DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802813EC:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0004($sp)
	lui     $t6, %hi(_camera_bss+0x28E)
	lui     $t7, %hi(_camera_bss+0x23A)
	lh      $t7, %lo(_camera_bss+0x23A)($t7)
	lh      $t6, %lo(_camera_bss+0x28E)($t6)
	lui     $at, %hi(_camera_bss+0x252)
	subu    $t8, $t6, $t7
	sh      $t8, %lo(_camera_bss+0x252)($at)
	lui     $at, %hi(_camera_bss+0x288)
	lwc1    $f6, %lo(_camera_bss+0x288)($at)
	lwc1    $f8, 0x0004($sp)
	lui     $at, %hi(_camera_bss+0x23E)
	sub.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t0, $f16
	nop
	sh      $t0, %lo(_camera_bss+0x23E)($at)
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	li      $at, -0x0101
	and     $t2, $t1, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t2, %lo(_camera_bss+0x328)($at)
	b       .L80281464
	nop
.L80281464:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028146C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	lui     $t6, %hi(_camera_bss+0x23A)
	lh      $t6, %lo(_camera_bss+0x23A)($t6)
	sh      $t6, 0x0022($sp)
	lui     $t7, %hi(_camera_bss+0x328)
	lh      $t7, %lo(_camera_bss+0x328)($t7)
	andi    $t8, $t7, 0x0100
	beqz    $t8, .L802814A0
	nop
	jal     camera_802813EC
	lw      $a0, 0x0038($sp)
.L802814A0:
	jal     camera_802813BC
	lw      $a0, 0x0038($sp)
	jal     camera_80280B00
	lw      $a0, 0x0038($sp)
	lw      $t9, 0x0038($sp)
	li      $at, 0x0001
	lbu     $t0, 0x0000($t9)
	bne     $t0, $at, .L802814D4
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f12
	jal     camera_80281188
	li      $a1, 0x0900
.L802814D4:
	lw      $t1, 0x0038($sp)
	addiu   $a2, $sp, 0x002C
	move    $a0, $t1
	jal     camera_80280810
	addiu   $a1, $t1, 0x0004
	lw      $t2, 0x0038($sp)
	sh      $v0, 0x003A($t2)
	addiu   $t3, $sp, 0x002C
	lwc1    $f4, 0x0000($t3)
	lw      $t4, 0x0038($sp)
	swc1    $f4, 0x0010($t4)
	addiu   $t5, $sp, 0x002C
	lwc1    $f6, 0x0008($t5)
	lw      $t6, 0x0038($sp)
	swc1    $f6, 0x0018($t6)
	lui     $t7, %hi(_camera_bss+0x23A)
	lh      $t7, %lo(_camera_bss+0x23A)($t7)
	lh      $t8, 0x0022($sp)
	lui     $at, %hi(_camera_bss+0x23C)
	subu    $t9, $t7, $t8
	sh      $t9, %lo(_camera_bss+0x23C)($at)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	li      $at, 0x04A8
	lw      $t1, 0x0000($t0)
	bne     $t1, $at, .L80281558
	nop
	addiu   $t2, $sp, 0x002C
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($t2)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t2)
.L80281558:
	addiu   $t3, $sp, 0x002C
	lw      $a1, 0x0004($t3)
	jal     camera_8027FFF8
	lw      $a0, 0x0038($sp)
	jal     camera_802804F4
	lw      $a0, 0x0038($sp)
	b       .L80281578
	nop
.L80281578:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_80281588:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(_camera_bss+0x23A)
	lh      $t6, %lo(_camera_bss+0x23A)($t6)
	sh      $t6, 0x001A($sp)
	lw      $a0, 0x0030($sp)
	jal     camera_8028B9C4
	li      $a1, 0x0000
	lui     $t7, %hi(cont_1)
	lw      $t7, %lo(cont_1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L802815E0
	nop
	lui     $t0, %hi(_camera_bss+0x258)
	lh      $t0, %lo(_camera_bss+0x258)($t0)
	lui     $at, %hi(_camera_bss+0x258)
	addiu   $t1, $t0, 0x2000
	sh      $t1, %lo(_camera_bss+0x258)($at)
	jal     camera_8028B8B8
	nop
.L802815E0:
	lui     $t2, %hi(cont_1)
	lw      $t2, %lo(cont_1)($t2)
	lhu     $t3, 0x0012($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, .L80281614
	nop
	lui     $t5, %hi(_camera_bss+0x258)
	lh      $t5, %lo(_camera_bss+0x258)($t5)
	lui     $at, %hi(_camera_bss+0x258)
	addiu   $t6, $t5, -0x2000
	sh      $t6, %lo(_camera_bss+0x258)($at)
	jal     camera_8028B8B8
	nop
.L80281614:
	li      $at, 0x43C80000
	mtc1    $at, $f12
	jal     camera_80281188
	li      $a1, 0x0900
	lw      $t7, 0x0030($sp)
	addiu   $a2, $sp, 0x0024
	move    $a0, $t7
	jal     camera_80280970
	addiu   $a1, $t7, 0x0004
	lw      $t8, 0x0030($sp)
	sh      $v0, 0x003A($t8)
	addiu   $t9, $sp, 0x0024
	lwc1    $f4, 0x0000($t9)
	lw      $t0, 0x0030($sp)
	swc1    $f4, 0x0010($t0)
	addiu   $t1, $sp, 0x0024
	lwc1    $f6, 0x0008($t1)
	lw      $t2, 0x0030($sp)
	swc1    $f6, 0x0018($t2)
	lui     $t3, %hi(_camera_bss+0x23A)
	lh      $t3, %lo(_camera_bss+0x23A)($t3)
	lh      $t4, 0x001A($sp)
	lui     $at, %hi(_camera_bss+0x23C)
	subu    $t5, $t3, $t4
	sh      $t5, %lo(_camera_bss+0x23C)($at)
	addiu   $t6, $sp, 0x0024
	lw      $a1, 0x0004($t6)
	jal     camera_8027FFF8
	lw      $a0, 0x0030($sp)
	b       .L80281690
	nop
.L80281690:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* int camera_802816A0(struct camera *cam, VECF, VECF) */
.globl camera_802816A0
camera_802816A0:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lw      $t7, 0x0048($sp)
	lwc1    $f4, 0x0004($t6)
	lwc1    $f6, 0x0028($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0044($sp)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lw      $t9, 0x0048($sp)
	lwc1    $f10, 0x000C($t8)
	lwc1    $f16, 0x002C($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0040($sp)
	lwc1    $f12, 0x0040($sp)
	jal     atan2
	lwc1    $f14, 0x0044($sp)
	lui     $t0, %hi(_camera_bss+0x252)
	lh      $t0, %lo(_camera_bss+0x252)($t0)
	li      $at, 0x8000
	addu    $t1, $v0, $t0
	addu    $t2, $t1, $at
	sh      $t2, 0x003E($sp)
	jal     camera_80280368
	lh      $a0, 0x003E($sp)
	sh      $v0, 0x003C($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0038($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0034($sp)
	lui     $t4, %hi(_camera_bss+0x252)
	lh      $t4, %lo(_camera_bss+0x252)($t4)
	lh      $t3, 0x003E($sp)
	li      $at, -0x8000
	subu    $t5, $t3, $t4
	addu    $t6, $t5, $at
	lui     $at, %hi(_camera_bss+0x23A)
	sh      $t6, %lo(_camera_bss+0x23A)($at)
	lui     $at, %hi(camera_8033717C)
	lwc1    $f8, %lo(camera_8033717C)($at)
	li      $at, 0x43480000
	mtc1    $at, $f10
	addiu   $a0, $sp, 0x0030
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	addiu   $a3, $sp, 0x002C
	swc1    $f8, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f10, 0x0014($sp)
	lui     $t7, %hi(_camera_bss+0x23E)
	lh      $t7, %lo(_camera_bss+0x23E)($t7)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f18, 0x0034($sp)
	mtc1    $t7, $f10
	lwc1    $f6, 0x002C($sp)
	add.s   $f4, $f16, $f18
	lh      $t8, 0x003C($sp)
	lh      $t9, 0x003E($sp)
	cvt.s.w $f16, $f10
	mfc1    $a2, $f4
	lwc1    $f4, 0x0038($sp)
	lw      $a0, 0x004C($sp)
	lw      $a1, 0x0050($sp)
	add.s   $f8, $f6, $f18
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	add.s   $f6, $f16, $f4
	mfc1    $a3, $f8
	jal     camera_8027FE20
	swc1    $f6, 0x0010($sp)
	b       .L802817EC
	lh      $v0, 0x003E($sp)
	b       .L802817EC
	nop
.L802817EC:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_802817FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(_camera_bss+0x23A)
	lh      $t6, %lo(_camera_bss+0x23A)($t6)
	sh      $t6, 0x001A($sp)
	lui     $t7, %hi(_camera_bss+0x328)
	lh      $t7, %lo(_camera_bss+0x328)($t7)
	andi    $t8, $t7, 0x0100
	beqz    $t8, .L80281830
	nop
	jal     camera_802813EC
	lw      $a0, 0x0028($sp)
.L80281830:
	jal     camera_802813BC
	lw      $a0, 0x0028($sp)
	jal     camera_80280B00
	lw      $a0, 0x0028($sp)
	li      $at, 0x43C80000
	mtc1    $at, $f12
	jal     camera_80281188
	li      $a1, 0x0900
	lw      $t9, 0x0028($sp)
	addiu   $a2, $sp, 0x001C
	move    $a0, $t9
	jal     camera_802816A0
	addiu   $a1, $t9, 0x0004
	lw      $t0, 0x0028($sp)
	sh      $v0, 0x003A($t0)
	addiu   $t1, $sp, 0x001C
	lwc1    $f4, 0x0000($t1)
	lw      $t2, 0x0028($sp)
	swc1    $f4, 0x0010($t2)
	addiu   $t3, $sp, 0x001C
	lwc1    $f6, 0x0008($t3)
	lw      $t4, 0x0028($sp)
	swc1    $f6, 0x0018($t4)
	lui     $t5, %hi(_camera_bss+0x23A)
	lh      $t5, %lo(_camera_bss+0x23A)($t5)
	lh      $t6, 0x001A($sp)
	lui     $at, %hi(_camera_bss+0x23C)
	subu    $t7, $t5, $t6
	sh      $t7, %lo(_camera_bss+0x23C)($at)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	li      $at, 0x04A8
	lw      $t9, 0x0000($t8)
	bne     $t9, $at, .L802818D4
	nop
	addiu   $t0, $sp, 0x001C
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($t0)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t0)
.L802818D4:
	addiu   $t1, $sp, 0x001C
	lw      $a1, 0x0004($t1)
	jal     camera_8027FFF8
	lw      $a0, 0x0028($sp)
	jal     camera_802804F4
	lw      $a0, 0x0028($sp)
	b       .L802818F4
	nop
.L802818F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int camera_80281904(struct camera *cam, VECF, VECF) */
.globl camera_80281904
camera_80281904:
	addiu   $sp, $sp, -0x0100
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0100($sp)
	sw      $a1, 0x0104($sp)
	sw      $a2, 0x0108($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x008C($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0088($sp)
	mtc1    $0, $f8
	addiu   $t6, $sp, 0x0060
	swc1    $f8, 0x0000($t6)
	mtc1    $0, $f10
	addiu   $t7, $sp, 0x0060
	swc1    $f10, 0x0004($t7)
	mtc1    $0, $f16
	addiu   $t8, $sp, 0x0060
	swc1    $f16, 0x0008($t8)
	addiu   $a0, $sp, 0x004C
	jal     vecf_cpy
	lw      $a1, 0x0108($sp)
	lui     $t0, %hi(_camera_bss+0x2BC)
	lw      $t0, %lo(_camera_bss+0x2BC)($t0)
	lui     $t9, %hi(_camera_bss+0x2C0)
	lw      $t9, %lo(_camera_bss+0x2C0)($t9)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $a1, $t9, $t1
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $sp, 0x00E8
	lui     $t3, %hi(_camera_bss+0x2BC)
	lw      $t3, %lo(_camera_bss+0x2BC)($t3)
	lui     $t2, %hi(_camera_bss+0x2C0)
	lw      $t2, %lo(_camera_bss+0x2C0)($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addiu   $a0, $sp, 0x00E8
	addu    $a1, $t2, $t4
	addiu   $a1, $a1, 0x001C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x000C
	lui     $t6, %hi(_camera_bss+0x2BC)
	lw      $t6, %lo(_camera_bss+0x2BC)($t6)
	lui     $t5, %hi(_camera_bss+0x2C0)
	lw      $t5, %lo(_camera_bss+0x2C0)($t5)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	addu    $t8, $t5, $t7
	lwc1    $f18, 0x0010($t8)
	swc1    $f18, 0x00AC($sp)
	lui     $t9, %hi(_camera_bss+0x2BC)
	lw      $t9, %lo(_camera_bss+0x2BC)($t9)
	lui     $t0, %hi(_camera_bss+0x2C0)
	lw      $t0, %lo(_camera_bss+0x2C0)($t0)
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 3
	addu    $t3, $t0, $t1
	lwc1    $f4, 0x0014($t3)
	swc1    $f4, 0x00A8($sp)
	lui     $at, %hi(camera_80337180)
	lwc1    $f6, %lo(camera_80337180)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	addiu   $t2, $sp, 0x0084
	move    $a0, $t2
	move    $a3, $t2
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	swc1    $f6, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f8, 0x0014($sp)
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	addiu   $t6, $sp, 0x0078
	lwc1    $f10, 0x0004($t4)
	swc1    $f10, 0x0000($t6)
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	li      $at, 0x43160000
	mtc1    $at, $f18
	lwc1    $f16, 0x0008($t5)
	lwc1    $f6, 0x0084($sp)
	addiu   $t7, $sp, 0x0078
	add.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($t7)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	addiu   $t9, $sp, 0x0078
	lwc1    $f10, 0x000C($t8)
	swc1    $f10, 0x0008($t9)
	addiu   $t0, $sp, 0x00E8
	lwc1    $f16, 0x000C($t0)
	lwc1    $f18, 0x0000($t0)
	lwc1    $f6, 0x0088($sp)
	addiu   $t1, $sp, 0x00DC
	sub.s   $f4, $f16, $f18
	mul.s   $f8, $f4, $f6
	add.s   $f10, $f8, $f18
	swc1    $f10, 0x0000($t1)
	addiu   $t3, $sp, 0x00E8
	lwc1    $f16, 0x0010($t3)
	lwc1    $f4, 0x0004($t3)
	lwc1    $f8, 0x0088($sp)
	addiu   $t2, $sp, 0x00DC
	sub.s   $f6, $f16, $f4
	mul.s   $f18, $f6, $f8
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0004($t2)
	addiu   $t4, $sp, 0x00E8
	lwc1    $f16, 0x0014($t4)
	lwc1    $f6, 0x0008($t4)
	lwc1    $f18, 0x0088($sp)
	addiu   $t6, $sp, 0x00DC
	sub.s   $f8, $f16, $f6
	mul.s   $f4, $f8, $f18
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0008($t6)
	addiu   $t5, $sp, 0x00E8
	addiu   $t7, $sp, 0x00B4
	sw      $t7, 0x0010($sp)
	move    $a0, $t5
	addiu   $a1, $t5, 0x000C
	addiu   $a2, $sp, 0x0098
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x00B6
	addiu   $t8, $sp, 0x0078
	addiu   $t9, $sp, 0x00DC
	lwc1    $f8, 0x0000($t9)
	lwc1    $f16, 0x0000($t8)
	addiu   $t0, $sp, 0x00D0
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x0000($t0)
	addiu   $t1, $sp, 0x0078
	addiu   $t3, $sp, 0x00DC
	lwc1    $f6, 0x0004($t3)
	lwc1    $f4, 0x0004($t1)
	addiu   $t2, $sp, 0x00D0
	sub.s   $f10, $f4, $f6
	swc1    $f10, 0x0004($t2)
	addiu   $t4, $sp, 0x0078
	addiu   $t6, $sp, 0x00DC
	lwc1    $f8, 0x0008($t6)
	lwc1    $f16, 0x0008($t4)
	addiu   $t5, $sp, 0x00D0
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x0008($t5)
	lh      $t7, 0x00B4($sp)
	subu    $t8, $0, $t7
	sh      $t8, 0x00B4($sp)
	addiu   $t9, $sp, 0x00D0
	move    $a0, $t9
	move    $a1, $t9
	jal     camera_8028AD4C
	lh      $a2, 0x00B4($sp)
	lh      $t0, 0x00B4($sp)
	subu    $t1, $0, $t0
	sh      $t1, 0x00B4($sp)
	lh      $t3, 0x00B6($sp)
	subu    $t2, $0, $t3
	sh      $t2, 0x00B6($sp)
	addiu   $t4, $sp, 0x00D0
	move    $a0, $t4
	move    $a1, $t4
	jal     camera_8028AE1C
	lh      $a2, 0x00B6($sp)
	lh      $t6, 0x00B6($sp)
	subu    $t5, $0, $t6
	sh      $t5, 0x00B6($sp)
	addiu   $a0, $sp, 0x00B8
	jal     vecf_cpy
	addiu   $a1, $sp, 0x00D0
	addiu   $t7, $sp, 0x00B8
	lwc1    $f4, 0x0000($t7)
	mtc1    $0, $f10
	neg.s   $f6, $f4
	mul.s   $f16, $f6, $f10
	swc1    $f16, 0x0000($t7)
	addiu   $t8, $sp, 0x00B8
	lwc1    $f8, 0x0004($t8)
	mtc1    $0, $f18
	nop
	mul.s   $f4, $f8, $f18
	swc1    $f4, 0x0004($t8)
	lw      $t9, 0x0108($sp)
	addiu   $t0, $sp, 0x00DC
	lwc1    $f10, 0x0000($t0)
	lwc1    $f6, 0x0000($t9)
	addiu   $t1, $sp, 0x00C4
	sub.s   $f16, $f6, $f10
	swc1    $f16, 0x0000($t1)
	lw      $t3, 0x0108($sp)
	addiu   $t2, $sp, 0x00DC
	lwc1    $f18, 0x0004($t2)
	lwc1    $f8, 0x0004($t3)
	addiu   $t4, $sp, 0x00C4
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x0004($t4)
	lw      $t6, 0x0108($sp)
	addiu   $t5, $sp, 0x00DC
	lwc1    $f10, 0x0008($t5)
	lwc1    $f6, 0x0008($t6)
	addiu   $t7, $sp, 0x00C4
	sub.s   $f16, $f6, $f10
	swc1    $f16, 0x0008($t7)
	lh      $t8, 0x00B4($sp)
	subu    $t9, $0, $t8
	sh      $t9, 0x00B4($sp)
	addiu   $t0, $sp, 0x00C4
	move    $a0, $t0
	move    $a1, $t0
	jal     camera_8028AD4C
	lh      $a2, 0x00B4($sp)
	lh      $t1, 0x00B4($sp)
	subu    $t3, $0, $t1
	sh      $t3, 0x00B4($sp)
	lh      $t2, 0x00B6($sp)
	subu    $t4, $0, $t2
	sh      $t4, 0x00B6($sp)
	addiu   $t6, $sp, 0x00C4
	move    $a0, $t6
	move    $a1, $t6
	jal     camera_8028AE1C
	lh      $a2, 0x00B6($sp)
	lh      $t5, 0x00B6($sp)
	subu    $t7, $0, $t5
	sh      $t7, 0x00B6($sp)
	addiu   $t8, $sp, 0x00D0
	addiu   $t9, $sp, 0x00C4
	lwc1    $f18, 0x0008($t9)
	lwc1    $f8, 0x0008($t8)
	c.lt.s  $f18, $f8
	nop
	bc1f    .L80281D1C
	nop
	addiu   $t0, $sp, 0x00D0
	addiu   $t1, $sp, 0x00C4
	lwc1    $f6, 0x0008($t1)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f16, 0x00AC($sp)
	sub.s   $f10, $f4, $f6
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80281D14
	nop
	addiu   $t3, $sp, 0x00D0
	lwc1    $f8, 0x0008($t3)
	lwc1    $f18, 0x00AC($sp)
	addiu   $t2, $sp, 0x00C4
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x0008($t2)
.L80281D14:
	b       .L80281D60
	nop
.L80281D1C:
	addiu   $t4, $sp, 0x00D0
	addiu   $t6, $sp, 0x00C4
	lwc1    $f10, 0x0008($t6)
	lwc1    $f6, 0x0008($t4)
	lwc1    $f8, 0x00AC($sp)
	sub.s   $f16, $f6, $f10
	neg.s   $f18, $f8
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80281D60
	nop
	addiu   $t5, $sp, 0x00D0
	lwc1    $f4, 0x0008($t5)
	lwc1    $f6, 0x00AC($sp)
	addiu   $t7, $sp, 0x00C4
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0008($t7)
.L80281D60:
	addiu   $t8, $sp, 0x00D0
	lwc1    $f8, 0x0000($t8)
	lwc1    $f18, 0x00A8($sp)
	neg.s   $f16, $f8
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($t8)
	addiu   $t9, $sp, 0x00D0
	lwc1    $f6, 0x0004($t9)
	lwc1    $f10, 0x00A8($sp)
	mul.s   $f8, $f6, $f10
	swc1    $f8, 0x0004($t9)
	addiu   $t0, $sp, 0x00C4
	lwc1    $f16, 0x0008($t0)
	addiu   $t1, $sp, 0x00D0
	swc1    $f16, 0x0008($t1)
	addiu   $t3, $sp, 0x00B8
	lui     $at, %hi(camera_80337184)
	lwc1    $f4, %lo(camera_80337184)($at)
	lwc1    $f18, 0x0000($t3)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0000($t3)
	addiu   $t2, $sp, 0x00B8
	lui     $at, %hi(camera_80337188)
	lwc1    $f8, %lo(camera_80337188)($at)
	lwc1    $f10, 0x0004($t2)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x0004($t2)
	lh      $t4, 0x00B6($sp)
	addiu   $t6, $sp, 0x0058
	sh      $t4, 0x0000($t6)
	lh      $t5, 0x00B4($sp)
	addiu   $t7, $sp, 0x0058
	sh      $t5, 0x0002($t7)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0098($sp)
	addiu   $t8, $sp, 0x00D0
	lwc1    $f10, 0x0008($t8)
	div.s   $f6, $f18, $f4
	sub.s   $f8, $f6, $f10
	swc1    $f8, 0x0008($t8)
	lh      $t9, 0x00B4($sp)
	li      $at, 0x8000
	addiu   $t1, $sp, 0x0058
	addu    $t0, $t9, $at
	sh      $t0, 0x0002($t1)
	addiu   $t3, $sp, 0x0058
	sh      $0, 0x0004($t3)
	lw      $a0, 0x0108($sp)
	addiu   $a1, $sp, 0x00E8
	addiu   $a2, $sp, 0x00D0
	jal     camera_8028CBF0
	addiu   $a3, $sp, 0x0058
	lw      $a1, 0x0100($sp)
	addiu   $t2, $sp, 0x00B4
	sw      $t2, 0x0010($sp)
	addiu   $a0, $sp, 0x00E8
	addiu   $a2, $sp, 0x00A4
	addiu   $a3, $sp, 0x00B6
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0098($sp)
	addiu   $t4, $sp, 0x00B8
	lwc1    $f6, 0x0008($t4)
	div.s   $f4, $f16, $f18
	sub.s   $f10, $f4, $f6
	swc1    $f10, 0x0008($t4)
	lw      $a0, 0x0100($sp)
	addiu   $a1, $sp, 0x00E8
	addiu   $a2, $sp, 0x00B8
	addiu   $a3, $sp, 0x0058
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	andi    $t5, $t6, 0x0008
	beqz    $t5, .L80281F18
	nop
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	li      $at, -0x0009
	and     $t8, $t7, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t8, %lo(_camera_bss+0x32A)($at)
	lw      $t0, 0x0100($sp)
	addiu   $t9, $sp, 0x004C
	lwc1    $f8, 0x0000($t9)
	lwc1    $f16, 0x0010($t0)
	la.u    $t1, _camera_bss+0x2C8
	la.l    $t1, _camera_bss+0x2C8
	sub.s   $f18, $f8, $f16
	swc1    $f18, 0x0000($t1)
	lw      $t2, 0x0100($sp)
	addiu   $t3, $sp, 0x004C
	lwc1    $f4, 0x0004($t3)
	lwc1    $f6, 0x0014($t2)
	la.u    $t4, _camera_bss+0x2C8
	la.l    $t4, _camera_bss+0x2C8
	sub.s   $f10, $f4, $f6
	swc1    $f10, 0x0004($t4)
	lw      $t5, 0x0100($sp)
	addiu   $t6, $sp, 0x004C
	lwc1    $f8, 0x0008($t6)
	lwc1    $f16, 0x0018($t5)
	la.u    $t7, _camera_bss+0x2C8
	la.l    $t7, _camera_bss+0x2C8
	sub.s   $f18, $f8, $f16
	swc1    $f18, 0x0008($t7)
.L80281F18:
	la.u    $a0, _camera_bss+0x2C8
	li.u    $a2, 0x3CCCCCCD
	li.l    $a2, 0x3CCCCCCD
	la.l    $a0, _camera_bss+0x2C8
	jal     camera_802893F4
	li      $a1, 0x0000
	la.u    $a0, _camera_bss+0x2C8
	la.l    $a0, _camera_bss+0x2C8
	li.u    $a2, 0x3CCCCCCD
	li.l    $a2, 0x3CCCCCCD
	addiu   $a0, $a0, 0x0004
	jal     camera_802893F4
	li      $a1, 0x0000
	la.u    $a0, _camera_bss+0x2C8
	la.l    $a0, _camera_bss+0x2C8
	li.u    $a2, 0x3CCCCCCD
	li.l    $a2, 0x3CCCCCCD
	addiu   $a0, $a0, 0x0008
	jal     camera_802893F4
	li      $a1, 0x0000
	lw      $a0, 0x0100($sp)
	la.u    $a1, _camera_bss+0x2C8
	la.l    $a1, _camera_bss+0x2C8
	jal     vecf_add
	addiu   $a0, $a0, 0x0010
	lui     $t9, %hi(_camera_bss+0x2BC)
	lw      $t9, %lo(_camera_bss+0x2BC)($t9)
	lui     $t8, %hi(_camera_bss+0x2C0)
	lw      $t8, %lo(_camera_bss+0x2C0)($t8)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t1, $t8, $t0
	lh      $t3, 0x0018($t1)
	beqz    $t3, .L802820E8
	nop
	lui     $t4, %hi(_camera_bss+0x2BC)
	lw      $t4, %lo(_camera_bss+0x2BC)($t4)
	lui     $t2, %hi(_camera_bss+0x2C0)
	lw      $t2, %lo(_camera_bss+0x2C0)($t2)
	sll     $t6, $t4, 2
	subu    $t6, $t6, $t4
	sll     $t6, $t6, 3
	addu    $t5, $t2, $t6
	addiu   $a0, $t5, 0x001C
	addiu   $a1, $t5, 0x0034
	addiu   $a2, $sp, 0x0028
	jal     camera_8028AB60
	addiu   $a3, $sp, 0x0024
	lui     $t9, %hi(_camera_bss+0x2BC)
	lw      $t9, %lo(_camera_bss+0x2BC)($t9)
	lui     $t7, %hi(_camera_bss+0x2C0)
	lw      $t7, %lo(_camera_bss+0x2C0)($t7)
	sll     $t8, $t9, 2
	subu    $t8, $t8, $t9
	lh      $t0, 0x0024($sp)
	sll     $t8, $t8, 3
	addu    $a0, $t7, $t8
	addiu   $a0, $a0, 0x001C
	addiu   $a1, $sp, 0x0034
	li      $a2, 0x43C80000
	lh      $a3, 0x0028($sp)
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
	addiu   $a0, $sp, 0x0078
	jal     camera_8028AC28
	addiu   $a1, $sp, 0x0034
	swc1    $f0, 0x002C($sp)
	lui     $t3, %hi(_camera_bss+0x2BC)
	lw      $t3, %lo(_camera_bss+0x2BC)($t3)
	lui     $t1, %hi(_camera_bss+0x2C0)
	lw      $t1, %lo(_camera_bss+0x2C0)($t1)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addu    $t2, $t1, $t4
	addiu   $a0, $t2, 0x001C
	addiu   $a1, $t2, 0x0004
	addiu   $a2, $sp, 0x002A
	jal     camera_8028AB60
	addiu   $a3, $sp, 0x0026
	lui     $t5, %hi(_camera_bss+0x2BC)
	lw      $t5, %lo(_camera_bss+0x2BC)($t5)
	lui     $t6, %hi(_camera_bss+0x2C0)
	lw      $t6, %lo(_camera_bss+0x2C0)($t6)
	sll     $t9, $t5, 2
	subu    $t9, $t9, $t5
	lh      $t7, 0x0026($sp)
	sll     $t9, $t9, 3
	addu    $a0, $t6, $t9
	addiu   $a0, $a0, 0x001C
	addiu   $a1, $sp, 0x0040
	li      $a2, 0x43C80000
	lh      $a3, 0x002A($sp)
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	addiu   $a0, $sp, 0x0078
	jal     camera_8028AC28
	addiu   $a1, $sp, 0x0040
	swc1    $f0, 0x0030($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x0030($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802820E8
	nop
	lui     $t8, %hi(_camera_bss+0x2BC)
	lw      $t8, %lo(_camera_bss+0x2BC)($t8)
	lui     $at, %hi(_camera_bss+0x2BC)
	addiu   $t0, $t8, 0x0001
	sw      $t0, %lo(_camera_bss+0x2BC)($at)
	lui     $t3, %hi(_camera_bss+0x32A)
	lh      $t3, %lo(_camera_bss+0x32A)($t3)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t1, $t3, 0x0008
	sh      $t1, %lo(_camera_bss+0x32A)($at)
.L802820E8:
	lui     $t4, %hi(_camera_bss+0x2BC)
	lw      $t4, %lo(_camera_bss+0x2BC)($t4)
	beqz    $t4, .L80282238
	nop
	lui     $t5, %hi(_camera_bss+0x2BC)
	lw      $t5, %lo(_camera_bss+0x2BC)($t5)
	lui     $t2, %hi(_camera_bss+0x2C0)
	lw      $t2, %lo(_camera_bss+0x2C0)($t2)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $t9, $t2, $t6
	addiu   $a0, $t9, 0x0004
	addiu   $a1, $t9, 0x001C
	addiu   $a2, $sp, 0x0028
	jal     camera_8028AB60
	addiu   $a3, $sp, 0x0024
	lui     $t8, %hi(_camera_bss+0x2BC)
	lw      $t8, %lo(_camera_bss+0x2BC)($t8)
	lui     $t7, %hi(_camera_bss+0x2C0)
	lw      $t7, %lo(_camera_bss+0x2C0)($t7)
	sll     $t0, $t8, 2
	subu    $t0, $t0, $t8
	lh      $t3, 0x0024($sp)
	sll     $t0, $t0, 3
	addu    $a0, $t7, $t0
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $sp, 0x0034
	li      $a2, 0x442F0000
	lh      $a3, 0x0028($sp)
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
	addiu   $a0, $sp, 0x0078
	jal     camera_8028AC28
	addiu   $a1, $sp, 0x0034
	swc1    $f0, 0x002C($sp)
	lui     $t4, %hi(_camera_bss+0x2BC)
	lw      $t4, %lo(_camera_bss+0x2BC)($t4)
	lui     $t1, %hi(_camera_bss+0x2C0)
	lw      $t1, %lo(_camera_bss+0x2C0)($t1)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 3
	addu    $t2, $t1, $t5
	addiu   $a0, $t2, 0x0004
	addiu   $a1, $t2, -0x0014
	addiu   $a2, $sp, 0x002A
	jal     camera_8028AB60
	addiu   $a3, $sp, 0x0026
	lui     $t9, %hi(_camera_bss+0x2BC)
	lw      $t9, %lo(_camera_bss+0x2BC)($t9)
	lui     $t6, %hi(_camera_bss+0x2C0)
	lw      $t6, %lo(_camera_bss+0x2C0)($t6)
	sll     $t8, $t9, 2
	subu    $t8, $t8, $t9
	lh      $t7, 0x0026($sp)
	sll     $t8, $t8, 3
	addu    $a0, $t6, $t8
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $sp, 0x0040
	li      $a2, 0x442F0000
	lh      $a3, 0x002A($sp)
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	addiu   $a0, $sp, 0x0078
	jal     camera_8028AC28
	addiu   $a1, $sp, 0x0040
	swc1    $f0, 0x0030($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f8, 0x0030($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80282238
	nop
	lui     $t0, %hi(_camera_bss+0x2BC)
	lw      $t0, %lo(_camera_bss+0x2BC)($t0)
	lui     $at, %hi(_camera_bss+0x2BC)
	addiu   $t3, $t0, -0x0001
	sw      $t3, %lo(_camera_bss+0x2BC)($at)
	lui     $t4, %hi(_camera_bss+0x32A)
	lh      $t4, %lo(_camera_bss+0x32A)($t4)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t1, $t4, 0x0008
	sh      $t1, %lo(_camera_bss+0x32A)($at)
.L80282238:
	lw      $a0, 0x0104($sp)
	jal     vecf_cpy
	addiu   $a1, $sp, 0x0078
	addiu   $t5, $sp, 0x00B4
	sw      $t5, 0x0010($sp)
	lw      $a0, 0x0104($sp)
	lw      $a1, 0x0108($sp)
	addiu   $a2, $sp, 0x00A4
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x00B6
	b       .L80282270
	lh      $v0, 0x00B4($sp)
	b       .L80282270
	nop
.L80282270:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0100
	jr      $ra
	nop

/* int camera_80282280(struct camera *cam, VECF, VECF) */
.globl camera_80282280
camera_80282280:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0078($sp)
	sw      $a1, 0x007C($sp)
	sw      $a2, 0x0080($sp)
	sw      $s0, 0x0020($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0058($sp)
	jal     camera_8028B804
	nop
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0041
	beq     $s0, $at, .L80282324
	nop
	li      $at, 0x0061
	beq     $s0, $at, .L80282304
	nop
	li      $at, 0x00F1
	beq     $s0, $at, .L802822E4
	nop
	b       .L80282344
	nop
.L802822E4:
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0058($sp)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0068($sp)
	b       .L80282344
	nop
.L80282304:
	lui     $at, %hi(camera_8033718C)
	lwc1    $f10, %lo(camera_8033718C)($at)
	swc1    $f10, 0x0058($sp)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0068($sp)
	b       .L80282344
	nop
.L80282324:
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0058($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0068($sp)
	b       .L80282344
	nop
.L80282344:
	jal     camera_8028BD98
	lw      $a0, 0x0078($sp)
	jal     camera_8028B784
	nop
	lui     $at, %hi(camera_80337190)
	lwc1    $f6, %lo(camera_80337190)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	addiu   $t6, $sp, 0x0074
	move    $a0, $t6
	move    $a3, $t6
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	swc1    $f6, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f8, 0x0014($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x007C($sp)
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0074($sp)
	lw      $t7, 0x007C($sp)
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x0004($t7)
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0004($t7)
	lw      $a1, 0x0078($sp)
	addiu   $t8, $sp, 0x004C
	addiu   $t9, $t8, 0x0002
	sw      $t9, 0x0010($sp)
	move    $a3, $t8
	lw      $a0, 0x007C($sp)
	addiu   $a2, $sp, 0x0064
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	addiu   $t0, $sp, 0x004C
	sh      $0, 0x0004($t0)
	la.u    $a1, camera_8032DF6C
	la.l    $a1, camera_8032DF6C
	jal     vecf_cpy
	addiu   $a0, $sp, 0x003C
	la.u    $a1, _camera_bss+0x2B0
	la.l    $a1, _camera_bss+0x2B0
	jal     vecf_add
	addiu   $a0, $sp, 0x003C
	lui     $t1, %hi(_camera_bss+0xD0)
	lh      $t1, %lo(_camera_bss+0xD0)($t1)
	li      $at, 0x000A
	beq     $t1, $at, .L8028245C
	nop
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f8, %lo(_camera_bss+0xCC)($at)
	lui     $at, %hi(camera_80337194)
	lwc1    $f10, %lo(camera_80337194)($at)
	c.eq.s  $f8, $f10
	nop
	bc1t    .L8028245C
	nop
	addiu   $t2, $sp, 0x003C
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f4, %lo(_camera_bss+0xCC)($at)
	lwc1    $f16, 0x0004($t2)
	lwc1    $f6, 0x0068($sp)
	add.s   $f18, $f16, $f4
	add.s   $f8, $f18, $f6
	b       .L8028246C
	swc1    $f8, 0x0070($sp)
.L8028245C:
	la.u    $t3, _camera_bss+0x178
	la.l    $t3, _camera_bss+0x178
	lwc1    $f10, 0x0028($t3)
	swc1    $f10, 0x0070($sp)
.L8028246C:
	li      $at, 0x43960000
	mtc1    $at, $f16
	lwc1    $f4, 0x0064($sp)
	c.lt.s  $f4, $f16
	nop
	bc1f    .L802824A4
	nop
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f6, 0x0064($sp)
	lwc1    $f10, 0x0070($sp)
	sub.s   $f8, $f18, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0070($sp)
.L802824A4:
	lw      $t4, 0x0078($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f4, 0x0070($sp)
	addiu   $a3, $sp, 0x0048
	lwc1    $f12, 0x0010($t4)
	lw      $a2, 0x0018($t4)
	jal     map_80381264
	sub.s   $f14, $f4, $f18
	swc1    $f0, 0x006C($sp)
	lui     $at, %hi(camera_80337198)
	lwc1    $f10, %lo(camera_80337198)($at)
	lwc1    $f6, 0x006C($sp)
	c.eq.s  $f6, $f10
	nop
	bc1t    .L80282514
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f8, 0x006C($sp)
	lwc1    $f18, 0x0070($sp)
	sub.s   $f4, $f8, $f16
	c.lt.s  $f4, $f18
	swc1    $f4, 0x006C($sp)
	bc1f    .L80282514
	nop
	lwc1    $f6, 0x006C($sp)
	swc1    $f6, 0x0070($sp)
.L80282514:
	lui     $t5, %hi(_camera_bss+0x32A)
	lh      $t5, %lo(_camera_bss+0x32A)($t5)
	andi    $t6, $t5, 0x0001
	beqz    $t6, .L80282544
	nop
	lw      $a0, 0x0078($sp)
	lw      $a1, 0x0070($sp)
	li      $a2, 0x41700000
	jal     camera_802899CC
	addiu   $a0, $a0, 0x0014
	b       .L80282598
	nop
.L80282544:
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f8, 0x0008($t7)
	lwc1    $f10, 0x0070($sp)
	sub.s   $f18, $f8, $f16
	c.lt.s  $f10, $f18
	nop
	bc1f    .L8028258C
	nop
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0070($sp)
.L8028258C:
	lwc1    $f16, 0x0070($sp)
	lw      $t9, 0x0078($sp)
	swc1    $f16, 0x0014($t9)
.L80282598:
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	addiu   $t1, $sp, 0x003C
	lwc1    $f18, 0x0000($t1)
	lwc1    $f10, 0x0004($t0)
	lwc1    $f6, 0x0058($sp)
	lw      $t2, 0x0078($sp)
	sub.s   $f4, $f10, $f18
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x0010($t2)
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	addiu   $t4, $sp, 0x003C
	lwc1    $f4, 0x0008($t4)
	lwc1    $f10, 0x000C($t3)
	lwc1    $f8, 0x0058($sp)
	lw      $t5, 0x0078($sp)
	sub.s   $f6, $f10, $f4
	mul.s   $f18, $f6, $f8
	add.s   $f16, $f18, $f4
	swc1    $f16, 0x0018($t5)
	lwc1    $f10, 0x0058($sp)
	mtc1    $0, $f6
	nop
	c.eq.s  $f10, $f6
	nop
	bc1t    .L80282678
	nop
	lw      $t6, 0x0078($sp)
	addiu   $t7, $sp, 0x0054
	sw      $t7, 0x0010($sp)
	addiu   $a2, $sp, 0x0064
	addiu   $a3, $sp, 0x0056
	addiu   $a0, $t6, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t6, 0x0010
	li      $at, 0x447A0000
	mtc1    $at, $f18
	lwc1    $f8, 0x0064($sp)
	c.lt.s  $f18, $f8
	nop
	bc1f    .L80282678
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0064($sp)
	lw      $t8, 0x0078($sp)
	lh      $t9, 0x0054($sp)
	lw      $a2, 0x0064($sp)
	lh      $a3, 0x0056($sp)
	addiu   $a0, $t8, 0x0004
	addiu   $a1, $t8, 0x0010
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
.L80282678:
	addiu   $t0, $sp, 0x004C
	b       .L8028268C
	lh      $v0, 0x0002($t0)
	b       .L8028268C
	nop
.L8028268C:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

/* int camera_802826A0(struct camera *cam, VECF, VECF) */
.globl camera_802826A0
camera_802826A0:
	addiu   $sp, $sp, -0x0090
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0090($sp)
	sw      $a1, 0x0094($sp)
	sw      $a2, 0x0098($sp)
	sw      $s0, 0x0020($sp)
	la.u    $t7, camera_8032DFFC
	la.l    $t7, camera_8032DFFC
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x002C
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	jal     camera_8028BD98
	lw      $a0, 0x0090($sp)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	li      $at, 0x0007
	lh      $t1, 0x001E($t0)
	bne     $t1, $at, .L80282710
	nop
	jal     camera_8027F8B8
	li      $a0, 0x0003
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	sh      $0, 0x001E($t2)
.L80282710:
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	li      $at, 0x0008
	lh      $t4, 0x001E($t3)
	bne     $t4, $at, .L8028273C
	nop
	jal     camera_8027F8B8
	li      $a0, 0x0002
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	sh      $0, 0x001E($t5)
.L8028273C:
	lui     $t8, %hi(_camera_bss+0x252)
	lh      $t8, %lo(_camera_bss+0x252)($t8)
	addiu   $t6, $t8, 0x2000
	sh      $t6, 0x0060($sp)
	lui     $t7, %hi(camera_8032DF30)
	lw      $t7, %lo(camera_8032DF30)($t7)
	beqz    $t7, .L80282778
	sw      $t7, 0x008C($sp)
	addiu   $a0, $sp, 0x0038
	jal     camera_80287E28
	lw      $a1, 0x008C($sp)
	lw      $t9, 0x008C($sp)
	lw      $t0, 0x0124($t9)
	b       .L802827B0
	sh      $t0, 0x005E($sp)
.L80282778:
	lw      $t1, 0x0090($sp)
	addiu   $t2, $sp, 0x0038
	lwc1    $f4, 0x0028($t1)
	swc1    $f4, 0x0000($t2)
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	addiu   $t4, $sp, 0x0038
	lwc1    $f6, 0x0008($t3)
	swc1    $f6, 0x0004($t4)
	lw      $t5, 0x0090($sp)
	addiu   $t8, $sp, 0x0038
	lwc1    $f8, 0x002C($t5)
	swc1    $f8, 0x0008($t8)
	sh      $0, 0x005E($sp)
.L802827B0:
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	addiu   $a1, $sp, 0x0038
	jal     camera_8028AC28
	addiu   $a0, $a0, 0x0004
	lui     $at, %hi(camera_8033719C)
	lwc1    $f10, %lo(camera_8033719C)($at)
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x007C($sp)
	li      $at, 0x44480000
	mtc1    $at, $f4
	lwc1    $f18, 0x007C($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80282800
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x007C($sp)
.L80282800:
	lui     $at, %hi(camera_803371A0)
	lwc1    $f10, %lo(camera_803371A0)($at)
	lwc1    $f8, 0x007C($sp)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80282828
	nop
	lui     $at, %hi(camera_803371A4)
	lwc1    $f16, %lo(camera_803371A4)($at)
	swc1    $f16, 0x007C($sp)
.L80282828:
	lh      $t6, 0x005E($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L80282854
	nop
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	addiu   $a0, $sp, 0x0038
	addiu   $a2, $sp, 0x002C
	addiu   $a1, $t7, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t7, 0x0010
.L80282854:
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	addiu   $t9, $sp, 0x0038
	lwc1    $f18, 0x0000($t9)
	lwc1    $f4, 0x0004($t0)
	li      $at, 0x40000000
	mtc1    $at, $f8
	add.s   $f6, $f18, $f4
	lw      $t1, 0x0094($sp)
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0000($t1)
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	addiu   $t2, $sp, 0x0038
	lwc1    $f16, 0x0004($t2)
	lwc1    $f18, 0x0008($t3)
	li      $at, 0x40000000
	mtc1    $at, $f6
	add.s   $f4, $f16, $f18
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	lw      $t4, 0x0094($sp)
	div.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t4)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	addiu   $t5, $sp, 0x0038
	lwc1    $f18, 0x0008($t5)
	lwc1    $f4, 0x000C($t8)
	li      $at, 0x40000000
	mtc1    $at, $f8
	add.s   $f6, $f18, $f4
	lw      $t6, 0x0094($sp)
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0008($t6)
	lh      $t7, 0x0060($sp)
	lw      $a0, 0x0094($sp)
	lw      $a1, 0x0098($sp)
	lw      $a2, 0x007C($sp)
	li      $a3, 0x1000
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lw      $t9, 0x0090($sp)
	lui     $at, %hi(camera_803371A8)
	lwc1    $f14, %lo(camera_803371A8)($at)
	addiu   $a3, $sp, 0x0058
	lwc1    $f12, 0x0028($t9)
	jal     map_80381900
	lw      $a2, 0x002C($t9)
	lw      $t0, 0x0098($sp)
	swc1    $f0, 0x0004($t0)
	lw      $t1, 0x0058($sp)
	beqz    $t1, .L802829F8
	nop
	lw      $t2, 0x0058($sp)
	lwc1    $f16, 0x001C($t2)
	swc1    $f16, 0x0074($sp)
	lw      $t3, 0x0058($sp)
	lwc1    $f18, 0x0020($t3)
	swc1    $f18, 0x0070($sp)
	lw      $t4, 0x0058($sp)
	lwc1    $f4, 0x0024($t4)
	swc1    $f4, 0x006C($sp)
	lw      $t5, 0x0058($sp)
	lwc1    $f6, 0x0028($t5)
	swc1    $f6, 0x0068($sp)
	lw      $t8, 0x0098($sp)
	lwc1    $f10, 0x006C($sp)
	lwc1    $f18, 0x0074($sp)
	lwc1    $f8, 0x0008($t8)
	lwc1    $f4, 0x0000($t8)
	li      $at, 0x43960000
	mul.s   $f16, $f8, $f10
	lwc1    $f10, 0x0068($sp)
	mul.s   $f6, $f18, $f4
	lwc1    $f4, 0x0070($sp)
	add.s   $f8, $f16, $f6
	mtc1    $at, $f6
	add.s   $f18, $f8, $f10
	div.s   $f16, $f18, $f4
	sub.s   $f8, $f6, $f16
	swc1    $f8, 0x0004($t8)
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0201 # 0x0091
	beq     $s0, $at, .L802829C8
	nop
	li      $at, 0x0181
	beq     $s0, $at, .L802829E0
	nop
	b       .L802829F8
	nop
.L802829C8:
	lw      $t6, 0x0098($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f18
	lwc1    $f10, 0x0004($t6)
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x0004($t6)
.L802829E0:
	lw      $t7, 0x0098($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f6, 0x0004($t7)
	add.s   $f8, $f6, $f16
	swc1    $f8, 0x0004($t7)
.L802829F8:
	lui     $t9, %hi(stage_index)
	lh      $t9, %lo(stage_index)($t9)
	li      $at, 0x0004
	bne     $t9, $at, .L80282A1C
	nop
	lui     $at, %hi(camera_803371AC)
	lwc1    $f10, %lo(camera_803371AC)($at)
	lw      $t0, 0x0098($sp)
	swc1    $f10, 0x0004($t0)
.L80282A1C:
	lui     $t1, %hi(_camera_bss+0x248)
	lh      $t1, %lo(_camera_bss+0x248)($t1)
	bgez    $t1, .L80282A68
	nop
	lui     $t2, %hi(_camera_bss+0x252)
	lh      $t2, %lo(_camera_bss+0x252)($t2)
	lui     $at, %hi(_camera_bss+0x252)
	addiu   $t3, $t2, 0x0200
	sh      $t3, %lo(_camera_bss+0x252)($at)
	lui     $t4, %hi(_camera_bss+0x248)
	lh      $t4, %lo(_camera_bss+0x248)($t4)
	lui     $at, %hi(_camera_bss+0x248)
	addiu   $t5, $t4, 0x0100
	sll     $t8, $t5, 16
	sra     $t6, $t8, 16
	blez    $t6, .L80282A68
	sh      $t5, %lo(_camera_bss+0x248)($at)
	lui     $at, %hi(_camera_bss+0x248)
	sh      $0, %lo(_camera_bss+0x248)($at)
.L80282A68:
	lui     $t7, %hi(_camera_bss+0x248)
	lh      $t7, %lo(_camera_bss+0x248)($t7)
	blez    $t7, .L80282AB4
	nop
	lui     $t9, %hi(_camera_bss+0x252)
	lh      $t9, %lo(_camera_bss+0x252)($t9)
	lui     $at, %hi(_camera_bss+0x252)
	addiu   $t0, $t9, -0x0200
	sh      $t0, %lo(_camera_bss+0x252)($at)
	lui     $t1, %hi(_camera_bss+0x248)
	lh      $t1, %lo(_camera_bss+0x248)($t1)
	lui     $at, %hi(_camera_bss+0x248)
	addiu   $t2, $t1, -0x0100
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	bgez    $t4, .L80282AB4
	sh      $t2, %lo(_camera_bss+0x248)($at)
	lui     $at, %hi(_camera_bss+0x248)
	sh      $0, %lo(_camera_bss+0x248)($at)
.L80282AB4:
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	addiu   $t5, $sp, 0x0038
	lwc1    $f18, 0x0004($t5)
	lwc1    $f4, 0x0008($t8)
	li      $at, 0x40000000
	mtc1    $at, $f16
	add.s   $f6, $f18, $f4
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lw      $t6, 0x0094($sp)
	div.s   $f8, $f6, $f16
	add.s   $f18, $f8, $f10
	swc1    $f18, 0x0004($t6)
	lh      $t7, 0x005E($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L80282B74
	nop
	la.u    $t9, player_data
	la.l    $t9, player_data
	lh      $t0, 0x0034($t9)
	mtc1    $0, $f16
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f16, $f6
	nop
	bc1f    .L80282B30
	nop
	b       .L80282B40
	move    $s0, $t0
.L80282B30:
	la.u    $t1, player_data
	la.l    $t1, player_data
	lh      $s0, 0x0034($t1)
	subu    $s0, $0, $s0
.L80282B40:
	li      $at, 0x43960000
	andi    $t2, $s0, 0xFFFF
	mtc1    $at, $f8
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	lw      $t5, 0x0094($sp)
	mul.s   $f18, $f8, $f10
	lwc1    $f4, 0x0004($t5)
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0004($t5)
.L80282B74:
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lwc1    $f16, 0x007C($sp)
	c.lt.s  $f16, $f8
	nop
	bc1f    .L80282BA0
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x007C($sp)
.L80282BA0:
	lwc1    $f12, 0x007C($sp)
	jal     camera_80281188
	li      $a1, 0x1800
	lui     $t6, %hi(_camera_bss+0x23E)
	lh      $t6, %lo(_camera_bss+0x23E)($t6)
	lw      $t8, 0x0098($sp)
	lui     $a3, %hi(_camera_bss+0x240)
	mtc1    $t6, $f4
	lh      $a3, %lo(_camera_bss+0x240)($a3)
	lh      $t7, 0x0060($sp)
	cvt.s.w $f4, $f4
	move    $a0, $t8
	move    $a1, $t8
	addiu   $a3, $a3, 0x1000
	sw      $t7, 0x0010($sp)
	mfc1    $a2, $f4
	jal     polar_to_cartesian
	nop
	b       .L80282BF8
	lh      $v0, 0x0060($sp)
	b       .L80282BF8
	nop
.L80282BF8:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0090
	jr      $ra
	nop

/* int camera_80282C0C(struct camera *cam, VECF, VECF) */
.globl camera_80282C0C
camera_80282C0C:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	b       .L80282C20
	nop
.L80282C20:
	jr      $ra
	nop

camera_80282C28:
	sw      $a0, 0x0000($sp)
	b       .L80282C34
	nop
.L80282C34:
	jr      $ra
	nop

camera_80282C3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	jal     camera_802826A0
	addiu   $a2, $t6, 0x0010
	lw      $t7, 0x0018($sp)
	sh      $v0, 0x003A($t7)
	b       .L80282C6C
	nop
.L80282C6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80282C7C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     camera_8028B9C4
	li      $a1, 0x0000
	jal     camera_8029AB94
	li      $a0, 0x0002
	lw      $t6, 0x0020($sp)
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	jal     camera_80281904
	addiu   $a2, $t6, 0x0010
	lw      $t7, 0x0020($sp)
	sh      $v0, 0x003A($t7)
	addiu   $a0, $sp, 0x001E
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0400
	b       .L80282CD0
	nop
.L80282CD0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80282CE0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x0004
	bne     $t6, $at, .L80282D10
	nop
	jal     camera_8029AB94
	li      $a0, 0x0007
	b       .L80282D18
	nop
.L80282D10:
	jal     camera_8029AB94
	li      $a0, 0x0004
.L80282D18:
	lw      $t7, 0x0020($sp)
	move    $a0, $t7
	addiu   $a1, $t7, 0x0004
	jal     camera_80282280
	addiu   $a2, $t7, 0x0010
	lw      $t8, 0x0020($sp)
	sh      $v0, 0x003A($t8)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x003A($t9)
	sh      $t0, 0x0002($t9)
	jal     camera_802804F4
	lw      $a0, 0x0020($sp)
	la.u    $a0, _camera_bss+0x2B0
	la.l    $a0, _camera_bss+0x2B0
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	b       .L80282D68
	nop
.L80282D68:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int camera_80282D78(struct camera *cam, VECF, VECF) */
.globl camera_80282D78
camera_80282D78:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lh      $t7, 0x0010($t6)
	subu    $t8, $0, $t7
	sh      $t8, 0x003C($sp)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	li      $at, 0x8000
	lh      $t0, 0x0012($t9)
	addu    $t1, $t0, $at
	sh      $t1, 0x003A($sp)
	sh      $0, 0x0038($sp)
	li      $t2, 0x0020
	sh      $t2, 0x0034($sp)
	li      $at, 0x44480000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0020($sp)
	lui     $t3, %hi(_camera_bss+0x164)
	lh      $t3, %lo(_camera_bss+0x164)($t3)
	andi    $t4, $t3, 0x0001
	beqz    $t4, .L80282E18
	nop
	li      $at, 0x43AF0000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0024($sp)
	li      $at, 0x42F00000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0020($sp)
.L80282E18:
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	lw      $t6, 0x0000($t5)
	andi    $t7, $t6, 0x6000
	bnez    $t7, .L80282E38
	nop
	li      $t8, 0x0080
	sh      $t8, 0x0034($sp)
.L80282E38:
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x005C($sp)
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $t9, 0x0058($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f16, 0x0008($t9)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0008($t9)
	lw      $a0, 0x005C($sp)
	jal     camera_8028AC28
	lw      $a1, 0x0060($sp)
	swc1    $f0, 0x0048($sp)
	lw      $a0, 0x005C($sp)
	jal     camera_8028AA28
	lw      $a1, 0x0060($sp)
	sh      $v0, 0x0040($sp)
	addiu   $t0, $sp, 0x003E
	sw      $t0, 0x0010($sp)
	lw      $a0, 0x005C($sp)
	lw      $a1, 0x0060($sp)
	addiu   $a2, $sp, 0x0048
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0040
	lwc1    $f6, 0x0048($sp)
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80282EBC
	nop
	lwc1    $f10, 0x0024($sp)
	swc1    $f10, 0x0048($sp)
.L80282EBC:
	lh      $t1, 0x0040($sp)
	bgez    $t1, .L80282ED4
	sh      $t1, 0x0042($sp)
	lh      $t2, 0x0042($sp)
	subu    $t3, $0, $t2
	sh      $t3, 0x0042($sp)
.L80282ED4:
	lh      $t4, 0x0042($sp)
	li      $t6, 0x0020
	bgez    $t4, .L80282EEC
	sra     $t5, $t4, 9
	addiu   $at, $t4, 0x01FF
	sra     $t5, $at, 9
.L80282EEC:
	subu    $t7, $t6, $t5
	sh      $t7, 0x0036($sp)
	lh      $t8, 0x0036($sp)
	bgtz    $t8, .L80282F08
	nop
	li      $t9, 0x0001
	sh      $t9, 0x0036($sp)
.L80282F08:
	lh      $t0, 0x0036($sp)
	slti    $at, $t0, 0x0021
	bnez    $at, .L80282F20
	nop
	li      $t1, 0x0020
	sh      $t1, 0x0036($sp)
.L80282F20:
	lui     $t2, %hi(_camera_bss+0x248)
	lh      $t2, %lo(_camera_bss+0x248)($t2)
	beqz    $t2, .L80282F4C
	nop
	la.u    $a0, _camera_bss+0x248
	la.l    $a0, _camera_bss+0x248
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0001
	li      $t3, 0x0008
	sh      $t3, 0x0036($sp)
.L80282F4C:
	lui     $t4, %hi(_camera_bss+0x24A)
	lh      $t4, %lo(_camera_bss+0x24A)($t4)
	beqz    $t4, .L80282F7C
	nop
	sh      $0, 0x003C($sp)
	la.u    $a0, _camera_bss+0x24A
	la.l    $a0, _camera_bss+0x24A
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0001
	li      $t6, 0x0800
	sh      $t6, 0x0034($sp)
.L80282F7C:
	lui     $t5, %hi(_camera_bss+0x24A)
	lh      $t5, %lo(_camera_bss+0x24A)($t5)
	li      $at, 0x001C
	bne     $t5, $at, .L80282FB8
	nop
	lui     $t7, %hi(_camera_bss+0x248)
	lh      $t7, %lo(_camera_bss+0x248)($t7)
	slti    $at, $t7, 0x0005
	bnez    $at, .L80282FB0
	nop
	slti    $at, $t7, 0x001D
	bnez    $at, .L80282FB8
	nop
.L80282FB0:
	jal     camera_8028B850
	nop
.L80282FB8:
	lui     $t8, %hi(_camera_bss+0x248)
	lh      $t8, %lo(_camera_bss+0x248)($t8)
	li      $at, 0x001C
	bne     $t8, $at, .L80282FF4
	nop
	lui     $t9, %hi(_camera_bss+0x24A)
	lh      $t9, %lo(_camera_bss+0x24A)($t9)
	slti    $at, $t9, 0x0005
	bnez    $at, .L80282FEC
	nop
	slti    $at, $t9, 0x001D
	bnez    $at, .L80282FF4
	nop
.L80282FEC:
	jal     camera_8028B850
	nop
.L80282FF4:
	lui     $t0, %hi(_camera_bss+0x16E)
	lhu     $t0, %lo(_camera_bss+0x16E)($t0)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L8028306C
	nop
	lui     $t2, %hi(cont_1)
	lw      $t2, %lo(cont_1)($t2)
	lhu     $t3, 0x0012($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, .L80283028
	nop
	jal     camera_8028B8B8
	nop
.L80283028:
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80283050
	nop
	addiu   $a0, $sp, 0x0048
	lw      $a1, 0x0024($sp)
	jal     camera_802899CC
	li      $a2, 0x40A00000
.L80283050:
	li      $t6, -0x3FF8
	sh      $t6, 0x0038($sp)
	li      $t5, 0x001E
	lui     $at, %hi(_camera_bss+0x248)
	sh      $t5, %lo(_camera_bss+0x248)($at)
	li      $t7, 0x0002
	sh      $t7, 0x0036($sp)
.L8028306C:
	lui     $t8, %hi(_camera_bss+0x16E)
	lhu     $t8, %lo(_camera_bss+0x16E)($t8)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L802830E4
	nop
	lui     $t0, %hi(cont_1)
	lw      $t0, %lo(cont_1)($t0)
	lhu     $t1, 0x0012($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, .L802830A0
	nop
	jal     camera_8028B8B8
	nop
.L802830A0:
	lwc1    $f4, 0x0048($sp)
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802830C8
	nop
	addiu   $a0, $sp, 0x0048
	lw      $a1, 0x0024($sp)
	jal     camera_802899CC
	li      $a2, 0x40A00000
.L802830C8:
	li      $t3, 0x3FF8
	sh      $t3, 0x0038($sp)
	li      $t4, 0x001E
	lui     $at, %hi(_camera_bss+0x248)
	sh      $t4, %lo(_camera_bss+0x248)($at)
	li      $t6, 0x0002
	sh      $t6, 0x0036($sp)
.L802830E4:
	lui     $t5, %hi(_camera_bss+0x16E)
	lhu     $t5, %lo(_camera_bss+0x16E)($t5)
	andi    $t7, $t5, 0x0004
	beqz    $t7, .L8028315C
	nop
	lui     $t8, %hi(cont_1)
	lw      $t8, %lo(cont_1)($t8)
	lhu     $t9, 0x0012($t8)
	andi    $t0, $t9, 0x000C
	beqz    $t0, .L80283118
	nop
	jal     camera_8028B8B8
	nop
.L80283118:
	lwc1    $f8, 0x0048($sp)
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80283140
	nop
	addiu   $a0, $sp, 0x0048
	lw      $a1, 0x0024($sp)
	jal     camera_802899CC
	li      $a2, 0x40A00000
.L80283140:
	li      $t1, -0x3000
	sh      $t1, 0x003C($sp)
	li      $t2, 0x001E
	lui     $at, %hi(_camera_bss+0x24A)
	sh      $t2, %lo(_camera_bss+0x24A)($at)
	li      $t3, 0x0800
	sh      $t3, 0x0034($sp)
.L8028315C:
	lui     $t4, %hi(_camera_bss+0x16E)
	lhu     $t4, %lo(_camera_bss+0x16E)($t4)
	andi    $t6, $t4, 0x0008
	beqz    $t6, .L802831D4
	nop
	lui     $t5, %hi(cont_1)
	lw      $t5, %lo(cont_1)($t5)
	lhu     $t7, 0x0012($t5)
	andi    $t8, $t7, 0x000C
	beqz    $t8, .L80283190
	nop
	jal     camera_8028B8B8
	nop
.L80283190:
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802831B8
	nop
	addiu   $a0, $sp, 0x0048
	lw      $a1, 0x0024($sp)
	jal     camera_802899CC
	li      $a2, 0x40A00000
.L802831B8:
	li      $t9, 0x3000
	sh      $t9, 0x003C($sp)
	li      $t0, 0x001E
	lui     $at, %hi(_camera_bss+0x24A)
	sh      $t0, %lo(_camera_bss+0x24A)($at)
	li      $t1, 0x0800
	sh      $t1, 0x0034($sp)
.L802831D4:
	lh      $t2, 0x003A($sp)
	lh      $t3, 0x0038($sp)
	addiu   $a0, $sp, 0x003E
	lh      $a2, 0x0036($sp)
	jal     camera_802894B4
	addu    $a1, $t2, $t3
	addiu   $a0, $sp, 0x0040
	lh      $a1, 0x003C($sp)
	jal     camera_8028976C
	lh      $a2, 0x0034($sp)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x0048($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80283228
	nop
	li      $at, 0x43960000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0048($sp)
.L80283228:
	lh      $t4, 0x003E($sp)
	lw      $a0, 0x005C($sp)
	lw      $a1, 0x0060($sp)
	lw      $a2, 0x0048($sp)
	lh      $a3, 0x0040($sp)
	jal     polar_to_cartesian
	sw      $t4, 0x0010($sp)
	lui     $t6, %hi(camera_stagescene)
	lw      $t6, %lo(camera_stagescene)($t6)
	li      $at, 0x00B1
	bne     $t6, $at, .L80283290
	nop
	lui     $at, %hi(camera_803371B0)
	lwc1    $f10, %lo(camera_803371B0)($at)
	lui     $at, %hi(camera_803371B4)
	lwc1    $f16, %lo(camera_803371B4)($at)
	li.u    $a2, 0x458CE000
	li.u    $a3, 0xC569B000
	li.l    $a3, 0xC569B000
	li.l    $a2, 0x458CE000
	lw      $a0, 0x0060($sp)
	lw      $a1, 0x005C($sp)
	swc1    $f10, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f16, 0x0014($sp)
	sh      $v0, 0x003E($sp)
.L80283290:
	lui     $t5, %hi(camera_stagescene)
	lw      $t5, %lo(camera_stagescene)($t5)
	li      $at, 0x00D1
	bne     $t5, $at, .L802832D4
	nop
	li      $at, 0x46000000
	mtc1    $at, $f18
	li      $at, 0xC6000000
	mtc1    $at, $f4
	lw      $a0, 0x0060($sp)
	lw      $a1, 0x005C($sp)
	li      $a2, 0x46000000
	li      $a3, 0xC6000000
	swc1    $f18, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f4, 0x0014($sp)
	sh      $v0, 0x003E($sp)
.L802832D4:
	lui     $t7, %hi(camera_stagescene)
	lw      $t7, %lo(camera_stagescene)($t7)
	li      $at, 0x00D2
	bne     $t7, $at, .L80283320
	nop
	lui     $at, %hi(camera_803371B8)
	lwc1    $f6, %lo(camera_803371B8)($at)
	lui     $at, %hi(camera_803371BC)
	lwc1    $f8, %lo(camera_803371BC)($at)
	li.u    $a2, 0x4519A000
	li.u    $a3, 0xC519A000
	li.l    $a3, 0xC519A000
	li.l    $a2, 0x4519A000
	lw      $a0, 0x0060($sp)
	lw      $a1, 0x005C($sp)
	swc1    $f6, 0x0010($sp)
	jal     camera_80289F88
	swc1    $f8, 0x0014($sp)
	sh      $v0, 0x003E($sp)
.L80283320:
	b       .L80283330
	lh      $v0, 0x003E($sp)
	b       .L80283330
	nop
.L80283330:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

camera_80283340:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	sw      $t6, 0x0054($sp)
	lw      $a1, 0x0058($sp)
	addiu   $a0, $sp, 0x0038
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lui     $t7, %hi(_camera_bss+0x328)
	lh      $t7, %lo(_camera_bss+0x328)($t7)
	li      $at, -0x0101
	and     $t8, $t7, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t8, %lo(_camera_bss+0x328)($at)
	lw      $a1, 0x0058($sp)
	addiu   $a0, $sp, 0x0044
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $t9, 0x0058($sp)
	addiu   $a2, $sp, 0x0044
	move    $a0, $t9
	jal     camera_80282D78
	addiu   $a1, $t9, 0x0004
	sh      $v0, 0x0026($sp)
	addiu   $t0, $sp, 0x0044
	lwc1    $f4, 0x0000($t0)
	lw      $t1, 0x0058($sp)
	swc1    $f4, 0x0010($t1)
	addiu   $t2, $sp, 0x0044
	lwc1    $f6, 0x0008($t2)
	lw      $t3, 0x0058($sp)
	swc1    $f6, 0x0018($t3)
	lw      $t4, 0x0058($sp)
	li      $at, 0x0008
	lbu     $t5, 0x0000($t4)
	bne     $t5, $at, .L80283450
	nop
	lw      $t6, 0x0058($sp)
	addiu   $a3, $sp, 0x0050
	lwc1    $f12, 0x0010($t6)
	lwc1    $f14, 0x0014($t6)
	jal     map_80381900
	lw      $a2, 0x0018($t6)
	swc1    $f0, 0x0030($sp)
	lw      $t7, 0x0054($sp)
	addiu   $t0, $sp, 0x0044
	lh      $t8, 0x0076($t7)
	addiu   $t9, $t8, 0x0078
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0004($t0)
	li      $at, 0x42F00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0030($sp)
	addiu   $t1, $sp, 0x0044
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x0004($t1)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80283450
	nop
	lwc1    $f8, 0x0030($sp)
	addiu   $t2, $sp, 0x0044
	swc1    $f8, 0x0004($t2)
.L80283450:
	addiu   $t3, $sp, 0x0044
	lw      $a1, 0x0004($t3)
	lw      $a0, 0x0058($sp)
	jal     camera_8028C8F0
	li      $a2, 0x42480000
	lw      $t4, 0x0058($sp)
	lwc1    $f12, 0x0010($t4)
	jal     map_80381BA0
	lwc1    $f14, 0x0018($t4)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	nop
	add.s   $f16, $f0, $f10
	swc1    $f16, 0x0034($sp)
	lw      $t5, 0x0058($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f18, 0x0014($t5)
	c.le.s  $f18, $f6
	nop
	bc1f    .L802834BC
	nop
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t7, $t6, 0x4000
	b       .L802834D4
	sh      $t7, %lo(_camera_bss+0x328)($at)
.L802834BC:
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	li      $at, -0x4001
	and     $t9, $t8, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t9, %lo(_camera_bss+0x328)($at)
.L802834D4:
	lw      $a0, 0x0058($sp)
	addiu   $a1, $sp, 0x0038
	jal     camera_8028F670
	addiu   $a0, $a0, 0x0010
	lw      $t0, 0x0058($sp)
	addiu   $t1, $sp, 0x0028
	sw      $t1, 0x0010($sp)
	addiu   $a2, $sp, 0x002C
	addiu   $a3, $sp, 0x002A
	addiu   $a0, $t0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t0, 0x0010
	li      $at, 0x44480000
	mtc1    $at, $f8
	lwc1    $f4, 0x002C($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    .L80283550
	nop
	li      $at, 0x44480000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x002C($sp)
	lw      $t2, 0x0058($sp)
	lh      $t3, 0x0028($sp)
	lw      $a2, 0x002C($sp)
	lh      $a3, 0x002A($sp)
	addiu   $a0, $t2, 0x0004
	addiu   $a1, $t2, 0x0010
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
.L80283550:
	jal     camera_802804F4
	lw      $a0, 0x0058($sp)
	b       .L80283568
	lh      $v0, 0x0026($sp)
	b       .L80283568
	nop
.L80283568:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

camera_80283578:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0050($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	sw      $t6, 0x0028($sp)
	li      $t7, 0x1555
	sh      $t7, 0x0026($sp)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	li      $at, 0x8000
	lh      $t9, 0x0012($t8)
	addu    $t0, $t9, $at
	sh      $t0, 0x0024($sp)
	lui     $t1, %hi(_camera_bss+0x32A)
	lh      $t1, %lo(_camera_bss+0x32A)($t1)
	andi    $t2, $t1, 0x0010
	beqz    $t2, .L802835FC
	nop
	lui     $t3, %hi(_camera_bss+0x23E)
	lh      $t3, %lo(_camera_bss+0x23E)($t3)
	li      $at, 0xC4160000
	mtc1    $at, $f14
	mtc1    $t3, $f4
	li      $a2, 0x41A00000
	li      $a3, 0x41A00000
	jal     converge_f
	cvt.s.w $f12, $f4
	trunc.w.s $f6, $f0
	lui     $at, %hi(_camera_bss+0x23E)
	mfc1    $t5, $f6
	b       .L80283630
	sh      $t5, %lo(_camera_bss+0x23E)($at)
.L802835FC:
	lui     $t6, %hi(_camera_bss+0x23E)
	lh      $t6, %lo(_camera_bss+0x23E)($t6)
	mtc1    $0, $f14
	li      $a2, 0x41A00000
	mtc1    $t6, $f8
	li      $a3, 0x41A00000
	jal     converge_f
	cvt.s.w $f12, $f8
	trunc.w.s $f10, $f0
	lui     $at, %hi(_camera_bss+0x23E)
	mfc1    $t8, $f10
	nop
	sh      $t8, %lo(_camera_bss+0x23E)($at)
.L80283630:
	jal     camera_8028B7C4
	nop
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0050($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $t9, 0x0050($sp)
	li      $at, 0x42480000
	mtc1    $at, $f18
	lwc1    $f16, 0x0008($t9)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0008($t9)
	lw      $t0, 0x0050($sp)
	addiu   $t1, $sp, 0x002C
	sw      $t1, 0x0010($sp)
	addiu   $a2, $sp, 0x0038
	addiu   $a3, $sp, 0x002E
	addiu   $a0, $t0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t0, 0x0010
	li      $at, 0x44480000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0034($sp)
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	li      $at, 0x04A8
	lw      $t3, 0x0000($t2)
	bne     $t3, $at, .L802836E0
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0034($sp)
	li      $t4, 0x2800
	sh      $t4, 0x0026($sp)
	addiu   $a0, $sp, 0x002C
	lh      $a1, 0x0024($sp)
	jal     camera_8028976C
	li      $a2, 0x0100
	b       .L802836F0
	nop
.L802836E0:
	addiu   $a0, $sp, 0x002C
	lh      $a1, 0x0024($sp)
	jal     camera_8028976C
	li      $a2, 0x0080
.L802836F0:
	addiu   $a0, $sp, 0x002E
	lh      $a1, 0x0026($sp)
	jal     camera_8028976C
	li      $a2, 0x0100
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	li      $at, 0x04A8
	lw      $t6, 0x0000($t5)
	beq     $t6, $at, .L80283870
	nop
	lui     $t7, %hi(_camera_bss+0xD0)
	lh      $t7, %lo(_camera_bss+0xD0)($t7)
	li      $at, 0x000A
	bne     $t7, $at, .L80283870
	nop
	lui     $t8, %hi(_camera_bss+0x23E)
	lh      $t8, %lo(_camera_bss+0x23E)($t8)
	lwc1    $f18, 0x0034($sp)
	lw      $a0, 0x0050($sp)
	mtc1    $t8, $f10
	lh      $t9, 0x002C($sp)
	addiu   $a1, $sp, 0x003C
	cvt.s.w $f16, $f10
	lh      $a3, 0x002E($sp)
	addiu   $a0, $a0, 0x0004
	sw      $t9, 0x0010($sp)
	add.s   $f4, $f16, $f18
	mfc1    $a2, $f4
	jal     polar_to_cartesian
	nop
	addiu   $t0, $sp, 0x003C
	lwc1    $f6, 0x0000($t0)
	lw      $t1, 0x0050($sp)
	swc1    $f6, 0x0010($t1)
	addiu   $t2, $sp, 0x003C
	lwc1    $f8, 0x0008($t2)
	lw      $t3, 0x0050($sp)
	swc1    $f8, 0x0018($t3)
	lw      $t4, 0x0050($sp)
	li      $a2, 0x41F00000
	addiu   $a0, $t4, 0x0014
	jal     camera_802899CC
	lw      $a1, 0x0008($t4)
	lw      $t5, 0x0050($sp)
	addiu   $t6, $sp, 0x002C
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0038
	addiu   $a3, $sp, 0x002E
	addiu   $a0, $t5, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t5, 0x0004
	lui     $t7, %hi(_camera_bss+0x23E)
	lh      $t7, %lo(_camera_bss+0x23E)($t7)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f16, 0x0034($sp)
	mtc1    $t7, $f4
	lui     $at, %hi(camera_803371C0)
	sub.s   $f18, $f10, $f16
	lwc1    $f10, %lo(camera_803371C0)($at)
	cvt.s.w $f6, $f4
	add.s   $f8, $f18, $f6
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x0030($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f4, 0x0030($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80283818
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0030($sp)
.L80283818:
	lh      $t8, 0x002E($sp)
	li      $at, 0x45800000
	mtc1    $at, $f8
	lwc1    $f10, 0x0030($sp)
	mtc1    $t8, $f4
	mul.s   $f16, $f8, $f10
	cvt.s.w $f18, $f4
	add.s   $f6, $f18, $f16
	trunc.w.s $f8, $f6
	mfc1    $t0, $f8
	nop
	sh      $t0, 0x002E($sp)
	lw      $t1, 0x0050($sp)
	lh      $t2, 0x002C($sp)
	lw      $a2, 0x0038($sp)
	lh      $a3, 0x002E($sp)
	addiu   $a0, $t1, 0x0010
	addiu   $a1, $t1, 0x0004
	jal     polar_to_cartesian
	sw      $t2, 0x0010($sp)
	b       .L802839B0
	nop
.L80283870:
	lui     $t4, %hi(_camera_bss+0x23E)
	lh      $t4, %lo(_camera_bss+0x23E)($t4)
	lwc1    $f18, 0x0034($sp)
	lw      $t3, 0x0050($sp)
	mtc1    $t4, $f10
	lh      $t5, 0x002C($sp)
	lh      $a3, 0x002E($sp)
	cvt.s.w $f4, $f10
	addiu   $a0, $t3, 0x0004
	addiu   $a1, $t3, 0x0010
	sw      $t5, 0x0010($sp)
	add.s   $f16, $f4, $f18
	mfc1    $a2, $f16
	jal     polar_to_cartesian
	nop
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0002
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lw      $t8, 0x0050($sp)
	li      $at, 0x43480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0014($t8)
	addiu   $a3, $sp, 0x004C
	lwc1    $f12, 0x0010($t8)
	lw      $a2, 0x0018($t8)
	jal     map_80381900
	add.s   $f14, $f6, $f8
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	nop
	add.s   $f4, $f0, $f10
	swc1    $f4, 0x0048($sp)
	lw      $t9, 0x0050($sp)
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0014($t9)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80283920
	nop
	lwc1    $f6, 0x0048($sp)
	lw      $t0, 0x0050($sp)
	swc1    $f6, 0x0014($t0)
.L80283920:
	lw      $t1, 0x0050($sp)
	addiu   $t2, $sp, 0x002C
	sw      $t2, 0x0010($sp)
	addiu   $a2, $sp, 0x0038
	addiu   $a3, $sp, 0x002E
	addiu   $a0, $t1, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t1, 0x0010
	lui     $t3, %hi(_camera_bss+0x23E)
	lh      $t3, %lo(_camera_bss+0x23E)($t3)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f8, 0x0038($sp)
	mtc1    $t3, $f10
	nop
	cvt.s.w $f4, $f10
	add.s   $f16, $f4, $f18
	c.lt.s  $f16, $f8
	nop
	bc1f    .L802839B0
	nop
	lui     $t4, %hi(_camera_bss+0x23E)
	lh      $t4, %lo(_camera_bss+0x23E)($t4)
	lwc1    $f4, 0x0034($sp)
	mtc1    $t4, $f6
	nop
	cvt.s.w $f10, $f6
	add.s   $f18, $f10, $f4
	swc1    $f18, 0x0038($sp)
	lw      $t5, 0x0050($sp)
	lh      $t6, 0x002C($sp)
	lw      $a2, 0x0038($sp)
	lh      $a3, 0x002E($sp)
	addiu   $a0, $t5, 0x0004
	addiu   $a1, $t5, 0x0010
	jal     polar_to_cartesian
	sw      $t6, 0x0010($sp)
.L802839B0:
	lw      $t7, 0x0050($sp)
	addiu   $a0, $t7, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $t7, 0x0010
	sh      $v0, 0x002C($sp)
	b       .L802839D4
	lh      $v0, 0x002C($sp)
	b       .L802839D4
	nop
.L802839D4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

camera_802839E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80283340
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sh      $v0, 0x003A($t6)
	b       .L80283A08
	nop
.L80283A08:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int camera_80283A18(struct camera *cam, VECF, VECF) */
.globl camera_80283A18
camera_80283A18:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	b       .L80283A2C
	nop
.L80283A2C:
	jr      $ra
	nop

camera_80283A34:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80283340
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sh      $v0, 0x003A($t6)
	b       .L80283A58
	nop
.L80283A58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int camera_80283A68(struct camera *cam, VECF, VECF) */
.globl camera_80283A68
camera_80283A68:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lui     $t8, %hi(_camera_bss+0x252)
	lh      $t8, %lo(_camera_bss+0x252)($t8)
	lh      $t7, 0x0012($t6)
	li      $at, 0x8000
	addu    $t9, $t7, $t8
	addu    $t0, $t9, $at
	sh      $t0, 0x002E($sp)
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f4, %lo(camera_8032DF4C)($at)
	lh      $t2, 0x002E($sp)
	li      $t1, 0x05B0
	sw      $t1, 0x0014($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	li      $a2, 0x42FA0000
	li      $a3, 0x42FA0000
	swc1    $f4, 0x0010($sp)
	jal     camera_8027FE20
	sw      $t2, 0x0018($sp)
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	b       .L80283AE8
	lh      $v0, 0x0012($t3)
	b       .L80283AE8
	nop
.L80283AE8:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80283AF8:
	addiu   $sp, $sp, -0x00C8
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x00C8($sp)
	sw      $s0, 0x0028($sp)
	sdc1    $f20, 0x0020($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x8000
	lh      $t7, 0x0012($t6)
	addu    $t8, $t7, $at
	sh      $t8, 0x006C($sp)
	sh      $0, 0x0050($sp)
	sw      $0, 0x0048($sp)
	sw      $0, 0x0044($sp)
	la.u    $t9, _camera_bss+0x178
	la.l    $t9, _camera_bss+0x178
	lwc1    $f12, 0x0024($t9)
	lwc1    $f14, 0x0028($t9)
	lw      $a2, 0x002C($t9)
	jal     map_80381264
	addiu   $a3, $sp, 0x0094
	swc1    $f0, 0x0040($sp)
	jal     camera_8028BD98
	lw      $a0, 0x00C8($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x00C8($sp)
	addiu   $t0, $sp, 0x006E
	sw      $t0, 0x0010($sp)
	addiu   $a2, $sp, 0x0080
	addiu   $a3, $sp, 0x0070
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L80283BE8
	nop
	jal     camera_80288718
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, .L80283BC4
	nop
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f4, %lo(camera_8032DF4C)($at)
	lui     $at, %hi(camera_803371C4)
	lwc1    $f6, %lo(camera_803371C4)($at)
	add.s   $f8, $f4, $f6
	b       .L80283BE0
	swc1    $f8, 0x007C($sp)
.L80283BC4:
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f10, %lo(camera_8032DF4C)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f16
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x007C($sp)
.L80283BE0:
	b       .L80283BF4
	nop
.L80283BE8:
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f4, %lo(camera_8032DF4C)($at)
	swc1    $f4, 0x007C($sp)
.L80283BF4:
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	li      $at, 0x00200000
	lw      $t4, 0x0000($t3)
	and     $t5, $t4, $at
	bnez    $t5, .L80283C1C
	nop
	li      $at, 0x04A8
	bne     $t4, $at, .L80283C38
	nop
.L80283C1C:
	lui     $at, %hi(camera_803371C8)
	lwc1    $f8, %lo(camera_803371C8)($at)
	lwc1    $f6, 0x007C($sp)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x007C($sp)
	jal     camera_80288888
	li      $a0, 0x0003
.L80283C38:
	lui     $at, %hi(_camera_bss+0x244)
	lwc1    $f16, %lo(_camera_bss+0x244)($at)
	mtc1    $0, $f18
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    .L80283CA4
	nop
	lwc1    $f4, 0x0080($sp)
	lwc1    $f6, 0x007C($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80283C9C
	nop
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x0080($sp)
	lwc1    $f18, 0x007C($sp)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	swc1    $f16, 0x0080($sp)
	bc1f    .L80283C9C
	nop
	lwc1    $f4, 0x007C($sp)
	swc1    $f4, 0x0080($sp)
.L80283C9C:
	b       .L80283D64
	nop
.L80283CA4:
	lui     $at, %hi(_camera_bss+0x244)
	lwc1    $f6, %lo(_camera_bss+0x244)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	mtc1    $0, $f16
	lui     $at, %hi(_camera_bss+0x244)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f10, $f16
	swc1    $f10, %lo(_camera_bss+0x244)($at)
	bc1f    .L80283CDC
	nop
	mtc1    $0, $f18
	lui     $at, %hi(_camera_bss+0x244)
	swc1    $f18, %lo(_camera_bss+0x244)($at)
.L80283CDC:
	lwc1    $f4, 0x0080($sp)
	lwc1    $f6, 0x007C($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80283D20
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0080($sp)
	lwc1    $f18, 0x007C($sp)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	swc1    $f16, 0x0080($sp)
	bc1f    .L80283D20
	nop
	lwc1    $f4, 0x007C($sp)
	swc1    $f4, 0x0080($sp)
.L80283D20:
	lwc1    $f6, 0x0080($sp)
	lwc1    $f8, 0x007C($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80283D64
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0080($sp)
	lwc1    $f4, 0x007C($sp)
	add.s   $f18, $f10, $f16
	c.lt.s  $f4, $f18
	swc1    $f18, 0x0080($sp)
	bc1f    .L80283D64
	nop
	lwc1    $f6, 0x007C($sp)
	swc1    $f6, 0x0080($sp)
.L80283D64:
	lui     $t6, %hi(_camera_bss+0x248)
	lh      $t6, %lo(_camera_bss+0x248)($t6)
	bnez    $t6, .L80283E04
	nop
	lw      $t7, 0x00C8($sp)
	li      $at, 0x0010
	lbu     $t8, 0x0000($t7)
	bne     $t8, $at, .L80283D94
	nop
	li      $t9, 0x00C0
	b       .L80283D9C
	sh      $t9, 0x0052($sp)
.L80283D94:
	li      $t0, 0x0100
	sh      $t0, 0x0052($sp)
.L80283D9C:
	lui     $t1, %hi(cont_1)
	lw      $t1, %lo(cont_1)($t1)
	mtc1    $0, $f10
	move    $s0, $0
	lwc1    $f8, 0x0004($t1)
	c.eq.s  $f8, $f10
	nop
	bc1t    .L80283DC4
	nop
	li      $s0, 0x0001
.L80283DC4:
	bnez    $s0, .L80283DEC
	nop
	lwc1    $f16, 0x0008($t1)
	mtc1    $0, $f18
	move    $s0, $0
	c.eq.s  $f16, $f18
	nop
	bc1t    .L80283DEC
	nop
	li      $s0, 0x0001
.L80283DEC:
	beqz    $s0, .L80283DFC
	nop
	li      $t2, 0x0020
	sh      $t2, 0x0052($sp)
.L80283DFC:
	b       .L80283E54
	nop
.L80283E04:
	lui     $t3, %hi(_camera_bss+0x248)
	lh      $t3, %lo(_camera_bss+0x248)($t3)
	bgez    $t3, .L80283E20
	nop
	lh      $t5, 0x006E($sp)
	addiu   $t4, $t5, 0x0200
	sh      $t4, 0x006E($sp)
.L80283E20:
	lui     $t6, %hi(_camera_bss+0x248)
	lh      $t6, %lo(_camera_bss+0x248)($t6)
	blez    $t6, .L80283E3C
	nop
	lh      $t7, 0x006E($sp)
	addiu   $t8, $t7, -0x0200
	sh      $t8, 0x006E($sp)
.L80283E3C:
	la.u    $a0, _camera_bss+0x248
	la.l    $a0, _camera_bss+0x248
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0100
	sh      $0, 0x0052($sp)
.L80283E54:
	li      $t9, 0x0400
	lui     $at, %hi(camera_8032DF34)
	sh      $t9, %lo(camera_8032DF34)($at)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x00C8($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_8028ACCC
	addiu   $a1, $a1, 0x0010
	swc1    $f0, 0x0058($sp)
	lui     $t0, %hi(_camera_bss+0x32A)
	lh      $t0, %lo(_camera_bss+0x32A)($t0)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L80283FA8
	nop
	li      $at, 0x437A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0058($sp)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80283EC8
	nop
	lui     $t2, %hi(_camera_bss+0x32A)
	lh      $t2, %lo(_camera_bss+0x32A)($t2)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	and     $t3, $t2, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t3, %lo(_camera_bss+0x32A)($at)
.L80283EC8:
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	lh      $t6, 0x006E($sp)
	mtc1    $0, $f16
	lh      $t4, 0x0012($t5)
	subu    $t7, $t4, $t6
	bgez    $t7, .L80283EF0
	sra     $t8, $t7, 1
	addiu   $at, $t7, 0x0001
	sra     $t8, $at, 1
.L80283EF0:
	mtc1    $t8, $f8
	nop
	cvt.s.w $f10, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80283F14
	nop
	b       .L80283F40
	move    $s0, $t8
.L80283F14:
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	lh      $t1, 0x006E($sp)
	lh      $t0, 0x0012($t9)
	subu    $s0, $t0, $t1
	bgez    $s0, .L80283F38
	sra     $t2, $s0, 1
	addiu   $at, $s0, 0x0001
	sra     $t2, $at, 1
.L80283F38:
	move    $s0, $t2
	subu    $s0, $0, $s0
.L80283F40:
	slti    $at, $s0, 0x1800
	beqz    $at, .L80283FA0
	nop
	lui     $t3, %hi(_camera_bss+0x32A)
	lh      $t3, %lo(_camera_bss+0x32A)($t3)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	and     $t5, $t3, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t5, %lo(_camera_bss+0x32A)($at)
	lui     $t4, %hi(_camera_bss+0x100)
	lh      $t4, %lo(_camera_bss+0x100)($t4)
	li      $at, 0x8000
	addu    $t6, $t4, $at
	sh      $t6, 0x006E($sp)
	li      $at, 0x44480000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0080($sp)
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t8, $t7, 0x0002
	sh      $t8, %lo(_camera_bss+0x32A)($at)
.L80283FA0:
	b       .L80284090
	nop
.L80283FA8:
	li      $at, 0x437A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0058($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80284090
	nop
	lhu     $t9, 0x006E($sp)
	li      $at, 0x437A0000
	mtc1    $at, $f8
	lwc1    $f10, 0x0058($sp)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_sin)
	sub.s   $f16, $f8, $f10
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	lw      $t2, 0x00C8($sp)
	mul.s   $f4, $f16, $f18
	lwc1    $f6, 0x0010($t2)
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0010($t2)
	lhu     $t3, 0x006E($sp)
	li      $at, 0x437A0000
	mtc1    $at, $f10
	lwc1    $f16, 0x0058($sp)
	sra     $t5, $t3, 4
	sll     $t4, $t5, 2
	lui     $at, %hi(math_cos)
	sub.s   $f18, $f10, $f16
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	lw      $t6, 0x00C8($sp)
	mul.s   $f4, $f18, $f6
	lwc1    $f8, 0x0018($t6)
	add.s   $f10, $f8, $f4
	swc1    $f10, 0x0018($t6)
	lui     $t7, %hi(_camera_bss+0x248)
	lh      $t7, %lo(_camera_bss+0x248)($t7)
	bnez    $t7, .L80284084
	nop
	li      $t8, 0x1000
	sh      $t8, 0x0052($sp)
	lui     $at, %hi(camera_8032DF34)
	sh      $0, %lo(camera_8032DF34)($at)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x00C8($sp)
	addiu   $t9, $sp, 0x006E
	sw      $t9, 0x0010($sp)
	addiu   $a2, $sp, 0x0080
	addiu   $a3, $sp, 0x0070
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
.L80284084:
	lw      $t0, 0x0044($sp)
	ori     $t1, $t0, 0x0001
	sw      $t1, 0x0044($sp)
.L80284090:
	lui     $t2, %hi(cont_1)
	lw      $t2, %lo(cont_1)($t2)
	li      $at, 0xC1800000
	mtc1    $at, $f16
	lwc1    $f18, 0x0008($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802840C0
	nop
	lh      $t3, 0x006E($sp)
	lw      $t5, 0x00C8($sp)
	sh      $t3, 0x0002($t5)
.L802840C0:
	lui     $at, %hi(camera_803371CC)
	lwc1    $f6, %lo(camera_803371CC)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	addiu   $a0, $sp, 0x0068
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	addiu   $a3, $sp, 0x0064
	swc1    $f6, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f8, 0x0014($sp)
	lw      $a1, 0x00C8($sp)
	addiu   $a0, $sp, 0x00B0
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a0, 0x00C8($sp)
	addiu   $a1, $sp, 0x00B0
	addiu   $a2, $sp, 0x0072
	jal     camera_8028F914
	li      $a3, 0x0600
	sw      $v0, 0x0048($sp)
	lw      $t4, 0x0048($sp)
	li      $at, 0x0003
	bne     $t4, $at, .L802841D4
	nop
	lh      $t6, 0x0072($sp)
	lui     $at, %hi(_camera_bss+0xFC)
	sh      $t6, %lo(_camera_bss+0xFC)($at)
	lh      $t7, 0x006E($sp)
	lui     $at, %hi(_camera_bss+0xFE)
	sh      $t7, %lo(_camera_bss+0xFE)($at)
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t9, $t8, 0x0200
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	addiu   $t0, $sp, 0x005C
	sw      $t0, 0x0010($sp)
	addiu   $a1, $sp, 0x00B0
	addiu   $a2, $sp, 0x0058
	addiu   $a3, $sp, 0x005E
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x006E
	lh      $a1, 0x0072($sp)
	jal     camera_802894B4
	li      $a2, 0x000A
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lh      $t1, 0x005C($sp)
	addiu   $a1, $sp, 0x00B0
	lw      $a2, 0x0058($sp)
	lh      $a3, 0x005E($sp)
	addiu   $a0, $a0, 0x0004
	jal     polar_to_cartesian
	sw      $t1, 0x0010($sp)
	lui     $t2, %hi(_camera_bss+0xFE)
	lh      $t2, %lo(_camera_bss+0xFE)($t2)
	lh      $t3, 0x006E($sp)
	subu    $t5, $t2, $t3
	bgez    $t5, .L802841C8
	sra     $t4, $t5, 8
	addiu   $at, $t5, 0x00FF
	sra     $t4, $at, 8
.L802841C8:
	lui     $at, %hi(_camera_bss+0xFE)
	b       .L80284334
	sh      $t4, %lo(_camera_bss+0xFE)($at)
.L802841D4:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lwc1    $f4, 0x0054($t6)
	mtc1    $0, $f10
	nop
	c.eq.s  $f4, $f10
	nop
	bc1f    .L8028429C
	nop
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	andi    $t8, $t7, 0x0200
	beqz    $t8, .L8028428C
	nop
	lh      $t9, 0x006C($sp)
	lh      $t0, 0x006E($sp)
	subu    $t1, $t9, $t0
	bgez    $t1, .L80284228
	sra     $t2, $t1, 8
	addiu   $at, $t1, 0x00FF
	sra     $t2, $at, 8
.L80284228:
	bltz    $t2, .L8028423C
	nop
	li      $t3, -0x0001
	b       .L80284244
	sh      $t3, 0x003E($sp)
.L8028423C:
	li      $t5, 0x0001
	sh      $t5, 0x003E($sp)
.L80284244:
	lui     $t4, %hi(_camera_bss+0xFE)
	lh      $t4, %lo(_camera_bss+0xFE)($t4)
	blez    $t4, .L80284260
	nop
	lh      $t6, 0x003E($sp)
	bgtz    $t6, .L8028427C
	nop
.L80284260:
	lui     $t7, %hi(_camera_bss+0xFE)
	lh      $t7, %lo(_camera_bss+0xFE)($t7)
	bgez    $t7, .L80284284
	nop
	lh      $t8, 0x003E($sp)
	bgez    $t8, .L80284284
	nop
.L8028427C:
	lh      $t9, 0x0052($sp)
	sh      $t9, 0x0050($sp)
.L80284284:
	b       .L80284294
	nop
.L8028428C:
	lh      $t0, 0x0052($sp)
	sh      $t0, 0x0050($sp)
.L80284294:
	b       .L802842CC
	nop
.L8028429C:
	lh      $t1, 0x0052($sp)
	li      $at, 0x1000
	bne     $t1, $at, .L802842B4
	nop
	lh      $t2, 0x0052($sp)
	sh      $t2, 0x0050($sp)
.L802842B4:
	lui     $t3, %hi(_camera_bss+0x32A)
	lh      $t3, %lo(_camera_bss+0x32A)($t3)
	li      $at, -0x0201
	and     $t5, $t3, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t5, %lo(_camera_bss+0x32A)($at)
.L802842CC:
	lw      $t4, 0x0048($sp)
	beqz    $t4, .L802842E4
	nop
	lh      $t6, 0x0050($sp)
	addu    $t7, $t6, $t6
	sh      $t7, 0x0050($sp)
.L802842E4:
	lw      $t8, 0x0044($sp)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L80284304
	nop
	lw      $t0, 0x0048($sp)
	beqz    $t0, .L80284304
	nop
	sh      $0, 0x0050($sp)
.L80284304:
	lh      $t1, 0x0050($sp)
	beqz    $t1, .L80284334
	nop
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L80284334
	nop
	addiu   $a0, $sp, 0x006E
	lh      $a1, 0x006C($sp)
	jal     camera_8028976C
	lh      $a2, 0x0050($sp)
.L80284334:
	lw      $t2, 0x0048($sp)
	bnez    $t2, .L8028437C
	nop
	lui     $t3, %hi(_camera_bss+0x32A)
	lh      $t3, %lo(_camera_bss+0x32A)($t3)
	andi    $t5, $t3, 0x0200
	bnez    $t5, .L8028437C
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f16, 0x007C($sp)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	sub.s   $f6, $f16, $f18
	addiu   $a0, $sp, 0x0080
	mfc1    $a1, $f6
	jal     camera_802893F4
	nop
.L8028437C:
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lh      $t4, 0x006E($sp)
	addiu   $a1, $sp, 0x00B0
	lw      $a2, 0x0080($sp)
	lh      $a3, 0x0070($sp)
	addiu   $a0, $a0, 0x0004
	jal     polar_to_cartesian
	sw      $t4, 0x0010($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	lwc1    $f8, 0x0068($sp)
	addiu   $t6, $sp, 0x00B0
	lwc1    $f16, 0x0004($t6)
	add.s   $f10, $f8, $f4
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0004($t6)
	addiu   $a0, $sp, 0x00B0
	li      $a1, 0x41200000
	jal     camera_80288F5C
	li      $a2, 0x42A00000
	beqz    $v0, .L802843EC
	nop
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t8, $t7, 0x0200
	sh      $t8, %lo(_camera_bss+0x32A)($at)
.L802843EC:
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	lw      $t0, 0x00C8($sp)
	lwc1    $f6, 0x0004($t9)
	swc1    $f6, 0x0004($t0)
	lui     $t1, %hi(camera_8032DF60)
	lw      $t1, %lo(camera_8032DF60)($t1)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	lwc1    $f8, 0x0008($t1)
	lwc1    $f10, 0x0064($sp)
	lw      $t2, 0x00C8($sp)
	add.s   $f16, $f8, $f4
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0008($t2)
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	lw      $t5, 0x00C8($sp)
	lwc1    $f6, 0x000C($t3)
	swc1    $f6, 0x000C($t5)
	li      $at, 0x42FA0000
	mtc1    $at, $f8
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f4, %lo(_camera_bss+0xCC)($at)
	add.s   $f16, $f8, $f4
	swc1    $f16, 0x0088($sp)
	lui     $t4, %hi(_camera_bss+0xC8)
	lw      $t4, %lo(_camera_bss+0xC8)($t4)
	sw      $t4, 0x00A0($sp)
	addiu   $t6, $sp, 0x00B0
	li      $at, 0x42480000
	mtc1    $at, $f18
	lwc1    $f10, 0x0004($t6)
	lwc1    $f12, 0x0000($t6)
	lw      $a2, 0x0008($t6)
	addiu   $a3, $sp, 0x009C
	jal     map_80381900
	add.s   $f14, $f10, $f18
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	nop
	add.s   $f8, $f0, $f6
	swc1    $f8, 0x0090($sp)
	lui     $at, %hi(camera_803371D0)
	lwc1    $f4, %lo(camera_803371D0)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	swc1    $f4, 0x004C($sp)
	c.lt.s  $f4, $f16
	nop
	bc1f    .L80284560
	nop
.L802844BC:
	lui     $a2, %hi(camera_8032DF60)
	lw      $a2, %lo(camera_8032DF60)($a2)
	addiu   $a0, $sp, 0x00BC
	addiu   $a1, $sp, 0x00B0
	lw      $a3, 0x004C($sp)
	jal     camera_8028A834
	addiu   $a2, $a2, 0x0004
	addiu   $t7, $sp, 0x00BC
	lwc1    $f12, 0x0000($t7)
	lwc1    $f14, 0x0004($t7)
	lw      $a2, 0x0008($t7)
	jal     map_80381900
	addiu   $a3, $sp, 0x0098
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	nop
	add.s   $f18, $f0, $f10
	swc1    $f18, 0x008C($sp)
	lw      $t8, 0x0098($sp)
	beqz    $t8, .L80284538
	nop
	lwc1    $f6, 0x008C($sp)
	lwc1    $f8, 0x0088($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80284538
	nop
	lwc1    $f4, 0x008C($sp)
	swc1    $f4, 0x0088($sp)
	lw      $t9, 0x0098($sp)
	sw      $t9, 0x00A0($sp)
.L80284538:
	lui     $at, %hi(camera_803371D4)
	lwc1    $f10, %lo(camera_803371D4)($at)
	lwc1    $f16, 0x004C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	add.s   $f18, $f16, $f10
	c.lt.s  $f18, $f6
	swc1    $f18, 0x004C($sp)
	bc1t    .L802844BC
	nop
.L80284560:
	lui     $t0, %hi(_camera_bss+0x164)
	lh      $t0, %lo(_camera_bss+0x164)($t0)
	andi    $t1, $t0, 0x0001
	beqz    $t1, .L802845B4
	nop
	li      $at, 0x420C0000
	mtc1    $at, $f4
	lwc1    $f8, 0x0088($sp)
	sub.s   $f16, $f8, $f4
	swc1    $f16, 0x0088($sp)
	li      $at, 0x420C0000
	mtc1    $at, $f18
	lwc1    $f10, 0x0090($sp)
	sub.s   $f6, $f10, $f18
	swc1    $f6, 0x0090($sp)
	lw      $t2, 0x00C8($sp)
	li      $at, 0x41C80000
	mtc1    $at, $f4
	lwc1    $f8, 0x0008($t2)
	sub.s   $f16, $f8, $f4
	swc1    $f16, 0x0008($t2)
.L802845B4:
	addiu   $t3, $sp, 0x00B0
	lwc1    $f12, 0x0000($t3)
	jal     map_80381BA0
	lwc1    $f14, 0x0008($t3)
	swc1    $f0, 0x0078($sp)
	lui     $at, %hi(camera_803371D8)
	lwc1    $f18, %lo(camera_803371D8)($at)
	lwc1    $f10, 0x0078($sp)
	c.eq.s  $f10, $f18
	nop
	bc1t    .L802846F4
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0078($sp)
	add.s   $f4, $f6, $f8
	swc1    $f4, 0x0078($sp)
	lwc1    $f16, 0x0078($sp)
	lwc1    $f10, 0x0088($sp)
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x0060($sp)
	lui     $t5, %hi(_camera_bss+0x328)
	lh      $t5, %lo(_camera_bss+0x328)($t5)
	andi    $t4, $t5, 0x0020
	bnez    $t4, .L8028466C
	nop
	li      $at, 0x44480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0060($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80284664
	nop
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, .L80284664
	nop
	lui     $t9, %hi(_camera_bss+0x328)
	lh      $t9, %lo(_camera_bss+0x328)($t9)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t0, $t9, 0x0020
	sh      $t0, %lo(_camera_bss+0x328)($at)
.L80284664:
	b       .L802846B8
	nop
.L8028466C:
	li      $at, 0x43C80000
	mtc1    $at, $f16
	lwc1    $f4, 0x0060($sp)
	c.lt.s  $f4, $f16
	nop
	bc1t    .L802846A0
	nop
	lui     $t1, %hi(camera_8032DF60)
	lw      $t1, %lo(camera_8032DF60)($t1)
	lw      $t2, 0x0000($t1)
	andi    $t3, $t2, 0x4000
	bnez    $t3, .L802846B8
	nop
.L802846A0:
	lui     $t5, %hi(_camera_bss+0x328)
	lh      $t5, %lo(_camera_bss+0x328)($t5)
	li      $at, -0x0021
	and     $t4, $t5, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t4, %lo(_camera_bss+0x328)($at)
.L802846B8:
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	andi    $t7, $t6, 0x0020
	bnez    $t7, .L802846EC
	nop
	lwc1    $f10, 0x0090($sp)
	lwc1    $f18, 0x0078($sp)
	c.lt.s  $f10, $f18
	nop
	bc1f    .L802846EC
	nop
	lwc1    $f6, 0x0078($sp)
	swc1    $f6, 0x0090($sp)
.L802846EC:
	b       .L8028470C
	nop
.L802846F4:
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	li      $at, -0x0021
	and     $t9, $t8, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t9, %lo(_camera_bss+0x328)($at)
.L8028470C:
	lwc1    $f8, 0x0090($sp)
	addiu   $t0, $sp, 0x00B0
	swc1    $f8, 0x0004($t0)
	addiu   $a0, $sp, 0x00BC
	jal     vecf_cpy
	addiu   $a1, $sp, 0x00B0
	addiu   $t1, $sp, 0x00BC
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f4, 0x0004($t1)
	sub.s   $f10, $f4, $f16
	swc1    $f10, 0x0004($t1)
	lw      $t2, 0x00A0($sp)
	beqz    $t2, .L802847B4
	nop
	lwc1    $f18, 0x0090($sp)
	lwc1    $f6, 0x0088($sp)
	c.le.s  $f18, $f6
	nop
	bc1f    .L802847B4
	nop
	lw      $a0, 0x00C8($sp)
	li      $t3, -0x0001
	sw      $t3, 0x0010($sp)
	addiu   $a1, $sp, 0x00BC
	lw      $a2, 0x00A0($sp)
	move    $a3, $0
	jal     camera_8028A6BC
	addiu   $a0, $a0, 0x0004
	sw      $v0, 0x0048($sp)
	lw      $t5, 0x0048($sp)
	li      $at, 0x0001
	beq     $t5, $at, .L802847B4
	nop
	lwc1    $f8, 0x0040($sp)
	lwc1    $f4, 0x0088($sp)
	c.lt.s  $f4, $f8
	nop
	bc1f    .L802847B4
	nop
	lwc1    $f16, 0x0088($sp)
	swc1    $f16, 0x0090($sp)
.L802847B4:
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0068($sp)
	lw      $t4, 0x00C8($sp)
	li      $at, 0x0010
	lbu     $t6, 0x0000($t4)
	bne     $t6, $at, .L80284834
	nop
	lui     $t7, %hi(_camera_bss+0x328)
	lh      $t7, %lo(_camera_bss+0x328)($t7)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L80284824
	nop
	lui     $at, %hi(camera_803371DC)
	lwc1    $f18, %lo(camera_803371DC)($at)
	swc1    $f18, 0x0068($sp)
	lui     $t9, %hi(camera_stagescene)
	lw      $t9, %lo(camera_stagescene)($t9)
	li      $at, 0x0082
	bne     $t9, $at, .L8028481C
	nop
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0068($sp)
	div.s   $f4, $f6, $f8
	swc1    $f4, 0x0068($sp)
.L8028481C:
	b       .L80284834
	nop
.L80284824:
	li      $at, 0x42C80000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0068($sp)
.L80284834:
	lui     $t0, %hi(_camera_bss+0x328)
	lh      $t0, %lo(_camera_bss+0x328)($t0)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L802848A4
	nop
	lui     $t2, %hi(_camera_bss+0x164)
	lh      $t2, %lo(_camera_bss+0x164)($t2)
	andi    $t3, $t2, 0x0001
	beqz    $t3, .L802848A4
	nop
	lui     $at, %hi(camera_803371E0)
	lwc1    $f10, %lo(camera_803371E0)($at)
	swc1    $f10, 0x0068($sp)
	lui     $t5, %hi(camera_stagescene)
	lw      $t5, %lo(camera_stagescene)($t5)
	li      $at, 0x0082
	beq     $t5, $at, .L80284890
	nop
	lui     $t4, %hi(stage_index)
	lh      $t4, %lo(stage_index)($t4)
	li      $at, 0x0006
	bne     $t4, $at, .L802848A4
	nop
.L80284890:
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f18, 0x0068($sp)
	div.s   $f8, $f18, $f6
	swc1    $f8, 0x0068($sp)
.L802848A4:
	addiu   $t6, $sp, 0x00B0
	lwc1    $f12, 0x0000($t6)
	jal     map_80381D3C
	lwc1    $f14, 0x0008($t6)
	swc1    $f0, 0x0074($sp)
	lui     $at, %hi(camera_803371E4)
	lwc1    $f16, %lo(camera_803371E4)($at)
	lwc1    $f4, 0x0074($sp)
	c.eq.s  $f4, $f16
	nop
	bc1t    .L8028490C
	nop
	li      $at, 0x43020000
	mtc1    $at, $f18
	lwc1    $f10, 0x0074($sp)
	lw      $t7, 0x00C8($sp)
	add.s   $f20, $f10, $f18
	swc1    $f20, 0x0074($sp)
	lwc1    $f6, 0x0014($t7)
	c.lt.s  $f6, $f20
	nop
	bc1f    .L8028490C
	nop
	lwc1    $f8, 0x0074($sp)
	lw      $t8, 0x00C8($sp)
	swc1    $f8, 0x0014($t8)
.L8028490C:
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	li      $at, 0x00200000
	lw      $t0, 0x0000($t9)
	and     $t1, $t0, $at
	bnez    $t1, .L80284934
	nop
	li      $at, 0x04A8
	bne     $t0, $at, .L8028499C
	nop
.L80284934:
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	li      $at, 0x43C80000
	mtc1    $at, $f16
	lwc1    $f4, 0x0008($t2)
	add.s   $f10, $f4, $f16
	swc1    $f10, 0x0090($sp)
	lw      $t3, 0x00C8($sp)
	li      $at, 0x0010
	lbu     $t5, 0x0000($t3)
	bne     $t5, $at, .L80284978
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f18, 0x0090($sp)
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x0090($sp)
.L80284978:
	lui     $at, %hi(camera_803371E8)
	lwc1    $f4, %lo(camera_803371E8)($at)
	swc1    $f4, 0x0040($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x00C8($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
.L8028499C:
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	li      $at, 0x00100000
	lw      $t6, 0x0000($t4)
	and     $t7, $t6, $at
	beqz    $t7, .L80284A44
	nop
	la.u    $t8, player_data
	la.l    $t8, player_data
	lw      $t9, 0x0080($t8)
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	lwc1    $f16, 0x00A4($t9)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0090($sp)
	lui     $t1, %hi(camera_8032DF60)
	lw      $t1, %lo(camera_8032DF60)($t1)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x0008($t1)
	lwc1    $f16, 0x0090($sp)
	sub.s   $f4, $f6, $f8
	c.lt.s  $f16, $f4
	nop
	bc1f    .L80284A20
	nop
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f10, 0x0008($t0)
	sub.s   $f6, $f10, $f18
	swc1    $f6, 0x0090($sp)
.L80284A20:
	lui     $at, %hi(camera_803371EC)
	lwc1    $f8, %lo(camera_803371EC)($at)
	swc1    $f8, 0x0040($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x00C8($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
.L80284A44:
	lui     $at, %hi(camera_803371F0)
	lwc1    $f16, %lo(camera_803371F0)($at)
	lwc1    $f4, 0x0090($sp)
	c.eq.s  $f4, $f16
	nop
	bc1t    .L80284A80
	nop
	lwc1    $f10, 0x0090($sp)
	lwc1    $f18, 0x0068($sp)
	add.s   $f6, $f10, $f18
	swc1    $f6, 0x0090($sp)
	lw      $a0, 0x00C8($sp)
	lw      $a1, 0x0090($sp)
	jal     camera_8028C8F0
	li      $a2, 0x41A00000
.L80284A80:
	addiu   $t2, $sp, 0x00B0
	lwc1    $f8, 0x0000($t2)
	lw      $t3, 0x00C8($sp)
	swc1    $f8, 0x0010($t3)
	addiu   $t5, $sp, 0x00B0
	lwc1    $f4, 0x0008($t5)
	lw      $t4, 0x00C8($sp)
	swc1    $f4, 0x0018($t4)
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lwc1    $f16, 0x0024($t6)
	addiu   $t7, $sp, 0x00B0
	swc1    $f16, 0x0000($t7)
	lw      $t8, 0x00C8($sp)
	addiu   $t9, $sp, 0x00B0
	lwc1    $f10, 0x0014($t8)
	swc1    $f10, 0x0004($t9)
	la.u    $t1, _camera_bss+0x178
	la.l    $t1, _camera_bss+0x178
	lwc1    $f18, 0x002C($t1)
	addiu   $t0, $sp, 0x00B0
	swc1    $f18, 0x0008($t0)
	lw      $a1, 0x00C8($sp)
	addiu   $t2, $sp, 0x005C
	sw      $t2, 0x0010($sp)
	addiu   $a0, $sp, 0x00B0
	addiu   $a2, $sp, 0x0080
	addiu   $a3, $sp, 0x005E
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0080($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80284B44
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0080($sp)
	lw      $a1, 0x00C8($sp)
	lh      $t3, 0x005C($sp)
	addiu   $a0, $sp, 0x00B0
	lw      $a2, 0x0080($sp)
	lh      $a3, 0x005E($sp)
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
.L80284B44:
	lui     $t5, %hi(_camera_bss+0xD0)
	lh      $t5, %lo(_camera_bss+0xD0)($t5)
	li      $at, 0x000A
	beq     $t5, $at, .L80284BB8
	nop
	lw      $t4, 0x00C8($sp)
	addiu   $t6, $sp, 0x005C
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0080
	addiu   $a3, $sp, 0x005E
	addiu   $a0, $t4, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t4, 0x0010
	lwc1    $f16, 0x0080($sp)
	lwc1    $f10, 0x007C($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80284BB8
	nop
	lwc1    $f18, 0x007C($sp)
	swc1    $f18, 0x0080($sp)
	lw      $t7, 0x00C8($sp)
	lh      $t8, 0x005C($sp)
	lw      $a2, 0x0080($sp)
	lh      $a3, 0x005E($sp)
	addiu   $a0, $t7, 0x0004
	addiu   $a1, $t7, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
.L80284BB8:
	lui     $at, %hi(camera_803371F4)
	lwc1    $f8, %lo(camera_803371F4)($at)
	lwc1    $f6, 0x0040($sp)
	c.eq.s  $f6, $f8
	nop
	bc1t    .L80284C44
	nop
	li      $at, 0x43160000
	mtc1    $at, $f16
	lwc1    $f4, 0x0040($sp)
	lw      $t9, 0x00C8($sp)
	sub.s   $f10, $f4, $f16
	swc1    $f10, 0x0040($sp)
	lwc1    $f18, 0x0014($t9)
	c.lt.s  $f10, $f18
	nop
	bc1f    .L80284C44
	nop
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	li      $t1, -0x0001
	sw      $t1, 0x0010($sp)
	addiu   $a0, $t9, 0x0010
	lw      $a2, 0x0094($sp)
	move    $a3, $0
	jal     camera_8028A6BC
	addiu   $a1, $a1, 0x0004
	sw      $v0, 0x0048($sp)
	lw      $t0, 0x0048($sp)
	li      $at, 0x0001
	bne     $t0, $at, .L80284C44
	nop
	lwc1    $f6, 0x0040($sp)
	lw      $t2, 0x00C8($sp)
	swc1    $f6, 0x0014($t2)
.L80284C44:
	lui     $t3, %hi(camera_stagescene)
	lw      $t3, %lo(camera_stagescene)($t3)
	li      $at, 0x00B2
	bne     $t3, $at, .L80284C94
	nop
	lui     $at, %hi(camera_803371F8)
	lwc1    $f8, %lo(camera_803371F8)($at)
	lw      $t5, 0x00C8($sp)
	lui     $at, %hi(camera_803371FC)
	lwc1    $f4, %lo(camera_803371FC)($at)
	li.u    $a2, 0x450CE000
	li.u    $a3, 0xC56CD000
	li.l    $a3, 0xC56CD000
	li.l    $a2, 0x450CE000
	swc1    $f8, 0x0010($sp)
	addiu   $a0, $t5, 0x0010
	addiu   $a1, $t5, 0x0004
	jal     camera_80289F88
	swc1    $f4, 0x0014($sp)
	sh      $v0, 0x006E($sp)
.L80284C94:
	b       .L80284CA4
	lh      $v0, 0x006E($sp)
	b       .L80284CA4
	nop
.L80284CA4:
	lw      $ra, 0x002C($sp)
	ldc1    $f20, 0x0020($sp)
	lw      $s0, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00C8

camera_80284CB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x0002
	jal     camera_80283AF8
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sh      $v0, 0x003A($t6)
	jal     camera_802804F4
	lw      $a0, 0x0018($sp)
	b       .L80284CEC
	nop
.L80284CEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80284CFC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x44480000
	mtc1    $at, $f4
	lui     $at, %hi(camera_8032DF4C)
	swc1    $f4, %lo(camera_8032DF4C)($at)
	jal     camera_80284CB8
	lw      $a0, 0x0018($sp)
	b       .L80284D28
	nop
.L80284D28:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80284D38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x43AF0000
	mtc1    $at, $f4
	lui     $at, %hi(camera_8032DF4C)
	swc1    $f4, %lo(camera_8032DF4C)($at)
	jal     camera_80284CB8
	lw      $a0, 0x0018($sp)
	b       .L80284D64
	nop
.L80284D64:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int camera_80284D74(struct camera *cam, VECF, VECF) */
.globl camera_80284D74
camera_80284D74:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	jal     camera_8028BD98
	lw      $a0, 0x0060($sp)
	la.u    $a0, camera_8032DF6C
	li.u    $a2, 0x44198000
	li.u    $a3, 0x44D98000
	li.l    $a3, 0x44D98000
	li.l    $a2, 0x44198000
	la.l    $a0, camera_8032DF6C
	jal     vecf_set
	li      $a1, 0xC4A00000
	lui     $at, %hi(camera_80337200)
	lwc1    $f4, %lo(camera_80337200)($at)
	li      $at, 0x43480000
	mtc1    $at, $f6
	addiu   $t6, $sp, 0x002C
	move    $a0, $t6
	move    $a3, $t6
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	swc1    $f4, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f6, 0x0014($sp)
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lw      $t8, 0x0064($sp)
	lwc1    $f8, 0x0004($t7)
	swc1    $f8, 0x0000($t8)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0008($t9)
	lwc1    $f4, 0x002C($sp)
	add.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0024($sp)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	lw      $t1, 0x0064($sp)
	lwc1    $f8, 0x000C($t0)
	swc1    $f8, 0x0008($t1)
	addiu   $a0, $sp, 0x0044
	jal     vecf_cpy
	lw      $a1, 0x0068($sp)
	la.u    $a0, camera_8032DF6C
	addiu   $t2, $sp, 0x0058
	sw      $t2, 0x0010($sp)
	la.l    $a0, camera_8032DF6C
	lw      $a1, 0x0064($sp)
	addiu   $a2, $sp, 0x0030
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x005A
	la.u    $a0, camera_8032DF6C
	addiu   $t3, $sp, 0x0054
	sw      $t3, 0x0010($sp)
	la.l    $a0, camera_8032DF6C
	addiu   $a1, $sp, 0x0044
	addiu   $a2, $sp, 0x0030
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0056
	lh      $t4, 0x0054($sp)
	lh      $t5, 0x0058($sp)
	lui     $at, %hi(_camera_bss+0x254)
	subu    $t6, $t4, $t5
	sh      $t6, %lo(_camera_bss+0x254)($at)
	lui     $t7, %hi(_camera_bss+0x254)
	lh      $t7, %lo(_camera_bss+0x254)($t7)
	slti    $at, $t7, -0x4000
	beqz    $at, .L80284EAC
	nop
	li      $t8, -0x4000
	lui     $at, %hi(_camera_bss+0x254)
	sh      $t8, %lo(_camera_bss+0x254)($at)
.L80284EAC:
	lui     $t9, %hi(_camera_bss+0x254)
	lh      $t9, %lo(_camera_bss+0x254)($t9)
	slti    $at, $t9, 0x4001
	bnez    $at, .L80284ECC
	nop
	li      $t0, 0x4000
	lui     $at, %hi(_camera_bss+0x254)
	sh      $t0, %lo(_camera_bss+0x254)($at)
.L80284ECC:
	lui     $t2, %hi(_camera_bss+0x254)
	lh      $t2, %lo(_camera_bss+0x254)($t2)
	lh      $t1, 0x0058($sp)
	addu    $t3, $t1, $t2
	sh      $t3, 0x0058($sp)
	lh      $t4, 0x0058($sp)
	sh      $t4, 0x0054($sp)
	addiu   $a0, $sp, 0x0054
	lh      $a1, 0x0058($sp)
	jal     camera_8028976C
	li      $a2, 0x1000
	lh      $t5, 0x0054($sp)
	la.u    $a0, camera_8032DF6C
	la.l    $a0, camera_8032DF6C
	addiu   $a1, $sp, 0x0044
	li      $a2, 0x43960000
	move    $a3, $0
	jal     polar_to_cartesian
	sw      $t5, 0x0010($sp)
	lw      $t7, 0x0064($sp)
	addiu   $t6, $sp, 0x0044
	lwc1    $f10, 0x0000($t6)
	lwc1    $f16, 0x0000($t7)
	lui     $at, %hi(camera_80337204)
	lwc1    $f4, %lo(camera_80337204)($at)
	sub.s   $f18, $f10, $f16
	addiu   $t8, $sp, 0x0038
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f6, $f16
	swc1    $f8, 0x0000($t8)
	lw      $t0, 0x0064($sp)
	addiu   $t9, $sp, 0x0044
	lwc1    $f10, 0x0004($t9)
	lwc1    $f18, 0x0004($t0)
	lui     $at, %hi(camera_80337208)
	lwc1    $f6, %lo(camera_80337208)($at)
	sub.s   $f4, $f10, $f18
	li      $at, 0x43960000
	mtc1    $at, $f10
	addiu   $t1, $sp, 0x0038
	mul.s   $f16, $f4, $f6
	add.s   $f8, $f16, $f18
	add.s   $f4, $f8, $f10
	swc1    $f4, 0x0004($t1)
	lw      $t3, 0x0064($sp)
	addiu   $t2, $sp, 0x0044
	lwc1    $f6, 0x0008($t2)
	lwc1    $f16, 0x0008($t3)
	lui     $at, %hi(camera_8033720C)
	lwc1    $f8, %lo(camera_8033720C)($at)
	sub.s   $f18, $f6, $f16
	addiu   $t4, $sp, 0x0038
	mul.s   $f10, $f18, $f8
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x0008($t4)
	addiu   $t5, $sp, 0x0038
	li      $at, 0x42480000
	mtc1    $at, $f18
	lwc1    $f6, 0x0004($t5)
	lwc1    $f12, 0x0000($t5)
	lw      $a2, 0x0008($t5)
	addiu   $a3, $sp, 0x0034
	jal     map_80381900
	add.s   $f14, $f6, $f18
	swc1    $f0, 0x0028($sp)
	lui     $at, %hi(camera_80337210)
	lwc1    $f10, %lo(camera_80337210)($at)
	lwc1    $f8, 0x0028($sp)
	c.eq.s  $f8, $f10
	nop
	bc1t    .L80285048
	nop
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f4, %lo(_camera_bss+0xCC)($at)
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f16, $f4
	nop
	bc1f    .L80285014
	nop
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f6, %lo(_camera_bss+0xCC)($at)
	swc1    $f6, 0x0028($sp)
.L80285014:
	li      $at, 0x42FA0000
	mtc1    $at, $f8
	lwc1    $f18, 0x0028($sp)
	lw      $t6, 0x0068($sp)
	li      $a2, 0x41F00000
	add.s   $f10, $f18, $f8
	lwc1    $f12, 0x0004($t6)
	li      $a3, 0x41F00000
	swc1    $f10, 0x0028($sp)
	jal     converge_f
	mov.s   $f14, $f10
	lw      $t7, 0x0068($sp)
	swc1    $f0, 0x0004($t7)
.L80285048:
	lw      $a0, 0x0064($sp)
	lw      $a1, 0x0024($sp)
	li      $a2, 0x41F00000
	jal     camera_802899CC
	addiu   $a0, $a0, 0x0004
	addiu   $t8, $sp, 0x0044
	lwc1    $f16, 0x0000($t8)
	lw      $t9, 0x0068($sp)
	swc1    $f16, 0x0000($t9)
	addiu   $t0, $sp, 0x0044
	lwc1    $f4, 0x0008($t0)
	lw      $t1, 0x0068($sp)
	swc1    $f4, 0x0008($t1)
	lw      $a0, 0x0064($sp)
	jal     camera_8028AAD8
	lw      $a1, 0x0068($sp)
	sh      $v0, 0x005C($sp)
	b       .L8028509C
	lh      $v0, 0x005C($sp)
	b       .L8028509C
	nop
.L8028509C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

camera_802850AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	jal     camera_80284D74
	addiu   $a2, $t6, 0x0010
	lw      $t7, 0x0018($sp)
	sh      $v0, 0x003A($t7)
	b       .L802850DC
	nop
.L802850DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* int camera_802850EC(struct camera *cam, VECF, VECF) */
.globl camera_802850EC
camera_802850EC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lui     $t8, %hi(_camera_bss+0x252)
	lh      $t8, %lo(_camera_bss+0x252)($t8)
	lh      $t7, 0x0012($t6)
	li      $at, 0x8000
	addu    $t9, $t7, $t8
	addu    $t0, $t9, $at
	sh      $t0, 0x002E($sp)
	li      $at, 0x44480000
	mtc1    $at, $f4
	lh      $t2, 0x002E($sp)
	li      $t1, 0x1555
	sw      $t1, 0x0014($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	li      $a2, 0x42FA0000
	li      $a3, 0x42FA0000
	sw      $t2, 0x0018($sp)
	jal     camera_8027FE20
	swc1    $f4, 0x0010($sp)
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	b       .L8028516C
	lh      $v0, 0x0012($t3)
	b       .L8028516C
	nop
.L8028516C:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028517C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L802851B4
	nop
	lui     $t9, %hi(_camera_bss+0x328)
	lh      $t9, %lo(_camera_bss+0x328)($t9)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t0, $t9, 0x2000
	sh      $t0, %lo(_camera_bss+0x328)($at)
.L802851B4:
	jal     camera_80283578
	lw      $a0, 0x0018($sp)
	lw      $t1, 0x0018($sp)
	sh      $v0, 0x003A($t1)
	b       .L802851CC
	nop
.L802851CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802851DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0xD0)
	lh      $t6, %lo(_camera_bss+0xD0)($t6)
	li      $at, 0x000B
	beq     $t6, $at, .L80285208
	nop
	li      $at, 0x0079
	bne     $t6, $at, .L80285218
	nop
.L80285208:
	jal     camera_80284CFC
	lw      $a0, 0x0018($sp)
	b       .L80285254
	nop
.L80285218:
	lui     $t7, %hi(cont_1)
	lw      $t7, %lo(cont_1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, .L80285244
	nop
	lui     $t0, %hi(_camera_bss+0x328)
	lh      $t0, %lo(_camera_bss+0x328)($t0)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t1, $t0, 0x2000
	sh      $t1, %lo(_camera_bss+0x328)($at)
.L80285244:
	jal     camera_80283578
	lw      $a0, 0x0018($sp)
	lw      $t2, 0x0018($sp)
	sh      $v0, 0x003A($t2)
.L80285254:
	b       .L8028525C
	nop
.L8028525C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028526C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x2E8
	la.l    $a0, _camera_bss+0x2E8
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x2E8
	la.l    $a0, _camera_bss+0x2E8
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lw      $t6, 0x0018($sp)
	la.u    $a0, _camera_bss+0x2E8
	lwc1    $f6, 0x0008($t7)
	lwc1    $f4, 0x0008($t6)
	la.l    $a0, _camera_bss+0x2E8
	addiu   $a0, $a0, 0x000C
	sub.s   $f8, $f4, $f6
	li      $a1, 0x0000
	li      $a3, 0x0000
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	b       .L802852E4
	nop
.L802852E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802852F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	andi    $t7, $t6, 0x2000
	bnez    $t7, .L80285350
	nop
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t9, $t8, 0x2000
	sh      $t9, %lo(_camera_bss+0x328)($at)
	jal     camera_8028526C
	lw      $a0, 0x0018($sp)
	lui     $t0, %hi(_camera_bss+0x16C)
	lh      $t0, %lo(_camera_bss+0x16C)($t0)
	li      $at, -0x0002
	and     $t1, $t0, $at
	lui     $at, %hi(_camera_bss+0x16C)
	sh      $t1, %lo(_camera_bss+0x16C)($at)
	b       .L80285360
	li      $v0, 0x0001
.L80285350:
	b       .L80285360
	move    $v0, $0
	b       .L80285360
	nop
.L80285360:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80285370:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0078($sp)
	sw      $0, 0x0058($sp)
	sh      $0, 0x003E($sp)
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	andi    $t7, $t6, 0x2000
	beqz    $t7, .L802857E8
	nop
	andi    $t8, $t6, 0x0200
	bnez    $t8, .L802857E8
	nop
	la.u    $a1, _camera_bss+0x2E8
	la.l    $a1, _camera_bss+0x2E8
	jal     vecf_cpy
	addiu   $a0, $sp, 0x0030
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	addiu   $a0, $sp, 0x0030
	jal     vecf_add
	addiu   $a1, $a1, 0x0004
	la.u    $a1, _camera_bss+0x2E8
	la.l    $a1, _camera_bss+0x2E8
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $sp, 0x0024
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	addiu   $a0, $sp, 0x0024
	jal     vecf_add
	addiu   $a1, $a1, 0x0004
	lw      $a1, 0x0078($sp)
	addiu   $a0, $sp, 0x0068
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	addiu   $t0, $sp, 0x0068
	lwc1    $f4, 0x0004($t9)
	swc1    $f4, 0x0000($t0)
	lui     $t1, %hi(camera_8032DF60)
	lw      $t1, %lo(camera_8032DF60)($t1)
	addiu   $t2, $sp, 0x0068
	lwc1    $f6, 0x000C($t1)
	swc1    $f6, 0x0008($t2)
	lw      $a1, 0x0078($sp)
	addiu   $t3, $sp, 0x0040
	sw      $t3, 0x0010($sp)
	addiu   $a0, $sp, 0x0068
	addiu   $a2, $sp, 0x0048
	addiu   $a3, $sp, 0x0042
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0078($sp)
	addiu   $a0, $sp, 0x005C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	li      $at, 0x42A00000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0048($sp)
	lui     $t4, %hi(_camera_bss+0x26A)
	lh      $t4, %lo(_camera_bss+0x26A)($t4)
	li      $at, 0x0011
	beq     $t4, $at, .L80285494
	nop
	li      $at, 0x0004
	beq     $t4, $at, .L80285494
	nop
	li      $at, 0x0010
	bne     $t4, $at, .L802857A0
	nop
.L80285494:
	li      $t5, 0x0001
	sw      $t5, 0x0058($sp)
	lw      $t7, 0x0058($sp)
	li      $at, 0x0001
	sw      $0, 0x0054($sp)
	bne     $t7, $at, .L802856F8
	nop
.L802854B0:
	lh      $t6, 0x0040($sp)
	lh      $t8, 0x003E($sp)
	addiu   $a0, $sp, 0x0068
	addiu   $a1, $sp, 0x005C
	addu    $t9, $t6, $t8
	sw      $t9, 0x0010($sp)
	lw      $a2, 0x0048($sp)
	jal     polar_to_cartesian
	move    $a3, $0
	li      $at, 0x42480000
	mtc1    $at, $f10
	addiu   $t0, $sp, 0x005C
	move    $a0, $t0
	addiu   $a1, $t0, 0x0004
	addiu   $a2, $t0, 0x0008
	li      $a3, 0x41A00000
	jal     map_80380DE8
	swc1    $f10, 0x0010($sp)
	bnez    $v0, .L80285690
	nop
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f18, %lo(camera_8032DF4C)($at)
	lwc1    $f16, 0x0048($sp)
	c.lt.s  $f16, $f18
	swc1    $f16, 0x0044($sp)
	bc1f    .L80285670
	nop
.L8028551C:
	lh      $t1, 0x0040($sp)
	lh      $t2, 0x003E($sp)
	addiu   $a0, $sp, 0x0068
	addiu   $a1, $sp, 0x005C
	addu    $t3, $t1, $t2
	sw      $t3, 0x0010($sp)
	lw      $a2, 0x0044($sp)
	jal     polar_to_cartesian
	move    $a3, $0
	addiu   $t4, $sp, 0x005C
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f4, 0x0004($t4)
	lwc1    $f12, 0x0000($t4)
	lw      $a2, 0x0008($t4)
	addiu   $a3, $sp, 0x0074
	jal     map_80381264
	sub.s   $f14, $f4, $f6
	li      $at, 0xC1200000
	mtc1    $at, $f8
	nop
	add.s   $f10, $f0, $f8
	swc1    $f10, 0x0050($sp)
	lw      $t5, 0x0074($sp)
	beqz    $t5, .L802855A8
	nop
	addiu   $t7, $sp, 0x005C
	lwc1    $f18, 0x0004($t7)
	lwc1    $f16, 0x0050($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L802855A8
	nop
	b       .L80285670
	nop
.L802855A8:
	addiu   $t6, $sp, 0x005C
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f4, 0x0004($t6)
	lwc1    $f12, 0x0000($t6)
	lw      $a2, 0x0008($t6)
	addiu   $a3, $sp, 0x0074
	jal     map_80381900
	add.s   $f14, $f4, $f6
	li      $at, 0x41200000
	mtc1    $at, $f8
	nop
	add.s   $f10, $f0, $f8
	swc1    $f10, 0x004C($sp)
	lw      $t8, 0x0074($sp)
	beqz    $t8, .L80285610
	nop
	addiu   $t9, $sp, 0x005C
	lwc1    $f18, 0x0004($t9)
	lwc1    $f16, 0x004C($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80285610
	nop
	b       .L80285670
	nop
.L80285610:
	li      $at, 0x42480000
	mtc1    $at, $f4
	addiu   $t0, $sp, 0x005C
	move    $a0, $t0
	addiu   $a1, $t0, 0x0004
	addiu   $a2, $t0, 0x0008
	li      $a3, 0x41A00000
	jal     map_80380DE8
	swc1    $f4, 0x0010($sp)
	li      $at, 0x0001
	bne     $v0, $at, .L80285648
	nop
	b       .L80285670
	nop
.L80285648:
	li      $at, 0x41A00000
	mtc1    $at, $f8
	lwc1    $f6, 0x0044($sp)
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f16, %lo(camera_8032DF4C)($at)
	add.s   $f10, $f6, $f8
	c.lt.s  $f10, $f16
	swc1    $f10, 0x0044($sp)
	bc1t    .L8028551C
	nop
.L80285670:
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f4, %lo(camera_8032DF4C)($at)
	lwc1    $f18, 0x0044($sp)
	c.le.s  $f4, $f18
	nop
	bc1f    .L80285690
	nop
	sw      $0, 0x0058($sp)
.L80285690:
	lw      $t1, 0x0058($sp)
	li      $at, 0x0001
	bne     $t1, $at, .L802856D4
	nop
	lh      $t2, 0x003E($sp)
	subu    $t3, $0, $t2
	sh      $t3, 0x003E($sp)
	lh      $t4, 0x003E($sp)
	bgez    $t4, .L802856C8
	nop
	lh      $t5, 0x003E($sp)
	addiu   $t7, $t5, -0x1000
	b       .L802856D4
	sh      $t7, 0x003E($sp)
.L802856C8:
	lh      $t6, 0x003E($sp)
	addiu   $t8, $t6, 0x1000
	sh      $t8, 0x003E($sp)
.L802856D4:
	lw      $t9, 0x0054($sp)
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x0010
	beqz    $at, .L802856F8
	sw      $t0, 0x0054($sp)
	lw      $t1, 0x0058($sp)
	li      $at, 0x0001
	beq     $t1, $at, .L802854B0
	nop
.L802856F8:
	lw      $t2, 0x0058($sp)
	bnez    $t2, .L80285778
	nop
	lh      $t3, 0x0040($sp)
	lh      $t4, 0x003E($sp)
	la.u    $a1, _camera_bss+0x2E8
	lui     $a2, %hi(camera_8032DF4C)
	addu    $t5, $t3, $t4
	sw      $t5, 0x0010($sp)
	lw      $a2, %lo(camera_8032DF4C)($a2)
	la.l    $a1, _camera_bss+0x2E8
	addiu   $a0, $sp, 0x0068
	jal     polar_to_cartesian
	move    $a3, $0
	la.u    $a0, _camera_bss+0x2E8
	la.l    $a0, _camera_bss+0x2E8
	addiu   $a0, $a0, 0x000C
	jal     vecf_cpy
	addiu   $a1, $sp, 0x0068
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x2E8
	la.l    $a0, _camera_bss+0x2E8
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x2E8
	la.l    $a0, _camera_bss+0x2E8
	addiu   $a0, $a0, 0x000C
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
.L80285778:
	lui     $t7, %hi(_camera_bss+0x328)
	lh      $t7, %lo(_camera_bss+0x328)($t7)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t6, $t7, 0x0200
	sh      $t6, %lo(_camera_bss+0x328)($at)
	lw      $a0, 0x0078($sp)
	jal     camera_8028603C
	li      $a1, 0x000F
	b       .L802857E0
	nop
.L802857A0:
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	li      $at, -0x2201
	and     $t9, $t8, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t9, %lo(_camera_bss+0x328)($at)
	lh      $t0, 0x0040($sp)
	lh      $t1, 0x003E($sp)
	lw      $a1, 0x0078($sp)
	addiu   $a0, $sp, 0x0068
	addu    $t2, $t0, $t1
	sw      $t2, 0x0010($sp)
	lw      $a2, 0x0048($sp)
	lh      $a3, 0x0042($sp)
	jal     polar_to_cartesian
	addiu   $a1, $a1, 0x0010
.L802857E0:
	jal     camera_8028B884
	nop
.L802857E8:
	b       .L802857F8
	move    $v0, $0
	b       .L802857F8
	nop
.L802857F8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

/* int camera_80285808(struct camera *cam, VECF, VECF) */
.globl camera_80285808
camera_80285808:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lui     $t6, %hi(_camera_bss+0x250)
	lh      $t6, %lo(_camera_bss+0x250)($t6)
	sh      $t6, 0x002E($sp)
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lui     $t9, %hi(_camera_bss+0x252)
	lh      $t9, %lo(_camera_bss+0x252)($t9)
	lh      $t8, 0x0012($t7)
	li      $at, 0x8000
	addu    $t0, $t8, $t9
	addu    $t1, $t0, $at
	sh      $t1, 0x002C($sp)
	li      $at, 0x437A0000
	mtc1    $at, $f4
	lh      $t2, 0x002E($sp)
	lh      $t3, 0x002C($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	li      $a2, 0x42FA0000
	li      $a3, 0x42FA0000
	sw      $t2, 0x0014($sp)
	swc1    $f4, 0x0010($sp)
	jal     camera_8027FE20
	sw      $t3, 0x0018($sp)
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	b       .L80285894
	lh      $v0, 0x0012($t4)
	b       .L80285894
	nop
.L80285894:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_802858A4:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	lui     $t6, %hi(_camera_bss+0x250)
	lh      $t6, %lo(_camera_bss+0x250)($t6)
	sh      $t6, 0x0006($sp)
	lui     $t7, %hi(_camera_bss+0x252)
	lh      $t7, %lo(_camera_bss+0x252)($t7)
	sh      $t7, 0x0004($sp)
	lui     $t8, %hi(cont_1)
	lw      $t8, %lo(cont_1)($t8)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t8)
	lui     $t3, %hi(_camera_bss+0x250)
	lh      $t3, %lo(_camera_bss+0x250)($t3)
	mul.s   $f8, $f4, $f6
	lui     $at, %hi(_camera_bss+0x250)
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sll     $t1, $t0, 16
	sra     $t2, $t1, 16
	addu    $t4, $t3, $t2
	sh      $t4, %lo(_camera_bss+0x250)($at)
	lui     $t5, %hi(cont_1)
	lw      $t5, %lo(cont_1)($t5)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($t5)
	lui     $t0, %hi(_camera_bss+0x252)
	lh      $t0, %lo(_camera_bss+0x252)($t0)
	mul.s   $f4, $f16, $f18
	lui     $at, %hi(_camera_bss+0x252)
	trunc.w.s $f6, $f4
	mfc1    $t7, $f6
	nop
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	subu    $t1, $t0, $t9
	sh      $t1, %lo(_camera_bss+0x252)($at)
	lui     $t3, %hi(_camera_bss+0x250)
	lh      $t3, %lo(_camera_bss+0x250)($t3)
	slti    $at, $t3, 0x38E4
	bnez    $at, .L80285964
	nop
	li      $t2, 0x38E3
	lui     $at, %hi(_camera_bss+0x250)
	sh      $t2, %lo(_camera_bss+0x250)($at)
.L80285964:
	lui     $t4, %hi(_camera_bss+0x250)
	lh      $t4, %lo(_camera_bss+0x250)($t4)
	slti    $at, $t4, -0x2000
	beqz    $at, .L80285984
	nop
	li      $t5, -0x2000
	lui     $at, %hi(_camera_bss+0x250)
	sh      $t5, %lo(_camera_bss+0x250)($at)
.L80285984:
	lui     $t6, %hi(_camera_bss+0x252)
	lh      $t6, %lo(_camera_bss+0x252)($t6)
	slti    $at, $t6, 0x5556
	bnez    $at, .L802859A4
	nop
	li      $t7, 0x5555
	lui     $at, %hi(_camera_bss+0x252)
	sh      $t7, %lo(_camera_bss+0x252)($at)
.L802859A4:
	lui     $t8, %hi(_camera_bss+0x252)
	lh      $t8, %lo(_camera_bss+0x252)($t8)
	slti    $at, $t8, -0x5555
	beqz    $at, .L802859C4
	nop
	li      $t0, -0x5555
	lui     $at, %hi(_camera_bss+0x252)
	sh      $t0, %lo(_camera_bss+0x252)($at)
.L802859C4:
	lui     $t9, %hi(_camera_bss+0x250)
	lh      $t9, %lo(_camera_bss+0x250)($t9)
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	bgez    $t1, .L802859EC
	sra     $t3, $t1, 2
	addiu   $at, $t1, 0x0003
	sra     $t3, $at, 2
.L802859EC:
	sh      $t3, 0x0016($t2)
	lui     $t4, %hi(_camera_bss+0x252)
	lh      $t4, %lo(_camera_bss+0x252)($t4)
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	bgez    $t5, .L80285A18
	sra     $t6, $t5, 2
	addiu   $at, $t5, 0x0003
	sra     $t6, $at, 2
.L80285A18:
	sh      $t6, 0x0018($t7)
	b       .L80285A24
	nop
.L80285A24:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_80285A2C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	la.u    $t6, _camera_bss+0x268
	la.l    $t6, _camera_bss+0x268
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x002C($sp)
	la.u    $t8, _camera_bss+0x268
	la.l    $t8, _camera_bss+0x268
	addiu   $t9, $t8, 0x0028
	sw      $t9, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x002C($sp)
	lwc1    $f4, 0x0018($t0)
	lwc1    $f6, 0x0018($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lw      $t4, 0x002C($sp)
	lh      $t3, 0x001C($t2)
	lh      $t5, 0x001C($t4)
	subu    $t6, $t3, $t5
	sh      $t6, 0x0022($sp)
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	lh      $t8, 0x001E($t7)
	lh      $t0, 0x001E($t9)
	subu    $t1, $t8, $t0
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss+0x26E)
	lh      $t2, %lo(_camera_bss+0x26E)($t2)
	lui     $t4, %hi(_camera_bss+0x26C)
	lh      $t4, %lo(_camera_bss+0x26C)($t4)
	mtc1    $t2, $f16
	lwc1    $f10, 0x0024($sp)
	mtc1    $t4, $f6
	cvt.s.w $f18, $f16
	lw      $t3, 0x002C($sp)
	cvt.s.w $f8, $f6
	mul.s   $f4, $f10, $f18
	lwc1    $f10, 0x0018($t3)
	div.s   $f16, $f4, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lui     $t6, %hi(_camera_bss+0x26E)
	lh      $t6, %lo(_camera_bss+0x26E)($t6)
	lh      $t5, 0x0022($sp)
	lui     $t9, %hi(_camera_bss+0x26C)
	lh      $t9, %lo(_camera_bss+0x26C)($t9)
	multu   $t5, $t6
	lw      $t0, 0x002C($sp)
	lh      $t1, 0x001C($t0)
	mflo    $t7
	nop
	nop
	div     $0, $t7, $t9
	mflo    $t8
	addu    $t2, $t1, $t8
	sh      $t2, 0x0022($sp)
	bnez    $t9, .L80285B24
	nop
	break   7
.L80285B24:
	li      $at, -0x0001
	bne     $t9, $at, .L80285B3C
	li      $at, 0x80000000
	bne     $t7, $at, .L80285B3C
	nop
	break   6
.L80285B3C:
	lui     $t3, %hi(_camera_bss+0x26E)
	lh      $t3, %lo(_camera_bss+0x26E)($t3)
	lh      $t4, 0x0020($sp)
	lui     $t6, %hi(_camera_bss+0x26C)
	lh      $t6, %lo(_camera_bss+0x26C)($t6)
	multu   $t4, $t3
	lw      $t9, 0x002C($sp)
	lh      $t0, 0x001E($t9)
	mflo    $t5
	nop
	nop
	div     $0, $t5, $t6
	mflo    $t7
	addu    $t1, $t0, $t7
	sh      $t1, 0x0020($sp)
	bnez    $t6, .L80285B84
	nop
	break   7
.L80285B84:
	li      $at, -0x0001
	bne     $t6, $at, .L80285B9C
	li      $at, 0x80000000
	bne     $t5, $at, .L80285B9C
	nop
	break   6
.L80285B9C:
	lui     $t4, %hi(_camera_bss+0x26E)
	lh      $t4, %lo(_camera_bss+0x26E)($t4)
	lw      $t8, 0x0028($sp)
	lw      $t2, 0x002C($sp)
	mtc1    $t4, $f10
	lwc1    $f6, 0x0000($t8)
	lwc1    $f4, 0x0000($t2)
	cvt.s.w $f16, $f10
	lui     $t3, %hi(_camera_bss+0x26C)
	lh      $t3, %lo(_camera_bss+0x26C)($t3)
	lw      $t5, 0x0030($sp)
	sub.s   $f8, $f6, $f4
	mtc1    $t3, $f6
	mul.s   $f18, $f8, $f16
	cvt.s.w $f10, $f6
	div.s   $f8, $f18, $f10
	add.s   $f16, $f8, $f4
	swc1    $f16, 0x0004($t5)
	lui     $t0, %hi(_camera_bss+0x26E)
	lh      $t0, %lo(_camera_bss+0x26E)($t0)
	lw      $t6, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	mtc1    $t0, $f8
	lwc1    $f6, 0x0004($t6)
	lwc1    $f18, 0x0004($t9)
	cvt.s.w $f4, $f8
	lui     $t7, %hi(_camera_bss+0x26C)
	lh      $t7, %lo(_camera_bss+0x26C)($t7)
	lw      $t1, 0x0030($sp)
	sub.s   $f10, $f6, $f18
	mtc1    $t7, $f6
	mul.s   $f16, $f10, $f4
	cvt.s.w $f8, $f6
	div.s   $f10, $f16, $f8
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x0008($t1)
	lui     $t4, %hi(_camera_bss+0x26E)
	lh      $t4, %lo(_camera_bss+0x26E)($t4)
	lw      $t8, 0x0028($sp)
	lw      $t2, 0x002C($sp)
	mtc1    $t4, $f10
	lwc1    $f6, 0x0008($t8)
	lwc1    $f16, 0x0008($t2)
	cvt.s.w $f18, $f10
	lui     $t3, %hi(_camera_bss+0x26C)
	lh      $t3, %lo(_camera_bss+0x26C)($t3)
	lw      $t5, 0x0030($sp)
	sub.s   $f8, $f6, $f16
	mtc1    $t3, $f6
	mul.s   $f4, $f8, $f18
	cvt.s.w $f10, $f6
	div.s   $f8, $f4, $f10
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x000C($t5)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0030($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_add
	addiu   $a0, $a0, 0x0004
	lw      $t6, 0x0030($sp)
	lh      $t9, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a0, $t6, 0x0004
	addiu   $a1, $t6, 0x0010
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	sh      $0, 0x0016($t0)
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	sh      $0, 0x0018($t7)
	lui     $t1, %hi(_camera_bss+0x26E)
	lh      $t1, %lo(_camera_bss+0x26E)($t1)
	lui     $at, %hi(_camera_bss+0x26E)
	lui     $t3, %hi(_camera_bss+0x26C)
	addiu   $t8, $t1, 0x0001
	sh      $t8, %lo(_camera_bss+0x26E)($at)
	lh      $t3, %lo(_camera_bss+0x26C)($t3)
	sll     $t2, $t8, 16
	sra     $t4, $t2, 16
	bne     $t4, $t3, .L80285D08
	nop
	lui     $t5, %hi(_camera_bss+0x328)
	lh      $t5, %lo(_camera_bss+0x328)($t5)
	li      $at, -0x0101
	and     $t6, $t5, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t6, %lo(_camera_bss+0x328)($at)
.L80285D08:
	b       .L80285D10
	nop
.L80285D10:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80285D20:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(_camera_bss+0x16C)
	lh      $t6, %lo(_camera_bss+0x16C)($t6)
	andi    $t7, $t6, 0x0001
	bnez    $t7, .L80285D5C
	nop
	jal     camera_8028B850
	nop
	lui     $t8, %hi(_camera_bss+0x16C)
	lh      $t8, %lo(_camera_bss+0x16C)($t8)
	lui     $at, %hi(_camera_bss+0x16C)
	ori     $t9, $t8, 0x0001
	sh      $t9, %lo(_camera_bss+0x16C)($at)
.L80285D5C:
	lui     $t0, %hi(_camera_bss+0x328)
	lh      $t0, %lo(_camera_bss+0x328)($t0)
	andi    $t1, $t0, 0x0100
	beqz    $t1, .L80285D94
	nop
	lui     $t2, %hi(_camera_bss+0x328)
	lh      $t2, %lo(_camera_bss+0x328)($t2)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t3, $t2, 0x2000
	sh      $t3, %lo(_camera_bss+0x328)($at)
	jal     camera_80285A2C
	lw      $a0, 0x0028($sp)
	b       .L80285EC8
	li      $v0, 0x0001
.L80285D94:
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	andi    $t5, $t4, 0x0200
	bnez    $t5, .L80285DCC
	nop
	jal     camera_802858A4
	lw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	jal     camera_80285808
	addiu   $a2, $t6, 0x0010
	b       .L80285E8C
	nop
.L80285DCC:
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	andi    $t8, $t7, 0x0800
	beqz    $t8, .L80285E74
	nop
	lw      $a0, 0x0028($sp)
	la.u    $a1, _camera_bss+0x2E8
	la.l    $a1, _camera_bss+0x2E8
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0028($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_add
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0028($sp)
	la.u    $a1, _camera_bss+0x2E8
	la.l    $a1, _camera_bss+0x2E8
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0028($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_add
	addiu   $a0, $a0, 0x0004
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	move    $a1, $0
	li      $a2, 0x0400
	jal     camera_8028976C
	addiu   $a0, $a0, 0x0016
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	move    $a1, $0
	li      $a2, 0x0400
	jal     camera_8028976C
	addiu   $a0, $a0, 0x0018
	b       .L80285E8C
	nop
.L80285E74:
	lui     $t9, %hi(_camera_bss+0x328)
	lh      $t9, %lo(_camera_bss+0x328)($t9)
	li      $at, -0x2201
	and     $t0, $t9, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t0, %lo(_camera_bss+0x328)($at)
.L80285E8C:
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x25C)
	swc1    $f4, %lo(_camera_bss+0x25C)($at)
	lui     $t1, %hi(cont_1)
	lw      $t1, %lo(cont_1)($t1)
	lhu     $t2, 0x0012($t1)
	andi    $t3, $t2, 0xC007
	beqz    $t3, .L80285EB8
	nop
	jal     camera_80285370
	lw      $a0, 0x0028($sp)
.L80285EB8:
	b       .L80285EC8
	move    $v0, $0
	b       .L80285EC8
	nop
.L80285EC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int camera_80285ED8(struct camera *cam, VECF, VECF) */
.globl camera_80285ED8
camera_80285ED8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x260)
	lwc1    $f6, %lo(_camera_bss+0x260)($at)
	li      $at, 0x44480000
	mtc1    $at, $f10
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	swc1    $f10, 0x0010($sp)
	add.s   $f8, $f4, $f6
	lh      $t7, 0x0010($t6)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x002C($sp)
	sw      $t7, 0x0014($sp)
	lh      $t8, 0x0012($t6)
	mfc1    $a2, $f8
	li      $a3, 0x42FA0000
	jal     camera_8027FE20
	sw      $t8, 0x0018($sp)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	b       .L80285F50
	lh      $v0, 0x0012($t9)
	b       .L80285F50
	nop
.L80285F50:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80285F60:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lui     $at, %hi(_camera_bss+0x240)
	sh      $0, %lo(_camera_bss+0x240)($at)
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	li      $at, -0x0101
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t7, %lo(_camera_bss+0x328)($at)
	lw      $t8, 0x0030($sp)
	move    $a0, $t8
	addiu   $a1, $t8, 0x0004
	jal     camera_80285ED8
	addiu   $a2, $t8, 0x0010
	lw      $t9, 0x0030($sp)
	sh      $v0, 0x003A($t9)
	lui     $t0, %hi(cont_1)
	lw      $t0, %lo(cont_1)($t0)
	lhu     $t1, 0x0012($t0)
	andi    $t2, $t1, 0x8000
	beqz    $t2, .L80286004
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0003
	jal     camera_80286188
	li      $a2, 0x0001
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x25C)
	swc1    $f4, %lo(_camera_bss+0x25C)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss+0x260)
	swc1    $f6, %lo(_camera_bss+0x260)($at)
	lui     $t3, %hi(_camera_bss+0x32A)
	lh      $t3, %lo(_camera_bss+0x32A)($t3)
	li      $at, -0x0003
	and     $t4, $t3, $at
	lui     $at, %hi(_camera_bss+0x32A)
	b       .L80286024
	sh      $t4, %lo(_camera_bss+0x32A)($at)
.L80286004:
	lui     $at, %hi(_camera_bss+0x260)
	mtc1    $0, $f14
	lwc1    $f12, %lo(_camera_bss+0x260)($at)
	li      $a2, 0x42C80000
	jal     converge_f
	li      $a3, 0x42C80000
	lui     $at, %hi(_camera_bss+0x260)
	swc1    $f0, %lo(_camera_bss+0x260)($at)
.L80286024:
	b       .L8028602C
	nop
.L8028602C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028603C:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	andi    $t7, $t6, 0x0004
	bnez    $t7, .L80286078
	nop
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t9, $t8, 0x0C00
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	lui     $at, %hi(_camera_bss+0xB0)
	sw      $a1, %lo(_camera_bss+0xB0)($at)
.L80286078:
	b       .L80286080
	nop
.L80286080:
	jr      $ra
	nop

camera_80286088:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lh      $t8, 0x001E($sp)
	lbu     $t7, 0x0000($t6)
	beq     $t7, $t8, .L80286170
	nop
	lh      $t9, 0x001E($sp)
	li      $at, -0x0001
	beq     $t9, $at, .L802860CC
	nop
	lui     $at, %hi(_camera_bss+0x268)
	b       .L802860DC
	sh      $t9, %lo(_camera_bss+0x268)($at)
.L802860CC:
	lui     $t0, %hi(_camera_bss+0x26A)
	lh      $t0, %lo(_camera_bss+0x26A)($t0)
	lui     $at, %hi(_camera_bss+0x268)
	sh      $t0, %lo(_camera_bss+0x268)($at)
.L802860DC:
	lw      $t1, 0x0018($sp)
	lui     $at, %hi(_camera_bss+0x26A)
	lbu     $t2, 0x0000($t1)
	sh      $t2, %lo(_camera_bss+0x26A)($at)
	lui     $t3, %hi(_camera_bss+0x268)
	lh      $t3, %lo(_camera_bss+0x268)($t3)
	lw      $t4, 0x0018($sp)
	sb      $t3, 0x0000($t4)
	lui     $t5, %hi(_camera_bss+0x328)
	lh      $t5, %lo(_camera_bss+0x328)($t5)
	lui     $at, %hi(_camera_bss+0x328)
	andi    $t6, $t5, 0xFF02
	sh      $t6, %lo(_camera_bss+0x328)($at)
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	andi    $t8, $t7, 0x0004
	bnez    $t8, .L80286170
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	lh      $a1, 0x0022($sp)
	lui     $at, %hi(_camera_bss+0x250)
	sh      $0, %lo(_camera_bss+0x250)($at)
	lui     $at, %hi(_camera_bss+0x252)
	sh      $0, %lo(_camera_bss+0x252)($at)
	lui     $at, %hi(_camera_bss+0x23E)
	sh      $0, %lo(_camera_bss+0x23E)($at)
	lui     $at, %hi(_camera_bss+0x240)
	sh      $0, %lo(_camera_bss+0x240)($at)
	lui     $at, %hi(_camera_bss+0x23C)
	sh      $0, %lo(_camera_bss+0x23C)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x25C)
	swc1    $f4, %lo(_camera_bss+0x25C)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss+0x260)
	swc1    $f6, %lo(_camera_bss+0x260)($at)
.L80286170:
	b       .L80286178
	nop
.L80286178:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl camera_80286188
camera_80286188:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	la.u    $t6, _camera_bss+0x268
	la.l    $t6, _camera_bss+0x268
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x0024($sp)
	la.u    $t8, _camera_bss+0x268
	la.l    $t8, _camera_bss+0x268
	addiu   $t9, $t8, 0x0028
	sw      $t9, 0x0020($sp)
	lh      $t0, 0x002E($sp)
	li      $at, 0x0008
	bne     $t0, $at, .L802861E8
	nop
	lui     $t1, %hi(camera_stagescene)
	lw      $t1, %lo(camera_stagescene)($t1)
	li      $at, 0x0241
	bne     $t1, $at, .L802861E8
	nop
	b       .L80286408
	nop
.L802861E8:
	lui     $t2, %hi(_camera_bss+0x328)
	lh      $t2, %lo(_camera_bss+0x328)($t2)
	lui     $at, %hi(_camera_bss+0x328)
	andi    $t3, $t2, 0xFF02
	sh      $t3, %lo(_camera_bss+0x328)($at)
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t5, $t4, 0x0100
	sh      $t5, %lo(_camera_bss+0x328)($at)
	lh      $t6, 0x002E($sp)
	bnez    $t6, .L80286224
	nop
	li      $t7, 0x0004
	sh      $t7, 0x002E($sp)
.L80286224:
	lui     $at, %hi(_camera_bss+0x250)
	sh      $0, %lo(_camera_bss+0x250)($at)
	lui     $at, %hi(_camera_bss+0x252)
	sh      $0, %lo(_camera_bss+0x252)($at)
	lui     $at, %hi(_camera_bss+0x23E)
	sh      $0, %lo(_camera_bss+0x23E)($at)
	lui     $at, %hi(_camera_bss+0x240)
	sh      $0, %lo(_camera_bss+0x240)($at)
	lui     $at, %hi(_camera_bss+0x23C)
	sh      $0, %lo(_camera_bss+0x23C)($at)
	lh      $t8, 0x002E($sp)
	li      $at, -0x0001
	beq     $t8, $at, .L80286268
	nop
	lui     $at, %hi(_camera_bss+0x268)
	b       .L80286278
	sh      $t8, %lo(_camera_bss+0x268)($at)
.L80286268:
	lui     $t9, %hi(_camera_bss+0x26A)
	lh      $t9, %lo(_camera_bss+0x26A)($t9)
	lui     $at, %hi(_camera_bss+0x268)
	sh      $t9, %lo(_camera_bss+0x268)($at)
.L80286278:
	lw      $t0, 0x0028($sp)
	lui     $at, %hi(_camera_bss+0x26A)
	lbu     $t1, 0x0000($t0)
	sh      $t1, %lo(_camera_bss+0x26A)($at)
	lh      $t2, 0x0032($sp)
	lui     $at, %hi(_camera_bss+0x26C)
	sh      $t2, %lo(_camera_bss+0x26C)($at)
	li      $t3, 0x0001
	lui     $at, %hi(_camera_bss+0x26E)
	sh      $t3, %lo(_camera_bss+0x26E)($at)
	lui     $t4, %hi(_camera_bss+0x268)
	lh      $t4, %lo(_camera_bss+0x268)($t4)
	lw      $t5, 0x0028($sp)
	sb      $t4, 0x0000($t5)
	lw      $t6, 0x0028($sp)
	lui     $at, %hi(_camera_bss+0x1B4)
	lbu     $t7, 0x0000($t6)
	sb      $t7, %lo(_camera_bss+0x1B4)($at)
	lw      $a1, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	addiu   $a0, $a0, 0x000C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80287DE8
	addiu   $a0, $a0, 0x000C
	lui     $t9, %hi(_camera_bss+0x268)
	lh      $t9, %lo(_camera_bss+0x268)($t9)
	lw      $t8, 0x0020($sp)
	lw      $a0, 0x0028($sp)
	sll     $t0, $t9, 2
	lui     $t9, %hi(camera_8032DFA8)
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camera_8032DFA8)($t9)
	move    $a1, $t8
	addiu   $a2, $t8, 0x000C
	jalr    $t9
	nop
	lui     $at, %hi(_camera_bss+0x23A)
	sh      $v0, %lo(_camera_bss+0x23A)($at)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80287DE8
	addiu   $a0, $a0, 0x000C
	la.u    $a1, _camera_bss+0x178
	la.l    $a1, _camera_bss+0x178
	jal     vecf_cpy
	lw      $a0, 0x0024($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0024($sp)
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	lw      $a0, 0x0024($sp)
	la.u    $a1, _camera_bss+0x178
	la.l    $a1, _camera_bss+0x178
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x000C
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0024($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80287DE8
	addiu   $a0, $a0, 0x000C
	lw      $t1, 0x0024($sp)
	addiu   $t2, $t1, 0x001E
	sw      $t2, 0x0010($sp)
	move    $a0, $t1
	addiu   $a1, $t1, 0x000C
	addiu   $a2, $t1, 0x0018
	jal     cartesian_to_polar
	addiu   $a3, $t1, 0x001C
	lw      $t3, 0x0020($sp)
	addiu   $t4, $t3, 0x001E
	sw      $t4, 0x0010($sp)
	move    $a0, $t3
	addiu   $a1, $t3, 0x000C
	addiu   $a2, $t3, 0x0018
	jal     cartesian_to_polar
	addiu   $a3, $t3, 0x001C
.L80286408:
	b       .L80286410
	nop
.L80286410:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80286420:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0060($sp)
	sw      $0, 0x005C($sp)
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	andi    $t7, $t6, 0x8000
	beqz    $t7, .L8028644C
	nop
	b       .L802868A4
	nop
.L8028644C:
	lw      $t8, 0x0060($sp)
	lbu     $t9, 0x0030($t8)
	beqz    $t9, .L8028645C
	nop
.L8028645C:
	lw      $t0, 0x0060($sp)
	la.u    $t1, _camera_bss+0x48
	la.u    $t2, _camera_bss+0x58
	la.l    $t2, _camera_bss+0x58
	la.l    $t1, _camera_bss+0x48
	sw      $t1, 0x0010($sp)
	sw      $t2, 0x0014($sp)
	lh      $t3, 0x003A($t0)
	addiu   $a0, $sp, 0x0050
	addiu   $a1, $sp, 0x0044
	addiu   $a2, $t0, 0x0010
	addiu   $a3, $t0, 0x0004
	jal     camera_8028CE24
	sw      $t3, 0x0018($sp)
	sh      $v0, 0x0032($sp)
	lw      $a0, 0x0060($sp)
	lui     $a2, %hi(camera_8032DF34)
	lh      $a2, %lo(camera_8032DF34)($a2)
	lh      $a1, 0x0032($sp)
	jal     camera_8028993C
	addiu   $a0, $a0, 0x0002
	lui     $t4, %hi(_camera_bss+0x32A)
	lh      $t4, %lo(_camera_bss+0x32A)($t4)
	li      $at, -0x4001
	and     $t5, $t4, $at
	lui     $at, %hi(_camera_bss+0x32A)
	b       .L802864EC
	sh      $t5, %lo(_camera_bss+0x32A)($at)
	lw      $a1, 0x0060($sp)
	addiu   $a0, $sp, 0x0050
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0060($sp)
	addiu   $a0, $sp, 0x0044
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
.L802864EC:
	la.u    $a0, _camera_bss+0x48
	la.l    $a0, _camera_bss+0x48
	jal     vecf_cpy
	addiu   $a1, $sp, 0x0050
	la.u    $a0, _camera_bss+0x58
	la.l    $a0, _camera_bss+0x58
	jal     vecf_cpy
	addiu   $a1, $sp, 0x0044
	lw      $t6, 0x0060($sp)
	lui     $at, %hi(_camera_bss+0x1F4)
	lh      $t7, 0x0002($t6)
	sh      $t7, %lo(_camera_bss+0x1F4)($at)
	lw      $t8, 0x0060($sp)
	lui     $at, %hi(_camera_bss+0x1F6)
	lh      $t9, 0x003A($t8)
	sh      $t9, %lo(_camera_bss+0x1F6)($at)
	lw      $a1, 0x0060($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x0024
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0060($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x0018
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $at, %hi(_camera_bss+0x224)
	lwc1    $f4, %lo(_camera_bss+0x224)($at)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	lui     $a3, %hi(_camera_bss+0x228)
	mfc1    $a2, $f4
	lw      $a3, %lo(_camera_bss+0x228)($a3)
	addiu   $a0, $a0, 0x000C
	addiu   $a1, $sp, 0x0050
	jal     camera_80289684
	swc1    $f4, 0x0010($sp)
	lui     $at, %hi(_camera_bss+0x21C)
	lwc1    $f6, %lo(_camera_bss+0x21C)($at)
	la.u    $a0, _camera_bss+0x178
	lui     $a3, %hi(_camera_bss+0x220)
	mfc1    $a2, $f6
	lw      $a3, %lo(_camera_bss+0x220)($a3)
	la.l    $a0, _camera_bss+0x178
	addiu   $a1, $sp, 0x0044
	jal     camera_80289684
	swc1    $f6, 0x0010($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	li.u    $a1, 0x3F4CCCCD
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li.l    $a1, 0x3F4CCCCD
	jal     camera_8028935C
	addiu   $a0, $a0, 0x00A4
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	li.u    $a1, 0x3E99999A
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li.l    $a1, 0x3E99999A
	jal     camera_8028935C
	addiu   $a0, $a0, 0x00A8
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	li.u    $a1, 0x3E99999A
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li.l    $a1, 0x3E99999A
	jal     camera_8028935C
	addiu   $a0, $a0, 0x00AC
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	li.u    $a1, 0x3E99999A
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li.l    $a1, 0x3E99999A
	jal     camera_8028935C
	addiu   $a0, $a0, 0x00B0
	lui     $t1, %hi(_camera_bss+0x32A)
	lh      $t1, %lo(_camera_bss+0x32A)($t1)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L80286660
	nop
	lui     $t0, %hi(_camera_bss+0x32A)
	lh      $t0, %lo(_camera_bss+0x32A)($t0)
	li      $at, -0x0003
	and     $t3, $t0, $at
	lui     $at, %hi(_camera_bss+0x32A)
	b       .L80286674
	sh      $t3, %lo(_camera_bss+0x32A)($at)
.L80286660:
	lui     $t4, %hi(_camera_bss+0x32A)
	lh      $t4, %lo(_camera_bss+0x32A)($t4)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t5, $t4, 0x0001
	sh      $t5, %lo(_camera_bss+0x32A)($at)
.L80286674:
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	addiu   $a0, $t6, 0x008C
	jal     vecf_cpy
	addiu   $a1, $t6, 0x000C
	la.u    $t7, _camera_bss+0x178
	la.l    $t7, _camera_bss+0x178
	addiu   $a0, $t7, 0x0080
	jal     vecf_cpy
	move    $a1, $t7
	lw      $t8, 0x0060($sp)
	lbu     $t9, 0x0030($t8)
	beqz    $t9, .L802866DC
	nop
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	la.u    $a1, _camera_bss+0x68
	la.l    $a1, _camera_bss+0x68
	jal     vecf_add
	addiu   $a0, $a0, 0x0080
	la.u    $a0, _camera_bss+0x68
	la.l    $a0, _camera_bss+0x68
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
.L802866DC:
	la.u    $t1, _camera_bss+0x178
	la.l    $t1, _camera_bss+0x178
	addiu   $t2, $t1, 0x004E
	sw      $t2, 0x0010($sp)
	addiu   $a0, $t1, 0x008C
	addiu   $a1, $t1, 0x0080
	addiu   $a2, $t1, 0x0048
	jal     cartesian_to_polar
	addiu   $a3, $t1, 0x004C
	lui     $at, %hi(_camera_bss+0x1F2)
	sh      $0, %lo(_camera_bss+0x1F2)($at)
	la.u    $t0, _camera_bss+0x178
	la.l    $t0, _camera_bss+0x178
	addiu   $a0, $t0, 0x008C
	jal     camera_8028B218
	addiu   $a1, $t0, 0x0080
	la.u    $t3, _camera_bss+0x178
	la.l    $t3, _camera_bss+0x178
	addiu   $a0, $t3, 0x008C
	jal     camera_8028B32C
	addiu   $a1, $t3, 0x0080
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	jal     camera_8028B438
	addiu   $a0, $a0, 0x007A
	la.u    $t4, _camera_bss+0x178
	la.l    $t4, _camera_bss+0x178
	addiu   $a0, $t4, 0x008C
	jal     camera_802889B0
	addiu   $a1, $t4, 0x0080
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	lw      $t6, 0x0000($t5)
	bne     $t6, $at, .L80286790
	nop
	lui     $t7, %hi(_camera_bss+0x230)
	lw      $t7, %lo(_camera_bss+0x230)($t7)
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	beq     $t7, $at, .L80286790
	nop
	jal     camera_8027F590
	li      $a0, 0x0008
.L80286790:
	lui     $t8, %hi(_camera_bss+0x1F2)
	lui     $t9, %hi(_camera_bss+0x158)
	lh      $t9, %lo(_camera_bss+0x158)($t9)
	lh      $t8, %lo(_camera_bss+0x1F2)($t8)
	lui     $at, %hi(_camera_bss+0x1F2)
	addu    $t1, $t8, $t9
	sh      $t1, %lo(_camera_bss+0x1F2)($at)
	lui     $t2, %hi(_camera_bss+0x1F2)
	lui     $t0, %hi(_camera_bss+0x22C)
	lh      $t0, %lo(_camera_bss+0x22C)($t0)
	lh      $t2, %lo(_camera_bss+0x1F2)($t2)
	lui     $at, %hi(_camera_bss+0x1F2)
	addu    $t3, $t2, $t0
	sh      $t3, %lo(_camera_bss+0x1F2)($at)
	lw      $t4, 0x0060($sp)
	li      $at, 0x0006
	lbu     $t5, 0x0000($t4)
	beq     $t5, $at, .L80286888
	nop
	lbu     $t6, 0x0030($t4)
	bnez    $t6, .L80286888
	nop
	li      $t7, 0x0001
	lui     $at, %hi(object_80361180)
	sh      $t7, %lo(object_80361180)($at)
	la.u    $t8, _camera_bss+0x178
	la.l    $t8, _camera_bss+0x178
	li      $at, 0x41A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0090($t8)
	lwc1    $f12, 0x008C($t8)
	lw      $a2, 0x0094($t8)
	addiu   $a3, $sp, 0x005C
	jal     map_80381900
	add.s   $f14, $f8, $f10
	swc1    $f0, 0x0034($sp)
	lui     $at, %hi(camera_80337214)
	lwc1    $f18, %lo(camera_80337214)($at)
	lwc1    $f16, 0x0034($sp)
	c.eq.s  $f16, $f18
	nop
	bc1t    .L80286888
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0034($sp)
	la.u    $t9, _camera_bss+0x178
	la.l    $t9, _camera_bss+0x178
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x0090($t9)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80286880
	nop
	lwc1    $f16, 0x0034($sp)
	la.u    $t1, _camera_bss+0x178
	la.l    $t1, _camera_bss+0x178
	b       .L80286888
	swc1    $f16, 0x0090($t1)
.L80286880:
	lui     $at, %hi(object_80361180)
	sh      $0, %lo(object_80361180)($at)
.L80286888:
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0xA0
	la.l    $a0, _camera_bss+0xA0
	addiu   $a0, $a0, 0x0014
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
.L802868A4:
	la.u    $t2, _camera_bss+0x178
	la.l    $t2, _camera_bss+0x178
	addiu   $a0, $t2, 0x008C
	addiu   $a1, $t2, 0x0080
	li      $a2, 0x3E00
	jal     camera_80289214
	li      $a3, -0x3E00
	lw      $t0, 0x0060($sp)
	lui     $at, %hi(_camera_bss+0x1B4)
	lbu     $t3, 0x0000($t0)
	sb      $t3, %lo(_camera_bss+0x1B4)($at)
	lw      $t5, 0x0060($sp)
	lui     $at, %hi(_camera_bss+0x1B5)
	lbu     $t4, 0x0001($t5)
	sb      $t4, %lo(_camera_bss+0x1B5)($at)
	b       .L802868E8
	nop
.L802868E8:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl camera_802868F8
camera_802868F8:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lw      $t6, 0x0040($sp)
	lui     $at, %hi(_camera_bss+0x6B0)
	sw      $t6, %lo(_camera_bss+0x6B0)($at)
	jal     camera_80288E68
	lw      $a0, 0x0040($sp)
	lw      $t7, 0x0040($sp)
	lbu     $t8, 0x0030($t7)
	bnez    $t8, .L80286990
	nop
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, .L80286988
	nop
	lui     $t9, %hi(cont_1)
	lw      $t9, %lo(cont_1)($t9)
	lhu     $t0, 0x0012($t9)
	andi    $t1, $t0, 0x0010
	beqz    $t1, .L80286988
	nop
	jal     camera_80288718
	move    $a0, $0
	li      $at, 0x0002
	bne     $v0, $at, .L80286980
	nop
	jal     camera_80288718
	li      $a0, 0x0001
	b       .L80286988
	nop
.L80286980:
	jal     camera_80288718
	li      $a0, 0x0002
.L80286988:
	jal     camera_8028B954
	nop
.L80286990:
	lui     $t2, %hi(_camera_bss+0x32A)
	lh      $t2, %lo(_camera_bss+0x32A)($t2)
	li      $at, -0x0005
	and     $t3, $t2, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t3, %lo(_camera_bss+0x32A)($at)
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	andi    $t5, $t4, 0x0800
	beqz    $t5, .L802869F0
	nop
	jal     camera_8028724C
	lw      $a0, 0x0040($sp)
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	li      $at, -0x0801
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t7, %lo(_camera_bss+0x328)($at)
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t9, $t8, 0x0004
	sh      $t9, %lo(_camera_bss+0x32A)($at)
.L802869F0:
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f4, %lo(_camera_bss+0xCC)($at)
	lui     $at, %hi(_camera_bss+0xE4)
	swc1    $f4, %lo(_camera_bss+0xE4)($at)
	lui     $at, %hi(_camera_bss+0xDC)
	lwc1    $f6, %lo(_camera_bss+0xDC)($at)
	lui     $at, %hi(_camera_bss+0xF0)
	swc1    $f6, %lo(_camera_bss+0xF0)($at)
	lui     $t0, %hi(_camera_bss+0xC8)
	lw      $t0, %lo(_camera_bss+0xC8)($t0)
	lui     $at, %hi(_camera_bss+0xE0)
	sw      $t0, %lo(_camera_bss+0xE0)($at)
	lui     $t1, %hi(_camera_bss+0xD4)
	lw      $t1, %lo(_camera_bss+0xD4)($t1)
	lui     $at, %hi(_camera_bss+0xEC)
	sw      $t1, %lo(_camera_bss+0xEC)($at)
	lui     $t2, %hi(_camera_bss+0xD0)
	lh      $t2, %lo(_camera_bss+0xD0)($t2)
	lui     $at, %hi(_camera_bss+0xE8)
	sh      $t2, %lo(_camera_bss+0xE8)($at)
	lui     $t3, %hi(_camera_bss+0xD8)
	lh      $t3, %lo(_camera_bss+0xD8)($t3)
	lui     $at, %hi(_camera_bss+0xF4)
	sh      $t3, %lo(_camera_bss+0xF4)($at)
	la.u    $a0, _camera_bss+0xC8
	jal     camera_8028FC9C
	la.l    $a0, _camera_bss+0xC8
	li      $t4, 0x0001
	lui     $at, %hi(object_80361180)
	sh      $t4, %lo(object_80361180)($at)
	lw      $a0, 0x0040($sp)
	la.u    $a1, _camera_bss+0x178
	la.l    $a1, _camera_bss+0x178
	addiu   $a1, $a1, 0x0024
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0040($sp)
	la.u    $a1, _camera_bss+0x178
	la.l    $a1, _camera_bss+0x178
	addiu   $a1, $a1, 0x0018
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lui     $t5, %hi(_camera_bss+0x1F4)
	lh      $t5, %lo(_camera_bss+0x1F4)($t5)
	lw      $t6, 0x0040($sp)
	sh      $t5, 0x0002($t6)
	lui     $t7, %hi(_camera_bss+0x1F6)
	lh      $t7, %lo(_camera_bss+0x1F6)($t7)
	lw      $t8, 0x0040($sp)
	sh      $t7, 0x003A($t8)
	lui     $t9, %hi(_camera_bss+0x1B4)
	lbu     $t9, %lo(_camera_bss+0x1B4)($t9)
	lw      $t0, 0x0040($sp)
	sb      $t9, 0x0000($t0)
	lui     $t1, %hi(_camera_bss+0x1B5)
	lbu     $t1, %lo(_camera_bss+0x1B5)($t1)
	lw      $t2, 0x0040($sp)
	sb      $t1, 0x0001($t2)
	jal     camera_8028EEB0
	lw      $a0, 0x0040($sp)
	jal     camera_80287DD4
	lw      $a0, 0x0040($sp)
	lui     $t3, %hi(cont_1)
	lw      $t3, %lo(cont_1)($t3)
	lui     $a0, %hi(_camera_bss+0x16E)
	lhu     $a0, %lo(_camera_bss+0x16E)($a0)
	lhu     $a1, 0x0012($t3)
	jal     camera_80288CE4
	lhu     $a2, 0x0010($t3)
	lui     $at, %hi(_camera_bss+0x16E)
	sh      $v0, %lo(_camera_bss+0x16E)($at)
	lw      $t4, 0x0040($sp)
	lbu     $t5, 0x0030($t4)
	beqz    $t5, .L80286B38
	nop
	lui     $at, %hi(camera_8032DF34)
	sh      $0, %lo(camera_8032DF34)($at)
	jal     camera_802994E8
	lw      $a0, 0x0040($sp)
	lui     $at, %hi(camera_8032DF58)
	b       .L80286B94
	sb      $0, %lo(camera_8032DF58)($at)
.L80286B38:
	lui     $t6, %hi(camera_8032DF54)
	lbu     $t6, %lo(camera_8032DF54)($t6)
	beqz    $t6, .L80286B94
	nop
	lui     $t7, %hi(camera_8032DF58)
	lbu     $t7, %lo(camera_8032DF58)($t7)
	slti    $at, $t7, 0x0008
	beqz    $at, .L80286B94
	nop
	lui     $t8, %hi(camera_8032DF58)
	lbu     $t8, %lo(camera_8032DF58)($t8)
	lui     $at, %hi(camera_8032DF58)
	addiu   $t9, $t8, 0x0001
	sb      $t9, %lo(camera_8032DF58)($at)
	lui     $t0, %hi(camera_8032DF58)
	lbu     $t0, %lo(camera_8032DF58)($t0)
	slti    $at, $t0, 0x0008
	bnez    $at, .L80286B94
	nop
	lui     $at, %hi(camera_8032DF54)
	sb      $0, %lo(camera_8032DF54)($at)
	lui     $at, %hi(camera_8032DF58)
	sb      $0, %lo(camera_8032DF58)($at)
.L80286B94:
	lw      $t1, 0x0040($sp)
	lbu     $t2, 0x0030($t1)
	bnez    $t2, L80286D64
	nop
	li      $t3, 0x0400
	lui     $at, %hi(camera_8032DF34)
	sh      $t3, %lo(camera_8032DF34)($at)
	lui     $t4, %hi(_camera_bss+0x164)
	lh      $t4, %lo(_camera_bss+0x164)($t4)
	andi    $t5, $t4, 0x0001
	beqz    $t5, .L80286C54
	nop
	lw      $t6, 0x0040($sp)
	li      $at, 0x0003
	lbu     $s0, 0x0000($t6)
	beq     $s0, $at, .L80286C04
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L80286C14
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L80286C24
	nop
	li      $at, 0x000A
	beq     $s0, $at, .L80286C34
	nop
	b       .L80286C44
	nop
.L80286C04:
	jal     camera_802839E4
	lw      $a0, 0x0040($sp)
	b       .L80286C4C
	nop
.L80286C14:
	jal     camera_80285D20
	lw      $a0, 0x0040($sp)
	b       .L80286C4C
	nop
.L80286C24:
	jal     camera_80283A34
	lw      $a0, 0x0040($sp)
	b       .L80286C4C
	nop
.L80286C34:
	jal     camera_80285F60
	lw      $a0, 0x0040($sp)
	b       .L80286C4C
	nop
.L80286C44:
	jal     camera_80284D38
	lw      $a0, 0x0040($sp)
.L80286C4C:
	b       L80286D64
	nop
.L80286C54:
	lw      $t7, 0x0040($sp)
	lbu     $t8, 0x0000($t7)
	addiu   $t9, $t8, -0x0001
	sltiu   $at, $t9, 0x0011
	beqz    $at, L80286D64
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(camera_80337218)
	addu    $at, $at, $t9
	lw      $t9, %lo(camera_80337218)($at)
	jr      $t9
	nop
.globl L80286C84
L80286C84:
	jal     camera_802839E4
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286C94
L80286C94:
	jal     camera_80285D20
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CA4
L80286CA4:
	jal     camera_80283A34
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CB4
L80286CB4:
	jal     camera_80285F60
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CC4
L80286CC4:
	jal     camera_80281588
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CD4
L80286CD4:
	jal     camera_8028146C
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CE4
L80286CE4:
	jal     camera_802817FC
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286CF4
L80286CF4:
	jal     camera_80284CFC
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D04
L80286D04:
	jal     camera_80284CFC
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D14
L80286D14:
	jal     camera_80282C3C
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D24
L80286D24:
	jal     camera_80282C7C
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D34
L80286D34:
	jal     camera_802851DC
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D44
L80286D44:
	jal     camera_80282CE0
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D54
L80286D54:
	jal     camera_802850AC
	lw      $a0, 0x0040($sp)
	b       L80286D64
	nop
.globl L80286D64
L80286D64:
	jal     camera_8028C2C8
	lw      $a0, 0x0040($sp)
	andi    $s1, $v0, 0x00FF
	move    $a1, $s1
	jal     camera_8028C13C
	lw      $a0, 0x0040($sp)
	jal     camera_80287DC0
	lw      $a0, 0x0040($sp)
	lui     $at, %hi(object_80361180)
	sh      $0, %lo(object_80361180)($at)
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	li      $at, 0x0006
	beq     $t0, $at, .L80286EFC
	nop
	lw      $t1, 0x0040($sp)
	lbu     $t2, 0x0030($t1)
	bnez    $t2, .L80286DDC
	nop
	lui     $t3, %hi(cont_1)
	lw      $t3, %lo(cont_1)($t3)
	lhu     $t4, 0x0010($t3)
	andi    $t5, $t4, 0x0010
	beqz    $t5, .L80286DDC
	nop
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0002
	beq     $v0, $at, .L80286E0C
	nop
.L80286DDC:
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	andi    $t7, $t6, 0x0040
	bnez    $t7, .L80286E0C
	nop
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	li.u    $at, 0x010208B8
	li.l    $at, 0x010208B8
	lw      $t9, 0x0000($t8)
	bne     $t9, $at, .L80286EC0
	nop
.L80286E0C:
	lw      $t0, 0x0040($sp)
	lbu     $t1, 0x0030($t0)
	bnez    $t1, .L80286E64
	nop
	lui     $t2, %hi(cont_1)
	lw      $t2, %lo(cont_1)($t2)
	lhu     $t3, 0x0012($t2)
	andi    $t4, $t3, 0x0010
	beqz    $t4, .L80286E64
	nop
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0002
	bne     $v0, $at, .L80286E64
	nop
	lui     $t5, %hi(_camera_bss+0x16C)
	lh      $t5, %lo(_camera_bss+0x16C)($t5)
	lui     $at, %hi(_camera_bss+0x16C)
	ori     $t6, $t5, 0x0020
	sh      $t6, %lo(_camera_bss+0x16C)($at)
	jal     camera_8028B920
	nop
.L80286E64:
	mtc1    $0, $f8
	lui     $at, %hi(_camera_bss+0x224)
	swc1    $f8, %lo(_camera_bss+0x224)($at)
	mtc1    $0, $f10
	lui     $at, %hi(_camera_bss+0x228)
	swc1    $f10, %lo(_camera_bss+0x228)($at)
	la.u    $t7, _camera_bss+0x178
	la.l    $t7, _camera_bss+0x178
	addiu   $a0, $t7, 0x0080
	jal     camera_8028AAD8
	addiu   $a1, $t7, 0x008C
	lw      $t8, 0x0040($sp)
	sh      $v0, 0x003A($t8)
	lw      $t9, 0x0040($sp)
	lh      $t0, 0x003A($t9)
	sh      $t0, 0x0002($t9)
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	li      $at, -0x0041
	and     $t2, $t1, $at
	lui     $at, %hi(_camera_bss+0x328)
	b       .L80286EF4
	sh      $t2, %lo(_camera_bss+0x328)($at)
.L80286EC0:
	lui     $t3, %hi(_camera_bss+0x16C)
	lh      $t3, %lo(_camera_bss+0x16C)($t3)
	andi    $t4, $t3, 0x0020
	beqz    $t4, .L80286EF4
	nop
	jal     camera_8028B920
	nop
	lui     $t5, %hi(_camera_bss+0x16C)
	lh      $t5, %lo(_camera_bss+0x16C)($t5)
	li      $at, -0x0021
	and     $t6, $t5, $at
	lui     $at, %hi(_camera_bss+0x16C)
	sh      $t6, %lo(_camera_bss+0x16C)($at)
.L80286EF4:
	b       .L80286F30
	nop
.L80286EFC:
	lui     $t7, %hi(cont_1)
	lw      $t7, %lo(cont_1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t0, $t8, 0x0010
	beqz    $t0, .L80286F30
	nop
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0002
	bne     $v0, $at, .L80286F30
	nop
	jal     camera_8028B8EC
	nop
.L80286F30:
	jal     camera_80286420
	lw      $a0, 0x0040($sp)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	lui     $at, %hi(_camera_bss+0x230)
	lw      $t1, 0x0000($t9)
	sw      $t1, %lo(_camera_bss+0x230)($at)
	b       .L80286F54
	nop
.L80286F54:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

.globl camera_80286F68
camera_80286F68:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $0, 0x0034($sp)
	la.u    $t6, _camera_bss+0x268
	la.l    $t6, _camera_bss+0x268
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x0020($sp)
	la.u    $t8, _camera_bss+0x268
	la.l    $t8, _camera_bss+0x268
	addiu   $t9, $t8, 0x0028
	sw      $t9, 0x001C($sp)
	lw      $t0, 0x0038($sp)
	lui     $at, %hi(_camera_bss+0x6B0)
	sw      $t0, %lo(_camera_bss+0x6B0)($at)
	lui     $at, %hi(_camera_bss+0x328)
	sh      $0, %lo(_camera_bss+0x328)($at)
	lui     $at, %hi(_camera_bss+0x168)
	sh      $0, %lo(_camera_bss+0x168)($at)
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $0, %lo(_camera_bss+0x32A)($at)
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $0, %lo(_camera_bss+0x53C)($at)
	lui     $at, %hi(_camera_bss+0x53A)
	sh      $0, %lo(_camera_bss+0x53A)($at)
	lui     $at, %hi(_camera_bss+0x6AC)
	sw      $0, %lo(_camera_bss+0x6AC)($at)
	lui     $at, %hi(_camera_bss+0x6A8)
	sw      $0, %lo(_camera_bss+0x6A8)($at)
	lui     $at, %hi(camera_8032DF24)
	sw      $0, %lo(camera_8032DF24)($at)
	lui     $at, %hi(camera_8032DF28)
	sw      $0, %lo(camera_8032DF28)($at)
	lui     $at, %hi(camera_8032DF2C)
	sw      $0, %lo(camera_8032DF2C)($at)
	lui     $at, %hi(camera_8032DF30)
	sw      $0, %lo(camera_8032DF30)($at)
	lui     $at, %hi(_camera_bss+0x16E)
	sh      $0, %lo(_camera_bss+0x16E)($at)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0xA0
	la.l    $a0, _camera_bss+0xA0
	addiu   $a0, $a0, 0x0014
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $at, %hi(_camera_bss+0xB0)
	sw      $0, %lo(_camera_bss+0xB0)($at)
	li      $t1, -0x0001
	lui     $at, %hi(camera_8032DF2C)
	sw      $t1, %lo(camera_8032DF2C)($at)
	li      $t2, -0x0001
	lui     $at, %hi(camera_8032DF28)
	sw      $t2, %lo(camera_8032DF28)($at)
	lui     $at, %hi(_camera_bss+0x328)
	sh      $0, %lo(_camera_bss+0x328)($at)
	lui     $t3, %hi(_camera_bss+0x328)
	lh      $t3, %lo(_camera_bss+0x328)($t3)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t4, $t3, 0x0800
	sh      $t4, %lo(_camera_bss+0x328)($at)
	lui     $at, %hi(_camera_bss+0x166)
	sh      $0, %lo(_camera_bss+0x166)($at)
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $0, %lo(_camera_bss+0x32A)($at)
	lui     $at, %hi(_camera_bss+0x16A)
	sh      $0, %lo(_camera_bss+0x16A)($at)
	lui     $at, %hi(_camera_bss+0x16C)
	sh      $0, %lo(_camera_bss+0x16C)($at)
	lui     $at, %hi(_camera_bss+0x250)
	sh      $0, %lo(_camera_bss+0x250)($at)
	lui     $at, %hi(_camera_bss+0x252)
	sh      $0, %lo(_camera_bss+0x252)($at)
	lui     $at, %hi(_camera_bss+0x254)
	sh      $0, %lo(_camera_bss+0x254)($at)
	lui     $at, %hi(_camera_bss+0x23E)
	sh      $0, %lo(_camera_bss+0x23E)($at)
	lui     $at, %hi(_camera_bss+0x240)
	sh      $0, %lo(_camera_bss+0x240)($at)
	lui     $at, %hi(_camera_bss+0x23A)
	sh      $0, %lo(_camera_bss+0x23A)($at)
	lui     $at, %hi(_camera_bss+0x23C)
	sh      $0, %lo(_camera_bss+0x23C)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x25C)
	swc1    $f4, %lo(_camera_bss+0x25C)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss+0x260)
	swc1    $f6, %lo(_camera_bss+0x260)($at)
	mtc1    $0, $f8
	lui     $at, %hi(_camera_bss+0x244)
	swc1    $f8, %lo(_camera_bss+0x244)($at)
	mtc1    $0, $f10
	lui     $at, %hi(_camera_bss+0x24C)
	swc1    $f10, %lo(_camera_bss+0x24C)($at)
	lui     $at, %hi(_camera_bss+0x24A)
	sh      $0, %lo(_camera_bss+0x24A)($at)
	lui     $at, %hi(_camera_bss+0x248)
	sh      $0, %lo(_camera_bss+0x248)($at)
	lui     $at, %hi(_camera_bss+0x256)
	sh      $0, %lo(_camera_bss+0x256)($at)
	lui     $at, %hi(_camera_bss+0x258)
	sh      $0, %lo(_camera_bss+0x258)($at)
	lw      $t5, 0x0038($sp)
	sb      $0, 0x0064($t5)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	sh      $0, 0x0016($t6)
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	sh      $0, 0x0018($t7)
	lui     $t8, %hi(camera_8032DF64)
	lw      $t8, %lo(camera_8032DF64)($t8)
	sh      $0, 0x0016($t8)
	lui     $t9, %hi(camera_8032DF64)
	lw      $t9, %lo(camera_8032DF64)($t9)
	sh      $0, 0x0018($t9)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	sh      $0, 0x001E($t0)
	lui     $t1, %hi(camera_8032DF60)
	lw      $t1, %lo(camera_8032DF60)($t1)
	sw      $0, 0x0020($t1)
	la.u    $t2, _camera_bss+0x178
	la.l    $t2, _camera_bss+0x178
	sh      $0, 0x0052($t2)
	la.u    $t3, _camera_bss+0x178
	la.l    $t3, _camera_bss+0x178
	sh      $0, 0x0054($t3)
	la.u    $t4, _camera_bss+0x178
	la.l    $t4, _camera_bss+0x178
	sh      $0, 0x0056($t4)
	la.u    $t5, _camera_bss+0x178
	la.l    $t5, _camera_bss+0x178
	sh      $0, 0x006C($t5)
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	sh      $0, 0x006E($t6)
	la.u    $t7, _camera_bss+0x178
	la.l    $t7, _camera_bss+0x178
	sh      $0, 0x0070($t7)
	mtc1    $0, $f16
	la.u    $t8, _camera_bss+0x178
	la.l    $t8, _camera_bss+0x178
	swc1    $f16, 0x0060($t8)
	mtc1    $0, $f18
	la.u    $t9, _camera_bss+0x178
	la.l    $t9, _camera_bss+0x178
	swc1    $f18, 0x0064($t9)
	mtc1    $0, $f4
	la.u    $t0, _camera_bss+0x178
	la.l    $t0, _camera_bss+0x178
	swc1    $f4, 0x0068($t0)
	lui     $at, %hi(_camera_bss+0x230)
	sw      $0, %lo(_camera_bss+0x230)($at)
	jal     camera_8029AB94
	li      $a0, 0x0002
	li      $at, 0x42340000
	mtc1    $at, $f6
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f6, %lo(_camera_bss+0x84)($at)
	mtc1    $0, $f8
	lui     $at, %hi(_camera_bss+0x88)
	swc1    $f8, %lo(_camera_bss+0x88)($at)
	lui     $at, %hi(_camera_bss+0x8C)
	sw      $0, %lo(_camera_bss+0x8C)($at)
	mtc1    $0, $f10
	lui     $at, %hi(_camera_bss+0x90)
	swc1    $f10, %lo(_camera_bss+0x90)($at)
	lui     $at, %hi(_camera_bss+0x94)
	sh      $0, %lo(_camera_bss+0x94)($at)
	lui     $at, %hi(camera_8032DF50)
	sb      $0, %lo(camera_8032DF50)($at)
	lui     $at, %hi(camera_8032DF54)
	sb      $0, %lo(camera_8032DF54)($at)
	lui     $at, %hi(_camera_bss+0x15C)
	sw      $0, %lo(_camera_bss+0x15C)($at)
	lui     $at, %hi(_camera_bss+0x160)
	sw      $0, %lo(_camera_bss+0x160)($at)
	b       .L8028723C
	nop
.L8028723C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8028724C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0034($sp)
	lui     $at, %hi(_camera_bss+0x74)
	sh      $0, %lo(_camera_bss+0x74)($at)
	lui     $at, %hi(_camera_bss+0x76)
	sh      $0, %lo(_camera_bss+0x76)($at)
	lui     $t6, %hi(camera_stagescene)
	lw      $t6, %lo(camera_stagescene)($t6)
	bgez    $t6, .L80287288
	sra     $t7, $t6, 4
	addiu   $at, $t6, 0x000F
	sra     $t7, $at, 4
.L80287288:
	lui     $at, %hi(camera_stage_prev)
	sw      $t7, %lo(camera_stage_prev)($at)
	lui     $t0, %hi(scene)
	lw      $t0, %lo(scene)($t0)
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	lb      $t1, 0x0000($t0)
	lui     $at, %hi(camera_stagescene)
	sll     $t9, $t8, 4
	addu    $t2, $t9, $t1
	sw      $t2, %lo(camera_stagescene)($at)
	lui     $t3, %hi(_camera_bss+0x164)
	lh      $t3, %lo(_camera_bss+0x164)($t3)
	lui     $at, %hi(_camera_bss+0x164)
	andi    $t4, $t3, 0x0004
	sh      $t4, %lo(_camera_bss+0x164)($at)
	lui     $at, %hi(_camera_bss+0x78)
	sb      $0, %lo(_camera_bss+0x78)($at)
	lw      $t5, 0x0038($sp)
	lui     $at, %hi(_camera_bss+0x1B4)
	lbu     $t6, 0x0000($t5)
	sb      $t6, %lo(_camera_bss+0x1B4)($at)
	lw      $t7, 0x0038($sp)
	lui     $at, %hi(_camera_bss+0x1B5)
	lbu     $t8, 0x0001($t7)
	sb      $t8, %lo(_camera_bss+0x1B5)($at)
	lui     $at, %hi(camera_8033725C)
	lwc1    $f4, %lo(camera_8033725C)($at)
	lui     $at, %hi(_camera_bss+0x224)
	swc1    $f4, %lo(_camera_bss+0x224)($at)
	lui     $at, %hi(camera_80337260)
	lwc1    $f6, %lo(camera_80337260)($at)
	lui     $at, %hi(_camera_bss+0x228)
	swc1    $f6, %lo(_camera_bss+0x228)($at)
	lui     $at, %hi(camera_80337264)
	lwc1    $f8, %lo(camera_80337264)($at)
	lui     $at, %hi(_camera_bss+0x21C)
	swc1    $f8, %lo(_camera_bss+0x21C)($at)
	lui     $at, %hi(camera_80337268)
	lwc1    $f10, %lo(camera_80337268)($at)
	lui     $at, %hi(_camera_bss+0x21C)
	swc1    $f10, %lo(_camera_bss+0x21C)($at)
	lui     $at, %hi(_camera_bss+0x1F2)
	sh      $0, %lo(_camera_bss+0x1F2)($at)
	lui     $at, %hi(_camera_bss+0x22C)
	sh      $0, %lo(_camera_bss+0x22C)($at)
	lui     $at, %hi(_camera_bss+0x234)
	sh      $0, %lo(_camera_bss+0x234)($at)
	lui     $t0, %hi(_camera_bss+0x32A)
	lh      $t0, %lo(_camera_bss+0x32A)($t0)
	li      $at, -0x0002
	and     $t9, $t0, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	la.u    $a0, _camera_bss+0x2B0
	la.l    $a0, _camera_bss+0x2B0
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	la.u    $a0, _camera_bss+0x68
	la.l    $a0, _camera_bss+0x68
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	la.u    $a0, _camera_bss+0xC8
	jal     camera_8028FC9C
	la.l    $a0, _camera_bss+0xC8
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f16, %lo(_camera_bss+0xCC)($at)
	lui     $at, %hi(_camera_bss+0xE4)
	swc1    $f16, %lo(_camera_bss+0xE4)($at)
	lui     $at, %hi(_camera_bss+0xDC)
	lwc1    $f18, %lo(_camera_bss+0xDC)($at)
	lui     $at, %hi(_camera_bss+0xF0)
	swc1    $f18, %lo(_camera_bss+0xF0)($at)
	lui     $t1, %hi(_camera_bss+0xC8)
	lw      $t1, %lo(_camera_bss+0xC8)($t1)
	lui     $at, %hi(_camera_bss+0xE0)
	sw      $t1, %lo(_camera_bss+0xE0)($at)
	lui     $t2, %hi(_camera_bss+0xD4)
	lw      $t2, %lo(_camera_bss+0xD4)($t2)
	lui     $at, %hi(_camera_bss+0xEC)
	sw      $t2, %lo(_camera_bss+0xEC)($at)
	lui     $t3, %hi(_camera_bss+0xD0)
	lh      $t3, %lo(_camera_bss+0xD0)($t3)
	lui     $at, %hi(_camera_bss+0xE8)
	sh      $t3, %lo(_camera_bss+0xE8)($at)
	lui     $t4, %hi(_camera_bss+0xD8)
	lh      $t4, %lo(_camera_bss+0xD8)($t4)
	lui     $at, %hi(_camera_bss+0xF4)
	sh      $t4, %lo(_camera_bss+0xF4)($at)
	sw      $0, 0x0024($sp)
.L80287400:
	lw      $t6, 0x0024($sp)
	lui     $at, %hi(_camera_bss+0x330)
	li      $t5, -0x0001
	sll     $t7, $t6, 3
	addu    $at, $at, $t7
	sb      $t5, %lo(_camera_bss+0x330)($at)
	lw      $t0, 0x0024($sp)
	lui     $at, %hi(_camera_bss+0x430)
	li      $t8, -0x0001
	sll     $t9, $t0, 3
	addu    $at, $at, $t9
	sb      $t8, %lo(_camera_bss+0x430)($at)
	lw      $t1, 0x0024($sp)
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x0020
	bnez    $at, .L80287400
	sw      $t2, 0x0024($sp)
	lui     $at, %hi(_camera_bss+0x530)
	sh      $0, %lo(_camera_bss+0x530)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x534)
	swc1    $f4, %lo(_camera_bss+0x534)($at)
	lui     $at, %hi(_camera_bss+0x538)
	sh      $0, %lo(_camera_bss+0x538)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss+0x150)
	swc1    $f6, %lo(_camera_bss+0x150)($at)
	mtc1    $0, $f8
	lui     $at, %hi(_camera_bss+0x14C)
	swc1    $f8, %lo(_camera_bss+0x14C)($at)
	lui     $at, %hi(_camera_bss+0x148)
	sh      $0, %lo(_camera_bss+0x148)($at)
	sw      $0, 0x0024($sp)
.L80287484:
	lw      $t4, 0x0024($sp)
	lui     $at, %hi(_camera_bss+0x108)
	li      $t3, -0x0001
	sll     $t6, $t4, 4
	addu    $at, $at, $t6
	sb      $t3, %lo(_camera_bss+0x108)($at)
	lw      $t5, 0x0024($sp)
	addiu   $t7, $t5, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, .L80287484
	sw      $t7, 0x0024($sp)
	lui     $at, %hi(_camera_bss+0x154)
	sh      $0, %lo(_camera_bss+0x154)($at)
	lui     $at, %hi(_camera_bss+0x156)
	sh      $0, %lo(_camera_bss+0x156)($at)
	lui     $at, %hi(_camera_bss+0x158)
	sh      $0, %lo(_camera_bss+0x158)($at)
	lw      $t0, 0x0038($sp)
	sb      $0, 0x0030($t0)
	mtc1    $0, $f10
	addiu   $t8, $sp, 0x0028
	swc1    $f10, 0x0000($t8)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	addiu   $t9, $sp, 0x0028
	swc1    $f16, 0x0004($t9)
	li      $at, 0x43C80000
	mtc1    $at, $f18
	addiu   $t1, $sp, 0x0028
	swc1    $f18, 0x0008($t1)
	lui     $t2, %hi(stage_index)
	lh      $t2, %lo(stage_index)($t2)
	addiu   $t4, $t2, -0x0006
	sltiu   $at, $t4, 0x001D
	beqz    $at, L802876EC
	nop
	sll     $t4, $t4, 2
	lui     $at, %hi(camera_8033726C)
	addu    $at, $at, $t4
	lw      $t4, %lo(camera_8033726C)($at)
	jr      $t4
	nop
.globl L8028752C
L8028752C:
	lui     $t3, %hi(demo)
	lw      $t3, %lo(demo)($t3)
	bnez    $t3, .L80287550
	nop
	lw      $a0, 0x0038($sp)
	jal     camera_8028C13C
	li      $a1, 0x0090
	b       .L80287570
	nop
.L80287550:
	lui     $t6, %hi(camera_8032DF30)
	lw      $t6, %lo(camera_8032DF30)($t6)
	beqz    $t6, .L80287570
	nop
	lui     $t7, %hi(camera_8032DF30)
	lw      $t7, %lo(camera_8032DF30)($t7)
	li      $t5, 0x0002
	sw      $t5, 0x0088($t7)
.L80287570:
	b       L802876EC
	nop
.globl L80287578
L80287578:
	lw      $a0, 0x0038($sp)
	jal     camera_8028C13C
	li      $a1, 0x0090
	b       L802876EC
	nop
.globl L8028758C
L8028758C:
	lw      $a0, 0x0038($sp)
	jal     camera_8028C13C
	li      $a1, 0x0090
	b       L802876EC
	nop
.globl L802875A0
L802875A0:
	li      $at, 0xC4A60000
	mtc1    $at, $f12
	li      $at, 0x43820000
	mtc1    $at, $f14
	li.u    $a2, 0x4591C000
	jal     camera_802892D8
	li.l    $a2, 0x4591C000
	li      $at, 0x0001
	beq     $v0, $at, .L802875E8
	nop
	li      $at, 0xC3C80000
	mtc1    $at, $f4
	addiu   $t0, $sp, 0x0028
	swc1    $f4, 0x0000($t0)
	li      $at, 0xC4480000
	mtc1    $at, $f6
	addiu   $t8, $sp, 0x0028
	swc1    $f6, 0x0008($t8)
.L802875E8:
	lui     $at, %hi(camera_803372E0)
	lwc1    $f12, %lo(camera_803372E0)($at)
	lui     $at, %hi(camera_803372E4)
	li.u    $a2, 0xC5CB6800
	li.l    $a2, 0xC5CB6800
	jal     camera_802892D8
	lwc1    $f14, %lo(camera_803372E4)($at)
	li      $at, 0x0001
	bne     $v0, $at, .L8028761C
	nop
	lw      $a0, 0x0038($sp)
	jal     camera_8028C13C
	li      $a1, 0x00B3
.L8028761C:
	li      $at, 0x45A90000
	mtc1    $at, $f12
	lui     $at, %hi(camera_803372E8)
	li.u    $a2, 0x45635000
	li.l    $a2, 0x45635000
	jal     camera_802892D8
	lwc1    $f14, %lo(camera_803372E8)($at)
	li      $at, 0x0001
	bne     $v0, $at, .L80287650
	nop
	lw      $a0, 0x0038($sp)
	jal     camera_8028C13C
	li      $a1, 0x00B4
.L80287650:
	li      $t9, 0x0010
	lui     $at, %hi(_camera_bss+0x1B4)
	sb      $t9, %lo(_camera_bss+0x1B4)($at)
	b       L802876EC
	nop
.globl L80287664
L80287664:
	li      $at, 0x43480000
	mtc1    $at, $f8
	addiu   $t1, $sp, 0x0028
	swc1    $f8, 0x0008($t1)
	b       L802876EC
	nop
.globl L8028767C
L8028767C:
	li      $at, 0xC3960000
	mtc1    $at, $f10
	addiu   $t2, $sp, 0x0028
	swc1    $f10, 0x0008($t2)
	b       L802876EC
	nop
.globl L80287694
L80287694:
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t3, $t4, 0x0002
	sh      $t3, %lo(_camera_bss+0x328)($at)
	b       L802876EC
	nop
.globl L802876B0
L802876B0:
	li      $at, 0x43160000
	mtc1    $at, $f16
	addiu   $t6, $sp, 0x0028
	swc1    $f16, 0x0008($t6)
	b       L802876EC
	nop
.globl L802876C8
L802876C8:
	la.u    $a0, camera_8032DF6C
	li.u    $a1, 0xC53A9000
	li.l    $a1, 0xC53A9000
	la.l    $a0, camera_8032DF6C
	li      $a2, 0x43EF0000
	jal     vecf_set
	li      $a3, 0xC5AE0000
	b       L802876EC
	nop
.globl L802876EC
L802876EC:
	lw      $t5, 0x0038($sp)
	li      $at, 0x000E
	lbu     $t7, 0x0000($t5)
	bne     $t7, $at, .L80287714
	nop
	lui     $t0, %hi(_camera_bss+0x328)
	lh      $t0, %lo(_camera_bss+0x328)($t0)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t8, $t0, 0x0002
	sh      $t8, %lo(_camera_bss+0x328)($at)
.L80287714:
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0051
	beq     $s0, $at, .L8028781C
	nop
	li      $at, 0x0052
	beq     $s0, $at, .L80287794
	nop
	li      $at, 0x0083
	beq     $s0, $at, .L80287778
	nop
	li      $at, 0x00A1
	beq     $s0, $at, .L802877DC
	nop
	li      $at, 0x00A2
	beq     $s0, $at, .L802877C4
	nop
	li      $at, 0x00D3
	beq     $s0, $at, .L802877AC
	nop
	li      $at, 0x0241
	beq     $s0, $at, .L80287838
	nop
	b       .L8028784C
	nop
.L80287778:
	addiu   $a0, $sp, 0x0028
	li      $a1, 0x0000
	li      $a2, 0x43FA0000
	jal     vecf_set
	li      $a3, 0xC2C80000
	b       .L8028784C
	nop
.L80287794:
	li      $at, 0xC3960000
	mtc1    $at, $f18
	addiu   $t9, $sp, 0x0028
	swc1    $f18, 0x0008($t9)
	b       .L8028784C
	nop
.L802877AC:
	li      $at, 0xC3960000
	mtc1    $at, $f4
	addiu   $t1, $sp, 0x0028
	swc1    $f4, 0x0008($t1)
	b       .L8028784C
	nop
.L802877C4:
	li      $at, 0xC3960000
	mtc1    $at, $f6
	addiu   $t2, $sp, 0x0028
	swc1    $f6, 0x0008($t2)
	b       .L8028784C
	nop
.L802877DC:
	lui     $at, %hi(camera_803372EC)
	lwc1    $f12, %lo(camera_803372EC)($at)
	lui     $at, %hi(camera_803372F0)
	li.u    $a2, 0x44AEE000
	li.l    $a2, 0x44AEE000
	jal     camera_802892D8
	lwc1    $f14, %lo(camera_803372F0)($at)
	li      $at, 0x0001
	bne     $v0, $at, .L80287814
	nop
	li      $at, 0xC3960000
	mtc1    $at, $f8
	addiu   $t4, $sp, 0x0028
	swc1    $f8, 0x0008($t4)
.L80287814:
	b       .L8028784C
	nop
.L8028781C:
	lui     $t3, %hi(_camera_bss+0x328)
	lh      $t3, %lo(_camera_bss+0x328)($t3)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t6, $t3, 0x0002
	sh      $t6, %lo(_camera_bss+0x328)($at)
	b       .L8028784C
	nop
.L80287838:
	li      $t5, 0x0001
	lui     $at, %hi(_camera_bss+0x1B4)
	sb      $t5, %lo(_camera_bss+0x1B4)($at)
	b       .L8028784C
	nop
.L8028784C:
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lw      $a0, 0x0038($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a1, $t7, 0x0004
	addiu   $a3, $t7, 0x0010
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	lw      $t0, 0x0038($sp)
	li      $at, 0x0003
	lbu     $t8, 0x0000($t0)
	beq     $t8, $at, .L802878BC
	nop
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x0008($t9)
	addiu   $a3, $sp, 0x0034
	lwc1    $f12, 0x0004($t9)
	lw      $a2, 0x000C($t9)
	jal     map_80381900
	add.s   $f14, $f10, $f16
	li      $at, 0x42FA0000
	mtc1    $at, $f18
	lw      $t1, 0x0038($sp)
	add.s   $f4, $f0, $f18
	swc1    $f4, 0x0014($t1)
.L802878BC:
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0038($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $a1, 0x0038($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x000C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0038($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $a1, 0x0038($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x0024
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0038($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x0018
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $a1, 0x0038($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x008C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0038($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x0080
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $t2, 0x0038($sp)
	li      $at, 0x000D
	lbu     $t4, 0x0000($t2)
	bne     $t4, $at, .L80287980
	nop
	lw      $t3, 0x0038($sp)
	jal     camera_8028D888
	lbu     $a0, 0x0000($t3)
.L80287980:
	jal     camera_8028526C
	lw      $a0, 0x0038($sp)
	lw      $t6, 0x0038($sp)
	addiu   $a0, $t6, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $t6, 0x0010
	lui     $at, %hi(_camera_bss+0x1F4)
	sh      $v0, %lo(_camera_bss+0x1F4)($at)
	lui     $t5, %hi(_camera_bss+0x1F4)
	lh      $t5, %lo(_camera_bss+0x1F4)($t5)
	lui     $at, %hi(_camera_bss+0x1F6)
	sh      $t5, %lo(_camera_bss+0x1F6)($at)
	lui     $t7, %hi(_camera_bss+0x1F4)
	lh      $t7, %lo(_camera_bss+0x1F4)($t7)
	lw      $t0, 0x0038($sp)
	sh      $t7, 0x0002($t0)
	lui     $t8, %hi(_camera_bss+0x1F4)
	lh      $t8, %lo(_camera_bss+0x1F4)($t8)
	lw      $t9, 0x0038($sp)
	sh      $t8, 0x003A($t9)
	b       .L802879D8
	nop
.L802879D8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_802879EC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	lui     $t6, %hi(camera_stagescene)
	lw      $t6, %lo(camera_stagescene)($t6)
	bgez    $t6, .L80287A10
	sra     $t7, $t6, 5
	addiu   $at, $t6, 0x001F
	sra     $t7, $at, 5
.L80287A10:
	sw      $t7, 0x0028($sp)
	lui     $t8, %hi(camera_stagescene)
	lw      $t8, %lo(camera_stagescene)($t8)
	li      $t5, 0x0001
	andi    $t1, $t8, 0x000F
	addiu   $t2, $t1, -0x0001
	andi    $t9, $t8, 0x0010
	bgez    $t9, .L80287A3C
	sra     $t0, $t9, 2
	addiu   $at, $t9, 0x0003
	sra     $t0, $at, 2
.L80287A3C:
	andi    $t3, $t2, 0x0003
	addu    $t4, $t0, $t3
	sllv    $t6, $t5, $t4
	sw      $t6, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	slti    $at, $t7, 0x0013
	bnez    $at, .L80287A64
	nop
	sw      $0, 0x0028($sp)
	sw      $0, 0x0024($sp)
.L80287A64:
	lui     $t9, %hi(_camera_bss+0x328)
	lh      $t9, %lo(_camera_bss+0x328)($t9)
	andi    $t8, $t9, 0x8000
	beqz    $t8, .L80287BA4
	nop
	lui     $t1, %hi(_camera_bss+0x78)
	lbu     $t1, %lo(_camera_bss+0x78)($t1)
	slti    $at, $t1, 0x0002
	bnez    $at, .L80287B88
	nop
	lw      $t2, 0x0028($sp)
	lui     $t0, %hi(camera_pause_data)
	lw      $t3, 0x0024($sp)
	addu    $t0, $t0, $t2
	lbu     $t0, %lo(camera_pause_data)($t0)
	and     $t5, $t0, $t3
	beqz    $t5, .L80287B80
	nop
	lui     $t4, %hi(_camera_bss+0x6B0)
	lw      $t4, %lo(_camera_bss+0x6B0)($t4)
	lw      $t6, 0x0040($sp)
	lwc1    $f4, 0x0028($t4)
	swc1    $f4, 0x0028($t6)
	lui     $t7, %hi(camera_8032DF60)
	lui     $t9, %hi(_camera_bss+0x6B0)
	lw      $t9, %lo(_camera_bss+0x6B0)($t9)
	lw      $t7, %lo(camera_8032DF60)($t7)
	li      $at, 0x40000000
	lwc1    $f8, 0x0068($t9)
	lwc1    $f6, 0x0008($t7)
	mtc1    $at, $f16
	lw      $t8, 0x0040($sp)
	add.s   $f10, $f6, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($t8)
	lui     $t1, %hi(_camera_bss+0x6B0)
	lw      $t1, %lo(_camera_bss+0x6B0)($t1)
	lw      $t2, 0x0040($sp)
	lwc1    $f4, 0x002C($t1)
	swc1    $f4, 0x0030($t2)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0040($sp)
	addiu   $t0, $sp, 0x0030
	sw      $t0, 0x0010($sp)
	addiu   $a2, $sp, 0x0034
	addiu   $a3, $sp, 0x0032
	addiu   $a1, $a1, 0x0004
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0028
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0040($sp)
	lh      $t3, 0x0030($sp)
	li.u    $a2, 0x45BB8000
	li.l    $a2, 0x45BB8000
	li      $a3, 0x1000
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x001C
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
	lui     $t5, %hi(stage_index)
	lh      $t5, %lo(stage_index)($t5)
	li      $at, 0x000D
	beq     $t5, $at, .L80287B80
	nop
	lw      $t4, 0x0040($sp)
	move    $a2, $0
	addiu   $a0, $t4, 0x001C
	jal     camera_802806A4
	addiu   $a1, $t4, 0x0028
.L80287B80:
	b       .L80287B9C
	nop
.L80287B88:
	lui     $t6, %hi(_camera_bss+0x78)
	lbu     $t6, %lo(_camera_bss+0x78)($t6)
	lui     $at, %hi(_camera_bss+0x78)
	addiu   $t7, $t6, 0x0001
	sb      $t7, %lo(_camera_bss+0x78)($at)
.L80287B9C:
	b       .L80287BAC
	nop
.L80287BA4:
	lui     $at, %hi(_camera_bss+0x78)
	sb      $0, %lo(_camera_bss+0x78)($at)
.L80287BAC:
	b       .L80287BB4
	nop
.L80287BB4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl camera_80287BC4
camera_80287BC4:
	li      $t6, 0x0004
	lui     $at, %hi(_camera_bss+0x164)
	sh      $t6, %lo(_camera_bss+0x164)($at)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80287BE0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0018($t6)
	sh      $t7, 0x001E($sp)
	lw      $a0, 0x0024($sp)
	jal     arena_alloc
	li      $a1, 0x006C
	sw      $v0, 0x0018($sp)
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0020($sp)
	sw      $t8, 0x0018($t9)
	lh      $t0, 0x001E($sp)
	lw      $t1, 0x0018($sp)
	sb      $t0, 0x0000($t1)
	lh      $t2, 0x001E($sp)
	lw      $t3, 0x0018($sp)
	sb      $t2, 0x0001($t3)
	lw      $t4, 0x0018($sp)
	sb      $0, 0x0030($t4)
	lw      $t5, 0x0018($sp)
	sb      $0, 0x0064($t5)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0018($sp)
	lwc1    $f4, 0x0028($t6)
	swc1    $f4, 0x0028($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	lwc1    $f6, 0x002C($t8)
	swc1    $f6, 0x0068($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	lwc1    $f8, 0x0030($t0)
	swc1    $f8, 0x002C($t1)
	lw      $t2, 0x0018($sp)
	sh      $0, 0x0002($t2)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	addiu   $a0, $a0, 0x0010
	jal     vecf_cpy
	addiu   $a1, $a1, 0x001C
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0028
	b       .L80287CA8
	nop
.L80287CA8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80287CB8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0018($t6)
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(_camera_bss+0x1F2)
	lh      $t8, %lo(_camera_bss+0x1F2)($t8)
	lw      $t9, 0x0028($sp)
	sh      $t8, 0x003A($t9)
	lw      $a0, 0x0028($sp)
	la.u    $a1, _camera_bss+0x178
	la.l    $a1, _camera_bss+0x178
	addiu   $a1, $a1, 0x008C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x001C
	lw      $a0, 0x0028($sp)
	la.u    $a1, _camera_bss+0x178
	la.l    $a1, _camera_bss+0x178
	addiu   $a1, $a1, 0x0080
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0028
	jal     camera_802879EC
	lw      $a0, 0x0028($sp)
	b       .L80287D20
	nop
.L80287D20:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl s_stage_camera
s_stage_camera:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0034($sp)
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x0038($sp)
	sw      $t7, 0x0028($sp)
	lw      $s0, 0x0030($sp)
	beqz    $s0, .L80287D78
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80287D8C
	nop
	b       .L80287D9C
	nop
.L80287D78:
	lw      $a0, 0x002C($sp)
	jal     camera_80287BE0
	lw      $a1, 0x0038($sp)
	b       .L80287D9C
	nop
.L80287D8C:
	jal     camera_80287CB8
	lw      $a0, 0x002C($sp)
	b       .L80287D9C
	nop
.L80287D9C:
	b       .L80287DAC
	move    $v0, $0
	b       .L80287DAC
	nop
.L80287DAC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80287DC0:
	sw      $a0, 0x0000($sp)
	b       .L80287DCC
	nop
.L80287DCC:
	jr      $ra
	nop

camera_80287DD4:
	sw      $a0, 0x0000($sp)
	b       .L80287DE0
	nop
.L80287DE0:
	jr      $ra
	nop

camera_80287DE8:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0004($a0)
	lwc1    $f16, 0x0004($a1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($a0)
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x0008($a1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80287E28:
	lwc1    $f4, 0x00A0($a1)
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x00A4($a1)
	swc1    $f6, 0x0004($a0)
	lwc1    $f8, 0x00A8($a1)
	swc1    $f8, 0x0008($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80287E50:
	lwc1    $f4, 0x0000($a1)
	swc1    $f4, 0x00A0($a0)
	lwc1    $f6, 0x0004($a1)
	swc1    $f6, 0x00A4($a0)
	lwc1    $f8, 0x0008($a1)
	swc1    $f8, 0x00A8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80287E78:
	lw      $t6, 0x00C4($a1)
	sh      $t6, 0x0000($a0)
	lw      $t7, 0x00C8($a1)
	sh      $t7, 0x0002($a0)
	lw      $t8, 0x00CC($a1)
	sh      $t8, 0x0004($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80287EA0:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	sw      $a3, 0x005C($sp)
	swc1    $f12, 0x0050($sp)
	sdc1    $f20, 0x0010($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0050($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80287EE8
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0050($sp)
.L80287EE8:
	li      $at, 0x3F800000
	lwc1    $f16, 0x0050($sp)
	mtc1    $at, $f10
	mtc1    $at, $f4
	addiu   $t6, $sp, 0x0040
	sub.s   $f18, $f10, $f16
	mtc1    $at, $f10
	li      $at, 0x40C00000
	sub.s   $f6, $f4, $f16
	sub.s   $f4, $f10, $f16
	mul.s   $f8, $f18, $f6
	mtc1    $at, $f6
	mul.s   $f18, $f8, $f4
	div.s   $f10, $f18, $f6
	swc1    $f10, 0x0000($t6)
	lwc1    $f16, 0x0050($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	mul.s   $f8, $f16, $f16
	lui     $at, %hi(camera_803372F4)
	addiu   $t7, $sp, 0x0040
	mul.s   $f4, $f8, $f16
	lwc1    $f16, %lo(camera_803372F4)($at)
	div.s   $f6, $f4, $f18
	sub.s   $f10, $f6, $f8
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x0004($t7)
	lwc1    $f18, 0x0050($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	neg.s   $f6, $f18
	addiu   $t8, $sp, 0x0040
	mul.s   $f8, $f6, $f18
	nop
	mul.s   $f10, $f8, $f18
	mtc1    $at, $f8
	mul.s   $f6, $f18, $f18
	div.s   $f4, $f10, $f16
	div.s   $f10, $f6, $f8
	mtc1    $at, $f6
	lui     $at, %hi(camera_803372F8)
	div.s   $f8, $f18, $f6
	add.s   $f16, $f4, $f10
	lwc1    $f10, %lo(camera_803372F8)($at)
	add.s   $f4, $f16, $f8
	add.s   $f18, $f4, $f10
	swc1    $f18, 0x0008($t8)
	lwc1    $f6, 0x0050($sp)
	li      $at, 0x40C00000
	mtc1    $at, $f4
	mul.s   $f16, $f6, $f6
	addiu   $t9, $sp, 0x0040
	mul.s   $f8, $f16, $f6
	div.s   $f10, $f8, $f4
	swc1    $f10, 0x000C($t9)
	lw      $t1, 0x0058($sp)
	addiu   $t0, $sp, 0x0040
	lwc1    $f18, 0x0000($t0)
	lw      $t2, 0x005C($sp)
	lwc1    $f16, 0x0000($t1)
	lwc1    $f8, 0x0004($t0)
	lwc1    $f4, 0x0000($t2)
	mul.s   $f6, $f18, $f16
	lw      $t3, 0x0060($sp)
	lwc1    $f16, 0x0008($t0)
	mul.s   $f10, $f8, $f4
	lwc1    $f8, 0x0000($t3)
	lw      $t4, 0x0064($sp)
	lw      $t5, 0x0054($sp)
	mul.s   $f4, $f16, $f8
	lwc1    $f16, 0x000C($t0)
	add.s   $f18, $f6, $f10
	lwc1    $f10, 0x0000($t4)
	mul.s   $f8, $f10, $f16
	add.s   $f6, $f18, $f4
	add.s   $f18, $f8, $f6
	swc1    $f18, 0x0000($t5)
	lw      $t7, 0x0058($sp)
	addiu   $t6, $sp, 0x0040
	lwc1    $f4, 0x0000($t6)
	lw      $t8, 0x005C($sp)
	lwc1    $f10, 0x0004($t7)
	lwc1    $f8, 0x0004($t6)
	lwc1    $f6, 0x0004($t8)
	mul.s   $f16, $f4, $f10
	lw      $t9, 0x0060($sp)
	lwc1    $f10, 0x0008($t6)
	mul.s   $f18, $f8, $f6
	lwc1    $f8, 0x0004($t9)
	lw      $t1, 0x0064($sp)
	lw      $t2, 0x0054($sp)
	mul.s   $f6, $f10, $f8
	lwc1    $f10, 0x000C($t6)
	add.s   $f4, $f16, $f18
	lwc1    $f18, 0x0004($t1)
	mul.s   $f8, $f18, $f10
	add.s   $f16, $f4, $f6
	add.s   $f4, $f8, $f16
	swc1    $f4, 0x0004($t2)
	lw      $t4, 0x0058($sp)
	addiu   $t3, $sp, 0x0040
	lwc1    $f6, 0x0000($t3)
	lw      $t0, 0x005C($sp)
	lwc1    $f18, 0x0008($t4)
	lwc1    $f8, 0x0004($t3)
	lwc1    $f16, 0x0008($t0)
	mul.s   $f10, $f6, $f18
	lw      $t5, 0x0060($sp)
	lwc1    $f18, 0x0008($t3)
	mul.s   $f4, $f8, $f16
	lwc1    $f8, 0x0008($t5)
	lw      $t7, 0x0064($sp)
	lw      $t8, 0x0054($sp)
	mul.s   $f16, $f18, $f8
	lwc1    $f18, 0x000C($t3)
	add.s   $f6, $f10, $f4
	lwc1    $f4, 0x0008($t7)
	mul.s   $f8, $f4, $f18
	add.s   $f10, $f6, $f16
	add.s   $f6, $f8, $f10
	swc1    $f6, 0x0008($t8)
	li      $at, 0xBF000000
	mtc1    $at, $f16
	lwc1    $f4, 0x0050($sp)
	lui     $at, %hi(camera_803372FC)
	lwc1    $f6, %lo(camera_803372FC)($at)
	mul.s   $f18, $f16, $f4
	addiu   $t9, $sp, 0x0040
	mul.s   $f8, $f18, $f4
	add.s   $f10, $f8, $f4
	sub.s   $f16, $f10, $f6
	swc1    $f16, 0x0000($t9)
	li      $at, 0x3FC00000
	mtc1    $at, $f18
	lwc1    $f8, 0x0050($sp)
	li      $at, 0x40000000
	mtc1    $at, $f6
	mul.s   $f4, $f18, $f8
	li      $at, 0x3F000000
	addiu   $t1, $sp, 0x0040
	mul.s   $f10, $f4, $f8
	mtc1    $at, $f4
	mul.s   $f16, $f6, $f8
	sub.s   $f18, $f10, $f16
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0004($t1)
	li      $at, 0xBFC00000
	mtc1    $at, $f8
	lwc1    $f10, 0x0050($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	mul.s   $f16, $f8, $f10
	addiu   $t6, $sp, 0x0040
	mul.s   $f18, $f16, $f10
	add.s   $f4, $f18, $f10
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t6)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	lwc1    $f18, 0x0050($sp)
	lui     $at, %hi(camera_80337300)
	lwc1    $f6, %lo(camera_80337300)($at)
	mul.s   $f10, $f16, $f18
	addiu   $t2, $sp, 0x0040
	mul.s   $f4, $f10, $f18
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x000C($t2)
	lw      $t0, 0x0058($sp)
	addiu   $t4, $sp, 0x0040
	lwc1    $f16, 0x0000($t4)
	lw      $t5, 0x005C($sp)
	lwc1    $f10, 0x0000($t0)
	lwc1    $f4, 0x0004($t4)
	lwc1    $f6, 0x0000($t5)
	mul.s   $f18, $f16, $f10
	lw      $t7, 0x0060($sp)
	lwc1    $f10, 0x0008($t4)
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0000($t7)
	lw      $t3, 0x0064($sp)
	mul.s   $f6, $f10, $f4
	lwc1    $f10, 0x000C($t4)
	add.s   $f16, $f18, $f8
	lwc1    $f8, 0x0000($t3)
	mul.s   $f4, $f8, $f10
	add.s   $f18, $f16, $f6
	add.s   $f16, $f4, $f18
	swc1    $f16, 0x003C($sp)
	lw      $t9, 0x0058($sp)
	addiu   $t8, $sp, 0x0040
	lwc1    $f6, 0x0000($t8)
	lw      $t1, 0x005C($sp)
	lwc1    $f8, 0x0004($t9)
	lwc1    $f4, 0x0004($t8)
	lwc1    $f18, 0x0004($t1)
	mul.s   $f10, $f6, $f8
	lw      $t6, 0x0060($sp)
	lwc1    $f8, 0x0008($t8)
	mul.s   $f16, $f4, $f18
	lwc1    $f4, 0x0004($t6)
	lw      $t2, 0x0064($sp)
	mul.s   $f18, $f8, $f4
	lwc1    $f8, 0x000C($t8)
	add.s   $f6, $f10, $f16
	lwc1    $f16, 0x0004($t2)
	mul.s   $f4, $f16, $f8
	add.s   $f10, $f6, $f18
	add.s   $f6, $f4, $f10
	swc1    $f6, 0x0038($sp)
	lw      $t5, 0x0058($sp)
	addiu   $t0, $sp, 0x0040
	lwc1    $f18, 0x0000($t0)
	lw      $t7, 0x005C($sp)
	lwc1    $f16, 0x0008($t5)
	lwc1    $f4, 0x0004($t0)
	lwc1    $f10, 0x0008($t7)
	mul.s   $f8, $f18, $f16
	lw      $t3, 0x0060($sp)
	lwc1    $f16, 0x0008($t0)
	mul.s   $f6, $f4, $f10
	lwc1    $f4, 0x0008($t3)
	lw      $t4, 0x0064($sp)
	mul.s   $f10, $f16, $f4
	lwc1    $f16, 0x000C($t0)
	add.s   $f18, $f8, $f6
	lwc1    $f6, 0x0008($t4)
	mul.s   $f4, $f6, $f16
	add.s   $f8, $f18, $f10
	add.s   $f18, $f4, $f8
	swc1    $f18, 0x0034($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0034($sp)
	mul.s   $f6, $f10, $f10
	nop
	mul.s   $f4, $f16, $f16
	jal     sqrtf
	add.s   $f12, $f6, $f4
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     atan2
	lwc1    $f14, 0x0038($sp)
	lui     $at, %hi(_camera_bss+0x102)
	sh      $v0, %lo(_camera_bss+0x102)($at)
	lwc1    $f12, 0x0034($sp)
	jal     atan2
	lwc1    $f14, 0x003C($sp)
	lui     $at, %hi(_camera_bss+0x104)
	sh      $v0, %lo(_camera_bss+0x104)($at)
	b       .L802882D0
	nop
.L802882D0:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

camera_802882E4:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0070($sp)
	sw      $a1, 0x0074($sp)
	sw      $a2, 0x0078($sp)
	sw      $a3, 0x007C($sp)
	sw      $0, 0x006C($sp)
	sw      $0, 0x0038($sp)
	lw      $t6, 0x007C($sp)
	lwc1    $f4, 0x0000($t6)
	swc1    $f4, 0x0034($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x002C($sp)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0028($sp)
	lw      $t7, 0x0078($sp)
	lh      $t8, 0x0000($t7)
	sw      $t8, 0x0024($sp)
	lw      $t9, 0x0078($sp)
	lh      $t0, 0x0000($t9)
	bgez    $t0, .L80288354
	nop
	sw      $0, 0x0024($sp)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0034($sp)
.L80288354:
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x0074($sp)
	li      $at, -0x0001
	sll     $t3, $t2, 3
	addu    $t4, $t1, $t3
	lb      $t5, 0x0000($t4)
	beq     $t5, $at, .L80288394
	nop
	lb      $t6, 0x0008($t4)
	li      $at, -0x0001
	beq     $t6, $at, .L80288394
	nop
	lb      $t7, 0x0010($t4)
	li      $at, -0x0001
	bne     $t7, $at, .L8028839C
	nop
.L80288394:
	b       .L80288614
	li      $v0, 0x0001
.L8028839C:
	sw      $0, 0x0038($sp)
.L802883A0:
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x0038($sp)
	lw      $t1, 0x0074($sp)
	addu    $t0, $t8, $t9
	sll     $t2, $t0, 3
	addu    $t3, $t1, $t2
	lh      $t5, 0x0002($t3)
	sll     $t6, $t9, 2
	subu    $t6, $t6, $t9
	mtc1    $t5, $f16
	sll     $t6, $t6, 2
	addu    $t4, $sp, $t6
	cvt.s.w $f18, $f16
	swc1    $f18, 0x003C($t4)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0038($sp)
	lw      $t2, 0x0074($sp)
	addu    $t0, $t7, $t8
	sll     $t1, $t0, 3
	addu    $t3, $t2, $t1
	lh      $t5, 0x0004($t3)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	mtc1    $t5, $f4
	sll     $t9, $t9, 2
	addu    $t6, $sp, $t9
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0040($t6)
	lw      $t4, 0x0024($sp)
	lw      $t7, 0x0038($sp)
	lw      $t1, 0x0074($sp)
	addu    $t0, $t4, $t7
	sll     $t2, $t0, 3
	addu    $t3, $t1, $t2
	lh      $t5, 0x0006($t3)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	mtc1    $t5, $f8
	sll     $t8, $t8, 2
	addu    $t9, $sp, $t8
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0044($t9)
	lw      $t6, 0x0038($sp)
	addiu   $t4, $t6, 0x0001
	slti    $at, $t4, 0x0004
	bnez    $at, .L802883A0
	sw      $t4, 0x0038($sp)
	addiu   $t0, $sp, 0x003C
	addiu   $t1, $t0, 0x0018
	addiu   $t2, $t0, 0x0024
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	move    $a2, $t0
	addiu   $a3, $t0, 0x000C
	lwc1    $f12, 0x0034($sp)
	jal     camera_80287EA0
	lw      $a1, 0x0070($sp)
	lw      $t5, 0x0078($sp)
	lw      $t3, 0x0074($sp)
	lh      $t7, 0x0000($t5)
	sll     $t8, $t7, 3
	addu    $t9, $t3, $t8
	lbu     $t6, 0x0009($t9)
	beqz    $t6, .L802884EC
	nop
	lw      $t1, 0x0078($sp)
	lw      $t4, 0x0074($sp)
	lh      $t0, 0x0000($t1)
	sll     $t2, $t0, 3
	addu    $t5, $t4, $t2
	lbu     $t7, 0x0009($t5)
	mtc1    $t7, $f16
	bgez    $t7, .L802884D8
	cvt.s.w $f18, $f16
	li      $at, 0x4F800000
	mtc1    $at, $f4
	nop
	add.s   $f18, $f18, $f4
.L802884D8:
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	div.s   $f8, $f6, $f18
	swc1    $f8, 0x002C($sp)
.L802884EC:
	lw      $t8, 0x0078($sp)
	lw      $t3, 0x0074($sp)
	lh      $t9, 0x0000($t8)
	sll     $t6, $t9, 3
	addu    $t1, $t3, $t6
	lbu     $t0, 0x0011($t1)
	beqz    $t0, .L80288554
	nop
	lw      $t2, 0x0078($sp)
	lw      $t4, 0x0074($sp)
	lh      $t5, 0x0000($t2)
	sll     $t7, $t5, 3
	addu    $t8, $t4, $t7
	lbu     $t9, 0x0011($t8)
	mtc1    $t9, $f10
	bgez    $t9, .L80288540
	cvt.s.w $f16, $f10
	li      $at, 0x4F800000
	mtc1    $at, $f4
	nop
	add.s   $f16, $f16, $f4
.L80288540:
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	div.s   $f18, $f6, $f16
	swc1    $f18, 0x0028($sp)
.L80288554:
	lwc1    $f8, 0x0028($sp)
	lwc1    $f10, 0x002C($sp)
	lw      $t3, 0x007C($sp)
	sub.s   $f4, $f8, $f10
	lwc1    $f6, 0x0000($t3)
	mul.s   $f16, $f6, $f4
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0030($sp)
	lw      $t6, 0x007C($sp)
	lwc1    $f6, 0x0030($sp)
	li      $at, 0x3F800000
	lwc1    $f8, 0x0000($t6)
	mtc1    $at, $f16
	add.s   $f4, $f8, $f6
	swc1    $f4, 0x0000($t6)
	lw      $t1, 0x007C($sp)
	lwc1    $f10, 0x0000($t1)
	c.le.s  $f16, $f10
	nop
	bc1f    .L80288604
	nop
	lw      $t0, 0x0078($sp)
	lh      $t2, 0x0000($t0)
	addiu   $t5, $t2, 0x0001
	sh      $t5, 0x0000($t0)
	lw      $t7, 0x0078($sp)
	lw      $t4, 0x0074($sp)
	li      $at, -0x0001
	lh      $t8, 0x0000($t7)
	sll     $t9, $t8, 3
	addu    $t3, $t4, $t9
	lb      $t6, 0x0018($t3)
	bne     $t6, $at, .L802885EC
	nop
	lw      $t1, 0x0078($sp)
	sh      $0, 0x0000($t1)
	li      $t2, 0x0001
	sw      $t2, 0x006C($sp)
.L802885EC:
	lw      $t5, 0x007C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f18, 0x0000($t5)
	sub.s   $f6, $f18, $f8
	swc1    $f6, 0x0000($t5)
.L80288604:
	b       .L80288614
	lw      $v0, 0x006C($sp)
	b       .L80288614
	nop
.L80288614:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

.globl camera_80288624
camera_80288624:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li      $t6, 0x0002
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L80288684
	nop
	lui     $t8, %hi(_camera_bss+0x164)
	lh      $t8, %lo(_camera_bss+0x164)($t8)
	andi    $t9, $t8, 0x0004
	bnez    $t9, .L80288670
	nop
	lui     $t0, %hi(_camera_bss+0x164)
	lh      $t0, %lo(_camera_bss+0x164)($t0)
	lui     $at, %hi(_camera_bss+0x164)
	ori     $t1, $t0, 0x0004
	sh      $t1, %lo(_camera_bss+0x164)($at)
.L80288670:
	lui     $t2, %hi(_camera_bss+0x16C)
	lh      $t2, %lo(_camera_bss+0x16C)($t2)
	lui     $at, %hi(_camera_bss+0x16C)
	ori     $t3, $t2, 0x0008
	sh      $t3, %lo(_camera_bss+0x16C)($at)
.L80288684:
	lw      $t4, 0x0020($sp)
	li      $at, 0x0002
	bne     $t4, $at, .L802886DC
	nop
	lui     $t5, %hi(_camera_bss+0x164)
	lh      $t5, %lo(_camera_bss+0x164)($t5)
	andi    $t6, $t5, 0x0004
	beqz    $t6, .L802886DC
	nop
	jal     camera_80288718
	li      $a0, 0x0002
	lui     $t7, %hi(_camera_bss+0x164)
	lh      $t7, %lo(_camera_bss+0x164)($t7)
	li      $at, -0x0005
	and     $t8, $t7, $at
	lui     $at, %hi(_camera_bss+0x164)
	sh      $t8, %lo(_camera_bss+0x164)($at)
	lui     $t9, %hi(_camera_bss+0x16C)
	lh      $t9, %lo(_camera_bss+0x16C)($t9)
	lui     $at, %hi(_camera_bss+0x16C)
	ori     $t0, $t9, 0x0010
	sh      $t0, %lo(_camera_bss+0x16C)($at)
.L802886DC:
	lui     $t1, %hi(_camera_bss+0x164)
	lh      $t1, %lo(_camera_bss+0x164)($t1)
	andi    $t2, $t1, 0x0004
	beqz    $t2, .L802886F8
	nop
	li      $t3, 0x0001
	sw      $t3, 0x001C($sp)
.L802886F8:
	b       .L80288708
	lw      $v0, 0x001C($sp)
	b       .L80288708
	nop
.L80288708:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80288718:
	addiu   $sp, $sp, -0x0008
	li      $t6, 0x0002
	sw      $t6, 0x0004($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L802887AC
	nop
	lui     $t7, %hi(_camera_bss+0x164)
	lh      $t7, %lo(_camera_bss+0x164)($t7)
	andi    $t8, $t7, 0x0001
	bnez    $t8, .L802887AC
	nop
	lui     $t9, %hi(_camera_bss+0x164)
	lh      $t9, %lo(_camera_bss+0x164)($t9)
	lui     $at, %hi(_camera_bss+0x164)
	ori     $t0, $t9, 0x0001
	sh      $t0, %lo(_camera_bss+0x164)($at)
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L80288798
	nop
	lui     $t3, %hi(_camera_bss+0x164)
	lh      $t3, %lo(_camera_bss+0x164)($t3)
	lui     $at, %hi(_camera_bss+0x164)
	ori     $t4, $t3, 0x0002
	sh      $t4, %lo(_camera_bss+0x164)($at)
	lui     $t5, %hi(_camera_bss+0x328)
	lh      $t5, %lo(_camera_bss+0x328)($t5)
	li      $at, -0x0003
	and     $t6, $t5, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t6, %lo(_camera_bss+0x328)($at)
.L80288798:
	lui     $t7, %hi(_camera_bss+0x16C)
	lh      $t7, %lo(_camera_bss+0x16C)($t7)
	lui     $at, %hi(_camera_bss+0x16C)
	ori     $t8, $t7, 0x0002
	sh      $t8, %lo(_camera_bss+0x16C)($at)
.L802887AC:
	li      $at, 0x0002
	bne     $a0, $at, .L80288854
	nop
	lui     $t9, %hi(_camera_bss+0x164)
	lh      $t9, %lo(_camera_bss+0x164)($t9)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L80288854
	nop
	lui     $t1, %hi(_camera_bss+0x164)
	lh      $t1, %lo(_camera_bss+0x164)($t1)
	li      $at, -0x0002
	and     $t2, $t1, $at
	lui     $at, %hi(_camera_bss+0x164)
	sh      $t2, %lo(_camera_bss+0x164)($at)
	lui     $t3, %hi(_camera_bss+0x164)
	lh      $t3, %lo(_camera_bss+0x164)($t3)
	andi    $t4, $t3, 0x0002
	beqz    $t4, .L80288828
	nop
	lui     $t5, %hi(_camera_bss+0x164)
	lh      $t5, %lo(_camera_bss+0x164)($t5)
	li      $at, -0x0003
	and     $t6, $t5, $at
	lui     $at, %hi(_camera_bss+0x164)
	sh      $t6, %lo(_camera_bss+0x164)($at)
	lui     $t7, %hi(_camera_bss+0x328)
	lh      $t7, %lo(_camera_bss+0x328)($t7)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t8, $t7, 0x0002
	b       .L80288840
	sh      $t8, %lo(_camera_bss+0x328)($at)
.L80288828:
	lui     $t9, %hi(_camera_bss+0x328)
	lh      $t9, %lo(_camera_bss+0x328)($t9)
	li      $at, -0x0003
	and     $t0, $t9, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t0, %lo(_camera_bss+0x328)($at)
.L80288840:
	lui     $t1, %hi(_camera_bss+0x16C)
	lh      $t1, %lo(_camera_bss+0x16C)($t1)
	lui     $at, %hi(_camera_bss+0x16C)
	ori     $t2, $t1, 0x0004
	sh      $t2, %lo(_camera_bss+0x16C)($at)
.L80288854:
	lui     $t3, %hi(_camera_bss+0x164)
	lh      $t3, %lo(_camera_bss+0x164)($t3)
	andi    $t4, $t3, 0x0001
	beqz    $t4, .L80288870
	nop
	li      $t5, 0x0001
	sw      $t5, 0x0004($sp)
.L80288870:
	b       .L80288880
	lw      $v0, 0x0004($sp)
	b       .L80288880
	nop
.L80288880:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_80288888:
	andi    $a0, $a0, 0x00FF
	addiu   $t6, $a0, -0x0001
	sltiu   $at, $t6, 0x0006
	beqz    $at, .L8028898C
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(camera_80337304)
	addu    $at, $at, $t6
	lw      $t6, %lo(camera_80337304)($at)
	jr      $t6
	nop
.globl L802888B4
L802888B4:
	li      $t7, 0x0600
	lui     $at, %hi(_camera_bss+0x148)
	sh      $t7, %lo(_camera_bss+0x148)($at)
	lui     $at, %hi(camera_8033731C)
	lwc1    $f4, %lo(camera_8033731C)($at)
	lui     $at, %hi(_camera_bss+0x150)
	swc1    $f4, %lo(_camera_bss+0x150)($at)
	b       .L802889A0
	nop
.globl L802888D8
L802888D8:
	li      $t8, 0x0300
	lui     $at, %hi(_camera_bss+0x148)
	sh      $t8, %lo(_camera_bss+0x148)($at)
	lui     $at, %hi(camera_80337320)
	lwc1    $f6, %lo(camera_80337320)($at)
	lui     $at, %hi(_camera_bss+0x150)
	swc1    $f6, %lo(_camera_bss+0x150)($at)
	b       .L802889A0
	nop
.globl L802888FC
L802888FC:
	li      $t9, 0x1000
	lui     $at, %hi(_camera_bss+0x148)
	sh      $t9, %lo(_camera_bss+0x148)($at)
	lui     $at, %hi(camera_80337324)
	lwc1    $f8, %lo(camera_80337324)($at)
	lui     $at, %hi(_camera_bss+0x150)
	swc1    $f8, %lo(_camera_bss+0x150)($at)
	b       .L802889A0
	nop
.globl L80288920
L80288920:
	li      $t0, 0x0600
	lui     $at, %hi(_camera_bss+0x148)
	sh      $t0, %lo(_camera_bss+0x148)($at)
	lui     $at, %hi(camera_80337328)
	lwc1    $f10, %lo(camera_80337328)($at)
	lui     $at, %hi(_camera_bss+0x150)
	swc1    $f10, %lo(_camera_bss+0x150)($at)
	b       .L802889A0
	nop
.globl L80288944
L80288944:
	li      $t1, 0x0600
	lui     $at, %hi(_camera_bss+0x148)
	sh      $t1, %lo(_camera_bss+0x148)($at)
	lui     $at, %hi(camera_8033732C)
	lwc1    $f16, %lo(camera_8033732C)($at)
	lui     $at, %hi(_camera_bss+0x150)
	swc1    $f16, %lo(_camera_bss+0x150)($at)
	b       .L802889A0
	nop
.globl L80288968
L80288968:
	li      $t2, 0x0400
	lui     $at, %hi(_camera_bss+0x148)
	sh      $t2, %lo(_camera_bss+0x148)($at)
	lui     $at, %hi(camera_80337330)
	lwc1    $f18, %lo(camera_80337330)($at)
	lui     $at, %hi(_camera_bss+0x150)
	swc1    $f18, %lo(_camera_bss+0x150)($at)
	b       .L802889A0
	nop
.L8028898C:
	lui     $at, %hi(_camera_bss+0x148)
	sh      $0, %lo(_camera_bss+0x148)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x150)
	swc1    $f4, %lo(_camera_bss+0x150)($at)
.L802889A0:
	jr      $ra
	nop
	jr      $ra
	nop

camera_802889B0:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0070($sp)
	sw      $a1, 0x0074($sp)
	lui     $t6, %hi(_camera_bss+0x148)
	lh      $t6, %lo(_camera_bss+0x148)($t6)
	bnez    $t6, .L802889EC
	nop
	addiu   $a0, $sp, 0x0060
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	b       .L80288BD0
	nop
.L802889EC:
	sw      $0, 0x006C($sp)
.L802889F0:
	lw      $t7, 0x006C($sp)
	lui     $t9, %hi(_camera_bss+0x110)
	sll     $t8, $t7, 4
	addu    $t9, $t9, $t8
	lh      $t9, %lo(_camera_bss+0x110)($t9)
	sll     $t0, $t7, 2
	subu    $t0, $t0, $t7
	mtc1    $t9, $f4
	sll     $t0, $t0, 2
	addu    $t1, $sp, $t0
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0030($t1)
	lw      $t2, 0x006C($sp)
	lui     $t4, %hi(_camera_bss+0x112)
	sll     $t3, $t2, 4
	addu    $t4, $t4, $t3
	lh      $t4, %lo(_camera_bss+0x112)($t4)
	sll     $t5, $t2, 2
	subu    $t5, $t5, $t2
	mtc1    $t4, $f8
	sll     $t5, $t5, 2
	addu    $t6, $sp, $t5
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0034($t6)
	lw      $t8, 0x006C($sp)
	lui     $t7, %hi(_camera_bss+0x114)
	sll     $t9, $t8, 4
	addu    $t7, $t7, $t9
	lh      $t7, %lo(_camera_bss+0x114)($t7)
	sll     $t0, $t8, 2
	subu    $t0, $t0, $t8
	mtc1    $t7, $f16
	sll     $t0, $t0, 2
	addu    $t1, $sp, $t0
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0038($t1)
	lw      $t3, 0x006C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0004
	bnez    $at, .L802889F0
	sw      $t4, 0x006C($sp)
	addiu   $t2, $sp, 0x0030
	addiu   $t5, $t2, 0x0018
	addiu   $t6, $t2, 0x0024
	lui     $at, %hi(_camera_bss+0x14C)
	lwc1    $f12, %lo(_camera_bss+0x14C)($at)
	sw      $t6, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	move    $a2, $t2
	addiu   $a3, $t2, 0x000C
	jal     camera_80287EA0
	addiu   $a1, $sp, 0x0060
	lui     $at, %hi(_camera_bss+0x14C)
	lwc1    $f4, %lo(_camera_bss+0x14C)($at)
	lui     $at, %hi(_camera_bss+0x150)
	lwc1    $f6, %lo(_camera_bss+0x150)($at)
	lui     $at, %hi(_camera_bss+0x14C)
	add.s   $f8, $f4, $f6
	swc1    $f8, %lo(_camera_bss+0x14C)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	nop
	c.le.s  $f10, $f8
	nop
	bc1f    .L80288BD0
	nop
	sw      $0, 0x006C($sp)
.L80288AFC:
	lw      $t9, 0x006C($sp)
	la.u    $t0, _camera_bss+0x108
	la.l    $t0, _camera_bss+0x108
	sll     $t7, $t9, 4
	addiu   $t8, $t7, 0x0008
	addiu   $t1, $t7, 0x0018
	addu    $a1, $t1, $t0
	jal     vecs_cpy
	addu    $a0, $t8, $t0
	lw      $t3, 0x006C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0003
	bnez    $at, .L80288AFC
	sw      $t4, 0x006C($sp)
	lui     $t5, %hi(_camera_bss+0x148)
	lh      $t5, %lo(_camera_bss+0x148)($t5)
	la.u    $a0, _camera_bss+0x108
	la.l    $a0, _camera_bss+0x108
	addiu   $a0, $a0, 0x0038
	move    $a1, $t5
	move    $a2, $t5
	bgez    $t5, .L80288B60
	sra     $a3, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $a3, $at, 1
.L80288B60:
	jal     camera_80289C00
	nop
	lui     $at, %hi(_camera_bss+0x14C)
	lwc1    $f16, %lo(_camera_bss+0x14C)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lui     $at, %hi(_camera_bss+0x14C)
	sub.s   $f4, $f16, $f18
	swc1    $f4, %lo(_camera_bss+0x14C)($at)
	jal     o_script_80383CB4
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lui     $at, %hi(_camera_bss+0x150)
	mul.s   $f10, $f0, $f6
	swc1    $f10, %lo(_camera_bss+0x150)($at)
	lui     $at, %hi(_camera_bss+0x150)
	lwc1    $f8, %lo(_camera_bss+0x150)($at)
	lui     $at, %hi(camera_80337334)
	lwc1    $f16, %lo(camera_80337334)($at)
	c.lt.s  $f8, $f16
	nop
	bc1f    .L80288BD0
	nop
	lui     $at, %hi(camera_80337338)
	lwc1    $f18, %lo(camera_80337338)($at)
	lui     $at, %hi(_camera_bss+0x150)
	swc1    $f18, %lo(_camera_bss+0x150)($at)
.L80288BD0:
	addiu   $t2, $sp, 0x0060
	lwc1    $f4, 0x0000($t2)
	la.u    $a0, _camera_bss+0x154
	la.l    $a0, _camera_bss+0x154
	trunc.w.s $f6, $f4
	li      $a2, 0x0008
	mfc1    $a1, $f6
	jal     camera_802894B4
	nop
	addiu   $t9, $sp, 0x0060
	lwc1    $f10, 0x0004($t9)
	la.u    $a0, _camera_bss+0x156
	la.l    $a0, _camera_bss+0x156
	trunc.w.s $f8, $f10
	li      $a2, 0x0008
	mfc1    $a1, $f8
	jal     camera_802894B4
	nop
	addiu   $t7, $sp, 0x0060
	lwc1    $f16, 0x0008($t7)
	la.u    $a0, _camera_bss+0x158
	la.l    $a0, _camera_bss+0x158
	trunc.w.s $f18, $f16
	li      $a2, 0x0008
	mfc1    $a1, $f18
	jal     camera_802894B4
	nop
	lui     $t0, %hi(_camera_bss+0x154)
	lui     $t3, %hi(_camera_bss+0x156)
	lh      $t3, %lo(_camera_bss+0x156)($t3)
	lh      $t0, %lo(_camera_bss+0x154)($t0)
	or      $t4, $t0, $t3
	beqz    $t4, .L80288CB8
	nop
	addiu   $t5, $sp, 0x0028
	sw      $t5, 0x0010($sp)
	lw      $a0, 0x0070($sp)
	lw      $a1, 0x0074($sp)
	addiu   $a2, $sp, 0x002C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x002A
	lui     $t6, %hi(_camera_bss+0x154)
	lh      $t6, %lo(_camera_bss+0x154)($t6)
	lh      $t2, 0x002A($sp)
	addu    $t9, $t2, $t6
	sh      $t9, 0x002A($sp)
	lui     $t7, %hi(_camera_bss+0x156)
	lh      $t7, %lo(_camera_bss+0x156)($t7)
	lh      $t8, 0x0028($sp)
	addu    $t1, $t8, $t7
	sh      $t1, 0x0028($sp)
	lh      $t0, 0x0028($sp)
	lw      $a0, 0x0070($sp)
	lw      $a1, 0x0074($sp)
	lw      $a2, 0x002C($sp)
	lh      $a3, 0x002A($sp)
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
.L80288CB8:
	lui     $at, %hi(_camera_bss+0x148)
	sh      $0, %lo(_camera_bss+0x148)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x150)
	swc1    $f4, %lo(_camera_bss+0x150)($at)
	b       .L80288CD4
	nop
.L80288CD4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

camera_80288CE4:
	andi    $a0, $a0, 0xFFFF
	andi    $a1, $a1, 0xFFFF
	andi    $a2, $a2, 0xFFFF
	andi    $t6, $a1, 0x000F
	move    $a1, $t6
	andi    $t7, $a1, 0xFFFF
	move    $a1, $t7
	andi    $t8, $a2, 0x000F
	move    $a2, $t8
	andi    $t9, $a2, 0xFFFF
	move    $a2, $t9
	andi    $t0, $a1, 0x0002
	beqz    $t0, .L80288D40
	nop
	ori     $t1, $a0, 0x0002
	move    $a0, $t1
	andi    $t2, $a0, 0xFFFF
	move    $a0, $t2
	li      $at, -0x0002
	and     $t3, $a0, $at
	move    $a0, $t3
	andi    $t4, $a0, 0xFFFF
	move    $a0, $t4
.L80288D40:
	andi    $t5, $a2, 0x0002
	bnez    $t5, .L80288D60
	nop
	li      $at, -0x0003
	and     $t6, $a0, $at
	move    $a0, $t6
	andi    $t7, $a0, 0xFFFF
	move    $a0, $t7
.L80288D60:
	andi    $t8, $a1, 0x0001
	beqz    $t8, .L80288D90
	nop
	ori     $t9, $a0, 0x0001
	move    $a0, $t9
	andi    $t0, $a0, 0xFFFF
	move    $a0, $t0
	li      $at, -0x0003
	and     $t1, $a0, $at
	move    $a0, $t1
	andi    $t2, $a0, 0xFFFF
	move    $a0, $t2
.L80288D90:
	andi    $t3, $a2, 0x0001
	bnez    $t3, .L80288DB0
	nop
	li      $at, -0x0002
	and     $t4, $a0, $at
	move    $a0, $t4
	andi    $t5, $a0, 0xFFFF
	move    $a0, $t5
.L80288DB0:
	andi    $t6, $a1, 0x0008
	beqz    $t6, .L80288DE0
	nop
	ori     $t7, $a0, 0x0008
	move    $a0, $t7
	andi    $t8, $a0, 0xFFFF
	move    $a0, $t8
	li      $at, -0x0005
	and     $t9, $a0, $at
	move    $a0, $t9
	andi    $t0, $a0, 0xFFFF
	move    $a0, $t0
.L80288DE0:
	andi    $t1, $a2, 0x0008
	bnez    $t1, .L80288E00
	nop
	li      $at, -0x0009
	and     $t2, $a0, $at
	move    $a0, $t2
	andi    $t3, $a0, 0xFFFF
	move    $a0, $t3
.L80288E00:
	andi    $t4, $a1, 0x0004
	beqz    $t4, .L80288E30
	nop
	ori     $t5, $a0, 0x0004
	move    $a0, $t5
	andi    $t6, $a0, 0xFFFF
	move    $a0, $t6
	li      $at, -0x0009
	and     $t7, $a0, $at
	move    $a0, $t7
	andi    $t8, $a0, 0xFFFF
	move    $a0, $t8
.L80288E30:
	andi    $t9, $a2, 0x0004
	bnez    $t9, .L80288E50
	nop
	li      $at, -0x0005
	and     $t0, $a0, $at
	move    $a0, $t0
	andi    $t1, $a0, 0xFFFF
	move    $a0, $t1
.L80288E50:
	jr      $ra
	move    $v0, $a0
	jr      $ra
	nop
	jr      $ra
	nop

camera_80288E68:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sh      $0, 0x001E($sp)
	lw      $t6, 0x0020($sp)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, .L80288EB4
	nop
	lui     $t8, %hi(cont_1)
	lw      $t8, %lo(cont_1)($t8)
	lhu     $t9, 0x0010($t8)
	andi    $t0, $t9, 0x0010
	beqz    $t0, .L80288EC4
	nop
	jal     camera_80288624
	move    $a0, $0
	li      $at, 0x0002
	bne     $v0, $at, .L80288EC4
	nop
.L80288EB4:
	lh      $t1, 0x001E($sp)
	ori     $t2, $t1, 0x0004
	b       .L80288EF4
	sh      $t2, 0x001E($sp)
.L80288EC4:
	jal     camera_80288718
	move    $a0, $0
	li      $at, 0x0001
	bne     $v0, $at, .L80288EE8
	nop
	lh      $t3, 0x001E($sp)
	ori     $t4, $t3, 0x0001
	b       .L80288EF4
	sh      $t4, 0x001E($sp)
.L80288EE8:
	lh      $t5, 0x001E($sp)
	ori     $t6, $t5, 0x0002
	sh      $t6, 0x001E($sp)
.L80288EF4:
	lui     $t7, %hi(_camera_bss+0x328)
	lh      $t7, %lo(_camera_bss+0x328)($t7)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L80288F14
	nop
	lh      $t9, 0x001E($sp)
	ori     $t0, $t9, 0x0008
	sh      $t0, 0x001E($sp)
.L80288F14:
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	andi    $t2, $t1, 0x2000
	beqz    $t2, .L80288F34
	nop
	lh      $t3, 0x001E($sp)
	ori     $t4, $t3, 0x0010
	sh      $t4, 0x001E($sp)
.L80288F34:
	jal     hud_802E3B1C
	lh      $a0, 0x001E($sp)
	b       .L80288F4C
	lh      $v0, 0x001E($sp)
	b       .L80288F4C
	nop
.L80288F4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80288F5C:
	addiu   $sp, $sp, -0x0098
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0098($sp)
	sw      $a1, 0x009C($sp)
	sw      $a2, 0x00A0($sp)
	sw      $0, 0x006C($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0098($sp)
	lwc1    $f4, 0x0000($t6)
	swc1    $f4, 0x0070($sp)
	lw      $t7, 0x0098($sp)
	lwc1    $f6, 0x0004($t7)
	swc1    $f6, 0x0074($sp)
	lw      $t8, 0x0098($sp)
	lwc1    $f8, 0x0008($t8)
	swc1    $f8, 0x0078($sp)
	lwc1    $f10, 0x00A0($sp)
	swc1    $f10, 0x0080($sp)
	lwc1    $f16, 0x009C($sp)
	swc1    $f16, 0x007C($sp)
	jal     map_80380E8C
	addiu   $a0, $sp, 0x0070
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	beqz    $t9, .L80289178
	nop
	lh      $t0, 0x0086($sp)
	sw      $0, 0x0020($sp)
	blez    $t0, .L80289178
	nop
.L80288FD4:
	lh      $t1, 0x0086($sp)
	sll     $t2, $t1, 2
	addu    $t3, $sp, $t2
	lw      $t3, 0x0084($t3)
	sw      $t3, 0x006C($sp)
	lw      $t4, 0x0020($sp)
	addiu   $t6, $sp, 0x0024
	lw      $a1, 0x0098($sp)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	jal     vecf_cpy
	addu    $a0, $t5, $t6
	lw      $t7, 0x006C($sp)
	lwc1    $f18, 0x001C($t7)
	swc1    $f18, 0x0068($sp)
	lw      $t8, 0x006C($sp)
	lwc1    $f4, 0x0020($t8)
	swc1    $f4, 0x0064($sp)
	lw      $t9, 0x006C($sp)
	lwc1    $f6, 0x0024($t9)
	swc1    $f6, 0x0060($sp)
	lw      $t0, 0x006C($sp)
	lwc1    $f8, 0x0028($t0)
	swc1    $f8, 0x005C($sp)
	lw      $t1, 0x0020($sp)
	addiu   $t3, $sp, 0x0024
	lwc1    $f10, 0x0068($sp)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t4, $t2, $t3
	lwc1    $f16, 0x0000($t4)
	lwc1    $f6, 0x0004($t4)
	lwc1    $f4, 0x0064($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f16, 0x0008($t4)
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0060($sp)
	mul.s   $f6, $f16, $f4
	add.s   $f10, $f18, $f8
	lwc1    $f8, 0x005C($sp)
	add.s   $f18, $f6, $f10
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x0058($sp)
	lwc1    $f4, 0x0058($sp)
	mtc1    $0, $f6
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    .L802890AC
	nop
	b       .L802890B8
	swc1    $f4, 0x0054($sp)
.L802890AC:
	lwc1    $f10, 0x0058($sp)
	neg.s   $f18, $f10
	swc1    $f18, 0x0054($sp)
.L802890B8:
	lwc1    $f8, 0x0054($sp)
	lwc1    $f16, 0x00A0($sp)
	c.lt.s  $f8, $f16
	nop
	bc1f    .L80289160
	nop
	lwc1    $f6, 0x00A0($sp)
	lwc1    $f4, 0x0058($sp)
	lwc1    $f18, 0x0068($sp)
	lw      $t5, 0x0020($sp)
	sub.s   $f10, $f6, $f4
	addiu   $t7, $sp, 0x0024
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	mul.s   $f8, $f18, $f10
	sll     $t6, $t6, 2
	addu    $t8, $t6, $t7
	lwc1    $f16, 0x0000($t8)
	add.s   $f6, $f16, $f8
	swc1    $f6, 0x0000($t8)
	lwc1    $f4, 0x00A0($sp)
	lwc1    $f18, 0x0058($sp)
	lwc1    $f16, 0x0060($sp)
	lw      $t9, 0x0020($sp)
	sub.s   $f10, $f4, $f18
	addiu   $t1, $sp, 0x0024
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	mul.s   $f8, $f16, $f10
	sll     $t0, $t0, 2
	addu    $t2, $t0, $t1
	lwc1    $f6, 0x0008($t2)
	add.s   $f4, $f6, $f8
	swc1    $f4, 0x0008($t2)
	lw      $t3, 0x0020($sp)
	addiu   $t5, $sp, 0x0024
	lw      $a0, 0x0098($sp)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	jal     vecf_cpy
	addu    $a1, $t4, $t5
.L80289160:
	lw      $t6, 0x0020($sp)
	lh      $t8, 0x0086($sp)
	addiu   $t7, $t6, 0x0001
	slt     $at, $t7, $t8
	bnez    $at, .L80288FD4
	sw      $t7, 0x0020($sp)
.L80289178:
	b       .L80289188
	lw      $v0, 0x001C($sp)
	b       .L80289188
	nop
.L80289188:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0098
	jr      $ra
	nop

camera_80289198:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	sw      $0, 0x0004($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x000C($sp)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L802891FC
	nop
	lwc1    $f8, 0x0004($a0)
	lwc1    $f10, 0x0010($sp)
	c.eq.s  $f8, $f10
	nop
	bc1f    .L802891FC
	nop
	lwc1    $f16, 0x0008($a0)
	lwc1    $f18, 0x0014($sp)
	c.eq.s  $f16, $f18
	nop
	bc1f    .L802891FC
	nop
	li      $t6, 0x0001
	sw      $t6, 0x0004($sp)
.L802891FC:
	b       .L8028920C
	lw      $v0, 0x0004($sp)
	b       .L8028920C
	nop
.L8028920C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_80289214:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $0, 0x002C($sp)
	addiu   $t6, $sp, 0x0028
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	addiu   $a2, $sp, 0x0024
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x002A
	lh      $t7, 0x002A($sp)
	lh      $t8, 0x003A($sp)
	slt     $at, $t8, $t7
	beqz    $at, .L80289274
	nop
	lh      $t9, 0x003A($sp)
	sh      $t9, 0x002A($sp)
	lw      $t0, 0x002C($sp)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x002C($sp)
.L80289274:
	lh      $t2, 0x002A($sp)
	lh      $t3, 0x003E($sp)
	slt     $at, $t2, $t3
	beqz    $at, .L8028929C
	nop
	lh      $t4, 0x003E($sp)
	sh      $t4, 0x002A($sp)
	lw      $t5, 0x002C($sp)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x002C($sp)
.L8028929C:
	lh      $t7, 0x0028($sp)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x002A($sp)
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	b       .L802892C8
	lw      $v0, 0x002C($sp)
	b       .L802892C8
	nop
.L802892C8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_802892D8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	sw      $0, 0x0024($sp)
	addiu   $a0, $sp, 0x0018
	lw      $a1, 0x0028($sp)
	lw      $a2, 0x002C($sp)
	jal     vecf_set
	lw      $a3, 0x0030($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	addiu   $a1, $sp, 0x0018
	jal     camera_8028AC28
	addiu   $a0, $a0, 0x0004
	li      $at, 0x42C80000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    .L8028933C
	nop
	li      $t6, 0x0001
	sw      $t6, 0x0024($sp)
.L8028933C:
	b       .L8028934C
	lw      $v0, 0x0024($sp)
	b       .L8028934C
	nop
.L8028934C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028935C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L8028939C
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     camera_802893F4
	lw      $a2, 0x0020($sp)
	b       .L802893A8
	nop
.L8028939C:
	lwc1    $f4, 0x001C($sp)
	lw      $t8, 0x0018($sp)
	swc1    $f4, 0x0000($t8)
.L802893A8:
	lw      $t9, 0x0018($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f6, 0x0000($t9)
	c.eq.s  $f6, $f8
	nop
	bc1f    .L802893D4
	nop
	b       .L802893E4
	move    $v0, $0
	b       .L802893DC
	nop
.L802893D4:
	b       .L802893E4
	li      $v0, 0x0001
.L802893DC:
	b       .L802893E4
	nop
.L802893E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802893F4:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80289428
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0008($sp)
.L80289428:
	lwc1    $f10, 0x0004($sp)
	lwc1    $f16, 0x0000($a0)
	lwc1    $f4, 0x0008($sp)
	lwc1    $f8, 0x0000($a0)
	sub.s   $f18, $f10, $f16
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0000($a0)
	lwc1    $f16, 0x0000($a0)
	lwc1    $f18, 0x0004($sp)
	c.eq.s  $f16, $f18
	nop
	bc1f    .L80289470
	nop
	b       .L80289480
	move    $v0, $0
	b       .L80289478
	nop
.L80289470:
	b       .L80289480
	li      $v0, 0x0001
.L80289478:
	b       .L80289480
	nop
.L80289480:
	jr      $ra
	nop

camera_80289488:
	sw      $a2, 0x0008($sp)
	sub.s   $f4, $f14, $f12
	lwc1    $f6, 0x0008($sp)
	mul.s   $f8, $f4, $f6
	add.s   $f12, $f8, $f12
	b       .L802894AC
	mov.s   $f0, $f12
	b       .L802894AC
	nop
.L802894AC:
	jr      $ra
	nop

camera_802894B4:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x0000($a0)
	sh      $t6, 0x0006($sp)
	bnez    $a2, .L802894E0
	nop
	b       .L80289538
	sh      $a1, 0x0000($a0)
.L802894E0:
	lh      $t7, 0x0006($sp)
	subu    $t8, $t7, $a1
	sh      $t8, 0x0006($sp)
	lh      $t9, 0x0006($sp)
	div     $0, $t9, $a2
	mflo    $t0
	subu    $t1, $t9, $t0
	sh      $t1, 0x0006($sp)
	bnez    $a2, .L8028950C
	nop
	break   7
.L8028950C:
	li      $at, -0x0001
	bne     $a2, $at, .L80289524
	li      $at, 0x80000000
	bne     $t9, $at, .L80289524
	nop
	break   6
.L80289524:
	lh      $t2, 0x0006($sp)
	addu    $t3, $t2, $a1
	sh      $t3, 0x0006($sp)
	lh      $t4, 0x0006($sp)
	sh      $t4, 0x0000($a0)
.L80289538:
	lh      $t5, 0x0000($a0)
	bne     $t5, $a1, .L80289554
	nop
	b       .L80289564
	move    $v0, $0
	b       .L8028955C
	nop
.L80289554:
	b       .L80289564
	li      $v0, 0x0001
.L8028955C:
	b       .L80289564
	nop
.L80289564:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028956C:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	sh      $a0, 0x0006($sp)
	bnez    $a2, .L802895A4
	nop
	sll     $a0, $a1, 16
	sra     $t6, $a0, 16
	b       .L802895F8
	move    $a0, $t6
.L802895A4:
	lh      $t7, 0x0006($sp)
	subu    $t8, $t7, $a1
	sh      $t8, 0x0006($sp)
	lh      $t9, 0x0006($sp)
	div     $0, $t9, $a2
	mflo    $t0
	subu    $t1, $t9, $t0
	sh      $t1, 0x0006($sp)
	bnez    $a2, .L802895D0
	nop
	break   7
.L802895D0:
	li      $at, -0x0001
	bne     $a2, $at, .L802895E8
	li      $at, 0x80000000
	bne     $t9, $at, .L802895E8
	nop
	break   6
.L802895E8:
	lh      $t2, 0x0006($sp)
	addu    $t3, $t2, $a1
	sh      $t3, 0x0006($sp)
	lh      $a0, 0x0006($sp)
.L802895F8:
	b       .L80289608
	move    $v0, $a0
	b       .L80289608
	nop
.L80289608:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_80289610:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lw      $a2, 0x0020($sp)
	jal     camera_802893F4
	lw      $a1, 0x0000($t6)
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	lw      $a2, 0x0024($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_802893F4
	lw      $a1, 0x0004($t7)
	lw      $a0, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	lw      $a2, 0x0028($sp)
	addiu   $a0, $a0, 0x0008
	jal     camera_802893F4
	lw      $a1, 0x0008($t8)
	b       .L80289674
	nop
.L80289674:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80289684:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lw      $a2, 0x0020($sp)
	jal     camera_8028935C
	lw      $a1, 0x0000($t6)
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	lw      $a2, 0x0024($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_8028935C
	lw      $a1, 0x0004($t7)
	lw      $a0, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	lw      $a2, 0x0028($sp)
	addiu   $a0, $a0, 0x0008
	jal     camera_8028935C
	lw      $a1, 0x0008($t8)
	b       .L802896E8
	nop
.L802896E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802896F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lh      $a2, 0x0022($sp)
	jal     camera_802894B4
	lh      $a1, 0x0000($t6)
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	lh      $a2, 0x0026($sp)
	addiu   $a0, $a0, 0x0002
	jal     camera_802894B4
	lh      $a1, 0x0002($t7)
	lw      $a0, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	lh      $a2, 0x002A($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_802894B4
	lh      $a1, 0x0004($t8)
	b       .L8028975C
	nop
.L8028975C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028976C:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x0000($a0)
	subu    $t7, $a1, $t6
	sh      $t7, 0x0006($sp)
	bgez    $a2, .L802897AC
	nop
	subu    $t8, $0, $a2
	move    $a2, $t8
	sll     $t9, $a2, 16
	move    $a2, $t9
	sra     $t0, $a2, 16
	move    $a2, $t0
.L802897AC:
	lh      $t1, 0x0006($sp)
	blez    $t1, .L802897EC
	nop
	lh      $t2, 0x0006($sp)
	subu    $t3, $t2, $a2
	sh      $t3, 0x0006($sp)
	lh      $t4, 0x0006($sp)
	bltz    $t4, .L802897E0
	nop
	lh      $t5, 0x0006($sp)
	subu    $t6, $a1, $t5
	b       .L802897E4
	sh      $t6, 0x0000($a0)
.L802897E0:
	sh      $a1, 0x0000($a0)
.L802897E4:
	b       .L80289818
	nop
.L802897EC:
	lh      $t7, 0x0006($sp)
	addu    $t8, $t7, $a2
	sh      $t8, 0x0006($sp)
	lh      $t9, 0x0006($sp)
	bgtz    $t9, .L80289814
	nop
	lh      $t0, 0x0006($sp)
	subu    $t1, $a1, $t0
	b       .L80289818
	sh      $t1, 0x0000($a0)
.L80289814:
	sh      $a1, 0x0000($a0)
.L80289818:
	lh      $t2, 0x0000($a0)
	bne     $t2, $a1, .L80289834
	nop
	b       .L80289844
	move    $v0, $0
	b       .L8028983C
	nop
.L80289834:
	b       .L80289844
	li      $v0, 0x0001
.L8028983C:
	b       .L80289844
	nop
.L80289844:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028984C:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	subu    $t6, $a1, $a0
	sh      $t6, 0x0006($sp)
	bgez    $a2, .L80289890
	nop
	subu    $t7, $0, $a2
	move    $a2, $t7
	sll     $t8, $a2, 16
	move    $a2, $t8
	sra     $t9, $a2, 16
	move    $a2, $t9
.L80289890:
	lh      $t0, 0x0006($sp)
	blez    $t0, .L802898E4
	nop
	lh      $t1, 0x0006($sp)
	subu    $t2, $t1, $a2
	sh      $t2, 0x0006($sp)
	lh      $t3, 0x0006($sp)
	bltz    $t3, .L802898D0
	nop
	lh      $t4, 0x0006($sp)
	subu    $a0, $a1, $t4
	sll     $t5, $a0, 16
	move    $a0, $t5
	sra     $t6, $a0, 16
	b       .L802898DC
	move    $a0, $t6
.L802898D0:
	sll     $a0, $a1, 16
	sra     $t7, $a0, 16
	move    $a0, $t7
.L802898DC:
	b       .L80289924
	nop
.L802898E4:
	lh      $t8, 0x0006($sp)
	addu    $t9, $t8, $a2
	sh      $t9, 0x0006($sp)
	lh      $t0, 0x0006($sp)
	bgtz    $t0, .L80289918
	nop
	lh      $t1, 0x0006($sp)
	subu    $a0, $a1, $t1
	sll     $t2, $a0, 16
	move    $a0, $t2
	sra     $t3, $a0, 16
	b       .L80289924
	move    $a0, $t3
.L80289918:
	sll     $a0, $a1, 16
	sra     $t4, $a0, 16
	move    $a0, $t4
.L80289924:
	b       .L80289934
	move    $v0, $a0
	b       .L80289934
	nop
.L80289934:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028993C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L8028997C
	nop
	lw      $a0, 0x0018($sp)
	lh      $a1, 0x001E($sp)
	jal     camera_8028976C
	lh      $a2, 0x0022($sp)
	b       .L80289988
	nop
.L8028997C:
	lh      $t8, 0x001E($sp)
	lw      $t9, 0x0018($sp)
	sh      $t8, 0x0000($t9)
.L80289988:
	lw      $t0, 0x0018($sp)
	lh      $t2, 0x001E($sp)
	lh      $t1, 0x0000($t0)
	bne     $t1, $t2, .L802899AC
	nop
	b       .L802899BC
	move    $v0, $0
	b       .L802899B4
	nop
.L802899AC:
	b       .L802899BC
	li      $v0, 0x0001
.L802899B4:
	b       .L802899BC
	nop
.L802899BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802899CC:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	sw      $a2, 0x0010($sp)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x0000($a0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0010($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    .L80289A18
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f18
	lwc1    $f4, 0x0010($sp)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0010($sp)
.L80289A18:
	lwc1    $f8, 0x0004($sp)
	mtc1    $0, $f10
	nop
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80289A84
	nop
	lwc1    $f16, 0x0004($sp)
	lwc1    $f18, 0x0010($sp)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0004($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f6
	nop
	bc1f    .L80289A74
	nop
	lwc1    $f10, 0x000C($sp)
	lwc1    $f16, 0x0004($sp)
	sub.s   $f18, $f10, $f16
	b       .L80289A7C
	swc1    $f18, 0x0000($a0)
.L80289A74:
	lwc1    $f4, 0x000C($sp)
	swc1    $f4, 0x0000($a0)
.L80289A7C:
	b       .L80289ACC
	nop
.L80289A84:
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0010($sp)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0004($sp)
	lwc1    $f16, 0x0004($sp)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80289AC4
	nop
	lwc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x0004($sp)
	sub.s   $f8, $f4, $f6
	b       .L80289ACC
	swc1    $f8, 0x0000($a0)
.L80289AC4:
	lwc1    $f10, 0x000C($sp)
	swc1    $f10, 0x0000($a0)
.L80289ACC:
	lwc1    $f16, 0x0000($a0)
	lwc1    $f18, 0x000C($sp)
	c.eq.s  $f16, $f18
	nop
	bc1f    .L80289AF4
	nop
	b       .L80289B04
	move    $v0, $0
	b       .L80289AFC
	nop
.L80289AF4:
	b       .L80289B04
	li      $v0, 0x0001
.L80289AFC:
	b       .L80289B04
	nop
.L80289B04:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl camera_80289B0C
camera_80289B0C:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sub.s   $f4, $f14, $f12
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0010($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    .L80289B4C
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f10
	lwc1    $f16, 0x0010($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0010($sp)
.L80289B4C:
	lwc1    $f4, 0x0004($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80289BAC
	nop
	lwc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0010($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($sp)
	lwc1    $f18, 0x0004($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f4, $f18
	nop
	bc1f    .L80289BA0
	nop
	lwc1    $f6, 0x0004($sp)
	b       .L80289BA4
	sub.s   $f12, $f14, $f6
.L80289BA0:
	mov.s   $f12, $f14
.L80289BA4:
	b       .L80289BE8
	nop
.L80289BAC:
	lwc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0010($sp)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($sp)
	lwc1    $f18, 0x0004($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80289BE4
	nop
	lwc1    $f6, 0x0004($sp)
	b       .L80289BE8
	sub.s   $f12, $f14, $f6
.L80289BE4:
	mov.s   $f12, $f14
.L80289BE8:
	b       .L80289BF8
	mov.s   $f0, $f12
	b       .L80289BF8
	nop
.L80289BF8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_80289C00:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x002C($sp)
	lh      $t6, 0x0036($sp)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0024($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f10, 0x0024($sp)
	lwc1    $f8, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	div.s   $f4, $f10, $f18
	mul.s   $f16, $f8, $f10
	sub.s   $f6, $f16, $f4
	trunc.w.s $f8, $f6
	mfc1    $t8, $f8
	nop
	sh      $t8, 0x0000($t9)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x002C($sp)
	lh      $t0, 0x003A($sp)
	mtc1    $t0, $f10
	nop
	cvt.s.w $f18, $f10
	swc1    $f18, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f4, 0x0020($sp)
	lwc1    $f16, 0x002C($sp)
	lw      $t3, 0x0030($sp)
	div.s   $f10, $f4, $f8
	mul.s   $f6, $f16, $f4
	sub.s   $f18, $f6, $f10
	trunc.w.s $f16, $f18
	mfc1    $t2, $f16
	nop
	sh      $t2, 0x0002($t3)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x002C($sp)
	lh      $t4, 0x003E($sp)
	mtc1    $t4, $f4
	nop
	cvt.s.w $f8, $f4
	swc1    $f8, 0x001C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x001C($sp)
	lwc1    $f6, 0x002C($sp)
	lw      $t7, 0x0030($sp)
	div.s   $f4, $f10, $f16
	mul.s   $f18, $f6, $f10
	sub.s   $f8, $f18, $f4
	trunc.w.s $f6, $f8
	mfc1    $t6, $f6
	nop
	sh      $t6, 0x0004($t7)
	b       .L80289D10
	nop
.L80289D10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80289D20:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	sh      $0, 0x002E($sp)
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lwc1    $f4, 0x0024($t6)
	lwc1    $f6, 0x0050($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	la.u    $t7, _camera_bss+0x178
	la.l    $t7, _camera_bss+0x178
	lwc1    $f10, 0x0028($t7)
	lwc1    $f16, 0x0054($sp)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	la.u    $t8, _camera_bss+0x178
	la.l    $t8, _camera_bss+0x178
	lwc1    $f4, 0x002C($t8)
	lwc1    $f6, 0x0058($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f6, $f16, $f4
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0038($sp)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f16, 0x0038($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L80289F68
	nop
	lwc1    $f4, 0x0050($sp)
	addiu   $t9, $sp, 0x003C
	swc1    $f4, 0x0000($t9)
	lwc1    $f8, 0x0054($sp)
	addiu   $t0, $sp, 0x003C
	swc1    $f8, 0x0004($t0)
	lwc1    $f6, 0x0058($sp)
	addiu   $t1, $sp, 0x003C
	swc1    $f6, 0x0008($t1)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $t2, $sp, 0x0034
	sw      $t2, 0x0010($sp)
	addiu   $a0, $a0, 0x0024
	addiu   $a1, $sp, 0x003C
	addiu   $a2, $sp, 0x0038
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0036
	lwc1    $f10, 0x0038($sp)
	lwc1    $f18, 0x004C($sp)
	c.lt.s  $f10, $f18
	nop
	bc1f    .L80289F68
	nop
	la.u    $t3, _camera_bss+0x178
	la.l    $t3, _camera_bss+0x178
	addiu   $a0, $t3, 0x0024
	addiu   $a1, $t3, 0x0018
	addiu   $a2, $sp, 0x0032
	jal     camera_8028AB60
	addiu   $a3, $sp, 0x0030
	lh      $t4, 0x0036($sp)
	lh      $t5, 0x0032($sp)
	subu    $t6, $t4, $t5
	sh      $t6, 0x0036($sp)
	lh      $t7, 0x0034($sp)
	lh      $t8, 0x0030($sp)
	subu    $t9, $t7, $t8
	sh      $t9, 0x0034($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f4
	lwc1    $f16, 0x0038($sp)
	sub.s   $f8, $f16, $f4
	swc1    $f8, 0x0038($sp)
	lwc1    $f6, 0x0038($sp)
	mtc1    $0, $f10
	nop
	c.lt.s  $f6, $f10
	nop
	bc1f    .L80289EA0
	nop
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0038($sp)
.L80289EA0:
	li      $at, 0x44FA0000
	mtc1    $at, $f4
	lwc1    $f16, 0x004C($sp)
	sub.s   $f8, $f16, $f4
	swc1    $f8, 0x004C($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f10
	lwc1    $f6, 0x004C($sp)
	c.lt.s  $f6, $f10
	nop
	bc1f    .L80289EE0
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x004C($sp)
.L80289EE0:
	lwc1    $f16, 0x0038($sp)
	lwc1    $f4, 0x004C($sp)
	lh      $t0, 0x004A($sp)
	li      $at, 0x3F800000
	div.s   $f8, $f16, $f4
	mtc1    $t0, $f18
	mtc1    $at, $f6
	cvt.s.w $f16, $f18
	sub.s   $f10, $f6, $f8
	mul.s   $f4, $f16, $f10
	trunc.w.s $f6, $f4
	mfc1    $t2, $f6
	nop
	sh      $t2, 0x002E($sp)
	lh      $t3, 0x0036($sp)
	slti    $at, $t3, -0x1800
	bnez    $at, .L80289F50
	nop
	slti    $at, $t3, 0x0401
	beqz    $at, .L80289F50
	nop
	lh      $t4, 0x0034($sp)
	slti    $at, $t4, -0x1800
	bnez    $at, .L80289F50
	nop
	slti    $at, $t4, 0x1801
	bnez    $at, .L80289F68
	nop
.L80289F50:
	lh      $t5, 0x002E($sp)
	bgez    $t5, .L80289F64
	sra     $t6, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t6, $at, 1
.L80289F64:
	sh      $t6, 0x002E($sp)
.L80289F68:
	b       .L80289F78
	lh      $v0, 0x002E($sp)
	b       .L80289F78
	nop
.L80289F78:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_80289F88:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lui     $t6, %hi(_camera_bss+0x6B0)
	lw      $t6, %lo(_camera_bss+0x6B0)($t6)
	lh      $t7, 0x003A($t6)
	sh      $t7, 0x001E($sp)
	lw      $t8, 0x0020($sp)
	lwc1    $f6, 0x0028($sp)
	lwc1    $f4, 0x0000($t8)
	c.le.s  $f6, $f4
	nop
	bc1f    .L80289FD8
	nop
	lwc1    $f8, 0x0028($sp)
	lw      $t9, 0x0020($sp)
	swc1    $f8, 0x0000($t9)
.L80289FD8:
	lw      $t0, 0x0020($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f10, 0x0000($t0)
	c.le.s  $f10, $f16
	nop
	bc1f    .L8028A000
	nop
	lwc1    $f18, 0x002C($sp)
	lw      $t1, 0x0020($sp)
	swc1    $f18, 0x0000($t1)
.L8028A000:
	lw      $t2, 0x0020($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f4, 0x0008($t2)
	c.le.s  $f6, $f4
	nop
	bc1f    .L8028A028
	nop
	lwc1    $f8, 0x0030($sp)
	lw      $t3, 0x0020($sp)
	swc1    $f8, 0x0008($t3)
.L8028A028:
	lw      $t4, 0x0020($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f10, 0x0008($t4)
	c.le.s  $f10, $f16
	nop
	bc1f    .L8028A050
	nop
	lwc1    $f18, 0x0034($sp)
	lw      $t5, 0x0020($sp)
	swc1    $f18, 0x0008($t5)
.L8028A050:
	lw      $a0, 0x0024($sp)
	jal     camera_8028AAD8
	lw      $a1, 0x0020($sp)
	sh      $v0, 0x001E($sp)
	b       .L8028A070
	lh      $v0, 0x001E($sp)
	b       .L8028A070
	nop
.L8028A070:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028A080:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0030
	sw      $0, 0x0008($sp)
	sw      $0, 0x0004($sp)
	subu    $t6, $a1, $a0
	addiu   $t7, $t6, 0x4000
	sh      $t7, 0x002E($sp)
	lh      $t8, 0x002E($sp)
	bgez    $t8, .L8028A0C4
	nop
	sll     $a0, $a1, 16
	sra     $t9, $a0, 16
	b       .L8028A0DC
	move    $a0, $t9
.L8028A0C4:
	li      $at, 0x8000
	addu    $a0, $a1, $at
	sll     $t0, $a0, 16
	move    $a0, $t0
	sra     $t1, $a0, 16
	move    $a0, $t1
.L8028A0DC:
	b       .L8028A0EC
	move    $v0, $a0
	b       .L8028A0EC
	nop
.L8028A0EC:
	jr      $ra
	addiu   $sp, $sp, 0x0030

camera_8028A0F4:
	addiu   $sp, $sp, -0x0040
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	sh      $0, 0x0026($sp)
	sh      $0, 0x0024($sp)
	sh      $0, 0x0022($sp)
	sw      $0, 0x0004($sp)
	lh      $t6, 0x000A($a0)
	addiu   $t7, $sp, 0x0038
	sh      $t6, 0x0000($t7)
	lh      $t8, 0x0010($a0)
	addiu   $t9, $sp, 0x0038
	sh      $t8, 0x0002($t9)
	lh      $t0, 0x0016($a0)
	addiu   $t1, $sp, 0x0038
	sh      $t0, 0x0004($t1)
	lh      $t2, 0x000C($a0)
	addiu   $t3, $sp, 0x0030
	sh      $t2, 0x0000($t3)
	lh      $t4, 0x0012($a0)
	addiu   $t5, $sp, 0x0030
	sh      $t4, 0x0002($t5)
	lh      $t6, 0x0018($a0)
	addiu   $t7, $sp, 0x0030
	sh      $t6, 0x0004($t7)
	lh      $t8, 0x000E($a0)
	addiu   $t9, $sp, 0x0028
	sh      $t8, 0x0000($t9)
	lh      $t0, 0x0014($a0)
	addiu   $t1, $sp, 0x0028
	sh      $t0, 0x0002($t1)
	lh      $t2, 0x001A($a0)
	addiu   $t3, $sp, 0x0028
	sh      $t2, 0x0004($t3)
	sw      $0, 0x000C($sp)
.L8028A184:
	lw      $t4, 0x000C($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0008($sp)
	lw      $t6, 0x0008($sp)
	slti    $at, $t6, 0x0003
	bnez    $at, .L8028A1A4
	nop
	sw      $0, 0x0008($sp)
.L8028A1A4:
	lw      $t7, 0x000C($sp)
	lw      $t2, 0x0008($sp)
	addiu   $t9, $sp, 0x0038
	sll     $t8, $t7, 1
	sll     $t3, $t2, 1
	addu    $t4, $t3, $t9
	addu    $t0, $t8, $t9
	lh      $t1, 0x0000($t0)
	lh      $t5, 0x0000($t4)
	mtc1    $0, $f8
	subu    $t6, $t1, $t5
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8028A1F4
	nop
	b       .L8028A230
	swc1    $f6, 0x001C($sp)
.L8028A1F4:
	lw      $t7, 0x000C($sp)
	lw      $t9, 0x0008($sp)
	addiu   $t0, $sp, 0x0038
	sll     $t8, $t7, 1
	sll     $t4, $t9, 1
	addu    $t1, $t4, $t0
	addu    $t2, $t8, $t0
	lh      $t3, 0x0000($t2)
	lh      $t5, 0x0000($t1)
	subu    $t6, $t3, $t5
	subu    $t7, $0, $t6
	mtc1    $t7, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x001C($sp)
.L8028A230:
	lh      $t8, 0x0026($sp)
	lwc1    $f18, 0x001C($sp)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f8, $f4
	c.lt.s  $f8, $f18
	nop
	bc1f    .L8028A268
	nop
	lwc1    $f6, 0x001C($sp)
	trunc.w.s $f10, $f6
	mfc1    $t9, $f10
	nop
	sh      $t9, 0x0026($sp)
.L8028A268:
	lw      $t4, 0x000C($sp)
	lw      $t6, 0x0008($sp)
	addiu   $t1, $sp, 0x0030
	sll     $t0, $t4, 1
	sll     $t7, $t6, 1
	addu    $t8, $t7, $t1
	addu    $t3, $t0, $t1
	lh      $t5, 0x0000($t3)
	lh      $t2, 0x0000($t8)
	mtc1    $0, $f18
	subu    $t9, $t5, $t2
	mtc1    $t9, $f16
	nop
	cvt.s.w $f4, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    .L8028A2B8
	nop
	b       .L8028A2F4
	swc1    $f4, 0x0018($sp)
.L8028A2B8:
	lw      $t4, 0x000C($sp)
	lw      $t1, 0x0008($sp)
	addiu   $t3, $sp, 0x0030
	sll     $t0, $t4, 1
	sll     $t8, $t1, 1
	addu    $t5, $t8, $t3
	addu    $t6, $t0, $t3
	lh      $t7, 0x0000($t6)
	lh      $t2, 0x0000($t5)
	subu    $t9, $t7, $t2
	subu    $t4, $0, $t9
	mtc1    $t4, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x0018($sp)
.L8028A2F4:
	lh      $t0, 0x0024($sp)
	lwc1    $f10, 0x0018($sp)
	mtc1    $t0, $f16
	nop
	cvt.s.w $f18, $f16
	c.lt.s  $f18, $f10
	nop
	bc1f    .L8028A32C
	nop
	lwc1    $f4, 0x0018($sp)
	trunc.w.s $f8, $f4
	mfc1    $t1, $f8
	nop
	sh      $t1, 0x0024($sp)
.L8028A32C:
	lw      $t8, 0x000C($sp)
	lw      $t9, 0x0008($sp)
	addiu   $t5, $sp, 0x0028
	sll     $t3, $t8, 1
	sll     $t4, $t9, 1
	addu    $t0, $t4, $t5
	addu    $t7, $t3, $t5
	lh      $t2, 0x0000($t7)
	lh      $t6, 0x0000($t0)
	mtc1    $0, $f10
	subu    $t1, $t2, $t6
	mtc1    $t1, $f6
	nop
	cvt.s.w $f16, $f6
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8028A37C
	nop
	b       .L8028A3B8
	swc1    $f16, 0x0014($sp)
.L8028A37C:
	lw      $t8, 0x000C($sp)
	lw      $t5, 0x0008($sp)
	addiu   $t7, $sp, 0x0028
	sll     $t3, $t8, 1
	sll     $t0, $t5, 1
	addu    $t2, $t0, $t7
	addu    $t9, $t3, $t7
	lh      $t4, 0x0000($t9)
	lh      $t6, 0x0000($t2)
	subu    $t1, $t4, $t6
	subu    $t8, $0, $t1
	mtc1    $t8, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x0014($sp)
.L8028A3B8:
	lh      $t3, 0x0022($sp)
	lwc1    $f8, 0x0014($sp)
	mtc1    $t3, $f6
	nop
	cvt.s.w $f10, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8028A3F0
	nop
	lwc1    $f16, 0x0014($sp)
	trunc.w.s $f18, $f16
	mfc1    $t5, $f18
	nop
	sh      $t5, 0x0022($sp)
.L8028A3F0:
	lw      $t0, 0x000C($sp)
	addiu   $t7, $t0, 0x0001
	slti    $at, $t7, 0x0003
	bnez    $at, .L8028A184
	sw      $t7, 0x000C($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0048($sp)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L8028A44C
	nop
	lh      $t2, 0x0024($sp)
	lwc1    $f16, 0x0048($sp)
	mtc1    $t2, $f8
	nop
	cvt.s.w $f10, $f8
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8028A44C
	nop
	li      $t4, 0x0001
	sw      $t4, 0x0004($sp)
.L8028A44C:
	li      $at, 0xBF800000
	mtc1    $at, $f4
	lwc1    $f18, 0x0044($sp)
	c.eq.s  $f18, $f4
	nop
	bc1t    .L8028A4D4
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f8
	lwc1    $f6, 0x004C($sp)
	c.eq.s  $f6, $f8
	nop
	bc1t    .L8028A4D4
	nop
	lh      $t6, 0x0026($sp)
	lwc1    $f18, 0x0044($sp)
	mtc1    $t6, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8028A4D4
	nop
	lh      $t1, 0x0022($sp)
	lwc1    $f8, 0x004C($sp)
	mtc1    $t1, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8028A4D4
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0004($sp)
.L8028A4D4:
	b       .L8028A4E4
	lw      $v0, 0x0004($sp)
	b       .L8028A4E4
	nop
.L8028A4E4:
	jr      $ra
	addiu   $sp, $sp, 0x0040

camera_8028A4EC:
	addiu   $sp, $sp, -0x0020
	sw      $0, 0x001C($sp)
	lh      $t6, 0x0012($a1)
	lh      $t7, 0x000C($a1)
	lh      $t9, 0x001A($a1)
	lh      $t0, 0x0014($a1)
	subu    $t8, $t6, $t7
	lh      $t7, 0x0012($a1)
	subu    $t1, $t9, $t0
	multu   $t8, $t1
	lh      $t6, 0x0018($a1)
	lh      $t3, 0x0014($a1)
	lh      $t4, 0x000E($a1)
	subu    $t9, $t6, $t7
	subu    $t5, $t3, $t4
	mflo    $t2
	nop
	nop
	multu   $t5, $t9
	mflo    $t0
	subu    $t8, $t2, $t0
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0018($sp)
	lh      $t1, 0x0014($a1)
	lh      $t3, 0x000E($a1)
	lh      $t6, 0x0016($a1)
	lh      $t7, 0x0010($a1)
	subu    $t4, $t1, $t3
	lh      $t3, 0x0014($a1)
	subu    $t5, $t6, $t7
	multu   $t4, $t5
	lh      $t1, 0x001A($a1)
	lh      $t2, 0x0010($a1)
	lh      $t0, 0x000A($a1)
	subu    $t6, $t1, $t3
	subu    $t8, $t2, $t0
	mflo    $t9
	nop
	nop
	multu   $t8, $t6
	mflo    $t7
	subu    $t4, $t9, $t7
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0014($sp)
	lh      $t5, 0x0010($a1)
	lh      $t2, 0x000A($a1)
	lh      $t1, 0x0018($a1)
	lh      $t3, 0x0012($a1)
	subu    $t0, $t5, $t2
	lh      $t2, 0x0010($a1)
	subu    $t8, $t1, $t3
	multu   $t0, $t8
	lh      $t5, 0x0016($a1)
	lh      $t9, 0x0012($a1)
	lh      $t7, 0x000C($a1)
	subu    $t1, $t5, $t2
	subu    $t4, $t9, $t7
	mflo    $t6
	nop
	nop
	multu   $t4, $t1
	mflo    $t3
	subu    $t0, $t6, $t3
	mtc1    $t0, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0010($sp)
	lh      $t8, 0x000A($a1)
	lwc1    $f8, 0x0000($a0)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x000C($sp)
	lh      $t9, 0x000C($a1)
	lwc1    $f4, 0x0004($a0)
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0008($sp)
	lh      $t7, 0x000E($a1)
	lwc1    $f16, 0x0008($a0)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($sp)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f10, 0x0008($sp)
	lwc1    $f16, 0x0014($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f6, 0x0004($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0010($sp)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	mtc1    $0, $f18
	add.s   $f8, $f4, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    .L8028A6A4
	nop
	li      $t5, 0x0001
	sw      $t5, 0x001C($sp)
.L8028A6A4:
	b       .L8028A6B4
	lw      $v0, 0x001C($sp)
	b       .L8028A6B4
	nop
.L8028A6B4:
	jr      $ra
	addiu   $sp, $sp, 0x0020

camera_8028A6BC:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	sw      $a1, 0x005C($sp)
	sw      $a2, 0x0060($sp)
	sw      $a3, 0x0064($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0054($sp)
	sw      $0, 0x0050($sp)
	sw      $0, 0x004C($sp)
	lw      $t7, 0x0060($sp)
	beqz    $t7, .L8028A7CC
	nop
	lh      $t8, 0x006A($sp)
	li      $at, -0x0001
	beq     $t8, $at, .L8028A710
	nop
	lw      $t9, 0x0060($sp)
	lh      $t0, 0x0000($t9)
	beq     $t0, $t8, .L8028A7CC
	nop
.L8028A710:
	lh      $t1, 0x0066($sp)
	bnez    $t1, .L8028A730
	nop
	lw      $a0, 0x005C($sp)
	jal     camera_8028A4EC
	lw      $a1, 0x0060($sp)
	b       .L8028A7CC
	sw      $v0, 0x0054($sp)
.L8028A730:
	addiu   $t2, $sp, 0x0030
	sw      $t2, 0x0010($sp)
	lw      $a0, 0x0058($sp)
	lw      $a1, 0x005C($sp)
	addiu   $a2, $sp, 0x0034
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0032
	lh      $t3, 0x0030($sp)
	lh      $t4, 0x0066($sp)
	lw      $a0, 0x0058($sp)
	addiu   $a1, $sp, 0x0024
	addu    $t5, $t3, $t4
	sw      $t5, 0x0010($sp)
	lw      $a2, 0x0034($sp)
	jal     polar_to_cartesian
	lh      $a3, 0x0032($sp)
	addiu   $a0, $sp, 0x0024
	jal     camera_8028A4EC
	lw      $a1, 0x0060($sp)
	sw      $v0, 0x0050($sp)
	lh      $t6, 0x0030($sp)
	lh      $t7, 0x0066($sp)
	lw      $a0, 0x0058($sp)
	addiu   $a1, $sp, 0x0024
	subu    $t9, $t6, $t7
	sw      $t9, 0x0010($sp)
	lw      $a2, 0x0034($sp)
	jal     polar_to_cartesian
	lh      $a3, 0x0032($sp)
	addiu   $a0, $sp, 0x0024
	jal     camera_8028A4EC
	lw      $a1, 0x0060($sp)
	sw      $v0, 0x004C($sp)
	lw      $t0, 0x0050($sp)
	lw      $t8, 0x004C($sp)
	multu   $t0, $t8
	mflo    $t1
	sw      $t1, 0x0054($sp)
	nop
.L8028A7CC:
	b       .L8028A7DC
	lw      $v0, 0x0054($sp)
	b       .L8028A7DC
	nop
.L8028A7DC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

camera_8028A7EC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0024($sp)
	jal     camera_8028A4EC
	addiu   $a0, $a0, 0x0004
	sw      $v0, 0x001C($sp)
	b       .L8028A824
	lw      $v0, 0x001C($sp)
	b       .L8028A824
	nop
.L8028A824:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028A834:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	addiu   $t8, $sp, 0x001C
	sub.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x0000($t8)
	lw      $t9, 0x0030($sp)
	lw      $t0, 0x002C($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f4, 0x0004($t9)
	lwc1    $f8, 0x0004($t0)
	addiu   $t1, $sp, 0x001C
	sub.s   $f10, $f4, $f8
	mul.s   $f16, $f10, $f6
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x0004($t1)
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x002C($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f4, 0x0008($t2)
	lwc1    $f10, 0x0008($t3)
	addiu   $t4, $sp, 0x001C
	sub.s   $f6, $f4, $f10
	mul.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($t4)
	lw      $a0, 0x0028($sp)
	jal     vecf_cpy
	addiu   $a1, $sp, 0x001C
	b       .L8028A8D8
	nop
.L8028A8D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028A8E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $0, 0x0024($sp)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	addiu   $t8, $sp, 0x0018
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t8)
	lw      $t9, 0x002C($sp)
	lw      $t0, 0x0028($sp)
	addiu   $t1, $sp, 0x0018
	lwc1    $f10, 0x0004($t9)
	lwc1    $f16, 0x0004($t0)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t1)
	lw      $t2, 0x002C($sp)
	lw      $t3, 0x0028($sp)
	addiu   $t4, $sp, 0x0018
	lwc1    $f4, 0x0008($t2)
	lwc1    $f6, 0x0008($t3)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t4)
	addiu   $t5, $sp, 0x0018
	move    $a0, $t5
	move    $a1, $t5
	jal     camera_8028AD4C
	lh      $a2, 0x0036($sp)
	lw      $t6, 0x0030($sp)
	addiu   $t7, $sp, 0x0018
	lwc1    $f18, 0x0000($t7)
	lwc1    $f10, 0x0000($t6)
	neg.s   $f16, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8028AA08
	nop
	c.lt.s  $f18, $f10
	nop
	bc1f    .L8028AA08
	nop
	lwc1    $f4, 0x0004($t6)
	lwc1    $f8, 0x0004($t7)
	neg.s   $f6, $f4
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8028AA08
	nop
	c.lt.s  $f8, $f4
	nop
	bc1f    .L8028AA08
	nop
	lwc1    $f16, 0x0008($t6)
	lwc1    $f10, 0x0008($t7)
	neg.s   $f18, $f16
	c.lt.s  $f18, $f10
	nop
	bc1f    .L8028AA08
	nop
	lwc1    $f6, 0x0008($t7)
	lwc1    $f8, 0x0008($t6)
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8028AA08
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0024($sp)
.L8028AA08:
	b       .L8028AA18
	lw      $v0, 0x0024($sp)
	b       .L8028AA18
	nop
.L8028AA18:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028AA28:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x003C($sp)
	lw      $t7, 0x0038($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lw      $t8, 0x003C($sp)
	lw      $t9, 0x0038($sp)
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0004($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lw      $t0, 0x003C($sp)
	lw      $t1, 0x0038($sp)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0008($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	sh      $v0, 0x002A($sp)
	b       .L8028AAC4
	lh      $v0, 0x002A($sp)
	b       .L8028AAC4
	nop
.L8028AAC4:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8028AAD8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0004($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x0028($sp)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0008($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f12, 0x001C($sp)
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x001A($sp)
	b       .L8028AB50
	lh      $v0, 0x001A($sp)
	b       .L8028AB50
	nop
.L8028AB50:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028AB60:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0004($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lw      $t0, 0x0034($sp)
	lw      $t1, 0x0030($sp)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0008($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f18, 0x0024($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     atan2
	lwc1    $f14, 0x0028($sp)
	lw      $t2, 0x0038($sp)
	sh      $v0, 0x0000($t2)
	lwc1    $f12, 0x0024($sp)
	jal     atan2
	lwc1    $f14, 0x002C($sp)
	lw      $t3, 0x003C($sp)
	sh      $v0, 0x0000($t3)
	b       .L8028AC14
	nop
.L8028AC14:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028AC28:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0004($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x0028($sp)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0008($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f6, $f16, $f4
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0018($sp)
	b       .L8028ACBC
	lwc1    $f0, 0x0018($sp)
	b       .L8028ACBC
	nop
.L8028ACBC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028ACCC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0008($t8)
	lwc1    $f16, 0x0008($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x001C($sp)
	b       .L8028AD3C
	lwc1    $f0, 0x001C($sp)
	b       .L8028AD3C
	nop
.L8028AD3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028AD4C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x001C
	jal     vecf_cpy
	lw      $a1, 0x002C($sp)
	lhu     $t6, 0x0032($sp)
	lui     $at, %hi(math_cos)
	addiu   $t9, $sp, 0x001C
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f6, 0x0000($t9)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	mul.s   $f8, $f4, $f6
	lwc1    $f16, %lo(math_sin)($at)
	lwc1    $f10, 0x0008($t9)
	lw      $t0, 0x0028($sp)
	mul.s   $f18, $f10, $f16
	add.s   $f4, $f8, $f18
	swc1    $f4, 0x0000($t0)
	addiu   $t1, $sp, 0x001C
	lwc1    $f6, 0x0004($t1)
	lw      $t2, 0x0028($sp)
	swc1    $f6, 0x0004($t2)
	lhu     $t4, 0x0032($sp)
	lui     $at, %hi(math_cos)
	addiu   $t3, $sp, 0x001C
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_cos)($at)
	lwc1    $f10, 0x0008($t3)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t6
	mul.s   $f8, $f10, $f16
	lwc1    $f18, %lo(math_sin)($at)
	lwc1    $f4, 0x0000($t3)
	lw      $t7, 0x0028($sp)
	mul.s   $f6, $f18, $f4
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x0008($t7)
	b       .L8028AE0C
	nop
.L8028AE0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028AE1C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x001C
	jal     vecf_cpy
	lw      $a1, 0x002C($sp)
	lhu     $t7, 0x0032($sp)
	lui     $at, %hi(math_cos)
	addiu   $t6, $sp, 0x001C
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_cos)($at)
	lwc1    $f4, 0x0008($t6)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t9
	mul.s   $f8, $f4, $f6
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f16, 0x0004($t6)
	lw      $t0, 0x0028($sp)
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f8, $f18
	neg.s   $f6, $f4
	swc1    $f6, 0x0008($t0)
	lhu     $t1, 0x0032($sp)
	lui     $at, %hi(math_cos)
	addiu   $t4, $sp, 0x001C
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	lwc1    $f16, 0x0004($t4)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	mul.s   $f8, $f10, $f16
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f18, 0x0008($t4)
	lw      $t5, 0x0028($sp)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0004($t5)
	addiu   $t7, $sp, 0x001C
	lwc1    $f16, 0x0000($t7)
	lw      $t8, 0x0028($sp)
	swc1    $f16, 0x0000($t8)
	b       .L8028AEE0
	nop
.L8028AEE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028AEF0:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lh      $t7, 0x0052($t6)
	slt     $at, $t7, $a0
	beqz    $at, .L8028AF3C
	nop
	la.u    $t8, _camera_bss+0x178
	la.l    $t8, _camera_bss+0x178
	sh      $a0, 0x0052($t8)
	lui     $at, %hi(_camera_bss+0x1D4)
	sh      $a1, %lo(_camera_bss+0x1D4)($at)
	lui     $at, %hi(_camera_bss+0x1D2)
	sh      $a2, %lo(_camera_bss+0x1D2)($at)
.L8028AF3C:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028AF4C:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	mtc1    $a0, $f4
	mtc1    $0, $f8
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8028AF8C
	nop
	b       .L8028AF90
	move    $t0, $a0
.L8028AF8C:
	subu    $t0, $0, $a0
.L8028AF90:
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lh      $t7, 0x0054($t6)
	mtc1    $0, $f18
	mtc1    $t7, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    .L8028AFC4
	nop
	b       .L8028AFD4
	move    $a3, $t7
.L8028AFC4:
	la.u    $t8, _camera_bss+0x178
	la.l    $t8, _camera_bss+0x178
	lh      $a3, 0x0054($t8)
	subu    $a3, $0, $a3
.L8028AFD4:
	slt     $at, $a3, $t0
	beqz    $at, .L8028AFFC
	nop
	la.u    $t9, _camera_bss+0x178
	la.l    $t9, _camera_bss+0x178
	sh      $a0, 0x0054($t9)
	lui     $at, %hi(_camera_bss+0x21A)
	sh      $a1, %lo(_camera_bss+0x21A)($at)
	lui     $at, %hi(_camera_bss+0x218)
	sh      $a2, %lo(_camera_bss+0x218)($at)
.L8028AFFC:
	b       .L8028B004
	nop
.L8028B004:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028B00C:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lh      $t7, 0x0056($t6)
	slt     $at, $t7, $a0
	beqz    $at, .L8028B058
	nop
	la.u    $t8, _camera_bss+0x178
	la.l    $t8, _camera_bss+0x178
	sh      $a0, 0x0056($t8)
	lui     $at, %hi(_camera_bss+0x214)
	sh      $a1, %lo(_camera_bss+0x214)($at)
	lui     $at, %hi(_camera_bss+0x212)
	sh      $a2, %lo(_camera_bss+0x212)($at)
.L8028B058:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028B068:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lwc1    $f4, 0x0048($sp)
	addiu   $t6, $sp, 0x002C
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x004C($sp)
	addiu   $t7, $sp, 0x002C
	swc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0050($sp)
	addiu   $t8, $sp, 0x002C
	swc1    $f8, 0x0008($t8)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $t9, $sp, 0x0024
	sw      $t9, 0x0010($sp)
	addiu   $a0, $a0, 0x0024
	addiu   $a1, $sp, 0x002C
	addiu   $a2, $sp, 0x0028
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0026
	lwc1    $f10, 0x0050($sp)
	lh      $a0, 0x003A($sp)
	lw      $a1, 0x0044($sp)
	lw      $a2, 0x0048($sp)
	lw      $a3, 0x004C($sp)
	jal     camera_80289D20
	swc1    $f10, 0x0010($sp)
	sh      $v0, 0x003A($sp)
	lh      $t0, 0x003A($sp)
	beqz    $t0, .L8028B104
	nop
	lh      $a0, 0x003A($sp)
	lh      $a1, 0x003E($sp)
	jal     camera_8028AEF0
	lh      $a2, 0x0042($sp)
.L8028B104:
	b       .L8028B10C
	nop
.L8028B10C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8028B11C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lwc1    $f4, 0x0048($sp)
	addiu   $t6, $sp, 0x002C
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x004C($sp)
	addiu   $t7, $sp, 0x002C
	swc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0050($sp)
	addiu   $t8, $sp, 0x002C
	swc1    $f8, 0x0008($t8)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $t9, $sp, 0x0024
	sw      $t9, 0x0010($sp)
	addiu   $a0, $a0, 0x0024
	addiu   $a1, $sp, 0x002C
	addiu   $a2, $sp, 0x0028
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0026
	lwc1    $f10, 0x0050($sp)
	lh      $a0, 0x003A($sp)
	lw      $a1, 0x0044($sp)
	lw      $a2, 0x0048($sp)
	lw      $a3, 0x004C($sp)
	jal     camera_80289D20
	swc1    $f10, 0x0010($sp)
	sh      $v0, 0x003A($sp)
	lh      $t0, 0x003A($sp)
	beqz    $t0, .L8028B1B8
	nop
	lh      $a0, 0x003A($sp)
	lh      $a1, 0x003E($sp)
	jal     camera_8028AF4C
	lh      $a2, 0x0042($sp)
.L8028B1B8:
	b       .L8028B1C0
	nop
.L8028B1C0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8028B1D0:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	li      $at, -0x8000
	bne     $a1, $at, .L8028B1FC
	nop
	lh      $t6, 0x0000($a0)
	li      $at, 0xC000
	andi    $t7, $t6, 0x8000
	addu    $t8, $t7, $at
	b       .L8028B208
	sh      $t8, 0x0000($a0)
.L8028B1FC:
	lh      $t9, 0x0000($a0)
	addu    $t0, $t9, $a1
	sh      $t0, 0x0000($a0)
.L8028B208:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028B218:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lh      $t7, 0x0054($t6)
	lh      $t8, 0x0052($t6)
	or      $t9, $t7, $t8
	beqz    $t9, .L8028B314
	nop
	addiu   $t0, $sp, 0x0020
	sw      $t0, 0x0010($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	addiu   $a2, $sp, 0x0024
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0022
	la.u    $t1, _camera_bss+0x178
	la.l    $t1, _camera_bss+0x178
	lh      $t2, 0x0052($t1)
	lui     $t3, %hi(_camera_bss+0x1D0)
	lhu     $t3, %lo(_camera_bss+0x1D0)($t3)
	mtc1    $t2, $f4
	lh      $t6, 0x0022($sp)
	sra     $t4, $t3, 4
	cvt.s.w $f6, $f4
	sll     $t5, $t4, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	lwc1    $f8, %lo(math_sin)($at)
	mtc1    $t6, $f16
	mul.s   $f10, $f6, $f8
	cvt.s.w $f18, $f16
	add.s   $f4, $f18, $f10
	trunc.w.s $f6, $f4
	mfc1    $t8, $f6
	nop
	sh      $t8, 0x0022($sp)
	lh      $t9, 0x0020($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	lui     $a1, %hi(_camera_bss+0x1D2)
	lh      $a1, %lo(_camera_bss+0x1D2)($a1)
	jal     camera_8028B1D0
	addiu   $a0, $a0, 0x0058
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	lui     $a2, %hi(_camera_bss+0x1D4)
	lh      $a2, %lo(_camera_bss+0x1D4)($a2)
	addiu   $a0, $a0, 0x0052
	jal     camera_8028976C
	move    $a1, $0
	bnez    $v0, .L8028B314
	nop
	lui     $at, %hi(_camera_bss+0x1D0)
	sh      $0, %lo(_camera_bss+0x1D0)($at)
.L8028B314:
	b       .L8028B31C
	nop
.L8028B31C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028B32C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lh      $t7, 0x0054($t6)
	beqz    $t7, .L8028B420
	nop
	addiu   $t8, $sp, 0x0020
	sw      $t8, 0x0010($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	addiu   $a2, $sp, 0x0024
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0022
	la.u    $t9, _camera_bss+0x178
	la.l    $t9, _camera_bss+0x178
	lh      $t0, 0x0054($t9)
	lui     $t1, %hi(_camera_bss+0x216)
	lhu     $t1, %lo(_camera_bss+0x216)($t1)
	mtc1    $t0, $f4
	lh      $t4, 0x0020($sp)
	sra     $t2, $t1, 4
	cvt.s.w $f6, $f4
	sll     $t3, $t2, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_sin)($at)
	mtc1    $t4, $f16
	mul.s   $f10, $f6, $f8
	cvt.s.w $f18, $f16
	add.s   $f4, $f18, $f10
	trunc.w.s $f6, $f4
	mfc1    $t6, $f6
	nop
	sh      $t6, 0x0020($sp)
	lh      $t7, 0x0020($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	lui     $a1, %hi(_camera_bss+0x218)
	lh      $a1, %lo(_camera_bss+0x218)($a1)
	jal     camera_8028B1D0
	addiu   $a0, $a0, 0x009E
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	lui     $a2, %hi(_camera_bss+0x21A)
	lh      $a2, %lo(_camera_bss+0x21A)($a2)
	addiu   $a0, $a0, 0x0054
	jal     camera_8028976C
	move    $a1, $0
	bnez    $v0, .L8028B420
	nop
	lui     $at, %hi(_camera_bss+0x216)
	sh      $0, %lo(_camera_bss+0x216)($at)
.L8028B420:
	b       .L8028B428
	nop
.L8028B428:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028B438:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	lh      $t7, 0x0056($t6)
	beqz    $t7, .L8028B4F4
	nop
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	lui     $a1, %hi(_camera_bss+0x212)
	lh      $a1, %lo(_camera_bss+0x212)($a1)
	jal     camera_8028B1D0
	addiu   $a0, $a0, 0x0098
	la.u    $t8, _camera_bss+0x178
	la.l    $t8, _camera_bss+0x178
	lh      $t9, 0x0056($t8)
	lui     $t0, %hi(_camera_bss+0x210)
	lhu     $t0, %lo(_camera_bss+0x210)($t0)
	mtc1    $t9, $f4
	lw      $t3, 0x0020($sp)
	sra     $t1, $t0, 4
	cvt.s.w $f6, $f4
	lh      $t4, 0x0000($t3)
	sll     $t2, $t1, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t2
	lwc1    $f8, %lo(math_sin)($at)
	mtc1    $t4, $f16
	mul.s   $f10, $f6, $f8
	cvt.s.w $f18, $f16
	add.s   $f4, $f18, $f10
	trunc.w.s $f6, $f4
	mfc1    $t6, $f6
	nop
	sh      $t6, 0x0000($t3)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	lui     $a2, %hi(_camera_bss+0x214)
	lh      $a2, %lo(_camera_bss+0x214)($a2)
	addiu   $a0, $a0, 0x0056
	jal     camera_8028976C
	move    $a1, $0
	bnez    $v0, .L8028B4F4
	nop
	lui     $at, %hi(_camera_bss+0x210)
	sh      $0, %lo(_camera_bss+0x210)($at)
.L8028B4F4:
	b       .L8028B4FC
	nop
.L8028B4FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028B50C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x2AAA
	sh      $t6, 0x003E($sp)
	lui     $t7, %hi(_camera_bss+0x252)
	lh      $t7, %lo(_camera_bss+0x252)($t7)
	sh      $t7, 0x003C($sp)
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0082
	beq     $s0, $at, .L8028B5E0
	nop
	li      $at, 0x00E1
	beq     $s0, $at, .L8028B568
	nop
	li      $at, 0x0161
	beq     $s0, $at, .L8028B638
	nop
	b       .L8028B644
	nop
.L8028B568:
	lw      $t8, 0x0040($sp)
	addiu   $t9, $sp, 0x002C
	lwc1    $f4, 0x0028($t8)
	swc1    $f4, 0x0000($t9)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	addiu   $t1, $sp, 0x002C
	lwc1    $f6, 0x0008($t0)
	swc1    $f6, 0x0004($t1)
	lw      $t2, 0x0040($sp)
	addiu   $t3, $sp, 0x002C
	lwc1    $f8, 0x002C($t2)
	swc1    $f8, 0x0008($t3)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	addiu   $a0, $sp, 0x002C
	jal     camera_8028AC28
	addiu   $a1, $a1, 0x0004
	swc1    $f0, 0x0038($sp)
	li      $at, 0x44480000
	mtc1    $at, $f10
	lwc1    $f16, 0x0038($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8028B5D8
	nop
	li      $t4, 0x3800
	sh      $t4, 0x003E($sp)
.L8028B5D8:
	b       .L8028B644
	nop
.L8028B5E0:
	lh      $t5, 0x0046($sp)
	andi    $t6, $t5, 0xC000
	subu    $t7, $t6, $t5
	addiu   $t8, $t7, 0x2000
	sh      $t8, 0x003E($sp)
	lh      $t9, 0x003E($sp)
	bgez    $t9, .L8028B60C
	nop
	lh      $t0, 0x003E($sp)
	subu    $t1, $0, $t0
	sh      $t1, 0x003E($sp)
.L8028B60C:
	lh      $t2, 0x003E($sp)
	bgez    $t2, .L8028B620
	sra     $t3, $t2, 5
	addiu   $at, $t2, 0x001F
	sra     $t3, $at, 5
.L8028B620:
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 4
	sh      $t4, 0x003E($sp)
	b       .L8028B644
	nop
.L8028B638:
	sh      $0, 0x003E($sp)
	b       .L8028B644
	nop
.L8028B644:
	la.u    $t6, player_data
	la.l    $t6, player_data
	li      $at, 0x42000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t6)
	li      $at, 0x43000000
	mtc1    $at, $f8
	div.s   $f6, $f18, $f4
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t7, $f16
	nop
	sh      $t7, 0x002A($sp)
	lui     $t8, %hi(_camera_bss+0x23C)
	lh      $t8, %lo(_camera_bss+0x23C)($t8)
	bgez    $t8, .L8028B69C
	nop
	lh      $a1, 0x003E($sp)
	addiu   $a0, $sp, 0x003C
	lh      $a2, 0x002A($sp)
	jal     camera_8028976C
	subu    $a1, $0, $a1
.L8028B69C:
	lui     $t9, %hi(_camera_bss+0x23C)
	lh      $t9, %lo(_camera_bss+0x23C)($t9)
	blez    $t9, .L8028B6BC
	nop
	addiu   $a0, $sp, 0x003C
	lh      $a1, 0x003E($sp)
	jal     camera_8028976C
	lh      $a2, 0x002A($sp)
.L8028B6BC:
	lh      $t0, 0x003C($sp)
	slti    $at, $t0, -0x2AAA
	beqz    $at, .L8028B6E0
	nop
	lh      $a1, 0x003E($sp)
	addiu   $a0, $sp, 0x003C
	li      $a2, 0x0200
	jal     camera_8028976C
	subu    $a1, $0, $a1
.L8028B6E0:
	lh      $t1, 0x003C($sp)
	slti    $at, $t1, 0x2AAB
	bnez    $at, .L8028B700
	nop
	addiu   $a0, $sp, 0x003C
	lh      $a1, 0x003E($sp)
	jal     camera_8028976C
	li      $a2, 0x0200
.L8028B700:
	b       .L8028B710
	lh      $v0, 0x003C($sp)
	b       .L8028B710
	nop
.L8028B710:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

camera_8028B724:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	li      $a1, 0x041D
	jal     Na_BGM_play
	move    $a2, $0
	b       .L8028B744
	nop
.L8028B744:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B754:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	li      $a1, 0x0F1E
	jal     Na_BGM_play
	move    $a2, $0
	b       .L8028B774
	nop
.L8028B774:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B784:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L8028B7AC
	nop
	jal     camera_8028B8EC
	nop
.L8028B7AC:
	b       .L8028B7B4
	nop
.L8028B7B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B7C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x000F
	beqz    $t8, .L8028B7EC
	nop
	jal     camera_8028B8EC
	nop
.L8028B7EC:
	b       .L8028B7F4
	nop
.L8028B7F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B804:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x0002
	bnez    $t8, .L8028B830
	nop
	andi    $t9, $t7, 0x0001
	beqz    $t9, .L8028B838
	nop
.L8028B830:
	jal     camera_8028B8EC
	nop
.L8028B838:
	b       .L8028B840
	nop
.L8028B840:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B850:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x70060081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70060081
	b       .L8028B874
	nop
.L8028B874:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B884:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x70070081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70070081
	b       .L8028B8A8
	nop
.L8028B8A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B8B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x700F0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x700F0081
	b       .L8028B8DC
	nop
.L8028B8DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B8EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x700E0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x700E0081
	b       .L8028B910
	nop
.L8028B910:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B920:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x701A8081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x701A8081
	b       .L8028B944
	nop
.L8028B944:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B954:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_camera_bss+0x16C)
	lh      $t6, %lo(_camera_bss+0x16C)($t6)
	andi    $t7, $t6, 0x0002
	beqz    $t7, .L8028B978
	nop
	jal     camera_8028B920
	nop
.L8028B978:
	lui     $t8, %hi(_camera_bss+0x16C)
	lh      $t8, %lo(_camera_bss+0x16C)($t8)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L8028B994
	nop
	jal     camera_8028B920
	nop
.L8028B994:
	lui     $t0, %hi(_camera_bss+0x16C)
	lh      $t0, %lo(_camera_bss+0x16C)($t0)
	li      $at, -0x0007
	and     $t1, $t0, $at
	lui     $at, %hi(_camera_bss+0x16C)
	sh      $t1, %lo(_camera_bss+0x16C)($at)
	b       .L8028B9B4
	nop
.L8028B9B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028B9C4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	andi    $t7, $t6, 0x0010
	bnez    $t7, .L8028B9F4
	nop
	andi    $t8, $t6, 0x000D
	bnez    $t8, .L8028BC4C
	nop
.L8028B9F4:
	lui     $t9, %hi(cont_1)
	lw      $t9, %lo(cont_1)($t9)
	lhu     $t0, 0x0012($t9)
	andi    $t1, $t0, 0x0003
	beqz    $t1, .L8028BA24
	nop
	lui     $t2, %hi(_camera_bss+0x328)
	lh      $t2, %lo(_camera_bss+0x328)($t2)
	li      $at, -0x0011
	and     $t3, $t2, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t3, %lo(_camera_bss+0x328)($at)
.L8028BA24:
	lui     $t4, %hi(cont_1)
	lw      $t4, %lo(cont_1)($t4)
	lhu     $t5, 0x0012($t4)
	andi    $t7, $t5, 0x0001
	beqz    $t7, .L8028BB38
	nop
	lui     $t6, %hi(_camera_bss+0x252)
	lh      $t6, %lo(_camera_bss+0x252)($t6)
	slti    $at, $t6, -0x07FF
	bnez    $at, .L8028BB1C
	nop
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	andi    $t9, $t8, 0x0004
	bnez    $t9, .L8028BA78
	nop
	lui     $t0, %hi(_camera_bss+0x328)
	lh      $t0, %lo(_camera_bss+0x328)($t0)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t1, $t0, 0x0004
	sh      $t1, %lo(_camera_bss+0x328)($at)
.L8028BA78:
	lw      $t2, 0x0020($sp)
	li      $at, 0x0001
	lbu     $t3, 0x0000($t2)
	bne     $t3, $at, .L8028BAE8
	nop
	lui     $t4, %hi(_camera_bss+0x252)
	lh      $t4, %lo(_camera_bss+0x252)($t4)
	slti    $at, $t4, 0x22AB
	bnez    $at, .L8028BAB4
	nop
	lui     $t5, %hi(_camera_bss+0x168)
	lh      $t5, %lo(_camera_bss+0x168)($t5)
	lui     $at, %hi(_camera_bss+0x168)
	ori     $t7, $t5, 0x0004
	sh      $t7, %lo(_camera_bss+0x168)($at)
.L8028BAB4:
	lui     $t6, %hi(_camera_bss+0x252)
	lh      $t6, %lo(_camera_bss+0x252)($t6)
	li      $at, 0x4AAA
	bne     $t6, $at, .L8028BAD8
	nop
	jal     camera_8028B8EC
	nop
	b       .L8028BAE0
	nop
.L8028BAD8:
	jal     camera_8028B8B8
	nop
.L8028BAE0:
	b       .L8028BB14
	nop
.L8028BAE8:
	lui     $t8, %hi(_camera_bss+0x252)
	lh      $t8, %lo(_camera_bss+0x252)($t8)
	li      $at, 0x2AAA
	bne     $t8, $at, .L8028BB0C
	nop
	jal     camera_8028B8EC
	nop
	b       .L8028BB14
	nop
.L8028BB0C:
	jal     camera_8028B8B8
	nop
.L8028BB14:
	b       .L8028BB38
	nop
.L8028BB1C:
	lui     $t9, %hi(_camera_bss+0x328)
	lh      $t9, %lo(_camera_bss+0x328)($t9)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t0, $t9, 0x0001
	sh      $t0, %lo(_camera_bss+0x328)($at)
	jal     camera_8028B850
	nop
.L8028BB38:
	lui     $t1, %hi(cont_1)
	lw      $t1, %lo(cont_1)($t1)
	lhu     $t2, 0x0012($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, .L8028BC4C
	nop
	lui     $t4, %hi(_camera_bss+0x252)
	lh      $t4, %lo(_camera_bss+0x252)($t4)
	slti    $at, $t4, 0x0800
	beqz    $at, .L8028BC30
	nop
	lui     $t5, %hi(_camera_bss+0x328)
	lh      $t5, %lo(_camera_bss+0x328)($t5)
	andi    $t7, $t5, 0x0008
	bnez    $t7, .L8028BB8C
	nop
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t8, $t6, 0x0008
	sh      $t8, %lo(_camera_bss+0x328)($at)
.L8028BB8C:
	lw      $t9, 0x0020($sp)
	li      $at, 0x0001
	lbu     $t0, 0x0000($t9)
	bne     $t0, $at, .L8028BBFC
	nop
	lui     $t1, %hi(_camera_bss+0x252)
	lh      $t1, %lo(_camera_bss+0x252)($t1)
	slti    $at, $t1, -0x22AA
	beqz    $at, .L8028BBC8
	nop
	lui     $t2, %hi(_camera_bss+0x168)
	lh      $t2, %lo(_camera_bss+0x168)($t2)
	lui     $at, %hi(_camera_bss+0x168)
	ori     $t3, $t2, 0x0008
	sh      $t3, %lo(_camera_bss+0x168)($at)
.L8028BBC8:
	lui     $t4, %hi(_camera_bss+0x252)
	lh      $t4, %lo(_camera_bss+0x252)($t4)
	li      $at, -0x4AAA
	bne     $t4, $at, .L8028BBEC
	nop
	jal     camera_8028B8EC
	nop
	b       .L8028BBF4
	nop
.L8028BBEC:
	jal     camera_8028B8B8
	nop
.L8028BBF4:
	b       .L8028BC28
	nop
.L8028BBFC:
	lui     $t5, %hi(_camera_bss+0x252)
	lh      $t5, %lo(_camera_bss+0x252)($t5)
	li      $at, -0x2AAA
	bne     $t5, $at, .L8028BC20
	nop
	jal     camera_8028B8EC
	nop
	b       .L8028BC28
	nop
.L8028BC20:
	jal     camera_8028B8B8
	nop
.L8028BC28:
	b       .L8028BC4C
	nop
.L8028BC30:
	lui     $t7, %hi(_camera_bss+0x328)
	lh      $t7, %lo(_camera_bss+0x328)($t7)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t6, $t7, 0x0001
	sh      $t6, %lo(_camera_bss+0x328)($at)
	jal     camera_8028B850
	nop
.L8028BC4C:
	lui     $t8, %hi(cont_1)
	lw      $t8, %lo(cont_1)($t8)
	lhu     $t9, 0x0012($t8)
	andi    $t0, $t9, 0x0008
	beqz    $t0, .L8028BCA8
	nop
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L8028BCA0
	nop
	lui     $t3, %hi(_camera_bss+0x328)
	lh      $t3, %lo(_camera_bss+0x328)($t3)
	li      $at, -0x0003
	and     $t4, $t3, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t4, %lo(_camera_bss+0x328)($at)
	jal     camera_8028B850
	nop
	b       .L8028BCA8
	nop
.L8028BCA0:
	jal     camera_802852F4
	lw      $a0, 0x0020($sp)
.L8028BCA8:
	lui     $t5, %hi(cont_1)
	lw      $t5, %lo(cont_1)($t5)
	lhu     $t7, 0x0012($t5)
	andi    $t6, $t7, 0x0004
	beqz    $t6, .L8028BD14
	nop
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	andi    $t9, $t8, 0x0002
	beqz    $t9, .L8028BCF8
	nop
	lui     $t0, %hi(_camera_bss+0x328)
	lh      $t0, %lo(_camera_bss+0x328)($t0)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t1, $t0, 0x1000
	sh      $t1, %lo(_camera_bss+0x328)($at)
	jal     camera_8028B784
	nop
	b       .L8028BD14
	nop
.L8028BCF8:
	lui     $t2, %hi(_camera_bss+0x328)
	lh      $t2, %lo(_camera_bss+0x328)($t2)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t3, $t2, 0x0002
	sh      $t3, %lo(_camera_bss+0x328)($at)
	jal     camera_8028B884
	nop
.L8028BD14:
	b       .L8028BD24
	lh      $v0, 0x001E($sp)
	b       .L8028BD24
	nop
.L8028BD24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8028BD34
camera_8028BD34:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(_camera_bss+0x6B0)
	lw      $t6, %lo(_camera_bss+0x6B0)($t6)
	sw      $t6, 0x0018($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x0001
	bne     $t7, $at, .L8028BD68
	nop
	jal     camera_8028FE58
	li      $a0, 0x00AB
.L8028BD68:
	lw      $t8, 0x0020($sp)
	li      $at, 0x0002
	bne     $t8, $at, .L8028BD78
	nop
.L8028BD78:
	b       .L8028BD88
	lw      $v0, 0x001C($sp)
	b       .L8028BD88
	nop
.L8028BD88:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028BD98:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, .L8028BE5C
	nop
	lw      $t9, 0x0020($sp)
	li      $at, 0x000D
	lbu     $t0, 0x0000($t9)
	beq     $t0, $at, .L8028BE0C
	nop
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L8028BE0C
	nop
	lui     $t3, %hi(_camera_bss+0x328)
	lh      $t3, %lo(_camera_bss+0x328)($t3)
	li      $at, -0x0003
	and     $t4, $t3, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t4, %lo(_camera_bss+0x328)($at)
	jal     camera_8028B850
	nop
	b       .L8028BE5C
	nop
.L8028BE0C:
	jal     camera_802852F4
	lw      $a0, 0x0020($sp)
	lui     $at, %hi(_camera_bss+0x24C)
	lwc1    $f4, %lo(_camera_bss+0x24C)($at)
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f6, %lo(camera_8032DF4C)($at)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8028BE4C
	nop
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f8, %lo(camera_8032DF4C)($at)
	lui     $at, %hi(_camera_bss+0x244)
	neg.s   $f10, $f8
	b       .L8028BE5C
	swc1    $f10, %lo(_camera_bss+0x244)($at)
.L8028BE4C:
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f16, %lo(camera_8032DF4C)($at)
	lui     $at, %hi(_camera_bss+0x244)
	swc1    $f16, %lo(_camera_bss+0x244)($at)
.L8028BE5C:
	lw      $t5, 0x0020($sp)
	li      $at, 0x000D
	lbu     $t6, 0x0000($t5)
	beq     $t6, $at, .L8028C020
	nop
	lui     $t7, %hi(cont_1)
	lw      $t7, %lo(cont_1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L8028BF14
	nop
	lui     $t0, %hi(_camera_bss+0x328)
	lh      $t0, %lo(_camera_bss+0x328)($t0)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L8028BEDC
	nop
	lui     $t2, %hi(_camera_bss+0x328)
	lh      $t2, %lo(_camera_bss+0x328)($t2)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t3, $t2, 0x1000
	sh      $t3, %lo(_camera_bss+0x328)($at)
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f18, %lo(camera_8032DF4C)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x244)
	add.s   $f6, $f18, $f4
	swc1    $f6, %lo(_camera_bss+0x244)($at)
	jal     camera_8028B784
	nop
	b       .L8028BF14
	nop
.L8028BEDC:
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t5, $t4, 0x0002
	sh      $t5, %lo(_camera_bss+0x328)($at)
	lui     $at, %hi(camera_8032DF4C)
	lwc1    $f8, %lo(camera_8032DF4C)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f10
	lui     $at, %hi(_camera_bss+0x244)
	add.s   $f16, $f8, $f10
	swc1    $f16, %lo(_camera_bss+0x244)($at)
	jal     camera_8028B884
	nop
.L8028BF14:
	li      $t6, 0x1000
	sh      $t6, 0x001E($sp)
	lui     $t7, %hi(cont_1)
	lw      $t7, %lo(cont_1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L8028BFA0
	nop
	lui     $t0, %hi(_camera_bss+0x328)
	lh      $t0, %lo(_camera_bss+0x328)($t0)
	andi    $t1, $t0, 0x0008
	beqz    $t1, .L8028BF64
	nop
	lui     $t2, %hi(_camera_bss+0x328)
	lh      $t2, %lo(_camera_bss+0x328)($t2)
	li      $at, -0x0009
	and     $t3, $t2, $at
	lui     $at, %hi(_camera_bss+0x328)
	b       .L8028BFA0
	sh      $t3, %lo(_camera_bss+0x328)($at)
.L8028BF64:
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t5, $t4, 0x0004
	sh      $t5, %lo(_camera_bss+0x328)($at)
	lui     $t6, %hi(_camera_bss+0x248)
	lh      $t6, %lo(_camera_bss+0x248)($t6)
	bnez    $t6, .L8028BF90
	nop
	jal     camera_8028B8B8
	nop
.L8028BF90:
	lh      $t7, 0x001E($sp)
	lui     $at, %hi(_camera_bss+0x248)
	subu    $t8, $0, $t7
	sh      $t8, %lo(_camera_bss+0x248)($at)
.L8028BFA0:
	lui     $t9, %hi(cont_1)
	lw      $t9, %lo(cont_1)($t9)
	lhu     $t0, 0x0012($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, .L8028C020
	nop
	lui     $t2, %hi(_camera_bss+0x328)
	lh      $t2, %lo(_camera_bss+0x328)($t2)
	andi    $t3, $t2, 0x0004
	beqz    $t3, .L8028BFE8
	nop
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	li      $at, -0x0005
	and     $t5, $t4, $at
	lui     $at, %hi(_camera_bss+0x328)
	b       .L8028C020
	sh      $t5, %lo(_camera_bss+0x328)($at)
.L8028BFE8:
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t7, $t6, 0x0008
	sh      $t7, %lo(_camera_bss+0x328)($at)
	lui     $t8, %hi(_camera_bss+0x248)
	lh      $t8, %lo(_camera_bss+0x248)($t8)
	bnez    $t8, .L8028C014
	nop
	jal     camera_8028B8B8
	nop
.L8028C014:
	lh      $t9, 0x001E($sp)
	lui     $at, %hi(_camera_bss+0x248)
	sh      $t9, %lo(_camera_bss+0x248)($at)
.L8028C020:
	b       .L8028C028
	nop
.L8028C028:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028C038:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
.L8028C048:
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(_camera_bss+0x540)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $at, $at, $t7
	sw      $0, %lo(_camera_bss+0x540)($at)
	lw      $t8, 0x001C($sp)
	la.u    $t1, _camera_bss+0x540
	la.l    $t1, _camera_bss+0x540
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addiu   $t0, $t9, 0x0004
	addu    $a0, $t0, $t1
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	lw      $t2, 0x001C($sp)
	la.u    $t5, _camera_bss+0x540
	la.l    $t5, _camera_bss+0x540
	sll     $t3, $t2, 3
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addiu   $t4, $t3, 0x0010
	addu    $a0, $t4, $t5
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	lw      $t6, 0x001C($sp)
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addiu   $t8, $t7, 0x001C
	addu    $a0, $t8, $t9
	move    $a1, $0
	move    $a2, $0
	jal     vecs_set
	move    $a3, $0
	lw      $t0, 0x001C($sp)
	lui     $at, %hi(_camera_bss+0x562)
	sll     $t1, $t0, 3
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $at, $at, $t1
	sh      $0, %lo(_camera_bss+0x562)($at)
	lw      $t2, 0x001C($sp)
	addiu   $t3, $t2, 0x0001
	slti    $at, $t3, 0x000A
	bnez    $at, .L8028C048
	sw      $t3, 0x001C($sp)
	b       .L8028C12C
	nop
.L8028C12C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028C13C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	lbu     $t8, 0x001F($sp)
	lbu     $t7, 0x0030($t6)
	beq     $t7, $t8, .L8028C174
	nop
	lbu     $t9, 0x001F($sp)
	lw      $t0, 0x0018($sp)
	sb      $t9, 0x0030($t0)
	jal     camera_8028C038
	lw      $a0, 0x0018($sp)
.L8028C174:
	b       .L8028C17C
	nop
.L8028C17C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028C18C:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	sb      $0, 0x0007($sp)
	sb      $0, 0x0006($sp)
	lui     $t6, %hi(save_level)
	lbu     $t6, %lo(save_level)($t6)
	addiu   $t7, $t6, -0x0001
	bgez    $t7, .L8028C1B8
	sra     $t8, $t7, 1
	addiu   $at, $t7, 0x0001
	sra     $t8, $at, 1
.L8028C1B8:
	sb      $t8, 0x0005($sp)
	lui     $t9, %hi(course_index)
	lh      $t9, %lo(course_index)($t9)
	sb      $t9, 0x0004($sp)
	lbu     $t0, 0x0005($sp)
	slti    $at, $t0, 0x0004
	bnez    $at, .L8028C1DC
	nop
	sb      $0, 0x0005($sp)
.L8028C1DC:
	lbu     $t1, 0x0004($sp)
	slti    $at, $t1, 0x001A
	bnez    $at, .L8028C1F0
	nop
	sb      $0, 0x0004($sp)
.L8028C1F0:
	lbu     $t2, 0x0004($sp)
	lbu     $t4, 0x0005($sp)
	lui     $t6, %hi(camera_windemo_data)
	sll     $t3, $t2, 2
	addu    $t5, $t3, $t4
	addu    $t6, $t6, $t5
	lbu     $t6, %lo(camera_windemo_data)($t6)
	sb      $t6, 0x0006($sp)
	lui     $t7, %hi(save_level)
	lbu     $t7, %lo(save_level)($t7)
	andi    $t8, $t7, 0x0001
	beqz    $t8, .L8028C234
	nop
	lbu     $t9, 0x0006($sp)
	andi    $t0, $t9, 0x000F
	b       .L8028C240
	sb      $t0, 0x0006($sp)
.L8028C234:
	lbu     $t1, 0x0006($sp)
	sra     $t2, $t1, 4
	sb      $t2, 0x0006($sp)
.L8028C240:
	lbu     $t3, 0x0006($sp)
	lui     $t4, %hi(camera_8032E018)
	addu    $t4, $t4, $t3
	lbu     $t4, %lo(camera_8032E018)($t4)
	sb      $t4, 0x0007($sp)
	b       .L8028C264
	lbu     $v0, 0x0007($sp)
	b       .L8028C264
	nop
.L8028C264:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028C26C:
	addiu   $sp, $sp, -0x0008
	andi    $a0, $a0, 0x00FF
	andi    $a1, $a1, 0x00FF
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x1320
	lw      $t7, 0x0000($t6)
	bne     $t7, $at, .L8028C294
	nop
	sh      $a0, 0x0006($sp)
.L8028C294:
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	li      $at, 0x1321
	lw      $t9, 0x0000($t8)
	bne     $t9, $at, .L8028C2B0
	nop
	sh      $a1, 0x0006($sp)
.L8028C2B0:
	b       .L8028C2C0
	lbu     $v0, 0x0007($sp)
	b       .L8028C2C0
	nop
.L8028C2C0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028C2C8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	lbu     $t7, 0x0030($t6)
	sb      $t7, 0x0033($sp)
	lbu     $t8, 0x0033($sp)
	bnez    $t8, .L8028C774
	nop
	lui     $t9, %hi(camera_8032DF50)
	lbu     $t9, %lo(camera_8032DF50)($t9)
	sb      $t9, 0x0033($sp)
	lui     $at, %hi(camera_8032DF50)
	sb      $0, %lo(camera_8032DF50)($at)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	li      $at, 0x0006
	lh      $t1, 0x001E($t0)
	bne     $t1, $at, .L8028C3F8
	nop
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0041
	beq     $s0, $at, .L8028C3A0
	nop
	li      $at, 0x0061
	beq     $s0, $at, .L8028C344
	nop
	b       .L8028C3E0
	nop
.L8028C344:
	lw      $t2, 0x0038($sp)
	li      $at, 0x0011
	lbu     $t3, 0x0000($t2)
	beq     $t3, $at, .L8028C374
	nop
	li      $at, 0x0004
	beq     $t3, $at, .L8028C374
	nop
	lbu     $t4, 0x0064($t2)
	li      $at, 0x0002
	bne     $t4, $at, .L8028C388
	nop
.L8028C374:
	li      $a0, 0x008C
	jal     camera_8028C26C
	li      $a1, 0x008D
	b       .L8028C398
	sb      $v0, 0x0033($sp)
.L8028C388:
	li      $a0, 0x0082
	jal     camera_8028C26C
	li      $a1, 0x0083
	sb      $v0, 0x0033($sp)
.L8028C398:
	b       .L8028C3F8
	nop
.L8028C3A0:
	lw      $t5, 0x0038($sp)
	li      $at, 0x0001
	lbu     $t6, 0x0064($t5)
	bne     $t6, $at, .L8028C3C8
	nop
	li      $a0, 0x0082
	jal     camera_8028C26C
	li      $a1, 0x0083
	b       .L8028C3D8
	sb      $v0, 0x0033($sp)
.L8028C3C8:
	li      $a0, 0x008C
	jal     camera_8028C26C
	li      $a1, 0x008D
	sb      $v0, 0x0033($sp)
.L8028C3D8:
	b       .L8028C3F8
	nop
.L8028C3E0:
	li      $a0, 0x0082
	jal     camera_8028C26C
	li      $a1, 0x0083
	sb      $v0, 0x0033($sp)
	b       .L8028C3F8
	nop
.L8028C3F8:
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	li      $at, 0x0005
	lh      $t8, 0x001E($t7)
	bne     $t8, $at, .L8028C418
	nop
	li      $t9, 0x008B
	sb      $t9, 0x0033($sp)
.L8028C418:
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	li      $at, 0x0001
	lh      $t1, 0x001E($t0)
	bne     $t1, $at, .L8028C438
	nop
	li      $t3, 0x0085
	sb      $t3, 0x0033($sp)
.L8028C438:
	lui     $t2, %hi(_camera_bss+0xD0)
	lh      $t2, %lo(_camera_bss+0xD0)($t2)
	slti    $at, $t2, 0x00D3
	bnez    $at, .L8028C460
	nop
	slti    $at, $t2, 0x00FD
	beqz    $at, .L8028C460
	nop
	li      $t4, 0x0086
	sb      $t4, 0x0033($sp)
.L8028C460:
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	lw      $s0, 0x0000($t5)
	sltiu   $at, $s0, 0x1927
	bnez    $at, .L8028C50C
	nop
	sltiu   $at, $s0, 0x192D
	bnez    $at, .L8028C4E0
	nop
	li.u    $at, 0x00021317
	li.l    $at, 0x00021317
	sltu    $at, $s0, $at
	bnez    $at, .L8028C4B0
	nop
	li.u    $at, 0x300032C7
	li.l    $at, 0x300032C7
	beq     $s0, $at, .L8028C648
	nop
	b       .L8028C6F0
	nop
.L8028C4B0:
	li.u    $at, 0xFFFDECEF
	li.l    $at, 0xFFFDECEF
	addu    $t6, $s0, $at
	sltiu   $at, $t6, 0x0006
	beqz    $at, .L8028C6F0
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(camera_8033733C)
	addu    $at, $at, $t6
	lw      $t6, %lo(camera_8033733C)($at)
	jr      $t6
	nop
.L8028C4E0:
	li      $at, 0x1928
	beq     $s0, $at, .L8028C55C
	nop
	li      $at, 0x192B
	beq     $s0, $at, .L8028C57C
	nop
	li      $at, 0x192C
	beq     $s0, $at, .L8028C5C4
	nop
	b       .L8028C6F0
	nop
.L8028C50C:
	li      $at, 0x1302
	beq     $s0, $at, .L8028C6B8
	nop
	li      $at, 0x1303
	beq     $s0, $at, .L8028C6CC
	nop
	li      $at, 0x1307
	beq     $s0, $at, .L8028C6E0
	nop
	li      $at, 0x132E
	beq     $s0, $at, .L8028C638
	nop
	li      $at, 0x1331
	beq     $s0, $at, .L8028C60C
	nop
	li      $at, 0x1926
	beq     $s0, $at, .L8028C56C
	nop
	b       .L8028C6F0
	nop
.L8028C55C:
	li      $t7, 0x0087
	sb      $t7, 0x0033($sp)
	b       .L8028C6F0
	nop
.L8028C56C:
	li      $t8, 0x00A0
	sb      $t8, 0x0033($sp)
	b       .L8028C6F0
	nop
.L8028C57C:
	lui     $t9, %hi(camera_stage_prev)
	lw      $t9, %lo(camera_stage_prev)($t9)
	li      $at, 0x001E
	beq     $t9, $at, .L8028C5A8
	nop
	li      $at, 0x0021
	beq     $t9, $at, .L8028C5A8
	nop
	li      $at, 0x0022
	bne     $t9, $at, .L8028C5B4
	nop
.L8028C5A8:
	li      $t0, 0x009D
	b       .L8028C5BC
	sb      $t0, 0x0033($sp)
.L8028C5B4:
	li      $t1, 0x00A9
	sb      $t1, 0x0033($sp)
.L8028C5BC:
	b       .L8028C6F0
	nop
.L8028C5C4:
	lui     $t3, %hi(camera_stage_prev)
	lw      $t3, %lo(camera_stage_prev)($t3)
	li      $at, 0x001E
	beq     $t3, $at, .L8028C5F0
	nop
	li      $at, 0x0021
	beq     $t3, $at, .L8028C5F0
	nop
	li      $at, 0x0022
	bne     $t3, $at, .L8028C5FC
	nop
.L8028C5F0:
	li      $t2, 0x009E
	b       .L8028C604
	sb      $t2, 0x0033($sp)
.L8028C5FC:
	li      $t4, 0x00AA
	sb      $t4, 0x0033($sp)
.L8028C604:
	b       .L8028C6F0
	nop
.L8028C60C:
	lw      $t5, 0x0038($sp)
	lbu     $t6, 0x0064($t5)
	bnez    $t6, .L8028C628
	nop
	li      $t7, 0x0095
	b       .L8028C630
	sb      $t7, 0x0033($sp)
.L8028C628:
	li      $t8, 0x008C
	sb      $t8, 0x0033($sp)
.L8028C630:
	b       .L8028C6F0
	nop
.L8028C638:
	li      $t9, 0x0097
	sb      $t9, 0x0033($sp)
	b       .L8028C6F0
	nop
.L8028C648:
	li      $t0, 0x009F
	sb      $t0, 0x0033($sp)
	b       .L8028C6F0
	nop
.globl L8028C658
L8028C658:
	li      $t1, 0x009A
	sb      $t1, 0x0033($sp)
	b       .L8028C6F0
	nop
.globl L8028C668
L8028C668:
	li      $t3, 0x0099
	sb      $t3, 0x0033($sp)
	b       .L8028C6F0
	nop
.globl L8028C678
L8028C678:
	li      $t2, 0x0098
	sb      $t2, 0x0033($sp)
	b       .L8028C6F0
	nop
.globl L8028C688
L8028C688:
	li      $t4, 0x009C
	sb      $t4, 0x0033($sp)
	b       .L8028C6F0
	nop
.globl L8028C698
L8028C698:
	li      $t5, 0x009B
	sb      $t5, 0x0033($sp)
	b       .L8028C6F0
	nop
.globl L8028C6A8
L8028C6A8:
	li      $t6, 0x0098
	sb      $t6, 0x0033($sp)
	b       .L8028C6F0
	nop
.L8028C6B8:
	jal     camera_8028C18C
	lw      $a0, 0x0038($sp)
	sb      $v0, 0x0033($sp)
	b       .L8028C6F0
	nop
.L8028C6CC:
	jal     camera_8028C18C
	lw      $a0, 0x0038($sp)
	sb      $v0, 0x0033($sp)
	b       .L8028C6F0
	nop
.L8028C6E0:
	li      $t7, 0x00AF
	sb      $t7, 0x0033($sp)
	b       .L8028C6F0
	nop
.L8028C6F0:
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lh      $t9, 0x001E($t8)
	addiu   $t0, $t9, -0x0009
	sltiu   $at, $t0, 0x0005
	beqz    $at, .L8028C774
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(camera_80337354)
	addu    $at, $at, $t0
	lw      $t0, %lo(camera_80337354)($at)
	jr      $t0
	nop
.globl L8028C724
L8028C724:
	li      $t1, 0x008E
	sb      $t1, 0x0033($sp)
	b       .L8028C774
	nop
.globl L8028C734
L8028C734:
	li      $t3, 0x00AE
	sb      $t3, 0x0033($sp)
	b       .L8028C774
	nop
.globl L8028C744
L8028C744:
	li      $t2, 0x00AC
	sb      $t2, 0x0033($sp)
	b       .L8028C774
	nop
.globl L8028C754
L8028C754:
	li      $t4, 0x00B1
	sb      $t4, 0x0033($sp)
	b       .L8028C774
	nop
.globl L8028C764
L8028C764:
	li      $t5, 0x00B2
	sb      $t5, 0x0033($sp)
	b       .L8028C774
	nop
.L8028C774:
	lw      $t6, 0x0038($sp)
	sb      $0, 0x0064($t6)
	b       .L8028C78C
	lbu     $v0, 0x0033($sp)
	b       .L8028C78C
	nop
.L8028C78C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl camera_8028C7A0
camera_8028C7A0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0038($sp)
	swc1    $f12, 0x0030($sp)
	swc1    $f14, 0x0034($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	sw      $t6, 0x0020($sp)
	la.u    $t7, _camera_bss+0x268
	la.l    $t7, _camera_bss+0x268
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x001C($sp)
	la.u    $t9, _camera_bss+0x268
	la.l    $t9, _camera_bss+0x268
	addiu   $t0, $t9, 0x0028
	sw      $t0, 0x0018($sp)
	lui     $t3, %hi(scene)
	lw      $t3, %lo(scene)($t3)
	lui     $t1, %hi(stage_index)
	lh      $t1, %lo(stage_index)($t1)
	lb      $t4, 0x0000($t3)
	lui     $at, %hi(camera_stagescene)
	sll     $t2, $t1, 4
	addu    $t5, $t2, $t4
	sw      $t5, %lo(camera_stagescene)($at)
	lwc1    $f4, 0x0030($sp)
	addiu   $t6, $sp, 0x0024
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0034($sp)
	addiu   $t7, $sp, 0x0024
	swc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0038($sp)
	addiu   $t8, $sp, 0x0024
	swc1    $f8, 0x0008($t8)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x000C
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x0024
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x0018
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	lw      $t9, 0x0020($sp)
	lwc1    $f18, 0x0034($sp)
	lh      $t0, 0x0076($t9)
	mtc1    $t0, $f10
	nop
	cvt.s.w $f16, $f10
	add.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x0076($t9)
	lw      $a0, 0x001C($sp)
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	lw      $a0, 0x001C($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_add
	addiu   $a0, $a0, 0x000C
	lw      $a0, 0x0018($sp)
	jal     vecf_add
	addiu   $a1, $sp, 0x0024
	lw      $a0, 0x0018($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_add
	addiu   $a0, $a0, 0x000C
	b       .L8028C8E0
	nop
.L8028C8E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028C8F0:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, .L8028C994
	nop
	lwc1    $f4, 0x0014($a0)
	lwc1    $f6, 0x0004($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8028C95C
	nop
	lwc1    $f8, 0x0014($a0)
	lwc1    $f10, 0x0008($sp)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0014($a0)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f18, 0x0014($a0)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L8028C954
	nop
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x0014($a0)
.L8028C954:
	b       .L8028C98C
	nop
.L8028C95C:
	lwc1    $f8, 0x0014($a0)
	lwc1    $f10, 0x0008($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0014($a0)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f18, 0x0014($a0)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L8028C98C
	nop
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x0014($a0)
.L8028C98C:
	b       .L8028C99C
	nop
.L8028C994:
	lwc1    $f8, 0x0004($sp)
	swc1    $f8, 0x0014($a0)
.L8028C99C:
	b       .L8028C9A4
	nop
.L8028C9A4:
	jr      $ra
	nop

camera_8028C9AC:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	b       .L8028C9C4
	nop
.L8028C9C4:
	jr      $ra
	nop

camera_8028C9CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lui     $at, %hi(camera_80337368)
	lwc1    $f4, %lo(camera_80337368)($at)
	li      $at, 0x43480000
	mtc1    $at, $f6
	addiu   $t6, $sp, 0x0020
	move    $a0, $t6
	move    $a3, $t6
	li      $a1, 0x3F800000
	li      $a2, 0x43480000
	swc1    $f4, 0x0010($sp)
	jal     camera_8027FC18
	swc1    $f6, 0x0014($sp)
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lh      $t9, 0x003A($sp)
	lh      $t8, 0x0012($t7)
	addu    $t0, $t8, $t9
	sh      $t0, 0x0026($sp)
	lhu     $t1, 0x0026($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0034($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	mul.s   $f16, $f8, $f10
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f6, %lo(math_sin)($at)
	lwc1    $f18, 0x000C($t4)
	lw      $t5, 0x0028($sp)
	mul.s   $f10, $f6, $f8
	add.s   $f4, $f18, $f16
	sub.s   $f18, $f4, $f10
	swc1    $f18, 0x000C($t5)
	lhu     $t6, 0x0026($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x002C($sp)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f16, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	mul.s   $f8, $f16, $f6
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f4, 0x0034($sp)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	mul.s   $f18, $f4, $f10
	lw      $t0, 0x0028($sp)
	lwc1    $f16, 0x0004($t9)
	add.s   $f6, $f16, $f18
	add.s   $f4, $f8, $f6
	swc1    $f4, 0x0004($t0)
	lui     $t1, %hi(camera_8032DF60)
	lw      $t1, %lo(camera_8032DF60)($t1)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x0008($t1)
	lw      $t2, 0x0028($sp)
	add.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f8
	swc1    $f6, 0x0008($t2)
	b       .L8028CAF8
	nop
.L8028CAF8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028CB08:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lh      $t8, 0x001A($sp)
	lh      $t7, 0x0012($t6)
	addu    $t9, $t7, $t8
	sh      $t9, 0x0006($sp)
	lhu     $t0, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x000C($sp)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t2
	mul.s   $f8, $f4, $f6
	lwc1    $f16, %lo(math_sin)($at)
	lwc1    $f10, 0x0014($sp)
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0004($t3)
	add.s   $f6, $f4, $f18
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0010($a0)
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	lwc1    $f4, 0x0010($sp)
	lwc1    $f16, 0x0008($t4)
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x0014($a0)
	lhu     $t5, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0014($sp)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f6, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	mul.s   $f10, $f8, $f6
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lwc1    $f8, 0x000C($sp)
	lwc1    $f18, %lo(math_sin)($at)
	lwc1    $f16, 0x000C($t8)
	mul.s   $f6, $f18, $f8
	add.s   $f4, $f16, $f10
	sub.s   $f16, $f4, $f6
	swc1    $f16, 0x0018($a0)
	b       .L8028CBE8
	nop
.L8028CBE8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

camera_8028CBF0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	addiu   $a0, $sp, 0x0024
	jal     vecf_cpy
	lw      $a1, 0x0034($sp)
	lw      $t7, 0x003C($sp)
	lw      $t6, 0x0038($sp)
	lui     $at, %hi(math_cos)
	lhu     $t8, 0x0000($t7)
	lwc1    $f4, 0x0008($t6)
	lwc1    $f16, 0x0004($t6)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t0
	mul.s   $f8, $f4, $f6
	lwc1    $f10, %lo(math_sin)($at)
	addiu   $t1, $sp, 0x0018
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f8, $f18
	neg.s   $f6, $f4
	swc1    $f6, 0x0008($t1)
	lw      $t2, 0x003C($sp)
	lw      $t7, 0x0038($sp)
	lui     $at, %hi(math_cos)
	lhu     $t3, 0x0000($t2)
	lwc1    $f16, 0x0004($t7)
	lwc1    $f18, 0x0008($t7)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	mul.s   $f8, $f10, $f16
	lwc1    $f4, %lo(math_sin)($at)
	addiu   $t8, $sp, 0x0018
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0004($t8)
	lw      $t9, 0x0038($sp)
	addiu   $t0, $sp, 0x0018
	lwc1    $f16, 0x0000($t9)
	swc1    $f16, 0x0000($t0)
	lw      $t6, 0x003C($sp)
	lui     $at, %hi(math_cos)
	addiu   $t4, $sp, 0x0018
	lhu     $t1, 0x0002($t6)
	lwc1    $f4, 0x0000($t4)
	lwc1    $f6, 0x0008($t4)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f18, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	mul.s   $f8, $f18, $f4
	lwc1    $f10, %lo(math_sin)($at)
	lw      $t7, 0x0034($sp)
	lw      $t5, 0x0030($sp)
	mul.s   $f16, $f6, $f10
	lwc1    $f18, 0x0000($t7)
	add.s   $f4, $f18, $f16
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x0000($t5)
	lw      $t9, 0x0034($sp)
	addiu   $t8, $sp, 0x0018
	lwc1    $f10, 0x0004($t8)
	lwc1    $f18, 0x0004($t9)
	lw      $t0, 0x0030($sp)
	add.s   $f16, $f10, $f18
	swc1    $f16, 0x0004($t0)
	lw      $t1, 0x003C($sp)
	lui     $at, %hi(math_cos)
	addiu   $t6, $sp, 0x0018
	lhu     $t2, 0x0002($t1)
	lwc1    $f8, 0x0008($t6)
	lw      $t7, 0x0034($sp)
	sra     $t4, $t2, 4
	sll     $t3, $t4, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	mul.s   $f6, $f8, $f4
	lwc1    $f8, 0x0000($t6)
	lwc1    $f16, %lo(math_sin)($at)
	lwc1    $f10, 0x0008($t7)
	lw      $t5, 0x0030($sp)
	mul.s   $f4, $f16, $f8
	add.s   $f18, $f10, $f6
	sub.s   $f10, $f18, $f4
	swc1    $f10, 0x0008($t5)
	b       .L8028CD84
	nop
.L8028CD84:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028CD94:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	addiu   $a0, $sp, 0x001C
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0038($sp)
	jal     vecf_set
	lw      $a3, 0x003C($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	addiu   $a2, $sp, 0x001C
	jal     camera_8028CBF0
	lw      $a3, 0x0030($sp)
	b       .L8028CDDC
	nop
.L8028CDDC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028CDEC:
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x1320
	lw      $t7, 0x0000($t6)
	bne     $t7, $at, .L8028CE0C
	nop
	b       .L8028CE14
	sh      $0, 0x0000($a0)
.L8028CE0C:
	li      $t8, -0x8000
	sh      $t8, 0x0000($a0)
.L8028CE14:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028CE24:
	addiu   $sp, $sp, -0x0098
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0098($sp)
	sw      $a1, 0x009C($sp)
	sw      $a2, 0x00A0($sp)
	sw      $a3, 0x00A4($sp)
	sw      $s0, 0x0028($sp)
	sdc1    $f20, 0x0020($sp)
	lui     $t6, %hi(_camera_bss+0xB0)
	lw      $t6, %lo(_camera_bss+0xB0)($t6)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x007C($sp)
	lui     $t7, %hi(_camera_bss+0xB0)
	lw      $t7, %lo(_camera_bss+0xB0)($t7)
	sh      $t7, 0x007A($sp)
	sh      $0, 0x0078($sp)
	lw      $a0, 0x0098($sp)
	jal     vecf_cpy
	lw      $a1, 0x00A0($sp)
	lw      $a0, 0x009C($sp)
	jal     vecf_cpy
	lw      $a1, 0x00A4($sp)
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	andi    $t9, $t8, 0x0400
	beqz    $t9, .L8028CF90
	nop
	sw      $0, 0x0044($sp)
.L8028CE9C:
	lw      $t1, 0x0044($sp)
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	lw      $t0, 0x00A8($sp)
	sll     $t2, $t1, 2
	addu    $t5, $t4, $t2
	addu    $t3, $t0, $t2
	lwc1    $f8, 0x0000($t3)
	lwc1    $f10, 0x0004($t5)
	lui     $at, %hi(_camera_bss+0xB4)
	addu    $at, $at, $t2
	add.s   $f16, $f8, $f10
	lwc1    $f18, %lo(_camera_bss+0xB4)($at)
	addu    $t6, $sp, $t2
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0054($t6)
	lw      $t8, 0x0044($sp)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	lw      $t7, 0x00AC($sp)
	sll     $t9, $t8, 2
	addu    $t3, $t0, $t9
	addu    $t1, $t7, $t9
	lwc1    $f6, 0x0000($t1)
	lwc1    $f8, 0x0004($t3)
	lui     $at, %hi(_camera_bss+0xB4)
	addu    $at, $at, $t9
	add.s   $f10, $f6, $f8
	lwc1    $f16, %lo(_camera_bss+0xB4)($at)
	addu    $t4, $sp, $t9
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0048($t4)
	lw      $t5, 0x0044($sp)
	addiu   $t2, $t5, 0x0001
	slti    $at, $t2, 0x0003
	bnez    $at, .L8028CE9C
	sw      $t2, 0x0044($sp)
	la.u    $t6, _camera_bss+0xA0
	la.l    $t6, _camera_bss+0xA0
	addiu   $t8, $t6, 0x000A
	sw      $t8, 0x0010($sp)
	addiu   $a2, $t6, 0x000C
	addiu   $a3, $t6, 0x0008
	lw      $a0, 0x00A4($sp)
	jal     cartesian_to_polar
	addiu   $a1, $sp, 0x0048
	la.u    $t7, _camera_bss+0xA0
	la.l    $t7, _camera_bss+0xA0
	addiu   $t1, $t7, 0x0002
	sw      $t1, 0x0010($sp)
	addiu   $a2, $t7, 0x0004
	move    $a3, $t7
	lw      $a0, 0x00A4($sp)
	jal     cartesian_to_polar
	addiu   $a1, $sp, 0x0054
	lui     $t0, %hi(_camera_bss+0x32A)
	lh      $t0, %lo(_camera_bss+0x32A)($t0)
	li      $at, -0x0401
	and     $t3, $t0, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t3, %lo(_camera_bss+0x32A)($at)
.L8028CF90:
	lui     $t9, %hi(_camera_bss+0xB0)
	lw      $t9, %lo(_camera_bss+0xB0)($t9)
	blez    $t9, .L8028D3A8
	nop
	li      $t4, 0x0001
	sh      $t4, 0x0078($sp)
	addiu   $t5, $sp, 0x0084
	sw      $t5, 0x0010($sp)
	lw      $a0, 0x00A4($sp)
	lw      $a1, 0x00A0($sp)
	addiu   $a2, $sp, 0x008C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0086
	lui     $at, %hi(_camera_bss+0xA4)
	lwc1    $f6, %lo(_camera_bss+0xA4)($at)
	lwc1    $f4, 0x008C($sp)
	mtc1    $0, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8028CFF0
	nop
	b       .L8028D004
	mov.s   $f20, $f8
.L8028CFF0:
	lui     $at, %hi(_camera_bss+0xA4)
	lwc1    $f18, %lo(_camera_bss+0xA4)($at)
	lwc1    $f16, 0x008C($sp)
	sub.s   $f20, $f16, $f18
	neg.s   $f20, $f20
.L8028D004:
	lwc1    $f4, 0x007C($sp)
	div.s   $f6, $f20, $f4
	swc1    $f6, 0x0090($sp)
	lui     $t6, %hi(_camera_bss+0xA0)
	lh      $t6, %lo(_camera_bss+0xA0)($t6)
	lh      $t2, 0x0086($sp)
	mtc1    $0, $f16
	subu    $t8, $t2, $t6
	mtc1    $t8, $f10
	nop
	cvt.s.w $f8, $f10
	c.lt.s  $f16, $f8
	nop
	bc1f    .L8028D048
	nop
	b       .L8028D05C
	move    $s0, $t8
.L8028D048:
	lui     $t1, %hi(_camera_bss+0xA0)
	lh      $t1, %lo(_camera_bss+0xA0)($t1)
	lh      $t7, 0x0086($sp)
	subu    $s0, $t7, $t1
	subu    $s0, $0, $s0
.L8028D05C:
	lh      $t0, 0x007A($sp)
	div     $0, $s0, $t0
	mflo    $t3
	sh      $t3, 0x0094($sp)
	bnez    $t0, .L8028D078
	nop
	break   7
.L8028D078:
	li      $at, -0x0001
	bne     $t0, $at, .L8028D090
	li      $at, 0x80000000
	bne     $s0, $at, .L8028D090
	nop
	break   6
.L8028D090:
	lui     $t4, %hi(_camera_bss+0xA2)
	lh      $t4, %lo(_camera_bss+0xA2)($t4)
	lh      $t9, 0x0084($sp)
	mtc1    $0, $f6
	subu    $t5, $t9, $t4
	mtc1    $t5, $f18
	nop
	cvt.s.w $f4, $f18
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8028D0C8
	nop
	b       .L8028D0DC
	move    $s0, $t5
.L8028D0C8:
	lui     $t6, %hi(_camera_bss+0xA2)
	lh      $t6, %lo(_camera_bss+0xA2)($t6)
	lh      $t2, 0x0084($sp)
	subu    $s0, $t2, $t6
	subu    $s0, $0, $s0
.L8028D0DC:
	lh      $t8, 0x007A($sp)
	div     $0, $s0, $t8
	mflo    $t7
	sh      $t7, 0x0096($sp)
	bnez    $t8, .L8028D0F8
	nop
	break   7
.L8028D0F8:
	li      $at, -0x0001
	bne     $t8, $at, .L8028D110
	li      $at, 0x80000000
	bne     $s0, $at, .L8028D110
	nop
	break   6
.L8028D110:
	la.u    $a0, _camera_bss+0xA0
	la.l    $a0, _camera_bss+0xA0
	addiu   $a0, $a0, 0x0004
	lw      $a1, 0x008C($sp)
	jal     camera_802899CC
	lw      $a2, 0x0090($sp)
	la.u    $a0, _camera_bss+0xA0
	la.l    $a0, _camera_bss+0xA0
	addiu   $a0, $a0, 0x0002
	lh      $a1, 0x0084($sp)
	jal     camera_8028976C
	lh      $a2, 0x0096($sp)
	la.u    $a0, _camera_bss+0xA0
	la.l    $a0, _camera_bss+0xA0
	lh      $a1, 0x0086($sp)
	jal     camera_8028976C
	lh      $a2, 0x0094($sp)
	lui     $t1, %hi(_camera_bss+0xA2)
	lh      $t1, %lo(_camera_bss+0xA2)($t1)
	lui     $a2, %hi(_camera_bss+0xA4)
	lui     $a3, %hi(_camera_bss+0xA0)
	lh      $a3, %lo(_camera_bss+0xA0)($a3)
	lw      $a2, %lo(_camera_bss+0xA4)($a2)
	lw      $a0, 0x00A4($sp)
	addiu   $a1, $sp, 0x006C
	jal     polar_to_cartesian
	sw      $t1, 0x0010($sp)
	addiu   $t0, $sp, 0x0084
	sw      $t0, 0x0010($sp)
	lw      $a0, 0x00A0($sp)
	lw      $a1, 0x00A4($sp)
	addiu   $a2, $sp, 0x008C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0086
	lui     $t3, %hi(_camera_bss+0xA8)
	lui     $t9, %hi(_camera_bss+0xB2)
	lh      $t9, %lo(_camera_bss+0xB2)($t9)
	lh      $t3, %lo(_camera_bss+0xA8)($t3)
	div     $0, $t3, $t9
	mflo    $t4
	sh      $t4, 0x0094($sp)
	bnez    $t9, .L8028D1C0
	nop
	break   7
.L8028D1C0:
	li      $at, -0x0001
	bne     $t9, $at, .L8028D1D8
	li      $at, 0x80000000
	bne     $t3, $at, .L8028D1D8
	nop
	break   6
.L8028D1D8:
	lui     $t5, %hi(_camera_bss+0xAA)
	lui     $t2, %hi(_camera_bss+0xB2)
	lh      $t2, %lo(_camera_bss+0xB2)($t2)
	lh      $t5, %lo(_camera_bss+0xAA)($t5)
	div     $0, $t5, $t2
	mflo    $t6
	sh      $t6, 0x0096($sp)
	bnez    $t2, .L8028D200
	nop
	break   7
.L8028D200:
	li      $at, -0x0001
	bne     $t2, $at, .L8028D218
	li      $at, 0x80000000
	bne     $t5, $at, .L8028D218
	nop
	break   6
.L8028D218:
	lui     $t8, %hi(_camera_bss+0xB0)
	lw      $t8, %lo(_camera_bss+0xB0)($t8)
	lui     $at, %hi(_camera_bss+0xAC)
	lwc1    $f10, %lo(_camera_bss+0xAC)($at)
	mtc1    $t8, $f8
	nop
	cvt.s.w $f16, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0090($sp)
	la.u    $a0, _camera_bss+0xA0
	la.l    $a0, _camera_bss+0xA0
	addiu   $a0, $a0, 0x0008
	lh      $a1, 0x0086($sp)
	jal     camera_8028976C
	lh      $a2, 0x0094($sp)
	la.u    $a0, _camera_bss+0xA0
	la.l    $a0, _camera_bss+0xA0
	addiu   $a0, $a0, 0x000A
	lh      $a1, 0x0084($sp)
	jal     camera_8028976C
	lh      $a2, 0x0096($sp)
	la.u    $a0, _camera_bss+0xA0
	la.l    $a0, _camera_bss+0xA0
	addiu   $a0, $a0, 0x000C
	li      $a1, 0x0000
	jal     camera_802899CC
	lw      $a2, 0x0090($sp)
	lui     $t7, %hi(_camera_bss+0xAA)
	lh      $t7, %lo(_camera_bss+0xAA)($t7)
	lui     $a2, %hi(_camera_bss+0xAC)
	lui     $a3, %hi(_camera_bss+0xA8)
	lh      $a3, %lo(_camera_bss+0xA8)($a3)
	lw      $a2, %lo(_camera_bss+0xAC)($a2)
	lw      $a0, 0x00A4($sp)
	addiu   $a1, $sp, 0x0060
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lw      $a0, 0x009C($sp)
	jal     vecf_cpy
	addiu   $a1, $sp, 0x0060
	lw      $a0, 0x0098($sp)
	jal     vecf_cpy
	addiu   $a1, $sp, 0x006C
	lui     $t1, %hi(_camera_bss+0x6B0)
	lw      $t1, %lo(_camera_bss+0x6B0)($t1)
	lbu     $t0, 0x0030($t1)
	bnez    $t0, .L8028D2EC
	nop
	lui     $t3, %hi(_camera_bss+0x328)
	lh      $t3, %lo(_camera_bss+0x328)($t3)
	andi    $t9, $t3, 0x2000
	bnez    $t9, .L8028D380
	nop
.L8028D2EC:
	lw      $t4, 0x0098($sp)
	addiu   $a3, $sp, 0x003C
	lwc1    $f12, 0x0000($t4)
	lwc1    $f14, 0x0004($t4)
	jal     map_80381900
	lw      $a2, 0x0008($t4)
	swc1    $f0, 0x0040($sp)
	lui     $at, %hi(camera_8033736C)
	lwc1    $f6, %lo(camera_8033736C)($at)
	lwc1    $f4, 0x0040($sp)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L8028D35C
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0040($sp)
	lw      $t5, 0x0098($sp)
	add.s   $f20, $f8, $f10
	swc1    $f20, 0x0040($sp)
	lwc1    $f16, 0x0004($t5)
	c.lt.s  $f16, $f20
	nop
	bc1f    .L8028D35C
	nop
	lwc1    $f18, 0x0040($sp)
	lw      $t2, 0x0098($sp)
	swc1    $f18, 0x0004($t2)
.L8028D35C:
	lw      $t6, 0x0098($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	li      $a3, 0x0000
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	addiu   $a2, $t6, 0x0008
	jal     map_80380DE8
	swc1    $f4, 0x0010($sp)
.L8028D380:
	lui     $t8, %hi(_camera_bss+0xB0)
	lw      $t8, %lo(_camera_bss+0xB0)($t8)
	lui     $at, %hi(_camera_bss+0xB0)
	addiu   $t7, $t8, -0x0001
	sw      $t7, %lo(_camera_bss+0xB0)($at)
	lw      $a0, 0x009C($sp)
	jal     camera_8028AAD8
	lw      $a1, 0x0098($sp)
	b       .L8028D3DC
	sh      $v0, 0x00B2($sp)
.L8028D3A8:
	mtc1    $0, $f6
	lui     $at, %hi(_camera_bss+0xA4)
	swc1    $f6, %lo(_camera_bss+0xA4)($at)
	lui     $at, %hi(_camera_bss+0xA0)
	sh      $0, %lo(_camera_bss+0xA0)($at)
	lui     $at, %hi(_camera_bss+0xA2)
	sh      $0, %lo(_camera_bss+0xA2)($at)
	lui     $t1, %hi(_camera_bss+0x32A)
	lh      $t1, %lo(_camera_bss+0x32A)($t1)
	li      $at, -0x0801
	and     $t0, $t1, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t0, %lo(_camera_bss+0x32A)($at)
.L8028D3DC:
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0xA0
	la.l    $a0, _camera_bss+0xA0
	addiu   $a0, $a0, 0x0014
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       .L8028D408
	lh      $v0, 0x00B2($sp)
	b       .L8028D408
	nop
.L8028D408:
	lw      $ra, 0x002C($sp)
	ldc1    $f20, 0x0020($sp)
	lw      $s0, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0098

camera_8028D41C:
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	li      $at, -0x0C01
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lui     $at, %hi(_camera_bss+0xB0)
	sw      $0, %lo(_camera_bss+0xB0)($at)
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028D44C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $0, 0x0024($sp)
	lh      $t6, 0x002E($sp)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0020($sp)
	lh      $t7, 0x0032($sp)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x001C($sp)
	lh      $t8, 0x0036($sp)
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0018($sp)
	la.u    $t9, camera_8032DF6C
	la.l    $t9, camera_8032DF6C
	lwc1    $f4, 0x0000($t9)
	lwc1    $f6, 0x0020($sp)
	c.eq.s  $f4, $f6
	nop
	bc1f    .L8028D4F4
	nop
	lwc1    $f8, 0x0004($t9)
	lwc1    $f10, 0x001C($sp)
	c.eq.s  $f8, $f10
	nop
	bc1f    .L8028D4F4
	nop
	lwc1    $f16, 0x0008($t9)
	lwc1    $f18, 0x0018($sp)
	c.eq.s  $f16, $f18
	nop
	bc1t    .L8028D514
	nop
.L8028D4F4:
	li      $t0, 0x0001
	sw      $t0, 0x0024($sp)
	lui     $t1, %hi(_camera_bss+0x32A)
	lh      $t1, %lo(_camera_bss+0x32A)($t1)
	li      $at, -0x0002
	and     $t2, $t1, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t2, %lo(_camera_bss+0x32A)($at)
.L8028D514:
	la.u    $a0, camera_8032DF6C
	la.l    $a0, camera_8032DF6C
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x001C($sp)
	jal     vecf_set
	lw      $a3, 0x0018($sp)
	lw      $t3, 0x0028($sp)
	li      $at, 0x000D
	lbu     $t4, 0x0000($t3)
	beq     $t4, $at, .L8028D58C
	nop
	lui     $t5, %hi(_camera_bss+0x32A)
	lh      $t5, %lo(_camera_bss+0x32A)($t5)
	li      $at, -0x0002
	and     $t6, $t5, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t6, %lo(_camera_bss+0x32A)($at)
	lw      $t8, 0x0028($sp)
	li      $t7, 0x000D
	sb      $t7, 0x0000($t8)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	lw      $a0, 0x0028($sp)
	la.u    $t9, camera_8032DF6C
	la.l    $t9, camera_8032DF6C
	lw      $a1, 0x0000($t9)
	lw      $a3, 0x0008($t9)
	lw      $a2, 0x0008($t0)
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
.L8028D58C:
	b       .L8028D59C
	lw      $v0, 0x0024($sp)
	b       .L8028D59C
	nop
.L8028D59C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028D5AC:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x000E
	beq     $t6, $at, .L8028D5EC
	nop
	li      $t7, 0x000E
	sb      $t7, 0x0000($a0)
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	li      $at, -0x0002
	and     $t9, $t8, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	lui     $at, %hi(_camera_bss+0x256)
	sh      $0, %lo(_camera_bss+0x256)($at)
	lui     $at, %hi(_camera_bss+0x258)
	sh      $0, %lo(_camera_bss+0x258)($at)
.L8028D5EC:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028D5FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000B
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, .L8028D640
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x000B
	jal     camera_80286088
	li      $a2, 0x000F
	lw      $t8, 0x0018($sp)
	lui     $at, %hi(_camera_bss+0x252)
	lh      $t9, 0x003A($t8)
	addiu   $t0, $t9, -0x2000
	sh      $t0, %lo(_camera_bss+0x252)($at)
.L8028D640:
	b       .L8028D648
	nop
.L8028D648:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028D658:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x0004
	beq     $t6, $at, .L8028D688
	nop
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	li      $at, -0x0002
	and     $t8, $t7, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t8, %lo(_camera_bss+0x32A)($at)
	li      $t9, 0x0004
	sb      $t9, 0x0000($a0)
.L8028D688:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028D698:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	addiu   $t7, $sp, 0x0024
	lwc1    $f4, 0x0028($t6)
	swc1    $f4, 0x0000($t7)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	addiu   $t9, $sp, 0x0024
	lwc1    $f6, 0x0008($t8)
	swc1    $f6, 0x0004($t9)
	lw      $t0, 0x0030($sp)
	addiu   $t1, $sp, 0x0024
	lwc1    $f8, 0x002C($t0)
	swc1    $f8, 0x0008($t1)
	lw      $t2, 0x0030($sp)
	li      $at, 0x0001
	lbu     $t3, 0x0000($t2)
	beq     $t3, $at, .L8028D780
	nop
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	addiu   $a0, $sp, 0x0024
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0004
	lw      $t5, 0x0030($sp)
	sll     $s0, $v0, 16
	sra     $t4, $s0, 16
	move    $s0, $t4
	addiu   $a0, $t5, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $t5, 0x0010
	subu    $t6, $s0, $v0
	addiu   $t7, $t6, 0x4000
	sh      $t7, 0x0022($sp)
	lh      $t8, 0x0022($sp)
	blez    $t8, .L8028D754
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0001
	jal     camera_80286088
	lh      $a2, 0x0036($sp)
	b       .L8028D778
	nop
.L8028D754:
	lw      $t0, 0x0030($sp)
	li      $t9, 0x0001
	sb      $t9, 0x0000($t0)
	lui     $t1, %hi(_camera_bss+0x32A)
	lh      $t1, %lo(_camera_bss+0x32A)($t1)
	li      $at, -0x0002
	and     $t2, $t1, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t2, %lo(_camera_bss+0x32A)($at)
.L8028D778:
	lui     $at, %hi(_camera_bss+0x252)
	sh      $0, %lo(_camera_bss+0x252)($at)
.L8028D780:
	b       .L8028D788
	nop
.L8028D788:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028D79C:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x000C
	beq     $t6, $at, .L8028D878
	nop
	lui     $at, %hi(_camera_bss+0x2C0)
	sw      $a1, %lo(_camera_bss+0x2C0)($at)
	lui     $at, %hi(_camera_bss+0x2BC)
	sw      $0, %lo(_camera_bss+0x2BC)($at)
	mtc1    $0, $f4
	la.u    $t7, _camera_bss+0x2C8
	la.l    $t7, _camera_bss+0x2C8
	swc1    $f4, 0x0000($t7)
	mtc1    $0, $f6
	la.u    $t8, _camera_bss+0x2C8
	la.l    $t8, _camera_bss+0x2C8
	swc1    $f6, 0x0004($t8)
	mtc1    $0, $f8
	la.u    $t9, _camera_bss+0x2C8
	la.l    $t9, _camera_bss+0x2C8
	swc1    $f8, 0x0008($t9)
	lui     $t0, %hi(_camera_bss+0x2C0)
	lw      $t0, %lo(_camera_bss+0x2C0)($t0)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f10, 0x001C($t0)
	lwc1    $f16, 0x0004($t0)
	add.s   $f18, $f10, $f16
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x0010($a0)
	lui     $t1, %hi(_camera_bss+0x2C0)
	lw      $t1, %lo(_camera_bss+0x2C0)($t1)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f8, 0x0020($t1)
	lwc1    $f10, 0x0008($t1)
	add.s   $f16, $f8, $f10
	div.s   $f4, $f16, $f18
	swc1    $f4, 0x0014($a0)
	lui     $t2, %hi(_camera_bss+0x2C0)
	lw      $t2, %lo(_camera_bss+0x2C0)($t2)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f6, 0x0024($t2)
	lwc1    $f8, 0x000C($t2)
	add.s   $f10, $f6, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($a0)
	lui     $t3, %hi(_camera_bss+0x32A)
	lh      $t3, %lo(_camera_bss+0x32A)($t3)
	li      $at, -0x0002
	and     $t4, $t3, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t4, %lo(_camera_bss+0x32A)($at)
	li      $t5, 0x000C
	sb      $t5, 0x0000($a0)
.L8028D878:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028D888:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	li      $at, 0x0061
	beq     $s0, $at, .L8028D8E8
	nop
	li      $at, 0x0141
	beq     $s0, $at, .L8028D8C0
	nop
	b       .L8028D910
	nop
.L8028D8C0:
	la.u    $a0, camera_8032DF6C
	li.u    $a1, 0x44218000
	li.u    $a3, 0xC4BD2000
	li.l    $a3, 0xC4BD2000
	li.l    $a1, 0x44218000
	la.l    $a0, camera_8032DF6C
	jal     vecf_set
	li      $a2, 0x430F0000
	b       .L8028D910
	nop
.L8028D8E8:
	la.u    $a0, camera_8032DF6C
	li.u    $a1, 0xC4104000
	li.u    $a3, 0x44B46000
	li.l    $a3, 0x44B46000
	li.l    $a1, 0xC4104000
	la.l    $a0, camera_8032DF6C
	jal     vecf_set
	li      $a2, 0x430F0000
	b       .L8028D910
	nop
.L8028D910:
	b       .L8028D918
	nop
.L8028D918:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028D92C:
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lw      $t7, 0x0000($t6)
	andi    $t8, $t7, 0x4000
	bnez    $t8, .L8028D964
	nop
	lbu     $t9, 0x0000($a0)
	li      $at, 0x0003
	beq     $t9, $at, .L8028D964
	nop
	lbu     $t0, 0x0000($a0)
	li      $at, 0x0008
	bne     $t0, $at, .L8028D978
	nop
.L8028D964:
	lui     $t1, %hi(_camera_bss+0x32A)
	lh      $t1, %lo(_camera_bss+0x32A)($t1)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t2, $t1, 0x1000
	sh      $t2, %lo(_camera_bss+0x32A)($at)
.L8028D978:
	lui     $t3, %hi(stage_index)
	lh      $t3, %lo(stage_index)($t3)
	li      $at, 0x0017
	beq     $t3, $at, .L8028D9A4
	nop
	li      $at, 0x000B
	beq     $t3, $at, .L8028D9A4
	nop
	li      $at, 0x001C
	bne     $t3, $at, .L8028D9BC
	nop
.L8028D9A4:
	lui     $t4, %hi(_camera_bss+0x32A)
	lh      $t4, %lo(_camera_bss+0x32A)($t4)
	li      $at, -0x1001
	and     $t5, $t4, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t5, %lo(_camera_bss+0x32A)($at)
.L8028D9BC:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x0003
	bne     $t6, $at, .L8028D9E4
	nop
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lw      $t8, 0x0000($t7)
	andi    $t9, $t8, 0x6000
	beqz    $t9, .L8028D9F4
	nop
.L8028D9E4:
	lbu     $t0, 0x0000($a0)
	li      $at, 0x000A
	bne     $t0, $at, .L8028DA08
	nop
.L8028D9F4:
	lui     $t1, %hi(_camera_bss+0x32A)
	lh      $t1, %lo(_camera_bss+0x32A)($t1)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t2, $t1, 0x1000
	sh      $t2, %lo(_camera_bss+0x32A)($at)
.L8028DA08:
	jr      $ra
	nop
	jr      $ra
	nop

/* void camera_8028DA18(struct camera *cam) */
.globl camera_8028DA18
camera_8028DA18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D5AC
	lw      $a0, 0x0018($sp)
	li      $t6, 0x4000
	lui     $at, %hi(_camera_bss+0x256)
	sh      $t6, %lo(_camera_bss+0x256)($at)
	b       .L8028DA40
	nop
.L8028DA40:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DA50(struct camera *cam) */
.globl camera_8028DA50
camera_8028DA50:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D5AC
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(camera_80337370)
	lwc1    $f6, %lo(camera_80337370)($at)
	lwc1    $f4, 0x0014($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8028DAD4
	nop
	lui     $at, %hi(camera_80337374)
	lwc1    $f8, %lo(camera_80337374)($at)
	lw      $t7, 0x0018($sp)
	swc1    $f8, 0x0014($t7)
	lw      $t8, 0x0018($sp)
	la.u    $t9, _camera_bss+0x178
	la.l    $t9, _camera_bss+0x178
	lwc1    $f10, 0x0014($t8)
	swc1    $f10, 0x0028($t9)
	lw      $t0, 0x0018($sp)
	la.u    $t1, _camera_bss+0x178
	la.l    $t1, _camera_bss+0x178
	lwc1    $f16, 0x0014($t0)
	swc1    $f16, 0x0010($t1)
	lui     $t2, %hi(_camera_bss+0x32A)
	lh      $t2, %lo(_camera_bss+0x32A)($t2)
	li      $at, -0x0002
	and     $t3, $t2, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t3, %lo(_camera_bss+0x32A)($at)
.L8028DAD4:
	b       .L8028DADC
	nop
.L8028DADC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DAEC(struct camera *cam) */
.globl camera_8028DAEC
camera_8028DAEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000D
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, .L8028DB20
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0B9E
	li      $a2, 0x01DE
	jal     camera_8028D44C
	li      $a3, -0x0F87
.L8028DB20:
	b       .L8028DB28
	nop
.L8028DB28:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DB38(struct camera *cam) */
.globl camera_8028DB38
camera_8028DB38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000D
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, .L8028DB6C
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0B89
	li      $a2, 0x031E
	jal     camera_8028D44C
	li      $a3, -0x0F67
.L8028DB6C:
	lw      $t8, 0x0018($sp)
	lui     $at, %hi(camera_80337378)
	lwc1    $f6, %lo(camera_80337378)($at)
	lwc1    $f4, 0x0014($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8028DB9C
	nop
	lui     $at, %hi(camera_8033737C)
	lwc1    $f8, %lo(camera_8033737C)($at)
	lw      $t9, 0x0018($sp)
	swc1    $f8, 0x0014($t9)
.L8028DB9C:
	b       .L8028DBA4
	nop
.L8028DBA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DBB4(struct camera *cam) */
.globl camera_8028DBB4
camera_8028DBB4:
	lbu     $t6, 0x0000($a0)
	li      $at, 0x000D
	beq     $t6, $at, .L8028DBE4
	nop
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	li      $at, -0x0002
	and     $t8, $t7, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t8, %lo(_camera_bss+0x32A)($at)
	li      $t9, 0x000D
	sb      $t9, 0x0000($a0)
.L8028DBE4:
	jr      $ra
	nop
	jr      $ra
	nop

/* void camera_8028DBF4(struct camera *cam) */
.globl camera_8028DBF4
camera_8028DBF4:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t7, $t6, 0x0040
	sh      $t7, %lo(_camera_bss+0x328)($at)
	b       .L8028DC14
	nop
.L8028DC14:
	jr      $ra
	nop

/* void camera_8028DC1C(struct camera *cam) */
.globl camera_8028DC1C
camera_8028DC1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x1000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x000E
	jal     camera_80286088
	li      $a2, 0x003C
	li      $t8, 0x1D27
	lui     $at, %hi(_camera_bss+0x256)
	sh      $t8, %lo(_camera_bss+0x256)($at)
	b       .L8028DC60
	nop
.L8028DC60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DC70(struct camera *cam) */
.globl camera_8028DC70
camera_8028DC70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x003C
	b       .L8028DC94
	nop
.L8028DC94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028DCA4:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f4, %lo(_camera_bss+0xCC)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x000C($sp)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    .L8028DD38
	nop
	lui     $at, %hi(_camera_bss+0xE4)
	lwc1    $f16, %lo(_camera_bss+0xE4)($at)
	c.lt.s  $f4, $f16
	nop
	bc1f    .L8028DD38
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f18, 0x000C($sp)
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x0014($a0)
	li      $at, 0x43C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x000C($sp)
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	sub.s   $f4, $f10, $f16
	swc1    $f4, 0x0010($t6)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f18, 0x000C($sp)
	la.u    $t7, _camera_bss+0x178
	la.l    $t7, _camera_bss+0x178
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x0028($t7)
.L8028DD38:
	b       .L8028DD40
	nop
.L8028DD40:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void camera_8028DD48(struct camera *cam) */
.globl camera_8028DD48
camera_8028DD48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0xC2CC0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0014($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8028DE14
	nop
	lw      $a0, 0x0028($sp)
	la.u    $a1, _camera_bss+0x178
	la.l    $a1, _camera_bss+0x178
	addiu   $t7, $sp, 0x0024
	sw      $t7, 0x0010($sp)
	addiu   $a1, $a1, 0x0024
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0028($sp)
	lh      $t8, 0x0024($sp)
	la.u    $a1, _camera_bss+0x178
	la.l    $a1, _camera_bss+0x178
	addiu   $a1, $a1, 0x0024
	li      $a2, 0x43960000
	lh      $a3, 0x0026($sp)
	addiu   $a0, $a0, 0x0004
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	li      $at, 0xC4480000
	mtc1    $at, $f8
	la.u    $t9, _camera_bss+0x178
	la.l    $t9, _camera_bss+0x178
	swc1    $f8, 0x0028($t9)
	la.u    $t0, _camera_bss+0x178
	la.l    $t0, _camera_bss+0x178
	lwc1    $f10, 0x0028($t0)
	lw      $t1, 0x0028($sp)
	swc1    $f10, 0x0014($t1)
	la.u    $t2, _camera_bss+0x178
	la.l    $t2, _camera_bss+0x178
	lwc1    $f16, 0x0028($t2)
	swc1    $f16, 0x0010($t2)
	lui     $t3, %hi(_camera_bss+0x32A)
	lh      $t3, %lo(_camera_bss+0x32A)($t3)
	li      $at, -0x0002
	and     $t4, $t3, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t4, %lo(_camera_bss+0x32A)($at)
.L8028DE14:
	b       .L8028DE1C
	nop
.L8028DE1C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void camera_8028DE2C(struct camera *cam) */
.globl camera_8028DE2C
camera_8028DE2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028DCA4
	li      $a1, 0x44C00000
	b       .L8028DE4C
	nop
.L8028DE4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DE5C(struct camera *cam) */
.globl camera_8028DE5C
camera_8028DE5C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x45133000
	li.l    $a1, 0x45133000
	jal     camera_8028DCA4
	lw      $a0, 0x0018($sp)
	b       .L8028DE80
	nop
.L8028DE80:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DE90(struct camera *cam) */
.globl camera_8028DE90
camera_8028DE90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x44E66000
	li.l    $a1, 0x44E66000
	jal     camera_8028DCA4
	lw      $a0, 0x0018($sp)
	b       .L8028DEB4
	nop
.L8028DEB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DEC4(struct camera *cam) */
.globl camera_8028DEC4
camera_8028DEC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x44E66000
	li.l    $a1, 0x44E66000
	jal     camera_8028DCA4
	lw      $a0, 0x0018($sp)
	b       .L8028DEE8
	nop
.L8028DEE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DEF8(struct camera *cam) */
.globl camera_8028DEF8
camera_8028DEF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028FE58
	li      $a0, 0x00A4
	b       .L8028DF14
	nop
.L8028DF14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DF24(struct camera *cam) */
.globl camera_8028DF24
camera_8028DF24:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x1000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0004
	jal     camera_80286088
	li      $a2, 0x005A
	b       .L8028DF5C
	nop
.L8028DF5C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DF6C(struct camera *cam) */
.globl camera_8028DF6C
camera_8028DF6C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x1000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0002
	jal     camera_80286088
	li      $a2, 0x005A
	b       .L8028DFA4
	nop
.L8028DFA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028DFB4(struct camera *cam) */
.globl camera_8028DFB4
camera_8028DFB4:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss+0x252)
	lh      $t6, %lo(_camera_bss+0x252)($t6)
	slti    $at, $t6, 0x2AAA
	beqz    $at, .L8028DFD8
	nop
	li      $t7, 0x2AAA
	lui     $at, %hi(_camera_bss+0x252)
	sh      $t7, %lo(_camera_bss+0x252)($at)
.L8028DFD8:
	b       .L8028DFE0
	nop
.L8028DFE0:
	jr      $ra
	nop

/* void camera_8028DFE8(struct camera *cam) */
.globl camera_8028DFE8
camera_8028DFE8:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss+0x252)
	lh      $t6, %lo(_camera_bss+0x252)($t6)
	slti    $at, $t6, 0x3AAB
	bnez    $at, .L8028E00C
	nop
	li      $t7, 0x3AAA
	lui     $at, %hi(_camera_bss+0x252)
	sh      $t7, %lo(_camera_bss+0x252)($at)
.L8028E00C:
	b       .L8028E014
	nop
.L8028E014:
	jr      $ra
	nop

/* void camera_8028E01C(struct camera *cam) */
.globl camera_8028E01C
camera_8028E01C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x1000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0001
	jal     camera_80286088
	li      $a2, 0x005A
	b       .L8028E054
	nop
.L8028E054:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E064(struct camera *cam) */
.globl camera_8028E064
camera_8028E064:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x005A
	b       .L8028E088
	nop
.L8028E088:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E098(struct camera *cam) */
.globl camera_8028E098
camera_8028E098:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x192C
	lw      $t7, 0x0000($t6)
	beq     $t7, $at, .L8028E0D4
	nop
	li      $at, 0x192B
	beq     $t7, $at, .L8028E0D4
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028C13C
	li      $a1, 0x00B5
.L8028E0D4:
	b       .L8028E0DC
	nop
.L8028E0DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E0EC(struct camera *cam) */
.globl camera_8028E0EC
camera_8028E0EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $t6, camera_8032DF6C
	la.l    $t6, camera_8032DF6C
	lui     $at, %hi(camera_80337380)
	lwc1    $f4, %lo(camera_80337380)($at)
	lwc1    $f6, 0x0000($t6)
	li      $at, 0x43BD0000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	lui     $at, %hi(camera_80337384)
	lwc1    $f4, %lo(camera_80337384)($at)
	lwc1    $f6, 0x0008($t6)
	lwc1    $f16, 0x0004($t6)
	mfc1    $a1, $f8
	sub.s   $f8, $f4, $f6
	la.u    $a0, _camera_bss+0x2B0
	la.l    $a0, _camera_bss+0x2B0
	sub.s   $f18, $f10, $f16
	mfc1    $a3, $f8
	mfc1    $a2, $f18
	jal     vecf_set
	nop
	b       .L8028E154
	nop
.L8028E154:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E164(struct camera *cam) */
.globl camera_8028E164
camera_8028E164:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0010($t6)
	lwc1    $f14, 0x0014($t6)
	jal     map_80381900
	lw      $a2, 0x0018($t6)
	swc1    $f0, 0x0018($sp)
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f4, %lo(_camera_bss+0xCC)($at)
	lui     $at, %hi(camera_80337388)
	lwc1    $f6, %lo(camera_80337388)($at)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8028E1F8
	nop
	lui     $at, %hi(camera_8033738C)
	lwc1    $f10, %lo(camera_8033738C)($at)
	lwc1    $f8, 0x0018($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8028E1F8
	nop
	lui     $t7, %hi(_camera_bss+0x248)
	lh      $t7, %lo(_camera_bss+0x248)($t7)
	bnez    $t7, .L8028E1F8
	nop
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x44B22000
	li.u    $a3, 0x44BFA000
	li.l    $a3, 0x44BFA000
	li.l    $a2, 0x44B22000
	li      $a1, 0xC3630000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
.L8028E1F8:
	b       .L8028E200
	nop
.L8028E200:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_8028E210(struct camera *cam) */
.globl camera_8028E210
camera_8028E210:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0010($t6)
	lwc1    $f14, 0x0014($t6)
	jal     map_80381900
	lw      $a2, 0x0018($t6)
	swc1    $f0, 0x0018($sp)
	li      $at, 0xC2DC0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8028E280
	nop
	lui     $t7, %hi(_camera_bss+0x248)
	lh      $t7, %lo(_camera_bss+0x248)($t7)
	bnez    $t7, .L8028E280
	nop
	lw      $a0, 0x0020($sp)
	li.u    $a3, 0xC4AEC000
	li.l    $a3, 0xC4AEC000
	li      $a1, 0xC4750000
	li      $a2, 0x43790000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
.L8028E280:
	b       .L8028E288
	nop
.L8028E288:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_8028E298(struct camera *cam) */
.globl camera_8028E298
camera_8028E298:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000D
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, .L8028E2E8
	nop
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	li      $at, -0x0002
	and     $t9, $t8, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	lw      $t0, 0x0018($sp)
	jal     camera_8028D888
	lbu     $a0, 0x0000($t0)
	lw      $t2, 0x0018($sp)
	li      $t1, 0x000D
	sb      $t1, 0x0000($t2)
.L8028E2E8:
	b       .L8028E2F0
	nop
.L8028E2F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E300(struct camera *cam) */
.globl camera_8028E300
camera_8028E300:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0011
	jal     camera_80286088
	li      $a2, 0x0014
	b       .L8028E324
	nop
.L8028E324:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8028E334:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0011
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, .L8028E36C
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0004
	jal     camera_80286088
	li      $a2, 0x001E
	b       .L8028E374
	nop
.L8028E36C:
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
.L8028E374:
	b       .L8028E37C
	nop
.L8028E37C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E38C(struct camera *cam) */
.globl camera_8028E38C
camera_8028E38C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	b       .L8028E3A8
	nop
.L8028E3A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E3B8(struct camera *cam) */
.globl camera_8028E3B8
camera_8028E3B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028E38C
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0002
	sb      $t6, 0x0064($t7)
	b       .L8028E3E0
	nop
.L8028E3E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E3F0(struct camera *cam) */
.globl camera_8028E3F0
camera_8028E3F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028E298
	lw      $a0, 0x0018($sp)
	b       .L8028E40C
	nop
.L8028E40C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E41C(struct camera *cam) */
.globl camera_8028E41C
camera_8028E41C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, campos_bbh_library
	la.l    $a1, campos_bbh_library
	jal     camera_8028D79C
	lw      $a0, 0x0018($sp)
	b       .L8028E440
	nop
.L8028E440:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E450(struct camera *cam) */
.globl camera_8028E450
camera_8028E450:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	b       .L8028E46C
	nop
.L8028E46C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E47C(struct camera *cam) */
.globl camera_8028E47C
camera_8028E47C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	jal     camera_8028D658
	lw      $a0, 0x0028($sp)
	addiu   $a0, $sp, 0x001C
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x43960000
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x0024
	addiu   $a2, $sp, 0x001C
	addiu   $a1, $t6, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t6, 0x0010
	lui     $at, %hi(camera_80337390)
	lwc1    $f4, %lo(camera_80337390)($at)
	la.u    $t7, _camera_bss+0x178
	la.l    $t7, _camera_bss+0x178
	swc1    $f4, 0x0028($t7)
	lw      $a0, 0x0028($sp)
	la.u    $a1, _camera_bss+0x178
	la.l    $a1, _camera_bss+0x178
	addiu   $a1, $a1, 0x0024
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	li      $at, -0x0002
	and     $t9, $t8, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	b       .L8028E514
	nop
.L8028E514:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void camera_8028E524(struct camera *cam) */
.globl camera_8028E524
camera_8028E524:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x03BC
	li      $a2, 0x01B8
	jal     camera_8028D44C
	li      $a3, 0x07CA
	b       .L8028E54C
	nop
.L8028E54C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E55C(struct camera *cam) */
.globl camera_8028E55C
camera_8028E55C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0064($t7)
	jal     camera_8028E524
	lw      $a0, 0x0018($sp)
	b       .L8028E584
	nop
.L8028E584:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E594(struct camera *cam) */
.globl camera_8028E594
camera_8028E594:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0A1F
	li      $a2, 0x0190
	jal     camera_8028D44C
	li      $a3, 0x0504
	b       .L8028E5BC
	nop
.L8028E5BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E5CC(struct camera *cam) */
.globl camera_8028E5CC
camera_8028E5CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0DC9
	li      $a2, 0x0154
	jal     camera_8028D44C
	li      $a3, -0x0568
	b       .L8028E5F4
	nop
.L8028E5F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E604(struct camera *cam) */
.globl camera_8028E604
camera_8028E604:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x01F4
	li      $a2, 0x02E4
	jal     camera_8028D44C
	li      $a3, -0x051A
	b       .L8028E62C
	nop
.L8028E62C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E63C(struct camera *cam) */
.globl camera_8028E63C
camera_8028E63C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x087C
	li      $a2, 0x00C8
	jal     camera_8028D44C
	li      $a3, 0x02A3
	b       .L8028E664
	nop
.L8028E664:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E674(struct camera *cam) */
.globl camera_8028E674
camera_8028E674:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x087C
	li      $a2, 0x00C8
	jal     camera_8028D44C
	li      $a3, 0x02A3
	li      $at, 0x0001
	bne     $v0, $at, .L8028E6AC
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
.L8028E6AC:
	b       .L8028E6B4
	nop
.L8028E6B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E6C4(struct camera *cam) */
.globl camera_8028E6C4
camera_8028E6C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0606
	li      $a2, 0x0140
	jal     camera_8028D44C
	li      $a3, -0x0133
	li      $at, 0x0001
	bne     $v0, $at, .L8028E6FC
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
.L8028E6FC:
	b       .L8028E704
	nop
.L8028E704:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E714(struct camera *cam) */
.globl camera_8028E714
camera_8028E714:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0064($t7)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0606
	li      $a2, 0x0140
	jal     camera_8028D44C
	li      $a3, -0x0133
	b       .L8028E748
	nop
.L8028E748:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E758(struct camera *cam) */
.globl camera_8028E758
camera_8028E758:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0765
	li      $a2, 0x0140
	jal     camera_8028D44C
	li      $a3, 0x0917
	b       .L8028E780
	nop
.L8028E780:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E790(struct camera *cam) */
.globl camera_8028E790
camera_8028E790:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x055B
	li      $a2, 0x0168
	jal     camera_8028D44C
	li      $a3, -0x0516
	b       .L8028E7B8
	nop
.L8028E7B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E7C8(struct camera *cam) */
.globl camera_8028E7C8
camera_8028E7C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x055B
	li      $a2, 0x0168
	jal     camera_8028D44C
	li      $a3, -0x0516
	li      $at, 0x0001
	bne     $v0, $at, .L8028E800
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
.L8028E800:
	b       .L8028E808
	nop
.L8028E808:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E818(struct camera *cam) */
.globl camera_8028E818
camera_8028E818:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0843
	li      $a2, 0x0104
	jal     camera_8028D44C
	li      $a3, -0x0304
	li      $at, 0x0001
	bne     $v0, $at, .L8028E850
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
.L8028E850:
	b       .L8028E858
	nop
.L8028E858:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E868(struct camera *cam) */
.globl camera_8028E868
camera_8028E868:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0064($t7)
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	b       .L8028E890
	nop
.L8028E890:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E8A0(struct camera *cam) */
.globl camera_8028E8A0
camera_8028E8A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	b       .L8028E8BC
	nop
.L8028E8BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E8CC(struct camera *cam) */
.globl camera_8028E8CC
camera_8028E8CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000D
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, .L8028E918
	nop
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	lui     $at, %hi(camera_80337394)
	lwc1    $f4, %lo(camera_80337394)($at)
	lw      $t8, 0x0018($sp)
	swc1    $f4, 0x0014($t8)
	lui     $at, %hi(camera_80337398)
	lwc1    $f6, %lo(camera_80337398)($at)
	la.u    $t9, _camera_bss+0x178
	la.l    $t9, _camera_bss+0x178
	swc1    $f6, 0x0028($t9)
.L8028E918:
	b       .L8028E920
	nop
.L8028E920:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E930(struct camera *cam) */
.globl camera_8028E930
camera_8028E930:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0064($t7)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x0B74
	li      $a2, 0x0128
	jal     camera_8028D44C
	li      $a3, 0x114D
	b       .L8028E964
	nop
.L8028E964:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E974(struct camera *cam) */
.globl camera_8028E974
camera_8028E974:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028D658
	lw      $a0, 0x0018($sp)
	b       .L8028E990
	nop
.L8028E990:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E9A0(struct camera *cam) */
.globl camera_8028E9A0
camera_8028E9A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0DA5
	li      $a2, 0x01B8
	jal     camera_8028D44C
	li      $a3, 0x0269
	b       .L8028E9C8
	nop
.L8028E9C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028E9D8(struct camera *cam) */
.globl camera_8028E9D8
camera_8028E9D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0DA5
	li      $a2, 0x01B8
	jal     camera_8028D44C
	li      $a3, 0x0269
	li      $at, 0x0001
	bne     $v0, $at, .L8028EA10
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
.L8028EA10:
	b       .L8028EA18
	nop
.L8028EA18:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028EA28(struct camera *cam) */
.globl camera_8028EA28
camera_8028EA28:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0DAE
	li      $a2, 0x01B8
	jal     camera_8028D44C
	li      $a3, 0x04C1
	b       .L8028EA50
	nop
.L8028EA50:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028EA60(struct camera *cam) */
.globl camera_8028EA60
camera_8028EA60:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0DAE
	li      $a2, 0x01B8
	jal     camera_8028D44C
	li      $a3, 0x04C1
	li      $at, 0x0001
	bne     $v0, $at, .L8028EA98
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
.L8028EA98:
	b       .L8028EAA0
	nop
.L8028EAA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028EAB0(struct camera *cam) */
.globl camera_8028EAB0
camera_8028EAB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x029E
	li      $a2, 0x01CC
	jal     camera_8028D44C
	li      $a3, 0x0174
	b       .L8028EAD8
	nop
.L8028EAD8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028EAE8(struct camera *cam) */
.globl camera_8028EAE8
camera_8028EAE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x029E
	li      $a2, 0x01CC
	jal     camera_8028D44C
	li      $a3, 0x0174
	li      $at, 0x0001
	bne     $v0, $at, .L8028EB20
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
.L8028EB20:
	b       .L8028EB28
	nop
.L8028EB28:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028EB38(struct camera *cam) */
.globl camera_8028EB38
camera_8028EB38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0083
	li      $a2, 0x017C
	jal     camera_8028D44C
	li      $a3, -0x0107
	li      $at, 0x0001
	bne     $v0, $at, .L8028EB70
	nop
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
.L8028EB70:
	b       .L8028EB78
	nop
.L8028EB78:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028EB88(struct camera *cam) */
.globl camera_8028EB88
camera_8028EB88:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x00D2
	li      $a2, 0x01A4
	jal     camera_8028D44C
	li      $a3, 0x0C25
	b       .L8028EBB0
	nop
.L8028EBB0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028EBC0(struct camera *cam) */
.globl camera_8028EBC0
camera_8028EBC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0001
	sb      $t6, 0x0064($t7)
	lw      $a0, 0x0018($sp)
	li      $a1, -0x00CC
	li      $a2, 0x0327
	jal     camera_8028D44C
	li      $a3, 0x00CC
	b       .L8028EBF4
	nop
.L8028EBF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8028EC04(struct camera *cam) */
.globl camera_8028EC04
camera_8028EC04:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0010
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	b       .L8028EC24
	nop
.L8028EC24:
	jr      $ra
	nop

/* void camera_8028EC2C(struct camera *cam) */
.globl camera_8028EC2C
camera_8028EC2C:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	li      $at, -0x0011
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	b       .L8028EC50
	nop
.L8028EC50:
	jr      $ra
	nop

camera_8028EC58:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0024($sp)
	lui     $s0, %hi(_camera_bss+0xD0)
	lh      $s0, %lo(_camera_bss+0xD0)($s0)
	li      $at, 0x000B
	beq     $s0, $at, .L8028ECA0
	nop
	li      $at, 0x0066
	beq     $s0, $at, .L8028ECC4
	nop
	li      $at, 0x0079
	beq     $s0, $at, .L8028ECE8
	nop
	b       .L8028ED0C
	nop
.L8028ECA0:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0004
	jal     camera_80286088
	li      $a2, 0x005A
	lw      $t6, 0x0024($sp)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0024($sp)
	b       .L8028ED0C
	nop
.L8028ECC4:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x005A
	lw      $t8, 0x0024($sp)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0024($sp)
	b       .L8028ED0C
	nop
.L8028ECE8:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0004
	jal     camera_80286088
	li      $a2, 0x005A
	lw      $t0, 0x0024($sp)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0024($sp)
	b       .L8028ED0C
	nop
.L8028ED0C:
	b       .L8028ED1C
	lw      $v0, 0x0024($sp)
	b       .L8028ED1C
	nop
.L8028ED1C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028ED30:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
	jal     camera_8028EC58
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	bnez    $t6, .L8028ED78
	nop
	lbu     $t7, 0x0027($sp)
	beqz    $t7, .L8028ED78
	nop
	lw      $a0, 0x0020($sp)
	lbu     $a1, 0x0027($sp)
	jal     camera_80286088
	li      $a2, 0x005A
.L8028ED78:
	b       .L8028ED88
	lw      $v0, 0x001C($sp)
	b       .L8028ED88
	nop
.L8028ED88:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028ED98:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(_camera_bss+0xD0)
	lh      $s0, %lo(_camera_bss+0xD0)($s0)
	li      $at, 0x000B
	beq     $s0, $at, .L8028EDE8
	nop
	li      $at, 0x0066
	beq     $s0, $at, .L8028EE14
	nop
	li      $at, 0x0069
	beq     $s0, $at, .L8028EE6C
	nop
	li      $at, 0x0079
	beq     $s0, $at, .L8028EE40
	nop
	b       .L8028EE84
	nop
.L8028EDE8:
	lw      $t6, 0x0028($sp)
	li      $at, 0x0004
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, .L8028EE0C
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x005A
.L8028EE0C:
	b       .L8028EE94
	nop
.L8028EE14:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0004
	lbu     $t9, 0x0000($t8)
	beq     $t9, $at, .L8028EE38
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x005A
.L8028EE38:
	b       .L8028EE94
	nop
.L8028EE40:
	lw      $t0, 0x0028($sp)
	li      $at, 0x0004
	lbu     $t1, 0x0000($t0)
	beq     $t1, $at, .L8028EE64
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x005A
.L8028EE64:
	b       .L8028EE94
	nop
.L8028EE6C:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x000E
	jal     camera_80286088
	li      $a2, 0x005A
	b       .L8028EE94
	nop
.L8028EE84:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0001
	jal     camera_80286088
	li      $a2, 0x005A
.L8028EE94:
	b       .L8028EE9C
	nop
.L8028EE9C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8028EEB0:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0068($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	sh      $t6, 0x0066($sp)
	lui     $t7, %hi(scene)
	lw      $t7, %lo(scene)($t7)
	lb      $t8, 0x0000($t7)
	sb      $t8, 0x0063($sp)
	sw      $0, 0x0040($sp)
	lw      $t9, 0x0068($sp)
	lbu     $t0, 0x0000($t9)
	sb      $t0, 0x0027($sp)
	lw      $t1, 0x0068($sp)
	li      $at, 0x0006
	lbu     $t2, 0x0000($t1)
	bne     $t2, $at, .L8028EF10
	nop
	lui     $t3, %hi(_camera_bss+0x26A)
	lh      $t3, %lo(_camera_bss+0x26A)($t3)
	lw      $t4, 0x0068($sp)
	sb      $t3, 0x0000($t4)
.L8028EF10:
	jal     camera_8028D92C
	lw      $a0, 0x0068($sp)
	lh      $t5, 0x0066($sp)
	slti    $at, $t5, 0x0029
	bnez    $at, .L8028EF30
	nop
	li      $t6, 0x0028
	sh      $t6, 0x0066($sp)
.L8028EF30:
	lh      $t7, 0x0066($sp)
	lui     $t9, %hi(camctl_data)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camctl_data)($t9)
	beqz    $t9, .L8028F1F8
	nop
	sw      $0, 0x005C($sp)
	lh      $t0, 0x0066($sp)
	lw      $t3, 0x005C($sp)
	lui     $t2, %hi(camctl_data)
	sll     $t1, $t0, 2
	addu    $t2, $t2, $t1
	lw      $t2, %lo(camctl_data)($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addu    $t5, $t2, $t4
	lw      $t6, 0x0004($t5)
	beqz    $t6, .L8028F1F8
	nop
.L8028EF84:
	lh      $t7, 0x0066($sp)
	lw      $t0, 0x005C($sp)
	lui     $t9, %hi(camctl_data)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camctl_data)($t9)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $t3, $t9, $t1
	lb      $t2, 0x0000($t3)
	lb      $t4, 0x0063($sp)
	bne     $t2, $t4, .L8028F128
	nop
	lh      $t5, 0x0066($sp)
	lw      $t8, 0x005C($sp)
	lui     $t7, %hi(camctl_data)
	sll     $t6, $t5, 2
	addu    $t7, $t7, $t6
	lw      $t7, %lo(camctl_data)($t7)
	sll     $t0, $t8, 2
	subu    $t0, $t0, $t8
	sll     $t0, $t0, 3
	addu    $t9, $t7, $t0
	lh      $t1, 0x0008($t9)
	lh      $t3, 0x000A($t9)
	lh      $t2, 0x000C($t9)
	mtc1    $t1, $f4
	mtc1    $t3, $f6
	mtc1    $t2, $f8
	cvt.s.w $f4, $f4
	addiu   $a0, $sp, 0x0050
	cvt.s.w $f6, $f6
	mfc1    $a1, $f4
	cvt.s.w $f8, $f8
	mfc1    $a2, $f6
	mfc1    $a3, $f8
	jal     vecf_set
	nop
	lh      $t4, 0x0066($sp)
	lw      $t8, 0x005C($sp)
	lui     $t6, %hi(camctl_data)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(camctl_data)($t6)
	sll     $t7, $t8, 2
	subu    $t7, $t7, $t8
	sll     $t7, $t7, 3
	addu    $t0, $t6, $t7
	lh      $t1, 0x000E($t0)
	lh      $t3, 0x0010($t0)
	lh      $t9, 0x0012($t0)
	mtc1    $t1, $f10
	mtc1    $t3, $f16
	mtc1    $t9, $f18
	cvt.s.w $f10, $f10
	addiu   $a0, $sp, 0x0044
	cvt.s.w $f16, $f16
	mfc1    $a1, $f10
	cvt.s.w $f18, $f18
	mfc1    $a2, $f16
	mfc1    $a3, $f18
	jal     vecf_set
	nop
	lh      $t2, 0x0066($sp)
	lw      $t8, 0x005C($sp)
	lui     $t5, %hi(camctl_data)
	sll     $t4, $t2, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(camctl_data)($t5)
	sll     $t6, $t8, 2
	lui     $a0, %hi(camera_8032DF60)
	subu    $t6, $t6, $t8
	lw      $a0, %lo(camera_8032DF60)($a0)
	sll     $t6, $t6, 3
	addu    $t7, $t5, $t6
	lh      $a3, 0x0014($t7)
	addiu   $a1, $sp, 0x0050
	addiu   $a2, $sp, 0x0044
	jal     camera_8028A8E8
	addiu   $a0, $a0, 0x0004
	li      $at, 0x0001
	bne     $v0, $at, .L8028F128
	nop
	lui     $t1, %hi(_camera_bss+0x32A)
	lh      $t1, %lo(_camera_bss+0x32A)($t1)
	andi    $t3, $t1, 0x1000
	bnez    $t3, .L8028F128
	nop
	lh      $t0, 0x0066($sp)
	lw      $t4, 0x005C($sp)
	lui     $t2, %hi(camctl_data)
	sll     $t9, $t0, 2
	addu    $t2, $t2, $t9
	lw      $t2, %lo(camctl_data)($t2)
	sll     $t8, $t4, 2
	subu    $t8, $t8, $t4
	sll     $t8, $t8, 3
	addu    $t5, $t2, $t8
	lw      $t9, 0x0004($t5)
	lw      $a0, 0x0068($sp)
	jalr    $t9
	nop
	li      $t6, 0x0001
	sw      $t6, 0x0040($sp)
.L8028F128:
	lh      $t7, 0x0066($sp)
	lw      $t0, 0x005C($sp)
	lui     $t3, %hi(camctl_data)
	sll     $t1, $t7, 2
	addu    $t3, $t3, $t1
	lw      $t3, %lo(camctl_data)($t3)
	sll     $t4, $t0, 2
	subu    $t4, $t4, $t0
	sll     $t4, $t4, 3
	addu    $t2, $t3, $t4
	lb      $t8, 0x0000($t2)
	li      $at, -0x0001
	bne     $t8, $at, .L8028F1B8
	nop
	lw      $t5, 0x0040($sp)
	bnez    $t5, .L8028F1B8
	nop
	lui     $t9, %hi(_camera_bss+0x32A)
	lh      $t9, %lo(_camera_bss+0x32A)($t9)
	andi    $t6, $t9, 0x1000
	bnez    $t6, .L8028F1B8
	nop
	lh      $t7, 0x0066($sp)
	lw      $t3, 0x005C($sp)
	lui     $t0, %hi(camctl_data)
	sll     $t1, $t7, 2
	addu    $t0, $t0, $t1
	lw      $t0, %lo(camctl_data)($t0)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addu    $t2, $t0, $t4
	lw      $t9, 0x0004($t2)
	lw      $a0, 0x0068($sp)
	jalr    $t9
	nop
.L8028F1B8:
	lw      $t8, 0x005C($sp)
	addiu   $t5, $t8, 0x0001
	sw      $t5, 0x005C($sp)
	lh      $t6, 0x0066($sp)
	lw      $t3, 0x005C($sp)
	lui     $t1, %hi(camctl_data)
	sll     $t7, $t6, 2
	addu    $t1, $t1, $t7
	lw      $t1, %lo(camctl_data)($t1)
	sll     $t0, $t3, 2
	subu    $t0, $t0, $t3
	sll     $t0, $t0, 3
	addu    $t4, $t1, $t0
	lw      $t2, 0x0004($t4)
	bnez    $t2, .L8028EF84
	nop
.L8028F1F8:
	lui     $t9, %hi(_camera_bss+0x32A)
	lh      $t9, %lo(_camera_bss+0x32A)($t9)
	andi    $t8, $t9, 0x1000
	bnez    $t8, .L8028F5FC
	nop
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	slti    $at, $s0, 0x00B3
	bnez    $at, .L8028F270
	nop
	li      $at, 0x00D1
	beq     $s0, $at, .L8028F414
	nop
	li      $at, 0x00D2
	beq     $s0, $at, .L8028F41C
	nop
	li      $at, 0x00E1
	beq     $s0, $at, .L8028F42C
	nop
	li      $at, 0x0171
	beq     $s0, $at, .L8028F528
	nop
	li      $at, 0x0172
	beq     $s0, $at, .L8028F53C
	nop
	li      $at, 0x0181
	beq     $s0, $at, .L8028F2C0
	nop
	b       .L8028F5FC
	nop
.L8028F270:
	li      $at, 0x0041
	beq     $s0, $at, .L8028F388
	nop
	li      $at, 0x0081
	beq     $s0, $at, .L8028F400
	nop
	li      $at, 0x0082
	beq     $s0, $at, .L8028F3EC
	nop
	li      $at, 0x0201 # 0x0091
	beq     $s0, $at, .L8028F440
	nop
	li      $at, 0x00B1
	beq     $s0, $at, .L8028F4B8
	nop
	li      $at, 0x00B2
	beq     $s0, $at, .L8028F4F0
	nop
	b       .L8028F5FC
	nop
.L8028F2C0:
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	li      $at, 0x04A8
	lw      $t6, 0x0000($t5)
	bne     $t6, $at, .L8028F2F0
	nop
	lw      $a0, 0x0068($sp)
	li      $a1, 0x0009
	jal     camera_80286088
	li      $a2, 0x003C
	b       .L8028F380
	nop
.L8028F2F0:
	lui     $s0, %hi(_camera_bss+0xD0)
	lh      $s0, %lo(_camera_bss+0xD0)($s0)
	li      $at, 0x0065
	beq     $s0, $at, .L8028F33C
	nop
	li      $at, 0x0069
	beq     $s0, $at, .L8028F318
	nop
	b       .L8028F374
	nop
.L8028F318:
	lw      $a0, 0x0068($sp)
	li      $a1, 0x000E
	jal     camera_80286088
	li      $a2, 0x005A
	li      $t7, 0x4000
	lui     $at, %hi(_camera_bss+0x256)
	sh      $t7, %lo(_camera_bss+0x256)($at)
	b       .L8028F380
	nop
.L8028F33C:
	lui     $t3, %hi(level_index)
	lh      $t3, %lo(level_index)($t3)
	li      $at, 0x0001
	bne     $t3, $at, .L8028F360
	nop
	jal     camera_8028D5FC
	lw      $a0, 0x0068($sp)
	b       .L8028F36C
	nop
.L8028F360:
	lw      $a0, 0x0068($sp)
	jal     camera_8028D698
	li      $a1, 0x003C
.L8028F36C:
	b       .L8028F380
	nop
.L8028F374:
	lw      $a0, 0x0068($sp)
	jal     camera_8028D698
	li      $a1, 0x003C
.L8028F380:
	b       .L8028F5FC
	nop
.L8028F388:
	la.u    $a0, camera_8032DF6C
	li.u    $a3, 0x45425000
	li.l    $a3, 0x45425000
	la.l    $a0, camera_8032DF6C
	li      $a1, 0x43520000
	jal     camera_80289198
	li      $a2, 0x43D20000
	li      $at, 0x0001
	bne     $v0, $at, .L8028F3E4
	nop
	lui     $t1, %hi(camera_8032DF60)
	lw      $t1, %lo(camera_8032DF60)($t1)
	li      $at, 0x44E10000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8028F3E4
	nop
	lw      $a0, 0x0068($sp)
	li      $a1, 0x0004
	jal     camera_80286088
	li      $a2, 0x001E
.L8028F3E4:
	b       .L8028F5FC
	nop
.L8028F3EC:
	lw      $a0, 0x0068($sp)
	jal     camera_8028ED30
	li      $a1, 0x0002
	b       .L8028F5FC
	nop
.L8028F400:
	lw      $a0, 0x0068($sp)
	jal     camera_8028ED30
	li      $a1, 0x0001
	b       .L8028F5FC
	nop
.L8028F414:
	b       .L8028F5FC
	nop
.L8028F41C:
	jal     camera_8028ED98
	lw      $a0, 0x0068($sp)
	b       .L8028F5FC
	nop
.L8028F42C:
	lw      $a0, 0x0068($sp)
	jal     camera_8028ED30
	li      $a1, 0x0002
	b       .L8028F5FC
	nop
.L8028F440:
	lw      $a0, 0x0068($sp)
	jal     camera_8028ED30
	move    $a1, $0
	bnez    $v0, .L8028F4B0
	nop
	lui     $t0, %hi(_camera_bss+0xD0)
	lh      $t0, %lo(_camera_bss+0xD0)($t0)
	li      $at, 0x0065
	bne     $t0, $at, .L8028F478
	nop
	jal     camera_8028D5FC
	lw      $a0, 0x0068($sp)
	b       .L8028F4B0
	nop
.L8028F478:
	lw      $t4, 0x0068($sp)
	li      $at, 0x0004
	lbu     $t2, 0x0000($t4)
	bne     $t2, $at, .L8028F4A4
	nop
	lw      $a0, 0x0068($sp)
	li      $a1, 0x0001
	jal     camera_80286088
	li      $a2, 0x003C
	b       .L8028F4B0
	nop
.L8028F4A4:
	lw      $a0, 0x0068($sp)
	jal     camera_8028D698
	li      $a1, 0x003C
.L8028F4B0:
	b       .L8028F5FC
	nop
.L8028F4B8:
	lui     $t9, %hi(_camera_bss+0xD0)
	lh      $t9, %lo(_camera_bss+0xD0)($t9)
	li      $at, 0x001B
	bne     $t9, $at, .L8028F4E8
	nop
	b       .L8028F4D4
	nop
.L8028F4D4:
	lw      $t5, 0x0068($sp)
	li      $t8, 0x0001
	sb      $t8, 0x0001($t5)
	b       .L8028F4E8
	nop
.L8028F4E8:
	b       .L8028F5FC
	nop
.L8028F4F0:
	lui     $t6, %hi(_camera_bss+0xD0)
	lh      $t6, %lo(_camera_bss+0xD0)($t6)
	li      $at, 0x001C
	bne     $t6, $at, .L8028F520
	nop
	b       .L8028F50C
	nop
.L8028F50C:
	lw      $t3, 0x0068($sp)
	li      $t7, 0x0004
	sb      $t7, 0x0001($t3)
	b       .L8028F520
	nop
.L8028F520:
	b       .L8028F5FC
	nop
.L8028F528:
	li      $t1, 0x0002
	lui     $at, %hi(_camera_bss+0x1B5)
	sb      $t1, %lo(_camera_bss+0x1B5)($at)
	b       .L8028F5FC
	nop
.L8028F53C:
	lw      $t0, 0x0068($sp)
	li      $at, 0x0003
	lbu     $t4, 0x0000($t0)
	beq     $t4, $at, .L8028F5E8
	nop
	li      $at, 0x0008
	beq     $t4, $at, .L8028F5E8
	nop
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	li      $at, 0x00100000
	lw      $t9, 0x0000($t2)
	and     $t8, $t9, $at
	bnez    $t8, .L8028F59C
	nop
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f8, %lo(_camera_bss+0xCC)($at)
	li      $at, 0x44480000
	mtc1    $at, $f10
	nop
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8028F5B4
	nop
.L8028F59C:
	lw      $a0, 0x0068($sp)
	li      $a1, 0x000E
	jal     camera_80286088
	li      $a2, 0x003C
	b       .L8028F5E8
	nop
.L8028F5B4:
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	li      $at, 0x44480000
	mtc1    $at, $f18
	lwc1    $f16, 0x0008($t5)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8028F5E8
	nop
	lw      $a0, 0x0068($sp)
	li      $a1, 0x0010
	jal     camera_80286088
	li      $a2, 0x003C
.L8028F5E8:
	li      $t6, 0x0010
	lui     $at, %hi(_camera_bss+0x1B5)
	sb      $t6, %lo(_camera_bss+0x1B5)($at)
	b       .L8028F5FC
	nop
.L8028F5FC:
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	li      $at, -0x1001
	and     $t3, $t7, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t3, %lo(_camera_bss+0x32A)($at)
	lbu     $t1, 0x0027($sp)
	li      $at, 0x0006
	bne     $t1, $at, .L8028F640
	nop
	lw      $t0, 0x0068($sp)
	lui     $at, %hi(_camera_bss+0x26A)
	lbu     $t4, 0x0000($t0)
	sh      $t4, %lo(_camera_bss+0x26A)($at)
	lbu     $t2, 0x0027($sp)
	lw      $t9, 0x0068($sp)
	sb      $t2, 0x0000($t9)
.L8028F640:
	lw      $t8, 0x0068($sp)
	lbu     $t5, 0x0000($t8)
	sh      $t5, 0x0064($sp)
	b       .L8028F65C
	lh      $v0, 0x0064($sp)
	b       .L8028F65C
	nop
.L8028F65C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

camera_8028F670:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	li      $a3, 0x0000
	move    $a0, $t6
	addiu   $a1, $t6, 0x0004
	addiu   $a2, $t6, 0x0008
	jal     map_80380DE8
	swc1    $f4, 0x0010($sp)
	lw      $t7, 0x0030($sp)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0004($t7)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x0000($t7)
	lw      $a2, 0x0008($t7)
	jal     map_80381900
	add.s   $f14, $f6, $f8
	swc1    $f0, 0x0028($sp)
	lw      $t8, 0x0030($sp)
	li      $at, 0x42480000
	mtc1    $at, $f16
	lwc1    $f10, 0x0004($t8)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x0000($t8)
	lw      $a2, 0x0008($t8)
	jal     map_80381264
	sub.s   $f14, $f10, $f16
	swc1    $f0, 0x002C($sp)
	lui     $at, %hi(camera_8033739C)
	lwc1    $f18, %lo(camera_8033739C)($at)
	lwc1    $f4, 0x0028($sp)
	c.eq.s  $f18, $f4
	nop
	bc1t    .L8028F764
	nop
	lui     $at, %hi(camera_803373A0)
	lwc1    $f6, %lo(camera_803373A0)($at)
	lwc1    $f8, 0x002C($sp)
	c.eq.s  $f6, $f8
	nop
	bc1f    .L8028F764
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x0004($t9)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L8028F764
	nop
	lwc1    $f6, 0x0028($sp)
	lw      $t0, 0x0030($sp)
	swc1    $f6, 0x0004($t0)
.L8028F764:
	lui     $at, %hi(camera_803373A4)
	lwc1    $f8, %lo(camera_803373A4)($at)
	lwc1    $f10, 0x0028($sp)
	c.eq.s  $f8, $f10
	nop
	bc1f    .L8028F7D4
	nop
	lui     $at, %hi(camera_803373A8)
	lwc1    $f16, %lo(camera_803373A8)($at)
	lwc1    $f4, 0x002C($sp)
	c.eq.s  $f16, $f4
	nop
	bc1t    .L8028F7D4
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f18, 0x002C($sp)
	lw      $t1, 0x0030($sp)
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0004($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8028F7D4
	nop
	lwc1    $f16, 0x002C($sp)
	lw      $t2, 0x0030($sp)
	swc1    $f16, 0x0004($t2)
.L8028F7D4:
	lui     $at, %hi(camera_803373AC)
	lwc1    $f4, %lo(camera_803373AC)($at)
	lwc1    $f18, 0x0028($sp)
	c.eq.s  $f4, $f18
	nop
	bc1t    .L8028F8FC
	nop
	lui     $at, %hi(camera_803373B0)
	lwc1    $f6, %lo(camera_803373B0)($at)
	lwc1    $f10, 0x002C($sp)
	c.eq.s  $f6, $f10
	nop
	bc1t    .L8028F8FC
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f8, 0x0028($sp)
	add.s   $f4, $f8, $f16
	swc1    $f4, 0x0028($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f18, 0x002C($sp)
	sub.s   $f10, $f18, $f6
	swc1    $f10, 0x002C($sp)
	lw      $t3, 0x0030($sp)
	lwc1    $f16, 0x0028($sp)
	lwc1    $f8, 0x0004($t3)
	c.le.s  $f8, $f16
	nop
	bc1f    .L8028F870
	nop
	lwc1    $f4, 0x002C($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    .L8028F870
	nop
	lwc1    $f18, 0x0028($sp)
	lw      $t4, 0x0030($sp)
	swc1    $f18, 0x0004($t4)
.L8028F870:
	lw      $t5, 0x0030($sp)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f6, 0x0004($t5)
	c.lt.s  $f10, $f6
	nop
	bc1f    .L8028F8AC
	nop
	lwc1    $f16, 0x002C($sp)
	c.le.s  $f16, $f6
	nop
	bc1f    .L8028F8AC
	nop
	lwc1    $f8, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	swc1    $f8, 0x0004($t6)
.L8028F8AC:
	lw      $t7, 0x0030($sp)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x0004($t7)
	c.le.s  $f4, $f18
	nop
	bc1f    .L8028F8FC
	nop
	lwc1    $f10, 0x002C($sp)
	c.le.s  $f10, $f4
	nop
	bc1f    .L8028F8FC
	nop
	lwc1    $f6, 0x0028($sp)
	lwc1    $f16, 0x002C($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f18
	add.s   $f8, $f6, $f16
	lw      $t8, 0x0030($sp)
	mul.s   $f4, $f8, $f18
	swc1    $f4, 0x0004($t8)
.L8028F8FC:
	b       .L8028F904
	nop
.L8028F904:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8028F914:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0088($sp)
	sw      $a1, 0x008C($sp)
	sw      $a2, 0x0090($sp)
	sw      $a3, 0x0094($sp)
	sw      $0, 0x0028($sp)
	sw      $0, 0x0024($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	addiu   $t6, $sp, 0x002E
	sw      $t6, 0x0010($sp)
	lw      $a1, 0x008C($sp)
	addiu   $a2, $sp, 0x0048
	addiu   $a3, $sp, 0x0030
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0004
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	li      $at, -0x0021
	and     $t8, $t7, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t8, %lo(_camera_bss+0x32A)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0068($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0044($sp)
	li      $at, 0x43160000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x003C($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0038($sp)
	sw      $0, 0x0024($sp)
.L8028F9B0:
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	lw      $t9, 0x008C($sp)
	lwc1    $f6, 0x0044($sp)
	lwc1    $f18, 0x0004($t0)
	lwc1    $f16, 0x0000($t9)
	sub.s   $f4, $f16, $f18
	mul.s   $f8, $f4, $f6
	add.s   $f10, $f8, $f18
	swc1    $f10, 0x005C($sp)
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	lw      $t1, 0x008C($sp)
	lwc1    $f8, 0x0044($sp)
	lwc1    $f4, 0x0008($t2)
	lwc1    $f16, 0x0004($t1)
	sub.s   $f6, $f16, $f4
	mul.s   $f18, $f6, $f8
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0060($sp)
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	lw      $t3, 0x008C($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f6, 0x000C($t4)
	lwc1    $f16, 0x0008($t3)
	sub.s   $f8, $f16, $f6
	mul.s   $f4, $f8, $f18
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0064($sp)
	lwc1    $f16, 0x003C($sp)
	swc1    $f16, 0x006C($sp)
	addiu   $a0, $sp, 0x003C
	li      $a1, 0x437A0000
	jal     camera_802899CC
	li      $a2, 0x41F00000
	jal     map_80380E8C
	addiu   $a0, $sp, 0x005C
	beqz    $v0, .L8028FC54
	nop
	lh      $t5, 0x0072($sp)
	sll     $t6, $t5, 2
	addu    $t7, $sp, $t6
	lw      $t7, 0x0070($t7)
	sw      $t7, 0x0058($sp)
	lw      $t8, 0x0024($sp)
	slti    $at, $t8, 0x0005
	bnez    $at, .L8028FAE4
	nop
	lui     $t9, %hi(_camera_bss+0x32A)
	lh      $t9, %lo(_camera_bss+0x32A)($t9)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t0, $t9, 0x0020
	sh      $t0, %lo(_camera_bss+0x32A)($at)
	lw      $t1, 0x0028($sp)
	bgtz    $t1, .L8028FAE4
	nop
	li      $t2, 0x0001
	sw      $t2, 0x0028($sp)
	lh      $t3, 0x0072($sp)
	sll     $t4, $t3, 2
	addu    $t5, $sp, $t4
	lw      $t5, 0x0070($t5)
	sw      $t5, 0x0058($sp)
	lw      $t6, 0x0058($sp)
	lwc1    $f12, 0x0024($t6)
	jal     atan2
	lwc1    $f14, 0x001C($t6)
	addiu   $t7, $v0, 0x4000
	sh      $t7, 0x0036($sp)
	lh      $a0, 0x002E($sp)
	jal     camera_8028A080
	lh      $a1, 0x0036($sp)
	lw      $t9, 0x0090($sp)
	li      $at, 0x8000
	addu    $t8, $v0, $at
	sh      $t8, 0x0000($t9)
.L8028FAE4:
	lui     $t1, %hi(camera_8032DF60)
	lw      $t1, %lo(camera_8032DF60)($t1)
	lw      $t0, 0x008C($sp)
	lwc1    $f6, 0x0044($sp)
	lwc1    $f18, 0x0004($t1)
	lwc1    $f8, 0x0000($t0)
	sub.s   $f4, $f8, $f18
	mul.s   $f10, $f4, $f6
	add.s   $f16, $f10, $f18
	swc1    $f16, 0x005C($sp)
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	lw      $t2, 0x008C($sp)
	lwc1    $f10, 0x0044($sp)
	lwc1    $f4, 0x0008($t3)
	lwc1    $f8, 0x0004($t2)
	sub.s   $f6, $f8, $f4
	mul.s   $f18, $f6, $f10
	add.s   $f16, $f18, $f4
	swc1    $f16, 0x0060($sp)
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	lw      $t4, 0x008C($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f6, 0x000C($t5)
	lwc1    $f8, 0x0008($t4)
	sub.s   $f10, $f8, $f6
	mul.s   $f4, $f10, $f18
	add.s   $f16, $f4, $f6
	swc1    $f16, 0x0064($sp)
	lwc1    $f8, 0x0038($sp)
	swc1    $f8, 0x006C($sp)
	addiu   $a0, $sp, 0x0038
	li      $a1, 0x43480000
	jal     camera_802899CC
	li      $a2, 0x41A00000
	jal     map_80380E8C
	addiu   $a0, $sp, 0x005C
	beqz    $v0, .L8028FC54
	nop
	lh      $t6, 0x0072($sp)
	sll     $t7, $t6, 2
	addu    $t8, $sp, $t7
	lw      $t8, 0x0070($t8)
	sw      $t8, 0x0058($sp)
	lw      $t9, 0x0058($sp)
	lwc1    $f12, 0x0024($t9)
	jal     atan2
	lwc1    $f14, 0x001C($t9)
	sh      $v0, 0x0034($sp)
	lh      $t0, 0x0034($sp)
	addiu   $t1, $t0, 0x4000
	sh      $t1, 0x0036($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	li      $t2, 0x0028
	sw      $t2, 0x0010($sp)
	lw      $a1, 0x008C($sp)
	lw      $a2, 0x0058($sp)
	lh      $a3, 0x0096($sp)
	jal     camera_8028A6BC
	addiu   $a0, $a0, 0x0004
	bnez    $v0, .L8028FC54
	nop
	lw      $a0, 0x0088($sp)
	jal     camera_8028A7EC
	lw      $a1, 0x0058($sp)
	li      $at, 0x0001
	bne     $v0, $at, .L8028FC54
	nop
	lw      $a0, 0x0058($sp)
	li      $a1, 0xBF800000
	li      $a2, 0x43160000
	jal     camera_8028A0F4
	li      $a3, 0xBF800000
	bnez    $v0, .L8028FC54
	nop
	lh      $a0, 0x002E($sp)
	jal     camera_8028A080
	lh      $a1, 0x0036($sp)
	lw      $t4, 0x0090($sp)
	li      $at, 0x8000
	addu    $t3, $v0, $at
	sh      $t3, 0x0000($t4)
	lw      $a0, 0x0090($sp)
	lh      $a1, 0x0034($sp)
	jal     camera_8028976C
	lh      $a2, 0x0096($sp)
	li      $t5, 0x0003
	sw      $t5, 0x0028($sp)
	li      $t6, 0x0008
	sw      $t6, 0x0024($sp)
.L8028FC54:
	li      $at, 0x3E000000
	mtc1    $at, $f18
	lwc1    $f10, 0x0044($sp)
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x0044($sp)
	lw      $t7, 0x0024($sp)
	addiu   $t8, $t7, 0x0001
	slti    $at, $t8, 0x0008
	bnez    $at, .L8028F9B0
	sw      $t8, 0x0024($sp)
	b       .L8028FC8C
	lw      $v0, 0x0028($sp)
	b       .L8028FC8C
	nop
.L8028FC8C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

camera_8028FC9C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object_80361180)
	lh      $t6, %lo(object_80361180)($t6)
	sh      $t6, 0x001A($sp)
	li      $t7, 0x0001
	lui     $at, %hi(object_80361180)
	sh      $t7, %lo(object_80361180)($at)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t8)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0004($t8)
	lw      $a2, 0x000C($t8)
	jal     map_80381900
	add.s   $f14, $f4, $f6
	lui     $at, %hi(camera_803373B4)
	lwc1    $f8, %lo(camera_803373B4)($at)
	c.eq.s  $f0, $f8
	nop
	bc1t    .L8028FD14
	nop
	lw      $t9, 0x001C($sp)
	lw      $t1, 0x0020($sp)
	lh      $t0, 0x0000($t9)
	b       .L8028FD1C
	sh      $t0, 0x0008($t1)
.L8028FD14:
	lw      $t2, 0x0020($sp)
	sh      $0, 0x0008($t2)
.L8028FD1C:
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f10, 0x0008($t3)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0004($t3)
	lw      $a2, 0x000C($t3)
	jal     map_80381264
	sub.s   $f14, $f10, $f16
	lui     $at, %hi(camera_803373B8)
	lwc1    $f18, %lo(camera_803373B8)($at)
	c.eq.s  $f0, $f18
	nop
	bc1t    .L8028FD70
	nop
	lw      $t4, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lh      $t5, 0x0000($t4)
	b       .L8028FD78
	sh      $t5, 0x0010($t6)
.L8028FD70:
	lw      $t7, 0x0020($sp)
	sh      $0, 0x0010($t7)
.L8028FD78:
	lui     $at, %hi(object_80361180)
	sh      $0, %lo(object_80361180)($at)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t8)
	lw      $a3, 0x0020($sp)
	lwc1    $f12, 0x0004($t8)
	lw      $a2, 0x000C($t8)
	jal     map_80381900
	add.s   $f14, $f4, $f6
	lw      $t9, 0x0020($sp)
	swc1    $f0, 0x0004($t9)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	li      $at, 0x41200000
	mtc1    $at, $f10
	lw      $a3, 0x0020($sp)
	lwc1    $f8, 0x0008($t0)
	lwc1    $f12, 0x0004($t0)
	lw      $a2, 0x000C($t0)
	addiu   $a3, $a3, 0x000C
	jal     map_80381264
	sub.s   $f14, $f8, $f10
	lw      $t1, 0x0020($sp)
	swc1    $f0, 0x0014($t1)
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	lwc1    $f12, 0x0004($t2)
	jal     map_80381BA0
	lwc1    $f14, 0x000C($t2)
	lw      $t3, 0x0020($sp)
	swc1    $f0, 0x0030($t3)
	lh      $t4, 0x001A($sp)
	lui     $at, %hi(object_80361180)
	sh      $t4, %lo(object_80361180)($at)
	b       .L8028FE14
	nop
.L8028FE14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8028FE24:
	andi    $a0, $a0, 0x00FF
	lui     $at, %hi(camera_8032DF50)
	sb      $a0, %lo(camera_8032DF50)($at)
	lui     $at, %hi(camera_8032DF54)
	sb      $0, %lo(camera_8032DF54)($at)
	lui     $at, %hi(camera_8032DF24)
	sw      $a1, %lo(camera_8032DF24)($at)
	lui     $at, %hi(_camera_bss+0x6A8)
	sw      $0, %lo(_camera_bss+0x6A8)($at)
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028FE58:
	andi    $a0, $a0, 0x00FF
	lui     $at, %hi(camera_8032DF50)
	sb      $a0, %lo(camera_8032DF50)($at)
	lui     $at, %hi(camera_8032DF5C)
	sb      $0, %lo(camera_8032DF5C)($at)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

camera_8028FE84:
	andi    $a0, $a0, 0x00FF
	lui     $t6, %hi(_camera_bss+0x6B0)
	lw      $t6, %lo(_camera_bss+0x6B0)($t6)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, .L8028FEB4
	nop
	lui     $t8, %hi(camera_8032DF50)
	lbu     $t8, %lo(camera_8032DF50)($t8)
	bnez    $t8, .L8028FEB4
	nop
	lui     $at, %hi(camera_8032DF50)
	sb      $a0, %lo(camera_8032DF50)($at)
.L8028FEB4:
	lui     $t9, %hi(_camera_bss+0x6B0)
	lw      $t9, %lo(_camera_bss+0x6B0)($t9)
	lbu     $t0, 0x0030($t9)
	bne     $t0, $a0, .L8028FEEC
	nop
	lui     $t1, %hi(camera_8032DF5C)
	lbu     $t1, %lo(camera_8032DF5C)($t1)
	beqz    $t1, .L8028FEEC
	nop
	lui     $v0, %hi(camera_8032DF5C)
	jr      $ra
	lbu     $v0, %lo(camera_8032DF5C)($v0)
	b       .L8028FEF4
	nop
.L8028FEEC:
	jr      $ra
	move    $v0, $0
.L8028FEF4:
	jr      $ra
	nop
	jr      $ra
	nop

.globl camera_8028FF04
camera_8028FF04:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sh      $0, 0x001E($sp)
	lui     $t6, %hi(_camera_bss+0x6B0)
	lw      $t6, %lo(_camera_bss+0x6B0)($t6)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, .L8028FFA8
	nop
	lui     $t8, %hi(camera_8032DF50)
	lbu     $t8, %lo(camera_8032DF50)($t8)
	bnez    $t8, .L8028FFA8
	nop
	lui     $t9, %hi(camera_8032DF54)
	lbu     $t9, %lo(camera_8032DF54)($t9)
	lbu     $t0, 0x0023($sp)
	beq     $t9, $t0, .L8028FF94
	nop
	lbu     $a0, 0x0023($sp)
	jal     camera_8028FE24
	lw      $a1, 0x0024($sp)
	lh      $t1, 0x002A($sp)
	li      $at, -0x0001
	beq     $t1, $at, .L8028FF80
	nop
	lh      $t2, 0x002A($sp)
	lui     $at, %hi(_camera_bss+0x170)
	b       .L8028FF8C
	sh      $t2, %lo(_camera_bss+0x170)($at)
.L8028FF80:
	li      $t3, 0x0001
	lui     $at, %hi(_camera_bss+0x170)
	sh      $t3, %lo(_camera_bss+0x170)($at)
.L8028FF8C:
	b       .L8028FFA0
	nop
.L8028FF94:
	lui     $t4, %hi(camera_8032DF5C)
	lbu     $t4, %lo(camera_8032DF5C)($t4)
	sh      $t4, 0x001E($sp)
.L8028FFA0:
	lui     $at, %hi(camera_8032DF54)
	sb      $0, %lo(camera_8032DF54)($at)
.L8028FFA8:
	b       .L8028FFB8
	lh      $v0, 0x001E($sp)
	b       .L8028FFB8
	nop
.L8028FFB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8028FFC8
camera_8028FFC8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lbu     $a0, 0x0023($sp)
	lw      $a1, 0x0024($sp)
	jal     camera_8028FF04
	li      $a2, -0x0001
	sh      $v0, 0x001E($sp)
	b       .L8028FFFC
	lh      $v0, 0x001E($sp)
	b       .L8028FFFC
	nop
.L8028FFFC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8029000C
camera_8029000C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sh      $0, 0x001E($sp)
	lui     $t6, %hi(_camera_bss+0x6B0)
	lw      $t6, %lo(_camera_bss+0x6B0)($t6)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, .L80290078
	nop
	lui     $t8, %hi(camera_8032DF50)
	lbu     $t8, %lo(camera_8032DF50)($t8)
	bnez    $t8, .L80290078
	nop
	lui     $t9, %hi(camera_8032DF54)
	lbu     $t9, %lo(camera_8032DF54)($t9)
	lbu     $t0, 0x0023($sp)
	beq     $t9, $t0, .L80290070
	nop
	lbu     $a0, 0x0023($sp)
	jal     camera_8028FE24
	lw      $a1, 0x0024($sp)
	li      $t1, 0x0001
	b       .L80290078
	sh      $t1, 0x001E($sp)
.L80290070:
	li      $t2, -0x0001
	sh      $t2, 0x001E($sp)
.L80290078:
	b       .L80290088
	lh      $v0, 0x001E($sp)
	b       .L80290088
	nop
.L80290088:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80290098:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	addiu   $a0, $t6, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $t6, 0x0010
	lw      $t7, 0x0018($sp)
	sh      $v0, 0x003A($t7)
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x003A($t8)
	sh      $t9, 0x0002($t8)
	b       .L802900D0
	nop
.L802900D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802900E0:
	lui     $at, %hi(_camera_bss+0x530)
	sh      $0, %lo(_camera_bss+0x530)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x534)
	swc1    $f4, %lo(_camera_bss+0x534)($at)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80290104:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $t6, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t6, %lo(_camera_bss+0x53C)($at)
	lw      $t7, 0x0018($sp)
	sb      $0, 0x0030($t7)
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss+0x308
	la.l    $a1, _camera_bss+0x308
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss+0x308
	la.l    $a1, _camera_bss+0x308
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	b       .L80290158
	nop
.L80290158:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290168:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lh      $t6, 0x0022($sp)
	sh      $t6, 0x001E($sp)
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	jal     save_file_write
	addiu   $a0, $a0, -0x0001
	b       .L80290194
	nop
.L80290194:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802901A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lb      $t6, 0x001F($sp)
	lw      $t7, 0x0018($sp)
	sb      $t6, 0x0000($t7)
	lbu     $t8, 0x0023($sp)
	lw      $t9, 0x0018($sp)
	sb      $t8, 0x0001($t9)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0024($sp)
	jal     vecs_cpy
	addiu   $a0, $a0, 0x0002
	b       .L802901EC
	nop
.L802901EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802901FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $t0, 0x0024($sp)
	lw      $t9, 0x002C($sp)
	lw      $t6, 0x0020($sp)
	sll     $t1, $t0, 3
	lw      $t8, 0x0028($sp)
	addu    $t2, $t9, $t1
	sll     $t7, $t6, 3
	lb      $a1, 0x0000($t2)
	lbu     $a2, 0x0001($t2)
	addiu   $a3, $t2, 0x0002
	jal     camera_802901A4
	addu    $a0, $t7, $t8
	lw      $t3, 0x0020($sp)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0020($sp)
.L80290250:
	lw      $t0, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t5, 0x0020($sp)
	sll     $t9, $t0, 3
	lw      $t7, 0x0028($sp)
	addu    $t1, $t8, $t9
	sll     $t6, $t5, 3
	lb      $a1, 0x0000($t1)
	lbu     $a2, 0x0001($t1)
	addiu   $a3, $t1, 0x0002
	jal     camera_802901A4
	addu    $a0, $t6, $t7
	lw      $t2, 0x0020($sp)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0020($sp)
	lw      $t4, 0x0024($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	lw      $t6, 0x002C($sp)
	sll     $t0, $t7, 3
	addu    $t8, $t6, $t0
	lb      $t9, 0x0000($t8)
	addiu   $t1, $t9, 0x0001
	sltu    $t1, $0, $t1
	beqz    $t1, .L802902C4
	nop
	bnez    $t1, .L80290250
	nop
.L802902C4:
	lw      $t2, 0x0024($sp)
	slti    $at, $t2, 0x0011
	beqz    $at, .L80290250
	nop
	lw      $t6, 0x0024($sp)
	lw      $t3, 0x0020($sp)
	lw      $t7, 0x002C($sp)
	lw      $t5, 0x0028($sp)
	sll     $t0, $t6, 3
	sll     $t4, $t3, 3
	addu    $t8, $t7, $t0
	lbu     $a2, 0x0001($t8)
	addiu   $a3, $t8, 0x0002
	move    $a1, $0
	jal     camera_802901A4
	addu    $a0, $t4, $t5
	lw      $t9, 0x0020($sp)
	lw      $t5, 0x0024($sp)
	lw      $t4, 0x002C($sp)
	lw      $t3, 0x0028($sp)
	addiu   $t1, $t9, 0x0001
	sll     $t6, $t5, 3
	sll     $t2, $t1, 3
	addu    $a3, $t4, $t6
	addiu   $a3, $a3, 0x0002
	move    $a1, $0
	move    $a2, $0
	jal     camera_802901A4
	addu    $a0, $t2, $t3
	lw      $t7, 0x0020($sp)
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	addiu   $t0, $t7, 0x0002
	sll     $t3, $t2, 3
	sll     $t8, $t0, 3
	addu    $a3, $t1, $t3
	addiu   $a3, $a3, 0x0002
	move    $a1, $0
	move    $a2, $0
	jal     camera_802901A4
	addu    $a0, $t8, $t9
	lw      $t5, 0x0020($sp)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	addiu   $t4, $t5, 0x0003
	sll     $t9, $t8, 3
	sll     $t6, $t4, 3
	addu    $a3, $t0, $t9
	addiu   $a3, $a3, 0x0002
	li      $a1, -0x0001
	move    $a2, $0
	jal     camera_802901A4
	addu    $a0, $t6, $t7
	b       .L802903A8
	nop
.L802903A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_802903B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_camera_bss+0x53C)
	lh      $t6, %lo(_camera_bss+0x53C)($t6)
	sh      $t6, 0x001E($sp)
	jal     pl_demo_80257640
	lw      $a0, 0x0020($sp)
	li      $at, 0x0002
	bne     $v0, $at, .L802903EC
	nop
	li      $t7, 0x7FFF
	sh      $t7, 0x001E($sp)
.L802903EC:
	b       .L802903FC
	lh      $v0, 0x001E($sp)
	b       .L802903FC
	nop
.L802903FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029040C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802903B8
	li      $a0, 0x0003
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $v0, %lo(_camera_bss+0x53C)($at)
	b       .L80290430
	nop
.L80290430:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80290440(struct camera *cam) */
.globl camera_80290440
camera_80290440:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802903B8
	li      $a0, 0x0001
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $v0, %lo(_camera_bss+0x53C)($at)
	b       .L80290464
	nop
.L80290464:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290474:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802903B8
	li      $a0, 0x0002
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $v0, %lo(_camera_bss+0x53C)($at)
	b       .L80290498
	nop
.L80290498:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802904A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SEQ_mute
	li      $a2, 0x0028
	jal     camera_8028B724
	nop
	b       .L802904D4
	nop
.L802904D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802904E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	move    $a0, $0
	jal     Na_SEQ_unmute
	li      $a1, 0x003C
	jal     camera_8028B754
	nop
	b       .L8029050C
	nop
.L8029050C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029051C:
	sw      $a0, 0x0000($sp)
	mtc1    $0, $f4
	lui     $at, %hi(_camera_bss+0x25C)
	swc1    $f4, %lo(_camera_bss+0x25C)($at)
	b       .L80290534
	nop
.L80290534:
	jr      $ra
	nop

camera_8029053C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lui     $t6, %hi(cont_2)
	lw      $t6, %lo(cont_2)($t6)
	li      $at, 0x437A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0004($t6)
	la.u    $a0, _camera_bss+0x76
	la.l    $a0, _camera_bss+0x76
	mul.s   $f8, $f4, $f6
	li      $a2, 0x0004
	trunc.w.s $f10, $f8
	mfc1    $a1, $f10
	nop
	sll     $t8, $a1, 16
	move    $a1, $t8
	sra     $t9, $a1, 16
	move    $a1, $t9
	jal     camera_802894B4
	subu    $a1, $0, $a1
	lui     $t0, %hi(cont_2)
	lw      $t0, %lo(cont_2)($t0)
	lui     $at, %hi(camera_803373BC)
	lwc1    $f18, %lo(camera_803373BC)($at)
	lwc1    $f16, 0x0008($t0)
	la.u    $a0, _camera_bss+0x74
	la.l    $a0, _camera_bss+0x74
	mul.s   $f4, $f16, $f18
	li      $a2, 0x0004
	trunc.w.s $f6, $f4
	mfc1    $a1, $f6
	nop
	sll     $t2, $a1, 16
	move    $a1, $t2
	sra     $t3, $a1, 16
	move    $a1, $t3
	jal     camera_802894B4
	subu    $a1, $0, $a1
	lw      $t4, 0x0030($sp)
	addiu   $t5, $sp, 0x0028
	sw      $t5, 0x0010($sp)
	addiu   $a2, $sp, 0x002C
	addiu   $a3, $sp, 0x002A
	addiu   $a0, $t4, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t4, 0x0004
	lh      $t6, 0x002A($sp)
	li      $t7, 0x3800
	subu    $t8, $t7, $t6
	sh      $t8, 0x0026($sp)
	lh      $t9, 0x0026($sp)
	bgez    $t9, .L80290624
	nop
	sh      $0, 0x0026($sp)
.L80290624:
	lh      $t0, 0x003A($sp)
	lh      $t1, 0x0026($sp)
	slt     $at, $t1, $t0
	beqz    $at, .L80290640
	nop
	lh      $t2, 0x0026($sp)
	sh      $t2, 0x003A($sp)
.L80290640:
	lh      $t3, 0x002A($sp)
	li      $t4, -0x3800
	subu    $t5, $t4, $t3
	sh      $t5, 0x0026($sp)
	lh      $t7, 0x0026($sp)
	blez    $t7, .L80290660
	nop
	sh      $0, 0x0026($sp)
.L80290660:
	lh      $t6, 0x0036($sp)
	lh      $t8, 0x0026($sp)
	slt     $at, $t6, $t8
	beqz    $at, .L8029067C
	nop
	lh      $t9, 0x0026($sp)
	sh      $t9, 0x0036($sp)
.L8029067C:
	lui     $t0, %hi(_camera_bss+0x74)
	lh      $t0, %lo(_camera_bss+0x74)($t0)
	lh      $t1, 0x003A($sp)
	slt     $at, $t1, $t0
	beqz    $at, .L802906A0
	nop
	lh      $t2, 0x003A($sp)
	lui     $at, %hi(_camera_bss+0x74)
	sh      $t2, %lo(_camera_bss+0x74)($at)
.L802906A0:
	lui     $t4, %hi(_camera_bss+0x74)
	lh      $t4, %lo(_camera_bss+0x74)($t4)
	lh      $t3, 0x0036($sp)
	slt     $at, $t4, $t3
	beqz    $at, .L802906C4
	nop
	lh      $t5, 0x0036($sp)
	lui     $at, %hi(_camera_bss+0x74)
	sh      $t5, %lo(_camera_bss+0x74)($at)
.L802906C4:
	lui     $t7, %hi(_camera_bss+0x76)
	lh      $t7, %lo(_camera_bss+0x76)($t7)
	lh      $t6, 0x0042($sp)
	slt     $at, $t6, $t7
	beqz    $at, .L802906E8
	nop
	lh      $t8, 0x0042($sp)
	lui     $at, %hi(_camera_bss+0x76)
	sh      $t8, %lo(_camera_bss+0x76)($at)
.L802906E8:
	lui     $t9, %hi(_camera_bss+0x76)
	lh      $t9, %lo(_camera_bss+0x76)($t9)
	lh      $t0, 0x003E($sp)
	slt     $at, $t9, $t0
	beqz    $at, .L8029070C
	nop
	lh      $t1, 0x003E($sp)
	lui     $at, %hi(_camera_bss+0x76)
	sh      $t1, %lo(_camera_bss+0x76)($at)
.L8029070C:
	lui     $t4, %hi(_camera_bss+0x74)
	lh      $t4, %lo(_camera_bss+0x74)($t4)
	lh      $t2, 0x002A($sp)
	addu    $t3, $t2, $t4
	sh      $t3, 0x002A($sp)
	lui     $t7, %hi(_camera_bss+0x76)
	lh      $t7, %lo(_camera_bss+0x76)($t7)
	lh      $t5, 0x0028($sp)
	addu    $t6, $t5, $t7
	sh      $t6, 0x0028($sp)
	lw      $a0, 0x0030($sp)
	lh      $t8, 0x0028($sp)
	la.u    $a1, _camera_bss+0x68
	la.l    $a1, _camera_bss+0x68
	lw      $a2, 0x002C($sp)
	lh      $a3, 0x002A($sp)
	addiu   $a0, $a0, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	lw      $a1, 0x0030($sp)
	la.u    $a0, _camera_bss+0x68
	la.l    $a0, _camera_bss+0x68
	jal     camera_80287DE8
	addiu   $a1, $a1, 0x0004
	b       .L80290774
	nop
.L80290774:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80290784:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x308
	la.l    $a0, _camera_bss+0x308
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x308
	la.l    $a0, _camera_bss+0x308
	addiu   $a0, $a0, 0x000C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $at, %hi(_camera_bss+0x25C)
	lwc1    $f4, %lo(_camera_bss+0x25C)($at)
	lui     $at, %hi(_camera_bss+0x320)
	swc1    $f4, %lo(_camera_bss+0x320)($at)
	lui     $at, %hi(_camera_bss+0x260)
	lwc1    $f6, %lo(_camera_bss+0x260)($at)
	lui     $at, %hi(_camera_bss+0x324)
	swc1    $f6, %lo(_camera_bss+0x324)($at)
	b       .L802907E4
	nop
.L802907E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802907F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss+0x308
	la.l    $a1, _camera_bss+0x308
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss+0x308
	la.l    $a1, _camera_bss+0x308
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lui     $at, %hi(_camera_bss+0x320)
	lwc1    $f4, %lo(_camera_bss+0x320)($at)
	lui     $at, %hi(_camera_bss+0x25C)
	swc1    $f4, %lo(_camera_bss+0x25C)($at)
	lui     $at, %hi(_camera_bss+0x324)
	lwc1    $f6, %lo(_camera_bss+0x324)($at)
	lui     $at, %hi(_camera_bss+0x260)
	swc1    $f6, %lo(_camera_bss+0x260)($at)
	b       .L80290854
	nop
.L80290854:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290864:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029051C
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x308
	la.l    $a0, _camera_bss+0x308
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	la.u    $t7, _camera_bss+0x308
	la.l    $t7, _camera_bss+0x308
	lwc1    $f4, 0x0004($t6)
	swc1    $f4, 0x000C($t7)
	lw      $t8, 0x0018($sp)
	la.u    $t9, _camera_bss+0x308
	la.l    $t9, _camera_bss+0x308
	lwc1    $f6, 0x0008($t8)
	swc1    $f6, 0x0010($t9)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	la.u    $t1, _camera_bss+0x308
	la.l    $t1, _camera_bss+0x308
	lwc1    $f8, 0x000C($t0)
	swc1    $f8, 0x0014($t1)
	b       .L802908D8
	nop
.L802908D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802908E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss+0x308
	la.l    $a1, _camera_bss+0x308
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss+0x308
	la.l    $a1, _camera_bss+0x308
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	b       .L80290928
	nop
.L80290928:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290938:
	lh      $t6, 0x0000($a1)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0000($a0)
	lh      $t7, 0x0002($a1)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0004($a0)
	lh      $t8, 0x0004($a1)
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0008($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80290984:
	lwc1    $f4, 0x0000($a1)
	trunc.w.s $f6, $f4
	mfc1    $t7, $f6
	nop
	sh      $t7, 0x0000($a0)
	lwc1    $f8, 0x0004($a1)
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	sh      $t9, 0x0002($a0)
	lwc1    $f16, 0x0008($a1)
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	sh      $t1, 0x0004($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_802909D0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	lw      $t6, 0x0038($sp)
	addiu   $t7, $sp, 0x0024
	sw      $t7, 0x0010($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $t6, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t6, 0x0004
	lh      $t8, 0x0026($sp)
	lh      $t9, 0x003E($sp)
	addu    $t0, $t8, $t9
	sh      $t0, 0x0026($sp)
	lh      $t1, 0x0024($sp)
	lh      $t2, 0x0042($sp)
	addu    $t3, $t1, $t2
	sh      $t3, 0x0024($sp)
	lw      $t4, 0x0038($sp)
	lh      $t5, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $t4, 0x0010
	addiu   $a1, $t4, 0x0004
	jal     polar_to_cartesian
	sw      $t5, 0x0010($sp)
	b       .L80290A4C
	nop
.L80290A4C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_80290A5C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8027F8B8
	li      $a0, 0x0001
	jal     camera_8029ABB0
	li      $a0, 0x0001
	b       .L80290A80
	nop
.L80290A80:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290A90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8027F8B8
	li      $a0, 0x0002
	b       .L80290AAC
	nop
.L80290AAC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290ABC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	addiu   $t6, $sp, 0x0020
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x002C($sp)
	lw      $a1, 0x0028($sp)
	addiu   $a2, $sp, 0x0024
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0022
	lh      $t7, 0x0022($sp)
	lh      $t8, 0x0036($sp)
	addu    $t9, $t7, $t8
	sh      $t9, 0x0022($sp)
	lh      $t0, 0x0020($sp)
	lh      $t1, 0x003A($sp)
	addu    $t2, $t0, $t1
	sh      $t2, 0x0020($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x0030($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lh      $t3, 0x0020($sp)
	lw      $a0, 0x002C($sp)
	lw      $a1, 0x0028($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
	b       .L80290B44
	nop
.L80290B44:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80290B54:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x8000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lw      $t8, 0x0018($sp)
	addiu   $a0, $t8, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $t8, 0x0010
	lui     $at, %hi(_camera_bss+0x100)
	sh      $v0, %lo(_camera_bss+0x100)($at)
	b       .L80290B94
	nop
.L80290B94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290BA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SEQ_mute
	li      $a2, 0x0028
	b       .L80290BC8
	nop
.L80290BC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290BD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	move    $a0, $0
	jal     Na_SEQ_unmute
	li      $a1, 0x003C
	b       .L80290BF8
	nop
.L80290BF8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290C08:
	sw      $a0, 0x0000($sp)
	b       .L80290C14
	nop
.L80290C14:
	jr      $ra
	nop

/* void camera_80290C1C(struct camera *cam) */
.globl camera_80290C1C
camera_80290C1C:
	sw      $a0, 0x0000($sp)
	b       .L80290C28
	nop
.L80290C28:
	jr      $ra
	nop

/* void camera_80290C30(struct camera *cam) */
.globl camera_80290C30
camera_80290C30:
	sw      $a0, 0x0000($sp)
	b       .L80290C3C
	nop
.L80290C3C:
	jr      $ra
	nop

camera_80290C44:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0xC1D00000
	li      $a2, 0x0000
	li      $a3, 0xC3090000
	jal     vecf_set
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x4593A800
	li.l    $a2, 0x4593A800
	li      $a1, 0x43250000
	li      $a3, 0x43A20000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       .L80290C8C
	nop
.L80290C8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290C9C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sdc1    $f20, 0x0010($sp)
	addiu   $a0, $sp, 0x0024
	li      $a1, 0x0000
	li      $a2, 0x42A00000
	jal     vecf_set
	li      $a3, 0x0000
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lw      $t7, 0x0030($sp)
	mtc1    $0, $f10
	lwc1    $f4, 0x0008($t6)
	lwc1    $f6, 0x0014($t7)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80290CF4
	nop
	b       .L80290D10
	mov.s   $f20, $f8
.L80290CF4:
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lw      $t9, 0x0030($sp)
	lwc1    $f16, 0x0008($t8)
	lwc1    $f18, 0x0014($t9)
	sub.s   $f20, $f16, $f18
	neg.s   $f20, $f20
.L80290D10:
	lui     $at, %hi(camera_803373C0)
	lwc1    $f4, %lo(camera_803373C0)($at)
	addiu   $t0, $sp, 0x0024
	mul.s   $f6, $f20, $f4
	swc1    $f6, 0x0008($t0)
	addiu   $t1, $sp, 0x0024
	li      $at, 0xC2C80000
	mtc1    $at, $f8
	lwc1    $f10, 0x0008($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80290D54
	nop
	li      $at, 0xC2C80000
	mtc1    $at, $f16
	addiu   $t2, $sp, 0x0024
	swc1    $f16, 0x0008($t2)
.L80290D54:
	lui     $t3, %hi(camera_8032DF60)
	lw      $t3, %lo(camera_8032DF60)($t3)
	lw      $a0, 0x0030($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a1, $t3, 0x0004
	addiu   $a3, $t3, 0x0010
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	b       .L80290D7C
	nop
.L80290D7C:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void camera_80290D90(struct camera *cam) */
.globl camera_80290D90
camera_80290D90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80290C44
	la.l    $a0, camera_80290C44
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80290C9C
	la.l    $a0, camera_80290C9C
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       .L80290DF0
	nop
.L80290DF0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_80290E00(struct camera *cam) */
.globl camera_80290E00
camera_80290E00:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x444E8000
	li.l    $a2, 0x444E8000
	li      $a1, 0x42AA0000
	li      $a3, 0x437A0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0020($sp)
	li      $a1, 0xC24C0000
	li      $a2, 0x44770000
	li      $a3, 0xC34A0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       .L80290E64
	nop
.L80290E64:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80290E74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	mtc1    $0, $f4
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	swc1    $f4, 0x0148($t6)
	jal     camera_802900E0
	nop
	b       .L80290EA0
	nop
.L80290EA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80290EB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032EFA0
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032EFA0
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032EFF0
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032EFF0
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	b       .L80290F0C
	nop
.L80290F0C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80290F1C(struct camera *cam) */
.globl camera_80290F1C
camera_80290F1C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80290E74
	la.l    $a0, camera_80290E74
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80290EB0
	la.l    $a0, camera_80290EB0
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       .L80290F7C
	nop
.L80290F7C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_80290F8C(struct camera *cam) */
.globl camera_80290F8C
camera_80290F8C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $t6, campath_8032EFF0
	la.l    $t6, campath_8032EFF0
	lh      $t8, 0x0004($t6)
	lh      $t7, 0x0002($t6)
	lh      $t9, 0x0006($t6)
	mtc1    $t8, $f6
	mtc1    $t7, $f4
	mtc1    $t9, $f18
	cvt.s.w $f8, $f6
	li      $at, 0x42A00000
	mtc1    $at, $f10
	lw      $a0, 0x0020($sp)
	cvt.s.w $f4, $f4
	addiu   $a0, $a0, 0x0004
	cvt.s.w $f18, $f18
	mfc1    $a1, $f4
	add.s   $f16, $f8, $f10
	mfc1    $a3, $f18
	mfc1    $a2, $f16
	jal     vecf_set
	nop
	la.u    $t0, campath_8032EFA0
	la.l    $t0, campath_8032EFA0
	lh      $t3, 0x0006($t0)
	lh      $t1, 0x0002($t0)
	lh      $t2, 0x0004($t0)
	mtc1    $t3, $f8
	mtc1    $t1, $f4
	mtc1    $t2, $f6
	cvt.s.w $f10, $f8
	li      $at, 0x43160000
	mtc1    $at, $f16
	lw      $a0, 0x0020($sp)
	cvt.s.w $f4, $f4
	addiu   $a0, $a0, 0x0010
	cvt.s.w $f6, $f6
	mfc1    $a1, $f4
	add.s   $f18, $f10, $f16
	mfc1    $a2, $f6
	mfc1    $a3, $f18
	jal     vecf_set
	nop
	li      $t4, 0x2000
	sw      $t4, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x0800
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       .L80291064
	nop
.L80291064:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80291074:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x4519F000
	li.l    $a2, 0x4519F000
	li      $a1, 0x43330000
	li      $a3, 0xC4980000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	li      $at, 0x420C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	lw      $t7, 0x0018($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0014($t7)
	lui     $t8, %hi(camera_8032DF24)
	lw      $t8, %lo(camera_8032DF24)($t8)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t8)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x00A0($t8)
	add.s   $f18, $f10, $f16
	lw      $a3, 0x00A8($t8)
	addiu   $a0, $a0, 0x0004
	mfc1    $a2, $f18
	jal     vecf_set
	nop
	b       .L802910F8
	nop
.L802910F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80291108(struct camera *cam) */
.globl camera_80291108
camera_80291108:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80291074
	la.l    $a0, camera_80291074
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	li      $at, 0x420C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x3CA3D70A
	add.s   $f8, $f4, $f6
	li.l    $a2, 0x3CA3D70A
	addiu   $a0, $a0, 0x0014
	mfc1    $a1, $f8
	jal     camera_802893F4
	nop
	lui     $t7, %hi(camera_8032DF24)
	lw      $t7, %lo(camera_8032DF24)($t7)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t7)
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x3E19999A
	add.s   $f18, $f10, $f16
	li.l    $a2, 0x3E19999A
	addiu   $a0, $a0, 0x0008
	mfc1    $a1, $f18
	jal     camera_802893F4
	nop
	li      $t8, 0x2000
	sw      $t8, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       .L802911B8
	nop
.L802911B8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802911C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802900E0
	nop
	li      $at, 0x43160000
	mtc1    $at, $f4
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	swc1    $f4, 0x0050($t6)
	b       .L802911F8
	nop
.L802911F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291208:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032F048
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032F048
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	lwc1    $f6, 0x0074($t7)
	lwc1    $f4, 0x00A4($t6)
	lw      $t8, 0x0018($sp)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x0014($t8)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0014($t8)
	b       .L8029126C
	nop
.L8029126C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029127C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0050
	li      $a1, 0x42B40000
	jal     camera_802899CC
	li      $a2, 0x3F000000
	b       .L802912A8
	nop
.L802912A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802912B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $a1, campath_8032F048
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032F048
	jal     camera_802882E4
	addiu   $a0, $sp, 0x001C
	addiu   $t6, $sp, 0x001C
	lwc1    $f4, 0x0000($t6)
	lw      $t7, 0x0028($sp)
	swc1    $f4, 0x0010($t7)
	addiu   $t8, $sp, 0x001C
	lwc1    $f6, 0x0008($t8)
	lw      $t9, 0x0028($sp)
	swc1    $f6, 0x0018($t9)
	lui     $t1, %hi(camera_8032DF24)
	lw      $t1, %lo(camera_8032DF24)($t1)
	addiu   $t0, $sp, 0x001C
	lwc1    $f8, 0x0004($t0)
	lwc1    $f10, 0x00A4($t1)
	lw      $a0, 0x0028($sp)
	addiu   $t2, $sp, 0x001C
	add.s   $f16, $f8, $f10
	li.u    $a2, 0x3D8F5C29
	li.l    $a2, 0x3D8F5C29
	addiu   $a0, $a0, 0x0014
	swc1    $f16, 0x0004($t0)
	jal     camera_802893F4
	lw      $a1, 0x0004($t2)
	b       .L80291344
	nop
.L80291344:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void camera_80291354(struct camera *cam) */
.globl camera_80291354
camera_80291354:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_802911C8
	la.l    $a0, camera_802911C8
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80291208
	la.l    $a0, camera_80291208
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x012B
	la.u    $a0, camera_802912B8
	la.l    $a0, camera_802912B8
	lw      $a1, 0x0020($sp)
	li      $a2, 0x012C
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029127C
	la.l    $a0, camera_8029127C
	lw      $a1, 0x0020($sp)
	li      $a2, 0x012C
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	lwc1    $f6, 0x0050($t7)
	lwc1    $f4, 0x00A4($t6)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x00A0($t6)
	add.s   $f8, $f4, $f6
	lw      $a3, 0x00A8($t6)
	addiu   $a0, $a0, 0x0004
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	li      $t8, 0x2000
	sw      $t8, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       .L8029141C
	nop
.L8029141C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_8029142C(struct camera *cam) */
.globl camera_8029142C
camera_8029142C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80290E74
	la.l    $a0, camera_80290E74
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lw      $a0, 0x0020($sp)
	la.u    $a1, campath_8032F0E8
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032F0E8
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0020($sp)
	la.u    $a1, campath_8032F130
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032F130
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       .L802914BC
	nop
.L802914BC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802914CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032F178
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032F178
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	b       .L80291504
	nop
.L80291504:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80291514(struct camera *cam) */
.globl camera_80291514
camera_80291514:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80290E74
	la.l    $a0, camera_80290E74
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802914CC
	la.l    $a0, camera_802914CC
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802914CC
	la.l    $a0, camera_802914CC
	lw      $a1, 0x0020($sp)
	li      $a2, 0x00FA
	jal     camera_8029A2F8
	li      $a3, -0x0001
	li      $a0, 0x0007
	jal     camera_8029A37C
	li      $a1, 0x012C
	li      $a0, 0x0009
	jal     camera_8029A37C
	li      $a1, 0x0154
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x44748000
	li.u    $a3, 0xC4874000
	li.l    $a3, 0xC4874000
	li.l    $a2, 0x44748000
	li      $a1, 0xC3230000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x0800
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       .L802915C4
	nop
.L802915C4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_802915D4(struct camera *cam) */
.globl camera_802915D4
camera_802915D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x4475C000
	li.u    $a3, 0xC49F2000
	li.l    $a3, 0xC49F2000
	li.l    $a2, 0x4475C000
	li      $a1, 0x41300000
	jal     vecf_set
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0xC3EC8000
	li.u    $a2, 0x44728000
	li.l    $a2, 0x44728000
	li.l    $a1, 0xC3EC8000
	li      $a3, 0xC4900000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x0800
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       .L80291644
	nop
.L80291644:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80291654:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x000D
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x44814000
	li.l    $a2, 0x44814000
	li      $a1, 0x43AF0000
	li      $a3, 0xC4980000
	jal     vecf_set
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x447F4000
	li.l    $a2, 0x447F4000
	li      $a1, 0xC3150000
	li      $a3, 0xC4980000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       .L802916A8
	nop
.L802916A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802916B8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	jal     camera_8029AB94
	li      $a0, 0x0002
	li.u    $a2, 0x44858000
	li.u    $a3, 0xC4A24000
	li.l    $a3, 0xC4A24000
	li.l    $a2, 0x44858000
	addiu   $a0, $sp, 0x0020
	jal     vecf_set
	li      $a1, 0x43690000
	li.u    $a2, 0x44718000
	li.u    $a3, 0xC48AE000
	li.l    $a3, 0xC48AE000
	li.l    $a2, 0x44718000
	addiu   $a0, $sp, 0x002C
	jal     vecf_set
	li      $a1, 0xC37A0000
	lui     $at, %hi(camera_803373C4)
	lwc1    $f4, %lo(camera_803373C4)($at)
	lw      $a0, 0x0038($sp)
	li.u    $a2, 0x3E4CCCCD
	li.u    $a3, 0x3DCCCCCD
	li.l    $a3, 0x3DCCCCCD
	li.l    $a2, 0x3E4CCCCD
	addiu   $a1, $sp, 0x002C
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	lui     $at, %hi(camera_803373C8)
	lwc1    $f6, %lo(camera_803373C8)($at)
	lw      $a0, 0x0038($sp)
	li.u    $a2, 0x3E4CCCCD
	li.u    $a3, 0x3DCCCCCD
	li.l    $a3, 0x3DCCCCCD
	li.l    $a2, 0x3E4CCCCD
	addiu   $a1, $sp, 0x0020
	swc1    $f6, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	b       .L80291764
	nop
.L80291764:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* void camera_80291774(struct camera *cam) */
.globl camera_80291774
camera_80291774:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_80291654
	la.l    $a0, camera_80291654
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802916B8
	la.l    $a0, camera_802916B8
	lw      $a1, 0x0020($sp)
	li      $a2, 0x009B
	jal     camera_8029A2F8
	li      $a3, -0x0001
	li      $t6, 0x2000
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, -0x0800
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x2000
	b       .L802917D4
	nop
.L802917D4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802917E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032F1B8
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032F1B8
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x442EC000
	li.u    $a3, 0xC42FC000
	li.l    $a3, 0xC42FC000
	li.l    $a1, 0x442EC000
	li      $a2, 0x44D20000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       .L8029183C
	nop
.L8029183C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029184C:
	sw      $a0, 0x0000($sp)
	li      $at, 0x42140000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f4, %lo(_camera_bss+0x84)($at)
	b       .L80291868
	nop
.L80291868:
	jr      $ra
	nop

/* void camera_80291870(struct camera *cam) */
.globl camera_80291870
camera_80291870:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80290E74
	la.l    $a0, camera_80290E74
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802917E4
	la.l    $a0, camera_802917E4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_8029184C
	la.l    $a0, camera_8029184C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x01F3
	la.u    $a0, camera_802917E4
	la.l    $a0, camera_802917E4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x01F4
	jal     camera_8029A2F8
	li      $a3, -0x0001
	li      $a0, 0x0008
	jal     camera_8029A37C
	li      $a1, 0x0258
	li      $a0, 0x0008
	jal     camera_8029A37C
	li      $a1, 0x0260
	li      $a0, 0x0008
	jal     camera_8029A37C
	li      $a1, 0x0270
	li      $a0, 0x0008
	jal     camera_8029A37C
	li      $a1, 0x02C6
	b       .L80291914
	nop
.L80291914:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80291924(struct camera *cam) */
.globl camera_80291924
camera_80291924:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x0001
	lw      $t6, 0x0018($sp)
	sb      $0, 0x0030($t6)
	li      $t7, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t7, %lo(_camera_bss+0x53C)($at)
	b       .L80291954
	nop
.L80291954:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291964:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x0000
	li      $a2, 0x43160000
	jal     vecf_set
	li      $a3, 0xC4160000
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	addiu   $a0, $t6, 0x0028
	addiu   $a2, $t6, 0x0004
	addiu   $a1, $t7, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t7, 0x0010
	lui     $at, %hi(camera_803373CC)
	lwc1    $f4, %lo(camera_803373CC)($at)
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	swc1    $f4, 0x002C($t8)
	b       .L802919CC
	nop
.L802919CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802919DC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $t6, $sp, 0x0028
	sw      $t6, 0x0010($sp)
	addiu   $a1, $a1, 0x0028
	addiu   $a2, $sp, 0x002C
	addiu   $a3, $sp, 0x002A
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0004
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0030($sp)
	addiu   $t7, $sp, 0x0020
	sw      $t7, 0x0010($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $sp, 0x0024
	jal     camera_802893F4
	lw      $a1, 0x002C($sp)
	addiu   $a0, $sp, 0x0022
	lh      $a1, 0x002A($sp)
	jal     camera_802894B4
	li      $a2, 0x0020
	lh      $a1, 0x0028($sp)
	addiu   $a0, $sp, 0x0020
	li      $a2, 0x0014
	jal     camera_802894B4
	addiu   $a1, $a1, 0x1200
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0030($sp)
	lh      $t8, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	b       .L80291AA4
	nop
.L80291AA4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80291AB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x001C
	move    $a1, $0
	move    $a3, $0
	jal     vecs_set
	lh      $a2, 0x0012($t6)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x004C
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	b       .L80291B08
	nop
.L80291B08:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291B18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0054
	li      $a1, 0xC2200000
	jal     camera_802899CC
	li      $a2, 0x40000000
	li      $at, 0x40A00000
	mtc1    $at, $f4
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	swc1    $f4, 0x004C($t6)
	b       .L80291B58
	nop
.L80291B58:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291B68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0054
	li      $a1, 0x0000
	jal     camera_802899CC
	li      $a2, 0x40000000
	mtc1    $0, $f4
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	swc1    $f4, 0x004C($t6)
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	lw      $a1, 0x0004($t7)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0010
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	lw      $a1, 0x000C($t8)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0018
	b       .L80291BE4
	nop
.L80291BE4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291BF4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	addiu   $t7, $t6, 0x0010
	move    $a0, $t7
	move    $a1, $t7
	addiu   $a2, $t8, 0x004C
	jal     camera_8028CBF0
	addiu   $a3, $t8, 0x001C
	b       .L80291C2C
	nop
.L80291C2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291C3C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lui     $at, %hi(camera_803373D0)
	lwc1    $f6, %lo(camera_803373D0)($at)
	lwc1    $f4, 0x0008($t6)
	li      $at, 0x3F000000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	lui     $at, %hi(camera_803373D4)
	lwc1    $f18, %lo(camera_803373D4)($at)
	addiu   $a0, $sp, 0x0024
	mul.s   $f16, $f8, $f10
	lw      $a1, 0x0004($t6)
	lw      $a3, 0x000C($t6)
	add.s   $f4, $f16, $f18
	mfc1    $a2, $f4
	jal     vecf_set
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lw      $a0, 0x0030($sp)
	li.u    $a3, 0x3F4CCCCD
	li.l    $a3, 0x3F4CCCCD
	addiu   $a1, $sp, 0x0024
	li      $a2, 0x3F000000
	addiu   $a0, $a0, 0x0004
	jal     camera_80289610
	swc1    $f6, 0x0010($sp)
	b       .L80291CC0
	nop
.L80291CC0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void camera_80291CD0(struct camera *cam) */
.globl camera_80291CD0
camera_80291CD0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	la.u    $a0, camera_80291964
	la.l    $a0, camera_80291964
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802919DC
	la.l    $a0, camera_802919DC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x006D
	la.u    $a0, camera_80291C3C
	la.l    $a0, camera_80291C3C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80291AB4
	la.l    $a0, camera_80291AB4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x006E
	jal     camera_8029A2F8
	li      $a3, 0x006E
	la.u    $a0, camera_80291B18
	la.l    $a0, camera_80291B18
	lw      $a1, 0x0018($sp)
	li      $a2, 0x006E
	jal     camera_8029A2F8
	li      $a3, 0x009F
	la.u    $a0, camera_80291B68
	la.l    $a0, camera_80291B68
	lw      $a1, 0x0018($sp)
	li      $a2, 0x00A0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80291BF4
	la.l    $a0, camera_80291BF4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x006E
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       .L80291DA0
	nop
.L80291DA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291DB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0100
	li      $a1, 0x3F000000
	li      $a2, 0x3F000000
	jal     vecf_set
	li      $a3, 0x3F000000
	la.u    $a0, _camera_bss+0x540
	li.u    $a1, 0x3C23D70A
	li.l    $a1, 0x3C23D70A
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x00DC
	addu    $a2, $a1, $0
	jal     vecf_set
	addu    $a3, $a1, $0
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0094
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lw      $t6, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	lwc1    $f6, 0x0008($t7)
	lwc1    $f4, 0x0008($t6)
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x00B8
	sub.s   $f8, $f4, $f6
	li      $a1, 0x0000
	li      $a3, 0x0000
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	mtc1    $0, $f10
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	swc1    $f10, 0x012C($t8)
	mtc1    $0, $f16
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	swc1    $f16, 0x0124($t9)
	b       .L80291E74
	nop
.L80291E74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80291E84:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	addiu   $a0, $sp, 0x0024
	li      $a1, 0xC4160000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0xC3C80000
	lui     $at, %hi(camera_803373D8)
	lwc1    $f4, %lo(camera_803373D8)($at)
	la.u    $a0, _camera_bss+0x540
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0094
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0024
	jal     camera_80289610
	swc1    $f4, 0x0010($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x00BC
	li      $a1, 0x0000
	jal     camera_802899CC
	li      $a2, 0x40000000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x00C0
	li      $a1, 0xC3480000
	jal     camera_802899CC
	li      $a2, 0x40C00000
	b       .L80291F08
	nop
.L80291F08:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80291F18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $a0, 0x0124
	jal     camera_802899CC
	li      $a1, 0x41700000
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	addiu   $a0, $t6, 0x0094
	lw      $a2, 0x0124($t6)
	jal     camera_802899CC
	li      $a1, 0xC4FA0000
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0124($t7)
	addiu   $a0, $t7, 0x0098
	li      $a1, 0x44960000
	div.s   $f8, $f4, $f6
	mfc1    $a2, $f8
	jal     camera_802899CC
	nop
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f10, 0x0124($t8)
	addiu   $a0, $t8, 0x009C
	li      $a1, 0x447A0000
	div.s   $f18, $f10, $f16
	mfc1    $a2, $f18
	jal     camera_802899CC
	nop
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	addiu   $a0, $t9, 0x00B8
	lw      $a2, 0x0124($t9)
	jal     camera_802899CC
	li      $a1, 0x0000
	la.u    $t0, _camera_bss+0x540
	la.l    $t0, _camera_bss+0x540
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0124($t0)
	addiu   $a0, $t0, 0x00BC
	li      $a1, 0x44960000
	div.s   $f8, $f4, $f6
	mfc1    $a2, $f8
	jal     camera_802899CC
	nop
	la.u    $t1, _camera_bss+0x540
	la.l    $t1, _camera_bss+0x540
	li      $at, 0x3FC00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0124($t1)
	addiu   $a0, $t1, 0x00C0
	li      $a1, 0x447A0000
	div.s   $f18, $f10, $f16
	mfc1    $a2, $f18
	jal     camera_802899CC
	nop
	b       .L80292028
	nop
.L80292028:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292038:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x012C
	li      $a1, 0x42B40000
	jal     camera_802899CC
	li      $a2, 0x40200000
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	la.u    $a2, _camera_bss+0x540
	la.l    $a2, _camera_bss+0x540
	addiu   $a2, $a2, 0x0094
	addiu   $a0, $sp, 0x0034
	addiu   $a1, $t6, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t6, 0x0010
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	la.u    $a2, _camera_bss+0x540
	la.l    $a2, _camera_bss+0x540
	addiu   $a2, $a2, 0x00B8
	addiu   $a0, $sp, 0x0028
	addiu   $a1, $t7, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t7, 0x0010
	lw      $a1, 0x0040($sp)
	addiu   $t8, $sp, 0x0020
	sw      $t8, 0x0010($sp)
	addiu   $a0, $sp, 0x0034
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	lw      $a2, 0x012C($t9)
	addiu   $a0, $sp, 0x0024
	jal     camera_802899CC
	li      $a1, 0x0000
	lw      $a1, 0x0040($sp)
	lh      $t0, 0x0020($sp)
	addiu   $a0, $sp, 0x0034
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
	lui     $at, %hi(camera_803373DC)
	lwc1    $f4, %lo(camera_803373DC)($at)
	lw      $a0, 0x0040($sp)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0034
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lw      $a0, 0x0040($sp)
	li.u    $a3, 0x3F4CCCCD
	li.l    $a3, 0x3F4CCCCD
	addiu   $a1, $sp, 0x0028
	li      $a2, 0x3F000000
	addiu   $a0, $a0, 0x0004
	jal     camera_80289610
	swc1    $f6, 0x0010($sp)
	b       .L80292154
	nop
.L80292154:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

/* void camera_80292164(struct camera *cam) */
.globl camera_80292164
camera_80292164:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	la.u    $a0, camera_80291DB0
	la.l    $a0, camera_80291DB0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80291E84
	la.l    $a0, camera_80291E84
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x008C
	la.u    $a0, camera_80291F18
	la.l    $a0, camera_80291F18
	lw      $a1, 0x0018($sp)
	li      $a2, 0x008D
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292038
	la.l    $a0, camera_80292038
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       .L802921EC
	nop
.L802921EC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802921FC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	mtc1    $0, $f4
	addiu   $t6, $sp, 0x0020
	swc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x003C($sp)
	addiu   $t7, $sp, 0x0020
	swc1    $f6, 0x0008($t7)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	addiu   $t8, $sp, 0x0020
	swc1    $f8, 0x0004($t8)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	addiu   $a0, $sp, 0x002C
	addiu   $a2, $sp, 0x0020
	addiu   $a1, $t9, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t9, 0x0010
	lwc1    $f10, 0x0040($sp)
	lw      $a0, 0x0038($sp)
	addiu   $a1, $sp, 0x002C
	mfc1    $a2, $f10
	mfc1    $a3, $f10
	swc1    $f10, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	b       .L8029227C
	nop
.L8029227C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8029228C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	addiu   $a0, $sp, 0x0020
	jal     camera_802893F4
	li      $a1, 0x44160000
	addiu   $a0, $sp, 0x0026
	li      $a1, 0x1000
	jal     camera_802894B4
	li      $a2, 0x0010
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t7, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	b       .L80292314
	nop
.L80292314:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80292324:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	li      $t6, 0x0200
	sw      $t6, 0x0010($sp)
	li      $a2, 0x0000
	move    $a3, $0
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       .L80292360
	nop
.L80292360:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80292370:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	li      $a2, 0xC1700000
	move    $a3, $0
	sw      $0, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       .L802923A8
	nop
.L802923A8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802923B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	li      $a2, 0x41A00000
	move    $a3, $0
	sw      $0, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       .L802923F0
	nop
.L802923F0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80292400:
	sw      $a0, 0x0000($sp)
	b       .L8029240C
	nop
.L8029240C:
	jr      $ra
	nop

camera_80292414:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	lw      $a0, 0x0018($sp)
	jal     camera_802921FC
	li      $a1, 0xC2C80000
	b       .L8029243C
	nop
.L8029243C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029244C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a2, 0x3CF5C28F
	li.l    $a2, 0x3CF5C28F
	lw      $a0, 0x0018($sp)
	jal     camera_802921FC
	li      $a1, 0xC3480000
	b       .L80292474
	nop
.L80292474:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292484:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0200
	li      $a1, 0x0028
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       .L802924A8
	nop
.L802924A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_802924B8(struct camera *cam) */
.globl camera_802924B8
camera_802924B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lui     $at, %hi(camera_8032DF34)
	sh      $0, %lo(camera_8032DF34)($at)
	jal     camera_8029AB94
	li      $a0, 0x0002
	la.u    $a0, camera_80292414
	la.l    $a0, camera_80292414
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x0014
	la.u    $a0, camera_8029228C
	la.l    $a0, camera_8029228C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x0027
	la.u    $a0, camera_80292484
	la.l    $a0, camera_80292484
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x0028
	lw      $t8, 0x0018($sp)
	li      $at, 0x00AF
	lbu     $t9, 0x0030($t8)
	beq     $t9, $at, .L802925AC
	nop
	la.u    $a0, camera_8029244C
	la.l    $a0, camera_8029244C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x004B
	jal     camera_8029A2F8
	li      $a3, 0x0066
	la.u    $a0, camera_80292324
	la.l    $a0, camera_80292324
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0032
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292370
	la.l    $a0, camera_80292370
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0032
	jal     camera_8029A2F8
	li      $a3, 0x0050
	la.u    $a0, camera_802923B8
	la.l    $a0, camera_802923B8
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0046
	jal     camera_8029A2F8
	li      $a3, 0x005A
	b       .L80292610
	nop
.L802925AC:
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	li      $at, 0x1307
	lw      $t1, 0x0000($t0)
	beq     $t1, $at, .L80292610
	nop
	li      $at, 0x1303
	beq     $t1, $at, .L80292610
	nop
	li      $at, 0x1302
	beq     $t1, $at, .L80292610
	nop
	li      $t2, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t2, %lo(_camera_bss+0x53C)($at)
	lw      $t3, 0x0018($sp)
	sb      $0, 0x0030($t3)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
	lui     $t4, %hi(_camera_bss+0x32A)
	lh      $t4, %lo(_camera_bss+0x32A)($t4)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t5, $t4, 0x4000
	sh      $t5, %lo(_camera_bss+0x32A)($at)
.L80292610:
	b       .L80292618
	nop
.L80292618:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292628:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0030($sp)
	addiu   $t6, $sp, 0x002C
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a3, $sp, 0x002E
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lh      $t7, 0x002C($sp)
	lh      $t8, 0x0036($sp)
	subu    $t9, $t7, $t8
	sh      $t9, 0x0026($sp)
	lh      $t0, 0x0026($sp)
	andi    $t1, $t0, 0x8000
	beqz    $t1, .L80292690
	nop
	lh      $t2, 0x0026($sp)
	subu    $t3, $0, $t2
	sh      $t3, 0x0026($sp)
.L80292690:
	lh      $t4, 0x0026($sp)
	lh      $t5, 0x003A($sp)
	slt     $at, $t5, $t4
	beqz    $at, .L802926C4
	nop
	lh      $t6, 0x0036($sp)
	sh      $t6, 0x002C($sp)
	lh      $t7, 0x002C($sp)
	lw      $t8, 0x0030($sp)
	sh      $t7, 0x003A($t8)
	lh      $t9, 0x002C($sp)
	lw      $t0, 0x0030($sp)
	sh      $t9, 0x0002($t0)
.L802926C4:
	b       .L802926CC
	nop
.L802926CC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_802926DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(save_level)
	lbu     $t6, %lo(save_level)($t6)
	li      $at, 0x0004
	bne     $t6, $at, .L80292720
	nop
	lui     $t7, %hi(course_index)
	lh      $t7, %lo(course_index)($t7)
	li      $at, 0x0003
	bne     $t7, $at, .L80292720
	nop
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	jal     camera_80292628
	li      $a2, 0x4000
.L80292720:
	lui     $t8, %hi(save_level)
	lbu     $t8, %lo(save_level)($t8)
	li      $at, 0x0001
	bne     $t8, $at, .L80292758
	nop
	lui     $t9, %hi(course_index)
	lh      $t9, %lo(course_index)($t9)
	li      $at, 0x0009
	bne     $t9, $at, .L80292758
	nop
	lw      $a0, 0x0020($sp)
	li      $a1, -0x8000
	jal     camera_80292628
	li      $a2, 0x5000
.L80292758:
	lui     $t0, %hi(save_level)
	lbu     $t0, %lo(save_level)($t0)
	li      $at, 0x0005
	bne     $t0, $at, .L80292790
	nop
	lui     $t1, %hi(course_index)
	lh      $t1, %lo(course_index)($t1)
	li      $at, 0x000B
	bne     $t1, $at, .L80292790
	nop
	lw      $a0, 0x0020($sp)
	li      $a1, -0x8000
	jal     camera_80292628
	li      $a2, 0x0800
.L80292790:
	lw      $a1, 0x0020($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0148
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	la.u    $t3, _camera_bss+0x540
	la.l    $t3, _camera_bss+0x540
	li      $t2, 0x2000
	sh      $t2, 0x013C($t3)
	b       .L802927C0
	nop
.L802927C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802927D0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	addiu   $a0, $sp, 0x0024
	lw      $a1, 0x0004($t6)
	add.s   $f8, $f4, $f6
	lw      $a3, 0x000C($t6)
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	lui     $at, %hi(camera_803373E0)
	lwc1    $f10, %lo(camera_803373E0)($at)
	la.u    $a0, _camera_bss+0x540
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0148
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0024
	jal     camera_80289610
	swc1    $f10, 0x0010($sp)
	lw      $a0, 0x0030($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0148
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	b       .L80292858
	nop
.L80292858:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80292868:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	li      $t6, 0x1800
	sh      $t6, 0x0026($sp)
	lui     $t7, %hi(save_level)
	lbu     $t7, %lo(save_level)($t7)
	li      $at, 0x0006
	bne     $t7, $at, .L802928A4
	nop
	lui     $t8, %hi(course_index)
	lh      $t8, %lo(course_index)($t8)
	li      $at, 0x000A
	beq     $t8, $at, .L802928CC
	nop
.L802928A4:
	lui     $t9, %hi(save_level)
	lbu     $t9, %lo(save_level)($t9)
	li      $at, 0x0004
	bne     $t9, $at, .L802928D4
	nop
	lui     $t0, %hi(course_index)
	lh      $t0, %lo(course_index)($t0)
	li      $at, 0x000E
	bne     $t0, $at, .L802928D4
	nop
.L802928CC:
	li      $t1, 0x0800
	sh      $t1, 0x0026($sp)
.L802928D4:
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0030($sp)
	addiu   $t2, $sp, 0x002C
	sw      $t2, 0x0010($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a3, $sp, 0x002E
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $sp, 0x0028
	jal     camera_802893F4
	li      $a1, 0x44480000
	addiu   $a0, $sp, 0x002E
	lh      $a1, 0x0026($sp)
	jal     camera_802894B4
	li      $a2, 0x0010
	lw      $t3, 0x0030($sp)
	addiu   $a0, $sp, 0x002C
	li      $a2, 0x0008
	jal     camera_802894B4
	lh      $a1, 0x0002($t3)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0030($sp)
	lh      $t4, 0x002C($sp)
	lw      $a2, 0x0028($sp)
	lh      $a3, 0x002E($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t4, 0x0010($sp)
	b       .L80292964
	nop
.L80292964:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80292974:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3ECCCCCD
	li.l    $a2, 0x3ECCCCCD
	addiu   $a0, $sp, 0x0020
	jal     camera_802893F4
	li      $a1, 0x43700000
	lw      $t7, 0x0028($sp)
	addiu   $a0, $sp, 0x0024
	li      $a2, 0x0008
	jal     camera_802894B4
	lh      $a1, 0x0002($t7)
	addiu   $a0, $sp, 0x0026
	li      $a1, 0x1000
	jal     camera_802894B4
	li      $a2, 0x0005
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t8, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	b       .L80292A10
	nop
.L80292A10:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80292A20:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x0009
	b       .L80292A3C
	nop
.L80292A3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292A4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0300
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       .L80292A70
	nop
.L80292A70:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80292A80(struct camera *cam) */
.globl camera_80292A80
camera_80292A80:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	li      $at, 0x1303
	lw      $t9, 0x0000($t8)
	bne     $t9, $at, .L80292B50
	nop
	la.u    $a0, camera_802926DC
	la.l    $a0, camera_802926DC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802927D0
	la.l    $a0, camera_802927D0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292868
	la.l    $a0, camera_80292868
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x003E
	la.u    $a0, camera_80292974
	la.l    $a0, camera_80292974
	lw      $a1, 0x0018($sp)
	li      $a2, 0x003F
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292A20
	la.l    $a0, camera_80292A20
	lw      $a1, 0x0018($sp)
	li      $a2, 0x003F
	jal     camera_8029A2F8
	li      $a3, 0x003F
	la.u    $a0, camera_80292A4C
	la.l    $a0, camera_80292A4C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0046
	jal     camera_8029A2F8
	li      $a3, 0x0046
	b       .L80292BE0
	nop
.L80292B50:
	la.u    $a0, camera_802926DC
	la.l    $a0, camera_802926DC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802927D0
	la.l    $a0, camera_802927D0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292868
	la.l    $a0, camera_80292868
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x0020
	la.u    $a0, camera_80292974
	la.l    $a0, camera_80292974
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0021
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80292A20
	la.l    $a0, camera_80292A20
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0021
	jal     camera_8029A2F8
	li      $a3, 0x0021
	la.u    $a0, camera_80292A4C
	la.l    $a0, camera_80292A4C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x0028
.L80292BE0:
	jal     camera_80288888
	li      $a0, 0x0001
	b       .L80292BF0
	nop
.L80292BF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292C00:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0148
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	li      $at, 0x42820000
	mtc1    $at, $f4
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	swc1    $f4, 0x012C($t6)
	lw      $t7, 0x0028($sp)
	li      $at, 0x0001
	lbu     $t8, 0x0000($t7)
	bne     $t8, $at, .L80292C88
	nop
	lw      $t9, 0x0028($sp)
	addiu   $a0, $sp, 0x001C
	lw      $a1, 0x0028($t9)
	lw      $a2, 0x0068($t9)
	jal     vecf_set
	lw      $a3, 0x002C($t9)
	lw      $a1, 0x0028($sp)
	addiu   $a0, $sp, 0x001C
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	lw      $t0, 0x0028($sp)
	sh      $v0, 0x0002($t0)
	lw      $t1, 0x0028($sp)
	lh      $t2, 0x0002($t1)
	sh      $t2, 0x003A($t1)
.L80292C88:
	lui     $t3, %hi(save_level)
	lbu     $t3, %lo(save_level)($t3)
	li      $at, 0x0006
	bne     $t3, $at, .L80292CC0
	nop
	lui     $t4, %hi(course_index)
	lh      $t4, %lo(course_index)($t4)
	li      $at, 0x0004
	bne     $t4, $at, .L80292CC0
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x5600
	jal     camera_80292628
	li      $a2, 0x0800
.L80292CC0:
	lui     $t5, %hi(save_level)
	lbu     $t5, %lo(save_level)($t5)
	li      $at, 0x0002
	bne     $t5, $at, .L80292CF8
	nop
	lui     $t6, %hi(course_index)
	lh      $t6, %lo(course_index)($t6)
	li      $at, 0x000C
	bne     $t6, $at, .L80292CF8
	nop
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	jal     camera_80292628
	li      $a2, 0x0800
.L80292CF8:
	lui     $t7, %hi(save_level)
	lbu     $t7, %lo(save_level)($t7)
	li      $at, 0x0001
	bne     $t7, $at, .L80292D30
	nop
	lui     $t8, %hi(course_index)
	lh      $t8, %lo(course_index)($t8)
	li      $at, 0x000A
	bne     $t8, $at, .L80292D30
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x2000
	jal     camera_80292628
	li      $a2, 0x0800
.L80292D30:
	lui     $t9, %hi(save_level)
	lbu     $t9, %lo(save_level)($t9)
	li      $at, 0x0003
	bne     $t9, $at, .L80292D68
	nop
	lui     $t0, %hi(course_index)
	lh      $t0, %lo(course_index)($t0)
	li      $at, 0x000F
	bne     $t0, $at, .L80292D68
	nop
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	jal     camera_80292628
	li      $a2, 0x0800
.L80292D68:
	b       .L80292D70
	nop
.L80292D70:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80292D80:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	addiu   $a0, $sp, 0x0020
	jal     camera_802893F4
	li      $a1, 0x44160000
	addiu   $a0, $sp, 0x0026
	li      $a1, 0x1000
	jal     camera_802894B4
	li      $a2, 0x0010
	lw      $t7, 0x0028($sp)
	addiu   $a0, $sp, 0x0024
	li      $a2, 0x0008
	jal     camera_802894B4
	lh      $a1, 0x0002($t7)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t8, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	b       .L80292E1C
	nop
.L80292E1C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80292E2C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	addiu   $a0, $sp, 0x0024
	lw      $a1, 0x0004($t6)
	add.s   $f8, $f4, $f6
	lw      $a3, 0x000C($t6)
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	lui     $at, %hi(camera_803373E4)
	lwc1    $f10, %lo(camera_803373E4)($at)
	la.u    $a0, _camera_bss+0x540
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0148
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0024
	jal     camera_80289610
	swc1    $f10, 0x0010($sp)
	lw      $a0, 0x0030($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0148
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	b       .L80292EB4
	nop
.L80292EB4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80292EC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0148
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	lh      $t7, 0x0160($t6)
	addiu   $t8, $t7, -0x001D
	sh      $t8, 0x0160($t6)
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	lh      $t0, 0x0162($t9)
	addiu   $t1, $t0, 0x001D
	sh      $t1, 0x0162($t9)
	la.u    $t2, _camera_bss+0x540
	la.l    $t2, _camera_bss+0x540
	lh      $a1, 0x0160($t2)
	lh      $a2, 0x0162($t2)
	jal     camera_802909D0
	lw      $a0, 0x0018($sp)
	b       .L80292F30
	nop
.L80292F30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80292F40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     camera_80292EC4
	lw      $a0, 0x0020($sp)
	lui     $a1, %hi(camera_8032DF60)
	la.u    $t6, _camera_bss+0x540
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	la.l    $t6, _camera_bss+0x540
	lw      $a2, 0x012C($t6)
	sw      $0, 0x0010($sp)
	move    $a3, $0
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       .L80292F88
	nop
.L80292F88:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80292F98:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	li      $t6, 0x0080
	sw      $t6, 0x0010($sp)
	li      $a2, 0x0000
	move    $a3, $0
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       .L80292FD4
	nop
.L80292FD4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80292FE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0400
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       .L80293008
	nop
.L80293008:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80293018(struct camera *cam) */
.globl camera_80293018
camera_80293018:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	la.u    $a0, camera_80292C00
	la.l    $a0, camera_80292C00
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80292E2C
	la.l    $a0, camera_80292E2C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x001E
	la.u    $a0, camera_80292D80
	la.l    $a0, camera_80292D80
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x001E
	la.u    $a0, camera_80292F40
	la.l    $a0, camera_80292F40
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0037
	jal     camera_8029A2F8
	li      $a3, 0x007C
	la.u    $a0, camera_80292F98
	la.l    $a0, camera_80292F98
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0037
	jal     camera_8029A2F8
	li      $a3, 0x007C
	la.u    $a0, camera_80292FE4
	la.l    $a0, camera_80292FE4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x0028
	jal     camera_8029AB94
	li      $a0, 0x0002
	jal     camera_80288888
	li      $a0, 0x0005
	b       .L802930E0
	nop
.L802930E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802930F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lw      $a0, 0x0018($sp)
	la.u    $a2, _camera_bss+0x540
	la.l    $a2, _camera_bss+0x540
	addiu   $a2, $a2, 0x0124
	addiu   $a1, $t6, 0x0004
	addiu   $a3, $t6, 0x0010
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lw      $a0, 0x0018($sp)
	la.u    $a2, _camera_bss+0x540
	la.l    $a2, _camera_bss+0x540
	addiu   $a2, $a2, 0x0100
	addiu   $a1, $t7, 0x0004
	addiu   $a3, $t7, 0x0010
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	b       .L80293154
	nop
.L80293154:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293164:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0124
	li      $a1, 0x42180000
	li      $a2, 0x432B0000
	jal     vecf_set
	li      $a3, 0xC3780000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0100
	li      $a1, 0xC2640000
	li      $a2, 0x424C0000
	jal     vecf_set
	li      $a3, 0x433B0000
	b       .L802931B0
	nop
.L802931B0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802931C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0124
	li      $a1, 0xC3320000
	li      $a2, 0x42780000
	jal     vecf_set
	li      $a3, 0xC3040000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a1, 0x43958000
	li.l    $a1, 0x43958000
	addiu   $a0, $a0, 0x0100
	li      $a2, 0x42B60000
	jal     vecf_set
	li      $a3, 0x42680000
	b       .L80293210
	nop
.L80293210:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293220:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $t6, 0x2800
	lui     $at, %hi(_camera_bss+0x22C)
	sh      $t6, %lo(_camera_bss+0x22C)($at)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x43BA8000
	li.l    $a2, 0x43BA8000
	addiu   $a0, $a0, 0x0124
	li      $a1, 0x42B20000
	jal     vecf_set
	li      $a3, 0xC3980000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0100
	li      $a1, 0x0000
	li      $a2, 0x42FE0000
	jal     vecf_set
	li      $a3, 0x0000
	b       .L8029327C
	nop
.L8029327C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029328C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_camera_bss+0x22C)
	sh      $0, %lo(_camera_bss+0x22C)($at)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a3, 0xC4284000
	li.l    $a3, 0xC4284000
	addiu   $a0, $a0, 0x0124
	li      $a1, 0x43070000
	jal     vecf_set
	li      $a2, 0x431E0000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0100
	li      $a1, 0xC1A00000
	li      $a2, 0x43070000
	jal     vecf_set
	li      $a3, 0xC3460000
	b       .L802932E4
	nop
.L802932E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802932F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0180
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       .L80293318
	nop
.L80293318:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293328:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80288888
	li      $a0, 0x0001
	b       .L80293344
	nop
.L80293344:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293354:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	lw      $a0, 0x0018($sp)
	jal     camera_802921FC
	li      $a1, 0x0000
	b       .L8029337C
	nop
.L8029337C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8029338C(struct camera *cam) */
.globl camera_8029338C
camera_8029338C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_8029228C
	la.l    $a0, camera_8029228C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x000A
	la.u    $a0, camera_80293354
	la.l    $a0, camera_80293354
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x000A
	la.u    $a0, camera_80293164
	la.l    $a0, camera_80293164
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802931C0
	la.l    $a0, camera_802931C0
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0014
	jal     camera_8029A2F8
	li      $a3, 0x0014
	la.u    $a0, camera_80293220
	la.l    $a0, camera_80293220
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0023
	jal     camera_8029A2F8
	li      $a3, 0x0023
	la.u    $a0, camera_8029328C
	la.l    $a0, camera_8029328C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0034
	jal     camera_8029A2F8
	li      $a3, 0x0034
	la.u    $a0, camera_802930F0
	la.l    $a0, camera_802930F0
	lw      $a1, 0x0018($sp)
	li      $a2, 0x000B
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802932F4
	la.l    $a0, camera_802932F4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0036
	jal     camera_8029A2F8
	li      $a3, 0x0036
	la.u    $a0, camera_80293328
	la.l    $a0, camera_80293328
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0034
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       .L80293478
	nop
.L80293478:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293488:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029ABB0
	li      $a0, 0x0002
	b       .L802934A4
	nop
.L802934A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802934B4:
	sw      $a0, 0x0000($sp)
	lui     $t7, %hi(camera_8032DF30)
	lw      $t7, %lo(camera_8032DF30)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0088($t7)
	b       .L802934D0
	nop
.L802934D0:
	jr      $ra
	nop

camera_802934D8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	lh      $t7, 0x008A($t6)
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0078($t6)
	lh      $a3, 0x0088($t6)
	addiu   $a0, $t6, 0x004C
	sw      $t7, 0x0010($sp)
	jal     polar_to_cartesian
	addiu   $a1, $a1, 0x0010
	lui     $t8, %hi(camera_8032DF30)
	lw      $t8, %lo(camera_8032DF30)($t8)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x004C
	lw      $a1, 0x00A0($t8)
	lw      $a2, 0x00A4($t8)
	jal     vecf_set
	lw      $a3, 0x00A8($t8)
	b       .L80293538
	nop
.L80293538:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80293548:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li      $at, 0x43160000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x001C($sp)
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	lhu     $t7, 0x00AE($t6)
	lui     $at, %hi(math_sin)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x42F00000
	mtc1    $at, $f8
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	la.u    $t0, _camera_bss+0x540
	la.l    $t0, _camera_bss+0x540
	lh      $t1, 0x00AE($t0)
	addiu   $t2, $t1, -0x0200
	sh      $t2, 0x00AE($t0)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0008
	lw      $a1, 0x001C($sp)
	jal     camera_802893F4
	li      $a2, 0x3F000000
	b       .L802935D0
	nop
.L802935D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802935E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $t6, _camera_bss+0x540
	lw      $a0, 0x0018($sp)
	la.l    $t6, _camera_bss+0x540
	addiu   $a1, $t6, 0x004C
	addiu   $a2, $t6, 0x0004
	addiu   $a3, $t6, 0x0064
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	b       .L80293614
	nop
.L80293614:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293624:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0088
	li      $a1, 0x06C8
	jal     camera_802894B4
	li      $a2, 0x001E
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x3CA3D70A
	li.l    $a2, 0x3CA3D70A
	addiu   $a0, $a0, 0x000C
	jal     camera_802893F4
	li      $a1, 0xC3480000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a1, 0x44098000
	li.u    $a2, 0x3CA3D70A
	li.l    $a2, 0x3CA3D70A
	li.l    $a1, 0x44098000
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0078
	b       .L8029368C
	nop
.L8029368C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029369C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $a0, 0x000C
	jal     camera_802893F4
	li      $a1, 0x0000
	b       .L802936CC
	nop
.L802936CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802936DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802903B8
	li      $a0, 0x0001
	b       .L802936F8
	nop
.L802936F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293708:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802903B8
	move    $a0, $0
	b       .L80293724
	nop
.L80293724:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293734:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x43D70000
	mtc1    $at, $f4
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	swc1    $f4, 0x0078($t6)
	lui     $t7, %hi(camera_8032DF30)
	lw      $t7, %lo(camera_8032DF30)($t7)
	la.u    $t0, _camera_bss+0x540
	la.l    $t0, _camera_bss+0x540
	lw      $t8, 0x00C8($t7)
	addiu   $t9, $t8, -0x2000
	sh      $t9, 0x008A($t0)
	la.u    $t2, _camera_bss+0x540
	la.l    $t2, _camera_bss+0x540
	li      $t1, 0x0D90
	sh      $t1, 0x0088($t2)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x0000
	li      $a2, 0x42F00000
	jal     vecf_set
	li      $a3, 0xC4480000
	lui     $t3, %hi(camera_8032DF30)
	lw      $t3, %lo(camera_8032DF30)($t3)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0064
	lw      $a1, 0x00C4($t3)
	lw      $a2, 0x00C8($t3)
	jal     vecs_set
	lw      $a3, 0x00CC($t3)
	jal     camera_802934D8
	lw      $a0, 0x0018($sp)
	jal     camera_802935E0
	lw      $a0, 0x0018($sp)
	b       .L802937D8
	nop
.L802937D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802937E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(stage_index)
	lh      $s0, %lo(stage_index)($s0)
	li      $at, 0x001E
	beq     $s0, $at, .L80293820
	nop
	li      $at, 0x0021
	beq     $s0, $at, .L80293830
	nop
	b       .L80293840
	nop
.L80293820:
	li      $t6, 0x0043
	sh      $t6, 0x0026($sp)
	b       .L80293848
	nop
.L80293830:
	li      $t7, 0x005C
	sh      $t7, 0x0026($sp)
	b       .L80293848
	nop
.L80293840:
	li      $t8, 0x005D
	sh      $t8, 0x0026($sp)
.L80293848:
	jal     message_802D8C88
	lh      $a0, 0x0026($sp)
	b       .L80293858
	nop
.L80293858:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void camera_8029386C(struct camera *cam) */
.globl camera_8029386C
camera_8029386C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_802937E8
	la.l    $a0, camera_802937E8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L802938B0
	nop
	li      $t6, 0x7FFF
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t6, %lo(_camera_bss+0x53C)($at)
.L802938B0:
	b       .L802938B8
	nop
.L802938B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_802938C8(struct camera *cam) */
.globl camera_802938C8
camera_802938C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80293708
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sb      $0, 0x0030($t6)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x0014
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t8, $t7, 0x4000
	sh      $t8, %lo(_camera_bss+0x32A)($at)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	lui     $at, %hi(_camera_bss+0x252)
	lh      $t0, 0x0012($t9)
	addiu   $t1, $t0, 0x4000
	sh      $t1, %lo(_camera_bss+0x252)($at)
	lui     $t3, %hi(camera_8032DF30)
	lw      $t3, %lo(camera_8032DF30)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x0088($t3)
	b       .L80293934
	nop
.L80293934:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80293944(struct camera *cam) */
.globl camera_80293944
camera_80293944:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0002
	jal     camera_8029A37C
	move    $a1, $0
	lui     $t6, %hi(camera_8032DF30)
	lw      $t6, %lo(camera_8032DF30)($t6)
	beqz    $t6, .L80293AA4
	nop
	la.u    $a0, camera_802936DC
	la.l    $a0, camera_802936DC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80293734
	la.l    $a0, camera_80293734
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x0005
	la.u    $a0, camera_802934B4
	la.l    $a0, camera_802934B4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x0028
	la.u    $a0, camera_80293488
	la.l    $a0, camera_80293488
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0091
	jal     camera_8029A2F8
	li      $a3, 0x0091
	la.u    $a0, camera_802934D8
	la.l    $a0, camera_802934D8
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029369C
	la.l    $a0, camera_8029369C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x0063
	la.u    $a0, camera_80293624
	la.l    $a0, camera_80293624
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0064
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80293548
	la.l    $a0, camera_80293548
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, 0x008C
	la.u    $a0, camera_802935E0
	la.l    $a0, camera_802935E0
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0028
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80290A5C
	la.l    $a0, camera_80290A5C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x003C
	jal     camera_8029A2F8
	li      $a3, 0x003C
	la.u    $a0, camera_80290A5C
	la.l    $a0, camera_80290A5C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0052
	jal     camera_8029A2F8
	li      $a3, 0x0052
	la.u    $a0, camera_80290A5C
	la.l    $a0, camera_80290A5C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x006D
	jal     camera_8029A2F8
	li      $a3, 0x006D
	la.u    $a0, camera_80290A5C
	la.l    $a0, camera_80290A5C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x007F
	jal     camera_8029A2F8
	li      $a3, 0x007F
.L80293AA4:
	b       .L80293AAC
	nop
.L80293AAC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293ABC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80290864
	lw      $a0, 0x0018($sp)
	b       .L80293AD8
	nop
.L80293AD8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293AE8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	beqz    $t6, .L80293B58
	nop
	lui     $a1, %hi(camera_8032DF24)
	lw      $a1, %lo(camera_8032DF24)($a1)
	jal     camera_80287E28
	addiu   $a0, $sp, 0x0028
	lui     $t8, %hi(camera_8032DF24)
	lw      $t8, %lo(camera_8032DF24)($t8)
	addiu   $t7, $sp, 0x0028
	lwc1    $f4, 0x0004($t7)
	lwc1    $f6, 0x01FC($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($t7)
	lui     $at, %hi(camera_803373E8)
	lwc1    $f10, %lo(camera_803373E8)($at)
	lw      $a0, 0x0038($sp)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0028
	swc1    $f10, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
.L80293B58:
	b       .L80293B60
	nop
.L80293B60:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_80293B70:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	lw      $a0, 0x0038($sp)
	addiu   $a1, $sp, 0x0020
	jal     camera_802826A0
	addiu   $a2, $sp, 0x002C
	lui     $at, %hi(camera_803373EC)
	lwc1    $f4, %lo(camera_803373EC)($at)
	lw      $a0, 0x0038($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0020
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	lui     $at, %hi(camera_803373F0)
	lwc1    $f6, %lo(camera_803373F0)($at)
	lw      $a0, 0x0038($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x002C
	swc1    $f6, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	b       .L80293BE4
	nop
.L80293BE4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_80293BF4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802908E8
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x000F
	b       .L80293C1C
	nop
.L80293C1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80293C2C(struct camera *cam) */
.globl camera_80293C2C
camera_80293C2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80293ABC
	la.l    $a0, camera_80293ABC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80293AE8
	la.l    $a0, camera_80293AE8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lui     $t8, %hi(_camera_bss+0x6A8)
	lw      $t8, %lo(_camera_bss+0x6A8)($t8)
	beqz    $t8, .L80293C98
	nop
	li      $t9, 0x7FFF
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t9, %lo(_camera_bss+0x53C)($at)
.L80293C98:
	b       .L80293CA0
	nop
.L80293CA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80293CB0(struct camera *cam) */
.globl camera_80293CB0
camera_80293CB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x000B
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, .L80293D04
	nop
	jal     camera_80288718
	move    $a0, $0
	li      $at, 0x0002
	bne     $v0, $at, .L80293D04
	nop
	la.u    $a0, camera_80293B70
	la.l    $a0, camera_80293B70
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       .L80293D1C
	nop
.L80293D04:
	la.u    $a0, camera_80293BF4
	la.l    $a0, camera_80293BF4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
.L80293D1C:
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t9, $t8, 0x0001
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	lui     $t0, %hi(_camera_bss+0x32A)
	lh      $t0, %lo(_camera_bss+0x32A)($t0)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t1, $t0, 0x4000
	sh      $t1, %lo(_camera_bss+0x32A)($at)
	b       .L80293D4C
	nop
.L80293D4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80293D5C(struct camera *cam) */
.globl camera_80293D5C
camera_80293D5C:
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	li      $t8, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t8, %lo(_camera_bss+0x53C)($at)
	sb      $0, 0x0030($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80293D90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0xC573B000
	li.u    $a3, 0xC5B13800
	li.l    $a3, 0xC5B13800
	li.l    $a1, 0xC573B000
	li      $a2, 0x421C0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       .L80293DC4
	nop
.L80293DC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293DD4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	lw      $t7, 0x0020($sp)
	li      $at, 0x3F000000
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x0014($t7)
	mtc1    $at, $f18
	sub.s   $f16, $f8, $f10
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f4, $f10
	swc1    $f6, 0x0008($t7)
	lui     $a1, %hi(camera_8032DF60)
	lui     $at, %hi(camera_803373F4)
	lwc1    $f8, %lo(camera_803373F4)($at)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	li.u    $a2, 0x3D4CCCCD
	li.u    $a3, 0x3ECCCCCD
	li.l    $a3, 0x3ECCCCCD
	li.l    $a2, 0x3D4CCCCD
	swc1    $f8, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	b       .L80293E6C
	nop
.L80293E6C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_80293E7C(struct camera *cam) */
.globl camera_80293E7C
camera_80293E7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80293D90
	la.l    $a0, camera_80293D90
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80293DD4
	la.l    $a0, camera_80293DD4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       .L80293EC8
	nop
.L80293EC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80293ED8(struct camera *cam) */
.globl camera_80293ED8
camera_80293ED8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	li      $t8, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t8, %lo(_camera_bss+0x53C)($at)
	lw      $t9, 0x0018($sp)
	sb      $0, 0x0030($t9)
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       .L80293F1C
	nop
.L80293F1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293F2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x45B63000
	li.u    $a3, 0x45791000
	li.l    $a3, 0x45791000
	li.l    $a1, 0x45B63000
	li      $a2, 0x42000000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       .L80293F60
	nop
.L80293F60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80293F70(struct camera *cam) */
.globl camera_80293F70
camera_80293F70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80293F2C
	la.l    $a0, camera_80293F2C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80293DD4
	la.l    $a0, camera_80293DD4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       .L80293FBC
	nop
.L80293FBC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80293FCC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	lui     $a1, %hi(camera_8032DF24)
	lw      $a1, %lo(camera_8032DF24)($a1)
	jal     camera_80287E28
	addiu   $a0, $a0, 0x0028
	jal     camera_80290864
	lw      $a0, 0x0018($sp)
	lui     $at, %hi(_camera_bss+0x84)
	lwc1    $f4, %lo(_camera_bss+0x84)($at)
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	swc1    $f4, 0x0054($t6)
	b       .L80294014
	nop
.L80294014:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294024:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x3E19999A
	li.l    $a2, 0x3E19999A
	lw      $a1, 0x00A0($t6)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0004
	lui     $t7, %hi(camera_8032DF24)
	lw      $t7, %lo(camera_8032DF24)($t7)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x3E19999A
	li.l    $a2, 0x3E19999A
	lw      $a1, 0x00A8($t7)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x000C
	b       .L80294078
	nop
.L80294078:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294088:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	lw      $a1, 0x00A4($t6)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0008
	b       .L802940BC
	nop
.L802940BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802940CC:
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	lwc1    $f6, 0x002C($t7)
	lwc1    $f4, 0x00A4($t6)
	lui     $at, %hi(camera_803373F8)
	lwc1    $f10, %lo(camera_803373F8)($at)
	sub.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f16, $f6
	swc1    $f18, 0x0008($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_8029410C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0040($sp)
	sw      $s1, 0x0020($sp)
	sw      $s0, 0x001C($sp)
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	sw      $t6, 0x0030($sp)
	lw      $t7, 0x0030($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0028
	lw      $a1, 0x0164($t7)
	lw      $a2, 0x0168($t7)
	jal     vecf_set
	lw      $a3, 0x016C($t7)
	lw      $a1, 0x0040($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $t8, $sp, 0x0038
	sw      $t8, 0x0010($sp)
	addiu   $a0, $a0, 0x0028
	addiu   $a2, $sp, 0x003C
	addiu   $a3, $sp, 0x003A
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0040($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0028
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	sh      $v0, 0x0036($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0028
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0004
	sh      $v0, 0x0038($sp)
	lh      $t9, 0x0038($sp)
	lh      $t0, 0x0036($sp)
	mtc1    $0, $f8
	subu    $t1, $t9, $t0
	addiu   $t2, $t1, 0x4000
	mtc1    $t2, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    .L802941E8
	nop
	b       .L802941FC
	move    $s1, $t2
.L802941E8:
	lh      $t3, 0x0038($sp)
	lh      $t4, 0x0036($sp)
	li      $t6, -0x4000
	subu    $t5, $t3, $t4
	subu    $s1, $t6, $t5
.L802941FC:
	lh      $t7, 0x0038($sp)
	lh      $t8, 0x0036($sp)
	mtc1    $0, $f18
	subu    $t9, $t7, $t8
	addiu   $t0, $t9, -0x4000
	mtc1    $t0, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    .L80294234
	nop
	b       .L80294248
	move    $s0, $t0
.L80294234:
	lh      $t1, 0x0038($sp)
	lh      $t2, 0x0036($sp)
	li      $t4, 0x4000
	subu    $t3, $t1, $t2
	subu    $s0, $t4, $t3
.L80294248:
	slt     $at, $s1, $s0
	beqz    $at, .L80294264
	nop
	lh      $t6, 0x0038($sp)
	addiu   $t5, $t6, 0x4000
	b       .L80294270
	sh      $t5, 0x0038($sp)
.L80294264:
	lh      $t7, 0x0038($sp)
	addiu   $t8, $t7, -0x4000
	sh      $t8, 0x0038($sp)
.L80294270:
	lw      $a1, 0x0040($sp)
	lh      $t9, 0x0038($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0028
	li      $a2, 0x43C80000
	li      $a3, 0x1000
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	lui     $t0, %hi(_camera_bss+0x32A)
	lh      $t0, %lo(_camera_bss+0x32A)($t0)
	li      $at, -0x0002
	and     $t1, $t0, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t1, %lo(_camera_bss+0x32A)($at)
	b       .L802942B8
	nop
.L802942B8:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x001C($sp)
	lw      $s1, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

camera_802942CC:
	sw      $a0, 0x0000($sp)
	li      $at, 0x42700000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f4, %lo(_camera_bss+0x84)($at)
	b       .L802942E8
	nop
.L802942E8:
	jr      $ra
	nop

/* void camera_802942F0(struct camera *cam) */
.globl camera_802942F0
camera_802942F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	la.u    $a0, camera_80293FCC
	la.l    $a0, camera_80293FCC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_8029410C
	la.l    $a0, camera_8029410C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001E
	jal     camera_8029A2F8
	li      $a3, 0x001E
	la.u    $a0, camera_80294024
	la.l    $a0, camera_80294024
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80294088
	la.l    $a0, camera_80294088
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x001D
	la.u    $a0, camera_802940CC
	la.l    $a0, camera_802940CC
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001E
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802942CC
	la.l    $a0, camera_802942CC
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001E
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t8, %hi(_camera_bss+0x6A8)
	lw      $t8, %lo(_camera_bss+0x6A8)($t8)
	beqz    $t8, .L802943BC
	nop
	li      $t9, 0x7FFF
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t9, %lo(_camera_bss+0x53C)($at)
.L802943BC:
	b       .L802943C4
	nop
.L802943C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_802943D4(struct camera *cam) */
.globl camera_802943D4
camera_802943D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802908E8
	lw      $a0, 0x0018($sp)
	li      $t6, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t6, %lo(_camera_bss+0x53C)($at)
	lw      $t7, 0x0018($sp)
	sb      $0, 0x0030($t7)
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	lwc1    $f4, 0x0054($t8)
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f4, %lo(_camera_bss+0x84)($at)
	b       .L80294418
	nop
.L80294418:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294428:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	lw      $a1, 0x0048($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $t6, $sp, 0x003C
	sw      $t6, 0x0010($sp)
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x0040
	addiu   $a3, $sp, 0x003E
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li      $at, 0x45FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0040($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L80294528
	nop
	lw      $t7, 0x0048($sp)
	li      $at, 0x0096
	lbu     $t8, 0x0030($t7)
	bne     $t8, $at, .L80294528
	nop
	li      $at, 0x40800000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($sp)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0040($sp)
	lh      $t9, 0x0052($sp)
	sh      $t9, 0x003E($sp)
	la.u    $t0, _camera_bss+0x540
	la.l    $t0, _camera_bss+0x540
	addiu   $a0, $t0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $t0, 0x0070
	lui     $t1, %hi(_camera_bss+0x32A)
	lh      $t1, %lo(_camera_bss+0x32A)($t1)
	li      $at, -0x0002
	and     $t2, $t1, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t2, %lo(_camera_bss+0x32A)($at)
	lui     $t3, %hi(stage_index)
	lh      $t3, %lo(stage_index)($t3)
	li      $at, 0x0024
	bne     $t3, $at, .L80294520
	nop
	lw      $t5, 0x0048($sp)
	la.u    $t4, _camera_bss+0x540
	la.l    $t4, _camera_bss+0x540
	lwc1    $f18, 0x0078($t4)
	lwc1    $f6, 0x0070($t4)
	lwc1    $f4, 0x002C($t5)
	lwc1    $f8, 0x0028($t5)
	sub.s   $f12, $f18, $f4
	jal     atan2
	sub.s   $f14, $f6, $f8
	sh      $v0, 0x003C($sp)
.L80294520:
	b       .L8029461C
	nop
.L80294528:
	lw      $t6, 0x0048($sp)
	li      $at, 0x0096
	lbu     $t7, 0x0030($t6)
	bne     $t7, $at, .L802945F0
	nop
	lw      $a0, 0x0048($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $t8, $sp, 0x002C
	sw      $t8, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	addiu   $a2, $sp, 0x0030
	addiu   $a3, $sp, 0x002E
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0048($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $t9, $sp, 0x0034
	sw      $t9, 0x0010($sp)
	addiu   $a1, $a1, 0x0070
	addiu   $a2, $sp, 0x0038
	addiu   $a3, $sp, 0x0036
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0010
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $sp, 0x0030
	jal     camera_802893F4
	lw      $a1, 0x0038($sp)
	addiu   $a0, $sp, 0x002E
	lh      $a1, 0x0036($sp)
	jal     camera_802894B4
	li      $a2, 0x000F
	addiu   $a0, $sp, 0x002C
	lh      $a1, 0x0034($sp)
	jal     camera_802894B4
	li      $a2, 0x000F
	lw      $a0, 0x0048($sp)
	lh      $t0, 0x002C($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0004
	lw      $a2, 0x0030($sp)
	lh      $a3, 0x002E($sp)
	addiu   $a0, $a0, 0x0010
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
	b       .L8029461C
	nop
.L802945F0:
	lui     $at, %hi(camera_803373FC)
	lwc1    $f10, %lo(camera_803373FC)($at)
	la.u    $t1, _camera_bss+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $t1, _camera_bss+0x540
	addiu   $a0, $t1, 0x0004
	addiu   $a1, $t1, 0x0070
	addu    $a3, $a2, $0
	jal     camera_80289610
	swc1    $f10, 0x0010($sp)
.L8029461C:
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $sp, 0x0040
	jal     camera_802893F4
	lw      $a1, 0x004C($sp)
	addiu   $a0, $sp, 0x003E
	lh      $a1, 0x0052($sp)
	jal     camera_802894B4
	li      $a2, 0x0020
	lw      $a1, 0x0048($sp)
	lh      $t2, 0x003C($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x003E($sp)
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t2, 0x0010($sp)
	lw      $a0, 0x0048($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0048($sp)
	lh      $a1, 0x0056($sp)
	jal     camera_802909D0
	lh      $a2, 0x005A($sp)
	lw      $t3, 0x0048($sp)
	addiu   $t4, $sp, 0x003C
	sw      $t4, 0x0010($sp)
	addiu   $a2, $sp, 0x0040
	addiu   $a3, $sp, 0x003E
	addiu   $a0, $t3, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t3, 0x0004
	lh      $t5, 0x003E($sp)
	slti    $at, $t5, -0x3000
	beqz    $at, .L802946C8
	nop
	li      $t6, -0x3000
	sh      $t6, 0x003E($sp)
.L802946C8:
	lh      $t7, 0x003E($sp)
	slti    $at, $t7, 0x3001
	bnez    $at, .L802946E0
	nop
	li      $t8, 0x3000
	sh      $t8, 0x003E($sp)
.L802946E0:
	lw      $t9, 0x0048($sp)
	lh      $t0, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	lh      $a3, 0x003E($sp)
	addiu   $a0, $t9, 0x0010
	addiu   $a1, $t9, 0x0004
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
	b       .L80294708
	nop
.L80294708:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_80294718:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80290784
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	li      $at, 0x41F00000
	mtc1    $at, $f4
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	swc1    $f4, 0x004C($t6)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	lui     $a1, %hi(camera_8032DF24)
	lw      $a1, %lo(camera_8032DF24)($a1)
	jal     camera_80287E28
	addiu   $a0, $a0, 0x0070
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x00D0
	move    $a1, $0
	move    $a2, $0
	jal     vecs_set
	move    $a3, $0
	b       .L80294794
	nop
.L80294794:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802947A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	lh      $t7, 0x00D2($t6)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43960000
	li      $a2, 0x2000
	move    $a3, $0
	jal     camera_80294428
	sw      $t7, 0x0010($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x00D2
	li      $a1, 0x0400
	jal     camera_8028976C
	li      $a2, 0x0011
	jal     camera_80288888
	li      $a0, 0x0001
	b       .L802947FC
	nop
.L802947FC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029480C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	mtc1    $0, $f10
	lwc1    $f6, 0x0000($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8029484C
	nop
	b       .L80294860
	mov.s   $f20, $f8
.L8029484C:
	lw      $t7, 0x0028($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0000($t7)
	sub.s   $f20, $f16, $f18
	neg.s   $f20, $f20
.L80294860:
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	lwc1    $f4, 0x004C($t8)
	div.s   $f6, $f20, $f4
	swc1    $f6, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     camera_802899CC
	lw      $a2, 0x0024($sp)
	b       .L8029488C
	nop
.L8029488C:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_802948A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss+0x308
	la.l    $a1, _camera_bss+0x308
	jal     camera_8028AC28
	addiu   $a0, $a0, 0x0010
	swc1    $f0, 0x001C($sp)
	li      $at, 0x45FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L80294978
	nop
	lw      $a0, 0x0020($sp)
	la.u    $t6, _camera_bss+0x308
	la.l    $t6, _camera_bss+0x308
	lw      $a1, 0x0000($t6)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0020($sp)
	la.u    $t7, _camera_bss+0x308
	la.l    $t7, _camera_bss+0x308
	lw      $a1, 0x0004($t7)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x0014
	lw      $a0, 0x0020($sp)
	la.u    $t8, _camera_bss+0x308
	la.l    $t8, _camera_bss+0x308
	lw      $a1, 0x0008($t8)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x0018
	lw      $a0, 0x0020($sp)
	la.u    $t9, _camera_bss+0x308
	la.l    $t9, _camera_bss+0x308
	lw      $a1, 0x000C($t9)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0020($sp)
	la.u    $t0, _camera_bss+0x308
	la.l    $t0, _camera_bss+0x308
	lw      $a1, 0x0010($t0)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x0008
	lw      $a0, 0x0020($sp)
	la.u    $t1, _camera_bss+0x308
	la.l    $t1, _camera_bss+0x308
	lw      $a1, 0x0014($t1)
	jal     camera_8029480C
	addiu   $a0, $a0, 0x000C
	b       .L802949BC
	nop
.L80294978:
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss+0x308
	la.l    $a1, _camera_bss+0x308
	addiu   $a1, $a1, 0x000C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss+0x308
	la.l    $a1, _camera_bss+0x308
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lui     $t2, %hi(_camera_bss+0x32A)
	lh      $t2, %lo(_camera_bss+0x32A)($t2)
	li      $at, -0x0002
	and     $t3, $t2, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t3, %lo(_camera_bss+0x32A)($at)
.L802949BC:
	la.u    $t4, _camera_bss+0x540
	la.l    $t4, _camera_bss+0x540
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($t4)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L802949FC
	nop
	la.u    $t5, _camera_bss+0x540
	la.l    $t5, _camera_bss+0x540
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x004C($t5)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x004C($t5)
.L802949FC:
	b       .L80294A04
	nop
.L80294A04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_80294A14(struct camera *cam) */
.globl camera_80294A14
camera_80294A14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	la.u    $a0, camera_80294718
	la.l    $a0, camera_80294718
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802947A4
	la.l    $a0, camera_802947A4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x008C
	la.u    $a0, camera_802948A0
	la.l    $a0, camera_802948A0
	lw      $a1, 0x0018($sp)
	li      $a2, 0x008D
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       .L80294A84
	nop
.L80294A84:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80294A94(struct camera *cam) */
.globl camera_80294A94
camera_80294A94:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $t6, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t6, %lo(_camera_bss+0x53C)($at)
	lw      $t7, 0x0018($sp)
	sb      $0, 0x0030($t7)
	jal     camera_802907F4
	lw      $a0, 0x0018($sp)
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t9, $t8, 0x0001
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	b       .L80294AD8
	nop
.L80294AD8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294AE8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0020
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	addiu   $a0, $sp, 0x0020
	li      $a2, 0x0008
	lh      $a1, 0x0012($t7)
	jal     camera_802894B4
	addiu   $a1, $a1, -0x3000
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t8, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t8, 0x0010($sp)
	b       .L80294B68
	nop
.L80294B68:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80294B78:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43C80000
	li      $a2, 0x1000
	li      $a3, 0x0300
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	b       .L80294BA4
	nop
.L80294BA4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80294BB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	li      $at, 0x428C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0074($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0074($t6)
	b       .L80294C18
	nop
.L80294C18:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294C28:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80294B78
	lw      $a0, 0x0018($sp)
	jal     camera_80288888
	li      $a0, 0x0004
	b       .L80294C4C
	nop
.L80294C4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80294C5C(struct camera *cam) */
.globl camera_80294C5C
camera_80294C5C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80294BB4
	la.l    $a0, camera_80294BB4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80294C28
	la.l    $a0, camera_80294C28
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	b       .L80294CB4
	nop
.L80294CB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294CC4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $t7, camera_8032F1F0
	la.l    $t7, camera_8032F1F0
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x001C
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x001C
	addiu   $a1, $t0, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t0, 0x0010
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       .L80294D38
	nop
.L80294D38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80294D48:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	li      $t6, -0x0400
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43C80000
	li      $a2, 0x1800
	jal     camera_80294428
	move    $a3, $0
	b       .L80294D78
	nop
.L80294D78:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80294D88:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80294AE8
	lw      $a0, 0x0018($sp)
	b       .L80294DA4
	nop
.L80294DA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80294DB4(struct camera *cam) */
.globl camera_80294DB4
camera_80294DB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80294CC4
	la.l    $a0, camera_80294CC4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80294D48
	la.l    $a0, camera_80294D48
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	jal     camera_80288888
	li      $a0, 0x0001
	b       .L80294E14
	nop
.L80294E14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294E24:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $t7, camera_8032F1FC
	la.l    $t7, camera_8032F1FC
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x001C
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x001C
	addiu   $a1, $t0, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t0, 0x0010
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       .L80294E98
	nop
.L80294E98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80294EA8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	li      $t6, 0x0400
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43C80000
	li      $a2, 0x1800
	jal     camera_80294428
	move    $a3, $0
	b       .L80294ED8
	nop
.L80294ED8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_80294EE8(struct camera *cam) */
.globl camera_80294EE8
camera_80294EE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80294E24
	la.l    $a0, camera_80294E24
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80294EA8
	la.l    $a0, camera_80294EA8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	jal     camera_80288888
	li      $a0, 0x0001
	b       .L80294F48
	nop
.L80294F48:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294F58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       .L80294F84
	nop
.L80294F84:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80294F94:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43C80000
	li      $a2, 0x2800
	li      $a3, 0x0200
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x009F
	lbu     $t7, 0x0030($t6)
	bne     $t7, $at, .L80294FD4
	nop
	jal     camera_80294AE8
	lw      $a0, 0x0020($sp)
.L80294FD4:
	b       .L80294FDC
	nop
.L80294FDC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_80294FEC(struct camera *cam) */
.globl camera_80294FEC
camera_80294FEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	lwc1    $f4, 0x0004($t6)
	swc1    $f4, 0x0070($t7)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	lwc1    $f6, 0x0008($t8)
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0074($t9)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	la.u    $t1, _camera_bss+0x540
	la.l    $t1, _camera_bss+0x540
	lwc1    $f16, 0x000C($t0)
	swc1    $f16, 0x0078($t1)
	la.u    $a0, camera_80294F58
	la.l    $a0, camera_80294F58
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80294F94
	la.l    $a0, camera_80294F94
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t2, %hi(_camera_bss+0x32A)
	lh      $t2, %lo(_camera_bss+0x32A)($t2)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t3, $t2, 0x0001
	sh      $t3, %lo(_camera_bss+0x32A)($at)
	jal     camera_80288888
	li      $a0, 0x0004
	b       .L802950A0
	nop
.L802950A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802950B0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	la.u    $t7, camera_8032F208
	la.l    $t7, camera_8032F208
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0020
	lw      $t9, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t9, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	addiu   $a0, $sp, 0x002C
	addiu   $a2, $sp, 0x0020
	addiu   $a1, $t0, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t0, 0x0010
	lui     $at, %hi(camera_80337400)
	lwc1    $f4, %lo(camera_80337400)($at)
	la.u    $a0, _camera_bss+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x002C
	jal     camera_80289610
	swc1    $f4, 0x0010($sp)
	b       .L80295130
	nop
.L80295130:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_80295140:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sdc1    $f20, 0x0018($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x43C80000
	li      $a2, 0x2800
	li      $a3, 0x0200
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lwc1    $f12, 0x0004($t6)
	jal     map_80381D3C
	lwc1    $f14, 0x000C($t6)
	swc1    $f0, 0x0030($sp)
	lui     $at, %hi(camera_80337404)
	lwc1    $f6, %lo(camera_80337404)($at)
	lwc1    $f4, 0x0030($sp)
	c.eq.s  $f4, $f6
	nop
	bc1t    .L802951D4
	nop
	li      $at, 0x43020000
	mtc1    $at, $f10
	lwc1    $f8, 0x0030($sp)
	lw      $t7, 0x0038($sp)
	add.s   $f20, $f8, $f10
	swc1    $f20, 0x0030($sp)
	lwc1    $f16, 0x0014($t7)
	c.lt.s  $f16, $f20
	nop
	bc1f    .L802951D4
	nop
	lwc1    $f18, 0x0030($sp)
	lw      $t8, 0x0038($sp)
	swc1    $f18, 0x0014($t8)
.L802951D4:
	b       .L802951DC
	nop
.L802951DC:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_802951F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0020
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lh      $t7, 0x0020($sp)
	addiu   $t8, $t7, 0x0100
	sh      $t8, 0x0020($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t9, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	b       .L80295260
	nop
.L80295260:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void camera_80295270(struct camera *cam) */
.globl camera_80295270
camera_80295270:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80294CC4
	la.l    $a0, camera_80294CC4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802951F0
	la.l    $a0, camera_802951F0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80295140
	la.l    $a0, camera_80295140
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802950B0
	la.l    $a0, camera_802950B0
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0032
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	jal     camera_80288888
	li      $a0, 0x0004
	b       .L80295300
	nop
.L80295300:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80295310:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x0006
	bne     $t6, $at, .L80295374
	nop
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a1, 0x451B5000
	li.u    $a2, 0xC4C6A000
	li.u    $a3, 0xC5263000
	li.l    $a3, 0xC5263000
	li.l    $a2, 0xC4C6A000
	li.l    $a1, 0x451B5000
	jal     vecf_set
	addiu   $a0, $a0, 0x0070
.L80295374:
	lui     $t7, %hi(stage_index)
	lh      $t7, %lo(stage_index)($t7)
	li      $at, 0x0007
	bne     $t7, $at, .L802953AC
	nop
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a1, 0x45516000
	li.u    $a2, 0xC58F6800
	li.l    $a2, 0xC58F6800
	li.l    $a1, 0x45516000
	addiu   $a0, $a0, 0x0070
	jal     vecf_set
	li      $a3, 0x45960000
.L802953AC:
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       .L802953CC
	nop
.L802953CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802953DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44960000
	li      $a2, 0x2000
	li      $a3, 0x0200
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	b       .L80295408
	nop
.L80295408:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void camera_80295418(struct camera *cam) */
.globl camera_80295418
camera_80295418:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80295310
	la.l    $a0, camera_80295310
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802953DC
	la.l    $a0, camera_802953DC
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	b       .L80295470
	nop
.L80295470:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80295480:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029051C
	lw      $a0, 0x0018($sp)
	jal     camera_80290784
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0028
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $t6, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	li      $a2, 0x44A00000
	lw      $a1, 0x0028($t6)
	jal     vecf_set
	lw      $a3, 0x002C($t6)
	b       .L802954DC
	nop
.L802954DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802954EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x000A
	b       .L80295508
	nop
.L80295508:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80295518:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $at, %hi(camera_80337408)
	lwc1    $f4, %lo(camera_80337408)($at)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss+0x540
	li.u    $a2, 0x3CA3D70A
	li.l    $a2, 0x3CA3D70A
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0070
	addu    $a3, $a2, $0
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	b       .L80295570
	nop
.L80295570:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80295580:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	jal     camera_8029AB94
	li      $a0, 0x0002
	li      $at, 0x42340000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f4, %lo(_camera_bss+0x84)($at)
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0094
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x00B8
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $a0, 0x0028($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0070
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0004
	lw      $a1, 0x0028($sp)
	lh      $t7, 0x0024($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	li      $a2, 0x44FA0000
	move    $a3, $0
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0014($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0014($t8)
	b       .L80295660
	nop
.L80295660:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80295670:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $a1, 0x0028($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $sp, 0x0020
	jal     camera_802893F4
	li      $a1, 0x44FA0000
	lw      $a1, 0x0028($sp)
	lh      $t7, 0x0024($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t8)
	lw      $t9, 0x0028($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0014($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0014($t9)
	li      $at, 0x42340000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f4, %lo(_camera_bss+0x84)($at)
	jal     camera_80288888
	li      $a0, 0x0001
	b       .L80295730
	nop
.L80295730:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80295740:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8027F8B8
	li      $a0, 0x0008
	b       .L8029575C
	nop
.L8029575C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029576C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0094
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x00B8
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	jal     camera_8027F8B8
	li      $a0, 0x0003
	b       .L802957B8
	nop
.L802957B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_802957C8(struct camera *cam) */
.globl camera_802957C8
camera_802957C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80295480
	la.l    $a0, camera_80295480
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80295518
	la.l    $a0, camera_80295518
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x001E
	la.u    $a0, camera_80295580
	la.l    $a0, camera_80295580
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001F
	jal     camera_8029A2F8
	li      $a3, 0x001F
	la.u    $a0, camera_80295670
	la.l    $a0, camera_80295670
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001F
	jal     camera_8029A2F8
	li      $a3, 0x008B
	la.u    $a0, camera_802954EC
	la.l    $a0, camera_802954EC
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0017
	jal     camera_8029A2F8
	li      $a3, 0x0017
	la.u    $a0, camera_8029576C
	la.l    $a0, camera_8029576C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x008C
	jal     camera_8029A2F8
	li      $a3, 0x008C
	la.u    $a0, camera_80295740
	la.l    $a0, camera_80295740
	lw      $a1, 0x0018($sp)
	li      $a2, 0x001F
	jal     camera_8029A2F8
	li      $a3, 0x008B
	b       .L80295884
	nop
.L80295884:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80295894(struct camera *cam) */
.globl camera_80295894
camera_80295894:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80293708
	lw      $a0, 0x0018($sp)
	jal     camera_80290104
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x001E
	b       .L802958C4
	nop
.L802958C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802958D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $t6, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	li      $a2, 0x44A00000
	lw      $a1, 0x0028($t6)
	jal     vecf_set
	lw      $a3, 0x002C($t6)
	b       .L80295920
	nop
.L80295920:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80295930(struct camera *cam) */
.globl camera_80295930
camera_80295930:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, camera_802958D4
	la.l    $a0, camera_802958D4
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lw      $a0, 0x0020($sp)
	li      $a1, 0x43480000
	li      $a2, 0x3000
	move    $a3, $0
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	jal     camera_80288888
	li      $a0, 0x0001
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lui     $at, %hi(camera_8033740C)
	lwc1    $f6, %lo(camera_8033740C)($at)
	lwc1    $f4, 0x0008($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    .L802959B4
	nop
	jal     camera_80293ED8
	lw      $a0, 0x0020($sp)
.L802959B4:
	b       .L802959BC
	nop
.L802959BC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802959CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	jal     camera_8028AC28
	addiu   $a1, $a1, 0x0004
	swc1    $f0, 0x0024($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0148
	jal     camera_8028AC28
	addiu   $a1, $a1, 0x0004
	li      $at, 0x43480000
	mtc1    $at, $f4
	nop
	add.s   $f6, $f0, $f4
	swc1    $f6, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	li      $a2, 0x1000
	li      $a3, 0x0300
	jal     camera_80294428
	sw      $0, 0x0010($sp)
	b       .L80295A48
	nop
.L80295A48:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80295A58:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     camera_80290BA4
	lw      $a0, 0x0020($sp)
	jal     obj_lib_802A4750
	li      $a0, 0x0006
	lw      $t6, 0x0020($sp)
	li      $at, 0x000B
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, .L80295ABC
	nop
	lw      $a1, 0x0020($sp)
	la.u    $a0, _camera_bss+0x308
	la.l    $a0, _camera_bss+0x308
	addiu   $a0, $a0, 0x000C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lw      $a1, 0x0020($sp)
	la.u    $a0, _camera_bss+0x308
	la.l    $a0, _camera_bss+0x308
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	b       .L80295AC4
	nop
.L80295ABC:
	jal     camera_80290864
	lw      $a0, 0x0020($sp)
.L80295AC4:
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	sh      $0, 0x013C($t8)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0124
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0128($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0128($t9)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	lui     $a1, %hi(camera_8032DF24)
	lw      $a1, %lo(camera_8032DF24)($a1)
	jal     camera_80287E28
	addiu   $a0, $a0, 0x0148
	lui     $t0, %hi(camera_8032DF24)
	lw      $t0, %lo(camera_8032DF24)($t0)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x01FC($t0)
	la.u    $t1, _camera_bss+0x540
	la.l    $t1, _camera_bss+0x540
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x014C($t1)
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x014C($t1)
	la.u    $t2, _camera_bss+0x540
	la.l    $t2, _camera_bss+0x540
	addiu   $a0, $t2, 0x0124
	jal     camera_8028AAD8
	addiu   $a1, $t2, 0x0148
	la.u    $t3, _camera_bss+0x540
	la.l    $t3, _camera_bss+0x540
	sh      $v0, 0x0162($t3)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	la.u    $a1, _camera_bss+0x178
	la.l    $a1, _camera_bss+0x178
	addiu   $a1, $a1, 0x000C
	jal     camera_8028AAD8
	addiu   $a0, $a0, 0x0004
	sh      $v0, 0x0018($sp)
	la.u    $t5, _camera_bss+0x540
	la.l    $t5, _camera_bss+0x540
	lh      $t6, 0x0162($t5)
	lh      $t4, 0x0018($sp)
	subu    $t7, $t4, $t6
	andi    $t8, $t7, 0x8000
	beqz    $t8, .L80295BC4
	nop
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	lh      $t0, 0x0162($t9)
	addiu   $t1, $t0, -0x6000
	b       .L80295BD8
	sh      $t1, 0x0162($t9)
.L80295BC4:
	la.u    $t2, _camera_bss+0x540
	la.l    $t2, _camera_bss+0x540
	lh      $t3, 0x0162($t2)
	addiu   $t5, $t3, 0x6000
	sh      $t5, 0x0162($t2)
.L80295BD8:
	b       .L80295BE0
	nop
.L80295BE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80295BF0:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0050($sp)
	sw      $s0, 0x0020($sp)
	lui     $a2, %hi(camera_8032DF60)
	lw      $a2, %lo(camera_8032DF60)($a2)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	li.u    $a3, 0x3F333333
	li.l    $a3, 0x3F333333
	addiu   $a1, $a1, 0x0148
	addiu   $a0, $sp, 0x003C
	jal     camera_8028A834
	addiu   $a2, $a2, 0x0004
	lw      $a0, 0x0050($sp)
	addiu   $t6, $sp, 0x0048
	sw      $t6, 0x0010($sp)
	addiu   $a1, $sp, 0x003C
	addiu   $a2, $sp, 0x004C
	addiu   $a3, $sp, 0x004A
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0050($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0148
	jal     camera_8028AA28
	addiu   $a0, $a0, 0x0010
	sh      $v0, 0x004A($sp)
	lw      $a0, 0x0050($sp)
	lh      $t7, 0x0048($sp)
	addiu   $a1, $sp, 0x0030
	lw      $a2, 0x004C($sp)
	lh      $a3, 0x004A($sp)
	addiu   $a0, $a0, 0x0010
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	addiu   $t9, $sp, 0x003C
	lwc1    $f6, 0x0004($t9)
	lwc1    $f4, 0x014C($t8)
	lui     $at, %hi(camera_80337410)
	lwc1    $f10, %lo(camera_80337410)($at)
	sub.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f16, $f6
	swc1    $f18, 0x0004($t9)
	lui     $at, %hi(camera_80337414)
	lwc1    $f4, %lo(camera_80337414)($at)
	lw      $a0, 0x0050($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x003C
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	lw      $a1, 0x0050($sp)
	addiu   $a0, $sp, 0x0030
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	la.u    $t0, _camera_bss+0x540
	la.l    $t0, _camera_bss+0x540
	lwc1    $f8, 0x0128($t0)
	addiu   $t1, $sp, 0x0030
	swc1    $f8, 0x0004($t1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $t2, $sp, 0x0048
	sw      $t2, 0x0010($sp)
	addiu   $a0, $a0, 0x0124
	addiu   $a1, $sp, 0x0030
	addiu   $a2, $sp, 0x004C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x004A
	la.u    $t3, _camera_bss+0x540
	la.l    $t3, _camera_bss+0x540
	lh      $a1, 0x0162($t3)
	addiu   $a0, $sp, 0x0048
	jal     camera_802894B4
	li      $a2, 0x0010
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $sp, 0x004C
	jal     camera_802893F4
	li      $a1, 0x43340000
	lh      $t4, 0x0048($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0124
	addiu   $a1, $sp, 0x0030
	lw      $a2, 0x004C($sp)
	lh      $a3, 0x004A($sp)
	jal     polar_to_cartesian
	sw      $t4, 0x0010($sp)
	la.u    $t5, _camera_bss+0x540
	la.l    $t5, _camera_bss+0x540
	addiu   $a0, $t5, 0x0148
	jal     camera_8028AA28
	addiu   $a1, $t5, 0x0124
	sll     $s0, $v0, 16
	sra     $t6, $s0, 16
	move    $s0, $t6
	andi    $t7, $s0, 0xFFFF
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	la.u    $t0, _camera_bss+0x540
	la.l    $t0, _camera_bss+0x540
	mul.s   $f6, $f10, $f16
	lwc1    $f18, 0x0128($t0)
	addiu   $t1, $sp, 0x0030
	add.s   $f4, $f6, $f18
	swc1    $f4, 0x0004($t1)
	lw      $a0, 0x0050($sp)
	addiu   $t2, $sp, 0x0030
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	lw      $a1, 0x0004($t2)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0014
	addiu   $t3, $sp, 0x0030
	lwc1    $f8, 0x0000($t3)
	lw      $t4, 0x0050($sp)
	swc1    $f8, 0x0010($t4)
	addiu   $t5, $sp, 0x0030
	lwc1    $f10, 0x0008($t5)
	lw      $t6, 0x0050($sp)
	swc1    $f10, 0x0018($t6)
	b       .L80295E10
	nop
.L80295E10:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

camera_80295E24:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00A3
	lbu     $t7, 0x0030($t6)
	bne     $t7, $at, .L80295E58
	nop
	lui     $a0, %hi(_camera_bss+0x170)
	jal     message_802D8D48
	lh      $a0, %lo(_camera_bss+0x170)($a0)
	b       .L80295E64
	nop
.L80295E58:
	lui     $a0, %hi(_camera_bss+0x170)
	jal     message_802D8C88
	lh      $a0, %lo(_camera_bss+0x170)($a0)
.L80295E64:
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	li      $t8, 0x0003
	sh      $t8, 0x013C($t9)
	b       .L80295E7C
	nop
.L80295E7C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80295E8C(struct camera *cam) */
.globl camera_80295E8C
camera_80295E8C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80295A58
	la.l    $a0, camera_80295A58
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80295BF0
	la.l    $a0, camera_80295BF0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80295E24
	la.l    $a0, camera_80295E24
	lw      $a1, 0x0018($sp)
	li      $a2, 0x000A
	jal     camera_8029A2F8
	li      $a3, 0x000A
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lui     $t8, %hi(message_803314A0)
	lw      $t8, %lo(message_803314A0)($t8)
	beqz    $t8, .L80295F14
	nop
	lui     $t9, %hi(message_803314A0)
	lw      $t9, %lo(message_803314A0)($t9)
	lui     $at, %hi(camera_8032DF5C)
	sb      $t9, %lo(camera_8032DF5C)($at)
.L80295F14:
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L80295F98
	nop
	la.u    $t0, _camera_bss+0x540
	la.l    $t0, _camera_bss+0x540
	lh      $t1, 0x013C($t0)
	beqz    $t1, .L80295F98
	nop
	lw      $t2, 0x0018($sp)
	li      $at, 0x00A3
	lbu     $t3, 0x0030($t2)
	beq     $t3, $at, .L80295F5C
	nop
	li      $t4, 0x0003
	lui     $at, %hi(camera_8032DF5C)
	sb      $t4, %lo(camera_8032DF5C)($at)
.L80295F5C:
	li      $t5, 0x7FFF
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t5, %lo(_camera_bss+0x53C)($at)
	jal     camera_802908E8
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x000F
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	jal     camera_80290BD8
	lw      $a0, 0x0018($sp)
.L80295F98:
	b       .L80295FA0
	nop
.L80295FA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80295FB0(struct camera *cam) */
.globl camera_80295FB0
camera_80295FB0:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	b       .L80295FD0
	nop
.L80295FD0:
	jr      $ra
	nop

/* void camera_80295FD8(struct camera *cam) */
.globl camera_80295FD8
camera_80295FD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lw      $t8, 0x0018($sp)
	sb      $0, 0x0030($t8)
	jal     obj_lib_802A4774
	li      $a0, 0x0006
	b       .L80296010
	nop
.L80296010:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80296020:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80290BA4
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x001E
	jal     camera_8029051C
	lw      $a0, 0x0018($sp)
	jal     camera_80290864
	lw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x250)
	lh      $t6, %lo(_camera_bss+0x250)($t6)
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	sh      $t6, 0x0040($t7)
	lui     $t8, %hi(_camera_bss+0x252)
	lh      $t8, %lo(_camera_bss+0x252)($t8)
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	sh      $t8, 0x0042($t9)
	li      $t0, -0x0830
	lui     $at, %hi(_camera_bss+0x250)
	sh      $t0, %lo(_camera_bss+0x250)($at)
	lui     $at, %hi(_camera_bss+0x252)
	sh      $0, %lo(_camera_bss+0x252)($at)
	la.u    $t1, _camera_bss+0x540
	la.l    $t1, _camera_bss+0x540
	sh      $0, 0x001C($t1)
	b       .L802960A0
	nop
.L802960A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802960B0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	addiu   $a0, $sp, 0x0020
	move    $a1, $0
	move    $a3, $0
	jal     vecs_set
	lh      $a2, 0x0012($t6)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	li      $at, 0x433E0000
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	mtc1    $at, $f6
	lw      $a0, 0x0028($sp)
	addiu   $a2, $sp, 0x0020
	li      $a3, 0x0000
	swc1    $f4, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	addiu   $a0, $a0, 0x0010
	jal     camera_8028CD94
	swc1    $f6, 0x0014($sp)
	li      $at, 0x428C0000
	mtc1    $at, $f8
	li      $at, 0xC1A00000
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	mtc1    $at, $f10
	lw      $a0, 0x0028($sp)
	addiu   $a2, $sp, 0x0020
	li      $a3, 0x0000
	swc1    $f8, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	addiu   $a0, $a0, 0x0004
	jal     camera_8028CD94
	swc1    $f10, 0x0014($sp)
	b       .L80296150
	nop
.L80296150:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void camera_80296160(struct camera *cam) */
.globl camera_80296160
camera_80296160:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, camera_80296020
	la.l    $a0, camera_80296020
	lw      $a1, 0x0030($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	lh      $s0, 0x001C($t8)
	beqz    $s0, .L802961C4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L802961FC
	nop
	b       .L80296298
	nop
.L802961C4:
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	beq     $v0, $at, .L802961F4
	nop
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	lh      $t0, 0x001C($t9)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x001C($t9)
	jal     obj_lib_802A4750
	li      $a0, 0x0006
.L802961F4:
	b       .L80296298
	nop
.L802961FC:
	jal     camera_802858A4
	lw      $a0, 0x0030($sp)
	lw      $t2, 0x0030($sp)
	move    $a0, $t2
	addiu   $a1, $t2, 0x0004
	jal     camera_80285808
	addiu   $a2, $t2, 0x0010
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L80296298
	nop
	li      $t3, 0x7FFF
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t3, %lo(_camera_bss+0x53C)($at)
	jal     camera_802908E8
	lw      $a0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     camera_8028603C
	li      $a1, 0x000F
	lui     $t4, %hi(_camera_bss+0x32A)
	lh      $t4, %lo(_camera_bss+0x32A)($t4)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t5, $t4, 0x4000
	sh      $t5, %lo(_camera_bss+0x32A)($at)
	jal     obj_lib_802A4774
	li      $a0, 0x0006
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	lh      $t7, 0x0040($t6)
	lui     $at, %hi(_camera_bss+0x250)
	sh      $t7, %lo(_camera_bss+0x250)($at)
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	lh      $t0, 0x0042($t8)
	lui     $at, %hi(_camera_bss+0x252)
	sh      $t0, %lo(_camera_bss+0x252)($at)
	jal     camera_80290BD8
	lw      $a0, 0x0030($sp)
.L80296298:
	lui     $t1, %hi(_camera_bss+0x32A)
	lh      $t1, %lo(_camera_bss+0x32A)($t1)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t9, $t1, 0x4000
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	b       .L802962B4
	nop
.L802962B4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void camera_802962C8(struct camera *cam) */
.globl camera_802962C8
camera_802962C8:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	b       .L802962E8
	nop
.L802962E8:
	jr      $ra
	nop

/* void camera_802962F0(struct camera *cam) */
.globl camera_802962F0
camera_802962F0:
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	sb      $0, 0x0030($a0)
	jr      $ra
	nop
	jr      $ra
	nop

camera_80296318:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0100
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0118
	jal     vecs_cpy
	addiu   $a1, $a1, 0x0010
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x43B58000
	li.u    $a3, 0x4407C000
	li.l    $a3, 0x4407C000
	li.l    $a2, 0x43B58000
	addiu   $a0, $a0, 0x00DC
	jal     vecf_set
	li      $a1, 0x40C00000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a3, 0x4478C000
	li.l    $a3, 0x4478C000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x43090000
	jal     vecf_set
	li      $a2, 0x43620000
	b       .L802963A8
	nop
.L802963A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802963B8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(camera_stage_prev)
	lw      $s0, %lo(camera_stage_prev)($s0)
	li      $at, 0x0007
	beq     $s0, $at, .L80296408
	nop
	li      $at, 0x000F
	beq     $s0, $at, .L80296458
	nop
	li      $at, 0x001C
	beq     $s0, $at, .L80296430
	nop
	li      $at, 0x001F
	beq     $s0, $at, .L80296484
	nop
	b       .L802964B0
	nop
.L80296408:
	lw      $a0, 0x0038($sp)
	li.u    $a1, 0x45589000
	li.u    $a3, 0xC5391000
	li.l    $a3, 0xC5391000
	li.l    $a1, 0x45589000
	li      $a2, 0xC47C0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       .L80296510
	nop
.L80296430:
	lw      $a0, 0x0038($sp)
	li.u    $a1, 0x45589000
	li.u    $a3, 0xC5391000
	li.l    $a3, 0xC5391000
	li.l    $a1, 0x45589000
	li      $a2, 0xC47C0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       .L80296510
	nop
.L80296458:
	lw      $a0, 0x0038($sp)
	li.u    $a1, 0xC569D000
	li.u    $a2, 0x4544F000
	li.u    $a3, 0x45BD8800
	li.l    $a3, 0x45BD8800
	li.l    $a2, 0x4544F000
	li.l    $a1, 0xC569D000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       .L80296510
	nop
.L80296484:
	lw      $a0, 0x0038($sp)
	li.u    $a1, 0x44F68000
	li.u    $a2, 0x4549E000
	li.u    $a3, 0x45B81800
	li.l    $a3, 0x45B81800
	li.l    $a2, 0x4549E000
	li.l    $a1, 0x44F68000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
	b       .L80296510
	nop
.L802964B0:
	la.u    $t6, _camera_bss+0x540
	lw      $a0, 0x0038($sp)
	la.l    $t6, _camera_bss+0x540
	addiu   $a1, $t6, 0x0100
	addiu   $a2, $t6, 0x00B8
	addiu   $a3, $t6, 0x0118
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	lw      $t7, 0x0038($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0014($t7)
	addiu   $a3, $sp, 0x0030
	lwc1    $f12, 0x0010($t7)
	lw      $a2, 0x0018($t7)
	jal     map_80381900
	add.s   $f14, $f4, $f6
	li      $at, 0x42FA0000
	mtc1    $at, $f8
	lw      $t8, 0x0038($sp)
	add.s   $f10, $f0, $f8
	swc1    $f10, 0x0014($t8)
	b       .L80296510
	nop
.L80296510:
	b       .L80296518
	nop
.L80296518:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8029652C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $t6, _camera_bss+0x540
	lw      $a0, 0x0018($sp)
	la.l    $t6, _camera_bss+0x540
	addiu   $a1, $t6, 0x0100
	addiu   $a2, $t6, 0x00DC
	addiu   $a3, $t6, 0x0118
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	lui     $t7, %hi(camera_stage_prev)
	lw      $t7, %lo(camera_stage_prev)($t7)
	li      $at, 0x001C
	beq     $t7, $at, .L80296590
	nop
	li      $at, 0x0007
	beq     $t7, $at, .L80296590
	nop
	li      $at, 0x000F
	beq     $t7, $at, .L80296590
	nop
	li      $at, 0x001F
	bne     $t7, $at, .L80296618
	nop
.L80296590:
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lw      $t9, 0x0018($sp)
	lui     $at, %hi(camera_80337418)
	lwc1    $f4, 0x0004($t8)
	lwc1    $f6, 0x0010($t9)
	lwc1    $f10, %lo(camera_80337418)($at)
	sub.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f16, $f6
	swc1    $f18, 0x0004($t9)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	lw      $t1, 0x0018($sp)
	lui     $at, %hi(camera_8033741C)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f8, 0x0014($t1)
	lwc1    $f16, %lo(camera_8033741C)($at)
	sub.s   $f10, $f4, $f8
	mul.s   $f6, $f10, $f16
	add.s   $f18, $f6, $f8
	swc1    $f18, 0x0008($t1)
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	lw      $t3, 0x0018($sp)
	lui     $at, %hi(camera_80337420)
	lwc1    $f4, 0x000C($t2)
	lwc1    $f10, 0x0018($t3)
	lwc1    $f6, %lo(camera_80337420)($at)
	sub.s   $f16, $f4, $f10
	mul.s   $f8, $f16, $f6
	add.s   $f18, $f8, $f10
	b       .L80296644
	swc1    $f18, 0x000C($t3)
.L80296618:
	lui     $t4, %hi(camera_8032DF60)
	lw      $t4, %lo(camera_8032DF60)($t4)
	lw      $t5, 0x0018($sp)
	lui     $at, %hi(camera_80337424)
	lwc1    $f4, 0x0008($t4)
	lwc1    $f16, 0x0014($t5)
	lwc1    $f8, %lo(camera_80337424)($at)
	sub.s   $f6, $f4, $f16
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($t5)
.L80296644:
	b       .L8029664C
	nop
.L8029664C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029665C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $a0, 0x00DC
	jal     camera_802893F4
	li      $a1, 0xC1C00000
	b       .L8029668C
	nop
.L8029668C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029669C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x009D
	lbu     $t7, 0x0030($t6)
	bne     $t7, $at, .L802966CC
	nop
	li      $a0, 0x0800
	li      $a1, 0x0040
	jal     camera_8028AEF0
	li      $a2, 0x0800
.L802966CC:
	b       .L802966D4
	nop
.L802966D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802966E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8027F8B8
	li      $a0, 0x0001
	b       .L80296700
	nop
.L80296700:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80296710(struct camera *cam) */
.globl camera_80296710
camera_80296710:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80296318
	la.l    $a0, camera_80296318
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802963B8
	la.l    $a0, camera_802963B8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029665C
	la.l    $a0, camera_8029665C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0012
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029652C
	la.l    $a0, camera_8029652C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029669C
	la.l    $a0, camera_8029669C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x007D
	jal     camera_8029A2F8
	li      $a3, 0x007D
	la.u    $a0, camera_802966E4
	la.l    $a0, camera_802966E4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0029
	jal     camera_8029A2F8
	li      $a3, 0x0029
	b       .L802967B4
	nop
.L802967B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_802967C4(struct camera *cam) */
.globl camera_802967C4
camera_802967C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sb      $0, 0x0030($t6)
	lw      $t7, 0x0018($sp)
	li      $at, 0x0004
	lbu     $t8, 0x0001($t7)
	bne     $t8, $at, .L802967FC
	nop
	lw      $t0, 0x0018($sp)
	li      $t9, 0x0004
	b       .L80296808
	sb      $t9, 0x0000($t0)
.L802967FC:
	lw      $t2, 0x0018($sp)
	li      $t1, 0x0010
	sb      $t1, 0x0000($t2)
.L80296808:
	lui     $t3, %hi(_camera_bss+0x32A)
	lh      $t3, %lo(_camera_bss+0x32A)($t3)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t4, $t3, 0x4000
	sh      $t4, %lo(_camera_bss+0x32A)($at)
	lui     $t5, %hi(_camera_bss+0x32A)
	lh      $t5, %lo(_camera_bss+0x32A)($t5)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t6, $t5, 0x0001
	sh      $t6, %lo(_camera_bss+0x32A)($at)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x003C
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       .L8029684C
	nop
.L8029684C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029685C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a3, 0x448B6000
	li.l    $a3, 0x448B6000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x43090000
	jal     vecf_set
	li      $a2, 0x43760000
	b       .L80296890
	nop
.L80296890:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_802968A0(struct camera *cam) */
.globl camera_802968A0
camera_802968A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80296318
	la.l    $a0, camera_80296318
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_8029685C
	la.l    $a0, camera_8029685C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802963B8
	la.l    $a0, camera_802963B8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029665C
	la.l    $a0, camera_8029665C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0012
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029652C
	la.l    $a0, camera_8029652C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802966E4
	la.l    $a0, camera_802966E4
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0029
	jal     camera_8029A2F8
	li      $a3, 0x0029
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       .L8029694C
	nop
.L8029694C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029695C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0100
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0118
	jal     vecs_cpy
	addiu   $a1, $a1, 0x0010
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a3, 0x4435C000
	li.l    $a3, 0x4435C000
	addiu   $a0, $a0, 0x00DC
	li      $a1, 0xC2280000
	jal     vecf_set
	li      $a2, 0x43AF0000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a3, 0x44946000
	li.l    $a3, 0x44946000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x42D60000
	jal     vecf_set
	li      $a2, 0x43620000
	b       .L802969E8
	nop
.L802969E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_802969F8(struct camera *cam) */
.globl camera_802969F8
camera_802969F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_8029695C
	la.l    $a0, camera_8029695C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802963B8
	la.l    $a0, camera_802963B8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029652C
	la.l    $a0, camera_8029652C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       .L80296A54
	nop
.L80296A54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80296A64:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $s0, %hi(camera_stage_prev)
	lw      $s0, %lo(camera_stage_prev)($s0)
	li      $at, 0x0007
	beq     $s0, $at, .L80296A9C
	nop
	li      $at, 0x001C
	beq     $s0, $at, .L80296AC4
	nop
	b       .L80296AEC
	nop
.L80296A9C:
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x43B88000
	li.l    $a2, 0x43B88000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x433B0000
	jal     vecf_set
	li      $a3, 0xC3450000
	b       .L80296B14
	nop
.L80296AC4:
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x43B88000
	li.l    $a2, 0x43B88000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x433B0000
	jal     vecf_set
	li      $a3, 0xC3450000
	b       .L80296B14
	nop
.L80296AEC:
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a3, 0x44A36000
	li.l    $a3, 0x44A36000
	addiu   $a0, $a0, 0x00B8
	li      $a1, 0x42D60000
	jal     vecf_set
	li      $a2, 0x43760000
	b       .L80296B14
	nop
.L80296B14:
	b       .L80296B1C
	nop
.L80296B1C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void camera_80296B30(struct camera *cam) */
.globl camera_80296B30
camera_80296B30:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_8029695C
	la.l    $a0, camera_8029695C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80296A64
	la.l    $a0, camera_80296A64
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802963B8
	la.l    $a0, camera_802963B8
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_8029652C
	la.l    $a0, camera_8029652C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x4000
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	b       .L80296BB8
	nop
.L80296BB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80296BC8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	jal     camera_80290864
	lw      $a0, 0x0028($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $a0, $a0, 0x0004
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	sh      $v0, 0x0024($sp)
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	li      $t6, 0x1200
	sh      $t6, 0x008A($t7)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	lh      $t9, 0x008A($t8)
	lh      $t1, 0x0012($t0)
	lh      $t3, 0x0024($sp)
	addu    $t2, $t9, $t1
	subu    $t4, $t3, $t2
	andi    $t5, $t4, 0xFF00
	sh      $t5, 0x0042($t8)
	b       .L80296C3C
	nop
.L80296C3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80296C4C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lh      $t7, 0x0012($t6)
	addiu   $t8, $t7, 0x1000
	sh      $t8, 0x0026($sp)
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	lh      $t0, 0x0042($t9)
	sw      $t0, 0x0020($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0030($sp)
	addiu   $t1, $sp, 0x0028
	sw      $t1, 0x0010($sp)
	addiu   $a2, $sp, 0x002C
	addiu   $a3, $sp, 0x002A
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	la.u    $t2, _camera_bss+0x540
	la.l    $t2, _camera_bss+0x540
	lh      $t3, 0x008A($t2)
	li      $at, 0x1000
	beq     $t3, $at, .L80296CD0
	nop
	la.u    $t4, _camera_bss+0x540
	la.l    $t4, _camera_bss+0x540
	lh      $t5, 0x008A($t4)
	addiu   $t6, $t5, 0x0100
	sh      $t6, 0x008A($t4)
.L80296CD0:
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	lh      $t8, 0x0042($t7)
	beqz    $t8, .L80296CF8
	nop
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	lh      $t0, 0x0042($t9)
	addiu   $t1, $t0, 0x0100
	sh      $t1, 0x0042($t9)
.L80296CF8:
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	la.u    $t5, _camera_bss+0x540
	la.l    $t5, _camera_bss+0x540
	lh      $t6, 0x008A($t5)
	lh      $t3, 0x0012($t2)
	lh      $t7, 0x0042($t5)
	addu    $t4, $t3, $t6
	addu    $t8, $t7, $t4
	sh      $t8, 0x0028($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0030($sp)
	lh      $t0, 0x0028($sp)
	lw      $a2, 0x002C($sp)
	lh      $a3, 0x002A($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t0, 0x0010($sp)
	b       .L80296D50
	nop
.L80296D50:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80296D60:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0020($sp)
	li      $a2, 0x0000
	li      $a3, -0x0020
	sw      $0, 0x0010($sp)
	addiu   $a1, $a1, 0x0004
	jal     camera_80290ABC
	addiu   $a0, $a0, 0x0010
	b       .L80296D98
	nop
.L80296D98:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80296DA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	addiu   $a0, $sp, 0x0020
	jal     camera_802893F4
	li      $a1, 0x43430000
	addiu   $a0, $sp, 0x0026
	move    $a1, $0
	jal     camera_802894B4
	li      $a2, 0x0010
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t7, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lw      $a0, 0x0028($sp)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	lw      $a1, 0x0004($t8)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0004
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	li      $at, 0x42DC0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t9)
	lw      $a0, 0x0028($sp)
	li.u    $a2, 0x3DCCCCCD
	add.s   $f8, $f4, $f6
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $a0, 0x0008
	mfc1    $a1, $f8
	jal     camera_802893F4
	nop
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	lw      $a0, 0x0028($sp)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	lw      $a1, 0x000C($t0)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x000C
	b       .L80296EA4
	nop
.L80296EA4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80296EB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0018($sp)
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	lw      $t6, 0x0018($sp)
	li      $at, 0x42DC0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t6)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x001E
	li      $a1, 0x0800
	jal     camera_8028976C
	li      $a2, 0x0020
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	lh      $a1, 0x001C($t7)
	lh      $a2, 0x001E($t7)
	jal     camera_802909D0
	lw      $a0, 0x0018($sp)
	b       .L80296F28
	nop
.L80296F28:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80296F38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF24)
	lw      $t6, %lo(camera_8032DF24)($t6)
	lw      $a0, 0x0144($t6)
	jal     message_802D8D48
	addiu   $a0, $a0, 0x000A
	b       .L80296F60
	nop
.L80296F60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80296F70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802908E8
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     camera_8028603C
	li      $a1, 0x001E
	b       .L80296F98
	nop
.L80296F98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80296FA8(struct camera *cam) */
.globl camera_80296FA8
camera_80296FA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t9, $t8, 0x4000
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	la.u    $a0, camera_80296BC8
	la.l    $a0, camera_80296BC8
	lw      $a1, 0x0028($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80296DA8
	la.l    $a0, camera_80296DA8
	lw      $a1, 0x0028($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x001E
	la.u    $a0, camera_80296EB4
	la.l    $a0, camera_80296EB4
	lw      $a1, 0x0028($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80296C4C
	la.l    $a0, camera_80296C4C
	lw      $a1, 0x0028($sp)
	li      $a2, 0x001E
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80296D60
	la.l    $a0, camera_80296D60
	lw      $a1, 0x0028($sp)
	li      $a2, 0x000A
	jal     camera_8029A2F8
	li      $a3, 0x0046
	la.u    $a0, camera_80296F38
	la.l    $a0, camera_80296F38
	lw      $a1, 0x0028($sp)
	li      $a2, 0x000A
	jal     camera_8029A2F8
	li      $a3, 0x000A
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t0, $sp, 0x0020
	sw      $t0, 0x0010($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	lui     $t1, %hi(message_803314A0)
	lw      $t1, %lo(message_803314A0)($t1)
	beqz    $t1, .L802970B8
	nop
	lui     $t2, %hi(message_803314A0)
	lw      $t2, %lo(message_803314A0)($t2)
	la.u    $t3, _camera_bss+0x540
	la.l    $t3, _camera_bss+0x540
	sh      $t2, 0x00AC($t3)
.L802970B8:
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L80297130
	nop
	la.u    $t4, _camera_bss+0x540
	la.l    $t4, _camera_bss+0x540
	lh      $t5, 0x00AC($t4)
	beqz    $t5, .L80297130
	nop
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	lh      $t7, 0x00AC($t6)
	lui     $at, %hi(camera_8032DF5C)
	sb      $t7, %lo(camera_8032DF5C)($at)
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	lh      $t9, 0x00AC($t8)
	li      $at, 0x0001
	bne     $t9, $at, .L8029711C
	nop
	lui     $t0, %hi(camera_8032DF24)
	lw      $t0, %lo(camera_8032DF24)($t0)
	jal     camera_80290168
	lw      $a0, 0x0144($t0)
.L8029711C:
	jal     camera_80290104
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     camera_8028603C
	li      $a1, 0x001E
.L80297130:
	b       .L80297138
	nop
.L80297138:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_80297148:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $a1, 0x0030($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0030($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0028
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	addiu   $a0, $sp, 0x0024
	li      $a1, 0xC34E0000
	li      $a2, 0x42D80000
	jal     vecf_set
	li      $a3, 0x436A0000
	addiu   $a0, $sp, 0x0018
	li      $a1, 0x42400000
	li      $a2, 0x42D00000
	jal     vecf_set
	li      $a3, 0xC3410000
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x004C
	addiu   $a2, $sp, 0x0024
	addiu   $a1, $t6, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t6, 0x0010
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0070
	addiu   $a2, $sp, 0x0018
	addiu   $a1, $t7, 0x0004
	jal     camera_8028CBF0
	addiu   $a3, $t7, 0x0010
	b       .L802971FC
	nop
.L802971FC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8029720C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $at, %hi(camera_80337428)
	lwc1    $f4, %lo(camera_80337428)($at)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x004C
	addu    $a3, $a2, $0
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	lui     $at, %hi(camera_8033742C)
	lwc1    $f6, %lo(camera_8033742C)($at)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0070
	addu    $a3, $a2, $0
	swc1    $f6, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	b       .L80297280
	nop
.L80297280:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80297290:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x430C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	add.s   $f8, $f4, $f6
	li.u    $a2, 0x3D8F5C29
	li.l    $a2, 0x3D8F5C29
	addiu   $a0, $a0, 0x0074
	mfc1    $a1, $f8
	jal     camera_802893F4
	nop
	b       .L802972DC
	nop
.L802972DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802972EC:
	sw      $a0, 0x0000($sp)
	b       .L802972F8
	nop
.L802972F8:
	jr      $ra
	nop

camera_80297300:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lui     $at, %hi(camera_80337430)
	lwc1    $f4, %lo(camera_80337430)($at)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0004
	addu    $a3, $a2, $0
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	lui     $at, %hi(camera_80337434)
	lwc1    $f6, %lo(camera_80337434)($at)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _camera_bss+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0028
	addu    $a3, $a2, $0
	swc1    $f6, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	b       .L80297374
	nop
.L80297374:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_80297384:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029ABB0
	li      $a0, 0x0001
	b       .L802973A0
	nop
.L802973A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_802973B0(struct camera *cam) */
.globl camera_802973B0
camera_802973B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80297148
	la.l    $a0, camera_80297148
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_8029720C
	la.l    $a0, camera_8029720C
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x007B
	la.u    $a0, camera_80297300
	la.l    $a0, camera_80297300
	lw      $a1, 0x0018($sp)
	li      $a2, 0x007C
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80297384
	la.l    $a0, camera_80297384
	lw      $a1, 0x0018($sp)
	li      $a2, 0x004F
	jal     camera_8029A2F8
	li      $a3, 0x004F
	la.u    $a0, camera_80297290
	la.l    $a0, camera_80297290
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0046
	jal     camera_8029A2F8
	li      $a3, 0x006E
	la.u    $a0, camera_802972EC
	la.l    $a0, camera_802972EC
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0070
	jal     camera_8029A2F8
	li      $a3, 0x0070
	b       .L80297454
	nop
.L80297454:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297464:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lw      $a0, 0x0030($sp)
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	lw      $a1, 0x0034($sp)
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	sw      $v0, 0x0020($sp)
	lw      $a0, 0x0030($sp)
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	lw      $a1, 0x0038($sp)
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0030($sp)
	li      $a2, -0x8000
	addiu   $t7, $t6, 0x0004
	move    $a0, $t7
	jal     camera_8028AD4C
	move    $a1, $t7
	lw      $t8, 0x0030($sp)
	li      $a2, -0x8000
	addiu   $t9, $t8, 0x0010
	move    $a0, $t9
	jal     camera_8028AD4C
	move    $a1, $t9
	li.u    $a3, 0x4591C000
	li.l    $a3, 0x4591C000
	addiu   $a0, $sp, 0x0024
	li      $a1, 0xC4A60000
	jal     vecf_set
	li      $a2, 0x43820000
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_add
	addiu   $a0, $a0, 0x0004
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_add
	addiu   $a0, $a0, 0x0010
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	addu    $t2, $t0, $t1
	sw      $t2, 0x0020($sp)
	b       .L80297550
	lw      $v0, 0x001C($sp)
	b       .L80297550
	nop
.L80297550:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_80297560:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     message_802D8C88
	li      $a0, 0x0014
	b       .L8029757C
	nop
.L8029757C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029758C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a0, 0x2428FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x2428FF81
	b       .L802975B4
	nop
.L802975B4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802975C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032ED50
	la.u    $a2, campath_8032EE08
	la.l    $a2, campath_8032EE08
	la.l    $a1, campath_8032ED50
	jal     camera_80297464
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L80297614
	nop
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	li      $at, -0x2001
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t7, %lo(_camera_bss+0x328)($at)
	li      $t8, 0x7FFF
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t8, %lo(_camera_bss+0x53C)($at)
.L80297614:
	b       .L8029761C
	nop
.L8029761C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8029762C(struct camera *cam) */
.globl camera_8029762C
camera_8029762C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L802976A4
	nop
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x0024
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	addiu   $a0, $a0, 0x0018
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x4001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	li      $t8, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t8, %lo(_camera_bss+0x53C)($at)
	lw      $t9, 0x0018($sp)
	sb      $0, 0x0030($t9)
.L802976A4:
	b       .L802976AC
	nop
.L802976AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802976BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032EEC0
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032EEC0
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032EF30
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032EF30
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	b       .L80297718
	nop
.L80297718:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297728:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	sh      $0, 0x001E($t6)
	b       .L80297740
	nop
.L80297740:
	jr      $ra
	nop

camera_80297748:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x41000000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f4, %lo(_camera_bss+0x84)($at)
	jal     camera_8029AB94
	li      $a0, 0x000C
	b       .L80297774
	nop
.L80297774:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297784:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_camera_bss+0x530)
	sh      $0, %lo(_camera_bss+0x530)($at)
	lui     $at, %hi(camera_80337438)
	lwc1    $f4, %lo(camera_80337438)($at)
	lui     $at, %hi(_camera_bss+0x534)
	swc1    $f4, %lo(_camera_bss+0x534)($at)
	jal     camera_80288888
	li      $a0, 0x0004
	b       .L802977B8
	nop
.L802977B8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802977C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80288888
	move    $a0, $0
	b       .L802977E4
	nop
.L802977E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802977F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     message_802D8C88
	li      $a0, 0x0021
	b       .L80297810
	nop
.L80297810:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297820:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8028B920
	nop
	b       .L8029783C
	nop
.L8029783C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_8029784C(struct camera *cam) */
.globl camera_8029784C
camera_8029784C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80297820
	la.l    $a0, camera_80297820
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0332
	jal     camera_8029A2F8
	li      $a3, 0x0332
	li      $a0, 0x0006
	jal     camera_8029A37C
	li      $a1, 0x0001
	la.u    $a0, camera_802904E4
	la.l    $a0, camera_802904E4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802975C4
	la.l    $a0, camera_802975C4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80297728
	la.l    $a0, camera_80297728
	lw      $a1, 0x0018($sp)
	li      $a2, 0x02CD
	jal     camera_8029A2F8
	li      $a3, 0x02CD
	lw      $t6, 0x0018($sp)
	li      $a2, 0x3B00
	li      $a3, -0x3B00
	addiu   $a0, $t6, 0x0010
	jal     camera_80289214
	addiu   $a1, $t6, 0x0004
	li      $at, 0x43C80000
	mtc1    $at, $f4
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	swc1    $f4, 0x002C($t7)
	b       .L802978F8
	nop
.L802978F8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80297908(struct camera *cam) */
.globl camera_80297908
camera_80297908:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	sh      $0, 0x001E($t6)
	la.u    $a0, camera_80297784
	la.l    $a0, camera_80297784
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802976BC
	la.l    $a0, camera_802976BC
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802977C8
	la.l    $a0, camera_802977C8
	lw      $a1, 0x0020($sp)
	li      $a2, 0x0046
	jal     camera_8029A2F8
	li      $a3, 0x0046
	la.u    $a0, camera_802977F4
	la.l    $a0, camera_802977F4
	lw      $a1, 0x0020($sp)
	li      $a2, 0x00FA
	jal     camera_8029A2F8
	li      $a3, 0x00FA
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	lui     $at, %hi(_camera_bss+0xCC)
	lwc1    $f6, %lo(_camera_bss+0xCC)($at)
	lwc1    $f4, 0x0008($t7)
	lui     $at, %hi(camera_8033743C)
	lwc1    $f10, %lo(camera_8033743C)($at)
	sub.s   $f8, $f4, $f6
	li      $at, 0x42A00000
	mtc1    $at, $f18
	la.u    $a0, _camera_bss+0x540
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f6
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x3ECCCCCD
	li.l    $a2, 0x3ECCCCCD
	addiu   $a0, $a0, 0x002C
	add.s   $f8, $f16, $f4
	mfc1    $a1, $f8
	jal     camera_802893F4
	nop
	lw      $t8, 0x0020($sp)
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	lwc1    $f18, 0x002C($t9)
	lwc1    $f10, 0x0008($t8)
	c.lt.s  $f10, $f18
	nop
	bc1f    .L80297A0C
	nop
	la.u    $t0, _camera_bss+0x540
	la.l    $t0, _camera_bss+0x540
	lwc1    $f6, 0x002C($t0)
	lw      $t1, 0x0020($sp)
	swc1    $f6, 0x0008($t1)
.L80297A0C:
	lui     $t2, %hi(_camera_bss+0x32A)
	lh      $t2, %lo(_camera_bss+0x32A)($t2)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t3, $t2, 0x4000
	sh      $t3, %lo(_camera_bss+0x32A)($at)
	b       .L80297A28
	nop
.L80297A28:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_80297A38(struct camera *cam) */
.globl camera_80297A38
camera_80297A38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_8029AB94
	li      $a0, 0x0002
	b       .L80297A54
	nop
.L80297A54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80297A64(struct camera *cam) */
.globl camera_80297A64
camera_80297A64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0005
	jal     camera_8029A37C
	move    $a1, $0
	la.u    $a0, camera_80297748
	la.l    $a0, camera_80297748
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_802904A8
	la.l    $a0, camera_802904A8
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0041
	jal     camera_8029A2F8
	li      $a3, 0x0041
	la.u    $a0, camera_802975C4
	la.l    $a0, camera_802975C4
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_80297560
	la.l    $a0, camera_80297560
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0041
	jal     camera_8029A2F8
	li      $a3, 0x0041
	la.u    $a0, camera_8029758C
	la.l    $a0, camera_8029758C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0053
	jal     camera_8029A2F8
	li      $a3, 0x0053
	lui     $t6, %hi(_camera_bss+0x53C)
	lh      $t6, %lo(_camera_bss+0x53C)($t6)
	slti    $at, $t6, 0x0079
	bnez    $at, .L80297B28
	nop
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L80297B28
	nop
	li      $t7, 0x7FFF
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t7, %lo(_camera_bss+0x53C)($at)
.L80297B28:
	lw      $t8, 0x0018($sp)
	li      $a2, 0x3B00
	li      $a3, -0x3B00
	addiu   $a0, $t8, 0x0010
	jal     camera_80289214
	addiu   $a1, $t8, 0x0004
	b       .L80297B48
	nop
.L80297B48:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297B58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802900E0
	nop
	b       .L80297B74
	nop
.L80297B74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80297B84(struct camera *cam) */
.globl camera_80297B84
camera_80297B84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_80297B58
	la.l    $a0, camera_80297B58
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032F444
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032F444
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, campath_8032F48C
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, campath_8032F48C
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	li      $a0, 0x0006
	jal     camera_8029A37C
	li      $a1, 0x0078
	b       .L80297C04
	nop
.L80297C04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80297C14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_802900E0
	nop
	b       .L80297C30
	nop
.L80297C30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80297C40(struct camera *cam) */
.globl camera_80297C40
camera_80297C40:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	la.u    $a0, camera_80297C14
	la.l    $a0, camera_80297C14
	lw      $a1, 0x0038($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	lui     $s0, %hi(camera_stagescene)
	lw      $s0, %lo(camera_stagescene)($s0)
	slti    $at, $s0, 0x0163
	bnez    $at, .L80297CC0
	nop
	li      $at, 0x0171
	beq     $s0, $at, .L80297E80
	nop
	li      $at, 0x0172
	beq     $s0, $at, .L80297FA0
	nop
	li      $at, 0x0181
	beq     $s0, $at, .L80297D80
	nop
	li      $at, 0x01C1
	beq     $s0, $at, .L80297F80
	nop
	li      $at, 0x0241
	beq     $s0, $at, .L80297EE0
	nop
	b       L80298024
	nop
.L80297CC0:
	slti    $at, $s0, 0x0053
	bnez    $at, .L80297D34
	nop
	slti    $at, $s0, 0x0142
	bnez    $at, .L80297CEC
	nop
	li      $at, 0x0162
	beq     $s0, $at, .L80297E40
	nop
	b       L80298024
	nop
.L80297CEC:
	slti    $at, $s0, 0x00F2
	bnez    $at, .L80297D0C
	nop
	li      $at, 0x0141
	beq     $s0, $at, .L80297F60
	nop
	b       L80298024
	nop
.L80297D0C:
	addiu   $t6, $s0, -0x0071
	sltiu   $at, $t6, 0x0081
	beqz    $at, L80298024
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(camera_80337440)
	addu    $at, $at, $t6
	lw      $t6, %lo(camera_80337440)($at)
	jr      $t6
	nop
.L80297D34:
	li      $at, 0x0041
	beq     $s0, $at, .L80297DE0
	nop
	li      $at, 0x0051
	beq     $s0, $at, .L80297FC0
	nop
	li      $at, 0x0052
	beq     $s0, $at, .L80297DC0
	nop
	b       L80298024
	nop
.globl L80297D60
L80297D60:
	la.u    $t7, campath_battlefield_eye
	la.l    $t7, campath_battlefield_eye
	sw      $t7, 0x0030($sp)
	la.u    $t8, campath_battlefield_look
	la.l    $t8, campath_battlefield_look
	sw      $t8, 0x0034($sp)
	b       .L8029803C
	nop
.L80297D80:
	la.u    $t9, campath_wf1_eye
	la.l    $t9, campath_wf1_eye
	sw      $t9, 0x0030($sp)
	la.u    $t0, campath_wf1_look
	la.l    $t0, campath_wf1_look
	sw      $t0, 0x0034($sp)
	b       .L8029803C
	nop
.globl L80297DA0
L80297DA0:
	la.u    $t1, campath_jrb1_eye
	la.l    $t1, campath_jrb1_eye
	sw      $t1, 0x0030($sp)
	la.u    $t2, campath_jrb1_look
	la.l    $t2, campath_jrb1_look
	sw      $t2, 0x0034($sp)
	b       .L8029803C
	nop
.L80297DC0:
	la.u    $t3, campath_ccm2_eye
	la.l    $t3, campath_ccm2_eye
	sw      $t3, 0x0030($sp)
	la.u    $t4, campath_ccm2_look
	la.l    $t4, campath_ccm2_look
	sw      $t4, 0x0034($sp)
	b       .L8029803C
	nop
.L80297DE0:
	la.u    $t5, campath_bbh1_eye
	la.l    $t5, campath_bbh1_eye
	sw      $t5, 0x0030($sp)
	la.u    $t6, campath_bbh1_look
	la.l    $t6, campath_bbh1_look
	sw      $t6, 0x0034($sp)
	b       .L8029803C
	nop
.globl L80297E00
L80297E00:
	la.u    $t7, campath_hmc1_eye
	la.l    $t7, campath_hmc1_eye
	sw      $t7, 0x0030($sp)
	la.u    $t8, campath_hmc1_look
	la.l    $t8, campath_hmc1_look
	sw      $t8, 0x0034($sp)
	b       .L8029803C
	nop
.globl L80297E20
L80297E20:
	la.u    $t9, campath_thi3_eye
	la.l    $t9, campath_thi3_eye
	sw      $t9, 0x0030($sp)
	la.u    $t0, campath_thi3_look
	la.l    $t0, campath_thi3_look
	sw      $t0, 0x0034($sp)
	b       .L8029803C
	nop
.L80297E40:
	la.u    $t1, campath_lll2_eye
	la.l    $t1, campath_lll2_eye
	sw      $t1, 0x0030($sp)
	la.u    $t2, campath_lll2_look
	la.l    $t2, campath_lll2_look
	sw      $t2, 0x0034($sp)
	b       .L8029803C
	nop
.globl L80297E60
L80297E60:
	la.u    $t3, campath_ssl1_eye
	la.l    $t3, campath_ssl1_eye
	sw      $t3, 0x0030($sp)
	la.u    $t4, campath_ssl1_look
	la.l    $t4, campath_ssl1_look
	sw      $t4, 0x0034($sp)
	b       .L8029803C
	nop
.L80297E80:
	la.u    $t5, campath_ddd1_eye
	la.l    $t5, campath_ddd1_eye
	sw      $t5, 0x0030($sp)
	la.u    $t6, campath_ddd1_look
	la.l    $t6, campath_ddd1_look
	sw      $t6, 0x0034($sp)
	b       .L8029803C
	nop
.globl L80297EA0
L80297EA0:
	la.u    $t7, campath_sl1_eye
	la.l    $t7, campath_sl1_eye
	sw      $t7, 0x0030($sp)
	la.u    $t8, campath_sl1_look
	la.l    $t8, campath_sl1_look
	sw      $t8, 0x0034($sp)
	b       .L8029803C
	nop
.globl L80297EC0
L80297EC0:
	la.u    $t9, campath_wdw1_eye
	la.l    $t9, campath_wdw1_eye
	sw      $t9, 0x0030($sp)
	la.u    $t0, campath_wdw1_look
	la.l    $t0, campath_wdw1_look
	sw      $t0, 0x0034($sp)
	b       .L8029803C
	nop
.L80297EE0:
	la.u    $t1, campath_ttm1_eye
	la.l    $t1, campath_ttm1_eye
	sw      $t1, 0x0030($sp)
	la.u    $t2, campath_ttm1_look
	la.l    $t2, campath_ttm1_look
	sw      $t2, 0x0034($sp)
	b       .L8029803C
	nop
.globl L80297F00
L80297F00:
	la.u    $t3, campath_thi1_eye
	la.l    $t3, campath_thi1_eye
	sw      $t3, 0x0030($sp)
	la.u    $t4, campath_thi1_look
	la.l    $t4, campath_thi1_look
	sw      $t4, 0x0034($sp)
	b       .L8029803C
	nop
.globl L80297F20
L80297F20:
	la.u    $t5, campath_ttc1_eye
	la.l    $t5, campath_ttc1_eye
	sw      $t5, 0x0030($sp)
	la.u    $t6, campath_ttc1_look
	la.l    $t6, campath_ttc1_look
	sw      $t6, 0x0034($sp)
	b       .L8029803C
	nop
.globl L80297F40
L80297F40:
	la.u    $t7, campath_rr1_eye
	la.l    $t7, campath_rr1_eye
	sw      $t7, 0x0030($sp)
	la.u    $t8, campath_rr1_look
	la.l    $t8, campath_rr1_look
	sw      $t8, 0x0034($sp)
	b       .L8029803C
	nop
.L80297F60:
	la.u    $t9, campath_sa1_eye
	la.l    $t9, campath_sa1_eye
	sw      $t9, 0x0030($sp)
	la.u    $t0, campath_sa1_look
	la.l    $t0, campath_sa1_look
	sw      $t0, 0x0034($sp)
	b       .L8029803C
	nop
.L80297F80:
	la.u    $t1, campath_cotmc1_eye
	la.l    $t1, campath_cotmc1_eye
	sw      $t1, 0x0030($sp)
	la.u    $t2, campath_cotmc1_look
	la.l    $t2, campath_cotmc1_look
	sw      $t2, 0x0034($sp)
	b       .L8029803C
	nop
.L80297FA0:
	la.u    $t3, campath_ddd2_eye
	la.l    $t3, campath_ddd2_eye
	sw      $t3, 0x0030($sp)
	la.u    $t4, campath_ddd2_look
	la.l    $t4, campath_ddd2_look
	sw      $t4, 0x0034($sp)
	b       .L8029803C
	nop
.L80297FC0:
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	andi    $t5, $v0, 0x0010
	beqz    $t5, .L80298004
	nop
	la.u    $t6, campath_ccm1_eye
	la.l    $t6, campath_ccm1_eye
	sw      $t6, 0x0030($sp)
	la.u    $t7, campath_ccm1_look
	la.l    $t7, campath_ccm1_look
	b       .L8029801C
	sw      $t7, 0x0034($sp)
.L80298004:
	la.u    $t8, campath_ccm1_eye
	la.l    $t8, campath_ccm1_eye
	sw      $t8, 0x0030($sp)
	la.u    $t9, campath_ccm1_look
	la.l    $t9, campath_ccm1_look
	sw      $t9, 0x0034($sp)
.L8029801C:
	b       .L8029803C
	nop
.globl L80298024
L80298024:
	la.u    $t0, campath_ccm1_eye
	la.l    $t0, campath_ccm1_eye
	sw      $t0, 0x0030($sp)
	la.u    $t1, campath_ccm1_look
	la.l    $t1, campath_ccm1_look
	sw      $t1, 0x0034($sp)
.L8029803C:
	la.u    $a0, _camera_bss+0x330
	la.l    $a0, _camera_bss+0x330
	jal     camera_802901FC
	lw      $a1, 0x0030($sp)
	la.u    $a0, _camera_bss+0x430
	la.l    $a0, _camera_bss+0x430
	jal     camera_802901FC
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	la.u    $a1, _camera_bss+0x330
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, _camera_bss+0x330
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0038($sp)
	la.u    $a1, _camera_bss+0x430
	la.u    $a2, _camera_bss+0x530
	la.u    $a3, _camera_bss+0x534
	la.l    $a3, _camera_bss+0x534
	la.l    $a2, _camera_bss+0x530
	la.l    $a1, _camera_bss+0x430
	jal     camera_802882E4
	addiu   $a0, $a0, 0x0004
	li      $t2, 0x4000
	sw      $t2, 0x0010($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, -0x2000
	li      $a2, 0x2000
	jal     camera_8029053C
	li      $a3, -0x4000
	b       .L802980C8
	nop
.L802980C8:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_802980DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	addiu   $t6, $sp, 0x0020
	sw      $t6, 0x0010($sp)
	addiu   $a2, $sp, 0x0024
	addiu   $a3, $sp, 0x0022
	addiu   $a0, $a0, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8029815C
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0024($sp)
	lui     $t7, %hi(camera_8032DF60)
	lw      $t7, %lo(camera_8032DF60)($t7)
	li      $at, 0x8800
	lh      $t8, 0x0012($t7)
	addu    $t9, $t8, $at
	sh      $t9, 0x0020($sp)
	li      $t0, 0x0800
	sh      $t0, 0x0022($sp)
.L8029815C:
	lui     $a0, %hi(camera_8032DF60)
	lw      $a0, %lo(camera_8032DF60)($a0)
	lw      $a1, 0x0028($sp)
	lh      $t1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	lh      $a3, 0x0022($sp)
	addiu   $a0, $a0, 0x0004
	addiu   $a1, $a1, 0x0010
	jal     polar_to_cartesian
	sw      $t1, 0x0010($sp)
	b       .L8029818C
	nop
.L8029818C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8029819C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0028
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x001C
	jal     vecs_cpy
	addiu   $a1, $a1, 0x0010
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x43A28000
	li.l    $a2, 0x43A28000
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x42A00000
	jal     vecf_set
	li      $a3, 0x43480000
	b       .L80298208
	nop
.L80298208:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80298218:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0008
	li      $a1, 0x42960000
	jal     camera_802899CC
	li      $a2, 0x41200000
	b       .L80298244
	nop
.L80298244:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80298254:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0008
	li      $a1, 0x42FA0000
	jal     camera_802899CC
	li      $a2, 0x41200000
	b       .L80298280
	nop
.L80298280:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_80298290:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	lw      $a1, 0x0040($sp)
	addiu   $a0, $sp, 0x0034
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	lwc1    $f4, 0x0004($t6)
	swc1    $f4, 0x0028($t7)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	lwc1    $f6, 0x000C($t8)
	swc1    $f6, 0x0030($t9)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addiu   $a0, $a0, 0x0004
	jal     camera_802893F4
	li      $a1, 0x0000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x000C
	li      $a1, 0x42FA0000
	jal     camera_802899CC
	li      $a2, 0x42480000
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li      $t0, 0x0010
	sw      $t0, 0x0010($sp)
	addiu   $a0, $a0, 0x001C
	li      $a2, 0x0010
	li      $a3, 0x0010
	jal     camera_802896F8
	addiu   $a1, $a1, 0x0010
	la.u    $t1, _camera_bss+0x540
	la.l    $t1, _camera_bss+0x540
	addiu   $a1, $t1, 0x0028
	addiu   $a2, $t1, 0x0004
	addiu   $a3, $t1, 0x001C
	jal     camera_8028CBF0
	addiu   $a0, $sp, 0x0034
	lui     $at, %hi(camera_80337644)
	lwc1    $f8, %lo(camera_80337644)($at)
	lw      $a0, 0x0040($sp)
	li.u    $a2, 0x3E19999A
	li.u    $a3, 0x3D4CCCCD
	li.l    $a3, 0x3D4CCCCD
	li.l    $a2, 0x3E19999A
	addiu   $a1, $sp, 0x0034
	swc1    $f8, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0040($sp)
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	li      $a3, 0x0000
	jal     camera_8028C9CC
	sw      $0, 0x0010($sp)
	b       .L802983A4
	nop
.L802983A4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

/* void camera_802983B4(struct camera *cam) */
.globl camera_802983B4
camera_802983B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     camera_8029051C
	lw      $a0, 0x0020($sp)
	la.u    $a0, camera_802980DC
	la.l    $a0, camera_802980DC
	lw      $a1, 0x0020($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	li      $a3, 0x0008
	la.u    $a0, camera_8029819C
	la.l    $a0, camera_8029819C
	lw      $a1, 0x0020($sp)
	li      $a2, 0x0008
	jal     camera_8029A2F8
	li      $a3, 0x0008
	la.u    $a0, camera_80298218
	la.l    $a0, camera_80298218
	lw      $a1, 0x0020($sp)
	li      $a2, 0x0008
	jal     camera_8029A2F8
	li      $a3, 0x001C
	la.u    $a0, camera_80298254
	la.l    $a0, camera_80298254
	lw      $a1, 0x0020($sp)
	li      $a2, 0x001D
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_80298290
	la.l    $a0, camera_80298290
	lw      $a1, 0x0020($sp)
	li      $a2, 0x0008
	jal     camera_8029A2F8
	li      $a3, -0x0001
	b       .L80298448
	nop
.L80298448:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void camera_80298458(struct camera *cam) */
.globl camera_80298458
camera_80298458:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     camera_80290B54
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sb      $0, 0x0030($t6)
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t8, $t7, 0x0001
	sh      $t8, %lo(_camera_bss+0x32A)($at)
	b       .L80298490
	nop
.L80298490:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_802984A0:
	sw      $a0, 0x0000($sp)
	b       .L802984AC
	nop
.L802984AC:
	jr      $ra
	nop

/* void camera_802984B4(struct camera *cam) */
.globl camera_802984B4
camera_802984B4:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	la.u    $a0, camera_802984A0
	la.l    $a0, camera_802984A0
	lw      $a1, 0x0058($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	jal     camera_8029AB94
	li      $a0, 0x0006
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lui     $t8, %hi(wave_80361318)
	lw      $t8, %lo(wave_80361318)($t8)
	beqz    $t8, .L8029878C
	nop
	addiu   $t9, $sp, 0x0024
	sh      $0, 0x0000($t9)
	lui     $t0, %hi(wave_80361318)
	lw      $t0, %lo(wave_80361318)($t0)
	li      $at, 0x43B40000
	mtc1    $at, $f6
	lwc1    $f4, 0x000C($t0)
	li      $at, 0x47800000
	mtc1    $at, $f10
	div.s   $f8, $f4, $f6
	addiu   $t3, $sp, 0x0024
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t2, $f18
	nop
	sh      $t2, 0x0002($t3)
	addiu   $t4, $sp, 0x0024
	sh      $0, 0x0004($t4)
	lui     $t5, %hi(wave_80361318)
	lw      $t5, %lo(wave_80361318)($t5)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0074($t5)
	addiu   $t6, $sp, 0x002C
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t6)
	addiu   $t7, $sp, 0x002C
	lwc1    $f10, 0x0000($t7)
	swc1    $f10, 0x0004($t7)
	mtc1    $0, $f16
	addiu   $t8, $sp, 0x002C
	swc1    $f16, 0x0008($t8)
	lui     $t9, %hi(wave_80361318)
	lw      $t9, %lo(wave_80361318)($t9)
	addiu   $t0, $sp, 0x0044
	lwc1    $f18, 0x0010($t9)
	swc1    $f18, 0x0000($t0)
	lui     $t1, %hi(wave_80361318)
	lw      $t1, %lo(wave_80361318)($t1)
	addiu   $t2, $sp, 0x0044
	lwc1    $f4, 0x0014($t1)
	swc1    $f4, 0x0004($t2)
	lui     $t3, %hi(wave_80361318)
	lw      $t3, %lo(wave_80361318)($t3)
	addiu   $t4, $sp, 0x0044
	lwc1    $f6, 0x0018($t3)
	swc1    $f6, 0x0008($t4)
	addiu   $a0, $sp, 0x0038
	addiu   $a1, $sp, 0x0044
	addiu   $a2, $sp, 0x002C
	jal     camera_8028CBF0
	addiu   $a3, $sp, 0x0024
	lui     $at, %hi(camera_80337648)
	lwc1    $f8, %lo(camera_80337648)($at)
	lw      $a0, 0x0058($sp)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0038
	swc1    $f8, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	lui     $t5, %hi(wave_80361318)
	lw      $t5, %lo(wave_80361318)($t5)
	li      $at, 0x447A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0074($t5)
	li      $at, 0x40000000
	mtc1    $at, $f4
	mul.s   $f18, $f10, $f16
	lui     $at, %hi(camera_8033764C)
	lwc1    $f8, %lo(camera_8033764C)($at)
	addiu   $t6, $sp, 0x002C
	div.s   $f6, $f18, $f4
	div.s   $f10, $f6, $f8
	neg.s   $f16, $f10
	swc1    $f16, 0x0008($t6)
	addiu   $a0, $sp, 0x0038
	addiu   $a1, $sp, 0x0044
	addiu   $a2, $sp, 0x002C
	jal     camera_8028CBF0
	addiu   $a3, $sp, 0x0024
	addiu   $t7, $sp, 0x0038
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	lwc1    $f18, 0x0004($t7)
	lwc1    $f12, 0x0000($t7)
	lw      $a2, 0x0008($t7)
	addiu   $a3, $sp, 0x0050
	jal     map_80381900
	add.s   $f14, $f18, $f4
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	nop
	add.s   $f8, $f0, $f6
	swc1    $f8, 0x0020($sp)
	addiu   $t8, $sp, 0x0038
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0020($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    .L802986AC
	nop
	lwc1    $f18, 0x0020($sp)
	addiu   $t9, $sp, 0x0038
	swc1    $f18, 0x0004($t9)
.L802986AC:
	lw      $t0, 0x0058($sp)
	li      $at, 0x0086
	lbu     $t1, 0x0030($t0)
	bne     $t1, $at, .L802986F4
	nop
	lui     $at, %hi(camera_80337650)
	lwc1    $f4, %lo(camera_80337650)($at)
	lw      $a0, 0x0058($sp)
	li.u    $a2, 0x3E4CCCCD
	li.u    $a3, 0x3DCCCCCD
	li.l    $a3, 0x3DCCCCCD
	li.l    $a2, 0x3E4CCCCD
	addiu   $a1, $sp, 0x0038
	swc1    $f4, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
	b       .L8029871C
	nop
.L802986F4:
	lui     $at, %hi(camera_80337654)
	lwc1    $f6, %lo(camera_80337654)($at)
	lw      $a0, 0x0058($sp)
	li.u    $a2, 0x3F666666
	li.l    $a2, 0x3F666666
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0038
	swc1    $f6, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0010
.L8029871C:
	lui     $t2, %hi(camera_8032DF60)
	lw      $t2, %lo(camera_8032DF60)($t2)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x0008($t2)
	addiu   $a3, $sp, 0x0054
	lwc1    $f12, 0x0004($t2)
	lw      $a2, 0x000C($t2)
	jal     map_80381900
	add.s   $f14, $f8, $f10
	lw      $t3, 0x0054($sp)
	lh      $t4, 0x0000($t3)
	slti    $at, $t4, 0x00A6
	bnez    $at, .L80298764
	nop
	slti    $at, $t4, 0x00FA
	bnez    $at, .L8029878C
	nop
.L80298764:
	lw      $t5, 0x0058($sp)
	sb      $0, 0x0030($t5)
	li      $t6, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t6, %lo(_camera_bss+0x53C)($at)
	lui     $t7, %hi(_camera_bss+0x32A)
	lh      $t7, %lo(_camera_bss+0x32A)($t7)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t8, $t7, 0x0001
	sh      $t8, %lo(_camera_bss+0x32A)($at)
.L8029878C:
	lw      $t0, 0x0058($sp)
	li      $t9, 0x0004
	sb      $t9, 0x0000($t0)
	b       .L802987A0
	nop
.L802987A0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

camera_802987B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a3, 0x4494A000
	li.l    $a3, 0x4494A000
	addiu   $a0, $a0, 0x004C
	li      $a1, 0x43810000
	jal     vecf_set
	li      $a2, 0xC3B00000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0028
	li      $a1, 0x42820000
	li      $a2, 0xC31B0000
	jal     vecf_set
	li      $a3, 0x43DE0000
	lui     $t6, %hi(camera_stage_prev)
	lw      $t6, %lo(camera_stage_prev)($t6)
	li      $at, 0x0024
	bne     $t6, $at, .L8029882C
	nop
	mtc1    $0, $f4
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	swc1    $f4, 0x002C($t7)
	mtc1    $0, $f6
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	swc1    $f6, 0x0030($t8)
.L8029882C:
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	sh      $0, 0x001C($t9)
	lui     $t0, %hi(camera_8032DF60)
	lw      $t0, %lo(camera_8032DF60)($t0)
	la.u    $t2, _camera_bss+0x540
	la.l    $t2, _camera_bss+0x540
	lh      $t1, 0x0012($t0)
	sh      $t1, 0x001E($t2)
	la.u    $t3, _camera_bss+0x540
	la.l    $t3, _camera_bss+0x540
	sh      $0, 0x0020($t3)
	la.u    $t4, _camera_bss+0x540
	lw      $a0, 0x0020($sp)
	la.l    $t4, _camera_bss+0x540
	addiu   $a1, $t4, 0x0004
	addiu   $a2, $t4, 0x0028
	addiu   $a3, $t4, 0x001C
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0004
	la.u    $t5, _camera_bss+0x540
	lw      $a0, 0x0020($sp)
	la.l    $t5, _camera_bss+0x540
	addiu   $a1, $t5, 0x0004
	addiu   $a2, $t5, 0x004C
	addiu   $a3, $t5, 0x001C
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	lw      $t6, 0x0020($sp)
	li      $at, 0x41200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0014($t6)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x0010($t6)
	lw      $a2, 0x0018($t6)
	jal     map_80381900
	add.s   $f14, $f8, $f10
	swc1    $f0, 0x0018($sp)
	lui     $at, %hi(camera_80337658)
	lwc1    $f18, %lo(camera_80337658)($at)
	lwc1    $f16, 0x0018($sp)
	c.eq.s  $f16, $f18
	nop
	bc1t    .L80298934
	nop
	li      $at, 0x42700000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	lw      $t7, 0x0020($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($sp)
	lwc1    $f10, 0x0014($t7)
	c.lt.s  $f10, $f8
	nop
	bc1f    .L80298934
	nop
	lwc1    $f16, 0x0018($sp)
	lw      $t8, 0x0020($sp)
	swc1    $f16, 0x0014($t8)
.L80298934:
	b       .L8029893C
	nop
.L8029893C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029894C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addiu   $a0, $a0, 0x004C
	jal     camera_802893F4
	li      $a1, 0x43320000
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	li.u    $a1, 0x445E4000
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li.l    $a1, 0x445E4000
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0054
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	addiu   $a1, $t6, 0x0004
	addiu   $a2, $t6, 0x004C
	addiu   $a3, $t6, 0x001C
	jal     camera_8028CBF0
	addiu   $a0, $sp, 0x001C
	addiu   $t7, $sp, 0x001C
	lwc1    $f4, 0x0000($t7)
	lw      $t8, 0x0028($sp)
	swc1    $f4, 0x0010($t8)
	addiu   $t9, $sp, 0x001C
	lwc1    $f6, 0x0008($t9)
	lw      $t0, 0x0028($sp)
	swc1    $f6, 0x0018($t0)
	b       .L802989D8
	nop
.L802989D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_802989E8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	addiu   $a0, $sp, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	addiu   $a3, $sp, 0x002C
	lwc1    $f12, 0x0004($t6)
	lw      $a2, 0x000C($t6)
	jal     map_80381900
	add.s   $f14, $f4, $f6
	addiu   $t7, $sp, 0x0020
	swc1    $f0, 0x0004($t7)
	lw      $t8, 0x002C($sp)
	beqz    $t8, .L80298AE0
	nop
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	addiu   $t0, $sp, 0x0020
	lwc1    $f10, 0x0004($t0)
	lwc1    $f8, 0x0008($t9)
	lui     $at, %hi(camera_8033765C)
	lwc1    $f18, %lo(camera_8033765C)($at)
	sub.s   $f16, $f8, $f10
	li      $at, 0x42FA0000
	mtc1    $at, $f8
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f4, $f10
	add.s   $f16, $f6, $f8
	swc1    $f16, 0x0004($t0)
	lui     $at, %hi(camera_80337660)
	lwc1    $f18, %lo(camera_80337660)($at)
	lw      $a0, 0x0030($sp)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	addu    $a3, $a2, $0
	addiu   $a1, $sp, 0x0020
	swc1    $f18, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	lw      $t2, 0x0030($sp)
	addiu   $t1, $sp, 0x0020
	lwc1    $f4, 0x0004($t1)
	lwc1    $f10, 0x0014($t2)
	c.lt.s  $f4, $f10
	nop
	bc1f    .L80298AE0
	nop
	lw      $a0, 0x0030($sp)
	addiu   $t3, $sp, 0x0020
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	lw      $a1, 0x0004($t3)
	jal     camera_802893F4
	addiu   $a0, $a0, 0x0014
.L80298AE0:
	b       .L80298AE8
	nop
.L80298AE8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void camera_80298AF8(struct camera *cam) */
.globl camera_80298AF8
camera_80298AF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, camera_802987B0
	la.l    $a0, camera_802987B0
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     camera_8029A2F8
	move    $a3, $0
	la.u    $a0, camera_8029894C
	la.l    $a0, camera_8029894C
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0005
	jal     camera_8029A2F8
	li      $a3, -0x0001
	la.u    $a0, camera_802989E8
	la.l    $a0, camera_802989E8
	lw      $a1, 0x0018($sp)
	li      $a2, 0x0005
	jal     camera_8029A2F8
	li      $a3, -0x0001
	lui     $t6, %hi(camera_stage_prev)
	lw      $t6, %lo(camera_stage_prev)($t6)
	li      $at, 0x0024
	bne     $t6, $at, .L80298B80
	nop
	lw      $a0, 0x0018($sp)
	li.u    $a2, 0x449DA000
	li.u    $a3, 0x455C1000
	li.l    $a3, 0x455C1000
	li.l    $a2, 0x449DA000
	li      $a1, 0xC3940000
	jal     vecf_set
	addiu   $a0, $a0, 0x0010
.L80298B80:
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       .L80298B90
	nop
.L80298B90:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80298BA0(struct camera *cam) */
.globl camera_80298BA0
camera_80298BA0:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	addiu   $a0, $sp, 0x0028
	li      $a1, 0x43480000
	li      $a2, 0x43960000
	jal     vecf_set
	li      $a3, 0x43480000
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	addiu   $a0, $sp, 0x0020
	move    $a1, $0
	move    $a3, $0
	jal     vecs_set
	lh      $a2, 0x0012($t6)
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0048($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a3, $sp, 0x0020
	addiu   $a1, $a1, 0x0004
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0048($sp)
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	li      $a3, 0x0000
	jal     camera_8028C9CC
	sw      $0, 0x0010($sp)
	b       .L80298C1C
	nop
.L80298C1C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

/* void camera_80298C2C(struct camera *cam) */
.globl camera_80298C2C
camera_80298C2C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	addiu   $a0, $sp, 0x0024
	lw      $a1, 0x0004($t6)
	add.s   $f8, $f4, $f6
	lw      $a3, 0x000C($t6)
	mfc1    $a2, $f8
	jal     vecf_set
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	li      $a3, 0x0000
	jal     camera_8028C9CC
	sw      $0, 0x0010($sp)
	lui     $at, %hi(camera_80337664)
	lwc1    $f10, %lo(camera_80337664)($at)
	lw      $a0, 0x0030($sp)
	li.u    $a2, 0x3CA3D70A
	li.u    $a3, 0x3A83126F
	li.l    $a3, 0x3A83126F
	li.l    $a2, 0x3CA3D70A
	addiu   $a1, $sp, 0x0024
	swc1    $f10, 0x0010($sp)
	jal     camera_80289610
	addiu   $a0, $a0, 0x0004
	jal     camera_80290098
	lw      $a0, 0x0030($sp)
	b       .L80298CBC
	nop
.L80298CBC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void camera_80298CCC(struct camera *cam) */
.globl camera_80298CCC
camera_80298CCC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0004
	sb      $t6, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	sb      $0, 0x0030($t8)
	li      $t9, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t9, %lo(_camera_bss+0x53C)($at)
	lui     $t0, %hi(_camera_bss+0x32A)
	lh      $t0, %lo(_camera_bss+0x32A)($t0)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t1, $t0, 0x0001
	sh      $t1, %lo(_camera_bss+0x32A)($at)
	lui     $t2, %hi(_camera_bss+0x32A)
	lh      $t2, %lo(_camera_bss+0x32A)($t2)
	li      $at, -0x0003
	and     $t3, $t2, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t3, %lo(_camera_bss+0x32A)($at)
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       .L80298D34
	nop
.L80298D34:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80298D44(struct camera *cam) */
.globl camera_80298D44
camera_80298D44:
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	li      $at, -0x0002
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lui     $t8, %hi(_camera_bss+0x32A)
	lh      $t8, %lo(_camera_bss+0x32A)($t8)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t9, $t8, 0x0002
	sh      $t9, %lo(_camera_bss+0x32A)($at)
	li      $t0, 0x000A
	sb      $t0, 0x0000($a0)
	sb      $0, 0x0030($a0)
	li      $at, 0x44480000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x260)
	swc1    $f4, %lo(_camera_bss+0x260)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void camera_80298D9C(struct camera *cam) */
.globl camera_80298D9C
camera_80298D9C:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	la.u    $a0, camera_80290A5C
	la.l    $a0, camera_80290A5C
	lw      $a1, 0x0048($sp)
	li      $a2, 0x0046
	jal     camera_8029A2F8
	li      $a3, 0x0046
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0040
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0080
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0064
	move    $a1, $0
	jal     camera_8028976C
	li      $a2, 0x0080
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	lh      $t9, 0x0042($t8)
	lw      $a1, 0x0048($sp)
	lw      $a2, 0x0030($t8)
	lh      $a3, 0x0040($t8)
	addiu   $a0, $t8, 0x0004
	sw      $t9, 0x0010($sp)
	jal     polar_to_cartesian
	addiu   $a1, $a1, 0x0010
	la.u    $t0, _camera_bss+0x540
	li      $at, 0x43C80000
	mtc1    $at, $f14
	la.l    $t0, _camera_bss+0x540
	lwc1    $f12, 0x0030($t0)
	li      $a2, 0x40A00000
	jal     converge_f
	li      $a3, 0x40A00000
	la.u    $t1, _camera_bss+0x540
	la.l    $t1, _camera_bss+0x540
	swc1    $f0, 0x0030($t1)
	la.u    $t2, _camera_bss+0x540
	la.l    $t2, _camera_bss+0x540
	lh      $t3, 0x0042($t2)
	addiu   $t4, $t3, 0x0040
	sh      $t4, 0x0042($t2)
	la.u    $t5, _camera_bss+0x540
	la.l    $t5, _camera_bss+0x540
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0074($t5)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0074($t5)
	lw      $t6, 0x0048($sp)
	la.u    $t7, _camera_bss+0x540
	la.l    $t7, _camera_bss+0x540
	lwc1    $f16, 0x0074($t7)
	lwc1    $f10, 0x0014($t6)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0014($t6)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	lw      $t9, 0x0020($t8)
	beqz    $t9, .L80298F70
	sw      $t9, 0x0044($sp)
	lw      $t0, 0x0044($sp)
	la.u    $t1, _camera_bss+0x540
	la.l    $t1, _camera_bss+0x540
	lwc1    $f4, 0x00A4($t0)
	swc1    $f4, 0x0008($t1)
	lw      $t3, 0x0044($sp)
	addiu   $t2, $sp, 0x0020
	lw      $t4, 0x00C4($t3)
	sh      $t4, 0x0000($t2)
	lw      $t5, 0x0044($sp)
	addiu   $t6, $sp, 0x0020
	lw      $t7, 0x00C8($t5)
	sh      $t7, 0x0002($t6)
	lw      $t8, 0x0044($sp)
	addiu   $t0, $sp, 0x0020
	lw      $t9, 0x00CC($t8)
	sh      $t9, 0x0004($t0)
	lw      $t1, 0x0044($sp)
	lw      $t3, 0x0048($sp)
	lwc1    $f6, 0x00A0($t1)
	swc1    $f6, 0x0004($t3)
	lw      $t4, 0x0044($sp)
	lw      $t2, 0x0048($sp)
	lwc1    $f8, 0x00A4($t4)
	swc1    $f8, 0x0008($t2)
	lw      $t5, 0x0044($sp)
	lw      $t7, 0x0048($sp)
	lwc1    $f10, 0x00A8($t5)
	swc1    $f10, 0x000C($t7)
	mtc1    $0, $f16
	addiu   $t6, $sp, 0x0028
	swc1    $f16, 0x0000($t6)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	addiu   $t8, $sp, 0x0028
	swc1    $f18, 0x0004($t8)
	mtc1    $0, $f4
	addiu   $t9, $sp, 0x0028
	swc1    $f4, 0x0008($t9)
	lw      $t0, 0x0048($sp)
	addiu   $a2, $sp, 0x0028
	addiu   $a3, $sp, 0x0020
	addiu   $t1, $t0, 0x0004
	move    $a0, $t1
	jal     camera_8028CBF0
	move    $a1, $t1
.L80298F70:
	lw      $t3, 0x0048($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0014($t3)
	addiu   $a3, $sp, 0x0034
	lwc1    $f12, 0x0010($t3)
	lw      $a2, 0x0018($t3)
	jal     map_80381900
	add.s   $f14, $f6, $f8
	li      $at, 0x42C80000
	mtc1    $at, $f10
	nop
	add.s   $f16, $f0, $f10
	swc1    $f16, 0x0038($sp)
	lw      $t4, 0x0048($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f18, 0x0014($t4)
	c.lt.s  $f18, $f4
	nop
	bc1f    .L80298FD0
	nop
	lwc1    $f6, 0x0038($sp)
	lw      $t2, 0x0048($sp)
	swc1    $f6, 0x0014($t2)
.L80298FD0:
	b       .L80298FD8
	nop
.L80298FD8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

/* void camera_80298FE8(struct camera *cam) */
.globl camera_80298FE8
camera_80298FE8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t7, $t6, 0x0001
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lui     $t8, %hi(camera_8032DF60)
	lw      $t8, %lo(camera_8032DF60)($t8)
	sh      $0, 0x001E($t8)
	lui     $t9, %hi(camera_8032DF60)
	lw      $t9, %lo(camera_8032DF60)($t9)
	lw      $t0, 0x0020($t9)
	beqz    $t0, .L802990A0
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	la.u    $t2, _camera_bss+0x540
	la.l    $t2, _camera_bss+0x540
	lwc1    $f4, 0x00A0($t1)
	swc1    $f4, 0x0004($t2)
	lw      $t3, 0x0024($sp)
	la.u    $t4, _camera_bss+0x540
	la.l    $t4, _camera_bss+0x540
	lwc1    $f6, 0x00A4($t3)
	swc1    $f6, 0x0008($t4)
	lw      $t5, 0x0024($sp)
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	lwc1    $f8, 0x00A8($t5)
	swc1    $f8, 0x000C($t6)
	lw      $t7, 0x0024($sp)
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	lw      $t8, 0x00C4($t7)
	sh      $t8, 0x001C($t9)
	lw      $t0, 0x0024($sp)
	la.u    $t2, _camera_bss+0x540
	la.l    $t2, _camera_bss+0x540
	lw      $t1, 0x00C8($t0)
	sh      $t1, 0x001E($t2)
	lw      $t3, 0x0024($sp)
	la.u    $t5, _camera_bss+0x540
	la.l    $t5, _camera_bss+0x540
	lw      $t4, 0x00CC($t3)
	sh      $t4, 0x0020($t5)
.L802990A0:
	la.u    $t6, _camera_bss+0x540
	la.l    $t6, _camera_bss+0x540
	lw      $a1, 0x0030($sp)
	addiu   $t7, $t6, 0x0042
	sw      $t7, 0x0010($sp)
	addiu   $a0, $t6, 0x0004
	addiu   $a2, $t6, 0x0030
	addiu   $a3, $t6, 0x0040
	jal     cartesian_to_polar
	addiu   $a1, $a1, 0x0010
	mtc1    $0, $f10
	la.u    $t8, _camera_bss+0x540
	la.l    $t8, _camera_bss+0x540
	swc1    $f10, 0x0074($t8)
	mtc1    $0, $f16
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	swc1    $f16, 0x0098($t9)
	b       .L802990F0
	nop
.L802990F0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void camera_80299100(struct camera *cam) */
.globl camera_80299100
camera_80299100:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0004
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0010
	lw      $a1, 0x0018($sp)
	la.u    $a0, _camera_bss+0x540
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x0028
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0004
	b       .L80299144
	nop
.L80299144:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80299154(struct camera *cam) */
.globl camera_80299154
camera_80299154:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0004
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0010
	lw      $a0, 0x0018($sp)
	la.u    $a1, _camera_bss+0x540
	la.l    $a1, _camera_bss+0x540
	addiu   $a1, $a1, 0x0028
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
	b       .L80299198
	nop
.L80299198:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_802991A8(struct camera *cam) */
.globl camera_802991A8
camera_802991A8:
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lw      $t7, 0x0000($t6)
	xori    $t8, $t7, 0x1320
	xori    $t9, $t7, 0x1321
	sltu    $t9, $0, $t9
	sltu    $t8, $0, $t8
	and     $t0, $t8, $t9
	beqz    $t0, .L802991E0
	nop
	li      $t1, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t1, %lo(_camera_bss+0x53C)($at)
	sb      $0, 0x0030($a0)
.L802991E0:
	jr      $ra
	nop
	jr      $ra
	nop

/* void camera_802991F0(struct camera *cam) */
.globl camera_802991F0
camera_802991F0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	jal     camera_8029051C
	lw      $a0, 0x0030($sp)
	jal     camera_8028CDEC
	addiu   $a0, $sp, 0x0022
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	li      $a3, 0x0000
	jal     camera_8028C9CC
	sw      $0, 0x0010($sp)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	lh      $t8, 0x0022($sp)
	la.u    $a0, _camera_bss+0x540
	lh      $t7, 0x0012($t6)
	la.l    $a0, _camera_bss+0x540
	addiu   $a0, $a0, 0x001C
	move    $a1, $0
	move    $a3, $0
	jal     vecs_set
	addu    $a2, $t7, $t8
	addiu   $a0, $sp, 0x0024
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	jal     vecf_set
	li      $a3, 0x437A0000
	lh      $t9, 0x0022($sp)
	bnez    $t9, .L80299280
	nop
	mtc1    $0, $f4
	addiu   $t0, $sp, 0x0024
	b       .L8029928C
	swc1    $f4, 0x0000($t0)
.L80299280:
	mtc1    $0, $f6
	addiu   $t1, $sp, 0x0024
	swc1    $f6, 0x0000($t1)
.L8029928C:
	lui     $a1, %hi(camera_8032DF60)
	lw      $a1, %lo(camera_8032DF60)($a1)
	lw      $a0, 0x0030($sp)
	la.u    $a3, _camera_bss+0x540
	la.l    $a3, _camera_bss+0x540
	addiu   $a3, $a3, 0x001C
	addiu   $a2, $sp, 0x0024
	addiu   $a1, $a1, 0x0004
	jal     camera_8028CBF0
	addiu   $a0, $a0, 0x0010
	b       .L802992BC
	nop
.L802992BC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void camera_802992CC(struct camera *cam) */
.globl camera_802992CC
camera_802992CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0000
	li      $a2, 0x42FA0000
	li      $a3, 0x0000
	jal     camera_8028C9CC
	sw      $0, 0x0010($sp)
	lw      $t6, 0x0028($sp)
	addiu   $t7, $sp, 0x0024
	sw      $t7, 0x0010($sp)
	addiu   $a2, $sp, 0x0020
	addiu   $a3, $sp, 0x0026
	addiu   $a0, $t6, 0x0004
	jal     cartesian_to_polar
	addiu   $a1, $t6, 0x0010
	addiu   $a0, $sp, 0x0020
	li      $a1, 0x43160000
	jal     camera_802899CC
	li      $a2, 0x40E00000
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lh      $a3, 0x0026($sp)
	addiu   $a0, $t8, 0x0004
	addiu   $a1, $t8, 0x0010
	jal     polar_to_cartesian
	sw      $t9, 0x0010($sp)
	jal     camera_80290098
	lw      $a0, 0x0028($sp)
	b       .L80299350
	nop
.L80299350:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void camera_80299360(struct camera *cam) */
.globl camera_80299360
camera_80299360:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0010
	lbu     $t7, 0x0001($t6)
	bne     $t7, $at, .L80299390
	nop
	lw      $t9, 0x0018($sp)
	li      $t8, 0x0010
	b       .L8029939C
	sb      $t8, 0x0000($t9)
.L80299390:
	lw      $t1, 0x0018($sp)
	li      $t0, 0x0004
	sb      $t0, 0x0000($t1)
.L8029939C:
	lw      $t2, 0x0018($sp)
	sb      $0, 0x0030($t2)
	li      $t3, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t3, %lo(_camera_bss+0x53C)($at)
	lui     $t4, %hi(_camera_bss+0x32A)
	lh      $t4, %lo(_camera_bss+0x32A)($t4)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t5, $t4, 0x0001
	sh      $t5, %lo(_camera_bss+0x32A)($at)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	li      $at, -0x0003
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	jal     camera_80290B54
	lw      $a0, 0x0018($sp)
	jal     camera_80290098
	lw      $a0, 0x0018($sp)
	b       .L802993F4
	nop
.L802993F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void camera_80299404(struct camera *cam) */
.globl camera_80299404
camera_80299404:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     camera_8029051C
	lw      $a0, 0x0020($sp)
	jal     camera_8028EEB0
	lw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x000D
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, .L80299450
	nop
	lw      $t8, 0x0020($sp)
	move    $a0, $t8
	addiu   $a1, $t8, 0x0004
	jal     camera_80282280
	addiu   $a2, $t8, 0x0010
	lw      $t9, 0x0020($sp)
	sh      $v0, 0x003A($t9)
.L80299450:
	lw      $t0, 0x0020($sp)
	li      $at, 0x000C
	lbu     $t1, 0x0000($t0)
	bne     $t1, $at, .L80299480
	nop
	lw      $t2, 0x0020($sp)
	move    $a0, $t2
	addiu   $a1, $t2, 0x0004
	jal     camera_80281904
	addiu   $a2, $t2, 0x0010
	lw      $t3, 0x0020($sp)
	sh      $v0, 0x003A($t3)
.L80299480:
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x003A($t4)
	sh      $t5, 0x0002($t4)
	lui     $t6, %hi(camera_8032DF60)
	lw      $t6, %lo(camera_8032DF60)($t6)
	li      $at, 0x1331
	lw      $t7, 0x0000($t6)
	beq     $t7, $at, .L802994D0
	nop
	li      $at, 0x1320
	beq     $t7, $at, .L802994D0
	nop
	li      $at, 0x1321
	beq     $t7, $at, .L802994D0
	nop
	li      $t8, -0x8000
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $t8, %lo(_camera_bss+0x53C)($at)
	lw      $t9, 0x0020($sp)
	sb      $0, 0x0030($t9)
.L802994D0:
	b       .L802994D8
	nop
.L802994D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_802994E8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lui     $t6, %hi(_camera_bss+0x23A)
	lh      $t6, %lo(_camera_bss+0x23A)($t6)
	sh      $t6, 0x0022($sp)
	lw      $t7, 0x0030($sp)
	lbu     $t8, 0x0030($t7)
	sb      $t8, 0x001F($sp)
	lui     $t9, %hi(_camera_bss+0x32A)
	lh      $t9, %lo(_camera_bss+0x32A)($t9)
	li      $at, -0x0002
	and     $t0, $t9, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t0, %lo(_camera_bss+0x32A)($at)
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	li      $at, -0x0101
	and     $t2, $t1, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t2, %lo(_camera_bss+0x328)($at)
	lw      $t3, 0x0030($sp)
	lbu     $t4, 0x0030($t3)
	addiu   $t5, $t4, -0x0082
	sltiu   $at, $t5, 0x0034
	beqz    $at, L8029A214
	nop
	sll     $t5, $t5, 2
	lui     $at, %hi(camera_80337668)
	addu    $at, $at, $t5
	lw      $t5, %lo(camera_80337668)($at)
	jr      $t5
	nop
.globl L8029956C
L8029956C:
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F60C+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F60C+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t9, %hi(_camera_bss+0x53A)
	lh      $t9, %lo(_camera_bss+0x53A)($t9)
	lw      $a0, 0x0030($sp)
	sll     $t0, $t9, 3
	lui     $t9, %hi(camdemo_8032F60C+0x00)
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camdemo_8032F60C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802995B4
L802995B4:
	lui     $t1, %hi(_camera_bss+0x53A)
	lh      $t1, %lo(_camera_bss+0x53A)($t1)
	lui     $t3, %hi(camdemo_8032F624+0x04)
	sll     $t2, $t1, 3
	addu    $t3, $t3, $t2
	lh      $t3, %lo(camdemo_8032F624+0x04)($t3)
	sh      $t3, 0x0020($sp)
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $t9, %hi(camdemo_8032F624+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t5, $t4, 3
	addu    $t9, $t9, $t5
	lw      $t9, %lo(camdemo_8032F624+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802995FC
L802995FC:
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F4D4+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F4D4+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t0, %hi(_camera_bss+0x53A)
	lh      $t0, %lo(_camera_bss+0x53A)($t0)
	lui     $t9, %hi(camdemo_8032F4D4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t1, $t0, 3
	addu    $t9, $t9, $t1
	lw      $t9, %lo(camdemo_8032F4D4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299644
L80299644:
	lui     $t2, %hi(_camera_bss+0x53A)
	lh      $t2, %lo(_camera_bss+0x53A)($t2)
	lui     $t4, %hi(camdemo_8032F534+0x04)
	sll     $t3, $t2, 3
	addu    $t4, $t4, $t3
	lh      $t4, %lo(camdemo_8032F534+0x04)($t4)
	sh      $t4, 0x0020($sp)
	lui     $t5, %hi(_camera_bss+0x53A)
	lh      $t5, %lo(_camera_bss+0x53A)($t5)
	lui     $t9, %hi(camdemo_8032F534+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t6, $t5, 3
	addu    $t9, $t9, $t6
	lw      $t9, %lo(camdemo_8032F534+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029968C
L8029968C:
	lui     $t7, %hi(_camera_bss+0x53A)
	lh      $t7, %lo(_camera_bss+0x53A)($t7)
	lui     $t0, %hi(camdemo_8032F554+0x04)
	sll     $t8, $t7, 3
	addu    $t0, $t0, $t8
	lh      $t0, %lo(camdemo_8032F554+0x04)($t0)
	sh      $t0, 0x0020($sp)
	lui     $t1, %hi(_camera_bss+0x53A)
	lh      $t1, %lo(_camera_bss+0x53A)($t1)
	lui     $t9, %hi(camdemo_8032F554+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t2, $t1, 3
	addu    $t9, $t9, $t2
	lw      $t9, %lo(camdemo_8032F554+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802996D4
L802996D4:
	lui     $t3, %hi(_camera_bss+0x53A)
	lh      $t3, %lo(_camera_bss+0x53A)($t3)
	lui     $t5, %hi(camdemo_8032F574+0x04)
	sll     $t4, $t3, 3
	addu    $t5, $t5, $t4
	lh      $t5, %lo(camdemo_8032F574+0x04)($t5)
	sh      $t5, 0x0020($sp)
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t9, %hi(camdemo_8032F574+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t7, $t6, 3
	addu    $t9, $t9, $t7
	lw      $t9, %lo(camdemo_8032F574+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029971C
L8029971C:
	lui     $t8, %hi(_camera_bss+0x53A)
	lh      $t8, %lo(_camera_bss+0x53A)($t8)
	lui     $t1, %hi(camdemo_8032F59C+0x04)
	sll     $t0, $t8, 3
	addu    $t1, $t1, $t0
	lh      $t1, %lo(camdemo_8032F59C+0x04)($t1)
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss+0x53A)
	lh      $t2, %lo(_camera_bss+0x53A)($t2)
	lui     $t9, %hi(camdemo_8032F59C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t3, $t2, 3
	addu    $t9, $t9, $t3
	lw      $t9, %lo(camdemo_8032F59C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299764
L80299764:
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $t6, %hi(camdemo_8032F5C4+0x04)
	sll     $t5, $t4, 3
	addu    $t6, $t6, $t5
	lh      $t6, %lo(camdemo_8032F5C4+0x04)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(_camera_bss+0x53A)
	lh      $t7, %lo(_camera_bss+0x53A)($t7)
	lui     $t9, %hi(camdemo_8032F5C4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camdemo_8032F5C4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802997AC
L802997AC:
	lui     $t0, %hi(_camera_bss+0x53A)
	lh      $t0, %lo(_camera_bss+0x53A)($t0)
	lui     $t2, %hi(camdemo_8032F5DC+0x04)
	sll     $t1, $t0, 3
	addu    $t2, $t2, $t1
	lh      $t2, %lo(camdemo_8032F5DC+0x04)($t2)
	sh      $t2, 0x0020($sp)
	lui     $t3, %hi(_camera_bss+0x53A)
	lh      $t3, %lo(_camera_bss+0x53A)($t3)
	lui     $t9, %hi(camdemo_8032F5DC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t4, $t3, 3
	addu    $t9, $t9, $t4
	lw      $t9, %lo(camdemo_8032F5DC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802997F4
L802997F4:
	lui     $t5, %hi(_camera_bss+0x53A)
	lh      $t5, %lo(_camera_bss+0x53A)($t5)
	lui     $t7, %hi(camdemo_8032F5F4+0x04)
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lh      $t7, %lo(camdemo_8032F5F4+0x04)($t7)
	sh      $t7, 0x0020($sp)
	lui     $t8, %hi(_camera_bss+0x53A)
	lh      $t8, %lo(_camera_bss+0x53A)($t8)
	lui     $t9, %hi(camdemo_8032F5F4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t0, $t8, 3
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camdemo_8032F5F4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029983C
L8029983C:
	lui     $t1, %hi(_camera_bss+0x53A)
	lh      $t1, %lo(_camera_bss+0x53A)($t1)
	lui     $t3, %hi(camdemo_8032F634+0x04)
	sll     $t2, $t1, 3
	addu    $t3, $t3, $t2
	lh      $t3, %lo(camdemo_8032F634+0x04)($t3)
	sh      $t3, 0x0020($sp)
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $t9, %hi(camdemo_8032F634+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t5, $t4, 3
	addu    $t9, $t9, $t5
	lw      $t9, %lo(camdemo_8032F634+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299884
L80299884:
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F63C+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F63C+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t0, %hi(_camera_bss+0x53A)
	lh      $t0, %lo(_camera_bss+0x53A)($t0)
	lui     $t9, %hi(camdemo_8032F63C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t1, $t0, 3
	addu    $t9, $t9, $t1
	lw      $t9, %lo(camdemo_8032F63C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802998CC
L802998CC:
	lui     $t2, %hi(_camera_bss+0x53A)
	lh      $t2, %lo(_camera_bss+0x53A)($t2)
	lui     $t4, %hi(camdemo_8032F64C+0x04)
	sll     $t3, $t2, 3
	addu    $t4, $t4, $t3
	lh      $t4, %lo(camdemo_8032F64C+0x04)($t4)
	sh      $t4, 0x0020($sp)
	lui     $t5, %hi(_camera_bss+0x53A)
	lh      $t5, %lo(_camera_bss+0x53A)($t5)
	lui     $t9, %hi(camdemo_8032F64C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t6, $t5, 3
	addu    $t9, $t9, $t6
	lw      $t9, %lo(camdemo_8032F64C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299914
L80299914:
	lui     $t7, %hi(_camera_bss+0x53A)
	lh      $t7, %lo(_camera_bss+0x53A)($t7)
	lui     $t0, %hi(camdemo_8032F65C+0x04)
	sll     $t8, $t7, 3
	addu    $t0, $t0, $t8
	lh      $t0, %lo(camdemo_8032F65C+0x04)($t0)
	sh      $t0, 0x0020($sp)
	lui     $t1, %hi(_camera_bss+0x53A)
	lh      $t1, %lo(_camera_bss+0x53A)($t1)
	lui     $t9, %hi(camdemo_8032F65C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t2, $t1, 3
	addu    $t9, $t9, $t2
	lw      $t9, %lo(camdemo_8032F65C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029995C
L8029995C:
	lui     $t3, %hi(_camera_bss+0x53A)
	lh      $t3, %lo(_camera_bss+0x53A)($t3)
	lui     $t5, %hi(camdemo_8032F674+0x04)
	sll     $t4, $t3, 3
	addu    $t5, $t5, $t4
	lh      $t5, %lo(camdemo_8032F674+0x04)($t5)
	sh      $t5, 0x0020($sp)
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t9, %hi(camdemo_8032F674+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t7, $t6, 3
	addu    $t9, $t9, $t7
	lw      $t9, %lo(camdemo_8032F674+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802999A4
L802999A4:
	lui     $t8, %hi(_camera_bss+0x53A)
	lh      $t8, %lo(_camera_bss+0x53A)($t8)
	lui     $t1, %hi(camdemo_8032F734+0x04)
	sll     $t0, $t8, 3
	addu    $t1, $t1, $t0
	lh      $t1, %lo(camdemo_8032F734+0x04)($t1)
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss+0x53A)
	lh      $t2, %lo(_camera_bss+0x53A)($t2)
	lui     $t9, %hi(camdemo_8032F734+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t3, $t2, 3
	addu    $t9, $t9, $t3
	lw      $t9, %lo(camdemo_8032F734+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L802999EC
L802999EC:
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $t6, %hi(camdemo_8032F74C+0x04)
	sll     $t5, $t4, 3
	addu    $t6, $t6, $t5
	lh      $t6, %lo(camdemo_8032F74C+0x04)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(_camera_bss+0x53A)
	lh      $t7, %lo(_camera_bss+0x53A)($t7)
	lui     $t9, %hi(camdemo_8032F74C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camdemo_8032F74C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299A34
L80299A34:
	lui     $t0, %hi(_camera_bss+0x53A)
	lh      $t0, %lo(_camera_bss+0x53A)($t0)
	lui     $t2, %hi(camdemo_8032F74C+0x04)
	sll     $t1, $t0, 3
	addu    $t2, $t2, $t1
	lh      $t2, %lo(camdemo_8032F74C+0x04)($t2)
	sh      $t2, 0x0020($sp)
	lui     $t3, %hi(_camera_bss+0x53A)
	lh      $t3, %lo(_camera_bss+0x53A)($t3)
	lui     $t9, %hi(camdemo_8032F74C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t4, $t3, 3
	addu    $t9, $t9, $t4
	lw      $t9, %lo(camdemo_8032F74C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299A7C
L80299A7C:
	lui     $t5, %hi(_camera_bss+0x53A)
	lh      $t5, %lo(_camera_bss+0x53A)($t5)
	lui     $t7, %hi(camdemo_8032F754+0x04)
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lh      $t7, %lo(camdemo_8032F754+0x04)($t7)
	sh      $t7, 0x0020($sp)
	lui     $t8, %hi(_camera_bss+0x53A)
	lh      $t8, %lo(_camera_bss+0x53A)($t8)
	lui     $t9, %hi(camdemo_8032F754+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t0, $t8, 3
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camdemo_8032F754+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299AC4
L80299AC4:
	lui     $t1, %hi(_camera_bss+0x53A)
	lh      $t1, %lo(_camera_bss+0x53A)($t1)
	lui     $t3, %hi(camdemo_8032F75C+0x04)
	sll     $t2, $t1, 3
	addu    $t3, $t3, $t2
	lh      $t3, %lo(camdemo_8032F75C+0x04)($t3)
	sh      $t3, 0x0020($sp)
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $t9, %hi(camdemo_8032F75C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t5, $t4, 3
	addu    $t9, $t9, $t5
	lw      $t9, %lo(camdemo_8032F75C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299B0C
L80299B0C:
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F764+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F764+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t0, %hi(_camera_bss+0x53A)
	lh      $t0, %lo(_camera_bss+0x53A)($t0)
	lui     $t9, %hi(camdemo_8032F764+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t1, $t0, 3
	addu    $t9, $t9, $t1
	lw      $t9, %lo(camdemo_8032F764+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299B54
L80299B54:
	lui     $t2, %hi(_camera_bss+0x53A)
	lh      $t2, %lo(_camera_bss+0x53A)($t2)
	lui     $t4, %hi(camdemo_8032F544+0x04)
	sll     $t3, $t2, 3
	addu    $t4, $t4, $t3
	lh      $t4, %lo(camdemo_8032F544+0x04)($t4)
	sh      $t4, 0x0020($sp)
	lui     $t5, %hi(_camera_bss+0x53A)
	lh      $t5, %lo(_camera_bss+0x53A)($t5)
	lui     $t9, %hi(camdemo_8032F544+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t6, $t5, 3
	addu    $t9, $t9, $t6
	lw      $t9, %lo(camdemo_8032F544+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299B9C
L80299B9C:
	lui     $t7, %hi(_camera_bss+0x53A)
	lh      $t7, %lo(_camera_bss+0x53A)($t7)
	lui     $t0, %hi(camdemo_8032F564+0x04)
	sll     $t8, $t7, 3
	addu    $t0, $t0, $t8
	lh      $t0, %lo(camdemo_8032F564+0x04)($t0)
	sh      $t0, 0x0020($sp)
	lui     $t1, %hi(_camera_bss+0x53A)
	lh      $t1, %lo(_camera_bss+0x53A)($t1)
	lui     $t9, %hi(camdemo_8032F564+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t2, $t1, 3
	addu    $t9, $t9, $t2
	lw      $t9, %lo(camdemo_8032F564+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299BE4
L80299BE4:
	lui     $t3, %hi(_camera_bss+0x53A)
	lh      $t3, %lo(_camera_bss+0x53A)($t3)
	lui     $t5, %hi(camdemo_8032F56C+0x04)
	sll     $t4, $t3, 3
	addu    $t5, $t5, $t4
	lh      $t5, %lo(camdemo_8032F56C+0x04)($t5)
	sh      $t5, 0x0020($sp)
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t9, %hi(camdemo_8032F56C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t7, $t6, 3
	addu    $t9, $t9, $t7
	lw      $t9, %lo(camdemo_8032F56C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299C2C
L80299C2C:
	lui     $t8, %hi(_camera_bss+0x53A)
	lh      $t8, %lo(_camera_bss+0x53A)($t8)
	lui     $t1, %hi(camdemo_8032F76C+0x04)
	sll     $t0, $t8, 3
	addu    $t1, $t1, $t0
	lh      $t1, %lo(camdemo_8032F76C+0x04)($t1)
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss+0x53A)
	lh      $t2, %lo(_camera_bss+0x53A)($t2)
	lui     $t9, %hi(camdemo_8032F76C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t3, $t2, 3
	addu    $t9, $t9, $t3
	lw      $t9, %lo(camdemo_8032F76C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299C74
L80299C74:
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $t6, %hi(camdemo_8032F774+0x04)
	sll     $t5, $t4, 3
	addu    $t6, $t6, $t5
	lh      $t6, %lo(camdemo_8032F774+0x04)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(_camera_bss+0x53A)
	lh      $t7, %lo(_camera_bss+0x53A)($t7)
	lui     $t9, %hi(camdemo_8032F774+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camdemo_8032F774+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299CBC
L80299CBC:
	lui     $t0, %hi(_camera_bss+0x53A)
	lh      $t0, %lo(_camera_bss+0x53A)($t0)
	lui     $t2, %hi(camdemo_8032F69C+0x04)
	sll     $t1, $t0, 3
	addu    $t2, $t2, $t1
	lh      $t2, %lo(camdemo_8032F69C+0x04)($t2)
	sh      $t2, 0x0020($sp)
	lui     $t3, %hi(_camera_bss+0x53A)
	lh      $t3, %lo(_camera_bss+0x53A)($t3)
	lui     $t9, %hi(camdemo_8032F69C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t4, $t3, 3
	addu    $t9, $t9, $t4
	lw      $t9, %lo(camdemo_8032F69C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299D04
L80299D04:
	lui     $t5, %hi(_camera_bss+0x53A)
	lh      $t5, %lo(_camera_bss+0x53A)($t5)
	lui     $t7, %hi(camdemo_8032F784+0x04)
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lh      $t7, %lo(camdemo_8032F784+0x04)($t7)
	sh      $t7, 0x0020($sp)
	lui     $t8, %hi(_camera_bss+0x53A)
	lh      $t8, %lo(_camera_bss+0x53A)($t8)
	lui     $t9, %hi(camdemo_8032F784+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t0, $t8, 3
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camdemo_8032F784+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299D4C
L80299D4C:
	lui     $t1, %hi(_camera_bss+0x53A)
	lh      $t1, %lo(_camera_bss+0x53A)($t1)
	lui     $t3, %hi(camdemo_8032F6F4+0x04)
	sll     $t2, $t1, 3
	addu    $t3, $t3, $t2
	lh      $t3, %lo(camdemo_8032F6F4+0x04)($t3)
	sh      $t3, 0x0020($sp)
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $t9, %hi(camdemo_8032F6F4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t5, $t4, 3
	addu    $t9, $t9, $t5
	lw      $t9, %lo(camdemo_8032F6F4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299D94
L80299D94:
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F6FC+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F6FC+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t0, %hi(_camera_bss+0x53A)
	lh      $t0, %lo(_camera_bss+0x53A)($t0)
	lui     $t9, %hi(camdemo_8032F6FC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t1, $t0, 3
	addu    $t9, $t9, $t1
	lw      $t9, %lo(camdemo_8032F6FC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299DDC
L80299DDC:
	lui     $t2, %hi(_camera_bss+0x53A)
	lh      $t2, %lo(_camera_bss+0x53A)($t2)
	lui     $t4, %hi(camdemo_8032F70C+0x04)
	sll     $t3, $t2, 3
	addu    $t4, $t4, $t3
	lh      $t4, %lo(camdemo_8032F70C+0x04)($t4)
	sh      $t4, 0x0020($sp)
	lui     $t5, %hi(_camera_bss+0x53A)
	lh      $t5, %lo(_camera_bss+0x53A)($t5)
	lui     $t9, %hi(camdemo_8032F70C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t6, $t5, 3
	addu    $t9, $t9, $t6
	lw      $t9, %lo(camdemo_8032F70C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299E24
L80299E24:
	lui     $t7, %hi(_camera_bss+0x53A)
	lh      $t7, %lo(_camera_bss+0x53A)($t7)
	lui     $t0, %hi(camdemo_8032F714+0x04)
	sll     $t8, $t7, 3
	addu    $t0, $t0, $t8
	lh      $t0, %lo(camdemo_8032F714+0x04)($t0)
	sh      $t0, 0x0020($sp)
	lui     $t1, %hi(_camera_bss+0x53A)
	lh      $t1, %lo(_camera_bss+0x53A)($t1)
	lui     $t9, %hi(camdemo_8032F714+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t2, $t1, 3
	addu    $t9, $t9, $t2
	lw      $t9, %lo(camdemo_8032F714+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299E6C
L80299E6C:
	lui     $t3, %hi(_camera_bss+0x53A)
	lh      $t3, %lo(_camera_bss+0x53A)($t3)
	lui     $t5, %hi(camdemo_8032F71C+0x04)
	sll     $t4, $t3, 3
	addu    $t5, $t5, $t4
	lh      $t5, %lo(camdemo_8032F71C+0x04)($t5)
	sh      $t5, 0x0020($sp)
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t9, %hi(camdemo_8032F71C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t7, $t6, 3
	addu    $t9, $t9, $t7
	lw      $t9, %lo(camdemo_8032F71C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299EB4
L80299EB4:
	lui     $t8, %hi(_camera_bss+0x53A)
	lh      $t8, %lo(_camera_bss+0x53A)($t8)
	lui     $t1, %hi(camdemo_8032F72C+0x04)
	sll     $t0, $t8, 3
	addu    $t1, $t1, $t0
	lh      $t1, %lo(camdemo_8032F72C+0x04)($t1)
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss+0x53A)
	lh      $t2, %lo(_camera_bss+0x53A)($t2)
	lui     $t9, %hi(camdemo_8032F72C+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t3, $t2, 3
	addu    $t9, $t9, $t3
	lw      $t9, %lo(camdemo_8032F72C+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299EFC
L80299EFC:
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $t6, %hi(camdemo_8032F794+0x04)
	sll     $t5, $t4, 3
	addu    $t6, $t6, $t5
	lh      $t6, %lo(camdemo_8032F794+0x04)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(_camera_bss+0x53A)
	lh      $t7, %lo(_camera_bss+0x53A)($t7)
	lui     $t9, %hi(camdemo_8032F794+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camdemo_8032F794+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299F44
L80299F44:
	lui     $t0, %hi(_camera_bss+0x53A)
	lh      $t0, %lo(_camera_bss+0x53A)($t0)
	lui     $t2, %hi(camdemo_8032F7A4+0x04)
	sll     $t1, $t0, 3
	addu    $t2, $t2, $t1
	lh      $t2, %lo(camdemo_8032F7A4+0x04)($t2)
	sh      $t2, 0x0020($sp)
	lui     $t3, %hi(_camera_bss+0x53A)
	lh      $t3, %lo(_camera_bss+0x53A)($t3)
	lui     $t9, %hi(camdemo_8032F7A4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t4, $t3, 3
	addu    $t9, $t9, $t4
	lw      $t9, %lo(camdemo_8032F7A4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299F8C
L80299F8C:
	lui     $t5, %hi(_camera_bss+0x53A)
	lh      $t5, %lo(_camera_bss+0x53A)($t5)
	lui     $t7, %hi(camdemo_8032F7B4+0x04)
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lh      $t7, %lo(camdemo_8032F7B4+0x04)($t7)
	sh      $t7, 0x0020($sp)
	lui     $t8, %hi(_camera_bss+0x53A)
	lh      $t8, %lo(_camera_bss+0x53A)($t8)
	lui     $t9, %hi(camdemo_8032F7B4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t0, $t8, 3
	addu    $t9, $t9, $t0
	lw      $t9, %lo(camdemo_8032F7B4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L80299FD4
L80299FD4:
	lui     $t1, %hi(_camera_bss+0x53A)
	lh      $t1, %lo(_camera_bss+0x53A)($t1)
	lui     $t3, %hi(camdemo_8032F6AC+0x04)
	sll     $t2, $t1, 3
	addu    $t3, $t3, $t2
	lh      $t3, %lo(camdemo_8032F6AC+0x04)($t3)
	sh      $t3, 0x0020($sp)
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $t9, %hi(camdemo_8032F6AC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t5, $t4, 3
	addu    $t9, $t9, $t5
	lw      $t9, %lo(camdemo_8032F6AC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A01C
L8029A01C:
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t8, %hi(camdemo_8032F6BC+0x04)
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lh      $t8, %lo(camdemo_8032F6BC+0x04)($t8)
	sh      $t8, 0x0020($sp)
	lui     $t0, %hi(_camera_bss+0x53A)
	lh      $t0, %lo(_camera_bss+0x53A)($t0)
	lui     $t9, %hi(camdemo_8032F6BC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t1, $t0, 3
	addu    $t9, $t9, $t1
	lw      $t9, %lo(camdemo_8032F6BC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A064
L8029A064:
	lui     $t2, %hi(_camera_bss+0x53A)
	lh      $t2, %lo(_camera_bss+0x53A)($t2)
	lui     $t4, %hi(camdemo_8032F7C4+0x04)
	sll     $t3, $t2, 3
	addu    $t4, $t4, $t3
	lh      $t4, %lo(camdemo_8032F7C4+0x04)($t4)
	sh      $t4, 0x0020($sp)
	lui     $t5, %hi(_camera_bss+0x53A)
	lh      $t5, %lo(_camera_bss+0x53A)($t5)
	lui     $t9, %hi(camdemo_8032F7C4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t6, $t5, 3
	addu    $t9, $t9, $t6
	lw      $t9, %lo(camdemo_8032F7C4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A0AC
L8029A0AC:
	lui     $t7, %hi(_camera_bss+0x53A)
	lh      $t7, %lo(_camera_bss+0x53A)($t7)
	lui     $t0, %hi(camdemo_8032F7D4+0x04)
	sll     $t8, $t7, 3
	addu    $t0, $t0, $t8
	lh      $t0, %lo(camdemo_8032F7D4+0x04)($t0)
	sh      $t0, 0x0020($sp)
	lui     $t1, %hi(_camera_bss+0x53A)
	lh      $t1, %lo(_camera_bss+0x53A)($t1)
	lui     $t9, %hi(camdemo_8032F7D4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t2, $t1, 3
	addu    $t9, $t9, $t2
	lw      $t9, %lo(camdemo_8032F7D4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A0F4
L8029A0F4:
	lui     $t3, %hi(_camera_bss+0x53A)
	lh      $t3, %lo(_camera_bss+0x53A)($t3)
	lui     $t5, %hi(camdemo_8032F7EC+0x04)
	sll     $t4, $t3, 3
	addu    $t5, $t5, $t4
	lh      $t5, %lo(camdemo_8032F7EC+0x04)($t5)
	sh      $t5, 0x0020($sp)
	lui     $t6, %hi(_camera_bss+0x53A)
	lh      $t6, %lo(_camera_bss+0x53A)($t6)
	lui     $t9, %hi(camdemo_8032F7EC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t7, $t6, 3
	addu    $t9, $t9, $t7
	lw      $t9, %lo(camdemo_8032F7EC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A13C
L8029A13C:
	lui     $t8, %hi(_camera_bss+0x53A)
	lh      $t8, %lo(_camera_bss+0x53A)($t8)
	lui     $t1, %hi(camdemo_8032F7D4+0x04)
	sll     $t0, $t8, 3
	addu    $t1, $t1, $t0
	lh      $t1, %lo(camdemo_8032F7D4+0x04)($t1)
	sh      $t1, 0x0020($sp)
	lui     $t2, %hi(_camera_bss+0x53A)
	lh      $t2, %lo(_camera_bss+0x53A)($t2)
	lui     $t9, %hi(camdemo_8032F7D4+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t3, $t2, 3
	addu    $t9, $t9, $t3
	lw      $t9, %lo(camdemo_8032F7D4+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A184
L8029A184:
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $t6, %hi(camdemo_8032F6CC+0x04)
	sll     $t5, $t4, 3
	addu    $t6, $t6, $t5
	lh      $t6, %lo(camdemo_8032F6CC+0x04)($t6)
	sh      $t6, 0x0020($sp)
	lui     $t7, %hi(_camera_bss+0x53A)
	lh      $t7, %lo(_camera_bss+0x53A)($t7)
	lui     $t9, %hi(camdemo_8032F6CC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t9, $t8
	lw      $t9, %lo(camdemo_8032F6CC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A1CC
L8029A1CC:
	lui     $t0, %hi(_camera_bss+0x53A)
	lh      $t0, %lo(_camera_bss+0x53A)($t0)
	lui     $t2, %hi(camdemo_8032F6DC+0x04)
	sll     $t1, $t0, 3
	addu    $t2, $t2, $t1
	lh      $t2, %lo(camdemo_8032F6DC+0x04)($t2)
	sh      $t2, 0x0020($sp)
	lui     $t3, %hi(_camera_bss+0x53A)
	lh      $t3, %lo(_camera_bss+0x53A)($t3)
	lui     $t9, %hi(camdemo_8032F6DC+0x00)
	lw      $a0, 0x0030($sp)
	sll     $t4, $t3, 3
	addu    $t9, $t9, $t4
	lw      $t9, %lo(camdemo_8032F6DC+0x00)($t9)
	jalr    $t9
	nop
	b       L8029A214
	nop
.globl L8029A214
L8029A214:
	lh      $t5, 0x0020($sp)
	beqz    $t5, .L8029A294
	nop
	lui     $t6, %hi(_camera_bss+0x53C)
	lh      $t6, %lo(_camera_bss+0x53C)($t6)
	andi    $t7, $t6, 0x8000
	bnez    $t7, .L8029A294
	nop
	lui     $t8, %hi(_camera_bss+0x53C)
	lh      $t8, %lo(_camera_bss+0x53C)($t8)
	slti    $at, $t8, 0x3FFF
	beqz    $at, .L8029A25C
	nop
	lui     $t0, %hi(_camera_bss+0x53C)
	lh      $t0, %lo(_camera_bss+0x53C)($t0)
	lui     $at, %hi(_camera_bss+0x53C)
	addiu   $t1, $t0, 0x0001
	sh      $t1, %lo(_camera_bss+0x53C)($at)
.L8029A25C:
	lui     $t2, %hi(_camera_bss+0x53C)
	lh      $t2, %lo(_camera_bss+0x53C)($t2)
	lh      $t3, 0x0020($sp)
	bne     $t2, $t3, .L8029A28C
	nop
	lui     $t4, %hi(_camera_bss+0x53A)
	lh      $t4, %lo(_camera_bss+0x53A)($t4)
	lui     $at, %hi(_camera_bss+0x53A)
	addiu   $t9, $t4, 0x0001
	sh      $t9, %lo(_camera_bss+0x53A)($at)
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $0, %lo(_camera_bss+0x53C)($at)
.L8029A28C:
	b       .L8029A2B0
	nop
.L8029A294:
	lui     $t5, %hi(camera_8032DF60)
	lw      $t5, %lo(camera_8032DF60)($t5)
	sh      $0, 0x001E($t5)
	lui     $at, %hi(_camera_bss+0x53A)
	sh      $0, %lo(_camera_bss+0x53A)($at)
	lui     $at, %hi(_camera_bss+0x53C)
	sh      $0, %lo(_camera_bss+0x53C)($at)
.L8029A2B0:
	lui     $at, %hi(_camera_bss+0x23C)
	sh      $0, %lo(_camera_bss+0x23C)($at)
	lw      $t6, 0x0030($sp)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, .L8029A2E0
	nop
	lbu     $t8, 0x001F($sp)
	beqz    $t8, .L8029A2E0
	nop
	lbu     $t0, 0x001F($sp)
	lui     $at, %hi(camera_8032DF54)
	sb      $t0, %lo(camera_8032DF54)($at)
.L8029A2E0:
	b       .L8029A2E8
	nop
.L8029A2E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8029A2F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lui     $t7, %hi(_camera_bss+0x53C)
	lh      $t7, %lo(_camera_bss+0x53C)($t7)
	lh      $t6, 0x0022($sp)
	slt     $at, $t7, $t6
	bnez    $at, .L8029A35C
	nop
	lh      $t8, 0x0026($sp)
	li      $at, -0x0001
	beq     $t8, $at, .L8029A34C
	nop
	lui     $t9, %hi(_camera_bss+0x53C)
	lh      $t9, %lo(_camera_bss+0x53C)($t9)
	slt     $at, $t8, $t9
	bnez    $at, .L8029A35C
	nop
.L8029A34C:
	lw      $t9, 0x0018($sp)
	lw      $a0, 0x001C($sp)
	jalr    $t9
	nop
.L8029A35C:
	b       .L8029A36C
	move    $v0, $0
	b       .L8029A36C
	nop
.L8029A36C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A37C:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	lui     $t6, %hi(_camera_bss+0x53C)
	lh      $t6, %lo(_camera_bss+0x53C)($t6)
	bne     $a1, $t6, .L8029A39C
	nop
	lui     $at, %hi(_camera_bss+0x6AC)
	sw      $a0, %lo(_camera_bss+0x6AC)($at)
.L8029A39C:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

camera_8029A3B4:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	mtc1    $a0, $f4
	lui     $at, %hi(_camera_bss+0x90)
	lwc1    $f8, %lo(_camera_bss+0x90)($at)
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    .L8029A40C
	nop
	mtc1    $a0, $f10
	lui     $at, %hi(_camera_bss+0x90)
	cvt.s.w $f16, $f10
	swc1    $f16, %lo(_camera_bss+0x90)($at)
	lui     $at, %hi(_camera_bss+0x98)
	sh      $a1, %lo(_camera_bss+0x98)($at)
	lui     $at, %hi(_camera_bss+0x96)
	sh      $a2, %lo(_camera_bss+0x96)($at)
.L8029A40C:
	jr      $ra
	nop
	jr      $ra
	nop

camera_8029A41C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lwc1    $f4, 0x0038($sp)
	lh      $a0, 0x0022($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	lw      $a3, 0x0034($sp)
	jal     camera_80289D20
	swc1    $f4, 0x0010($sp)
	sh      $v0, 0x0022($sp)
	lh      $t6, 0x0022($sp)
	beqz    $t6, .L8029A4B8
	nop
	lh      $t7, 0x0022($sp)
	lui     $at, %hi(_camera_bss+0x90)
	lwc1    $f10, %lo(_camera_bss+0x90)($at)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    .L8029A4B8
	nop
	lh      $t8, 0x0022($sp)
	lui     $at, %hi(_camera_bss+0x90)
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, %lo(_camera_bss+0x90)($at)
	lh      $t9, 0x0026($sp)
	lui     $at, %hi(_camera_bss+0x98)
	sh      $t9, %lo(_camera_bss+0x98)($at)
	lh      $t0, 0x002A($sp)
	lui     $at, %hi(_camera_bss+0x96)
	sh      $t0, %lo(_camera_bss+0x96)($at)
.L8029A4B8:
	b       .L8029A4C0
	nop
.L8029A4C0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029A4D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_camera_bss+0x90)
	lwc1    $f4, %lo(_camera_bss+0x90)($at)
	mtc1    $0, $f6
	nop
	c.eq.s  $f4, $f6
	nop
	bc1t    .L8029A59C
	nop
	lui     $t6, %hi(_camera_bss+0x94)
	lhu     $t6, %lo(_camera_bss+0x94)($t6)
	lui     $at, %hi(math_cos)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_cos)($at)
	lui     $at, %hi(_camera_bss+0x90)
	lwc1    $f10, %lo(_camera_bss+0x90)($at)
	li      $at, 0x43800000
	mtc1    $at, $f18
	mul.s   $f16, $f8, $f10
	lui     $at, %hi(_camera_bss+0x88)
	div.s   $f4, $f16, $f18
	swc1    $f4, %lo(_camera_bss+0x88)($at)
	lui     $t9, %hi(_camera_bss+0x94)
	lui     $t0, %hi(_camera_bss+0x96)
	lh      $t0, %lo(_camera_bss+0x96)($t0)
	lh      $t9, %lo(_camera_bss+0x94)($t9)
	lui     $at, %hi(_camera_bss+0x94)
	addu    $t1, $t9, $t0
	sh      $t1, %lo(_camera_bss+0x94)($at)
	lui     $t2, %hi(_camera_bss+0x98)
	lh      $t2, %lo(_camera_bss+0x98)($t2)
	la.u    $a0, _camera_bss+0x80
	la.l    $a0, _camera_bss+0x80
	mtc1    $t2, $f6
	addiu   $a0, $a0, 0x0010
	li      $a1, 0x0000
	cvt.s.w $f6, $f6
	mfc1    $a2, $f6
	jal     camera_802899CC
	nop
	lw      $t3, 0x0018($sp)
	lui     $at, %hi(_camera_bss+0x88)
	lwc1    $f10, %lo(_camera_bss+0x88)($at)
	lwc1    $f8, 0x001C($t3)
	add.s   $f16, $f8, $f10
	b       .L8029A5A4
	swc1    $f16, 0x001C($t3)
.L8029A59C:
	lui     $at, %hi(_camera_bss+0x94)
	sh      $0, %lo(_camera_bss+0x94)($at)
.L8029A5A4:
	b       .L8029A5AC
	nop
.L8029A5AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A5BC:
	sw      $a0, 0x0000($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	li      $at, -0x0041
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	b       .L8029A5E0
	nop
.L8029A5E0:
	jr      $ra
	nop

camera_8029A5E8:
	sw      $a0, 0x0000($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f4, %lo(_camera_bss+0x84)($at)
	b       .L8029A604
	nop
.L8029A604:
	jr      $ra
	nop

camera_8029A60C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x80
	la.l    $a0, _camera_bss+0x80
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	addiu   $a0, $a0, 0x0004
	jal     camera_802899CC
	li      $a1, 0x41A00000
	b       .L8029A63C
	nop
.L8029A63C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A64C:
	sw      $a0, 0x0000($sp)
	li      $at, 0x42340000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f4, %lo(_camera_bss+0x84)($at)
	b       .L8029A668
	nop
.L8029A668:
	jr      $ra
	nop

camera_8029A670:
	sw      $a0, 0x0000($sp)
	li      $at, 0x41E80000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f4, %lo(_camera_bss+0x84)($at)
	b       .L8029A68C
	nop
.L8029A68C:
	jr      $ra
	nop

camera_8029A694:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x84)
	lwc1    $f6, %lo(_camera_bss+0x84)($at)
	li      $at, 0x42700000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	la.u    $a0, _camera_bss+0x80
	la.l    $a0, _camera_bss+0x80
	addiu   $a0, $a0, 0x0004
	div.s   $f16, $f8, $f10
	li      $a1, 0x41F00000
	mfc1    $a2, $f16
	jal     camera_802899CC
	nop
	b       .L8029A6E4
	nop
.L8029A6E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A6F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x32A)
	lh      $t6, %lo(_camera_bss+0x32A)($t6)
	li      $at, -0x0041
	and     $t7, $t6, $at
	lui     $at, %hi(_camera_bss+0x32A)
	sh      $t7, %lo(_camera_bss+0x32A)($at)
	lw      $t8, 0x0018($sp)
	li.u    $at, 0x0C000203
	li.l    $at, 0x0C000203
	lw      $t9, 0x000C($t8)
	beq     $t9, $at, .L8029A740
	nop
	li.u    $at, 0x0C400202
	li.l    $at, 0x0C400202
	bne     $t9, $at, .L8029A794
	nop
.L8029A740:
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lui     $at, %hi(_camera_bss+0x84)
	lwc1    $f6, %lo(_camera_bss+0x84)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	la.u    $a0, _camera_bss+0x80
	la.l    $a0, _camera_bss+0x80
	addiu   $a0, $a0, 0x0004
	div.s   $f16, $f8, $f10
	li      $a1, 0x41F00000
	mfc1    $a2, $f16
	jal     camera_802899CC
	nop
	lui     $t0, %hi(_camera_bss+0x32A)
	lh      $t0, %lo(_camera_bss+0x32A)($t0)
	lui     $at, %hi(_camera_bss+0x32A)
	ori     $t1, $t0, 0x0040
	b       .L8029A7D8
	sh      $t1, %lo(_camera_bss+0x32A)($at)
.L8029A794:
	li      $at, 0x42340000
	mtc1    $at, $f18
	lui     $at, %hi(_camera_bss+0x84)
	lwc1    $f4, %lo(_camera_bss+0x84)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	sub.s   $f6, $f18, $f4
	la.u    $a0, _camera_bss+0x80
	la.l    $a0, _camera_bss+0x80
	addiu   $a0, $a0, 0x0004
	div.s   $f10, $f6, $f8
	li      $a1, 0x42340000
	mfc1    $a2, $f10
	jal     camera_802899CC
	nop
	lui     $at, %hi(_camera_bss+0x8C)
	sw      $0, %lo(_camera_bss+0x8C)($at)
.L8029A7D8:
	lw      $t2, 0x0018($sp)
	li      $at, 0x0201 # 0x0091
	lw      $t3, 0x0090($t2)
	lw      $t4, 0x0024($t3)
	lbu     $t5, 0x0030($t4)
	bne     $t5, $at, .L8029A804
	nop
	li      $at, 0x42340000
	mtc1    $at, $f16
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f16, %lo(_camera_bss+0x84)($at)
.L8029A804:
	b       .L8029A80C
	nop
.L8029A80C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A81C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x80
	la.l    $a0, _camera_bss+0x80
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x41F00000
	jal     camera_802899CC
	li      $a2, 0x3F800000
	b       .L8029A848
	nop
.L8029A848:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A858:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x80
	la.l    $a0, _camera_bss+0x80
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x41F00000
	jal     camera_802899CC
	li      $a2, 0x3F800000
	b       .L8029A884
	nop
.L8029A884:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A894:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x80
	la.l    $a0, _camera_bss+0x80
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x42700000
	jal     camera_802899CC
	li      $a2, 0x3F800000
	b       .L8029A8C0
	nop
.L8029A8C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A8D0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $at, %hi(_camera_bss+0x84)
	lwc1    $f4, %lo(_camera_bss+0x84)($at)
	swc1    $f4, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x000D
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	lbu     $t9, 0x0000($t8)
	bne     $t9, $at, .L8029A920
	nop
	lbu     $t0, 0x0030($t8)
	bnez    $t0, .L8029A920
	nop
	li      $at, 0x42340000
	mtc1    $at, $f6
	b       .L8029A930
	swc1    $f6, 0x001C($sp)
.L8029A920:
	li      $at, 0x42340000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x001C($sp)
.L8029A930:
	lui     $at, %hi(_camera_bss+0x84)
	lwc1    $f12, %lo(_camera_bss+0x84)($at)
	lwc1    $f14, 0x001C($sp)
	li      $a2, 0x40000000
	jal     converge_f
	li      $a3, 0x40000000
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f0, %lo(_camera_bss+0x84)($at)
	b       .L8029A958
	nop
.L8029A958:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029A968:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, _camera_bss+0x80
	la.l    $a0, _camera_bss+0x80
	addiu   $a0, $a0, 0x0004
	li      $a1, 0x42A00000
	jal     camera_802899CC
	li      $a2, 0x40600000
	b       .L8029A994
	nop
.L8029A994:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

camera_8029A9A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $at, %hi(_camera_bss+0x84)
	lwc1    $f4, %lo(_camera_bss+0x84)($at)
	swc1    $f4, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x000D
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	lbu     $t9, 0x0000($t8)
	bne     $t9, $at, .L8029A9F4
	nop
	lbu     $t0, 0x0030($t8)
	bnez    $t0, .L8029A9F4
	nop
	li      $at, 0x42700000
	mtc1    $at, $f6
	b       .L8029AA04
	swc1    $f6, 0x001C($sp)
.L8029A9F4:
	li      $at, 0x42340000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x001C($sp)
.L8029AA04:
	lui     $at, %hi(_camera_bss+0x84)
	lwc1    $f12, %lo(_camera_bss+0x84)($at)
	lwc1    $f14, 0x001C($sp)
	li      $a2, 0x40000000
	jal     converge_f
	li      $a3, 0x40000000
	lui     $at, %hi(_camera_bss+0x84)
	swc1    $f0, %lo(_camera_bss+0x84)($at)
	b       .L8029AA2C
	nop
.L8029AA2C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl s_stage_perspective
s_stage_perspective:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x002C($sp)
	sw      $t6, 0x0024($sp)
	la.u    $t7, player_data
	la.l    $t7, player_data
	sw      $t7, 0x0020($sp)
	lui     $t8, %hi(_camera_bss+0x80)
	lbu     $t8, %lo(_camera_bss+0x80)($t8)
	sb      $t8, 0x001F($sp)
	lw      $t9, 0x0028($sp)
	li      $at, 0x0001
	bne     $t9, $at, L8029AB5C
	nop
	lbu     $t0, 0x001F($sp)
	addiu   $t1, $t0, -0x0001
	sltiu   $at, $t1, 0x000D
	beqz    $at, L8029AB5C
	nop
	sll     $t1, $t1, 2
	lui     $at, %hi(camera_80337738)
	addu    $at, $at, $t1
	lw      $t1, %lo(camera_80337738)($at)
	jr      $t1
	nop
.globl L8029AAAC
L8029AAAC:
	jal     camera_8029A64C
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AABC
L8029AABC:
	jal     camera_8029A670
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AACC
L8029AACC:
	jal     camera_8029A694
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AADC
L8029AADC:
	jal     camera_8029A6F4
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AAEC
L8029AAEC:
	jal     camera_8029A9A4
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AAFC
L8029AAFC:
	jal     camera_8029A8D0
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB0C
L8029AB0C:
	jal     camera_8029A5E8
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB1C
L8029AB1C:
	jal     camera_8029A60C
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB2C
L8029AB2C:
	jal     camera_8029A968
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB3C
L8029AB3C:
	jal     camera_8029A858
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB4C
L8029AB4C:
	jal     camera_8029A894
	lw      $a0, 0x0020($sp)
	b       L8029AB5C
	nop
.globl L8029AB5C
L8029AB5C:
	lui     $at, %hi(_camera_bss+0x84)
	lwc1    $f4, %lo(_camera_bss+0x84)($at)
	lw      $t2, 0x0024($sp)
	swc1    $f4, 0x001C($t2)
	jal     camera_8029A4D0
	lw      $a0, 0x0024($sp)
	b       .L8029AB84
	move    $v0, $0
	b       .L8029AB84
	nop
.L8029AB84:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8029AB94:
	andi    $a0, $a0, 0x00FF
	lui     $at, %hi(_camera_bss+0x80)
	sb      $a0, %lo(_camera_bss+0x80)($at)
	jr      $ra
	nop
	jr      $ra
	nop

camera_8029ABB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lbu     $s0, 0x002B($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L8029ABE4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8029ABFC
	nop
	b       .L8029AC14
	nop
.L8029ABE4:
	li      $a0, 0x0100
	li      $a1, 0x0030
	jal     camera_8029A3B4
	li      $a2, -0x8000
	b       .L8029AC14
	nop
.L8029ABFC:
	li      $a0, 0x0400
	li      $a1, 0x0020
	jal     camera_8029A3B4
	li      $a2, 0x4000
	b       .L8029AC14
	nop
.L8029AC14:
	b       .L8029AC1C
	nop
.L8029AC1C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8029AC30:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	sw      $s0, 0x0028($sp)
	lbu     $s0, 0x003B($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L8029AC88
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8029AD2C
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8029ACC0
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L8029ACF4
	nop
	b       .L8029AD64
	nop
.L8029AC88:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x0044($sp)
	li.u    $a3, 0x453B8000
	li.l    $a3, 0x453B8000
	li      $a0, 0x0100
	li      $a1, 0x0030
	li      $a2, -0x8000
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	jal     camera_8029A41C
	swc1    $f8, 0x0018($sp)
	b       .L8029AD64
	nop
.L8029ACC0:
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x0044($sp)
	li      $a0, 0x0200
	li      $a1, 0x0030
	li      $a2, -0x8000
	li      $a3, 0x457A0000
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	jal     camera_8029A41C
	swc1    $f18, 0x0018($sp)
	b       .L8029AD64
	nop
.L8029ACF4:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x0044($sp)
	li.u    $a3, 0x45BB8000
	li.l    $a3, 0x45BB8000
	li      $a0, 0x0300
	li      $a1, 0x0030
	li      $a2, -0x8000
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	jal     camera_8029A41C
	swc1    $f8, 0x0018($sp)
	b       .L8029AD64
	nop
.L8029AD2C:
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x0044($sp)
	li.u    $a3, 0x453B8000
	li.l    $a3, 0x453B8000
	li      $a0, 0x0800
	li      $a1, 0x0020
	li      $a2, 0x4000
	swc1    $f10, 0x0010($sp)
	swc1    $f16, 0x0014($sp)
	jal     camera_8029A41C
	swc1    $f18, 0x0018($sp)
	b       .L8029AD64
	nop
.L8029AD64:
	b       .L8029AD6C
	nop
.L8029AD6C:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8029AD80:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x001C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f6, 0x0024($sp)
	lwc1    $f4, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	div.s   $f16, $f6, $f10
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x00A0($t6)
	sub.s   $f18, $f8, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00A0($t6)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f8, 0x0028($sp)
	lwc1    $f10, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	div.s   $f18, $f8, $f4
	mul.s   $f16, $f10, $f8
	lwc1    $f10, 0x00A4($t7)
	sub.s   $f6, $f16, $f18
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x00A4($t7)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f16, 0x002C($sp)
	lwc1    $f4, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	div.s   $f6, $f16, $f10
	mul.s   $f18, $f4, $f16
	lwc1    $f4, 0x00A8($t8)
	sub.s   $f8, $f18, $f6
	add.s   $f16, $f4, $f8
	swc1    $f16, 0x00A8($t8)
	b       .L8029AE30
	nop
.L8029AE30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029AE40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x001C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f6, 0x0024($sp)
	lwc1    $f4, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	div.s   $f16, $f6, $f10
	lw      $t1, 0x00C4($t0)
	mul.s   $f8, $f4, $f6
	sub.s   $f18, $f8, $f16
	trunc.w.s $f4, $f18
	mfc1    $t7, $f4
	nop
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	addu    $t2, $t1, $t9
	sw      $t2, 0x00C4($t0)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0028($sp)
	lwc1    $f6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	div.s   $f18, $f10, $f16
	lw      $t8, 0x00C8($t7)
	mul.s   $f8, $f6, $f10
	sub.s   $f4, $f8, $f18
	trunc.w.s $f6, $f4
	mfc1    $t4, $f6
	nop
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	addu    $t1, $t8, $t6
	sw      $t1, 0x00C8($t7)
	b       .L8029AEE8
	nop
.L8029AEE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

camera_8029AEF8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	addiu   $a0, $sp, 0x0024
	jal     camera_80287E28
	lw      $a1, 0x0038($sp)
	addiu   $t6, $sp, 0x0030
	sw      $t6, 0x0010($sp)
	addiu   $a0, $sp, 0x0024
	lw      $a1, 0x003C($sp)
	addiu   $a2, $sp, 0x0034
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x0032
	lw      $t7, 0x0038($sp)
	lh      $t8, 0x0042($sp)
	lh      $t9, 0x0032($sp)
	lh      $a2, 0x004A($sp)
	lw      $a0, 0x00C4($t7)
	jal     camera_8028956C
	subu    $a1, $t8, $t9
	lw      $t0, 0x0038($sp)
	sw      $v0, 0x00C4($t0)
	lw      $t1, 0x0038($sp)
	lh      $t2, 0x0030($sp)
	lh      $t3, 0x0046($sp)
	lh      $a2, 0x004E($sp)
	lw      $a0, 0x00C8($t1)
	jal     camera_8028956C
	addu    $a1, $t2, $t3
	lw      $t4, 0x0038($sp)
	sw      $v0, 0x00C8($t4)
	b       .L8029AF88
	nop
.L8029AF88:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

camera_8029AF98:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	la.u    $t6, _camera_bss+0x178
	la.l    $t6, _camera_bss+0x178
	addiu   $t7, $sp, 0x0028
	sw      $t7, 0x0010($sp)
	addiu   $a0, $t6, 0x008C
	addiu   $a1, $t6, 0x0080
	addiu   $a2, $sp, 0x0024
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x002A
	lh      $t9, 0x002A($sp)
	lw      $t8, 0x0038($sp)
	lh      $t1, 0x0028($sp)
	mtc1    $t9, $f6
	lwc1    $f4, 0x010C($t8)
	lwc1    $f18, 0x0108($t8)
	cvt.s.w $f8, $f6
	mtc1    $t1, $f6
	la.u    $a0, _camera_bss+0x178
	la.l    $a0, _camera_bss+0x178
	lw      $a2, 0x0110($t8)
	addiu   $a0, $a0, 0x008C
	add.s   $f10, $f4, $f8
	addiu   $a1, $sp, 0x002C
	cvt.s.w $f4, $f6
	trunc.w.s $f16, $f10
	add.s   $f8, $f18, $f4
	mfc1    $a3, $f16
	trunc.w.s $f10, $f8
	mfc1    $t3, $f10
	jal     polar_to_cartesian
	sw      $t3, 0x0010($sp)
	lw      $a0, 0x0038($sp)
	jal     camera_80287E50
	addiu   $a1, $sp, 0x002C
	lw      $t4, 0x0038($sp)
	lw      $t5, 0x017C($t4)
	mtc1    $t5, $f16
	nop
	cvt.s.w $f6, $f16
	swc1    $f6, 0x0020($sp)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x003C($sp)
	jal     camera_802899CC
	lw      $a2, 0x0040($sp)
	lwc1    $f18, 0x0020($sp)
	lw      $t9, 0x0038($sp)
	trunc.w.s $f4, $f18
	mfc1    $t7, $f4
	nop
	sw      $t7, 0x017C($t9)
	b       .L8029B07C
	nop
.L8029B07C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl camera_8029B08C
camera_8029B08C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L8029B0D8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8029B18C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8029B1D4
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8029B230
	nop
	b       .L8029B270
	nop
.L8029B0D8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0400
	sw      $t0, 0x00D0($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x7500
	sw      $t2, 0x00D4($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, -0x3700
	sw      $t4, 0x00D8($t5)
	li      $at, 0x433A0000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0110($t6)
	li      $at, 0xC61C0000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x010C($t8)
	li      $at, 0xC4400000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0108($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t7, 0x00FF
	sw      $t7, 0x017C($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0064
	sh      $t1, 0x0040($t2)
	b       .L8029B270
	nop
.L8029B18C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	jal     camera_8029AF98
	li      $a2, 0x0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0015
	bnez    $at, .L8029B1CC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t8, $t6, 0x0001
	sw      $t8, 0x014C($t5)
.L8029B1CC:
	b       .L8029B270
	nop
.L8029B1D4:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x437F0000
	jal     camera_8029AF98
	li      $a2, 0x40400000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x0154($t9)
	slti    $at, $t7, 0x0065
	bnez    $at, .L8029B228
	nop
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L8029B228
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
.L8029B228:
	b       .L8029B270
	nop
.L8029B230:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	jal     camera_8029AF98
	li      $a2, 0x41000000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x003D
	bnez    $at, .L8029B268
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L8029B268:
	b       .L8029B270
	nop
.L8029B270:
	b       .L8029B278
	nop
.L8029B278:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

camera_8029B28C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lui     $a1, %hi(_camera_bss+0x6B0)
	lw      $a1, %lo(_camera_bss+0x6B0)($a1)
	lw      $a0, 0x0034($sp)
	jal     vecf_add
	addiu   $a1, $a1, 0x0010
	lui     $t6, %hi(_camera_bss+0x6B0)
	lw      $t6, %lo(_camera_bss+0x6B0)($t6)
	addiu   $t7, $sp, 0x0024
	addiu   $t8, $t7, 0x0002
	sw      $t8, 0x0010($sp)
	move    $a3, $t7
	addiu   $a2, $sp, 0x002C
	addiu   $a0, $t6, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t6, 0x0004
	lui     $a0, %hi(_camera_bss+0x6B0)
	lw      $a0, %lo(_camera_bss+0x6B0)($a0)
	addiu   $t9, $sp, 0x0020
	sw      $t9, 0x0010($sp)
	lw      $a1, 0x0034($sp)
	addiu   $a2, $sp, 0x002C
	addiu   $a3, $sp, 0x0022
	jal     cartesian_to_polar
	addiu   $a0, $a0, 0x0010
	addiu   $t0, $sp, 0x0024
	lh      $t3, 0x0002($t0)
	lh      $t4, 0x0020($sp)
	lui     $a0, %hi(_camera_bss+0x6B0)
	lw      $a0, %lo(_camera_bss+0x6B0)($a0)
	lh      $t1, 0x0000($t0)
	lh      $t2, 0x0022($sp)
	addu    $t5, $t3, $t4
	sw      $t5, 0x0010($sp)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x002C($sp)
	addiu   $a0, $a0, 0x0010
	jal     polar_to_cartesian
	addu    $a3, $t1, $t2
	lw      $a0, 0x0030($sp)
	jal     camera_80287E50
	lw      $a1, 0x0034($sp)
	b       .L8029B348
	nop
.L8029B348:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

camera_8029B358:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	addiu   $a0, $sp, 0x0030
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     vecf_set
	li      $a3, 0x0000
	addiu   $t6, $sp, 0x0028
	sw      $t6, 0x0010($sp)
	addiu   $a0, $sp, 0x0030
	lw      $a1, 0x004C($sp)
	addiu   $a2, $sp, 0x002C
	jal     cartesian_to_polar
	addiu   $a3, $sp, 0x002A
	lh      $t7, 0x002A($sp)
	lw      $t8, 0x0048($sp)
	sw      $t7, 0x00D0($t8)
	lh      $t9, 0x0028($sp)
	lw      $t0, 0x0048($sp)
	sw      $t9, 0x00D4($t0)
	b       .L8029B3B8
	nop
.L8029B3B8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_8029B3C8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0038($sp)
	lwc1    $f4, 0x00FC($t6)
	trunc.w.s $f6, $f4
	mfc1    $t8, $f6
	nop
	sh      $t8, 0x001A($sp)
	lw      $a3, 0x0038($sp)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x003C($sp)
	addiu   $a2, $sp, 0x001A
	jal     camera_802882E4
	addiu   $a3, $a3, 0x00F8
	li      $at, 0x0001
	beq     $v0, $at, .L8029B440
	nop
	lw      $a3, 0x0038($sp)
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0040($sp)
	addiu   $a2, $sp, 0x001A
	jal     camera_802882E4
	addiu   $a3, $a3, 0x00F8
	li      $at, 0x0001
	bne     $v0, $at, .L8029B44C
	nop
.L8029B440:
	lw      $t9, 0x001C($sp)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x001C($sp)
.L8029B44C:
	lh      $t1, 0x001A($sp)
	lw      $t2, 0x0038($sp)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00FC($t2)
	lw      $a0, 0x0038($sp)
	jal     camera_8029B28C
	addiu   $a1, $sp, 0x002C
	lw      $a0, 0x0038($sp)
	jal     camera_8029B358
	addiu   $a1, $sp, 0x0020
	b       .L8029B48C
	lw      $v0, 0x001C($sp)
	b       .L8029B48C
	nop
.L8029B48C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl camera_8029B49C
camera_8029B49C:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x002C($sp)
	sw      $s1, 0x0028($sp)
	sw      $s0, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L8029B510
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8029B5D4
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8029B7A8
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8029B878
	nop
	li      $at, 0x0064
	beq     $s0, $at, .L8029BAF8
	nop
	li      $at, 0x0065
	beq     $s0, $at, .L8029BBB4
	nop
	li      $at, 0x0066
	beq     $s0, $at, .L8029BCCC
	nop
	b       .L8029BDC8
	nop
.L8029B510:
	jal     obj_lib_8029F66C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00F8($t8)
	li      $at, 0x40000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	la.u    $t1, o_13004988
	la.l    $t1, o_13004988
	li      $t0, 0x008E
	sw      $t0, 0x0018($sp)
	sw      $t1, 0x001C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t9, 0x0014($sp)
	jal     obj_lib_8029EFFC
	swc1    $f8, 0x0010($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x01AC($t2)
	lui     $t3, %hi(_camera_bss+0x6B0)
	lw      $t3, %lo(_camera_bss+0x6B0)($t3)
	li      $at, 0x00B1
	lbu     $t4, 0x0030($t3)
	bne     $t4, $at, .L8029B5B8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0064
	b       .L8029B5CC
	sw      $t5, 0x014C($t6)
.L8029B5B8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
.L8029B5CC:
	b       .L8029BDC8
	nop
.L8029B5D4:
	jal     obj_lib_8029F620
	nop
	lui     $t0, %hi(_camera_bss+0x53C)
	lh      $t0, %lo(_camera_bss+0x53C)($t0)
	slti    $at, $t0, 0x015F
	bnez    $at, .L8029B650
	nop
	slti    $at, $t0, 0x01CA
	beqz    $at, .L8029B650
	nop
	lui     $t1, %hi(_camera_bss+0x6B0)
	lw      $t1, %lo(_camera_bss+0x6B0)($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x0010($t1)
	swc1    $f10, 0x00A0($t2)
	lui     $t3, %hi(_camera_bss+0x6B0)
	lw      $t3, %lo(_camera_bss+0x6B0)($t3)
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0014($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t4)
	lui     $t5, %hi(_camera_bss+0x6B0)
	lw      $t5, %lo(_camera_bss+0x6B0)($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0018($t5)
	swc1    $f6, 0x00A8($t6)
.L8029B650:
	lui     $t8, %hi(_camera_bss+0x53C)
	lh      $t8, %lo(_camera_bss+0x53C)($t8)
	slti    $at, $t8, 0x0035
	bnez    $at, .L8029B670
	nop
	li.u    $a0, 0x6002FF01
	jal     obj_sfx_802CA190
	li.l    $a0, 0x6002FF01
.L8029B670:
	lui     $a0, %hi(object)
	la.u    $a1, campath_8032F32C
	la.u    $a2, campath_8032F214
	la.l    $a2, campath_8032F214
	la.l    $a1, campath_8032F32C
	jal     camera_8029B3C8
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, .L8029B6AC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x014C($t9)
	addiu   $t0, $t7, 0x0001
	sw      $t0, 0x014C($t9)
.L8029B6AC:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0049
	lw      $s0, 0x0154($t1)
	beq     $s0, $at, .L8029B730
	nop
	li      $at, 0x004A
	beq     $s0, $at, .L8029B74C
	nop
	li      $at, 0x0052
	beq     $s0, $at, .L8029B768
	nop
	li      $at, 0x0054
	beq     $s0, $at, .L8029B784
	nop
	li      $at, 0x0216
	beq     $s0, $at, .L8029B708
	nop
	li      $at, 0x0245
	beq     $s0, $at, .L8029B71C
	nop
	b       .L8029B7A0
	nop
.L8029B708:
	li.u    $a0, 0x04568081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x04568081
	b       .L8029B7A0
	nop
.L8029B71C:
	li.u    $a0, 0x045E8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x045E8081
	b       .L8029B7A0
	nop
.L8029B730:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F0($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x00F0($t2)
	b       .L8029B7A0
	nop
.L8029B74C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F0($t5)
	addiu   $t8, $t6, -0x0001
	sw      $t8, 0x00F0($t5)
	b       .L8029B7A0
	nop
.L8029B768:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x00F0($t7)
	addiu   $t9, $t0, 0x0001
	sw      $t9, 0x00F0($t7)
	b       .L8029B7A0
	nop
.L8029B784:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00F0($t1)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x00F0($t1)
	b       .L8029B7A0
	nop
.L8029B7A0:
	b       .L8029BDC8
	nop
.L8029B7A8:
	lui     $t2, %hi(_camera_bss+0x53C)
	lh      $t2, %lo(_camera_bss+0x53C)($t2)
	slti    $at, $t2, 0x02D1
	bnez    $at, .L8029B864
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x014C($t6)
	addiu   $t5, $t8, 0x0001
	sw      $t5, 0x014C($t6)
	li      $at, 0x44AF0000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0100($t0)
	li      $at, 0xC5800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0104($t9)
	li      $at, 0x45000000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0108($t7)
	li      $at, 0xC3480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x010C($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t4, 0x8000
	sw      $t4, 0x00C8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t8, 0x00C8($t2)
	addiu   $t5, $t8, 0x4000
	sw      $t5, 0x00D4($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t6, 0x0800
	sw      $t6, 0x00C4($t0)
.L8029B864:
	li.u    $a0, 0x6002FF01
	jal     obj_sfx_802CA190
	li.l    $a0, 0x6002FF01
	b       .L8029BDC8
	nop
.L8029B878:
	li.u    $a0, 0x6002FF01
	jal     obj_sfx_802CA190
	li.l    $a0, 0x6002FF01
	li.u    $a3, 0x4591C000
	li.l    $a3, 0x4591C000
	addiu   $a0, $sp, 0x0058
	li      $a1, 0xC48D0000
	jal     vecf_set
	li      $a2, 0x440C0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x00C8($t9)
	addiu   $t3, $t7, 0x0200
	sw      $t3, 0x00C8($t9)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x42C80000
	mtc1    $at, $f14
	li.u    $a2, 0x3CF5C28F
	li.l    $a2, 0x3CF5C28F
	jal     camera_80289488
	lwc1    $f12, 0x0100($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	swc1    $f0, 0x0100($t1)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43480000
	mtc1    $at, $f12
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	jal     atan2
	sub.s   $f14, $f4, $f6
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00D0($t5)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x8000
	li      $a2, 0x0004
	lw      $a1, 0x00C8($t2)
	lw      $a0, 0x00D4($t2)
	jal     camera_8028956C
	addu    $a1, $a1, $at
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00D4($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $a0, $sp, 0x0058
	addiu   $a1, $sp, 0x004C
	lw      $t7, 0x00C8($t0)
	lw      $a2, 0x0100($t0)
	move    $a3, $0
	jal     polar_to_cartesian
	sw      $t7, 0x0010($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43160000
	mtc1    $at, $f8
	lwc1    $f10, 0x0104($t3)
	lui     $at, %hi(math_cos)
	addiu   $t2, $sp, 0x004C
	trunc.w.s $f16, $f10
	lwc1    $f6, 0x0004($t2)
	mfc1    $t4, $f16
	nop
	andi    $t1, $t4, 0xFFFF
	sra     $t8, $t1, 4
	sll     $t5, $t8, 2
	addu    $at, $at, $t5
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f4, $f8, $f18
	add.s   $f10, $f6, $f4
	swc1    $f10, 0x0004($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x0104($t6)
	lwc1    $f8, 0x0108($t6)
	add.s   $f18, $f16, $f8
	swc1    $f18, 0x0104($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x44000000
	mtc1    $at, $f14
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	jal     camera_80289488
	lwc1    $f12, 0x0108($t0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x0108($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t3, $sp, 0x004C
	lwc1    $f6, 0x0000($t3)
	lwc1    $f4, 0x010C($t9)
	add.s   $f10, $f6, $f4
	swc1    $f10, 0x0000($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f14
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	jal     camera_80289488
	lwc1    $f12, 0x010C($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	swc1    $f0, 0x010C($t1)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     camera_80287E50
	addiu   $a1, $sp, 0x004C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x001F
	lw      $t5, 0x0154($t8)
	bne     $t5, $at, .L8029BA98
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x431E0000
	mtc1    $at, $f8
	lwc1    $f16, 0x00A4($t2)
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x00A4($t2)
	jal     object_a_802AE334
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x431E0000
	mtc1    $at, $f4
	lwc1    $f6, 0x00A4($t6)
	add.s   $f10, $f6, $f4
	swc1    $f10, 0x00A4($t6)
.L8029BA98:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0062
	lw      $t7, 0x0154($t0)
	bne     $t7, $at, .L8029BACC
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	jal     obj_lib_802A0568
	lw      $a0, 0x01AC($t9)
.L8029BACC:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x000E
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, .L8029BAF0
	nop
	li.u    $a0, 0x045F8081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x045F8081
.L8029BAF0:
	b       .L8029BDC8
	nop
.L8029BAF8:
	jal     obj_lib_8029F620
	nop
	addiu   $a0, $sp, 0x0064
	li      $a1, 0xC2C80000
	li      $a2, 0x42C80000
	jal     vecf_set
	li      $a3, 0x43960000
	lui     $a1, %hi(_camera_bss+0x6B0)
	lui     $a3, %hi(camera_8032DF60)
	lw      $a3, %lo(camera_8032DF60)($a3)
	lw      $a1, %lo(_camera_bss+0x6B0)($a1)
	addiu   $a0, $sp, 0x004C
	addiu   $a2, $sp, 0x0064
	addiu   $a3, $a3, 0x0010
	jal     camera_8028CBF0
	addiu   $a1, $a1, 0x0010
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     camera_80287E50
	addiu   $a1, $sp, 0x004C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t1, 0x1000
	sw      $t1, 0x00C4($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t5, 0x9000
	sw      $t5, 0x00C8($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t0, 0x00C4($t6)
	bgez    $t0, .L8029BB84
	sra     $t7, $t0, 1
	addiu   $at, $t0, 0x0001
	sra     $t7, $at, 1
.L8029BB84:
	sw      $t7, 0x00D0($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t3, 0x00C8($t9)
	sw      $t3, 0x00D4($t9)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t1, 0x014C($t4)
	addiu   $t8, $t1, 0x0001
	sw      $t8, 0x014C($t4)
	b       .L8029BDC8
	nop
.L8029BBB4:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_80287E28
	addiu   $a0, $sp, 0x004C
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t2, 0x0154($t5)
	slti    $at, $t2, 0x003D
	bnez    $at, .L8029BC74
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0xC1200000
	mtc1    $at, $f14
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	jal     camera_80289488
	lwc1    $f12, 0x00B8($t0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00B8($t7)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t3, 0x00C8($t6)
	addiu   $t9, $t3, 0x0078
	sw      $t9, 0x00C8($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t8, 0x00C4($t1)
	addiu   $t4, $t8, 0x0040
	sw      $t4, 0x00C4($t1)
	lui     $a1, %hi(_camera_bss+0x6B0)
	lw      $a1, %lo(_camera_bss+0x6B0)($a1)
	addiu   $a0, $sp, 0x004C
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	sll     $s1, $v0, 16
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sra     $t5, $s1, 16
	move    $s1, $t5
	move    $a1, $s1
	li      $a2, 0x0200
	jal     camera_8028984C
	lw      $a0, 0x00D4($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00D4($t0)
.L8029BC74:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t3, 0x0154($t7)
	slti    $at, $t3, 0x006A
	bnez    $at, .L8029BCB0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x014C($t9)
	addiu   $t8, $t6, 0x0001
	sw      $t8, 0x014C($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t4, 0x0E00
	sw      $t4, 0x00C4($t1)
.L8029BCB0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00D0($t5)
	jal     obj_lib_802A31E0
	nop
	b       .L8029BDC8
	nop
.L8029BCCC:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_80287E28
	addiu   $a0, $sp, 0x004C
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x42700000
	mtc1    $at, $f14
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	jal     camera_80289488
	lwc1    $f12, 0x00B8($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	swc1    $f0, 0x00B8($t0)
	lui     $a1, %hi(_camera_bss+0x6B0)
	lw      $a1, %lo(_camera_bss+0x6B0)($a1)
	addiu   $a0, $sp, 0x004C
	jal     camera_8028AAD8
	addiu   $a1, $a1, 0x0010
	sll     $s1, $v0, 16
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sra     $t7, $s1, 16
	move    $s1, $t7
	move    $a1, $s1
	li      $a2, 0x0200
	jal     camera_8028984C
	lw      $a0, 0x00D4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00D4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x003E
	beqz    $at, .L8029BD88
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x1800
	li      $a2, 0x001E
	jal     camera_8028956C
	lw      $a0, 0x00C8($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
.L8029BD88:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a1, -0x2000
	li      $a2, 0x005A
	jal     camera_8028984C
	lw      $a0, 0x00C4($t5)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C4($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00D0($t0)
	jal     obj_lib_802A31E0
	nop
	b       .L8029BDC8
	nop
.L8029BDC8:
	b       .L8029BDD0
	nop
.L8029BDD0:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0024($sp)
	lw      $s1, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0070

.globl camera_8029BDE4
camera_8029BDE4:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, .L8029BE24
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8029BE88
	nop
	b       .L8029BF40
	nop
.L8029BE24:
	lui     $at, %hi(camera_8033776C)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(camera_8033776C)($at)
	lui     $at, %hi(camera_80337770)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, %lo(camera_80337770)($at)
	swc1    $f4, 0x0110($t7)
	lui     $at, %hi(camera_80337774)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, %lo(camera_80337774)($at)
	swc1    $f6, 0x010C($t8)
	lui     $at, %hi(camera_80337778)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, %lo(camera_80337778)($at)
	swc1    $f8, 0x0108($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
	b       .L8029BF40
	nop
.L8029BE88:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	addiu   $a0, $sp, 0x0034
	lw      $a1, 0x0110($t3)
	lw      $a2, 0x010C($t3)
	jal     vecf_set
	lw      $a3, 0x0108($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0064
	beqz    $at, .L8029BEE4
	nop
	lui     $a0, %hi(object)
	li      $t6, 0x0020
	li      $t7, 0x0020
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x0034
	move    $a2, $0
	jal     camera_8029AEF8
	move    $a3, $0
.L8029BEE4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	lwc1    $f10, 0x0104($t8)
	c.eq.s  $f10, $f16
	nop
	bc1f    .L8029BF1C
	nop
	lw      $t9, 0x0154($t8)
	bnez    $t9, .L8029BF1C
	nop
	li.u    $a0, 0x30690081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30690081
.L8029BF1C:
	lui     $t1, %hi(_camera_bss+0x53C)
	lh      $t1, %lo(_camera_bss+0x53C)($t1)
	bnez    $t1, .L8029BF38
	nop
	lui     $a0, %hi(object)
	jal     obj_lib_802A0568
	lw      $a0, %lo(object)($a0)
.L8029BF38:
	b       .L8029BF40
	nop
.L8029BF40:
	jal     obj_lib_802A31E0
	nop
	b       .L8029BF50
	nop
.L8029BF50:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl camera_8029BF64
camera_8029BF64:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	jal     o_script_80383CB4
	nop
	swc1    $f0, 0x0038($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	li      $at, 0x41C80000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, .L8029BFD0
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8029BFF8
	nop
	b       .L8029C0C0
	nop
.L8029BFD0:
	lui     $at, %hi(camera_8033777C)
	jal     obj_lib_8029F430
	lwc1    $f12, %lo(camera_8033777C)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
	b       .L8029C0C0
	nop
.L8029BFF8:
	lui     $t1, %hi(_camera_bss+0x6B0)
	lw      $t1, %lo(_camera_bss+0x6B0)($t1)
	addiu   $t2, $sp, 0x0030
	sw      $t2, 0x0010($sp)
	addiu   $a2, $sp, 0x0034
	addiu   $a3, $sp, 0x0032
	addiu   $a0, $t1, 0x0010
	jal     cartesian_to_polar
	addiu   $a1, $t1, 0x0004
	lh      $t3, 0x0030($sp)
	addiu   $t4, $t3, 0x1000
	sh      $t4, 0x0030($sp)
	lh      $t5, 0x0032($sp)
	sh      $t5, 0x0032($sp)
	lui     $a0, %hi(_camera_bss+0x6B0)
	lw      $a0, %lo(_camera_bss+0x6B0)($a0)
	lh      $t6, 0x0030($sp)
	li.u    $a2, 0x465AC000
	li.l    $a2, 0x465AC000
	addiu   $a1, $sp, 0x003C
	lh      $a3, 0x0032($sp)
	addiu   $a0, $a0, 0x0010
	jal     polar_to_cartesian
	sw      $t6, 0x0010($sp)
	lui     $a0, %hi(object)
	li      $t7, 0x0008
	li      $t9, 0x0008
	sw      $t9, 0x0014($sp)
	sw      $t7, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x003C
	move    $a2, $0
	jal     camera_8029AEF8
	move    $a3, $0
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	lwc1    $f16, 0x0104($t0)
	c.eq.s  $f16, $f18
	nop
	bc1f    .L8029C0B8
	nop
	lw      $t8, 0x0154($t0)
	bnez    $t8, .L8029C0B8
	nop
	li.u    $a0, 0x30690081
	jal     obj_sfx_802CA1E0
	li.l    $a0, 0x30690081
.L8029C0B8:
	b       .L8029C0C0
	nop
.L8029C0C0:
	jal     obj_lib_802A31E0
	nop
	b       .L8029C0D0
	nop
.L8029C0D0:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

camera_8029C0E4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0040($sp)
	jal     obj_lib_8029EDCC
	lw      $a2, 0x0044($sp)
	sw      $v0, 0x001C($sp)
	jal     o_script_80383CB4
	nop
	li      $at, 0x40C00000
	mtc1    $at, $f4
	lw      $t8, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x0040($t8)
	la.u    $t9, _camera_bss+0x540
	la.l    $t9, _camera_bss+0x540
	lwc1    $f10, 0x0148($t9)
	lw      $t0, 0x001C($sp)
	swc1    $f10, 0x0104($t0)
	la.u    $t1, _camera_bss+0x540
	la.l    $t1, _camera_bss+0x540
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0148($t1)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0148($t1)
	lh      $t3, 0x0026($sp)
	lw      $t2, 0x001C($sp)
	mtc1    $t3, $f8
	lwc1    $f6, 0x00A0($t2)
	cvt.s.w $f10, $f8
	add.s   $f16, $f6, $f10
	swc1    $f16, 0x00A0($t2)
	lh      $t5, 0x002A($sp)
	lw      $t4, 0x001C($sp)
	mtc1    $t5, $f4
	lwc1    $f18, 0x00A4($t4)
	cvt.s.w $f8, $f4
	add.s   $f6, $f18, $f8
	swc1    $f6, 0x00A4($t4)
	lui     $t6, %hi(_camera_bss+0x53C)
	lh      $t6, %lo(_camera_bss+0x53C)($t6)
	slti    $at, $t6, 0x02BD
	bnez    $at, .L8029C1CC
	nop
	lw      $t7, 0x001C($sp)
	li      $at, 0xC3160000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t7)
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x00A4($t7)
.L8029C1CC:
	lh      $t9, 0x002E($sp)
	lw      $t8, 0x001C($sp)
	mtc1    $t9, $f8
	lwc1    $f18, 0x00A8($t8)
	cvt.s.w $f6, $f8
	add.s   $f10, $f18, $f6
	swc1    $f10, 0x00A8($t8)
	lw      $t0, 0x001C($sp)
	lh      $t3, 0x0032($sp)
	lw      $t1, 0x00C4($t0)
	addu    $t2, $t1, $t3
	sw      $t2, 0x00C4($t0)
	lw      $t5, 0x001C($sp)
	lh      $t6, 0x0036($sp)
	lw      $t4, 0x00C8($t5)
	addu    $t7, $t4, $t6
	sw      $t7, 0x00C8($t5)
	lw      $t9, 0x001C($sp)
	lh      $t1, 0x003A($sp)
	lw      $t8, 0x00CC($t9)
	addu    $t3, $t8, $t1
	sw      $t3, 0x00CC($t9)
	lh      $t2, 0x003E($sp)
	lw      $t0, 0x001C($sp)
	mtc1    $t2, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x00B8($t0)
	b       .L8029C244
	nop
.L8029C244:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl camera_8029C254
camera_8029C254:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	lui     $t6, %hi(_camera_bss+0x6AC)
	lw      $t6, %lo(_camera_bss+0x6AC)($t6)
	beqz    $t6, .L8029C74C
	nop
	lui     $t7, %hi(_camera_bss+0x6B0)
	lw      $t7, %lo(_camera_bss+0x6B0)($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x0010($t7)
	swc1    $f4, 0x00A0($t8)
	lui     $t9, %hi(_camera_bss+0x6B0)
	lw      $t9, %lo(_camera_bss+0x6B0)($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0014($t9)
	swc1    $f6, 0x00A4($t0)
	lui     $t1, %hi(_camera_bss+0x6B0)
	lw      $t1, %lo(_camera_bss+0x6B0)($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x0018($t1)
	swc1    $f8, 0x00A8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00C4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00C8($t4)
	lui     $t5, %hi(_camera_bss+0x6AC)
	lw      $t5, %lo(_camera_bss+0x6AC)($t5)
	addiu   $t6, $t5, -0x0005
	sltiu   $at, $t6, 0x0005
	beqz    $at, .L8029C744
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(camera_80337780)
	addu    $at, $at, $t6
	lw      $t6, %lo(camera_80337780)($at)
	jr      $t6
	nop
.globl L8029C2FC
L8029C2FC:
	lui     $a0, %hi(object)
	la.u    $a2, o_13005610
	la.l    $a2, o_13005610
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x0066
	sw      $v0, 0x0034($sp)
	b       .L8029C744
	nop
.globl L8029C320
L8029C320:
	lui     $a0, %hi(object)
	la.u    $a2, o_13005638
	la.l    $a2, o_13005638
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029EDCC
	li      $a1, 0x00DE
	sw      $v0, 0x0034($sp)
	b       .L8029C744
	nop
.globl L8029C344
L8029C344:
	la.u    $t2, o_1300565C
	la.l    $t2, o_1300565C
	lui     $a0, %hi(object)
	li      $t7, 0x1000
	li      $t8, 0x6000
	li      $t9, -0x1E00
	li      $t0, 0x0019
	li      $t1, 0x0054
	sw      $t1, 0x0020($sp)
	sw      $t0, 0x001C($sp)
	sw      $t9, 0x0018($sp)
	sw      $t8, 0x0014($sp)
	sw      $t7, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t2, 0x0024($sp)
	move    $a1, $0
	li      $a2, 0x00CD
	jal     camera_8029C0E4
	li      $a3, 0x01F4
	la.u    $t8, o_1300565C
	la.l    $t8, o_1300565C
	lui     $a0, %hi(object)
	li      $t3, 0x1800
	li      $t4, 0x6000
	li      $t5, -0x1400
	li      $t6, 0x0023
	li      $t7, 0x0054
	sw      $t7, 0x0020($sp)
	sw      $t6, 0x001C($sp)
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t8, 0x0024($sp)
	move    $a1, $0
	li      $a2, 0x00CD
	jal     camera_8029C0E4
	li      $a3, 0x0320
	la.u    $t3, o_1300565C
	la.l    $t3, o_1300565C
	lui     $a0, %hi(object)
	li      $t9, 0x0800
	li      $t0, 0x6000
	li      $t1, 0x0019
	li      $t2, 0x0054
	sw      $t2, 0x0020($sp)
	sw      $t1, 0x001C($sp)
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t3, 0x0024($sp)
	li      $a1, -0x0064
	li      $a2, 0x012C
	li      $a3, 0x01F4
	jal     camera_8029C0E4
	sw      $0, 0x0018($sp)
	la.u    $t8, o_1300565C
	la.l    $t8, o_1300565C
	lui     $a0, %hi(object)
	li      $t4, 0x4000
	li      $t5, 0x1400
	li      $t6, 0x002D
	li      $t7, 0x0054
	sw      $t7, 0x0020($sp)
	sw      $t6, 0x001C($sp)
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t8, 0x0024($sp)
	li      $a1, 0x0064
	li      $a2, -0x00C8
	li      $a3, 0x0320
	jal     camera_8029C0E4
	sw      $0, 0x0010($sp)
	la.u    $t4, o_1300565C
	la.l    $t4, o_1300565C
	lui     $a0, %hi(object)
	li      $t9, 0x1800
	li      $t0, 0x5000
	li      $t1, 0x0A00
	li      $t2, 0x0023
	li      $t3, 0x0054
	sw      $t3, 0x0020($sp)
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0018($sp)
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t4, 0x0024($sp)
	li      $a1, -0x0050
	li      $a2, 0x012C
	jal     camera_8029C0E4
	li      $a3, 0x015E
	la.u    $t0, o_1300565C
	la.l    $t0, o_1300565C
	lui     $a0, %hi(object)
	li      $t5, 0x0800
	li      $t6, 0x6000
	li      $t7, 0x2800
	li      $t8, 0x0019
	li      $t9, 0x0054
	sw      $t9, 0x0020($sp)
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t0, 0x0024($sp)
	li      $a1, -0x012C
	li      $a2, 0x012C
	jal     camera_8029C0E4
	li      $a3, 0x01F4
	la.u    $t5, o_1300565C
	la.l    $t5, o_1300565C
	lui     $a0, %hi(object)
	li      $t1, 0x4000
	li      $t2, -0x1400
	li      $t3, 0x002D
	li      $t4, 0x0054
	sw      $t4, 0x0020($sp)
	sw      $t3, 0x001C($sp)
	sw      $t2, 0x0018($sp)
	sw      $t1, 0x0014($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t5, 0x0024($sp)
	li      $a1, -0x0190
	li      $a2, -0x00C8
	li      $a3, 0x0320
	jal     camera_8029C0E4
	sw      $0, 0x0010($sp)
	b       .L8029C744
	nop
.globl L8029C554
L8029C554:
	la.u    $t0, o_1300565C
	la.l    $t0, o_1300565C
	lui     $a0, %hi(object)
	li      $t6, 0x1000
	li      $t7, 0x6000
	li      $t8, 0x0023
	li      $t9, 0x0054
	sw      $t9, 0x0020($sp)
	sw      $t8, 0x001C($sp)
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t0, 0x0024($sp)
	li      $a1, 0x0032
	li      $a2, 0x00CD
	li      $a3, 0x01F4
	jal     camera_8029C0E4
	sw      $0, 0x0018($sp)
	la.u    $t5, o_1300565C
	la.l    $t5, o_1300565C
	lui     $a0, %hi(object)
	li      $t1, 0x1800
	li      $t2, 0x6000
	li      $t3, 0x0023
	li      $t4, 0x0054
	sw      $t4, 0x0020($sp)
	sw      $t3, 0x001C($sp)
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t5, 0x0024($sp)
	move    $a1, $0
	li      $a2, 0x011D
	li      $a3, 0x0320
	jal     camera_8029C0E4
	sw      $0, 0x0018($sp)
	b       .L8029C744
	nop
.globl L8029C5EC
L8029C5EC:
	la.u    $t9, o_13005680
	la.l    $t9, o_13005680
	lui     $a0, %hi(object)
	li      $t6, -0x0F00
	li      $t7, 0x0019
	li      $t8, 0x0054
	sw      $t8, 0x0020($sp)
	sw      $t7, 0x001C($sp)
	sw      $t6, 0x0018($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t9, 0x0024($sp)
	li      $a1, -0x0064
	li      $a2, -0x0064
	li      $a3, -0x02BC
	sw      $0, 0x0010($sp)
	jal     camera_8029C0E4
	sw      $0, 0x0014($sp)
	la.u    $t3, o_13005680
	la.l    $t3, o_13005680
	lui     $a0, %hi(object)
	li      $t0, -0x1400
	li      $t1, 0x0019
	li      $t2, 0x0054
	sw      $t2, 0x0020($sp)
	sw      $t1, 0x001C($sp)
	sw      $t0, 0x0018($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t3, 0x0024($sp)
	li      $a1, -0x00FA
	li      $a2, 0x00FF
	li      $a3, -0x00C8
	sw      $0, 0x0010($sp)
	jal     camera_8029C0E4
	sw      $0, 0x0014($sp)
	la.u    $t7, o_13005680
	la.l    $t7, o_13005680
	lui     $a0, %hi(object)
	li      $t4, -0x0500
	li      $t5, 0x0023
	li      $t6, 0x0054
	sw      $t6, 0x0020($sp)
	sw      $t5, 0x001C($sp)
	sw      $t4, 0x0018($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t7, 0x0024($sp)
	li      $a1, -0x0064
	li      $a2, 0x009B
	li      $a3, -0x0258
	sw      $0, 0x0010($sp)
	jal     camera_8029C0E4
	sw      $0, 0x0014($sp)
	la.u    $t1, o_13005680
	la.l    $t1, o_13005680
	lui     $a0, %hi(object)
	li      $t8, -0x0700
	li      $t9, 0x0019
	li      $t0, 0x0054
	sw      $t0, 0x0020($sp)
	sw      $t9, 0x001C($sp)
	sw      $t8, 0x0018($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t1, 0x0024($sp)
	li      $a1, 0x00FA
	li      $a2, 0x00C8
	li      $a3, -0x04B0
	sw      $0, 0x0010($sp)
	jal     camera_8029C0E4
	sw      $0, 0x0014($sp)
	la.u    $t4, o_13005680
	la.l    $t4, o_13005680
	lui     $a0, %hi(object)
	li      $t2, 0x0019
	li      $t3, 0x0054
	sw      $t3, 0x0020($sp)
	sw      $t2, 0x001C($sp)
	lw      $a0, %lo(object)($a0)
	sw      $t4, 0x0024($sp)
	li      $a1, -0x00FA
	li      $a2, 0x00FF
	li      $a3, -0x02BC
	sw      $0, 0x0010($sp)
	sw      $0, 0x0014($sp)
	jal     camera_8029C0E4
	sw      $0, 0x0018($sp)
	b       .L8029C744
	nop
.L8029C744:
	lui     $at, %hi(_camera_bss+0x6AC)
	sw      $0, %lo(_camera_bss+0x6AC)($at)
.L8029C74C:
	b       .L8029C754
	nop
.L8029C754:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

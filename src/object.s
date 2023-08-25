.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

object_8029C780:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(obj_mario)
	lw      $t7, %lo(obj_mario)($t7)
	lw      $t6, %lo(object)($t6)
	beq     $t6, $t7, .L8029C7AC
	nop
	lw      $t8, 0x0004($sp)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0004($sp)
.L8029C7AC:
	lw      $t0, 0x0004($sp)
	lui     $at, %hi(player_data+0x48+4*0)
	lui     $t2, %hi(object)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $at, $at, $t1
	lwc1    $f4, %lo(player_data+0x48+4*0)($at)
	lw      $t2, %lo(object)($t2)
	swc1    $f4, 0x00AC($t2)
	lw      $t3, 0x0004($sp)
	lui     $at, %hi(player_data+0x48+4*1)
	lui     $t5, %hi(object)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addu    $at, $at, $t4
	lwc1    $f6, %lo(player_data+0x48+4*1)($at)
	lw      $t5, %lo(object)($t5)
	swc1    $f6, 0x00B0($t5)
	lw      $t6, 0x0004($sp)
	lui     $at, %hi(player_data+0x48+4*2)
	lui     $t8, %hi(object)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	addu    $at, $at, $t7
	lwc1    $f8, %lo(player_data+0x48+4*2)($at)
	lw      $t8, %lo(object)($t8)
	swc1    $f8, 0x00B4($t8)
	lw      $t9, 0x0004($sp)
	lui     $at, %hi(player_data+0x3C+4*0)
	lui     $t1, %hi(object)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $at, $at, $t0
	lwc1    $f10, %lo(player_data+0x3C+4*0)($at)
	lw      $t1, %lo(object)($t1)
	swc1    $f10, 0x00A0($t1)
	lw      $t2, 0x0004($sp)
	lui     $at, %hi(player_data+0x3C+4*1)
	lui     $t4, %hi(object)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 3
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 3
	addu    $at, $at, $t3
	lwc1    $f16, %lo(player_data+0x3C+4*1)($at)
	lw      $t4, %lo(object)($t4)
	swc1    $f16, 0x00A4($t4)
	lw      $t5, 0x0004($sp)
	lui     $at, %hi(player_data+0x3C+4*2)
	lui     $t7, %hi(object)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $at, $at, $t6
	lwc1    $f18, %lo(player_data+0x3C+4*2)($at)
	lw      $t7, %lo(object)($t7)
	swc1    $f18, 0x00A8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x001A($t8)
	sw      $t9, 0x00C4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x001C($t0)
	sw      $t1, 0x00C8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x001E($t2)
	sw      $t3, 0x00CC($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x001A($t4)
	sw      $t5, 0x00D0($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x001C($t6)
	sw      $t7, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t8, 0x001E($t9)
	sw      $t8, 0x00D8($t9)
	lw      $t1, 0x0004($sp)
	lui     $t3, %hi(player_data+0x32+2*0)
	lui     $t2, %hi(object)
	sll     $t0, $t1, 2
	subu    $t0, $t0, $t1
	sll     $t0, $t0, 3
	addu    $t0, $t0, $t1
	sll     $t0, $t0, 3
	addu    $t3, $t3, $t0
	lh      $t3, %lo(player_data+0x32+2*0)($t3)
	lw      $t2, %lo(object)($t2)
	sw      $t3, 0x0114($t2)
	lw      $t5, 0x0004($sp)
	lui     $t7, %hi(player_data+0x32+2*1)
	lui     $t6, %hi(object)
	sll     $t4, $t5, 2
	subu    $t4, $t4, $t5
	sll     $t4, $t4, 3
	addu    $t4, $t4, $t5
	sll     $t4, $t4, 3
	addu    $t7, $t7, $t4
	lh      $t7, %lo(player_data+0x32+2*1)($t7)
	lw      $t6, %lo(object)($t6)
	sw      $t7, 0x0118($t6)
	lw      $t8, 0x0004($sp)
	lui     $t1, %hi(player_data+0x32+2*2)
	lui     $t0, %hi(object)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t1, $t1, $t9
	lh      $t1, %lo(player_data+0x32+2*2)($t1)
	lw      $t0, %lo(object)($t0)
	sw      $t1, 0x011C($t0)
	b       .L8029C9C4
	nop
.L8029C9C4:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_8029C9CC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0020($sp)
	lw      $t7, 0x00E0($t6)
	and     $t9, $t7, $t8
	bnez    $t9, .L8029CA40
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0020($sp)
	lw      $t1, 0x00E0($t0)
	or      $t3, $t1, $t2
	sw      $t3, 0x00E0($t0)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	lh      $a2, 0x0026($sp)
	jal     obj_lib_8029ED20
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     obj_lib_8029F0E0
	lw      $a0, 0x001C($sp)
.L8029CA40:
	b       .L8029CA48
	nop
.L8029CA48:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_8029CA58
object_8029CA58:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $a0, %hi(object)
	jal     player_80254830
	lw      $a0, %lo(object)($a0)
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sw      $t6, 0x00F4($t7)
	jal     object_8029C780
	nop
	sw      $0, 0x0018($sp)
	lw      $t8, 0x0018($sp)
	lui     $t0, %hi(pl_pcl_data)
	sll     $t9, $t8, 4
	addu    $t0, $t0, $t9
	lw      $t0, %lo(pl_pcl_data)($t0)
	beqz    $t0, .L8029CB1C
	nop
.L8029CAAC:
	lw      $t1, 0x0018($sp)
	lui     $t3, %hi(pl_pcl_data)
	lw      $t4, 0x001C($sp)
	sll     $t2, $t1, 4
	addu    $t3, $t3, $t2
	lw      $t3, %lo(pl_pcl_data)($t3)
	and     $t5, $t3, $t4
	beqz    $t5, .L8029CAF4
	nop
	lw      $t6, 0x0018($sp)
	la.u    $t8, pl_pcl_data
	la.l    $t8, pl_pcl_data
	sll     $t7, $t6, 4
	addu    $t9, $t7, $t8
	lw      $a0, 0x0004($t9)
	lbu     $a1, 0x0008($t9)
	jal     object_8029C9CC
	lw      $a2, 0x000C($t9)
.L8029CAF4:
	lw      $t0, 0x0018($sp)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0018($sp)
	lw      $t2, 0x0018($sp)
	lui     $t4, %hi(pl_pcl_data)
	sll     $t3, $t2, 4
	addu    $t4, $t4, $t3
	lw      $t4, %lo(pl_pcl_data)($t4)
	bnez    $t4, .L8029CAAC
	nop
.L8029CB1C:
	b       .L8029CB24
	nop
.L8029CB24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_8029CB34:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0024($sp)
	beq     $t6, $t7, .L8029CBA8
	nop
.L8029CB58:
	lw      $t8, 0x0024($sp)
	lui     $at, %hi(object)
	sw      $t8, %lo(object)($at)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0002($t9)
	ori     $t1, $t0, 0x0020
	sh      $t1, 0x0002($t9)
	jal     o_script_main
	nop
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x0060($t2)
	sw      $t3, 0x0024($sp)
	lw      $t4, 0x001C($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0024($sp)
	bne     $t6, $t7, .L8029CB58
	nop
.L8029CBA8:
	b       .L8029CBB8
	lw      $v0, 0x001C($sp)
	b       .L8029CBB8
	nop
.L8029CBB8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_8029CBC8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0024($sp)
	beq     $t6, $t7, .L8029CD08
	nop
.L8029CBEC:
	lw      $t8, 0x0024($sp)
	lui     $at, %hi(object)
	sw      $t8, %lo(object)($at)
	sw      $0, 0x0018($sp)
	lui     $t9, %hi(object_8033D480)
	lw      $t9, %lo(object_8033D480)($t9)
	andi    $t0, $t9, 0x0010
	bnez    $t0, .L8029CC98
	nop
	lui     $t1, %hi(object)
	lui     $t2, %hi(obj_mario)
	lw      $t2, %lo(obj_mario)($t2)
	lw      $t1, %lo(object)($t1)
	bne     $t1, $t2, .L8029CC44
	nop
	lui     $t3, %hi(object_8033D480)
	lw      $t3, %lo(object_8033D480)($t3)
	andi    $t4, $t3, 0x0008
	bnez    $t4, .L8029CC44
	nop
	li      $t5, 0x0001
	sw      $t5, 0x0018($sp)
.L8029CC44:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0130($t6)
	andi    $t8, $t7, 0x0804
	beqz    $t8, .L8029CC78
	nop
	lui     $t9, %hi(object_8033D480)
	lw      $t9, %lo(object_8033D480)($t9)
	andi    $t0, $t9, 0x0008
	bnez    $t0, .L8029CC78
	nop
	li      $t1, 0x0001
	sw      $t1, 0x0018($sp)
.L8029CC78:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0074($t2)
	andi    $t4, $t3, 0x0030
	beqz    $t4, .L8029CC98
	nop
	li      $t5, 0x0001
	sw      $t5, 0x0018($sp)
.L8029CC98:
	lw      $t6, 0x0018($sp)
	beqz    $t6, .L8029CCC8
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0002($t7)
	ori     $t9, $t8, 0x0020
	sh      $t9, 0x0002($t7)
	jal     o_script_main
	nop
	b       .L8029CCE0
	nop
.L8029CCC8:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0021
	lh      $t1, 0x0002($t0)
	and     $t2, $t1, $at
	sh      $t2, 0x0002($t0)
.L8029CCE0:
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0060($t3)
	sw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0024($sp)
	bne     $t8, $t9, .L8029CBEC
	nop
.L8029CD08:
	b       .L8029CD18
	lw      $v0, 0x001C($sp)
	b       .L8029CD18
	nop
.L8029CD18:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_8029CD28:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0060($t6)
	sw      $t7, 0x0018($sp)
	lui     $t8, %hi(object_8033D480)
	lw      $t8, %lo(object_8033D480)($t8)
	andi    $t9, $t8, 0x0040
	bnez    $t9, .L8029CD68
	nop
	lw      $a0, 0x0020($sp)
	jal     object_8029CB34
	lw      $a1, 0x0018($sp)
	b       .L8029CD78
	sw      $v0, 0x001C($sp)
.L8029CD68:
	lw      $a0, 0x0020($sp)
	jal     object_8029CBC8
	lw      $a1, 0x0018($sp)
	sw      $v0, 0x001C($sp)
.L8029CD78:
	b       .L8029CD88
	lw      $v0, 0x001C($sp)
	b       .L8029CD88
	nop
.L8029CD88:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_8029CD98:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0060($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x001C($sp)
	beq     $t8, $t9, .L8029CE38
	nop
.L8029CDC0:
	lw      $t0, 0x001C($sp)
	lui     $at, %hi(object)
	sw      $t0, %lo(object)($at)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x0060($t1)
	sw      $t2, 0x001C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0001
	lh      $t4, 0x0074($t3)
	andi    $t5, $t4, 0x0001
	beq     $t5, $at, .L8029CE28
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x008C($t6)
	andi    $t8, $t7, 0x4000
	bnez    $t8, .L8029CE1C
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_8029CE58
	li      $a1, 0x00FF
.L8029CE1C:
	lui     $a0, %hi(object)
	jal     obj_list_802C9B68
	lw      $a0, %lo(object)($a0)
.L8029CE28:
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	bne     $t9, $t0, .L8029CDC0
	nop
.L8029CE38:
	b       .L8029CE48
	move    $v0, $0
	b       .L8029CE48
	nop
.L8029CE48:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_8029CE58
object_8029CE58:
	addiu   $sp, $sp, -0x0010
	andi    $a1, $a1, 0x00FF
	lh      $a2, 0x01F6($a0)
	li      $at, 0x0001
	beq     $a2, $at, .L8029CE84
	nop
	li      $at, 0x0002
	beq     $a2, $at, .L8029CEA8
	nop
	b       .L8029CECC
	nop
.L8029CE84:
	lw      $t6, 0x025C($a0)
	sw      $t6, 0x000C($sp)
	lw      $t7, 0x000C($sp)
	sll     $t9, $a1, 8
	lw      $t8, 0x0000($t7)
	or      $t0, $t8, $t9
	sw      $t0, 0x0000($t7)
	b       .L8029CECC
	nop
.L8029CEA8:
	lw      $t1, 0x025C($a0)
	sw      $t1, 0x0008($sp)
	lw      $t2, 0x0008($sp)
	sll     $t4, $a1, 8
	lhu     $t3, 0x0000($t2)
	or      $t5, $t3, $t4
	sh      $t5, 0x0000($t2)
	b       .L8029CECC
	nop
.L8029CECC:
	b       .L8029CED4
	nop
.L8029CED4:
	jr      $ra
	addiu   $sp, $sp, 0x0010

/* void object_8029CEDC(int, int group) */
.globl object_8029CEDC
object_8029CEDC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	la.u    $t6, obj_list_data
	la.l    $t6, obj_list_data
	lui     $at, %hi(obj_list)
	sw      $t6, %lo(obj_list)($at)
	sw      $0, 0x0018($sp)
.L8029CF00:
	lw      $t7, 0x0018($sp)
	lui     $t9, %hi(obj_list)
	lw      $t9, %lo(obj_list)($t9)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 3
	addu    $t0, $t8, $t9
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x0060($t1)
	sw      $t2, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	lw      $t4, 0x001C($sp)
	beq     $t3, $t4, .L8029CF84
	nop
.L8029CF44:
	lw      $t5, 0x0020($sp)
	sw      $t5, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0060($t6)
	sw      $t7, 0x0020($sp)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x002C($sp)
	lb      $t9, 0x0019($t8)
	bne     $t9, $t0, .L8029CF74
	nop
	jal     obj_list_802C9B68
	lw      $a0, 0x0024($sp)
.L8029CF74:
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	bne     $t1, $t2, .L8029CF44
	nop
.L8029CF84:
	lw      $t3, 0x0018($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x000D
	bnez    $at, .L8029CF00
	sw      $t4, 0x0018($sp)
	b       .L8029CFA0
	nop
.L8029CFA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void object_8029CFB0(int, struct spawn *) */
.globl object_8029CFB0
object_8029CFB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	la.u    $t6, obj_list_data
	la.l    $t6, obj_list_data
	lui     $at, %hi(obj_list)
	sw      $t6, %lo(obj_list)($at)
	lui     $at, %hi(object_8033D480)
	sw      $0, %lo(object_8033D480)($at)
	lui     $at, %hi(object_80361262)
	sh      $0, %lo(object_80361262)($at)
	lui     $at, %hi(object_80361264)
	sh      $0, %lo(object_80361264)($at)
	jal     obj_physics_802C8F28
	nop
	lui     $t7, %hi(scene_index)
	lh      $t7, %lo(scene_index)($t7)
	li      $at, 0x0002
	bne     $t7, $at, .L8029D018
	nop
	lui     $t8, %hi(object_8036125C)
	lh      $t8, %lo(object_8036125C)($t8)
	lui     $at, %hi(object_8036125C)
	ori     $t9, $t8, 0x0001
	sh      $t9, %lo(object_8036125C)($at)
.L8029D018:
	lw      $t0, 0x002C($sp)
	beqz    $t0, .L8029D1C0
	nop
.L8029D024:
	lw      $t1, 0x002C($sp)
	lw      $t2, 0x0010($t1)
	andi    $t3, $t2, 0xFFFF
	sh      $t3, 0x001A($sp)
	lw      $t4, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0014($t4)
	sw      $v0, 0x001C($sp)
	lw      $t5, 0x002C($sp)
	li      $at, 0xFF00
	lw      $t6, 0x0010($t5)
	andi    $t7, $t6, 0xFF00
	beq     $t7, $at, .L8029D1A8
	nop
	jal     obj_list_802C9F04
	lw      $a0, 0x001C($sp)
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t0, 0x0024($sp)
	lw      $t9, 0x0010($t8)
	sw      $t9, 0x0188($t0)
	lw      $t1, 0x002C($sp)
	lw      $t5, 0x0024($sp)
	lw      $t2, 0x0010($t1)
	srl     $t3, $t2, 16
	andi    $t4, $t3, 0x00FF
	sw      $t4, 0x0144($t5)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0024($sp)
	sw      $t6, 0x020C($t7)
	lw      $t8, 0x0024($sp)
	sw      $0, 0x01C8($t8)
	lw      $t0, 0x0024($sp)
	li      $t9, 0x0001
	sh      $t9, 0x01F6($t0)
	lw      $t1, 0x002C($sp)
	lw      $t3, 0x0024($sp)
	addiu   $t2, $t1, 0x0010
	sw      $t2, 0x025C($t3)
	lw      $t4, 0x002C($sp)
	lw      $t5, 0x0010($t4)
	andi    $t6, $t5, 0x0001
	beqz    $t6, .L8029D0E8
	nop
	lw      $t7, 0x0024($sp)
	lui     $at, %hi(obj_mario)
	sw      $t7, %lo(obj_mario)($at)
	jal     shape_8037C138
	lw      $a0, 0x0024($sp)
.L8029D0E8:
	lw      $a0, 0x0024($sp)
	jal     shape_8037C51C
	lw      $a1, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	lw      $t0, 0x0024($sp)
	lh      $t9, 0x0000($t8)
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00A0($t0)
	lw      $t1, 0x002C($sp)
	lw      $t3, 0x0024($sp)
	lh      $t2, 0x0002($t1)
	mtc1    $t2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00A4($t3)
	lw      $t4, 0x002C($sp)
	lw      $t6, 0x0024($sp)
	lh      $t5, 0x0004($t4)
	mtc1    $t5, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00A8($t6)
	lw      $t7, 0x002C($sp)
	lw      $t9, 0x0024($sp)
	lh      $t8, 0x0006($t7)
	sw      $t8, 0x00D0($t9)
	lw      $t0, 0x002C($sp)
	lw      $t2, 0x0024($sp)
	lh      $t1, 0x0008($t0)
	sw      $t1, 0x00D4($t2)
	lw      $t3, 0x002C($sp)
	lw      $t5, 0x0024($sp)
	lh      $t4, 0x000A($t3)
	sw      $t4, 0x00D8($t5)
	lw      $t6, 0x002C($sp)
	lw      $t8, 0x0024($sp)
	lh      $t7, 0x0006($t6)
	sw      $t7, 0x00C4($t8)
	lw      $t9, 0x002C($sp)
	lw      $t1, 0x0024($sp)
	lh      $t0, 0x0008($t9)
	sw      $t0, 0x00C8($t1)
	lw      $t2, 0x002C($sp)
	lw      $t4, 0x0024($sp)
	lh      $t3, 0x000A($t2)
	sw      $t3, 0x00CC($t4)
.L8029D1A8:
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x001C($t5)
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	bnez    $t7, .L8029D024
	nop
.L8029D1C0:
	b       .L8029D1C8
	nop
.L8029D1C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_8029D1D8:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_8029D1E8
object_8029D1E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_80361256)
	sh      $0, %lo(object_80361256)($at)
	lui     $at, %hi(object_8033D480)
	sw      $0, %lo(object_8033D480)($at)
	lui     $at, %hi(obj_mario)
	sw      $0, %lo(obj_mario)($at)
	lui     $at, %hi(object_80361250)
	sh      $0, %lo(object_80361250)($at)
	sw      $0, 0x001C($sp)
.L8029D214:
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(object_803611D8+1*0)
	sll     $t7, $t6, 1
	addu    $at, $at, $t7
	sb      $0, %lo(object_803611D8+1*0)($at)
	lw      $t8, 0x001C($sp)
	lui     $at, %hi(object_803611D8+1*1)
	sll     $t9, $t8, 1
	addu    $at, $at, $t9
	sb      $0, %lo(object_803611D8+1*1)($at)
	lw      $t0, 0x001C($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x003C
	bnez    $at, .L8029D214
	sw      $t1, 0x001C($sp)
	jal     obj_debug_802CABAC
	nop
	jal     obj_list_802C99B8
	nop
	la.u    $a0, obj_list_data
	jal     obj_list_802C9A3C
	la.l    $a0, obj_list_data
	jal     o_script_80385BF0
	nop
	jal     object_8029D1D8
	nop
	sw      $0, 0x001C($sp)
.L8029D280:
	lw      $t2, 0x001C($sp)
	lui     $at, %hi(object_data+0x74)
	sll     $t3, $t2, 2
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 5
	addu    $at, $at, $t3
	sh      $0, %lo(object_data+0x74)($at)
	lw      $t4, 0x001C($sp)
	la.u    $t6, object_data
	la.l    $t6, object_data
	sll     $t5, $t4, 2
	addu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 5
	jal     shape_8037C3D0
	addu    $a0, $t5, $t6
	lw      $t7, 0x001C($sp)
	addiu   $t8, $t7, 0x0001
	slti    $at, $t8, 0x00F0
	bnez    $at, .L8029D280
	sw      $t8, 0x001C($sp)
	li      $a0, 0x0800
	jal     heap_init
	move    $a1, $0
	lui     $at, %hi(object_heap)
	sw      $v0, %lo(object_heap)($at)
	la.u    $t9, obj_list_data
	la.l    $t9, obj_list_data
	lui     $at, %hi(obj_list)
	sw      $t9, %lo(obj_list)($at)
	jal     map_data_803835A4
	nop
	b       .L8029D314
	nop
.L8029D314:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_8029D324:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(obj_list)
	lw      $a0, %lo(obj_list)($a0)
	jal     object_8029CD28
	addiu   $a0, $a0, 0x0478
	lui     $at, %hi(object_8033D270)
	sw      $v0, %lo(object_8033D270)($at)
	lui     $a0, %hi(obj_list)
	lw      $a0, %lo(obj_list)($a0)
	jal     object_8029CD28
	addiu   $a0, $a0, 0x03A8
	lui     $at, %hi(object_8033D270)
	sw      $v0, %lo(object_8033D270)($at)
	b       .L8029D364
	nop
.L8029D364:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_8029D374:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0002
	sw      $t6, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	lui     $t8, %hi(object_8032FEC0)
	li      $at, -0x0001
	addu    $t8, $t8, $t7
	lb      $t8, %lo(object_8032FEC0)($t8)
	beq     $t8, $at, .L8029D40C
	sw      $t8, 0x0028($sp)
.L8029D3A4:
	lw      $t9, 0x0028($sp)
	lui     $t1, %hi(obj_list)
	lw      $t1, %lo(obj_list)($t1)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	jal     object_8029CD28
	addu    $a0, $t0, $t1
	lui     $t2, %hi(object_8033D270)
	lw      $t2, %lo(object_8033D270)($t2)
	move    $s0, $v0
	lui     $at, %hi(object_8033D270)
	addu    $t3, $t2, $s0
	sw      $t3, %lo(object_8033D270)($at)
	lw      $t4, 0x0024($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	lui     $t7, %hi(object_8032FEC0)
	li      $at, -0x0001
	addu    $t7, $t7, $t6
	lb      $t7, %lo(object_8032FEC0)($t7)
	bne     $t7, $at, .L8029D3A4
	sw      $t7, 0x0028($sp)
.L8029D40C:
	b       .L8029D414
	nop
.L8029D414:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_8029D428:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lui     $t7, %hi(object_8032FEC0)
	li      $at, -0x0001
	addu    $t7, $t7, $t6
	lb      $t7, %lo(object_8032FEC0)($t7)
	beq     $t7, $at, .L8029D4A0
	sw      $t7, 0x0020($sp)
.L8029D450:
	lw      $t8, 0x0020($sp)
	lui     $t0, %hi(obj_list)
	lw      $t0, %lo(obj_list)($t0)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	jal     object_8029CD98
	addu    $a0, $t9, $t0
	lw      $t1, 0x001C($sp)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	lui     $t4, %hi(object_8032FEC0)
	li      $at, -0x0001
	addu    $t4, $t4, $t3
	lb      $t4, %lo(object_8032FEC0)($t4)
	bne     $t4, $at, .L8029D450
	sw      $t4, 0x0020($sp)
.L8029D4A0:
	lui     $t5, %hi(object_8033D480)
	lw      $t5, %lo(object_8033D480)($t5)
	li      $at, -0x0002
	and     $t6, $t5, $at
	lui     $at, %hi(object_8033D480)
	sw      $t6, %lo(object_8033D480)($at)
	b       .L8029D4C0
	nop
.L8029D4C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_8029D4D0:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	lw      $t7, 0x0044($sp)
	lw      $t6, 0x0040($sp)
	sll     $t8, $t7, 3
	addu    $t9, $t6, $t8
	lw      $t0, 0x0000($t9)
	lw      $t1, 0x0004($t9)
	lw      $t2, -0x0008($t9)
	lw      $t3, -0x0004($t9)
	subu    $a0, $t0, $t2
	sltu    $at, $t1, $t3
	subu    $a0, $a0, $at
	jal     __ull_to_d
	subu    $a1, $t1, $t3
	sdc1    $f0, 0x0030($sp)
	ldc1    $f4, 0x0030($sp)
	mtc1    $0, $f7
	mtc1    $0, $f6
	nop
	c.lt.d  $f4, $f6
	nop
	bc1f    .L8029D548
	nop
	mtc1    $0, $f9
	mtc1    $0, $f8
	nop
	sdc1    $f8, 0x0030($sp)
.L8029D548:
	jal     __d_to_ull
	ldc1    $f12, 0x0030($sp)
	sw      $v0, 0x0018($sp)
	sw      $v1, 0x001C($sp)
	li.u    $a3, 0x000F4240
	li.l    $a3, 0x000F4240
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     __ll_mul
	li      $a2, 0x0000
	sw      $v0, 0x0020($sp)
	sw      $v1, 0x0024($sp)
	lui     $a2, %hi(osClockRate)
	lui     $a3, %hi(osClockRate+4)
	lw      $a3, %lo(osClockRate+4)($a3)
	lw      $a2, %lo(osClockRate)($a2)
	lw      $a1, 0x0024($sp)
	jal     __ull_div
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x0028($sp)
	sw      $v1, 0x002C($sp)
	lw      $a1, 0x002C($sp)
	jal     __ull_to_d
	lw      $a0, 0x0028($sp)
	lui     $at, %hi(object_803377A0)
	ldc1    $f10, %lo(object_803377A0)($at)
	lui     $at, %hi(object_803377A8)
	ldc1    $f18, %lo(object_803377A8)($at)
	div.d   $f16, $f0, $f10
	li      $t5, 0x0001
	mul.d   $f4, $f16, $f18
	cfc1    $t4, $31
	ctc1    $t5, $31
	nop
	cvt.w.d $f6, $f4
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, .L8029D63C
	nop
	li      $at, 0x41E00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	li      $t5, 0x0001
	sub.d   $f6, $f4, $f6
	ctc1    $t5, $31
	nop
	cvt.w.d $f6, $f6
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	bnez    $t5, .L8029D634
	nop
	mfc1    $t5, $f6
	li      $at, 0x80000000
	b       .L8029D64C
	or      $t5, $t5, $at
.L8029D634:
	b       .L8029D64C
	li      $t5, -0x0001
.L8029D63C:
	mfc1    $t5, $f6
	nop
	bltz    $t5, .L8029D634
	nop
.L8029D64C:
	ctc1    $t4, $31
	sh      $t5, 0x003E($sp)
	nop
	lhu     $t7, 0x003E($sp)
	slti    $at, $t7, 0x03E8
	bnez    $at, .L8029D670
	nop
	li      $t6, 0x03E7
	sh      $t6, 0x003E($sp)
.L8029D670:
	b       .L8029D680
	lhu     $v0, 0x003E($sp)
	b       .L8029D680
	nop
.L8029D680:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

/* void object_8029D690(int) */
.globl object_8029D690
object_8029D690:
	addiu   $sp, $sp, -0x0108
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0108($sp)
	jal     obj_debug_802CA3B0
	nop
	addiu   $t6, $sp, 0x0018
	sw      $v0, 0x0000($t6)
	sw      $v1, 0x0004($t6)
	lui     $t7, %hi(object_8033D480)
	lw      $t7, %lo(object_8033D480)($t7)
	li      $at, -0x0021
	and     $t8, $t7, $at
	lui     $at, %hi(object_8033D480)
	sw      $t8, %lo(object_8033D480)($at)
	lui     $at, %hi(object_8036125E)
	sh      $0, %lo(object_8036125E)($at)
	lui     $at, %hi(object_80361260)
	sh      $0, %lo(object_80361260)($at)
	lui     $at, %hi(object_80361180)
	sh      $0, %lo(object_80361180)($at)
	jal     obj_debug_802CAC20
	nop
	jal     obj_debug_802CB0B0
	nop
	la.u    $t9, obj_list_data
	la.l    $t9, obj_list_data
	lui     $at, %hi(obj_list)
	sw      $t9, %lo(obj_list)($at)
	addiu   $t0, $sp, 0x0018
	lw      $a0, 0x0000($t0)
	jal     obj_debug_802CA3E0
	lw      $a1, 0x0004($t0)
	addiu   $t1, $sp, 0x0018
	sw      $v0, 0x0008($t1)
	sw      $v1, 0x000C($t1)
	jal     map_data_803835A4
	nop
	addiu   $t2, $sp, 0x0018
	lw      $a0, 0x0000($t2)
	jal     obj_debug_802CA3E0
	lw      $a1, 0x0004($t2)
	addiu   $t3, $sp, 0x0018
	sw      $v0, 0x0010($t3)
	sw      $v1, 0x0014($t3)
	jal     object_8029D324
	nop
	jal     obj_physics_802C8EC0
	nop
	addiu   $t4, $sp, 0x0018
	lw      $a0, 0x0000($t4)
	jal     obj_debug_802CA3E0
	lw      $a1, 0x0004($t4)
	addiu   $t5, $sp, 0x0018
	sw      $v0, 0x0018($t5)
	sw      $v1, 0x001C($t5)
	jal     obj_collision_802C9724
	nop
	addiu   $t6, $sp, 0x0018
	lw      $a0, 0x0000($t6)
	jal     obj_debug_802CA3E0
	lw      $a1, 0x0004($t6)
	addiu   $t7, $sp, 0x0018
	sw      $v0, 0x0020($t7)
	sw      $v1, 0x0024($t7)
	jal     object_8029D374
	nop
	addiu   $t8, $sp, 0x0018
	lw      $a0, 0x0000($t8)
	jal     obj_debug_802CA3E0
	lw      $a1, 0x0004($t8)
	addiu   $t9, $sp, 0x0018
	sw      $v0, 0x0028($t9)
	sw      $v1, 0x002C($t9)
	jal     object_8029D428
	nop
	addiu   $t0, $sp, 0x0018
	lw      $a0, 0x0000($t0)
	jal     obj_debug_802CA3E0
	lw      $a1, 0x0004($t0)
	addiu   $t1, $sp, 0x0018
	sw      $v0, 0x0030($t1)
	sw      $v1, 0x0034($t1)
	jal     obj_physics_802C89F0
	nop
	addiu   $t2, $sp, 0x0018
	lw      $a0, 0x0000($t2)
	jal     obj_debug_802CA3E0
	lw      $a1, 0x0004($t2)
	addiu   $t3, $sp, 0x0018
	sw      $v0, 0x0038($t3)
	sw      $v1, 0x003C($t3)
	addiu   $t6, $sp, 0x0018
	li      $t4, 0x0000
	li      $t5, 0x0000
	sw      $t5, 0x0004($t6)
	sw      $t4, 0x0000($t6)
	jal     obj_debug_802CB0C0
	nop
	lui     $t7, %hi(object_8033D480)
	lw      $t7, %lo(object_8033D480)($t7)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L8029D844
	nop
	lui     $t9, %hi(object_8033D480)
	lw      $t9, %lo(object_8033D480)($t9)
	lui     $at, %hi(object_8033D480)
	ori     $t0, $t9, 0x0040
	b       .L8029D85C
	sw      $t0, %lo(object_8033D480)($at)
.L8029D844:
	lui     $t1, %hi(object_8033D480)
	lw      $t1, %lo(object_8033D480)($t1)
	li      $at, -0x0041
	and     $t2, $t1, $at
	lui     $at, %hi(object_8033D480)
	sw      $t2, %lo(object_8033D480)($at)
.L8029D85C:
	lui     $t3, %hi(object_8033D270)
	lw      $t3, %lo(object_8033D270)($t3)
	lui     $at, %hi(object_80361168)
	sh      $t3, %lo(object_80361168)($at)
	b       .L8029D874
	nop
.L8029D874:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0108
	jr      $ra
	nop

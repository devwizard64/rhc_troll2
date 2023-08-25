.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

.globl game_timer
game_timer:
	addiu   $sp, $sp, -0x0008
	move    $a1, $a0
	beqz    $a1, .L8024961C
	nop
	li      $at, 0x0001
	beq     $a1, $at, .L80249648
	nop
	li      $at, 0x0002
	beq     $a1, $at, .L8024965C
	nop
	li      $at, 0x0003
	beq     $a1, $at, .L8024966C
	nop
	b       .L8024969C
	nop
.L8024961C:
	lui     $t6, %hi(hud+0x0A)
	lh      $t6, %lo(hud+0x0A)($t6)
	lui     $at, %hi(hud+0x0A)
	ori     $t7, $t6, 0x0040
	sh      $t7, %lo(hud+0x0A)($at)
	lui     $at, %hi(game_8033B25E)
	sb      $0, %lo(game_8033B25E)($at)
	lui     $at, %hi(hud+0x0C)
	sh      $0, %lo(hud+0x0C)($at)
	b       .L8024969C
	nop
.L80249648:
	li      $t8, 0x0001
	lui     $at, %hi(game_8033B25E)
	sb      $t8, %lo(game_8033B25E)($at)
	b       .L8024969C
	nop
.L8024965C:
	lui     $at, %hi(game_8033B25E)
	sb      $0, %lo(game_8033B25E)($at)
	b       .L8024969C
	nop
.L8024966C:
	lui     $t9, %hi(hud+0x0A)
	lh      $t9, %lo(hud+0x0A)($t9)
	li      $at, -0x0041
	and     $t0, $t9, $at
	lui     $at, %hi(hud+0x0A)
	sh      $t0, %lo(hud+0x0A)($at)
	lui     $at, %hi(game_8033B25E)
	sb      $0, %lo(game_8033B25E)($at)
	lui     $at, %hi(hud+0x0C)
	sh      $0, %lo(hud+0x0C)($at)
	b       .L8024969C
	nop
.L8024969C:
	lui     $v0, %hi(hud+0x0C)
	b       .L802496B0
	lhu     $v0, %lo(hud+0x0C)($v0)
	b       .L802496B0
	nop
.L802496B0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

game_ispause:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     message_802D8C6C
	nop
	slti    $t6, $v0, 0x0000
	xori    $t6, $t6, 0x0001
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lw      $t8, 0x000C($t7)
	andi    $t9, $t8, 0x1000
	sltu    $t0, $0, $t9
	sw      $t0, 0x0018($sp)
	lw      $t1, 0x0018($sp)
	bnez    $t1, .L80249744
	nop
	lw      $t2, 0x001C($sp)
	bnez    $t2, .L80249744
	nop
	lui     $t3, %hi(wipe+0x00)
	lbu     $t3, %lo(wipe+0x00)($t3)
	bnez    $t3, .L80249744
	nop
	lui     $t4, %hi(game_8033B252)
	lh      $t4, %lo(game_8033B252)($t4)
	bnez    $t4, .L80249744
	nop
	lui     $t5, %hi(cont_1)
	lw      $t5, %lo(cont_1)($t5)
	lhu     $t6, 0x0012($t5)
	andi    $t7, $t6, 0x1000
	beqz    $t7, .L80249744
	nop
	b       .L80249754
	li      $v0, 0x0001
.L80249744:
	b       .L80249754
	move    $v0, $0
	b       .L80249754
	nop
.L80249754:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

game_state_set:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	lui     $at, %hi(game_8033B238)
	sh      $a0, %lo(game_8033B238)($at)
	lui     $at, %hi(game_8033B23A)
	sh      $0, %lo(game_8033B23A)($at)
	jr      $ra
	nop
	jr      $ra
	nop

game_exit:
	li      $t6, 0x0004
	lui     $at, %hi(game_8033B238)
	sh      $t6, %lo(game_8033B238)($at)
	lui     $at, %hi(game_8033B23A)
	sh      $0, %lo(game_8033B23A)($at)
	lui     $at, %hi(game_8033B250)
	sh      $a0, %lo(game_8033B250)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl game_exit_fadeout
game_exit_fadeout:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	beqz    $t6, .L802497DC
	nop
	li      $t7, 0x00FF
	sw      $t7, 0x0024($sp)
.L802497DC:
	jal     aud_fadeout
	li      $a0, 0x00BE
	lw      $t8, 0x0024($sp)
	li      $a0, 0x0001
	li      $a1, 0x0010
	move    $a2, $t8
	move    $a3, $t8
	jal     scene_wipe
	sw      $t8, 0x0010($sp)
	li      $a0, 0x001E
	jal     game_8024B798
	move    $a1, $0
	jal     game_exit
	lw      $a0, 0x0020($sp)
	b       .L8024981C
	nop
.L8024981C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

game_8024982C:
	jr      $ra
	nop
	jr      $ra
	nop

.globl game_8024983C
game_8024983C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(scene)
	lw      $t6, %lo(scene)($t6)
	lw      $t7, 0x0030($sp)
	addu    $t8, $t6, $t7
	lbu     $t9, 0x0034($t8)
	sw      $t9, 0x0028($sp)
	lw      $s0, 0x0028($sp)
	li      $at, 0x0081
	beq     $s0, $at, .L802498A0
	nop
	li      $at, 0x0082
	beq     $s0, $at, .L802498B8
	nop
	li      $at, 0x0083
	beq     $s0, $at, .L802498D0
	nop
	li      $at, 0x00FF
	beq     $s0, $at, .L802498E8
	nop
	b       .L802498F8
	nop
.L802498A0:
	jal     save_flag_get
	nop
	andi    $t0, $v0, 0x0008
	sw      $t0, 0x002C($sp)
	b       .L80249920
	nop
.L802498B8:
	jal     save_flag_get
	nop
	andi    $t1, $v0, 0x0004
	sw      $t1, 0x002C($sp)
	b       .L80249920
	nop
.L802498D0:
	jal     save_flag_get
	nop
	andi    $t2, $v0, 0x0002
	sw      $t2, 0x002C($sp)
	b       .L80249920
	nop
.L802498E8:
	li      $t3, 0x0001
	sw      $t3, 0x002C($sp)
	b       .L80249920
	nop
.L802498F8:
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	sw      $v0, 0x002C($sp)
	b       .L80249920
	nop
.L80249920:
	lw      $t4, 0x002C($sp)
	bnez    $t4, .L80249940
	nop
	li      $a0, -0x0001
	jal     game_8024B798
	move    $a1, $0
	jal     message_802D8C88
	lw      $a0, 0x0028($sp)
.L80249940:
	b       .L80249948
	nop
.L80249948:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

game_8024995C:
	andi    $t6, $a1, 0x0002
	beqz    $t6, .L80249978
	nop
	lh      $t7, 0x0008($a0)
	li      $at, 0x8000
	addu    $t8, $t7, $at
	sh      $t8, 0x0008($a0)
.L80249978:
	lhu     $t9, 0x0008($a0)
	li      $at, 0x43960000
	mtc1    $at, $f4
	sra     $t0, $t9, 4
	lh      $t2, 0x0000($a0)
	sll     $t1, $t0, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	mtc1    $t2, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t4, $f4
	nop
	sh      $t4, 0x0000($a0)
	lhu     $t5, 0x0008($a0)
	li      $at, 0x43960000
	mtc1    $at, $f6
	sra     $t6, $t5, 4
	lh      $t8, 0x0004($a0)
	sll     $t7, $t6, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_cos)($at)
	mtc1    $t8, $f8
	mul.s   $f16, $f6, $f10
	cvt.s.w $f18, $f8
	add.s   $f4, $f18, $f16
	trunc.w.s $f6, $f4
	mfc1    $t0, $f6
	nop
	sh      $t0, 0x0004($a0)
	jr      $ra
	nop
	jr      $ra
	nop

game_80249A10:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(course_index)
	lh      $t6, %lo(course_index)($t6)
	addiu   $t7, $t6, -0x0014
	sw      $t7, 0x0004($sp)
	lw      $a1, 0x0004($sp)
	beqz    $a1, .L80249A50
	nop
	li      $at, 0x0001
	beq     $a1, $at, .L80249A6C
	nop
	li      $at, 0x0002
	beq     $a1, $at, .L80249A88
	nop
	b       .L80249AA4
	nop
.L80249A50:
	lw      $t8, 0x0004($a0)
	ori     $t9, $t8, 0x0014
	sw      $t9, 0x0004($a0)
	li      $t0, 0x0258
	sh      $t0, 0x00B6($a0)
	b       .L80249AA4
	nop
.L80249A6C:
	lw      $t1, 0x0004($a0)
	ori     $t2, $t1, 0x0018
	sw      $t2, 0x0004($a0)
	li      $t3, 0x04B0
	sh      $t3, 0x00B6($a0)
	b       .L80249AA4
	nop
.L80249A88:
	lw      $t4, 0x0004($a0)
	ori     $t5, $t4, 0x0012
	sw      $t5, 0x0004($a0)
	li      $t6, 0x0258
	sh      $t6, 0x00B6($a0)
	b       .L80249AA4
	nop
.L80249AA4:
	b       .L80249AAC
	nop
.L80249AAC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

game_80249AB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	addiu   $t7, $t6, -0x0001
	sltiu   $at, $t7, 0x0025
	beqz    $at, L80249CB8
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(game_80335FE8)
	addu    $at, $at, $t7
	lw      $t7, %lo(game_80335FE8)($at)
	jr      $t7
	nop
.globl L80249AF4
L80249AF4:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1322
	jal     player_80252CF4
	lw      $a2, 0x0020($sp)
	b       L80249CB8
	nop
.globl L80249B0C
L80249B0C:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249B28
L80249B28:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1923
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249B40
L80249B40:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1337
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249B58
L80249B58:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249B74
L80249B74:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1932
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249B8C
L80249B8C:
	li.u    $a1, 0x010208B3
	li.l    $a1, 0x010208B3
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249BA8
L80249BA8:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1924
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249BC0
L80249BC0:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x192A
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249BD8
L80249BD8:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1924
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249BF0
L80249BF0:
	li.u    $a1, 0x10880899
	li.l    $a1, 0x10880899
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	li      $a2, 0x0002
	b       L80249CB8
	nop
.globl L80249C0C
L80249C0C:
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	li      $a2, 0x0001
	b       L80249CB8
	nop
.globl L80249C28
L80249C28:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1926
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249C40
L80249C40:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1928
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249C58
L80249C58:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x192D
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249C70
L80249C70:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1929
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249C88
L80249C88:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x192B
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249CA0
L80249CA0:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x192C
	jal     player_80252CF4
	move    $a2, $0
	b       L80249CB8
	nop
.globl L80249CB8
L80249CB8:
	jal     game_80249A10
	lw      $a0, 0x0018($sp)
	b       .L80249CC8
	nop
.L80249CC8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

game_80249CD8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $a0, %hi(game_8033B248+0x03)
	jal     port_get
	lbu     $a0, %lo(game_8033B248+0x03)($a0)
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	jal     obj_port_code
	lw      $a0, 0x0004($t6)
	sw      $v0, 0x0020($sp)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lw      $t8, 0x000C($t7)
	beqz    $t8, .L80249E58
	nop
	lw      $t9, 0x0024($sp)
	la.u    $t3, spawn_player
	la.l    $t3, spawn_player
	lw      $t0, 0x0004($t9)
	lwc1    $f4, 0x00A0($t0)
	trunc.w.s $f6, $f4
	mfc1    $t2, $f6
	nop
	sh      $t2, 0x0000($t3)
	lw      $t4, 0x0024($sp)
	la.u    $t8, spawn_player
	la.l    $t8, spawn_player
	lw      $t5, 0x0004($t4)
	lwc1    $f8, 0x00A4($t5)
	trunc.w.s $f10, $f8
	mfc1    $t7, $f10
	nop
	sh      $t7, 0x0002($t8)
	lw      $t9, 0x0024($sp)
	la.u    $t3, spawn_player
	la.l    $t3, spawn_player
	lw      $t0, 0x0004($t9)
	lwc1    $f16, 0x00A8($t0)
	trunc.w.s $f18, $f16
	mfc1    $t2, $f18
	nop
	sh      $t2, 0x0004($t3)
	la.u    $t4, spawn_player
	la.l    $t4, spawn_player
	sh      $0, 0x0006($t4)
	lw      $t5, 0x0024($sp)
	la.u    $t8, spawn_player
	la.l    $t8, spawn_player
	lw      $t6, 0x0004($t5)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x0008($t8)
	la.u    $t9, spawn_player
	la.l    $t9, spawn_player
	sh      $0, 0x000A($t9)
	lw      $t0, 0x0020($sp)
	li      $at, 0x0001
	bne     $t0, $at, .L80249DD4
	nop
	la.u    $a0, spawn_player
	lui     $a1, %hi(game_8033B248+0x04)
	lw      $a1, %lo(game_8033B248+0x04)($a1)
	jal     game_8024995C
	la.l    $a0, spawn_player
.L80249DD4:
	lui     $t1, %hi(game_8033B248+0x00)
	lbu     $t1, %lo(game_8033B248+0x00)($t1)
	li      $at, 0x0001
	beq     $t1, $at, .L80249DF4
	nop
	li      $at, 0x0002
	bne     $t1, $at, .L80249E10
	nop
.L80249DF4:
	lui     $t2, %hi(game_8033B248+0x02)
	lbu     $t2, %lo(game_8033B248+0x02)($t2)
	la.u    $t3, spawn_player
	la.l    $t3, spawn_player
	sb      $t2, 0x000C($t3)
	jal     scene_player_open
	nop
.L80249E10:
	jal     player_80254B20
	nop
	lui     $a0, %hi(mario)
	lui     $a2, %hi(game_8033B248+0x04)
	lw      $a2, %lo(game_8033B248+0x04)($a2)
	lw      $a0, %lo(mario)($a0)
	jal     game_80249AB4
	lw      $a1, 0x0020($sp)
	lw      $t4, 0x0024($sp)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lw      $t5, 0x0004($t4)
	sw      $t5, 0x0078($t6)
	lw      $t7, 0x0024($sp)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	lw      $t8, 0x0004($t7)
	sw      $t8, 0x0080($t9)
.L80249E58:
	lui     $t0, %hi(scene)
	lw      $t0, %lo(scene)($t0)
	jal     camera_80286F68
	lw      $a0, 0x0024($t0)
	lui     $at, %hi(game_8033B248+0x00)
	sb      $0, %lo(game_8033B248+0x00)($at)
	lui     $at, %hi(game_8033B252)
	sh      $0, %lo(game_8033B252)($at)
	lw      $t1, 0x0020($sp)
	addiu   $t2, $t1, -0x0001
	sltiu   $at, $t2, 0x0027
	beqz    $at, L80249F6C
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(game_8033607C)
	addu    $at, $at, $t2
	lw      $t2, %lo(game_8033607C)($at)
	jr      $t2
	nop
.globl L80249EA4
L80249EA4:
	li      $a0, 0x0008
	li      $a1, 0x0010
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       .L80249F8C
	nop
.globl L80249EC4
L80249EC4:
	li      $a0, 0x000A
	li      $a1, 0x0010
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       .L80249F8C
	nop
.globl L80249EE4
L80249EE4:
	li      $t3, 0x00FF
	sw      $t3, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x0014
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
	b       .L80249F8C
	nop
.globl L80249F08
L80249F08:
	li      $t4, 0x00FF
	sw      $t4, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x001A
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
	b       .L80249F8C
	nop
.globl L80249F2C
L80249F2C:
	li      $a0, 0x000A
	li      $a1, 0x0010
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       .L80249F8C
	nop
.globl L80249F4C
L80249F4C:
	move    $a0, $0
	li      $a1, 0x0010
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       .L80249F8C
	nop
.globl L80249F6C
L80249F6C:
	li      $a0, 0x0008
	li      $a1, 0x0010
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       .L80249F8C
	nop
.L80249F8C:
	lui     $t5, %hi(demo)
	lw      $t5, %lo(demo)($t5)
	bnez    $t5, .L8024A10C
	nop
	lui     $t6, %hi(scene)
	lw      $t6, %lo(scene)($t6)
	move    $a2, $0
	lhu     $a0, 0x0036($t6)
	jal     bgm_play
	lhu     $a1, 0x0038($t6)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L80249FD4
	nop
	jal     bgm_special_play
	li      $a0, 0x040F
.L80249FD4:
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x000A
	beqz    $t2, .L80249FF4
	nop
	jal     bgm_special_play
	li      $a0, 0x040E
.L80249FF4:
	lui     $t3, %hi(stage_index)
	lh      $t3, %lo(stage_index)($t3)
	li      $at, 0x0009
	bne     $t3, $at, .L8024A03C
	nop
	jal     Na_g_80321D5C
	nop
	li      $at, 0x0409
	beq     $v0, $at, .L8024A03C
	nop
	lui     $t4, %hi(game_8033B25E)
	lb      $t4, %lo(game_8033B25E)($t4)
	beqz    $t4, .L8024A03C
	nop
	move    $a0, $0
	li      $a1, 0x0409
	jal     Na_BGM_play
	move    $a2, $0
.L8024A03C:
	lui     $t5, %hi(game_8033B248+0x01)
	lbu     $t5, %lo(game_8033B248+0x01)($t5)
	li      $at, 0x0006
	bne     $t5, $at, .L8024A098
	nop
	lui     $t6, %hi(game_8033B248+0x02)
	lbu     $t6, %lo(game_8033B248+0x02)($t6)
	li      $at, 0x0001
	bne     $t6, $at, .L8024A098
	nop
	lui     $t7, %hi(game_8033B248+0x03)
	lbu     $t7, %lo(game_8033B248+0x03)($t7)
	li      $at, 0x001F
	beq     $t7, $at, .L8024A084
	nop
	li      $at, 0x0020
	bne     $t7, $at, .L8024A098
	nop
.L8024A084:
	li.u    $a0, 0x701DB081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x701DB081
.L8024A098:
	lui     $t8, %hi(game_8033B248+0x01)
	lbu     $t8, %lo(game_8033B248+0x01)($t8)
	li      $at, 0x0010
	bne     $t8, $at, .L8024A10C
	nop
	lui     $t9, %hi(game_8033B248+0x02)
	lbu     $t9, %lo(game_8033B248+0x02)($t9)
	li      $at, 0x0001
	bne     $t9, $at, .L8024A10C
	nop
	lui     $t0, %hi(game_8033B248+0x03)
	lbu     $t0, %lo(game_8033B248+0x03)($t0)
	li      $at, 0x0007
	beq     $t0, $at, .L8024A0F8
	nop
	li      $at, 0x000A
	beq     $t0, $at, .L8024A0F8
	nop
	li      $at, 0x0014
	beq     $t0, $at, .L8024A0F8
	nop
	li      $at, 0x001E
	bne     $t0, $at, .L8024A10C
	nop
.L8024A0F8:
	li.u    $a0, 0x701DB081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x701DB081
.L8024A10C:
	b       .L8024A114
	nop
.L8024A114:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

game_8024A124:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(game_8033B248+0x00)
	lbu     $t6, %lo(game_8033B248+0x00)($t6)
	beqz    $t6, .L8024A174
	nop
	lui     $t7, %hi(game_8033B248+0x00)
	lbu     $t7, %lo(game_8033B248+0x00)($t7)
	li      $at, 0x0002
	bne     $t7, $at, .L8024A16C
	nop
	jal     game_timer
	li      $a0, 0x0003
	jal     scene_player_close
	nop
	lui     $a0, %hi(game_8033B248+0x02)
	jal     scene_open
	lbu     $a0, %lo(game_8033B248+0x02)($a0)
.L8024A16C:
	jal     game_80249CD8
	nop
.L8024A174:
	b       .L8024A17C
	nop
.L8024A17C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

game_8024A18C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(game_8033B248+0x01)
	lbu     $t6, %lo(game_8033B248+0x01)($t6)
	lui     $at, %hi(stage_index)
	sh      $t6, %lo(stage_index)($at)
	jal     game_timer
	li      $a0, 0x0003
	lui     $a0, %hi(game_8033B248+0x02)
	jal     scene_open
	lbu     $a0, %lo(game_8033B248+0x02)($a0)
	jal     game_80249CD8
	nop
	b       .L8024A1C8
	nop
.L8024A1C8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

game_8024A1D8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	lui     $s0, %hi(game_8033B248+0x03)
	lbu     $s0, %lo(game_8033B248+0x03)($s0)
	li      $at, 0x00F8
	beq     $s0, $at, .L8024A218
	nop
	li      $at, 0x00F9
	beq     $s0, $at, .L8024A228
	nop
	li      $at, 0x00FA
	beq     $s0, $at, .L8024A238
	nop
	b       .L8024A248
	nop
.L8024A218:
	li      $t6, 0x1918
	sw      $t6, 0x002C($sp)
	b       .L8024A248
	nop
.L8024A228:
	li      $t7, 0x1319
	sw      $t7, 0x002C($sp)
	b       .L8024A248
	nop
.L8024A238:
	li      $t8, 0x131A
	sw      $t8, 0x002C($sp)
	b       .L8024A248
	nop
.L8024A248:
	lui     $t9, %hi(game_8033B248+0x01)
	lbu     $t9, %lo(game_8033B248+0x01)($t9)
	lui     $at, %hi(stage_index)
	sh      $t9, %lo(stage_index)($at)
	lui     $a0, %hi(game_8033B248+0x02)
	jal     scene_open
	lbu     $a0, %lo(game_8033B248+0x02)($a0)
	lui     $t0, %hi(staff)
	lw      $t0, %lo(staff)($t0)
	la.u    $a0, spawn_player
	la.l    $a0, spawn_player
	lh      $a1, 0x0004($t0)
	lh      $a2, 0x0006($t0)
	jal     vecs_set
	lh      $a3, 0x0008($t0)
	lui     $t1, %hi(staff)
	lw      $t1, %lo(staff)($t1)
	la.u    $a0, spawn_player
	la.l    $a0, spawn_player
	lb      $a2, 0x0003($t1)
	addiu   $a0, $a0, 0x0006
	move    $a1, $0
	sll     $t2, $a2, 8
	move    $a2, $t2
	jal     vecs_set
	move    $a3, $0
	lui     $t3, %hi(game_8033B248+0x02)
	lbu     $t3, %lo(game_8033B248+0x02)($t3)
	la.u    $t4, spawn_player
	la.l    $t4, spawn_player
	sb      $t3, 0x000C($t4)
	jal     scene_player_open
	nop
	jal     player_80254B20
	nop
	lui     $a0, %hi(mario)
	lw      $a0, %lo(mario)($a0)
	lw      $a1, 0x002C($sp)
	jal     player_80252CF4
	move    $a2, $0
	lui     $t5, %hi(scene)
	lw      $t5, %lo(scene)($t5)
	jal     camera_80286F68
	lw      $a0, 0x0024($t5)
	lui     $at, %hi(game_8033B248+0x00)
	sb      $0, %lo(game_8033B248+0x00)($at)
	lui     $at, %hi(game_8033B252)
	sh      $0, %lo(game_8033B252)($at)
	move    $a0, $0
	li      $a1, 0x0014
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	lui     $t6, %hi(staff)
	lw      $t6, %lo(staff)($t6)
	beqz    $t6, .L8024A340
	nop
	la.u    $t7, staff_data
	la.l    $t7, staff_data
	bne     $t7, $t6, .L8024A358
	nop
.L8024A340:
	lui     $t8, %hi(scene)
	lw      $t8, %lo(scene)($t8)
	move    $a2, $0
	lhu     $a0, 0x0036($t8)
	jal     bgm_play
	lhu     $a1, 0x0038($t8)
.L8024A358:
	b       .L8024A360
	nop
.L8024A360:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

game_8024A374:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x0006
	bne     $t6, $at, .L8024A3BC
	nop
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x0046
	bnez    $at, .L8024A3BC
	nop
	b       .L8024A574
	nop
.L8024A3BC:
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lw      $t8, 0x0068($t7)
	beqz    $t8, .L8024A56C
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x0000($t9)
	addiu   $t1, $t0, -0x001B
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	bltz    $t2, .L8024A56C
	nop
	slti    $at, $t2, 0x0004
	beqz    $at, .L8024A56C
	nop
	lui     $t3, %hi(scene)
	lw      $t3, %lo(scene)($t3)
	lw      $t4, 0x001C($t3)
	beqz    $t4, .L8024A56C
	nop
	lui     $t5, %hi(scene)
	lw      $t5, %lo(scene)($t5)
	lw      $t7, 0x001C($sp)
	lw      $t6, 0x001C($t5)
	sll     $t8, $t7, 3
	addu    $t9, $t6, $t8
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	lbu     $t1, 0x0000($t0)
	beqz    $t1, .L8024A56C
	nop
	lw      $t3, 0x0018($sp)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lh      $t4, 0x0002($t3)
	lwc1    $f4, 0x003C($t2)
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x003C($t2)
	lw      $t7, 0x0018($sp)
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	lh      $t6, 0x0004($t7)
	lwc1    $f16, 0x0040($t5)
	mtc1    $t6, $f18
	nop
	cvt.s.w $f6, $f18
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x0040($t5)
	lw      $t9, 0x0018($sp)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lh      $t0, 0x0006($t9)
	lwc1    $f8, 0x0044($t8)
	mtc1    $t0, $f10
	nop
	cvt.s.w $f18, $f10
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x0044($t8)
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	lwc1    $f6, 0x003C($t1)
	lw      $t3, 0x0088($t1)
	swc1    $f6, 0x00A0($t3)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lwc1    $f4, 0x0040($t4)
	lw      $t2, 0x0088($t4)
	swc1    $f4, 0x00A4($t2)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lwc1    $f10, 0x0044($t7)
	lw      $t6, 0x0088($t7)
	swc1    $f10, 0x00A8($t6)
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	lw      $t9, 0x0090($t5)
	lw      $t0, 0x0024($t9)
	lh      $t8, 0x0002($t0)
	sh      $t8, 0x0026($sp)
	lw      $t1, 0x0018($sp)
	jal     scene_set
	lbu     $a0, 0x0001($t1)
	lui     $t3, %hi(scene)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lw      $t3, %lo(scene)($t3)
	sw      $t3, 0x0090($t4)
	lw      $t2, 0x0018($sp)
	lh      $t5, 0x0006($t2)
	lh      $t7, 0x0002($t2)
	lh      $t6, 0x0004($t2)
	mtc1    $t5, $f16
	mtc1    $t7, $f8
	mtc1    $t6, $f18
	cvt.s.w $f16, $f16
	cvt.s.w $f12, $f8
	mfc1    $a2, $f16
	jal     camera_8028C7A0
	cvt.s.w $f14, $f18
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	lh      $t9, 0x0026($sp)
	lw      $t8, 0x0090($t0)
	lw      $t1, 0x0024($t8)
	sh      $t9, 0x0002($t1)
.L8024A56C:
	b       .L8024A574
	nop
.L8024A574:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

game_8024A584:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	jal     port_get
	lh      $a0, 0x003A($sp)
	sw      $v0, 0x0034($sp)
	lw      $t6, 0x0034($sp)
	lbu     $t7, 0x0001($t6)
	andi    $t8, $t7, 0x007F
	sh      $t8, 0x0032($sp)
	lw      $t9, 0x0034($sp)
	lbu     $t0, 0x0002($t9)
	sh      $t0, 0x0030($sp)
	li      $t1, 0x0001
	sh      $t1, 0x002E($sp)
	lh      $t2, 0x0032($sp)
	li      $at, 0x0009
	bne     $t2, $at, .L8024A62C
	nop
	lui     $t3, %hi(stage_index)
	lh      $t3, %lo(stage_index)($t3)
	bne     $t2, $t3, .L8024A62C
	nop
	lui     $t5, %hi(scene_index)
	lh      $t5, %lo(scene_index)($t5)
	lh      $t4, 0x0030($sp)
	bne     $t4, $t5, .L8024A62C
	nop
	jal     Na_g_80321D5C
	nop
	sh      $v0, 0x002C($sp)
	lh      $t6, 0x002C($sp)
	li      $at, 0x048E
	beq     $t6, $at, .L8024A620
	nop
	li      $at, 0x040E
	bne     $t6, $at, .L8024A624
	nop
.L8024A620:
	sh      $0, 0x002E($sp)
.L8024A624:
	b       .L8024A6DC
	nop
.L8024A62C:
	lh      $t8, 0x0030($sp)
	lui     $t7, %hi(scene_table)
	lw      $t7, %lo(scene_table)($t7)
	sll     $t9, $t8, 4
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t7, $t9
	lhu     $t1, 0x0036($t0)
	sh      $t1, 0x002A($sp)
	lh      $t3, 0x0030($sp)
	lui     $t2, %hi(scene_table)
	lw      $t2, %lo(scene_table)($t2)
	sll     $t4, $t3, 4
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	addu    $t5, $t2, $t4
	lhu     $t6, 0x0038($t5)
	sh      $t6, 0x0028($sp)
	lui     $t7, %hi(stage_index)
	lh      $t7, %lo(stage_index)($t7)
	lh      $t8, 0x0032($sp)
	xor     $s0, $t8, $t7
	sltiu   $s0, $s0, 0x0001
	beqz    $s0, .L8024A6C0
	nop
	lui     $t0, %hi(scene)
	lw      $t0, %lo(scene)($t0)
	lhu     $t9, 0x002A($sp)
	lhu     $t1, 0x0036($t0)
	xor     $s0, $t9, $t1
	sltiu   $s0, $s0, 0x0001
	beqz    $s0, .L8024A6C0
	nop
	lhu     $t3, 0x0028($sp)
	lhu     $t2, 0x0038($t0)
	xor     $s0, $t3, $t2
	sltiu   $s0, $s0, 0x0001
.L8024A6C0:
	sh      $s0, 0x002E($sp)
	jal     Na_g_80321D5C
	nop
	lhu     $t4, 0x0028($sp)
	beq     $v0, $t4, .L8024A6DC
	nop
	sh      $0, 0x002E($sp)
.L8024A6DC:
	b       .L8024A6EC
	lh      $v0, 0x002E($sp)
	b       .L8024A6EC
	nop
.L8024A6EC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl game_8024A700
game_8024A700:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	slti    $at, $a2, 0x00F8
	bnez    $at, .L8024A734
	nop
	li      $t6, 0x0001
	lui     $at, %hi(game_8033B248+0x00)
	b       .L8024A784
	sb      $t6, %lo(game_8033B248+0x00)($at)
.L8024A734:
	lui     $t7, %hi(stage_index)
	lh      $t7, %lo(stage_index)($t7)
	beq     $a0, $t7, .L8024A754
	nop
	li      $t8, 0x0001
	lui     $at, %hi(game_8033B248+0x00)
	b       .L8024A784
	sb      $t8, %lo(game_8033B248+0x00)($at)
.L8024A754:
	lui     $t9, %hi(scene)
	lw      $t9, %lo(scene)($t9)
	lb      $t0, 0x0000($t9)
	beq     $a1, $t0, .L8024A778
	nop
	li      $t1, 0x0002
	lui     $at, %hi(game_8033B248+0x00)
	b       .L8024A784
	sb      $t1, %lo(game_8033B248+0x00)($at)
.L8024A778:
	li      $t2, 0x0003
	lui     $at, %hi(game_8033B248+0x00)
	sb      $t2, %lo(game_8033B248+0x00)($at)
.L8024A784:
	lui     $at, %hi(game_8033B248+0x01)
	sb      $a0, %lo(game_8033B248+0x01)($at)
	lui     $at, %hi(game_8033B248+0x02)
	sb      $a1, %lo(game_8033B248+0x02)($at)
	lui     $at, %hi(game_8033B248+0x03)
	sb      $a2, %lo(game_8033B248+0x03)($at)
	lui     $at, %hi(game_8033B248+0x04)
	sw      $a3, %lo(game_8033B248+0x04)($at)
	jr      $ra
	nop
	jr      $ra
	nop

game_8024A7B4:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x0000($t7)
	addiu   $t9, $t8, -0x00D3
	sw      $t9, 0x0000($sp)
	lw      $t0, 0x0000($sp)
	bltz    $t0, .L8024A844
	nop
	slti    $at, $t0, 0x002D
	beqz    $at, .L8024A844
	nop
	lw      $t1, 0x0000($sp)
	slti    $at, $t1, 0x002A
	bnez    $at, .L8024A828
	nop
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	li      $at, 0x42A00000
	mtc1    $at, $f10
	lwc1    $f4, 0x0040($t2)
	lwc1    $f6, 0x0070($t2)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8024A844
	nop
.L8024A828:
	lui     $t3, %hi(scene)
	lw      $t3, %lo(scene)($t3)
	lw      $t5, 0x0000($sp)
	lw      $t4, 0x0018($t3)
	sll     $t6, $t5, 2
	addu    $t7, $t4, $t6
	sw      $t7, 0x0004($sp)
.L8024A844:
	b       .L8024A854
	lw      $v0, 0x0004($sp)
	b       .L8024A854
	nop
.L8024A854:
	jr      $ra
	addiu   $sp, $sp, 0x0008

game_8024A85C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(scene)
	lw      $t6, %lo(scene)($t6)
	lw      $t7, 0x0018($t6)
	beqz    $t7, .L8024A9B4
	nop
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lw      $t9, 0x0068($t8)
	beqz    $t9, .L8024A9B4
	nop
	jal     game_8024A7B4
	nop
	sw      $v0, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	beqz    $t0, .L8024A9B4
	nop
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	lw      $t2, 0x000C($t1)
	andi    $t3, $t2, 0x1000
	beqz    $t3, .L8024A8CC
	nop
	jal     aud_se_wave
	nop
	b       .L8024A9B4
	nop
.L8024A8CC:
	lw      $t4, 0x0020($sp)
	lbu     $t5, 0x0000($t4)
	beqz    $t5, .L8024A9B4
	nop
	lw      $t7, 0x0020($sp)
	addiu   $t6, $sp, 0x0024
	lwl     $at, 0x0000($t7)
	lwr     $at, 0x0003($t7)
	sw      $at, 0x0000($t6)
	lbu     $t0, 0x0025($sp)
	andi    $t1, $t0, 0x0080
	bnez    $t1, .L8024A910
	nop
	jal     save_mid_get
	addiu   $a0, $sp, 0x0024
	lui     $at, %hi(game_8032D944)
	sb      $v0, %lo(game_8032D944)($at)
.L8024A910:
	lbu     $a0, 0x0025($sp)
	lbu     $a1, 0x0026($sp)
	lbu     $a2, 0x0027($sp)
	andi    $t2, $a0, 0x007F
	move    $a0, $t2
	jal     game_8024A700
	move    $a3, $0
	jal     save_mid_set
	addiu   $a0, $sp, 0x0024
	li      $t3, 0x00FF
	li      $t4, 0x002D
	sw      $t4, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, 0x001E
	li      $a2, 0x00FF
	jal     scene_wipe_delay
	li      $a3, 0x00FF
	la.u    $a1, game_8024B390
	la.l    $a1, game_8024B390
	jal     game_8024B798
	li      $a0, 0x004A
	lui     $a0, %hi(mario)
	lw      $a0, %lo(mario)($a0)
	li      $a1, 0x1300
	jal     player_80252CF4
	move    $a2, $0
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li      $at, -0x0002
	lw      $t8, 0x0088($t5)
	lh      $t6, 0x0002($t8)
	and     $t7, $t6, $at
	sh      $t7, 0x0002($t8)
	li.u    $a0, 0x701EFF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x701EFF81
	jal     aud_fadeout
	li      $a0, 0x018E
.L8024A9B4:
	b       .L8024A9BC
	nop
.L8024A9BC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl game_8024A9CC
game_8024A9CC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0020($sp)
	li      $t6, 0x0001
	sw      $t6, 0x002C($sp)
	lui     $t7, %hi(game_8033B252)
	lh      $t7, %lo(game_8033B252)($t7)
	bnez    $t7, .L8024AEB4
	nop
	lw      $t9, 0x0030($sp)
	li      $t8, -0x0001
	sh      $t8, 0x0026($t9)
	lui     $at, %hi(game_8033B258)
	sw      $0, %lo(game_8033B258)($at)
	lw      $t0, 0x0034($sp)
	lui     $at, %hi(game_8033B252)
	sh      $t0, %lo(game_8033B252)($at)
	lw      $t1, 0x0034($sp)
	addiu   $t2, $t1, -0x0001
	sltiu   $at, $t2, 0x0019
	beqz    $at, L8024AE60
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(game_80336118)
	addu    $at, $at, $t2
	lw      $t2, %lo(game_80336118)($at)
	jr      $t2
	nop
.globl L8024AA44
L8024AA44:
	li      $t3, 0x0014
	lui     $at, %hi(game_8033B254)
	sh      $t3, %lo(game_8033B254)($at)
	li      $t4, 0x00F0
	lui     $at, %hi(game_8033B256)
	sh      $t4, %lo(game_8033B256)($at)
	lui     $at, %hi(course_prev)
	sh      $0, %lo(course_prev)($at)
	sw      $0, 0x002C($sp)
	li      $a0, 0x0009
	li      $a1, 0x0014
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       L8024AE60
	nop
.globl L8024AA88
L8024AA88:
	li      $t5, 0x003C
	lui     $at, %hi(game_8033B254)
	sh      $t5, %lo(game_8033B254)($at)
	li      $t6, 0x00F0
	lui     $at, %hi(game_8033B256)
	sh      $t6, %lo(game_8033B256)($at)
	sw      $0, 0x002C($sp)
	lui     $at, %hi(course_prev)
	sh      $0, %lo(course_prev)($at)
	li      $a0, 0x0001
	li      $a1, 0x003C
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       L8024AE60
	nop
.globl L8024AACC
L8024AACC:
	li      $t7, 0x0020
	lui     $at, %hi(game_8033B254)
	sh      $t7, %lo(game_8033B254)($at)
	li      $t8, 0x00F0
	lui     $at, %hi(game_8033B256)
	sh      $t8, %lo(game_8033B256)($at)
	lui     $at, %hi(course_prev)
	sh      $0, %lo(course_prev)($at)
	li      $a0, 0x0011
	li      $a1, 0x0020
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       L8024AE60
	nop
.globl L8024AB0C
L8024AB0C:
	lw      $t9, 0x0030($sp)
	lb      $t0, 0x00AD($t9)
	bnez    $t0, .L8024AB28
	nop
	li      $t1, 0x0014
	lui     $at, %hi(game_8033B252)
	sh      $t1, %lo(game_8033B252)($at)
.L8024AB28:
	li      $t2, 0x0030
	lui     $at, %hi(game_8033B254)
	sh      $t2, %lo(game_8033B254)($at)
	li      $t3, 0x00F1
	lui     $at, %hi(game_8033B256)
	sh      $t3, %lo(game_8033B256)($at)
	li      $a0, 0x0013
	li      $a1, 0x0030
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	li.u    $a0, 0x70188081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x70188081
	b       L8024AE60
	nop
.globl L8024AB74
L8024AB74:
	li      $t4, 0x00F3
	lui     $at, %hi(game_8033B256)
	sh      $t4, %lo(game_8033B256)($at)
	lui     $a0, %hi(game_8033B256)
	jal     port_get
	lh      $a0, %lo(game_8033B256)($a0)
	bnez    $v0, .L8024ABC0
	nop
	lw      $t5, 0x0030($sp)
	lb      $t6, 0x00AD($t5)
	bnez    $t6, .L8024ABB4
	nop
	li      $t7, 0x0014
	lui     $at, %hi(game_8033B252)
	b       .L8024ABC0
	sh      $t7, %lo(game_8033B252)($at)
.L8024ABB4:
	li      $t8, 0x00F1
	lui     $at, %hi(game_8033B256)
	sh      $t8, %lo(game_8033B256)($at)
.L8024ABC0:
	li      $t9, 0x0014
	lui     $at, %hi(game_8033B254)
	sh      $t9, %lo(game_8033B254)($at)
	li      $a0, 0x000B
	li      $a1, 0x0014
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       L8024AE60
	nop
.globl L8024ABEC
L8024ABEC:
	li      $t0, 0x001E
	lui     $at, %hi(game_8033B254)
	sh      $t0, %lo(game_8033B254)($at)
	li      $t1, 0x00F2
	lui     $at, %hi(game_8033B256)
	sh      $t1, %lo(game_8033B256)($at)
	li      $t2, 0x00FF
	sw      $t2, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, 0x001E
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
	li.u    $a0, 0x701EFF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x701EFF81
	b       L8024AE60
	nop
.globl L8024AC3C
L8024AC3C:
	li      $t3, 0x001E
	lui     $at, %hi(game_8033B254)
	sh      $t3, %lo(game_8033B254)($at)
	lw      $t4, 0x0030($sp)
	li      $at, 0x00FF0000
	lw      $t5, 0x0080($t4)
	lw      $t6, 0x0188($t5)
	and     $t7, $t6, $at
	sra     $t8, $t7, 16
	lui     $at, %hi(game_8033B256)
	sh      $t8, %lo(game_8033B256)($at)
	li      $t9, 0x00FF
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, 0x001E
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
	b       L8024AE60
	nop
.globl L8024AC8C
L8024AC8C:
	li      $t0, 0x0014
	lui     $at, %hi(game_8033B254)
	sh      $t0, %lo(game_8033B254)($at)
	lw      $t1, 0x0030($sp)
	li      $at, 0x00FF0000
	lw      $t2, 0x0080($t1)
	lw      $t3, 0x0188($t2)
	and     $t4, $t3, $at
	sra     $t5, $t4, 16
	lui     $at, %hi(game_8033B256)
	sh      $t5, %lo(game_8033B256)($at)
	lui     $a0, %hi(game_8033B256)
	jal     game_8024A584
	lh      $a0, %lo(game_8033B256)($a0)
	sltiu   $s0, $v0, 0x0001
	sw      $s0, 0x002C($sp)
	li      $t6, 0x00FF
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, 0x0014
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
	b       L8024AE60
	nop
.globl L8024ACF0
L8024ACF0:
	li      $t7, 0x0014
	lui     $at, %hi(game_8033B254)
	sh      $t7, %lo(game_8033B254)($at)
	lw      $t8, 0x0030($sp)
	lui     $at, %hi(game_8033B258)
	lw      $t9, 0x001C($t8)
	sw      $t9, %lo(game_8033B258)($at)
	lw      $t0, 0x0030($sp)
	li      $at, 0x00FF0000
	lw      $t1, 0x0080($t0)
	lw      $t2, 0x0188($t1)
	and     $t3, $t2, $at
	sra     $t4, $t3, 16
	lui     $at, %hi(game_8033B256)
	sh      $t4, %lo(game_8033B256)($at)
	lui     $a0, %hi(game_8033B256)
	jal     game_8024A584
	lh      $a0, %lo(game_8033B256)($a0)
	sltiu   $s0, $v0, 0x0001
	sw      $s0, 0x002C($sp)
	li      $a0, 0x000B
	li      $a1, 0x0014
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       L8024AE60
	nop
.globl L8024AD60
L8024AD60:
	li      $t5, 0x0014
	lui     $at, %hi(game_8033B254)
	sh      $t5, %lo(game_8033B254)($at)
	lw      $t6, 0x0030($sp)
	li      $at, 0x00FF0000
	lw      $t7, 0x0080($t6)
	lw      $t8, 0x0188($t7)
	and     $t9, $t8, $at
	sra     $t0, $t9, 16
	lui     $at, %hi(game_8033B256)
	sh      $t0, %lo(game_8033B256)($at)
	lui     $a0, %hi(game_8033B256)
	jal     game_8024A584
	lh      $a0, %lo(game_8033B256)($a0)
	sltiu   $s0, $v0, 0x0001
	sw      $s0, 0x002C($sp)
	li      $a0, 0x0009
	li      $a1, 0x0014
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       L8024AE60
	nop
.globl L8024ADC0
L8024ADC0:
	li      $t1, 0x001E
	lui     $at, %hi(game_8033B254)
	sh      $t1, %lo(game_8033B254)($at)
	li      $a0, 0x0001
	li      $a1, 0x001E
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       L8024AE60
	nop
.globl L8024ADEC
L8024ADEC:
	lui     $t3, %hi(staff)
	lw      $t3, %lo(staff)($t3)
	la.u    $t2, staff_data
	la.l    $t2, staff_data
	bne     $t2, $t3, .L8024AE30
	nop
	li      $t4, 0x003C
	lui     $at, %hi(game_8033B254)
	sh      $t4, %lo(game_8033B254)($at)
	li      $a0, 0x0001
	li      $a1, 0x003C
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
	b       .L8024AE54
	nop
.L8024AE30:
	li      $t5, 0x0014
	lui     $at, %hi(game_8033B254)
	sh      $t5, %lo(game_8033B254)($at)
	li      $a0, 0x0001
	li      $a1, 0x0014
	move    $a2, $0
	move    $a3, $0
	jal     scene_wipe
	sw      $0, 0x0010($sp)
.L8024AE54:
	sw      $0, 0x002C($sp)
	b       L8024AE60
	nop
.globl L8024AE60
L8024AE60:
	lw      $t6, 0x002C($sp)
	beqz    $t6, .L8024AEB4
	nop
	lui     $t7, %hi(demo)
	lw      $t7, %lo(demo)($t7)
	bnez    $t7, .L8024AEB4
	nop
	lui     $a0, %hi(game_8033B254)
	lh      $a0, %lo(game_8033B254)($a0)
	sll     $t8, $a0, 2
	subu    $t8, $t8, $a0
	move    $a0, $t8
	bgez    $a0, .L8024AEA0
	sra     $t9, $a0, 1
	addiu   $at, $a0, 0x0001
	sra     $t9, $at, 1
.L8024AEA0:
	move    $a0, $t9
	sll     $t0, $a0, 3
	move    $a0, $t0
	jal     aud_fadeout
	addiu   $a0, $a0, -0x0002
.L8024AEB4:
	lui     $v0, %hi(game_8033B254)
	b       .L8024AEC8
	lh      $v0, %lo(game_8033B254)($v0)
	b       .L8024AEC8
	nop
.L8024AEC8:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

game_8024AEDC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(game_8033B252)
	lh      $t6, %lo(game_8033B252)($t6)
	beqz    $t6, .L8024B124
	nop
	lui     $t7, %hi(game_8033B254)
	lh      $t7, %lo(game_8033B254)($t7)
	lui     $at, %hi(game_8033B254)
	addiu   $t8, $t7, -0x0001
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	bnez    $t0, .L8024B124
	sh      $t8, %lo(game_8033B254)($at)
	jal     message_802D8D90
	nop
	lui     $t1, %hi(debug_stage)
	lb      $t1, %lo(debug_stage)($t1)
	beqz    $t1, .L8024AF50
	nop
	lui     $t2, %hi(game_8033B252)
	lh      $t2, %lo(game_8033B252)($t2)
	andi    $t3, $t2, 0x0010
	beqz    $t3, .L8024AF50
	nop
	jal     game_exit
	li      $a0, -0x0009
	b       .L8024B124
	nop
.L8024AF50:
	lui     $t4, %hi(demo)
	lw      $t4, %lo(demo)($t4)
	beqz    $t4, .L8024AF94
	nop
	lui     $t5, %hi(game_8033B252)
	lh      $t5, %lo(game_8033B252)($t5)
	li      $at, 0x0019
	bne     $t5, $at, .L8024AF84
	nop
	jal     game_exit
	li      $a0, -0x0008
	b       .L8024AF8C
	nop
.L8024AF84:
	jal     game_exit
	li      $a0, -0x0002
.L8024AF8C:
	b       .L8024B124
	nop
.L8024AF94:
	lui     $t6, %hi(game_8033B252)
	lh      $t6, %lo(game_8033B252)($t6)
	addiu   $t7, $t6, -0x0014
	sltiu   $at, $t7, 0x0005
	beqz    $at, .L8024B0C0
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(game_8033617C)
	addu    $at, $at, $t7
	lw      $t7, %lo(game_8033617C)($at)
	jr      $t7
	nop
.globl L8024AFC4
L8024AFC4:
	jal     save_reset
	nop
	jal     game_exit
	li      $a0, -0x0003
	b       .L8024B124
	nop
.globl L8024AFDC
L8024AFDC:
	jal     game_exit
	li      $a0, -0x0001
	li      $a0, 0x0002
	jal     Na_IO_unlock
	li      $a1, 0x03F0
	b       .L8024B124
	nop
.globl L8024AFF8
L8024AFF8:
	jal     game_exit
	li      $a0, -0x0002
	b       .L8024B124
	nop
.globl L8024B008
L8024B008:
	la.u    $t8, staff_data
	la.l    $t8, staff_data
	lui     $at, %hi(staff)
	sw      $t8, %lo(staff)($at)
	lui     $t9, %hi(staff)
	lw      $t9, %lo(staff)($t9)
	li      $a2, 0x00F8
	move    $a3, $0
	lbu     $a0, 0x0000($t9)
	jal     game_8024A700
	lbu     $a1, 0x0001($t9)
	b       .L8024B124
	nop
.globl L8024B03C
L8024B03C:
	li      $a0, 0x0002
	jal     Na_IO_lock
	li      $a1, 0x03FF
	lui     $t0, %hi(staff)
	lw      $t0, %lo(staff)($t0)
	lui     $at, %hi(staff)
	addiu   $t1, $t0, 0x0010
	sw      $t1, %lo(staff)($at)
	lui     $t2, %hi(staff)
	lw      $t2, %lo(staff)($t2)
	lui     $at, %hi(level_index)
	lbu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0007
	sh      $t4, %lo(level_index)($at)
	lui     $t5, %hi(staff)
	lw      $t5, %lo(staff)($t5)
	lbu     $t6, 0x0010($t5)
	bnez    $t6, .L8024B094
	nop
	li      $t7, 0x00FA
	b       .L8024B09C
	sw      $t7, 0x0018($sp)
.L8024B094:
	li      $t8, 0x00F9
	sw      $t8, 0x0018($sp)
.L8024B09C:
	lui     $t9, %hi(staff)
	lw      $t9, %lo(staff)($t9)
	lw      $a2, 0x0018($sp)
	move    $a3, $0
	lbu     $a0, 0x0000($t9)
	jal     game_8024A700
	lbu     $a1, 0x0001($t9)
	b       .L8024B124
	nop
.L8024B0C0:
	lui     $a0, %hi(game_8033B256)
	jal     port_get
	lh      $a0, %lo(game_8033B256)($a0)
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	lui     $a3, %hi(game_8033B258)
	lw      $a3, %lo(game_8033B258)($a3)
	lbu     $a0, 0x0001($t0)
	lbu     $a1, 0x0002($t0)
	lbu     $a2, 0x0003($t0)
	andi    $t1, $a0, 0x007F
	jal     game_8024A700
	move    $a0, $t1
	jal     save_mid_set
	lw      $a0, 0x001C($sp)
	lui     $t2, %hi(game_8033B248+0x00)
	lbu     $t2, %lo(game_8033B248+0x00)($t2)
	li      $at, 0x0001
	beq     $t2, $at, .L8024B11C
	nop
	li      $a0, 0x0002
	jal     game_8024B798
	move    $a1, $0
.L8024B11C:
	b       .L8024B124
	nop
.L8024B124:
	b       .L8024B12C
	nop
.L8024B12C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

game_8024B13C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(staff)
	lw      $t6, %lo(staff)($t6)
	bnez    $t6, .L8024B378
	nop
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lh      $t8, 0x00AE($t7)
	blez    $t8, .L8024B174
	nop
	sra     $t9, $t8, 8
	b       .L8024B178
	sh      $t9, 0x001E($sp)
.L8024B174:
	sh      $0, 0x001E($sp)
.L8024B178:
	lui     $t0, %hi(course_index)
	lh      $t0, %lo(course_index)($t0)
	blez    $t0, .L8024B1A0
	nop
	lui     $t1, %hi(hud+0x0A)
	lh      $t1, %lo(hud+0x0A)($t1)
	lui     $at, %hi(hud+0x0A)
	ori     $t2, $t1, 0x0002
	b       .L8024B1B8
	sh      $t2, %lo(hud+0x0A)($at)
.L8024B1A0:
	lui     $t3, %hi(hud+0x0A)
	lh      $t3, %lo(hud+0x0A)($t3)
	li      $at, -0x0003
	and     $t4, $t3, $at
	lui     $at, %hi(hud+0x0A)
	sh      $t4, %lo(hud+0x0A)($at)
.L8024B1B8:
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lui     $t5, %hi(hud+0x02)
	lh      $t5, %lo(hud+0x02)($t5)
	lh      $t7, 0x00A8($t6)
	slt     $at, $t5, $t7
	beqz    $at, .L8024B24C
	nop
	lui     $t8, %hi(gfx_frame)
	lw      $t8, %lo(gfx_frame)($t8)
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L8024B24C
	nop
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	lw      $t1, 0x000C($t0)
	andi    $t2, $t1, 0x6000
	beqz    $t2, .L8024B214
	nop
	li.u    $t3, 0x38128081
	li.l    $t3, 0x38128081
	b       .L8024B220
	sw      $t3, 0x0018($sp)
.L8024B214:
	li.u    $t4, 0x38118081
	li.l    $t4, 0x38118081
	sw      $t4, 0x0018($sp)
.L8024B220:
	lui     $t6, %hi(hud+0x02)
	lh      $t6, %lo(hud+0x02)($t6)
	lui     $at, %hi(hud+0x02)
	addiu   $t5, $t6, 0x0001
	sh      $t5, %lo(hud+0x02)($at)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8024B24C:
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lb      $t9, 0x00AD($t8)
	slti    $at, $t9, 0x0065
	bnez    $at, .L8024B274
	nop
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	li      $t0, 0x0064
	sb      $t0, 0x00AD($t1)
.L8024B274:
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lh      $t3, 0x00A8($t2)
	slti    $at, $t3, 0x03E8
	bnez    $at, .L8024B29C
	nop
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li      $t4, 0x03E7
	sh      $t4, 0x00A8($t6)
.L8024B29C:
	lui     $t5, %hi(hud+0x02)
	lh      $t5, %lo(hud+0x02)($t5)
	slti    $at, $t5, 0x03E8
	bnez    $at, .L8024B2BC
	nop
	li      $t7, 0x03E7
	lui     $at, %hi(hud+0x02)
	sh      $t7, %lo(hud+0x02)($at)
.L8024B2BC:
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lui     $at, %hi(hud+0x04)
	lh      $t9, 0x00AA($t8)
	sh      $t9, %lo(hud+0x04)($at)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	lui     $at, %hi(hud+0x00)
	lb      $t1, 0x00AD($t0)
	sh      $t1, %lo(hud+0x00)($at)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lui     $at, %hi(hud+0x08)
	lb      $t3, 0x00AC($t2)
	sh      $t3, %lo(hud+0x08)($at)
	lui     $t6, %hi(hud+0x06)
	lh      $t6, %lo(hud+0x06)($t6)
	lh      $t4, 0x001E($sp)
	slt     $at, $t6, $t4
	beqz    $at, .L8024B324
	nop
	li.u    $a0, 0x700D0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x700D0081
.L8024B324:
	lh      $t5, 0x001E($sp)
	lui     $at, %hi(hud+0x06)
	sh      $t5, %lo(hud+0x06)($at)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lbu     $t8, 0x00B2($t7)
	blez    $t8, .L8024B35C
	nop
	lui     $t9, %hi(hud+0x0A)
	lh      $t9, %lo(hud+0x0A)($t9)
	lui     $at, %hi(hud+0x0A)
	ori     $t0, $t9, 0x8000
	b       .L8024B378
	sh      $t0, %lo(hud+0x0A)($at)
.L8024B35C:
	lui     $t1, %hi(hud+0x0A)
	lh      $t1, %lo(hud+0x0A)($t1)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	and     $t2, $t1, $at
	lui     $at, %hi(hud+0x0A)
	sh      $t2, %lo(hud+0x0A)($at)
.L8024B378:
	b       .L8024B380
	nop
.L8024B380:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

game_8024B390:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     scene_update
	nop
	jal     game_8024B13C
	nop
	lui     $t6, %hi(scene)
	lw      $t6, %lo(scene)($t6)
	beqz    $t6, .L8024B3CC
	nop
	lui     $t7, %hi(scene)
	lw      $t7, %lo(scene)($t7)
	jal     camera_802868F8
	lw      $a0, 0x0024($t7)
.L8024B3CC:
	b       .L8024B3D4
	nop
.L8024B3D4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

game_8024B3E4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(demo)
	lw      $t6, %lo(demo)($t6)
	beqz    $t6, .L8024B4A0
	nop
	jal     scene_demo
	nop
	lui     $t7, %hi(cont_1)
	lw      $t7, %lo(cont_1)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x0080
	beqz    $t9, .L8024B458
	nop
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	li      $at, 0x001B
	bne     $t0, $at, .L8024B43C
	nop
	b       .L8024B440
	li      $s0, 0x0019
.L8024B43C:
	li      $s0, 0x0016
.L8024B440:
	lui     $a0, %hi(mario)
	lw      $a0, %lo(mario)($a0)
	jal     game_8024A9CC
	move    $a1, $s0
	b       .L8024B4A0
	nop
.L8024B458:
	lui     $t1, %hi(wipe+0x00)
	lbu     $t1, %lo(wipe+0x00)($t1)
	bnez    $t1, .L8024B4A0
	nop
	lui     $t2, %hi(game_8033B252)
	lh      $t2, %lo(game_8033B252)($t2)
	bnez    $t2, .L8024B4A0
	nop
	lui     $t3, %hi(cont_1)
	lw      $t3, %lo(cont_1)($t3)
	lhu     $t4, 0x0012($t3)
	andi    $t5, $t4, 0x1000
	beqz    $t5, .L8024B4A0
	nop
	lui     $a0, %hi(mario)
	lw      $a0, %lo(mario)($a0)
	jal     game_8024A9CC
	li      $a1, 0x0016
.L8024B4A0:
	jal     game_8024A124
	nop
	jal     game_8024A374
	nop
	lui     $t6, %hi(game_8033B25E)
	lb      $t6, %lo(game_8033B25E)($t6)
	beqz    $t6, .L8024B4E8
	nop
	lui     $t7, %hi(hud+0x0C)
	lhu     $t7, %lo(hud+0x0C)($t7)
	slti    $at, $t7, 0x464F
	beqz    $at, .L8024B4E8
	nop
	lui     $t8, %hi(hud+0x0C)
	lhu     $t8, %lo(hud+0x0C)($t8)
	lui     $at, %hi(hud+0x0C)
	addiu   $t9, $t8, 0x0001
	sh      $t9, %lo(hud+0x0C)($at)
.L8024B4E8:
	jal     scene_update
	nop
	jal     game_8024B13C
	nop
	lui     $t0, %hi(scene)
	lw      $t0, %lo(scene)($t0)
	beqz    $t0, .L8024B518
	nop
	lui     $t1, %hi(scene)
	lw      $t1, %lo(scene)($t1)
	jal     camera_802868F8
	lw      $a0, 0x0024($t1)
.L8024B518:
	jal     game_8024A85C
	nop
	jal     game_8024AEDC
	nop
	lui     $t2, %hi(game_8033B238)
	lh      $t2, %lo(game_8033B238)($t2)
	bnez    $t2, .L8024B5B0
	nop
	lui     $t3, %hi(game_8033B248+0x00)
	lbu     $t3, %lo(game_8033B248+0x00)($t3)
	li      $at, 0x0001
	bne     $t3, $at, .L8024B55C
	nop
	jal     game_state_set
	li      $a0, 0x0004
	b       .L8024B5B0
	nop
.L8024B55C:
	lui     $t4, %hi(game_8033B23C)
	lh      $t4, %lo(game_8033B23C)($t4)
	beqz    $t4, .L8024B57C
	nop
	jal     game_state_set
	li      $a0, 0x0003
	b       .L8024B5B0
	nop
.L8024B57C:
	jal     game_ispause
	nop
	beqz    $v0, .L8024B5B0
	nop
.if 1
	jal     canpause
	nop
	beqz    $v0, .L8024B5B0
	nop
.endif
	jal     aud_mute_start
	li      $a0, 0x0001
	lui     $t5, %hi(_camera_bss+0x328)
	lh      $t5, %lo(_camera_bss+0x328)($t5)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t6, $t5, 0x8000
	sh      $t6, %lo(_camera_bss+0x328)($at)
	jal     game_state_set
	li      $a0, 0x0002
.L8024B5B0:
	b       .L8024B5C0
	move    $v0, $0
	b       .L8024B5C0
	nop
.L8024B5C0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

game_8024B5D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(msg_code)
	lh      $t6, %lo(msg_code)($t6)
	bnez    $t6, .L8024B5FC
	nop
	jal     message_802DA810
	li      $a0, 0x0001
	b       .L8024B6AC
	nop
.L8024B5FC:
	lui     $t7, %hi(msg_code)
	lh      $t7, %lo(msg_code)($t7)
	li      $at, 0x0001
	bne     $t7, $at, .L8024B644
	nop
	jal     aud_mute_end
	li      $a0, 0x0001
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	and     $t9, $t8, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t9, %lo(_camera_bss+0x328)($at)
	jal     game_state_set
	move    $a0, $0
	b       .L8024B6AC
	nop
.L8024B644:
.if 1
	jal     pauseexit
	nop
.endif
	lui     $t0, %hi(debug_stage)
	lb      $t0, %lo(debug_stage)($t0)
	beqz    $t0, .L8024B668
	nop
	li      $a0, -0x0009
	jal     game_exit_fadeout
	li      $a1, 0x0001
	b       .L8024B690
	nop
.L8024B668:
	li      $a0, 0x0006
	li      $a1, 0x0001
	li      $a2, 0x001F
	jal     game_8024A700
	move    $a3, $0
	move    $a0, $0
	jal     game_exit_fadeout
	move    $a1, $0
	lui     $at, %hi(course_prev)
	sh      $0, %lo(course_prev)($at)
.L8024B690:
	lui     $t1, %hi(_camera_bss+0x328)
	lh      $t1, %lo(_camera_bss+0x328)($t1)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	and     $t2, $t1, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t2, %lo(_camera_bss+0x328)($at)
.L8024B6AC:
	b       .L8024B6BC
	move    $v0, $0
	b       .L8024B6BC
	nop
.L8024B6BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

game_8024B6CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x0400
	beqz    $t8, .L8024B718
	nop
	lui     $t9, %hi(_camera_bss+0x328)
	lh      $t9, %lo(_camera_bss+0x328)($t9)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	and     $t0, $t9, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t0, %lo(_camera_bss+0x328)($at)
	jal     game_8024B3E4
	nop
	b       .L8024B778
	nop
.L8024B718:
	lui     $t1, %hi(cont_1)
	lw      $t1, %lo(cont_1)($t1)
	lhu     $t2, 0x0012($t1)
	andi    $t3, $t2, 0x1000
	beqz    $t3, .L8024B764
	nop
	lui     $t4, %hi(_camera_bss+0x328)
	lh      $t4, %lo(_camera_bss+0x328)($t4)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	and     $t5, $t4, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t5, %lo(_camera_bss+0x328)($at)
	jal     aud_mute_end
	li      $a0, 0x0001
	jal     game_state_set
	move    $a0, $0
	b       .L8024B778
	nop
.L8024B764:
	lui     $t6, %hi(_camera_bss+0x328)
	lh      $t6, %lo(_camera_bss+0x328)($t6)
	lui     $at, %hi(_camera_bss+0x328)
	ori     $t7, $t6, 0x8000
	sh      $t7, %lo(_camera_bss+0x328)($at)
.L8024B778:
	b       .L8024B788
	move    $v0, $0
	b       .L8024B788
	nop
.L8024B788:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl game_8024B798
game_8024B798:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	lui     $at, %hi(game_8033B23C)
	sh      $a0, %lo(game_8033B23C)($at)
	lui     $at, %hi(game_8033B240)
	sw      $a1, %lo(game_8033B240)($at)
	jr      $ra
	nop
	jr      $ra
	nop

game_8024B7C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(game_8033B240)
	lw      $t6, %lo(game_8033B240)($t6)
	li      $at, -0x0001
	bne     $t6, $at, .L8024B7F4
	nop
	lui     $t7, %hi(scene)
	lw      $t7, %lo(scene)($t7)
	jal     camera_802868F8
	lw      $a0, 0x0024($t7)
	b       .L8024B81C
	nop
.L8024B7F4:
	lui     $t8, %hi(game_8033B240)
	lw      $t8, %lo(game_8033B240)($t8)
	beqz    $t8, .L8024B81C
	nop
	lui     $t9, %hi(game_8033B240)
	lw      $t9, %lo(game_8033B240)($t9)
	la.u    $a0, game_8033B23C
	la.l    $a0, game_8033B23C
	jalr    $t9
	nop
.L8024B81C:
	lui     $t0, %hi(game_8033B23C)
	lh      $t0, %lo(game_8033B23C)($t0)
	blez    $t0, .L8024B840
	nop
	lui     $t1, %hi(game_8033B23C)
	lh      $t1, %lo(game_8033B23C)($t1)
	lui     $at, %hi(game_8033B23C)
	addiu   $t2, $t1, -0x0001
	sh      $t2, %lo(game_8033B23C)($at)
.L8024B840:
	lui     $t3, %hi(game_8033B23C)
	lh      $t3, %lo(game_8033B23C)($t3)
	bnez    $t3, .L8024B860
	nop
	lui     $at, %hi(game_8033B240)
	sw      $0, %lo(game_8033B240)($at)
	jal     game_state_set
	move    $a0, $0
.L8024B860:
	b       .L8024B870
	move    $v0, $0
	b       .L8024B870
	nop
.L8024B870:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

game_8024B880:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(game_8033B240)
	lw      $t6, %lo(game_8033B240)($t6)
	beqz    $t6, .L8024B8B0
	nop
	lui     $t9, %hi(game_8033B240)
	lw      $t9, %lo(game_8033B240)($t9)
	la.u    $a0, game_8033B23C
	la.l    $a0, game_8033B23C
	jalr    $t9
	nop
.L8024B8B0:
	lui     $t7, %hi(game_8033B23C)
	lh      $t7, %lo(game_8033B23C)($t7)
	lui     $at, %hi(game_8033B23C)
	addiu   $t8, $t7, -0x0001
	sh      $t8, %lo(game_8033B23C)($at)
	sll     $t0, $t8, 16
	sra     $t1, $t0, 16
	li      $at, -0x0001
	bne     $t1, $at, .L8024B920
	nop
	lui     $at, %hi(hud+0x0A)
	sh      $0, %lo(hud+0x0A)($at)
	lui     $at, %hi(game_8033B23C)
	sh      $0, %lo(game_8033B23C)($at)
	lui     $at, %hi(game_8033B240)
	sw      $0, %lo(game_8033B240)($at)
	lui     $t2, %hi(game_8033B248+0x00)
	lbu     $t2, %lo(game_8033B248+0x00)($t2)
	beqz    $t2, .L8024B914
	nop
	lui     $v0, %hi(game_8033B248+0x01)
	b       .L8024B930
	lbu     $v0, %lo(game_8033B248+0x01)($v0)
	b       .L8024B920
	nop
.L8024B914:
	lui     $v0, %hi(game_8033B250)
	b       .L8024B930
	lh      $v0, %lo(game_8033B250)($v0)
.L8024B920:
	b       .L8024B930
	move    $v0, $0
	b       .L8024B930
	nop
.L8024B930:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

game_8024B940:
	lui     $t6, %hi(game_8033B23C)
	lh      $t6, %lo(game_8033B23C)($t6)
	lui     $at, %hi(game_8033B23C)
	addiu   $t7, $t6, -0x0001
	sh      $t7, %lo(game_8033B23C)($at)
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	li      $at, -0x0001
	bne     $t9, $at, .L8024B9A0
	nop
	lui     $at, %hi(hud+0x0A)
	sh      $0, %lo(hud+0x0A)($at)
	lui     $t0, %hi(game_8033B248+0x00)
	lbu     $t0, %lo(game_8033B248+0x00)($t0)
	beqz    $t0, .L8024B994
	nop
	lui     $v0, %hi(game_8033B248+0x01)
	jr      $ra
	lbu     $v0, %lo(game_8033B248+0x01)($v0)
	b       .L8024B9A0
	nop
.L8024B994:
	lui     $v0, %hi(game_8033B250)
	jr      $ra
	lh      $v0, %lo(game_8033B250)($v0)
.L8024B9A0:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

/* int game_update(void) */
game_update:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(game_8033B238)
	lhu     $t6, %lo(game_8033B238)($t6)
	sltiu   $at, $t6, 0x0006
	beqz    $at, L8024BA50
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(game_80336190)
	addu    $at, $at, $t6
	lw      $t6, %lo(game_80336190)($at)
	jr      $t6
	nop
.globl L8024B9EC
L8024B9EC:
	jal     game_8024B3E4
	nop
	sw      $v0, 0x001C($sp)
	b       L8024BA50
	nop
.globl L8024BA00
L8024BA00:
	jal     game_8024B5D4
	nop
	sw      $v0, 0x001C($sp)
	b       L8024BA50
	nop
.globl L8024BA14
L8024BA14:
	jal     game_8024B7C0
	nop
	sw      $v0, 0x001C($sp)
	b       L8024BA50
	nop
.globl L8024BA28
L8024BA28:
	jal     game_8024B880
	nop
	sw      $v0, 0x001C($sp)
	b       L8024BA50
	nop
.globl L8024BA3C
L8024BA3C:
	jal     game_8024B6CC
	nop
	sw      $v0, 0x001C($sp)
	b       L8024BA50
	nop
.globl L8024BA50
L8024BA50:
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L8024BA6C
	nop
	jal     aud_mute_reset
	nop
	jal     aud_se_unlock
	nop
.L8024BA6C:
	b       .L8024BA7C
	lw      $v0, 0x001C($sp)
	b       .L8024BA7C
	nop
.L8024BA7C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int game_init(void) */
game_init:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $0, 0x0024($sp)
	jal     game_state_set
	move    $a0, $0
	lui     $at, %hi(game_8033B252)
	sh      $0, %lo(game_8033B252)($at)
	lui     $at, %hi(game_8033B23C)
	sh      $0, %lo(game_8033B23C)($at)
	lui     $at, %hi(game_8033B250)
	sh      $0, %lo(game_8033B250)($at)
	lui     $t6, %hi(staff)
	lw      $t6, %lo(staff)($t6)
	bnez    $t6, .L8024BAD8
	nop
	li      $t7, 0x003F
	lui     $at, %hi(hud+0x0A)
	b       .L8024BAE0
	sh      $t7, %lo(hud+0x0A)($at)
.L8024BAD8:
	lui     $at, %hi(hud+0x0A)
	sh      $0, %lo(hud+0x0A)($at)
.L8024BAE0:
	lui     $at, %hi(game_8033B25E)
	sb      $0, %lo(game_8033B25E)($at)
	lui     $t8, %hi(game_8033B248+0x00)
	lbu     $t8, %lo(game_8033B248+0x00)($t8)
	beqz    $t8, .L8024BB2C
	nop
	lui     $t9, %hi(game_8033B248+0x03)
	lbu     $t9, %lo(game_8033B248+0x03)($t9)
	slti    $at, $t9, 0x00F8
	bnez    $at, .L8024BB1C
	nop
	jal     game_8024A1D8
	nop
	b       .L8024BB24
	nop
.L8024BB1C:
	jal     game_8024A18C
	nop
.L8024BB24:
	b       .L8024BC90
	nop
.L8024BB2C:
	la.u    $t0, spawn_player
	la.l    $t0, spawn_player
	lb      $t1, 0x000C($t0)
	bltz    $t1, .L8024BB50
	nop
	jal     scene_player_open
	nop
	jal     player_80254B20
	nop
.L8024BB50:
	lui     $t2, %hi(scene)
	lw      $t2, %lo(scene)($t2)
	beqz    $t2, .L8024BC1C
	nop
	lui     $t3, %hi(scene)
	lw      $t3, %lo(scene)($t3)
	jal     camera_80286F68
	lw      $a0, 0x0024($t3)
	lui     $t4, %hi(demo)
	lw      $t4, %lo(demo)($t4)
	beqz    $t4, .L8024BBA0
	nop
	lui     $a0, %hi(mario)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, %lo(mario)($a0)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024BC1C
	nop
.L8024BBA0:
	lui     $t5, %hi(debug_stage)
	lb      $t5, %lo(debug_stage)($t5)
	bnez    $t5, .L8024BC1C
	nop
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lw      $t7, 0x000C($t6)
	beqz    $t7, .L8024BC1C
	nop
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	jal     save_file_isactive
	addiu   $a0, $a0, -0x0001
	beqz    $v0, .L8024BBFC
	nop
	lui     $a0, %hi(mario)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, %lo(mario)($a0)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8024BC1C
	nop
.L8024BBFC:
	lui     $a0, %hi(mario)
	li.u    $a1, 0x04001301
	li.l    $a1, 0x04001301
	lw      $a0, %lo(mario)($a0)
	jal     player_80252CF4
	move    $a2, $0
	li      $t8, 0x0001
	sw      $t8, 0x0024($sp)
.L8024BC1C:
	lw      $t9, 0x0024($sp)
	beqz    $t9, .L8024BC4C
	nop
	li      $t0, 0x00FF
	sw      $t0, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x005A
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
	b       .L8024BC68
	nop
.L8024BC4C:
	li      $t1, 0x00FF
	sw      $t1, 0x0010($sp)
	li      $a0, 0x0008
	li      $a1, 0x0010
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
.L8024BC68:
	lui     $t2, %hi(demo)
	lw      $t2, %lo(demo)($t2)
	bnez    $t2, .L8024BC90
	nop
	lui     $t3, %hi(scene)
	lw      $t3, %lo(scene)($t3)
	move    $a2, $0
	lhu     $a0, 0x0036($t3)
	jal     bgm_play
	lhu     $a1, 0x0038($t3)
.L8024BC90:
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	li.u    $at, 0x04001301
	li.l    $at, 0x04001301
	lw      $t5, 0x000C($t4)
	bne     $t5, $at, .L8024BCB8
	nop
	li      $a0, 0x0002
	jal     Na_IO_lock
	li      $a1, 0x0330
.L8024BCB8:
	b       .L8024BCC8
	li      $v0, 0x0001
	b       .L8024BCC8
	nop
.L8024BCC8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int p_game_main(SHORT arg, int code) */
.globl p_game_main
p_game_main:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0024($sp)
	lh      $s0, 0x002A($sp)
	beqz    $s0, .L8024BD10
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8024BD24
	nop
	b       .L8024BD38
	nop
.L8024BD10:
	jal     game_init
	nop
	sw      $v0, 0x0024($sp)
	b       .L8024BD38
	nop
.L8024BD24:
	jal     game_update
	nop
	sw      $v0, 0x0024($sp)
	b       .L8024BD38
	nop
.L8024BD38:
	b       .L8024BD48
	lw      $v0, 0x0024($sp)
	b       .L8024BD48
	nop
.L8024BD48:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int p_game_init(SHORT arg, int code) */
.globl p_game_init
p_game_init:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $at, %hi(game_8033B248+0x00)
	sb      $0, %lo(game_8033B248+0x00)($at)
	lui     $at, %hi(game_8033B252)
	sh      $0, %lo(game_8033B252)($at)
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	jal     save_file_isactive
	addiu   $a0, $a0, -0x0001
	sltiu   $s0, $v0, 0x0001
	lui     $at, %hi(game_8033B26E)
	sb      $s0, %lo(game_8033B26E)($at)
	lw      $t6, 0x002C($sp)
	lui     $at, %hi(stage_index)
	sh      $t6, %lo(stage_index)($at)
	lui     $at, %hi(course_index)
	sh      $0, %lo(course_index)($at)
	lui     $at, %hi(course_prev)
	sh      $0, %lo(course_prev)($at)
	lui     $at, %hi(staff)
	sw      $0, %lo(staff)($at)
	lui     $at, %hi(save_jump)
	sb      $0, %lo(save_jump)($at)
	jal     player_80254F44
	nop
	jal     save_mid_clear
	nop
	jal     save_cap_init
	nop
	jal     camera_80287BC4
	nop
	jal     object_b_802E3E50
	nop
	b       .L8024BE00
	lw      $v0, 0x002C($sp)
	b       .L8024BE00
	nop
.L8024BE00:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* int p_game_select(SHORT arg, int code) */
.globl p_game_select
p_game_select:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(game_8032D944)
	lb      $t6, %lo(game_8032D944)($t6)
	sw      $t6, 0x001C($sp)
	lui     $at, %hi(game_8032D944)
	sb      $0, %lo(game_8032D944)($at)
	lw      $t7, 0x0024($sp)
	lui     $at, %hi(stage_index)
	sh      $t7, %lo(stage_index)($at)
	lw      $t8, 0x0024($sp)
	lui     $t9, %hi(course_table-1)
	lui     $at, %hi(course_index)
	addu    $t9, $t9, $t8
	lb      $t9, %lo(course_table-1)($t9)
	sh      $t9, %lo(course_index)($at)
	lui     $t0, %hi(demo)
	lw      $t0, %lo(demo)($t0)
	bnez    $t0, .L8024BE8C
	nop
	lui     $t1, %hi(staff)
	lw      $t1, %lo(staff)($t1)
	bnez    $t1, .L8024BE8C
	nop
	lui     $t2, %hi(course_index)
	lh      $t2, %lo(course_index)($t2)
	bnez    $t2, .L8024BE94
	nop
.L8024BE8C:
	b       .L8024BF90
	move    $v0, $0
.L8024BE94:
	lui     $t3, %hi(stage_index)
	lh      $t3, %lo(stage_index)($t3)
	li      $at, 0x001E
	beq     $t3, $at, .L8024BEF8
	nop
	li      $at, 0x0021
	beq     $t3, $at, .L8024BEF8
	nop
	li      $at, 0x0022
	beq     $t3, $at, .L8024BEF8
	nop
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	sh      $0, 0x00A8($t4)
	lui     $at, %hi(hud+0x02)
	sh      $0, %lo(hud+0x02)($at)
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	lui     $at, %hi(save_star)
	sb      $v0, %lo(save_star)($at)
.L8024BEF8:
	lui     $t5, %hi(course_prev)
	lui     $t6, %hi(course_index)
	lh      $t6, %lo(course_index)($t6)
	lh      $t5, %lo(course_prev)($t5)
	beq     $t5, $t6, .L8024BF30
	nop
	lui     $t7, %hi(course_index)
	lh      $t7, %lo(course_index)($t7)
	lui     $at, %hi(course_prev)
	sh      $t7, %lo(course_prev)($at)
	jal     course_8029C770
	nop
	jal     save_mid_clear
	nop
.L8024BF30:
	lui     $t8, %hi(course_index)
	lh      $t8, %lo(course_index)($t8)
	slti    $at, $t8, 0x0010
	beqz    $at, .L8024BF50
	nop
	lw      $t9, 0x001C($sp)
	beqz    $t9, .L8024BF58
	nop
.L8024BF50:
	b       .L8024BF90
	move    $v0, $0
.L8024BF58:
	lui     $t0, %hi(debug_stage)
	lb      $t0, %lo(debug_stage)($t0)
	beqz    $t0, .L8024BF80
	nop
	lui     $t1, %hi(debug_time)
	lb      $t1, %lo(debug_time)($t1)
	bnez    $t1, .L8024BF80
	nop
	b       .L8024BF90
	move    $v0, $0
.L8024BF80:
	b       .L8024BF90
	li      $v0, 0x0001
	b       .L8024BF90
	nop
.L8024BF90:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* int p_ending_se(SHORT arg, int code) */
.globl p_ending_se
p_ending_se:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	li.u    $a0, 0x701FFF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x701FFF81
	b       .L8024BFD4
	li      $v0, 0x0001
	b       .L8024BFD4
	nop
.L8024BFD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

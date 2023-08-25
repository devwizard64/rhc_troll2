.set noreorder
.globl watch
watch:
	and     $a0, 0x1ffffff8
	or      $a0, $a1
	mtc0    $a0, $18
	j       $ra
	mtc0    $0, $19

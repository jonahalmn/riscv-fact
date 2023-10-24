.global fact_rec
fact_rec:
	addi sp, sp, -8 # we'll need to store ra and n
	sw ra, 0(sp)
	addi t0, zero, 2
	blt a0, t0, fact_rec_n2 # if n < 2
	sw a0, 4(sp) # store n
	addi a0, a0, -1 # n - 1 for iterative call
	jal ra, fact_rec
	lw t0, 4(sp) # we load n again
	mul a0, t0, a0 # fact_rec() * n
	j exit_fact_rec # skip fact_rec_n2
fact_rec_n2:
	addi a0, zero, 1  
exit_fact_rec:
	lw ra, 0(sp)
	addi sp, sp, 8
	jr ra

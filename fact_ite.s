.global fact_ite
fact_ite:
	addi t0, zero, 1 # res = 1
	addi t1, zero, 2 # i = 2
begin_for:
	bgt t1, a0, exit_fact_ite
	mul t0, t0, t1 # res = res*i
	addi t1, t1, 1 # i++
	j begin_for
exit_fact_ite:
	add a0, t0, zero
	jr ra

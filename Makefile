rv-prefix=riscv64-unknown-elf-
cc=$(rv-prefix)gcc

fact:
	$(cc) main.c fact_rec.s fact_ite.s -o $@

clean:
	rm fact

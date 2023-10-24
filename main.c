#include<stdio.h>

extern int fact_ite(int n);
extern int fact_rec(int n);

int main(int argc, char** argv) {

	for(int j = 0; j < 6; j++) {
		int i = fact_ite(j);
		printf("iterative : %d! is %d\n", j, i);
		i = fact_rec(j);
		printf("recursive : %d! is %d\n", j, i);
	}

}

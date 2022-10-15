#include <stdio.h>

int main(void){
	int arr[3] = {1,2,3};
	int (*p)[3] = &arr;
	printf("*p: %d\n", (*p)[1]);

	int *pp=arr;
	printf("pp: %d\n", pp[1]);
	

	printf("-----------------------\n");
	printf("(*p+1): %d\n", (*p+1)[1]);
	printf("pp+1: %d\n", pp[1]+1);

	printf("-----------------------\n");
	printf("*p+1: %d\n", (*p)[1]+1);
	printf("pp+1: %d\n", pp[1]+1);

	printf("-----------------------\n");
	printf("**p+1: %d\n", **p+1);
	printf("*pp+1: %d\n", *pp+1);

	printf("-----------------------\n");
	printf("++(**p): %d\n", ++(**p));
	printf("(*pp): %d\n", ++*pp);

	printf("-----------------------\n");
	printf("size\n");
	printf("-----------------------\n");
	printf("*p:%lu \n pp:%lu",sizeof(*p),sizeof(*pp));
return 0;
}

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{
	int p;
	printf("%d\n",getpid());
	p=fork();
	if(p==0){
		printf("Child: %d\n",getpid());
		printf("Parent: %d\n",getppid());
	}
	return 0;
}
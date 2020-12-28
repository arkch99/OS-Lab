#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
	int p;
	p = fork();
	if(!p)
	{
		//printf("In child:\n");
		printf("%d\n", getpid());
		printf("%d\n", getppid());
	}
	else
	{
		//printf("In parent: pid of child is: %d\n", p);
		printf("%d\n", p);
	}

	// printf("%d\n", getpid());
	// printf("%d\n", getppid());
	
	return 0;
}
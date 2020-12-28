#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
	int p, i = 5;
	p = fork();
	if(p == 0)
	{
		printf("Child process:%d\n", ++i);		
	}
	else if(p > 0)
	{
		printf("Parent process: %d\n", i);
	}
	else
	{
		printf("Error\n");
	}
	
	return 0;
}

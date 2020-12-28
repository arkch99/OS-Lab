#include <stdio.h>
#include <unistd.h>

int main()
{
	int p = fork();
	if(!p)
	{
		printf("Child\n");
		//child retains trace of parent even after it finishes execution
		// so its a zombie
		printf("%d\n", getpid());
	}
	else if(p > 0)
	{
		sleep(5);
		printf("Parent process\n");
		printf("%d\n", getpid());		
		while(1)
			;		
	}
	return 0;
}
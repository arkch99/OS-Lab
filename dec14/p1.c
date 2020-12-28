#include <stdio.h>
#include <unistd.h>

int main()
{
	int p = fork();
	if(!p)
	{
		printf("Child process: pid: %d\nppid: %d\n", getpid(), getppid());
		sleep(5);
		printf("Orphan process: pid: %d\nppid: %d\n", getpid(), getppid());
	}
	else if(p > 0)
	{
		printf("Parent process: pid: %d\n", getpid());
	}
	return 1;
}
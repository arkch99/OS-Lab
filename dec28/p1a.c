#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
	int p;
	p = fork();
	if(!p)
	{
		printf("In child:\n");
		printf("%d\n", getpid());
		printf("%d\n", getppid());
	}
	else
	{
		printf("In parent: pid of child is: %d\n", p);
		printf("%d\n", p);
	}

	return 0;
}

// arko@arko:~/os_lab/dec28$ ./p1a
// In parent: pid of child is: 9308
// 9308
// In child:
// 9308

// here, a child process is forked off, and both parent and child run
// as and when determined by the scheduler(here, the parent runs first)
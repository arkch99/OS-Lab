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



// arko@arko:~/os_lab/dec28$ ./p1b
// Parent process: 5
// Child process:6

// it is observed that the parent and the child process have different values
// of i. this demonstrates that while the child is an exact copy of the parent, they have
// separate adress spaces
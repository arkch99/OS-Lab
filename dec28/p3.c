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
		// ps shows "defunct" next to its name

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
//arko@arko:~/os_lab/dec28$ ./p3
// Child
// 8616
// Parent process
// 8615

//output of ps -A:
// 8615 pts/1    00:00:35 p3
// 8616 pts/1    00:00:00 p3 <defunct>
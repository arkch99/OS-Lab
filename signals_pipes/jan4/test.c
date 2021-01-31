#include <stdio.h>
#include<unistd.h>

int main()
{
	int p = fork();
	if(!p)
	{
		while(1){
			printf("Child\n");
			sleep(1);
		}
	}
	else
	{
		while(1)
		{
			printf("Parent\n");
			sleep(5);
		}
	}
	return 0;
}
#include <stdio.h>
#include <unistd.h>

int main()
{
	fork(); //2 hellos
	fork(); //4 hellos
	fork();
	//fork();
	printf("Hello\n");
	return 0;
}
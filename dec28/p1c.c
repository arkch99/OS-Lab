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

// arko@arko:~/os_lab/dec28$ ./p1c
// Hello
// Hello
// Hello
// Hello
// Hello
// Hello
// arko@arko:~/os_lab/dec28$ Hello
// Hello

// this program creates a process tree of 8 processes, as evident from the output
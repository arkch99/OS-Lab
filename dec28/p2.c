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
		// here, the calls to getppid() print different things each time.
	}
	else if(p > 0)
	{
		printf("Parent process: pid: %d\n", getpid());
	}
	return 1;
}

// arko@arko:~/os_lab$ cd dec14/
// arko@arko:~/os_lab/dec14$ ./p1
// Parent process: pid: 7406
// Child process: pid: 7407
// ppid: 7406
// Orphan process: pid: 7407
// ppid: 1019

// the child process first shows a ppid which matches the pid of the parent process
// the orphan's ppid of 1019 is the pid of the bash shell, indicating that the parent has completed execution and has been terminated.
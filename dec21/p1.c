//Thread 1
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

pthread_mutex_t m = PTHREAD_MUTEX_INITIALIZER;

void* threadFunction(void* args)
{
    int i;
	//pthread_mutex_lock(&m);
    for(i=1;i<=5;++i)
    {
		printf("I am new thread.\n");		
        sleep(1);		
    }
	//pthread_mutex_unlock(&m);
}
int main()
{
    pthread_t id;
    int res,i;
    res=pthread_create(&id,NULL,&threadFunction,NULL);
    if(res==0)
    {
        printf("Thread created successfully.\n");
    }
    else
    {
        printf("Thread not created.\n");
        return 0;
    }
	//pthread_mutex_lock(&m);
    for(i=1;i<=2;++i)
    {
	  printf("I am main thread.\n");  
      sleep(1);
    }
	pthread_join(id, NULL);
	//pthread_mutex_unlock(&m);
    return 0;
}

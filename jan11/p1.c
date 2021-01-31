#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>

#define MAX 5

sem_t full, empty, mutex;

int buffer[MAX];
int fill = 0, use = 0;

void put(int val)
{
	buffer[fill] = val;
	fill = (fill + 1) % MAX;
}

int get()
{
	int val = buffer[use];
	buffer[use] = -1;
	use = (use + 1) % MAX;
	return val;
}

void *producer(void *args)
{
	int *loops = (int *)args;	
	for(int i = 0; i < *loops; i++)
	{
		sem_wait(&empty);
		sem_wait(&mutex);
		printf("Produced %d\n", i);
		put(i);		
		sem_post(&mutex);
		sem_post(&full);
	}
}

void *consumer(void *args)
{
	int *loops = (int *)args;
	for(int i = 0; i < *loops; i++)
	{
		sem_wait(&full);
		sem_wait(&mutex);
		int val = get();
		printf("Got %d\n", val);
		sem_post(&mutex);
		sem_post(&empty);
	}
}

int main(int argc, char *argv[])
{
	//printf()
	sem_init(&empty, 0, MAX);
	sem_init(&full, 0, 0);
	sem_init(&mutex, 0, 1);
	if(argc != 2)
	{
		printf("Usage: p1 loops\n");
		return 1;
	}
	int loops = atoi(argv[1]);
	pthread_t prod, cons;
	pthread_create(&prod, NULL, producer, &loops);
	pthread_create(&cons, NULL, consumer, &loops);
	pthread_join(prod, NULL);
	pthread_join(cons, NULL);
	return 0;

}
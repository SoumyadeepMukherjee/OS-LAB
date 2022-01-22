#include<pthread.h>
#include<stdio.h>
#include<unistd.h>
#include<stdbool.h>
#include<stdlib.h>
#define N 5
#define THINKING 2
#define HUNGRY 1
#define EATING 0
#define LEFT (phum+4)%N
#define RIGHT (phum+1)%N
int state[N];
int phil[N]={0,1,2,3,4};
int mutex;
pthread_t thread_id[N];
void test(int phum)
{
  while(true)
  {
    if(state[phum] == HUNGRY && state[LEFT]!= EATING && state[RIGHT]!= EATING)
    {
      state[phum]= EATING;
      sleep(2);
      printf("Philosopher %d takes fork %d and %d \n",phum+1,LEFT+1,phum+1);
      printf("Philosopher %d is Eating\n",phum+1);
      break;
    }
    else
       {
         continue;
       }
  }
}  
void take_fork(int phum)
{
  mutex--;
  state[phum]=HUNGRY;
  printf("Philosopher %d is Hungry\n",phum+1);
  test(phum);
  mutex++;
  sleep(1);
}
void put_fork(int phum)
{
  mutex--;
  state[phum]= THINKING;
  printf("Philosopher %d putting fork %d and %d down\n",phum+1,LEFT+1,phum+1);
printf("Philosopher %d is thinking\n",phum+1);
mutex++;
}
void *Philosopher(void *num)
{
  while(mutex<=0);
  int *i=num;
  sleep(1);
  take_fork(*i);
  sleep(5);
  put_fork(*i);
  thread_id[*i]=0;
}
int main()
{
  int i,choice,phum;
  mutex=1;
  for(i=0;i<N;i++)
    thread_id[i]=0;
  for(i=0;i<N;i++)
  {
    pthread_create(&thread_id[i],NULL,Philosopher,&phil[i]);
    printf("Philosopher %d is thinking\n",i+1);
  }
  printf("in\n");
  while(true)
  {
    scanf("%d",&choice);
    switch(choice)
    {
      case 1:
        phum=rand()%N;
        if(thread_id[phum]==0)
          pthread_create(&thread_id[phum],NULL,Philosopher,&phil[phum]);
        else
          printf("Philosopher %d is already eating or waiting to eat\n",phum+1);
        break;
      case 2:
         continue;
    }
  }
  return 0;
}

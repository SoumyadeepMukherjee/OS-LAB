#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
  
int mutex = 1;
int full = 0;
int empty = 3, x = 0;
  
void producer()
{
    --mutex;
    ++full;
    --empty;
    x++;
    printf("\nProducer produces item %d",x);
    sleep(2);
    ++mutex;
}

void consumer()
{
    --mutex;
    --full;
    ++empty;
    printf("\nConsumer consumes item %d",x);
    sleep(2);
    x--;
    ++mutex;
}
  
int main()
{
    int n,ch,i,random;
    printf("\n1. Press 1 to Start"
           "\n2. Press Ctrl + Z to Exit At Any Point of The Program Execution"
           "\n");
    scanf("%d",&ch);
if(ch ==1){           
for (i = 1; i > 0; i++) 
    {
        n = (rand()%2)+1;
        if(n == 1)
           printf("\nProducer selected");
        else if (n == 2)   
           printf("\nConsumer selected");
        else
          printf("\nWrong Randomiser Input");
        switch (n) {
        case 1:
            if ((mutex == 1)&& (empty != 0))
                producer();
            else
                printf("\nBuffer is full!");
            break;
  
        case 2:
            if ((mutex == 1)&& (full != 0))
                consumer();  
            else
                printf("\nBuffer is empty!");
            break;
        default:
            printf("\nAbnormal Situation has been encountered");
     
}}}}

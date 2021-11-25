#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
int main()
{
  pid_t pid,cpid,ppid;
  char *message;
  int n;
  printf("fork program starting\n");
  pid = fork();
  switch(pid)
  {
    case -1:
      perror("unsuccessful");
      exit(1);
    case 0:
      message = "This is child";
      n = 7;
      cpid=pid;
      break;
    default:
      message = "This is the parent";
      n = 5;
      ppid=pid;
  }
  for(;n>0;n--)
  {
    printf("%d\t%d\t%d\t",(int)getpid(),n,pid);
    puts(message);
    sleep(1);
    if(n==1 && pid==cpid)
    {
      printf("Child exiting\n");
    }
    if(n==1 && pid==ppid)
    {
      
      printf("Parent exiting\n");
      system("ps -ax");
    }
  }
}

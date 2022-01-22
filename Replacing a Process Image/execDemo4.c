#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{
  char *const ls_argv[] ={"ls", "-l", 0};
  printf("Before handing over.\n");
  execvp("ls",ls_argv);
  printf("After handing over.\n");
  printf("Done");
}

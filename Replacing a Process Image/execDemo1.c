#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{
  char *const ps_argv[] ={"ps", "-ax", 0};
  printf("Before handing over.\n");
  execv("/bin/ps",ps_argv);
  printf("After handing over.\n");
  printf("Done");
}

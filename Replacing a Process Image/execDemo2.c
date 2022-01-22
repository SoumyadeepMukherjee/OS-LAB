#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{
  char *args[]={"./exec.out",NULL};
  printf("Before Handing Over.\n");
  execv(args[0],args);
  printf("After Handing Over.\n");
  printf("Done");
}

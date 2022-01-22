#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{
  char *args[]={"./example.out",0};
  printf("Before Handing Over.\n");
  printf("This is from example.c \n");
  execv(args[0],args);
  printf("After Handing Over.\n");
  printf("Done");
}

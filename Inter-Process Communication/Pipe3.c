#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

//Communication between child and parent
int main()
{
  int data_processed;
  int file_pipe[2];
  const char some_data[] = "We are using pipes.";
  char buffer[BUFSIZ + 1];
  pid_t fork_result;
  memset(buffer, '\0', sizeof(buffer));
  if (pipe(file_pipe) == 0) 
  {
    fork_result = fork();
    if (fork_result == -1) 
    {
      fprintf(stderr, "Fork failure");
      exit(EXIT_FAILURE);
    }
else if (fork_result == 0) //Child
    {
      //sleep(2);
      data_processed = read(file_pipe[0], buffer, BUFSIZ);
      printf("I am child.\nI have read %d bytes: %s\n", data_processed, buffer);
      exit(EXIT_SUCCESS);
    }
else //Parent
    {
      data_processed = write(file_pipe[1], some_data,
      strlen(some_data));
      printf("I am parent.\nI have written %d bytes\n", data_processed);
      //sleep(2);
    }
  }
  exit(EXIT_SUCCESS);
}

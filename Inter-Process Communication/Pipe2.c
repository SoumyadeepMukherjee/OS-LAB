#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

//Writing to external command
int main()
{
  FILE *write_fp;
  char buffer[BUFSIZ + 1];
  sprintf(buffer, "The quick brown fox jumped over the lazy dog.\n");
  write_fp = popen("cat > newfile1.txt", "w");
  if (write_fp != NULL) 
  {
    fwrite(buffer, sizeof(char), strlen(buffer), write_fp);
    pclose(write_fp);
    exit(EXIT_SUCCESS);
  }
  exit(EXIT_FAILURE);
}

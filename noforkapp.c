#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[])
{
  if(argc != 2) {
    fprintf(stderr, "Usage: %s <string>", argv[0]);
    exit(1);
  }

  char buffer[16];
  strcpy(buffer, argv[1]);
  printf("You entered: %s\n", buffer);

  return 0;
}




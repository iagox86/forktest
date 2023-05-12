#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>

int main(int argc, char *argv[])
{
  if(argc != 2) {
    fprintf(stderr, "Usage: %s <string>", argv[0]);
    exit(1);
  }

  // Fork into a second process, and get the id
  pid_t childid = fork();

  if(childid == 0) {
    // id of 0 = we're in child process
    char buffer[16];
    strcpy(buffer, argv[1]);
    printf("You entered: %s\n", buffer);
  } else {
    // id of non-zero = we're in parent process - wait for the child to finish
    waitpid(childid, NULL, 0);
  }
  return 0;
}




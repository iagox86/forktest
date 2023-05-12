#include <stdio.h>
#include <unistd.h>

pid_t fork(void) {
  printf("The process tried to fork!\n");
  return 0;
}

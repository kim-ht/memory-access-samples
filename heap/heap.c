#include <stdio.h>
#include <stdlib.h>

#define BUF_SIZE 32

int main(void) {
    int *a;
    char *buf;
    int i;

    puts("a = malloc(), buf = malloc()");
    a = (int *)malloc(sizeof(int));
    buf = (char *)malloc(sizeof(char) * BUF_SIZE);

    puts("assign 7 to a");
    *a = 7;

    puts("fill buf with 'A'");
    for (i = 0; i < BUF_SIZE - 1; i++) {
        buf[i] = 'A';
    }
    buf[BUF_SIZE] = '\0';

    free(a);
    free(buf);

    return 0;
}

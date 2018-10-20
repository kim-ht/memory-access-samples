#include <stdio.h>

#define BUF_SIZE 32

int a;
int *a_ptr;
char buf[BUF_SIZE];

int main(void) {
    int i;

    puts("assign 7 to a");
    a = 7;

    puts("assign 9 to a using point a_ptr");
    a_ptr = &a;
    *a_ptr = 9;

    puts("fill buf with 'A'");
    for (i = 0; i < BUF_SIZE - 1; i++) {
        buf[i] = 'A';
    }
    buf[BUF_SIZE] = '\0';

    return 0;
}

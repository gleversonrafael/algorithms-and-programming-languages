#include <stdio.h>

int main(void) {
    int array[50];
    int i = 0, n = 20;

    while(i <= n)
        array[i++] = 1;

    for(int e = 0; e <= n; e++)
        printf("%d ", array[e]);

    return 0;
}
#include <stdio.h>

int main(void) {
    int a[5], b[5];
    
    for(int x = 0; x < 5; x++) {
        a[x] = 0;
        b[x] = 1;
    }

    for(int i = 0; i < 5;)
        a[i] = b[i++];

    for(int d = 0; d < 5; d++)
        printf("%d", a[d]);

    return 0;
}
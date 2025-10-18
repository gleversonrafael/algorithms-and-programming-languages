#include <stdio.h>

int main(void) {
    int i = 1, times = 0;

    addI: 
    if(times < 3) {
        printf("(i) is currently %d\n", i);
        times++;
    }

    if(times < 3) goto addI;

    return 0;
}
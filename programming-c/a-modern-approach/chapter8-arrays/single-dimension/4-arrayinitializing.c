#include <stdio.h>
#define ARRAY_LENGTH 10

int main(void) {
    double arrayA[ARRAY_LENGTH] = {0};
    int arrayB[] = {[ARRAY_LENGTH - 3] = 1, 2, 3};

    for(int this = 0; this < ARRAY_LENGTH; this++) {
        printf("--------------------------------\n");
        printf("A %d\n", arrayA[this]);
        printf("B %d\n", arrayB[this]);
    }

    return 0;
}
#include <stdio.h>

int main(void) {
    int assignA, assignB, assignC;

    assignA = assignC = ( assignB = 1 );

    printf("Assignment");
    assignA += ( assignA += assignA );

    printf("Assignment A: %d", assignA);
}
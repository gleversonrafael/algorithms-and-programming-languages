#include <stdio.h>

int main(void) {
    long int integerA, integerB, greatestDivisor = 1;

    //E
    printf("Input two integers: ");
    scanf("%ld %ld", &integerA, &integerB);

    //P
    for(long int currentDivisor = 2; (currentDivisor <= integerA && currentDivisor <= integerB) && (integerA != 1 && integerB != 1); currentDivisor++) {
        while(integerA % currentDivisor == 0 || integerB % currentDivisor == 0) {
            if(integerA % currentDivisor == 0 && integerB % currentDivisor == 0)
                greatestDivisor *= currentDivisor;

            integerA = integerA % currentDivisor == 0 ? integerA / currentDivisor : integerA;
            integerB = integerB % currentDivisor == 0 ? integerB / currentDivisor : integerB;
        }
    }

    //O
    printf("Greatest common divisor: %ld", greatestDivisor);

    return 0;
}
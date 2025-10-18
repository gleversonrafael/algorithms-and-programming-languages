#include <stdio.h>

int main(void) {
    int integerA, integerB, reserved, greatestCommonDivisor;

    //E
    printf("Enter two integers: ");
    scanf("%d %d", &integerA, &integerB);
    
    //P
    if(integerA == 0 && integerB == 0) 
        greatestCommonDivisor = 0;

    else if(integerB == 0) 
        greatestCommonDivisor = integerA;

    else {
        do {        
            reserved = integerA % integerB;
            integerA = integerB;
            integerB = reserved;

        } while (integerB != 0);

        greatestCommonDivisor = integerA;
    }

    //O
    printf("Greatest common divisor: %d", greatestCommonDivisor);

    return 0;
}
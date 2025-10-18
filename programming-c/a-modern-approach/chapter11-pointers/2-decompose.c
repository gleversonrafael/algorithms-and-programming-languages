#include <stdio.h>
#include <stdlib.h>

void decompose(double number, int *intPart, float *floatPart);

int
main(void)
{
    double eulerNumber = 2.7182818284590452353;
    int integerPart; float floatPart;

    decompose(eulerNumber, &integerPart, &floatPart);

    printf("Int: %d, Float: %.20f", integerPart, floatPart);
    
    return 0;
}

void
decompose(double number, int *intPart, float *floatPart) 
{
    *intPart = (int)number;
    *floatPart = (float)(number - *intPart);
}
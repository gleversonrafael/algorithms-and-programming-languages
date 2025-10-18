#include <stdio.h>

#define LENGTH 10

void fillsWithOne(int *a, int *length);
void printArray(int array[], int *length);

int
main(void)
{
    int array[LENGTH] = {0}, len = LENGTH;

    fillsWithOne(array, &array[len - 1]);
    printArray(array, &array[len - 1]);

    return 0;
}

void
fillsWithOne(int *a, int *length)
{
    int *b = a;
    
    for(; b < length; b++) 
    {
        *b = 1;
    }

}

void 
printArray(int array[], int *length)
{
    for(int *pointer = array; pointer < length; pointer++)
        printf("|%d|\t", *pointer);   
}
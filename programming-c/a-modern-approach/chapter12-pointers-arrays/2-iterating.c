#include <stdio.h>
#include <stdlib.h>

void printArray(int array[], int *length);

int
main(void)
{
    int array[5] = {0, 1, 2, 3, 4};

    printArray(array, &array[5]);
    exit(EXIT_SUCCESS);
}

void 
printArray(int array[], int *length)
{
    int *pointer = &array[0];

    for(; pointer < length; pointer++)
        printf("|%d|\t", *pointer);   
}
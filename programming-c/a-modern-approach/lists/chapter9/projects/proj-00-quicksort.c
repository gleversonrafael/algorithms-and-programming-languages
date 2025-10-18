#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define ARRAY_LENGTH 4

void sortWithQuicksort(double array[], unsigned short low, unsigned short high, bool leftPartition, bool rightPartition);
void outputArray(double array[]);

int 
main(void)
{
    double mainArray[ARRAY_LENGTH] = {0};

    //E
    printf("Enter %d numbers to be sorted: ", ARRAY_LENGTH);

    for(int current = 0; current < ARRAY_LENGTH; current++) 
        scanf("%lf", &mainArray[current])
    ;

    //P
    sortWithQuicksort(mainArray, 0, ARRAY_LENGTH - 1, true, true);
    
    //S
    outputArray(mainArray);

    exit(EXIT_SUCCESS);
}

void
sortWithQuicksort(double array[], unsigned short low, unsigned short high, bool leftPartition, bool rightPartition)
{
    unsigned short hole = low, middle;
    double outside = array[low];
    
    for(;;)
    {
        while(array[high] >= outside && low < high) 
            high--;

        if(low >= high) break;
        
        array[hole] = array[high];
        low++;
        hole = high;
        
        while(array[low] < outside && low < high) 
            low++;

        if(low >= high) break;

        array[hole] = array[low];
        high--;
        hole = low;
    }

    middle = low;
    array[middle] = outside;

    if(leftPartition && middle - 1 > 0) 
        sortWithQuicksort(array, 0, middle - 1, true, false);
        
    if(rightPartition && middle + 1 < ARRAY_LENGTH)
        sortWithQuicksort(array, middle + 1, ARRAY_LENGTH - 1, false, true);
}


void outputArray(double array[])
{
    printf("In sorted order: \n");

    for(int this = 0; this < ARRAY_LENGTH; this++)
        printf("|%.0lf|  ", array[this]);
    ;

    printf("\n");
}
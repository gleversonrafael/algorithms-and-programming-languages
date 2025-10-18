#include <stdio.h>
#include <stdlib.h>

#define ELEMENTS 10

void max_min(int [], int, int *, int *);

int
main(void)
{
    int teste[ELEMENTS] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int n = ELEMENTS, small, big;

    max_min(teste, n, &small, &big);

    printf("Lightest: %d \nGreatest: %d", small, big);

    return 0;
}

void 
max_min(int array[], int elements, int *min, int *max)
{
    *min = *max = array[0];

    for(int i = 0; i < elements; i++) {
        if(array[i] < *min) 
            *min = array[i];

        if(array[i] > *max)
            *max = array[i];
    }

}
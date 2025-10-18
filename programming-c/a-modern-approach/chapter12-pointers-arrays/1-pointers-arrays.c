#include <stdio.h>

int
main(void) 
{
    int arrayA[5] = {0, 1, 2, 3, 4}, 
        arrayB[5] = {5, 6, 7, 8, 9}
    ;

    int *p = &arrayA[2];
    int *q = &arrayA[4];

    printf("%d", *q/ *p);    

    return 0;
}
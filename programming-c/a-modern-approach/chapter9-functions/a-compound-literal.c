#include <stdio.h>
#include <stdlib.h>

void printFirstElement(int array[]);

int
main(void)
{
    printFirstElement((int []){5*4*2, 2, 3, 4});
}


void 
printFirstElement(int array[])
{
    printf("%d", array[0]);
    exit(EXIT_FAILURE);

    printf("Test");
}
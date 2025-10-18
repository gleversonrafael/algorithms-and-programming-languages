#include <stdio.h>
#include <stdlib.h>


int 
main(void)
{
    long double *pointer;
    long double a = 0;
    
    pointer = &a;

    printf("%LF", *pointer);

    exit(EXIT_SUCCESS);
}
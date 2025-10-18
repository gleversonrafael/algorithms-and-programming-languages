#include <stdio.h>
#include <stdlib.h>

int 
printPun() 
{
    static int CW = 0;

    if(CW == 0) 
        CW = 1;
    
    else 
        CW = 2; 

    printf("To %d or not to %d. That is the question. \n", CW, CW);
}

int 
main(void)
{
    for(int i = 0; i < 5; i++)
        printPun();

    exit(EXIT_SUCCESS);
}
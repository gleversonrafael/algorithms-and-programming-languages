#include <stdio.h>

int
main(void)
{
    int a[5][5] = {0};

    for(int *p = &a[1][0]; p < &a[1][5]; p++)
    {
        *p = 5;
    }
    

    return 0;
}
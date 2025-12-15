#include <iostream>

void popcorn(int a);
void popcorn(char a); 
void popcorn(double a); 

int
main()
{
    popcorn('A');
    popcorn(2);
    popcorn(52.12305);

    return 0;
}

void 
popcorn(int a)
{
    printf("Real popcorn\n");
}

void 
popcorn(char a)
{
    printf("Maybe a popcorn\n");
}

void 
popcorn(double a)
{
    printf("False popcorn\n");
}

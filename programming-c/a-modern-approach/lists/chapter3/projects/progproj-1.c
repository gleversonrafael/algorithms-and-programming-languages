#include <stdio.h>

int main(void) 
{
    int day, month, year;

    // mm/dd/yyyy
    // yyyy/mm/dd
    printf("Enter a date (mm/dd/yy)");
    scanf("%i/%i/%4i", &month, &day, &year);

    printf("You entered the date %i/%i/%i", year, month, day);

    return 0;
}
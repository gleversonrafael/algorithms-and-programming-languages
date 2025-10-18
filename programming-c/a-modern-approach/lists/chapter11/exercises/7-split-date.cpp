#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void split_date(int day_of_year, int year, int *month, int *day);

int 
main(void) 
{
    int dayOfYear, year, month, day;

    printf("Day of the year: ");
    scanf("%d", &dayOfYear);

    printf("Year: ");
    scanf("%d", &year);

    split_date(dayOfYear, year, &month, &day);

    printf("[EN] Date: %d/%d/%d \n[PT-BR] Date: %d/%d/%d", month, day, year, day, month, year);

    return 0;
}

void
split_date(int day_of_year, int year, int *month, int *day)
{
    bool found = false;
    int thisMonth;

    for(thisMonth = 1; thisMonth <= 12; thisMonth++)
    {
        // obtain month
        switch(thisMonth)
        {
            case 1: case 3: case 5: case 7: case 8: case 10: case 12:
                day_of_year > 31 ? day_of_year -= 31 : found = true;
                break;
            ;

            case 2:
                if(year % 4 == 0) 
                    day_of_year > 29 ? day_of_year -= 29 : found = true;
                else
                    day_of_year > 28 ? day_of_year -= 28 : found = true;

                break
            ;

            case 4: case 6: case 9: case 11:
                day_of_year > 30 ? day_of_year -= 30 : found = true;
                break
            ;

            default:
                thisMonth = day_of_year = 0;
                found = true;
        }

        if(found)
            break;
    }
    
    if(
        found && 
        day_of_year != 0 && 
        thisMonth != 0
    ) 
    {
        *day = day_of_year;
        *month = thisMonth;
    }
}
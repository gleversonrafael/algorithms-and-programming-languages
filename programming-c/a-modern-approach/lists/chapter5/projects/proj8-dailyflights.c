#include <stdio.h>

#include <string.h>
#include <stdlib.h>

int main(void) {
    int userHour, userTime;
    /* if user minutes is an int, scanf doesn't read any value for this variable; */
    double userMinutes;
    char userPeriod[3];

    printf("Departure time \t Arrival time \n");
    printf("8:00 a.m  \t10.16 a.m \n%s%s%s%s%s%s%s", /* DT (departure time): 480*/
           "9:43 a.m  \t11:52 a.m \n",  /* DT: 583                 */
           "11:19 a.m \t1:31 p.m \n",   /* DT: 679                 */
           "12:47 p.m.\t3:00 p.m. \n",  /* DT: 47 + 12*60   = 767  */
           "2:00 p.m. \t4:08 p.m. \n",  /* DT: 120 + 12*60  = 840  */
           "3:45 p.m. \t5:55 p.m. \n",  /* DT: 225 + 12*60  = 945  */
           "7:00 p.m. \t9:20 p.m. \n",  /* DT: 420 + 12*60  = 1140 */
           "9:45 p.m. \t11:58 p.m. \n"  /* DT: 585 + 12*60  = 1305 */
    );

    for(char leaveState; leaveState != 'S';) {
        /* Entry */
        printf("\nEnter a time plus a.m or p.m (xx:yy p.m/a.m) ");
        scanf("%d : %lf %s", &userHour, &userMinutes, &userPeriod);
        printf("Selected hour: %d:%lf %s\n", userHour, userMinutes, userPeriod);

        /* Process */
        // strcmp --> compares strings and returns 0 if they are equal.
        userTime += !strcmp(userPeriod, "p.m") ? 12*60 : 0; //user inserted a hour in pm form?

        userHour = userHour == 12 ? 0 : userHour;
        userTime += userHour*60 + userMinutes;
        
        printf("Closest departure time is ");

        if(abs(userTime - 480) < abs(userTime - 583)) {
            printf("8:00 a.m., arriving at 10:16 a.m.");

        } else if(abs(userTime - 583) < abs(userTime - 679)) {
            printf("9:43 a.m., arriving at 11:52 a.m.");

        } else if(abs(userTime - 679) < abs(userTime - 767)) {
            printf("11:19 a.m., arriving at 1:31 p.m.");
            
        } else if(abs(userTime - 767) < abs(userTime - 840)) {
            printf("12:47 p.m., arriving at 3:00 p.m.");

            
        } else if(abs(userTime - 840) < abs(userTime - 945)) {
            printf("2:00 p.m., arriving at 4:00 p.m.");

            
        } else if(abs(userTime - 945) < abs(userTime - 1140)) {
            printf("3:45 p.m., arriving at 5:55 p.m.");


        } else if(abs(userTime - 1140) < abs(userTime - 1305)) {
            printf("7:00 p.m., arriving at 9:20 p.m.");
            
        } else {
            printf("9:45 p.m., arriving at 11:58 p.m.");
        }

        userTime = 0;

        printf("\n-----------------------------------------------------\n");
        printf("Leave? [S / N]: ");
        scanf(" %c", &leaveState);
        
        // FIX MINUTES
    }
}
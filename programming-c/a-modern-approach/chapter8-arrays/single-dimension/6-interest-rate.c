#include <stdio.h>

#define VALUES_LENGTH (int)(sizeof(values) / sizeof(values[0]))

int main(void) {
    long double values[5] = {100, 100, 100, 100, 100};
    int interest_rate, years;

    //E
    printf("Enter interest rate: ");
    scanf("%d", &interest_rate);

    printf("Enter number of years: ");
    scanf("%d", &years);

    // P + O
    // printed % = %%
    printf("\nYears\t\t %d%% \t %d%% \t %d%% \t %d%% \t %d%% \n",  
        interest_rate, interest_rate + 1, interest_rate + 2, interest_rate + 3, interest_rate + 4);
       
    for(int year = 1; year <= years; year++) {
        printf("%d\t", year);

        for(int index = 0; index < VALUES_LENGTH; index++) {
            // this value = old value * n/100;
            values[index] += values[index]*(interest_rate + index)/100;
            printf("\t %.2f", values[index]);
        }

        printf("\n");
    }

    return 0;
}
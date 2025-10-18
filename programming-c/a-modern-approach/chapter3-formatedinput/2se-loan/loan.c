#include <stdio.h>

/* */
int main(void) 
{
    float initial_loan, interest_rate, monthly_payment, balance;

    /* first data*/
    printf("Enter amount of loan:");
    scanf("%f", &initial_loan);

    printf("Enter interest rate:");
    scanf("%f", &interest_rate);

    printf("Enter monthly payment:");
    scanf("%f", &monthly_payment);

    balance = initial_loan - monthly_payment + ( initial_loan *(interest_rate/100)/12 ); // interest_rate/100/12 = monthly interest rate (juros mensais)
    printf("Balance remaining after first payment: $%.2f \n", balance);

    balance = balance - monthly_payment + ( initial_loan *(interest_rate/100)/12 );
    printf("Balance remaining after second payment: $%.2f \n", balance);

    balance = balance - monthly_payment + ( initial_loan *(interest_rate/100)/12 );
    printf("Balance remaining after third payment: $%.2f \n", balance);

    return 0;
}

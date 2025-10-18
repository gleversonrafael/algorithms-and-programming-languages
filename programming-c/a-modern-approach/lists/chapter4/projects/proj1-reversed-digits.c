#include <stdio.h>

int main(void) {
    int number, result, lastDigit;

    /* entry */
    printf("Enter a number:");
    scanf("%d", &number);

    /* process */
    lastDigit = number % 10;

    if(number >= 10 && number < 100) {
        result = lastDigit*10 + ( (number - lastDigit) / 10 );
    
    } else if(number >= 100) {
        int middleDigit = (number % 100 - lastDigit) / 10;
        result = lastDigit*100 + middleDigit*10 + (number -  number % 100) / 100;
    }

    /* output */
    printf("Reversal: %d", result);

    return 0;
}
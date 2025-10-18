#include <stdio.h> 

int main(void) {
    int number, digits = 0;

    printf("Enter a number: ");
    scanf("%d", &number);

    do {
        number /= 10;
        //digits += 1;
        digits++;

    } while(number != 0);

    printf("Number of digits: %d", digits);

    return 0;
}
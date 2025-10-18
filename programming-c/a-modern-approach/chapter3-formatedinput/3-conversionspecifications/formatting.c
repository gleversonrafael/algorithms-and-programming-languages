#include <stdio.h>


int main(void) {
    int digit = 123;
    float floatingNumber = 8397877777777777.219999999999f;

    printf("Digit: |%d|%10d|%-10.10d| \n", digit, digit, digit);
    printf("Floating: |%7.1f|%e|%g\n", floatingNumber, floatingNumber, floatingNumber);

    return 0;
}
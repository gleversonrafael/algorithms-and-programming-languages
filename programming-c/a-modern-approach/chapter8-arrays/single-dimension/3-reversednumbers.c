#include <stdio.h>

int main(void) {
    // int array[n] -> n = length
    double numbers[10];
    int i;

    printf("Enter 10 numbers: ");

    for(i = 0; i < 10; i++)
        scanf(" %lf", &numbers[i]);

    for(i = 9; i >= 0; i--)
        printf("%.0lf ", numbers[i]);

    return 0;
}
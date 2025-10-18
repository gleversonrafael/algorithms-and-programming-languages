#include <stdio.h>

int main(void) {
    int sum = 0, number = 1;

    printf("Enter integers (0 = finish): ");
    
    while(number != 0) {
        scanf("%d", &number);
        sum += number;
    }

    printf("Sum: %d", sum);

    return 0;
}
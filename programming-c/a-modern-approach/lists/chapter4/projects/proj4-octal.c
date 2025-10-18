#include <stdio.h>
#include <math.h>

int main(void) {
    int selectedNumber, howManyDigits;
    int response = 0;

    printf("Enter a number between 0 and 36767:");
    scanf("%d", &selectedNumber);

    howManyDigits = 1 + floor(log10(selectedNumber));

    for(int current = 1, lastNumber = selectedNumber; current < howManyDigits; current++) {
        if(lastNumber / 8 >= 8) {
            response += (lastNumber % 8)*pow(10, current-1);
            lastNumber /= 8;

        } else {
            response += (lastNumber % 8)*pow(10, current-1);
            response += (lastNumber / 8)*pow(10, current);
        }

        printf("Current: %d, Last: %d \n", current, lastNumber);
    }

    printf("Result: %.5d", response);
}
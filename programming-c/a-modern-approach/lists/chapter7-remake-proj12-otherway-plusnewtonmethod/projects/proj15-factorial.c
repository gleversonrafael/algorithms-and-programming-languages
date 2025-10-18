#include <stdio.h>

double obtainFactorial(int number) {
    double numberFactorial = 1;

    for(; number > 0; number--)
        numberFactorial *= number;

    return numberFactorial;
}


int main(void) {
    int selectedValue;
    double output;

    for(int leaveState = 0; leaveState != 1;) {
        printf("Enter positive integer: ");
        scanf("%d", &selectedValue);

        output = obtainFactorial(selectedValue);        
        printf("Factorial of %d: %Lg\n", selectedValue, output);
        
        printf("Leave? [0/1]: ");
        scanf("%d", &leaveState);
        printf("---------------------------------------------------------\n\n\n");
    }

    return 0;
}


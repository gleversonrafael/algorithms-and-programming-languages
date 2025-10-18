#include <stdio.h>

// * = pointer
double updateResult(char operation, double number, double result) {
    switch(operation) {
        case '+':
            result += number; 
            break;

        case '-':
            result -= number; 
            break;

        case '*':
            result *= number; 
            break;

        case '/':
            result /= number; 
            break;

        default: break;
    }

    return result;
}

int main() {
    char nextOperation, currentOperation;
    double result = 0, lastNumber, currentNumber;

    printf("Enter an expression: ");
    scanf("%lf%c", &result, &currentOperation);

    while(currentOperation != '\n') {
        scanf("%lf%c", &currentNumber, &nextOperation);
        result = updateResult(currentOperation, currentNumber, result);
    
        currentOperation = nextOperation;
    }

    printf("Result of the expression: %lf", result);

    return 0;
}

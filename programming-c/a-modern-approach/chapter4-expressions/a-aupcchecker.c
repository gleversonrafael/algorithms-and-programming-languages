#include <stdio.h>

int main(void) {
    int firstDigit, checkDigit, correctDigitChecked;
    int groupA1, groupA2, groupA3, groupA4, groupA5;
    int groupB1, groupB2, groupB3, groupB4, groupB5;

    printf("First digit: ");
    scanf("%1d", &firstDigit);

    /// E
    // digit groups
    printf("First digit group of five: ");
    scanf("%1d%1d%1d%1d%1d", &groupA1, &groupA2, &groupA3, &groupA4, &groupA5);

    printf("Second digit group of five: ");
    scanf("%1d%1d%1d%1d%1d", &groupB1, &groupB2, &groupB3, &groupB4, &groupB5);

    printf("Digit checker (100 for none): ");
    scanf("%1d", &checkDigit);


    /// P
    // (1 + 3 + 5 + 7 + 9 + 11)n
    correctDigitChecked = (firstDigit + groupA2 + groupA4 + groupB1 + groupB3 + groupB5)*3;
    correctDigitChecked =  correctDigitChecked + (groupA1 + groupA3 + groupA5 + groupB2 + groupB4);
    correctDigitChecked = correctDigitChecked - 1;
    correctDigitChecked = correctDigitChecked % 10;
    correctDigitChecked = 9 - correctDigitChecked;

    /// S
    // digit checker
    if(checkDigit == correctDigitChecked) {
        printf("This product exists.");
    
    } else {
        printf("The correct digit checker for a existing product with this patterns is %1d", correctDigitChecked);
    }

    return 0;
}
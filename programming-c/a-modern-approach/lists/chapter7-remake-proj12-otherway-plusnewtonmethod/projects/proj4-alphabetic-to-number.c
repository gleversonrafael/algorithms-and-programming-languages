#include <stdio.h>

int main(void) {
    char character, printedCharacter;
    printf("Enter phone number: ");

    while((character = getchar()) != '\n') {
        if(character >= 65) {
            //ABC
            if(character <= 67) 
                printedCharacter = '2';

            //DEF
            else if(character <= 70)
                printedCharacter = '3';

            //GHI
            else if(character <= 73)
                printedCharacter = '4';
                
            //JKL
            else if(character <= 76)
                printedCharacter = '5';

            //MNO
            else if(character <= 79)
                printedCharacter = '6';

            //PRS
            else if(character == 'P' || character == 'R' || character == 'S')
                printedCharacter = '7';

            //TUV
            else if(character >= 84 && character <= 86)
                printedCharacter = '8';

            //WXY
            else if(character >= 87 && character <= 89)
                printedCharacter = '9';

        } else {
            printedCharacter = character;
        }

        putchar(printedCharacter);
    }

    return 0;
}
#include <stdio.h>
#include <ctype.h>

void main(void) {
    char currentCharacter;

    while(currentCharacter != '\n') {
        printf("char: ");
        scanf(" %c", &currentCharacter);

        if(currentCharacter != '\n')
            printf("Character hasn't been selected (%c)\n", currentCharacter);
    }
}
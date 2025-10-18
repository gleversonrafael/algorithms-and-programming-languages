#include <stdio.h>
#include <ctype.h>

int main(void) {
    int vowels = 0;

    printf("Sentence: ");

    for(char character; (character = getchar()) != '\n';) {
        if(character != toupper(character)) 
            character = toupper(character); 

        if(character == 'A' || character == 'E' || character == 'I' || character == 'O' || character == 'U') 
            vowels++;

        /*  Method A
        if(character >= 'a' && character <= 'z') character = character - 32    
        ;*/
    }

    printf("Number of vowels: %d", vowels);

    return 0;
}
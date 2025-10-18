#include <stdio.h>
#include <ctype.h>

int main(void) {
    char character;
    unsigned int letters_seen[26] = {0}, zerosCount = 0;

    printf("Enter first word: ");
    
    for(; character != '\n'; character = toupper(getchar())) {
        if(isalpha(character))
            letters_seen[character]++;
    }

    printf("Enter second word: ");
    for(; character != '\n'; character = toupper(getchar())) {
        // ordenates character using the letters_seen's ordering pattern (A = 0, B = 1..., Z = 26)
        character = character - 'A';

        if(character >= 0 && character <= 26) 
            letters_seen[character]--;
    }

    for(int elementIndex = 0; elementIndex < sizeof(letters_seen) / sizeof(letters_seen[0]); elementIndex++)
        if(letters_seen[elementIndex] == 0) 
            zerosCount++;


    printf("\nThe words are %s %s", zerosCount == 26? "" : "not" ,"anagrams.");
    

    return 0;
}
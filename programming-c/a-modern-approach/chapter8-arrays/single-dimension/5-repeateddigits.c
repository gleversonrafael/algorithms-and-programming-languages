#include <stdbool.h> // true / false
#include <stdio.h>

int main(void) {
    _Bool repeatedDigit = false; // bool
    bool digit_seen[10] = {false};

    printf("Enter a number: ");

    //E + P
    for(char selectedDigit; selectedDigit != '\n'; selectedDigit = getchar()) {    
        if(digit_seen[(int)selectedDigit] == true) {
            repeatedDigit = true;

        } else 
            digit_seen[(int)selectedDigit] = true;
    }
    
    //O
    if(repeatedDigit)
        printf("Repeated digit!");

    else
        printf("No repeated digit!");

    return 0;
}
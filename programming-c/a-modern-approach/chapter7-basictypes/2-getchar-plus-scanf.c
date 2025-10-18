#include <stdio.h>

void main() {
    char value;

    printf("Character: ");
    scanf("%c", &value);
    
    value = getchar();

    printf("Result: %c", value);
}
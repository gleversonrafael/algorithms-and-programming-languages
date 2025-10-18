#include <stdio.h>

int main(void) {
    int number;
    
    printf("Insert a number:");
    scanf("%d", &number);

    printf("Result: %d%d%d%d%d",
       (number / 4096)%8,
       (number / 512) %8,
       (number / 64)  %8,
       (number / 8)   %8,
       number % 8
    );
}
#include <stdio.h>

int main(void) {
    int length = -1;


    printf("Message: ");
    
    for(char character; character != '\n'; character = getchar(), length++)
        if(length > 125) {
            printf("This message is too long to be read.\n");
            break;
        }
    ;

    printf("Length: %d characters.", length);

    
    return 0;
}
#include <stdio.h>

int main(void) {
    int m[3][2] = { 
        [0][1] = 5, [1][1] = 5
    };

    for(int line = 0; line < 3; line++) 
        for(int column = 0; column < 2; column++)
            printf("%d", m[line][column]);
}
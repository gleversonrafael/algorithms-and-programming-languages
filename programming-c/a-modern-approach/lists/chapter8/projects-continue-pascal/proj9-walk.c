#include <stdio.h>
#include <stdlib.h> /* srand + rand */
#include <stdbool.h>
#include <time.h>

#define TABLE_LENGTH 10
#define NUM_POSITIONS 4

int main(void) {
    char table[TABLE_LENGTH][TABLE_LENGTH];
    int lastLine, lastColumn, nextPosition;

    // (a) fill table / reject length
    if(TABLE_LENGTH*TABLE_LENGTH < 26) {
        return 0;

    } else {
        for(int lIndex = 0; lIndex < TABLE_LENGTH; lIndex++) 
            for(int cIndex = 0; cIndex < TABLE_LENGTH; cIndex++)
                table[lIndex][cIndex] = '.'
            ;
        ;
    }

    // (b) inserts A in random coordinates
    srand((unsigned) time(NULL)); // random seed -> makes every rand call different each time the program is compiled.

    lastLine = rand() % 10;
    lastColumn = rand() % 10;
    table[lastLine][lastColumn] = 'A';
    
    for(char currentLetter = 'B'; currentLetter <= 'Z'; currentLetter++) {
        // up arrow, right arrow, down arrow, left arrow
        int positions[NUM_POSITIONS][2] = {{lastLine - 1, lastColumn}, {lastLine, lastColumn + 1}, {lastLine + 1, lastColumn}, {lastLine, lastColumn - 1}},
            blocked_positions[NUM_POSITIONS] = {false},
            attempts = 0
        ;
        
        // (c) obtain next position
        while(attempts < NUM_POSITIONS) {
            nextPosition = rand() % 4;
        
            if(blocked_positions[nextPosition] == false) {
                //checks if it goes outside the array + if its possible to insert the element in the corresponding space
                if(positions[nextPosition][1] >= 0 && positions[nextPosition][1] < 10 && table[positions[nextPosition][0]] [positions[nextPosition][1]] == '.')
                    break;
                
                else {
                    blocked_positions[nextPosition] = true;
                    attempts++;   
                };
            }
        }

        // (d) insert into next position
        if(attempts != 4) {
            lastLine = positions[nextPosition][0];
            lastColumn = positions[nextPosition][1];

            table[lastLine][lastColumn] = currentLetter;
        
        } else 
            break;
    }

    // (e) Output
    for(int lIndex = 0; lIndex < TABLE_LENGTH; lIndex++) {
        for(int cIndex = 0; cIndex < TABLE_LENGTH; cIndex++) {
            printf("%c\t", table[lIndex][cIndex]);
        }

        printf("\n");
    }
        
    return 0;
}
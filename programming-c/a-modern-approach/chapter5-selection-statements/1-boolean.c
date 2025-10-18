#include <stdio.h>
#include <stdbool.h>
#define BOOLEAN int

int main(void) {
    BOOLEAN c89Condition = 1;
    _Bool c99ConditionA = 0;
    bool c99ConditionB = true;

    printf("C89: %d \n", c89Condition ? 100 : 50);
    printf("C99 - A: %d, B: %d, C: %d", c99ConditionA, c99ConditionB, false);
    
    return false;
}
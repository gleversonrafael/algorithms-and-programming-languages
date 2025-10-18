#include <stdio.h>

int main(void) {
    int entries;

    printf("This program prints a series of squares.\nEnter number of entries in the table: ");
    scanf("%d", &entries);

    for(int times = 1; times <= entries; times++)
        printf("\t%d \t%d\n", times, times*times);

    return 0;
}
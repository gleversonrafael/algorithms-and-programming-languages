#include <stdio.h>

int main(void) {
    float value;
    int response;

    printf("Float value: ");
    scanf("%f", &value);

    response = value + ((int)value - (float)value);
    printf("Integer part: %d", response);

    return 0;
}
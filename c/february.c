#include <stdio.h>
int main() {
    char February;
    int days;
    printf("If the current year is a leap year, you have to enter the value of 1. Otherwise, enter any other integer value.");
    scanf("%c", &February);

    // Test for (February == '1') using this syntax = (evaluation) ? value : value;
    days = (February == '1') ? 29 : 28;
    printf("The number of days in February this year is %d days", days);

    return 0;
}

#include <stdio.h>

void main()
{
    int year, a, b, c;
    printf("Input a number of year:");
    scanf("%d", &year);
    a = year % 4;
    b = year % 100;
    c = year % 400;
    if(0==a && 0!=b || 0==c)
    {
        printf("Yes\n");
    }
    else
    {
        printf("No\n");
    }
}

#include <stdio.h>

void main()
{
    int n;
    printf("Input a string:");
    while(getchar() != '\n')
    {
        n++;
    }
    printf("Total=%d\n", n);
}

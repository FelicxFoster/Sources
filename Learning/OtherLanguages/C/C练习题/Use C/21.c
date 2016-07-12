#include <stdio.h>

void main()
{
    int x=1, day=9;

    while(day-- > 0)
    {
        x = (x+1) * 2;
    }
    printf("Total = %d", x);
}

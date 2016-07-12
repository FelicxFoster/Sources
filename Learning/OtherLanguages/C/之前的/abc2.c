#include <stdio.h>

void main()
{
    int a, b, c, min, max;
    printf("Input 3 integer number: ");
    scanf("%d%d%d", &a, &b, &c);
    if(a>b)
    {
        max = a;
        min = b;
    }
    else
    {
        max = b;
        min = a;
    }
    if(c > max)
    {
        max = c;
    }
    else if(c < min)
    {
        min = c;
    }
    printf("max=%d\tmin=%d\n", max, min);
}

#include <stdio.h>

int fab(int n)
{
    if(1 == n || 2 == n)
    {
        return 1;
    }
    else
    {
        return fab(n-1) + fab(n-2);
    }
}

void main()
{
    int i;
    for(i=1; i<=20; i++)
    {
        printf("%d\n", fab(i));
    }
}

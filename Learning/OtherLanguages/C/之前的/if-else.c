#include <stdio.h>

void main()
{
    int a, b;
    printf("Input two numbers:\n");
    scanf("%d%d", &a, &b);
    if(a>b)
    {
        printf("max=%d", a);
    }
    else
    {
        printf("max=%d",b);
    }
}

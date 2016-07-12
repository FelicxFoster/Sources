#include <stdio.h>

void palin(int n)
{
    char next;
    if(n<=1)
    {
        printf("To: ");
        next = getchar();
        putchar(next);
    }
    else
    {
        next = getchar();
        palin(n-1);       //µÝ¹é·½·¨
        putchar(next);
    }
}

void main()
{
    int i=5;

    printf("From: ");
    palin(i);
}

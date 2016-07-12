#include <stdio.h>

void func()
{
    int a=0;
    static int b=0;
    printf("a=%d \nb=%d\n", a, b);
    a++;
    b++;
}

void main()
{
    int i;

    for(i=0; i<5; i++)
    {
        func();
        printf("\n");
    }
}

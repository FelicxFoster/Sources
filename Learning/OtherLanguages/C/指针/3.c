#include <stdio.h>

void main()
{
    int a=3, b=5;
    int *p1, *p2;
    p1 = &a;
    p2 = &b;

    printf("a=%d, b=%d\n" , a, b);
    printf("a=%d, b=%d\n", *p1, *p2);
}

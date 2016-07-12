#include <stdio.h>

void main()
{
    int a, b;
    int *p, *p1, *p2;
    printf("Input two integer number:");
    scanf("%d%d", &a, &b);
    p1 = &a;
    p2 = &b;
    if(a<b)
    {
        p = p1;
        p1 = p2;
        p2 = p;
    }
    printf("%d %d", *p1, *p2);
}

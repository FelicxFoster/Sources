#include <stdio.h>

void main()
{
    int a, b;
    int *p1, *p2;
    p1 = &a;
    p2 = &b;
    printf("Input two integer number:");
    scanf("%d%d", p1, p2);
    printf("%d ", a>b?a:b);
    printf("%d ", a<b?a:b);
}

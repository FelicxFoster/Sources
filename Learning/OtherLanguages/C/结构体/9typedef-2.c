#include <stdio.h>

typedef int (*POINTER)();

int max(int x, int y)
{
    return x>y ? x : y;
}

void main()
{
    POINTER p;
    int a;

    p = max;

    a = p(2, 3);

    printf("max = %d\n", a);
}

#include <stdio.h>

void main()
{
    int a, b;

    a = 77;
    b = a & 3;
    printf("%d\n", b);
    b &= 7;
    printf("%d\n", b);

    a = 77;
    b = a | 3;
    printf("%d\n", b);
    b |= 7;
    printf("%d\n", b);

    a = 77;
    b = a ^ 3;
    printf("%d\n", b);
    b ^= 7;
    printf("%d\n", b);
}

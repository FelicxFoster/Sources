#include <stdio.h>

int main()
{
    int square(int x);
    int factorial(int y);
    int a, b, s;
    a = square(2);
    b = square(3);
    s = factorial(a) + factorial(b);
    printf("s=%d\n", s);
}

int square(int x)
{
    return x*x;
}

int factorial(int y)
{
    int i, z=1;
    for(i=y; i>=1; i--)
        z *= i;
    return z;
}

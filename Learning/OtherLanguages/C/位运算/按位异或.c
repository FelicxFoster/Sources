#include <stdio.h>

void main()
{
    int a=3, b=4;

    a = a ^ b;
    b = a ^ b;  // b = (a^b) ^ b == a
    a = a ^ b;  // a = (a^b) ^ (a) == b


    printf("a=%d\nb=%d\n", a, b);
}

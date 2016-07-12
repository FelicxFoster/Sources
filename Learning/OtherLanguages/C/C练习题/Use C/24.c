#include <stdio.h>

void main()
{
    int i;
    float a, b, temp, sum=0;
    a = 2;
    b = 1;

    for(i=0; i<20; i++)
    {
        printf("%.0f / %.0f\n", a, b);
        sum += a / b;
        temp = a;   //temp ±ØÐëµÃÓÐ
        a = a + b;
        b = temp;

    }
    printf("%f\n", sum);
}

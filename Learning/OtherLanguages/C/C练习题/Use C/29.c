#include <stdio.h>

void main()
{
    int n, a, b, c, d, e;

    printf("Please input a number(0-99999):");
    scanf("%d", &n);

    a = (n % 100000) / 10000;
    b = (n % 10000) / 1000;
    c = (n % 1000) / 100;
    d = (n % 100) / 10;
    e = (n %10)  / 1;

    if(a != 0)
    {
        printf("There are 5 digits \nreverse:%d%d%d%d%d", e, d, c, b, a);
    }
    else if(b != 0)
    {
        printf("There are 4 digits \nreverse:%d%d%d%d", e, d, c, b);
    }
    else if(c != 0)
    {
        printf("There are 3 digits \nreverse:%d%d%d", e, d, c);
    }
    else if(d != 0)
    {
        printf("There are 2 digits \nreverse:%d%d", e, d);
    }
    else
    {
        printf("There are 1 digit \nreverse:%d", e);
    }

    printf("\n");
}

#include <stdio.h>

long square(int x);
long factorial(int y);

void main()
{
    int i, s=0;
    for(i=2; i<=3; i++)
        s += factorial(i);
    printf("%ld", s);
}

long factorial(int y)
{
    //long square(int);
    int i, z, p=1;
    z = square(y);  //Ç¶Ì×µ÷ÓÃ
    for(i=z; i>1; i--)
        p *= i;
    return p;
}

long square(int x)
{
    return x * x ;
}

#include <stdio.h>

int fac(int n)
{
    register int i, f=1;  //�洢�ڼĴ����� ����ٶ�
    for(i=n; i>1; i--)
    {
        f *= i;
    }
    return f;
}

void main()
{
    int i;
    for(i=0; i<15000; i++)
    {register
        printf("%d! = %d\n", i, fac(i));
    }
}

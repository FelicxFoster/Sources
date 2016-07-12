#include <stdio.h>

int fac(int n)
{
    static int f = 1;  //局部静态变量
    f *= n;
    return f;
}

void main()
{
    int i;
    for(i=1; i<=5; i++)   //打印1-5的阶乘
    {
        printf("%d! = %d\n", i,fac(i));
    }
}

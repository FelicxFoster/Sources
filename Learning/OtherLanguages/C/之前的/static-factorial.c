#include <stdio.h>

int fac(int n)
{
    static int f = 1;  //�ֲ���̬����
    f *= n;
    return f;
}

void main()
{
    int i;
    for(i=1; i<=5; i++)   //��ӡ1-5�Ľ׳�
    {
        printf("%d! = %d\n", i,fac(i));
    }
}

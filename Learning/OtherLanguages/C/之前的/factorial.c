#include <stdio.h>

void main()
{
    long factorial(int);
    int s, n ;
    printf("Input a number:\n");
    scanf("%d", &n);
    s = factorial(n);
    printf("%d! = %ld\n", n, s);
}

long factorial(int x)
{
    if(1 == x || 0 == x)
        return 1;  //���Ƶݹ���� ��ʼ����
    else
        x *= factorial(x-1);
}

#include <stdio.h>

int max(int a, int b)
{
    return a>b ? a : b;
}

void main()
{
    extern A, B;  //声明为外部变量 即全局变量
    printf("max = %d\n", max(A,B));
}

int A = 14, B = 5;

#include <stdio.h>

int max(int a, int b)
{
    return a>b ? a : b;
}

void main()
{
    extern A, B;  //����Ϊ�ⲿ���� ��ȫ�ֱ���
    printf("max = %d\n", max(A,B));
}

int A = 14, B = 5;

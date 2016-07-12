#include <stdio.h>

void print(int);

void main()
{
    int i, a[8] = {-2, 4, -7, 3, 5 ,8, -9, 15};
    for(i=0; i<8; i++)
    {
        print(a[i]);  //数组元素作为函数实参 和普通变量一样
    }
    printf("\n");
}

void print(int x)
{
    if(x > 0)
    {
        printf("%-3d", x);
    }
}

#include <stdio.h>

void main()
{
    int i, j, temp, a[10] = {9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
    for(i=9; i>0; i--)  //冒泡法排序：共需i=n-1轮 每轮比较n-j次，把最大的数排到最后
    {
        for(j=0; j<i; j++)
        {
            if(a[j]>a[j+1])
            {
                temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }
        }
    }
    for(i=0; i<10; i++)
    {
        printf("%-3d", a[i]);
    }
    printf("\n");
}

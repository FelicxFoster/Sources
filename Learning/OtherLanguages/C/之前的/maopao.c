#include <stdio.h>

void main()
{
    int i, j, temp, a[10] = {9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
    for(i=9; i>0; i--)  //ð�ݷ����򣺹���i=n-1�� ÿ�ֱȽ�n-j�Σ����������ŵ����
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

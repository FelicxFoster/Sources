#define M 10  //宏定义变量
#include <stdio.h>

void main()
{
    int a[M] = {-12, 0, 6, 16, 23, 56, 80, 100, 110, 115};
    int num, mid, low=0, high=M-1, found=0;
    printf("Input a number to be searched:");
    do
    {
        scanf("%d", &num);
        getchar();
    }while(num<a[0] || num>a[M-1]);

    while(low <= high)
    {
        mid = (low + high) / 2;
        if(num == a[mid])
        {
            found = 1;
            break;
        }
        else if(num > a[mid])
        {
            low = mid + 1;
        }
        else
        {
            high = mid - 1;
        }
    }
    if(1 == found)
    {
        printf("The index of %d is %d", num, mid);
    }
    else
    {
        printf("There is no %d", num);
    }
    printf("\n");
}

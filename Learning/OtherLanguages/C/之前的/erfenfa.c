#include <stdio.h>

void main()
{
    int num, min, max, mid, result=1;
    int a[12] = {-12, 0, 6, 16, 23, 56, 80, 100, 110, 115, 120, 250};
    printf("Input a number:");
    scanf("%d", &num);
    min = 0;
    max = 11;
    mid = (min + max) / 2;

    if(a[min] == num)
    {
        mid = min;
    }
    else if(a[max] == num)
    {
        mid = max;
    }

    while(a[mid] != num)
    {
        if(a[mid] > num)
        {
            max = mid;
        }
        else
        {
            min = mid;
        }
        mid = (min + max) / 2;
        if(mid == max || mid == min)
        {
            result = 0;
            break;
        }
    }
    if(0 == result)
    {
        printf("No exist!");
    }
    else
    {
        printf("Yes, the index is : %d", mid);
    }

}

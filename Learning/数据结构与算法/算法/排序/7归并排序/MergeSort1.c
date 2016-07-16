#include <stdio.h>
#include <stdlib.h>
#define MAXSIZE 10

//实现归并
int MergeSort(int k[], int n)
{
    int i, left_min, left_max, right_min, right_max, next;
    int *temp = (int*)malloc(n * sizeof(int));
    if( !temp )
    {
        return -1;
    }

    for( i=1; i<n; i*=2 ) //i为步长
    {
        for( left_min=0; left_min<n-i; left_min = right_max)
        {
            right_min = left_max = left_min + i;
            right_max = left_max + i;

            if( right_max > n )
            {
                right_max = n;
            }

            next = 0;

            while( left_min < left_max && right_min < right_max )
            {
                if( k[left_min] < k[right_min] )
                {
                    temp[next++] = k[left_min++];
                }
                else
                {
                    temp[next++] = k[right_min++];
                }
            }
            while( left_min < left_max )
            {
                k[--right_max] = k[--left_max];  //!something wrong？
            }
            while( next > 0 )
            {
                k[--right_min] = temp[--next];
            }
        }
    }
    return 0;
}

int main()
{
    int i, a[]={5,2,6,0,3,9,1,7,4,8};
    int len=sizeof(a)/sizeof(int);
    MergeSort(a, len);
    printf("排序后的结果是:\n");
    for(i=0; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n\n");

    return 0;
}

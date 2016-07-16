#include <stdio.h>

void InsertSort(int k[], int n)
{
    int i, j, temp;
    int count1=0, count2=0;

    for(i=1; i<n; i++)
    {
        if( k[i] < k[i-1] )
        {
            count1++;
            temp = k[i];
            for(j=i-1; k[j]>temp && j>=0 ; j--)  //! j>=0
            {
                count2++;
                k[j+1] = k[j];
            }
            k[j+1] = temp;
        }
    }
    printf("总共进行了%d次比较，%d次移动\n", count1, count2);
}

int main()
{
    int i, a[]={5,2,6,0,3,9,1,7,4,8};
    int len=sizeof(a)/sizeof(int);
    InsertSort(a, len);
    printf("排序后的结果是:\n");
    for(i=0; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n\n");
}

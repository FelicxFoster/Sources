#include <stdio.h>

void InsertSort(int a[], int n)
{
    int i, j, k, temp;
    int count1=0, count2=0;

    for(i=0; i<n-1; i++)
    {
        for(j=0; j<i+1; j++)  //前i项为有序
        {
            if(a[i+1]<a[j])   //将第i+1个元素插入到前面
            {
                count1++;
                temp = a[i+1];
                for(k=i+1; k>j; k--)
                {
                    count2++;
                    a[k] = a[k-1];
                }
                a[j] = temp;
            }
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

#include <stdio.h>

void InsertSort(int a[], int n)
{
    int i, j, k, temp;
    int count1=0, count2=0;
    int gap=n;

    do
    {
        gap = gap/3 + 1;
        for(i=0; i<n-1; i++)
        {
            for(j=0; j<i+gap; j+=gap)  //前i项为有序
            {
                if(a[i+gap]<a[j])   //将第i+1个元素插入到前面
                {
                    count1++;
                    temp = a[i+gap];
                    for(k=i+gap; k>j; k-=gap)
                    {
                        count2++;
                        a[k] = a[k-gap];
                    }
                    a[j] = temp;
                }
            }
        }
    }while(gap > 1);
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

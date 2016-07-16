#include <stdio.h>

void ShellSort(int k[], int n)
{
    int i, j, temp;
    int gap=n;
    int count1=0, count2=0;

    do
    {
        gap = gap/3 + 1;
        for(i=gap; i<n; i++)
        {
            if( k[i] < k[i-gap] )
            {
                count1++;
                temp = k[i];
                for(j=i-gap; k[j]>temp && j>=0; j-=gap) //!j>=0
                {
                    count2++;
                    k[j+gap] = k[j];
                }
                k[j+gap] = temp;
            }
        }
    }while(gap>1);
    printf("总共进行了%d次比较，%d次移动\n",count1, count2);
}

int main()
{
    int i, a[]={5,2,6,0,3,9,1,7,4,8};
    int len=sizeof(a)/sizeof(int);
    ShellSort(a, len);
    printf("排序后的结果是:\n");
    for(i=0; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n\n");
}

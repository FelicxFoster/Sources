/**屌丝版**/
#include <stdio.h>

void BubbleSort(int k[], int n)
{
    int i, j, temp;
    int count1=0, count2=0;

    for(i=0; i<n-1; i++)
    {
        for(j=i+1; j<n; j++)    //不是比较相邻连个元素
        {
            count1;             //不算真正意义上的冒泡法
            if( k[i] > k[j])
            {
                count2++;
                temp = k[i];
                k[i] = k[j];
                k[j] = temp;
            }
        }
    }
    printf("总共进行了%d次比较，%d次移动\n\n", count1, count2);
}

int main()
{
    int i, a[]={5,2,6,0,3,9,1,7,4,8};
    int len=sizeof(a)/sizeof(int);
    BubbleSort(a, len);
    printf("排序后的结果是:\n");
    for(i=0; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n\n");
    return 0;
}

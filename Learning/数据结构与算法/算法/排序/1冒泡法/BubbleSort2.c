/**升级版**/
#include <stdio.h>

void BubbleSort(int k[], int n)
{
    int i, j, temp;
    int flag=1;       //相当于True False
    int count1=0, count2=0;

    for(i=0; i<n-1 && flag; i++)
    {
        for(j=n-1; j>i; j--)          //!or j=0; j<n-1-i; j++
        {
            count1++;
            flag=0;
            if(k[j-1] > k[j])       //! k[j]>k[j+1]
            {
                count2++;
                flag=1;
                temp = k[j-1];
                k[j-1] = k[j];
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

}

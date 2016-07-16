#include <stdio.h>

void SelectSort(int k[], int n)
{
    int i, j, t, min, temp;

    for(i=0; i<n-1; i++)
    {
        min = k[i+1];
        t = i+1;
        for(j=i+2; j<n; j++)   //! bad methods
        {
            if( k[j] < min )
            {
                min = k[j];
                t = j;
            }
        }
        if(k[i] > min)
        {
            temp = k[t];
            k[t] = k[i];
            k[i] = temp;
        }
    }
}

int main()
{
    int i, a[]={5,2,6,0,3,9,1,7,4,8};
    int len=sizeof(a)/sizeof(int);
    SelectSort(a, len);
    printf("排序后的结果是:\n");
    for(i=0; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n\n");
}

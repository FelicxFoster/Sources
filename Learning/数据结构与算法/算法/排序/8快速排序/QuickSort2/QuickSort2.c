#include <stdio.h>

void swap(int k[], int low, int high)
{
    int temp;

    temp = k[low];
    k[low] = k[high];
    k[high] = temp;
}

int Partition(int k[], int low, int high)
{
    int point;

    int m = low + (high-low)/2;
    if(k[low] < k[high])
    {
        swap(k, low, high);
    }
    if(k[m] > k[high])
    {
        swap(k, m, high);
    }
    if(k[m] > k[low])
    {
        swap(k, m, low);
    }

    point = k[low];

    while( low < high )
    {
        while( low < high && k[high] >= point )
        {
            high--;
        }
        k[low] = k[high];
        while( low < high && k[low] <= point)
        {
            low++;
        }
        k[high] = k[low];
    }
    k[low] = point;

    return low;
}

void QSort(int k[], int low, int high)
{
    int point;

    if(low < high )
    {
        point = Partition(k, low, high);  //!关键:计算基准点

        QSort(k, low, point-1);

        QSort(k, point+1, high);
    }
}

void QuickSort(int k[], int n)
{
    QSort(k, 0, n-1);
}

int main()
{
    int i, a[]={5,2,6,0,3,9,1,7,4,8};
    int len=sizeof(a)/sizeof(int);
    QuickSort(a, len);

    printf("排序后的结果是:\n");
    for(i=0; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n\n");

}

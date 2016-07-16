#include <stdio.h>

#define MAX_LENGTH_INSERT_SORT 7

void ISort(int k[], int n)
{
    int i, j, temp;

    for(i=1; i<n; i++)
    {
        if( k[i] < k[i-1] )
        {
            temp = k[i];
            for(j=i-1; k[j]>temp && j>=0 ; j--)  //! j>=0
            {
                k[j+1] = k[j];
            }
            k[j+1] = temp;
        }
    }
}
void InsertSort(int k[], int low, int high)
{
    ISort(k+low, high-low+1);
}


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

    if(high-low > MAX_LENGTH_INSERT_SORT )
    {
        while( low < high )
        {
            point = Partition(k, low, high);
            if( point-low < high-point )
            {
                QSort(k, low, point-1);
                low = point + 1;
            }
            else
            {
                QSort(k, point+1, high);
                high = point - 1;
            }
        }
    }
    else
    {
        InsertSort(k, low, high);
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

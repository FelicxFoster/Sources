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

    point = k[low];     //!��k[low]Ϊ��׼��

    while( low < high )
    {
        while( low < high && k[high] >= point )
        {
            high--;
        }
        swap(k, low, high);
        while( low < high && k[low] <= point)
        {
            low++;
        }
        swap(k, low, high);
    }
    return low;
}

void QSort(int k[], int low, int high)
{
    int point;

    if(low < high )
    {
        point = Partition(k, low, high);  //!�ؼ�:�����׼��

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

    printf("�����Ľ����:\n");
    for(i=0; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n\n");

}

#include <stdio.h>

void SelectSort(int k[], int n)
{
    int i, j, min, temp;
    int count1=0, count2=0;


    for(i=0; i<n-1; i++)      //!����
    {
        min = i;
        for(j=i+1; j<n; j++)
        {
            count1++;
            if(k[j] < k[min] )
            {
                min = j;      //!��¼��СԪ�ص�λ��
            }
        }
        if( min != i )
        {
            count2++;
            temp = k[min];
            k[min] = k[i];
            k[i] = temp;
        }
    }
    printf("�ܹ�������%d�αȽϣ�%d���ƶ�\n\n", count1, count2);

}

int main()
{
    int i, a[]={5,2,6,0,3,9,1,7,4,8};
    int len=sizeof(a)/sizeof(int);
    SelectSort(a, len);
    printf("�����Ľ����:\n");
    for(i=0; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n\n");
}

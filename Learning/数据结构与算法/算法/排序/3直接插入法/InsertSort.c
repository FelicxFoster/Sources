#include <stdio.h>

void InsertSort(int a[], int n)
{
    int i, j, k, temp;
    int count1=0, count2=0;

    for(i=0; i<n-1; i++)
    {
        for(j=0; j<i+1; j++)  //ǰi��Ϊ����
        {
            if(a[i+1]<a[j])   //����i+1��Ԫ�ز��뵽ǰ��
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
    printf("�ܹ�������%d�αȽϣ�%d���ƶ�\n", count1, count2);
}

int main()
{
    int i, a[]={5,2,6,0,3,9,1,7,4,8};
    int len=sizeof(a)/sizeof(int);
    InsertSort(a, len);
    printf("�����Ľ����:\n");
    for(i=0; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n\n");
}

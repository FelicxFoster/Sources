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
            for(j=0; j<i+gap; j+=gap)  //ǰi��Ϊ����
            {
                if(a[i+gap]<a[j])   //����i+1��Ԫ�ز��뵽ǰ��
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

/**��˿��**/
#include <stdio.h>

void BubbleSort(int k[], int n)
{
    int i, j, temp;
    int count1=0, count2=0;

    for(i=0; i<n-1; i++)
    {
        for(j=i+1; j<n; j++)    //���ǱȽ���������Ԫ��
        {
            count1;             //�������������ϵ�ð�ݷ�
            if( k[i] > k[j])
            {
                count2++;
                temp = k[i];
                k[i] = k[j];
                k[j] = temp;
            }
        }
    }
    printf("�ܹ�������%d�αȽϣ�%d���ƶ�\n\n", count1, count2);
}

int main()
{
    int i, a[]={5,2,6,0,3,9,1,7,4,8};
    int len=sizeof(a)/sizeof(int);
    BubbleSort(a, len);
    printf("�����Ľ����:\n");
    for(i=0; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n\n");
    return 0;
}

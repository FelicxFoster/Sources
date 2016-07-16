/**�󶥶�**/
#include <stdio.h>

int count1, count2;

void swap(int k[], int i, int j)
{
    count2++;
    int temp;

    temp = k[i];
    k[i] = k[j];
    k[j] = temp;
}

void HeapAdjust(int k[], int s, int n)
{
    int i, temp;

    temp = k[s];
    for( i=2*s; i<=n; i*=2 )
    {
        count1++;
        if( k[i]<k[i+1] && i+1<n ) //������ < �Һ���  //��bug��û���Һ��ӵ����
        {
            i++;                 //��k[i]��Ϊ�Һ���
        }                        //���� ��Ϊ����
        if( temp >= k[i] )       //��������
        {
            break;               //���ý���
        }
        k[s] = k[i];             //�������㸳ֵΪ�ϴ���
        s = i;                   //�����ָ����һ��
    }

    k[s] = temp;         //��һ��ĸ���� ��ֵΪ ԭ���ĸ����
}

void HeapSort(int k[], int n)
{
    int i;

    for( i=n/2; i>0; i--)    //���¶��Ϲ����󶥶�
    {
        HeapAdjust(k, i, n); //iΪ��ǰ����� nΪ���һ�����
    }

    for( i=n; i>1; i--)
    {
        swap(k, 1, i);         //ÿ��ѡ������һ��Ԫ�أ����
        HeapAdjust(k, 1, i-1); //���µ�������һ��Ԫ�صĴ󶥶�
    }
}

int main()
{
    int i, a[]={-1,5,2,6,0,3,9,1,7,4,8};//�±�0 ������ ��1��ʼ
    int len=sizeof(a)/sizeof(int);
    HeapSort(a, len-1);
    printf("�����Ľ����:\n");
    for(i=1; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n�ܹ�ִ����%d�αȽϣ�%d�ν���", count1, count2);

    printf("\n\n");

}

#include <stdio.h>

void print(int array[]);

void main()
{
    int i, a[8] = {-2, 4, -7, 3, 5 ,8, -9, 15};
    print(a);  //��������������ʵ�� ����ͺ���ʵ������һ�� ���ݵ��ǵ�ַ �൱�������һ�����ƺŶ���

}

void print(int array[])
{
    int j;
    for(j=0; j<8; j++)
    {
        if(array[j]>0)
        {
            printf("%-3d", array[j]);
        }
    }
}

#include <stdio.h>

void main()
{
    int i, *p, a[10];
    p = a;
    for(i=0; i<10; i++)
    {
        scanf("%d", p++);  //��ʱp�Ѿ�ָ�����һ��Ԫ���ˣ�����
    }
    printf("\n");
    p = a;  //����ָ���һ��Ԫ�ز���
    for(i=0; i<10; i++, p++)
    {
        printf("%d", *p);
    }
}

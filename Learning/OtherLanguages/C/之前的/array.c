#include <stdio.h>

void main()
{
    int i, a[10];
    int b[10] = {0, 1, 2, 3, 4, 5, 6, 7};  /*����ʱ��ֵ ����ʱ��ֵΪ0
    for(i=0; i<10; i++)  /*����ʱ�Ÿ�ֵ*/
    {
        a[i] = i * i;
    }
    for(i=9; i>=0; i--)
    {
        printf("**%d**",a[i]);
        printf("##%d##\n", b[i]);
    }
}

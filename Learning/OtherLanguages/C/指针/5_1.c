#include <stdio.h>

void main()
{
    char a[] = "I Love You��", b[40], c[40];
    int i;
    printf("a: %s\n", a);

    for(i=0; *(a+i) != '\0'; i++)   //������ķ�������
    {
        *(b+i) = *(a+i);
    }
    *(b+i) = '\0';     //��ӽ�����
    printf("b: %s\n", b);


    int *p1=a, *p2=c;
    for(; *p1 != '\0'; p1++,p2++)   //��ָ�뷽������
    {
        *p2 = *p1;
    }
    *p2 = '\0';     //��ӽ�����
    printf("c: %s\n", c);

}

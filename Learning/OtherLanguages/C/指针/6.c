#include <stdio.h>


#if(0)  //Ԥ���� ����
void main()
{
    int a, b, c;
    int max(int, int);
    printf("Input two integer numbers:\n");
    scanf("%d%d", &a, &b);
    c = max(a, b);
    printf("a=%d b=%d max=%d", a, b, c);
}
#endif

#if(1)
void main()
{
    int max(int, int);
    int (*p)();  //ָ������ָ��
    int a, b, c;

    p = max;  //max������Ϊ�����ĵ�ַ

    scanf("%d%d", &a, &b);

    c = (*p)(a, b);  //ȡֵ�� (*p) == max

    printf("a=%d b=%d max=%d", a, b, c);
}
#endif


int max(int x, int y)
{
    return x>y ? x : y;
}

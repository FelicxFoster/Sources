#include <stdio.h>

void main()
{
    void change(int *, int *);
    int a, b;
    printf("Input two integer numbers:");
    scanf("%d%d", &a, &b);
    change(&a, &b);  //����������ַ������������ǰ���
}

void change(int *p1, int *p2)
{
    int *p;
    if(*p1 < *p2)
    {
        p = p1;
        p1 = p2;
        p2 = p;
    }
    printf("%d %d", *p1, *p2);
}

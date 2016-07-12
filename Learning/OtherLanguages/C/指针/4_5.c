#include <stdio.h>

void swap(int *, int *);

void main()
{
    int a, b, c;
    printf("Input three integer number:");
    scanf("%d%d%d", &a, &b, &c);
    if(a<b)   //冒泡法排序思想
    {
        swap(&a, &b);
    }
    if(b<c)
    {
        swap(&b, &c);
    }
    if(a<b)
    {
        swap(&a, &b);
    }
    printf("%d > %d > %d\n", a, b, c);
}

void swap(int *p1, int *p2)
{
    int temp;
    printf("I'm swapping...^_^\n");  //用于显示函数被调用
    temp = *p1;
    *p1 = *p2;
    *p2 = temp;
}

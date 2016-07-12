#include <stdio.h>

void swap(int *, int *);

void main()
{
    int a, b, *p1, *p2;
    printf("Input two integer number:");
    scanf("%d%d", &a, &b);
    if(a<b)
    {
        swap(&a, &b);
    }
    printf("%d > %d", a, b);
}

void swap(int *p1, int *p2)
{
    int temp;
    printf("I'm swapping...^_^\n");  //用于显示函数被调用
    temp = *p1;
    *p1 = *p2;
    *p2 = temp;
}

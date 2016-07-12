#include <stdio.h>

void swap(int *, int *);
void exchange(int *, int *, int *);

void main()
{
    int x, y, z;
    printf("Input three integer number:");
    scanf("%d%d%d", &x, &y, &z);
    exchange(&x, &y, &z);
    printf("%d > %d > %d\n", x, y, z);
}

void exchange(int *a, int *b, int *c)
{
    if(*a<*b)   //Ã°ÅÝ·¨ÅÅÐòË¼Ïë
    {
        swap(a, b);
    }
    if(*b<*c)
    {
        swap(b, c);
    }
    if(*a<*b)
    {
        swap(a, b);
    }
}

void swap(int *p1, int *p2)
{
    int temp;

    temp = *p1;
    *p1 = *p2;
    *p2 = temp;
}

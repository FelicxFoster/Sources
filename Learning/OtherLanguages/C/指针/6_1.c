#include <stdio.h>

void main()
{
    void process(int, int,int (*)());
    int max(int, int);
    int min(int, int);
    int add(int, int);

    int a=1, b=2;
    int (*p1)(), (*p2)(), (*p3)();

    printf("Input two numbers:\n");
    scanf("%d%d", &a, &b);

    printf("\nmax = ");
    process(a, b, max);

    printf("\nmin = ");
    process(a, b, min);

    printf("\nsum = ");
    process(a, b, add);

}

void process(int m, int n, int (*func)())  //实现了多态性
{
    int c;
    c = (*func)(m, n);
    printf("%d", c);
}

int max(int x, int y)
{
    return x>y ? x : y;
}

int min(int x, int y)
{
    return x<y ? x : y;
}

int add(int x, int y)
{
    return x + y;
}

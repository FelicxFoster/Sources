#include <stdio.h>


#if(0)  //预编译 开关
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
    int (*p)();  //指向函数的指针
    int a, b, c;

    p = max;  //max函数名为函数的地址

    scanf("%d%d", &a, &b);

    c = (*p)(a, b);  //取值： (*p) == max

    printf("a=%d b=%d max=%d", a, b, c);
}
#endif


int max(int x, int y)
{
    return x>y ? x : y;
}

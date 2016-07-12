#include <stdio.h>

int f(int a)
{
    auto int b=0;  // == int b 存放在栈区
    static int c=3; //声明为静态 存放在Data区

    b += 1; // 1, 1, 1
    c += 1; // 4, 5, 6

    return (a+b+c); //7, 8, 9
}

void main()
{
    int a=2, i;

    for(i=0; i<3; i++)
    {
        printf("%d\n", f(a));
    }
}

#include <stdio.h>

void main()
{
    char a[] = "I Love You！", b[40], c[40];
    int i;
    printf("a: %s\n", a);

    for(i=0; *(a+i) != '\0'; i++)   //用数组的方法拷贝
    {
        *(b+i) = *(a+i);
    }
    *(b+i) = '\0';     //添加结束符
    printf("b: %s\n", b);


    int *p1=a, *p2=c;
    for(; *p1 != '\0'; p1++,p2++)   //用指针方法拷贝
    {
        *p2 = *p1;
    }
    *p2 = '\0';     //添加结束符
    printf("c: %s\n", c);

}

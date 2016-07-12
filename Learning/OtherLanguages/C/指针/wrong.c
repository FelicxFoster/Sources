#include <stdio.h>

void main()
{
    int i, *p, a[10];
    p = a;
    for(i=0; i<10; i++)
    {
        scanf("%d", p++);  //此时p已经指到最后一个元素了！！！
    }
    printf("\n");
    p = a;  //重新指向第一个元素才行
    for(i=0; i<10; i++, p++)
    {
        printf("%d", *p);
    }
}

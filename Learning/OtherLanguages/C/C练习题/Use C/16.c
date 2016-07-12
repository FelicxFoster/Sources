#include <stdio.h>


void main()
{
    int a, b, num1, num2, temp;

    printf("Input two number:");
    scanf("%d%d", &num1, &num2);

    a = num1>num2 ? num1 : num2;
    b = num1<num2 ? num1 : num2;

    while(b!=0)   //辗转相除法
    {
        temp = a % b;
        a = b;
        b = temp;
    }
    printf("最大公约数：%d\n", a);
    printf("最小公倍数：%d\n", num1*num2/a);

    system("pause");
}

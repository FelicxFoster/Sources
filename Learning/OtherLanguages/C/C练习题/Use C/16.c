#include <stdio.h>


void main()
{
    int a, b, num1, num2, temp;

    printf("Input two number:");
    scanf("%d%d", &num1, &num2);

    a = num1>num2 ? num1 : num2;
    b = num1<num2 ? num1 : num2;

    while(b!=0)   //շת�����
    {
        temp = a % b;
        a = b;
        b = temp;
    }
    printf("���Լ����%d\n", a);
    printf("��С��������%d\n", num1*num2/a);

    system("pause");
}

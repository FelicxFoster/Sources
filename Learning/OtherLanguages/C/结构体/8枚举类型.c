#include <stdio.h>



void main()
{
    enum weekday{sun, mon, tue, wed, thu, fri, sat}a, b, c;  //����Ԫ��(ö�ٳ���)ֵ����Ϊ:0, 1, 2, 3, 4, 5, 6, 7

    a = sun; // ö�ٱ���(a,b,c) ֻ�ܴ�ö�ٳ����︳ֵ
    b = wed;
    c = sat;

    a = 100; // TC�лᱨ��  ��ò�Ҫ�����ã���

    printf("%d, %d, %d\n", a, b, c);
}

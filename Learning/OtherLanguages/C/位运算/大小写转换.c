#include <stdio.h>
#include <stdlib.h>

void main()
{
    char ch, temp;

    printf("������һ����ĸ��\n");
    ch = getchar();
    fflush(stdin); //���ڴ����һ�� �س���

    while(!(ch>'A' && ch<'z') || (ch>'Z' && ch <'a'))
    {
        printf("������������������һ����ĸ��\n");
        ch = getchar();
        fflush(stdin); //���ڴ��11��һ�� �س���
    }

    if(ch & 32)      //32: 0010 0000  ��Ϊ1 ��˵��ΪСд��ĸ
    {
        ch = ch & 223;     //223: 1101 1111
    }
    else      //Ϊ��д��ĸ
    {
        ch = ch | 32;     //255�� 1111 1111
    }
    putch(ch);
    putchar(ch);

    putch('\n');
    putchar('\n');

    system("pause");
}

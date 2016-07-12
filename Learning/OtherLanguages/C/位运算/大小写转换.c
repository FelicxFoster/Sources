#include <stdio.h>
#include <stdlib.h>

void main()
{
    char ch, temp;

    printf("请输入一个字母：\n");
    ch = getchar();
    fflush(stdin); //用于存放上一个 回车符

    while(!(ch>'A' && ch<'z') || (ch>'Z' && ch <'a'))
    {
        printf("输入有误，请重新输入一个字母：\n");
        ch = getchar();
        fflush(stdin); //用于存放11上一个 回车符
    }

    if(ch & 32)      //32: 0010 0000  若为1 则说明为小写字母
    {
        ch = ch & 223;     //223: 1101 1111
    }
    else      //为大写字母
    {
        ch = ch | 32;     //255： 1111 1111
    }
    putch(ch);
    putchar(ch);

    putch('\n');
    putchar('\n');

    system("pause");
}

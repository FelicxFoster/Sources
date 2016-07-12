#include <stdio.h>
#include <conio.h>

void main()
{
    char c;
    while((c=getch()) != 27)   //ASCII of ESC = 27 //按下ESC退出
    {
        if((c>=65&&c<=90)||(c>=97&&c<=122))
            {
                c = c + 4;
            }
        putch(c);
    }
}

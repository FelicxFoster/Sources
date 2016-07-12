#include <stdio.h>



void main()
{
    enum weekday{sun, mon, tue, wed, thu, fri, sat}a, b, c;  //美剧元素(枚举常量)值依次为:0, 1, 2, 3, 4, 5, 6, 7

    a = sun; // 枚举变量(a,b,c) 只能从枚举常量里赋值
    b = wed;
    c = sat;

    a = 100; // TC中会报错  最好不要这样用！！

    printf("%d, %d, %d\n", a, b, c);
}

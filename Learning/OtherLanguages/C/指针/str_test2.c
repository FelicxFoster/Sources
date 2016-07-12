#include <stdio.h>
#include <string.h>

void main()
{
    char a[20]="s b";
    char *b = "D S B";

    printf("%s\n", a);
    printf("%s\n", b);

    // a = "u s b"; //"u s b"为char *型 不能赋值给char[20]型
    //如何给字符数组a[]赋值呢？ 只能一个字符一个字符？
    strcpy(a, "ha ha ha ^_^\n");
    printf("%s\n", a);

    b = "D U S B";
    printf("%s\n", b);
}

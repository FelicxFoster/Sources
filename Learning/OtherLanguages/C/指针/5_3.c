#include <stdio.h>

void str_copy(char *, char *);

void main()
{
    char a[] = "I love fish~~", b[40];
    printf("a = %s\n", a);

    str_copy(a, b);
    printf("b = %s\n", b);
}

void str_copy(char *p, char *q)  //ͨ���������õķ�������
{
    for( ; *p != '\0'; p++,q++)
    {
        *q = *p;
    }
    *p = '\0';
}

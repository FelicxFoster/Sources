#include <stdio.h>

void main()
{
    char c;
    putchar('A');putchar('\n');
    putchar('\102');putchar('\n');
    printf("input a character\n");
    c = getchar();
    putchar(c);

}

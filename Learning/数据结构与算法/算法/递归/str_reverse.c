#include <stdio.h>


void print_char()
{
    char c;
    scanf("%c", &c);

    if(c != '#')
        print_char();
    if(c != '#')
        printf("%c", c);
}

int main()
{
    printf("Please input a string(# to stop):\n");

    print_char();

    return 0;
}

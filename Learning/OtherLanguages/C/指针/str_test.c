#include <stdio.h>
#include <string.h>

void main()
{
    char c[20], d[20];
    int a;

    gets(&c);
    printf("%s\n", c);

    scanf("%s", d);
    printf("%s\n", d);

    if(strcmp(c,d) == 0)
    {
        printf("Bingo\n!");
    }
    else
    {
        printf("No!\n");
    }

    a = strcmp(c, d);
    printf("%d", a);


}

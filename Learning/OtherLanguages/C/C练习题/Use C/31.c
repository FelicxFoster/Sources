#include <stdio.h>

void main()
{
    char a, b;

    printf("Input the first:");
    scanf("%c", &a);
    if('m'==a || 'M' == a)
    {
        printf("Monday\n");
    }
    else if('w' == a || 'W' == a)
    {
        printf("Wednsday\n");
    }
    else if('f' == a || 'F' == a)
    {
        printf("Friday\n");
    }
    else if('s' == a || 'S' == a)
    {
        printf("Input the second:");
        fflush(stdin);
        scanf("%c", &b);
        if('a' == b || 'A' == b)
        {
            printf("Satday\n");
        }
        else if('u' == b || 'U' == b)
        {
            printf("Sunday\n");
        }
        else
        {
            printf("Error input!\n");
        }
    }
    else if('t' == a || 'T' == a)
    {
        printf("Input the second:");
        fflush(stdin);
        scanf("%c", &b);
        if('h' == b || 'H' == b)
        {
            printf("Thursday\n");
        }
        else if('u' == b || 'U' == b)
        {
            printf("Tuesday\n");
        }
        else
        {
            printf("Error input!\n");
        }
    }
    else
    {
        printf("Error input!\n");
    }

}

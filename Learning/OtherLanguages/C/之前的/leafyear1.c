/*************************************
*这是一个判断某年是否为闰年的小程序*
*************************************/

#include <stdio.h>

void main()
{
    int year, leaf=0;
    printf("Input a year:");
    scanf("%d", &year);
    if(year%4 == 0)
    {
        if(year%100 == 0)
        {
            if(year%400 == 0)
            {
                leaf = 1;
            }
        }
        else
        {
            leaf = 1;
        }
    }
    switch(leaf)
    {
        case 0 : printf("%d is not a leaf year\n", year); break;
        case 1 : printf("%d is a leaf year\n", year); break;
    }
}

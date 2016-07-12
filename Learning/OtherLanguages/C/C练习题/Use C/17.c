#include <stdio.h>
#include <stdlib.h>

void main()
{
    char ch;
    int letter, space, number, other;
    letter = space = number = other = 0;

    while((ch = getchar()) != '\n')
    {
        if((ch>='A'&&ch<='Z')||(ch>='a'&&ch<='z'))
        {
            letter++;
        }
        else if(ch>='0' && ch<='9')
        {
            number++;
        }
        else if(' ' == ch)
        {
            space++;
        }
        else
        {
            other++;
        }
    }
    printf("There are %d letters, %d numbers, %d spaces, %d others\n", letter, number, space, other);
}

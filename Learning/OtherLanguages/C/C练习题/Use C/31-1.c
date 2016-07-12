#include <stdio.h>

void main()
{
    char letter;

    printf("Please input the first letter of someday:");
    while((letter=getch()) != 'Y')
    {
        switch(letter)
        {
            case 'M' : printf("Monday\n"); break;
            case 'W' : printf("Wednsday\n"); break;
            case 'F' : printf("Friday\n"); break;
            case 'S' :
                {
                    printf("Please input the second letter:");
                    letter = getch();
                    if('A' == letter)
                    {
                        printf("Satday\n");
                        break;
                    }
                    else if('U' == letter)
                    {
                        printf("Sunday\n");
                        break;
                    }
                }
            case 'T' :
                {
                    printf("Please input the second letter:");
                    letter = getch();
                    if('U' == letter)
                    {
                        printf("Tuesday\n");
                        break;
                    }
                    else if('H' == letter)
                    {
                        printf("Thursday\n");
                        break;
                    }
                }
        }
    }
}

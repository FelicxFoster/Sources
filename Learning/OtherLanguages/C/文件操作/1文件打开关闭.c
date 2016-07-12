#include <stdio.h>
#include <stdlib.h>

void main()
{
    FILE *fp;
    char *str;

    if(!(fp = fopen("fishc.txt", "w")))
    {
        printf("Can not open!\n");
        system("pause");
    }
    else
    {
        printf("Open success~");
    }
}

#include <stdio.h>
#include <stdlib.h>


void main()
{
    FILE *fp;
    char str[30];
    int i;

    while(!(fp = fopen("123.txt", "r")))
    {
        printf("Can not open the file!\n");
        exit(1);
    }

    while(!feof(fp))
    {
        fscanf(fp, "%s", str);
        printf("%s ", str);
    }



    fclose(fp);

    system("pause");
}

#include <stdio.h>
#include <stdlib.h>


void main()
{
    FILE *fp;
    char str[30];
    int i;

    while(!(fp = fopen("123.txt", "w")))
    {
        printf("Can not open the file!\n");
        exit(1);
    }

    printf("Input the sentence to be written:\n");
    fgets(str, 50, stdin);

    fprintf(fp, "%s", str);

    fclose(fp);
    system("pause");
}

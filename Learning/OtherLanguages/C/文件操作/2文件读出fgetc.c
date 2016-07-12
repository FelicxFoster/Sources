#include <stdio.h>
#include <stdlib.h>

void main()
{
    FILE *fp;
    char ch, filename[20];

    printf("Please input the filename you want to wirte:");
    scanf("%s", filename);

    if(!(fp = fopen(filename, "r")))
    {
        printf("Can not open the file!\n");
        exit(0);  //
    }
    while(ch != EOF)  //ctrl + z
    {
        ch = fgetc(fp);
        putchar(ch);
    }
    fclose(fp);
}

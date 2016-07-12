#include <stdio.h>
#include <stdlib.h>

void main()
{
    FILE *fp;
    char ch, filename[20];

    printf("Please input the filename you want to wirte:");
    scanf("%s", filename);

    if(!(fp = fopen(filename, "wt+")))
    {
        printf("Can not open the file!\n");
        exit(0);  //
    }
    else
    {
        printf("Please input the sentences you want you write:");
        ch = getchar(); //why?...
        ch = getchar();
        while(ch != EOF)  //ctrl + z
        {
            fputc(ch, fp);
            ch = getchar();
        }
        fclose(fp);
    }
}

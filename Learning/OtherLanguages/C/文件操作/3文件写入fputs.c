#include <stdio.h>
#include <stdlib.h>

#define LEN 30

void main()
{
    FILE *fp;
    char ch, buffer[LEN];

    while(!(fp = fopen("111.txt", "at+")))
    {
        printf("Can not open the file!");
        return;
    }

    printf("Please input a string to be writed:\n");
    fgets(buffer, LEN, stdin);  //能够输入带空格的字符串

    fputs(buffer, fp);
    rewind(fp); //重新定义文件内部指针到文件开头

    ch = fgetc(fp);
    while(!feof(fp))  //也可以用 ch != EOF
    {
        putchar(ch);
        ch = fgetc(fp);
    }
    putch('\n');

    fclose(fp);
    system("pause");
}

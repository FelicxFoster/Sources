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
    fgets(buffer, LEN, stdin);  //�ܹ�������ո���ַ���

    fputs(buffer, fp);
    rewind(fp); //���¶����ļ��ڲ�ָ�뵽�ļ���ͷ

    ch = fgetc(fp);
    while(!feof(fp))  //Ҳ������ ch != EOF
    {
        putchar(ch);
        ch = fgetc(fp);
    }
    putch('\n');

    fclose(fp);
    system("pause");
}

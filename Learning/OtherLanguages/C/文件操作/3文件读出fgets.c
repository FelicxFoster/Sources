#include <stdio.h>
#include <stdlib.h>

#define LEN 100

void main()
{
    FILE *fp;
    char buffer[LEN];

    while(!(fp = fopen("111.txt", "rt")))
    {
        printf("Can not open the file!");
        exit(1);
    }

    fgets(buffer, LEN, fp);  //ÿ��ֻ�ܶ���һ��
    printf("%s", buffer);

    fclose(fp);
    system("pause");
}

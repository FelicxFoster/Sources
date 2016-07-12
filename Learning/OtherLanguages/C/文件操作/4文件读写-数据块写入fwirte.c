#include <stdio.h>
#include <stdlib.h>

#define SIZE 6

struct student_type
{
    char name[20];
    int num;
    int age;
    char addr[30];
}stud[SIZE];

void save()
{
    FILE *fp;
    int i;

    while(!(fp = fopen("student-type", "wb"))) //二进制写 方式打开文件
    {
        printf("Can not open the file!\n");
        exit(1);
    }

    for(i=0; i<SIZE; i++)  //写入数据
    {
        if(fwrite(&stud[i], sizeof(struct student_type), 1, fp) != 1)
        {
            printf("File write error!\n");
            fclose(fp);
        }
    }
    fclose(fp);  //关闭文件
}

void main()
{
    int i;

    printf("Please input(name num age address):\n");  //录入数据
    for(i=0; i<SIZE; i++)
    {
        scanf("%s%d%d%s", stud[i].name, &stud[i].num, &stud[i].age, stud[i].addr);
    }

    save();

    system("pause");
}

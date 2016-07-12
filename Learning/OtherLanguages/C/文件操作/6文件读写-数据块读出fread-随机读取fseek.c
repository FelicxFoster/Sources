#include <stdio.h>
#include <stdlib.h>

struct student_type
{
    char name[20];
    int num;
    int age;
    char addr[30];
}stud;

void load(int i)
{
    FILE *fp;


    while(!(fp = fopen("student-type", "r")))  //读 方式打开文件
    {
        printf("Can not open the file!\n");
        exit(1);
    }

    rewind(fp);
    fseek(fp, i*sizeof(struct student_type), 0);  //移动位置指针
    fread(&stud,sizeof(struct student_type), 1, fp);

    fclose(fp);  //关闭文件
}

void main()
{
    int i;

    printf("Please input the index of student to be searched(0-5):");
    scanf("%d", &i);

    load(i);

    printf("%-10s%-10s%-10s%-10s\n", "Name", "Number", "Age", "Address");
    printf("%-10s%-10d%-10d%-10s\n", stud.name, stud.num, stud.age, stud.addr);


    system("pause");
}

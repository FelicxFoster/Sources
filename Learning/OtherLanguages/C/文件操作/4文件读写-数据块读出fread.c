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

void load()
{
    FILE *fp;
    int i;

    while(!(fp = fopen("student-type", "r")))  //�� ��ʽ���ļ�
    {
        printf("Can not open the file!\n");
        exit(1);
    }

    for(i=0; i<SIZE; i++)   //��������
    {
        fread(&stud[i], sizeof(struct student_type), 1, fp);
    }

    fclose(fp);  //�ر��ļ�
}

void main()
{
    int i;

    load();

    printf("%-10s%-10s%-10s%-10s\n", "Name", "Number", "Age", "Address");
    for(i=0; i<SIZE; i++)
    {
        printf("%-10s%-10d%-10d%-10s\n", stud[i].name, stud[i].num, stud[i].age, stud[i].addr);
    }

    system("pause");
}

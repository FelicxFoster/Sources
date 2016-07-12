#include <stdio.h>
#include <string.h>

struct student
{
  int num;
  char name[20];
  float score[3];
};

void print(struct student); //�ṹ���������������

void main()
{
    struct student stu;

    stu.num = 8;
    strcpy(stu.name, "John"); //�ַ�����ĸ�ֵ��ʽ
    stu.score[0] = 80.0;  //���鸳ֵ ֻ��һ��һ������
    stu.score[1] = 85.0;
    stu.score[2] = 90.0;

    print(stu);
}

void print(struct student st)
{
    int i;
    printf("Name   = %s\nNumber = %d\nScore  = ", st.name, st.num);
    for(i=0; i<3; i++)
    {
        printf("%-7.1f", st.score[i]);
    }

}

#include <stdio.h>
#include <string.h>

struct student
{
  int num;
  char name[20];
  float score[3];
};

void print(struct student); //结构体变量作函数参数

void main()
{
    struct student stu;

    stu.num = 8;
    strcpy(stu.name, "John"); //字符数组的赋值方式
    stu.score[0] = 80.0;  //数组赋值 只能一个一个？？
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

#include <stdio.h>

void main()
{
    struct stu
    {
        int num;
        char *name;
        char sex;
        float score;
    }boy = {007, "James"};

    struct stu *pstu;
    pstu = &boy;  //boy == *pstu

    boy.name = "SB";  //name为字符型指针 指向新地址
    (*pstu).sex = 'M';
    pstu->score = 90.0;

    printf("Name  = %s\nNumber = %d\nSex   = %c\nScore = %.1f\n", pstu->name, (*pstu).num, boy.sex, boy.score);
}

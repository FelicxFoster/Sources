#include <stdio.h>

void main()
{
    struct date
    {
        int year, month, day;
    };

    struct
    {
        int num;
        char sex, *name;
        float score;
        struct date birthday;
    }boy1, boy2 = {1120130310, 'M', "SQD", 99.5, {1989, 11, 14}};  //≥ı ºªØ

    printf("Name = %s \nNumber = %d\n", boy2.name, boy2.num);
    printf("Sex = %c \nScore = %.1f\n", boy2.sex, boy2.score);
    printf("Birthday = %d %d %d\n", boy2.birthday.year, boy2.birthday.month, boy2.birthday.day);
}

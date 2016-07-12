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
    }boy1, boy2;

    printf("Please input the birthday(Y M D):");
    scanf("%d%d%d", &boy1.birthday.year, &boy1.birthday.month, &boy1.birthday.day);

    boy1.num =  007;
    boy1.name = "James Bone";

    //printf("Please input the sex and score:");
    //scanf("%c%f", &boy1.sex, &boy1.score);
    boy1.sex = 'M';
    boy1.score = 99.5;

    boy2 = boy1;

    printf("\nName = %s \nNumber = %d\n", boy2.name, boy2.num);
    printf("Sex = %c \nScore = %.1f\n", boy2.sex, boy2.score);
    printf("birthday = %d %d %d", boy2.birthday.year, boy2.birthday.month, boy2.birthday.day);
}

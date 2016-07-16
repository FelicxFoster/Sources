#include <stdio.h>

typedef struct
{
    int num;
    char *name;
    int score;
}Student;

int find(Student stu[],int key_num)
{
    int i=4;

    while( stu[i] != key_num )  //!ÓÅ»¯
    {
        i--;
    }
    return i;
}

int main()
{
    int i, j, search;
    Student stu[4];

    printf("Please input the information(Num, Name, Score)\n");
    for( i=0; i<4; i++)
    {
        scanf("%d %s %d", &stu[i].num, &stu[i].name, &stu[i].score);
    }

    printf("\nPlease input the num of student to be searched:");
    scanf("%d", &search);

    j = find(stu, search);

    if( j )
    {
        printf("The information:\n");
        printf("\n%s\t%s\t%s\n", "Number", "Name", "Score");
        printf("%d\t%s\t%d\n", stu[j].num, &stu[j].name, stu[j].score);
    }
    else
    {
        printf("No exit~\n");
    }


    return 0;
}

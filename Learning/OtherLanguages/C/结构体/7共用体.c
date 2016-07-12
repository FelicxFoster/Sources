#include <stdio.h>

#define NUM 3  //宏定义 总人数

struct
{
    int num;
    char name[10];
    char sex;
    char job;
    union
    {
        int banji;
        char position[10];
    }category;
}person[NUM];

void main()
{
    int i;
    for(i=0; i<NUM; i++)
    {
        printf("Please input the number:");
        scanf("%d", &person[i].num);
        printf("Please input the name:");
        scanf("%s", person[i].name);
        printf("Please input the sex(M/F):");
        scanf("%s", &person[i].sex);
        //gets(&person[i].sex);
#if(1)
        do
        {
            printf("Please input the job(s/t):");
            scanf("%s", &person[i].job);   //???why not %c???
            //gets(&person[i].job);
            if(person[i].job == 's')
            {
                printf("Please input the class:");
                scanf("%d", &person[i].category.banji);
            }
            else if(person[i].job == 't')
            {
                printf("Please input the position:");
                scanf("%s", &person[i].category.position);
            }
            printf("\n");
        }while(person[i].job != 's' && person[i].job != 't');
 #endif
    }


#if(1)
    printf("\n%-5s%-8s%-4s%-4s%-s\n", "No.", "Name", "Sex", "Job", "Class/Position");
    for(i=0; i<NUM; i++)
    {
        printf("%-5d%-8s%-4c%-4c", person[i].num, person[i].name, person[i].sex, person[i].job);
        if(person[i].job == 's')
        {
            printf("%-d\n", person[i].category.banji);
        }
        else
        {
            printf("%-s\n", person[i].category.position);
        }
    }
#endif
}

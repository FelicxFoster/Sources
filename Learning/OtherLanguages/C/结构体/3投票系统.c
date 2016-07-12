#include <stdio.h>
#include <string.h>


void main()
{
    struct vote
    {
        char name[20];
        int count;
    }man[] = {{"小甲鱼",0}, {"苍井空",0},{"松岛枫",0},{"吉泽",0},{"樱井",0},{"王二麻子",0}};

    char c[20];
    int i, j, win_index=0;

    printf("候选人名单：\n");
    for(i=0; i<6; i++)
    {
        printf("%-8s", man[i].name);
    }
    printf("\n\n");

    for(i=0; i<10; i++)   //总票数
    {
        printf("第%2d票，请输入支持的候选人的名字: ", i+1);
        scanf("%s", c);

        j = 0;
        for(j=0; j<6; j++)  //每次遍历
        {
            if(strcmp(c,man[j].name) == 0)  //名字和输入一样的人 对应的count加1
            {
                man[j].count++;
            }
        }
    }

    for(i=0; i<6; i++)
    {
        printf("\n%s的得票数：%d", man[i].name, man[i].count);
        if(man[i].count > man[win_index].count)
        {
            win_index = i;
        }
    }
    printf("\n");

    printf("\n本次投票的获胜者是：%s\n", man[win_index].name);

    getch();
}

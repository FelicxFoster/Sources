/*******************************
*找出其中有不合格成绩的学生号*
*******************************/
#include <stdio.h>

void main()
{
    int *search(int (*)[4], int);
    int score[4][4] = {{60, 80, 66, 90}, {71, 80, 77, 9}, {80, 84, 80, 85}, {90, 93, 92, 99}};
    int i, j, *s, record[4]={0};

    for(i=0; i<4; i++)
    {
        for(j=0; j<4; j++)
        {
            //s = search(score, i)+j;
            s = *(score+i)+j;
            if(*s < 60)
            {
                record[i] = 1;
                break;
            }
        }
        if(1 == record[i])
        {
            printf("Student %-5d", i);
        }
    }
    if(record[0]==0 && record[1]==0 && record[2]==0 && record[3]==0)
    {
        printf("No^_^");
    }
    printf("\n\n");
}

#if(1)
int *search(int (*p)[4], int x) // p = score  第0行第一个元素的地址  == *score  score[0]  &score[0]  &score[0][0]
{
    return *p+x;  //返回 第x行第一个元素的地址
}
#endif

#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>

#define LEN sizeof(struct student) //student结构的大小

struct student *create();    //创建列表
void print(struct student *head); //打印列表

struct student
{
    long num;
    float score;
    struct student *next;
};

int n; //全局变量 用来记录存放了多少数据

void main()
{
    struct student *stu;

    stu = create();
    print(stu);

    printf("\n\n");
    system("pause");
}

struct student *create()
{
    struct student *head, *p1, *p2;

    p1 = p2 = (struct student *)malloc(LEN);

    printf("Please enter the num:");
    scanf("%d", &p1->num);
    printf("Please enter the score:");
    scanf("%f", &p1->score);

    head = NULL;
    n = 0;

    while(p1->num)
    {
        n++;
        if(1 == n)
        {
            head = p1;
        }
        else
        {
            p2->next = p1;
        }
        p2 = p1;
        p1 = (struct student *)malloc(LEN);

        printf("Please enter the num:");
    scanf("%d", &p1->num);
    printf("Please enter the score:");
    scanf("%f", &p1->score);
    }
    p2->next = NULL;

    return head;
};

void print(struct student *head)
{
    struct student *p;
    printf("\nThere are %d records!\n\n", n);

    p = head;

    do
    {
        printf("学号为%d的成绩是：%.1f\n", p->num, p->score);
        p = p->next;
    }while(p);
}

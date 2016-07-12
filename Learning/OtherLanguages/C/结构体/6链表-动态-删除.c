#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>

#define LEN sizeof(struct student) //student结构的大小

struct student *create();    //创建链表
struct student *del(struct student *head, int num); //删除head头指针的链表 的num结点
void print(struct student *head); //打印链表
int n; //全局变量 用来记录存放了多少数据

struct student
{
    long num;
    float score;
    struct student *next;
};

void main()
{
    struct student *stu;
    int n;

    stu = create();
    print(stu);

    printf("\nInput the num to be deleted:");
    scanf("%ld", &n);
    print(del(stu, n));

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

struct student *del(struct student *head, int num)
{
    struct student *p1, *p2;

    if(NULL == head)
    {
        printf("This is an empty list!\n");
        goto END;
    }

    p1 = head;
    while(p1->num != num && p1->next != NULL)
    {
        p2 = p1;
        p1 = p1->next;
    }
    if(num == p1->num)
    {
        if(p1 ==head)  //没进入while循环 要删除的结点为头结点
        {
            head = p1->next; //head指向下一个结点或NULL
        }
        else
        {
            p2->next = p1->next; //跳过p1-num 实现删除
        }
        printf("\nDelete No:%d succeed!\n", num);
        n--;
    }
    else
    {
        printf("%d is not in list!\n", num);
    }
END:
    return head;
};

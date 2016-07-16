#include <stdio.h>
#include <stdlib.h>

#define OK 1
#define ERROR 0

typedef int ElemType;
typedef int Status;

typedef struct Node
{
    ElemType data;
    struct Node *next;
}Node;
typedef struct Node *LinkList;

Status CreateListTail(LinkList *L, int n)  //L为指针
{
    LinkList p, r;                            //p为结点
    int i;

    srand(time(0));    //初始化随机数种子
    *L = (LinkList)malloc(sizeof(Node));
    r = *L;

    for(i=0; i<n; i++)
    {
        p = (LinkList)malloc(sizeof(Node));
        p->data = rand()%100+1;
        r->next = p;
        r = p;  //
    }
    r->next = NULL;
}

void main()
{
    LinkList L;
    int e;
}

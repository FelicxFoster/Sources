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

Status ListInsert(LinkList *L, int i, ElemType *e)
{
    int j;
    LinkList p, s;

    p = *L;
    j = 1;

    while(p && j<i)
    {
        p = p->next;
        j++;
    }
    if(!p || j>i)
    {
        return ERROR;
    }

    s = (LinkList)malloc(sizeof(Node)); //申请动态内存
    s->data = *e;

    s->next = p->next; //两句注意不要写反了
    p->next = s;

    return OK;
}

void main()
{
    LinkList *L;
    int e;

    e = 5;
    (*L)->data = 10;
    (*L)->next = NULL;

    ListInsert(L, 1, &e);
}

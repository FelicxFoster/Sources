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
    LinkList p;

    p = *L;
    j = 1;

    while(p->next && j<i)
    {
        p = p->next;
        ++j;
    }
    if(!(p->next) || j>i)
    {
        return ERROR;
    }

    *e = p->next->data;
    p->next = p->next->next;
    free(p->next);

    return OK;
}

void main()
{
    LinkList L;
    int e;
}

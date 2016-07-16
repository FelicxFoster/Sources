#include <stdio.h>

#define OK 1
#define ERROR 0
#define TRUE 1
#define FALSE 0

typedef int Status;
typedef int ElemType;

typedef struct Node
{
    ElemType data;  //数据域
    struct Node *next;       //指针域
}Node;
typedef struct Node *LinkList;     //LinkList L == Node *L

Status GetElem(LinkList L, int i, ElemType *e)
{
    int j;
    LinkList p;

    p = L->next;  //L指向头结点
    j = 1;

    while(p && j<i)
    {
        p = p->next;
        ++j;  //== j++??
    }

    if(!p || j>i)
    {
        return ERROR;
    }

    *e = p->data;

    return OK;
}

void main()
{
    LinkList L;
    int i, e;




    GetElem(L, 5, &e);
}

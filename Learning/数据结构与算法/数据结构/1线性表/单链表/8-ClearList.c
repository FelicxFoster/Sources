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

Status ClearList(LinkList *L, int n)  //LÎªÖ¸Õë
{
    LinkList p, q;

    p = (*L)->next;

    while(p)
    {
        q = p->next;
        free(p);
        p = q;
    }

    (*L)->next = NULL;

    return OK;
}

void main()
{
    LinkList L;
    int e;
}

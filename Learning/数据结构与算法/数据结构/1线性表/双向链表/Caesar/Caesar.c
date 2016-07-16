#include <stdio.h>
#include <stdlib.h>

#define OK 1
#define ERROR 0

typedef char  ElemType;
typedef int   Status;

typedef struct DualNode
{
    ElemType data;
    struct DualNode *prior;
    struct DualNode *next;
}DualNode, *DuLinkList;

Status InitList(DuLinkList *L)
{
    DualNode *p, *q;
    int i;

    *L = (DuLinkList)malloc(sizeof(DualNode));
    if(!(*L))
        return ERROR;

    (*L)->prior = (*L)->next = NULL;
    p = (*L);

    for(i=0; i<26; i++)
    {
        q = (DualNode*)malloc(sizeof(DualNode));
        if(!q)
            return ERROR;

        q->data = 'A' + i;

        q->prior = p;
        q->next = p->next;
        p->next = q;

        p = q;
    }
    p->next = (*L)->next;    //尾结点的next 指向A结点
    (*L)->next->prior = p;   //A结点的prior 指向尾结点

    free((*L));              //释放头结点

    return OK;
}

void Caesar(DuLinkList *L, int i)
{
    if(i>0)
    {
        do
        {
            (*L) = (*L)->next;
        }while(--i);
    }

    if(i<0)
    {
        do
        {
            (*L) = (*L)->prior; //
        }while(++i);
    }
}


int main()
{
    DuLinkList L;
    int i, n;

    InitList(&L);

    printf("Please input a integer:");
    scanf("%d", &n);
    printf("\n");
    Caesar(&L, n);

    for(i=0; i<26; i++)
    {
        L = L->next;
        printf("%c", L->data);
    }
    printf("\n");

    system("pause");
    return 0;
}

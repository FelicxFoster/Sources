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

Status CreateListTail(LinkList *L, int n)  //LΪָ��
{
    LinkList p, r;                            //pΪ���
    int i;

    srand(time(0));    //��ʼ�����������
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

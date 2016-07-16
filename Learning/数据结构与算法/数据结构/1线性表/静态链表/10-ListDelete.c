#include <stdio.h>

#define OK 1
#define ERROR 0
#define MAXSIZE 1000

typedef int ElemType;
typedef int Status;

typedef struct
{
    ElemType data;    //����
    int cur;          //�α�cursor
}Component, StaticLinkLisk[MAXSIZE];

Status InitList(StaticLinkLisk space) //��ʼ��
{
    int i;
    for(i=0; i<MAXSIZE; i++)
    {
        space[i].cur = i + 1;
    }
    space[MAXSIZE-1].cur = 0;

    return OK;
}

void FreeSSL(StaticLinkLisk space, int k)
{    //���±�Ϊk�Ŀ��н�� ���յ���������ͷ��
    space[k].cur = space[0].cur;
    space[0].cur = k;
}

int ListLength(StaticLinkLisk L) //����L��Ԫ�صĸ���
{
    int j=0;
    int i=L[MAXSIZE-1].cur;

    while(i)
    {
        i = L[i].cur;
        j++;
    }
    return j;
}

Status ListInsert(StaticLinkLisk L, int i)
{                 //ɾ������L�е�i��Ԫ��
    int j, k;

    if(i<1 || i>ListLength(L))
    {
        return ERROR;
    }

    k = MAXSIZE - 1;   //���һ��Ԫ��

    for(j=1; j<=i-1; j++)
    {
        k = L[k].cur; //�õ���i-1��Ԫ�ص�cur��ֵΪk
    }
    j = L[k].cur //�õ���i��Ԫ�ص�cur ��ֵΪj
    L[k].cur = L[j].cur;  //������i��Ԫ��

    Free_SSL(L, j);

    return OK;
}


void main()
{
    ;
}

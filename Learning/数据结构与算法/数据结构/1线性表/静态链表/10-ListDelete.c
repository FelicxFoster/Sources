#include <stdio.h>

#define OK 1
#define ERROR 0
#define MAXSIZE 1000

typedef int ElemType;
typedef int Status;

typedef struct
{
    ElemType data;    //数据
    int cur;          //游标cursor
}Component, StaticLinkLisk[MAXSIZE];

Status InitList(StaticLinkLisk space) //初始化
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
{    //将下标为k的空闲结点 回收到备用链表头部
    space[k].cur = space[0].cur;
    space[0].cur = k;
}

int ListLength(StaticLinkLisk L) //返回L中元素的个数
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
{                 //删除链表L中第i个元素
    int j, k;

    if(i<1 || i>ListLength(L))
    {
        return ERROR;
    }

    k = MAXSIZE - 1;   //最后一个元素

    for(j=1; j<=i-1; j++)
    {
        k = L[k].cur; //得到第i-1个元素的cur赋值为k
    }
    j = L[k].cur //得到第i个元素的cur 赋值为j
    L[k].cur = L[j].cur;  //跳过第i个元素

    Free_SSL(L, j);

    return OK;
}


void main()
{
    ;
}

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

int Malloc_SSL(StaticLinkLisk space)  //获得空闲分量的下标
{
    int i = space[0].cur;  //第0个元素的游标cur为第一个空闲元素的下标

    if(space[0].cur)  //不是空链表
    {
        space[0].cur = space[i].cur;  //第i个元素的cur
    }
    return i;
}

Status ListInsert(StaticLinkLisk L, int i, ElemType e)
{                 //在链表L中第i个元素之前插入e
    int j, k, l;

    k = MAXSIZE - 1;   //最后一个元素
    if(i<1 || i>ListLength(L)+1)
    {
        return ERROR;
    }
    j = Malloc_SSL(L) //链表L的空闲分量的下标
    if(j)
    {
        L[j].data = e;
        for(l=1; l<=i-1; l++)
        {
            k = L[k].cur; //关键！循环i-1次 得到第i-1个元素的cur
        }
        L[j].cur = L[k].cur; //把第i-1个元素的cur取出来 放到插入元素的cur
        L[k].cur = j;      //把第i-1个元素的cur指向插入元素的下标
        return OK;
    }
    return ERROR;
}


void main()
{
    ;
}

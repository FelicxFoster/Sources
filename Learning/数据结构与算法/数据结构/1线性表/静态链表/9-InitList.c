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

void main()
{
    ;
}

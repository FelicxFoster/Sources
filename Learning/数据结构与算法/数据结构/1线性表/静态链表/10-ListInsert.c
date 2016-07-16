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

int Malloc_SSL(StaticLinkLisk space)  //��ÿ��з������±�
{
    int i = space[0].cur;  //��0��Ԫ�ص��α�curΪ��һ������Ԫ�ص��±�

    if(space[0].cur)  //���ǿ�����
    {
        space[0].cur = space[i].cur;  //��i��Ԫ�ص�cur
    }
    return i;
}

Status ListInsert(StaticLinkLisk L, int i, ElemType e)
{                 //������L�е�i��Ԫ��֮ǰ����e
    int j, k, l;

    k = MAXSIZE - 1;   //���һ��Ԫ��
    if(i<1 || i>ListLength(L)+1)
    {
        return ERROR;
    }
    j = Malloc_SSL(L) //����L�Ŀ��з������±�
    if(j)
    {
        L[j].data = e;
        for(l=1; l<=i-1; l++)
        {
            k = L[k].cur; //�ؼ���ѭ��i-1�� �õ���i-1��Ԫ�ص�cur
        }
        L[j].cur = L[k].cur; //�ѵ�i-1��Ԫ�ص�curȡ���� �ŵ�����Ԫ�ص�cur
        L[k].cur = j;      //�ѵ�i-1��Ԫ�ص�curָ�����Ԫ�ص��±�
        return OK;
    }
    return ERROR;
}


void main()
{
    ;
}

#include <stdio.h>

#define MAXSIZE 20
#define OK 1
#define ERROR 0
#define TRUE 1
#define FALSE 0

typedef int Status;    //函数类型 返回值为结果状态代码 OK等
typedef int ElemType;

typedef struct
{
    ElemType data[MAXSIZE];
    int length;
}SqList;                     //创建线性表SqList

#if(1)
Status GetElem(SqList L, int i, ElemType *e)  //获取L中的第i个元素，并用e返回其值
{
    if( L.length ==0 || i<1 || i>L.length )
    {
        return ERROR;
    }
    *e = L.data[i-1];

    return OK;
}

Status ListInsert(SqList *L, int i, ElemType *e)  //在L中的第i个位置插入新元素e
{
    int k;

    if(L->length == MAXSIZE)     //线性表已满
    {
        return ERROR;
    }
    if(i < 1 || i > L->length+1) //i不在范围内
    {
        return ERROR;
    }
    if(i < L->length)     //若插入位置不在表尾
    {
        /*将要插入位置及后面的元素向后移动一位*/
        for(k=L->length-1; k>=i-1; k--)
        {
            L->data[k+1] = L->data[k];
        }
    }
    L->data[i] = *e;  //将新元素插入位置i
    L->length++;

    return OK;
}

Status ListDelete(SqList *L, int i, ElemType *e)  //从L中删除位置i的元素，并用e返回其值
{
    int k;
    if(L->length == 0)
    {
        return ERROR;
    }
    if(i < 1 || i > L->length)
    {
        return ERROR;
    }

    *e = L->data[i-1];
    if(i < L->length)  /
    {
        for(k=i; k < L->length; k++)
        {
            L->data[k-1] = L->data[k];
        }
    }
    L->length--;

    return OK;
}
#endif

void main()
{
    int i;
    ElemType e;
    SqList *L;

    L->length = 10;

    for(i=0; i<L->length; i++)
    {
        L->data[i] = i+1;
    }



    //ListDelete(L, 5, &e);



    //GetElem(*L, j, &e);
    //ListInsert(L, j-1, &e);
    //ListDelete(L, j, &e);




}

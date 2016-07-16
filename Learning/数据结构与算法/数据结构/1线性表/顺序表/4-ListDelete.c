#include <stdio.h>

#define MAXSIZE 20
#define OK 1
#define ERROR 0
#define TRUE 1
#define FALSE 0

typedef int Status;    //�������� ����ֵΪ���״̬���� OK��
typedef int ElemType;

typedef struct
{
    ElemType data[MAXSIZE];
    int length;
}SqList;                     //�������Ա�SqList

#if(1)
Status GetElem(SqList L, int i, ElemType *e)  //��ȡL�еĵ�i��Ԫ�أ�����e������ֵ
{
    if( L.length ==0 || i<1 || i>L.length )
    {
        return ERROR;
    }
    *e = L.data[i-1];

    return OK;
}

Status ListInsert(SqList *L, int i, ElemType *e)  //��L�еĵ�i��λ�ò�����Ԫ��e
{
    int k;

    if(L->length == MAXSIZE)     //���Ա�����
    {
        return ERROR;
    }
    if(i < 1 || i > L->length+1) //i���ڷ�Χ��
    {
        return ERROR;
    }
    if(i < L->length)     //������λ�ò��ڱ�β
    {
        /*��Ҫ����λ�ü������Ԫ������ƶ�һλ*/
        for(k=L->length-1; k>=i-1; k--)
        {
            L->data[k+1] = L->data[k];
        }
    }
    L->data[i] = *e;  //����Ԫ�ز���λ��i
    L->length++;

    return OK;
}

Status ListDelete(SqList *L, int i, ElemType *e)  //��L��ɾ��λ��i��Ԫ�أ�����e������ֵ
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

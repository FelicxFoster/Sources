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

Status GetElem(SqList L, int i, ElemType *e)  //��ȡL�еĵ�i��Ԫ�ص�ֵ��*e
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
    L->data[i-1] = *e;  //����Ԫ�ز���λ��i
    L->length++;

    return OK;
}


void main()
{
    int i, j=5;
    ElemType e=100;
    SqList *L;

    L->length = 10;
    for(i=0; i<L->length; i++)
    {
        L->data[i] = i+1;
    }


    ListInsert(L, j, &e);

    for(i=0; i<L->length; i++)
    {
        printf("%d ", L->data[i]);
    }

}

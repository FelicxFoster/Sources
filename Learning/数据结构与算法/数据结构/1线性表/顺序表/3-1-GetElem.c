#include <stdio.h>

#define MAXSIZE 20
#define OK 1
#define ERROR 0
#define TRUE 1
#define FALSE 0

typedef int Status;
typedef int ElemType;

typedef struct
{
    ElemType data[MAXSIZE];
    int length;
}SqList;

Status GetElem(SqList L, int i, ElemType *e)
{
    if( L.length ==0 || i<1 || i>L.length )
    {
        return ERROR;
    }
    *e = L.data[i-1];

    return OK;
}

void main()
{
    int i, j=5;
    ElemType e;

    SqList a;
    for(i=0; i<10; i++)
    {
        a.data[i] = i+1;
    }
    a.length = 10;

    if(GetElem(a, j, &e))
    {
        printf("The %dth elemmet in SqList is : %d\n", j, e);
    }
    else
    {
        printf("No exist!\n");
    }
}

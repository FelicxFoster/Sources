#include <stdlib.h>

#define TRUE 1
#define FALSE 0

typedef int Status;
//
typedef struct BiTNode
{
    int data;
    struct BiTNode *lchild, *rchild;
}BiTNode, *BiTree;


//!�ݹ���Ҷ��������� T ���Ƿ���� key
//!ָ�� f ָ�� T ��˫�ף���ʼֵΪ NULL
//!�����ҳɹ�����ָ�� p ָ���Ԫ�ؽ�㣬������TRUE
//!���� p ָ�����·���Ϸ��ʵ����һ����㣬������FALSE
Status SearchBST(BiTree T, int key, BiTree f, BiTree *p)
{
    if( !T )
    {
        *p = f;
        return FALSE;
    }
    else if( key == T->data )
    {
        *p = T;
        return TRUE;
    }
    else if( key< T->data )
    {
        return SearchBST(T->lchild, key, T, p);
    }
    else
    {
        return SearchBST(T->rchild, key, T, p);
    }
}

//!���в�����keyʱ�� ����key������TRUE�����򷵻�FALSE
Status InsertBST(BiTree *T, int key)
{
    BiTree p, s;
    if( !SearchBST(*T, key, NULL, &p))  //�Ҳ��� pָ�������ʵĽ�� �����²��뼴��
       {
           s = (BiTree)malloc(sizeof(BiTNode));
           s->data = key;
           s->lchild = s->rchild = NULL;

           if( !p )
           {
               *T = s;  //����sΪ���ڵ�
           }
           else if( key < p->data)
           {
               p->lchild = s;
           }
           else
           {
               p->rchild = s;
           }
           return TRUE;
       }
       else                      //�������к͹ؼ�����ͬ��Ԫ�� ���ٲ���
       {
           return FALSE;
       }
}



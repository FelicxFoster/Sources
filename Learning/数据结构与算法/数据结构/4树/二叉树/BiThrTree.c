/*******************************
**�����������Ĵ���
*******************************/
#include <stdio.h>
#include <stdlib.h>

typedef char ElemType;

//�����洢��־λ
//Link��0������ʾָ�����Һ��ӵ�ָ��
//Thread��1������ʾָ��ǰ����̵�����
typedef enum{Link, Thread}PointerTag;

typedef struct BiThrNode
{
    ElemType data;
    struct BiThrNode *lchild, *rchild;
    PointerTag ltag, rtag;
}BiThrNode, *BiThrTree;

//ȫ�ֱ�����ʼ��ָ��ոշ��ʹ��Ľ��
BiThrTree pre;


//����һ�ö�������Ԥ��ǰ�������ʽ����
void CreateBiThrTree( BiThrTree *T )
{
    char c;

    scanf("%c", &c);
    if(' ' == c)
    {
        *T = NULL;
    }
    else
    {
        *T = (BiThrNode *)malloc(sizeof(BiThrNode));
        (*T)->data = c;
        (*T)->ltag = Link;
        (*T)->rtag = Link;

        CreateBiThrTree(&(*T)->lchild);
        CreateBiThrTree(&(*T)->rchild);
    }
}

//�������������
void InThreading(BiThrTree T)
{
    if( T )
    {
        InThreading(T->lchild); //�ݹ�����������

        //��㴦��
        if( !T->lchild )        //����ý��������
        {
            T->ltag = Thread;   //����ltagΪThread
            T->lchild = pre;    //����lchildָ��ոշ��ʹ��Ľ��
        }
        if( !pre->rchild )      //����ý��������
        {
            pre->rtag = Thread; //����rtagΪThread
            pre->rchild = T;    //����TɫΪ��̽��
        }

        pre = T;  //��pre��¼T

        InThreading(T->rchild); //�ݹ��Һ���������
    }
}


void InOrderThreading(BiThrTree *p, BiThrTree T)
{
    *p = (BiThrNode*)malloc(sizeof(BiThrNode)); //BiThrNode* == BiThrTree
    (*p)->ltag = Link;
    (*p)->rtag = Thread;
    (*p)->rchild = *p;
    if(!T)
    {
        (*p)->lchild = *p;
    }
    else
    {
        (*p)->lchild = T;
        pre = *p;
        InThreading(T);
        pre->rchild = *p;
        pre->rtag = Thread;
        (*p)->rchild = pre;
    }
}


void visit(char c)
{
    printf("%c", c);
}


//������������� �ǵݹ�
void InorderTranverse(BiThrTree T)
{
    BiThrTree p;
    p = T->lchild;

    while(p != T)
    {
        while(p->ltag == Link)
        {
            p = p->lchild;
        }
        visit(p->data);

        while(p->rtag == Thread && p->rchild != T)
        {
            p = p->rchild;
            visit(p->data);
        }
        p = p->rchild;
    }
}

int main()
{
    BiThrTree P, T = NULL;

    CreateBiThrTree(&T);

    InOrderThreading(&P, T);

    printf("����������Ϊ��\n");
    InorderTranverse(P);

    return 0;
}

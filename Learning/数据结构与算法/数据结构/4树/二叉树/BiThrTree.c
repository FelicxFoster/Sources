/*******************************
**线索二叉树的创建
*******************************/
#include <stdio.h>
#include <stdlib.h>

typedef char ElemType;

//线索存储标志位
//Link（0）：表示指向左右孩子的指针
//Thread（1）：表示指向前区后继的线索
typedef enum{Link, Thread}PointerTag;

typedef struct BiThrNode
{
    ElemType data;
    struct BiThrNode *lchild, *rchild;
    PointerTag ltag, rtag;
}BiThrNode, *BiThrTree;

//全局变量，始终指向刚刚访问过的结点
BiThrTree pre;


//创建一棵二叉树，预定前序遍历方式输入
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

//中序遍历线索化
void InThreading(BiThrTree T)
{
    if( T )
    {
        InThreading(T->lchild); //递归左孩子线索化

        //结点处理
        if( !T->lchild )        //如果该结点无左孩子
        {
            T->ltag = Thread;   //设置ltag为Thread
            T->lchild = pre;    //并把lchild指向刚刚访问过的结点
        }
        if( !pre->rchild )      //如果该结点无左孩子
        {
            pre->rtag = Thread; //设置rtag为Thread
            pre->rchild = T;    //并把T色为后继结点
        }

        pre = T;  //用pre记录T

        InThreading(T->rchild); //递归右孩子线索化
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


//中序遍历二叉树 非递归
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

    printf("中序遍历结果为：\n");
    InorderTranverse(P);

    return 0;
}

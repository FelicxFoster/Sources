#include <stdio.h>
#include <stdlib.h>

typedef int ElemType;

typedef struct BSTNode
{
    ElemType data;
    struct BSTNode *lchild, *rchild;
}BSTNode, *BSTree;

void InitTree(BSTree *T, ElemType e)
{
     *T = (BSTree)malloc(sizeof(BSTNode));
    (*T)->data = e;
    (*T)->lchild = NULL;
    (*T)->rchild = NULL;
}

//!创建二叉排序树
void insert(BSTree *T, ElemType n)
{
    BSTree P;
    InitTree(&P, n);
    if( n > (*T)->data )
    {
        if( (*T)->rchild )
        {
            insert(&(*T)->rchild, n);
        }
        else
        {
            (*T)->rchild = P;
        }
    }
    else
    {
        if( (*T)->lchild )
        {
            insert(&(*T)->lchild, n);
        }
        else
        {
            (*T)->lchild = P;
        }
    }
}

void visit(BSTree T)
{
    printf("%d ", T->data);
}

//中序遍历
void inorder(BSTree T)
{
    if( T )
    {
        if( T->lchild )
        {
            inorder(T->lchild);
        }
        visit(T);
        if( T->rchild )
        {
            inorder(T->rchild);
        }
    }
}

//反中序遍历
void rinorder(BSTree T)
{
    if( T )
    {
        if( T->rchild )
        {
            rinorder(T->rchild);
        }
        visit(T);
        if( T->lchild )
        {
            rinorder(T->lchild);
        }
    }
}

int main()
{
    ElemType a[] = {55, 144, 89, 0, 13, 5, 2, 1, 3, 8, 34, 21};
    int i, len;

    BSTree T;
    InitTree(&T, a[0]);

    len = sizeof(a)/sizeof(ElemType);
    for(i=1; i<len; i++)
    {
        insert(&T, a[i]);
    }

    printf("从小到大排列为 ：\n");
    inorder(T);
    printf("\n");

    printf("\n从大到小排列为 ：\n");
    rinorder(T);
    printf("\n");

    return 0;
}

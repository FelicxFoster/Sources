#include <stdio.h>
#include <stdlib.h>


#define MAX_TREE_SIZE 20

typedef char ElemType;

typedef struct BiTNode
{
    ElemType data;
    struct BiTNode *lchild, *rchild;
}BiTNode, *BiTree;


//创建一颗二叉树 约定用户遵照前序遍历的方式输入数据
CreateBiTree(BiTree *T)   //T 指针的指针
{
    char c;

    scanf("%c", &c);

    if(' ' == c)
    {
        *T = NULL;
    }
    else
    {
        *T = (BiTNode*)malloc(sizeof(BiTNode));
        (*T)->data = c;
        CreateBiTree(&(*T)->lchild);    //递归实现
        CreateBiTree(&(*T)->rchild);
    }
}

//访问二叉树结点的具体操作
visit(char c, int level)
{
    printf("%c位于第%d层\n", c, level);
}

//前序遍历二叉树
PreOrderTraverse(BiTree T, int level)
{
    if( T )
    {
        visit(T->data, level);
        PreOrderTraverse(T->lchild, level+1);
        PreOrderTraverse(T->rchild, level+1);
    }
}

int main()
{
    int level = 1;
    BiTree T = NULL;

    CreateBiTree(&T);
    PreOrderTraverse(T, level);

    return 0;
}

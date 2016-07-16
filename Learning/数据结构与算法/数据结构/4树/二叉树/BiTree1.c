#include <stdio.h>
#include <stdlib.h>


#define MAX_TREE_SIZE 20

typedef char ElemType;

typedef struct BiTNode
{
    ElemType data;
    struct BiTNode *lchild, *rchild;
}BiTNode, *BiTree;


//����һ�Ŷ����� Լ���û�����ǰ������ķ�ʽ��������
CreateBiTree(BiTree *T)   //T ָ���ָ��
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
        CreateBiTree(&(*T)->lchild);    //�ݹ�ʵ��
        CreateBiTree(&(*T)->rchild);
    }
}

//���ʶ��������ľ������
visit(char c, int level)
{
    printf("%cλ�ڵ�%d��\n", c, level);
}

//ǰ�����������
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

#define TRUE 1
#define FALSE 0

typedef int Status;
//
typedef struct BiTNode
{
    int data;
    struct BiTNode *lchild, *rchild;
}BiTNode, *BiTree;


//!递归查找二叉排序树 T 中是否存在 key
//!指针 f 指向 T 的双亲，初始值为 NULL
//!若查找成功，则指针 p 指向该元素结点，并返回TRUE
//!否则 p 指向查找路径上访问的最后一个结点，并返回FALSE
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

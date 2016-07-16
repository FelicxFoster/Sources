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

//!树中不存在key时， 插入key并返回TRUE，否则返回FALSE
Status InsertBST(BiTree *T, int key)
{
    BiTree p, s;
    if( !SearchBST(*T, key, NULL, &p))  //找不到 p指向最后访问的结点 在其下插入即可
       {
           s = (BiTree)malloc(sizeof(BiTNode));
           s->data = key;
           s->lchild = s->rchild = NULL;

           if( !p )
           {
               *T = s;  //插入s为根节点
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
       else                      //树中已有和关键字相同的元素 不再插入
       {
           return FALSE;
       }
}


Status Delete(BiTree *p)
{
    BiTree q, s;

    if((*p)->rchild )  //!右子树为空
    {
        q = *p;
        *p = (*p)->lchild;
        free(q);
    }
    if((*p)->lchild )  //!左子树为空
    {
        q = *p;
        *p = (*p)->rchild;
        free(q);
    }
    else       //!左右子树都不为空
    {          //!用直接前驱 或 直接后去都行
        q = *p;
        s = (*p)->lchild;

        while( s->rchild )
        {
            q = s;
            s = s->rchild;
        }
        (*p)->data = s->data;  //!!只是替换数据 链结构不变！！

        if( q != *p )   //!s有右子树
        {
            q->rchild = s->lchild;
        }
        else            //!s无右子树
        {
            q->lchild = s->lchild;
        }

        free(s);       //!不是释放p
    }

    return TRUE;
}

Status DeleteBST(BiTree *T, int key)
{
    if( !*T )
    {
        return FALSE;
    }
    else
    {
        if( key == (*T)->data )
        {
            return Delete(T);
        }
        else if(key < (*T)->data )
        {
            DeleteBST(&(*T)->lchild, key);
        }
        else
        {
            DeleteBST(&(*T)->rchild, key);
        }
    }
}

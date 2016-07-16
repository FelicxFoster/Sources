#include <stdio.h>
#include <stdlib.h>


//查找元素elem在链表中位于第几个位置
int ds_search(node *pNode, int elem)
{
    node *target;
    int i=1;

    for(target=pNode; target->data != elem && target->next != pNode; ++i)
    {
        target = target->next;
    }

    if(target->next == pNode)
        return 0;
    else
        return i;
}

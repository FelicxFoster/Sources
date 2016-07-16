#include <stdio.h>
#include <stdlib.h>



/*删除结点*/
void ds_delete(node **pNode, int i)
{
    node *temp;
    node *target;
    int j=1;

    if(1 == i)  //删除的是第一个结点
    {
        for(target=*pNode; target->next != *pNode; target=target->next)
            ;    //target指向最后一个结点

        temp = *pNode;
        *pNode = (*pNode)->next;
        target->next = *pNode;
        free(temp);
    }
    else
    {
        target = *pNode;

        for( ; j<i-1; ++j)
        {
            target = target->next;
        }  //target指向第i个元素

        temp = target->next;
        target->next = temp->next;
        free(temp);
    }

}

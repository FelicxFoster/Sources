#include <stdio.h>
#include <stdlib.h>



/*ɾ�����*/
void ds_delete(node **pNode, int i)
{
    node *temp;
    node *target;
    int j=1;

    if(1 == i)  //ɾ�����ǵ�һ�����
    {
        for(target=*pNode; target->next != *pNode; target=target->next)
            ;    //targetָ�����һ�����

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
        }  //targetָ���i��Ԫ��

        temp = target->next;
        target->next = temp->next;
        free(temp);
    }

}

#include <stdio.h>
#include <stdlib.h>


/*������*/
/*����������ĵ�һ����㣬����λ��i*/
void ds_insert(node **pNode, int i)
{
    node *temp;
    node *target;
    node *p;
    int item;
    int j;

    printf("������Ҫ�������ֵ��");
    scanf("%d", &item);

    if(1 == i)
    {
        //�²�������Ϊ��һ�����
        temp = (node *)malloc(sizeof(struct CLinkList));
        if(!temp)
            exit(0);
        temp->data = item;

        for(target=(*pNode); target->next != (*pNode); target=target->next)
            ;

        temp->next = (*pNode);
        target->next = temp;
        *pNode = temp;   //*pNode����ָ���һ��Ԫ��  ����
    }
    else
    {
        target = *pNode;  //*pNodeָ���һ��Ԫ�أ���

        for( ; j<(i-1); ++j)    //ִ��i-1�� targetָ���i��Ԫ��?
        {
            target = target->next;
        }

        temp = (node*)malloc(sizeof(struct CLinkList));
        if(!temp)
            exit(0);

        temp->data = item;   //why not target?
        p = target->next;
        target->next = temp;
        temp->next = p;
    }
}

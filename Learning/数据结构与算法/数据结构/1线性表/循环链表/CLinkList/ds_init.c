#include <stdio.h>
#include <stdlib.h>

typedef struct CLinkList
{
    int data;
    struct CLinkList *next;
}node;

/*��ʼ��ѭ������*/
void ds_init(node **pNode)
{
    int item;
    node *temp;
    node *target;

    printf("���������ֵ������0��ɳ�ʼ��\n");

    while(1)
    {
        scanf("%d", &item);
        fflush(stdin);

        if(0 == item)
        {
            return;
        }

        if((*pNode) == NULL)
        { /*ѭ��������ֻ��һ�����*/
            *pNode = (node*)malloc(sizeof(struct CLinkList));

            if(!(*pNode))
                exit(0);

            (*pNode)->data = item;
            (*pNode)->next = *pNode;
        }
        else
        {
            /*�ҵ�nextָ���һ�����Ľ��*/
            for(target=(*pNode); target->next != (*pNode); target = target->next)
                ;

            /*����һ���½ڵ�*/
            temp = (node*)malloc(sizeof(struct CLinkList));

            if(!temp)
                exit(0);

            temp->data = item;
            temp->next = *pNode;
            target->next = temp;

        }
    }
}

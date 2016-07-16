#include <stdio.h>
#include <stdlib.h>


/*插入结点*/
/*参数：链表的第一个结点，插入位置i*/
void ds_insert(node **pNode, int i)
{
    node *temp;
    node *target;
    node *p;
    int item;
    int j;

    printf("请输入要插入结点的值：");
    scanf("%d", &item);

    if(1 == i)
    {
        //新插入结点作为第一个结点
        temp = (node *)malloc(sizeof(struct CLinkList));
        if(!temp)
            exit(0);
        temp->data = item;

        for(target=(*pNode); target->next != (*pNode); target=target->next)
            ;

        temp->next = (*pNode);
        target->next = temp;
        *pNode = temp;   //*pNode重新指向第一个元素  名字
    }
    else
    {
        target = *pNode;  //*pNode指向第一个元素？？

        for( ; j<(i-1); ++j)    //执行i-1次 target指向第i个元素?
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

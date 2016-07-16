#include <stdio.h>
#include <stdlib.h>


//查找元素elem在链表中位于第几个位置
void ds_traverse(node *pNode)
{
    node *temp;
    temp = pNode;

    printf("*************链表中的元素***************\n");

    do
    {
        printf("%-4d", temp->data);
    }while((temp = temp->next) != pNode);

    printf("\n");
}

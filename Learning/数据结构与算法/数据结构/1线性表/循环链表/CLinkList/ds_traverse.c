#include <stdio.h>
#include <stdlib.h>


//����Ԫ��elem��������λ�ڵڼ���λ��
void ds_traverse(node *pNode)
{
    node *temp;
    temp = pNode;

    printf("*************�����е�Ԫ��***************\n");

    do
    {
        printf("%-4d", temp->data);
    }while((temp = temp->next) != pNode);

    printf("\n");
}

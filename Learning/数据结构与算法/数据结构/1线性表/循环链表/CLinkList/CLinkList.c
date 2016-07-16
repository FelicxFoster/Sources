#include <stdio.h>
#include <stdlib.h>

#include "ds_init.c"
#include "ds_insert.c"
#include "ds_delete.c"
#include "ds_search.c"
#include "ds_traverse.c"


int main()
{
    node *pHead = NULL;
    char opp;
    int find;

    printf("\================\n1.��ʼ������\n\n2.������\n\n3.ɾ�����\n\n4.���ؽ��λ��\n================\n");

    while(opp != '0')
    {
        scanf("%c", opp);
        switch(opp)
        {
        case '1':
            ds_init(&pHead);
            printf("\n");
            ds_traverse(pHead);
            break;
        case '2':
            printf("��������Ҫ�������λ�ã�");
            scanf("%d", &find);
            ds_insert(&pHead, find);
            printf("��λ��%d����ֵ��\n", find);
            ds_traverse(pHead);
            printf("\n");
            break;
        case '3':
            printf("��������Ҫɾ������λ�ã�\n");
            scanf("%d", &find);
            ds_delete(&pHead, find);
            printf("ɾ����%d������:\n", find);
            ds_traverse(pHead);
            printf("\n");
            break;
        case '4':
            printf("��������Ҫ���ҵ�Ԫ��ֵ��");
            scanf("%d", &find);
            printf("Ԫ��%d�ٽ���е�λ��Ϊ%d", find, ds_search(pHead, find));
            printf("\n");
            break;
        case '5':
            ds_traverse(pHead);
            printf("\n");
            break;
        case '0':
            exit(0);
        }
    }
    return 0;
}


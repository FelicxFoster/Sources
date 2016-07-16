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

    printf("\================\n1.初始化链表\n\n2.插入结点\n\n3.删除结点\n\n4.返回结点位置\n================\n");

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
            printf("请输入需要插入结点的位置：");
            scanf("%d", &find);
            ds_insert(&pHead, find);
            printf("在位置%d插入值后：\n", find);
            ds_traverse(pHead);
            printf("\n");
            break;
        case '3':
            printf("请输入需要删除结点的位置：\n");
            scanf("%d", &find);
            ds_delete(&pHead, find);
            printf("删除第%d个结点后:\n", find);
            ds_traverse(pHead);
            printf("\n");
            break;
        case '4':
            printf("请输入需要查找的元素值：");
            scanf("%d", &find);
            printf("元素%d再结点中的位置为%d", find, ds_search(pHead, find));
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


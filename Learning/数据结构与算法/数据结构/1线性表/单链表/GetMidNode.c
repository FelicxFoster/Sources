
Status GetMidNode(LinkList L, ElemType *e)
{
    LinkList searh, mid;
    mid = search = L;

    while(search->next != NULL)
    {
        if(search->next->next != NULL)  //search的速度是mid的2倍
        {                               //search到结尾时mid刚好到中间
            search = search->next->next;
            mid = mid->next;
        }
        else
        {
            search = search->next;
            mid = mid->next;
        }
    }

    *e = mid->data;

    return OK;
}

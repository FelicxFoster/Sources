
Status GetMidNode(LinkList L, ElemType *e)
{
    LinkList searh, mid;
    mid = search = L;

    while(search->next != NULL)
    {
        if(search->next->next != NULL)  //search���ٶ���mid��2��
        {                               //search����βʱmid�պõ��м�
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

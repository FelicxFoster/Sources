//假设A B为非空循环链表的为指针
LinkList Connect(LinkList A, LinkList B)
{
    LinkList p = A->next;   //A->next 头结点位置 保存

    A->next = B->next->next; //B->next->next 开始结点位置 连到A尾

    free(B->next);   //释放B的头结点

    B->next = p;  //B尾 连到 A头

    return B;   //返回新循环链表的 尾指针
}

//����A BΪ�ǿ�ѭ�������Ϊָ��
LinkList Connect(LinkList A, LinkList B)
{
    LinkList p = A->next;   //A->next ͷ���λ�� ����

    A->next = B->next->next; //B->next->next ��ʼ���λ�� ����Aβ

    free(B->next);   //�ͷ�B��ͷ���

    B->next = p;  //Bβ ���� Aͷ

    return B;   //������ѭ������� βָ��
}

#include <stdio.h>
#include <stdlib.h>



typedef char ElemType;
typedef struct QNode
{
    ElemType data;
    struct QNode *next;
}QNode, *QueuePrt;

typedef struct
{
    QueuePrt front;
    QueuePrt rear;
}LinkQueue;

void InitQueue(LinkQueue *q)    //��ʼ��һ���ն���
{
    q->front = q->rear = (QueuePrt)malloc(sizeof(QNode));
    if(!q->front)
        exit(0);

    q->front->next = NULL;
}

void InsertQueue(LinkQueue *q, ElemType e) //����� ֻ�ܴӶ�β
{
    QueuePrt p;
    p = (QueuePrt)malloc(sizeof(QNode));
    if(!p)
        exit(0);
    p->data = e;
    p->next = NULL;

    q->rear->next = p;
    q->rear = p;
}

void DeleteQueue(LinkQueue *q, ElemType *e) //������ ֻ�ܴӶ�ͷ
{
    QueuePrt p;

    if(q->front == q->rear) //�ն���
        return;

    p = q->front->next;  //pָ���һ��Ԫ��
    *e = p->data;

    q->front->next = p->next;  //������һ��Ԫ��

    if(p == q->rear)    //ֻ��һ��Ԫ��  Ҫ�޸Ķ�βָ��
        q->rear = q->front;

    free(p);    //�ͷŵ�һ��Ԫ�صĿռ�
}

void DestroyQueue(LinkQueue *q)
{
    while(q->front)
    {
        q->rear = q->front->next;   //һ������...
        free(q->front);
        q->front = q->rear;
    }
}


int main()
{
    LinkQueue q;
    char c;

    InitQueue(&q);

    printf("Please input a string(# to stop):\n");
    scanf("%c", &c);
    while(c != '#')
    {
        InsertQueue(&q, c);
        scanf("%c", &c);
    }

    DeleteQueue(&q, &c);
    while(q.front->next)
    {
        printf("%c", c);
        DeleteQueue(&q, &c);
    }

    printf("\n");
    system("pause");
    return 0;
}

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

void InitQueue(LinkQueue *q)    //初始化一个空队列
{
    q->front = q->rear = (QueuePrt)malloc(sizeof(QNode));
    if(!q->front)
        exit(0);

    q->front->next = NULL;
}

void InsertQueue(LinkQueue *q, ElemType e) //入队列 只能从队尾
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

void DeleteQueue(LinkQueue *q, ElemType *e) //出队列 只能从队头
{
    QueuePrt p;

    if(q->front == q->rear) //空队列
        return;

    p = q->front->next;  //p指向第一个元素
    *e = p->data;

    q->front->next = p->next;  //跳过第一个元素

    if(p == q->rear)    //只有一个元素  要修改队尾指针
        q->rear = q->front;

    free(p);    //释放第一个元素的空间
}

void DestroyQueue(LinkQueue *q)
{
    while(q->front)
    {
        q->rear = q->front->next;   //一步两步...
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

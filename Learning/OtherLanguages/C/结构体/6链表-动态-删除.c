#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>

#define LEN sizeof(struct student) //student�ṹ�Ĵ�С

struct student *create();    //��������
struct student *del(struct student *head, int num); //ɾ��headͷָ������� ��num���
void print(struct student *head); //��ӡ����
int n; //ȫ�ֱ��� ������¼����˶�������

struct student
{
    long num;
    float score;
    struct student *next;
};

void main()
{
    struct student *stu;
    int n;

    stu = create();
    print(stu);

    printf("\nInput the num to be deleted:");
    scanf("%ld", &n);
    print(del(stu, n));

    printf("\n\n");
    system("pause");
}

struct student *create()
{
    struct student *head, *p1, *p2;

    p1 = p2 = (struct student *)malloc(LEN);

    printf("Please enter the num:");
    scanf("%d", &p1->num);
    printf("Please enter the score:");
    scanf("%f", &p1->score);

    head = NULL;
    n = 0;

    while(p1->num)
    {
        n++;
        if(1 == n)
        {
            head = p1;
        }
        else
        {
            p2->next = p1;
        }
        p2 = p1;
        p1 = (struct student *)malloc(LEN);

        printf("Please enter the num:");
    scanf("%d", &p1->num);
    printf("Please enter the score:");
    scanf("%f", &p1->score);
    }
    p2->next = NULL;

    return head;
};

void print(struct student *head)
{
    struct student *p;
    printf("\nThere are %d records!\n\n", n);

    p = head;

    do
    {
        printf("ѧ��Ϊ%d�ĳɼ��ǣ�%.1f\n", p->num, p->score);
        p = p->next;
    }while(p);
}

struct student *del(struct student *head, int num)
{
    struct student *p1, *p2;

    if(NULL == head)
    {
        printf("This is an empty list!\n");
        goto END;
    }

    p1 = head;
    while(p1->num != num && p1->next != NULL)
    {
        p2 = p1;
        p1 = p1->next;
    }
    if(num == p1->num)
    {
        if(p1 ==head)  //û����whileѭ�� Ҫɾ���Ľ��Ϊͷ���
        {
            head = p1->next; //headָ����һ������NULL
        }
        else
        {
            p2->next = p1->next; //����p1-num ʵ��ɾ��
        }
        printf("\nDelete No:%d succeed!\n", num);
        n--;
    }
    else
    {
        printf("%d is not in list!\n", num);
    }
END:
    return head;
};

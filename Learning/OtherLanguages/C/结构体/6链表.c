#include <stdio.h>

struct student
{
    char *name;
    float score;
    struct student *next;  //这是关键！！
};

void main()
{
    struct student a, b, c, *head;

    a.name = "John";
    a.score = 90.0;
    b.name = "Tom";
    b.score = 80.0;
    c.name = "Jimmy";
    c.score = 85.0;

    head = &a;
    a.next = &b;
    b.next = &c;
    c.next = NULL;

    do
    {
        printf("Name  = %s\nScore = %.1f\n\n", head->name, head->score);
        head = head->next;  //指向下一个地址  *head==a  head->next==(*head).next==a.next==&b
    }while(head);  //直到指向NULL（0）

}

#include <stdio.h>
#include <stdlib.h>

#define NUM 3

struct person
{
    char name[20];
    char phone[20];
};

void main()
{
    int i;
    struct person man[10];

    for(i=0; i<NUM; i++)
    {
        printf("Input name:\n");
        gets(man[i].name);    //gets()
        printf("Input phone:\n");
        gets(man[i].phone);
    }
    printf("\n%-20s%-15s\n", "Name", "Phone");

#if(1)
    for(i=0; i<NUM; i++)
    {
        printf("%-20s%-15s\n", man[i].name, man[i].phone);
    }
#endif

    getchar();
}

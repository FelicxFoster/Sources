#include <stdio.h>

int main()
{
    void printstar();  //��������
    void print_message();

    printstar();  //���ú���
    print_message();
    printstar();

    return 0;
}

void printstar()  //���庯��
{
    printf("**********\n");
}

void print_message()
{
    printf("HaHaHaHa\n");
}

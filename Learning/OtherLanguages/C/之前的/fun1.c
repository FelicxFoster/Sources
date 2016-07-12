#include <stdio.h>

int main()
{
    void printstar();  //声明函数
    void print_message();

    printstar();  //调用函数
    print_message();
    printstar();

    return 0;
}

void printstar()  //定义函数
{
    printf("**********\n");
}

void print_message()
{
    printf("HaHaHaHa\n");
}

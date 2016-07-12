#include <stdio.h>

void hanoi(int x, char a, char b, char c);
long count=0;  //global variable

void main()
{
    int n;

    printf("Input the number of tower:");
    scanf("%d", &n);

    hanoi(n, 'A', 'B', 'C');

    printf("steps = %ld\n", count);

    getch();
}

void hanoi(int x, char a, char b, char c)
{
    if(1 == x)
    {
        printf("%c -> %c\n", a, c);  //结束递归
        count++;
    }
    else
    {
        hanoi(x-1, a, c, b);
        printf("%c -> %c\n", a, c);
        hanoi(x-1, b, a, c);
        count++;
    }
}

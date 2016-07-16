#include <stdio.h>

int count = 0;

//��n�����Ӵ�x ����y �ƶ���z
void hanoi(int n, char x, char y, char z)
{
    if(1 == n)
    {
        printf("%c -> %c\n", x, z);
        count++;
    }
    else
    {
        hanoi(n-1, x, z, y);
        printf("%c -> %c\n", x, z);
        hanoi(n-1, y, x, z);
        count++;
    }
}

int main()
{
    int n;
    printf("Please input the number:");
    scanf("%d", &n);

    hanoi(n, 'X', 'Y', 'Z');
    printf("\nTotal steps = %d\n", count);
    return 0;
}

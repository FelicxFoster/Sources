#include <stdio.h>

void main()
{
    int *search(int (*)[4], int);
    int score[][4] = {{60, 65, 66, 69}, {71, 73, 77, 79}, {80, 84, 82, 85}, {90, 93, 92, 99}};
    int *s;
    int i, m;

    printf("Please input the number of student:\n");
    scanf("%d", &m);

    s = search(score, m);  //sΪ��m�е�һ��Ԫ�صĵ�ַ
    printf("The grades of student %d are:\n", m);
    for(i=0; i<4; i++)
    {
        printf("%-4d", *(s+i)); //s+i ��m�е�i�е�Ԫ�صĵ�ַ
    }
    printf("\n");
}

int *search(int (*p)[4], int x) // p = score  ��0�е�һ��Ԫ�صĵ�ַ  == *score  score[0]  &score[0]  &score[0][0]
{
    return *p+x;  //���� ��x�е�һ��Ԫ�صĵ�ַ
}

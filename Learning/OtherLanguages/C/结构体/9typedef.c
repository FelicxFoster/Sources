#include <stdio.h>

typedef int NUM[100];  //����NUMΪ������������

void main()
{
    NUM n = {0};
    int i;
    printf("%d", sizeof(n));

    for(i=0; i<100; i++)
    {
        if(0 == i%10) printf("\n");
        printf("%d", n[i]);
    }
}

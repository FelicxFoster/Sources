#include <stdio.h>
#include <stdlib.h>

#define N 10

void main()
{
    int i, j;
    for(i=1; i<=N; i++)
    {
        for(j=N-i; j>=1; j--)
        {
            printf(" ");
        }

        for(j=1; j<=2*i-1; j++)
        {
            printf("*");
        }

        printf("\n");
    }
    printf("\n");
    system("pause");
}

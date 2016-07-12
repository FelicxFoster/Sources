#include <stdio.h>

void main()
{
    int i, j, a[9][9];
    for(i=1; i<10; i++)
    {
        for(j=1; j<10; j++)
        {
            a[i-1][j-1] = i * j;
            if(0 == j-1%9) printf("\n\n");
            printf("%-5d ", a[i-1][j-1]);
        }
    }
    printf("\n\n");
}

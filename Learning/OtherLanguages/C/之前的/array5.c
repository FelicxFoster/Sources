#include <stdio.h>

void main()
{
    int i, j, a[2][3]={1,2,3,4,5,6}, b[3][2];
    printf("array a:\n");
    for(i=0; i<2; i++)
    {
        for(j=0; j<3; j++)
        {
            printf("%2d", a[i][j]);
            b[j][i] = a[i][j];
        }
        printf("\n");
    }
    printf("\narray b:\n");
    for(i=0; i<3; i++)
    {
        for(j=0; j<2; j++)
        {
            printf("%2d", b[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

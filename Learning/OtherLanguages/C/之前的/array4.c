#include <stdio.h>

void main()
{
    int i, j, a[3][3];
    printf("Input a 3x3 array:\n");
    for(i=0; i<3; i++)
    {
        for(j=0; j<3; j++)
        {
            scanf("%d", &a[i][j]);
        }
    }

    for(i=0; i<3; i++)
    {
        for(j=0; j<3; j++)
        {
            if(0 == j%3) printf("\n");
            if(1==i || 1==j)
            {
                printf("%6d", a[i][j]);
            }
            else
            {
                printf("%6c", ' ');
            }
        }
    }
}

#include <stdio.h>

void main()
{
    int i, j, sum=0, a[3][3] = {1, 2, 3, 4, 5, 6, 7, 8, 9};

    for(i=0; i<3; i++)
    {
        for(j=0; j<3; j++)
        {
            if(i == j || 2 == (i+j))
            {
                sum += a[i][j];
            }
        }
    }
    printf("sum=%d\n", sum);
}

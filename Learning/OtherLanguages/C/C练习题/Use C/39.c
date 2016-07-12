#include <stdio.h>

void main()
{
    int a[10] = {1, 1, 2, 3, 5, 8, 13, 21, 34};
    int n, i, j;


    printf("Please input the number to be inserted:");
    scanf("%d", &n);

    for(i=0; i<9; i++)
    {
        if(n <= a[i])
        {
            for(j=9;j>i;j--)
            {
                a[j] = a[j-1];
            }
            a[i] = n;
            break;
        }
        else
        {
            a[9] = n;
        }

    }

    for(i=0; i<10; i++)
    {
        printf("%d ", a[i]);
    }
}

#include <stdio.h>

void main()
{
    int i, max, a[10];
    printf("Input 10 numbers\n");
    for(i=0; i<10; i++)
    {
        printf("number%d:", i+1);
        scanf("%d", &a[i]);
    }
    max = a[0];
    for(i=0; i<10; i++)
    {
        if(a[i]>max)
        {
            max = a[i];
        }
    }
    printf("maxnumber=%d\n", max);
}

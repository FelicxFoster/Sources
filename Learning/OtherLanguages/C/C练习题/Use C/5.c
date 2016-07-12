#include <stdio.h>

#define N 10

void main()
{
    int i, j, temp, a[N];

    printf("Please input %d number:", N);
    for(i=0; i<N; i++)
    {
        scanf("%d", &a[i]);
    }
#if(1)
    for(i=0; i<N-1; i++)    //Ã°ÅÝ·¨ÅÅÐò
    {
        for(j=0; j<N-i; j++)
        {
            if(a[j]>a[j+1])
            {
                temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }
        }
    }
#endif
    for(i=0; i<N-1; i++)
    {
        printf("%d < ", a[i]);
    }
    printf("%d\n", a[N-1]);


}

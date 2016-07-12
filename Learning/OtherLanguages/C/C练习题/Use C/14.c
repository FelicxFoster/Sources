#include <stdio.h>
#include <math.h>

void main()
{
    int i, n;

    printf("Input a number:");
    scanf("%d", &n);

    printf("\n%d=", n);
    for(i=2; i<n; )
    {

        if(0 == n%i)
        {
            n = n / i;
            printf("%dx", i);
        }
        else
        {
            i++;
        }
    }
    printf("%d\n", n);
}

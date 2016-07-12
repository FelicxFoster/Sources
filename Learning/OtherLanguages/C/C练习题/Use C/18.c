#include <stdio.h>

void main()
{
    int i, a, n, sum, temp;

    printf("Input a and n: ");
    scanf("%d%d", &a, &n);

    temp = a;
    sum = a;
    printf("sum=%d", a);
    for(i=1; i<n; i++)
    {
        a = a*10 + temp;
        sum += a;
        printf("+%d", a);
    }

    printf("=%d\n", sum);
}

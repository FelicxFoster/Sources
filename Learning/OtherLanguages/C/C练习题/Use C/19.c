#include <stdio.h>

void main()
{
    int i, n, sum;

    for(n=2; n<1000; n++)
    {
        sum = 0;

        for(i=2; i<n; i++)
        {
            if(0 == n%i)
            {
                sum += i;
            }
        }
        sum++;

        if(n == sum)  //������ һ����=����֮��
        {
            printf("%d ", n);
        }

    }
}

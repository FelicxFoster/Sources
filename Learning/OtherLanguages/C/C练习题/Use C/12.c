#include <stdio.h>
#include <math.h>

void main()
{
    int m, i, count=0, leaf=1;

    for(m=101; m<=500; m++)
    {
        for(i=2; i<sqrt(m); i++)  //判断一个数是否为素数
        {
            if(0 == m%i)
            {
                leaf = 0;
                break;
            }
        }
        if(leaf)
        {
            printf("%d ", m);
            count++;
            if(0 == count%10)
            {
                printf("\n");
            }
        }
        leaf = 1;
    }
    printf("\nTotal = %d\n", count);
}

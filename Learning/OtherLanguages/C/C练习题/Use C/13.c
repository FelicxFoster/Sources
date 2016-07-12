#include <stdio.h>

void main()
{
    int i, j, k;

    for(i=1; i<10; i++)  //百位
    {
        for(j=0; j<10; j++) //十位
        {
            for(k=0; k<10; k++)  //个位
            {
                if(i*100+j*10+k == i*i*i+j*j*j+k*k*k)
                {
                    printf("%d%d%d\n", i, j, k);
                }
            }
        }
    }
}

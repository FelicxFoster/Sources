#include <stdio.h>

void main()
{
    int i, j, k;

    for(i=1; i<10; i++)  //��λ
    {
        for(j=0; j<10; j++) //ʮλ
        {
            for(k=0; k<10; k++)  //��λ
            {
                if(i*100+j*10+k == i*i*i+j*j*j+k*k*k)
                {
                    printf("%d%d%d\n", i, j, k);
                }
            }
        }
    }
}

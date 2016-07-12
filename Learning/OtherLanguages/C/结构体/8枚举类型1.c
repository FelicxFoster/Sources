#include <stdio.h>

void main()
{
    enum boy{Tom, Danny, Gan, Lilei}month[31], j;
    int i;

    j = Tom;


#if(1)
    for(i=1; i<=30; i++)  //相当于 month[i+1] = (month[i] + 1) % 4
    {
        month[i] = j;
        j++;

        if(j>Lilei)
        {
            j = Tom;
        }
    }
#endif

#if(0)
    month[1] = 0;
    for(i=1; i<=30; i++)
    {
        month[i+1] = (month[i] + 1) % 4;
    }
#endif

    for(i=1; i<=30; i++)
    {
        switch(month[i])
        {
            case 0: printf("%5d %s\t", i, "Tom"); break;  //  \t ?? 为什么能自动对齐呢？？
            case 1: printf("%5d %s\t", i, "Danny"); break;
            case 2: printf("%5d %s\t", i, "Gan"); break;
            case 3: printf("%5d %s\t", i, "Lilei");break;
            //default: break;
        }
    }
    getchar();
}

#include <stdio.h>

void main()
{
    int i, num=2;

    for(i=0; i<3; i++)
    {
        printf("num = %d\n", num);
        num++;
        {
            static int num = 1;
            printf("the internal block num = %d\n", num);
            num++;
        }

    }
}

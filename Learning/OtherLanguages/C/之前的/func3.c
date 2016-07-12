#include <stdio.h>

int main()
{
    int blank=0, others=0, num=0;
    char c;
    while((c = getchar()) != EOF)
    {
        if(c>='0' && c <='9')
            num++;
        else if(c==' ' || c=='\t' || c=='\r')
            blank++;
        else
            others++;
    }
    printf("num=%d\nblank=%d\nothers=%d\n", num, blank, others);
    }

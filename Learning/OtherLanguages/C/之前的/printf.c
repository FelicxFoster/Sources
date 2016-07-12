#include <stdio.h>

void main()
{
    int i=8, j=8;
    printf("%d\n%d\n%d\n%d\n%d\n%d\n%d\n", i,++i,--i,i++,i--,-i++,-i--);
    printf("%d\n", ++j);
    printf("%d\n", --j);
    printf("%d\n", j++);
    printf("%d\n", j--);
    printf("%d\n", -j++);
    printf("%d\n", -j--);
}

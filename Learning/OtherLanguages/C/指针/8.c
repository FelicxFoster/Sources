#include <stdio.h>

void main()
{
    int i, a[] = {1, 3, 5, 7, 9};
    int *b[] = {&a[0], &a[1], &a[2], &a[3], &a[4]};
    for(i=0; i<5; i++)
    {
        printf("%d  ", *b[i]);
    }
}

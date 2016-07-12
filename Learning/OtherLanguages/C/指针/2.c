#include <stdio.h>

void main()
{
    int i, a[5] = {1, 3 ,5, 7, 9};
    int *pointer;
    pointer = a;
    for(i=0; i<5; i++)
    {
        printf("%d\n", *pointer);
        pointer++;
    }

}

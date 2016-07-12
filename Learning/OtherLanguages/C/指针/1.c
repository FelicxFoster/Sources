#include <stdio.h>

void main()
{
    int i=10;
    int *pointer;
    pointer = &i;
    printf("%d\n", *pointer);
}

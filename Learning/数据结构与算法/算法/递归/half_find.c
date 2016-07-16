#include <stdio.h>
#include <stdlib.h>

int find(int low, int high, int *a, int num)
{
    int mid = (high+low) / 2;
    if(low > high)
    {
        printf("No exist~\n");
        return -1;
    }
    if(num == a[low])
    {
        printf("The index of %d is : %d\n", num, low);
        return 0;
    }
    if(num == a[high])
    {
        printf("The index of %d is : %d\n", num, high);
        return 0;
    }

    if(num == a[mid])
    {
        printf("The index of %d is : %d\n", num, mid);
        return 0;
    }
    else if(num < a[mid])
    {
        find(low+1, mid-1, a, num);
    }
    else
    {
        find(mid+1, high-1, a, num);
    }

    return 0;
}

int main()
{
    int a[] = {1,2,3,5,8,13,21,34,55,89};
    int n, high;
    high = sizeof(a)/sizeof(int);
    printf("%d", high);

    printf("Please input the number to be searched(! to stop):\n");

    do
    {
        scanf("%d", &n);
        find(0, high, a, n);
    }while(getchar() != '!');



    return 0;
}

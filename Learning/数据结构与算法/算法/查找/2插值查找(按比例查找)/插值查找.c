#include <stdio.h>

int bin_search(int str[], int n, int key)
{
    int low, high, mid;

    low = 0;
    high = n-1;

    while( low <= high )
    {
        //!和折半查找唯一的不同在于
        mid = low + (key-str[low])/(str[high]-str[low]) * (high-low);

        if( str[mid] == key )
        {
            return mid;
        }
        if( str[mid] < key )
        {
            low = mid + 1;
        }
        if( str[mid] > key )
        {
            high = mid - 1;
        }
    }
    return -1;
}

int main()
{
    int str[] = {1, 1, 2, 3, 5, 8, 13, 21, 24, 55, 89};
    int n, addr;

    printf("Please input the key words: ");
    scanf("%d", &n);

    addr = bin_search(str, sizeof(str), n);

    if( -1 != addr )
    {
        printf("The index of %d is %d\n", n, addr);
    }
    else
    {
        printf("%d is not in array\n", n);
    }

    return 0;
}

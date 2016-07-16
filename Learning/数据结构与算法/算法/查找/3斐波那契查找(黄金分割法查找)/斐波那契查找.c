#include <stdio.h>

#define MAXSIZE 13

void fib(int *f)
{
    int i;
    f[0]=f[1]=1;
    for( i=2; i<MAXSIZE; i++)
    {
        f[i] = f[i-1] + f[i-2];
    }
}
int fib_search(int *a, int n, int key)
{
    int low, high, mid;
    low = 1;
    high = n-1;

    int i, k=0;
    int F[MAXSIZE];
    fib(F);

    while( n > F[k]-1 )  //F[k]-1定位到比数组个数n大的那位
    {
        k++;
    }

    for( i=n; i<F[k]-1; i++ ) //如果不足 扩充待查数组
    {
        a[i] = a[high];
    }

    while( low<=high )
    {
        mid = low + F[k-1]-1;  //!

        if( key < a[mid] )
        {
            high = mid - 1;
            k = k-1;
        }
        else if( key > a[mid] )
        {
            low = mid + 1;
            k = k-1;
        }
        else
        {
            if( mid <= high )
                return mid;
            else
                return n;
        }
    }
    return -1;
}

int main()
{
    int str[] = {1, 1, 2, 3, 5, 8, 13, 21, 24, 55, 89};
    int key, addr;

    printf("Please input the key words: ");
    scanf("%d", &key);

    addr = fib_search(str, sizeof(str), key);

    if( -1 != addr )
    {
        printf("The index of %d is %d\n", key, addr);
    }
    else
    {
        printf("%d is not in array\n", key);
    }

    return 0;
}

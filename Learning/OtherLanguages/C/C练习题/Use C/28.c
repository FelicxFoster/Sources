#include <stdio.h>

int func(int n)
    {
        if(n == 1)
        {
            return 10;
        }
        else
        {
            return func(n-1) + 2;  //µÝ¹é
        }
    }

void main()
{
    int i=1, age=10;
    while(i<5)
    {
        age += 2;                  //µü´ú
        i++;
    }
    printf("%d\n", age);

    printf("%d\n", func(5));

}

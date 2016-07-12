/*********************************
*将字符串按字母顺序从小到大输出*
*********************************/

#include <stdio.h>
#include <string.h>

void main()
{
    void sort(char *[], int);
    void print(char *[], int);

    char *name[] = {"FishC", "Dog", "Pig", "Chicken", "FishD", "Friend"};
    int n=6;

    sort(name, n);
    print(name, n);
}

#if(1)
void sort(char *name[], int n)
{
    char *temp;
    int i, j, k;
    for(i=0; i<n-1; i++)
    {
        k = i;
        for(j=i+1; j<n; j++)
        {
            if(strcmp(name[k], name[j])>0)
            {
                k = j;
            }
            if(k != i)  //说明k=j被执行 即name[i] > name[i+1]
            {
                temp = name[i];
                name[i] = name[k];
                name[k] = temp;
            }
        }
    }

}
#endif

void print(char *name[], int n)
{
    printf("sorted:\n");
    int i;
    for(i=0; i<n; i++)
    {
        printf("%s\n", name[i]);
    }
}

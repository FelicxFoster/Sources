/*********************************
*将字符串按字母顺序从小到大输出*
*********************************/

#include <stdio.h>

void main()
{
    int i, j;
    char *temp, *name[] = {"FishC", "Dog", "Pig", "Chicken", "FishD", "Friend"};
    for(i=0; i<6; i++)
    {
        printf("%s  ", name[i]);  //打印字符串 从指针到\0结束
    }

    printf("\n\n%c\n\n", *(name[1]+1));  //打印字符

    for(i=0; i<6; i++)
    {
        for(j=0; j<6-i; j++)
        {
            if(*name[j]>*name[j+1])  //冒泡法排序
            {
                temp = name[j];      //交换指针
                name[j] = name[j+1];
                name[j+1] = temp;
            }
        }
    }
    for(i=0; i<6; i++)
    {
        printf("%s\n", name[i]);  //打印字符串 从指针到\0结束
    }
}

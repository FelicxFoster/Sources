#include <stdio.h>

void print(int array[]);

void main()
{
    int i, a[8] = {-2, 4, -7, 3, 5 ,8, -9, 15};
    print(a);  //用数组名作函数实参 必须和函数实参类型一致 传递的是地址 相当于添加了一个门牌号而已

}

void print(int array[])
{
    int j;
    for(j=0; j<8; j++)
    {
        if(array[j]>0)
        {
            printf("%-3d", array[j]);
        }
    }
}

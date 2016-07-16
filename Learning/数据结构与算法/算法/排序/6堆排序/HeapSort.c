/**大顶堆**/
#include <stdio.h>

int count1, count2;

void swap(int k[], int i, int j)
{
    count2++;
    int temp;

    temp = k[i];
    k[i] = k[j];
    k[j] = temp;
}

void HeapAdjust(int k[], int s, int n)
{
    int i, temp;

    temp = k[s];
    for( i=2*s; i<=n; i*=2 )
    {
        count1++;
        if( k[i]<k[i+1] && i+1<n ) //若左孩子 < 右孩子  //有bug：没有右孩子的情况
        {
            i++;                 //则k[i]变为右孩子
        }                        //否则 仍为左孩子
        if( temp >= k[i] )       //若根结点大
        {
            break;               //不用交换
        }
        k[s] = k[i];             //否则根结点赋值为较大者
        s = i;                   //根结点指向下一层
    }

    k[s] = temp;         //下一层的根结点 赋值为 原来的根结点
}

void HeapSort(int k[], int n)
{
    int i;

    for( i=n/2; i>0; i--)    //自下而上构建大顶堆
    {
        HeapAdjust(k, i, n); //i为当前根结点 n为最后一个结点
    }

    for( i=n; i>1; i--)
    {
        swap(k, 1, i);         //每次选出最后的一个元素（最大）
        HeapAdjust(k, 1, i-1); //重新调整成少一个元素的大顶堆
    }
}

int main()
{
    int i, a[]={-1,5,2,6,0,3,9,1,7,4,8};//下标0 丢弃掉 从1开始
    int len=sizeof(a)/sizeof(int);
    HeapSort(a, len-1);
    printf("排序后的结果是:\n");
    for(i=1; i<len; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n总共执行了%d次比较，%d次交换", count1, count2);

    printf("\n\n");

}

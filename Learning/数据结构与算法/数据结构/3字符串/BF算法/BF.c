
#include <stdio.h>

int BF(char s[], char t[], int n, int m)
{

    int i, j, k;
    int begin=-1;

    for(i=0; i<n-m+1; )
    {
        k = i;               //每次初始化
        for(j=0; j<m; j++)
        {
            if(t[j] != s[i]) //若t中第一个元素不同 则不再比较后面
            {
                begin = -1;  //表示为匹配
                i++;
                break;
            }
            else
            {
                i++;         //否则 比较下一个字符
            }
            begin = k;       //记录匹配成功的起始位置
        }
        if(begin != -1)
        {
            break;
        }
    }
    return begin;
}


int main()
{
    char s[] = "ILoveFish，ILoveFishC.com";
    char t[] = "Fish";
    int n, m, r;

    n = sizeof(s) - 1;  //'\0'
    m = sizeof(t) - 1;

    r = BF(s, t, n, m);

    if(r != -1)
    {
        printf("^_^匹配成功，起始位置下标为：%d\n", r);
    }
    else
    {
        printf("匹配失败T_T\n");
    }

    return 0;
}

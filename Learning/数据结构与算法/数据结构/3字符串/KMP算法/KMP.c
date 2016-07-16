#include <stdio.h>
#include <stdlib.h>

typedef char* String;

void get_next(String T, int *next)  //KMP算法核心：next数组
{
    int i, j;

    j = 0;
    i = 1;
    next[1] = 0;
    while( i < T[0] ) // T[0]存放长度
    {
        if( 0 == j || T[i] == T[j])
        {
            i++;
            j++;
            next[i] = j;
        }
        else
        {
            //j回溯
            j = next[j];  //!关键
        }
    }

    //因为前缀j是固定的，后缀i是相对的
}

//返回 子串T 在主串S 中第pos个字符之后的位置
//若不存在，则返回0
int Index_KMP(String S, String T, int pos)
{
     int i = pos;
     int j = 1;
     int next[255];

     get_next(T, next);

     while(i<=S[0] && j<=T[0])
     {
         if(0 == j || S[i] == T[j])
         {
             i++;
             j++;
         }
         else
         {
             j = next[j];  //!最高指导方案
         }
     }

     if(j>T[0])
     {
         return i - T[0];
     }
     else
     {
         return 0;
     }
}


int main()
{
    char s[255] = "ababababababababaaaba";
    char t[255] = "ababaaaba";
    int n;

    t[0] = 9;

    n = Index_KMP(s, t, 0);
    if(n)
    {
        printf("Succeed!\nIndex = %d\n", n);
    }
    else
    {
        printf("Failed!\n");
    }


    system("pause");
    return 0;
}

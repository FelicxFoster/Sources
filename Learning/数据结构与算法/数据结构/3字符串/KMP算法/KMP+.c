#include <stdio.h>
#include <stdlib.h>

typedef char* String;

void get_next(String T, int *next)  //KMP�㷨���ģ�next����
{
    int i, j;

    j = 0;
    i = 1;
    next[1] = 0;
    while( i < T[0] ) // T[0]��ų���
    {
        if( 0 == j || T[i] == T[j])
        {
            i++;
            j++;
            if(T[i] != T[j]) //һ�����
            {
                next[i] = j;
            }
            else  //������� �Ż�
            {
                next[i] = next[j];
            }
        }
        else
        {
            //j����
            j = next[j];  //!�ؼ�
        }
    }

    //��Ϊǰ׺j�ǹ̶��ģ���׺i����Ե�
}

//���� �Ӵ�T ������S ��pos���ַ�֮���λ��
//�������ڣ��򷵻�0
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
             j = next[j];  //!���ָ������
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

    s[0] = strlen(s);  //!?a�᲻�ᱻ������
    t[0] = strlen(t);


    n = Index_KMP(s, t, 5);
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

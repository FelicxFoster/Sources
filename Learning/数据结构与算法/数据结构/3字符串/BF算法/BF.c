
#include <stdio.h>

int BF(char s[], char t[], int n, int m)
{

    int i, j, k;
    int begin=-1;

    for(i=0; i<n-m+1; )
    {
        k = i;               //ÿ�γ�ʼ��
        for(j=0; j<m; j++)
        {
            if(t[j] != s[i]) //��t�е�һ��Ԫ�ز�ͬ ���ٱȽϺ���
            {
                begin = -1;  //��ʾΪƥ��
                i++;
                break;
            }
            else
            {
                i++;         //���� �Ƚ���һ���ַ�
            }
            begin = k;       //��¼ƥ��ɹ�����ʼλ��
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
    char s[] = "ILoveFish��ILoveFishC.com";
    char t[] = "Fish";
    int n, m, r;

    n = sizeof(s) - 1;  //'\0'
    m = sizeof(t) - 1;

    r = BF(s, t, n, m);

    if(r != -1)
    {
        printf("^_^ƥ��ɹ�����ʼλ���±�Ϊ��%d\n", r);
    }
    else
    {
        printf("ƥ��ʧ��T_T\n");
    }

    return 0;
}

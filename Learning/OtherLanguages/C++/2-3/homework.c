#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i;
    int sum=0;
    char ch;

    printf("������һ��������������Ŀ�Ŀո�:");
    while( scanf("%d", &i) == 1 )
    {
        sum += i;

        while( (ch=getchar()) == ' ' ) //���˿ո�
            ;
        if( ch == '\n' )
        {
            break;
        }
        ungetc( ch, stdin );   //!������ch�д�ŵ��ַ��˻ظ�stdin��������
    }

    printf("����ǣ�%d\n", sum);
    system("pause");
    return 0;
}

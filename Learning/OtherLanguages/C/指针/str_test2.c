#include <stdio.h>
#include <string.h>

void main()
{
    char a[20]="s b";
    char *b = "D S B";

    printf("%s\n", a);
    printf("%s\n", b);

    // a = "u s b"; //"u s b"Ϊchar *�� ���ܸ�ֵ��char[20]��
    //��θ��ַ�����a[]��ֵ�أ� ֻ��һ���ַ�һ���ַ���
    strcpy(a, "ha ha ha ^_^\n");
    printf("%s\n", a);

    b = "D U S B";
    printf("%s\n", b);
}

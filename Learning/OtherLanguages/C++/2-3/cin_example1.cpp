#include <iostream>

using namespace std;

int main()
{
    char buf[20];

    cin.ignore(7);  // ����ǰ7���ַ�
    cin.getline(buf,10); //��ȡ10-1���ַ�����Ϊ���һλ��0

    cout << buf << endl;

    return 0;
}

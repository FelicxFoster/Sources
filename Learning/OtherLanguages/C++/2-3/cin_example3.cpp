#include <iostream>

using namespace std;

int main()
{
    const int SIZE=50;
    char buf[SIZE];

    cout << "������һ���ı���\n";
    cin.read( buf, 20 );

    cout << "�ַ����ռ������ַ���Ϊ:"
        << cin.gcount() << endl;

    cout << "������ı���Ϣ�ǣ�";
    cout.write( buf, 20 );
    cout << endl;

    return 0;
}
#include <iostream>
#include <fstream>

using namespace std;

int main()
{
    fstream fp( "test.txt", ios::in | ios::out );
    if( !fp )
    {
        cerr << "�ļ���ʧ�ܣ�" << endl;
        return 0;
    }

    fp << "I love Fishc.com!";

    static char str[10];

    fp.seekg(ios::beg);  //ʹ���ļ�ָ��ָ���ļ�ͷios::end�����ļ�β
    fp >> str;
    cout << str <<endl;

    fp.close();

    return 0;
}

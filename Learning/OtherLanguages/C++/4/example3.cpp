#include <iostream>
#include <fstream>

using namespace std;

int main()
{
    ofstream out( "test.txt", ios::app ); //׷�ӵķ�ʽ��
    if( !out )
    {
        cerr << "�ļ���ʧ�ܣ�" << endl;
        return 0;
    }
    for( int i=10; i>0; i-- )
    {
        out << i;
    }
    out << endl;

    out.close();

    return 0;
}

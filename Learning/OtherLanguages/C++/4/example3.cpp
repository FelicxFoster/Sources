#include <iostream>
#include <fstream>

using namespace std;

int main()
{
    ofstream out( "test.txt", ios::app ); //追加的方式打开
    if( !out )
    {
        cerr << "文件打开失败！" << endl;
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

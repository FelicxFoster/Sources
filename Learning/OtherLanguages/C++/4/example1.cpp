#include <iostream>
#include <fstream>

using namespace std;

int main()
{
    ifstream in;

    in.open("test.txt");
    if( !in )
    {
        cerr << "���ļ�ʧ�ܣ�" << endl;
        return 0;
    }

    char x;
    while( in >> x )
    {
        cout << x;
    }
    cout << endl;
    in.close();

    return 0;
}

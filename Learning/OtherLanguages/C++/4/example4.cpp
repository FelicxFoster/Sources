#include <iostream>
#include <fstream>

using namespace std;

int main()
{
    fstream fp( "test.txt", ios::in | ios::out );
    if( !fp )
    {
        cerr << "文件打开失败！" << endl;
        return 0;
    }

    fp << "I love Fishc.com!";

    static char str[10];

    fp.seekg(ios::beg);  //使得文件指针指向文件头ios::end则是文件尾
    fp >> str;
    cout << str <<endl;

    fp.close();

    return 0;
}

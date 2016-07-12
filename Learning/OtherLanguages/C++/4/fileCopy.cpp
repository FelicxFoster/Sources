#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, char *argv[])
{
    if( argc != 3)
    {
        cerr << "请按以下形式输入:\n"
             << "fileCopy.exe 原文件名 目标文件名" << endl;
        return 0;
    }

    ifstream in(argv[1]);
    ofstream out(argv[2]);

    char x;
    for(int i=0; i<20; i++)  //!如何判断是否到文件末尾？
    {
        in >> x;
        out << x;
    }
    out << endl;

    in.close();
    out.close();

    return 0;
}

#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, char *argv[])
{
    if( argc != 3)
    {
        cerr << "�밴������ʽ����:\n"
             << "fileCopy.exe ԭ�ļ��� Ŀ���ļ���" << endl;
        return 0;
    }

    ifstream in(argv[1]);
    ofstream out(argv[2]);

    char x;
    for(int i=0; i<20; i++)  //!����ж��Ƿ��ļ�ĩβ��
    {
        in >> x;
        out << x;
    }
    out << endl;

    in.close();
    out.close();

    return 0;
}

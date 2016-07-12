#include <iostream>

using namespace std;

int main()
{
    char buf[20];

    cin.ignore(7);  // 忽略前7个字符
    cin.getline(buf,10); //获取10-1个字符，因为最后一位补0

    cout << buf << endl;

    return 0;
}

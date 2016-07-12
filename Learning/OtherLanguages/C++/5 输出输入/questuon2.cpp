/************************
*温度转换，提示输入格式*
*************************/
#include <iostream>
using namespace std;

int main()
{
    //!华氏度 = 摄氏度 * 1.8 + 32
    const unsigned short ADD_SUBTRACT = 32;
    const double RADIO = 9.0 / 5.0;

    double tempIn, tempOut;
    char typeIn, typeOut;


    cout << "请以【xx.x C】或【xx.x F】格式输入一个温度：";
start:
    cin >> tempIn >> typeIn;   //!关键
    cin.ignore(100, '\n' );  //忽略掉前100个字符内的回车
    cout << "\n";

    switch( typeIn )
    {
    case 'c':
    case 'C':
        tempOut = tempIn * RADIO + ADD_SUBTRACT;
        typeOut = 'F';
        typeIn = 'C';
        break;
    case 'f':
    case 'F':
        tempOut = (tempIn - ADD_SUBTRACT ) / RADIO;
        typeOut = 'C';
        typeIn = 'F';
        break;
    default:
        typeOut = 'E';
        break;
    }
    if( typeOut == 'E')
    {
        cout << "输入有误，请重新输入！" << endl;
        goto start;
    }
    cout << tempIn << typeIn<<" = "
        << tempOut << typeOut << endl;

    cout << "请按任意键结束程序^_^" << "\n";
    cin.get();

    return 0;
}

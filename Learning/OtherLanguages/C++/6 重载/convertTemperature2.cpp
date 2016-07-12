/***************
*函数的重载    *
****************/
#include <iostream>
using namespace std;

void convertTemperature(double tempIn, char typeIn );
void convertTemperature(int tempIn, char typeIn );

int main()
{
    double tempIn;
    int tempInInt;
    char typeIn;


    cout << "请以【xx.x C】或【xx.x F】格式输入一个温度：";
    cin >> tempIn >> typeIn;   //!关键
    cin.ignore(100, '\n' );  //忽略掉前100个字符内的回车
    cout << "\n";
    convertTemperature(tempIn, typeIn);

    cout << "请以【xx C】或【xx F】格式输入一个温度：";
    cin >> tempInInt >> typeIn;   //!关键
    cin.ignore(100, '\n' );  //忽略掉前100个字符内的回车
    cout << "\n";
    convertTemperature(tempInInt, typeIn);


    cout << "请按任意键结束程序^_^" << "\n";
    cin.get();
    return 0;
}

void convertTemperature(double tempIn, char typeIn)
{
    double tempOut;
    char typeOut;

    const unsigned short ADD_SUBTRACT = 32;
    const double RADIO = 9.0 / 5.0;

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
    if( typeOut != 'E')
    {
        cout << tempIn << typeIn<<" = "
        << tempOut << typeOut << endl;
    }
    else
    {
        cout << "输入有误，请重新输入！" << endl;
    }

}

void convertTemperature(int tempIn, char typeIn)
{
    int tempOut;
    char typeOut;

    const unsigned short ADD_SUBTRACT = 32;
    const double RADIO = 9.0 / 5.0;

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
    if( typeOut != 'E')
    {
        cout << tempIn << typeIn<<" = "
        << tempOut << typeOut << endl;
    }
    else
    {
        cout << "输入有误，请重新输入！" << endl;
    }
}

/***************
*����������    *
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


    cout << "���ԡ�xx.x C����xx.x F����ʽ����һ���¶ȣ�";
    cin >> tempIn >> typeIn;   //!�ؼ�
    cin.ignore(100, '\n' );  //���Ե�ǰ100���ַ��ڵĻس�
    cout << "\n";
    convertTemperature(tempIn, typeIn);

    cout << "���ԡ�xx C����xx F����ʽ����һ���¶ȣ�";
    cin >> tempInInt >> typeIn;   //!�ؼ�
    cin.ignore(100, '\n' );  //���Ե�ǰ100���ַ��ڵĻس�
    cout << "\n";
    convertTemperature(tempInInt, typeIn);


    cout << "�밴�������������^_^" << "\n";
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
        cout << "�����������������룡" << endl;
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
        cout << "�����������������룡" << endl;
    }
}

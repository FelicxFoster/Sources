/************************
*�¶�ת������ʾ�����ʽ*
*************************/
#include <iostream>
using namespace std;

int main()
{
    //!���϶� = ���϶� * 1.8 + 32
    const unsigned short ADD_SUBTRACT = 32;
    const double RADIO = 9.0 / 5.0;

    double tempIn, tempOut;
    char typeIn, typeOut;


    cout << "���ԡ�xx.x C����xx.x F����ʽ����һ���¶ȣ�";
start:
    cin >> tempIn >> typeIn;   //!�ؼ�
    cin.ignore(100, '\n' );  //���Ե�ǰ100���ַ��ڵĻس�
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
        cout << "�����������������룡" << endl;
        goto start;
    }
    cout << tempIn << typeIn<<" = "
        << tempOut << typeOut << endl;

    cout << "�밴�������������^_^" << "\n";
    cin.get();

    return 0;
}

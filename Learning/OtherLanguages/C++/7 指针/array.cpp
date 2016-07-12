#include <iostream>
#include <stdlib.h>

using namespace std;

//#define ITEM 5

int main()
{
    const unsigned short ITEM=5;

    int num[ITEM];

    cout << "Please input " << ITEM << " integer:\n";
    for( int i=0; i<ITEM; i++ )
    {
        cout << "Please input the " << i+1 <<"th number:";
        while( !(cin >> num[i]) )
        {
            cin.clear();
            cin.ignore(100,'\n');
            cout << "Please input a valid number!";
            cout << "\nPlease input the " << i+1 <<"th number:";

        }
    }

    int sum=0;
    for( int j=0; j<ITEM; j++ )
    {
        sum += num[j];
    }

    cout << "\nsum = " << sum << "\n\n";
    cout << "ave = " << (float)sum/ITEM << "\n\n";


    system("pause");
    return 0;
}

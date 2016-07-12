#include <iostream>

using namespace std;

int addArray(int *array, int n);

int main()
{
    int data[] = {0,1,2,3,4,5,6,7,8,9};
    int size = sizeof(data) / sizeof(int);

    //cout << "data = " << sizeof(data);

    cout << "\nSum = " << addArray(data, size) << endl;

    return 0;
}

int addArray(int *array, int n)
{
    int sum;
    int i;

    //cout << "\narray = " << sizeof(array);

    for( i=0; i<n; i++ )
    {
        sum += *array++;
    }
    return sum;
}


extern A;

int power(int m)
{
    int i, p=1;
    for(i=0; i<m; i++)
    {
        p *= A;
    }
    return p;
}

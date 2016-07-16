#基础版

def QuickSort(k):
    QSort( k, 0, len(k)-1 )

def QSort(k, low, high):
    if ( low < high ):
        point = Partition(k, low, high)
        QSort(k, low, point-1)
        QSort(k, point+1, high)

def Partition(k, low, high):
    point = k[low]
    while( low < high ):
        while( k[high]>=point and low<high ):
            high -= 1
        k[low],k[high] = k[high],k[low]
        while( k[low]<=point and low<high ):
            low += 1
        k[low],k[high] = k[high],k[low]
    return low
    

k = [55, 2, 8, 1, 34, 21, 5, 3, 89, 13]
QuickSort(k)

print("从小到大排列为:")
for i in k:
    print(i, end=' ')

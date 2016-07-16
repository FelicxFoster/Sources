#优化3：小数组时改用直接插入排序

def InsertSort(k):
    n = len(k)
    for i in range(1,n):
        if k[i] < k[i-1]:
            temp = k[i]
            j = i-1
            while( k[j]>temp and j>=0 ):
                k[j+1] = k[j]
                j -= 1
            k[j+1] = temp


def QuickSort(k):
    QSort( k, 0, len(k)-1 )

def QSort(k, low, high):
    if ( high-low > 7 ):
        point = Partition(k, low, high)
        QSort(k, low, point-1)
        QSort(k, point+1, high)
    else:
        InsertSort(k)

def Partition(k, low, high):
    mid = low + (high-low)//2
    if k[low] > k[high]:
        swap(k, low, high)
    if k[mid] > k[high]:
        swap(k, mid, high)
    if k[low] < k[mid]:
        swap(k, low, mid)
        
    point = k[low]
    
    while( low < high ):
        while( k[high]>=point and low<high ):
            high -= 1
        k[low] = k[high]
        while( k[low]<=point and low<high ):
            low += 1
        k[high] = k[low]
    k[low] = point
    return low

def swap(k, high, low):
    k[low],k[high] = k[high],k[low]
    

k = [55, 2, 8, 1, 34, 21, 5, 3, 89, 13]
QuickSort(k)

print("从小到大排列为:")
for i in k:
    print(i, end=' ')

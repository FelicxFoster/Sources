#大顶堆排序

def heapSort(k):
    n = len(k)-1
    for i in range(n//2, 0, -1):
        heapAdjust(k, i, n)
        
    for i in range(n, 1, -1):
        swap(k, 1, i)
        heapAdjust(k, 1, i-1)

def heapAdjust(k, s, n):   
    temp = k[s]
    i = 2 * s
    while( i <= n ):
        i = 2*s
        if i+1 <= n:
            if k[i] < k[i+1]:
                i += 1
        if temp > k[i]:
            break
        k[s] = k[i]
        s = i
        i *= 2
    k[s] = temp

def swap(k, i, j):
    k[i],k[j] = k[j],k[i]



k = [-1, 55, 2, 8, 1, 144, 34, 21, 5, 3, 89, 13]
heapSort(k)

print("从小到大排列为:")
for i in range(1, len(k)):
    print(k[i], end=' ')

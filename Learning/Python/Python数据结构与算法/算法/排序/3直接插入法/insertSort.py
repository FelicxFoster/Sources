#直接插入排序法
#前i个元素为有序 之后一个一个插入

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

k = [55, 2, 8, 1, 34, 21, 5, 3, 89, 13]
InsertSort(k)

print("从小到大排列为:")
for i in range(len(k)):
    print(k[i], end=' ')

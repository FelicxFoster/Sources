#希尔排序法
#将待排序数组分割 再插入排序

def ShellSort(k):
    gap = n = len(k)

    while(gap!=1):
        gap = gap//3 + 1
        for i in range(gap,n):
            if k[i] < k[i-gap]:
                temp = k[i]
                j = i - gap
                while( k[j]>temp and j>=0 ):
                    k[j+gap] = k[j]
                    j -= gap
                k[j+gap] = temp

                
k = [55, 2, 8, 1, 34, 21, 5, 3, 89, 13]
ShellSort(k)

print("从小到大排列为:")
for i in range(len(k)):
    print(k[i], end=' ')
            

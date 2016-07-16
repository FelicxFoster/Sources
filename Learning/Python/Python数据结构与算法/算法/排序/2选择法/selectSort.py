# -*- coding:utf-8 -*-
#Filename:selectSort.py

#选择排序法
#记录每轮最小元素的下标

def selectSort(k):
    n = len(k)
    for i in range(n-1):
        min_index = i
        for j in range(i+1,n):
            if k[j] < k[min_index]:
                min_index = j
        if min_index != i:
            k[i],k[min_index] = k[min_index], k[i]


k = [55, 2, 8, 1, 34, 21, 5, 3, 89, 13]
selectSort(k)

print("从小到大排列为:")
for i in range(len(k)):
    print k[i],
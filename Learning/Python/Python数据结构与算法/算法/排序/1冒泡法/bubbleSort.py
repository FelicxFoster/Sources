# -*- coding: utf-8 -*-
#Filename: bubbleSort.py

#冒泡排序法
#相邻两两比较 小的上浮

def bubbleSort(k):
    n = len(k)
    for i in range(n-1):
        for j in range(n-1,i,-1):
            if k[j] < k[j-1]:
                k[j],k[j-1] = k[j-1],k[j]                

k = [55, 2, 8, 1, 34, 21, 5, 3, 89, 13]
bubbleSort(k)

print("从小到大排列为:")
for i in k:
    print i,
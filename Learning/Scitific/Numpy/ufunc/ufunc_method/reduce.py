import numpy as np

np.add.reduce([1,2,3])
np.add.reduce([[1,2,3],[4,5,6]], axis=1)


np.add.accumulate([1,2,3])
np.add.accumulate([[1,2,3],[4,5,6]], axis=1)


a = np.array([1,2,3,4])
result = np.add.reduceat(a,indices=[0,1,0,2,0,3,0])

#对于indices中的每个元素都会调用reduce函数计算出一个值来
#1 : a[0] = 1
#2: a[1] = 2
#3: a[0] + a[1] = 1 + 2
#3 : a[2] = 3
#6 : a[0] + a[1] + a[2] = 1 + 2 + 3 = 6
#4 : a[3] = 4
#10: a[0] + a[1] + a[2] + a[4] = 1+2+3+4 = 10

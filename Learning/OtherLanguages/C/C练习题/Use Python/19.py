#完全数 算法貌似不太好

list1 = []
k = 1
n = 6
s = 0

for n in range(1, 1000):
    while n > k:
        if n == k:
            list1.append(k)
            break
        elif n % k == 0:
            list1.append(k)
            k += 1
        else:
            k += 1
    for i in list1:  #获得n的除了自身的所有约数的列表
        s += i
    if s == n:
        print(n)
    list1 = []
    k = 1
    s = 0
    




#求101-200中的素数(质数)

list1 = []
state = 0  #用于判断是否为合数
for a in range(101,201):
    list1.append(a)
    
for i in range(101,201):
    for j in range(2,i):
        if not (i % j):  #为合数时，state=1
            state = 1
    if state:
        list1.remove(i)  #移除合数，state=0，进行下一个数的判断
        state = 0
        
print('共有素数%d个\n分别为:' % len(list1))
for each in list1:    
    print(each, end=" ")



        


h = 100
n = 1
s = 0
while n <= 10:
    s += h 
    h = h / 2   #自动转为float    
    n += 1

print('第10次落地时共经过%.4f米\n第10次反弹高度为%.4f米' % (s,h))  #格式化成定点数  .4指定小数点后的位数

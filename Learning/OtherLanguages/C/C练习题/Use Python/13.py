#打印水仙花数： 三位数 各个位数的立方和等于这个数本身

print('水仙花数有：')
for a in range(1, 10):
    for b in range(10):
        for c in range(10):
            if a**3 + b**3 + c**3 == a *100 + b *10 + c:
                print("%d%d%d" % (a, b, c))

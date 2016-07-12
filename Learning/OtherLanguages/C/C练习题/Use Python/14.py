#因式分解

n = int(input('请输入一个正整数：'))
print('%d = ' % n ,end='')
k = 2
while k <= n:
    if k == n:
        print(k)
        break
    elif n % k == 0:
        print(k,'* ',end='')
        n = n / k
    else:
        k += 1
        

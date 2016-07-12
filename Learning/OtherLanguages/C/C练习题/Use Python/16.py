#辗转相除法

def gcd(a, b):
    if a % b != 0:
        return gcd(b, a%b)
    else:
        return b
    
print('请输入两个数字：')
m = int(input('第一个数:'))
n = int(input('第二个数:'))
if m < n:
    temp = m
    m = n
    n = temp
print('最大公约数是：', gcd(m, n))
print('最小公倍数是：', m*n //gcd(m,n))


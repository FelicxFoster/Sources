
a = input('请输入一个数字(1-9)：')
n = int(input('请输入相加的个数：'))

an = int(a * n)

s = (int(a) + an) * n // 2

print('s = ', end='')

for i in range(1, n):
    print(a * i, '+ ', end='')
    
print(a * n, '=', s)


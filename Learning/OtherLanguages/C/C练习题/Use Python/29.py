#通过字符串方法
x = input('请输入一个数字：')
print('这是一个%d位数' % len(x))
print('倒序输出为：', x[::-1])

#通过数学方法
n = int(input('请输入一个不多于5位的数字：'))
a = int(n / 10000)
b = int(n % 10000 / 1000)
c = int(n % 1000 / 100)
d = int(n % 100 / 10)
e = n % 10

if a:
    print('这是一个五位数', '\n逆序打印为：%d%d%d%d%d' % (e, d, c, b, a) )
elif b:
    print('这是一个四位数', '\n逆序打印为：%d%d%d%d' % (e, d, c, b))
elif c:
    print('这是一个三位数', '\n逆序打印为：%d%d%d' % (e, d, c))
elif d:
    print('这是一个二位数', '\n逆序打印为：%d%d' % (e, d))
else:
    print('这是一个一位数', '\n逆序打印为：%d' % (e))
    

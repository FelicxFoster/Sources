
I = int(input('请输入利润：'))

if I <= 10:
    x = I * 0.1
elif I > 10 and I <= 20:
    x = 1 + (I - 10) * 0.075
elif I > 20 and I <= 40:
    x = 1.75 + (I - 20) * 0.05
else:
    x = 2.25 + (I - 40) * 0.025
print('奖金为：%s 万元' % float(x))

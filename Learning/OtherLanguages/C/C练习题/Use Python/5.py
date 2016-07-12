print('请输入三个整数')
x = int(input('x:'))
y = int(input('y:'))
z = int(input('z:'))

if x <= y and x <= z:
    if y <= z:
        a, b, c = x, y, z
    else:
        a, b, c = x ,z, y
if y <= x and y <= z:
    if x <= z:
        a, b, c = y, x, z
    else:
        a, b, c = y, z, x
if z <= x and z <= y:
    if x <= y:
        a, b, c = z, x, y
    else:
        a, b, c = z, y, x

print('从小到大排列为：', a, b, c)

print("请输入一串整数和任意数目的空格：")

sum_n = 0

s = input("").split(' ')

for each in s:
    if each != '':
        sum_n += int(each)

print("结果是: %d" % sum_n)
        
    

#非递归

def func(string):
    list1 = []
    for each in string:
        list1.append(each)
    return list1[::-1]

s = input('请输入字符：')
for each in func(s):
    print(str(each),end="")


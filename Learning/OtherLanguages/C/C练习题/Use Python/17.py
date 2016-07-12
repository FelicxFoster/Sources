string = input('请输入：')


letter, digit, space, other = 0, 0, 0, 0
for each in string:
    if (each >= 'a' and each <='z') or (each >= 'A' and each <= 'Z'):
        letter += 1
    elif each >= '0' and each <= '9':
        digit += 1
    elif each == ' ':
        space += 1
    else:
        other += 1
        
print('有英文字母%d个\n有数字%d个\n有空格%d个\n有其他字符%d个' \
      % (letter, digit, space, other))

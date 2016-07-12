
y = int(input('请输入年：'))
m = int(input('请输入月：'))
d = int(input('请输入日：'))

#建立月份对应天数增加的字典   实现了类似C语言中 switch...case的功能
month_dict = {1:0, 2:31, 3:59, 4:90, 5:120, 6:151, 7:181, \
              8:212, 8:243, 10:273, 11:304, 12:334}

#判断是否为闰年
if y % 400 == 0 or (y % 4 == 0 and y % 100 != 0):  #闰年
    day = month_dict[m] + d + 1
    print('该年是闰年')
else:  #非闰年
    day = month_dict[m] + d
    print('该年不是闰年')
print('您所输入的日期为该年的第%d的天' % day)


    

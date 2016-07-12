day = 10
num = 1  # 第n天剩的桃子数
while day >= 2:    
    num = 2 * (num + 1)
    day = day - 1

print(num)   

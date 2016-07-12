
#非递归
s = 10
for i in range(1, 5):
    s += 2
print(s)

#递归
def func(n):
    if n == 1:
        return 10
    else:
        return func(n-1) + 2
print(func(5))

#方法1
def func(n):
    if n == 1:
        return 1
    else:
        return n * func(n-1)

s = 0
for i in range(1, 21):
    s += func(i)

print(s)


#方法2 
n = 1
su = 0
for i in range(1, 21):
    n *= i
    su += n
print(su)

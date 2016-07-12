
def fib(n):
    if n == 1 or n == 2:
        return 1
    else:
        return fib(n-1) + fib(n-2)
s = 0
for i in range(1, 21):
    print('%d / %d' % (fib(i+2), fib(i+1)))
    s += fib(i+2) / fib(i+1)
print(s)



s = 0.0
a = 2.0
b = 1.0
n = 1.0
while n <=20:
    s += a / b
    temp = a
    a = a + b
    b = temp
    n += 1
print(s)

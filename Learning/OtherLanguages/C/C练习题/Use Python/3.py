from math import sqrt

for x in range(100000):
    if int(sqrt(x+100)) == sqrt(x+100) and int(sqrt(x+268)) == sqrt(x+268):
        print(x)

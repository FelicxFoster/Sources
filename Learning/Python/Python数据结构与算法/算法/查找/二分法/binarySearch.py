

#二分查找法 python的实现  迭代法
def BinarySearch(l, key):
    low = 0
    high =len(l)-1     

    while(low<=high):
        mid = (low + high) // 2
        if l[mid] == key:
            return mid
        elif l[mid] < key:
            low = mid+1
        else:
            high = mid-1
    return -1


if __name__ == '__main__':

    l = [1,2,3,5,8,13,21,34,55,89]

    while(1):
        key = input("Please input the key(! to stop):")

        if key != '!':
            r = BinarySearch(l, int(key) )

            if r != -1:
                print("Index = ", r)
            else:
                print("Can not find!")
        else:
            break

#二分查找法 python的实现  递归法


def search(low, high, key):
    mid = (low + high) // 2      
    if key == l[mid]:
        return mid
    else:
        if low<high:            
            if key > l[mid]:
                return search(mid+1, high, key)
            else:
                return search(low, mid-1, key)
        else:
            return -1
        
    
def BinarySearch(l, key):
    low = 0
    high = len(l)-1
    return search(low, high, key)


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
